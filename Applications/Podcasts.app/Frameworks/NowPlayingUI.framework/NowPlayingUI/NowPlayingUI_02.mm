uint64_t sub_3CB80(char a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 1;
  v7 = sub_14357C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1414CC();
  if ((result & 1) != v6)
  {
    __chkstk_darwin(result);
    *&v13[-16] = v3;
    v13[-8] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    sub_2172C(a2);
    sub_143F1C();
    sub_14356C();
    sub_142B6C();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_3CD3C()
{
  swift_beginAccess();

  sub_1425FC();
}

Swift::Void __swiftcall NowPlayingMediaPlayerController.willTransitionToMiniPlayer()()
{
  v0 = sub_140D5C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  NowPlayingMetricsControllerWrapper.willTransitionToMiniPlayer()();
  swift_beginAccess();
  (*(v1 + 104))(v3, enum case for NowPlayingPlayerStyle.mini(_:), v0);

  sub_1425EC();

  (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall NowPlayingMediaPlayerController.didTransitionToFullScreenPlayer()()
{
  v1 = v0;
  v2 = sub_140D5C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v10 = sub_14489C();

  v11 = [v9 integerForKey:v10];

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    isa = sub_144B7C().super.super.isa;

    v13 = sub_14489C();

    [v9 setValue:isa forKey:v13];

    v14 = *(v1 + 88);
    sub_1414EC();
    sub_BBE84(v8);
    sub_14434C();
    sub_15340(v8, &unk_1C1DA0);
    *(v14 + 24) = 1;
    swift_beginAccess();
    (*(v3 + 104))(v5, enum case for NowPlayingPlayerStyle.fullScreen(_:), v2);

    sub_1425EC();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t NowPlayingMediaPlayerController.didUpdateSelectedContent(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_141BDC();
  if (v4)
  {
    v5 = v4;
    v6 = sub_144C0C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  v9 = sub_BC044(a1);
  v11 = v10;
  if (v9 == sub_BC044(a2) && v11 == v12)
  {
  }

  else
  {
    v13 = sub_1453BC();

    if ((v13 & 1) == 0)
    {
      sub_BBE84(a2);
      sub_BB9C4(v6, v8 & 1, a2);
    }
  }

  sub_1425EC();
}

void sub_3D26C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedApplication];
  [v2 setIdleTimerDisabled:v1];
}

uint64_t sub_3D2DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22F0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_1D19C(a1, &v13 - v8, &qword_1C22F0);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_preferredJumpInterval;
  swift_beginAccess();
  sub_432C0(v9, v10 + v11);
  swift_endAccess();
  sub_1D19C(v10 + v11, v7, &qword_1C22F0);
  sub_12934C(v7);
  sub_15340(v7, &qword_1C22F0);
  return sub_15340(v9, &qword_1C22F0);
}

uint64_t sub_3D418(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 48);
  v3 = *a2;
  v4 = *(a1 + 16);
  *(v3 + 56) = *a1;
  *(v3 + 72) = v4;
  *(v3 + 88) = *(a1 + 32);
  *(v3 + 104) = v2;
  v8 = v2;
  v5 = *(v3 + 72);
  v7[0] = *(v3 + 56);
  v7[1] = v5;
  v7[2] = *(v3 + 88);
  return sub_129054(v7);
}

uint64_t sub_3D4A4(void **a1)
{
  v2 = sub_14243C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_14240C();
  v7 = v6;
  v8 = sub_14242C();
  v9 = sub_144C5C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315651;
    *(v10 + 4) = sub_ED2A4(0xD000000000000022, 0x80000000001619B0, &v16);
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2113;
    *(v10 + 24) = v7;
    *v11 = v6;
    v13 = v7;
    _os_log_impl(&dword_0, v8, v9, "%s [Backdrop] Updating backdrop image to %{private,mask.hash}@.", v10, 0x20u);
    sub_15340(v11, &qword_1C2580);

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_3D6B8(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v36 = a4;
  v37 = a3;
  v5 = sub_14243C();
  v39 = *(v5 - 1);
  v6 = __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_140C4C();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  sub_1D19C(a1, v12, &unk_1C15F8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_15340(v12, &unk_1C15F8);
    sub_14240C();
    v20 = sub_14242C();
    v21 = sub_144C5C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v5;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_ED2A4(0xD000000000000022, 0x80000000001619B0, &v40);
      _os_log_impl(&dword_0, v20, v21, v36, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);

      return (*(v39 + 8))(v8, v22);
    }

    else
    {

      return (*(v39 + 8))(v8, v5);
    }
  }

  else
  {
    v36 = v5;
    (*(v14 + 32))(v19, v12, v13);
    sub_14240C();
    (*(v14 + 16))(v17, v19, v13);
    v26 = sub_14242C();
    v27 = sub_144C5C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v28 = 136315651;
      *(v28 + 4) = sub_ED2A4(0xD000000000000022, 0x80000000001619B0, &v40);
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      sub_40DC4(&qword_1C2578, &type metadata accessor for NowPlayingArtwork.Data);
      v29 = sub_14538C();
      v31 = v30;
      v35 = v19;
      v32 = *(v14 + 8);
      v32(v17, v13);
      v33 = sub_ED2A4(v29, v31, &v40);

      *(v28 + 24) = v33;
      _os_log_impl(&dword_0, v26, v27, v37, v28, 0x20u);
      swift_arrayDestroy();

      (*(v39 + 8))(v38, v36);
      return (v32)(v35, v13);
    }

    else
    {

      v34 = *(v14 + 8);
      v34(v17, v13);
      (*(v39 + 8))(v38, v36);
      return (v34)(v19, v13);
    }
  }
}

uint64_t sub_3DC20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();

    sub_59FB8(a1);
  }

  return result;
}

uint64_t sub_3DCA4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C24D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = a1[5];
  v52 = a1[4];
  v53 = v11;
  v12 = a1[7];
  v54 = a1[6];
  v55 = v12;
  v13 = a1[1];
  v48 = *a1;
  v49 = v13;
  v14 = a1[3];
  v50 = a1[2];
  v51 = v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    sub_35894();
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v16 = sub_29FF0(&v44, *(&v48 + 1), v49, BYTE8(v49));
    v35 = v16;

    v41 = v16;
    v31 = v48;
    v17 = v49;
    v18 = BYTE8(v49);
    v39 = a2;
    v19 = v50;
    LOBYTE(v16) = BYTE8(v50);
    v36 = v4;
    v37 = v5;
    v20 = v53;
    v21 = BYTE8(v53);
    v22 = v54;
    v34 = BYTE8(v54);
    v32 = *(&v55 + 1);
    v33 = v55;
    v23 = swift_allocObject();
    *(v23 + 16) = v31;
    *(v23 + 32) = v17;
    *(v23 + 40) = v18;
    *(v23 + 48) = v19;
    *(v23 + 56) = v16;
    v24 = v52;
    *(v23 + 64) = v51;
    *(v23 + 80) = v24;
    *(v23 + 96) = v20;
    *(v23 + 104) = v21;
    *(v23 + 112) = v22;
    *(v23 + 120) = v34;
    v25 = v32;
    *(v23 + 128) = v33;
    *(v23 + 136) = v25;
    sub_1D19C(&v48, v42, &unk_1C23C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A0);
    sub_1D4A4(&qword_1C1738, &qword_1C1730);
    v26 = v40;
    a2 = v39;
    sub_1427BC();

    sub_1D4A4(&qword_1C24F0, &qword_1C24D0);
    v27 = v36;
    v28 = sub_14273C();

    result = (*(v37 + 8))(v26, v27);
  }

  else
  {
    v30 = v48;
    sub_1D19C(&v48, v42, &unk_1C23C0);

    sub_2AFA8(*(&v48 + 1), v49, SBYTE8(v49));
    swift_unknownObjectRelease();

    *(&v45 + 1) = sub_14194C();
    *&v46 = sub_40DC4(&qword_1C1800, &type metadata accessor for NowPlayingStandardArtworkTreatment);
    __swift_allocate_boxed_opaque_existential_1(&v44);
    sub_14180C();
    v42[0] = v52;
    v42[1] = v53;
    v42[2] = v54;
    v42[3] = v55;
    sub_2B5CC(&v44, &v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A0);
    sub_14264C();
    sub_1D4A4(&qword_1C24E8, &unk_1C24D8);
    v28 = sub_14273C();
    result = (*(v8 + 8))(v10, v7);
  }

  *a2 = v28;
  return result;
}

uint64_t sub_3E17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 64);
  v3 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 120);
  v10 = *(a2 + 88);
  v7 = *(a2 + 104);
  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = v5;
  *(a3 + 24) = v10;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  sub_1DB40(a1, a3 + 64);
  v11 = v4;
  sub_2ADDC(v3, v5, v10);
  v12 = v9;

  return swift_unknownObjectRetain();
}

uint64_t sub_3E218(uint64_t a1, uint64_t a2)
{
  sub_1D19C(a1, &v19, &qword_1C24A0);
  v3 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  sub_2B5CC(v24, v25);
  sub_1D19C(a2, &v19, &qword_1C24A0);
  v4 = v19;
  v5 = v20;
  v6 = v21;
  v7 = v22;
  v8 = v23;
  sub_2B5CC(v24, v18);
  if (v3)
  {
    if (!v4)
    {
      v12 = v3;
      sub_2AFA8(v5, v6, v7);

      swift_unknownObjectRelease();
      sub_2AFA8(v14, v15, v16);

      goto LABEL_8;
    }

    sub_2B860(0, &qword_1C24C8);
    v4 = v4;
    v9 = v3;
    v10 = sub_144FFC();

    if ((v10 & 1) == 0)
    {

      sub_2AFA8(v5, v6, v7);
      swift_unknownObjectRelease();

      sub_2AFA8(v14, v15, v16);
LABEL_8:
      swift_unknownObjectRelease();
      v11 = 0;
LABEL_11:
      v4 = v17;
      goto LABEL_12;
    }

LABEL_10:
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v11 = sub_14181C();

    sub_2AFA8(v5, v6, v7);
    swift_unknownObjectRelease();

    sub_2AFA8(v14, v15, v16);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (!v4)
  {
    v9 = 0;
    goto LABEL_10;
  }

  sub_2AFA8(v5, v6, v7);
  swift_unknownObjectRelease();

  sub_2AFA8(v14, v15, v16);
  swift_unknownObjectRelease();

  v11 = 0;
LABEL_12:

  __swift_destroy_boxed_opaque_existential_0(v18);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v11 & 1;
}

uint64_t sub_3E46C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D19C(a1, v8, &qword_1C24A0);
    v3 = v8[0];
    v4 = v8[1];
    v5 = v8[2];
    v6 = v10;
    v7 = v9;
    sub_2B5CC(&v11, v12);
    sub_3E554(v3, v12);

    sub_2AFA8(v4, v5, v7);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return result;
}

uint64_t sub_3E554(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for NowPlayingPodcastItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1DB40(a2, v42);
    v19 = a1;
    sub_AAB64(v19, v42, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      return sub_15340(v14, &qword_1C24B0);
    }

    v39 = v8;
    sub_43020(v14, v18);
    sub_35DF4();
    v38 = v19;
    sub_713E8(a1);

    v22 = *(v18 + 3);
    v21 = *(v18 + 4);
    v40 = v3[49];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v42[0] = v22;
    *(&v42[0] + 1) = v21;

    sub_1426EC();
    v23 = v38;
    v24 = sub_144C0C();
    if ((v25 & 1) == 0)
    {
      *&v42[0] = v24;
      sub_1CB9C();
      v26 = sub_14513C();
      sub_76C2C(v26, v27);
    }

    sub_32B4C();
    sub_9A06C(a1);

    v28 = v3[11];
    v29 = sub_144C0C();
    v31 = v30;

    v38 = v3[2];
    sub_1414EC();
    if (*(v28 + 40))
    {
      if (v31)
      {
        goto LABEL_15;
      }
    }

    else if ((v31 & 1) == 0 && *(v28 + 32) == v29)
    {
      goto LABEL_15;
    }

    *(v28 + 32) = v29;
    *(v28 + 40) = v31 & 1;
    sub_BB9C4(v29, v31 & 1, v11);
LABEL_15:
    sub_15340(v11, &unk_1C1DA0);
    swift_beginAccess();
    if (v3[52])
    {
      type metadata accessor for NowPlayingContextInteractionDelegate();
      if (swift_dynamicCastClass())
      {
        v32 = v3[4];
        swift_unknownObjectRetain();
        NowPlayingContextInteractionDelegate.updateMenuProvider(asPartOf:for:)(v32, v23);
        swift_unknownObjectRelease();
      }
    }

    v33 = v39;
    sub_75184(v39);
    v34 = sub_1415DC();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    sub_4308C(v33, &v18[*(v15 + 48)]);
    sub_35F04();
    v35 = &v18[*(v15 + 40)];
    v36 = *(v35 + 3);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    LOBYTE(v36) = sub_3F578(v36);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v36 & 1;
    sub_1426EC();
    sub_40DC4(&qword_1C24B8, type metadata accessor for NowPlayingPodcastItem);
    sub_1415BC();
    sub_14222C();

    return sub_43104(v18);
  }

  sub_14147C();
  sub_14158C();
  sub_35DF4();
  sub_713E8(0);
}

uint64_t sub_3EAB8(uint64_t a1, uint64_t a2)
{
  v36 = sub_1440BC();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1417AC();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v29 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_14415C();
  v10 = *(v9 + 16);
  if (v10)
  {
    v28[2] = a1;
    v28[3] = a2;
    v37 = _swiftEmptyArrayStorage;
    sub_92B8C(0, v10, 0);
    v11 = v37;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v28[1] = v9;
    v15 = v9 + v14;
    v32 = *(v12 + 56);
    v33 = v13;
    v30 = v7 + 32;
    v31 = (v12 - 8);
    v16 = v29;
    v34 = v12;
    v17 = v36;
    do
    {
      v33(v6, v15, v17);
      sub_14408C();
      sub_1440AC();
      sub_14409C();
      sub_14177C();
      (*v31)(v6, v17);
      v37 = v11;
      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        sub_92B8C(v18 > 1, v19 + 1, 1);
        v16 = v29;
        v11 = v37;
      }

      v11[2] = v19 + 1;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v16, v35);
      v15 += v32;
      --v10;
    }

    while (v10);

    if (sub_14406C())
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = 0;
    v22 = 0;
    v26 = 0;
    v24 = 0;
    goto LABEL_10;
  }

  if ((sub_14406C() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1430EC();
  v20 = sub_1437DC();
  v22 = v21;
  v24 = v23;
  v26 = v25 & 1;
LABEL_10:
  sub_1415AC();
  sub_42FDC(v20, v22, v26, v24);
}

uint64_t sub_3EE34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_14465C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14430C();
  a3(a1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_14418C();
    sub_14435C();

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_3EF94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (!v3)
  {
    if ((v6 != 0) | v5 & 1)
    {
      v8 &= v6 == 0;
      return v8 & 1;
    }

LABEL_13:
    v8 = (v4 == v7) & ~v8;
    return v8 & 1;
  }

  if (!v6)
  {
    v8 = 0;
    return v8 & 1;
  }

  if (*a1 == *a2 && v3 == v6)
  {
    if (*(a1 + 24))
    {
      return v8 & 1;
    }

    goto LABEL_13;
  }

  v10 = sub_1453BC();
  if (!(v5 & 1 | ((v10 & 1) == 0)))
  {
    goto LABEL_13;
  }

  v8 &= v10;
  return v8 & 1;
}

uint64_t sub_3F038(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v27[1] = a3;
  v28 = a1;
  v6 = sub_14243C();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v29 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_141E0C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_141F7C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_141E6C();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a4 & 1) != 0 || !a2)
    {
    }

    else
    {
      v20 = result;
      (*(v13 + 104))(v15, enum case for NetworkTaskPriority.utility(_:), v12);
      (*(v9 + 104))(v11, enum case for AssetLifetime.opportunistic(_:), v8);
      v35 = 0;
      memset(v34, 0, sizeof(v34));

      v21 = v28;
      sub_141E5C();
      v22 = v29;
      sub_1423DC();

      v23 = sub_14242C();
      v24 = sub_144C5C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v34[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_ED2A4(v21, a2, v34);
        _os_log_impl(&dword_0, v23, v24, "[NowPlayingMediaPlayerController]: Requesting transcript for player item with transcript identifier: %s.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      (*(v32 + 8))(v22, v33);
      __swift_project_boxed_opaque_existential_1((v20 + 192), *(v20 + 216));
      sub_141F6C();

      return (*(v30 + 8))(v18, v31);
    }
  }

  return result;
}

__n128 sub_3F45C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t sub_3F478()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_14159C();

    sub_14153C();
  }

  return result;
}

uint64_t sub_3F4F4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_35F04();
    if (v1)
    {
      sub_D07A4();
    }

    else
    {
      sub_D1518();
    }
  }

  return result;
}

uint64_t sub_3F578(uint64_t a1)
{
  v2 = v1;
  v4 = sub_14145C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  result = swift_dynamicCast();
  if (result)
  {
    v12 = result;
    (*(v5 + 8))(v8, v4);
    return v12;
  }

  return result;
}

void sub_3F6EC(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v3;
    if ((sub_144CEC() & 1) == 0)
    {

      v3 = 0;
    }
  }

  *a2 = v3;
}

uint64_t sub_3F73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _sSo29MPCPlayerItemDurationSnapshota12NowPlayingUIE2eeoiySbAB_ABtFZ_0(v5, v7) & 1;
}

uint64_t sub_3F798@<X0>(uint64_t a1@<X8>)
{
  result = sub_1411BC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_3F7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v27 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26E8);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26F0);
  v25 = *(v9 - 8);
  v26 = v9;
  __chkstk_darwin(v9);
  v24 = v21 - v10;
  v11 = type metadata accessor for NowPlayingMediaPlayerController();
  v28 = v11;
  v12 = sub_40DC4(&qword_1C0E58, type metadata accessor for NowPlayingMediaPlayerController);
  v29 = v12;
  swift_getKeyPath();
  if (qword_1BFFF0 != -1)
  {
    swift_once();
  }

  v13 = sub_14142C();
  __swift_project_value_buffer(v13, qword_1C5880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26F8);
  sub_1D4A4(&qword_1C2700, &qword_1C2708);
  sub_14183C();

  __chkstk_darwin(v14);
  v21[-2] = v11;
  v21[-1] = v12;
  swift_getKeyPath();
  if (qword_1BFFF8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_1C5898);
  sub_43710();
  sub_14183C();

  v15 = (*(v3 + 8))(v5, v2);
  __chkstk_darwin(v15);
  v21[-2] = v11;
  v21[-1] = v12;
  swift_getKeyPath();
  if (qword_1C0000 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_1C58B0);
  sub_438DC();
  v17 = v23;
  v16 = v24;
  sub_14183C();

  v18 = (*(v22 + 8))(v8, v17);
  __chkstk_darwin(v18);
  v21[-2] = v11;
  v21[-1] = v12;
  swift_getKeyPath();
  if (qword_1C0008 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_1C58C8);
  sub_435E4();
  v19 = v26;
  sub_14183C();

  return (*(v25 + 8))(v16, v19);
}

uint64_t sub_3FCF8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  return result;
}

uint64_t sub_3FD78()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_3FDEC(unint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t *, unint64_t *))
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v9 = a2;
    v10 = a1;
    v6 = a1;
    v7 = a2;
    v3 = a3(&v10, &v9);
  }

  return v3 & 1;
}

uint64_t sub_3FE74@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_3FEA4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2770);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  v8[1] = a2;
  sub_14478C();
  sub_14479C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3FFBC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_A1A64(v1);
  }

  return result;
}

void *sub_40038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[12] = 0;
  a4[13] = 0;
  a4[2] = a1;
  sub_14227C();

  sub_1446DC();
  a4[3] = v13;
  sub_141D4C();
  sub_1446DC();
  a4[4] = v13;
  sub_14437C();
  sub_1446DC();
  a4[5] = v13;
  _s9PresenterCMa(0);
  v7 = swift_allocObject();

  v8 = sub_41950(a1, a3, v7);

  a4[6] = v8;
  v9 = sub_1421DC();

  v10 = sub_1421CC();
  a4[10] = v9;
  a4[11] = sub_40DC4(&qword_1C2200, &type metadata accessor for ScoutingAlignmentCoordinator);
  a4[7] = v10;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2208);
  sub_1D4A4(&qword_1C2210, &qword_1C2208);
  v11 = sub_14289C();

  a4[13] = v11;

  return a4;
}

uint64_t _sSo29MPCPlayerItemDurationSnapshota12NowPlayingUIE2eeoiySbAB_ABtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    return (*(a1 + 49) ^ *(a2 + 49) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_4030C()
{
  v1 = v0;
  v35 = *v0;
  v43 = sub_1447BC();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1447DC();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_140D5C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14243C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1416CC();
  swift_allocObject();
  v0[2] = sub_1416BC();
  v42 = sub_1421BC();
  swift_allocObject();
  v0[3] = sub_1421AC();
  v39 = v0 + 3;
  sub_1423FC();
  sub_144C2C();
  sub_141F8C();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v1[17] = 0;
  sub_1423FC();
  sub_144C2C();
  sub_141F8C();
  v16(v15, v12);
  v1[23] = 0;
  v1[29] = 0;
  v1[30] = 0;
  v1[31] = &_swiftEmptySetSingleton;
  v1[32] = 0;
  (*(v9 + 104))(v11, enum case for NowPlayingPlayerStyle.mini(_:), v8);
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
  swift_allocObject();
  v1[33] = sub_14260C();
  v18 = sub_1417CC();
  *(v1 + 17) = 0u;
  *(v1 + 18) = 0u;
  *(v1 + 19) = 0u;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0100);
  swift_allocObject();
  v1[40] = sub_14260C();
  type metadata accessor for NowPlayingMiniPlayerSublineController(0);
  *(v1 + 41) = 0u;
  *(v1 + 43) = 0u;
  *(v1 + 45) = 0u;
  *(v1 + 47) = 0u;
  v19 = swift_allocObject();
  type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  swift_allocObject();
  v20 = sub_76918();
  *(v19 + 5) = 0;
  *(v19 + 6) = 0;
  *(v19 + 4) = v20;
  v21 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle;
  v22 = sub_1415DC();
  (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0108);
  (*(*(v24 - 8) + 56))(&v19[v23], 1, 1, v24);
  v1[49] = v19;
  sub_14221C();
  swift_allocObject();
  v1[51] = sub_14220C();
  v1[52] = 0;
  v25 = OBJC_IVAR____TtC12NowPlayingUI31NowPlayingMediaPlayerController____lazy_storage___viewProvider;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0110);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  sub_141D4C();
  sub_1446DC();
  v1[5] = *&v45[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2760);
  sub_1446DC();
  sub_2B5CC(v45, (v1 + 6));
  sub_14225C();
  swift_allocObject();

  v1[50] = sub_14224C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2768);
  sub_1446DC();
  sub_2B5CC(v45, (v1 + 24));
  v27 = v36;
  sub_1447CC();
  sub_14470C();
  (*(v37 + 8))(v27, v38);
  v28 = v40;
  sub_1447AC();
  sub_14471C();

  (*(v41 + 8))(v28, v43);
  sub_141ECC();
  *&v45[0] = sub_141EBC();

  sub_1446FC();

  sub_14472C();

  sub_14437C();
  sub_1446EC();

  *&v45[0] = v1[50];

  sub_1446FC();

  swift_beginAccess();
  *&v45[0] = v1[3];

  v29 = sub_1446FC();

  v1[4] = v29;

  sub_1446DC();

  v30 = *&v45[0];
  type metadata accessor for NowPlayingMetricsControllerWrapper();
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 40) = 1;
  *(v31 + 16) = v30;
  v1[11] = v31;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_1DB40((v1 + 6), v44);
  v32 = objc_allocWithZone(type metadata accessor for NowPlayingContextInteractionDelegate());
  v33 = sub_7BA0C(v45, v44);
  swift_beginAccess();
  v1[52] = v33;
  swift_unknownObjectRelease();

  sub_1414EC();
  sub_1425EC();

  sub_15340(v17, &unk_1C1DA0);
  return v1;
}

uint64_t type metadata accessor for NowPlayingMediaPlayerController()
{
  result = qword_1C1DE8;
  if (!qword_1C1DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_40DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_40E5C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1411BC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_40E90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

BOOL sub_40EE0()
{
  v0 = sub_14243C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v17 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v8 = domain_answer;
    sub_1423DC();
    v9 = sub_14242C();
    v10 = sub_144C3C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v8;
      _os_log_impl(&dword_0, v9, v10, "OSEligibility error code %d encountered while getting OS_ELIGIBILITY_DOMAIN_PODCASTS_TRANSCRIPTS", v11, 8u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  else
  {
    sub_1423DC();
    v13 = sub_14242C();
    v14 = sub_144C2C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      swift_beginAccess();
      *(v15 + 4) = v17;
      _os_log_impl(&dword_0, v13, v14, "eligibility is %llu for OS_ELIGIBILITY_DOMAIN_PODCASTS_TRANSCRIPTS", v15, 0xCu);
    }

    (*(v1 + 8))(v6, v0);
    swift_beginAccess();
    return v17 == 4 || v17 == 1;
  }
}

void *sub_4117C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21B8);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = __chkstk_darwin(v5);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21C8);
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  __chkstk_darwin(v16);
  v19 = &v29 - v18;
  v38 = a2;
  type metadata accessor for NowPlayingMenuController.ViewModel();
  swift_allocObject();
  v20 = sub_9B1E8();
  v2[2] = a1;
  v2[3] = v20;
  v30 = v2;
  sub_14437C();

  sub_1446DC();
  v2[4] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
  sub_1D4A4(&qword_1C21A8, &unk_1C00F0);
  sub_40DC4(&qword_1C21D0, &type metadata accessor for NowPlayingPlayerStyle);
  sub_14286C();

  sub_2B860(0, &qword_1C2160);
  v21 = sub_144D8C();
  v37 = v21;
  v22 = sub_144D3C();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_1D4A4(&qword_1C21D8, &qword_1C21C0);
  sub_4236C(&qword_1C1740, &qword_1C2160);
  sub_14283C();
  sub_15340(v11, &qword_1C16E0);
  (*(v13 + 8))(v15, v12);

  v23 = v30;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21E0);
  v24 = v33;
  sub_1426AC();
  swift_endAccess();
  sub_1D4A4(&unk_1C21E8, &qword_1C21C8);
  v25 = v31;
  sub_1428BC();
  (*(v32 + 8))(v19, v25);
  v26 = v35;
  v27 = v36;
  (*(v35 + 16))(v34, v24, v36);
  swift_beginAccess();
  sub_1426BC();
  swift_endAccess();
  (*(v26 + 8))(v24, v27);
  return v23;
}

uint64_t sub_41704(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C20A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1420BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1450AC() & 1) == 0)
  {
    return 0;
  }

  if (a1)
  {
    v12 = [a1 transcriptIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1448DC();

      sub_144C0C();
      if ((v15 & 1) == 0)
      {
        return v14;
      }
    }
  }

  sub_1D19C(a3, v7, &unk_1C20A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_15340(v7, &unk_1C20A8);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v17 = sub_1420AC();
  sub_14209C();
  sub_14213C();
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t sub_41950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 48) = 0;
  *(a3 + 56) = &_swiftEmptySetSingleton;
  *(a3 + 64) = 0;
  v5 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_currentLink;
  v6 = _s9PresenterC11CurrentLinkVMa(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_selectedContent;
  v8 = sub_1417CC();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_layout;
  v10 = sub_1411CC();
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = (a3 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
  *v11 = 0;
  v11[1] = 0;
  *(a3 + 16) = a1;
  sub_141D4C();

  sub_1446DC();
  *(a3 + 24) = v13;
  *(a3 + 40) = &off_19FA30;
  swift_unknownObjectWeakAssign();
  return a3;
}

void sub_41D2C()
{
  sub_41E28();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_41E28()
{
  if (!qword_1C1DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C0110);
    v0 = sub_1450CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C1DF8);
    }
  }
}

unint64_t sub_41ED4()
{
  result = qword_1C1F90;
  if (!qword_1C1F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1F98);
    sub_21B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1F90);
  }

  return result;
}

unint64_t sub_41F68()
{
  result = qword_1C1FA8;
  if (!qword_1C1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1FA8);
  }

  return result;
}

unint64_t sub_41FC0()
{
  result = qword_1C1FB0;
  if (!qword_1C1FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1FB8);
    sub_42078();
    sub_1D4A4(&qword_1C1FD8, &qword_1C1FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1FB0);
  }

  return result;
}

unint64_t sub_42078()
{
  result = qword_1C1FC0;
  if (!qword_1C1FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1FC8);
    type metadata accessor for NowPlayingBannerView(255);
    sub_40DC4(&qword_1C1FD0, type metadata accessor for NowPlayingBannerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1FC0);
  }

  return result;
}

unint64_t sub_42168()
{
  result = qword_1C1FE8;
  if (!qword_1C1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1FE8);
  }

  return result;
}

uint64_t sub_42234()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_42274()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_422BC()
{
  result = qword_1C2120;
  if (!qword_1C2120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C17C0);
    sub_4236C(&unk_1C2130, &qword_1C8990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2120);
  }

  return result;
}

uint64_t sub_4236C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2B860(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_423B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14146C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_42410()
{
  result = qword_1C22E8;
  if (!qword_1C22E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C22F0);
    sub_40DC4(&qword_1C22F8, &type metadata accessor for PlaybackController.PreferredJumpInterval);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C22E8);
  }

  return result;
}

uint64_t sub_424C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_preferredJumpInterval;
  swift_beginAccess();
  return sub_1D19C(v3 + v4, a2, &qword_1C22F0);
}

unint64_t sub_42538()
{
  result = qword_1C2308;
  if (!qword_1C2308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2310);
    sub_40DC4(&qword_1C2318, type metadata accessor for MPCPlayerItemDurationSnapshot);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2308);
  }

  return result;
}

__n128 sub_425EC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 72);
  *a2 = *(*a1 + 56);
  *(a2 + 16) = v4;
  result = *(v2 + 88);
  *(a2 + 32) = result;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_42614()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_42674@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1414AC();
  *a1 = result;
  return result;
}

unint64_t sub_426D0()
{
  result = qword_1C2370;
  if (!qword_1C2370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C15F8);
    sub_40DC4(&qword_1C2380, &type metadata accessor for NowPlayingArtwork.Data);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2370);
  }

  return result;
}

double sub_42908(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_42928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2488);
  result = v5(a1, a1 + *(v6 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_42984()
{
  v1 = sub_140D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1417CC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_42B28(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_140D5C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_34DB4(a1, a2, v9, v2 + v6, v10);
}

uint64_t sub_42C1C(__int16 a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 0x1FF;
  return v2(&v4);
}

uint64_t sub_42C5C()
{
  v1 = sub_140D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1417CC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_42E28(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_140D5C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = (v1 + v10);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + v11);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1D0A8;

  return sub_35130(a1, v12, v13, v1 + v6, v1 + v9, v15, v16, v17);
}

uint64_t sub_42FDC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B4AC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_43020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPodcastItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4308C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_43104(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingPodcastItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43160()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2AD3C(*(v0 + 24), *(v0 + 32), v1 & 1);
  }

  swift_unknownObjectRelease();

  v2 = *(v0 + 104);
  if (v2 != 255)
  {
    sub_2AD3C(*(v0 + 88), *(v0 + 96), v2 & 1);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_431F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 96);
  v8 = *(v2 + 104);
  v9 = *(v2 + 112);
  v10 = *(v2 + 120);
  v13 = *(v2 + 16);
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v11 = *(v2 + 80);
  v18 = *(v2 + 64);
  v19 = v11;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = *(v2 + 128);
  return sub_3E17C(a1, &v13, a2);
}

unint64_t sub_4326C()
{
  result = qword_1C2560;
  if (!qword_1C2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2560);
  }

  return result;
}

uint64_t sub_432C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_43394()
{
  result = qword_1C2638;
  if (!qword_1C2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2640);
    sub_40DC4(&qword_1C2648, type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView);
    sub_43450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2638);
  }

  return result;
}

unint64_t sub_43450()
{
  result = qword_1C2650;
  if (!qword_1C2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2650);
  }

  return result;
}

uint64_t keypath_get_122Tm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
}

unint64_t sub_4352C()
{
  result = qword_1C2660;
  if (!qword_1C2660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2658);
    sub_435E4();
    sub_1D4A4(&qword_1C2670, &qword_1C2678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2660);
  }

  return result;
}

unint64_t sub_435E4()
{
  result = qword_1C29F0;
  if (!qword_1C29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C29F0);
  }

  return result;
}

uint64_t sub_4363C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

__n128 sub_436D4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_43710()
{
  result = qword_1C2710;
  if (!qword_1C2710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2718);
    sub_437C8();
    sub_1D4A4(&qword_1C2740, &qword_1C2748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2710);
  }

  return result;
}

unint64_t sub_437C8()
{
  result = qword_1C2720;
  if (!qword_1C2720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2728);
    sub_1D4A4(&qword_1C2700, &qword_1C2708);
    sub_1D4A4(&unk_1C2730, &qword_1C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2720);
  }

  return result;
}

unint64_t sub_438DC()
{
  result = qword_1C2750;
  if (!qword_1C2750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2758);
    sub_40DC4(&qword_1C2648, type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2750);
  }

  return result;
}

double sub_43998@<D0>(uint64_t a1@<X8>)
{
  sub_A0CAC(&v7);
  v2 = v8;
  v3 = v9;
  v4 = v10;
  v5 = v11;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

uint64_t sub_43A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1D19C(a3, v22 - v9, &qword_1C2490);
  v11 = sub_144ADC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_15340(v10, &qword_1C2490);
  }

  else
  {
    sub_144ACC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_144A8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_14491C() + 32;

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

      sub_15340(a3, &qword_1C2490);

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

  sub_15340(a3, &qword_1C2490);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_43CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1D19C(a3, v22 - v9, &qword_1C2490);
  v11 = sub_144ADC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_15340(v10, &qword_1C2490);
  }

  else
  {
    sub_144ACC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_144A8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_14491C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AC8);
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

      sub_15340(a3, &qword_1C2490);

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

  sub_15340(a3, &qword_1C2490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AC8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_43FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_1D19C(a3, v24 - v11, &qword_1C2490);
  v13 = sub_144ADC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_15340(v12, &qword_1C2490);
  }

  else
  {
    sub_144ACC();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_144A8C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_14491C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_15340(a3, &qword_1C2490);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_15340(a3, &qword_1C2490);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_44290()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();
}

void (*sub_4430C(_BYTE *a1))(_BYTE *, void)
{
  v2 = sub_141C9C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = *(v3 + 16);
  v9(&v12[-v7], a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9(v6, v8, v2);

  sub_1426EC();
  (*(v3 + 8))(v8, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_1426CC();
  if (*v11 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v11;
    result(v12, 0);
  }

  return result;
}

uint64_t sub_444F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v90 = sub_14354C();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_14301C();
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_142BDC();
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C29F8);
  __chkstk_darwin(v70);
  v68 = &v63 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A00);
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v63 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A08);
  __chkstk_darwin(v77);
  v72 = &v63 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A10);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v63 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A18);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = &v63 - v10;
  v104 = *(v1 + 1);
  v67 = *(&v104 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v11 = v107;
  v64 = v107;
  v12 = sub_46558();
  v13 = *(v1 + 32);
  v63 = v13;
  v14 = *(v1 + 33);
  KeyPath = swift_getKeyPath();
  v16 = v2[1];
  v65 = *v2;
  v66 = v16;
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 16);
  v98 = v2;
  v92 = KeyPath;
  v93 = 0;
  v94 = v11;
  v19 = v12 & 1;
  v95 = v12 & 1;
  v96 = v13;
  v97 = v14;

  sub_1D19C(&v104, &v107, &qword_1C2A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A30);
  sub_47648();
  sub_1D4A4(&qword_1C2A50, &qword_1C2A30);
  v20 = v68;
  sub_14373C();
  v21 = sub_143EAC();
  v23 = v22;
  LOBYTE(v99) = 0;
  *&v105 = KeyPath;
  BYTE8(v105) = 0;
  v24 = v64;
  BYTE9(v105) = v64;
  BYTE10(v105) = v19;
  v25 = v63;
  BYTE11(v105) = v63;
  BYTE12(v105) = v14;
  *&v106 = v21;
  *(&v106 + 1) = v22;
  v26 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A58) + 36)];
  v27 = v20;
  v28 = v106;
  *v26 = v105;
  *(v26 + 1) = v28;
  v69 = KeyPath;
  v107 = KeyPath;
  v108 = 0;
  v109 = v24;
  v110 = v19;
  v111 = v25;
  v112 = v14;
  v113 = v21;
  v114 = v23;

  sub_1D19C(&v105, &v100, &qword_1C2A60);
  sub_15340(&v107, &qword_1C2A60);
  v29 = swift_allocObject();
  v30 = *(v2 + 1);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v30;
  *(v29 + 48) = *(v2 + 16);
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2A68) + 36)];
  *v31 = sub_4777C;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D19C(&v104, &v100, &qword_1C2A20);
  sub_1426DC();

  LOBYTE(KeyPath) = v100;
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = (KeyPath & 1) == 0;
  v34 = v70;
  v35 = (v27 + *(v70 + 36));
  *v35 = v32;
  v35[1] = sub_47968;
  v35[2] = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v99 = v100;
  v36 = swift_allocObject();
  v37 = *(v2 + 1);
  *(v36 + 16) = *v2;
  *(v36 + 32) = v37;
  *(v36 + 48) = *(v2 + 16);

  sub_1D19C(&v104, &v100, &qword_1C2A20);
  v38 = sub_479D8();
  v39 = v71;
  sub_143B6C();

  sub_15340(v27, &qword_1C29F8);
  v40 = v74;
  sub_142BCC();
  v100 = v34;
  v101 = &type metadata for UInt;
  v102 = v38;
  v103 = &protocol witness table for UInt;
  swift_getOpaqueTypeConformance2();
  sub_48368(&qword_1C2AA0, &type metadata accessor for ButtonMenuStyle);
  v41 = v72;
  v42 = v76;
  v43 = v81;
  sub_143B7C();
  (*(v82 + 8))(v40, v43);
  (*(v78 + 8))(v39, v42);
  v44 = swift_getKeyPath();
  v45 = v77;
  v46 = v41 + *(v77 + 36);
  *v46 = v44;
  *(v46 + 8) = 2;
  v47 = v83;
  sub_14300C();
  v48 = sub_47C54();
  v49 = v73;
  v50 = v45;
  v51 = v86;
  sub_1438DC();
  (*(v87 + 8))(v47, v51);
  sub_15340(v41, &qword_1C2A08);
  v52 = v88;
  sub_14353C();
  v100 = v50;
  v101 = v51;
  v102 = v48;
  v103 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v75;
  v55 = v79;
  sub_143A7C();
  (*(v89 + 8))(v52, v90);
  v56 = v55;
  (*(v80 + 8))(v49, v55);
  sub_1430EC();
  v57 = sub_1437DC();
  v59 = v58;
  LOBYTE(v55) = v60;
  v100 = v56;
  v101 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v61 = v84;
  sub_1439EC();
  sub_1B4AC(v57, v59, v55 & 1);

  return (*(v85 + 8))(v54, v61);
}

uint64_t sub_451B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AD0);
  v4 = __chkstk_darwin(v3 - 8);
  v15[0] = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v17 = *(a1 + 16);
  sub_144ABC();

  sub_1D19C(&v17, v16, &qword_1C2A20);
  v8 = sub_144AAC();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v10 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a1 + 32);

  sub_1D19C(&v17, v16, &qword_1C2A20);
  v11 = sub_144AAC();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a1 + 32);
  sub_141C9C();
  sub_143DCC();
  v15[4] = a1;
  sub_1D19C(v7, v15[0], &qword_1C2AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AD8);
  sub_48368(&qword_1C2AE0, &type metadata accessor for PlaybackController.SleepTimerStopMode);
  sub_48034();
  sub_143D3C();
  return sub_15340(v7, &qword_1C2AD0);
}

uint64_t sub_45470()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C27F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2AF0);
  sub_1D4A4(&qword_1C2AF8, &qword_1C27F0);
  sub_48368(&qword_1C2AE0, &type metadata accessor for PlaybackController.SleepTimerStopMode);
  sub_141C9C();
  swift_getOpaqueTypeConformance2();
  return sub_143DFC();
}

uint64_t sub_45620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_141C6C();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B00) + 36);
  v8 = sub_141C9C();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0120);
  *(v7 + *(result + 36)) = 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_456EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_141C9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v13 = sub_144ADC();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v12;
  (*(v6 + 32))(&v15[v14], v9, v5);

  sub_43CFC(0, 0, v4, &unk_14CF30, v15);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_45994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v60 = a1;
  v61 = a3;
  v51 = sub_142FFC();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60);
  __chkstk_darwin(v4 - 8);
  v56 = &v49 - v5;
  v55 = sub_14372C();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14309C();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B70);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B78);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B80);
  __chkstk_darwin(v58);
  v59 = &v49 - v22;
  sub_143C7C();
  sub_14308C();
  sub_1D4A4(&qword_1C1C38, &qword_1C1C30);
  sub_48368(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  sub_14389C();
  v23 = v7;
  v24 = v57;
  (*(v52 + 8))(v9, v23);
  (*(v11 + 8))(v13, v10);
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B98) + 36)];
  *v25 = BYTE4(v24) & 1;
  v25[1] = BYTE2(v24) & 1;
  v26 = v54;
  v27 = v53;
  v28 = v55;
  (*(v54 + 104))(v53, enum case for Font.TextStyle.subheadline(_:), v55);
  v29 = sub_1436BC();
  v30 = v56;
  (*(*(v29 - 8) + 56))(v56, 1, 1, v29);
  sub_1436CC();
  v31 = v30;
  v32 = sub_1436FC();
  sub_15340(v31, &unk_1C2B60);
  (*(v26 + 8))(v27, v28);
  KeyPath = swift_getKeyPath();
  v34 = &v17[*(v15 + 44)];
  *v34 = KeyPath;
  v34[1] = v32;
  if ((v24 & 0x100) != 0)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.17;
  }

  sub_10358(v17, v21, &qword_1C2B70);
  *&v21[*(v19 + 44)] = v35;
  if (v24)
  {
    v36 = v24 & 0x1000000;
    if (v60)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v37 = v60;

    sub_144C4C();
    v38 = sub_1435DC();
    sub_1423BC();

    v39 = v49;
    sub_142FEC();
    swift_getAtKeyPath();
    sub_1C804(v37, 0);
    (*(v50 + 8))(v39, v51);
    v36 = v24 & 0x1000000;
    if (v62)
    {
LABEL_10:
      sub_143EAC();
      goto LABEL_11;
    }
  }

  if (v36)
  {
    goto LABEL_10;
  }

  sub_143ECC();
LABEL_11:
  sub_142D4C();
  v40 = v59;
  sub_10358(v21, v59, &qword_1C2B78);
  v41 = (v40 + *(v58 + 36));
  v42 = v67;
  v41[4] = v66;
  v41[5] = v42;
  v41[6] = v68;
  v43 = v63;
  *v41 = v62;
  v41[1] = v43;
  v44 = v65;
  v41[2] = v64;
  v41[3] = v44;
  v45 = v40;
  v46 = v61;
  sub_10358(v45, v61, &unk_1C2B80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2BA0);
  v48 = v46 + *(result + 36);
  *v48 = 0xC024000000000000;
  *(v48 + 8) = 0;
  return result;
}

uint64_t sub_46174@<X0>(uint64_t a1@<X8>)
{
  sub_1430EC();
  result = sub_1437DC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_461F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_143C2C();
  *a1 = result;
  return result;
}

uint64_t sub_46240()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();
}

uint64_t sub_462B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_4632C@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000;
  if (!*(v1 + 12))
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!*(v1 + 11))
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!*(v1 + 10))
  {
    v4 = 0;
  }

  v5 = 256;
  if (!*(v1 + 9))
  {
    v5 = 0;
  }

  return sub_45994(*v1, v4 | v5 | v3 | v2 | *(v1 + 8), a1);
}

uint64_t sub_46398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_14138C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_4640C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 33) = v6;
}

uint64_t sub_46470()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_464E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_46558()
{
  v0 = sub_141C9C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v11[15] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1426DC();

    (*(v1 + 104))(v4, enum case for PlaybackController.SleepTimerStopMode.off(_:), v0);
    sub_48368(&qword_1C2B10, &type metadata accessor for PlaybackController.SleepTimerStopMode);
    v7 = sub_14486C();
    v8 = *(v1 + 8);
    v8(v4, v0);
    v8(v6, v0);
    v9 = v7 ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_46774(char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v20 = a2;
  v5 = sub_141C9C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B20);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  v16 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingSleepTimer9ViewModel__sleepTimerModeSeed;
  v23 = 0;
  sub_14269C();
  (*(v13 + 32))(v3 + v16, v15, v12);
  v17 = *(v6 + 16);
  v17(v11, a1, v5);
  swift_beginAccess();
  v17(v9, v11, v5);
  sub_14269C();
  v18 = *(v6 + 8);
  v18(v11, v5);
  swift_endAccess();
  swift_beginAccess();
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C27F0);
  sub_14269C();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v22) = v21;
  sub_14269C();
  swift_endAccess();
  v18(a1, v5);
  return v3;
}

uint64_t sub_46A44()
{
  v1 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingSleepTimer9ViewModel__sleepTimerMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B18);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingSleepTimer9ViewModel__sleepTimerModeSeed;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingSleepTimer9ViewModel__availableSleepTimerOptions;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingSleepTimer9ViewModel__isEnabled;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

void sub_46BF8()
{
  sub_46D58();
  if (v0 <= 0x3F)
  {
    sub_46E14(319, &qword_1C27E0);
    if (v1 <= 0x3F)
    {
      sub_46DB0();
      if (v2 <= 0x3F)
      {
        sub_46E14(319, &qword_1C27F8);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_46D58()
{
  if (!qword_1C27D8)
  {
    sub_141C9C();
    v0 = sub_1426FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C27D8);
    }
  }
}

void sub_46DB0()
{
  if (!qword_1C27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C27F0);
    v0 = sub_1426FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C27E8);
    }
  }
}

void sub_46E14(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1426FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_46E74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_14138C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_46F34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_14138C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_46FF8()
{
  result = sub_14138C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_47090(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_470D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4714C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  result = sub_1425BC();
  *a1 = result;
  return result;
}

uint64_t sub_4718C()
{
  v0 = sub_14138C();
  __swift_allocate_value_buffer(v0, qword_1D17A0);
  __swift_project_value_buffer(v0, qword_1D17A0);
  return sub_14139C();
}

uint64_t sub_471F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();
}

uint64_t sub_47270(uint64_t a1)
{
  v2 = sub_141C9C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9(v6, v8, v2);

  sub_1426EC();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_473E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  return result;
}

uint64_t sub_47460()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_474DC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  return result;
}

uint64_t sub_47560()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_4760C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  v5 = *(v1 + 26);
  v6 = *(v1 + 27);
  v7 = *(v1 + 28);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  *(a1 + 11) = v6;
  *(a1 + 12) = v7;
  return sub_47FB4(v2, v3);
}

unint64_t sub_47648()
{
  result = qword_1C2A38;
  if (!qword_1C2A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A28);
    sub_476D4();
    sub_47728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2A38);
  }

  return result;
}

unint64_t sub_476D4()
{
  result = qword_1C2A40;
  if (!qword_1C2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2A40);
  }

  return result;
}

unint64_t sub_47728()
{
  result = qword_1C2A48;
  if (!qword_1C2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2A48);
  }

  return result;
}

uint64_t sub_477A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  return result;
}

uint64_t sub_47820()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_47894@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142FAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_478C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142FAC();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroyTm_1()
{

  return _swift_deallocObject(v0, 50, 7);
}

unint64_t sub_479D8()
{
  result = qword_1C2A70;
  if (!qword_1C2A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C29F8);
    sub_47A90();
    sub_1D4A4(&qword_1C2740, &qword_1C2748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2A70);
  }

  return result;
}

unint64_t sub_47A90()
{
  result = qword_1C2A78;
  if (!qword_1C2A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A68);
    sub_47B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2A78);
  }

  return result;
}

unint64_t sub_47B1C()
{
  result = qword_1C2A80;
  if (!qword_1C2A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A58);
    sub_1D4A4(&qword_1C2A88, &qword_1C2A90);
    sub_1D4A4(&qword_1C2A98, &qword_1C2A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2A80);
  }

  return result;
}

uint64_t sub_47C00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F3C();
  *a1 = result;
  return result;
}

unint64_t sub_47C54()
{
  result = qword_1C2AA8;
  if (!qword_1C2AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A00);
    sub_142BDC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C29F8);
    sub_479D8();
    swift_getOpaqueTypeConformance2();
    sub_48368(&qword_1C2AA0, &type metadata accessor for ButtonMenuStyle);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C2AB0, &unk_1C2AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2AA8);
  }

  return result;
}

uint64_t sub_47DF0()
{
  v1 = sub_141C9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_47EBC(uint64_t a1)
{
  v4 = *(sub_141C9C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_1135B4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_47FB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 66, 7);
}

unint64_t sub_48034()
{
  result = qword_1C2AE8;
  if (!qword_1C2AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2AD8);
    sub_141C9C();
    sub_48368(&qword_1C2AE0, &type metadata accessor for PlaybackController.SleepTimerStopMode);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2AE8);
  }

  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_48154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_4819C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_481F8()
{
  result = qword_1C2B40;
  if (!qword_1C2B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2A08);
    sub_14301C();
    sub_47C54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_48368(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2B40);
  }

  return result;
}

uint64_t sub_48368(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_483BC()
{
  result = qword_1C2BA8;
  if (!qword_1C2BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2BA0);
    sub_48474();
    sub_1D4A4(&qword_1C2BE8, &unk_1C2BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2BA8);
  }

  return result;
}

unint64_t sub_48474()
{
  result = qword_1C2BB0;
  if (!qword_1C2BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C2B80);
    sub_48500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2BB0);
  }

  return result;
}

unint64_t sub_48500()
{
  result = qword_1C2BB8;
  if (!qword_1C2BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2B78);
    sub_4858C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2BB8);
  }

  return result;
}

unint64_t sub_4858C()
{
  result = qword_1C2BC0;
  if (!qword_1C2BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2B70);
    sub_48644();
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2BC0);
  }

  return result;
}

unint64_t sub_48644()
{
  result = qword_1C2BC8;
  if (!qword_1C2BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1C30);
    sub_14309C();
    sub_1D4A4(&qword_1C1C38, &qword_1C1C30);
    sub_48368(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_48790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2BC8);
  }

  return result;
}

unint64_t sub_48790()
{
  result = qword_1C2BD0;
  if (!qword_1C2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2BD0);
  }

  return result;
}

id sub_48850()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v3 = sub_14489C();

    [v2 removeObserver:v0 forKeyPath:v3 context:0];

    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for KeyValueObserver();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_48974(uint64_t a1)
{
  sub_15468(a1 + qword_1C2C00);
}

void sub_489D8(uint64_t a1, NSString a2, uint64_t a3, Class isa, uint64_t a5)
{
  sub_48E94(a3, v19);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      (*&v5[qword_1C2C10])(v17[1], isa);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_48DD4(v19);
  }

  if (a2)
  {
    a2 = sub_14489C();
  }

  sub_48E94(a3, v19);
  v10 = v20;
  if (!v20)
  {
    v15 = 0;
    if (!isa)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v12 = *(v10 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14);
  v15 = sub_1453AC();
  (*(v12 + 8))(v14, v10);
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (isa)
  {
LABEL_9:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_48E3C();
    isa = sub_1447EC().super.isa;
  }

LABEL_10:
  v16 = type metadata accessor for KeyValueObserver();
  v18.receiver = v5;
  v18.super_class = v16;
  objc_msgSendSuper2(&v18, "observeValueForKeyPath:ofObject:change:context:", a2, v15, isa, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_48C50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    v10 = sub_1448DC();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v19, 0, sizeof(v19));
    v16 = a5;
    v17 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = a1;
  sub_14514C();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_48E3C();
  v15 = sub_14480C();

LABEL_8:
  sub_489D8(v10, v12, v19, v15, a6);

  return sub_48DD4(v19);
}

uint64_t sub_48DD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_48E3C()
{
  result = qword_1C0318;
  if (!qword_1C0318)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0318);
  }

  return result;
}

uint64_t sub_48E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_4901C(uint64_t a1, uint64_t a2)
{
  sub_48E94(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1453AC();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for PanGestureRecognizer();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  sub_48DD4(a1);
  return v12;
}

id sub_491F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PanGestureRecognizer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_4927C()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  v1 = sub_14489C();
  [v0 _setLayoutDebuggingIdentifier:v1];

  sub_2B860(0, &qword_1C2F20);
  v5._object = 0x8000000000162300;
  v5._countAndFlagsBits = 0xD000000000000018;
  isa = sub_144FDC(v5).super.isa;
  [v0 setImage:isa];

  sub_14114C();
  v3 = sub_14113C();
  [v0 setTintColor:v3];

  return v0;
}

void *sub_49384(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide;
  *&v2[v4] = [objc_allocWithZone(UILayoutGuide) init];
  v5 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = sub_14489C();
  [v6 _setLayoutDebuggingIdentifier:v7];

  v8 = sub_14101C();
  [v6 setBackgroundColor:v8];

  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferUnselectedColor] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferSelectedColor] = 0;
  v9 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = sub_14489C();
  [v10 _setLayoutDebuggingIdentifier:v11];

  *&v2[v9] = v10;
  v12 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack;
  v13 = [objc_allocWithZone(UIView) init];
  v14 = sub_14489C();
  [v13 _setLayoutDebuggingIdentifier:v14];

  v15 = [v13 layer];
  [v15 setMaskedCorners:10];

  v16 = sub_14103C();
  [v13 setBackgroundColor:v16];

  *&v2[v12] = v13;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobAlpha] = 0x3FF0000000000000;
  v17 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView;
  *&v2[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeActivityIndicator;
  v20 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:8];
  [v20 setHidesWhenStopped:1];
  v21 = [objc_opt_self() secondaryLabelColor];
  [v20 setColor:v21];

  *&v2[v19] = v20;
  v22 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel;
  v23 = [objc_allocWithZone(UILabel) init];
  v24 = sub_14489C();
  [v23 _setLayoutDebuggingIdentifier:v24];

  *&v2[v22] = v23;
  v25 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel;
  v26 = [objc_allocWithZone(UILabel) init];
  v27 = sub_14489C();
  [v26 _setLayoutDebuggingIdentifier:v27];

  *&v2[v25] = v26;
  v28 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel;
  v29 = [objc_allocWithZone(UILabel) init];
  v30 = sub_14489C();
  [v29 _setLayoutDebuggingIdentifier:v30];

  sub_14114C();
  v31 = sub_14113C();
  [v29 setTextColor:v31];

  *&v2[v28] = v29;
  v32 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveBackground;
  *&v2[v32] = sub_4927C();
  v33 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferingIndicator;
  type metadata accessor for PlayerIndeterminateActivityIndicator();
  *&v2[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_defaultConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackingConstraints] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_labelAlpha] = 0x3FF0000000000000;
  v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_selectedElapsedTime] = 0;
  v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_detailedScrubbingEnabled] = 1;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController] = 0;
  v34 = &v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_detailScrubSpeed];
  *v35 = 0;
  v35[8] = 1;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_nextItemObserver] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_backgroundObserver] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_foregroundObserver] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_loadedDurationObserver] = 0;
  v36 = &v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 2) = 0u;
  *(v36 + 6) = 2;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink] = 0;
  v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded] = 0;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_lastTargetTimestamp] = 0;
  v37 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeFormatter;
  v38 = [objc_allocWithZone(AVTimeFormatter) init];
  [v38 setStyle:1];
  *&v2[v37] = v38;
  v39 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeFormatter;
  v40 = [objc_allocWithZone(AVTimeFormatter) init];
  [v40 setStyle:2];
  *&v2[v39] = v40;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_percentLoaded] = 0;
  v190 = a1;
  sub_1DB40(a1, &v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics]);
  v191.receiver = v2;
  v191.super_class = type metadata accessor for PlayerTimeControl();
  v41 = objc_msgSendSuper2(&v191, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v41 setSemanticContentAttribute:1];
  sub_2B860(0, &unk_1C2F10);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v42 = sub_144BEC();
  v43 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink;
  v44 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink);
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink) = v42;
  v45 = v42;

  v46 = [objc_opt_self() mainRunLoop];
  [v45 addToRunLoop:v46 forMode:NSRunLoopCommonModes];

  result = *(v41 + v43);
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  [result setPaused:1];
  result = *(v41 + v43);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  [result setPreferredFramesPerSecond:30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14D1B0;
  v49 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack);
  *(inited + 32) = v49;
  v50 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack);
  *(inited + 40) = v50;
  v51 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack);
  *(inited + 48) = v51;
  v184 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel;
  v52 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel);
  *(inited + 56) = v52;
  v53 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeActivityIndicator);
  *(inited + 64) = v53;
  v54 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveBackground);
  *(inited + 72) = v54;
  v185 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel;
  v55 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel);
  *(inited + 80) = v55;
  v189 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel;
  v56 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel);
  *(inited + 88) = v56;
  v188 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView;
  v182 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView);
  *(inited + 96) = v182;
  v186 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView;
  v181 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView);
  *(inited + 104) = v181;
  v183 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferingIndicator);
  *(inited + 112) = v183;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v65 = v182;
  v66 = v181;
  v67 = v183;
  for (i = 4; i != 15; ++i)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v69 = sub_1451FC();
    }

    else
    {
      v69 = *(inited + 8 * i);
    }

    v70 = v69;
    [v69 setTranslatesAutoresizingMaskIntoConstraints:{0, v181}];
    [v70 setUserInteractionEnabled:0];
    [v41 addSubview:v70];
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v71 = *(v41 + v184);
  v72 = v190[3];
  v73 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v72);
  v74 = *(v73 + 16);
  v75 = v71;
  v76 = v74(v72, v73);
  v77 = v190[3];
  v78 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v77);
  v79 = (*(v78 + 40))(v77, v78);
  v187 = objc_opt_self();
  v80 = [v187 sharedApplication];
  v81 = [v80 preferredContentSizeCategory];

  LODWORD(v80) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v80)
  {
    v76 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, v76);
  }

  v82 = objc_opt_self();
  v83 = [v82 monospacedDigitSystemFontOfSize:v76 weight:v79];
  [v75 setFont:v83];

  v84 = *(v41 + v189);
  v86 = v190[3];
  v85 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v86);
  v87 = *(v85 + 16);
  v88 = v84;
  v89 = v87(v86, v85);
  v90 = v190[3];
  v91 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v90);
  v92 = (*(v91 + 40))(v90, v91);
  v93 = [v187 sharedApplication];
  v94 = [v93 preferredContentSizeCategory];

  LODWORD(v93) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v93)
  {
    v95 = UIContentSizeCategoryAccessibilityLarge;
    v96 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, v89);
  }

  else
  {
    v96 = v89;
    v95 = UIContentSizeCategoryAccessibilityLarge;
  }

  v97 = [v82 monospacedDigitSystemFontOfSize:v96 weight:v92];
  [v88 setFont:v97];

  v98 = *(v41 + v185);
  v99 = v190[3];
  v100 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v99);
  v101 = *(v100 + 16);
  v102 = v98;
  v103 = v101(v99, v100);
  v104 = [v187 sharedApplication];
  v105 = [v104 preferredContentSizeCategory];

  LODWORD(v104) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v104)
  {
    v106 = sub_13EA2C(v95, UIFontTextStyleBody, v103);
  }

  else
  {
    v106 = v103;
  }

  v107 = [v82 systemFontOfSize:v106 weight:UIFontWeightHeavy];
  [v102 setFont:v107];

  v108 = sub_14102C();
  v109 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferUnselectedColor);
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferUnselectedColor) = v108;

  v110 = sub_14113C();
  v111 = [v110 colorWithAlphaComponent:0.3];

  v112 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferSelectedColor);
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferSelectedColor) = v111;

  [v41 addLayoutGuide:*(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide)];
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_14D1C0;
  v114 = [*(v41 + v186) widthAnchor];
  v115 = v190;
  v116 = v190[3];
  v117 = v190[4];
  __swift_project_boxed_opaque_existential_1(v190, v116);
  (*(v117 + 56))(v116, v117);
  v118 = [v114 constraintEqualToConstant:?];

  *(v113 + 32) = v118;
  v119 = [*(v41 + v186) heightAnchor];
  v120 = v190[3];
  v121 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v121 + 56))(v120, v121);
  v123 = [v119 constraintEqualToConstant:v122];

  *(v113 + 40) = v123;
  v124 = [*(v41 + v188) widthAnchor];
  v125 = v190[3];
  v126 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v126 + 64))(v125, v126);
  v127 = [v124 constraintEqualToConstant:?];

  *(v113 + 48) = v127;
  v128 = [*(v41 + v188) heightAnchor];
  v129 = v190[3];
  v130 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v130 + 64))(v129, v130);
  v132 = [v128 constraintEqualToConstant:v131];

  *(v113 + 56) = v132;
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_defaultConstraints) = v113;

  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_14D1C0;
  v134 = [*(v41 + v186) widthAnchor];
  v135 = v190[3];
  v136 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v136 + 72))(v135, v136);
  v137 = [v134 constraintEqualToConstant:?];

  *(v133 + 32) = v137;
  v138 = [*(v41 + v186) heightAnchor];
  v139 = v190[3];
  v140 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v140 + 72))(v139, v140);
  v142 = [v138 constraintEqualToConstant:v141];

  *(v133 + 40) = v142;
  v143 = [*(v41 + v188) widthAnchor];
  v144 = v190[3];
  v145 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v145 + 80))(v144, v145);
  v146 = [v143 constraintEqualToConstant:?];

  *(v133 + 48) = v146;
  v147 = [*(v41 + v188) heightAnchor];
  v148 = v190[3];
  v149 = v190[4];
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  (*(v149 + 80))(v148, v149);
  v151 = [v147 constraintEqualToConstant:v150];

  *(v133 + 56) = v151;
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackingConstraints) = v133;

  (*&stru_248.segname[(swift_isaMask & *v41) + 16])(v152);

  v153 = sub_14101C();
  [v41 setTintColor:v153];

  v154 = *(v41 + v188);
  v155 = sub_14110C();
  [v154 setBackgroundColor:v155];

  v156 = *(v41 + v189);
  v157 = [v41 tintColor];

  [v156 setTextColor:v157];
  v158 = [objc_allocWithZone(MTDetailScrubController) initWithScrubbingControl:v41];

  v159 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController;
  v160 = *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController);
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController) = v158;

  v161 = *(v41 + v159);
  if (v161)
  {
    [v161 setDelegate:v41];
  }

  v162 = MTApplicationDidEnterBackgroundNotification;
  v163 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  type metadata accessor for NotificationObserver();
  v164 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v164 + 16) = v162;
  swift_unknownObjectWeakAssign();
  *(v164 + 32) = 1;
  *(v164 + 40) = sub_4FDC0;
  *(v164 + 48) = v163;
  v165 = objc_opt_self();
  swift_retain_n();
  v166 = v162;
  v167 = [v165 defaultCenter];
  v168 = *(v164 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v170 = v168;
  [v167 addObserver:v164 selector:"handleNotification:" name:v170 object:Strong];

  swift_unknownObjectRelease();
  *(v41 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_backgroundObserver) = v164;

  v171 = MTApplicationWillEnterForegroundNotification;
  v172 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v173 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v173 + 16) = v171;
  swift_unknownObjectWeakAssign();
  *(v173 + 32) = 1;
  *(v173 + 40) = sub_4FDC8;
  *(v173 + 48) = v172;
  v174 = v41;
  swift_retain_n();
  v175 = v171;
  v176 = [v165 defaultCenter];
  v177 = *(v173 + 16);
  v178 = swift_unknownObjectWeakLoadStrong();

  v179 = v177;
  [v176 addObserver:v173 selector:"handleNotification:" name:v179 object:v178];

  swift_unknownObjectRelease();
  *(v174 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_foregroundObserver) = v173;

  v180 = [objc_allocWithZone(type metadata accessor for PanGestureRecognizer()) initWithTarget:v174 action:"panGestureRecognized:"];

  [v174 addGestureRecognizer:v180];
  __swift_destroy_boxed_opaque_existential_0(v190);
  return v174;
}

void sub_4A894()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  Strong[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded] = 1;

  v1 = swift_unknownObjectUnownedLoadStrong();
  v2 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];

  [v2 setPaused:1];
}

void sub_4A924()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  Strong[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded] = 0;

  v1 = swift_unknownObjectUnownedLoadStrong();
  v2 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];
  v10 = v2;

  if (v2)
  {
    v3 = swift_unknownObjectUnownedLoadStrong();
    v4 = [v3 window];
    if (v4 && (v4, v5 = v3[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48], v5 != 2))
    {
      v7 = *&v3[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 40];
      v8 = v3[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded];

      v9 = (v7 & 0x7FFFFFFF) == 0;
      if (v5)
      {
        v9 = v8 ^ 1;
      }

      if (v8)
      {
        v6 = v8 ^ 1u;
      }

      else
      {
        v6 = v9;
      }
    }

    else
    {

      v6 = 0;
    }

    [v10 setPaused:v6];
  }
}

id sub_4AA6C()
{
  result = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for PlayerTimeControl();
    return objc_msgSendSuper2(&v2, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4AD28()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
  v3 = sub_14489C();
  [v2 _setLayoutDebuggingIdentifier:v3];

  v4 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView];
  v5 = sub_14489C();
  [v4 _setLayoutDebuggingIdentifier:v5];

  v6 = [v2 centerXAnchor];
  v7 = [v1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  v9 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint];
  v147 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint] = v8;
  v10 = v8;

  if (!v10)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v144 = v4;
  LODWORD(v11) = 1132068864;
  [v10 setPriority:v11];

  v148 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack];
  v12 = [v148 leadingAnchor];
  v13 = [v2 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-1.0];

  v15 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint];
  v146 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint] = v14;

  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 preferredContentSizeCategory];

  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v145 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];
  v19 = [v145 bottomAnchor];
  v20 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics;
  sub_1DB40(&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], v149);
  v21 = v150;
  v22 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  LOBYTE(v16) = (*(v22 + 88))(v21, v22);
  __swift_destroy_boxed_opaque_existential_0(v149);
  v23 = &selRef_topAnchor;
  if (v16)
  {
    v23 = &selRef_bottomAnchor;
  }

  v24 = [v1 *v23];
  v25 = 5.0;
  if ((IsAccessibilityContentSizeCategory & 1) == 0)
  {
    sub_1DB40(&v1[v20], v149);
    v26 = v150;
    v27 = v151;
    __swift_project_boxed_opaque_existential_1(v149, v150);
    v28 = (*(v27 + 48))(v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v149);
    v25 = v28;
  }

  v142 = v20;
  v29 = [v19 constraintEqualToAnchor:v24 constant:v25];

  v30 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint];
  v143 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint] = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_14D1D0;
  v32 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel];
  v33 = [v32 centerYAnchor];
  v34 = [v1 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v31 + 32) = v35;
  v36 = [v32 centerXAnchor];
  v37 = [v1 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v31 + 40) = v38;
  v39 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveBackground];
  v40 = [v39 centerXAnchor];
  v41 = [v32 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v31 + 48) = v42;
  v43 = [v39 centerYAnchor];
  v44 = [v32 centerYAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v31 + 56) = v45;
  v46 = [v39 widthAnchor];
  v47 = [v32 widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:32.0];

  *(v31 + 64) = v48;
  v49 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack];
  v50 = [v49 leadingAnchor];
  v51 = [v1 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v31 + 72) = v52;
  v53 = [v49 trailingAnchor];
  v54 = [v2 centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v31 + 80) = v55;
  v56 = [v49 centerYAnchor];
  v57 = [v1 centerYAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v31 + 88) = v58;
  v59 = [v49 heightAnchor];
  v60 = [v59 constraintEqualToConstant:3.0];

  *(v31 + 96) = v60;
  v61 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack];
  v62 = [v61 leadingAnchor];
  v63 = [v49 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v31 + 104) = v64;
  v65 = [v61 centerYAnchor];
  v66 = [v1 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v31 + 112) = v67;
  v68 = [v61 heightAnchor];
  v69 = [v68 constraintEqualToConstant:3.0];

  *(v31 + 120) = v69;
  v70 = [v148 trailingAnchor];
  v71 = [v1 trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v31 + 128) = v72;
  v73 = [v148 centerYAnchor];
  v74 = [v1 centerYAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v31 + 136) = v75;
  v76 = [v148 heightAnchor];
  v77 = [v76 constraintEqualToConstant:3.0];

  *(v31 + 144) = v77;
  v78 = *&v1[v146];
  if (!v78)
  {
    goto LABEL_11;
  }

  *(v31 + 152) = v78;
  v79 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide];
  v80 = v78;
  v81 = [v79 leadingAnchor];
  v82 = [v49 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v31 + 160) = v83;
  v84 = [v79 trailingAnchor];
  v85 = [v148 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v31 + 168) = v86;
  v87 = [v79 topAnchor];
  v88 = [v49 topAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v31 + 176) = v89;
  v90 = [v79 bottomAnchor];
  v91 = [v49 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v31 + 184) = v92;
  v93 = *&v1[v147];
  if (!v93)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v31 + 192) = v93;
  v94 = v93;
  v95 = [v2 centerYAnchor];
  v96 = [v1 centerYAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];

  *(v31 + 200) = v97;
  v98 = [v144 centerYAnchor];
  v99 = [v1 centerYAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];

  *(v31 + 208) = v100;
  v101 = [v144 centerXAnchor];
  v102 = [v2 centerXAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  *(v31 + 216) = v103;
  v104 = [v2 leadingAnchor];
  v105 = [v49 leadingAnchor];
  sub_1DB40(&v1[v20], v149);
  v106 = v150;
  v107 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v108 = (*(v107 + 56))(v106, v107);
  __swift_destroy_boxed_opaque_existential_0(v149);
  v109 = [v104 constraintGreaterThanOrEqualToAnchor:v105 constant:v108 * -0.5];

  LODWORD(v110) = 1144750080;
  v111 = [v109 withPriority:v110];

  *(v31 + 224) = v111;
  v112 = [v2 trailingAnchor];
  v113 = [v148 trailingAnchor];
  sub_1DB40(&v1[v142], v149);
  v114 = v150;
  v115 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v116 = (*(v115 + 56))(v114, v115) * 0.5;
  __swift_destroy_boxed_opaque_existential_0(v149);
  v117 = [v112 constraintLessThanOrEqualToAnchor:v113 constant:v116];

  LODWORD(v118) = 1144750080;
  v119 = [v117 withPriority:v118];

  *(v31 + 232) = v119;
  v120 = [v145 leadingAnchor];
  v121 = [v1 leadingAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];

  *(v31 + 240) = v122;
  v123 = *&v1[v143];
  if (v123)
  {
    v124 = objc_opt_self();
    *(v31 + 248) = v123;
    v125 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeActivityIndicator];
    v126 = v123;
    v127 = [v125 leadingAnchor];
    v128 = [v1 leadingAnchor];
    v129 = [v127 constraintEqualToAnchor:v128];

    *(v31 + 256) = v129;
    v130 = [v125 centerYAnchor];
    v131 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel];
    v132 = [v131 centerYAnchor];
    v133 = [v130 constraintEqualToAnchor:v132];

    *(v31 + 264) = v133;
    v134 = [v131 trailingAnchor];
    v135 = [v1 trailingAnchor];
    v136 = [v134 constraintEqualToAnchor:v135];

    *(v31 + 272) = v136;
    v137 = [v131 bottomAnchor];
    v138 = [v145 bottomAnchor];
    v139 = [v137 constraintEqualToAnchor:v138];

    *(v31 + 280) = v139;
    v149[0] = v31;

    sub_A70A8(v140);
    sub_2B860(0, &qword_1C8190);
    isa = sub_1449CC().super.isa;

    [v124 activateConstraints:isa];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_4BD1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView);
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius:CGRectGetWidth(v12) * 0.5];

  v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView);
  v4 = [v3 layer];
  [v3 bounds];
  [v4 setCornerRadius:CGRectGetWidth(v13) * 0.5];

  v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack);
  v6 = [v5 layer];
  [v5 bounds];
  [v6 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v7 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack);
  v8 = [v7 layer];
  [v7 bounds];
  [v8 setCornerRadius:CGRectGetHeight(v15) * 0.5];

  v9 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack);
  v10 = [v9 layer];
  [v9 bounds];
  [v10 setCornerRadius:CGRectGetHeight(v16) * 0.5];
}

id sub_4BEE0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PlayerTimeControl();
  v1 = objc_msgSendSuper2(&v5, "layoutSubviews");
  (*(&stru_248.offset + (swift_isaMask & *v0)))(v1);
  [*(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide) layoutFrame];
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack);
  CGRectGetWidth(v6);
  [v2 frame];
  [v2 setFrame:?];
  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking))
  {
    v3 = &OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferSelectedColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferUnselectedColor;
  }

  return [v2 setBackgroundColor:*(v0 + *v3)];
}

void sub_4C04C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlayerTimeControl();
  objc_msgSendSuper2(&v7, "didMoveToWindow");
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 window];
    if (v3 && (v3, v4 = v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48], v4 != 2))
    {
      v6 = v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded];
      v5 = v6 ^ 1u;
      if ((v6 & 1) == 0 && (v4 & 1) == 0)
      {
        v5 = (*&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 40] & 0x7FFFFFFF) == 0;
      }
    }

    else
    {
      v5 = 0;
    }

    [v2 setPaused:v5];
  }
}

void sub_4C22C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for PlayerTimeControl();
  v29.receiver = v4;
  v29.super_class = v9;
  objc_msgSendSuper2(&v29, "bounds");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v28.receiver = v4;
  v28.super_class = v9;
  objc_msgSendSuper2(&v28, "setBounds:", a1, a2, a3, a4);
  [v4 bounds];
  v32.origin.x = v11;
  v32.origin.y = v13;
  v32.size.width = v15;
  v32.size.height = v17;
  if (!CGRectEqualToRect(v30, v32))
  {
    v18 = &v4[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot];
    if (v4[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48] != 2)
    {
      v19 = *(v18 + 3);
      v20 = 0.0;
      if (v19 > 0.0)
      {
        v21 = *(v18 + 4);
        v22 = *v18;
        v23 = *(v18 + 10);
        sub_140A5C();
        v25 = v21 + (v24 - v22) * v23;
        if (v25 >= v19)
        {
          v25 = v19;
        }

        v26 = fmax(v25, 0.0) / v19;
        if (v26 <= 1.0)
        {
          v20 = v26;
        }

        else
        {
          v20 = 1.0;
        }
      }

      [v4 bounds];
      Width = CGRectGetWidth(v31);
      sub_4D884(Width * v20);
    }
  }
}

CGFloat sub_4C3CC()
{
  sub_1DB40(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  return UIViewNoIntrinsicMetric;
}

void sub_4C4BC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PlayerTimeControl();
  objc_msgSendSuper2(&v10, "tintColorDidChange");

  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
  v2 = [v0 tintColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];
  v4 = [v0 tintColor];
  [v3 setTextColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel];
  v6 = [v0 tintColor];
  [v5 setTextColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack];
  if (v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] == 1)
  {
    v8 = [v0 tintColor];
  }

  else
  {
    v8 = sub_14101C();
  }

  v9 = v8;
  [v7 setBackgroundColor:v8];
}

id sub_4C694(uint64_t a1, CGFloat a2, CGFloat a3)
{
  [*&v3[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView] frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics;
  sub_1DB40(&v3[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], v32);
  v16 = v33;
  v17 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v18 = (*(v17 + 24))(v16, v17);
  sub_1DB40(&v3[v15], v29);
  v19 = v30;
  v20 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v20 + 24))(v19, v20);
  v22 = v21;
  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  v37 = CGRectInset(v36, v18, v22);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v32);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v35.x = a2;
  v35.y = a3;
  if (CGRectContainsPoint(v38, v35))
  {
    return &dword_0 + 1;
  }

  v28.receiver = v3;
  v28.super_class = type metadata accessor for PlayerTimeControl();
  return objc_msgSendSuper2(&v28, "pointInside:withEvent:", a1, a2, a3);
}

id sub_4C95C(char a1)
{
  v2 = a1 & 1;
  result = [v1 isEnabled];
  if (result != v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView];
    v5 = [v1 isEnabled];
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      v7 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobAlpha];
    }

    [v4 setAlpha:v7];
    v8 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
    if ([v1 isEnabled])
    {
      v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobAlpha];
    }

    return [v8 setAlpha:v6];
  }

  return result;
}

void sub_4CA44()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking;
  v2 = v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking];
  v3 = objc_opt_self();
  sub_2B860(0, &qword_1C8190);

  isa = sub_1449CC().super.isa;

  [v3 deactivateConstraints:isa];

  v5 = sub_1449CC().super.isa;

  [v3 activateConstraints:v5];

  sub_4D244(0, v2 ^ 1);
  v6 = 0;
  if ((v0[v1] & 1) == 0)
  {
    v6 = sub_14101C();
  }

  v7 = v6;
  [v0 setTintColor:?];
}

void sub_4CBB0(void *a1)
{
  v2 = v1;
  [a1 locationInView:v2];
  v5 = v4;
  v7 = v6;
  v8 = [a1 state];
  if (v8 > 2)
  {
    if (v8 == (&dword_0 + 3))
    {
      if (v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] == 1)
      {
        [*&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController] endTrackingWithLocation:{v5, v7}];
        if (v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48] != 2)
        {
          v33 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint];
          if (v33)
          {
            v34 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 24];
            [v33 constant];
            v36 = v35;
            [v2 bounds];
            v9 = v34 * (v36 / CGRectGetWidth(v48));
            *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_selectedElapsedTime] = v9;
            v12 = "sendActionsForControlEvents:";
            v11 = v2;

            goto LABEL_7;
          }

          __break(1u);
        }
      }
    }

    else if (v8 == &dword_4 && v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] == 1)
    {
      v11 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController];
      v12 = "cancelTracking";

      goto LABEL_7;
    }
  }

  else if (v8 == (&dword_0 + 1))
  {
    [*&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView] frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics;
    sub_1DB40(&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], v40);
    v22 = v41;
    v23 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v24 = (*(v23 + 24))(v22, v23);
    sub_1DB40(&v2[v21], v37);
    v25 = v38;
    v26 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v26 + 24))(v25, v26);
    v28 = v27;
    v45.origin.x = v14;
    v45.origin.y = v16;
    v45.size.width = v18;
    v45.size.height = v20;
    v46 = CGRectInset(v45, v24, v28);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    __swift_destroy_boxed_opaque_existential_0(v37);
    __swift_destroy_boxed_opaque_existential_0(v40);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v44.x = v5;
    v44.y = v7;
    if (CGRectContainsPoint(v47, v44))
    {
      [*&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController] beginTrackingWithLocation:{v5, v7}];
    }

    else
    {
    }
  }

  else if (v8 == (&dword_0 + 2) && v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] == 1)
  {
    v11 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController];
    v12 = "continueTrackingWithLocation:";
    v9 = v5;
    v10 = v7;

LABEL_7:
    [v11 v12];
  }
}

double sub_4D0A0()
{
  [*(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView) frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics;
  sub_1DB40(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics, v22);
  v10 = v23;
  v11 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v12 = (*(v11 + 24))(v10, v11);
  sub_1DB40(v0 + v9, v19);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v14 + 24))(v13, v14);
  v16 = v15;
  v25.origin.x = v2;
  v25.origin.y = v4;
  v25.size.width = v6;
  v25.size.height = v8;
  *&v17 = CGRectInset(v25, v12, v16);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v17;
}

uint64_t sub_4D244(uint64_t a1, char a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_detailScrubSpeed);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  result = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController);
  if (!result)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler);
    if (!v5)
    {
      return result;
    }

    v7 = 0;
    v6 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking);
    goto LABEL_9;
  }

  result = [result detailedScrubbingEnabled];
  v5 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler);
  if (!v5)
  {
    return result;
  }

  v6 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking);
  if ((result & 1) == 0)
  {
    v7 = 0;
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = *(v3 + 8);
LABEL_10:

  v5(v6, v7, v8);

  return sub_2173C(v5);
}

id sub_4D494(_BYTE *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] = a2;
  sub_4CA44();
  sub_1DB40(&a1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], aBlock);
  v8 = v44;
  v9 = v45;
  __swift_project_boxed_opaque_existential_1(aBlock, v44);
  v10 = (*(v9 + 96))(v8, v9);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if (v10)
  {
    v11 = *&a1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
    [v11 bounds];
    [a1 convertRect:v11 fromCoordinateSpace:?];
    v41 = v13;
    v42 = v12;
    v39 = v15;
    v40 = v14;
    v16 = *&a1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];
    [v16 bounds];
    [a1 convertRect:v16 fromCoordinateSpace:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = *&a1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel];
    [v25 bounds];
    [a1 convertRect:v25 fromCoordinateSpace:?];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v35[2] = v42;
    v35[3] = v41;
    v35[4] = v40;
    v35[5] = v39;
    v35[6] = v18;
    v35[7] = v20;
    v35[8] = v22;
    v35[9] = v24;
    v35[10] = a1;
    v35[11] = v27;
    v35[12] = v29;
    v35[13] = v31;
    v35[14] = v33;
    v45 = a4;
    v46 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11D5C0;
    v44 = a5;
    v36 = _Block_copy(aBlock);
    v37 = a1;

    [v34 _animateUsingSpringWithDuration:0 delay:v36 options:0 mass:0.5 stiffness:0.0 damping:1.0 initialVelocity:500.0 animations:30.0 completion:0.0];
    _Block_release(v36);
  }

  return [a1 layoutIfNeeded];
}

void sub_4D704(uint64_t a1, char *a2)
{
  v2 = *&a2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];
  if (v2)
  {
    v8 = v2;
    v4 = [a2 window];
    if (v4 && (v4, v5 = a2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48], v5 != 2))
    {
      v7 = a2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded];
      v6 = v7 ^ 1u;
      if ((v7 & 1) == 0 && (v5 & 1) == 0)
      {
        v6 = (*&a2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 40] & 0x7FFFFFFF) == 0;
      }
    }

    else
    {
      v6 = 0;
    }

    [v8 setPaused:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4D7D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_4D884(double a1)
{
  v3 = sub_14539C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == &dword_4 + 1 && (v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] & 1) == 0)
  {
    v15 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint];
    if (v15)
    {
      v16 = v15;
      [v1 bounds];
      CGRectGetWidth(v23);
      [*&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView] frame];
      (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v3);
      sub_141B1C();
      v18 = v17;
      (*(v4 + 8))(v6, v3);
      [v16 setConstant:v18];

      return;
    }

    goto LABEL_15;
  }

  v9 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint];
  if (!v9)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (a1 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a1;
  }

  v20 = v9;
  [v1 bounds];
  Width = CGRectGetWidth(v22);
  [*&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView] frame];
  v13 = Width + v12 * 0.5;
  if (v13 >= v10)
  {
    v13 = v10;
  }

  [v20 setConstant:v13];
  v14 = v20;
}

id sub_4DB08()
{
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 window];
    if (v3 && (v3, v4 = v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48], v4 != 2))
    {
      v8 = v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded];
      v5 = v8 ^ 1u;
      if ((v8 & 1) == 0 && (v4 & 1) == 0)
      {
        v5 = (*&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 40] & 0x7FFFFFFF) == 0;
      }
    }

    else
    {
      v5 = 0;
    }

    [v2 setPaused:v5];
  }

  result = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController];
  if (result)
  {
    v7 = 0.0;
    if (v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48] != 2)
    {
      v7 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 24];
    }

    return [result setDuration:v7];
  }

  return result;
}

void sub_4DC10(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot];
  if (v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48] == 2 || (v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] & 1) != 0)
  {
    if (a1)
    {

      [a1 setPaused:1];
    }
  }

  else
  {
    v3 = *(v2 + 3);
    v4 = *(v2 + 4);
    v5 = *v2;
    v6 = *(v2 + 10);
    sub_140A5C();
    v8 = vabdd_f64(v7, *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_lastTargetTimestamp]);
    v9 = fabsf(v6);
    if (v9 <= 1.0)
    {
      v9 = 1.0;
    }

    if (1.0 / v9 <= v8)
    {
      *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_lastTargetTimestamp] = v7;
      v10 = v4 + (v7 - v5) * v6;
      if (v10 >= v3)
      {
        v10 = v3;
      }

      v11 = fmax(v10, 0.0);
      sub_4DDB4(v11, v3 - v11);
    }

    if (v2[48] != 2)
    {
      v12 = *(v2 + 3);
      if (v12 <= 0.0)
      {
        [v1 bounds];
        v20 = CGRectGetWidth(v23) * 0.0;
      }

      else
      {
        v13 = *(v2 + 4);
        v14 = *v2;
        v15 = *(v2 + 10);
        sub_140A5C();
        v17 = v13 + (v16 - v14) * v15;
        if (v17 >= v12)
        {
          v17 = v12;
        }

        v18 = fmax(v17, 0.0) / v12;
        if (v18 <= 1.0)
        {
          v19 = v18;
        }

        else
        {
          v19 = 1.0;
        }

        [v1 bounds];
        v20 = CGRectGetWidth(v22) * v19;
      }

      sub_4D884(v20);
    }
  }
}

void sub_4DDB4(double a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel);
  if (a1 > 0.0 || a2 > 0.0)
  {
    v11 = [*(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeFormatter) stringFromSeconds:?];
    if (!v11)
    {
      sub_1448DC();
      v11 = sub_14489C();
    }

    [v4 setText:v11];

    v12 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel);
    v9 = [*(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeFormatter) stringFromSeconds:a2];
    if (!v9)
    {
      sub_1448DC();
      v14 = sub_14489C();

      v9 = v14;
    }

    v10 = v12;
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v13._countAndFlagsBits = 0xE000000000000000;
    v17._object = 0x8000000000162320;
    v17._countAndFlagsBits = 0xD000000000000010;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v6.super.isa = v5;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_1409DC(v17, v18, v6, v19, v13);

    v7 = sub_14489C();

    [v4 setText:v7];

    v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel);
    v9 = [v4 text];
    v10 = v8;
  }

  v15 = v9;
  [v10 setText:?];
}

id sub_4DFAC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  MinX = CGRectGetMinX(*&a2);
  v37.origin.x = a6;
  v37.origin.y = a7;
  v37.size.width = a8;
  v37.size.height = a9;
  if (MinX <= CGRectGetMaxX(v37) && *(a1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking) == 1)
  {
    v29 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel);
    CGAffineTransformMakeTranslation(&v36, 0.0, 10.0);
    [v29 setTransform:&v36];
  }

  else
  {
    v30 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel);
    v36.a = 1.0;
    v36.b = 0.0;
    v36.c = 0.0;
    v36.d = 1.0;
    v36.tx = 0.0;
    v36.ty = 0.0;
    [v30 setTransform:&v36];
  }

  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MaxX = CGRectGetMaxX(v38);
  v39.origin.x = a10;
  v39.origin.y = a11;
  v39.size.width = a12;
  v39.size.height = a13;
  if (CGRectGetMinX(v39) <= MaxX && *(a1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking) == 1)
  {
    v32 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel);
    CGAffineTransformMakeTranslation(&v36, 0.0, 10.0);
    return [v32 setTransform:&v36];
  }

  else
  {
    v34 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel);
    v36.a = 1.0;
    v36.b = 0.0;
    v36.c = 0.0;
    v36.d = 1.0;
    v36.tx = 0.0;
    v36.ty = 0.0;
    return [v34 setTransform:&v36];
  }
}

void sub_4E180(uint64_t a1)
{
  v2 = v1;
  v44 = *(a1 + 24);
  v4 = *(a1 + 48);
  v5 = &v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot];
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 6) = v4;
  v7 = *(a1 + 40);
  sub_4DB08();
  sub_140A5C();
  v47 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_lastTargetTimestamp;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_lastTargetTimestamp] = v8;
  v46 = v4;
  v9 = (v4 >> 8) & 1;
  if (v4 == 2)
  {
    v7 = 0.0;
    LOBYTE(v9) = 0;
  }

  v51 = v9;
  v10 = (v4 != 2) & v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_14D1E0;
  v50 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveBackground];
  v52 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel];
  *(v11 + 32) = v50;
  *(v11 + 40) = v52;
  v12 = swift_allocObject();
  v48 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack];
  v49 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack];
  *(v12 + 16) = xmmword_14D1F0;
  v13 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack];
  *(v12 + 32) = v48;
  *(v12 + 40) = v49;
  v14 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];
  *(v12 + 48) = v13;
  *(v12 + 56) = v14;
  v15 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel];
  v16 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView];
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  v17 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
  *(v12 + 80) = v17;
  v53 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v10;
  *(v18 + 28) = v7;
  *(v18 + 32) = v12;
  *(v18 + 40) = v2;
  *(v18 + 48) = v51;
  aBlock[4] = sub_4FE18;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11D5C0;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);
  v20 = v50;
  v21 = v52;
  v22 = v48;
  v23 = v49;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v2;

  [v53 _animateUsingSpringWithDuration:0 delay:v19 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
  _Block_release(v19);

  if ((v29[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking] & 1) == 0)
  {
    v30 = *a1;
    v31 = *(a1 + 24);
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    if (v46 == 2 || (v34 = v44, v44 <= 0.0))
    {
      [v29 bounds];
      Width = CGRectGetWidth(v56);
      v34 = 0.0;
      sub_4D884(Width * 0.0);
      v42 = 0.0;
      v35 = v47;
      if (v46 == 2)
      {
LABEL_17:
        sub_4DDB4(v42, v34 - v42);
        return;
      }

      v36 = v33;
      v34 = v45;
    }

    else
    {
      v35 = v47;
      v36 = v33;
      v37 = v32 + (*&v2[v47] - v30) * v36;
      if (v37 >= v31)
      {
        v37 = v31;
      }

      v38 = fmax(v37, 0.0) / v44;
      if (v38 <= 1.0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.0;
      }

      [v29 bounds];
      v40 = CGRectGetWidth(v55);
      sub_4D884(v40 * v39);
    }

    v43 = v32 + (*&v2[v35] - v30) * v36;
    if (v43 >= v31)
    {
      v43 = v31;
    }

    v42 = fmax(v43, 0.0);
    goto LABEL_17;
  }
}

void sub_4E560(unint64_t a1, unsigned __int8 a2, unint64_t a3, char *a4, char a5, float a6)
{
  if (a1 >> 62)
  {
    v14 = a6;
    v15 = sub_14531C();
    a6 = v14;
    v9 = v15;
    if (!v15)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v10 = 0;
  if (a6 <= 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = sub_1451FC();
    }

    else
    {
      v12 = *(a1 + 8 * v10 + 32);
    }

    v13 = v12;
    ++v10;
    [v12 setHidden:(a2 ^ 1) & 1];
    [v13 setAlpha:v11];
  }

  while (v9 != v10);
LABEL_12:
  if (a3 >> 62)
  {
    v16 = sub_14531C();
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  if (v16 < 1)
  {
LABEL_28:
    __break(1u);
    return;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v18 = sub_1451FC();
    }

    else
    {
      v18 = *(a3 + 8 * i + 32);
    }

    v19 = v18;
    [v18 setHidden:a2 & 1];
  }

LABEL_21:
  if ((a2 & 1) == 0)
  {

    v20 = &selRef_startAnimating;
    if ((a5 & 1) == 0)
    {
      v20 = &selRef_stopAnimating;
    }

    [*&a4[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeActivityIndicator] *v20];
    v21 = *&a4[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];

    [v21 setHidden:a5 & 1];
  }
}

void sub_4E87C(double a1)
{
  if (v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48] != 2)
  {
    v2 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 24];
    v3 = v2 - a1;
    v4 = a1 / v2;
    if (v4 <= 1.0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1.0;
    }

    [v1 bounds];
    Width = CGRectGetWidth(v9);
    sub_4D884(v5 * Width);
    sub_4DDB4(a1, v3);
    *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_selectedElapsedTime] = a1;

    [v1 sendActionsForControlEvents:4096];
  }
}

void sub_4EA1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView);
  v2 = [v1 layer];
  [v2 setCornerRadius:2.0];

  v3 = [v1 layer];
  [v3 setMaskedCorners:3];

  v4 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView);
  v5 = [v4 layer];
  [v5 setCornerRadius:2.0];

  v6 = [v4 layer];
  [v6 setMaskedCorners:3];
}

void sub_4EB24()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
  v3 = sub_14489C();
  [v2 _setLayoutDebuggingIdentifier:v3];

  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView);
  v5 = sub_14489C();
  [v4 _setLayoutDebuggingIdentifier:v5];

  v162 = v2;
  v6 = [v2 leadingAnchor];
  v7 = [v1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  v9 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint);
  v159 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint) = v8;
  v10 = v8;

  if (!v10)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  LODWORD(v11) = 1132068864;
  [v10 setPriority:v11];

  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 preferredContentSizeCategory];

  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v160 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel);
  v15 = [v160 bottomAnchor];
  v16 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics;
  sub_1DB40(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics, v163);
  v17 = v164;
  v18 = v165;
  __swift_project_boxed_opaque_existential_1(v163, v164);
  LOBYTE(v12) = (*(v18 + 88))(v17, v18);
  __swift_destroy_boxed_opaque_existential_0(v163);
  v19 = &selRef_topAnchor;
  if (v12)
  {
    v19 = &selRef_bottomAnchor;
  }

  v20 = [v1 *v19];
  v21 = 5.0;
  if ((IsAccessibilityContentSizeCategory & 1) == 0)
  {
    sub_1DB40(v1 + v16, v163);
    v22 = v164;
    v23 = v165;
    __swift_project_boxed_opaque_existential_1(v163, v164);
    v24 = (*(v23 + 48))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v163);
    v21 = v24;
  }

  v157 = v16;
  v25 = [v15 constraintEqualToAnchor:v20 constant:v21];

  v26 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint);
  v156 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint) = v25;

  v161 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack);
  v27 = [v161 leadingAnchor];
  v28 = [v162 centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:0.0];

  v158 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint;
  v30 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_14D200;
  v32 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel);
  v33 = [v32 centerYAnchor];
  v34 = [v1 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v31 + 32) = v35;
  v36 = [v32 centerXAnchor];
  v37 = [v1 centerXAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v31 + 40) = v38;
  v39 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveBackground);
  v40 = [v39 centerXAnchor];
  v41 = [v32 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v31 + 48) = v42;
  v43 = [v39 centerYAnchor];
  v44 = [v32 centerYAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v31 + 56) = v45;
  v46 = [v39 widthAnchor];
  v47 = [v32 widthAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:32.0];

  *(v31 + 64) = v48;
  v49 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack);
  v50 = [v49 leadingAnchor];
  v51 = [v1 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v31 + 72) = v52;
  v53 = [v49 trailingAnchor];
  v54 = [v162 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-2.0];

  *(v31 + 80) = v55;
  v56 = [v49 centerYAnchor];
  v57 = [v1 centerYAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v31 + 88) = v58;
  v59 = [v49 heightAnchor];
  v60 = [v59 constraintEqualToConstant:3.0];

  *(v31 + 96) = v60;
  v61 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack);
  v62 = [v61 leadingAnchor];
  v63 = [v49 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v31 + 104) = v64;
  v65 = [v61 centerYAnchor];
  v66 = [v1 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v31 + 112) = v67;
  v68 = [v61 heightAnchor];
  v69 = [v68 constraintEqualToConstant:3.0];

  *(v31 + 120) = v69;
  v70 = [v161 trailingAnchor];
  v71 = [v1 trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v31 + 128) = v72;
  v73 = [v161 centerYAnchor];
  v74 = [v1 centerYAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v31 + 136) = v75;
  v76 = [v161 heightAnchor];
  v77 = [v76 constraintEqualToConstant:3.0];

  *(v31 + 144) = v77;
  v78 = *&v158[v1];
  if (!v78)
  {
    goto LABEL_11;
  }

  *(v31 + 152) = v78;
  v79 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide);
  v80 = v78;
  v81 = [v79 leadingAnchor];
  v82 = [v49 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v31 + 160) = v83;
  v84 = [v79 trailingAnchor];
  v85 = [v161 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v31 + 168) = v86;
  v87 = [v79 topAnchor];
  v88 = [v49 topAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v31 + 176) = v89;
  v90 = [v79 bottomAnchor];
  v91 = [v49 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v31 + 184) = v92;
  v93 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferingIndicator);
  v94 = [v93 leadingAnchor];
  v95 = [v79 leadingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v31 + 192) = v96;
  v97 = [v93 trailingAnchor];
  v98 = [v79 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v31 + 200) = v99;
  v100 = [v93 topAnchor];
  v101 = [v79 topAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v31 + 208) = v102;
  v103 = [v93 bottomAnchor];
  v104 = [v79 bottomAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v31 + 216) = v105;
  v106 = *(v1 + v159);
  if (!v106)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v31 + 224) = v106;
  v107 = v106;
  v108 = [v162 bottomAnchor];
  v109 = [v49 bottomAnchor];
  v110 = [v108 constraintEqualToAnchor:v109];

  *(v31 + 232) = v110;
  v111 = [v4 bottomAnchor];
  v112 = [v162 bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];

  *(v31 + 240) = v113;
  v114 = [v4 centerXAnchor];
  v115 = [v162 centerXAnchor];
  v116 = [v114 constraintEqualToAnchor:v115];

  *(v31 + 248) = v116;
  v117 = [v162 leadingAnchor];
  v118 = [v49 leadingAnchor];
  v119 = [v117 constraintGreaterThanOrEqualToAnchor:v118 constant:1.0];

  LODWORD(v120) = 1144750080;
  v121 = [v119 withPriority:v120];

  *(v31 + 256) = v121;
  v122 = [v162 trailingAnchor];
  v123 = [v161 trailingAnchor];
  v124 = [v122 constraintLessThanOrEqualToAnchor:v123 constant:-1.0];

  LODWORD(v125) = 1144750080;
  v126 = [v124 withPriority:v125];

  *(v31 + 264) = v126;
  v127 = [v160 leadingAnchor];
  v128 = [v1 leadingAnchor];
  sub_1DB40(v1 + v157, v163);
  v129 = v164;
  v130 = v165;
  __swift_project_boxed_opaque_existential_1(v163, v164);
  (*(v130 + 104))(v129, v130);
  v131 = [v127 constraintEqualToAnchor:v128 constant:?];

  __swift_destroy_boxed_opaque_existential_0(v163);
  *(v31 + 272) = v131;
  v132 = *(v1 + v156);
  if (v132)
  {
    v133 = objc_opt_self();
    *(v31 + 280) = v132;
    v134 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeActivityIndicator);
    v135 = v132;
    v136 = [v134 leadingAnchor];
    v137 = [v1 leadingAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];

    *(v31 + 288) = v138;
    v139 = [v134 centerYAnchor];
    v140 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel);
    v141 = [v140 centerYAnchor];
    v142 = [v139 constraintEqualToAnchor:v141];

    *(v31 + 296) = v142;
    v143 = [v140 trailingAnchor];
    v144 = [v1 trailingAnchor];
    sub_1DB40(v1 + v157, v163);
    v145 = v164;
    v146 = v165;
    __swift_project_boxed_opaque_existential_1(v163, v164);
    (*(v146 + 112))(v145, v146);
    v147 = [v143 constraintEqualToAnchor:v144 constant:?];

    __swift_destroy_boxed_opaque_existential_0(v163);
    *(v31 + 304) = v147;
    v148 = [v140 bottomAnchor];
    v149 = [v160 bottomAnchor];
    sub_1DB40(v1 + v157, v163);
    v150 = v164;
    v151 = v165;
    __swift_project_boxed_opaque_existential_1(v163, v164);
    (*(v151 + 112))(v150, v151);
    v153 = [v148 constraintEqualToAnchor:v149 constant:v152];

    __swift_destroy_boxed_opaque_existential_0(v163);
    *(v31 + 312) = v153;
    v163[0] = v31;

    sub_A70A8(v154);
    sub_2B860(0, &qword_1C8190);
    isa = sub_1449CC().super.isa;

    [v133 activateConstraints:isa];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_4FCD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4FD30()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_4FD68(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_4DC10(a1);
}

uint64_t sub_4FDD0()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double MPCPlayerItemDurationSnapshotGetElapsedTimeForCurrentTime(uint64_t a1, double a2)
{
  v2 = *(a1 + 32) + (a2 - *a1) * *(a1 + 40);
  if (v2 >= *(a1 + 24))
  {
    v2 = *(a1 + 24);
  }

  return fmax(v2, 0.0);
}

void sub_4FE74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide;
  *(v1 + v2) = [objc_allocWithZone(UILayoutGuide) init];
  v3 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTrack;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = sub_14489C();
  [v4 _setLayoutDebuggingIdentifier:v5];

  v6 = sub_14101C();
  [v4 setBackgroundColor:v6];

  *(v1 + v3) = v4;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferUnselectedColor) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferSelectedColor) = 0;
  v7 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferTrack;
  v8 = [objc_allocWithZone(UIView) init];
  v9 = sub_14489C();
  [v8 _setLayoutDebuggingIdentifier:v9];

  *(v1 + v7) = v8;
  v10 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrack;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = sub_14489C();
  [v11 _setLayoutDebuggingIdentifier:v12];

  v13 = [v11 layer];
  [v13 setMaskedCorners:10];

  v14 = sub_14103C();
  [v11 setBackgroundColor:v14];

  *(v1 + v10) = v11;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobAlpha) = 0x3FF0000000000000;
  v15 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView;
  *(v1 + v15) = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobKnockoutView;
  *(v1 + v16) = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeActivityIndicator;
  v18 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:8];
  [v18 setHidesWhenStopped:1];
  v19 = [objc_opt_self() secondaryLabelColor];
  [v18 setColor:v19];

  *(v1 + v17) = v18;
  v20 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel;
  v21 = [objc_allocWithZone(UILabel) init];
  v22 = sub_14489C();
  [v21 _setLayoutDebuggingIdentifier:v22];

  *(v1 + v20) = v21;
  v23 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel;
  v24 = [objc_allocWithZone(UILabel) init];
  v25 = sub_14489C();
  [v24 _setLayoutDebuggingIdentifier:v25];

  *(v1 + v23) = v24;
  v26 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel;
  v27 = [objc_allocWithZone(UILabel) init];
  v28 = sub_14489C();
  [v27 _setLayoutDebuggingIdentifier:v28];

  sub_14114C();
  v29 = sub_14113C();
  [v27 setTextColor:v29];

  *(v1 + v26) = v27;
  v30 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveBackground;
  *(v1 + v30) = sub_4927C();
  v31 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_bufferingIndicator;
  type metadata accessor for PlayerIndeterminateActivityIndicator();
  *(v1 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_defaultConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackingConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTrackLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_labelAlpha) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_selectedElapsedTime) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_detailedScrubbingEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController) = 0;
  v32 = (v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler);
  *v32 = 0;
  v32[1] = 0;
  v33 = v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_detailScrubSpeed;
  *v33 = 0;
  *(v33 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobViewXConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_nextItemObserver) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_backgroundObserver) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_foregroundObserver) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_loadedDurationObserver) = 0;
  v34 = v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 2;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_isBackgrounded) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_lastTargetTimestamp) = 0;
  v35 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeFormatter;
  v36 = [objc_allocWithZone(AVTimeFormatter) init];
  [v36 setStyle:1];
  *(v1 + v35) = v36;
  v37 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeFormatter;
  v38 = [objc_allocWithZone(AVTimeFormatter) init];
  [v38 setStyle:2];
  *(v1 + v37) = v38;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_percentLoaded) = 0;
  sub_1452FC();
  __break(1u);
}

void sub_50468()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabelBottomAnchorConstraint];
  if (v6)
  {
    if (IsAccessibilityContentSizeCategory)
    {
      v7 = v6;
      v8 = 5.0;
    }

    else
    {
      sub_1DB40(&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], v44);
      v9 = v45;
      v10 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v11 = *(v10 + 48);
      v12 = v6;
      v13 = v11(v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v8 = v13;
    }

    [v6 setConstant:v8];

    v14 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];
    v15 = OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics;
    sub_1DB40(&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], v44);
    v16 = v45;
    v17 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v18 = (*(v17 + 16))(v16, v17);
    sub_1DB40(&v1[v15], v41);
    v19 = v42;
    v20 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v21 = (*(v20 + 40))(v19, v20);
    v22 = [v2 sharedApplication];
    v23 = [v22 preferredContentSizeCategory];

    LODWORD(v22) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
    if (v22)
    {
      v18 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, v18);
    }

    v24 = objc_opt_self();
    v25 = [v24 monospacedDigitSystemFontOfSize:v18 weight:v21];
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v44);
    [v14 setFont:v25];

    v26 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel];
    sub_1DB40(&v1[v15], v44);
    v27 = v45;
    v28 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v29 = (*(v28 + 16))(v27, v28);
    sub_1DB40(&v1[v15], v41);
    v30 = v42;
    v31 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v32 = (*(v31 + 40))(v30, v31);
    v33 = [v2 sharedApplication];
    v34 = [v33 preferredContentSizeCategory];

    LODWORD(v33) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
    if (v33)
    {
      v35 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, v29);
    }

    else
    {
      v35 = v29;
    }

    v36 = [v24 monospacedDigitSystemFontOfSize:v35 weight:v32];
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v44);
    [v26 setFont:v36];

    v37 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_liveLabel];
    sub_1DB40(&v1[v15], v44);
    v38 = v45;
    v39 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v40 = [v24 systemFontOfSize:(*(v39 + 16))(v38 weight:{v39), UIFontWeightHeavy}];
    __swift_destroy_boxed_opaque_existential_0(v44);
    [v37 setFont:v40];

    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsUpdateConstraints];
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_508EC(float a1)
{
  if (v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 48] != 2)
  {
    v2 = v1;
    v4 = *&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_durationSnapshot + 24];
    sub_1DB40(&v1[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_metrics], aBlock);
    v5 = v47;
    v6 = v48;
    __swift_project_boxed_opaque_existential_1(aBlock, v47);
    v7 = (*(v6 + 12))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_knobView];
      [v8 bounds];
      [v2 convertRect:v8 fromCoordinateSpace:?];
      v44 = v10;
      v45 = v9;
      v42 = v12;
      v43 = v11;
      v13 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_elapsedTimeLabel];
      [v13 bounds];
      [v2 convertRect:v13 fromCoordinateSpace:?];
      v40 = v15;
      v41 = v14;
      v17 = v16;
      v19 = v18;
      v20 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_remainingTimeLabel];
      [v20 bounds];
      [v2 convertRect:v20 fromCoordinateSpace:?];
      v21 = v4;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = objc_opt_self();
      v31 = swift_allocObject();
      v31[2] = v45;
      v31[3] = v44;
      v31[4] = v43;
      v31[5] = v42;
      v31[6] = v41;
      v31[7] = v17;
      v31[8] = v19;
      v31[9] = v40;
      v31[10] = v2;
      v31[11] = v23;
      v31[12] = v25;
      v4 = v21;
      v31[13] = v27;
      v31[14] = v29;
      v48 = sub_51188;
      v49 = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_11D5C0;
      v47 = &block_descriptor_268;
      v32 = _Block_copy(aBlock);
      v33 = v2;

      [v30 _animateUsingSpringWithDuration:0 delay:v32 options:0 mass:0.5 stiffness:0.0 damping:1.0 initialVelocity:500.0 animations:30.0 completion:0.0];
      _Block_release(v32);
    }

    v34 = *&v2[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController];
    if (v34)
    {
      [v34 duration];
      v36 = v35;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = (a1 / v36);
    if (v37 <= 1.0)
    {
      v38 = (a1 / v36);
    }

    else
    {
      v38 = 1.0;
    }

    [v2 bounds];
    Width = CGRectGetWidth(v50);
    sub_4D884(Width * v38);
    sub_4DDB4(v4 * v37, v4 - v4 * v37);
  }
}

uint64_t sub_50BCC(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_detailScrubSpeed);
  *v2 = a1;
  *(v2 + 8) = 0;
  result = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubController);
  if (!result)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler);
    if (!v4)
    {
      return result;
    }

    v6 = 0;
    v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking);
    goto LABEL_9;
  }

  result = [result detailedScrubbingEnabled];
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler);
  if (!v4)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl__tracking);
  if ((result & 1) == 0)
  {
    v6 = 0;
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
LABEL_10:

  v4(v5, v6, v7);

  return sub_2173C(v4);
}

void sub_50CDC()
{
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_displayLink];
  if (v1)
  {
    [v1 setPaused:1];
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_51070;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_11D5C0;
    v6[3] = &block_descriptor_254;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 _animateUsingSpringWithDuration:0 delay:v4 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_50E0C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = sub_50FE8;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_11D5C0;
  v11 = &block_descriptor_236;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = sub_5102C;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_4D7D0;
  v11 = &block_descriptor_242;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 _animateUsingSpringWithDuration:0 delay:v3 options:v6 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:30.0 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t sub_50FB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_51034()
{

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_510F8()
{
  result = qword_1C2F40;
  if (!qword_1C2F40)
  {
    sub_2B860(255, &qword_1C2F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C2F40);
  }

  return result;
}

Swift::Int sub_511C8()
{
  v1 = *v0;
  sub_14545C();
  sub_14546C(v1);
  return sub_1454AC();
}

Swift::Int sub_5123C()
{
  v1 = *v0;
  sub_14545C();
  sub_14546C(v1);
  return sub_1454AC();
}

uint64_t sub_51280(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache);
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v2 == result)
  {
    return result;
  }

  if (v2)
  {
LABEL_6:
    v4 = qword_1BFED0;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_1D1730;
    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    type metadata accessor for NotificationObserver();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v3 + 16) = v5;
    swift_unknownObjectWeakAssign();
    *(v3 + 32) = 1;
    *(v3 + 40) = sub_555F0;
    *(v3 + 48) = v6;
    v7 = objc_opt_self();

    swift_retain_n();
    v8 = v5;
    v9 = [v7 defaultCenter];
    v10 = *(v3 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();

    v12 = v10;
    [v9 addObserver:v3 selector:"handleNotification:" name:v12 object:Strong];

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v3 = 0;
LABEL_9:
  *(v1 + OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCacheInvalidationNotificationObserver) = v3;

  v13 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  *(v1 + v13) = &_swiftEmptyDictionarySingleton;
}

void sub_51498()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  *&Strong[v1] = &_swiftEmptyDictionarySingleton;

  v2 = swift_unknownObjectUnownedLoadStrong();
  [v2 setNeedsLayout];
}

id sub_51528(void *a1)
{
  v2 = v1;
  v5 = a1[2];
  v4 = a1[3];
  v6 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_indexedComponents;
  swift_beginAccess();
  v7 = *(*&v1[v6] + 16);

  if (v7 && (, sub_F7CB0(v5, v4), v9 = v8, , (v9 & 1) != 0))
  {
    sub_1451EC(104);
    v17._object = 0x8000000000162670;
    v17._countAndFlagsBits = 0xD000000000000064;
    sub_14494C(v17);
    v18._countAndFlagsBits = v5;
    v18._object = v4;
    sub_14494C(v18);
    v19._countAndFlagsBits = 11810;
    v19._object = 0xE200000000000000;
    sub_14494C(v19);
    result = sub_1452FC();
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = a1[32];
    a1[32] = sub_55B64;
    a1[33] = v10;

    sub_2173C(v11);

    v12 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_orderedComponents;
    swift_beginAccess();

    sub_1449BC();
    if (*(&dword_10 + (*(v2 + v12) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v12) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_1449FC();
    }

    sub_144A2C();
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + v6);
    *(v2 + v6) = 0x8000000000000000;
    sub_138020(a1, v5, v4, isUniquelyReferenced_nonNull_native);

    *(v2 + v6) = v16;
    swift_endAccess();
    v14 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *(v2 + v14) = &_swiftEmptyDictionarySingleton;

    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_517D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
    v2 = Strong;
    swift_beginAccess();
    *&v2[v1] = &_swiftEmptyDictionarySingleton;

    [v2 setNeedsLayout];
  }
}

id sub_51860()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_orderedComponents;
  result = swift_beginAccess();
  v4 = *&v0[v2];
  if (v4 >> 62)
  {
    result = sub_14531C();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1451FC();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    ++v6;
    v8 = *(v7 + 256);
    *(v7 + 256) = 0;
    *(v7 + 264) = 0;
    sub_2173C(v8);
  }

  while (v5 != v6);

LABEL_10:
  v9 = *&v1[v2];
  if (v9 >> 62)
  {
    v10 = sub_14531C();
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v10)
  {
LABEL_22:
    v18 = sub_55A94(_swiftEmptyArrayStorage);

    sub_527A8(v18);

    *&v1[v2] = _swiftEmptyArrayStorage;

    v19 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_indexedComponents;
    swift_beginAccess();
    *&v1[v19] = &_swiftEmptyDictionarySingleton;

    v20 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();
    *&v1[v20] = &_swiftEmptyDictionarySingleton;

    return [v1 setNeedsLayout];
  }

  result = sub_92BAC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v21 = v2;
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_1451FC();
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_92BAC((v15 > 1), v16 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
    }

    while (v10 != v11);

    v2 = v21;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_51B20(uint64_t a1)
{
  result = sub_144B6C();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_FD104(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_51C3C()
{
  v1 = v0;
  v97.receiver = v0;
  v97.super_class = _s9StackViewCMa();
  objc_msgSendSuper2(&v97, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  sub_144DCC();
  v12 = v11;

  [v1 effectiveUserInterfaceLayoutDirection];
  v73 = v12;
  sub_529D4(v98, v3, v5, v7, v9, v12);
  v75 = v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_isDisabled];
  swift_beginAccess();

  v14 = sub_51B20(v13);
  v96 = v14;
  v15 = *(*&v98[0] + 16);
  if (!v15)
  {
    v70 = v14;
LABEL_64:
    v71 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
    swift_beginAccess();

    *&v1[v71] = &_swiftEmptyDictionarySingleton;
    *&v85 = v3;
    *(&v85 + 1) = v5;
    *&v86 = v7;
    *(&v86 + 1) = v9;
    *&v87 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = *&v1[v71];
    *&v1[v71] = 0x8000000000000000;
    sub_137EB4(v98, &v85, isUniquelyReferenced_nonNull_native);
    *&v1[v71] = v76[0];
    swift_endAccess();
    sub_527A8(v70);
  }

  v16 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_recycledTextDrawingViews;
  v17 = (*&v98[0] + 32);
  sub_55A10(v98, &v85);
  swift_beginAccess();
  for (i = v15 - 1; ; --i)
  {
    v19 = *v17;
    v20 = v17[2];
    v86 = v17[1];
    v87 = v20;
    v85 = v19;
    v21 = v17[3];
    v22 = v17[4];
    v23 = v17[6];
    v90 = v17[5];
    v91 = v23;
    v88 = v21;
    v89 = v22;
    v24 = v17[7];
    v25 = v17[8];
    v26 = v17[10];
    v94 = v17[9];
    v95 = v26;
    v92 = v24;
    v93 = v25;
    v27 = v85;
    v29 = *(&v86 + 1);
    v28 = v86;
    v30 = v20;
    if ((BYTE8(v20) & 1) == 0)
    {
      break;
    }

    sub_55960(&v85, &v77);

    sub_55B9C(v28, v29, v30, 1);
    v31 = v17;
    v32 = v27;
    v33 = i;
    v34 = v16;
    v35 = v1;
    v36 = [v28 string];
    v74 = sub_1448DC();
    v38 = v37;

    v1 = v35;
    v16 = v34;
    i = v33;
    v27 = v32;
    v17 = v31;
    sub_9B34(v28, v29, v30, 1);

    v29 = v38;
    if ((v38 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v28 = v74;
LABEL_7:
    v39 = v27[34];
    if ((v28 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (!v39)
    {

      goto LABEL_29;
    }

    v40 = v39;
    if ([v40 isHidden])
    {

LABEL_29:
      sub_55998(&v85);
      goto LABEL_54;
    }

    [v40 setHidden:1];

    sub_55998(&v85);

LABEL_54:
    if (!i)
    {
      goto LABEL_62;
    }

    v17 += 11;
  }

  sub_55960(&v85, &v77);

  sub_55B9C(v28, v29, v30, 0);

  if ((v29 & 0x2000000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v39 = v27[34];
  if ((v29 & 0xF00000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_12:
  if (v39)
  {
    v41 = v39;
LABEL_34:
    v57 = v39;
    v58 = [v41 isHidden];

    if (v58)
    {
      [v41 setHidden:0];
    }

    v81 = v90;
    v82 = v91;
    v83 = v92;
    v84 = v93;
    v77 = v86;
    v78 = v87;
    v79 = v88;
    v80 = v89;
    UIScreen.Dimensions.size.getter(&v77);
    v99[4] = v81;
    v99[5] = v82;
    v99[6] = v83;
    v99[7] = v84;
    v99[0] = v77;
    v99[1] = v78;
    v99[2] = v79;
    v99[3] = v80;
    sub_9AD8(&v86, v76);
    sub_11D894(v99);
    v59 = v41[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View_isDisabled];
    v41[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View_isDisabled] = v75;
    if (v75 != v59)
    {
      v60 = 1.0;
      if (v75)
      {
        UIInterfaceGetContentDisabledAlpha();
      }

      [v41 setAlpha:{v60, *&v73}];
    }

    if (BYTE8(v85) > 2u)
    {
      v64 = 7;
      if (BYTE8(v85) != 4)
      {
        v64 = 8;
      }

      if (BYTE8(v85) == 3)
      {
        v63 = 4;
      }

      else
      {
        v63 = v64;
      }
    }

    else if (BYTE8(v85) == 1)
    {
      v61 = [objc_opt_self() sharedApplication];
      v62 = [v61 userInterfaceLayoutDirection];

      if (v62 == &dword_0 + 1)
      {
        v63 = 7;
      }

      else
      {
        v63 = 8;
      }
    }

    else
    {
      v65 = [objc_opt_self() sharedApplication];
      v66 = [v65 userInterfaceLayoutDirection];

      if (v66 == &dword_0 + 1)
      {
        v63 = 8;
      }

      else
      {
        v63 = 7;
      }
    }

    [v41 setContentMode:{v63, *&v73}];
    v67 = v27[2];
    v68 = v27[3];

    sub_55098(v67, v68);

    sub_144EFC();
    [v41 setFrame:?];

    sub_55998(&v85);

    goto LABEL_54;
  }

  v42 = *&v1[v16];
  if (!(v42 >> 62))
  {
    result = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_16;
    }

LABEL_32:
    _s4ViewCMa();
    v53 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v54 = objc_opt_self();
    v47 = v53;
    v55 = [v54 clearColor];
    [v47 setBackgroundColor:v55];

    [v1 addSubview:v47];
LABEL_33:
    v56 = v27[34];
    v27[34] = v47;
    v41 = v47;

    v39 = 0;
    goto LABEL_34;
  }

  result = sub_14531C();
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_16:
  v44 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    if ((v42 & 0xC000000000000001) != 0)
    {

      v45 = sub_1451FC();
    }

    else
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      if (v44 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_68;
      }

      v45 = *(v42 + 8 * v44 + 32);
    }

    swift_beginAccess();
    v46 = *&v1[v16];
    if (v46 >> 62)
    {
      result = sub_14531C();
      if (!result)
      {
        goto LABEL_67;
      }
    }

    else
    {
      result = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        goto LABEL_67;
      }
    }

    v47 = v45;
    v48 = sub_5541C();
    if (!v48)
    {
      v49 = *&v1[v16];
      if (v49 >> 62)
      {
        v69 = sub_14531C();
        v51 = __OFSUB__(v69, 1);
        v52 = v69 - 1;
        if (v51)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          sub_55B6C(v98);
          v70 = v96;
          goto LABEL_64;
        }
      }

      else
      {
        v50 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
        v51 = __OFSUB__(v50, 1);
        v52 = v50 - 1;
        if (v51)
        {
          goto LABEL_61;
        }
      }

      v48 = sub_9DFE4(v52);
    }

    swift_endAccess();
    goto LABEL_33;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

Swift::Int sub_52604()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_14545C();
  sub_55398(v1, v2, v3, v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  sub_14549C(*&v6);
  return sub_1454AC();
}

void sub_52690()
{
  v1 = v0[4];
  sub_55398(*v0, v0[1], v0[2], v0[3]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_14549C(*&v2);
}

Swift::Int sub_526E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_14545C();
  sub_55398(v1, v2, v3, v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  sub_14549C(*&v6);
  return sub_1454AC();
}

uint64_t sub_52768(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_527A8(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_indexedComponents;
  v23 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_recycledTextDrawingViews;

  v24 = v8;
  swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
    v11 = v7;
LABEL_11:
    v7 = (v11 - 1) & v11;
    v13 = *(v2 + v24);
    if (*(v13 + 16))
    {
      v14 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_F7CB0(v15, v16);
      v19 = v18;

      if (v19)
      {
        v20 = *(*(v13 + 56) + 8 * v17);

        v21 = *(v20 + 272);
        if (v21)
        {
          *(v20 + 272) = 0;
          [v21 setHidden:1];
          swift_beginAccess();
          v22 = v21;
          sub_1449BC();
          if (*(&dword_10 + (*(v2 + v23) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v2 + v23) & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_1449FC();
          }

          sub_144A2C();
          swift_endAccess();
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v11 = *(v4 + 8 * v12);
    ++v9;
    if (v11)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_529D4(uint64_t isEscapingClosureAtFileLocation@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v7 = v6;
  v291 = sub_144EDC();
  v14 = *(v291 - 8);
  __chkstk_darwin(v291);
  v290 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3150);
  __chkstk_darwin(v16 - 8);
  v296 = &v283 - v17;
  v18 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
  swift_beginAccess();
  v19 = *(v6 + v18);
  v402[0] = a2;
  v294 = a3;
  v295 = a5;
  v402[1] = a3;
  v311 = a4;
  v402[2] = a4;
  v402[3] = a5;
  v298 = a6;
  v402[4] = a6;
  if (*(v19 + 16))
  {

    v20 = sub_F7E8C(v402);
    if (v21)
    {
      v22 = (*(v19 + 56) + (v20 << 6));
      v24 = v22[2];
      v23 = v22[3];
      v25 = v22[1];
      v349 = *v22;
      v350 = v25;
      v351 = v24;
      v352 = v23;
      sub_55A10(&v349, &v338);

      v27 = *(&v349 + 1);
      v26 = v349;
      v29 = *(&v350 + 1);
      v28 = *&v350;
      v31 = *(&v351 + 1);
      v30 = *&v351;
      v32 = *(&v352 + 1);
      v33 = *&v352;
      goto LABEL_95;
    }
  }

  v33 = 0.0;
  if (!*(v7 + OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache))
  {
    v36 = 0;
    v32 = 0.0;
    v26 = _swiftEmptyArrayStorage;
    goto LABEL_67;
  }

  sub_42908(&v386);
  v34 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_orderedComponents;
  swift_beginAccess();
  v299 = *(v7 + v34);
  if (v299 >> 62)
  {
    goto LABEL_104;
  }

  v35 = *(&dword_10 + (v299 & 0xFFFFFFFFFFFFFF8));
LABEL_8:
  v285 = v7;
  v286 = isEscapingClosureAtFileLocation;
  v284 = v18;
  v307 = a2;
  if (!v35)
  {
    v382 = v390;
    v383 = v391;
    v384 = v392;
    v385 = v393;
    v378 = v386;
    v379 = v387;
    v380 = v388;
    v381 = v389;

    v36 = 0;
    v37 = 0;
    v32 = 0.0;
    v26 = _swiftEmptyArrayStorage;
    v115 = _swiftEmptyArrayStorage[2];
    if (!v115)
    {
      goto LABEL_66;
    }

LABEL_60:
    v315 = v26;
    v116 = *(v7 + OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_verticalAlignment);
    if (*(v7 + OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_verticalAlignment))
    {
      v117 = v315;
      v118 = &v315[176 * v115];
      if (v116 != 1)
      {
        v244 = *(v118 - 9);
        v245 = *(v118 - 7);
        v350 = *(v118 - 8);
        v351 = v245;
        v349 = v244;
        v246 = *(v118 - 6);
        v247 = *(v118 - 5);
        v248 = *(v118 - 3);
        v354 = *(v118 - 4);
        v355 = v248;
        v352 = v246;
        v353 = v247;
        v249 = *(v118 - 2);
        v250 = *(v118 - 1);
        v251 = *(v118 + 1);
        v357 = *v118;
        v358 = v251;
        v356[0] = v249;
        v356[1] = v250;
        v252 = v357;
        v253 = v251;
        v254 = v349;

        sub_55960(&v349, &v338);
        v433.origin.x = a2;
        v433.origin.y = v294;
        v433.size.height = v295;
        v433.size.width = v311;
        MaxY = CGRectGetMaxY(v433);
        v257 = *(&v252 + 1);
        v256 = v252;
        height = v253.height;
        width = v253.width;
        v260 = MaxY - CGRectGetMaxY(*&v256);
        v262 = *(v254 + 64);
        v261 = *(v254 + 80);
        v263 = *(v254 + 112);
        v321 = *(v254 + 96);
        v322 = v263;
        v319 = v262;
        v320 = v261;
        v264 = *(v254 + 48);
        v317 = *(v254 + 32);
        v318 = v264;
        v265 = *(v254 + 136);
        if ((BYTE3(v261) & 0x80) != 0)
        {
          v273 = v318;
          v274 = *(v254 + 128);

          sub_9724(&v317, &v338);

          v275 = v273(v274, v265);
          v276 = [v275 MTMPU_tallestFontFromAttributes];

          if (v276)
          {
            [v276 _scaledValueForValue:*(&v322 + 1)];
            v278 = v277;
            v279 = v276;
            [v279 descender];
            v281 = v280;

            sub_55998(&v349);

            sub_9780(&v317);
            v282 = v278 + v281;
          }

          else
          {

            sub_55998(&v349);

            sub_9780(&v317);
            v282 = *(&v322 + 1) + 0.0;
          }

          v131 = v260 - v282;
          v117 = v315;
        }

        else
        {
          v266 = v317;
          v267 = *(&v322 + 1);

          sub_9724(&v317, &v338);
          v268 = v266;
          [v268 scaledValueForValue:v267];
          v270 = v269;
          [v268 preferredFontDescender];
          v272 = v271;

          sub_55998(&v349);

          sub_9780(&v317);
          v131 = v260 - (v270 + v272);
        }

        goto LABEL_70;
      }

      v119 = *(v118 - 9);
      v120 = *(v118 - 7);
      v350 = *(v118 - 8);
      v351 = v120;
      v349 = v119;
      v121 = *(v118 - 6);
      v122 = *(v118 - 5);
      v123 = *(v118 - 3);
      v354 = *(v118 - 4);
      v355 = v123;
      v352 = v121;
      v353 = v122;
      v124 = *(v118 - 2);
      v125 = *(v118 - 1);
      v126 = *(v118 + 1);
      v357 = *v118;
      v358 = v126;
      v356[0] = v124;
      v356[1] = v125;
      v128 = *(&v357 + 1);
      v127 = *&v357;
      v129 = v126;
      sub_55960(&v349, &v338);
      v422.origin.x = a2;
      v422.origin.y = v294;
      v422.size.height = v295;
      v422.size.width = v311;
      CGRectGetMaxY(v422);
      v423.origin.x = v127;
      v423.origin.y = v128;
      v423.size = v129;
      CGRectGetMaxY(v423);
      sub_141ABC();
      v131 = v130;
    }

    else
    {
      v132 = v315;
      v133 = *(v315 + 2);
      v134 = *(v315 + 4);
      v135 = *(v315 + 5);
      v136 = *(v315 + 7);
      v353 = *(v315 + 6);
      v354 = v136;
      v351 = v134;
      v352 = v135;
      v137 = *(v315 + 8);
      v138 = *(v315 + 9);
      v139 = *(v315 + 12);
      v140 = *(v315 + 10);
      v357 = *(v315 + 11);
      v358 = v139;
      v356[0] = v138;
      v356[1] = v140;
      v355 = v137;
      v141 = *(v315 + 3);
      v349 = v133;
      v350 = v141;
      v142 = v133;
      v144 = *(v133 + 64);
      v143 = *(v133 + 80);
      v145 = *(v142 + 96);
      v375 = *(v142 + 112);
      v374 = v145;
      v372 = v144;
      v373 = v143;
      v146 = *(v142 + 48);
      v370 = *(v142 + 32);
      v371 = v146;
      v147 = *(v142 + 128);
      v148 = *(v142 + 136);
      sub_55960(&v349, &v338);

      sub_9724(&v370, &v338);

      sub_CCEF0(v147, v148);
      v117 = v132;

      sub_9780(&v370);
      sub_141ACC();
      v131 = v149;
    }

    sub_55998(&v349);
LABEL_70:
    v316 = v32;
    v313 = v36;
    v314 = v37;
    v150 = *(v117 + 2);
    v310 = v150;
    if (v150 == 0.0)
    {
      v26 = _swiftEmptyArrayStorage;
      v29 = 0.0;
LABEL_87:
      v185 = *(v26 + 2);
      v28 = 0.0;
      v31 = 0.0;
      v27 = 0.0;
      v7 = v285;
      isEscapingClosureAtFileLocation = v286;
      v18 = v284;
      v36 = v313;
      v32 = v316;
      v33 = 0.0;
      if (v185)
      {
        v186 = *(v26 + 18);
        MinY = CGRectGetMinY(*(v26 + 176));
        if (v185 > *(v26 + 2))
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          return;
        }

        v312 = v186 + MinY;
        v188 = &v26[176 * v185];
        v189 = *(v188 - 9);
        v190 = *(v188 - 7);
        v350 = *(v188 - 8);
        v351 = v190;
        v349 = v189;
        v191 = *(v188 - 6);
        v192 = *(v188 - 5);
        v193 = *(v188 - 3);
        v354 = *(v188 - 4);
        v355 = v193;
        v352 = v191;
        v353 = v192;
        v194 = *(v188 - 2);
        v195 = *(v188 - 1);
        v196 = *(v188 + 1);
        v357 = *v188;
        v358 = v196;
        v356[0] = v194;
        v356[1] = v195;
        v309 = *(&v357 + 1);
        v198 = v196.height;
        v197 = v196.width;
        v199 = *&v357;
        v200 = *(&v194 + 1);
        sub_55960(&v349, &v338);
        v429.origin.x = a2;
        v429.origin.y = v294;
        v429.size.height = v295;
        v429.size.width = v311;
        v201 = CGRectGetHeight(v429);
        v430.origin.x = v199;
        v31 = v186;
        *&v430.origin.y = v309;
        v430.size.width = v197;
        v430.size.height = v198;
        v33 = v200;
        v202 = CGRectGetMaxY(v430);
        sub_55998(&v349);
        v203 = v201 - v202;
        v27 = v312;
        v28 = v200 + v203;
      }

      if (v310 == 0.0)
      {
        sub_15340(&v378, &qword_1C3158);

        v30 = 0.0;
        goto LABEL_94;
      }

      v311 = v33;
      v312 = v27;
      v310 = v31;
      v204 = *(v315 + 2);
      if (v204)
      {
        v205 = *(v315 + 10);
        v356[0] = *(v315 + 9);
        v356[1] = v205;
        v206 = *(v315 + 12);
        v357 = *(v315 + 11);
        v358 = v206;
        v207 = *(v315 + 6);
        v352 = *(v315 + 5);
        v353 = v207;
        v208 = *(v315 + 8);
        v354 = *(v315 + 7);
        v355 = v208;
        v209 = *(v315 + 3);
        v349 = *(v315 + 2);
        v350 = v209;
        v351 = *(v315 + 4);
        v306 = v358.width;
        v307 = *(&v357 + 1);
        v210 = v358.height;
        v211 = v349;
        v212 = *&v357;
        v308 = *v356;
        v213 = &v315[176 * v204 + 32];
        v215 = *(v213 - 160);
        v214 = *(v213 - 144);
        v338 = *(v213 - 176);
        v339 = v215;
        v340 = v214;
        v216 = *(v213 - 80);
        v218 = *(v213 - 128);
        v217 = *(v213 - 112);
        v343 = *(v213 - 96);
        v344 = v216;
        v341 = v218;
        v342 = v217;
        v219 = *(v213 - 16);
        v221 = *(v213 - 64);
        v220 = *(v213 - 48);
        v347 = *(v213 - 32);
        v348 = v219;
        v345 = v221;
        v346 = v220;
        y = v347.y;
        v223 = v219;
        v224 = v338;
        x = v347.x;
        v309 = *(&v221 + 1);
        sub_55960(&v349, &v317);
        sub_55960(&v338, &v317);
        v431.origin.x = x;
        v431.origin.y = y;
        v431.size = v223;
        v226 = CGRectGetMaxY(v431);
        v432.origin.x = v212;
        v432.size.width = v306;
        v432.origin.y = v307;
        v432.size.height = v210;
        v227 = v226 - CGRectGetMinY(v432) + 0.0;
        v228 = *(v211 + 64);
        v229 = *(v211 + 80);
        v230 = *(v211 + 112);
        v321 = *(v211 + 96);
        v322 = v230;
        v319 = v228;
        v320 = v229;
        v231 = *(v211 + 48);
        v317 = *(v211 + 32);
        v318 = v231;
        v232 = *(v211 + 128);
        v233 = *(v211 + 136);

        sub_9724(&v317, &v329);

        v234 = sub_CCEF0(v232, v233);

        sub_9780(&v317);
        v235 = v227 + v234 - v308;
        v236 = *(v224 + 64);
        v237 = *(v224 + 80);
        v238 = *(v224 + 112);
        v333 = *(v224 + 96);
        v334 = v238;
        v331 = v236;
        v332 = v237;
        v239 = *(v224 + 48);
        v329 = *(v224 + 32);
        v330 = v239;
        v240 = *(v224 + 128);
        v241 = *(v224 + 136);

        sub_9724(&v329, v367);

        v242 = sub_CCFD8(v240, v241);
        sub_15340(&v378, &qword_1C3158);

        sub_55998(&v349);

        sub_9780(&v329);
        sub_55998(&v338);

        v31 = v310;
        v30 = v235 + v242 - *&v309;
        v7 = v285;
        isEscapingClosureAtFileLocation = v286;
        v18 = v284;
        v32 = v316;
        v33 = v311;
        v27 = v312;
        goto LABEL_94;
      }

      goto LABEL_107;
    }

    v151 = (v117 + 32);
    v26 = _swiftEmptyArrayStorage;
    v29 = 0.0;
    while (1)
    {
      v158 = *v151;
      v159 = v151[2];
      v339 = v151[1];
      v340 = v159;
      v338 = v158;
      v160 = v151[3];
      v161 = v151[4];
      v162 = v151[6];
      v343 = v151[5];
      v344 = v162;
      v341 = v160;
      v342 = v161;
      v163 = v151[7];
      v164 = v151[8];
      v165 = v151[10];
      v347 = v151[9];
      v348 = v165;
      v345 = v163;
      v346 = v164;
      v166 = v347;
      v167 = v165;
      sub_55960(&v338, &v349);
      v425.origin = v166;
      v425.size = v167;
      MinX = CGRectGetMinX(v425);
      v426.origin = v166;
      v426.size = v167;
      v169 = CGRectGetMinY(v426);
      v335 = v344;
      v336 = v345;
      v337 = v346;
      v331 = v340;
      v332 = v341;
      v333 = v342;
      v334 = v343;
      v329 = v338;
      v330 = v339;
      v355 = v344;
      v356[0] = v345;
      v356[1] = v346;
      v351 = v340;
      v352 = v341;
      v353 = v342;
      v354 = v343;
      v170 = v131 + v169;
      v349 = v338;
      v350 = v339;
      *&v357 = MinX;
      *(&v357 + 1) = v131 + v169;
      v358 = v167;
      sub_55960(&v338, &v317);
      sub_55960(&v349, &v317);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_134688(0, *(v26 + 2) + 1, 1, v26);
      }

      v172 = *(v26 + 2);
      v171 = *(v26 + 3);
      if (v172 >= v171 >> 1)
      {
        v26 = sub_134688((v171 > 1), v172 + 1, 1, v26);
      }

      v173 = BYTE8(v338);
      *(v26 + 2) = v172 + 1;
      v174 = &v26[176 * v172];
      v175 = v355;
      v177 = v352;
      v176 = v353;
      *(v174 + 7) = v354;
      *(v174 + 8) = v175;
      *(v174 + 5) = v177;
      *(v174 + 6) = v176;
      v178 = v358;
      v180 = v356[0];
      v179 = v356[1];
      *(v174 + 11) = v357;
      *(v174 + 12) = v178;
      *(v174 + 9) = v180;
      *(v174 + 10) = v179;
      v181 = v349;
      v182 = v351;
      *(v174 + 3) = v350;
      *(v174 + 4) = v182;
      *(v174 + 2) = v181;
      v183 = 1 << v173;
      if ((v183 & 0x15) != 0)
      {
        v424.origin.x = MinX;
        v424.origin.y = v170;
        v424.size = v167;
        CGRectGetMaxX(v424);
        v152 = a2;
        v153 = v294;
        v154 = v295;
        v155 = v311;
      }

      else
      {
        if ((v183 & 0x22) == 0)
        {
          v428.origin.x = MinX;
          v428.origin.y = v170;
          v428.size = v167;
          v184 = CGRectGetWidth(v428);
          sub_55998(&v338);
          v323 = v335;
          v324 = v336;
          v325 = v337;
          v319 = v331;
          v320 = v332;
          v321 = v333;
          v322 = v334;
          v317 = v329;
          v318 = v330;
          v326 = MinX;
          v327 = v170;
          v328 = v167;
          sub_55998(&v317);
          if (v29 <= v184)
          {
            v29 = v184;
          }

          goto LABEL_75;
        }

        v427.origin.x = a2;
        v427.origin.y = v294;
        v427.size.height = v295;
        v427.size.width = v311;
        CGRectGetMaxX(v427);
        v152 = MinX;
        v153 = v170;
        v154 = v167.height;
        v155 = v167.width;
      }

      v156 = CGRectGetMinX(*&v152);
      sub_55998(&v338);
      v323 = v335;
      v324 = v336;
      v325 = v337;
      v319 = v331;
      v320 = v332;
      v321 = v333;
      v322 = v334;
      v317 = v329;
      v318 = v330;
      v326 = MinX;
      v327 = v170;
      v328 = v167;
      sub_55998(&v317);
      v157 = v166.y - v156;
      a2 = v307;
      if (v29 <= v157)
      {
        v29 = v157;
      }

LABEL_75:
      v151 += 11;
      --*&v150;
      if (v150 == 0.0)
      {
        goto LABEL_87;
      }
    }
  }

  v304 = v35 - 1;
  if (v35 < 1)
  {
    __break(1u);
    goto LABEL_106;
  }

  v303 = v7 + OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_exclusionRectangle;
  v18 = v299;
  v305 = v299 & 0xC000000000000001;
  v342 = v390;
  v343 = v391;
  v344 = v392;
  v345 = v393;
  v338 = v386;
  v339 = v387;
  v340 = v388;
  v341 = v389;
  v287 = (v14 + 8);
  v293 = (&v349 + 7);
  v288 = NSParagraphStyleAttributeName;
  v289 = &v350;

  v36 = 0;
  v37 = 0;
  v32 = 0.0;
  v308 = 0.0;
  v38 = 0.0;
  v39 = _swiftEmptyArrayStorage;
  v40 = 0.0;
  v310 = 0.0;
  v41 = 0.0;
  v42 = v294;
  v43 = v295;
  while (1)
  {
    v313 = v36;
    v314 = v37;
    v315 = v39;
    v312 = v38;
    if (v305)
    {
      v14 = sub_1451FC();
    }

    else
    {
      v14 = *(v18 + 8 * *&v38 + 32);
    }

    v44 = *(v14 + 48);
    v403 = *(v14 + 32);
    v404 = v44;
    v45 = *(v14 + 80);
    v405 = *(v14 + 64);
    v406 = v45;
    v46 = *(v14 + 112);
    v407 = *(v14 + 96);
    v408 = v46;
    v309 = *&v403;
    v48 = BYTE8(v404);
    v47 = v404;
    v49 = v45;
    isEscapingClosureAtFileLocation = *(v14 + 128);
    v7 = *(v14 + 136);
    v316 = v43;
    if ((v49 & ~(v49 >> 31)) != 0)
    {
      *&v317 = isEscapingClosureAtFileLocation;
      *(&v317 + 1) = v7;
      if ((v45 & ~(v45 >> 31)) == 1)
      {
        sub_9724(&v403, &v349);
        sub_9724(&v403, &v349);

        v50 = v296;
        sub_140ADC();
        v51 = sub_140AEC();
        (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
        sub_9CCC();
        v52 = sub_1450FC();
      }

      else
      {
        sub_9724(&v403, &v349);
        sub_9724(&v403, &v349);

        v50 = v296;
        sub_140ADC();
        v54 = sub_140AEC();
        (*(*(v54 - 8) + 56))(v50, 0, 1, v54);
        sub_9CCC();
        v52 = sub_1450EC();
      }

      isEscapingClosureAtFileLocation = v52;
      v55 = v53;
      sub_15340(v50, &qword_1C3150);

      v7 = v55;
      v18 = v299;
    }

    else
    {
      sub_9724(&v403, &v349);
      sub_9724(&v403, &v349);
    }

    v56 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v56 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFLL;
    }

    if (!v56)
    {
      sub_9780(&v403);

      sub_9780(&v403);

      v321 = v342;
      v322 = v343;
      v323 = v344;
      v324 = v345;
      v317 = v338;
      v318 = v339;
      v319 = v340;
      v320 = v341;
      v36 = v313;
      v37 = v314;
      v39 = v315;
      v43 = v316;
      goto LABEL_57;
    }

    v300 = v41;
    v301 = v33;
    v302 = v40;
    v57 = v311;
    v58 = v311;
    v59 = a2;
    if ((*(v303 + 32) & 1) == 0)
    {
      v60 = *(v303 + 16);
      v61 = *(v303 + 24);
      v63 = *v303;
      v62 = *(v303 + 8);
      v409.origin.x = *v303;
      v409.origin.y = v62;
      v409.size.width = v60;
      v409.size.height = v61;
      v434.origin.x = a2;
      v434.origin.y = v42;
      v434.size.width = v311;
      v434.size.height = v316;
      v410 = CGRectIntersection(v409, v434);
      IsNull = CGRectIsNull(v410);
      v58 = v57;
      v59 = a2;
      if (!IsNull)
      {
        v411.origin.x = v63;
        v411.origin.y = v62;
        v411.size.width = v60;
        v411.size.height = v61;
        v292 = CGRectGetMinX(v411);
        v412.origin.x = a2;
        v412.origin.y = v42;
        v412.size.width = v57;
        v65 = v42;
        v66 = v316;
        v412.size.height = v316;
        v67 = CGRectGetMinX(v412);
        v306 = v61;
        v68 = v292 - v67;
        v413.origin.x = a2;
        v413.origin.y = v65;
        v413.size.width = v57;
        v413.size.height = v66;
        v42 = v65;
        MaxX = CGRectGetMaxX(v413);
        v414.origin.x = v63;
        v414.origin.y = v62;
        v414.size.width = v60;
        v414.size.height = v306;
        v70 = MaxX - CGRectGetMaxX(v414);
        v58 = v68;
        v59 = a2;
        if (v70 >= v68)
        {
          v415.origin.x = a2;
          v415.origin.y = v42;
          v415.size.width = v57;
          v415.size.height = v316;
          v59 = CGRectGetWidth(v415) - v70 + a2;
          v58 = v70;
        }
      }
    }

    v306 = v59;
    if (v49 < 0)
    {

      v75 = v47(isEscapingClosureAtFileLocation, v7);
      v76 = [v75 MTMPU_tallestFontFromAttributes];

      a2 = v307;
      v74 = v316;
      if (v76)
      {
        [v76 _scaledValueForValue:*&v408];
        v77 = v76;
        [v77 ascender];
        v33 = v78;
      }

      else
      {

        v33 = 0.0;
      }

      v37 = v314;
    }

    else
    {
      v71 = *&v408;
      sub_9724(&v403, &v349);
      v72 = v309;
      [v72 scaledValueForValue:v71];
      [v72 preferredFontAscender];
      v33 = v73;

      sub_9780(&v403);
      v37 = v314;
      a2 = v307;
      v74 = v316;
    }

    v79 = v308;
    sub_141ABC();
    v81 = v80;
    v333 = v342;
    v334 = v343;
    v335 = v344;
    v336 = v345;
    v329 = v338;
    v330 = v339;
    v331 = v340;
    v332 = v341;
    if (sub_55948(&v329) == 1)
    {
      v82 = v74;
    }

    else
    {
      v82 = v74 + *(&v335 + 1) - v81;
    }

    sub_7B60(isEscapingClosureAtFileLocation, v7, &v403, &v394, v58, v82);
    v374 = v398;
    v375 = v399;
    v376 = v400;
    v377 = v401;
    v370 = v394;
    v371 = v395;
    v372 = v396;
    v373 = v397;
    sub_9780(&v403);

    v83 = __OFADD__(*&v79, v401);
    *&v32 = *&v79 + v401;
    if (v83)
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v35 = sub_14531C();
      goto LABEL_8;
    }

    if (v49 < 0)
    {
      LOBYTE(v367[0]) = 0;
      if (BYTE8(v395))
      {
        *&v18 = v32;
        v84 = v394;
        v7 = [v394 length];
        v85 = swift_allocObject();
        *(v85 + 16) = v367;
        sub_2173C(v313);
        v86 = swift_allocObject();
        *(v86 + 16) = sub_559D8;
        *(v86 + 24) = v85;
        *&v351 = sub_559F0;
        *(&v351 + 1) = v86;
        *&v349 = _NSConcreteStackBlock;
        *(&v349 + 1) = 1107296256;
        *&v350 = sub_11D5F0;
        *(&v350 + 1) = &block_descriptor_3;
        v87 = _Block_copy(&v349);

        [v84 enumerateAttribute:v288 inRange:0 options:v7 usingBlock:{0, v87}];
        _Block_release(v87);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_103;
        }

        v36 = sub_559D8;
        v48 = v367[0];
        v37 = v85;
        v39 = v315;
        v32 = *&v18;
        v18 = v299;
        goto LABEL_44;
      }

      v48 = 0;
    }

    v36 = v313;
    v39 = v315;
LABEL_44:
    v41 = *(&v397 + 1);
    v33 = *&v397;
    if (((1 << v48) & 0x15) != 0)
    {
      v416.origin.x = v306;
      v416.origin.y = v42;
      v416.size.width = v58;
      v416.size.height = v74;
      v40 = CGRectGetMinX(v416);
    }

    else if (((1 << v48) & 0x22) != 0)
    {
      v417.origin.x = v306;
      v417.origin.y = v42;
      v417.size.width = v58;
      v417.size.height = v74;
      v88 = CGRectGetMaxX(v417);
      v418.origin.x = 0.0;
      v418.origin.y = 0.0;
      v418.size.width = v33;
      v418.size.height = v41;
      v40 = v88 - CGRectGetWidth(v418);
    }

    else
    {
      v89 = v290;
      sub_144EAC();
      sub_144EEC();
      v40 = v90;
      v33 = v91;
      v41 = v92;
      (*v287)(v89, v291);
    }

    v367[4] = v342;
    v367[5] = v343;
    v368 = v344;
    v369 = v345;
    v367[0] = v338;
    v367[1] = v339;
    v367[2] = v340;
    v367[3] = v341;
    v93 = a2;
    if (sub_55948(v367) == 1)
    {
      v419.origin.x = a2;
      v94 = v42;
      v419.origin.y = v42;
      v419.size.width = v311;
      v419.size.height = v74;
      v310 = CGRectGetMinY(v419);
      v95 = 0.0;
    }

    else
    {
      v94 = v42;
      v353 = v342;
      v354 = v343;
      v355 = v344;
      v356[0] = v345;
      v349 = v338;
      v350 = v339;
      v351 = v340;
      v352 = v341;
      sub_9AD8(&v349, &v359);
      v420.size.width = v301;
      v420.origin.x = v302;
      v420.origin.y = v310;
      v420.size.height = v300;
      v96 = CGRectGetMaxY(v420);
      v421.origin.y = v81 + v96 - *(&v368 + 1);
      v421.origin.x = v40;
      v310 = v421.origin.y;
      v421.size.width = v33;
      v421.size.height = v41;
      v97 = CGRectGetMinY(v421);
      sub_15340(&v338, &qword_1C3158);
      v95 = v97 - v96 + 0.0;
    }

    sub_9AD8(&v394, &v349);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_134688(0, *(v39 + 2) + 1, 1, v39);
    }

    v99 = *(v39 + 2);
    v98 = *(v39 + 3);
    if (v99 >= v98 >> 1)
    {
      v39 = sub_134688((v98 > 1), v99 + 1, 1, v39);
    }

    v100 = v371;
    v101 = v293;
    *v293 = v370;
    v101[1] = v100;
    v102 = v373;
    v101[2] = v372;
    v101[3] = v102;
    v103 = v377;
    v101[6] = v376;
    v101[7] = v103;
    v104 = v375;
    v101[4] = v374;
    v101[5] = v104;
    *(v39 + 2) = v99 + 1;
    v105 = &v39[176 * v99];
    *(v105 + 4) = v14;
    v105[40] = v48;
    *(v105 + 41) = v349;
    v106 = v350;
    v107 = v351;
    v108 = v352;
    *(v105 + 105) = v353;
    *(v105 + 89) = v108;
    *(v105 + 73) = v107;
    *(v105 + 57) = v106;
    v109 = v354;
    v110 = v355;
    v111 = v356[0];
    *(v105 + 21) = *(v356 + 15);
    *(v105 + 153) = v111;
    *(v105 + 137) = v110;
    *(v105 + 121) = v109;
    *&v110 = v310;
    *(v105 + 22) = v40;
    *(v105 + 23) = v110;
    *(v105 + 24) = v33;
    *(v105 + 25) = v41;
    *&v109 = v40;
    *&v111 = v33;
    v112 = v41;
    v113 = CGRectGetHeight(*&v109);
    sub_15340(&v338, &qword_1C3158);
    sub_9780(&v403);

    v114 = v95 + v113;
    v42 = v94 + v95 + v113;
    v43 = v74 - v114;
    v363 = v374;
    v364 = v375;
    v365 = v376;
    v366 = v377;
    v359 = v370;
    v360 = v371;
    v361 = v372;
    v362 = v373;
    UIScreen.Dimensions.size.getter(&v359);
    v321 = v363;
    v322 = v364;
    v323 = v365;
    v324 = v366;
    v317 = v359;
    v318 = v360;
    v308 = v32;
    v319 = v361;
    v320 = v362;
    a2 = v93;
LABEL_57:
    if (v304 == *&v312)
    {
      break;
    }

    v342 = v321;
    v343 = v322;
    v344 = v323;
    v345 = v324;
    v338 = v317;
    v339 = v318;
    *&v38 = *&v312 + 1;
    v340 = v319;
    v341 = v320;
  }

  v382 = v321;
  v383 = v322;
  v384 = v323;
  v385 = v324;
  v378 = v317;
  v379 = v318;
  v380 = v319;
  v381 = v320;
  v26 = v39;
  v7 = v285;
  isEscapingClosureAtFileLocation = v286;
  v18 = v284;
  v33 = 0.0;
  v115 = *(v26 + 2);
  if (v115)
  {
    goto LABEL_60;
  }

LABEL_66:
  sub_15340(&v378, &qword_1C3158);

LABEL_67:
  v31 = 0.0;
  v28 = 0.0;
  v27 = 0.0;
  v30 = 0.0;
  v29 = 0.0;
LABEL_94:
  *&v349 = v26;
  *(&v349 + 1) = v27;
  *&v350 = v28;
  *(&v350 + 1) = v29;
  *&v351 = v30;
  *(&v351 + 1) = v31;
  *&v352 = v33;
  *(&v352 + 1) = v32;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v386 = *(v7 + v18);
  *(v7 + v18) = 0x8000000000000000;
  sub_137EB4(&v349, v402, isUniquelyReferenced_nonNull_native);
  *(v7 + v18) = v386;
  swift_endAccess();

  sub_2173C(v36);
LABEL_95:
  *isEscapingClosureAtFileLocation = v26;
  *(isEscapingClosureAtFileLocation + 8) = v27;
  *(isEscapingClosureAtFileLocation + 16) = v28;
  *(isEscapingClosureAtFileLocation + 24) = v29;
  *(isEscapingClosureAtFileLocation + 32) = v30;
  *(isEscapingClosureAtFileLocation + 40) = v31;
  *(isEscapingClosureAtFileLocation + 48) = v33;
  *(isEscapingClosureAtFileLocation + 56) = v32;
}

void sub_54340(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  sub_48E94(a1, v9);
  if (v10)
  {
    sub_55A48();
    if (swift_dynamicCast())
    {
      v7 = [v8 alignment];
      if (v7 >= 5)
      {
        [v8 alignment];
        *a5 = 0;
      }

      else
      {
        *a5 = 0x2010300uLL >> (8 * v7);
      }

      *a4 = 1;
    }
  }

  else
  {
    sub_15340(v9, &qword_1C2F30);
  }
}

id sub_5441C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = 0;
  v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_verticalAlignment] = 1;
  v9 = &v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_exclusionRectangle];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_orderedComponents] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_indexedComponents;
  *&v4[v10] = sub_13A384(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_recycledTextDrawingViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCacheInvalidationNotificationObserver] = 0;
  v4[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView__isDisabled] = 0;
  v11 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
  *&v4[v11] = sub_13A488(_swiftEmptyArrayStorage);
  v13.receiver = v4;
  v13.super_class = _s9StackViewCMa();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_54554(void *a1)
{
  *&v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = 0;
  v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_verticalAlignment] = 1;
  v3 = &v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_exclusionRectangle];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_isDisabled] = 0;
  *&v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_orderedComponents] = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_indexedComponents;
  *&v1[v4] = sub_13A384(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_recycledTextDrawingViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCacheInvalidationNotificationObserver] = 0;
  v1[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView__isDisabled] = 0;
  v5 = OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_cacheKeyStackViewLayoutMetrics;
  *&v1[v5] = sub_13A488(_swiftEmptyArrayStorage);
  v8.receiver = v1;
  v8.super_class = _s9StackViewCMa();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_54684()
{
  v2.receiver = v0;
  v2.super_class = _s9StackViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_54768()
{
  v1 = *(v0 + 192);
  v35 = *(v0 + 176);
  v36 = v1;
  v2 = *(v0 + 224);
  v37 = *(v0 + 208);
  v38 = v2;
  v3 = *(v0 + 160);
  v33 = *(v0 + 144);
  v34 = v3;
  v4 = *(v0 + 48);
  v39 = *(v0 + 32);
  v40 = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v7 = *(v0 + 112);
  v43 = *(v0 + 96);
  v44 = v7;
  v41 = v5;
  v42 = v6;
  if ((v36 & 0x80000000) == 0)
  {
    v31[0] = v33;
    v31[1] = v34;
    v31[2] = v35;
    v31[3] = v36;
    if ((v42 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

    v32[0] = v39;
    v32[1] = v40;
    v32[2] = v41;
    v32[3] = v42;
    sub_9724(&v39, v30);
    sub_9724(&v33, v30);
    if ((sub_94FA8(v31, v32) & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ((BYTE3(v42) & 0x80) == 0)
  {
    goto LABEL_14;
  }

  if (v33 == v39)
  {
    sub_9724(&v39, v30);
    sub_9724(&v33, v30);
LABEL_9:
    if (v37 == v43 && (sub_141AFC() & 1) != 0)
    {
      v9 = sub_141AFC();
      sub_9780(&v39);
      result = sub_9780(&v33);
      if (v9)
      {
        return result;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = sub_1453BC();
  sub_9724(&v39, v30);
  sub_9724(&v33, v30);
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_9780(&v39);
  sub_9780(&v33);
LABEL_14:
  v11 = *(v0 + 48);
  v12 = *(v0 + 80);
  v26 = *(v0 + 64);
  v13 = v26;
  v27 = v12;
  v14 = *(v0 + 112);
  v16 = *(v0 + 80);
  v28 = *(v0 + 96);
  v15 = v28;
  v29 = v14;
  v17 = *(v0 + 48);
  v25[0] = *(v0 + 32);
  v25[1] = v17;
  v18 = *(v0 + 192);
  v30[2] = *(v0 + 176);
  v30[3] = v18;
  v19 = *(v0 + 224);
  v30[4] = *(v0 + 208);
  v30[5] = v19;
  v20 = *(v0 + 160);
  v30[0] = *(v0 + 144);
  v30[1] = v20;
  *(v0 + 144) = v25[0];
  *(v0 + 160) = v11;
  v21 = *(v0 + 112);
  *(v0 + 208) = v15;
  *(v0 + 224) = v21;
  *(v0 + 176) = v13;
  *(v0 + 192) = v16;
  sub_9724(v25, &v24);
  result = sub_9780(v30);
  v22 = *(v0 + 256);
  if (v22)
  {

    v22(v23);
    return sub_2173C(v22);
  }

  return result;
}

uint64_t sub_54980()
{
  result = v0[30];
  v3 = v0[16];
  v2 = v0[17];
  if (result != v3 || v0[31] != v2)
  {
    result = sub_1453BC();
    if ((result & 1) == 0)
    {
      v0[30] = v3;
      v0[31] = v2;

      v5 = v0[32];
      if (v5)
      {

        v5(v6);

        return sub_2173C(v5);
      }
    }
  }

  return result;
}

void sub_54A28()
{
  sub_14492C();
  v1 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = v1;
  v2 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = v2;
  v3 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = v3;
  if ((v1 & 0x80000000) != 0)
  {
    sub_9724(&v9, v8);
    v4 = sub_14497C();
    sub_14546C(~v4);
  }

  else
  {
    v8[6] = v9;
    v8[7] = v10;
    v8[8] = v11;
    v8[9] = __PAIR128__(*(&v12 + 1), v1);
    sub_9724(&v9, v8);
    sub_950A4();
  }

  sub_14546C(v13);
  sub_14546C(*(&v13 + 1));
  v5 = sub_141ADC();
  sub_14546C(v5);
  v6 = sub_141ADC();
  sub_14546C(v6);
  sub_9780(&v9);

  sub_14492C();

  v7 = *(v0 + 272);
  if (v7)
  {
    v7 = sub_1450DC();
  }

  sub_14546C(v7);
}

uint64_t sub_54B50()
{

  sub_9A08(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  sub_9A08(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  sub_2173C(*(v0 + 256));

  return v0;
}

uint64_t sub_54BB8()
{
  sub_54B50();

  return swift_deallocClassInstance();
}

Swift::Int sub_54C10()
{
  sub_14545C();
  sub_14492C();
  v1 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = v1;
  v2 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = v2;
  v3 = *(v0 + 48);
  v14 = *(v0 + 32);
  v15 = v3;
  if ((v1 & 0x80000000) != 0)
  {
    sub_9724(&v14, v9);
    v4 = sub_14497C();
    sub_14546C(~v4);
  }

  else
  {
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = __PAIR128__(*(&v17 + 1), v1);
    sub_9724(&v14, v9);
    sub_950A4();
  }

  sub_14546C(v18);
  sub_14546C(*(&v18 + 1));
  v5 = sub_141ADC();
  sub_14546C(v5);
  v6 = sub_141ADC();
  sub_14546C(v6);
  sub_9780(&v14);

  sub_14492C();

  v7 = *(v0 + 272);
  if (v7)
  {
    v7 = sub_1450DC();
  }

  sub_14546C(v7);
  return sub_1454AC();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t _s14CapitalizationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14CapitalizationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_54F00()
{
  result = qword_1C3138;
  if (!qword_1C3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3138);
  }

  return result;
}

unint64_t sub_54F58()
{
  result = qword_1C3140;
  if (!qword_1C3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3140);
  }

  return result;
}

Swift::Int sub_54FF4()
{
  sub_14545C();
  sub_54A28();
  return sub_1454AC();
}

unint64_t sub_55044()
{
  result = qword_1C3148;
  if (!qword_1C3148)
  {
    _s9StackViewC9ComponentCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3148);
  }

  return result;
}

uint64_t sub_55098(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_14545C();
  sub_14492C();
  v6 = sub_1454AC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1453BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_FDFB8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_551D4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_551D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_14516C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_14545C();

        sub_14492C();
        v10 = sub_1454AC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_55398(double a1, double a2, double a3, double a4)
{
  v10 = CGRectStandardize(*&a1);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v10.origin.x == 0.0)
  {
    v10.origin.x = 0.0;
  }

  sub_14549C(*&v10.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  sub_14549C(*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  sub_14549C(*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  sub_14549C(*&v9);
}

uint64_t sub_5541C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_9F0A4(v1);
    v1 = result;
  }

  v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    v4 = v3 - 1;
    result = *(&stru_20.cmd + 8 * v4 + (v1 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_55480(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v23 = v2;
  v24 = v3;
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v6 || (sub_1453BC()) && (v7 = *(a1 + 80), v21[2] = *(a1 + 64), v21[3] = v7, v8 = *(a1 + 112), v21[4] = *(a1 + 96), v21[5] = v8, v9 = *(a1 + 48), v21[0] = *(a1 + 32), v21[1] = v9, v10 = *(a2 + 80), v22[2] = *(a2 + 64), v22[3] = v10, v11 = *(a2 + 112), v22[4] = *(a2 + 96), v22[5] = v11, v12 = *(a2 + 48), v22[0] = *(a2 + 32), v22[1] = v12, sub_9724(v21, v20), sub_9724(v22, v20), v13 = sub_CD494(v21, v22), sub_9780(v22), sub_9780(v21), (v13))
  {
    if (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136))
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1453BC();
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a1 + 272);
  v17 = *(a2 + 272);
  v18 = (v16 != 0) & v14;
  if (v16 != v17)
  {
    v18 = 0;
  }

  v19 = (v16 == 0) & v14;
  if (v17)
  {
    return v18;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_555B8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_555F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_144DCC();
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_14531C())
  {
    v7 = 0;
    v8 = 0.0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v9 = sub_1451FC();
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }

LABEL_7:
      v11 = v9[5];
      v44 = v9[4];
      v45 = v11;
      v12 = v9[7];
      v46 = v9[6];
      v47 = v12;
      v13 = v9[3];
      v42 = v9[2];
      v43 = v13;
      if ((BYTE3(v11) & 0x80) != 0)
      {
        v16 = v43;
        swift_retain_n();

        v17 = v16(a3, a4);
        v18 = [v17 MTMPU_tallestFontFromAttributes];

        if (v18)
        {
          [v18 _bodyLeading];
          v19 = *(&v47 + 1);
          v20 = v18;
          [v20 _scaledValueForValue:v19];
        }
      }

      else
      {
        v14 = v42;
        sub_9724(&v42, v36);
        v15 = v14;
        [v15 preferredFontBodyLeading];
        [v15 scaledValueForValue:*(&v47 + 1)];
      }

      v21 = v9[4];
      v22 = v9[5];
      v23 = v9[7];
      v40 = v9[6];
      v41 = v23;
      v38 = v21;
      v39 = v22;
      v24 = v9[3];
      *v36 = v9[2];
      v37 = v24;
      v25 = *&v23;
      if ((BYTE3(v39) & 0x80) != 0)
      {
        v27 = v37;
        swift_retain_n();

        v28 = v27(a3, a4);
        v29 = [v28 MTMPU_tallestFontFromAttributes];

        if (v29)
        {
          v30 = v29;
          [v30 _scaledValueForValue:v25];
          sub_9780(v36);
        }

        else
        {
          sub_9780(v36);
        }

        if (v5)
        {
LABEL_15:
          v26 = sub_14531C();
          goto LABEL_21;
        }
      }

      else
      {
        [v36[0] scaledValueForValue:*&v23];
        if (v5)
        {
          goto LABEL_15;
        }
      }

      v26 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_21:
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_28;
      }

      sub_141ACC();
      v32 = v31;
      sub_9780(&v42);

      v8 = v8 + v32;
      ++v7;
      if (v10 == i)
      {
        return v8;
      }
    }

    if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_27;
    }

    v9 = *(a1 + 8 * v7 + 32);

    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return 0.0;
}