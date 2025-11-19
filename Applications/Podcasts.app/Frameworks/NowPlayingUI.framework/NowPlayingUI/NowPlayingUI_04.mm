uint64_t sub_7288C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);

    sub_1D19C(a1, v4, &unk_1C1DA0);
    v7 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_selectedContent;
    swift_beginAccess();
    sub_743BC(v4, v6 + v7);
    swift_endAccess();
    sub_EBF94();

    return sub_15340(v4, &unk_1C1DA0);
  }

  return result;
}

uint64_t sub_729C4()
{
  v0 = sub_14236C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_E882C();
  swift_getKeyPath();
  v13[1] = v7;
  sub_747C0(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel);
  sub_141A4C();

  v8 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_1D19C(v7 + v8, v6, &qword_1C41C8);
  v9 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return sub_7435C(v6, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    v11 = sub_1422AC();
    if (v11)
    {
      v12 = v11;
      v11();
      sub_2173C(v12);
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_72C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_14216C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_1445AC();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4288);
  v9 = swift_task_alloc();
  v5[20] = v9;
  *v9 = v5;
  v9[1] = sub_72DF4;

  return BaseObjectGraph.inject<A>(_:)(v5 + 2, v8, v8);
}

uint64_t sub_72DF4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_73408;
  }

  else
  {
    v2 = sub_72F08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_72F08()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  sub_14212C();
  (*(v2 + 16))(v1, v4, v3);
  sub_14459C();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = swift_task_alloc();
  v0[22] = v7;
  v8 = sub_747C0(&qword_1C4290, &type metadata accessor for EpisodeTimedReferenceLinksIntent);
  *v7 = v0;
  v7[1] = sub_73058;
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v9, v11, v10, v8, v5, v6);
}

uint64_t sub_73058()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_73478, 0, 0);
  }

  else
  {
    v3 = v2[7];
    v2[8] = v3;
    v2[24] = v3;
    v4 = swift_task_alloc();
    v2[25] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4220);
    v6 = sub_1D4A4(&qword_1C4298, &qword_1C4220);
    *v4 = v2;
    v4[1] = sub_73244;
    v7 = v2[13];

    return Sequence<>.align(using:)(v7, v5, v6);
  }
}

uint64_t sub_73244(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_73364, 0, 0);
}

uint64_t sub_73364()
{
  v1 = v0[26];
  v2 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_73408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_73478()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_73508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0);
  v56 = *(v4 - 8);
  v57 = *(v56 + 64);
  __chkstk_darwin(v4 - 8);
  v60 = &v50 - v5;
  v6 = sub_1444EC();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42B0);
  v54 = *(v58 - 8);
  __chkstk_darwin(v58);
  v50 = &v50 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42B8);
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = &v50 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A0);
  __chkstk_darwin(v61);
  v12 = (&v50 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = sub_14243C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v50 - v22;
  v64 = a2;
  if (*(a2 + 16))
  {
    sub_1423CC();
    v24 = sub_14242C();
    v25 = sub_144C5C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v65 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v65);
      _os_log_impl(&dword_0, v24, v25, "%s link data present, observing for elapsed time changes", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    (*(v18 + 8))(v21, v17);
    v28 = [objc_opt_self() mainRunLoop];
    sub_1442BC();

    sub_747C0(&qword_1C42C8, &type metadata accessor for ForegroundTimerPublisher);
    v29 = v52;
    v30 = sub_14261C();
    (*(v51 + 8))(v8, v29);
    v65 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42D0);
    sub_1D4A4(&qword_1C42D8, &qword_1C42D0);
    v31 = v50;
    sub_14274C();

    v32 = v60;
    sub_1D19C(v63, v60, &qword_1C81D0);
    v33 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v34 = (v57 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_74978(v32, v35 + v33);
    *(v35 + v34) = v64;

    v36 = v53;
    v37 = v58;
    sub_14251C();

    (*(v54 + 8))(v31, v37);
    sub_1D4A4(&qword_1C42E0, &qword_1C42B8);
    v38 = v59;
    v39 = sub_14273C();
    (*(v55 + 8))(v36, v38);
  }

  else
  {
    v60 = v14;
    sub_1423CC();
    v40 = sub_14242C();
    v41 = sub_144C5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v65);
      _os_log_impl(&dword_0, v40, v41, "%s no link data, showing upsell only", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    (*(v18 + 8))(v23, v17);
    v44 = v60;
    v45 = COERCE_DOUBLE(sub_141B8C());
    if (v46)
    {
      v45 = 0.0;
    }

    v47 = *(v61 + 48);
    v48 = *(v61 + 64);
    *v12 = v45;
    sub_1D19C(v63, v12 + v47, &qword_1C81D0);
    *(v12 + v48) = v64;

    sub_14264C();
    sub_1D4A4(&qword_1C42E8, &qword_1C42C0);
    v39 = sub_14273C();
    (*(v44 + 8))(v16, v13);
  }

  return v39;
}

uint64_t sub_73DD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *a4 = v7;
  sub_1D19C(a2, a4 + v9, &qword_1C81D0);
  *(a4 + v10) = a3;
}

uint64_t sub_73E64(void *a1, uint64_t a2, const char *a3)
{
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    swift_errorRetain();
    sub_1423CC();
    swift_errorRetain();
    v10 = sub_14242C();
    v11 = sub_144C5C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v17);
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&dword_0, v10, v11, a3, v12, 0x16u);
      sub_15340(v13, &qword_1C2580);

      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_74098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E92FC(a1);
  sub_1D19C(a1, v4, &qword_1C81D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_15340(v4, &qword_1C81D0);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_E9528(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_74244()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return v0;
}

uint64_t sub_7429C()
{
  sub_74244();

  return swift_deallocClassInstance();
}

uint64_t sub_7435C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_743BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_74468()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_744A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_744E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A8);
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_74564(double *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A0);
  return v3(a1 + *(v5 + 48), *(a1 + *(v5 + 64)), v4);
}

uint64_t sub_745CC()
{
  v1 = sub_14216C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + v5);

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_746A4(uint64_t a1)
{
  v4 = *(sub_14216C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_72C74(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_747C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_74808@<X0>(uint64_t a1@<X8>)
{
  if (sub_141D2C())
  {
    result = sub_141B8C();
  }

  else
  {
    result = 0;
    v3 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_7484C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_74978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_749E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_73DD4(a1, v2 + v6, v7, a2);
}

uint64_t sub_74AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4598);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_1D19C(v1 + v9, v8, &qword_1C4598);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0108);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_15340(v8, &qword_1C4598);
  sub_14142C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2698);
  sub_778B4(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID);
  sub_778FC();
  sub_14119C();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_4363C(v6, v1 + v9, &qword_1C4598);
  return swift_endAccess();
}

uint64_t sub_74D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_14243C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426DC();

  if ((v15[15] & 1) == 0)
  {
    sub_1423CC();
    v11 = sub_14242C();
    v12 = sub_144C5C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "[NowPlayingMiniPlayerSublineController]: showing mini player hint.", v13, 2u);
    }

    v14 = (*(v7 + 8))(v9, v6);
    __chkstk_darwin(v14);
    *&v15[-32] = v3;
    *&v15[-24] = a1;
    *&v15[-16] = a2;
    sub_143F1C();
    sub_142B7C();
  }

  return result;
}

uint64_t sub_74FA4()
{
  v0 = sub_14243C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426DC();

  if (v8[15] == 1)
  {
    sub_1423CC();
    v5 = sub_14242C();
    v6 = sub_144C5C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "[NowPlayingMiniPlayerSublineController]: hiding mini player hint.", v7, 2u);
    }

    (*(v1 + 8))(v3, v0);
    sub_143F1C();
    sub_142B7C();
  }

  return result;
}

uint64_t sub_75184@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle;
  swift_beginAccess();
  sub_1D19C(v1 + v9, v8, &qword_1C24A8);
  v10 = sub_1415DC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_15340(v8, &qword_1C24A8);
  if (qword_1BFFC0 != -1)
  {
    swift_once();
  }

  v12 = sub_14142C();
  __swift_project_value_buffer(v12, qword_1D17C0);
  sub_1415CC();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_4363C(v6, v1 + v9, &qword_1C24A8);
  return swift_endAccess();
}

Swift::Int NowPlayingMiniPlayerSublineViewModel.SublineState.hashValue.getter(char a1)
{
  sub_14545C();
  sub_14546C(a1 & 1);
  return sub_1454AC();
}

uint64_t NowPlayingMiniPlayerSublineViewModel.sublineState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_75504@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  return result;
}

uint64_t sub_75588()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t NowPlayingMiniPlayerSublineViewModel.sublineState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.sublineState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1426CC();
  return sub_77A24;
}

uint64_t NowPlayingMiniPlayerSublineViewModel.$sublineState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4300);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8);
  sub_1426BC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.$sublineState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4300);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8);
  sub_1426AC();
  swift_endAccess();
  return sub_77A28;
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.standardSublineText.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1426CC();
  return sub_75B24;
}

uint64_t sub_75B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4318);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310);
  sub_1426BC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.$standardSublineText.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4318);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310);
  sub_1426AC();
  swift_endAccess();
  return sub_75DF8;
}

uint64_t sub_75E60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

double sub_75EE0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_75F98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_76054()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.hintSubscriptionName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1426CC();
  return sub_77A24;
}

void sub_76170(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_761F4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1426AC();
  return swift_endAccess();
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.$hintSubscriptionName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4318);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310);
  sub_1426AC();
  swift_endAccess();
  return sub_77A28;
}

void sub_763E8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1426BC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1426BC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void NowPlayingMiniPlayerSublineViewModel.hash(into:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  sub_14546C(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v1)
  {
    sub_14547C(1u);
    sub_14492C();
  }

  else
  {
    sub_14547C(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v1)
  {
    sub_14547C(1u);
    sub_14492C();
  }

  else
  {
    sub_14547C(0);
  }
}

uint64_t NowPlayingMiniPlayerSublineViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName, v4);
  return v0;
}

uint64_t NowPlayingMiniPlayerSublineViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName, v4);

  return swift_deallocClassInstance();
}

Swift::Int NowPlayingMiniPlayerSublineViewModel.hashValue.getter()
{
  sub_14545C();
  NowPlayingMiniPlayerSublineViewModel.hash(into:)();
  return sub_1454AC();
}

uint64_t sub_76918()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  LOBYTE(v14) = 0;
  sub_14269C();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v14 = 0;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400);
  sub_14269C();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName;
  v14 = 0;
  v15 = 0;
  sub_14269C();
  v11(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_76B18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
  result = sub_1425BC();
  *a1 = result;
  return result;
}

Swift::Int sub_76B64()
{
  sub_14545C();
  NowPlayingMiniPlayerSublineViewModel.hash(into:)();
  return sub_1454AC();
}

Swift::Int sub_76BCC()
{
  sub_14545C();
  (*(**v0 + 248))(v2);
  return sub_1454AC();
}

uint64_t sub_76C2C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  if (!a2)
  {
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!v4 || (v3 == result ? (v5 = v4 == a2) : (v5 = 0), !v5 && (sub_1453BC() & 1) == 0))
  {
LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1426EC();
  }
}

uint64_t sub_76CFC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
    sub_778B4(&qword_1C45B0, type metadata accessor for NowPlayingMiniPlayerSublineViewModel);

    v1 = sub_142B9C();
    *(v0 + 40) = v1;
    *(v0 + 48) = v2;
  }

  return v1;
}

uint64_t sub_76DBC()
{
  swift_getKeyPath();
  if (qword_1BFFC0 != -1)
  {
    swift_once();
  }

  v0 = sub_14142C();
  __swift_project_value_buffer(v0, qword_1D17C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C45A0);
  sub_779D0();
  sub_14183C();
}

uint64_t sub_76E90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426EC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_76F6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_76FDC()
{

  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle, &qword_1C24A8);
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider, &qword_1C4598);

  return swift_deallocClassInstance();
}

uint64_t sub_77088()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1D17C0);
  __swift_project_value_buffer(v0, qword_1D17C0);
  return sub_14143C();
}

uint64_t _s12NowPlayingUI0aB26MiniPlayerSublineViewModelC2eeoiySbAC_ACtFZ_0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v1)
  {
  }

  return 1;
}

unint64_t sub_773D0()
{
  result = qword_1C4328;
  if (!qword_1C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4328);
  }

  return result;
}

void sub_77494()
{
  sub_77588();
  if (v0 <= 0x3F)
  {
    sub_77814(319, &unk_1C4378, &qword_1C1400, &unk_154A50, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_77588()
{
  if (!qword_1C4370)
  {
    v0 = sub_1426FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4370);
    }
  }
}

uint64_t getEnumTagSinglePayload for NowPlayingTransportController.ActiveAccessoryIndicator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_776AC()
{
  sub_777BC();
  if (v0 <= 0x3F)
  {
    sub_77814(319, &unk_1C44F8, &qword_1C0108, &unk_14C910, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_777BC()
{
  if (!qword_1C44F0)
  {
    sub_1415DC();
    v0 = sub_1450CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C44F0);
    }
  }
}

void sub_77814(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_778B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_778FC()
{
  result = qword_1C26A0;
  if (!qword_1C26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C26A0);
  }

  return result;
}

uint64_t sub_77960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_76CFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_7798C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

unint64_t sub_779D0()
{
  result = qword_1C45A8;
  if (!qword_1C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C45A8);
  }

  return result;
}

uint64_t sub_77A30(void *a1, void *a2)
{
  v57 = a1;
  v3 = sub_14243C();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = __chkstk_darwin(v3);
  v5 = __chkstk_darwin(v4);
  v7 = v55 - v6;
  __chkstk_darwin(v5);
  v9 = v55 - v8;
  v10 = sub_141FFC();
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v55 - v17;
  v19 = sub_140A3C();
  v60 = *(v19 - 8);
  __chkstk_darwin(v19);
  v59 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (v21 = sub_144C0C(), (v22 & 1) != 0) || (v23 = v21, (v24 = [a2 priceType]) == 0))
  {
LABEL_11:
    sub_1423CC();
    v38 = a2;
    v39 = sub_14242C();
    v40 = sub_144C3C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v41 = 136315395;
      *(v41 + 4) = sub_ED2A4(0xD000000000000027, 0x8000000000162BD0, &v63);
      *(v41 + 12) = 2113;
      *(v41 + 14) = v38;
      *v42 = a2;
      v44 = v38;
      _os_log_impl(&dword_0, v39, v40, "%s unable to setup alignment controller, missing fields: %{private}@", v41, 0x16u);
      sub_15340(v42, &qword_1C2580);

      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    return (*(v61 + 8))(v7, v62);
  }

  v55[4] = v23;
  v56 = v19;
  v25 = v24;
  v55[3] = sub_1448DC();
  v27 = v26;

  v28 = [a2 transcriptIdentifier];
  if (!v28)
  {

    goto LABEL_11;
  }

  v55[2] = v27;
  v29 = v28;
  v55[0] = sub_1448DC();
  v55[1] = v30;

  v31 = [a2 streamURL];
  if (v31)
  {
    v32 = v31;
    sub_140A2C();

    v33 = v60;
    v34 = *(v60 + 56);
    v35 = v16;
    v36 = 0;
  }

  else
  {
    v33 = v60;
    v34 = *(v60 + 56);
    v35 = v16;
    v36 = 1;
  }

  v37 = v56;
  v34(v35, v36, 1, v56);
  sub_78254(v16, v18);
  if ((*(v33 + 48))(v18, 1, v37) == 1)
  {

    sub_15340(v18, &unk_1C1D50);
    goto LABEL_11;
  }

  (*(v33 + 32))(v59, v18, v37);
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v46 = objc_allocWithZone(AVURLAsset);
  sub_140A1C(v47);
  v49 = v48;
  v50 = [v46 initWithURL:v48 options:0];

  sub_141FEC();
  sub_141F9C();
  (*(v58 + 8))(v12, v10);

  sub_1423CC();
  v51 = sub_14242C();
  v52 = sub_144C3C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_ED2A4(0xD000000000000027, 0x8000000000162BD0, &v63);
    _os_log_impl(&dword_0, v51, v52, "%s setup alignment controller successfully ✅.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  (*(v61 + 8))(v9, v62);
  return (*(v60 + 8))(v59, v37);
}

uint64_t sub_78254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_7833C()
{
  v1 = sub_140DBC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_1C45B8;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  v6 = (v0 + qword_1C45C0);
  *v6 = 0;
  v6[1] = 0;
  (*(v2 + 104))(v4, enum case for EpisodeUpsellBannerView.EpisodeUpsellBannerType.iOSNowPlaying(_:), v1);
  v7 = sub_140DEC();
  sub_140DCC();
  v8 = sub_140DAC();
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v12.super.super.isa = *&v7[qword_1C45B8];
  isa = v12.super.super.isa;
  v16.top = NSDirectionalEdgeInsetsZero.top;
  v16.leading = leading;
  v16.bottom = bottom;
  v16.trailing = trailing;
  sub_144F8C(v12, 0, v16);

  return v7;
}

uint64_t sub_7850C()
{
  v1 = *(v0 + qword_1C45C0);

  return sub_2173C(v1);
}

uint64_t sub_78550(uint64_t a1)
{
  v2 = *(a1 + qword_1C45C0);

  return sub_2173C(v2);
}

uint64_t sub_785BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14236C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_7868C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14236C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_78768()
{
  sub_14236C();
  if (v0 <= 0x3F)
  {
    sub_787EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_787EC()
{
  if (!qword_1C4680)
  {
    sub_14473C();
    v0 = sub_142A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4680);
    }
  }
}

uint64_t sub_78878(uint64_t a1)
{
  sub_1422FC();
  sub_14228C();
  v3 = v2;
  sub_1422CC();
  sub_14230C();
  sub_14233C();
  v4 = sub_1422AC();
  v6 = v5;
  v7 = sub_1422DC();
  if (v3)
  {
    sub_78BDC();
    sub_144B8C();
  }

  sub_140DDC();
  [*(a1 + qword_1C45B8) setImage:v7];

  v8 = (a1 + qword_1C45C0);
  v9 = *(a1 + qword_1C45C0);
  *v8 = v4;
  v8[1] = v6;
  sub_2172C(v4);
  sub_2173C(v9);
  sub_2173C(v4);
}

char *sub_78A00(uint64_t a1, uint64_t a2)
{
  sub_FAA04(*(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8));
  v3 = objc_allocWithZone(type metadata accessor for NowPlayingEpisodeUpsellBannerView(0));
  return sub_7833C();
}

uint64_t sub_78A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_78B98(&qword_1C46B8);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_78AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_78B98(&qword_1C46B8);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_78B54()
{
  sub_78B98(&qword_1C46B8);
  sub_14325C();
  __break(1u);
}

uint64_t sub_78B98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NowPlayingEpisodeUpsellBannerWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_78BDC()
{
  result = qword_1C46C0;
  if (!qword_1C46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C46C0);
  }

  return result;
}

id sub_78C30(id a1)
{
  v2 = v1;
  v3 = a1;
  if ((v1[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] & 1) == 0)
  {
    v48 = OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated;
    v6 = _swiftEmptyArrayStorage;
    v57 = _swiftEmptyArrayStorage;
    v7 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (v7)
    {
      v8 = v7;
      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v10 = v9;
        v6 = sub_1347FC(0, 1, 1, _swiftEmptyArrayStorage);
        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_1347FC((v11 > 1), v12 + 1, 1, v6);
        }

        v6[2] = v12 + 1;
        v13 = &v6[2 * v12];
        v13[4] = v8;
        v13[5] = v10;
        v57 = v6;
      }

      else
      {
      }
    }

    v14 = [v3 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v14)
    {
      v15 = v14;
      swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1347FC(0, v6[2] + 1, 1, v6);
        }

        v19 = v6[2];
        v18 = v6[3];
        if (v19 >= v18 >> 1)
        {
          v6 = sub_1347FC((v18 > 1), v19 + 1, 1, v6);
        }

        v6[2] = v19 + 1;
        v20 = &v6[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v57 = v6;
      }

      else
      {
      }
    }

    v21 = *&v2[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_interaction];
    v22 = v21 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 24))(v21, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
    }

    v26 = sub_9040C(v25);

    sub_A71C8(v26);
    v27 = sub_90548(v57);

    v28 = sub_CCB50(v27, [v2 isReversed]);

    v29 = [v3 isInteractive];
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v28;
    v31[3] = v3;
    v31[4] = v30;

    swift_unknownObjectRetain();
    result = [v2 isReversed];
    if (result)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      *(v32 + 24) = v29;
      *(v32 + 32) = sub_7B8A8;
      *(v32 + 40) = v31;
      v54 = sub_7B8F4;
      v55 = v32;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_11D5C0;
      v53 = &block_descriptor_94;
      v33 = _Block_copy(&aBlock);

      [v2 setNoninteractiveAnimations:v33];
      _Block_release(v33);
      v34 = swift_allocObject();
      *(v34 + 16) = sub_7B8A8;
      *(v34 + 24) = v31;
      v54 = sub_7B904;
      v55 = v34;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_4D7D0;
      v53 = &block_descriptor_100;
      v35 = _Block_copy(&aBlock);

      [v2 setNoninteractiveCompletion:v35];
      _Block_release(v35);
LABEL_47:
      v45 = type metadata accessor for NowPlayingFormSheetAnimationController();
      v56.receiver = v2;
      v56.super_class = v45;
      v46 = objc_msgSendSuper2(&v56, "interruptibleAnimatorForTransition:", v3);

      return v46;
    }

    v47 = v3;
    if (v28 >> 62)
    {
      result = sub_14531C();
      v36 = result;
      if (result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v36 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      if (v36)
      {
LABEL_26:
        if (v36 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; v36 != i; ++i)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v38 = sub_1451FC();
            v39 = v38[5];
            if (v39)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v38 = *(v28 + 8 * i + 32);

            v39 = v38[5];
            if (v39)
            {
LABEL_34:
              v40 = v39[9];
              if (v40)
              {

                sub_2172C(v40);
                v40(v38);
                sub_2173C(v40);
                v41 = v38[6];
                if (v41)
                {
                  goto LABEL_36;
                }
              }

              else
              {

                v41 = v38[6];
                if (v41)
                {
LABEL_36:

                  v41(v39);
                  sub_2173C(v41);
                }
              }

              v42 = v39[7];
              if (v42)
              {

                v42(v38);
                sub_2173C(v42);
              }

              v43 = v38[8];
              if (v43)
              {

                v43(1, v39);
                sub_2173C(v43);
              }

              v44 = v39[11];
              if (v44)
              {

                v44(1, v38);
                sub_2173C(v44);
              }
            }
          }
        }
      }
    }

    v3 = v47;
    v2[v48] = 1;
    goto LABEL_47;
  }

  v49.receiver = v1;
  v49.super_class = type metadata accessor for NowPlayingFormSheetAnimationController();
  v4 = objc_msgSendSuper2(&v49, "interruptibleAnimatorForTransition:", v3);

  return v4;
}

id sub_79308(id result, unint64_t a2, void *a3)
{
  v3 = a2;
  v4 = result;
  if (a2 >> 62)
  {
LABEL_29:
    result = sub_14531C();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }
  }

  v6 = v3 & 0xC000000000000001;
  swift_beginAccess();
  v7 = 0;
  v31 = v3 & 0xFFFFFFFFFFFFFF8;
  v30 = v3;
  while (1)
  {
    if (v6)
    {
      v8 = sub_1451FC();
      v9 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v7 >= *(v31 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v3 + 8 * v7 + 32);

      v9 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v10 = *(v8 + 40);
    if (v10)
    {
      break;
    }

LABEL_5:

    ++v7;
    if (v9 == v5)
    {
      return result;
    }
  }

  if ((v4 & 1) == 0)
  {
LABEL_23:
    v28 = *(v8 + 64);
    if (v28)
    {

      v28(v4 & 1, v10);
      sub_2173C(v28);
    }

    v29 = *(v10 + 88);
    if (v29)
    {

      v29(v4 & 1, v8);
      sub_2173C(v29);
    }

    goto LABEL_5;
  }

  v11 = v5;
  v12 = [a3 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v13 = v12;
  if (!v12)
  {
LABEL_19:
    v26 = *(v10 + 56);
    if (v26)
    {

      v26(v8);
      sub_2173C(v26);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    v5 = v11;
    v3 = v30;
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] = 1;
    }

    goto LABEL_23;
  }

  result = [v12 view];
  if (result)
  {
    v14 = result;
    v15 = [result snapshotViewAfterScreenUpdates:0];

    if (v15)
    {
      result = [v13 view];
      if (!result)
      {
        goto LABEL_32;
      }

      v16 = result;
      [result addSubview:v15];

      v17 = [a3 containerView];
      [v17 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [v15 setFrame:{v19, v21, v23, v25}];
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_79624(unint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (result >> 62)
  {
LABEL_23:
    result = sub_14531C();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return result;
    }
  }

  if (v6 >= 1)
  {
    v22 = 0;
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v18 = v5 & 0xC000000000000001;
    v19 = v6;
    while (1)
    {
      if (v8)
      {
        v9 = sub_1451FC();
        v10 = *(v9 + 40);
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);

        v10 = *(v9 + 40);
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      v11 = *(v10 + 72);
      if (v11)
      {
        break;
      }

      v12 = *(v9 + 48);
      if (v12)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (a2)
      {

LABEL_6:

        goto LABEL_7;
      }

      v13 = v5;
      v14 = a2;
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;

      sub_2173C(v22);
      v17 = swift_allocObject();
      v22 = sub_7B964;
      *(v17 + 16) = sub_7B964;
      *(v17 + 24) = v16;
      aBlock[4] = sub_7B9E4;
      v24 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_D78F4;
      aBlock[3] = &block_descriptor_110;
      a2 = _Block_copy(aBlock);
      v5 = v24;

      [v15 performWithoutAnimation:a2];

      _Block_release(a2);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
        goto LABEL_23;
      }

      a2 = v14;
      v5 = v13;
      v8 = v18;
      v6 = v19;
LABEL_7:
      if (v6 == ++v7)
      {
        return sub_2173C(v22);
      }
    }

    sub_2172C(v11);
    v11(v9);
    sub_2173C(v11);
    v12 = *(v9 + 48);
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_14:

    v12(v10);
    sub_2173C(v12);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_79990(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_completionBlocks);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result & 1;

    v5 = v2 + 40;
    do
    {
      v6 = *(v5 - 8);
      v7 = v4;

      v6(&v7);

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

id sub_79B50(void *a1)
{
  v2 = v1;
  v4 = [v1 isReversed];
  v5 = &UITransitionContextToViewKey;
  if (v4)
  {
    v5 = &UITransitionContextFromViewKey;
  }

  result = [a1 viewForKey:*v5];
  if (result)
  {
    v7 = result;
    v8 = _swiftEmptyArrayStorage;
    v53 = _swiftEmptyArrayStorage;
    v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      if (v11)
      {
        v12 = v11;
        v8 = sub_1347FC(0, 1, 1, _swiftEmptyArrayStorage);
        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1347FC((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        v53 = v8;
      }

      else
      {
      }
    }

    v16 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v16)
    {
      v17 = v16;
      swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        v19 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1347FC(0, v8[2] + 1, 1, v8);
        }

        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_1347FC((v20 > 1), v21 + 1, 1, v8);
        }

        v8[2] = v21 + 1;
        v22 = &v8[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v53 = v8;
      }

      else
      {
      }
    }

    v23 = *&v2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_interaction];
    v24 = v23 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v27 = (*(v25 + 24))(v23, ObjectType, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v28 = sub_9040C(v27);

    sub_A71C8(v28);
    v29 = v53;
    v30 = sub_90548(v53);
    v31 = sub_CCB50(v30, [v2 isReversed]);

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v7;
    v33[4] = v29;
    v33[5] = a1;
    v33[6] = v31;

    swift_unknownObjectRetain();
    v45 = v29;

    v34 = v7;
    v35 = [a1 isInteractive];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    *(v37 + 32) = sub_7B614;
    *(v37 + 40) = v33;
    *(v37 + 48) = v31;
    *(v37 + 56) = a1;
    *(v37 + 64) = v34;
    v51 = sub_7B67C;
    v52 = v37;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_11D5C0;
    v50 = &block_descriptor_5;
    v38 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v39 = v34;

    [v2 setNoninteractiveAnimations:v38];
    _Block_release(v38);
    v40 = swift_allocObject();
    *(v40 + 16) = v31;
    v51 = sub_7B6E4;
    v52 = v40;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_4D7D0;
    v50 = &block_descriptor_43;
    v41 = _Block_copy(&aBlock);

    [v2 setNoninteractiveCompletion:v41];
    _Block_release(v41);
    v46.receiver = v2;
    v46.super_class = type metadata accessor for PalettePresentationAnimationController();
    v42 = objc_msgSendSuper2(&v46, "interruptibleAnimatorForTransition:", a1);
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = 0;
    }

    v44 = *&v2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator];
    *&v2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator] = v43;

    if ((v35 & 1) == 0)
    {
      sub_7A10C(v32, v39, v45, a1, v31);
    }
  }

  return result;
}

void sub_7A10C(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(*(Strong + OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_interaction) + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
    if (!v11)
    {
LABEL_26:

      return;
    }

    v12 = v11;
    v13 = [v12 superview];
    if (!v13)
    {
LABEL_25:

      v10 = v12;
      goto LABEL_26;
    }

    v69 = v10;
    v67 = v13;
    v14 = [v13 subviews];
    sub_7B6F4();
    v15 = sub_1449DC();

    v68 = v12;
    v16 = sub_12B950(v12, v15);
    LOBYTE(v14) = v17;

    if ((v14 & 1) == 0)
    {
      [v12 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [a2 addSubview:v12];
      v76.origin.x = v19;
      v76.origin.y = v21;
      v76.size.width = v23;
      v76.size.height = v25;
      Width = CGRectGetWidth(v76);
      v77.origin.x = v19;
      v77.origin.y = v21;
      v77.size.width = v23;
      v77.size.height = v25;
      [v12 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v77)}];
      v66 = v16;
      if ([v69 isReversed])
      {
        [v12 setAlpha:0.0];
        v27 = *&v69[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator];
        v28 = swift_allocObject();
        *(v28 + 16) = v12;
        v74 = sub_7B830;
        v75 = v28;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_11D5C0;
        v73 = &block_descriptor_70;
        v29 = _Block_copy(&aBlock);
        v30 = v12;
        v31 = v27;
      }

      else
      {
        v32 = *&v69[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator];
        v33 = swift_allocObject();
        *(v33 + 16) = v69;
        *(v33 + 24) = v12;
        v74 = sub_7B780;
        v75 = v33;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_11D5C0;
        v73 = &block_descriptor_58;
        v29 = _Block_copy(&aBlock);
        v34 = v12;
        v31 = v32;
        v35 = v69;
      }

      [v31 addAnimations:v29];
      _Block_release(v29);

      v36 = swift_allocObject();
      *(v36 + 2) = v67;
      *(v36 + 3) = a2;
      *(v36 + 4) = v12;
      *(v36 + 5) = v66;
      v36[6] = v19;
      v36[7] = v21;
      v36[8] = v23;
      v36[9] = v25;
      *(v36 + 10) = v69;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_7B7D8;
      *(v37 + 24) = v36;
      v38 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
      swift_beginAccess();
      v39 = *&v69[v38];
      v40 = v12;
      v41 = v69;
      v42 = v67;
      v43 = a2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69[v38] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_134820(0, v39[2] + 1, 1, v39);
        *&v69[v38] = v39;
      }

      v46 = v39[2];
      v45 = v39[3];
      if (v46 >= v45 >> 1)
      {
        v39 = sub_134820((v45 > 1), v46 + 1, 1, v39);
      }

      v39[2] = v46 + 1;
      v47 = &v39[2 * v46];
      v47[4] = sub_7B7F0;
      v47[5] = v37;
      *&v69[v38] = v39;
      swift_endAccess();

      v48 = *(a3 + 16);
      if (v48)
      {
        v49 = (a3 + 40);
        do
        {
          v50 = *v49;
          ObjectType = swift_getObjectType();
          v52 = *(v50 + 16);
          swift_unknownObjectRetain();
          v52(a4, a5, v41, ObjectType, v50);
          swift_unknownObjectRelease();
          v49 += 2;
          --v48;
        }

        while (v48);
      }

      if (a5 >> 62)
      {
        v53 = sub_14531C();
        if (v53)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v53 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
        if (v53)
        {
LABEL_17:
          if (v53 < 1)
          {
            __break(1u);
            return;
          }

          v54 = 0;
          do
          {
            if ((a5 & 0xC000000000000001) != 0)
            {
              v55 = sub_1451FC();
            }

            else
            {
              v55 = *(a5 + 8 * v54 + 32);
            }

            ++v54;
            v56 = [a4 containerView];
            [*(v55 + 32) bounds];
            [v56 convertRect:*(v55 + 32) fromCoordinateSpace:?];
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v64 = v63;

            [*(v55 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
            v65 = [a4 containerView];
            [v65 addSubview:*(v55 + 32)];

            [*(v55 + 32) setFrame:{v58, v60, v62, v64}];
          }

          while (v53 != v54);
        }
      }
    }

    v12 = v67;
    v10 = v68;
    goto LABEL_25;
  }
}

void sub_7A73C(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  [*(a1 + OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator) duration];
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v10[4] = sub_7B844;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_11D5C0;
  v10[3] = &block_descriptor_76;
  v8 = _Block_copy(v10);
  v9 = a2;

  [v4 animateKeyframesWithDuration:0 delay:v8 options:0 animations:v6 completion:0.0];
  _Block_release(v8);
}

void sub_7A85C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_7B84C;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_11D5C0;
  v6[3] = &block_descriptor_82;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
}

uint64_t sub_7A94C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  sub_7B6F4();
  result = sub_144FFC();
  if ((result & 1) == 0)
  {
    [a6 insertSubview:a8 atIndex:a9];
    [a8 setFrame:{a1, a2, a3, a4}];
    v20 = [a7 traitCollection];
    v21 = [v20 userInterfaceIdiom];

    if (v21 != &dword_0 + 1 || (result = [a10 isReversed], result))
    {

      return [a8 setAlpha:1.0];
    }
  }

  return result;
}

char *sub_7AA88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (a2)
  {
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    v17 = sub_77B4;
    *(v16 + 16) = sub_77B4;
    *(v16 + 24) = v15;
    aBlock[4] = sub_7B6EC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_D78F4;
    aBlock[3] = &block_descriptor_52;
    v18 = _Block_copy(aBlock);

    [v14 performWithoutAnimation:v18];
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v17 = 0;
LABEL_6:
  [*&v13[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator] startAnimation];
  result = [*&v13[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_easingAnimator] startAnimation];
  v59 = v17;
  if (a5 >> 62)
  {
    result = sub_14531C();
    v20 = result;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_30:

    return sub_2173C(v59);
  }

  v20 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = a5 & 0xC000000000000001;
    v60 = v20;
    v61 = a5;
    v62 = a5 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v24 = sub_1451FC();
        v25 = *(v24 + 40);
        if (v25)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v24 = *(a5 + 8 * v21 + 32);

        v25 = *(v24 + 40);
        if (v25)
        {
LABEL_17:
          v26 = *(v25 + 40);
          if (v26)
          {
            sub_2172C(*(v25 + 40));

            v27 = v26(v24);
            v29 = v28;
            v31 = v30;
            v33 = v32;
            sub_2173C(v26);
            v34 = *(v25 + 72);
            if (v34)
            {

              v34(v24);
              sub_2173C(v34);
            }

            v35 = *(v24 + 48);
            if (v35)
            {

              v35(v25);
              sub_2173C(v35);
            }

            v36 = *(v25 + 32);
            v37 = [a6 containerView];
            [v36 convertRect:v37 toCoordinateSpace:{v27, v29, v31, v33}];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;

            v46 = v13;
            if ([v46 isReversed])
            {
              [a7 frame];
              MinY = CGRectGetMinY(v65);
              [v46 sourceFrame];
              if (MinY != CGRectGetMinY(v66))
              {
                [v46 sourceFrame];
                v48 = CGRectGetMinY(v67);
                [a7 frame];
                v41 = v41 + v48 - CGRectGetMinY(v68);
              }

              [a7 frame];
              MinX = CGRectGetMinX(v69);
              [v46 sourceFrame];
              if (MinX == CGRectGetMinX(v70))
              {
              }

              else
              {
                [v46 sourceFrame];
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;

                v71.origin.x = v51;
                v71.origin.y = v53;
                v71.size.width = v55;
                v71.size.height = v57;
                v58 = CGRectGetMinX(v71);
                [a7 frame];
                v39 = v39 + v58 - CGRectGetMinX(v72);
              }

              v20 = v60;
              a5 = v61;
            }

            else
            {
            }

            v23 = *(v24 + 32);
            [v23 setFrame:{v39, v41, v43, v45}];

            v22 = v62;
          }
        }
      }

      ++v21;

      if (v20 == v21)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7AF9C(uint64_t result, unint64_t a2)
{
  v3 = result;
  if (a2 >> 62)
  {
    result = sub_14531C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1451FC();
        v7 = *(v6 + 40);
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = *(a2 + 8 * v5 + 32);

        v7 = *(v6 + 40);
        if (v7)
        {
LABEL_11:
          if ((v3 & 1) != 0 && (v8 = *(v7 + 56)) != 0)
          {

            sub_2172C(v8);
            v8(v6);
            sub_2173C(v8);
            v9 = *(v6 + 64);
            if (!v9)
            {
              goto LABEL_17;
            }

LABEL_16:

            v9(v3 & 1, v7);
            sub_2173C(v9);
          }

          else
          {

            v9 = *(v6 + 64);
            if (v9)
            {
              goto LABEL_16;
            }
          }

LABEL_17:
          v10 = *(v7 + 88);
          if (v10)
          {

            v10(v3 & 1, v6);
            sub_2173C(v10);
          }
        }
      }

      ++v5;

      if (v4 == v5)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_7B178(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_7B2F4(char a1)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = a1 & 1;

    v8 = v5 + 40;
    do
    {
      v9 = *(v8 - 8);
      v10 = v7;

      v9(&v10);

      v8 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

id sub_7B3F0(void *a1)
{
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_interaction] = a1;
  v3 = objc_allocWithZone(UICubicTimingParameters);
  v4 = a1;
  v5 = [v3 init];
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v5 timingParameters:0.5];

  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator] = v6;
  v7 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  [v7 setSpringCubicTimingParameters:v8];

  v9 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v7 timingParameters:0.0];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_easingAnimator] = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PalettePresentationAnimationController();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_7B584()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7B5BC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7B624()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7B6AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_7B6F4()
{
  result = qword_1C47C0;
  if (!qword_1C47C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C47C0);
  }

  return result;
}

uint64_t sub_7B740()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7B788()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_7B7F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7B860()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7B8B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7B92C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_7BA0C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration] = 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider] = 1;
  v6 = &v2[OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_episodeController];
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  sub_1D19C(a1, v14, &qword_1C4860);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4868);
    v7 = swift_dynamicCast();
    v8 = v12;
    if (!v7)
    {
      v8 = 1;
    }
  }

  else
  {
    sub_15340(v14, &qword_1C4860);
    v8 = 1;
  }

  v9 = *&v2[v5];
  *&v2[v5] = v8;
  sub_7BF04(v9);
  swift_beginAccess();
  sub_7D0A8(a2, v6);
  swift_endAccess();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for NowPlayingContextInteractionDelegate();
  v10 = objc_msgSendSuper2(&v13, "init");
  sub_15340(a2, &qword_1C12E8);
  sub_15340(a1, &qword_1C4860);
  return v10;
}

uint64_t NowPlayingContextInteractionDelegate.updateMenuProvider(asPartOf:for:)(uint64_t a1, void *a2)
{
  v3 = sub_140CAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_140C8C();
  __chkstk_darwin(v7);
  v8 = sub_140CBC();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = [a2 podcast];
  if (v12 && (v24 = v11, v13 = v12, v14 = [v12 supportsSubscription], v13, v15 = v24, v14))
  {
    v16 = sub_140D0C();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 104))(v6, enum case for InteractionContext.Origin.none(_:), v3);
    sub_140C9C();
    sub_1445DC();
    swift_allocObject();

    v17 = a2;
    v18 = v25;
    v19 = sub_1445CC();
    *(v18 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration) = v19;

    v20 = *(v18 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider);
    *(v18 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider) = v19;
    return sub_7BF04(v20);
  }

  else
  {
    v22 = v25;
    *(v25 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration) = 0;

    v23 = *(v22 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider);
    *(v22 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider) = 1;

    return sub_7BF04(v23);
  }
}

uint64_t sub_7BF04(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

UITargetedPreview_optional __swiftcall NowPlayingContextInteractionDelegate.contextMenuInteraction(_:previewForDismissingMenuWithConfiguration:)(UIContextMenuInteraction _, UIContextMenuConfiguration previewForDismissingMenuWithConfiguration)
{
  v2 = sub_7CD7C(_.super.isa);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void sub_7BF3C(uint64_t a1)
{
  v2 = sub_1424AC();
  __chkstk_darwin(v2);
  if (a1)
  {
    if (qword_1BFFE8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1D19C(&static NowPlayingDataProvider.shared, v11, &qword_1C1510);
    if (v12)
    {
      sub_1DB40(v11, v13);
      sub_7D29C(v11);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v3 = sub_14449C();

      __swift_destroy_boxed_opaque_existential_0(v13);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = (v3 + 32);
        while (1)
        {
          __swift_project_boxed_opaque_existential_1(v6, v6[3]);
          v7 = sub_14454C();

          if (v7)
          {
            break;
          }

          ++v5;
          v6 += 5;
          if (v4 == v5)
          {
            goto LABEL_11;
          }
        }

        v4 = v5;
      }

LABEL_11:
      v8 = *(v3 + 16);
      if (v4 == v8)
      {

        return;
      }

      if (v4 < v8)
      {
        __swift_project_boxed_opaque_existential_1((v3 + 32 + 40 * v4), *(v3 + 32 + 40 * v4 + 24));
        v9 = sub_14454C();

        if (v9)
        {

          v10 = v9;
          sub_144CCC();
          sub_14249C();
          sub_144CDC();

          return;
        }

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

Class sub_7C1A4(int a1, uint64_t a2, id a3)
{
  v4 = [a3 view];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  aBlock[4] = sub_7D294;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B9D0;
  aBlock[3] = &block_descriptor_46;
  v8 = _Block_copy(aBlock);

  v9 = [v5 elementWithUncachedProvider:v8];
  _Block_release(v8);
  sub_2B860(0, &qword_1C4878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_14F0E0;
  *(v10 + 32) = v9;
  v14 = v10;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  v11.value = 0;
  isa = sub_144F7C(v18, v19, v17, v11, 0xFFFFFFFFFFFFFFFFLL, v14, v15).super.super.isa;

  return isa;
}

void sub_7C438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_14455C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_episodeController;
  v10 = Strong;
  swift_beginAccess();
  sub_1D19C(v10 + v9, &v25, &qword_1C12E8);

  if (!*(&v26 + 1))
  {
LABEL_8:
    sub_15340(&v25, &qword_1C12E8);
    return;
  }

  sub_2C690(&v25, v28);
  v11 = sub_1445BC();
  sub_144BFC();
  v13 = v12;

  if (v13)
  {
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_14456C();
    (*(v5 + 104))(v7, enum case for PreviewingPresentationHint.inferTab(_:), v4);
    sub_14450C();

LABEL_5:

    (*(v5 + 8))(v7, v4);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v28);
    return;
  }

  v14 = sub_1445BC();
  v15 = [v14 podcast];

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_144C0C();
  v18 = v17;

  if (v18)
  {
    goto LABEL_6;
  }

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1445BC();
    v20 = sub_144C0C();
    v22 = v21;

    if (v22)
    {
      goto LABEL_6;
    }

    v24 = a3;
    if ((v20 & 0x8000000000000000) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v28, v29);
      sub_14456C();
      (*(v5 + 104))(v7, enum case for PreviewingPresentationHint.inferTab(_:), v4);
      sub_1444FC();
      goto LABEL_5;
    }
  }

  __break(1u);
}

id NowPlayingContextInteractionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_7C978(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_7CA14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_7CA64(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2B860(0, &qword_1C4870);
  v2 = sub_1449DC();

  v3 = v1(v2);

  return v3;
}

char *_s12NowPlayingUI0aB26ContextInteractionDelegateC011contextMenuE0_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0mhE0C_So7CGPointVtF_0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider);
  if (v2 == 1)
  {
    return 0;
  }

  type metadata accessor for NowPlayingContextMenuConfiguration();
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = sub_7D1F4;
  v19 = v6;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_7CA14;
  v17 = &block_descriptor_34;
  v9 = _Block_copy(&v14);
  sub_7D244(v2);
  sub_7D244(v2);

  sub_7D244(v2);

  v10 = a1;

  v18 = sub_7D23C;
  v19 = v7;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_7CA64;
  v17 = &block_descriptor_37;
  v11 = _Block_copy(&v14);

  v12 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:v9 actionProvider:v11];

  _Block_release(v11);
  _Block_release(v9);
  *&v12[OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_config] = v5;
  v13 = v12;

  [v13 setPreferredMenuElementOrder:2];

  sub_7BF04(v2);
  return v13;
}

id sub_7CD7C(void *a1)
{
  v2 = [objc_allocWithZone(UIPreviewParameters) init];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(UITargetedPreview) initWithView:v4 parameters:v2];
  }

  else
  {

    return 0;
  }

  return v6;
}

void sub_7CE58(void *a1, void *a2)
{
  type metadata accessor for NowPlayingContextMenuConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_config);
    if (v5)
    {
      v6 = qword_1BFFE8;
      v7 = a1;

      if (v6 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (qword_1D1830)
      {
        v8 = qword_1D1840;
        if (qword_1D1840)
        {

          v9 = v8;
          v10 = sub_14458C();

          [a2 setPreferredCommitStyle:v10];
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          v12[2] = v11;
          v12[3] = v5;
          v12[4] = v9;
          aBlock[4] = sub_7D198;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_11D5C0;
          aBlock[3] = &block_descriptor_6;
          v13 = _Block_copy(aBlock);

          v14 = v9;

          [a2 addCompletion:v13];
          _Block_release(v13);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_7D0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C12E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D118()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7D150()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7D1BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7D1FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7D244(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_7D254()
{

  return _swift_deallocObject(v0, 32, 7);
}

NSString sub_7D318()
{
  result = sub_14489C();
  qword_1D17E8 = result;
  return result;
}

void sub_7D350(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    if ((*(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v7 << 6))) & 0x8000000000000000) != 0)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      v9 = UICollectionElementKindSectionHeader;
      v10 = sub_14489C();

      [v13 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];
    }

    else
    {
      v12 = swift_getObjCClassFromMetadata();

      v10 = sub_14489C();

      [v13 registerClass:v12 forCellWithReuseIdentifier:v10];
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_11;
    }
  }
}

void sub_7D514()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setDataSource:0];
    [v4 setDelegate:0];
  }

  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1D1830)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!qword_1D1840)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v6 = Strong;
  v7 = v1;
  v8 = sub_144FFC();

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!qword_1D1830)
  {
    goto LABEL_15;
  }

  if (qword_1D1840)
  {
    swift_unknownObjectWeakAssign();
LABEL_12:
    v9.receiver = v1;
    v9.super_class = ObjectType;
    objc_msgSendSuper2(&v9, "dealloc");
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t type metadata accessor for NowPlayingViewController()
{
  result = qword_1C4960;
  if (!qword_1C4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7D888()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v77 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4AA0);
  v7 = *(v6 - 8);
  v80 = v6;
  v81 = v7;
  __chkstk_darwin(v6);
  v9 = &v77 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4AA8);
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v78 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4AB0);
  v14 = *(v13 - 8);
  v84 = v13;
  v85 = v14;
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v79 = &v77 - v16;
  v87.receiver = v1;
  v87.super_class = ObjectType;
  objc_msgSendSuper2(&v87, "viewDidLoad", v15);
  v86[0] = sub_141C4C();
  sub_2B860(0, &qword_1C2160);
  v17 = sub_144D8C();
  v86[39] = v17;
  v18 = sub_144D3C();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4AC0);
  sub_1D4A4(&qword_1C2538, &unk_1C4AC0);
  sub_4236C(&qword_1C1740, &qword_1C2160);
  sub_14283C();
  sub_15340(v5, &qword_1C16E0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2530);
  sub_1D4A4(&qword_1C4AD0, &qword_1C4AA0);
  v19 = v78;
  v20 = v80;
  sub_1427BC();
  (*(v81 + 8))(v9, v20);
  sub_1D4A4(&qword_1C4AD8, &qword_1C4AA8);
  sub_89140();
  v21 = v79;
  v22 = v82;
  sub_14286C();
  (*(v83 + 8))(v19, v22);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D4A4(&qword_1C4AF8, &unk_1C4AB0);
  v23 = v84;
  sub_14289C();

  (*(v85 + 8))(v21, v23);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910);
  sub_1D4A4(&qword_1C1918, &qword_1C1910);
  sub_14258C();
  swift_endAccess();

  v24 = [v1 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = &v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics];
  v27 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24];
  v28 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics], v27);
  (*(v28 + 48))(v27, v28);
  [v25 music_setLayoutInsets:?];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = v29;
  [v29 addSubview:*&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_backgroundView]];

  v31 = [objc_allocWithZone(type metadata accessor for NowPlayingCollectionView()) init];
  v32 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView;
  v33 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView] = v31;
  v34 = v31;

  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v34 setAlwaysBounceVertical:1];

  v35 = *&v1[v32];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 clearColor];
  [v37 setBackgroundColor:v38];

  v39 = *&v1[v32];
  if (!v39)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v39 setDelegate:v1];
  v40 = *&v1[v32];
  if (!v40)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v40 setDataSource:v1];
  v41 = *&v1[v32];
  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v41 setDragDelegate:v1];
  v42 = *&v1[v32];
  if (!v42)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v42 setDropDelegate:v1];
  v43 = *&v1[v32];
  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v44 = *(v26 + 3);
  v45 = *(v26 + 4);
  __swift_project_boxed_opaque_existential_1(v26, v44);
  v46 = *(v45 + 136);
  v47 = v43;
  v48 = v46(v44, v45);
  [v47 contentInset];
  [v47 setContentInset:v48];

  v49 = [v1 view];
  if (!v49)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!*&v1[v32])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = v49;
  [v49 addSubview:?];

  v51 = *&v1[v32];
  if (!v51)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14F190;
  strcpy((inited + 32), "ControlsHeader");
  *(inited + 47) = -18;
  *(inited + 48) = type metadata accessor for NowPlayingControlsHeader() | 0x8000000000000000;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000000163390;
  v53 = type metadata accessor for TitleSectionHeaderView();
  *(inited + 72) = v53 | 0x8000000000000000;
  *(inited + 80) = 0x65746F4E776F6853;
  *(inited + 88) = 0xEF72656461654873;
  *(inited + 96) = v53 | 0x8000000000000000;
  *(inited + 104) = 0x6165486575657551;
  *(inited + 112) = 0xEB00000000726564;
  *(inited + 120) = v53 | 0x8000000000000000;
  strcpy((inited + 128), "ChapterHeader");
  *(inited + 142) = -4864;
  *(inited + 144) = v53 | 0x8000000000000000;
  *(inited + 152) = 0x6C6C6543676E6F53;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = type metadata accessor for SongCell();
  *(inited + 176) = 0x4372657470616843;
  *(inited + 184) = 0xEB000000006C6C65;
  *(inited + 192) = type metadata accessor for DeprecatedChapterCell();
  *(inited + 200) = 0x6543726563617053;
  *(inited + 208) = 0xEA00000000006C6CLL;
  *(inited + 216) = sub_2B860(0, &qword_1C4B08);
  *(inited + 224) = 0x7470697263736544;
  *(inited + 232) = 0xEF6C6C65436E6F69;
  v54 = type metadata accessor for NowPlayingLyricsCell();
  *(inited + 240) = v54;
  strcpy((inited + 248), "ShowNotesCell");
  *(inited + 262) = -4864;
  *(inited + 264) = v54;
  v55 = v51;
  v56 = sub_13A608(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B10);
  swift_arrayDestroy();
  sub_7D350(v56);

  v57 = &v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration];
  v58 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24];
  v59 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration], v58);
  if ((*(v59 + 64))(v58, v59))
  {
    sub_1DB40(v57, v86);
    v60 = objc_allocWithZone(type metadata accessor for NowPlayingControlsViewController());

    v62 = sub_E7CA0(v61, v86);

    [v62 loadViewIfNeeded];
    [v1 addChildViewController:v62];
    [v62 didMoveToParentViewController:v1];
    v63 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController];
    *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController] = v62;
  }

  sub_1DB40(v26, v86);
  v64 = type metadata accessor for LyricsTextViewController();
  v65 = objc_allocWithZone(v64);
  v66 = sub_FF5CC(v86);
  v67 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController;
  v68 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController] = v66;
  v69 = v66;

  [v1 addChildViewController:v69];
  v70 = *&v1[v67];
  if (!v70)
  {
    goto LABEL_30;
  }

  [v70 didMoveToParentViewController:v1];
  sub_1DB40(v26, v86);
  v71 = objc_allocWithZone(v64);
  v72 = sub_FF5CC(v86);
  v73 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController;
  v74 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController] = v72;
  v75 = v72;

  [v1 addChildViewController:v75];
  v76 = *&v1[v73];
  if (v76)
  {
    [v76 didMoveToParentViewController:v1];
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_7E4A0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_7E4FC(v1);
  }
}

uint64_t sub_7E4FC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B18);
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v69 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v69 - v12;
  v14 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController];
  if (!v14)
  {
LABEL_11:
    v25 = &qword_1C4000;
    if (a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    v34 = 0;
    v35 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v15 = v14;
  if (a1)
  {
    v16 = [a1 playerPath];
  }

  else
  {
    v16 = 0;
  }

  type metadata accessor for NowPlayingMetadataPlaceholder();
  swift_allocObject();
  *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder] = sub_D9AB0(v16);

  if (a1)
  {
    v17 = a1;
    v18 = [v17 playerPath];
    v19 = [v18 isSystemPodcastsPath];

    v20 = a1;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_9:
  v21 = *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse];
  *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse] = v20;
  v22 = v20;

  sub_E4F08();
  v23 = *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView];
  if (v23)
  {
    v24 = v23;
    sub_C88E4([a1 videoOutput]);

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v25 = &qword_1C4000;
  if (!a1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v26 = &selRef_metadataObject;
  v27 = [a1 tracklist];
  v28 = sub_AB9C0();

  v69 = v28;
  if (!v28)
  {
    v35 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v29 = a1;
  sub_7EFF4(v29);

  v30 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
  swift_beginAccess();
  sub_1D19C(&v2[v30], v13, &qword_1C4B18);
  sub_1D19C(v13, v9, &qword_1C4B18);
  v31 = sub_140D3C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v9, 1, v31) == 1)
  {
    sub_15340(v9, &qword_1C4B18);
  }

  else
  {
    v37 = sub_140D1C();
    (*(v32 + 8))(v9, v31);
    if (v37)
    {

      v35 = sub_134844(0, 1, 1, _swiftEmptyArrayStorage);
      v39 = *(v35 + 2);
      v38 = *(v35 + 3);
      v25 = &qword_1C4000;
      if (v39 >= v38 >> 1)
      {
        v35 = sub_134844((v38 > 1), v39 + 1, 1, v35);
      }

      v26 = &selRef_metadataObject;
      *(v35 + 2) = v39 + 1;
      v35[v39 + 32] = 2;
      goto LABEL_30;
    }
  }

  sub_1D19C(v13, v6, &qword_1C4B18);
  if (v33(v6, 1, v31) == 1)
  {
    sub_15340(v6, &qword_1C4B18);
    v25 = &qword_1C4000;
    v26 = &selRef_metadataObject;
  }

  else
  {
    v40 = sub_140D2C();
    (*(v32 + 8))(v6, v31);
    v25 = &qword_1C4000;
    v26 = &selRef_metadataObject;
    if (v40)
    {

      v35 = sub_134844(0, 1, 1, _swiftEmptyArrayStorage);
      v42 = *(v35 + 2);
      v41 = *(v35 + 3);
      if (v42 >= v41 >> 1)
      {
        v35 = sub_134844((v41 > 1), v42 + 1, 1, v35);
      }

      *(v35 + 2) = v42 + 1;
      v35[v42 + 32] = 1;
      goto LABEL_30;
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_30:
  v43 = sub_141BDC();
  if (v43)
  {
    v44 = v43;
    v45 = [v43 chapters];
    if (v45)
    {
      v46 = v45;
      sub_2B860(0, &unk_1C4A58);
      v47 = sub_1449DC();

      v44 = v46;
    }

    else
    {
      v47 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  if (v47 >> 62)
  {
    v48 = sub_14531C();
  }

  else
  {
    v48 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
  }

  if (v48 >= 1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_134844(0, *(v35 + 2) + 1, 1, v35);
      v35 = result;
    }

    v50 = *(v35 + 2);
    v49 = *(v35 + 3);
    if (v50 >= v49 >> 1)
    {
      result = sub_134844((v49 > 1), v50 + 1, 1, v35);
      v35 = result;
    }

    *(v35 + 2) = v50 + 1;
    v35[v50 + 32] = 3;
  }

  v51 = *&v2[v25[279]];
  if (!v51)
  {
    goto LABEL_70;
  }

  v52 = v51;
  [v52 contentInset];
  [v52 setContentInset:?];

  sub_15340(v13, &qword_1C4B18);
LABEL_46:
  v53 = [a1 v26[31]];
  v34 = sub_144E5C();

  v54 = [a1 v26[31]];
  v55 = sub_144E6C();

  if ((v34 & 1) == 0)
  {
    if (v55)
    {
      goto LABEL_54;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    LODWORD(a1) = 0;
    v34 = 0;
    if (result)
    {
      goto LABEL_57;
    }

LABEL_17:
    result = sub_134844(0, *(v35 + 2) + 1, 1, v35);
    v35 = result;
    goto LABEL_57;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_134844(0, *(v35 + 2) + 1, 1, v35);
  }

  v57 = *(v35 + 2);
  v56 = *(v35 + 3);
  if (v57 >= v56 >> 1)
  {
    v35 = sub_134844((v56 > 1), v57 + 1, 1, v35);
  }

  *(v35 + 2) = v57 + 1;
  v35[v57 + 32] = 5;
  if ((v55 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_54:
  result = swift_isUniquelyReferenced_nonNull_native();
  LODWORD(a1) = 1;
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_57:
  v59 = *(v35 + 2);
  v58 = *(v35 + 3);
  if (v59 >= v58 >> 1)
  {
    result = sub_134844((v58 > 1), v59 + 1, 1, v35);
    v35 = result;
  }

  *(v35 + 2) = v59 + 1;
  v35[v59 + 32] = 4;
  if ((a1 | v34))
  {
LABEL_60:
    result = *&v2[v25[279]];
    if (!result)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    [result setBackgroundView:0];
LABEL_64:
    *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections] = v35;

    result = *&v2[v25[279]];
    if (result)
    {
      return [result reloadData];
    }

    __break(1u);
    goto LABEL_68;
  }

  v60 = *&v2[v25[279]];
  if (v60)
  {
    v61 = objc_opt_self();
    v62 = v60;
    v63 = [v61 mainBundle];
    v68._countAndFlagsBits = 0x8000000000160EC0;
    v70._countAndFlagsBits = 0xD000000000000017;
    v70._object = 0x8000000000163470;
    v71.value._countAndFlagsBits = 0;
    v71.value._object = 0;
    v64.super.isa = v63;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v65 = sub_1409DC(v70, v71, v64, v72, v68);
    v67 = v66;

    sub_832D0(v65, v67);

    goto LABEL_64;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

id sub_7EE30(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
  result = [v1 isBeingPresented];
  if (result)
  {
    if (qword_1BFFE8 != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    if (qword_1D1830)
    {
      if (qword_1D1840)
      {
        return swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_7EF5C()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController;
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController);
  }

  else
  {
    sub_1DB40(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics, v10);
    v4 = objc_allocWithZone(type metadata accessor for LyricsTextViewController());
    v5 = v0;
    v6 = sub_FF5CC(v10);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_7EFF4(void *a1)
{
  v50 = sub_140D6C();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B18);
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_140E7C();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 tracklist];
  v19 = sub_AB9C0();

  if (v19 && (v20 = [v19 metadataObject], v19, v20))
  {
    v46 = v9;
    v21 = v2;
    v22 = v13;
    v23 = [v20 flattenedGenericObject];
    v24 = [v23 anyObject];

    if (v24)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      v13 = v22;
      if (v25)
      {
        v51 = v25;
        v26 = [v25 descriptionText];
        v2 = v21;
        if (v26)
        {
          v27 = v26;
          v28 = sub_1448DC();
          v47 = v29;
          v48 = v28;

          v30 = 0;
        }

        else
        {
          v30 = 0;
          v47 = 0;
          v48 = 0;
        }
      }

      else
      {

        v51 = 0;
        v47 = 0;
        v48 = 0;
        v30 = 1;
        v2 = v21;
      }
    }

    else
    {
      v51 = 0;
      v47 = 0;
      v48 = 0;
      v30 = 1;
      v13 = v22;
      v2 = v21;
    }

    v9 = v46;
  }

  else
  {
    v51 = 0;
    v47 = 0;
    v48 = 0;
    v30 = 1;
  }

  v31 = [a1 playerPath];
  v32 = [v31 route];

  sub_1450AC();
  if (v30)
  {
    v33 = sub_140A3C();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  }

  else
  {
    v34 = [v51 shareURL];
    if (v34)
    {
      v35 = v34;
      sub_140A2C();

      v36 = sub_140A3C();
      (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
    }

    else
    {
      v37 = sub_140A3C();
      (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    }

    sub_10358(v9, v12, &unk_1C1D50);
  }

  sub_140E6C();
  sub_1DB40(v52 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoProvider, v53);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  (*(v14 + 16))(v4, v17, v13);
  v38 = v13;
  v39 = v50;
  (*(v2 + 104))(v4, enum case for EpisodeTextInfoContext.nowPlaying(_:), v50);
  v40 = v49;
  sub_140EAC();

  (*(v2 + 8))(v4, v39);
  (*(v14 + 8))(v17, v38);
  v41 = sub_140D3C();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
  v43 = v52;
  swift_beginAccess();
  sub_89230(v40, v43 + v42);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v53);
}

void sub_7F5E4(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == &dword_0 + 1)
  {
    v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
    if (!v5)
    {
      __break(1u);
      return;
    }

    [v5 flashScrollIndicators];
  }

  v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController__viewDidAppearOnce] = 1;
  if (sub_7F71C())
  {
    v6 = [objc_opt_self() defaultCenter];
    if (qword_1BFFC8 != -1)
    {
      swift_once();
    }

    [v6 postNotificationName:qword_1D17E8 object:v1 userInfo:0];
  }
}

id sub_7F71C()
{
  result = [v0 presentingViewController];
  if (result || (result = [v0 parentViewController]) != 0)
  {
    v2 = result;
    v3 = [result traitCollection];
    v4 = [v3 horizontalSizeClass];

    return (v4 == &dword_0 + 1);
  }

  return result;
}

void sub_7F808(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1D1830)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!qword_1D1840)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v1;
    v6 = sub_144FFC();

    if (v6)
    {
      if ([v5 isBeingDismissed])
      {
        if (qword_1D1830)
        {
          if (qword_1D1840)
          {
            swift_unknownObjectWeakAssign();
            return;
          }

LABEL_15:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_7F998()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v0[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_backgroundView] setFrame:{v4, v6, v8, v10}];
  v11 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView;
  v12 = *&v0[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v12 setFrame:{v4, v6, v8, v10}];
  v13 = *&v0[v11];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 safeAreaInsets];
    v18 = v17;

    [v14 verticalScrollIndicatorInsets];
    [v14 setVerticalScrollIndicatorInsets:v18];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_7FB40(void *a1)
{
  [a1 contentOffset];
  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics), v4);
  (*(v5 + 72))(v4, v5);
  v7 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView);
  if (v7)
  {
    if (v6 > v6 - v3)
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 - v3;
    }

    v9 = v7;
    [v9 verticalScrollIndicatorInsets];
    [v9 setVerticalScrollIndicatorInsets:v8];
  }

  else
  {
    __break(1u);
  }
}

void sub_7FC8C(unsigned __int8 a1, _BYTE *a2)
{
  v3 = v2;
  v5 = a1;
  v48 = [objc_opt_self() standardUserDefaults];
  HIDWORD(v46._object) = v5;
  if ((v5 - 1) >= 2)
  {
    if (v5 != 3)
    {
      sub_1452FC();
      __break(1u);
      return;
    }

    v6 = [objc_opt_self() mainBundle];
    v46._countAndFlagsBits = 0xE000000000000000;
    v7._countAndFlagsBits = 0x7372657470616843;
    v7._object = 0xE800000000000000;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v46._countAndFlagsBits = 0xE000000000000000;
    v7._object = 0x8000000000163370;
    v7._countAndFlagsBits = 0xD000000000000013;
  }

  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v8.super.isa = v6;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v9 = sub_1409DC(v7, v49, v8, v50, v46);
  v11 = v10;

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  *&a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache);

  v12 = (v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics);
  v13 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v14 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics), v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle;
  a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle] = v15;
  v17 = [a2 traitCollection];
  v18 = [v17 horizontalSizeClass];

  if (v18 == &dword_0 + 1)
  {
    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a2[v16];
    sub_9867C();
  }

  v19 = v12[3];
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  v21 = (*(v20 + 32))(v19, v20);
  v22 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle;
  a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle] = v21;
  v23 = [a2 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == &dword_0 + 2)
  {
    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a2[v22];
    sub_9867C();
  }

  else
  {
  }

  v25 = v12[3];
  v26 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v25);
  v27 = (*(v26 + 112))(v25, v26);
  v28 = &a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonOffset];
  *v28 = v27;
  *(v28 + 1) = v29;
  v30 = [objc_opt_self() clearColor];
  [a2 setBackgroundColor:v30];

  v31 = v12[3];
  v32 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v31);
  v33 = (*(v32 + 24))(v31, v32);
  v34 = &a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  [a2 setNeedsLayout];
  v38 = &a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
  *v38 = v9;
  v38[1] = v11;

  v39 = *&a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
  *(v39 + 128) = v9;
  *(v39 + 136) = v11;

  sub_54980();
  [a2 setNeedsLayout];
  sub_964E4(0, 0xE000000000000000);
  v40 = (v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration);
  v41 = v40[3];
  v42 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v41);
  if ((*(v42 + 24))(v41, v42))
  {
    v43 = v40[3];
    v44 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v43);
    v45 = (*(v44 + 16))(v43, v44) & ((v47 - 1) < 2);
    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible] = v45;
    if (v45 != a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible])
    {
      a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible] = v45;
      [a2 setNeedsLayout];
    }

    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible] = 1;
    if ((a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] & 1) == 0)
    {
      a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] = 1;
      [a2 setNeedsLayout];
    }
  }
}

BOOL sub_801CC()
{
  v0 = sub_141D3C();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 items];

    v3 = [v2 totalItemCount];
    v4 = v3 > 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_C5A78();

  return !v6 && !v4;
}

uint64_t sub_80288(_BYTE *a1, char a2)
{
  v3 = v2;
  *&a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache);

  v6 = (v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics);
  v7 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v9 = (*(v8 + 32))(v7, v8);
  v10 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle;
  a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle] = v9;
  v11 = [a1 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == &dword_0 + 1)
  {
    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a1[v10];
    sub_9867C();
  }

  v13 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle;
  a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle] = v15;
  v17 = [a1 traitCollection];
  v18 = [v17 horizontalSizeClass];

  if (v18 == &dword_0 + 2)
  {
    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a1[v16];
    sub_9867C();
  }

  else
  {
  }

  v19 = v6[3];
  v20 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v19);
  v21 = (*(v20 + 112))(v19, v20);
  v22 = &a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonOffset];
  *v22 = v21;
  *(v22 + 1) = v23;
  v24 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v24];

  p_ivar_lyt = &SongCell.ivar_lyt;
  if (a2 == 4)
  {
    v26 = [objc_opt_self() mainBundle];
    v58._countAndFlagsBits = 0xE000000000000000;
    v27._object = 0x8000000000160EE0;
    v27._countAndFlagsBits = 0xD000000000000010;
  }

  else
  {
    if (a2 != 5)
    {
      goto LABEL_11;
    }

    v26 = [objc_opt_self() mainBundle];
    v58._countAndFlagsBits = 0xE000000000000000;
    v27._countAndFlagsBits = 0x6575657551;
    v27._object = 0xE500000000000000;
  }

  v60.value._countAndFlagsBits = 0;
  v60.value._object = 0;
  v28.super.isa = v26;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v29 = sub_1409DC(v27, v60, v28, v61, v58);
  v31 = v30;

  v32 = &a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
  *v32 = v29;
  v32[1] = v31;

  v33 = *&a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
  *(v33 + 128) = v29;
  *(v33 + 136) = v31;

  sub_54980();
  [a1 setNeedsLayout];
LABEL_11:
  v34 = v6[3];
  v35 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v34);
  v36 = (*(v35 + 24))(v34, v35);
  v37 = &a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  [a1 setNeedsLayout];
  v41 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24);
  v42 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration), v41);
  result = (*(v42 + 24))(v41, v42);
  if (result)
  {
    v44 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
      v47 = v44 + 32;

      for (i = 0; i != v45; ++i)
      {
        v51 = *(v47 + i);
        v52 = *(v3 + v46);
        if (v52)
        {
          v53 = *(v52 + 16);
          v54 = (v52 + 32);
          while (v53)
          {
            v55 = *v54++;
            --v53;
            if (v55 == v51)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v50 = _swiftEmptyArrayStorage[2];
          v49 = _swiftEmptyArrayStorage[3];
          if (v50 >= v49 >> 1)
          {
            sub_92CEC((v49 > 1), v50 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v50 + 1;
          *(&_swiftEmptyArrayStorage[4] + v50) = v51;
        }
      }

      p_ivar_lyt = (&SongCell + 16);
    }

    v56 = sub_A21E8(3u, _swiftEmptyArrayStorage);

    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible] = v56;
    if (v56 != a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible])
    {
      a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible] = v56;
      result = [a1 p_ivar_lyt[482]];
    }

    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible] = 1;
    if ((a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] = 1;
      v57 = p_ivar_lyt[482];

      return [a1 v57];
    }
  }

  return result;
}

void sub_80840()
{
  sub_8093C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_8093C()
{
  if (!qword_1C4970)
  {
    sub_140D3C();
    v0 = sub_1450CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4970);
    }
  }
}

uint64_t sub_80AF8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v58 - v14;
  __chkstk_darwin(v15);
  v17 = (&v58 - v16);
  __chkstk_darwin(v18);
  v20 = &v58 - v19;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v58 - v23;
  v25 = [a2 destinationIndexPath];
  v65 = a1;
  if (v25)
  {
    v26 = v25;
    sub_140BAC();

    (*(v11 + 32))(v24, v20, v10);
  }

  else
  {
    v27 = [a1 numberOfSections];
    if (__OFSUB__(v27, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    [a1 numberOfItemsInSection:v27 - 1];
    sub_140BBC();
  }

  v28 = [a2 proposal];
  v29 = [v28 operation];

  if (v29 != &dword_0 + 3)
  {
    return (*(v11 + 8))(v24, v10);
  }

  v60 = a2;
  v61 = v17;
  v17 = &selRef_metadataObject;
  v30 = [a2 items];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A98);
  v32 = sub_1449DC();

  if (!(v32 >> 62))
  {
    if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

LABEL_25:

    (*(v11 + 8))(v24, v10);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_15340(v9, &unk_1C4A80);
  }

  if (!sub_14531C())
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v33 = sub_1451FC();
    goto LABEL_11;
  }

  if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_31;
  }

  v33 = *(v32 + 32);
  swift_unknownObjectRetain();
LABEL_11:

  v34 = [v33 sourceIndexPath];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_140BAC();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v11 + 56))(v6, v35, 1, v10);
  sub_10358(v6, v9, &unk_1C4A80);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v32 = *(v11 + 32);
    (v32)(v61, v9, v10);
    v37 = [v60 v17[213]];
    v31 = sub_1449DC();

    if (!(v31 >> 62))
    {
      result = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }

LABEL_31:
    result = sub_14531C();
    if (result)
    {
LABEL_19:
      v59 = v32;
      if ((v31 & 0xC000000000000001) != 0)
      {
        v39 = sub_1451FC();
        v38 = v61;
      }

      else
      {
        v38 = v61;
        if (!*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_35:
          __break(1u);
          return result;
        }

        v39 = *(v31 + 32);
        swift_unknownObjectRetain();
      }

      v58 = [v39 dragItem];
      swift_unknownObjectRelease();
      sub_866D8(v38, v24);
      v64 = objc_opt_self();
      v40 = *(v11 + 16);
      v41 = v62;
      v40(v62, v38, v10);
      v42 = v63;
      v40(v63, v24, v10);
      v43 = *(v11 + 80);
      v44 = (v43 + 24) & ~v43;
      v45 = (v12 + v43 + v44) & ~v43;
      v46 = swift_allocObject();
      v47 = v65;
      *(v46 + 16) = v65;
      v48 = v41;
      v49 = v59;
      v59(v46 + v44, v48, v10);
      v49(v46 + v45, v42, v10);
      v50 = swift_allocObject();
      *(v50 + 16) = sub_890A0;
      *(v50 + 24) = v46;
      aBlock[4] = sub_7B6EC;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_D78F4;
      aBlock[3] = &block_descriptor_31;
      v51 = _Block_copy(aBlock);
      v52 = v47;

      [v64 performWithoutAnimation:v51];
      _Block_release(v51);
      LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

      if ((v42 & 1) == 0)
      {
        isa = sub_140B9C().super.isa;
        v54 = v58;
        v55 = [v60 dropItem:v58 toItemAtIndexPath:isa];

        swift_unknownObjectRelease();
        v56 = *(v11 + 8);
        v56(v61, v10);
        v56(v24, v10);
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_32:

    v57 = *(v11 + 8);
    v57(v61, v10);
    return (v57)(v24, v10);
  }

  (*(v11 + 8))(v24, v10);
  return sub_15340(v9, &unk_1C4A80);
}

void sub_812CC(void *a1)
{
  isa = sub_140B9C().super.isa;
  v3 = sub_140B9C().super.isa;
  [a1 moveItemAtIndexPath:isa toIndexPath:v3];
}

void sub_815DC(char *a1, id a2)
{
  v3 = v2;
  v6 = [a2 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1448DC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title];
  v12 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title];
  *v11 = v8;
  v11[1] = v10;
  sub_11F680(v12);

  sub_1201F8([a2 isExplicitEpisode]);
  [a2 duration];
  sub_11FCD8(v13);
  v14 = (v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics);
  v15 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v17 = (*(v16 + 104))(v15, v16);
  v18 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle];
  *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle] = v17;
  sub_1202B0(v18);
  v19 = [a2 author];
  if (v19 && (v20 = v19, v21 = [v19 name], v20, v21))
  {
    v22 = sub_1448DC();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = &a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName];
  v26 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName];
  *v25 = v22;
  v25[1] = v24;
  sub_11F860(v26);

  v27 = [a2 podcast];
  if (v27 && (v28 = v27, v29 = [v27 title], v28, v29))
  {
    v30 = sub_1448DC();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = &a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle];
  v34 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle];
  *v33 = v30;
  v33[1] = v32;
  sub_11FACC(v34);

  v35 = [a1 tableViewCell];
  if (v35)
  {
    v36 = v35;
    [v35 setSeparatorStyle:1];

    v37 = [a2 artworkCatalog];
    v38 = *&a1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog];
    *&a1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog] = v37;
    v39 = v37;

    v40 = *&a1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent];
    v42 = *(v40 + 80);
    *(v40 + 80) = v37;
    v41 = v39;
    sub_CD5A8(v42);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_81AB8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A48);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_141D6C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 5)
  {
    v12 = &enum case for QueueModelSection.hardQueue(_:);
  }

  else
  {
    if (a2 != 4)
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
      sub_15340(v6, &qword_1C4A48);
      return 0;
    }

    v12 = &enum case for QueueModelSection.softQueue(_:);
  }

  (*(v8 + 104))(v6, *v12, v7, v9);
  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v11, v6, v7);
  v13 = sub_141D3C();
  if (!v13)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A50);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_14A710;
  (*(v8 + 16))(v16 + v15, v11, v7);
  v17 = sub_144E9C();

  if (v17 >> 62)
  {
    result = sub_14531C();
    if (result > a1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  result = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (result <= a1)
  {
LABEL_16:
    (*(v8 + 8))(v11, v7);

    return 0;
  }

LABEL_8:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_1451FC();
    goto LABEL_12;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v19 = *(v17 + 8 * a1 + 32);
LABEL_12:
    v20 = v19;

    (*(v8 + 8))(v11, v7);
    return v20;
  }

  __break(1u);
  return result;
}

unint64_t sub_81DF4()
{
  v1 = sub_140BFC();
  v2 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
  v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v4 = *(v3 + 16);
  if (v4)
  {
    v29 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
    v5 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
    v6 = v3 + 32;

    for (i = 0; i != v4; ++i)
    {
      v10 = *(v6 + i);
      v11 = *(v0 + v5);
      if (v11)
      {
        v12 = *(v11 + 16);
        v13 = (v11 + 32);
        while (v12)
        {
          v14 = *v13++;
          --v12;
          if (v14 == v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_92CEC((v8 > 1), v9 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v9 + 1;
        *(&_swiftEmptyArrayStorage[4] + v9) = v10;
      }
    }

    v2 = v29;
  }

  v15 = _swiftEmptyArrayStorage[2];

  if (v1 >= v15)
  {
    return 6;
  }

  result = sub_140BFC();
  v17 = *(v0 + v2);
  v18 = *(v17 + 16);
  if (!v18)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = result;
  v19 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (j = 0; j != v18; ++j)
  {
    v23 = *(v17 + 32 + j);
    v24 = *(v0 + v19);
    if (v24)
    {
      v25 = *(v24 + 16);
      v26 = (v24 + 32);
      while (v25)
      {
        v27 = *v26++;
        --v25;
        if (v27 == v23)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_92CEC((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      *(&_swiftEmptyArrayStorage[4] + v22) = v23;
    }
  }

  result = v30;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (result < _swiftEmptyArrayStorage[2])
  {
    v28 = *(&_swiftEmptyArrayStorage[4] + result);

    return v28;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_8207C(void *a1)
{
  v2 = v1;
  v4 = sub_140BFC();
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
  v7 = *(v6 + 16);
  v199 = v1;
  if (v7)
  {
    v198._object = a1;
    v8 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v13 = *(v6 + 32 + v9);
      v14 = *&v2[v8];
      if (v14)
      {
        v15 = *(v14 + 16);
        v16 = (v14 + 32);
        while (v15)
        {
          v17 = *v16++;
          --v15;
          if (v17 == v13)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        *&v203 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, v10[2] + 1, 1);
          v10 = v203;
        }

        v12 = v10[2];
        v11 = v10[3];
        if (v12 >= v11 >> 1)
        {
          sub_92CEC((v11 > 1), v12 + 1, 1);
          v10 = v203;
        }

        v10[2] = v12 + 1;
        *(v10 + v12 + 32) = v13;
        v2 = v199;
      }

      ++v9;
    }

    while (v9 != v7);

    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = _swiftEmptyArrayStorage;
  if (v4 < 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  if (v5 >= v10[2])
  {
    __break(1u);
    goto LABEL_99;
  }

  v18 = *(v10 + v5 + 32);

  if (v18 <= 2)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        if (sub_140BEC() == 1)
        {
          v19 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
          swift_beginAccess();
          v20 = sub_140D3C();
          if ((*(*(v20 - 8) + 48))(&v2[v19], 1, v20))
          {
            swift_endAccess();
          }

          else
          {
            v132 = sub_140D2C();
            swift_endAccess();
            if (v132)
            {
              v133 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController];
              if (!v133)
              {
LABEL_115:
                __break(1u);
                return;
              }

              v134 = *&v133[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
              *&v133[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v132;
              v135 = v132;
              v136 = v133;

              sub_FF794();
              [a1 setBackgroundView:0];

              v2 = v199;
            }
          }

          v137 = sub_14489C();
          isa = sub_140B9C().super.isa;
          v139 = [a1 dequeueReusableCellWithReuseIdentifier:v137 forIndexPath:isa];

          type metadata accessor for NowPlayingLyricsCell();
          v140 = swift_dynamicCastClassUnconditional();
          v141 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController];
          if (v141)
          {
            v142 = [v141 view];
            v143 = *&v140[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView];
            *&v140[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView] = v142;
            v144 = v142;

            if (v144)
            {
              [v140 addSubview:v144];
              [v140 setNeedsLayout];

              v145 = *&v140[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_tableViewCell];
              if (v145)
              {
                [v145 setSeparatorStyle:0];
              }

              return;
            }

            goto LABEL_111;
          }

          goto LABEL_109;
        }

        goto LABEL_68;
      }

      if (sub_140BEC() == 1)
      {
        v67 = sub_14489C();
        v68 = sub_140B9C().super.isa;
        v69 = [a1 dequeueReusableCellWithReuseIdentifier:v67 forIndexPath:v68];

        type metadata accessor for NowPlayingLyricsCell();
        v70 = swift_dynamicCastClassUnconditional();
        v71 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
        if (!v71)
        {
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v72 = [v71 view];
        v73 = *&v70[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView];
        *&v70[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView] = v72;
        v74 = v72;

        if (!v74)
        {
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        [v70 addSubview:v74];
        [v70 setNeedsLayout];

        v2 = v199;
        v75 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24];
        v76 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32];
        __swift_project_boxed_opaque_existential_1(&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration], v75);
        v70[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_isBottomHairlineVisible] = (*(v76 + 56))(v75, v76) & 1;
      }

      else
      {
        v70 = 0;
      }

      v77 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
      swift_beginAccess();
      v78 = sub_140D3C();
      if ((*(*(v78 - 8) + 48))(&v2[v77], 1, v78))
      {
        swift_endAccess();
LABEL_43:
        v79 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
        if (!v79)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v80 = sub_14247C();
        v81 = v79;
        sub_14246C();
        sub_14245C();
        v82 = objc_allocWithZone(v80);
        v83 = sub_14248C();
        v84 = *&v81[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
        *&v81[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v83;
        v85 = v83;

        sub_FF794();
        v86 = [objc_opt_self() mainBundle];
        v198._countAndFlagsBits = 0x80000000001633D0;
        v209._countAndFlagsBits = 0xD000000000000019;
        v209._object = 0x80000000001633B0;
        v210.value._countAndFlagsBits = 0;
        v210.value._object = 0;
        v87.super.isa = v86;
        v211._countAndFlagsBits = 0;
        v211._object = 0xE000000000000000;
        v88 = sub_1409DC(v209, v210, v87, v211, v198);
        v90 = v89;

        sub_832D0(v88, v90);

        if (v70)
        {
          return;
        }

        goto LABEL_68;
      }

      v91 = sub_140D1C();
      swift_endAccess();
      if (!v91)
      {
        goto LABEL_43;
      }

      v92 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
      if (!v92)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v93 = *&v92[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
      *&v92[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v91;
      v94 = v91;
      v95 = v92;

      sub_FF794();
      [a1 setBackgroundView:0];

      if (v70)
      {
        return;
      }
    }

LABEL_68:
    v124 = sub_14489C();
    v125 = sub_140B9C().super.isa;
    v126 = [a1 dequeueReusableCellWithReuseIdentifier:v124 forIndexPath:v125];

    objc_opt_self();
    v127 = swift_dynamicCastObjCClassUnconditional();
    v128 = [v127 tableViewCell];
    if (v128)
    {
      v129 = v128;
      [v128 setSeparatorStyle:0];

      v130 = v126;
      [v127 setHidden:1];

      return;
    }

    goto LABEL_103;
  }

  if ((v18 - 4) < 2)
  {
    v21 = sub_140BCC();
    v22 = sub_81AB8(v21, v18);
    if (!v22)
    {
      goto LABEL_68;
    }

    v23 = v22;
    v24 = [v22 metadataObject];
    if (!v24)
    {

      goto LABEL_68;
    }

    v25 = v24;
    v26 = sub_14489C();
    v27 = sub_140B9C().super.isa;
    v28 = [a1 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

    type metadata accessor for SongCell();
    v29 = swift_dynamicCastClassUnconditional();
    v30 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache];
    *&v29[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache] = v30;
    swift_retain_n();
    v31 = v28;

    v32 = *&v29[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];
    v33 = *&v32[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
    *&v32[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = v30;

    v34 = v32;
    sub_51280(v33);

    v35 = v29[OBJC_IVAR____TtC12NowPlayingUI8SongCell_supportsLibraryAddKeepLocalButton];
    v29[OBJC_IVAR____TtC12NowPlayingUI8SongCell_supportsLibraryAddKeepLocalButton] = 0;
    if (v35)
    {
      [v29 setNeedsLayout];
    }

    v36 = [v199 view];
    if (!v36)
    {
      goto LABEL_105;
    }

    v37 = v36;
    [v36 music_layoutInsets];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24];
    v47 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32];
    __swift_project_boxed_opaque_existential_1(&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics], v46);
    v48 = v39 + (*(v47 + 88))(v46, v47);
    v50 = v41 + v49;
    v52 = v43 + v51;
    v54 = v45 + v53;
    v55 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24];
    v56 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32];
    __swift_project_boxed_opaque_existential_1(&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration], v55);
    v29[OBJC_IVAR____TtC12NowPlayingUI8SongCell_forceDurationHidden] = (*(v56 + 32))(v55, v56) & 1;
    v57 = v31;
    [v29 music_setLayoutInsets:{v48, v50, v52, v54}];
    v58 = [v199 view];
    if (!v58)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v59 = v58;
    v60 = [v58 effectiveUserInterfaceLayoutDirection];

    if (v60)
    {
      if (v60 == &dword_0 + 1)
      {
        v61 = v50;
        v50 = v54;
        v54 = v61;
      }

      else
      {
        type metadata accessor for UIUserInterfaceLayoutDirection(0);
        *(&v204 + 1) = v96;
        *&v203 = v60;
        sub_140EBC();
        __swift_destroy_boxed_opaque_existential_0(&v203);
      }
    }

    [v29 setLayoutMargins:{v48, v50, v52, v54}];

    v97 = v57;
    v98 = [v25 flattenedGenericObject];
    v99 = [v98 anyObject];

    if (v99)
    {
      objc_opt_self();
      v100 = swift_dynamicCastObjCClass();
      if (v100)
      {
        v101 = v100;
        v102 = v99;
        sub_875F4(v29, v101);

LABEL_58:
        return;
      }

      objc_opt_self();
      v103 = swift_dynamicCastObjCClass();
      if (v103)
      {
        v104 = v103;
        v105 = v99;
        sub_815DC(v29, v104);

        goto LABEL_58;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

LABEL_33:
  v62 = sub_141BDC();
  if (v62)
  {
    v63 = v62;
    v64 = [v62 chapters];
    if (v64)
    {
      v65 = v64;
      sub_2B860(0, &unk_1C4A58);
      v66 = sub_1449DC();

      v63 = v65;
    }

    else
    {
      v66 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
  }

  if (!(v66 >> 62))
  {
    v106 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_63;
  }

LABEL_99:
  v106 = sub_14531C();
LABEL_63:

  if (sub_140BEC() >= v106)
  {
    v121 = sub_14489C();
    v122 = sub_140B9C().super.isa;
    v123 = [a1 dequeueReusableCellWithReuseIdentifier:v121 forIndexPath:v122];

    if (v123)
    {
      return;
    }

    goto LABEL_68;
  }

  v107 = sub_14489C();
  v108 = sub_140B9C().super.isa;
  v109 = [a1 dequeueReusableCellWithReuseIdentifier:v107 forIndexPath:v108];

  type metadata accessor for DeprecatedChapterCell();
  v110 = swift_dynamicCastClassUnconditional();
  v111 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache];
  *&v110[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache] = v111;
  swift_retain_n();
  v112 = v109;

  v113 = *&v110[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];
  v114 = *&v113[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
  *&v113[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = v111;

  v115 = v113;
  sub_51280(v114);

  v116 = sub_141BDC();
  if (v116)
  {
    v117 = v116;
    v118 = [v116 chapters];
    if (v118)
    {
      v119 = v118;
      sub_2B860(0, &unk_1C4A58);
      v120 = sub_1449DC();

      v117 = v119;
    }

    else
    {
      v120 = _swiftEmptyArrayStorage;
    }

    v131 = v199;
  }

  else
  {
    v120 = _swiftEmptyArrayStorage;
    v131 = v199;
  }

  v146 = sub_140BCC();
  if ((v120 & 0xC000000000000001) == 0)
  {
    if ((v146 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v146 < *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8)))
    {
      v147 = *(v120 + 8 * v146 + 32);
      goto LABEL_85;
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v147 = sub_1451FC();
LABEL_85:
  v148 = v147;

  v149 = v148;
  v150 = sub_8344C();
  if (v150)
  {
    v151 = v150;
    sub_2B860(0, &unk_1C4A58);
    v200 = sub_144FFC();
  }

  else
  {
    v200 = 0;
  }

  v152 = [v149 title];
  if (v152)
  {
    v153 = v152;
    v154 = sub_1448DC();
    v156 = v155;
  }

  else
  {
    v154 = 0;
    v156 = 0xE000000000000000;
  }

  v157 = &v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title];
  *v157 = v154;
  v157[1] = v156;

  sub_13EE40();
  [v149 duration];
  v158 = &v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  v159 = *&v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  v160 = v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration + 8];
  *v158 = v161;
  v158[8] = 0;
  sub_13EFBC(v159, v160);
  v162 = [v110 tableViewCell];
  if (!v162)
  {
    goto LABEL_112;
  }

  v163 = v162;
  [v162 setSeparatorStyle:1];

  v164 = &v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics];
  v165 = *&v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24];
  v166 = *&v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32];
  __swift_project_boxed_opaque_existential_1(&v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics], v165);
  v167 = (*(v166 + 152))(v165, v166);
  sub_14114C();
  v168 = sub_14104C();
  v169 = *&v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents];

  sub_13FD44(v167, v168, &v203);
  v170 = v169[4];
  v171 = v169[5];
  v172 = v169[7];
  v202[4] = v169[6];
  v202[5] = v172;
  v202[2] = v170;
  v202[3] = v171;
  v173 = v169[3];
  v202[0] = v169[2];
  v202[1] = v173;
  v174 = v208;
  v169[6] = v207;
  v169[7] = v174;
  v175 = v204;
  v169[2] = v203;
  v169[3] = v175;
  v176 = v206;
  v169[4] = v205;
  v169[5] = v176;
  sub_9724(&v203, v201);
  sub_9780(v202);
  sub_54768();
  sub_9780(&v203);

  v177 = v112;
  [v110 setNeedsLayout];

  v178 = [v131 view];
  if (!v178)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v179 = v178;
  [v178 music_layoutInsets];
  v181 = v180;
  v183 = v182;
  v185 = v184;
  v187 = v186;

  v188 = *(v164 + 3);
  v189 = *(v164 + 4);
  __swift_project_boxed_opaque_existential_1(v164, v188);
  v190 = (*(v189 + 88))(v188, v189);
  [v110 music_setLayoutInsets:{v181 + v190, v183 + v191, v185 + v192, v187 + v193}];

  v194 = sub_141D2C();
  v195 = 1;
  if ((v194 & 1) == 0)
  {
    v195 = 2;
  }

  *&v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_playbackState] = v195;
  v196 = v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator];
  v197 = v200 & 1;
  v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator] = v197;
  if (v197 != v196)
  {
    [v110 setNeedsLayout];
  }
}

void sub_832D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = [objc_allocWithZone(UILabel) init];
    v3 = [objc_opt_self() secondaryLabelColor];
    [v6 setTextColor:v3];

    v4 = [objc_opt_self() systemFontOfSize:12.0];
    [v6 setFont:v4];

    [v6 setNumberOfLines:0];
    [v6 setTextAlignment:1];
    v5 = sub_14489C();
    [v6 setText:v5];

    [v2 setBackgroundView:v6];
  }

  else
  {

    [v2 setBackgroundView:0];
  }
}

void *sub_8344C()
{
  v0 = sub_140ABC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_141C1C();
  v4 = 0;
  if (v41 != 2)
  {
    v5 = v37;
    v6 = v38;
    v7 = v39;
    LODWORD(v8) = v40;
    v9 = sub_141BDC();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 chapters];
      if (v11)
      {
        v12 = v11;
        sub_2B860(0, &unk_1C4A58);
        v13 = sub_1449DC();

        v10 = v12;
      }

      else
      {
        v13 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v35 = v0;
    if (v13 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); i; i = sub_14531C())
    {
      v15 = 0;
      v33 = v13 & 0xFFFFFFFFFFFFFF8;
      v34 = v13 & 0xC000000000000001;
      v36 = (v1 + 1);
      v16 = *&v8;
      v1 = &selRef_metadataObject;
      v17 = v35;
      while (1)
      {
        if (v34)
        {
          v18 = sub_1451FC();
        }

        else
        {
          if (v15 >= *(v33 + 16))
          {
            goto LABEL_25;
          }

          v18 = *(v13 + 8 * v15 + 32);
        }

        v4 = v18;
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v20 = v13;
        [v18 startTime];
        v8 = v21;
        sub_140AAC();
        sub_140A4C();
        v23 = v22;
        v24 = *v36;
        (*v36)(v3, v17);
        v25 = v7 + (v23 - v5) * v16;
        if (v25 >= v6)
        {
          v25 = v6;
        }

        if (v8 <= round(fmax(v25, 0.0) * 1000.0) / 1000.0)
        {
          [v4 startTime];
          v27 = v26;
          [v4 duration];
          v29 = v27 + v28;
          sub_140AAC();
          sub_140A4C();
          v8 = v30;
          v24(v3, v17);
          v31 = v7 + (v8 - v5) * v16;
          if (v31 >= v6)
          {
            v31 = v6;
          }

          if (round(fmax(v31, 0.0) * 1000.0) / 1000.0 < v29)
          {

            return v4;
          }
        }

        ++v15;
        v13 = v20;
        if (v19 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:

    return 0;
  }

  return v4;
}

unint64_t sub_839C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_140BFC();
  if (v7 != sub_140BFC())
  {
    goto LABEL_40;
  }

  v44 = a2;
  result = sub_140BFC();
  v9 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
  v10 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v11 = *(v10 + 16);
  v43 = a1;
  if (!v11)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v41 = result;
  v42 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
  v12 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (i = 0; i != v11; ++i)
  {
    v16 = *(v10 + 32 + i);
    v17 = *(v3 + v12);
    if (v17)
    {
      v18 = *(v17 + 16);
      v19 = (v17 + 32);
      while (v18)
      {
        v20 = *v19++;
        --v18;
        if (v20 == v16)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_92CEC((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v16;
    }
  }

  result = v41;
  v9 = v42;
  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if (result >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    return result;
  }

  v21 = *(&_swiftEmptyArrayStorage[4] + result);

  if (v21 >= 4)
  {
    v33 = sub_87BEC();
    v34 = sub_140C2C();
    v35 = *(*(v34 - 8) + 16);
    if (v33)
    {
      v36 = a3;
      v37 = v44;
LABEL_42:

      return v35(v36, v37, v34);
    }

LABEL_41:
    v36 = a3;
    v37 = a1;
    goto LABEL_42;
  }

  v22 = *(v3 + v9);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

    for (j = 0; j != v23; ++j)
    {
      v28 = *(v22 + 32 + j);
      v29 = *(v3 + v24);
      if (v29)
      {
        v30 = *(v29 + 16);
        v31 = (v29 + 32);
        while (v30)
        {
          v32 = *v31++;
          --v30;
          if (v32 == v28)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v27 = _swiftEmptyArrayStorage[2];
        v26 = _swiftEmptyArrayStorage[3];
        if (v27 >= v26 >> 1)
        {
          sub_92CEC((v26 > 1), v27 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v27 + 1;
        *(&_swiftEmptyArrayStorage[4] + v27) = v28;
      }
    }

LABEL_33:

    a1 = v43;
    v38 = _swiftEmptyArrayStorage[2];
    if (!v38)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v38 = _swiftEmptyArrayStorage[2];
  if (!v38)
  {
LABEL_39:

LABEL_40:
    v40 = sub_140C2C();
    v35 = *(*(v40 - 8) + 16);
    v34 = v40;
    goto LABEL_41;
  }

LABEL_36:
  v39 = 0;
  while (*(&_swiftEmptyArrayStorage[4] + v39) != 4)
  {
    if (v38 == ++v39)
    {
      goto LABEL_39;
    }
  }

  return sub_140BDC();
}

uint64_t sub_84010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_144ABC();
  v5[10] = sub_144AAC();
  v7 = sub_144A8C();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_840AC, v7, v6);
}

uint64_t sub_840AC()
{
  v1 = v0[9];
  v2 = sub_141BBC();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  v6 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_841C0;

  return (v6)(v0 + 2, 0);
}

uint64_t sub_841C0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_84360;
  }

  else
  {
    v4[14] = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 2));
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_842F4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_842F4()
{

  **(v0 + 56) = *(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_84360()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_84518(void *a1)
{
  v2 = v1;
  v4 = sub_140C0C();
  if (v4 == 2)
  {
    v5 = sub_140BFC();
  }

  else if (v4 <= 0)
  {
    v5 = sub_14093C();
  }

  else
  {
    v5 = sub_140C3C();
  }

  v6 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v7 = *(v6 + 16);
  if (v7)
  {
    v58 = v5;
    v59 = a1;
    v8 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
    v9 = v6 + 32;

    for (i = 0; i != v7; ++i)
    {
      v13 = *(v9 + i);
      v14 = *(v1 + v8);
      if (v14)
      {
        v15 = *(v14 + 16);
        v16 = (v14 + 32);
        while (v15)
        {
          v17 = *v16++;
          --v15;
          if (v17 == v13)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_92CEC((v11 > 1), v12 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v12 + 1;
        *(&_swiftEmptyArrayStorage[4] + v12) = v13;
      }
    }

    a1 = v59;
    v5 = v58;
    if ((v58 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (v5 >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_46;
  }

  v18 = *(&_swiftEmptyArrayStorage[4] + v5);

  if (v18 > 2)
  {
    if ((v18 - 4) < 2)
    {
      v27 = sub_14489C();
      v28 = sub_14489C();
      isa = sub_140B9C().super.isa;
      v30 = [a1 dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:isa];

      type metadata accessor for TitleSectionHeaderView();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        return;
      }

      v32 = v31;
      v25 = v30;
      sub_80288(v32, v18);
      goto LABEL_42;
    }

    v48 = sub_14489C();
    v49 = sub_14489C();
    v50 = sub_140B9C().super.isa;
    v51 = [a1 dequeueReusableSupplementaryViewOfKind:v48 withReuseIdentifier:v49 forIndexPath:v50];

    type metadata accessor for TitleSectionHeaderView();
    v52 = swift_dynamicCastClass();
    if (!v52)
    {
      return;
    }

    v24 = v52;
    v25 = v51;
    v26 = 3;
    goto LABEL_41;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v19 = sub_14489C();
      v20 = sub_14489C();
      v21 = sub_140B9C().super.isa;
      v22 = [a1 dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v20 forIndexPath:v21];

      type metadata accessor for TitleSectionHeaderView();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        return;
      }

      v24 = v23;
      v25 = v22;
      v26 = 1;
    }

    else
    {
      v53 = sub_14489C();
      v54 = sub_14489C();
      v55 = sub_140B9C().super.isa;
      v56 = [a1 dequeueReusableSupplementaryViewOfKind:v53 withReuseIdentifier:v54 forIndexPath:v55];

      type metadata accessor for TitleSectionHeaderView();
      v57 = swift_dynamicCastClass();
      if (!v57)
      {
        return;
      }

      v24 = v57;
      v25 = v56;
      v26 = 2;
    }

LABEL_41:
    sub_7FC8C(v26, v24);
    goto LABEL_42;
  }

LABEL_30:
  v33 = sub_14489C();
  v34 = sub_14489C();
  v35 = sub_140B9C().super.isa;
  v36 = [a1 dequeueReusableSupplementaryViewOfKind:v33 withReuseIdentifier:v34 forIndexPath:v35];

  type metadata accessor for NowPlayingControlsHeader();
  v37 = swift_dynamicCastClass();
  if (v37)
  {
    v38 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController);
    if (v38)
    {
      v39 = v37;
      v40 = v36;
      v41 = [v38 view];
      if (!v41)
      {
        v25 = v40;
        goto LABEL_42;
      }

      v42 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView;
      v43 = *&v39[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView];
      *&v39[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView] = v41;
      v25 = v41;

      v44 = *&v39[v42];
      if (v44)
      {
        v45 = [v44 layer];
        [v45 setAllowsGroupOpacity:0];

        v46 = *&v39[v42];
        if (v46)
        {
          v47 = [v46 layer];
          [v47 setAllowsGroupBlending:0];

          if (*&v39[v42])
          {
            [v39 addSubview:?];
            [v39 setNeedsLayout];

LABEL_42:
            return;
          }

LABEL_48:
          __break(1u);
          return;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }
}

void sub_84C3C(char *a1, unint64_t a2)
{
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v8 - 8);
  v73 = &v67 - v9;
  v10 = sub_141C0C();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v67 - v13;
  isa = sub_140B9C().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v15 = sub_140BFC();
  v16 = *&v5[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
  v17 = *(v16 + 16);
  if (!v17)
  {
    v19 = _swiftEmptyArrayStorage;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v68 = v15;
  v69 = a2;
  v3 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  do
  {
    v4 = *(v16 + 32 + v18);
    v21 = *&v5[v3];
    if (v21)
    {
      v22 = *(v21 + 16);
      v23 = (v21 + 32);
      while (v22)
      {
        v24 = *v23++;
        --v22;
        if (v24 == v4)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_92CEC(0, v19[2] + 1, 1);
        v19 = v74;
      }

      a1 = v19[2];
      v20 = v19[3];
      if (a1 >= v20 >> 1)
      {
        sub_92CEC((v20 > 1), (a1 + 1), 1);
        v19 = v74;
      }

      v19[2] = a1 + 1;
      a1[v19 + 32] = v4;
    }

    ++v18;
  }

  while (v18 != v17);

  v15 = v68;
  a2 = v69;
  if ((v68 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v15 >= v19[2])
  {
    __break(1u);
    goto LABEL_51;
  }

  v26 = *(v19 + v15 + 32);

  if ((v26 - 4) >= 2)
  {
    if (v26 != 3)
    {
      return;
    }

    a1 = sub_140BCC();
    v32 = sub_141BDC();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 chapters];
      if (v34)
      {
        v35 = v34;
        sub_2B860(0, &unk_1C4A58);
        v36 = sub_1449DC();

        v33 = v35;
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
    }

    if (!(v36 >> 62))
    {
      v47 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_34;
    }

LABEL_51:
    v47 = sub_14531C();
LABEL_34:

    if (a1 >= v47)
    {
      return;
    }

    v48 = sub_141BDC();
    if (v48)
    {
      v49 = v48;
      v50 = [v48 chapters];
      if (v50)
      {
        v51 = v50;
        sub_2B860(0, &unk_1C4A58);
        v52 = sub_1449DC();

        v49 = v51;
      }

      else
      {
        v52 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v52 = _swiftEmptyArrayStorage;
    }

    v53 = a2;
    v54 = sub_140BCC();
    if ((v52 & 0xC000000000000001) == 0)
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v55 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
        if (v54 < v55)
        {
          v56 = *(v52 + 8 * v54 + 32);
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

    v56 = sub_1451FC();
LABEL_45:
    v4 = v56;

    [v4 startTime];
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A70);
    v59 = v71;
    v17 = *(v71 + 72);
    a2 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_14A710;
    *(v52 + a2) = v58;
    v60 = *(v59 + 104);
    v61 = v72;
    v60(v52 + a2, enum case for PlaybackController.TransportCommand.seekTo(_:), v72);
    if (sub_141D2C())
    {
LABEL_48:
      v62 = sub_144ADC();
      v63 = v73;
      (*(*(v62 - 8) + 56))(v73, 1, 1, v62);
      sub_144ABC();
      v64 = v5;
      v65 = sub_144AAC();
      v66 = swift_allocObject();
      v66[2] = v65;
      v66[3] = &protocol witness table for MainActor;
      v66[4] = v64;
      v66[5] = v52;
      sub_C929C(0, 0, v63, &unk_14F2E0, v66);

      return;
    }

    v60(v67, enum case for PlaybackController.TransportCommand.play(_:), v61);
    v3 = *(v52 + 16);
    v55 = *(v52 + 24);
    v53 = v3 + 1;
    if (v3 < v55 >> 1)
    {
LABEL_47:
      *(v52 + 16) = v53;
      (*(v71 + 32))(v52 + a2 + v3 * v17, v67, v72);
      goto LABEL_48;
    }

LABEL_55:
    v52 = sub_134AA4(v55 > 1, v53, 1, v52);
    goto LABEL_47;
  }

  v27 = sub_140BEC();
  v28 = sub_81AB8(v27, v26);
  if (v28)
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A68);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_14A710;
    v30 = sub_141BBC();
    *(v3 + 56) = v30;
    *(v3 + 64) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v3 + 32)) = v29;
    (*(*(v30 - 8) + 104))();
    v4 = v29;
    if (sub_141D2C())
    {
      v31 = v73;
LABEL_28:
      v43 = sub_144ADC();
      (*(*(v43 - 8) + 56))(v31, 1, 1, v43);
      sub_144ABC();
      v44 = v5;
      v45 = sub_144AAC();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v44;
      v46[5] = v3;
      sub_C8D08(0, 0, v31, &unk_14F2C8, v46);

      return;
    }

LABEL_25:
    v37 = v71;
    v38 = v72;
    (*(v71 + 104))(v70, enum case for PlaybackController.TransportCommand.play(_:), v72);
    v40 = *(v3 + 16);
    v39 = *(v3 + 24);
    v31 = v73;
    if (v40 >= v39 >> 1)
    {
      v3 = sub_134938((v39 > 1), v40 + 1, 1, v3);
    }

    v75 = v38;
    v76 = &protocol witness table for PlaybackController.TransportCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    v42 = v70;
    (*(v37 + 16))(boxed_opaque_existential_1, v70, v38);
    *(v3 + 16) = v40 + 1;
    sub_2B5CC(&v74, v3 + 40 * v40 + 32);
    (*(v37 + 8))(v42, v38);
    goto LABEL_28;
  }
}

uint64_t sub_85474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_144ABC();
  v5[5] = sub_144AAC();
  v7 = sub_144A8C();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_85510, v7, v6);
}

uint64_t sub_85510()
{
  v1 = sub_90684(v0[4]);
  v0[8] = v1;
  v4 = &async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_855D8;

  return (v4)(v1, 0);
}

uint64_t sub_855D8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_85798;
  }

  else
  {

    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_8572C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_8572C()
{
  v1 = *(v0 + 80);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_85798()
{

  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_85800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_144ABC();
  v5[5] = sub_144AAC();
  v7 = sub_144A8C();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_8589C, v7, v6);
}

uint64_t sub_8589C()
{
  v4 = &async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_85958;
  v2 = *(v0 + 24);

  return (v4)(v2, 0);
}

uint64_t sub_85958()
{

  if (v0)
  {
  }

  else
  {
  }

  return _swift_task_switch(sub_85A70, 0, 0);
}

uint64_t sub_85A70()
{
  *(v0 + 72) = sub_144AAC();
  v2 = sub_144A8C();

  return _swift_task_switch(sub_85AFC, v2, v1);
}

uint64_t sub_85AFC()
{
  v1 = v0[2];

  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView);
  if (v4)
  {
    [v4 setContentOffset:1 animated:{0.0, 0.0}];
    v2 = v0[6];
    v3 = v0[7];
    v4 = sub_85B90;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_85B90()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_85CEC(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_forSizing] = 1;
  v3 = v2;
  [v3 setHidden:1];
  [v3 setUserInteractionEnabled:0];

  *&v3[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = *&a1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache];

  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result addSubview:v3];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_86050(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t _s9AlignmentOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_86390()
{
  result = qword_1C4A38;
  if (!qword_1C4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4A38);
  }

  return result;
}

void sub_863E4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController) = 0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_backgroundView;
  *(v1 + v2) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_bindings) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_subscriptions) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController) = 0;
  v3 = (v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoProvider);
  v3[3] = sub_140D9C();
  v3[4] = &protocol witness table for EpisodeTextInfoProvider;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_140D8C();
  v4 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
  v5 = sub_140D3C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections) = &off_19E278;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_allowsSectionCollapse) = 1;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView) = 0;
  v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache;
  _s5CacheCMa();
  swift_allocObject();
  *(v1 + v6) = sub_78E0();
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController__viewDidAppearOnce) = 0;
  sub_1452FC();
  __break(1u);
}

double sub_865D8()
{
  v0 = sub_81DF4();
  if (v0 != 3 && v0 != 6)
  {
    v3 = v0;
    v4 = sub_140BEC();
    v5 = sub_81AB8(v4, v3);
    if (v5)
    {

      v6 = [objc_allocWithZone(NSItemProvider) init];
      v7 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v6];

      isa = sub_140B9C().super.isa;
      [v7 setLocalObject:isa];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
      v9 = swift_allocObject();
      *&result = 1;
      *(v9 + 16) = xmmword_14F0E0;
      *(v9 + 32) = v7;
    }
  }

  return result;
}

void sub_866D8(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_141BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = sub_141BAC();
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v53 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_81DF4();
  if (v14 != 6)
  {
    v15 = v14;
    v16 = sub_140BEC();
    v17 = sub_81AB8(v16, v15);
    if (v17)
    {
      v50 = v11;
      v51 = v17;
      v49 = v2;
      v18 = v12;
      v19 = v5;
      v20 = v7;
      v21 = v6;
      v22 = sub_140BEC();
      v23 = sub_140BEC();
      if (v22)
      {
        v24 = v23;
        v25 = sub_140BEC();
        v26 = v24;
        v27 = v21;
        v28 = v20;
        v29 = v19;
        v30 = v18;
        v31 = v49;
        v32 = v50;
        if (v24 < v25)
        {
          v26 = v24 - 1;
          if (__OFSUB__(v24, 1))
          {
            __break(1u);
            return;
          }
        }

        v33 = sub_81AB8(v26, v15);
        if (v33)
        {
          v34 = &enum case for PlaybackController.QueueCommand.Location.after(_:);
LABEL_10:
          v47 = v29;
          v48 = v30;
          v55 = v33;
          v35 = v53;
          v36 = v54;
          *v53 = v33;
          (*(v36 + 104))(v35, *v34, v30);
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A78) + 48);
          *v32 = v51;
          (*(v36 + 16))(&v32[v37], v35, v30);
          (*(v36 + 56))(&v32[v37], 0, 1, v30);
          (*(v28 + 104))(v32, enum case for PlaybackController.QueueCommand.moveItem(_:), v27);
          v38 = sub_144ADC();
          (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
          v39 = v52;
          (*(v28 + 16))(v52, v32, v27);
          sub_144ABC();
          v55 = v55;
          v51 = v51;
          v40 = v31;
          v41 = sub_144AAC();
          v42 = (*(v28 + 80) + 40) & ~*(v28 + 80);
          v43 = v27;
          v44 = swift_allocObject();
          *(v44 + 2) = v41;
          *(v44 + 3) = &protocol witness table for MainActor;
          *(v44 + 4) = v40;
          (*(v28 + 32))(&v44[v42], v39, v43);
          sub_C8FC8(0, 0, v47, &unk_14F2F8, v44);

          (*(v28 + 8))(v32, v43);
          (*(v36 + 8))(v35, v48);
          return;
        }
      }

      else
      {
        v31 = v49;
        v33 = sub_81AB8(v23, v15);
        v29 = v19;
        v30 = v18;
        v32 = v50;
        if (v33)
        {
          v27 = v21;
          v28 = v20;
          v34 = &enum case for PlaybackController.QueueCommand.Location.before(_:);
          goto LABEL_10;
        }
      }

      v45 = v51;
    }
  }
}

id sub_86BC0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_1D19C(a2, v9, &unk_1C4A80);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) != 1)
  {
    v32 = *(v11 + 32);
    v32(v16, v9, v10);
    v19 = [a1 localDragSession];
    if (v19)
    {
      v20 = [v19 items];
      swift_unknownObjectRelease();
      sub_2B860(0, &qword_1C4A90);
      v21 = sub_1449DC();

      if (v21 >> 62)
      {
        result = sub_14531C();
        if (result)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
LABEL_6:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v23 = sub_1451FC();
          }

          else
          {
            if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }

            v23 = *(v21 + 32);
          }

          v24 = v23;

          v25 = [v24 localObject];

          if (v25)
          {
            sub_14514C();
            swift_unknownObjectRelease();
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
          }

          v35 = v33;
          v36 = v34;
          if (*(&v34 + 1))
          {
            v26 = swift_dynamicCast();
            (*(v11 + 56))(v6, v26 ^ 1u, 1, v10);
            if (v17(v6, 1, v10) != 1)
            {
              v32(v13, v6, v10);
              v27 = sub_140BFC();
              if (v27 == sub_140BFC())
              {
                v28 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:3 intent:1];
                v29 = *(v11 + 8);
                v29(v13, v10);
                v29(v16, v10);
                return v28;
              }

              v30 = *(v11 + 8);
              v30(v13, v10);
              v30(v16, v10);
              return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
            }

            (*(v11 + 8))(v16, v10);
            goto LABEL_23;
          }

          (*(v11 + 8))(v16, v10);
LABEL_22:
          sub_15340(&v35, &qword_1C2F30);
          (*(v11 + 56))(v6, 1, 1, v10);
LABEL_23:
          v18 = v6;
          goto LABEL_24;
        }
      }
    }

    (*(v11 + 8))(v16, v10);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_22;
  }

  v18 = v9;
LABEL_24:
  sub_15340(v18, &unk_1C4A80);
  return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
}

uint64_t sub_870B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

    for (i = 0; i != v2; ++i)
    {
      v7 = *(v1 + 32 + i);
      v8 = *(v0 + v3);
      if (v8)
      {
        v9 = *(v8 + 16);
        v10 = (v8 + 32);
        while (v9)
        {
          v11 = *v10++;
          --v9;
          if (v11 == v7)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_92CEC((v5 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        *(&_swiftEmptyArrayStorage[4] + v6) = v7;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage[2];

  return v12;
}

uint64_t sub_871F4(unint64_t a1)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v5 = *(v4 + 16);
  if (!v5)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = a1;
  v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (i = 0; i != v5; ++i)
  {
    v9 = *(v4 + 32 + i);
    v10 = *(v2 + v6);
    if (v10)
    {
      v11 = *(v10 + 16);
      v12 = (v10 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == v9)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v1 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v1 >= v8 >> 1)
      {
        sub_92CEC((v8 > 1), (v1 + 1), 1);
      }

      _swiftEmptyArrayStorage[2] = v1 + 1;
      *(&_swiftEmptyArrayStorage[4] + v1) = v9;
    }
  }

  a1 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (_swiftEmptyArrayStorage[2] <= a1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v14 = *(&_swiftEmptyArrayStorage[4] + a1);

  v15 = objc_opt_self();
  v1 = [v15 standardUserDefaults];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if (sub_C5928())
      {
        v20 = 1;
      }

      else
      {
        v28 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24);
        v29 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32);
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration), v28);
        v20 = (*(v29 + 48))(v28, v29);
      }

      v30 = sub_141BDC();
      if (v30)
      {
        if (v20)
        {
          v31 = v30;
          v32 = [v30 chapters];
          if (v32)
          {
            v33 = v32;
            sub_2B860(0, &unk_1C4A58);
            v34 = sub_1449DC();

            if (v34 >> 62)
            {
              v37 = sub_14531C();

              return v37;
            }

            else
            {
              v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));

              return v35;
            }
          }
        }

        else
        {
        }
      }
    }

    else if (v14 == 4)
    {
      v16 = sub_141D3C();
      if (v16)
      {
        v17 = v16;
        v18 = sub_144E8C();
        goto LABEL_34;
      }
    }

    else
    {
      v25 = sub_141D3C();
      if (v25)
      {
        v17 = v25;
        v18 = sub_144E7C();
LABEL_34:
        v26 = v18;

        if (!(v26 >> 62))
        {
          v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
LABEL_36:

          return v27;
        }

LABEL_50:
        v27 = sub_14531C();
        goto LABEL_36;
      }
    }

    return 0;
  }

  if (!v14)
  {
LABEL_26:

    return 1;
  }

  if (v14 == 1)
  {
    if (sub_C5904())
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = [v15 standardUserDefaults];
    v22 = sub_C5904();

    if (v22)
    {
LABEL_31:

      return 2;
    }
  }

  v23 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24);
  v24 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration), v23);
  if ((*(v24 + 48))(v23, v24))
  {
    goto LABEL_31;
  }

  v36 = sub_801CC();

  if (v36)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_875F4(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v9 = v6;
  v9[1] = v8;
  sub_11F680(v10);

  sub_1201F8([a2 isExplicitSong]);
  [a2 duration];
  sub_11FCD8(v11);
  v12 = [a2 artist];
  if (v12 && (v13 = v12, v14 = [v12 name], v13, v14))
  {
    v15 = sub_1448DC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  v19 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v18 = v15;
  v18[1] = v17;
  sub_11F860(v19);

  v20 = [a2 album];
  if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
  {
    v23 = sub_1448DC();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  v27 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v26 = v23;
  v26[1] = v25;
  sub_11FACC(v27);

  v28 = [a2 artworkCatalog];
  v29 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = v28;
  v30 = v28;

  v31 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v33 = *(v31 + 80);
  *(v31 + 80) = v28;
  v32 = v30;
  sub_CD5A8(v33);
}

void sub_87850(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v9 = v6;
  v9[1] = v8;
  sub_11F680(v10);

  IsRestricted = MPModelTVEpisodeIsRestricted();
  sub_1201F8(IsRestricted);
  [a2 duration];
  sub_11FCD8(v12);
  v13 = [a2 show];
  if (v13 && (v14 = v13, v15 = [v13 title], v14, v15))
  {
    v16 = sub_1448DC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  v20 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v19 = v16;
  v19[1] = v18;
  sub_11F860(v20);

  v21 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  v22 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  sub_11FACC(v22);

  v23 = [a2 artworkCatalog];
  v24 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = v23;
  v25 = v23;

  v26 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v28 = *(v26 + 80);
  *(v26 + 80) = v23;
  v27 = v25;
  sub_CD5A8(v28);
}

void sub_87A50(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v9 = v6;
  v9[1] = v8;
  sub_11F680(v10);

  IsRestricted = MPModelMovieIsRestricted();
  sub_1201F8(IsRestricted);
  [a2 duration];
  sub_11FCD8(v12);
  v13 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  v14 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  sub_11FACC(v14);

  v15 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  v16 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_11F860(v16);

  v17 = [a2 artworkCatalog];
  v18 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = v17;
  v19 = v17;

  v20 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v22 = *(v20 + 80);
  *(v20 + 80) = v17;
  v21 = v19;
  sub_CD5A8(v22);
}

id sub_87BEC()
{
  v0 = sub_141D3C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_81DF4();
  v3 = 0;
  if (v2 != 3 && v2 != 6)
  {
    v4 = v2;
    v5 = sub_140BEC();
    v6 = sub_81AB8(v5, v4);
    if (v6)
    {
      v7 = v6;
      v8 = [v1 reorderCommand];
      if (v8)
      {
        v3 = [v8 canMoveItem:v7];
        swift_unknownObjectRelease();
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_87CDC(void *a1)
{
  type metadata accessor for SongCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 tableViewCell];
    if (v5)
    {
      v6 = v5;
      [v5 _setAllowsReorderingWhenNotEditing:1];

      [v3 setShowsReorderControl:sub_87BEC() & 1];
      v7 = objc_opt_self();
      v9 = v4;
      v8 = [v7 clearColor];
      [v3 setBackgroundColor:v8];

      [v3 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_87E28(void *a1, unint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
  v6 = *(v5 + 16);
  if (!v6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = a2;
  v7 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (i = 0; i != v6; ++i)
  {
    v11 = *(v5 + 32 + i);
    v12 = *&v2[v7];
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = (v12 + 32);
      while (v13)
      {
        v15 = *v14++;
        --v13;
        if (v15 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_92CEC((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v11;
    }
  }

  a2 = v57;
  v4 = a1;
  if ((v57 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (_swiftEmptyArrayStorage[2] <= a2)
  {
    __break(1u);
    goto LABEL_56;
  }

  v16 = *(&_swiftEmptyArrayStorage[4] + a2);

  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView;
        v18 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView];
        if (v18)
        {
          v19 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView];
        }

        else
        {
          v37 = sub_85CEC(v2);
          v38 = *&v2[v17];
          *&v3[v17] = v37;
          v19 = v37;

          v18 = 0;
        }

        v39 = v18;
        sub_7FC8C(1u, v19);
        v36 = [v3 view];
        if (v36)
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else
      {
        v17 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView;
        v32 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView];
        if (v32)
        {
          v19 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView];
LABEL_41:
          v42 = v32;
          v28 = v3;
          sub_7FC8C(2u, v19);
          v36 = [v3 view];
          if (v36)
          {
            goto LABEL_53;
          }

          __break(1u);
          goto LABEL_43;
        }
      }

      v40 = sub_85CEC(v3);
      v41 = *&v3[v17];
      *&v3[v17] = v40;
      v19 = v40;

      v32 = 0;
      goto LABEL_41;
    }

LABEL_25:

    [v4 bounds];

    return CGRectGetHeight(*&v22);
  }

  if ((v16 - 4) < 2)
  {
    v20 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView;
    v21 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView];
    if (v21)
    {
      v19 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView];
    }

    else
    {
      v33 = sub_85CEC(v2);
      v34 = *&v2[v20];
      *&v3[v20] = v33;
      v19 = v33;

      v21 = 0;
    }

    v35 = v21;
    sub_80288(v19, v16);
    v36 = [v3 view];
    if (v36)
    {
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_36;
  }

  v27 = sub_141BDC();
  if (!v27)
  {
LABEL_36:
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

  v28 = v27;
  v29 = [v27 chapters];
  if (!v29)
  {
LABEL_43:
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v30 = v29;
  sub_2B860(0, &unk_1C4A58);
  v31 = sub_1449DC();

  v28 = v30;
LABEL_44:

LABEL_45:
  if (v31 >> 62)
  {
LABEL_56:
    v43 = sub_14531C();
    goto LABEL_47;
  }

  v43 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
LABEL_47:

  if (v43 < 1)
  {
    return 0.0;
  }

  v44 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView;
  v45 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView];
  if (v45)
  {
    v19 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView];
  }

  else
  {
    v47 = sub_85CEC(v3);
    v48 = *&v3[v44];
    *&v3[v44] = v47;
    v19 = v47;

    v45 = 0;
  }

  v49 = v45;
  sub_7FC8C(3u, v19);
  v36 = [v3 view];
  if (v36)
  {
LABEL_53:
    v50 = v36;
    [v36 music_inheritedLayoutInsets];
    v52 = v51;
    v54 = v53;

    [v4 bounds];
    v55 = CGRectGetWidth(v60) - v52 - v54;
    v56 = v19;
    [v4 bounds];
    [v56 setFrame:{0.0, 0.0, v55, CGRectGetHeight(v61)}];

    [v56 layoutIfNeeded];
    v46 = *&v56[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__currentPreferredHeight];

    return v46;
  }

  __break(1u);
  return result;
}

void sub_88344(void *a1)
{
  v3 = sub_140BFC();
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v5 = *(v4 + 16);
  if (!v5)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v61 = v3;
  v62 = a1;
  v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
  v7 = v4 + 32;

  for (i = 0; i != v5; ++i)
  {
    v11 = *(v7 + i);
    v12 = *(v1 + v6);
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = (v12 + 32);
      while (v13)
      {
        v15 = *v14++;
        --v13;
        if (v15 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_92CEC((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v11;
    }
  }

  a1 = v62;
  v3 = v61;
  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v3 >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_46;
  }

  LODWORD(v5) = *(&_swiftEmptyArrayStorage[4] + v3);

  isa = sub_140B9C().super.isa;
  v17 = [a1 cellForItemAtIndexPath:isa];

  if (v17)
  {
    v18 = [v17 reuseIdentifier];

    if (v18)
    {
      v19 = sub_1448DC();
      v21 = v20;

      if (v19 == 0x6543726563617053 && v21 == 0xEA00000000006C6CLL)
      {

        return;
      }

LABEL_22:
      v22 = sub_1453BC();

      if (v22)
      {
        return;
      }
    }
  }

  [a1 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [a1 music_inheritedLayoutInsets];
  v35 = UIEdgeInsetsInsetRect(v24, v26, v28, v30, v31, v32, v33, v34);
  if (v5 <= 2)
  {
    if (!v5)
    {
      return;
    }

    if (v5 == 1)
    {
      if (sub_140BEC() != 1)
      {
        return;
      }

      v36 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
      swift_beginAccess();
      v37 = sub_140D3C();
      if ((*(*(v37 - 8) + 48))(v1 + v36, 1, v37))
      {
        swift_endAccess();
      }

      else
      {
        v47 = sub_140D2C();
        swift_endAccess();
        if (v47)
        {
          v48 = sub_7EF5C();
          v49 = *&v48[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
          *&v48[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v47;
          v50 = v47;

          sub_FF794();
        }
      }

      v51 = sub_7EF5C();
      v52 = [v51 view];

      if (v52)
      {
        goto LABEL_43;
      }

      __break(1u);
    }

    else
    {
      if (sub_140BEC() != 1)
      {
        return;
      }

      v45 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
      swift_beginAccess();
      v46 = sub_140D3C();
      if ((*(*(v46 - 8) + 48))(v1 + v45, 1, v46))
      {
        swift_endAccess();
        goto LABEL_42;
      }
    }

    v53 = sub_140D1C();
    swift_endAccess();
    if (v53)
    {
      v54 = sub_7EF5C();
      v55 = *&v54[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
      *&v54[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v53;
      v56 = v53;

      sub_FF794();
    }

LABEL_42:
    v57 = sub_7EF5C();
    v52 = [v57 view];

    if (v52)
    {
LABEL_43:
      [a1 bounds];
      Width = CGRectGetWidth(v63);
      LODWORD(v59) = 1148846080;
      LODWORD(v60) = 1112014848;
      [v52 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v59, v60}];

      return;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v38 = v35;
  if ((v5 - 4) >= 2)
  {
    v43 = [a1 traitCollection];
    v39 = v43;
    v44 = v38;
    v42 = 24576;
  }

  else
  {
    v39 = [a1 traitCollection];
    v40 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
    v41 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics), v40);
    v42 = (*(v41 + 104))(v40, v41);
    v43 = v39;
    v44 = v38;
  }

  sub_127FEC(v43, v42, v44);
}

void *sub_888F4()
{
  v0 = _swiftEmptyArrayStorage;
  v24 = _swiftEmptyArrayStorage;
  v1 = sub_81DF4();
  if (v1 == 3 || v1 == 6)
  {
    return v0;
  }

  v3 = v1;
  v4 = sub_140BEC();
  v5 = sub_81AB8(v4, v3);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = [v5 remove];
  if (!v7)
  {

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = [objc_opt_self() mainBundle];
  v18._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x535F45564F4D4552;
  v25._object = 0xEF52414C55474E49;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v10.super.isa = v9;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1409DC(v25, v26, v10, v27, v18);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = v8;
  v13 = sub_14489C();

  v22 = sub_88BAC;
  v23 = v11;
  v18._object = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_86050;
  v21 = &block_descriptor_7;
  v14 = _Block_copy(&v18._object);
  v15 = [objc_opt_self() swipeActionWithStyle:1 title:v13 handler:v14];

  _Block_release(v14);

  [v15 setResetsSwipedRow:0];
  v16 = v15;
  sub_1449BC();
  if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1449FC();
  }

  sub_144A2C();

  return v24;
}

uint64_t sub_88B74()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_88BAC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 performRequest:v1 completion:0];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_88C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_85800(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_88D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_85474(a1, v4, v5, v7, v6);
}

uint64_t sub_88DF0()
{
  v1 = sub_141BBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_88EBC(uint64_t a1)
{
  v4 = *(sub_141BBC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_84010(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_88FB4()
{
  v1 = sub_140C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

void sub_890A0()
{
  sub_140C2C();
  v1 = *(v0 + 16);

  sub_812CC(v1);
}

unint64_t sub_89140()
{
  result = qword_1C4AE0;
  if (!qword_1C4AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2530);
    sub_4236C(&qword_1C4AE8, &qword_1C4AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4AE0);
  }

  return result;
}

uint64_t sub_891F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_89230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16ReusableViewTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s16ReusableViewTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_89398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_893F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_8946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14138C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_895BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_14138C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_896E4()
{
  result = sub_14138C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_89784(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_140D5C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_89844(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_140D5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_898E8()
{
  result = type metadata accessor for NowPlayingPlaybackControlsController();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
    if (v2 <= 0x3F)
    {
      result = sub_140D5C();
      if (v3 <= 0x3F)
      {
        result = sub_1421BC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}