uint64_t sub_549E44()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_AB8E20() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17BD0;

  return sub_548CAC(v0 + v3, v0 + v6);
}

int *static Actions.Collaborate.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_54A390(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED58);
  *(a2 + result[9]) = 13;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_54A028;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_B18940;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_B18948;
  v6[1] = 0;
  return result;
}

uint64_t sub_54A084()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A180;

  return v5();
}

uint64_t sub_54A180()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_54A294()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context() + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A91C;

  return v5();
}

uint64_t sub_54A390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.Collaborate.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.Collaborate.Context.menuItemTitle.getter()
{
  Playlist.hasActiveCollaboration.getter();

  return _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0();
}

uint64_t (*Actions.Collaborate.Context.menuItemImage.getter())()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10A40);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  active = Playlist.hasActiveCollaboration.getter();
  sub_AB8BF0();
  v4 = sub_AB8BE0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_12E1C(v2, &qword_E10A40);
    if ((active & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v6 = Playlist.Collaboration.hasPendingCollaborators.getter();
  (*(v5 + 8))(v2, v4);
  if (active)
  {
    if (v6)
    {
      v7 = 0xEE0065676461622ELL;
LABEL_9:
      v8 = 0x322E6E6F73726570;
      goto LABEL_10;
    }

LABEL_8:
    v7 = 0xE800000000000000;
    goto LABEL_9;
  }

LABEL_7:
  v7 = 0x8000000000B6A850;
  v8 = 0xD000000000000011;
LABEL_10:
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;

  return sub_54A648;
}

uint64_t sub_54A650()
{

  return swift_deallocObject();
}

uint64_t sub_54A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB8E20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_54A784(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB8E20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_54A83C()
{
  result = sub_AB8E20();
  if (v1 <= 0x3F)
  {
    result = sub_50EECC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t NSUserDefaults.ValueTransformer.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.presentCreatePlaylistView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return a1;
}

uint64_t sub_54AA00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_AB9940();
  v2[4] = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_54AA98, v4, v3);
}

uint64_t sub_54AA98()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_54AB04()
{

  return swift_deallocObject();
}

uint64_t sub_54AB3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_17BD0;

  return sub_54AA00(v2, v3);
}

uint64_t static Actions.CreatePlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 9;
  *(a5 + 40) = sub_53842C;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_B189A0;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_B189A8;
  *(a5 + 88) = 0;
}

uint64_t sub_54AC78(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_E0564;

  return v5();
}

uint64_t sub_54AD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 9;
  *(a2 + 40) = sub_53842C;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_B189A0;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_B189A8;
  *(a2 + 88) = 0;
}

uint64_t (*Actions.CreatePlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_53EAA8;
}

uint64_t (*sub_54AEAC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_53F19C;
}

uint64_t _s9MusicCore7ActionsO14CreatePlaylistO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_54B140()
{

  return swift_deallocObject();
}

uint64_t Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v52 = a7;
  v53 = a6;
  v49 = a4;
  v50 = a8;
  v47 = a3;
  v55 = a2;
  v51 = a1;
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44 = &v42 - v14;
  v16 = v15;
  v46 = v15;
  __chkstk_darwin(v13);
  v18 = &v42 - v17;
  v43 = *(v10 + 16);
  v43(&v42 - v17);
  v19 = *(v10 + 80);
  v20 = (v19 + 40) & ~v19;
  v54 = v19 | 7;
  v16 += 7;
  v21 = (v16 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v23 = v52;
  v22[4] = v52;
  v42 = *(v10 + 32);
  v24 = v22 + v20;
  v25 = v22;
  v48 = v22;
  v42(v24, v18, a5);
  *(v25 + v21) = v55;
  v26 = v44;
  (v43)(v44, v51, a5);
  v27 = (v19 + 136) & ~v19;
  v28 = swift_allocObject();
  v29 = v53;
  *(v28 + 2) = a5;
  *(v28 + 3) = v29;
  *(v28 + 4) = v23;
  sub_17704(v47, v28 + 40);
  v30 = v26;
  v31 = v42;
  v42(v28 + v27, v30, a5);
  *(v28 + ((v16 + v27) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v32 = v45;
  v31(v45, v51, a5);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v34 = (*(v33 + 80) + 40) & ~*(v33 + 80);
  v35 = (*(v33 + 64) + v19 + v34) & ~v19;
  v36 = swift_allocObject();
  v37 = v52;
  v38 = v53;
  *(v36 + 2) = a5;
  *(v36 + 3) = v38;
  *(v36 + 4) = v37;
  sub_36B0C(v49, v36 + v34, &qword_E0EAA0);
  v31(v36 + v35, v32, a5);

  v40 = v50;
  v41 = v48;
  *v50 = sub_54BC7C;
  v40[1] = v41;
  v40[2] = &unk_B18A28;
  v40[3] = v28;
  v40[4] = &unk_B18A40;
  v40[5] = v36;
  return result;
}

uint64_t static Actions.DeleteFromLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 49;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B18A48;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B18A50;
  *(a2 + 104) = 0;
}

uint64_t sub_54B590()
{
  v0 = sub_AB8180();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EE58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_AB4040();
  sub_AB82C0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_54B74C();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_54B74C()
{
  v1 = v0;
  v2 = sub_AB8170();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EE58);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, v1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v3 + 32))(v8, v12, v2);
    (*(v3 + 16))(v6, v8, v2);
    v14 = sub_AB9350();
    (*(v3 + 8))(v8, v2);
    return v14;
  }

  else if (v13 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_54B9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 49;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B18A48;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B18A50;
  *(a2 + 104) = 0;
}

uint64_t (*Actions.DeleteFromLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_53EAA8;
}

uint64_t (*sub_54BB50())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_53F19C;
}

uint64_t sub_54BBE8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_54BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(sub_54BD10, 0, 0);
}

uint64_t sub_54BD10()
{
  *(v0 + 224) = sub_AB9940();
  *(v0 + 232) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_54BDA8, v2, v1);
}

uint64_t sub_54BDA8()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  sub_5F7C10(v4, v3, v1, v2, (v0 + 14));

  return _swift_task_switch(sub_54BE38, 0, 0);
}

uint64_t sub_54BE38()
{
  *(v0 + 240) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_54BEC4, v2, v1);
}

uint64_t sub_54BEC4()
{
  v1 = *(v0 + 184);

  v2 = sub_5B4DF0(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 184);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 48) = sub_71E354;
    *(v0 + 56) = 0;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_71F2F4;
    *(v0 + 40) = &block_descriptor_166;
    v13 = _Block_copy((v0 + 16));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_53F0C4, v15);
    sub_17654(v5);
  }

  else
  {
    sub_71C834(v2, *(v0 + 144), &dword_0 + 1, 0, 0);
  }

  sub_111904(v0 + 112);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_54C190()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    sub_17774(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v4);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_54C29C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 136) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_17BD0;

  return sub_54BCE8(v0 + 40, v0 + v4, v5, v2, v3);
}

uint64_t sub_54C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_54C5CC, 0, 0);
}

uint64_t sub_54C5CC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_15F84(*(v0 + 96), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 240), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_53EEE4(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = sub_AB31C0();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 2;
    *(v0 + 312) = sub_51717C(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_AB9940();
    *(v0 + 336) = sub_AB9930();
    v18 = sub_AB98B0();

    return _swift_task_switch(sub_54C8D4, v18, v17);
  }
}

uint64_t sub_54C8D4()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

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
  *(v6 + 16) = 4101;
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
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
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

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 168), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_12E1C(*(v0 + 160), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_15F84(v36 + v14[6], *(v0 + 216), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_36B0C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
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

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348);
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

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
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

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_549A44, 0, 0);
}

uint64_t sub_54D08C()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
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

uint64_t sub_54D34C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_54C3B8(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO17DeleteFromLibraryO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_54D67C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_166(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_54D6EC()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_54D78C(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v29 = _swiftEmptyArrayStorage;
  sub_503938(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v23 = v8;
    a1(v24, &v23);
    if (v3)
    {
      break;
    }

    v10 = v24[0];
    v9 = v24[1];
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v29 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      v20 = v25;
      v21 = v28;
      v18 = v27;
      sub_503938((v15 > 1), v16 + 1, 1);
      v13 = v18;
      v11 = v20;
      v14 = v21;
      v5 = v29;
    }

    v5[2] = v16 + 1;
    v17 = &v5[7 * v16];
    v17[4] = v10;
    v17[5] = v9;
    v17[6] = v11;
    v17[7] = v12;
    *(v17 + 64) = v13;
    *(v17 + 9) = v14;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_54D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_AB9990();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_15F84(a4, v21, &qword_E0EEA8);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 304) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v20;
  *(v15 + 4) = v19;
  *(v15 + 5) = v16;
  sub_36B0C(v21, (v15 + 48), &qword_E0EEA8);
  (*(v7 + 32))(&v15[v14], v9, v6);

  sub_6E35A0(0, 0, v12, &unk_B18DD8, v15);
}

uint64_t sub_54DB00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_17BD0;

  return v12(a6, a7);
}

uint64_t sub_54DC04()
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

uint64_t Actions.DeleteOrRemoveDownload.Choice.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4465766F6D6572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6C65636E6163;
}

uint64_t sub_54DEA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000000B69880;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000000B69880;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F4465766F6D6572;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0064616F6C6E77;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F4465766F6D6572;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0064616F6C6E77;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

Swift::Int sub_54DFA4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_54E054()
{
  sub_AB93F0();
}

Swift::Int sub_54E0F0()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_54E19C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_54E1CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064616F6C6E77;
  v4 = 0x8000000000B69880;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4465766F6D6572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static Actions.DeleteOrRemoveDownload.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_552AC4(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &unk_B18AE0;
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = sub_54E2E4;
  *(a2 + 224) = &unk_B18AF8;
  *(a2 + 232) = result;
  *(a2 + 240) = &unk_B18AE8;
  *(a2 + 248) = 0;
  return result;
}

unint64_t sub_54E2E4(uint64_t (**a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  *(inited + 32) = (*a1)();
  *(inited + 40) = v3;
  *(inited + 48) = a1[4]();
  *(inited + 56) = v4;
  v5 = static ActionSupportedStatus.allSupported(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_54E39C(uint64_t a1, uint64_t a2)
{
  v2[47] = a1;
  v2[48] = a2;
  sub_AB9940();
  v2[49] = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_54E434, v4, v3);
}

uint64_t sub_54E434()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);

  sub_552AC4(v2, v0 + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  *(v5 + 24) = v1;

  v6 = sub_54D78C(sub_553860, v5, &off_D1A790);

  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = v4;
  *(v0 + 328) = v3;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  *(v0 + 360) = v6;
  *(v0 + 368) = 0;
  v7 = sub_5B4DF0(v0 + 304, 0, 1);
  v8 = v7;
  v9 = *(v0 + 336);
  v10 = *(v0 + 176);
  if (v10)
  {
    v11 = qword_E0CF08;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_AB4BC0();
    __swift_project_value_buffer(v12, qword_E14920);
    v13 = sub_AB4BA0();
    v14 = sub_AB9F50();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Deferring presentation…", v15, 2u);
    }

    v16 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 240) = sub_71E354;
    *(v0 + 248) = 0;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_71F2F4;
    *(v0 + 232) = &block_descriptor_167;
    v17 = _Block_copy((v0 + 208));
    v18 = [v16 initWithTimeout:v17 interruptionHandler:10.0];
    _Block_release(v17);

    sub_15F28(v0 + 96, v0 + 208);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_17704(v0 + 208, v19 + 24);
    *(v19 + 120) = v8;
    *(v19 + 128) = v9;
    *(v19 + 129) = 1;
    *(v19 + 136) = 0;
    *(v19 + 144) = 0;
    v20 = v18;
    v8 = v8;
    v10(v0 + 96, v8, sub_53F0C4, v19);
    sub_17654(v10);
  }

  else
  {
    sub_71C834(v7, *(v0 + 336), &dword_0 + 1, 0, 0);
  }

  sub_111904(v0 + 304);
  sub_553880(v0 + 16);
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_54E788@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *a1;
  v26 = a2;
  if (!v12)
  {
    v25 = 2;
    v23 = 0x6F4465766F6D6572;
    v13 = 0xEE0064616F6C6E77;
LABEL_6:
    v14 = &v29;
    goto LABEL_7;
  }

  if (v12 != 1)
  {
    v25 = 0;
    v23 = 0x6C65636E6163;
    v13 = 0xE600000000000000;
    goto LABEL_6;
  }

  v24 = 0x8000000000B69880;
  v25 = 1;
  v13 = 0xD000000000000011;
  v14 = &v28;
LABEL_7:
  *(v14 - 32) = v13;
  v15 = sub_54DC04();
  v22 = v16;
  sub_552AC4(v26, v27);
  (*(v9 + 16))(v11, a3, v8);
  v17 = (*(v9 + 80) + 216) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  sub_553A98(v27, v18 + 24);
  result = (*(v9 + 32))(v18 + v17, v11, v8);
  v20 = v24;
  *a4 = v23;
  *(a4 + 8) = v20;
  v21 = v22;
  *(a4 + 16) = v15;
  *(a4 + 24) = v21;
  *(a4 + 32) = v25;
  *(a4 + 40) = &unk_B18DF0;
  *(a4 + 48) = v18;
  return result;
}

uint64_t sub_54E9EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 264) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  *(v5 + 224) = v6;
  v7 = *(v6 - 8);
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 + 64);
  *(v5 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v5 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_54EAFC, 0, 0);
}

uint64_t sub_54EAFC()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 264);
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  sub_552AC4(v6, v0 + 16);
  (*(v3 + 16))(v2, v5, v4);
  v9 = (*(v3 + 80) + 232) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  sub_553A98(v0 + 16, v10 + 40);
  (*(v3 + 32))(v10 + v9, v2, v4);
  sub_6E35A0(0, 0, v1, &unk_B18E00, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_54EC7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 49) = a4;
  return _swift_task_switch(sub_54ECA0, 0, 0);
}

uint64_t sub_54ECA0()
{
  if (!*(v0 + 49))
  {
    v5 = (*(*(v0 + 16) + 48) + **(*(v0 + 16) + 48));
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v2 = sub_54EEA0;
    goto LABEL_5;
  }

  if (*(v0 + 49) == 1)
  {
    v5 = (*(*(v0 + 16) + 16) + **(*(v0 + 16) + 16));
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v2 = sub_54F05C;
LABEL_5:
    v1[1] = v2;

    return v5();
  }

  *(v0 + 48) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  sub_AB98D0();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_54EEA0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_54EFD0, 0, 0);
  }
}

uint64_t sub_54EFD0()
{
  *(v0 + 48) = *(v0 + 49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  sub_AB98D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_54F05C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_553E38, 0, 0);
  }
}

uint64_t sub_54F18C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E0564;

  return sub_54E39C(a1, a2);
}

uint64_t sub_54F248()
{
  v3 = (*(*(v0 + 16) + 64) + **(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_54A180;

  return v3();
}

uint64_t sub_54F334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_552AC4(a1, a2);
  result = swift_allocObject();
  *(result + 16) = &unk_B18AE0;
  *(result + 24) = 0;
  *(a2 + 192) = 51;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0x403E000000000000;
  *(a2 + 200) = sub_54E2E4;
  *(a2 + 224) = &unk_B18D98;
  *(a2 + 232) = result;
  *(a2 + 240) = &unk_B18AE8;
  *(a2 + 248) = 0;
  return result;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)()@<X8>)
{
  v86 = a4;
  v87 = a1;
  v77 = a8;
  v78 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v76 = *(v13 - 8);
  v75 = *(v76 + 64);
  v14 = __chkstk_darwin(v13 - 8);
  v72 = &v64 - v15;
  v16 = *(a5 - 8);
  v17 = __chkstk_darwin(v14);
  v71 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v67 = &v64 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v64 - v22;
  v23 = __chkstk_darwin(v21);
  v68 = &v64 - v24;
  v88 = v25;
  __chkstk_darwin(v23);
  v27 = &v64 - v26;
  v28 = *(v16 + 16);
  v80 = v16 + 16;
  v28(&v64 - v26, a1, a5);
  v29 = v28;
  v69 = *(v16 + 80);
  v73 = v16;
  v30 = (v69 + 48) & ~v69;
  v79 = v69 | 7;
  v31 = swift_allocObject();
  v74 = v31;
  *(v31 + 2) = a5;
  *(v31 + 3) = a6;
  v32 = a7;
  v81 = a7;
  *(v31 + 4) = a7;
  *(v31 + 5) = a2;
  v85 = a2;
  v33 = v16 + 32;
  v34 = *(v16 + 32);
  v82 = v33;
  v83 = a6;
  v34(v31 + v30, v27, a5);
  v35 = v68;
  v84 = v29;
  v29(v68, v87, a5);
  v36 = swift_allocObject();
  v70 = v36;
  *(v36 + 2) = a5;
  *(v36 + 3) = a6;
  *(v36 + 4) = v32;
  *(v36 + 5) = a2;
  v34(v36 + v30, v35, a5);
  v37 = v66;
  v38 = v87;
  v29(v66, v87, a5);
  v39 = swift_allocObject();
  v68 = v39;
  v40 = v83;
  *(v39 + 2) = a5;
  *(v39 + 3) = v40;
  v41 = v81;
  v42 = v85;
  *(v39 + 4) = v81;
  *(v39 + 5) = v42;
  v34(&v39[v30], v37, a5);
  v43 = v34;
  v65 = v34;
  v44 = v67;
  v84(v67, v38, a5);
  v45 = swift_allocObject();
  v66 = v45;
  v46 = v83;
  *(v45 + 2) = a5;
  *(v45 + 3) = v46;
  *(v45 + 4) = v41;
  *(v45 + 5) = v42;
  v43(&v45[v30], v44, a5);
  v47 = v72;
  sub_15F84(v86, v72, &qword_E0EAA0);
  v48 = v71;
  v49 = v87;
  v84(v71, v87, a5);
  v50 = (*(v76 + 80) + 40) & ~*(v76 + 80);
  v51 = (v75 + v69 + v50) & ~v69;
  v52 = swift_allocObject();
  *(v52 + 2) = a5;
  *(v52 + 3) = v46;
  *(v52 + 4) = v81;
  sub_36B0C(v47, v52 + v50, &qword_E0EAA0);
  v65(v52 + v51, v48, a5);
  v53 = v77;
  v54 = v78;
  sub_15F28(v78, (v77 + 10));
  swift_retain_n();
  v55 = v49;
  v56 = sub_550DF8(v49, a5);
  v58 = v57;
  sub_12E1C(v86, &qword_E0EAA0);
  sub_1611C(v54);
  result = (*(v73 + 8))(v55, a5);
  v60 = v74;
  *v53 = sub_552BFC;
  v53[1] = v60;
  v61 = v70;
  v53[2] = &unk_B18B10;
  v53[3] = v61;
  v62 = v68;
  v53[4] = sub_552D00;
  v53[5] = v62;
  v63 = v66;
  v53[6] = &unk_B18B20;
  v53[7] = v63;
  v53[8] = &unk_B18B30;
  v53[9] = v52;
  v53[22] = v56;
  v53[23] = v58;
  return result;
}

uint64_t sub_54F960()
{
  v0 = sub_AB8180();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EE58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_AB4040();
  sub_AB82C0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_54B74C();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_54FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_17CF8;

  return MusicLibrary.remove<A>(_:)(a2, a3, a4);
}

uint64_t sub_54FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a1;
  v23[3] = a5;
  v23[1] = a3;
  v23[0] = sub_AB8320();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8330();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EE98);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  sub_AB3FF0();
  sub_AB82C0();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v16, v18, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v20 = v23[0];
    (*(v5 + 32))(v7, v16, v23[0]);
    v21 = sub_56742C(v7);
    (*(v5 + 8))(v7, v20);
LABEL_5:
    (*(v13 + 8))(v18, v12);
    return v21;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v21 = 0;
    goto LABEL_5;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_54FF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_17CF8;

  return MusicLibrary.removeDownload<A>(_:)(a2, a3, a4);
}

uint64_t sub_550008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_55021C, 0, 0);
}

uint64_t sub_55021C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 216), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_53EEE4(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_AB31C0();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_51717C(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 312) = sub_AB9930();
    v18 = sub_AB98B0();

    return _swift_task_switch(sub_55050C, v18, v17);
  }
}

uint64_t sub_55050C()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

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
  *(v6 + 16) = 9733;
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
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
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

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_15F84(v36 + v14[6], *(v0 + 192), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_36B0C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
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

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
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

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
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

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_550CC0, 0, 0);
}

uint64_t sub_550CC0()
{
  sub_548758(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_550DF8(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v108 = sub_AB87A0();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_AB46C0();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_AB88F0();
  v110 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_AB4770();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_AB4710();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_AB46B0();
  v119 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_AB44B0();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_AB86C0();
  v125 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_AB8E20();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_AB8030();
  v131 = *(v135 - 8);
  __chkstk_darwin(v135);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB35C0();
  __chkstk_darwin(v14 - 8);
  v136 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB9250();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v102 - v21;
  v23 = sub_AB8770();
  v134 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 - 8);
  v28 = __chkstk_darwin(v24);
  v103 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v105 = &v102 - v31;
  __chkstk_darwin(v30);
  v33 = &v102 - v32;
  v138 = v27;
  v104 = *(v27 + 16);
  v104(&v102 - v32, v137, a2);
  if (swift_dynamicCast())
  {
    v137 = a2;
    sub_AB91E0();
    v17[2](v20, v22, v16);
    v34 = v17;
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v35 = qword_E71B20;
    sub_AB3550();
    v36 = sub_AB9320();
    (v34[1])(v22, v16);
    (*(v134 + 8))(v26, v23);
    (*(v138 + 8))(v33, v137);
    return v36;
  }

  v102 = v20;
  v134 = v16;
  v37 = v17;
  v38 = v135;
  if (swift_dynamicCast())
  {
    v133 = v33;
    v39 = v13;
    sub_AB91E0();
    v40 = v37;
    v41 = v37[2];
    v42 = v134;
    (v41)(v102, v22, v134);
    v43 = v138;
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v44 = qword_E71B20;
    sub_AB3550();
    v45 = sub_AB9320();
    v40[1](v22, v42);
    (*(v131 + 8))(v39, v38);
    v36 = v45;
    (*(v43 + 8))(v133, a2);
    return v36;
  }

  v46 = a2;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    v47 = v37;
    v48 = v37[2];
    v49 = v134;
    (v48)(v102, v22, v134);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v50 = qword_E71B20;
    sub_AB3550();
    v51 = sub_AB9320();
    v47[1](v22, v49);
    (*(v128 + 8))(v132, v133);
LABEL_17:
    v56 = *(v138 + 8);
    v57 = v33;
    v58 = a2;
    v36 = v51;
LABEL_18:
    v56(v57, v58);
    return v36;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    v52 = v37;
    v53 = v37[2];
    v54 = v134;
    (v53)(v102, v22, v134);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v55 = qword_E71B20;
    sub_AB3550();
    v51 = sub_AB9320();
    v52[1](v22, v54);
    (*(v125 + 8))(v129, v130);
    goto LABEL_17;
  }

  v60 = swift_dynamicCast();
  v61 = v33;
  v62 = v37;
  v63 = v134;
  if (v60)
  {
    sub_AB91E0();
    (v37[2])(v102, v22, v63);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v64 = qword_E71B20;
    sub_AB3550();
    v65 = sub_AB9320();
    v37[1](v22, v63);
    (*(v124 + 8))(v126, v127);
    v66 = v46;
    v36 = v65;
    (*(v138 + 8))(v33, v66);
    return v36;
  }

  v135 = v22;
  v67 = v122;
  v68 = v123;
  if (swift_dynamicCast())
  {
    (*(v119 + 8))(v67, v68);
LABEL_28:
    v71 = v135;
    (*(v138 + 8))(v61, v46);
    sub_AB91E0();
    (*(v62 + 2))(v102, v71, v63);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v72 = qword_E71B20;
    sub_AB3550();
    v36 = sub_AB9320();
    (*(v62 + 1))(v71, v63);
    return v36;
  }

  v132 = v37;
  v69 = v120;
  v70 = v121;
  if (swift_dynamicCast())
  {
    (*(v116 + 8))(v69, v70);
    v63 = v134;
    v62 = v132;
    goto LABEL_28;
  }

  v73 = swift_dynamicCast();
  v74 = v135;
  if (v73)
  {
    sub_AB91E0();
    v75 = v132;
    v76 = v134;
    (*(v132 + 2))(v102, v74, v134);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v77 = qword_E71B20;
    sub_AB3550();
    v78 = sub_AB9320();
    (*(v75 + 1))(v74, v76);
    (*(v113 + 8))(v117, v118);
LABEL_43:
    v56 = *(v138 + 8);
    v57 = v61;
LABEL_44:
    v58 = v46;
    v36 = v78;
    goto LABEL_18;
  }

  v79 = swift_dynamicCast();
  v80 = v134;
  v81 = v132;
  if (v79)
  {
    sub_AB91E0();
    (*(v81 + 2))(v102, v74, v80);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v82 = qword_E71B20;
    sub_AB3550();
    v78 = sub_AB9320();
    (*(v81 + 1))(v74, v80);
    (*(v110 + 8))(v114, v115);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v81 + 2))(v102, v74, v80);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v83 = qword_E71B20;
    sub_AB3550();
    v78 = sub_AB9320();
    (*(v81 + 1))(v74, v80);
    (*(v107 + 8))(v111, v112);
    goto LABEL_43;
  }

  v133 = v61;
  v84 = v108;
  if (swift_dynamicCast())
  {
    sub_AB91E0();
    (*(v81 + 2))(v102, v74, v80);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v85 = qword_E71B20;
    sub_AB3550();
    v78 = sub_AB9320();
    (*(v81 + 1))(v74, v80);
    (*(v106 + 8))(v109, v84);
    v56 = *(v138 + 8);
    v57 = v133;
    goto LABEL_44;
  }

  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v86 = sub_AB4BC0();
  __swift_project_value_buffer(v86, static Logger.actions);
  v87 = v105;
  v88 = v104;
  v104(v105, v137, v46);
  v89 = sub_AB4BA0();
  v90 = sub_AB9F40();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v139 = v137;
    *v91 = 136315138;
    v88(v103, v87, v46);
    v92 = sub_AB9350();
    v93 = v46;
    v95 = v94;
    v96 = *(v138 + 8);
    v96(v87, v93);
    v97 = sub_500C84(v92, v95, &v139);
    v46 = v93;
    v74 = v22;

    *(v91 + 4) = v97;
    _os_log_impl(&dword_0, v89, v90, "DeleteOrRemoveDownload: unhandled item type=%s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v137);

    v81 = v37;
  }

  else
  {

    v96 = *(v138 + 8);
    v96(v87, v46);
  }

  sub_AB91E0();
  v98 = v134;
  (*(v81 + 2))(v102, v74, v134);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v99 = qword_E71B20;
  sub_AB3550();
  v100 = sub_AB9320();
  (*(v81 + 1))(v74, v98);
  v101 = v46;
  v36 = v100;
  v96(v133, v101);
  return v36;
}

uint64_t Actions.DeleteOrRemoveDownload.Context.menuItemTitle.getter()
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

uint64_t (*Actions.DeleteOrRemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_53EAA8;
}

uint64_t (*sub_55270C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_53F19C;
}

uint64_t sub_5527A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_5527C8, 0, 0);
}

uint64_t sub_5527C8()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_5528C8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 72, 0, 0, 0xD00000000000003ALL, 0x8000000000B6A460, sub_5535DC, v2, &type metadata for Actions.DeleteOrRemoveDownload.Choice);
}

uint64_t sub_5528C8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_552A14, 0, 0);
  }

  else
  {
    v3 = *(v2 + 16);

    *v3 = *(v2 + 72);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_552A14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO22DeleteOrRemoveDownloadO6ChoiceO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1A6D8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_552AFC()
{

  return swift_deallocObject();
}

uint64_t sub_552B34(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_5527A4(a1, a2, v7, v6);
}

uint64_t sub_552C14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_17CF8;

  return sub_54FB1C(v4, v0 + v5, v2, v3);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_552E1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_17CF8;

  return sub_54FF50(v4, v0 + v5, v2, v3);
}

uint64_t sub_552F04()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
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

uint64_t sub_5531C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_550008(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_553314()
{

  return swift_deallocObject();
}

unint64_t sub_553350()
{
  result = qword_E0EE60;
  if (!qword_E0EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0EE60);
  }

  return result;
}

unint64_t sub_5533A8()
{
  result = qword_E0EE68;
  if (!qword_E0EE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0EE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0EE68);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PresentationSourceV8PositionVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_55343C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_553484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_553514(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17BD0;

  return sub_5527A4(a1, a2, v7, v6);
}

uint64_t sub_5535E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 176);
  if (v4 != 255)
  {
    sub_17774(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), v4);
  }

  if (*(v0 + 192))
  {
  }

  if (*(v0 + 208))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 304) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_55374C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0) - 8);
  v5 = (*(v4 + 80) + 304) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17CF8;

  return sub_54DB00(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t block_copy_helper_167(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5538C8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_55395C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    sub_17774(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v4);
  }

  if (*(v0 + 168))
  {
  }

  if (*(v0 + 184))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 216) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_553AD0(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0) - 8);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17BD0;

  return sub_54E9EC(a1, a2, v8, v2 + 24, v2 + v7);
}

uint64_t sub_553BD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + 168);
  if (v4 != 255)
  {
    sub_17774(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), v4);
  }

  if (*(v0 + 184))
  {
  }

  if (*(v0 + 200))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 232) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_553D14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEA0) - 8);
  v5 = (*(v4 + 80) + 232) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_54EC7C(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v67 = a8;
  v68 = a7;
  v72 = a6;
  v65 = a3;
  v66 = a4;
  v74 = a2;
  v9 = *(a5 - 8);
  v76 = a5;
  v77 = v9;
  v78 = *(v9 + 64);
  v10 = __chkstk_darwin(a1);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v73 = &v58 - v13;
  __chkstk_darwin(v12);
  v69 = &v58 - v14;
  v15 = sub_AB81F0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8);
  v19 = *(v75 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v75);
  v71 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v58 - v23;
  v59 = &v58 - v23;
  __chkstk_darwin(v22);
  v26 = &v58 - v25;
  sub_AB4060();
  v70 = a1;
  v27 = v76;
  sub_AB82C0();
  (*(v16 + 8))(v18, v15);
  v28 = v77;
  v61 = *(v77 + 16);
  v61(v69, a1, v27);
  v58 = v19;
  v29 = v26;
  (*(v19 + 16))(v24, v26, v75);
  v30 = *(v28 + 80);
  v31 = v28;
  v32 = (v30 + 40) & ~v30;
  v33 = *(v19 + 80);
  v34 = (v78 + v32 + v33) & ~v33;
  v60 = v30 | v33;
  v35 = swift_allocObject();
  v36 = v72;
  *(v35 + 2) = v76;
  *(v35 + 3) = v36;
  v37 = v69;
  *(v35 + 4) = v68;
  v38 = *(v31 + 32);
  v77 = v31 + 32;
  v62 = v38;
  v63 = v35;
  (v38)(v35 + v32, v37);
  v39 = *(v58 + 32);
  v40 = v35 + v34;
  v41 = v75;
  v39(v40, v59, v75);
  v39(v71, v29, v41);
  v42 = v76;
  v61(v73, v70, v76);
  v43 = (v33 + 136) & ~v33;
  v44 = (v20 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 2) = v42;
  *(v45 + 3) = v36;
  v46 = v68;
  *(v45 + 4) = v68;
  sub_17704(v65, v45 + 40);
  v39(v45 + v43, v71, v75);
  v47 = v73;
  *(v45 + v44) = v74;
  v48 = v62;
  v62(v45 + ((v30 + v44 + 8) & ~v30), v47, v42);
  v49 = v64;
  v48(v64, v70, v42);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v51 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v52 = (*(v50 + 64) + v30 + v51) & ~v30;
  v53 = swift_allocObject();
  v54 = v72;
  *(v53 + 2) = v42;
  *(v53 + 3) = v54;
  *(v53 + 4) = v46;
  sub_36B0C(v66, v53 + v51, &qword_E0EAA0);
  result = (v48)(v53 + v52, v49, v42);
  v56 = v67;
  v57 = v63;
  *v67 = sub_554AC8;
  v56[1] = v57;
  v56[2] = &unk_B18E20;
  v56[3] = v45;
  v56[4] = &unk_B18E30;
  v56[5] = v53;
  return result;
}

uint64_t static Actions.Download.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 1;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B18E38;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B18E40;
  *(a2 + 104) = 0;
}

uint64_t sub_55447C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 1;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B18E38;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B18E40;
  *(a2 + 104) = 0;
}

unint64_t sub_554538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin(v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB8E20();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v30, a3);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v13, 1, 1, v17);
    v24 = &qword_E10B00;
    v25 = v13;
    goto LABEL_5;
  }

  v22(v13, 0, 1, v17);
  (*(v18 + 32))(v20, v13, v17);
  sub_AB8E10();
  v23 = v28;
  if ((*(v28 + 48))(v6, 1, v7) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v24 = &qword_E0EEF8;
    v25 = v6;
LABEL_5:
    sub_12E1C(v25, v24);
    return sub_554BB4();
  }

  (*(v23 + 32))(v9, v6, v7);
  sub_5597EC();
  sub_AB9C60();
  sub_AB9CA0();
  if (v32 == v31)
  {
    (*(v23 + 8))(v9, v7);
    (*(v18 + 8))(v20, v17);
    return 0xD000000000000011;
  }

  (*(v23 + 8))(v9, v7);
  (*(v18 + 8))(v20, v17);
  return sub_554BB4();
}

uint64_t sub_55497C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t sub_554AC8()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_554538(v0 + v2, v5, v1);
}

uint64_t sub_554BB4()
{
  v1 = sub_AB81E0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v37 - v6;
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v39 = &v37 - v15;
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = *(v11 + 16);
  v40 = v0;
  v18(&v37 - v16, v0, v10);
  v19 = (*(v11 + 88))(v17, v10);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v11 + 96))(v17, v10);
    (*(v2 + 32))(v9, v17, v1);
    v20 = *(v2 + 16);
    v20(v7, v9, v1);
    if ((*(v2 + 88))(v7, v1) != enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v20(v38, v9, v1);
      v21 = sub_AB9350();
      v22 = *(v2 + 8);
      v22(v9, v1);
      v22(v7, v1);
      return v21;
    }

    (*(v2 + 8))(v9, v1);
    return 0;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v23 = sub_AB4BC0();
  __swift_project_value_buffer(v23, static Logger.actions);
  v24 = v39;
  v18(v39, v40, v10);
  v25 = sub_AB4BA0();
  v26 = sub_AB9F40();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v27 = 136315138;
    v18(v37, v24, v10);
    v28 = sub_AB9350();
    v29 = v24;
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v29, v10);
    v33 = v32;
    v34 = sub_500C84(v28, v31, v41);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_0, v25, v26, "Unknown status=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);

    v35 = v33;
  }

  else
  {

    v35 = *(v11 + 8);
    v35(v24, v10);
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_ABAF70();
  v21 = v41[0];
  v35(v17, v10);
  return v21;
}

uint64_t sub_5550DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[44] = a6;
  v7[45] = a7;
  v7[42] = a4;
  v7[43] = a5;
  v7[40] = a2;
  v7[41] = a3;
  v7[39] = a1;
  sub_AB35C0();
  v7[46] = swift_task_alloc();
  v9 = sub_AB9250();
  v7[47] = v9;
  v7[48] = *(v9 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v10 = *(a5 - 8);
  v7[51] = v10;
  v7[52] = *(v10 + 64);
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v11 = sub_AB81E0();
  v7[55] = v11;
  v7[56] = *(v11 - 8);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8);
  v7[61] = v12;
  v7[62] = *(v12 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return _swift_task_switch(sub_555348, 0, 0);
}

uint64_t sub_555348()
{
  v90 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 320), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v6 = *(v0 + 520);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = *(v0 + 440);
    v10 = *(v0 + 448);
    (*(*(v0 + 496) + 96))(v6, *(v0 + 488));
    (*(v10 + 32))(v7, v6, v9);
    v11 = *(v10 + 16);
    v11(v8, v7, v9);
    if ((*(v10 + 88))(v8, v9) == enum case for MusicLibrary.DownloadAction.UnsupportedReason.cellularDataDisallowed(_:))
    {
      v12 = *(v0 + 312);
      v13 = swift_task_alloc();
      *(v0 + 528) = v13;
      *(v13 + 16) = v12;
      v14 = swift_task_alloc();
      *(v0 + 536) = v14;
      *v14 = v0;
      v14[1] = sub_555D3C;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 600, 0, 0, 0xD00000000000001DLL, 0x8000000000B6A940, sub_55928C, v13, &type metadata for Bool);
    }

    if (qword_E0CB88 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 480);
    v33 = *(v0 + 464);
    v34 = *(v0 + 440);
    v35 = sub_AB4BC0();
    __swift_project_value_buffer(v35, static Logger.actions);
    v11(v33, v32, v34);
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 480);
    v40 = *(v0 + 464);
    if (v38)
    {
      v41 = *(v0 + 448);
      v42 = *(v0 + 456);
      v43 = *(v0 + 440);
      v87 = *(v0 + 480);
      v44 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89 = v84;
      *v44 = 136315138;
      v11(v42, v40, v43);
      v45 = sub_AB9350();
      v47 = v46;
      v48 = *(v41 + 8);
      v48(v40, v43);
      v49 = sub_500C84(v45, v47, &v89);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_0, v36, v37, "Couldn't download for reason: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v84);

      v50 = v87;
    }

    else
    {
      v43 = *(v0 + 440);
      v63 = *(v0 + 448);

      v48 = *(v63 + 8);
      v48(v40, v43);
      v50 = v39;
    }

    v48(v50, v43);
    v48(*(v0 + 472), *(v0 + 440));
    goto LABEL_25;
  }

  if (v5 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    if (qword_E0CB88 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 320);
    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, static Logger.actions);
    v4(v15, v17, v16);
    v19 = sub_AB4BA0();
    v20 = sub_AB9F40();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 512);
    if (v21)
    {
      v86 = v20;
      v23 = *(v0 + 496);
      v24 = *(v0 + 504);
      v25 = *(v0 + 488);
      v26 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v26 = 136315138;
      v4(v24, v22, v25);
      v27 = sub_AB9350();
      v29 = v28;
      v30 = *(v23 + 8);
      v30(v22, v25);
      v31 = sub_500C84(v27, v29, &v89);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_0, v19, v86, "Unknown status=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);

      v30(*(v0 + 520), *(v0 + 488));
    }

    else
    {
      v51 = *(v0 + 488);
      v52 = *(v0 + 496);

      v53 = *(v52 + 8);
      v53(v22, v51);
      v53(*(v0 + 520), *(v0 + 488));
    }
  }

  v54 = *(*(v0 + 408) + 16);
  v54(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_12E1C(v0 + 272, &qword_E0EEE8);
    goto LABEL_22;
  }

  sub_70DF8((v0 + 272), v0 + 232);
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1((v0 + 232), v56);
  if (!sub_60F558(v56, v55) || (v57 = [objc_opt_self() standardUserDefaults], v58 = objc_msgSend(v57, "prefersSpatialDownloads"), v57, (v58 & 1) != 0) || (v59 = objc_opt_self(), *(v0 + 544) = v59, v60 = objc_msgSend(v59, "standardUserDefaults"), v61 = sub_AB9260(), v62 = objc_msgSend(v60, "BOOLForKey:", v61), v61, v60, (v62 & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 232);
LABEL_22:
    sub_557378(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_25:

    v64 = *(v0 + 8);

    return v64();
  }

  v65 = *(v0 + 392);
  v66 = *(v0 + 400);
  v67 = *(v0 + 376);
  v68 = *(v0 + 384);
  sub_AB91E0();
  (*(v68 + 16))(v65, v66, v67);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 400);
  v69 = *(v0 + 408);
  v71 = *(v0 + 384);
  v72 = *(v0 + 376);
  v85 = *(v0 + 360);
  v80 = *(v0 + 336);
  v81 = *(v0 + 424);
  v82 = *(v0 + 328);
  v73 = qword_E71B20;
  v88 = *(v0 + 344);
  sub_AB3550();
  *(v0 + 552) = sub_AB9320();
  *(v0 + 560) = v74;
  (*(v71 + 8))(v70, v72);
  v54(v81, v80, v88);
  v75 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v76 = swift_allocObject();
  *(v0 + 568) = v76;
  *(v76 + 16) = v88;
  *(v76 + 32) = v85;
  *(v76 + 40) = v82;
  (*(v69 + 32))(v76 + v75, v81, v88);
  *(v0 + 576) = sub_AB9940();

  *(v0 + 584) = sub_AB9930();
  v78 = sub_AB98B0();

  return _swift_task_switch(sub_5563A8, v78, v77);
}

uint64_t sub_555D3C()
{

  return _swift_task_switch(sub_555E54, 0, 0);
}

uint64_t sub_555E54()
{
  v1 = *(v0 + 600);
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.actions);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_0, v3, v4, "Cellular data enablement: %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 480);
  v7 = *(v0 + 440);
  v8 = *(v0 + 448);

  (*(v8 + 8))(v6, v7);
  if (!v1)
  {
    goto LABEL_13;
  }

  v9 = *(*(v0 + 408) + 16);
  v9(*(v0 + 432), *(v0 + 336), *(v0 + 344));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_12E1C(v0 + 272, &qword_E0EEE8);
    goto LABEL_12;
  }

  sub_70DF8((v0 + 272), v0 + 232);
  v11 = *(v0 + 256);
  v10 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1((v0 + 232), v11);
  if (!sub_60F558(v11, v10) || (v12 = [objc_opt_self() standardUserDefaults], v13 = objc_msgSend(v12, "prefersSpatialDownloads"), v12, (v13 & 1) != 0) || (v14 = objc_opt_self(), *(v0 + 544) = v14, v15 = objc_msgSend(v14, "standardUserDefaults"), v16 = sub_AB9260(), v17 = objc_msgSend(v15, "BOOLForKey:", v16), v16, v15, (v17 & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 232);
LABEL_12:
    sub_557378(*(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352), *(v0 + 360));
LABEL_13:

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = *(v0 + 392);
  v21 = *(v0 + 400);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  sub_AB91E0();
  (*(v23 + 16))(v20, v21, v22);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 400);
  v24 = *(v0 + 408);
  v26 = *(v0 + 384);
  v27 = *(v0 + 376);
  v37 = *(v0 + 360);
  v34 = *(v0 + 336);
  v35 = *(v0 + 424);
  v36 = *(v0 + 328);
  v28 = qword_E71B20;
  v38 = *(v0 + 344);
  sub_AB3550();
  *(v0 + 552) = sub_AB9320();
  *(v0 + 560) = v29;
  (*(v26 + 8))(v25, v27);
  v9(v35, v34, v38);
  v30 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v31 = swift_allocObject();
  *(v0 + 568) = v31;
  *(v31 + 16) = v38;
  *(v31 + 32) = v37;
  *(v31 + 40) = v36;
  (*(v24 + 32))(v31 + v30, v35, v38);
  *(v0 + 576) = sub_AB9940();

  *(v0 + 584) = sub_AB9930();
  v33 = sub_AB98B0();

  return _swift_task_switch(sub_5563A8, v33, v32);
}

uint64_t sub_5563A8()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];

  sub_5FFA40(v3, v2, &unk_B18EC8, v1, (v0 + 14));

  return _swift_task_switch(sub_55645C, 0, 0);
}

uint64_t sub_55645C()
{
  *(v0 + 592) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_5564E8, v2, v1);
}

uint64_t sub_5564E8()
{
  v1 = *(v0 + 312);

  v2 = sub_5B4DF0(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 312);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = sub_71E354;
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_71F2F4;
    *(v0 + 208) = &block_descriptor_168;
    v13 = _Block_copy((v0 + 184));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_5487D4, v15);
    sub_17654(v5);
  }

  else
  {
    sub_71C834(v2, *(v0 + 144), &dword_0 + 1, 0, 0);
  }

  return _swift_task_switch(sub_5567B0, 0, 0);
}

uint64_t sub_5567B0()
{
  v1 = [*(v0 + 544) standardUserDefaults];
  isa = sub_AB9890().super.super.isa;
  v3 = sub_AB9260();
  [v1 setValue:isa forKey:v3];

  sub_111904(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0(v0 + 232);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_556924()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + 88);
  if (v8 != 255)
  {
    sub_17774(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v8);
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  v9 = (v4 + 136) & ~v4;
  v10 = (((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  (*(v3 + 8))(v0 + v9, v2);

  (*(v6 + 8))(v0 + v10, v1);

  return swift_deallocObject();
}

uint64_t sub_556AC8()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEB8) - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_17BD0;

  return sub_5550DC((v0 + 5), v0 + v6, v9, v0 + v8, v3, v2, v4);
}

uint64_t sub_556C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-v10];
  v12 = sub_AB9990();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 16))(v8, a1, v4);
  sub_15F28(a2, v18);
  sub_AB9940();
  v13 = sub_AB9930();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v16 + v14, v8, v4);
  sub_17704(v18, v16 + v15);
  sub_5E89D8(0, 0, v11, &unk_B18EE0, v16);
}

uint64_t sub_556E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v5[33] = *(v7 + 64);
  v5[34] = swift_task_alloc();
  sub_AB9940();
  v5[35] = sub_AB9930();
  v9 = sub_AB98B0();

  return _swift_task_switch(sub_556F64, v9, v8);
}

uint64_t sub_556F64()
{

  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.actions);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Will present cellular data enablement alert", v4, 2u);
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  (*(v7 + 16))(v5, v8, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v5, v6);
  sub_5FFF74(sub_559574, v11, (v0 + 112));

  v12 = sub_5B4DF0(v0 + 112, 0, 1);
  v13 = v12;
  v14 = *(v0 + 144);
  v15 = *(v9 + 80);
  if (v15)
  {
    v16 = qword_E0CF08;

    if (v16 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_E14920);
    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Deferring presentation…", v19, 2u);
    }

    v20 = *(v0 + 240);

    v21 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 216) = sub_71E354;
    *(v0 + 224) = 0;
    *(v0 + 184) = _NSConcreteStackBlock;
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_71F2F4;
    *(v0 + 208) = &block_descriptor_56;
    v22 = _Block_copy((v0 + 184));
    v23 = [v21 initWithTimeout:v22 interruptionHandler:10.0];
    _Block_release(v22);

    sub_15F28(v20, v0 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    sub_17704(v0 + 16, v24 + 24);
    *(v24 + 120) = v13;
    *(v24 + 128) = v14;
    *(v24 + 129) = 1;
    *(v24 + 136) = 0;
    *(v24 + 144) = 0;
    v25 = v23;
    v13 = v13;
    v15(v20, v13, sub_5488D0, v24);
    sub_17654(v15);
  }

  else
  {
    sub_71C834(v12, *(v0 + 144), &dword_0 + 1, 0, 0);
  }

  sub_111904(v0 + 112);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_557378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  sub_AB9960();
  v16 = sub_AB9990();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v10 + 16))(v12, a2, a3);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a5;
  *(v18 + 7) = a1;
  (*(v10 + 32))(&v18[v17], v12, a3);

  sub_50D600(0, 0, v15, &unk_B18EF0, v18);

  return sub_12E1C(v15, &qword_E0E340);
}

uint64_t sub_557584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = *(a6 - 8);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_5576A8;

  return MusicLibrary.download<A>(_:)(a5, a6, a7);
}

uint64_t sub_5576A8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_5577EC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_5577EC()
{
  v29 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, static Logger.actions);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[7];
  if (v9)
  {
    v27 = v8;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    v6(v13, v11, v14);
    v16 = sub_AB9350();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = sub_500C84(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v20 = sub_AB9350();
    v22 = sub_500C84(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v7, v27, "Download failed to item=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[4];
    v24 = v0[5];

    (*(v24 + 8))(v11, v23);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_557AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return _swift_task_switch(sub_557AD8, 0, 0);
}

uint64_t sub_557AD8()
{
  sub_557378(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_557B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_557D54, 0, 0);
}

uint64_t sub_557D54()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 216), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_53EEE4(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_AB31C0();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_51717C(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 312) = sub_AB9930();
    v18 = sub_AB98B0();

    return _swift_task_switch(sub_558044, v18, v17);
  }
}

uint64_t sub_558044()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

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
  *(v6 + 16) = 3589;
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
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
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

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_15F84(v36 + v14[6], *(v0 + 192), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_36B0C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
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

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
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

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
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

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_550CC0, 0, 0);
}

uint64_t sub_5587F8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
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

uint64_t sub_558AB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_557B40(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.Download.Context.menuItemTitle.getter()
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

uint64_t (*Actions.Download.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000000B6A8F0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000000B6A8F0;
  return sub_53EAA8;
}

uint64_t sub_558E84()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Download.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000000B5A090;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000000B5A090;
  return sub_53F19C;
}

uint64_t (*sub_558F5C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000000B6A8F0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000000B6A8F0;
  return sub_53F19C;
}

uint64_t (*sub_558FFC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000000B5A090;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000000B5A090;
  return sub_53F19C;
}

uint64_t sub_5590BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_559178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_557AB0(a1, v7, v1 + v8, v4, v5, v6);
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_559294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_5593B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_556E5C(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_5594E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_559574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF0);
  return sub_AB98D0();
}

uint64_t sub_559618()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_5596DC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_17BD0;

  return sub_557584(a1, v8, v9, v6, v1 + v7, v4, v5);
}

unint64_t sub_5597EC()
{
  result = qword_E10B20;
  if (!qword_E10B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E10AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E10B20);
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB8E20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Actions.EditPlaylist.Context.playlist.setter(uint64_t a1)
{
  v3 = sub_AB8E20();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));

  return v1;
}

uint64_t type metadata accessor for Actions.EditPlaylist.Context()
{
  result = qword_E0EF80;
  if (!qword_E0EF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.finish.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));

  return v1;
}

uint64_t Actions.EditPlaylist.Context.finish.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = sub_AB8E20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(a5, a1, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = type metadata accessor for Actions.EditPlaylist.Context();
  v15 = (a5 + *(v14 + 20));
  *v15 = &unk_B18998;
  v15[1] = v13;
  v16 = *(v10 + 32);
  v16(v12, a1, v9);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v19 = (v18 + *(v17 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_36B0C(v24, v20 + v18, &qword_E0EAA0);
  result = v16(v20 + v19, v12, v9);
  v22 = (a5 + *(v14 + 24));
  *v22 = &unk_B18F08;
  v22[1] = v20;
  return result;
}

uint64_t sub_559D60()
{

  return swift_deallocObject();
}

uint64_t sub_559D98(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_559FA8, 0, 0);
}

uint64_t sub_559FA8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_15F84(*(v0 + 112), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 240), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_53EEE4(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = sub_AB8CE0();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = sub_AB31C0();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(v0 + 104) = sub_AB8E20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E468);
    v13 = sub_AB9350();
    v15 = v14;
    sub_2717E4(1);
    v16 = sub_ABA9D0();
    v18 = v17;

    v19 = sub_517570(1uLL, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_517620();
    sub_AB9480();

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_51717C(inited);
    *(v0 + 320) = v26;
    *(v0 + 328) = v27;
    *(v0 + 344) = v28;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 336) = sub_AB9930();
    v30 = sub_AB98B0();

    return _swift_task_switch(sub_55A340, v30, v29);
  }
}

uint64_t sub_55A340()
{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  sub_15F84(v6, v5, &qword_E0DC30);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_15F84(v3 + v4[5], v9, &qword_E0E348);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 5125;
  sub_36B0C(v79, v8 + v7[7], &qword_E0DC30);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_15F84(v9, v77, &qword_E0E348);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    sub_512C64(v13, v81);
    v24 = v82;

    sub_513BF8(v22, v20, v21, v19, SBYTE1(v19));
    sub_12E1C(v23, &qword_E0E348);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_512C64(v13, v81);
    v24 = v82;

    sub_513BF8(v22, v20, v21, v19, SBYTE1(v19));

    sub_548758(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_15F84(v27, v28, &qword_E0E348);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_12E1C(*(v0 + 168), &qword_E0E348);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_548758(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_15F84(v34, v35, &qword_E0E348);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_12E1C(*(v0 + 160), &qword_E0E348);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_15F84(v41 + v17[6], *(v0 + 216), &qword_E0DC30);
    sub_548758(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_36B0C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_E0DC30);
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_12E1C(v50, &qword_E0E348);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_15F84(v52, v53, &qword_E0E348);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_548758(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_36B0C(v59, v60, &qword_E0E348);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_12E1C(v63, &qword_E0E348);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_548758(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_53EEE4(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  sub_53EF4C(v70, v69, v68, v75, SBYTE1(v75));
  sub_548758(v74, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v73, &qword_E0DC30);

  return _swift_task_switch(sub_549A44, 0, 0);
}

uint64_t sub_55AB30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_AB8E20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
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

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_55ADF8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_AB8E20() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17BD0;

  return sub_559D98(v0 + v3, v0 + v6);
}

int *static Actions.EditPlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_55B52C(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EF00);
  *(a2 + result[9]) = 12;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_55AFDC;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_B18F10;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_B18F18;
  v6[1] = 0;
  return result;
}

unint64_t sub_55AFDC()
{
  v0 = sub_AB8C40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_AB8C50();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_12E1C(v6, &unk_E10D90);
  }

  else
  {
    sub_55BAFC(&qword_E0EFC0);
    sub_ABABA0();
    sub_55BAFC(&qword_E0EFC8);
    v7 = sub_AB91C0();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if ((v7 & 1) == 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD000000000000013;
}

uint64_t sub_55B21C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_55B318;

  return v5();
}

uint64_t sub_55B318()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_55B430()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context() + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_54A180;

  return v5();
}

uint64_t sub_55B52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.EditPlaylist.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.EditPlaylist.Context.menuItemTitle.getter()
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

uint64_t (*Actions.EditPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_53EAA8;
}

uint64_t sub_55B7FC()
{

  return swift_deallocObject();
}

uint64_t (*sub_55B834())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_53F19C;
}

uint64_t sub_55B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB8E20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_55B9C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB8E20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_55BA78()
{
  result = sub_AB8E20();
  if (v1 <= 0x3F)
  {
    result = sub_50EECC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_55BAFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_AB8C40();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t (**a6)()@<X8>)
{
  v27 = a5;
  v28 = a3;
  v29 = a4;
  v25[0] = a1;
  v9 = sub_AB8C80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v26 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  (*(v10 + 16))(v25 - v13, a1, v9);
  v15 = *(v10 + 80);
  v25[1] = v15 | 7;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(v10 + 32);
  v17(v16 + ((v15 + 24) & ~v15), v14, v9);
  v17(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25[0], v9);
  v18 = *(v29 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v15 + v19) & ~v15;
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v27;
  *(v21 + 16) = v29;
  *(v21 + 24) = v23;
  (*(v18 + 32))(v21 + v19, v22);
  result = (v17)(v21 + v20, v26, v9);
  *a6 = sub_55FA5C;
  a6[1] = v16;
  a6[2] = &unk_B18F70;
  a6[3] = v21;
  a6[4] = &unk_B18F78;
  a6[5] = 0;
  return result;
}

uint64_t Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_55FE88(a1, v16 + v13);
  *(v16 + v14) = a2;
  v17 = (v16 + v15);
  *v17 = a5;
  v17[1] = a6;
  result = sub_17704(a4, v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *a7 = sub_55FE6C;
  a7[1] = a3;
  a7[2] = &unk_B183E8;
  a7[3] = v16;
  a7[4] = &unk_B18F98;
  a7[5] = 0;
  return result;
}

uint64_t Actions.RenameFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = sub_AB8CA0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, a1, v8);
  result = sub_17704(a3, v12 + v11);
  *a4 = sub_5631DC;
  a4[1] = a2;
  a4[2] = &unk_B18408;
  a4[3] = v12;
  a4[4] = &unk_B18FB8;
  a4[5] = 0;
  return result;
}

uint64_t Actions.DeleteFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = sub_AB8CA0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v9 + 32))(v12 + v10, a1, v8);
  sub_17704(a3, v12 + v11);
  *a4 = sub_535E24;
  a4[1] = a2;
  a4[2] = &unk_B18428;
  a4[3] = v12;
  a4[4] = &unk_B18FD8;
  a4[5] = 0;
}

uint64_t sub_55C28C@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = a1[2];
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.CreateFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000000B6A9A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000000B6A9A0;
  return sub_53EAA8;
}

uint64_t (*sub_55C3E8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x8000000000B6A9A0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x8000000000B6A9A0;
  return sub_53F19C;
}

uint64_t sub_55C48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v5[41] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_55C59C, 0, 0);
}

uint64_t sub_55C59C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  sub_561DEC((v0 + 26));
  sub_5628CC(v8, v1);
  sub_15F28(v5, (v0 + 2));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[45] = v12;
  sub_55FE88(v1, v12 + v9);
  *(v12 + v10) = v7;
  v13 = (v12 + v11);
  *v13 = v6;
  v13[1] = v4;
  sub_17704((v0 + 2), v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v0[46] = sub_AB9940();

  sub_3FC34(v6);
  v0[47] = sub_AB9930();
  v15 = sub_AB98B0();

  return _swift_task_switch(sub_55C704, v15, v14);
}

uint64_t sub_55C704()
{
  v1 = *(v0 + 360);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 384) = sub_5B5930(v0 + 208, sub_562AE0, v1);

  return _swift_task_switch(sub_55C7A8, 0, 0);
}

uint64_t sub_55C7A8()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_15F28(v3, (v0 + 14));
  v5 = v1;
  v6 = sub_AB9930();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  sub_17704((v0 + 14), (v7 + 4));
  v7[16] = v5;
  sub_5E89D8(0, 0, v2, &unk_B19150, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_55C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a1;
  v29 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_AB9990();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_5628CC(a3, v16);
  sub_15F28(a7, v30);
  v21 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v28;
  v24[5] = a2;
  sub_55FE88(v16, v24 + v21);
  *(v24 + v22) = a4;
  v25 = (v24 + v23);
  v26 = v29;
  *v25 = a5;
  v25[1] = v26;
  sub_17704(v30, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_3FC34(a5);
  sub_5E89D8(0, 0, v19, &unk_B19160, v24);
}

uint64_t sub_55CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v14;
  v8[22] = v15;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v8[23] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v8[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F0F0);
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = sub_AB8CA0();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F0F8);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return _swift_task_switch(sub_55CD3C, 0, 0);
}

uint64_t sub_55CD3C()
{
  v0[14] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F108);
  sub_56301C();
  sub_AB4320();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_55CE4C;
  v2 = v0[27];

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_55CE4C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_55D370;
  }

  else
  {
    v2 = sub_55CF60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_55CF60()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  sub_AB4380();
  (*(v2 + 8))(v1, v3);
  v5 = v0[29];
  v6 = v0[28];
  if (v4)
  {
    v7 = v0[24];
    v8 = v0[20];
    (*(v5 + 16))(v7, v0[30], v0[28]);
    (*(v5 + 56))(v7, 0, 1, v6);
    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[36] = v9;
    *v9 = v0;
    v9[1] = sub_55D178;
    v10 = v0[24];

    return v13(v10);
  }

  else
  {
    (*(v5 + 8))(v0[30], v0[28]);
    (*(v0[32] + 8))(v0[33], v0[31]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_55D178()
{
  v1 = *(*v0 + 192);

  sub_563130(v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);

  return _swift_task_switch(sub_55D2A4, 0, 0);
}

uint64_t sub_55D2A4()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_55D370()
{
  v18 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[35];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[15] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to create folder with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = v0[22];
  v11 = v0[23];
  v12 = sub_AB9990();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_15F28(v10, (v0 + 2));
  sub_AB9940();
  v13 = sub_AB9930();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_17704((v0 + 2), v14 + 32);
  sub_5E89D8(0, 0, v11, &unk_B19178, v14);

  (*(v0[32] + 8))(v0[33], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_55D640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  sub_AB9940();
  v4[11] = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_55D734, v6, v5);
}

uint64_t sub_55D734()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x8000000000B6AAF0;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_563130(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_720A4C((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      sub_563130(v6, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    }

    else
    {
      sub_563130(v0[10], type metadata accessor for Notice);
      sub_561D84((v0 + 2));
    }
  }

  else
  {
    sub_563130(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_55D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  sub_AB9940();
  v5[16] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_55D96C, v7, v6);
}

uint64_t sub_55D96C()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = qword_E0CF08;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E14920);
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Deferring presentation…", v7, 2u);
    }

    v8 = v0[14];
    v9 = v0[15];

    v10 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = sub_71E354;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_71F2F4;
    v0[5] = &block_descriptor_164_0;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    sub_15F28(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_17704((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, sub_5488D0, v13);
    sub_17654(v2);
  }

  else
  {
    sub_71C834(v0[15], &dword_0 + 1, &dword_0 + 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_55DC04(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_17CF8;

  return v5();
}

uint64_t (*Actions.RenameFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_53F19C;
}

uint64_t (*sub_55DDF0())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return sub_53F19C;
}

unint64_t sub_55DE88()
{
  sub_AB8510();
  sub_AB8500();
  v0 = sub_AB8340();

  if (v0)
  {
    return 0;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_55DF00(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v2[26] = swift_task_alloc();
  v3 = sub_AB8CA0();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v2[29] = *(v4 + 64);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_55E000, 0, 0);
}

uint64_t sub_55E000()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = sub_AB8C90();
  sub_562180(v5, v6, v0 + 14);

  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[31] = v8;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[32] = sub_AB9940();
  v0[33] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_55E12C, v10, v9);
}

uint64_t sub_55E12C()
{
  v1 = *(v0 + 248);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 272) = sub_5B5930(v0 + 112, sub_562524, v1);

  return _swift_task_switch(sub_55E1D0, 0, 0);
}

uint64_t sub_55E1D0()
{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_15F28(v3, (v0 + 2));
  v5 = v1;
  v6 = sub_AB9930();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  sub_17704((v0 + 2), (v7 + 4));
  v7[16] = v5;
  sub_5E89D8(0, 0, v2, &unk_B19120, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_55E324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB8CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_AB9990();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a1;
  v15[1] = a2;

  sub_5E89D8(0, 0, v11, &unk_B19130, v14);
}

uint64_t sub_55E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_AB8CA0();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F0F0);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F0F8);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_55E6B4, 0, 0);
}

uint64_t sub_55E6B4()
{
  sub_AB4350();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_55E76C;
  v2 = *(v0 + 88);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_55E76C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_55E928;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_55E898;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_55E898()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_55E928()
{
  v29 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_AB4BC0();
  __swift_project_value_buffer(v5, static Logger.actions);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v8)
  {
    v25 = v0[16];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    sub_562874();
    v26 = v11;
    v27 = v9;
    v16 = sub_ABB330();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_500C84(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v20 = sub_AB9350();
    v22 = sub_500C84(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_0, v6, v7, "Failed to rename folder=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v27, v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_55EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  sub_AB9940();
  v5[16] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_55ECA4, v7, v6);
}

uint64_t sub_55ECA4()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = qword_E0CF08;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_AB4BC0();
    __swift_project_value_buffer(v4, qword_E14920);
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Deferring presentation…", v7, 2u);
    }

    v8 = v0[14];
    v9 = v0[15];

    v10 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = sub_71E354;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_71F2F4;
    v0[5] = &block_descriptor_141_1;
    v11 = _Block_copy(v0 + 2);
    v12 = [v10 initWithTimeout:v11 interruptionHandler:10.0];
    _Block_release(v11);

    sub_15F28(v8, (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_17704((v0 + 2), v13 + 24);
    *(v13 + 120) = v9;
    *(v13 + 128) = 257;
    *(v13 + 136) = 0;
    *(v13 + 144) = 0;
    v14 = v12;
    v2(v8, v9, sub_5488D0, v13);
    sub_17654(v2);
  }

  else
  {
    sub_71C834(v0[15], &dword_0 + 1, &dword_0 + 1, 0, 0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_55EFA4()
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

uint64_t (*Actions.MoveToFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return sub_53F19C;
}

uint64_t sub_55F240()
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

uint64_t (*sub_55F420())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return sub_53F19C;
}

unint64_t sub_55F4B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_AB8410();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v23 - v6;
  v7 = sub_AB8E20();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB8C80();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB8510();
  sub_AB8500();
  v14 = sub_AB8340();

  if ((v14 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for Playlist.Folder.Item.folder(_:) || v15 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v11 + 96))(v13, v10);
    v16 = v24;
    v17 = v13;
    v18 = v25;
    (*(v24 + 32))(v9, v17, v25);
    sub_AB8500();
    sub_AB4000();
    v19 = v27;
    sub_AB82C0();

    (*(v23 + 8))(v5, v3);
    v20 = v26;
    v21 = v28;
    if ((*(v26 + 88))(v19, v28) != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:) || ((*(v20 + 96))(v19, v21), v21 = sub_AB8400(), v20 = *(v21 - 8), (*(v20 + 88))(v19, v21) != enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:)))
    {
      (*(v20 + 8))(v19, v21);
      (*(v16 + 8))(v9, v18);
      return 0xD00000000000001ALL;
    }

    (*(v16 + 8))(v9, v18);
    (*(v20 + 8))(v19, v21);
  }

  return 0;
}

uint64_t sub_55F998()
{
  v1 = sub_AB8C80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_55FA5C()
{
  v1 = *(sub_AB8C80() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_55F4B8(v2, v3);
}

uint64_t sub_55FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_E0564;

  return v10(a2, a3, a4);
}

uint64_t sub_55FBF0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_AB8C80();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_55FD30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = *(sub_AB8C80() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17CF8;

  return sub_55FAC0(v0 + v4, v0 + v7, v2, v3);
}

uint64_t sub_55FE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_55FEF8()
{
  v1 = sub_AB8CA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_560018@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 40);
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = v6;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.DeleteFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_53F19C;
}

uint64_t (*sub_56013C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return sub_53F19C;
}

unint64_t sub_5601D4()
{
  sub_AB8510();
  sub_AB8500();
  v0 = sub_AB8340();

  if ((v0 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  if (sub_AB8310())
  {
    return 0xD000000000000019;
  }

  return 0;
}

uint64_t sub_560270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[49] = a2;
  v3[50] = a3;
  v3[48] = a1;
  sub_AB9230();
  v3[51] = swift_task_alloc();
  v4 = sub_AB3470();
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v5 = sub_AB8CA0();
  v3[55] = v5;
  v6 = *(v5 - 8);
  v3[56] = v6;
  v3[57] = *(v6 + 64);
  v3[58] = swift_task_alloc();
  sub_AB35C0();
  v3[59] = swift_task_alloc();
  v7 = sub_AB9250();
  v3[60] = v7;
  v3[61] = *(v7 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return _swift_task_switch(sub_560458, 0, 0);
}

uint64_t sub_560458()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  sub_AB91E0();
  v46 = *(v4 + 16);
  v46(v1, v2, v3);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v31 = *(v0 + 496);
  v7 = *(v0 + 448);
  v42 = *(v0 + 456);
  v8 = *(v0 + 432);
  v29 = *(v0 + 440);
  v30 = *(v0 + 464);
  v32 = *(v0 + 424);
  v33 = *(v0 + 416);
  v36 = *(v0 + 400);
  v28 = *(v0 + 392);
  v38 = *(v0 + 384);
  v9 = qword_E71B20;
  sub_AB3550();
  v40 = v9;
  v10 = sub_AB9320();
  v44 = v11;
  v45 = v10;
  *(v0 + 512) = v11;
  v35 = *(v6 + 8);
  v35(v47, v5);
  (*(v7 + 16))(v30, v28, v29);
  sub_15F28(v36, v0 + 16);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v42 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 520) = v14;
  *(v14 + 16) = v38;
  v15 = v14 + v12;
  v16 = v14;
  v43 = v14;
  (*(v7 + 32))(v15, v30, v29);
  sub_17704(v0 + 16, v16 + v13);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v39 = sub_AB3440();
  v37 = v17;
  *(v0 + 528) = v17;
  (*(v32 + 8))(v8, v33);
  sub_AB9220();
  v49._object = 0x8000000000B6AA00;
  v49._countAndFlagsBits = 0x100000000000002ELL;
  sub_AB9210(v49);
  v50._countAndFlagsBits = sub_AB8C90();
  sub_AB9200(v50);

  v51._countAndFlagsBits = 1067286754;
  v51._object = 0xA400000000000000;
  sub_AB9210(v51);
  sub_AB9240();
  v46(v31, v47, v5);
  sub_AB3550();
  v18 = v40;
  v41 = sub_AB9320();
  v34 = v19;
  v35(v47, v5);
  sub_AB91E0();
  v46(v31, v47, v5);
  sub_AB3550();
  v20 = sub_AB9320();
  v22 = v21;
  v35(v47, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF85F0;
  *(v23 + 32) = v39;
  *(v23 + 40) = v37;
  *(v23 + 48) = v45;
  *(v23 + 56) = v44;
  *(v23 + 64) = 1;
  *(v23 + 72) = &unk_B19100;
  *(v23 + 80) = v43;

  sub_5FF7A8(v0 + 280);
  v24 = *(v0 + 296);
  *(v23 + 88) = *(v0 + 280);
  *(v23 + 104) = v24;
  *(v23 + 120) = *(v0 + 312);
  *(v23 + 136) = *(v0 + 328);
  *(v0 + 208) = v41;
  *(v0 + 216) = v34;
  *(v0 + 224) = v20;
  *(v0 + 232) = v22;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = v23;
  *(v0 + 272) = 0;
  sub_AB9940();
  *(v0 + 536) = sub_AB9930();
  v26 = sub_AB98B0();

  return _swift_task_switch(sub_560954, v26, v25);
}

uint64_t sub_560954()
{
  v1 = *(v0 + 400);

  v2 = sub_5B4DF0(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 400);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 368) = sub_71E354;
    *(v0 + 376) = 0;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_71F2F4;
    *(v0 + 360) = &block_descriptor_169;
    v13 = _Block_copy((v0 + 336));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v3 = v3;
    v5(v11, v3, sub_5487D4, v15);
    sub_17654(v5);
  }

  else
  {
    sub_71C834(v2, *(v0 + 240), &dword_0 + 1, 0, 0);
  }

  return _swift_task_switch(sub_560C1C, 0, 0);
}

uint64_t sub_560C1C()
{
  sub_111904(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_560D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v5[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = sub_560DE0;

  return MusicLibrary.remove(_:)(a4);
}

uint64_t sub_560DE0()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_560F1C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_560F1C()
{
  v18 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to delete folder with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = sub_AB9990();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_15F28(v10, (v0 + 2));
  sub_AB9940();
  v13 = sub_AB9930();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_17704((v0 + 2), v14 + 32);
  sub_5E89D8(0, 0, v11, &unk_B19110, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_5611B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  sub_AB9940();
  v4[11] = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_5612A4, v6, v5);
}

uint64_t sub_5612A4()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x8000000000B6AA80;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_563130(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_720A4C((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      sub_563130(v6, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    }

    else
    {
      sub_563130(v0[10], type metadata accessor for Notice);
      sub_561D84((v0 + 2));
    }
  }

  else
  {
    sub_563130(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t _s9MusicCore7ActionsO12CreateFolderO7ContextV13menuItemTitleSSvg_0()
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

uint64_t _s9MusicCore7ActionsO12DeleteFolderO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_561840(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB8CA0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5618C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_AB8CA0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for Actions.CreateFolder.Context.FlowResult()
{
  result = qword_E0F0C0;
  if (!qword_E0F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_56198C()
{
  v0 = sub_AB8CA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_561A44()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_AB8CA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_561B98(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_AB8CA0() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_17CF8;

  return sub_560D04(a1, a2, v9, v2 + v7, v2 + v8);
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_561CD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_5611B0(a1, v4, v5, v1 + 32);
}

uint64_t sub_561D84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_561DEC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  sub_AB91E0();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v11 = qword_E71B20;
  sub_AB3550();
  v12 = v11;
  v13 = sub_AB9320();
  v32 = v14;
  v33 = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  sub_AB91E0();
  v10(v7, v9, v3);
  sub_AB3550();
  v16 = sub_AB9320();
  v30 = v17;
  v31 = v16;
  v15(v9, v3);
  sub_AB91E0();
  v10(v7, v9, v3);
  sub_AB3550();
  v18 = sub_AB9320();
  v28 = v19;
  v29 = v18;
  v15(v9, v3);
  sub_AB91E0();
  v10(v7, v9, v3);
  sub_AB3550();
  v20 = sub_AB9320();
  v22 = v21;
  v15(v9, v3);
  result = 0.0;
  *a1 = xmmword_AF82C0;
  v24 = v32;
  *(a1 + 16) = v33;
  *(a1 + 24) = v24;
  v25 = v30;
  *(a1 + 32) = v31;
  *(a1 + 40) = v25;
  v26 = v28;
  *(a1 + 48) = v29;
  *(a1 + 56) = v26;
  *(a1 + 64) = v20;
  *(a1 + 72) = v22;
  return result;
}

uint64_t sub_562180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  sub_AB91E0();
  v12 = *(v6 + 16);
  v12(v9, v11, v5);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v13 = qword_E71B20;
  sub_AB3550();
  v14 = v13;
  v15 = sub_AB9320();
  v31 = v16;
  v32 = v15;
  v17 = *(v6 + 8);
  v17(v11, v5);
  sub_AB91E0();
  v12(v9, v11, v5);
  sub_AB3550();
  v18 = sub_AB9320();
  v29 = v19;
  v30 = v18;
  v17(v11, v5);
  sub_AB91E0();
  v12(v9, v11, v5);
  sub_AB3550();
  v20 = sub_AB9320();
  v22 = v21;
  v17(v11, v5);

  v24 = v32;
  *a3 = v33;
  a3[1] = result;
  v26 = v30;
  v25 = v31;
  a3[2] = v24;
  a3[3] = v25;
  a3[4] = 0;
  a3[5] = 0;
  v27 = v29;
  a3[6] = v26;
  a3[7] = v27;
  a3[8] = v20;
  a3[9] = v22;
  return result;
}

uint64_t sub_56249C()
{
  v1 = sub_AB8CA0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_562524(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_AB8CA0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_55E324(a1, a2, v6);
}

uint64_t sub_5625A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_55EC0C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_562668()
{
  v1 = sub_AB8CA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_562744(uint64_t a1)
{
  v4 = *(sub_AB8CA0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17CF8;

  return sub_55E520(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_562874()
{
  result = qword_E0F100;
  if (!qword_E0F100)
  {
    sub_AB8CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F100);
  }

  return result;
}

uint64_t sub_5628CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_AB8CA0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_17774(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_562AE0(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);

  return sub_55C8FC(a1, a2, v2 + v6, v9, v10, v11, v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_562C38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_55D8D4(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_562CF8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = sub_AB8CA0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_17774(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_562EA8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v13 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17BD0;

  return sub_55CB34(a1, v13, v6, v7, v8, v1 + v4, v9, v10);
}

unint64_t sub_56301C()
{
  result = qword_E0F110;
  if (!qword_E0F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0F108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0F110);
  }

  return result;
}

uint64_t sub_563080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_55D640(a1, v4, v5, v1 + 32);
}

uint64_t sub_563130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v53 = a4;
  v54 = a5;
  v51 = a3;
  v56 = a2;
  v57 = a1;
  v55 = a9;
  v59 = *(a6 - 8);
  v12 = v59;
  v13 = __chkstk_darwin(a1);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v47 = &v44 - v16;
  v18 = v17;
  v50 = v17;
  __chkstk_darwin(v15);
  v20 = &v44 - v19;
  v46 = *(v12 + 16);
  v46(&v44 - v19);
  v21 = *(v12 + 80);
  v22 = (v21 + 40) & ~v21;
  v58 = v21 | 7;
  v44 = v18 + 7;
  v23 = (v18 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a7;
  v25 = a8;
  v48 = a8;
  v24[4] = a8;
  v45 = *(v59 + 32);
  v59 += 32;
  v26 = v24;
  v52 = v24;
  v45(v24 + v22, v20, a6);
  v28 = v56;
  v27 = v57;
  *(v26 + v23) = v56;
  v29 = v47;
  (v46)(v47, v27, a6);
  v30 = (v21 + 41) & ~v21;
  v31 = (v44 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  *(v32 + 32) = v25;
  *(v32 + 40) = v51;
  v33 = v32 + v30;
  v34 = v45;
  v45(v33, v29, a6);
  *(v32 + v31) = v28;
  sub_17704(v53, v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v49;
  v34(v49, v57, a6);
  v36 = v34;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v38 = (*(v37 + 80) + 40) & ~*(v37 + 80);
  v39 = (*(v37 + 64) + v21 + v38) & ~v21;
  v40 = swift_allocObject();
  *(v40 + 2) = a6;
  *(v40 + 3) = a7;
  *(v40 + 4) = v48;
  sub_36B0C(v54, v40 + v38, &qword_E0EAA0);
  v36(v40 + v39, v35, a6);

  v42 = v55;
  v43 = v52;
  *v55 = sub_563E60;
  v42[1] = v43;
  v42[2] = &unk_B19188;
  v42[3] = v32;
  v42[4] = &unk_B19198;
  v42[5] = v40;
  return result;
}

uint64_t static Actions.RemoveDownload.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 48;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B191A0;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B191A8;
  *(a2 + 104) = 0;
}

uint64_t sub_56363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a3;
  v23[2] = a5;
  v23[3] = a2;
  v23[0] = sub_AB8320();
  v5 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8330();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EE98);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  sub_AB3FF0();
  sub_AB82C0();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v16, v18, v12);
  v19 = (*(v13 + 88))(v16, v12);
  if (v19 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v20 = v23[0];
    (*(v5 + 32))(v7, v16, v23[0]);
    v21 = sub_56742C(v7);
    (*(v5 + 8))(v7, v20);
LABEL_5:
    (*(v13 + 8))(v18, v12);
    return v21;
  }

  if (v19 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v21 = 0;
    goto LABEL_5;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

uint64_t sub_5639B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_17BD0;

  return MusicLibrary.removeDownload<A>(_:)(a1, a3, a4);
}

uint64_t sub_563A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 48;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B191A0;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B191A8;
  *(a2 + 104) = 0;
}

uint64_t Actions.RemoveDownload.Context.menuItemTitle.getter()
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

uint64_t (*Actions.RemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return sub_53EAA8;
}

uint64_t (*sub_563DB8())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return sub_53F19C;
}

uint64_t sub_563ECC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a6;
  *(v7 + 328) = a7;
  *(v7 + 304) = a4;
  *(v7 + 312) = a5;
  *(v7 + 288) = a2;
  *(v7 + 296) = a3;
  *(v7 + 744) = a1;
  v9 = sub_AB3470();
  *(v7 + 336) = v9;
  *(v7 + 344) = *(v9 - 8);
  *(v7 + 352) = swift_task_alloc();
  v10 = sub_AB87A0();
  *(v7 + 360) = v10;
  *(v7 + 368) = *(v10 - 8);
  *(v7 + 376) = swift_task_alloc();
  v11 = sub_AB46C0();
  *(v7 + 384) = v11;
  *(v7 + 392) = *(v11 - 8);
  *(v7 + 400) = swift_task_alloc();
  v12 = sub_AB88F0();
  *(v7 + 408) = v12;
  *(v7 + 416) = *(v12 - 8);
  *(v7 + 424) = swift_task_alloc();
  v13 = sub_AB4770();
  *(v7 + 432) = v13;
  *(v7 + 440) = *(v13 - 8);
  *(v7 + 448) = swift_task_alloc();
  v14 = sub_AB4710();
  *(v7 + 456) = v14;
  *(v7 + 464) = *(v14 - 8);
  *(v7 + 472) = swift_task_alloc();
  v15 = sub_AB46B0();
  *(v7 + 480) = v15;
  *(v7 + 488) = *(v15 - 8);
  *(v7 + 496) = swift_task_alloc();
  v16 = sub_AB44B0();
  *(v7 + 504) = v16;
  *(v7 + 512) = *(v16 - 8);
  *(v7 + 520) = swift_task_alloc();
  v17 = sub_AB86C0();
  *(v7 + 528) = v17;
  *(v7 + 536) = *(v17 - 8);
  *(v7 + 544) = swift_task_alloc();
  v18 = sub_AB8E20();
  *(v7 + 552) = v18;
  *(v7 + 560) = *(v18 - 8);
  *(v7 + 568) = swift_task_alloc();
  v19 = sub_AB8030();
  *(v7 + 576) = v19;
  *(v7 + 584) = *(v19 - 8);
  *(v7 + 592) = swift_task_alloc();
  sub_AB35C0();
  *(v7 + 600) = swift_task_alloc();
  v20 = sub_AB9250();
  *(v7 + 608) = v20;
  *(v7 + 616) = *(v20 - 8);
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  v21 = sub_AB8770();
  *(v7 + 640) = v21;
  *(v7 + 648) = *(v21 - 8);
  *(v7 + 656) = swift_task_alloc();
  v22 = *(a5 - 8);
  *(v7 + 664) = v22;
  *(v7 + 672) = *(v22 + 64);
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = swift_task_alloc();

  return _swift_task_switch(sub_564494, 0, 0);
}

uint64_t sub_564494()
{
  v145 = v0;
  if (*(v0 + 744) == 1)
  {
    v1 = *(*(v0 + 664) + 16);
    v1(*(v0 + 696), *(v0 + 288), *(v0 + 312));
    v2 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    v140 = v1;
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 632);
      v4 = *(v0 + 624);
      v5 = *(v0 + 616);
      v6 = *(v0 + 608);
      sub_AB91E0();
      log = *(v5 + 16);
      log(v4, v3, v6);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 664);
      v127 = *(v0 + 656);
      v130 = *(v0 + 696);
      v8 = *(v0 + 648);
      v9 = *(v0 + 640);
      v10 = *(v0 + 632);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      v124 = *(v0 + 312);
      qword_E71B20;
      sub_AB3550();
      v13 = sub_AB9320();
      v136 = v14;
      v137 = v13;
      v135 = *(v11 + 8);
      v135(v10, v12);
      (*(v8 + 8))(v127, v9);
      (*(v7 + 8))(v130, v124);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v21 = *(v0 + 632);
      v22 = *(v0 + 624);
      v23 = *(v0 + 616);
      v24 = *(v0 + 608);
      sub_AB91E0();
      log = *(v23 + 16);
      log(v22, v21, v24);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 592);
      v29 = *(v0 + 584);
      v30 = *(v0 + 576);
    }

    else if (swift_dynamicCast())
    {
      v31 = *(v0 + 632);
      v32 = *(v0 + 624);
      v33 = *(v0 + 616);
      v34 = *(v0 + 608);
      sub_AB91E0();
      log = *(v33 + 16);
      log(v32, v31, v34);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 568);
      v29 = *(v0 + 560);
      v30 = *(v0 + 552);
    }

    else if (swift_dynamicCast())
    {
      v35 = *(v0 + 632);
      v36 = *(v0 + 624);
      v37 = *(v0 + 616);
      v38 = *(v0 + 608);
      sub_AB91E0();
      log = *(v37 + 16);
      log(v36, v35, v38);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 544);
      v29 = *(v0 + 536);
      v30 = *(v0 + 528);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v65 = (v0 + 496);
          v66 = (v0 + 480);
          v67 = 488;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            if (swift_dynamicCast())
            {
              v77 = *(v0 + 632);
              v78 = *(v0 + 624);
              v79 = *(v0 + 616);
              v80 = *(v0 + 608);
              sub_AB91E0();
              log = *(v79 + 16);
              log(v78, v77, v80);
              if (qword_E0CB80 != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 440);
              v125 = *(v0 + 448);
              v30 = *(v0 + 432);
            }

            else if (swift_dynamicCast())
            {
              v81 = *(v0 + 632);
              v82 = *(v0 + 624);
              v83 = *(v0 + 616);
              v84 = *(v0 + 608);
              sub_AB91E0();
              log = *(v83 + 16);
              log(v82, v81, v84);
              if (qword_E0CB80 != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 416);
              v125 = *(v0 + 424);
              v30 = *(v0 + 408);
            }

            else if (swift_dynamicCast())
            {
              v85 = *(v0 + 632);
              v86 = *(v0 + 624);
              v87 = *(v0 + 616);
              v88 = *(v0 + 608);
              sub_AB91E0();
              log = *(v87 + 16);
              log(v86, v85, v88);
              if (qword_E0CB80 != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 392);
              v125 = *(v0 + 400);
              v30 = *(v0 + 384);
            }

            else
            {
              if (!swift_dynamicCast())
              {
                if (qword_E0CB88 != -1)
                {
                  swift_once();
                }

                v93 = *(v0 + 688);
                v94 = *(v0 + 312);
                v95 = *(v0 + 288);
                v96 = sub_AB4BC0();
                __swift_project_value_buffer(v96, static Logger.actions);
                v1(v93, v95, v94);
                v97 = sub_AB4BA0();
                v98 = sub_AB9F40();
                v99 = os_log_type_enabled(v97, v98);
                v100 = *(v0 + 688);
                if (v99)
                {
                  v101 = *(v0 + 680);
                  logb = v97;
                  v102 = *(v0 + 664);
                  v103 = *(v0 + 312);
                  v104 = swift_slowAlloc();
                  v139 = swift_slowAlloc();
                  v144[0] = v139;
                  *v104 = 136315138;
                  v1(v101, v100, v103);
                  v105 = sub_AB9350();
                  v107 = v106;
                  v108 = v103;
                  v2 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
                  v133 = *(v102 + 8);
                  v133(v100, v108);
                  v109 = sub_500C84(v105, v107, v144);

                  *(v104 + 4) = v109;
                  _os_log_impl(&dword_0, logb, v98, "RemoveDownload: unhandled item type=%s", v104, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v139);
                }

                else
                {
                  v110 = *(v0 + 664);
                  v111 = *(v0 + 312);

                  v133 = *(v110 + 8);
                  v133(v100, v111);
                }

                v112 = *(v0 + 632);
                v113 = *(v0 + 624);
                v114 = *(v0 + 616);
                v115 = *(v0 + 608);
                sub_AB91E0();
                log = *(v114 + 16);
                log(v113, v112, v115);
                if (v2[73].vtable != -1)
                {
                  swift_once();
                }

                v116 = *(v0 + 696);
                v117 = *(v0 + 632);
                v118 = *(v0 + 616);
                v119 = *(v0 + 608);
                v120 = *(v0 + 312);
                qword_E71B20;
                sub_AB3550();
                v121 = sub_AB9320();
                v136 = v122;
                v137 = v121;
                v135 = *(v118 + 8);
                v135(v117, v119);
                v133(v116, v120);
                goto LABEL_26;
              }

              v89 = *(v0 + 632);
              v90 = *(v0 + 624);
              v91 = *(v0 + 616);
              v92 = *(v0 + 608);
              sub_AB91E0();
              log = *(v91 + 16);
              log(v90, v89, v92);
              if (qword_E0CB80 != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 368);
              v125 = *(v0 + 376);
              v30 = *(v0 + 360);
            }

            goto LABEL_25;
          }

          v65 = (v0 + 472);
          v66 = (v0 + 456);
          v67 = 464;
        }

        (*(*(v0 + v67) + 8))(*v65, *v66);
        v68 = *(v0 + 632);
        v69 = *(v0 + 624);
        v70 = *(v0 + 616);
        v71 = *(v0 + 608);
        (*(*(v0 + 664) + 8))(*(v0 + 696), *(v0 + 312));
        sub_AB91E0();
        v45 = *(v70 + 16);
        v45(v69, v68, v71);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 632);
        v73 = *(v0 + 616);
        v74 = *(v0 + 608);
        qword_E71B20;
        sub_AB3550();
        v75 = sub_AB9320();
        v136 = v76;
        v137 = v75;
        v135 = *(v73 + 8);
        v135(v72, v74);
        goto LABEL_27;
      }

      v39 = *(v0 + 632);
      v40 = *(v0 + 624);
      v41 = *(v0 + 616);
      v42 = *(v0 + 608);
      sub_AB91E0();
      log = *(v41 + 16);
      log(v40, v39, v42);
      if (qword_E0CB80 != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 520);
      v30 = *(v0 + 504);
      v29 = *(v0 + 512);
    }

LABEL_25:
    v128 = *(v0 + 312);
    qword_E71B20;
    sub_AB3550();
    v43 = sub_AB9320();
    v136 = v44;
    v137 = v43;
    v135 = *(v27 + 8);
    v135(v26, v28);
    (*(v29 + 8))(v125, v30);
    (*(v25 + 8))(v131, v128);
LABEL_26:
    v45 = log;
LABEL_27:
    v46 = *(v0 + 632);
    v47 = *(v0 + 624);
    v48 = *(v0 + 608);
    sub_AB91E0();
    v45(v47, v46, v48);
    if (qword_E0CB80 != -1)
    {
      swift_once();
    }

    v123 = *(v0 + 680);
    v126 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 632);
    v51 = *(v0 + 608);
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v129 = *(v0 + 328);
    v54 = *(v0 + 288);
    v132 = *(v0 + 296);
    v134 = *(v0 + 336);
    *loga = *(v0 + 312);
    sub_AB3550();
    v138 = sub_AB9320();
    v56 = v55;
    *(v0 + 704) = v55;
    v135(v50, v51);
    v140(v123, v54, loga[0]);
    v57 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v58 = swift_allocObject();
    *(v0 + 712) = v58;
    *(v58 + 16) = *loga;
    *(v58 + 32) = v129;
    (*(v49 + 32))(v58 + v57, v123, loga[0]);
    *(v58 + ((v126 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v59 = sub_AB3440();
    v61 = v60;
    *(v0 + 720) = v60;
    (*(v53 + 8))(v52, v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_AF85F0;
    *(v62 + 32) = v59;
    *(v62 + 40) = v61;
    *(v62 + 48) = v138;
    *(v62 + 56) = v56;
    *(v62 + 64) = 2;
    *(v62 + 72) = &unk_B19230;
    *(v62 + 80) = v58;

    sub_5FF7A8(v0 + 184);
    *(v62 + 88) = *(v0 + 184);
    *(v62 + 104) = *(v0 + 200);
    *(v62 + 120) = *(v0 + 216);
    *(v62 + 136) = *(v0 + 232);
    LOBYTE(v144[0]) = 1;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = v137;
    *(v0 + 136) = v136;
    *(v0 + 144) = 1;
    *(v0 + 152) = 0;
    *(v0 + 160) = 1;
    *(v0 + 168) = v62;
    *(v0 + 176) = 0;
    sub_AB9940();
    *(v0 + 728) = sub_AB9930();
    v64 = sub_AB98B0();

    return _swift_task_switch(sub_5655A8, v64, v63);
  }

  v15 = swift_task_alloc();
  *(v0 + 736) = v15;
  *v15 = v0;
  v15[1] = sub_565A0C;
  v16 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);

  return sub_5639B8(v19, v18, v16, v17);
}

uint64_t sub_5655A8()
{
  v1 = *(v0 + 304);

  v2 = sub_5B4DF0(v0 + 112, 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 304);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 272) = sub_71E354;
    *(v0 + 280) = 0;
    *(v0 + 240) = _NSConcreteStackBlock;
    *(v0 + 248) = 1107296256;
    *(v0 + 256) = sub_71F2F4;
    *(v0 + 264) = &block_descriptor_170;
    v13 = _Block_copy((v0 + 240));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_53F0C4, v15);
    sub_17654(v5);

    v18 = sub_565880;
  }

  else
  {
    sub_71C834(v2, *(v0 + 144), &dword_0 + 1, 0, 0);

    v18 = sub_5678C4;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_565880()
{
  sub_111904(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_565A0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_565D40()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v4 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + v3 + 48);
  if (v5 != 255)
  {
    sub_17774(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5);
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_565E24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = (*(*(v2 - 8) + 80) + 41) & ~*(*(v2 - 8) + 80);
  v6 = (*(*(v2 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 40);
  v9 = *(v0 + v6);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_17BD0;

  return sub_563ECC(v8, v0 + v5, v9, v0 + v7, v2, v3, v4);
}

uint64_t sub_565F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_566008;

  return sub_5639B8(a3, a4, a5, a6);
}

uint64_t sub_566008()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_56613C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_56613C()
{
  v14 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = sub_AB4BA0();
  v3 = sub_AB9F30();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v8 = sub_AB9350();
    v10 = sub_500C84(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to remove Download with error=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_56630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_566520, 0, 0);
}

uint64_t sub_566520()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_15F84(*(v0 + 72), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 216), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_53EEE4(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = sub_AB31C0();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_51717C(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 312) = sub_AB9930();
    v18 = sub_AB98B0();

    return _swift_task_switch(sub_566810, v18, v17);
  }
}

uint64_t sub_566810()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

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
  *(v6 + 16) = 9477;
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
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
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

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_15F84(v36 + v14[6], *(v0 + 192), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_36B0C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 128), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
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

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 112), &qword_E0E348);
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

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
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

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_550CC0, 0, 0);
}

uint64_t sub_566FC4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
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

uint64_t sub_567284()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_56630C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_5673D4()
{

  return swift_deallocObject();
}

uint64_t sub_56742C(uint64_t a1)
{
  v2 = sub_AB8320();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.removalNotPermitted(_:))
  {
    return 0xD000000000000015;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.notDownloaded(_:))
  {
    return 0x6E776F6420746F4ELL;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x61685320656D6F48;
  }

  if (v6 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    return 0xD00000000000001CLL;
  }

  (*(v3 + 8))(v5, v2);
  return 0x206E776F6E6B6E55;
}

uint64_t objectdestroyTm_11()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_5676E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = *(v2 + ((*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_17BD0;

  return sub_565F54(a1, a2, v2 + v8, v9, v6, v7);
}

uint64_t block_copy_helper_170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_567824()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t static Actions.RemoveFromPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 47;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B19240;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B19248;
  *(a2 + 104) = 0;
}

uint64_t sub_567974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 47;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B19240;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B19248;
  *(a2 + 104) = 0;
}

uint64_t (*Actions.RemoveFromPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return sub_53EAA8;
}

uint64_t (*sub_567AD8())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return sub_53F19C;
}

uint64_t Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t (**a5)()@<X8>)
{
  v44 = a3;
  v45 = a4;
  v48 = a1;
  v46 = a5;
  v6 = sub_AB8DE0();
  v40 = *(v6 - 8);
  v41 = v6;
  v47 = *(v40 + 64);
  v7 = __chkstk_darwin(v6);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v38 = &v37 - v9;
  v11 = sub_AB8E20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  (*(v12 + 16))(&v37 - v15, a2, v11);
  v17 = *(v12 + 80);
  v39 = v17 | 7;
  v42 = swift_allocObject();
  v18 = *(v12 + 32);
  v18(v42 + ((v17 + 16) & ~v17), v16, v11);
  v19 = v40;
  v20 = v10;
  v21 = v41;
  (*(v40 + 16))(v20, v48, v41);
  v18(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v22 = *(v19 + 80);
  v23 = v19;
  v24 = (v22 + 24) & ~v22;
  v25 = (v47 + v17 + v24) & ~v17;
  v26 = swift_allocObject();
  *(v26 + 16) = v44;
  v27 = *(v23 + 32);
  v27(v26 + v24, v38, v21);
  v18(v26 + v25, v37, v11);
  v28 = v43;
  v29 = v21;
  v27(v43, v48, v21);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v31 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v22 + v31) & ~v22;
  v33 = swift_allocObject();
  sub_36B0C(v45, v33 + v31, &qword_E0EAA0);
  result = (v27)(v33 + v32, v28, v29);
  v35 = v46;
  v36 = v42;
  *v46 = sub_569678;
  v35[1] = v36;
  v35[2] = &unk_B19258;
  v35[3] = v26;
  v35[4] = &unk_B19270;
  v35[5] = v33;
  return result;
}

unint64_t sub_567F4C()
{
  v0 = sub_AB8C40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_AB8C50();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_12E1C(v6, &unk_E10D90);
  }

  else
  {
    sub_AB8C30();
    sub_569D80();
    v7 = sub_ABAB70();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if ((v7 & 1) != 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_568124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v6 = sub_AB8E20();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v7 = sub_AB8DE0();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[11] = v8;
  *v8 = v3;
  v8[1] = sub_568290;

  return MusicLibrary.remove(_:from:)(a2, a3);
}

uint64_t sub_568290()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_5683DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_5683DC()
{
  v37 = v0;
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v35 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, static Logger.actions);
  (*(v2 + 16))(v1, v7, v3);
  (*(v4 + 16))(v35, v6, v5);
  swift_errorRetain();
  v9 = sub_AB4BA0();
  v10 = sub_AB9F30();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v32 = v0[12];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v18 = 136446722;
    v33 = v10;
    v19 = sub_AB8DA0();
    log = v9;
    v21 = v20;
    (*(v12 + 8))(v13, v15);
    v22 = sub_500C84(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_AB8D00();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = sub_500C84(v23, v25, &v36);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v32;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v27 = sub_AB9350();
    v29 = sub_500C84(v27, v28, &v36);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_0, log, v33, "Failed to remove entry=%{public}s from playlist=%{public}s with error=%{public}s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_568718(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_568928, 0, 0);
}

uint64_t sub_568928()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_15F84(*(v0 + 96), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 224), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    sub_53EEE4(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = sub_515418();
    *(v0 + 264) = v7;
    v8 = sub_AB31C0();
    *(v0 + 272) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    *(v0 + 280) = v10;
    *(v0 + 288) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v6, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = sub_514A3C();
    *(inited + 40) = v12;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_AF8620;
    *(inited + 72) = 2;
    *(v0 + 296) = sub_51717C(inited);
    *(v0 + 304) = v13;
    *(v0 + 312) = v14;
    *(v0 + 328) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_AB9940();
    *(v0 + 320) = sub_AB9930();
    v17 = sub_AB98B0();

    return _swift_task_switch(sub_568C20, v17, v16);
  }
}

uint64_t sub_568C20()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

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
  *(v6 + 16) = 9989;
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
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
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

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_15F84(v36 + v14[6], *(v0 + 200), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_36B0C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
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

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 120), &qword_E0E348);
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

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
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

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_547A40, 0, 0);
}

uint64_t _s9MusicCore7ActionsO18RemoveFromPlaylistO7ContextV13menuItemTitleSSvg_0()
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

uint64_t sub_5695B8()
{

  return swift_deallocObject();
}

uint64_t sub_5695F0()
{
  v1 = sub_AB8E20();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_569678()
{
  sub_AB8E20();

  return sub_567F4C();
}

uint64_t sub_5696D8()
{
  v1 = sub_AB8DE0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_AB8E20();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_569828()
{
  v2 = *(sub_AB8DE0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_AB8E20() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_17BD0;

  return sub_568124(v7, v0 + v3, v0 + v6);
}

uint64_t sub_56995C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_AB8DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
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

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_569C24()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_AB8DE0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17CF8;

  return sub_568718(v0 + v3, v0 + v6);
}

unint64_t sub_569D80()
{
  result = qword_E0EFC0;
  if (!qword_E0EFC0)
  {
    sub_AB8C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0EFC0);
  }

  return result;
}

uint64_t sub_569DE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "gMusicTabsDictionary";
      v3 = 0xD000000000000025;
    }

    else
    {
      v4 = "countUniqueIdentifier";
      v3 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000024;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2)
    {
      v4 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v4 = "explicitContent";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000025;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = "gMusicTabsDictionary";
    }

    else
    {
      v6 = "countUniqueIdentifier";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v6 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v6 = "explicitContent";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_ABB3C0();
  }

  return v7 & 1;
}

uint64_t sub_569F1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656B696C736964;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x657469726F766166;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656B696C736964;
  if (a2 != 2)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}