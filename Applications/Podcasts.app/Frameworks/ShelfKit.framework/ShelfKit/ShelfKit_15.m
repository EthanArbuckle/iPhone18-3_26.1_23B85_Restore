uint64_t sub_1966C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
    swift_beginAccess();
    v2 = *v1;
    if (*v1)
    {
      sub_7A6C8(v2);

      v2(v3);
      sub_16AC0(v2);
    }

    else
    {
    }
  }

  type metadata accessor for PodcastDetail(0);
  return sub_3E9E04();
}

uint64_t sub_1967A4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_1960A4(a1, a2, a3, a4);
  v5 = type metadata accessor for ModernShelf();
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 0, 1, v5);
}

uint64_t sub_196814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModernShelf();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19C8E8(a1, v7, type metadata accessor for ModernShelf);
  sub_19C76C(v7, a2, type metadata accessor for ModernShelf);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_196924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6768);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6770);
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v21 = &v20 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6778);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v29 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6358, &qword_4F6350);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  sub_3EA054();

  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
  sub_886BC(&qword_4F6780, &qword_4F6768);
  sub_886BC(&qword_4F61F0, &qword_4F61E0);
  v13 = v21;
  v14 = v23;
  sub_3E9FE4();
  (*(v24 + 8))(v7, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_19A170;
  *(v15 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_886BC(&qword_4F6788, &qword_4F6770);
  v16 = v25;
  sub_3EA024();

  (*(v28 + 8))(v13, v16);
  sub_886BC(&qword_4F6790, &qword_4F6778);
  v17 = v26;
  v18 = sub_3E9F94();
  (*(v27 + 8))(v12, v17);
  return v18;
}

uint64_t sub_196DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v52 = a1;
  v51 = a4;
  v47 = sub_3EC544();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v50 = sub_3EC164();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3ECCF4();
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = sub_3E8034();
  v19 = v17;
  v20 = v18;
  if (v16)
  {
    v21 = sub_3E7B24();
    v23 = v22;
    v55 = v19;
    v56 = v20;
    v69._countAndFlagsBits = 95;
    v69._object = 0xE100000000000000;
    sub_3ED3D4(v69);
    v24._countAndFlagsBits = v21;
    v24._object = v23;
  }

  else
  {
    v55 = v17;
    v56 = v18;
    v70._countAndFlagsBits = 95;
    v70._object = 0xE100000000000000;
    sub_3ED3D4(v70);
    *&v62 = v15;
    sub_C2A70();
    v24._countAndFlagsBits = sub_3EE7A4();
  }

  sub_3ED3D4(v24);

  sub_3ECCE4();
  (*(v10 + 16))(v53, v14, v54);
  v25 = sub_3E8034();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66A8);
  inited = swift_initStackObject();
  v29 = inited;
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = 0x656C746974;
  v30 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  if (*(a2 + 56))
  {
    v31 = *(a2 + 48);
    v32 = *(a2 + 56);
  }

  else
  {
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  *(inited + 48) = v31;
  *(inited + 56) = v32;

  v33 = sub_615E0(v29);
  swift_setDeallocating();
  sub_FCF8(v30, &qword_4F66B0);
  swift_getObjectType();
  v34 = HighlightsProviderProtocol.isSharedContent(_:)(v15, v16);
  if (v16)
  {
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v55 = v15;
    sub_17A28();
    v35 = sub_3EE1F4();
  }

  v55 = v35;
  v56 = v36;
  v57 = v25;
  v58 = v27;
  v59 = v33;
  v60 = v34 & 1;
  v61 = 0;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  v37 = v46;
  v38 = v47;
  (*(v46 + 16))(v45, v8, v47);
  v39 = v48;
  sub_3EC0C4();
  v68 = v62;
  sub_FCF8(&v68, &unk_4F8A10);
  v67 = v63;
  sub_FCF8(&v67, &qword_4E94E0);
  v66 = v64;
  sub_FCF8(&v66, &unk_4F8A20);
  sub_16AC0(v65);
  (*(v37 + 8))(v8, v38);

  v40 = v54;
  (*(v10 + 8))(v14, v54);
  v41 = v51;
  (*(v10 + 32))(v51, v53, v40);
  v42 = type metadata accessor for ModernPage();
  (*(v49 + 32))(v41 + *(v42 + 20), v39, v50);
  *(v41 + *(v42 + 24)) = v52;
}

uint64_t sub_197488@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v80 = a8;
  v86 = a6;
  v87 = a7;
  v83 = a4;
  v84 = a5;
  v82 = a3;
  v12 = type metadata accessor for ErrorModel();
  __chkstk_darwin(v12 - 8);
  v79 = (v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v85);
  v78 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v76 - v16;
  v18 = type metadata accessor for ModernPage();
  __chkstk_darwin(v18 - 8);
  v88 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v20 - 8);
  v81 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v76 - v23;
  v25 = type metadata accessor for ModernShelf();
  __chkstk_darwin(v25);
  v77 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = (v76 - v28);
  v30 = *a1;
  v32 = v31;
  sub_FBD0(a2, v24, &unk_503DA0);
  v33 = *(v32 + 48);
  if (v33(v24, 1, v25) == 1)
  {
    sub_FCF8(v24, &unk_503DA0);
    *a9 = 0;
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  sub_19C76C(v24, v29, type metadata accessor for ModernShelf);
  v34 = (v30 >> 57) & 0x78 | v30 & 7;
  if (v34 == 31)
  {
    v89 = 1;
    v79 = v29;
    sub_19C8E8(v29, v17, type metadata accessor for ModernShelf);
    v76[0] = *(v32 + 56);
    v76[1] = v32 + 56;
    (v76[0])(v17, 0, 2, v25);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v43 = v90;
    v44 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_E02FC((v45 > 1), v46 + 1, 1, v44);
    }

    sub_FCF8(v17, &qword_4F5978);
    v44[2] = v46 + 1;
    v44[v46 + 4] = v43;
    v47 = v81;
    sub_FBD0(v82, v81, &unk_503DA0);
    if (v33(v47, 1, v25) == 1)
    {
      sub_FCF8(v47, &unk_503DA0);
      v29 = v79;
    }

    else
    {
      v53 = v77;
      sub_19C76C(v47, v77, type metadata accessor for ModernShelf);
      v54 = v78;
      sub_19C8E8(v53, v78, type metadata accessor for ModernShelf);
      (v76[0])(v54, 0, 2, v25);
      sub_3E9504();
      v55 = v90;
      v57 = v44[2];
      v56 = v44[3];
      v29 = v79;
      if (v57 >= v56 >> 1)
      {
        v44 = sub_E02FC((v56 > 1), v57 + 1, 1, v44);
      }

      sub_FCF8(v54, &qword_4F5978);
      sub_19C950(v53, type metadata accessor for ModernShelf);
      v44[2] = v57 + 1;
      v44[v57 + 4] = v55;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6450);
    sub_3E9504();
    v58 = v90;
    v60 = v44[2];
    v59 = v44[3];
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v44 = sub_E02FC((v59 > 1), v60 + 1, 1, v44);
    }

    v44[2] = v61;
    v44[v60 + 4] = v58;
    v62 = v84;
    sub_192B2C(v84);
    v63 = v44[3];
    v64 = v60 + 2;
    if (v64 > (v63 >> 1))
    {
      v44 = sub_E02FC((v63 > 1), v64, 1, v44);
    }

    v44[2] = v64;
    v44[v61 + 4] = v62;
    LOBYTE(v90) = v89;
    v91 = _swiftEmptyArrayStorage;
    v92 = v44;
    ModernShelfListBuilder.buildList()();
    v66 = v65;

    v67 = v88;
    sub_196DAC(v66, v86, v87, v88);

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_19C8E8(v67, a9, type metadata accessor for ModernPage);
    v41 = sub_3E66E4();
    v42 = v67;
    goto LABEL_22;
  }

  if (v34 == 95 || v34 == 63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
    v35 = *(v32 + 72);
    v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_3F5310;
    v38 = v37 + v36;
    sub_19C8E8(v29, v38, type metadata accessor for ModernShelf);
    static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, (v38 + v35));
    v39 = v88;
    sub_196DAC(v37, v86, v87, v88);

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_19C8E8(v39, a9, type metadata accessor for ModernPage);
    v41 = sub_3E66E4();
    v42 = v39;
LABEL_22:
    sub_19C950(v42, type metadata accessor for ModernPage);
    sub_19C950(v29, type metadata accessor for ModernShelf);
    a9[v40] = v41;
LABEL_25:
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v52 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v51 = 0;
    goto LABEL_24;
  }

  v49 = *(Strong + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_localShowPageFeedUpdater);

  if (v49)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = sub_199510;
    *(v51 + 24) = v49;
    v52 = sub_19CBC4;
LABEL_24:
    v68 = swift_allocObject();
    *(v68 + 16) = v52;
    *(v68 + 24) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
    v69 = *(v32 + 72);
    v70 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_3F5310;
    v72 = v71 + v70;
    sub_19C8E8(v29, v72, type metadata accessor for ModernShelf);
    v73 = v79;
    static ErrorModel.offline(_:)(sub_19CBC0, v68, v79);
    static ModernShelf.errorShelf(id:_:)(0x685320726F727245, 0xEB00000000666C65, v73, (v72 + v69));
    sub_19C950(v73, type metadata accessor for ErrorModel);
    v74 = v88;
    sub_196DAC(v71, v86, v87, v88);

    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_19C8E8(v74, a9, type metadata accessor for ModernPage);
    LOBYTE(v71) = sub_3E66E4();

    sub_19C950(v74, type metadata accessor for ModernPage);
    sub_19C950(v29, type metadata accessor for ModernShelf);
    a9[v75] = v71;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_197F18(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_internalStatusSubscription))
  {

    sub_3E9CA4();
  }

  return sub_26C78C();
}

uint64_t sub_197F64()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_197FE8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  if (*a1)
  {
    v10 = 0;
  }

  else
  {
    v11 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType;
    swift_beginAccess();
    if (*(a2 + v11))
    {
      v13 = sub_3EE804();

      v10 = v13 ^ 1;
    }

    else
    {

      v10 = 0;
    }
  }

  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  (*(v15 + 144))(a4, a5 & 1, v10 & 1, v14, v15);
  v16 = sub_3ECD54();

  *a6 = v16;
  return result;
}

uint64_t sub_198128@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(*result + 16);
  if (!v3 || (v4 = OBJC_IVAR____TtC8ShelfKit5Shelf_items, result = swift_beginAccess(), v5 = *(v3 + v4), !*(v5 + 16)) || (sub_1F958(v5 + 32, v6), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70), type metadata accessor for ShowHeader(), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

void sub_1981DC()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_3E5D14(v1);
  v3 = v2;
  sub_628C4(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_19CAA4(&qword_4E9130, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_3ED084().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

uint64_t sub_1982E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A8);
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v22 - v5;
  v7 = sub_3E9A04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9934();
  swift_errorRetain();
  v11 = sub_3E99F4();
  v12 = sub_3ED9D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v4;
    v16 = a1;
    v17 = v15;
    *v14 = 138412290;
    v18 = sub_3E5B74();
    *(v14 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_0, v11, v12, "LibraryShowPresenter: failed to load store footer: %@", v14, 0xCu);
    sub_FCF8(v17, &unk_502160);
    a1 = v16;
    v4 = v22;

    a2 = v23;
  }

  (*(v8 + 8))(v10, v7);
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_886BC(&qword_4F6710, &qword_4F6708);
  sub_3EA024();
  sub_886BC(&qword_4F67B0, &qword_4F67A8);
  v19 = v24;
  v20 = sub_3E9F94();
  result = (*(v4 + 8))(v6, v19);
  *a2 = v20;
  return result;
}

uint64_t sub_198630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_1986D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  sub_FBD0(a1, &v14 - v11, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_FBD0(v12, v9, a5);

  sub_3E9EB4();
  return sub_FCF8(v12, a5);
}

uint64_t sub_198830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6478);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v43 - v4;
  v57 = type metadata accessor for PageContent();
  __chkstk_darwin(v57);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64B8);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64A8);
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v50 = &v43 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6450);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v43 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6448);
  v13 = *(v64 - 8);
  __chkstk_darwin(v64);
  v15 = &v43 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v45 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__headerShelf;
  v21 = type metadata accessor for ModernShelf();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  sub_FBD0(v20, v17, &unk_503DA0);
  sub_3E9E64();
  sub_FCF8(v20, &unk_503DA0);
  v23 = *(v13 + 32);
  v24 = v46;
  v23(v46 + v45, v15, v64);
  v25 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__highlightShelf;
  v22(v20, 1, 1, v21);
  sub_FBD0(v20, v17, &unk_503DA0);
  sub_3E9E64();
  sub_FCF8(v20, &unk_503DA0);
  v23(v24 + v25, v15, v64);
  v26 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__episodeShelfResult;
  v27 = type metadata accessor for ShowEpisodesShelvesProvider.Result(0);
  v28 = v47;
  (*(*(v27 - 8) + 56))(v47, 1, 2, v27);
  sub_FBD0(v28, v48, &qword_4F6450);
  v29 = v50;
  sub_3E9E64();
  sub_FCF8(v28, &qword_4F6450);
  v30 = v24;
  (*(v51 + 32))(v24 + v26, v29, v52);
  v31 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__footerShelves;
  *&v65[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
  v32 = v53;
  sub_3E9E64();
  (*(v54 + 32))(v30 + v31, v32, v55);
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_subscriptions) = _swiftEmptyArrayStorage;
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_localShowPageFeedUpdater) = 0;
  v33 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_pageContent;
  *v56 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v30 + v33) = sub_3E9D94();
  v34 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__showDetail;
  *&v65[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6538);
  v35 = v58;
  sub_3E9E64();
  (*(v59 + 32))(v30 + v34, v35, v60);
  v36 = (v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  *v36 = 0;
  v36[1] = 0;
  v37 = v62;
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_graph) = v61;
  v38 = (v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID);
  v39 = v63;
  *v38 = v37;
  v38[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30);
  sub_3EC444();

  sub_3ECD14();
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_highlightsProvider) = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3ECD14();
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_libraryDataProvider) = v65[0];
  sub_19CAEC();
  sub_3ECD04();
  v40 = v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showEpisodesShelvesProvider;
  v41 = v65[1];
  *v40 = v65[0];
  *(v40 + 16) = v41;
  *(v40 + 32) = v65[2];
  *(v40 + 48) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3ECD14();
  sub_1D4F0(v65, v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_storeDataProvider);
  return v30;
}

uint64_t type metadata accessor for LibraryShowProvider()
{
  result = qword_4F6508;
  if (!qword_4F6508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199158()
{
  sub_199374(319, &qword_4F6518, &unk_503DA0);
  if (v0 <= 0x3F)
  {
    sub_199374(319, &qword_4F6520, &qword_4F6450);
    if (v1 <= 0x3F)
    {
      sub_199374(319, &qword_4F6528, &qword_4F14E8);
      if (v2 <= 0x3F)
      {
        sub_199374(319, &qword_4F6530, &unk_4F6538);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_199374(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_3E9EC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1993C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_199408()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_199440()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_199494(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66A0);
  return v3(a1, a1 + v4[12], a1 + v4[16], a1 + v4[20], *(a1 + v4[24]));
}

uint64_t sub_199520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v49 = a3;
  v48 = a2;
  v58 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67B8);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67C8);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v46 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67D0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v56 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67D8);
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v53 = &v46 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67E0);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67E8);
  v46 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67F0);
  v47 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  if (*(a5 + 24) & 1) != 0 || (v24 = *(a5 + 16), (sub_3E94A4()))
  {
    sub_19C9B0();
    *&v66[0] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    sub_3E9DD4();
    sub_886BC(&qword_4F6808, &qword_4F67C0);
    v25 = sub_3E9F94();
    (*(v10 + 8))(v12, v9);
    *&v66[0] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9DD4();
    sub_886BC(&qword_4F6810, &qword_4F67B8);
    v26 = v65;
    sub_3E9F94();
    (v64)[1](v8, v26);
  }

  else
  {
    v27 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
    swift_beginAccess();
    v28 = *(a5 + v27);
    if (v28)
    {
      v29 = *(v28 + 16);
    }

    else
    {
      v29 = 0;
    }

    v30 = v28 == 0;
    ObjectType = swift_getObjectType();
    v67 = (*(v49 + 232))(v29, v30, ObjectType);
    sub_1F958(v63, v66);
    v32 = swift_allocObject();
    *(v32 + 16) = a5;
    sub_1D4F0(v66, v32 + 24);
    *(v32 + 64) = v24;
    *(v32 + 72) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6818);
    v64 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
    sub_3EA024();

    sub_886BC(&qword_4F6820, &qword_4F67E8);
    sub_886BC(&qword_4F6828, &qword_4F6818);
    sub_3EA194();
    (*(v46 + 8))(v20, v18);
    v65 = &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>;
    sub_886BC(&qword_4F6830, &qword_4F67F0);
    v33 = sub_3E9F34();
    (*(v47 + 8))(v23, v21);
    *&v66[0] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6838);
    sub_886BC(&qword_4F6840, &qword_4F6838);
    v34 = sub_3E9F94();

    *&v66[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6800);
    v35 = v50;
    sub_3EA024();
    sub_886BC(&qword_4F6848, &qword_4F67E0);
    v36 = v52;
    v25 = sub_3E9F94();
    (*(v51 + 8))(v35, v36);
    *&v66[0] = v34;
    swift_getKeyPath();
    v37 = v53;
    sub_3EA014();

    sub_1F958(v63, v66);
    v38 = swift_allocObject();
    sub_1D4F0(v66, v38 + 16);
    *(v38 + 56) = v58;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
    sub_886BC(&qword_4F6850, &qword_4F67D8);
    v39 = v57;
    v40 = v55;
    sub_3EA024();

    sub_886BC(&qword_4F6858, &qword_4F67C8);
    sub_886BC(&qword_4F6340, &qword_4F6330);
    v41 = v56;
    v42 = v62;
    sub_3E9F84();
    (*(v60 + 8))(v39, v42);
    sub_886BC(&qword_4F6860, &qword_4F67D0);
    v43 = v61;
    v44 = sub_3E9F94();
    (*(v59 + 8))(v41, v43);
    (*(v54 + 8))(v37, v40);
    *&v66[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6350);
    sub_886BC(&qword_4F6358, &qword_4F6350);
    sub_3E9F94();
  }

  return v25;
}

uint64_t sub_19A0F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_19A174@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_19A1AC(uint64_t a1)
{
  v201 = type metadata accessor for Header(0);
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v3 = &v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v209 = &v181 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v181 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v9 - 8);
  v208 = &v181 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v11 - 8);
  v197 = &v181 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v13 - 8);
  v198 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v206 = &v181 - v16;
  v17 = sub_3E5DC4();
  v212 = *(v17 - 8);
  v213 = v17;
  __chkstk_darwin(v17);
  v186 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v18;
  __chkstk_darwin(v19);
  v202 = &v181 - v20;
  v211 = type metadata accessor for Information();
  v203 = *(v211 - 8);
  __chkstk_darwin(v211);
  v187 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v181 - v23;
  __chkstk_darwin(v25);
  v27 = &v181 - v26;
  __chkstk_darwin(v28);
  v30 = &v181 - v29;
  __chkstk_darwin(v31);
  v33 = &v181 - v32;
  v192 = sub_3E5FC4();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v181 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v35 - 8);
  v195 = &v181 - v36;
  v189 = sub_3EC1F4();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v194 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v193 = &v181 - v39;
  v40 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v40);
  v42 = (&v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  swift_beginAccess();
  v207 = a1;
  v44 = *(a1 + v43);
  v199 = v3;
  v210 = v8;
  if (v44 && v44[4])
  {
    v45 = *(v44 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
    if (v45 < 1)
    {
      v45 = *(v44 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount);
    }

    v46 = v44[4];
    v47 = v44[3];
    if (v45 <= 1)
    {
      strcpy(&v215, "channelTitle.");
      HIWORD(v215) = -4864;

      v222._countAndFlagsBits = v47;
      v222._object = v46;
      sub_3ED3D4(v222);
      v88 = v215;
      v89 = [objc_opt_self() mainBundle];
      v179._countAndFlagsBits = 0xE000000000000000;
      v223._countAndFlagsBits = 0x5F4C454E4E414843;
      v223._object = 0xED0000454C544954;
      v230.value._countAndFlagsBits = 0;
      v230.value._object = 0;
      v90.super.isa = v89;
      v236._countAndFlagsBits = 0;
      v236._object = 0xE000000000000000;
      v91 = sub_3E5A74(v223, v230, v90, v236, v179);
      v92 = v47;
      v94 = v93;

      v217 = 0;
      v215 = 0u;
      v216 = 0u;
      v95 = *(v211 + 40);
      v96 = sub_3EC634();
      (*(*(v96 - 8) + 56))(&v30[v95], 1, 1, v96);
      *v30 = v88;
      *(v30 + 2) = v91;
      *(v30 + 3) = v94;
      *(v30 + 4) = 0;
      *(v30 + 5) = 0;
      *(v30 + 6) = v92;
      *(v30 + 7) = v46;
      sub_FBD0(&v215, (v30 + 64), &qword_4EDE00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
      v97 = swift_allocObject();
      *(v97 + 20) = 0;
      sub_FCF8(&v215, &qword_4EDE00);
      *(v97 + 16) = 0;
      *(v30 + 13) = v97;
      v68 = sub_E0590(0, 1, 1, _swiftEmptyArrayStorage);
      v70 = v68[2];
      v98 = v68[3];
      v71 = v70 + 1;
      if (v70 >= v98 >> 1)
      {
        v68 = sub_E0590(v98 > 1, v70 + 1, 1, v68);
      }

      v72 = v206;

      v33 = v30;
      v73 = v207;
    }

    else
    {
      *v42 = v44;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      v183 = v46;

      v48 = v193;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v205 = type metadata accessor for FlowAction(0);
      v49 = swift_allocObject();
      v182 = v47;
      v50 = v49;
      sub_19C8E8(v42, v49 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
      type metadata accessor for FlowAction.DestinationType(0);
      swift_storeEnumTagMultiPayload();
      v51 = (v50 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
      *v51 = 0;
      v51[1] = 0;
      *(v50 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
      *(v50 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
      *(v50 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 1;
      v52 = v188;
      v53 = v189;
      (*(v188 + 16))(v194, v48, v189);
      v196 = sub_3EC634();
      v54 = *(v196 - 1);
      v184 = *(v54 + 56);
      v204 = v54 + 56;
      v184(v195, 1, 1, v196);
      v55 = v190;
      sub_3E5FB4();
      v56 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v58 = v57;
      (*(v191 + 8))(v55, v192);
      (*(v52 + 8))(v193, v53);
      sub_19C950(v42, type metadata accessor for FlowDestination);
      *(v50 + 16) = v56;
      *(v50 + 24) = v58;
      v59 = v183;
      *(v50 + 32) = v182;
      *(v50 + 40) = v59;
      *(v50 + 48) = 48;
      (*(v52 + 32))(v50 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v194, v53);
      sub_FACC(v195, v50 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
      *&v215 = 0x2E6C656E6E616863;
      *(&v215 + 1) = 0xE800000000000000;
      v214 = v44[2];
      sub_17A28();
      v218._countAndFlagsBits = sub_3EE1F4();
      sub_3ED3D4(v218);

      v60 = *(&v215 + 1);
      v61 = v215;
      v62 = [objc_opt_self() mainBundle];
      v179._countAndFlagsBits = 0xE000000000000000;
      v219._countAndFlagsBits = 0x5F4C454E4E414843;
      v219._object = 0xED0000454C544954;
      v228.value._countAndFlagsBits = 0;
      v228.value._object = 0;
      v63.super.isa = v62;
      v234._countAndFlagsBits = 0;
      v234._object = 0xE000000000000000;
      v64 = sub_3E5A74(v219, v228, v63, v234, v179);
      v66 = v65;

      *(&v216 + 1) = v205;
      v217 = sub_19CAA4(&qword_4F8A40, type metadata accessor for FlowAction);
      *&v215 = v50;
      v184(&v33[*(v211 + 40)], 1, 1, v196);
      *v33 = v61;
      *(v33 + 1) = v60;
      *(v33 + 2) = v64;
      *(v33 + 3) = v66;
      *(v33 + 2) = 0u;
      *(v33 + 3) = 0u;
      sub_FBD0(&v215, (v33 + 64), &qword_4EDE00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
      v67 = swift_allocObject();
      *(v67 + 20) = 0;

      sub_FCF8(&v215, &qword_4EDE00);
      *(v67 + 16) = 0;
      *(v33 + 13) = v67;
      v68 = sub_E0590(0, 1, 1, _swiftEmptyArrayStorage);
      v70 = v68[2];
      v69 = v68[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v68 = sub_E0590(v69 > 1, v70 + 1, 1, v68);
      }

      v72 = v206;
      v73 = v207;
    }
  }

  else
  {
    v73 = v207;
    v74 = v207[12];
    if (!v74)
    {
      goto LABEL_16;
    }

    v75 = v207[11];
    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (!v76)
    {
LABEL_16:
      v87 = _swiftEmptyArrayStorage;
      v72 = v206;
      goto LABEL_21;
    }

    *&v215 = 0x2E726F7461657263;
    *(&v215 + 1) = 0xE800000000000000;

    v220._countAndFlagsBits = v75;
    v220._object = v74;
    sub_3ED3D4(v220);
    v77 = v215;
    v78 = [objc_opt_self() mainBundle];
    v179._countAndFlagsBits = 0xE000000000000000;
    v221._countAndFlagsBits = 0x524F5441455243;
    v221._object = 0xE700000000000000;
    v229.value._countAndFlagsBits = 0;
    v229.value._object = 0;
    v79.super.isa = v78;
    v235._countAndFlagsBits = 0;
    v235._object = 0xE000000000000000;
    v80 = sub_3E5A74(v221, v229, v79, v235, v179);
    v82 = v81;

    v217 = 0;
    v215 = 0u;
    v216 = 0u;
    v83 = *(v211 + 40);
    v84 = sub_3EC634();
    (*(*(v84 - 8) + 56))(&v27[v83], 1, 1, v84);
    *v27 = v77;
    *(v27 + 2) = v80;
    *(v27 + 3) = v82;
    *(v27 + 4) = 0;
    *(v27 + 5) = 0;
    *(v27 + 6) = v75;
    *(v27 + 7) = v74;
    sub_FBD0(&v215, (v27 + 64), &qword_4EDE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
    v85 = swift_allocObject();
    *(v85 + 20) = 0;
    sub_FCF8(&v215, &qword_4EDE00);
    *(v85 + 16) = 0;
    *(v27 + 13) = v85;
    v68 = sub_E0590(0, 1, 1, _swiftEmptyArrayStorage);
    v70 = v68[2];
    v86 = v68[3];
    v71 = v70 + 1;
    if (v70 >= v86 >> 1)
    {
      v68 = sub_E0590(v86 > 1, v70 + 1, 1, v68);
    }

    v33 = v27;
    v72 = v206;
    v73 = v207;
  }

  v68[2] = v71;
  sub_19C76C(v33, v68 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v70, type metadata accessor for Information);
  v87 = v68;
LABEL_21:
  v196 = objc_opt_self();
  v99 = [v196 mainBundle];
  v179._countAndFlagsBits = 0xE000000000000000;
  v224._countAndFlagsBits = 0x5345444F53495045;
  v224._object = 0xE800000000000000;
  v231.value._countAndFlagsBits = 0;
  v231.value._object = 0;
  v100.super.isa = v99;
  v237._countAndFlagsBits = 0;
  v237._object = 0xE000000000000000;
  v101 = sub_3E5A74(v224, v231, v100, v237, v179);
  v103 = v102;

  v217 = 0;
  v215 = 0u;
  v216 = 0u;
  v104 = *(v211 + 40);
  v105 = sub_3EC634();
  v106 = *(v105 - 8);
  v205 = *(v106 + 56);
  v206 = v105;
  v204 = v106 + 56;
  v205(&v24[v104], 1, 1);
  *v24 = 0xD00000000000001CLL;
  *(v24 + 1) = 0x80000000004296F0;
  *(v24 + 2) = v101;
  *(v24 + 3) = v103;
  *(v24 + 4) = 0;
  *(v24 + 5) = 0;
  *(v24 + 3) = xmmword_40A830;
  sub_FBD0(&v215, (v24 + 64), &qword_4EDE00);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
  v108 = swift_allocObject();
  *(v108 + 20) = 0;
  sub_FCF8(&v215, &qword_4EDE00);
  *(v108 + 16) = 0;
  *(v24 + 13) = v108;
  v109 = v87;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v109 = sub_E0590(0, v87[2] + 1, 1, v87);
  }

  v111 = v109[2];
  v110 = v109[3];
  if (v111 >= v110 >> 1)
  {
    v109 = sub_E0590(v110 > 1, v111 + 1, 1, v109);
  }

  v109[2] = v111 + 1;
  v112 = (*(v203 + 80) + 32) & ~*(v203 + 80);
  v113 = *(v203 + 72);
  sub_19C76C(v24, v109 + v112 + v113 * v111, type metadata accessor for Information);
  sub_FBD0(v73 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, v72, &unk_4E9EE0);
  v115 = v212;
  v114 = v213;
  v116 = (*(v212 + 48))(v72, 1, v213);
  v207 = v109;
  if (v116 == 1)
  {
    sub_FCF8(v72, &unk_4E9EE0);
    v117 = v210;
    v118 = v208;
    v119 = v196;
  }

  else
  {
    v184 = v113;
    v203 = v112;
    v120 = v73;
    v121 = *(v115 + 32);
    v122 = v202;
    v121(v202, v72, v114);
    v123 = *(v120 + 56);
    v183 = *(v120 + 48);
    v182 = v123;
    v124 = v186;
    (*(v115 + 16))(v186, v122, v114);
    v125 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v126 = swift_allocObject();
    v121((v126 + v125), v124, v114);

    v127 = v193;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v185 = type metadata accessor for ClosureAction();
    v128 = swift_allocObject();
    v129 = (v128 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v129 = sub_19C888;
    v129[1] = v126;
    v130 = v188;
    v131 = *(v188 + 16);
    v186 = v107;
    v132 = v194;
    v133 = v189;
    v131(v194, v127, v189);
    v134 = v195;
    (v205)(v195, 1, 1, v206);

    v135 = v190;
    sub_3E5FB4();
    v136 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v138 = v137;

    (*(v191 + 8))(v135, v192);
    (*(v130 + 8))(v127, v133);
    *(v128 + 16) = v136;
    *(v128 + 24) = v138;
    v139 = v182;
    *(v128 + 32) = v183;
    *(v128 + 40) = v139;
    *(v128 + 48) = 32;
    (*(v130 + 32))(v128 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v132, v133);
    sub_FACC(v134, v128 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
    *&v215 = 0x2E65746973626577;
    *(&v215 + 1) = 0xE800000000000000;
    v225._countAndFlagsBits = sub_3E5CD4();
    sub_3ED3D4(v225);

    v140 = v215;
    v119 = v196;
    v141 = [v196 mainBundle];
    v180._countAndFlagsBits = 0xE000000000000000;
    v226._countAndFlagsBits = 0x4245575F574F4853;
    v226._object = 0xEC00000045544953;
    v232.value._countAndFlagsBits = 0;
    v232.value._object = 0;
    v142.super.isa = v141;
    v238._countAndFlagsBits = 0;
    v238._object = 0xE000000000000000;
    v143 = sub_3E5A74(v226, v232, v142, v238, v180);
    v145 = v144;

    *(&v216 + 1) = v185;
    v217 = sub_19CAA4(&qword_4F13D8, type metadata accessor for ClosureAction);
    *&v215 = v128;
    v146 = v187;
    (v205)(&v187[*(v211 + 40)], 1, 1, v206);
    *v146 = v140;
    v147 = v207;
    *(v146 + 16) = v143;
    *(v146 + 24) = v145;
    *(v146 + 32) = 0u;
    *(v146 + 48) = 0u;
    sub_FBD0(&v215, v146 + 64, &qword_4EDE00);
    v148 = swift_allocObject();
    *(v148 + 20) = 0;

    sub_FCF8(&v215, &qword_4EDE00);
    *(v148 + 16) = 0;
    *(v146 + 104) = v148;
    v150 = v147[2];
    v149 = v147[3];
    if (v150 >= v149 >> 1)
    {
      v147 = sub_E0590(v149 > 1, v150 + 1, 1, v147);
    }

    v117 = v210;
    v118 = v208;
    v151 = v184;

    (*(v212 + 8))(v202, v213);
    v147[2] = v150 + 1;
    v207 = v147;
    sub_19C76C(v146, v147 + v203 + v150 * v151, type metadata accessor for Information);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
  v211 = type metadata accessor for ModernShelf();
  v202 = ((*(*(v211 - 8) + 80) + 32) & ~*(*(v211 - 8) + 80));
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_3F5630;
  v152 = [v119 mainBundle];
  v180._countAndFlagsBits = 0xE000000000000000;
  v227._object = 0x8000000000429710;
  v227._countAndFlagsBits = 0xD000000000000011;
  v233.value._countAndFlagsBits = 0;
  v233.value._object = 0;
  v153.super.isa = v152;
  v239._countAndFlagsBits = 0;
  v239._object = 0xE000000000000000;
  v196 = sub_3E5A74(v227, v233, v153, v239, v180);
  v195 = v154;

  v155 = type metadata accessor for ActionMenu(0);
  v194 = *(*(v155 - 8) + 56);
  (v194)(v118, 1, 1, v155);
  v156 = type metadata accessor for Header.PrimaryAction(0);
  v157 = *(*(v156 - 8) + 56);
  v157(v117, 1, 1, v156);
  v158 = sub_3E7784();
  v159 = *(*(v158 - 8) + 56);
  v159(v209, 1, 1, v158);
  v160 = v199;
  v199[32] = 0;
  *v160 = 0u;
  *(v160 + 16) = 0u;
  v161 = v201;
  v193 = *(v201 + 28);
  (v194)(&v193[v160], 1, 1, v155);
  v162 = *(v161 + 32);
  v157((v160 + v162), 1, 1, v156);
  v163 = *(v161 + 36);
  v159(v160 + v163, 1, 1, v158);
  v164 = v196;
  v165 = v195;
  if (sub_3EE0E4())
  {
    *v160 = v164;
    *(v160 + 8) = v165;
    *(v160 + 16) = 0;
    *(v160 + 24) = 0;
    *(v160 + 32) = 0;
    sub_51F9C(v208, &v193[v160], &qword_4F1AB8);
    v166 = v210;
    sub_F7C5C(v210, v160 + v162);
    sub_51F9C(v209, v160 + v163, &qword_4F1D50);
    v167 = v197;
    sub_19C8E8(v160, v197, type metadata accessor for Header);
    (*(v200 + 56))(v167, 0, 1, v161);
    sub_FCF8(v166, &qword_4F1AB0);
    sub_19C950(v160, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v209, &qword_4F1D50);
    sub_FCF8(v208, &qword_4F1AB8);
    sub_FCF8(v210, &qword_4F1AB0);
    sub_19C950(v160, type metadata accessor for Header);
    v167 = v197;
    (*(v200 + 56))(v197, 1, 1, v161);
  }

  v168 = v203;
  v169 = &v202[v203];
  v210 = sub_770EC(v207);

  v170 = v213;
  v171 = *(v212 + 56);
  v172 = v198;
  v171(v198, 1, 1, v213);
  v173 = v211;
  v174 = &v169[*(v211 + 48)];
  *(v174 + 4) = 0;
  *v174 = 0u;
  *(v174 + 1) = 0u;
  (v205)(&v169[v173[13]], 1, 1, v206);
  v175 = v173[9];
  v176 = &v169[v173[8]];
  v171(&v169[v175], 1, 1, v170);
  *v169 = 0x74616D726F666E69;
  *(v169 + 1) = 0xEB000000006E6F69;
  sub_FACC(v167, &v169[v173[5]], &qword_4F1AC0);
  v177 = &v169[v173[6]];
  *v177 = 16;
  *(v177 + 3) = 256;
  *(v177 + 2) = 0;
  *(v177 + 1) = 1;
  *&v169[v173[7]] = v210;
  sub_51F9C(v172, &v169[v175], &unk_4E9EE0);
  v169[v173[10]] = 1;
  v169[v173[11]] = 0;
  *v176 = 0;
  *(v176 + 1) = 0;
  return v168;
}

size_t sub_19BD58(void *a1, uint64_t a2)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6798);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v74 = type metadata accessor for Information();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74 - 8);
  v71 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v62 - v9);
  v83 = type metadata accessor for ModernShelf();
  v76 = *(v83 - 8);
  __chkstk_darwin(v83);
  v87 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62D0);
  v12 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = (&v62 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62D8);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v62 - v18);
  v80 = a1[2];
  v79 = (v12 + 56);
  v78 = (v12 + 48);
  v20 = (v6 + 56);
  v84 = 0x80000000004296F0;

  v22 = 0;
  v73 = a1;
  v85 = v16;
  v64 = a1;
  v63 = v10;
  while (1)
  {
LABEL_3:
    v23 = v81;
    if (v22 == v80)
    {
      v24 = 1;
      v22 = v80;
    }

    else
    {
      if (v22 >= v80)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_41;
      }

      v25 = a1 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v22;
      v26 = *(v81 + 48);
      v27 = v75;
      *v75 = v22;
      sub_19C8E8(v25, v27 + v26, type metadata accessor for ModernShelf);
      v28 = v27;
      v16 = v85;
      sub_FACC(v28, v85, &qword_4F62D0);
      v24 = 0;
      ++v22;
    }

    (*v79)(v16, v24, 1, v23);
    sub_FACC(v16, v19, &qword_4F62D8);
    if ((*v78)(v19, 1, v23) == 1)
    {
      return v73;
    }

    v29 = *v19;
    v30 = v87;
    sub_19C76C(v19 + *(v23 + 48), v87, type metadata accessor for ModernShelf);
    if (ModernShelf.ItemKind.rawValue.getter(*(v30 + *(v83 + 24))) == 0x74616D726F666E69 && v31 == 0xEB000000006E6F69)
    {
      break;
    }

    v33 = sub_3EE804();

    if (v33)
    {
      goto LABEL_16;
    }

    result = sub_19C950(v87, type metadata accessor for ModernShelf);
    v16 = v85;
  }

LABEL_16:
  v34 = *(v87 + *(v83 + 28));
  v35 = *(v34 + 16);
  v77 = v34 + 32;
  v82 = v34;

  v36 = 0;
  while (1)
  {
    v37 = v74;
    while (1)
    {
      while (1)
      {
        v38 = v36;
        v39 = 0uLL;
        v36 = v35;
        v40 = 0uLL;
        v41 = 0uLL;
        if (v38 != v35)
        {
          if (v38 >= *(v82 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v36 = v38 + 1;
          *&v88 = v38;
          sub_1F958(v77 + 40 * v38, &v88 + 8);
          v39 = v88;
          v40 = v89;
          v41 = v90;
        }

        v91[0] = v39;
        v91[1] = v40;
        v91[2] = v41;
        if (!v41)
        {
          sub_19C950(v87, type metadata accessor for ModernShelf);

          a1 = v64;
          v16 = v85;
          goto LABEL_3;
        }

        v86 = v39;
        sub_1D4F0((v91 + 8), &v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        v42 = swift_dynamicCast();
        v43 = *v20;
        if (v42)
        {
          break;
        }

        v43(v5, 1, 1, v37);
        result = sub_FCF8(v5, &qword_4F6798);
      }

      v43(v5, 0, 1, v37);
      sub_19C76C(v5, v10, type metadata accessor for Information);
      if (*v10 == 0xD00000000000001CLL && v84 == v10[1])
      {
        break;
      }

      if (sub_3EE804())
      {
        break;
      }

      result = sub_19C950(v10, type metadata accessor for Information);
    }

    *&v88 = v72;
    v92._countAndFlagsBits = sub_3EE7A4();
    *&v88 = 0xD00000000000001CLL;
    *(&v88 + 1) = v84;
    sub_3ED3D4(v92);

    v69 = *(&v88 + 1);
    v70 = v88;
    v44 = v10[3];
    v68 = v10[2];
    v67 = v44;
    *&v88 = v72;

    v66 = sub_3EE7A4();
    v65 = v45;
    *&v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v46 = *(v74 + 40);
    v47 = sub_3EC634();
    v48 = v71;
    (*(*(v47 - 8) + 56))(v71 + v46, 1, 1, v47);
    v49 = v69;
    *v48 = v70;
    v48[1] = v49;
    v50 = v67;
    v48[2] = v68;
    v48[3] = v50;
    v48[4] = 0;
    v48[5] = 0;
    v51 = v65;
    v48[6] = v66;
    v48[7] = v51;
    sub_FBD0(&v88, (v48 + 8), &qword_4EDE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
    v52 = swift_allocObject();
    *(v52 + 20) = 0;
    sub_FCF8(&v88, &qword_4EDE00);
    *(v52 + 16) = 0;
    v48[13] = v52;
    *(&v89 + 1) = v74;
    *&v90 = sub_19CAA4(&qword_4EDDE8, type metadata accessor for Information);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v88);
    sub_19C8E8(v48, boxed_opaque_existential_0Tm, type metadata accessor for Information);
    v54 = v73;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      result = sub_2A5130(v54);
      v73 = result;
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    if (v29 >= v73[2])
    {
      goto LABEL_43;
    }

    v55 = v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v29;
    v56 = *(v83 + 28);
    v57 = *(v55 + v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v55;
    *(v55 + v56) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_2A5144(v57);
      *(v70 + v56) = v61;
    }

    sub_19C950(v71, type metadata accessor for Information);
    v10 = v63;
    result = sub_19C950(v63, type metadata accessor for Information);
    if ((v86 & 0x8000000000000000) != 0)
    {
      break;
    }

    v59 = *(v70 + v56);
    if (v86 >= *(v59 + 16))
    {
      goto LABEL_45;
    }

    v60 = v59 + 40 * v86;
    __swift_destroy_boxed_opaque_existential_1Tm(v60 + 32);
    result = sub_1D4F0(&v88, v60 + 32);
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_19C76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19C7D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_19A1AC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_19C800()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_19C888()
{
  sub_3E5DC4();

  sub_1981DC();
}

uint64_t sub_19C8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19C950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19C9B0()
{
  result = qword_4F67F8;
  if (!qword_4F67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F67F8);
  }

  return result;
}

uint64_t sub_19CA04()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_19CA58()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_19CAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19CAEC()
{
  result = qword_4F6870;
  if (!qword_4F6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F6870);
  }

  return result;
}

unint64_t sub_19CB54()
{
  result = qword_4F6878;
  if (!qword_4F6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F6878);
  }

  return result;
}

uint64_t RecommendationsMetadataProvider.metadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6890);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v10 = *(v0 + 16);
  v5 = qword_4E8A08;

  if (v5 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6290);
  sub_886BC(&unk_4F68A0, &qword_4F6290);
  v6 = sub_3E9F44();

  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6298);
  sub_3E8FB4();
  sub_886BC(&unk_4F68B0, &qword_4F6298);
  sub_3E9FA4();

  sub_886BC(&qword_4F62A0, &unk_4F6890);
  v7 = sub_3E9F94();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_19CE60()
{
  sub_36174(0, &qword_4F6BF0);
  sub_3EE084();
  result = sub_3EE034();
  qword_4F6880 = result;
  return result;
}

uint64_t sub_19CEC0()
{
  sub_3E8E64();
  sub_3E8E44();
  sub_3E8E34();
  sub_3E8E24();
  sub_3E8E14();

  return sub_3E8F84();
}

uint64_t sub_19CF58()
{
  v7 = sub_3EDBB4();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3EDB54();
  __chkstk_darwin(v3);
  v4 = sub_3EBC14();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_36174(0, &qword_4F10B0);
  sub_3EBBF4();
  v8 = _swiftEmptyArrayStorage;
  sub_1A0398(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0);
  sub_886BC(&qword_4F1CB8, &qword_4F1CB0);
  sub_3EE244();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_3EDBF4();
  qword_4F6888 = result;
  return result;
}

uint64_t sub_19D1CC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = [sub_3ECA44() doubleForKey:kBagKeyListenNowStoreShelvesThrottleInterval];
  swift_unknownObjectRelease();
  if (qword_4E8A10 != -1)
  {
    swift_once();
  }

  v7 = [v6 asyncValuePromiseOnQueue:qword_4F6888];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BC8);
  v8 = v7;
  sub_3ECDF4();
  v9 = sub_3ECD24();

  v12[1] = v9;
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BD0);
  sub_886BC(&qword_4F6BD8, &qword_4F6BD0);
  sub_3EA024();

  sub_886BC(&unk_4F6BE0, &qword_4F6BC0);
  v10 = sub_3E9F94();

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_19D498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3E97B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_3EDC94();
  if (qword_4E8A08 != -1)
  {
    swift_once();
  }

  sub_3E97A4();
  sub_3E9774();
  result = (*(v5 + 8))(v7, v4);
  if (v8 && (v11 = 0, v12 = 1, result = sub_3ED784(), v12 != 1))
  {
    v10 = v11;
  }

  else
  {
    v10 = 0x40E5180000000000;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_19D620()
{
  v1 = sub_3E92E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6BA8);
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_3ED244();
  v8 = [objc_opt_self() predicateForSubscribedChannel];
  v9 = [*(v0 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_managedContextProvider) privateQueueContext];
  sub_36174(0, &qword_4F10B0);
  sub_3EDBC4();
  sub_3E92D4();
  sub_1A0398(&qword_4F2E70, &type metadata accessor for FetchedResultsCountPublisher);
  sub_3EA004();
  (*(v2 + 8))(v4, v1);
  if (qword_4E8A08 != -1)
  {
    swift_once();
  }

  sub_886BC(&qword_4F6BB8, &unk_4F6BA8);
  v10 = v16;
  v11 = sub_3E9F44();
  (*(v15 + 8))(v7, v10);
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  v12 = sub_3E9F94();

  return v12;
}

uint64_t RecommendationsMetadataProvider.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_19FF00();

  return v0;
}

uint64_t RecommendationsMetadataProvider.init(asPartOf:)()
{
  v0 = sub_19FF00();

  return v0;
}

uint64_t sub_19DA40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v43 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E8);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v32 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69F0);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v33 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69F8);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  __chkstk_darwin(v9);
  v34 = &v31 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A00);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v31 - v12;
  v47 = sub_19D1CC();
  v46 = *(v0 + 24);

  v45 = sub_19D620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  sub_886BC(&qword_4F6A18, &qword_4F6A08);
  sub_886BC(&unk_4F6A20, &unk_4F69C0);
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  v13 = v32;
  sub_3E9B64();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1A0300;
  v15 = v31;
  *(v14 + 24) = v31;
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A30);
  sub_886BC(&qword_4F6A38, &qword_4F69E8);
  v17 = v33;
  v18 = v35;
  sub_3EA024();

  (*(v36 + 8))(v13, v18);
  sub_886BC(&qword_4F6A40, &qword_4F69F0);
  sub_886BC(&unk_4F6A48, &qword_4F6A30);
  v19 = v34;
  v20 = v38;
  sub_3EA184();
  (*(v39 + 8))(v17, v20);
  sub_36174(0, &qword_4F10B0);
  v21 = sub_3EDBC4();
  v47 = v21;
  v22 = sub_3EDB64();
  v23 = v43;
  (*(*(v22 - 8) + 56))(v43, 1, 1, v22);
  sub_886BC(&unk_4F6A58, &qword_4F69F8);
  sub_87870();
  v24 = v37;
  v25 = v40;
  sub_3EA114();
  sub_FCF8(v23, &qword_4F69E0);

  (*(v41 + 8))(v19, v25);
  v26 = *(v16 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A0370;
  *(v27 + 24) = v26;
  sub_886BC(&qword_4F6A68, &qword_4F6A00);

  v28 = v42;
  sub_3EA1A4();

  (*(v44 + 8))(v24, v28);
  v29 = *(v16 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_subscriptions);
  os_unfair_lock_lock(v29 + 6);
  sub_1A037C();
  os_unfair_lock_unlock(v29 + 6);
}

uint64_t sub_19E16C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v22 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A70);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A80);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  sub_36174(0, &qword_4F6A88);
  v13 = [objc_opt_self() mainRunLoop];
  v14 = sub_3EE004();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = sub_3EDE74();

  sub_FCF8(v4, &qword_4F6A70);
  v23 = v15;
  sub_3EDE64();
  sub_1A0398(&unk_4F6A90, &type metadata accessor for NSTimer.TimerPublisher);
  v16 = sub_3E9DA4();

  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA738);
  sub_3E5F84();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E5F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AA0);
  sub_886BC(&qword_4F6AA8, &qword_4F6AA0);
  sub_3EA104();

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AB0);
  sub_886BC(&qword_4F6AB8, &qword_4F6A78);
  sub_3EA024();

  (*(v6 + 8))(v8, v5);
  sub_886BC(&unk_4F6AC0, &qword_4F6A80);
  sub_886BC(&qword_4F62A8, &qword_4F6AB0);
  v17 = v20;
  sub_3EA184();
  return (*(v21 + 8))(v12, v17);
}

uint64_t sub_19E694@<X0>(uint64_t *a1@<X8>)
{
  v14 = a1;
  v1 = sub_3E8F34();
  __chkstk_darwin(v1 - 8);
  v2 = sub_3E8F74();
  __chkstk_darwin(v2 - 8);
  v3 = sub_3E8F54();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3E8F04();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3E8F94();
  __chkstk_darwin(v5 - 8);
  v6 = sub_3E8FB4();
  __chkstk_darwin(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AD0);
  v13 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = sub_19EA44();
  }

  else
  {
    sub_3E8F84();
    sub_3E8EF4();
    sub_3E8F44();
    sub_3E8F64();
    sub_3E8F24();
    sub_3E8FA4();
    sub_3E9DF4();
    sub_886BC(&qword_4F6AD8, &qword_4F6AD0);
    v10 = sub_3E9F94();
    result = (*(v13 + 8))(v9, v7);
  }

  *v14 = v10;
  return result;
}

uint64_t sub_19EA44()
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AE0);
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v33 = v30 - v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AE8);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = v30 - v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6AF0);
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = v30 - v3;
  v4 = sub_3E8F34();
  __chkstk_darwin(v4 - 8);
  v32 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E8F74();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3E8F54();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3E8F04();
  __chkstk_darwin(v8 - 8);
  v9 = sub_3E8F94();
  __chkstk_darwin(v9 - 8);
  v10 = sub_3E8FB4();
  __chkstk_darwin(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AD0);
  v31 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = sub_3E7424();
  v46[3] = v14;
  v46[4] = sub_1A0398(&qword_4F07A0, &type metadata accessor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v46);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.ponderosaForceColdStart(_:), v14);
  LOBYTE(v14) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  if (v14)
  {
    sub_3E8F84();
    sub_3E8EF4();
    sub_3E8F44();
    sub_3E8F64();
    sub_3E8F24();
    sub_3E8FA4();
    sub_3E9DF4();
    sub_886BC(&qword_4F6AD8, &qword_4F6AD0);
    v16 = sub_3E9F94();
    (*(v31 + 8))(v13, v11);
  }

  else
  {
    v32 = v10;
    v46[0] = sub_19FAB0();
    v17 = *(v0 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_libraryDataProvider + 8);
    ObjectType = swift_getObjectType();
    v45 = v17[11](ObjectType, v17);
    if (qword_4E8A08 != -1)
    {
      swift_once();
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B00);
    v30[2] = sub_886BC(&qword_4F6B08, &qword_4F6B00);
    v19 = sub_3E9F44();

    v45 = v19;
    v44 = v17[12](ObjectType, v17);
    v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B10);
    sub_886BC(&qword_4F6B18, &qword_4F6B10);
    v20 = sub_3E9F44();

    v44 = v20;
    v43 = v17[13](ObjectType, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B20);
    sub_886BC(&qword_4F6B28, &qword_4F6B20);
    v21 = sub_3E9F44();

    v43 = v21;
    v42 = v17[14](ObjectType, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B30);
    sub_886BC(&qword_4F6B38, &qword_4F6B30);
    v22 = sub_3E9F44();

    v42 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B40);
    sub_886BC(&qword_4F6B48, &qword_4F6B40);
    v23 = v33;
    sub_3E9BB4();
    sub_886BC(&qword_4F6B50, &qword_4F6AE0);
    v24 = v34;
    v25 = v39;
    sub_3EA024();
    (*(v36 + 8))(v23, v25);
    sub_886BC(&qword_4F6B58, &qword_4F6AE8);
    v26 = v35;
    v27 = v40;
    sub_3EA084();
    (*(v37 + 8))(v24, v27);
    sub_886BC(&qword_4F6B60, &unk_4F6AF0);
    v28 = v41;
    v16 = sub_3E9F94();
    (*(v38 + 8))(v26, v28);
  }

  return v16;
}

uint64_t sub_19F488(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_3E8FB4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_FCF8(v6, &qword_4F69B8);
}

uint64_t sub_19F5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_3E8F34();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E8F74();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3E8F54();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3E8F04();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E8F94();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B68);
  v17 = v16[12];
  v18 = v16[16];
  v19 = v16[20];
  v22 = v16[24];
  (*(v13 + 16))(v15, a1, v12);
  (*(v9 + 16))(v11, a1 + v17, v23);
  (*(v7 + 16))(v24, a1 + v18, v25);
  (*(v27 + 16))(v26, a1 + v19, v28);
  (*(v30 + 16))(v29, a1 + v22, v31);
  return sub_3E8FA4();
}

uint64_t RecommendationsMetadataProvider.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_bag;
  v2 = sub_3ECAD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RecommendationsMetadataProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_bag;
  v2 = sub_3ECAD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_19FAB0()
{
  v17 = sub_3E8F94();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B78);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B80);
  sub_3E9194();
  v10 = sub_3E9174();
  sub_3E9184();

  sub_3ECDF4();
  v11 = sub_3ECD54();

  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B88);
  sub_886BC(&qword_4F6B90, &qword_4F6B88);
  v12 = v17;
  sub_3EA024();

  sub_3E8F84();
  sub_886BC(&qword_4F6B98, &qword_4F6B70);
  sub_3E9FC4();
  (*(v0 + 8))(v2, v12);
  (*(v4 + 8))(v6, v3);
  if (qword_4E8A08 != -1)
  {
    swift_once();
  }

  sub_886BC(&qword_4F6BA0, &qword_4F6B78);
  v13 = v19;
  v14 = sub_3E9F44();
  (*(v18 + 8))(v9, v13);
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B40);
  sub_886BC(&qword_4F6B48, &qword_4F6B40);
  v15 = sub_3E9F94();

  return v15;
}

uint64_t sub_19FF00()
{
  v1 = v0;
  v2 = sub_3ECAD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_3E8FB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6290);
  swift_allocObject();
  *(v1 + 16) = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0);
  swift_allocObject();
  *(v1 + 24) = sub_3E9D94();
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v10 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_subscriptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v10;
  *(v1 + v11) = v12;
  sub_3EC444();
  sub_3ECD14();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_bag, v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC394();
  *(v1 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_libraryDataProvider) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  sub_3EC394();
  *(v1 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_managedContextProvider) = v14;
  sub_19DA40();
  return v1;
}

uint64_t type metadata accessor for RecommendationsMetadataProvider()
{
  result = qword_4F6908;
  if (!qword_4F6908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A0220()
{
  result = sub_3ECAD4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A0308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A0398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A03E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A0438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShowEpisodesShelvesProvider.shelvesPublisher(showUUID:showPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v53 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C00);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v46 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C08);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C10);
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  __chkstk_darwin(v6);
  v57 = &v46 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C18);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v46 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C20);
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v46 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C28);
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C30);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C38);
  v18 = *(v46 - 8);
  __chkstk_darwin(v46);
  v20 = &v46 - v19;
  v47 = a3;
  *&v75[0] = a3;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6708);
  v70 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v22 = sub_886BC(&qword_4F6710, &qword_4F6708);
  v48 = v21;
  v49 = v22;
  sub_3EA014();

  sub_886BC(&qword_4F6C40, &qword_4F6C30);
  sub_1A10D4();
  sub_3EA174();
  (*(v15 + 8))(v17, v14);
  v51 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_886BC(&qword_4F6C60, &qword_4F6C38);
  v23 = v46;
  v71 = sub_3E9F24();
  (*(v18 + 8))(v20, v23);
  *&v75[0] = a3;
  v24 = v73;
  sub_3EA024();
  (*(v74 + 16))(v50, v24, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C68);
  swift_allocObject();
  sub_886BC(&qword_4F6C70, &qword_4F6C28);
  v25 = sub_3E8A84();
  v26 = v52;
  v27 = *(v52 + 48);
  ObjectType = swift_getObjectType();
  *&v75[0] = (*(v27 + 344))(v53, v54, ObjectType, v27);
  v54 = *&v75[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C78);
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C80);
  sub_886BC(&qword_4F6C88, &qword_4F6C80);
  v29 = sub_3E8A84();
  *&v75[0] = v47;
  v77 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C90);
  sub_886BC(&qword_4F6C98, &qword_4F6C90);
  v30 = v55;
  sub_3E9FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0);
  sub_886BC(&qword_4F6CA8, &qword_4F6C00);
  v31 = v56;
  v32 = v58;
  sub_3EA024();
  (*(v59 + 8))(v30, v32);
  sub_886BC(&qword_4F6CB0, &qword_4F6C08);
  v33 = v57;
  v34 = v60;
  sub_3EA004();
  (*(v61 + 8))(v31, v34);
  sub_1A226C(v26, v75);
  v35 = swift_allocObject();
  *(v35 + 16) = v25;
  *(v35 + 24) = v29;
  v36 = v75[1];
  *(v35 + 32) = v75[0];
  *(v35 + 48) = v36;
  *(v35 + 64) = v75[2];
  *(v35 + 80) = v76;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1A22F4;
  *(v37 + 24) = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CB8);
  sub_886BC(&qword_4F6CC0, &qword_4F6C10);
  v38 = v62;
  v39 = v64;
  sub_3EA024();

  (*(v65 + 8))(v33, v39);
  sub_886BC(&qword_4F6CC8, &qword_4F6C18);
  sub_886BC(&qword_4F6CD0, &qword_4F6CB8);
  v40 = v63;
  v41 = v67;
  sub_3EA184();
  (*(v69 + 8))(v38, v41);
  sub_886BC(&qword_4F6CD8, &qword_4F6C20);
  v42 = v66;
  v43 = sub_3E9F34();
  (*(v68 + 8))(v40, v42);
  *&v75[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6740);
  sub_886BC(&qword_4F6748, &qword_4F6740);
  v44 = sub_3E9F94();

  (*(v74 + 8))(v73, v72);
  return v44;
}

unint64_t sub_1A10D4()
{
  result = qword_4F6C48;
  if (!qword_4F6C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F6C50);
    sub_1A1158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F6C48);
  }

  return result;
}

unint64_t sub_1A1158()
{
  result = qword_4F6C58;
  if (!qword_4F6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F6C58);
  }

  return result;
}

double ShowEpisodesShelvesProvider.init(asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC444();
  sub_3ECD14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3ECD14();

  result = *&v3;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1A1280@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = ~a3;
  swift_beginAccess();
  v9 = MTPodcastHidesPlayedEpisodesResolved();
  v10 = a2;
  v11 = a3;
  if (!v8)
  {
    v10 = sub_3E8364();
    v11 = v12;
  }

  sub_1A9FF8(a2, a3);
  if (v9)
  {
    sub_3E83D4();
  }

  v13 = sub_3E8384(v9);
  v15 = v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_bridgeObjectRetain_n();
  sub_1748BC(v10, v11);
  result = sub_3E8954();
  v19 = *(a1 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *a4 = v16;
  *(a4 + 8) = v17;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v13;
  *(a4 + 56) = v15;
  *(a4 + 64) = v19;
  return result;
}

double sub_1A1418@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0);
  v7 = (a2 + *(v6 + 96));
  v8 = *(v6 + 112);
  sub_1A1280(v3, v4, v5, &v17);
  result = *&v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  *a2 = v17;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *v7 = v14;
  v7[1] = v15;
  *(a2 + v8) = v16;
  return result;
}

uint64_t sub_1A14CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, void (*a17)(char *, uint64_t, uint64_t), uint64_t a18, uint64_t a19, unsigned __int8 a20)
{
  v128 = a8;
  v127 = a16;
  v126 = a15;
  LODWORD(v117) = a14;
  v122 = a19;
  v123 = a13;
  v115 = a7;
  v116 = a12;
  v110 = a11;
  v120 = a10;
  v121 = a20;
  v129 = a9;
  v124 = a18;
  v114 = a17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6ED8);
  __chkstk_darwin(v100);
  v102 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v101 = &v98 - v28;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EE0);
  __chkstk_darwin(v104);
  v105 = (&v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v112 = &v98 - v31;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EE8);
  __chkstk_darwin(v109);
  v108 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v98 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0);
  v37 = (v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v98 - v41;
  *v42 = a1;
  *(v42 + 1) = a2;
  v125 = a2;
  v111 = a3;
  *(v42 + 2) = a3;
  v43 = v116;
  v113 = a4;
  v42[24] = a4 & 1;
  v118 = a5;
  *(v42 + 4) = a5;
  v119 = a6;
  v42[40] = a6;
  v44 = v37[22];
  v45 = sub_3E8944();
  v103 = *(v45 - 8);
  v47 = v103 + 16;
  v46 = *(v103 + 16);
  v106 = v44;
  v46(&v42[v44], v115, v45);
  v48 = &v42[v37[26]];
  v49 = v129;
  *v48 = v128;
  *(v48 + 1) = v49;
  v42[v37[30]] = v120;
  v50 = v110;
  *v39 = v110;
  *(v39 + 1) = v43;
  *(v39 + 2) = v123;
  v39[24] = v117 & 1;
  *(v39 + 4) = v126;
  v39[40] = v127;
  v107 = v37[22];
  v51 = v114;
  v114 = v46;
  v115 = v47;
  v46(&v39[v107], v51, v45);
  v52 = &v39[v37[26]];
  v53 = v122;
  *v52 = v124;
  *(v52 + 1) = v53;
  v39[v37[30]] = v121;
  if ((a1 != v50 || v125 != v43) && (sub_3EE804() & 1) == 0)
  {

    sub_1748BC(v118, v119);

    sub_1748BC(v126, v127);
    v93 = &qword_4F6CA0;
    sub_FCF8(v39, &qword_4F6CA0);
    v94 = v42;
    goto LABEL_18;
  }

  v54 = v120 & 1;
  LODWORD(v110) = v121 & 1;
  v55 = v113 & 1;
  *v35 = v111;
  v35[8] = v55;
  v56 = v45;
  v57 = v118;
  *(v35 + 2) = v118;
  v58 = v119;
  v35[24] = v119;
  v59 = v109;
  v99 = *(v109 + 64);
  v114(&v35[v99], &v42[v106], v45);
  v60 = &v35[v59[20]];
  v61 = v129;
  *v60 = v128;
  *(v60 + 1) = v61;
  v62 = v59[24];
  LODWORD(v106) = v54;
  v35[v62] = v54;
  v63 = v108;

  sub_1748BC(v57, v58);

  v64 = v57;
  v65 = v117;
  sub_1748BC(v64, v58);

  v66 = v122;

  v67 = v126;
  LOBYTE(v61) = v127;
  sub_1748BC(v126, v127);
  sub_FCF8(v42, &qword_4F6CA0);
  *v63 = v123;
  *(v63 + 8) = v65 & 1;
  *(v63 + 16) = v67;
  *(v63 + 24) = v61;
  v68 = v59[16];
  v125 = v56;
  v69 = v56;
  v70 = v66;
  v114((v63 + v68), &v39[v107], v69);
  v71 = (v63 + v59[20]);
  *v71 = v124;
  v71[1] = v66;
  *(v63 + v59[24]) = v110;

  sub_1748BC(v67, v61);
  sub_FCF8(v39, &qword_4F6CA0);
  if (v113)
  {
    v72 = v112;
    if ((v65 & 1) == 0)
    {
LABEL_14:
      v93 = &qword_4F6EE8;
      sub_FCF8(v63, &qword_4F6EE8);
      v94 = v35;
      goto LABEL_18;
    }
  }

  else
  {
    v72 = v112;
    if ((v65 & 1) != 0 || v111 != v123)
    {
      goto LABEL_14;
    }
  }

  *v72 = v118;
  v72[8] = v119;
  v73 = v104;
  v74 = *(v103 + 32);
  v117 = *(v104 + 48);
  v75 = v125;
  v74(&v72[v117], &v35[v99], v125);
  v76 = &v72[v73[16]];
  v77 = v129;
  *v76 = v128;
  *(v76 + 1) = v77;
  v72[v73[20]] = v106;
  v78 = v105;
  *v105 = v126;
  *(v78 + 8) = v127;
  v123 = v73[12];
  v79 = (v63 + v68);
  v80 = v75;
  v74((v78 + v123), v79, v75);
  v81 = (v78 + v73[16]);
  v82 = v124;
  *v81 = v124;
  v81[1] = v70;
  v83 = v110;
  *(v78 + v73[20]) = v110;
  if (sub_3E83E4())
  {
    v84 = v112;
    v85 = v101;
    v86 = v70;
    v87 = v114;
    v114(v101, &v112[v117], v80);
    v88 = v100;
    v89 = (v85 + *(v100 + 48));
    v90 = v129;
    *v89 = v128;
    v89[1] = v90;
    *(v85 + *(v88 + 64)) = v106;

    sub_FCF8(v84, &qword_4F6EE0);
    v91 = v102;
    v87(v102, v78 + v123, v80);
    v92 = (v91 + *(v88 + 48));
    *v92 = v82;
    v92[1] = v86;
    *(v91 + *(v88 + 64)) = v83;

    sub_FCF8(v78, &qword_4F6EE0);
    sub_1A9FB0(&qword_4F6EF0, &type metadata accessor for EpisodeListSettings);
    if (sub_3ED174())
    {

      sub_FCF8(v85, &qword_4F6ED8);

      sub_FCF8(v91, &qword_4F6ED8);
      if (v128 == v82 && v129 == v86)
      {
      }

      else
      {
        v97 = sub_3EE804();

        v95 = 0;
        if ((v97 & 1) == 0)
        {
          return v95 & 1;
        }
      }

      v95 = v120 ^ v121 ^ 1;
      return v95 & 1;
    }

    v93 = &qword_4F6ED8;
    sub_FCF8(v91, &qword_4F6ED8);
    v94 = v85;
  }

  else
  {
    v93 = &qword_4F6EE0;
    sub_FCF8(v78, &qword_4F6EE0);
    v94 = v112;
  }

LABEL_18:
  sub_FCF8(v94, v93);
  v95 = 0;
  return v95 & 1;
}

uint64_t sub_1A1E34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0);
  v11 = v10[24];
  return sub_1A14CC(v4, v5, v6, v7, v8, v9, a1 + v10[20], *(a1 + v11), *(a1 + v11 + 8), *(a1 + v10[28]), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), (a2 + v10[20]), *(a2 + v11), *(a2 + v11 + 8), *(a2 + v10[28])) & 1;
}

uint64_t sub_1A1F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a7;
  v46 = a6;
  v38 = a1;
  v39 = a3;
  v51 = a9;
  v47 = a13;
  *&v48 = a8;
  v45 = a12;
  v43 = a4;
  v44 = a11;
  v17 = sub_3E8944();
  v40 = v17;
  v18 = *(v17 - 8);
  v50 = *(v18 + 64);
  __chkstk_darwin(v17);
  v49 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v21 = (v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v21[9];
  v41 = *(v18 + 16);
  v41(&v24[v25], a7, v17, v22);
  sub_1F958(a14, &v24[v21[14]]);
  v26 = v39;
  *v24 = v38;
  *(v24 + 1) = a2;
  *(v24 + 2) = v26;
  v24[24] = v43 & 1;
  *(v24 + 4) = a5;
  v27 = a5;
  LOBYTE(a5) = v46;
  v24[40] = v46;
  v28 = &v24[v21[10]];
  v29 = v47;
  *v28 = v48;
  *(v28 + 1) = a10;
  v24[v21[11]] = v44;
  *&v24[v21[12]] = v45;
  *&v24[v21[13]] = v29;
  v30 = v21[15];
  v48 = *(a14 + 40);
  *&v24[v30] = v48;

  swift_unknownObjectRetain();
  sub_1748BC(v27, a5);

  v31 = sub_1A2338();
  sub_1A9C34(v24, type metadata accessor for ShowEpisodesShelvesProvider.Info);
  v52 = v31;
  v32 = v49;
  v33 = v40;
  (v41)(v49, v42, v40);
  v34 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v35 = swift_allocObject();
  (*(v18 + 32))(v35 + v34, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  type metadata accessor for ShowEpisodesShelvesProvider.Result(0);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  sub_3EA024();
}

uint64_t sub_1A22A4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1A2338()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E48);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v37 - v1;
  v2 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v3 = v2 - 8;
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v4;
  v54 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E50);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E58);
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v47 = &v37 - v8;
  v55 = sub_3E8944();
  v46 = *(v55 - 8);
  __chkstk_darwin(v55);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = (v0 + *(v3 + 60));
  v16 = *v14;
  v15 = v14[1];
  ObjectType = swift_getObjectType();
  v18 = *(v3 + 36);
  v38 = ObjectType;
  v39 = v16;
  v40 = v15;
  v57 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v0 + v18, 12, ObjectType, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E68);
  sub_886BC(&qword_4F1A78, &qword_4F1D00);
  sub_3EA024();

  sub_886BC(&qword_4F6E70, &qword_4F6E60);
  v19 = sub_3E9F94();
  (*(v11 + 8))(v13, v10);
  if (sub_3E88D4())
  {
    v20 = v46;
    v21 = v42;
    (*(v46 + 16))(v42, v0 + v18, v55);
    sub_3E88E4();
    v45 = (*(v40 + 360))(v21, v38);
    v56 = v45;
    v57 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
    v43 = v19;
    sub_886BC(&qword_4F6E80, &qword_4F6E78);
    sub_886BC(&qword_4F62B0, &qword_4F6A10);
    v22 = v44;
    sub_3E9FE4();
    v23 = v54;
    sub_1A9BCC(v0, v54, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    v24 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v25 = swift_allocObject();
    sub_1A9C94(v23, v25 + v24, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1A3E1C;
    *(v26 + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_886BC(&qword_4F6E90, &qword_4F6E50);
    v27 = v47;
    v28 = v49;
    sub_3EA024();

    (*(v48 + 8))(v22, v28);
    sub_886BC(&qword_4F6E98, &qword_4F6E58);
    v29 = v51;
    v30 = sub_3E9F94();

    (*(v50 + 8))(v27, v29);
    (*(v20 + 8))(v21, v55);
  }

  else
  {
    v57 = v19;
    v31 = v54;
    sub_1A9BCC(v0, v54, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = swift_allocObject();
    sub_1A9C94(v31, v33 + v32, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_886BC(&qword_4F6E80, &qword_4F6E78);
    v34 = v41;
    sub_3EA024();

    sub_886BC(&qword_4F6E88, &qword_4F6E48);
    v35 = v45;
    v30 = sub_3E9F94();

    (*(v43 + 8))(v34, v35);
  }

  return v30;
}

uint64_t sub_1A2C14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for ShowEpisodesShelvesProvider.Result(0) + 20);
  v7 = sub_3E8944();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);
  *a3 = v5;
}

uint64_t sub_1A2CA4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, void, void, char))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0);
  v12 = *(a1 + v10[28]);
  return a2(v4, v5, v6, v7, v8, v9, a1 + v10[20], *(a1 + v10[24]), *(a1 + v10[24] + 8), v12);
}

uint64_t sub_1A2D68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A2DCC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3E8944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A2E8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3E8944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A2F50()
{
  sub_179930();
  if (v0 <= 0x3F)
  {
    sub_3E8944();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A2FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3E8944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A30A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3E8944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A316C()
{
  sub_11CB2C();
  if (v0 <= 0x3F)
  {
    sub_3E8944();
    if (v1 <= 0x3F)
    {
      sub_1A32A0();
      if (v2 <= 0x3F)
      {
        sub_1A3300();
        if (v3 <= 0x3F)
        {
          sub_1A3374(319, &qword_4F6DF0);
          if (v4 <= 0x3F)
          {
            sub_1A3374(319, &unk_4F6DF8);
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

void sub_1A32A0()
{
  if (!qword_4F6DD8)
  {
    v0 = sub_3E8A74();
    if (!v1)
    {
      atomic_store(v0, &qword_4F6DD8);
    }
  }
}

void sub_1A3300()
{
  if (!qword_4F6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F6DE8);
    v0 = sub_3E8A74();
    if (!v1)
    {
      atomic_store(v0, &qword_4F6DE0);
    }
  }
}

uint64_t sub_1A3374(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShowEpisodesShelvesProvider.Info.DropDownOptionsInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowEpisodesShelvesProvider.Info.DropDownOptionsInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A3520()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A35A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_3E8944() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A2C14(a1, v6, a2);
}

uint64_t sub_1A3628@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1AA0);
  sub_3E95D4();
  result = sub_3E95A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3684@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  result = sub_1A36FC(*a1, *(a1 + 8), *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1A36FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v47 = v10;
  v48 = a3;
  if (a3 < 13)
  {

    v21 = a1;
    goto LABEL_24;
  }

  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    v41 = &v43 - v11;
    v20 = sub_3EE5A4();
    if (sub_3EE5A4() < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v20 >= 8)
    {
      v42 = 8;
    }

    else
    {
      v42 = v20;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v15 = v42;
    }

    else
    {
      v15 = 8;
    }

    result = sub_3EE5A4();
    v12 = v41;
    if (result >= v15)
    {
LABEL_7:
      v16 = v12;
      if ((a1 & 0xC000000000000001) != 0 && v15)
      {
        type metadata accessor for LibraryEpisodeLockup();

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          sub_3EE3D4(v17);
          v17 = v18;
        }

        while (v15 != v18);
        if (!v13)
        {
LABEL_12:
          v10 = a1 & 0xFFFFFFFFFFFFFF8;
          v19 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v20 = (2 * v15) | 1;
          if (v20)
          {
LABEL_18:
            v45 = v19;
            v46 = v9;
            v9 = v16;
            sub_3EE824();
            swift_unknownObjectRetain_n();
            v26 = swift_dynamicCastClass();
            if (!v26)
            {
              swift_unknownObjectRelease();
              v26 = _swiftEmptyArrayStorage;
            }

            v27 = v26[2];

            if (!__OFSUB__(v20 >> 1, v13))
            {
              if (v27 == (v20 >> 1) - v13)
              {
                v21 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v12 = v9;
                v9 = v46;
                if (!v21)
                {
                  swift_unknownObjectRelease();
                  v21 = _swiftEmptyArrayStorage;
                }

LABEL_24:
                v28 = &v12[*(v9 + 48)];
                *v28 = sub_1A3ED4(v12, a2);
                v28[1] = v29;
                if (v21 >> 62)
                {
                  if (sub_3EE5A4())
                  {
                    goto LABEL_26;
                  }
                }

                else if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
                {
LABEL_26:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
                  v30 = *(type metadata accessor for ModernShelf() - 8);
                  v46 = v12;
                  v44 = *(v30 + 72);
                  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
                  v32 = swift_allocObject();
                  *(v32 + 16) = xmmword_3F5310;
                  v33 = (v32 + v31);
                  sub_FBD0(v46, v8, &qword_4F6EA8);
                  v45 = a2;
                  v34 = *(v47 + 56);
                  v34(v8, 0, 1, v9);
                  v35 = sub_76CAC(v21);

                  sub_1A4D44(v8, v35, v33);

                  sub_FCF8(v8, &qword_4F6EA0);
                  v36 = (v33 + v44);
                  v37 = v46;
                  v34(v8, 1, 1, v9);
                  a2 = v45;
LABEL_29:
                  sub_1A44C4(v8, a1, a2, v48, v36);
                  sub_FCF8(v8, &qword_4F6EA0);
                  sub_FCF8(v37, &qword_4F6EA8);
                  return v32;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
                v38 = *(type metadata accessor for ModernShelf() - 8);
                v39 = v12;
                v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
                v32 = swift_allocObject();
                *(v32 + 16) = xmmword_3F5630;
                v36 = (v32 + v40);
                v37 = v39;
                sub_FBD0(v39, v8, &qword_4F6EA8);
                (*(v47 + 56))(v8, 0, 1, v9);
                goto LABEL_29;
              }

              goto LABEL_33;
            }

LABEL_32:
            __break(1u);
LABEL_33:
            swift_unknownObjectRelease_n();
            v16 = v9;
            v19 = v45;
            v9 = v46;
          }

LABEL_17:
          sub_268C54(v10, v19, v13, v20);
          v21 = v25;
          swift_unknownObjectRelease();
          v12 = v16;
          goto LABEL_24;
        }
      }

      else
      {

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v10 = sub_3EE5B4();
      v19 = v22;
      v13 = v23;
      v20 = v24;

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (result >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    if (result >= v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = (type metadata accessor for ShowEpisodesShelvesProvider.Info(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_6BF60(*(v0 + v3 + 32), *(v0 + v3 + 40));
  v5 = v1[9];
  v6 = sub_3E8944();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3 + v1[14]);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A3E98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_1A3ED4(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v56 = type metadata accessor for Header(0);
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v38 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v11 - 8);
  v13 = (&v38 - v12);
  if (a2)
  {
    a2 = *(v2 + 32);
    v14 = *(v2 + 40);
    sub_1748BC(a2, *(v2 + 40));
  }

  else
  {
    v14 = 2;
  }

  v43 = a2;
  v46 = v14;
  v15 = sub_1A544C(a2, v14);
  v44 = v15;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_3EE3C4(21);

  v57 = 0x7365646F73697045;
  v58 = 0xE90000000000003ALL;
  v16 = (v2 + *(type metadata accessor for ShowEpisodesShelvesProvider.Info(0) + 32));
  v17 = v16[1];
  v47 = *v16;
  v59._countAndFlagsBits = v47;
  v59._object = v17;
  v45 = v17;
  sub_3ED3D4(v59);
  v60._countAndFlagsBits = 0x3A6C6C416565732BLL;
  v60._object = 0xE800000000000000;
  sub_3ED3D4(v60);
  v61._countAndFlagsBits = sub_3E83F4();
  sub_3ED3D4(v61);

  v48 = v58;
  v49 = v57;

  sub_1A5A48(v13);
  v18 = type metadata accessor for ActionMenu(0);
  v19 = *(v18 - 8);
  v41 = *(v19 + 56);
  v42 = v19 + 56;
  v50 = v13;
  v41(v13, 0, 1, v18);
  *v10 = v15;
  v20 = type metadata accessor for Header.PrimaryAction(0);
  swift_storeEnumTagMultiPayload();
  v39 = *(v20 - 8);
  v21 = *(v39 + 56);
  v21(v10, 0, 1, v20);
  v22 = sub_3E7784();
  v23 = *(v22 - 8);
  v52 = v10;
  v24 = *(v23 + 56);
  v51 = v7;
  v24(v7, 1, 1, v22);
  v25 = v55;
  v26 = v56;
  v27 = v55;
  *(v55 + 16) = 0u;
  v28 = v27 + 16;
  *(v25 + 32) = 0;
  *v25 = 0u;
  v40 = v26[7];
  v41((v25 + v40), 1, 1, v18);
  v29 = v26[8];
  v21((v25 + v29), 1, 1, v20);
  v30 = v26[9];
  v31 = (v25 + v30);
  v32 = v45;
  v24(v31, 1, 1, v22);
  v33 = v47;
  v34 = v52;

  LOBYTE(v22) = sub_3EE0E4();
  sub_6BF60(v43, v46);

  if ((v22 & 1) != 0 || (*(v39 + 48))(v34, 1, v20) != 1)
  {
    v35 = v55;
    *v55 = v33;
    *(v35 + 8) = v32;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    sub_51F9C(v50, v35 + v40, &qword_4F1AB8);
    sub_F7C5C(v34, v35 + v29);
    sub_51F9C(v51, v35 + v30, &qword_4F1D50);
    v36 = v54;
    sub_1A9BCC(v35, v54, type metadata accessor for Header);
    (*(v53 + 56))(v36, 0, 1, v56);
    sub_FCF8(v34, &qword_4F1AB0);
    sub_1A9C34(v35, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v51, &qword_4F1D50);
    sub_FCF8(v50, &qword_4F1AB8);
    sub_FCF8(v34, &qword_4F1AB0);
    sub_1A9C34(v55, type metadata accessor for Header);
    (*(v53 + 56))(v54, 1, 1, v56);
  }

  return v49;
}

uint64_t sub_1A44C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v58 = v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v11 - 8);
  v62 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v13 - 8);
  v54[0] = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA0);
  __chkstk_darwin(v17 - 8);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v54 - v21;
  __chkstk_darwin(v23);
  v25 = v54 - v24;
  v26 = type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
  __chkstk_darwin(v26);
  v28 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v54 - v30;
  sub_1A79D4(a2, a3, v59, v54 - v30);
  v60 = v31;
  sub_1A9BCC(v31, v28, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  LODWORD(a2) = 0x141211u >> (8 * swift_getEnumCaseMultiPayload());
  sub_1A9C34(v28, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  sub_3E62F4();
  v57 = a2;
  ModernShelf.ItemKind.rawValue.getter(a2);
  sub_3E62D4();

  v59 = a1;
  sub_FBD0(a1, v25, &qword_4F6EA0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA8);
  v33 = *(*(v32 - 8) + 48);
  if (v33(v25, 1, v32) == 1)
  {
    sub_FCF8(v25, &qword_4F6EA0);
  }

  else
  {
    sub_FCF8(v25, &qword_4F1AC0);
  }

  sub_3E62D4();

  v56 = sub_3E62E4();
  v35 = v34;

  sub_FBD0(v59, v22, &qword_4F6EA0);
  if (v33(v22, 1, v32) == 1)
  {
    sub_FCF8(v22, &qword_4F6EA0);
    v36 = type metadata accessor for Header(0);
    (*(*(v36 - 8) + 56))(v61, 1, 1, v36);
  }

  else
  {

    sub_FACC(v22, v61, &qword_4F1AC0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_3F5630;
  sub_1A75C0((v37 + 32));
  v38 = sub_3E5DC4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v54[1] = v39 + 56;
  v55 = v40;
  v40(v62, 1, 1, v38);

  sub_3E85C4();
  sub_FBD0(v59, v19, &qword_4F6EA0);
  if (v33(v19, 1, v32) == 1)
  {
    v41 = &qword_4F6EA0;
    v42 = v19;
  }

  else
  {

    v43 = v54[0];
    sub_FACC(v19, v54[0], &qword_4F1AC0);
    v44 = type metadata accessor for Header(0);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) != 1)
    {

      sub_1A9C34(v43, type metadata accessor for Header);
      goto LABEL_13;
    }

    v41 = &qword_4F1AC0;
    v42 = v43;
  }

  sub_FCF8(v42, v41);
LABEL_13:
  v45 = v58;
  v46 = v56;
  sub_3EC584();

  sub_1A9C34(v60, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  v47 = sub_3EC634();
  (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
  v48 = type metadata accessor for ModernShelf();
  v49 = v48[9];
  v50 = (a5 + v48[8]);
  v55(a5 + v49, 1, 1, v38);
  *a5 = v46;
  a5[1] = v35;
  sub_FACC(v61, a5 + v48[5], &qword_4F1AC0);
  v51 = a5 + v48[6];
  *v51 = v57;
  v51[1] = 0;
  *(v51 + 3) = 256;
  *(v51 + 2) = 0;
  *(v51 + 1) = 1;
  *(a5 + v48[7]) = v37;
  sub_51F9C(v62, a5 + v49, &unk_4E9EE0);
  *(a5 + v48[10]) = 1;
  *(a5 + v48[11]) = 0;
  v52 = a5 + v48[12];
  *(v52 + 4) = 0;
  *v52 = 0u;
  *(v52 + 1) = 0u;
  result = sub_FACC(v45, a5 + v48[13], &unk_4E9170);
  *v50 = 0;
  v50[1] = 0;
  return result;
}

uint64_t sub_1A4D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v45 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v48 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v9 - 8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  sub_3E62F4();
  v46 = a1;
  sub_FBD0(a1, v21, &qword_4F6EA0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA8);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v21, 1, v22) == 1)
  {
    sub_FCF8(v21, &qword_4F6EA0);
  }

  else
  {
    sub_FCF8(v21, &qword_4F1AC0);
  }

  sub_3E62D4();

  v43 = sub_3E62E4();
  v25 = v24;

  sub_FBD0(v46, v18, &qword_4F6EA0);
  if (v23(v18, 1, v22) == 1)
  {
    sub_FCF8(v18, &qword_4F6EA0);
    v26 = type metadata accessor for Header(0);
    (*(*(v26 - 8) + 56))(v47, 1, 1, v26);
  }

  else
  {

    sub_FACC(v18, v47, &qword_4F1AC0);
  }

  v27 = sub_3E5DC4();
  v42 = *(*(v27 - 8) + 56);
  v42(v48, 1, 1, v27);

  sub_3E85C4();
  sub_FBD0(v46, v15, &qword_4F6EA0);
  if (v23(v15, 1, v22) == 1)
  {
    v28 = &qword_4F6EA0;
    v29 = v15;
  }

  else
  {

    v30 = v41;
    sub_FACC(v15, v41, &qword_4F1AC0);
    v31 = type metadata accessor for Header(0);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) != 1)
    {

      sub_1A9C34(v30, type metadata accessor for Header);
      goto LABEL_13;
    }

    v28 = &qword_4F1AC0;
    v29 = v30;
  }

  sub_FCF8(v29, v28);
LABEL_13:
  v32 = v45;
  v33 = v43;
  sub_3EC584();

  v34 = sub_3EC634();
  (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
  v35 = type metadata accessor for ModernShelf();
  v36 = v35[9];
  v37 = (a3 + v35[8]);
  v42(a3 + v36, 1, 1, v27);
  *a3 = v33;
  a3[1] = v25;
  sub_FACC(v47, a3 + v35[5], &qword_4F1AC0);
  v38 = a3 + v35[6];
  *v38 = 10;
  *(v38 + 3) = 256;
  *(v38 + 2) = 0;
  *(v38 + 1) = 1;
  *(a3 + v35[7]) = v44;

  sub_51F9C(v48, a3 + v36, &unk_4E9EE0);
  *(a3 + v35[10]) = 1;
  *(a3 + v35[11]) = 0;
  v39 = a3 + v35[12];
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  result = sub_FACC(v32, a3 + v35[13], &unk_4E9170);
  *v37 = 0;
  v37[1] = 0;
  return result;
}

uint64_t sub_1A544C(uint64_t a1, char a2)
{
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_3EC1F4();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() mainBundle];
  v33._countAndFlagsBits = 0xE000000000000000;
  v49._countAndFlagsBits = 0x535F4E4F49544341;
  v49._object = 0xEE004C4C415F4545;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v15.super.isa = v14;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v16 = sub_3E5A74(v49, v52, v15, v53, v33);
  v39 = v16;
  v18 = v17;

  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v21 = *(v2 + 24);
  *v13 = *v2;
  *(v13 + 1) = v19;
  *(v13 + 2) = v20;
  v13[24] = v21;
  *(v13 + 4) = a1;
  v13[40] = a2;
  swift_storeEnumTagMultiPayload();
  *&v42 = v16;
  *(&v42 + 1) = v18;
  v38 = v18;

  sub_1748BC(a1, a2);

  v50._countAndFlagsBits = 43;
  v50._object = 0xE100000000000000;
  sub_3ED3D4(v50);
  v51._countAndFlagsBits = sub_3E83F4();
  sub_3ED3D4(v51);

  v36 = *(&v42 + 1);
  v37 = v42;
  sub_3E81B4();
  sub_3E8594();
  v22 = sub_3E5DC4();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v23 = v35;
  sub_3EC1C4();
  v48 = v42;
  sub_FCF8(&v48, &unk_4F8A10);
  v47 = v43;
  sub_FCF8(&v47, &qword_4E94E0);
  v46 = v44;
  sub_FCF8(&v46, &unk_4F8A20);
  sub_16AC0(v45);
  sub_FCF8(v8, &unk_4E9EE0);
  type metadata accessor for FlowAction(0);
  v24 = swift_allocObject();
  sub_1A9BCC(v13, v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v25 = (v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v25 = 0;
  v25[1] = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v27 = v40;
  v26 = v41;
  (*(v40 + 16))(v24 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v23, v41);
  v28 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v29 = sub_3EC634();
  (*(*(v29 - 8) + 56))(v24 + v28, 1, 1, v29);
  (*(v27 + 8))(v23, v26);
  sub_1A9C34(v13, type metadata accessor for FlowDestination);
  v30 = v36;
  *(v24 + 16) = v37;
  *(v24 + 24) = v30;
  v31 = v38;
  *(v24 + 32) = v39;
  *(v24 + 40) = v31;
  *(v24 + 48) = 48;
  return v24;
}

uint64_t sub_1A5A48@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - v8;
  v33 = v27 - v8;
  v31 = sub_3E7784();
  v10 = *(v31 - 8);
  v30 = *(v10 + 56);
  v32 = v10 + 56;
  v30(v9, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v28 = type metadata accessor for ActionMenu.Child(0);
  v11 = *(*(v28 - 8) + 72);
  v12 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v13 = swift_allocObject();
  v29 = v13;
  *(v13 + 16) = xmmword_3F5310;
  v14 = (v13 + v12);
  sub_1A9BCC(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowEpisodesShelvesProvider.Info);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1A9C94(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ShowEpisodesShelvesProvider.Info);
  *v14 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v14[1] = v17;
  v14[2] = sub_1A9CFC;
  v14[3] = v16;
  swift_storeEnumTagMultiPayload();
  v18 = (v14 + v11);
  sub_1A9BCC(v27[1], v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowEpisodesShelvesProvider.Info);
  v19 = swift_allocObject();
  sub_1A9C94(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v15, type metadata accessor for ShowEpisodesShelvesProvider.Info);
  *v18 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v18[1] = v20;
  v18[2] = sub_1A9D6C;
  v18[3] = v19;
  swift_storeEnumTagMultiPayload();
  v21 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v23 = v22;
  v24 = type metadata accessor for ActionMenu(0);
  v25 = *(v24 + 28);
  v30(a1 + v25, 1, 1, v31);
  *a1 = v21;
  a1[1] = v23;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  result = sub_51F9C(v33, a1 + v25, &qword_4F1D50);
  *(a1 + *(v24 + 32)) = v29;
  return result;
}

uint64_t sub_1A5DB4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = (v1 + 40 + 16 * v3);
      v5 = v3;
      while (1)
      {
        if (v5 >= v2)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_32;
        }

        v6 = *(v4 - 1);
        v7 = *v4;
        sub_1748BC(v6, *v4);
        sub_1748BC(v6, v7);
        v8 = sub_3E8374();
        sub_6BF60(v6, v7);
        if (v8)
        {
          break;
        }

        result = sub_6BF60(v6, v7);
        ++v5;
        v4 += 16;
        if (v3 == v2)
        {
          goto LABEL_14;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_41CD0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_41CD0((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v6;
      *(v11 + 40) = v7;
    }

    while (v3 != v2);
LABEL_14:
    if (_swiftEmptyArrayStorage[2] <= 5uLL)
    {
      goto LABEL_29;
    }

    v12 = 0;
LABEL_16:
    v13 = (v1 + 40 + 16 * v12);
    for (i = v12; i < v2; ++i)
    {
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_34;
      }

      v15 = *(v13 - 1);
      v16 = *v13;
      sub_1748BC(v15, *v13);
      if ((sub_3E8374() & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_41CD0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_41CD0((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v15;
        *(v19 + 40) = v16;
        if (v12 != v2)
        {
          goto LABEL_16;
        }

        return _swiftEmptyArrayStorage;
      }

      result = sub_6BF60(v15, v16);
      v13 += 16;
      if (v12 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2] < 6uLL)
    {
LABEL_29:
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1A6040@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v59 = a3;
  v6 = sub_3E5FC4();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v62 = &v53 - v9;
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v17 - 8);
  v65 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  sub_3E8394();
  v61 = v21;
  if (v22)
  {
    sub_3E7774();
    v23 = sub_3E7784();
    v24 = *(*(v23 - 8) + 56);
    v57 = (v23 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v25 = v21;
    v26 = 0;
  }

  else
  {
    v23 = sub_3E7784();
    v24 = *(*(v23 - 8) + 56);
    v57 = (v23 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v25 = v21;
    v26 = 1;
  }

  v60 = v23;
  v24(v25, v26, 1);
  v55 = sub_3E83F4();
  v54 = v27;
  v56 = sub_3E83E4();
  v28 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v29 = *v3;
  v30 = v3[1];
  sub_1F958(v3 + *(v28 + 48), &v67);
  v31 = swift_allocObject();
  sub_1FE90(&v67, v31 + 16);
  *(v31 + 56) = v29;
  *(v31 + 64) = v30;
  *(v31 + 72) = a1;
  *(v31 + 80) = a2;

  sub_1748BC(a1, a2);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v32 = type metadata accessor for ClosureAction();
  v33 = swift_allocObject();
  v34 = (v33 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v34 = sub_1A9F30;
  v34[1] = v31;
  v35 = *(v11 + 16);
  v53 = v13;
  v35(v13, v16, v10);
  v36 = sub_3EC634();
  v37 = v62;
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);

  v38 = v58;
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;

  (*(v63 + 8))(v38, v64);
  (*(v11 + 8))(v16, v10);
  *(v33 + 16) = v39;
  *(v33 + 24) = v41;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = 32;
  (*(v11 + 32))(v33 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v53, v10);
  sub_FACC(v37, v33 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v68 = v32;
  v69 = sub_1A9FB0(&qword_4F13D8, type metadata accessor for ClosureAction);
  *&v67 = v33;
  v42 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v44 = v43;
  v45 = v65;
  sub_FACC(v61, v65, &qword_4F1D50);
  sub_FBD0(&v67, v66, &qword_4EDE00);
  v46 = type metadata accessor for ActionMenu.Item(0);
  v47 = v46[7];
  sub_3E7784();
  v48 = v59;
  (*(*(v60 - 8) + 56))(v59 + v47, 1, 1);
  v49 = v46[8];
  v50 = v48 + v46[10];
  *(v50 + 32) = 0;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *v48 = v42;
  v48[1] = v44;
  v51 = v54;
  v48[2] = v55;
  v48[3] = v51;
  v48[4] = 0;
  v48[5] = 0;
  sub_51F9C(v45, v48 + v47, &qword_4F1D50);
  *(v48 + v49) = 2;
  *(v48 + v46[9]) = (v56 & 1) == 0;
  sub_51F9C(v66, v50, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v67, &qword_4EDE00);
}

uint64_t sub_1A66A8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - v6;
  v66 = type metadata accessor for ActionMenu.Child(0);
  v8 = *(v66 - 8);
  __chkstk_darwin(v66);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = sub_1A5DB4(a1);
  v15 = v14;
  v69 = _swiftEmptyArrayStorage;
  if (*(v13 + 16))
  {
    v61 = v8;
    v67 = v2;
    v68 = 0;
    v16 = sub_3E8374();
    v17 = v12;
    v64 = v15;
    v65 = a2;
    if (v16)
    {
      v18 = sub_3E83F4();
      v59 = v19;
      v60 = v18;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v54._countAndFlagsBits = 0xE000000000000000;
      v70._countAndFlagsBits = 0x534145535F4C4C41;
      v70._object = 0xEB00000000534E4FLL;
      v72.value._countAndFlagsBits = 0;
      v72.value._object = 0;
      v22.super.isa = v21;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      v23 = sub_3E5A74(v70, v72, v22, v74, v54);
      v59 = v24;
      v60 = v23;
    }

    v25 = [objc_opt_self() mainBundle];
    v54._countAndFlagsBits = 0xE000000000000000;
    v71._countAndFlagsBits = 0x545F4E4F53414553;
    v71._object = 0xEC000000454C5449;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v26.super.isa = v25;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v27 = sub_3E5A74(v71, v73, v26, v75, v54);
    v57 = v28;
    v58 = v27;

    v29 = sub_3E7784();
    v30 = *(*(v29 - 8) + 56);
    v31 = v30(v7, 1, 1, v29);
    __chkstk_darwin(v31);
    *(&v55 - 4) = v67;
    *(&v55 - 3) = v11;
    v63 = v11;
    v62 = v17;
    LOBYTE(v54._countAndFlagsBits) = v17;
    v32 = v68;
    v56 = sub_2630EC(sub_1A9E8C, (&v55 - 6), v13);
    v68 = v32;

    v33 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v35 = v34;
    v36 = type metadata accessor for ActionMenu(0);
    v37 = *(v36 + 28);
    v30(v10 + v37, 1, 1, v29);
    *v10 = v33;
    v10[1] = v35;
    v38 = v57;
    v10[2] = v58;
    v10[3] = v38;
    v39 = v59;
    v10[4] = v60;
    v10[5] = v39;
    sub_51F9C(v7, v10 + v37, &qword_4F1D50);
    *(v10 + *(v36 + 32)) = v56;
    swift_storeEnumTagMultiPayload();
    v40 = sub_E0140(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_E0140(v41 > 1, v42 + 1, 1, v40);
    }

    a2 = v65;
    v43 = v61;
    v40[2] = v42 + 1;
    v20 = sub_1A9C94(v10, v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, type metadata accessor for ActionMenu.Child);
    v69 = v40;
    v2 = v67;
    v11 = v63;
    v15 = v64;
    LOBYTE(v12) = v62;
  }

  else
  {
  }

  __chkstk_darwin(v20);
  *(&v55 - 4) = v2;
  *(&v55 - 3) = v11;
  LOBYTE(v54._countAndFlagsBits) = v12;
  v44 = sub_2630EC(sub_1AA134, (&v55 - 6), v15);

  sub_4143C(v44);
  v45 = sub_3E7784();
  v46 = *(*(v45 - 8) + 56);
  v46(v7, 1, 1, v45);
  v47 = v69;
  v48 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v50 = v49;
  v51 = type metadata accessor for ActionMenu(0);
  v52 = *(v51 + 28);
  v46(a2 + v52, 1, 1, v45);
  *a2 = v48;
  a2[1] = v50;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  result = sub_51F9C(v7, a2 + v52, &qword_4F1D50);
  *(a2 + *(v51 + 32)) = v47;
  return result;
}

uint64_t sub_1A6BEC@<X0>(unint64_t *a1@<X8>)
{
  v67 = a1;
  v2 = sub_3E5FC4();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v68 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v66 = &v57 - v5;
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v71 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v18 = sub_3E7F44();
  v20 = v19;
  v21 = 1;
  if (v18 != sub_3E7F44() || v20 != v22)
  {
    v21 = sub_3EE804();
  }

  v23 = v21;
  v60 = v21;
  v24 = [objc_opt_self() mainBundle];
  v56._countAndFlagsBits = 0xE000000000000000;
  v76._countAndFlagsBits = 0xD00000000000001CLL;
  v76._object = 0x8000000000429CB0;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v25.super.isa = v24;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v26 = sub_3E5A74(v76, v77, v25, v78, v56);
  v64 = v27;
  v65 = v26;

  sub_3E7774();
  v62 = sub_3E7784();
  v28 = *(v62 - 8);
  v61 = *(v28 + 56);
  v63 = v28 + 56;
  v61(v17, 0, 1, v62);
  v29 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v31 = *v1;
  v30 = v1[1];
  sub_1F958(v1 + *(v29 + 48), &v73);
  v32 = swift_allocObject();
  v59 = v17;
  v33 = v32;
  *(v32 + 16) = v23 & 1;
  sub_1FE90(&v73, v32 + 24);
  *(v33 + 64) = v31;
  *(v33 + 72) = v30;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v34 = type metadata accessor for ClosureAction();
  v35 = swift_allocObject();
  v36 = (v35 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v36 = sub_1A9E10;
  v36[1] = v33;
  v37 = *(v7 + 16);
  v58 = v9;
  v38 = v6;
  v37(v9, v12, v6);
  v39 = sub_3EC634();
  v40 = v66;
  (*(*(v39 - 8) + 56))(v66, 1, 1, v39);

  v41 = v68;
  sub_3E5FB4();
  v42 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v44 = v43;

  (*(v69 + 8))(v41, v70);
  (*(v7 + 8))(v12, v38);
  *(v35 + 16) = v42;
  *(v35 + 24) = v44;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = 32;
  (*(v7 + 32))(v35 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v58, v38);
  sub_FACC(v40, v35 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v74 = v34;
  v75 = sub_1A9FB0(&qword_4F13D8, type metadata accessor for ClosureAction);
  *&v73 = v35;
  v45 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v47 = v46;
  v48 = v71;
  sub_FACC(v59, v71, &qword_4F1D50);
  sub_FBD0(&v73, v72, &qword_4EDE00);
  v49 = type metadata accessor for ActionMenu.Item(0);
  v50 = v49[7];
  v51 = v67;
  v61(v67 + v50, 1, 1, v62);
  v52 = v49[8];
  v53 = v51 + v49[10];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  *v51 = v45;
  v51[1] = v47;
  v54 = v64;
  v51[2] = v65;
  v51[3] = v54;
  v51[4] = 0;
  v51[5] = 0;
  sub_51F9C(v48, v51 + v50, &qword_4F1D50);
  *(v51 + v52) = 2;
  *(v51 + v49[9]) = (v60 & 1) == 0;
  sub_51F9C(v72, v53, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v73, &qword_4EDE00);
}

uint64_t sub_1A72A4@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4];
  if ((*(v1 + *(type metadata accessor for ShowEpisodesShelvesProvider.Info(0) + 36)) & 1) != 0 || (sub_3E8A64(), v20[15] == 17))
  {
    v6 = sub_3E7784();
    v7 = *(*(v6 - 8) + 56);
    v7(v5, 1, 1, v6);
    v8 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v10 = v9;
    v11 = type metadata accessor for ActionMenu(0);
    v12 = a1 + *(v11 + 28);
    v7(v12, 1, 1, v6);
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = sub_3E7784();
    v15 = *(*(v14 - 8) + 56);
    v15(v5, 1, 1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
    v16 = *(type metadata accessor for ActionMenu.Child(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_3F5630;
    sub_1A6BEC((v13 + v17));
    v8 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v10 = v18;
    v11 = type metadata accessor for ActionMenu(0);
    v12 = a1 + *(v11 + 28);
    v15(v12, 1, 1, v14);
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  result = sub_51F9C(v5, v12, &qword_4F1D50);
  *(a1 + *(v11 + 32)) = v13;
  return result;
}

uint64_t sub_1A7548@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  sub_3E8A64();
  if (v4)
  {
    v2 = v4;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  sub_1A66A8(v2, a1);
}

uint64_t sub_1A75C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9BCC(v2, v6, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v6[1];
      v10 = v6[2];
      *&v28 = *v6;
      v9 = v28;
      *(&v28 + 1) = v8;

      v31._countAndFlagsBits = 43;
      v31._object = 0xE100000000000000;
      sub_3ED3D4(v31);
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      v32._countAndFlagsBits = v11;
      v32._object = v12;
      sub_3ED3D4(v32);

      v13 = v28;
      *(&v29 + 1) = type metadata accessor for Action();
      v30 = sub_1A9FB0(&qword_4EDDF8, type metadata accessor for Action);
      *&v28 = v10;
      v14 = type metadata accessor for Information();
      a1[3] = v14;
      a1[4] = sub_1A9FB0(&qword_4EDDE8, type metadata accessor for Information);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
      v16 = *(v14 + 40);
      v17 = sub_3EC634();
      (*(*(v17 - 8) + 56))(boxed_opaque_existential_0Tm + v16, 1, 1, v17);
      *boxed_opaque_existential_0Tm = v13;
      boxed_opaque_existential_0Tm[2] = v9;
      boxed_opaque_existential_0Tm[3] = v8;
      *(boxed_opaque_existential_0Tm + 2) = 0u;
      *(boxed_opaque_existential_0Tm + 3) = 0u;
      sub_FBD0(&v28, (boxed_opaque_existential_0Tm + 8), &qword_4EDE00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
      v18 = swift_allocObject();
      *(v18 + 20) = 0;

      sub_FCF8(&v28, &qword_4EDE00);
      *(v18 + 16) = 1;

      boxed_opaque_existential_0Tm[13] = v18;
    }

    else
    {
      a1[3] = type metadata accessor for Link();
      a1[4] = sub_1A9FB0(&qword_4EDDC8, type metadata accessor for Link);
      v27 = __swift_allocate_boxed_opaque_existential_0Tm(a1);
      return sub_1A9C94(v6, v27, type metadata accessor for Link);
    }
  }

  else
  {
    v21 = *v6;
    v20 = v6[1];
    v22 = type metadata accessor for Information();
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    a1[3] = v22;
    a1[4] = sub_1A9FB0(&qword_4EDDE8, type metadata accessor for Information);
    v23 = __swift_allocate_boxed_opaque_existential_0Tm(a1);
    v24 = *(v22 + 40);
    v25 = sub_3EC634();
    (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
    *v23 = v21;
    v23[1] = v20;
    v23[2] = v21;
    v23[3] = v20;
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = 0;
    v23[7] = 0xE000000000000000;
    sub_FBD0(&v28, (v23 + 8), &qword_4EDE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0);
    v26 = swift_allocObject();
    *(v26 + 20) = 0;

    result = sub_FCF8(&v28, &qword_4EDE00);
    *(v26 + 16) = 0;
    v23[13] = v26;
  }

  return result;
}

uint64_t sub_1A79D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 >= a2)
  {
    if (a2 >= 13)
    {
      sub_1A818C(a2, a4);
      type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
      goto LABEL_12;
    }

    if (a2 < 1)
    {
      v14 = sub_3E83A4();
    }

    else
    {
      v14 = sub_1A8B34(a1, a2);
    }

    *a4 = v14;
    *(a4 + 8) = v15;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    if (a3)
    {
      v21._countAndFlagsBits = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD000000000000015;
      v23._object = 0x8000000000429920;
      v25.value._countAndFlagsBits = 0;
      v25.value._object = 0;
      v8.super.isa = v7;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      sub_3E5A74(v23, v25, v8, v27, v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_3F5630;
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = &protocol witness table for Int;
      *(v9 + 32) = a3;
      v10 = sub_3ED214();
      v12 = v11;

      v13 = sub_1A7BF4(a2);
      *a4 = v10;
      *(a4 + 8) = v12;
      *(a4 + 16) = v13;
      type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
      goto LABEL_12;
    }

    v21._countAndFlagsBits = 0xE000000000000000;
    v24._object = 0x8000000000429940;
    v24._countAndFlagsBits = 0xD000000000000014;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v16.super.isa = v7;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v17 = sub_3E5A74(v24, v26, v16, v28, v21);
    v19 = v18;

    *a4 = v17;
    *(a4 + 8) = v19;
  }

  type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
LABEL_12:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A7BF4(uint64_t a1)
{
  v3 = sub_3EC544();
  __chkstk_darwin(v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_3EC1F4();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A9640(a1);
  v36 = v12;
  v14 = v13;
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  *v11 = *v1;
  *(v11 + 1) = v15;
  *(v11 + 2) = v16;
  v11[24] = v17;
  *(v11 + 4) = v18;
  v19 = *(v1 + 40);
  v11[40] = v19;
  swift_storeEnumTagMultiPayload();
  *&v39 = v12;
  *(&v39 + 1) = v14;
  v35 = v14;

  sub_1748BC(v18, v19);

  v46._countAndFlagsBits = 43;
  v46._object = 0xE100000000000000;
  sub_3ED3D4(v46);
  v47._countAndFlagsBits = sub_3E83F4();
  sub_3ED3D4(v47);

  v33 = *(&v39 + 1);
  v34 = v39;
  sub_3E81B4();
  sub_3E8594();
  v20 = sub_3E5DC4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v21 = v32;
  sub_3EC1C4();
  v45 = v39;
  sub_FCF8(&v45, &unk_4F8A10);
  v44 = v40;
  sub_FCF8(&v44, &qword_4E94E0);
  v43 = v41;
  sub_FCF8(&v43, &unk_4F8A20);
  sub_16AC0(v42);
  sub_FCF8(v6, &unk_4E9EE0);
  type metadata accessor for FlowAction(0);
  v22 = swift_allocObject();
  sub_1A9BCC(v11, v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v23 = 0;
  v23[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v25 = v37;
  v24 = v38;
  (*(v37 + 16))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v21, v38);
  v26 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v22 + v26, 1, 1, v27);
  (*(v25 + 8))(v21, v24);
  sub_1A9C34(v11, type metadata accessor for FlowDestination);
  v28 = v33;
  *(v22 + 16) = v34;
  *(v22 + 24) = v28;
  v29 = v35;
  *(v22 + 32) = v36;
  *(v22 + 40) = v29;
  *(v22 + 48) = 48;
  return v22;
}

uint64_t sub_1A818C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_3E5FC4();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v78 = &v63 - v9;
  v10 = sub_3EC544();
  __chkstk_darwin(v10 - 8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - v13;
  v15 = sub_3EC1F4();
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin(v15);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v63 - v18;
  v19 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A9640(a1);
  v76 = v23;
  v77 = v22;
  v24 = v23;
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  sub_3EE3C4(52);
  v90._object = 0x8000000000429B00;
  v90._countAndFlagsBits = 0xD000000000000026;
  sub_3ED3D4(v90);
  v91._countAndFlagsBits = v22;
  v91._object = v24;
  sub_3ED3D4(v91);
  v92._countAndFlagsBits = 0x7265746C69665B5DLL;
  v92._object = 0xE90000000000003DLL;
  sub_3ED3D4(v92);
  v26 = *(v3 + 40);
  *&v89 = *(v3 + 32);
  v25 = v89;
  BYTE8(v89) = v26;
  sub_3EE554();
  v93._countAndFlagsBits = 93;
  v93._object = 0xE100000000000000;
  sub_3ED3D4(v93);
  v72 = *(&v83 + 1);
  v75 = v83;
  v27 = type metadata accessor for Link();
  v28 = *(v27 + 28);
  v29 = v27;
  v82 = v27;
  v30 = sub_3E7784();
  v31 = *(*(v30 - 8) + 56);
  v70 = a2;
  v31(&a2[v28], 1, 1, v30);
  v68 = &a2[*(v29 + 36)];
  v69 = v3;
  v32 = *(v3 + 8);
  v33 = *(v3 + 16);
  v34 = *(v3 + 24);
  *v21 = *v3;
  *(v21 + 1) = v32;
  *(v21 + 2) = v33;
  v21[24] = v34;
  *(v21 + 4) = v25;
  v21[40] = v26;
  v63 = v21;
  swift_storeEnumTagMultiPayload();

  sub_1748BC(v25, v26);
  sub_3E81B4();
  sub_3E8594();
  v35 = sub_3E5DC4();
  v36 = v14;
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v37 = v66;
  sub_3EC1C4();
  v89 = v83;
  sub_FCF8(&v89, &unk_4F8A10);
  v88 = v84;
  sub_FCF8(&v88, &qword_4E94E0);
  v87 = v85;
  sub_FCF8(&v87, &unk_4F8A20);
  sub_16AC0(v86);
  sub_FCF8(v36, &unk_4E9EE0);
  v38 = type metadata accessor for FlowAction(0);
  v39 = swift_allocObject();
  sub_1A9BCC(v21, v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v40 = (v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v40 = 0;
  v40[1] = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v41 = v73;
  v42 = v71;
  v43 = v37;
  v44 = v37;
  v45 = v74;
  (*(v73 + 16))(v71, v43, v74);
  v65 = sub_3EC634();
  v46 = *(v65 - 8);
  v64 = *(v46 + 56);
  v67 = (v46 + 56);
  v47 = v78;
  v64(v78, 1, 1, v65);
  v48 = v79;
  sub_3E5FB4();
  v49 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v51 = v50;
  (*(v80 + 8))(v48, v81);
  (*(v41 + 8))(v44, v45);
  sub_1A9C34(v63, type metadata accessor for FlowDestination);
  *(v39 + 16) = v49;
  *(v39 + 24) = v51;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  *(v39 + 48) = 48;
  (*(v41 + 32))(v39 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v42, v45);
  sub_FACC(v47, v39 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v52 = v68;
  v68[3] = v38;
  v52[4] = sub_1A9FB0(&qword_4F8A40, type metadata accessor for FlowAction);
  *v52 = v39;
  v53 = *(v82 + 40);
  sub_1A99E4();
  v54 = v72;

  sub_3E8574();
  v55 = v76;

  v56 = v70;
  v57 = v77;
  v58 = v75;
  sub_3EC5A4();

  v64(&v56[v53], 0, 1, v65);
  v59 = v82;
  v60 = *(v82 + 44);
  v61 = sub_3E5764();
  result = (*(*(v61 - 8) + 56))(&v56[v60], 1, 1, v61);
  *v56 = v58;
  *(v56 + 1) = v54;
  *(v56 + 2) = v57;
  *(v56 + 3) = v55;
  *(v56 + 4) = 0;
  *(v56 + 5) = 0;
  v56[*(v59 + 32)] = 48;
  return result;
}

uint64_t sub_1A8B34(unint64_t a1, unint64_t a2)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EB0);
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v72 = &v67 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EB8);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EC0);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v70 = &v67 - v8;
  v79 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_22:
    v9 = sub_3EE5A4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
LABEL_3:
      *&v67 = v2;
      v10 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_3EE3F4();
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_22;
          }

          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v19 = v79;
            if ((v79 & 0x8000000000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_52;
          }
        }

        v12 = sub_3E7694();
        v14 = v13;
        v15 = sub_3E7694();
        v2 = v16;
        if (v12 == v15 && v14 == v16)
        {
        }

        else
        {
          v18 = sub_3EE804();

          if ((v18 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        v2 = &v79;
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
LABEL_6:
        ++v10;
        if (v11 == v9)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((v19 & 0x4000000000000000) != 0)
  {
LABEL_52:
    v20 = sub_3EE5A4();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  if (v20 > 0)
  {
    v21 = objc_opt_self();
    v22 = &selRef_errorWithDomain_code_userInfo_;
    v23 = [v21 mainBundle];
    v65._countAndFlagsBits = 0xE000000000000000;
    v80._object = 0x8000000000429C90;
    v80._countAndFlagsBits = 0xD000000000000015;
    v83.value._countAndFlagsBits = 0;
    v83.value._object = 0;
    v24.super.isa = v23;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_3E5A74(v80, v83, v24, v87, v65);

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v26 = swift_allocObject();
    v67 = xmmword_3F5630;
    *(v26 + 16) = xmmword_3F5630;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v20;
    v27 = sub_3ED214();
    v29 = v28;

    v30 = sub_DFAE8(0, 1, 1, _swiftEmptyArrayStorage);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_DFAE8((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[16 * v32];
    *(v33 + 4) = v27;
    *(v33 + 5) = v29;
    v34 = v77;
    v35 = v77 - v20;
    if (__OFSUB__(v77, v20))
    {
      __break(1u);
    }

    else
    {
      if (v35 < 1)
      {
        v40 = v75;
        v41 = v76;
        v42 = v72;
        goto LABEL_36;
      }

      v36 = [v21 mainBundle];
      v66._countAndFlagsBits = 0xE000000000000000;
      v81._object = 0x8000000000426F40;
      v81._countAndFlagsBits = 0xD000000000000015;
      v84.value._countAndFlagsBits = 0;
      v84.value._object = 0;
      v37.super.isa = v36;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      sub_3E5A74(v81, v84, v37, v88, v66);

      v38 = swift_allocObject();
      *(v38 + 16) = v67;
      *(v38 + 56) = &type metadata for Int;
      *(v38 + 64) = &protocol witness table for Int;
      *(v38 + 32) = v35;
      v25 = sub_3ED214();
      v22 = v39;

      v29 = *(v30 + 2);
      v34 = *(v30 + 3);
      v27 = v29 + 1;
      if (v29 < v34 >> 1)
      {
LABEL_32:
        v40 = v75;
        v41 = v76;
        v42 = v72;
        *(v30 + 2) = v27;
        v43 = &v30[16 * v29];
        *(v43 + 4) = v25;
        *(v43 + 5) = v22;
LABEL_36:
        v78 = v30;
        v52 = v68;
        v53 = v69;
        v54 = v71;
        (*(v69 + 104))(v68, enum case for ListFormatStyle.ListType.and<A, B>(_:), v71);
        (*(v40 + 104))(v42, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
        sub_886BC(&qword_4F6EC8, &unk_5010E0);
        v55 = v41;
        v56 = v70;
        sub_3E5814();
        (*(v40 + 8))(v42, v55);
        (*(v53 + 8))(v52, v54);
        sub_886BC(&qword_4F6ED0, &qword_4F6EC0);
        v57 = v74;
        sub_3ED4A4();
        (*(v73 + 8))(v56, v57);

        return v79;
      }
    }

    v30 = sub_DFAE8((v34 > 1), v27, 1, v30);
    goto LABEL_32;
  }

  v44 = sub_3E8404();
  v46 = v44;
  if (!v45)
  {
    v47 = [objc_opt_self() mainBundle];
    v65._countAndFlagsBits = 0xE000000000000000;
    v82._countAndFlagsBits = 0xD000000000000022;
    v82._object = 0x8000000000429C60;
    v85.value._countAndFlagsBits = 0;
    v85.value._object = 0;
    v48.super.isa = v47;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    sub_3E5A74(v82, v85, v48, v89, v65);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_3F5310;
    *(v49 + 56) = &type metadata for Int;
    *(v49 + 64) = &protocol witness table for Int;
    *(v49 + 32) = v77;
    *(v49 + 96) = &type metadata for Int64;
    *(v49 + 104) = &protocol witness table for Int64;
    *(v49 + 72) = v46;
    v50 = sub_3ED214();

    return v50;
  }

  if (v45 == 2)
  {
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v58 = "OUNT_PLAYED_FORMAT";
        v61 = [objc_opt_self() mainBundle];
      }

      else
      {
        if (v44 == 4)
        {
          v58 = "OUNT_SUBSCRIBER_FORMAT";
          v59 = [objc_opt_self() mainBundle];
          v65._countAndFlagsBits = 0xE000000000000000;
          v60._countAndFlagsBits = 0xD000000000000022;
          goto LABEL_50;
        }

        v58 = "SeeAllDownloaded";
        v61 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      if (!v44)
      {
        v59 = [objc_opt_self() mainBundle];
        v65._countAndFlagsBits = 0xE000000000000000;
        v60._object = 0x8000000000426F40;
        v60._countAndFlagsBits = 0xD000000000000015;
LABEL_51:
        v86.value._countAndFlagsBits = 0;
        v86.value._object = 0;
        v62.super.isa = v59;
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        sub_3E5A74(v60, v86, v62, v90, v65);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_3F5630;
        *(v63 + 56) = &type metadata for Int;
        *(v63 + 64) = &protocol witness table for Int;
        *(v63 + 32) = v77;
        v64 = sub_3ED214();

        return v64;
      }

      if (v44 == 1)
      {
        v58 = "OUNT_DOWNLOADED_FORMAT";
        v59 = [objc_opt_self() mainBundle];
        v65._countAndFlagsBits = 0xE000000000000000;
        v60._countAndFlagsBits = 0xD000000000000024;
LABEL_50:
        v60._object = (v58 | 0x8000000000000000);
        goto LABEL_51;
      }

      v58 = "OUNT_BOOKMARKED_FORMAT";
      v61 = [objc_opt_self() mainBundle];
    }

    v59 = v61;
    v65._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0xD000000000000026;
    goto LABEL_50;
  }

  sub_6BF60(v44, 1);
  result = sub_3EE574();
  __break(1u);
  return result;
}

uint64_t sub_1A9640(uint64_t a1)
{
  v2 = sub_3E8404();
  v4 = v2;
  if (!v3)
  {
    v5 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0xD000000000000024;
    v18._countAndFlagsBits = 0xE000000000000000;
    v19._object = 0x8000000000429AD0;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v6.super.isa = v5;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_3E5A74(v19, v20, v6, v22, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_3F5310;
    *(v7 + 56) = &type metadata for Int64;
    *(v7 + 64) = &protocol witness table for Int64;
    *(v7 + 32) = v4;
    *(v7 + 96) = &type metadata for Int;
    *(v7 + 104) = &protocol witness table for Int;
    *(v7 + 72) = a1;
LABEL_19:
    v16 = sub_3ED214();

    return v16;
  }

  if (v3 == 2)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v12 = "EE_ALL_PLAYED_FORMAT";
        v13 = [objc_opt_self() mainBundle];
      }

      else
      {
        if (v2 == 4)
        {
          v8 = "EE_ALL_SUBSCRIBER_FORMAT";
          v10 = [objc_opt_self() mainBundle];
          v11._countAndFlagsBits = 0xD000000000000024;
LABEL_13:
          v18._countAndFlagsBits = 0xE000000000000000;
          v11._object = (v8 | 0x8000000000000000);
LABEL_18:
          v21.value._countAndFlagsBits = 0;
          v21.value._object = 0;
          v14.super.isa = v10;
          v23._countAndFlagsBits = 0;
          v23._object = 0xE000000000000000;
          sub_3E5A74(v11, v21, v14, v23, v18);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_3F5630;
          *(v15 + 56) = &type metadata for Int;
          *(v15 + 64) = &protocol witness table for Int;
          *(v15 + 32) = a1;
          goto LABEL_19;
        }

        v12 = "Impossible to hit this";
        v13 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      if (!v2)
      {
        v8 = "EE_ALL_UNPLAYED_FORMAT";
        v9 = [objc_opt_self() mainBundle];
        goto LABEL_12;
      }

      if (v2 == 1)
      {
        v8 = "EE_ALL_DOWNLOADED_FORMAT";
        v9 = [objc_opt_self() mainBundle];
LABEL_12:
        v10 = v9;
        v11._countAndFlagsBits = 0xD000000000000026;
        goto LABEL_13;
      }

      v12 = "EE_ALL_BOOKMARKED_FORMAT";
      v13 = [objc_opt_self() mainBundle];
    }

    v10 = v13;
    v18._countAndFlagsBits = 0xE000000000000000;
    v11._object = (v12 | 0x8000000000000000);
    v11._countAndFlagsBits = 0xD000000000000028;
    goto LABEL_18;
  }

  sub_6BF60(v2, 1);
  result = sub_3EE574();
  __break(1u);
  return result;
}

uint64_t sub_1A99E4()
{
  v0 = sub_3E8404();
  if (v1)
  {
    if (v1 == 2)
    {
      v3 = 0x6C6C41656553;
      v4 = 0x61536C6C41656553;
      v5 = 0x6C506C6C41656553;
      if (v0 != 4)
      {
        v5 = 0xD000000000000018;
      }

      if (v0 != 3)
      {
        v4 = v5;
      }

      v6 = 0x6E556C6C41656553;
      if (v0 != 1)
      {
        v6 = 0xD000000000000010;
      }

      if (v0)
      {
        v3 = v6;
      }

      if (v0 <= 2)
      {
        return v3;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      sub_6BF60(v0, 1);
      result = sub_3EE574();
      __break(1u);
    }
  }

  else
  {
    strcpy(v7, "SeeAllSeason");
    BYTE5(v7[1]) = 0;
    HIWORD(v7[1]) = -5120;
    v8._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v8);

    return v7[0];
  }

  return result;
}

uint64_t sub_1A9BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9C34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A9C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9CFC@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for ShowEpisodesShelvesProvider.Info(0);

  return sub_1A7548(a1);
}

uint64_t sub_1A9DD0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1A9E10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (*(v0 + 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v4);
  return (*(v5 + 200))(v1, v2, v3, v4, v5);
}

uint64_t sub_1A9EE4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  sub_6BF60(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1A9F30()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  return (*(v5 + 192))(v1, v2, v3, v6, v4, v5);
}

uint64_t sub_1A9FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A9FF8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1748BC(a1, a2);
  }

  return a1;
}

void sub_1AA00C()
{
  sub_1AA094();
  if (v0 <= 0x3F)
  {
    sub_1AA0C4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Link();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1AA094()
{
  result = qword_4F6F78;
  if (!qword_4F6F78)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_4F6F78);
  }

  return result;
}

void sub_1AA0C4()
{
  if (!qword_4F6F80)
  {
    type metadata accessor for Action();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F6F80);
    }
  }
}

uint64_t sub_1AA158()
{
  v0 = type metadata accessor for ModernShelf();
  __swift_allocate_value_buffer(v0, qword_4F6FB0);
  v1 = __swift_project_value_buffer(v0, qword_4F6FB0);
  return sub_1AA1A4(v1);
}

uint64_t sub_1AA1A4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v2 - 8);
  v44 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v40 = &v38 - v5;
  v43 = type metadata accessor for ToggleCellModel();
  __chkstk_darwin(v43);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v36._countAndFlagsBits = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000001ELL;
  v48._object = 0x8000000000429D80;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v10.super.isa = v9;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v11 = sub_3E5A74(v48, v54, v10, v56, v36);
  v13 = v12;

  v14 = [v8 mainBundle];
  v37._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x8000000000429DA0;
  v49._countAndFlagsBits = 0xD000000000000019;
  v55.value._countAndFlagsBits = 0;
  v55.value._object = 0;
  v15.super.isa = v14;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v16 = sub_3E5A74(v49, v55, v15, v57, v37);
  v18 = v17;

  v41 = sub_3EC634();
  v42 = *(*(v41 - 8) + 56);
  v19 = v40;
  v42(v40, 1, 1, v41);
  v46 = 0;
  v47 = 0xE000000000000000;
  v20 = KeyPath;
  v45 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F47F8);
  sub_3EE554();
  v50._countAndFlagsBits = 45;
  v50._object = 0xE100000000000000;
  sub_3ED3D4(v50);
  v51._countAndFlagsBits = v11;
  v51._object = v13;
  sub_3ED3D4(v51);
  v52._countAndFlagsBits = 45;
  v52._object = 0xE100000000000000;
  sub_3ED3D4(v52);
  v53._countAndFlagsBits = v16;
  v53._object = v18;
  sub_3ED3D4(v53);
  v21 = v47;
  *v7 = v46;
  v7[1] = v21;
  v7[2] = v20;
  v7[3] = v11;
  v7[4] = v13;
  v7[5] = v16;
  v7[6] = v18;
  v22 = v43;
  sub_FACC(v19, v7 + *(v43 + 32), &unk_4E9170);
  v23 = type metadata accessor for ModernShelf();
  v24 = v23[5];
  v25 = type metadata accessor for Header(0);
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_3F5630;
  *(v26 + 56) = v22;
  *(v26 + 64) = sub_1AE3BC(&qword_4F71E0, type metadata accessor for ToggleCellModel);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v26 + 32));
  sub_1AE404(v7, boxed_opaque_existential_0Tm, type metadata accessor for ToggleCellModel);
  v28 = sub_3E5DC4();
  v29 = *(*(v28 - 8) + 56);
  v30 = v44;
  v29(v44, 1, 1, v28);
  v31 = &a1[v23[12]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v42(&a1[v23[13]], 1, 1, v41);
  v32 = v23[9];
  v33 = &a1[v23[8]];
  v29(&a1[v32], 1, 1, v28);
  *a1 = 0x656C67676F54;
  *(a1 + 1) = 0xE600000000000000;
  v34 = &a1[v23[6]];
  *v34 = 55;
  *(v34 + 3) = 256;
  *(v34 + 2) = 0;
  *(v34 + 1) = 1;
  *&a1[v23[7]] = v26;
  result = sub_17F4C4(v30, &a1[v32]);
  a1[v23[10]] = 1;
  a1[v23[11]] = 0;
  *v33 = 0;
  *(v33 + 1) = 0;
  return result;
}

uint64_t ShowListProvider.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_1AA718@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_1AA798()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t ShowListProvider.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void (*ShowListProvider.state.modify(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_3E9E94();
  return sub_17FA18;
}

uint64_t ShowListProvider.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_1AA994()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_1AAA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t ShowListProvider.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ShowListProvider.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8);
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

  v9 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider__state;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  sub_3E9E74();
  swift_endAccess();
  return sub_17FF98;
}

uint64_t ShowListProvider.paginatedPublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShowListProvider.__allocating_init(asPartOf:kind:pageSize:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1ADAE4(a1, a2, a3);

  return v6;
}

uint64_t ShowListProvider.init(asPartOf:kind:pageSize:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = sub_1ADAE4(a1, a2, a3);

  return v3;
}

Swift::Void __swiftcall ShowListProvider.start()()
{
  v131 = *v0;
  v1 = sub_3EDBA4();
  v117 = *(v1 - 8);
  v118 = v1;
  __chkstk_darwin(v1);
  v113 = v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FE0);
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FE8);
  v5 = *(v4 - 8);
  v119 = v4;
  v120 = v5;
  __chkstk_darwin(v4);
  v112 = v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FF0);
  v8 = *(v7 - 8);
  v121 = v7;
  v122 = v8;
  __chkstk_darwin(v7);
  v115 = v81 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FF8);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = v81 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7000);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = v81 - v11;
  v95 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v95);
  v93 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7008);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = v81 - v13;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7010);
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v105 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v126 = v81 - v16;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8);
  v133 = *(v124 - 8);
  __chkstk_darwin(v124);
  v90 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v88 = v81 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7018);
  v123 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = v81 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7020);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = v81 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v22 - 8);
  v24 = v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7028);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v81 - v27;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7030);
  v129 = *(v127 - 8);
  __chkstk_darwin(v127);
  v30 = v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v128 = v81 - v32;
  v33 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  swift_getKeyPath();
  sub_3E5C94();

  v92 = sub_801B4();
  v34 = sub_3EDBC4();
  v134 = v34;
  v97 = sub_3EDB64();
  v35 = *(v97 - 8);
  v96 = *(v35 + 56);
  v98 = v35 + 56;
  v91 = v24;
  v96(v24, 1, 1, v97);
  sub_886BC(&qword_4F7038, &qword_4F7028);
  v94 = sub_1AE3BC(&qword_4F1D30, sub_801B4);
  v36 = v128;
  sub_3EA114();
  sub_FCF8(v24, &qword_4F69E0);

  (*(v26 + 8))(v28, v25);
  *(swift_allocObject() + 16) = v33;
  sub_1ADDD8();
  v103 = v33;
  v37 = sub_3EDA14();

  (*(v129 + 16))(v30, v36, v127);
  v102 = v37;
  v134 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7048);
  sub_886BC(&qword_4F7050, &qword_4F7030);
  v81[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&qword_4F7058, &qword_4F7048);
  v38 = v82;
  sub_3E9B54();
  v39 = v125;
  LODWORD(v25) = *(v125 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_kind);
  v40 = swift_allocObject();
  *(v40 + 16) = v25;
  LOBYTE(v33) = v25;
  v83 = v25;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1ADE2C;
  *(v41 + 24) = v40;
  v89 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_886BC(&qword_4F7060, &qword_4F7018);
  v42 = v84;
  v43 = v85;
  sub_3EA024();

  v123[1](v38, v43);
  swift_beginAccess();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  v45 = v88;
  v85 = v44;
  sub_3E9E74();
  swift_endAccess();
  v123 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_886BC(&qword_4F7068, &qword_4F7020);
  v46 = v86;
  sub_3EA1B4();
  (*(v87 + 8))(v42, v46);
  v47 = v133;
  v48 = v124;
  (*(v133 + 16))(v90, v45, v124);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  v49 = *(v47 + 8);
  v133 = v47 + 8;
  v90 = v49;
  (v49)(v45, v48);
  v50 = *(v39 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryDataProvider);
  v51 = *(v39 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  (*(v51 + 248))(1, 1, ObjectType, v51);
  v53 = v93;
  swift_storeEnumTagMultiPayload();
  v54 = sub_188E58(v53);

  sub_1AE35C(v53, type metadata accessor for ObserverQueue);
  v134 = v54;
  *(swift_allocObject() + 16) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
  sub_886BC(&qword_4F61F0, &qword_4F61E0);
  v55 = v99;
  sub_3EA024();

  sub_886BC(&qword_4F7078, &qword_4F7008);
  v56 = v126;
  v57 = v100;
  sub_3EA174();
  (*(v101 + 8))(v55, v57);
  swift_beginAccess();
  v58 = v39;
  sub_3E9E74();
  swift_endAccess();
  sub_886BC(&qword_4F7080, &qword_4F6FD8);
  sub_1ADEE8();
  v59 = v104;
  v60 = v124;
  sub_3EA174();
  (v90)(v45, v60);
  v61 = *(v58 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageSize);
  v62 = swift_allocObject();
  v62[2] = v50;
  v62[3] = v51;
  v63 = v131;
  v62[4] = v61;
  v62[5] = v63;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
  sub_886BC(&qword_4F7098, &qword_4F6FF8);
  v64 = v106;
  v65 = v107;
  sub_3EA024();

  (*(v108 + 8))(v59, v65);
  sub_886BC(&qword_4F70A0, &qword_4F7000);
  sub_886BC(&qword_4F59A8, &qword_4F59A0);
  v66 = v109;
  v67 = sub_3E9EE4();
  (*(v110 + 8))(v64, v66);
  (*(v132 + 16))(v105, v56, v130);
  v134 = v67;
  sub_886BC(&qword_4F70A8, &qword_4F7010);
  sub_886BC(&qword_4F59B0, &qword_4F59A0);

  v68 = v111;
  sub_3E9B54();
  v69 = v113;
  sub_3EDB74();
  v70 = sub_3EDBC4();
  v134 = v70;
  v71 = v91;
  v96(v91, 1, 1, v97);
  sub_886BC(&qword_4F70B0, &qword_4F6FE0);
  v72 = v112;
  v73 = v114;
  sub_3EA124();
  sub_FCF8(v71, &qword_4F69E0);

  (*(v117 + 8))(v69, v118);
  (*(v116 + 8))(v68, v73);
  v74 = swift_allocObject();
  *(v74 + 16) = v83;
  *(v74 + 24) = v131;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1ADF90;
  *(v75 + 24) = v74;
  type metadata accessor for PageContent();
  sub_886BC(&qword_4F70B8, &qword_4F6FE8);
  v76 = v115;
  v77 = v119;
  sub_3EA024();

  (*(v120 + 8))(v72, v77);
  v78 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  sub_886BC(&qword_4F70C0, &qword_4F6FF0);
  sub_886BC(&unk_4F8840, &qword_4F8830);
  v79 = v121;
  sub_3EA164();
  (*(v122 + 8))(v76, v79);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  (*(v132 + 8))(v126, v130);
  (*(v129 + 8))(v128, v127);
  v80 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  *(v78 + v80) = v67;
}

uint64_t sub_1AC5E4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v24 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = *a1;
  v13 = v12 >> 6;
  v14 = 2;
  if ((v12 >> 6) != 1)
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12 >> 6;
  }

  if (v13)
  {
    v16 = v12 & 0x3F;
  }

  else
  {
    v16 = *a1;
  }

  ObjectType = swift_getObjectType();
  v18 = ShowsSortType.showLockupStyle.getter(v16, v25);
  v19 = (*(a2 + 192))(v15, 1, v16, v25, a3, ObjectType, a2, v18);
  v27[3] = v25[3];
  v27[4] = v25[4];
  v28 = v26;
  v27[0] = v25[0];
  v27[1] = v25[1];
  v27[2] = v25[2];
  sub_1AE46C(v27);
  *&v25[0] = v19;
  *(swift_allocObject() + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988);
  sub_886BC(&qword_4F71F0, &qword_4F71E8);
  v20 = sub_3E8814();

  *&v25[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5998);
  *(swift_allocObject() + 16) = xmmword_3F5630;
  v21 = type metadata accessor for ModernShelf();
  (*(*(v21 - 8) + 56))(v11, 1, 2, v21);
  sub_3E95C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
  sub_886BC(&qword_4F59A8, &qword_4F59A0);
  v22 = sub_3E8824();

  *v24 = v22;
  return result;
}

uint64_t sub_1AC95C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  return sub_3E95B4();
}

uint64_t sub_1AC9E8@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v25 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = *a1;
  v14 = type metadata accessor for Header(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v26 = sub_772E0(v13);
  v15 = sub_3E5DC4();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  sub_3E85C4();
  sub_3EC584();

  v17 = sub_3EC634();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  v18 = type metadata accessor for ModernShelf();
  v19 = v18[9];
  v20 = &a2[v18[8]];
  v16(&a2[v19], 1, 1, v15);
  *a2 = 0xD00000000000001ELL;
  *(a2 + 1) = 0x8000000000429D00;
  sub_FACC(v12, &a2[v18[5]], &qword_4F1AC0);
  v21 = &a2[v18[6]];
  *v21 = 27;
  *(v21 + 3) = 256;
  *(v21 + 2) = 0;
  *(v21 + 1) = 1;
  v22 = v25;
  *&a2[v18[7]] = v26;
  sub_17F4C4(v22, &a2[v19]);
  a2[v18[10]] = 1;
  a2[v18[11]] = 0;
  v23 = &a2[v18[12]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  sub_FACC(v6, &a2[v18[13]], &unk_4E9170);
  *v20 = 0;
  *(v20 + 1) = 0;
  return (*(*(v18 - 1) + 56))(a2, 0, 2, v18);
}

uint64_t sub_1ACD60@<X0>(int a1@<W0>, int a2@<W2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v46 = a3;
  v44 = a1;
  v45 = a2;
  v5 = type metadata accessor for ModernPage();
  __chkstk_darwin(v5 - 8);
  v47 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41[-v8];
  v10 = type metadata accessor for ModernShelf();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v41[-v14];
  __chkstk_darwin(v16);
  v18 = &v41[-v17];
  __chkstk_darwin(v19);
  v48 = &v41[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v21);
  v23 = &v41[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988);
  sub_3E95D4();
  v24 = sub_3E95E4();
  if (sub_3E9544())
  {
    sub_FCF8(v23, &qword_4F5978);
    *a4 = 1;
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  sub_3E9514();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_FCF8(v9, &unk_503DA0);
LABEL_13:
    static ContentUnavailablePage.emptyLibrary.getter(a4);
    sub_FCF8(v23, &qword_4F5978);
    type metadata accessor for PageContent();
    return swift_storeEnumTagMultiPayload();
  }

  v42 = v24;
  v25 = v48;
  sub_1AE404(v9, v48, type metadata accessor for ModernShelf);
  v49 = *&v25[*(v10 + 28)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88);
  sub_886BC(&qword_4F5A90, &qword_4F5A88);
  if ((sub_3ED894() & 1) == 0)
  {
    sub_1AE35C(v25, type metadata accessor for ModernShelf);
    goto LABEL_13;
  }

  if (v44)
  {
    if (qword_4E8A18 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v10, qword_4F6FB0);
    sub_17F3F0(v26, v18, type metadata accessor for ModernShelf);
    v27 = sub_E02B0(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = sub_E02B0(v28 > 1, v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    sub_1AE404(v18, v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, type metadata accessor for ModernShelf);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  sub_17F3F0(v25, v15, type metadata accessor for ModernShelf);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_E02B0(0, v27[2] + 1, 1, v27);
  }

  v32 = v27[2];
  v31 = v27[3];
  if (v32 >= v31 >> 1)
  {
    v27 = sub_E02B0(v31 > 1, v32 + 1, 1, v27);
  }

  v27[2] = v32 + 1;
  v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v34 = *(v11 + 72);
  sub_1AE404(v15, v27 + v33 + v34 * v32, type metadata accessor for ModernShelf);
  if (v42)
  {
    v35 = v43;
    static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, v43);
    v37 = v27[2];
    v36 = v27[3];
    if (v37 >= v36 >> 1)
    {
      v27 = sub_E02B0(v36 > 1, v37 + 1, 1, v27);
    }

    v27[2] = v37 + 1;
    sub_1AE404(v35, v27 + v33 + v37 * v34, type metadata accessor for ModernShelf);
    v25 = v48;
  }

  v38 = v47;
  sub_1AD42C(v45, v27, v47);

  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
  sub_17F3F0(v38, a4, type metadata accessor for ModernPage);
  v40 = sub_3E66E4();
  sub_1AE35C(v38, type metadata accessor for ModernPage);
  sub_FCF8(v23, &qword_4F5978);
  a4[v39] = v40;
  type metadata accessor for PageContent();
  swift_storeEnumTagMultiPayload();
  return sub_1AE35C(v25, type metadata accessor for ModernShelf);
}

uint64_t sub_1AD42C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EC544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_3E8024();
  v15 = v14;
  if (a1 == 2)
  {
    v21 = sub_3E7A94();
    v23 = v22;
    v34 = v13;
    v35 = v15;
    v50._countAndFlagsBits = 95;
    v50._object = 0xE100000000000000;
    sub_3ED3D4(v50);
    v51._countAndFlagsBits = v21;
    v51._object = v23;
    sub_3ED3D4(v51);

    sub_3ECCE4();
    v19 = sub_3E7A94();
  }

  else
  {
    if (a1 != 7)
    {
      v29 = sub_3E7B24();
      v31 = v30;
      v34 = v13;
      v35 = v15;
      v52._countAndFlagsBits = 95;
      v52._object = 0xE100000000000000;
      sub_3ED3D4(v52);
      v53._countAndFlagsBits = v29;
      v53._object = v31;
      sub_3ED3D4(v53);

      sub_3ECCE4();
      v28 = type metadata accessor for ModernPage();
      sub_3EC154();
      goto LABEL_7;
    }

    v16 = sub_3E7AC4();
    v18 = v17;
    v34 = v13;
    v35 = v15;
    v48._countAndFlagsBits = 95;
    v48._object = 0xE100000000000000;
    sub_3ED3D4(v48);
    v49._countAndFlagsBits = v16;
    v49._object = v18;
    sub_3ED3D4(v49);

    sub_3ECCE4();
    v19 = sub_3E7AC4();
  }

  v24 = v19;
  v25 = v20;
  v26 = sub_3E8024();
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v7 + 16))(v9, v12, v6);
  v28 = type metadata accessor for ModernPage();
  sub_3EC0C4();
  v47 = v41;
  sub_FCF8(&v47, &unk_4F8A10);
  v46 = v42;
  sub_FCF8(&v46, &qword_4E94E0);
  v45 = v43;
  sub_FCF8(&v45, &unk_4F8A20);
  sub_16AC0(v44);
  (*(v7 + 8))(v12, v6);

LABEL_7:
  *(a3 + *(v28 + 24)) = a2;
}

uint64_t ShowListProvider.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryObserverProvider);

  return v0;
}

uint64_t ShowListProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryObserverProvider);

  return swift_deallocClassInstance();
}

uint64_t _s8ShelfKit16ShowListProviderC5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 >> 6;
  if (!v3)
  {
    if (v2 <= 0x3F)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (v3 == 1)
  {
    if ((v2 & 0xC0) == 0x40)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = 0;
    return v9 & 1;
  }

  if ((v2 & 0xC0) != 0x80)
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = sub_3E7B74();
  v6 = v5;
  if (v4 == sub_3E7B74() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_3EE804();
  }

  return v9 & 1;
}

uint64_t sub_1ADAE4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3;
  v7 = a2;
  v8 = type metadata accessor for PageContent();
  __chkstk_darwin(v8);
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher) = 0;
  v10 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageContent;
  v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v3 + v10) = sub_3E9D94();
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_subscriptions) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_kind) = a2;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageSize) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1D4F0(v17, v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC394();
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryDataProvider) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB40);
  sub_3EC394();
  sub_1D4F0(v17, v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryObserverProvider);
  v11 = *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController + 24);
  v12 = *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController), *(v4 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController + 24));
  v13 = (*(v12 + 176))(v11, v12);
  if (v7 == 7)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2 | 0x80;
  }

  swift_beginAccess();
  v16[15] = v14;
  sub_3E9E64();
  swift_endAccess();
  return v4;
}

id sub_1ADD2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showListShowsAllShows];
  *a2 = result;
  return result;
}

uint64_t sub_1ADD74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1ADDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EDA24();
  *a1 = result;
  return result;
}

unint64_t sub_1ADDD8()
{
  result = qword_4F7040;
  if (!qword_4F7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7040);
  }

  return result;
}

uint64_t sub_1ADE2C@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = a2 | 0x40;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (v4 == 7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 | 0x80;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1ADE50()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1ADECC@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 16) == 7 && *result != 0;
  *a2 = v4;
  return result;
}

unint64_t sub_1ADEE8()
{
  result = qword_4F7088;
  if (!qword_4F7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F7088);
  }

  return result;
}

uint64_t sub_1ADF3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1ADF9C(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71D8);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t type metadata accessor for ShowListProvider()
{
  result = qword_4F7108;
  if (!qword_4F7108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AE060()
{
  sub_1AE170();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AE170()
{
  if (!qword_4F7118)
  {
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F7118);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShowListProvider.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ShowListProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AE35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AE3BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t StorePageProvider.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = v3;
  v5 = *(v1 + 24);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  sub_1AE550(v3, v5);
  return sub_1AE564(v4);
}

uint64_t sub_1AE550(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1AE564(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1AE574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = v4;
  v6 = *(v3 + 24);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  sub_1AE550(v4, v6);
  return sub_1AE564(v5);
}

unint64_t sub_1AE5E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  v6 = v1;
  sub_1AE550(v4, v2);
  sub_1AE564(v1);
  return sub_1AE638(&v4);
}

unint64_t sub_1AE638(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4 - 8);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  swift_beginAccess();
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  *(v2 + 16) = v7;
  v12 = *(v2 + 24);
  *(v2 + 24) = v8;
  *(v2 + 32) = v9;
  sub_1B78E4(v10, v12);
  sub_1B7940(v11);
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
  {
    sub_1B3DDC(v6);
    sub_3E9D74();
  }

  result = swift_beginAccess();
  v14 = *(v2 + 64);
  if (v14)
  {
    v15 = *(v2 + 16);
    v16 = *(v2 + 32);
    v17 = *(v2 + 24);
    v20 = v15;
    v21 = v17;
    v22 = v16;
    sub_7A6C8(v14);
    sub_1AE550(v15, v17);
    sub_1AE564(v16);
    v14(&v20);
    sub_16AC0(v14);
    v18 = v22;
    sub_1B78E4(v20, v21);
    return sub_1B7940(v18);
  }

  return result;
}

uint64_t sub_1AE7B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B80BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_1AE848(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8084;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t StorePageProvider.loadPageCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_7A6C8(v1);
  return v1;
}

uint64_t StorePageProvider.loadPageCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_16AC0(v5);
}

uint64_t sub_1AE9F8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_17B910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4);
}

uint64_t sub_1AEA8C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_17B8E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_7A6C8(v3);
  return sub_16AC0(v8);
}

uint64_t LegacyArtworkLoader.alternativeSize.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_7A6C8(v1);
  return v1;
}

uint64_t LegacyArtworkLoader.alternativeSize.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_16AC0(v5);
}

uint64_t StorePageProvider.isPreparingNextPage.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AEC80(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v20[1] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3E63E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74C0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  v15 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_FBD0(v21, v14, &qword_4F72E8);
  sub_FBD0(v1 + v15, &v14[v16], &qword_4F72E8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      return sub_FCF8(v14, &qword_4F72E8);
    }
  }

  else
  {
    sub_FBD0(v14, v10, &qword_4F72E8);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      sub_1B8D0C(&v14[v16], v7, &type metadata accessor for InteractionContext.Page);
      v19 = sub_3E63C4();
      sub_1B8C84(v7, &type metadata accessor for InteractionContext.Page);
      sub_1B8C84(v10, &type metadata accessor for InteractionContext.Page);
      result = sub_FCF8(v14, &qword_4F72E8);
      if (v19)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1B8C84(v10, &type metadata accessor for InteractionContext.Page);
  }

  result = sub_FCF8(v14, &qword_4F74C0);
LABEL_7:
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
  {
    sub_1B3DDC(result);
    return sub_3E9D74();
  }

  return result;
}

uint64_t StorePageProvider.__allocating_init(asPartOf:pageURL:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  StorePageProvider.init(asPartOf:pageURL:page:)(a1, a2, a3);
  return v6;
}

uint64_t StorePageProvider.init(asPartOf:pageURL:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v7 = type metadata accessor for PageContent();
  __chkstk_darwin(v7);
  *(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v3 + 40) = sub_3E9D94();
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7200);
  swift_allocObject();
  *(v3 + 80) = sub_3E9D14();
  v9 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  v10 = sub_3E5DC4();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = (v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingProvider) = 0;
  v12 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController;
  *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController) = 0;
  sub_3E5FB4();
  v13 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
  *(v4 + v13) = sub_3E66E4();
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelves) = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf;
  v15 = type metadata accessor for ModernShelf();
  v16 = *(*(v15 - 8) + 56);
  v16(v4 + v14, 1, 1, v15);
  v16(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf, 1, 1, v15);
  v16(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf, 1, 1, v15);
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage) = 0;
  v17 = v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  v19 = sub_3E63E4();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_subscriptions) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_reloadSubscription) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_objectGraph) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3EC444();

  sub_3ECD14();
  sub_1D4F0(v26, v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30);
  sub_3ECD14();
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightsProvider) = v26[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7298);
  sub_3ECD14();
  sub_1D4F0(v26, v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3ECD14();
  sub_1D4F0(v26, v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController);
  type metadata accessor for InMemoryPageStateController();
  sub_3EC364();
  *(v4 + v12) = *&v26[0];

  swift_beginAccess();
  sub_B8464(a2, v4 + v9, &unk_4E9EE0);
  swift_endAccess();
  type metadata accessor for ProgressivelyLoadShelvesController();
  v20 = swift_allocObject();
  v20[7] = _swiftEmptyArrayStorage;
  v20[8] = _swiftEmptyArrayStorage;
  v20[9] = _swiftEmptyDictionarySingleton;
  *&v26[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  swift_allocObject();
  v20[10] = sub_3E9D94();
  sub_3ECD14();
  sub_1D4F0(v26, (v20 + 2));

  sub_FCF8(a2, &unk_4E9EE0);
  v21 = v25;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelfController) = v20;
  v22 = v21 && *(v21 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) != 1;
  *(v4 + 16) = v21;
  *(v4 + 24) = v22;
  *(v4 + 32) = 0;
  return v4;
}

void StorePageProvider.loadNewPageURL(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v10 = 0;
  v11 = 2;
  v12 = 1;
  sub_1AE638(&v10);
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  swift_beginAccess();
  sub_51F9C(v5, v1 + v8, &unk_4E9EE0);
  swift_endAccess();
  StorePageProvider.reload(ignoreCache:)(0);
}

Swift::Void __swiftcall StorePageProvider.reload(ignoreCache:)(Swift::Bool ignoreCache)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_3E6304();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = ignoreCache;
  (*(v11 + 104))(v14, enum case for PageRenderEvent.reload(_:), v10, v12);
  sub_3E9CF4();
  (*(v11 + 8))(v14, v10);
  v15 = sub_3E66E4();
  v16 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
  swift_beginAccess();
  *(v2 + v16) = v15;
  swift_beginAccess();
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (*(v2 + 24))
  {
    if (v18 != 1)
    {
LABEL_3:
      v19 = sub_3E5DC4();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      goto LABEL_6;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  sub_1AE550(*(v2 + 16), *(v2 + 24));
  sub_1AFA7C(v6);
  sub_1B78E4(v17, v18);
  v19 = sub_3E5DC4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) != 1)
  {
    (*(v20 + 32))(v9, v6, v19);
    (*(v20 + 56))(v9, 0, 1, v19);
    goto LABEL_9;
  }

LABEL_6:
  v21 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  swift_beginAccess();
  sub_FBD0(v2 + v21, v9, &unk_4E9EE0);
  sub_3E5DC4();
  if ((*(*(v19 - 8) + 48))(v6, 1, v19) != 1)
  {
    sub_FCF8(v6, &unk_4E9EE0);
  }

LABEL_9:
  sub_1AFC38(v9, ignoreCache);
  sub_FCF8(v9, &unk_4E9EE0);
}

uint64_t sub_1AFA7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E63E4();
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8BD4(v1 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v5, &type metadata accessor for InteractionContext.Page);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_1B8C84(v5, &type metadata accessor for InteractionContext.Page);
      goto LABEL_3;
    }

    v9 = v5;
LABEL_10:
    sub_FCF8(v9, &qword_4E9FD0);
    goto LABEL_3;
  }

  if (((1 << EnumCaseMultiPayload) & 0x7FEFFF0) == 0)
  {
    if (EnumCaseMultiPayload != 3)
    {
      return sub_3E5D94();
    }

    v9 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60) + 64)];
    goto LABEL_10;
  }

LABEL_3:
  v7 = sub_3E5DC4();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_1AFC38(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v71) = a2;
  v5 = sub_3E6304();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageContent();
  __chkstk_darwin(v7 - 8);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_3E59F4();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E5994();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v16 - 8);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  v21 = sub_3E5DC4();
  __chkstk_darwin(v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v26 = v25;
  sub_FBD0(v24, v20, &unk_4E9EE0);
  v27 = *(v26 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    return sub_FCF8(v20, &unk_4E9EE0);
  }

  v62 = v27;
  v66 = v26;
  v29 = *(v26 + 32);
  v29(v23, v20, v21);
  v63 = v23;
  if (v71)
  {
    v60 = v29;
    v71 = v5;
    sub_3E59C4();
    v30 = *(v70 + 48);
    if (v30(v15, 1, v72) || (v32 = sub_3E59A4()) == 0)
    {

      v31 = _swiftEmptyArrayStorage;
    }

    else
    {
      v31 = v32;
    }

    sub_3E5964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_E05B8(0, v31[2] + 1, 1, v31);
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_E05B8(v34 > 1, v35 + 1, 1, v31);
    }

    v31[2] = v35 + 1;
    (*(v67 + 32))(v31 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v35, v12, v68);
    v36 = v72;
    if (v30(v15, 1, v72))
    {
    }

    else
    {
      sub_3E59B4();
    }

    v21 = v61;
    if (v30(v15, 1, v36))
    {
      v37 = v69;
      (*(v66 + 56))(v69, 1, 1, v21);
      v5 = v71;
    }

    else
    {
      v38 = v70;
      v39 = v64;
      (*(v70 + 16))(v64, v15, v36);
      v37 = v69;
      sub_3E59D4();
      v40 = v63;
      (*(v38 + 8))(v39, v36);
      v41 = v62(v37, 1, v21);
      v5 = v71;
      if (v41 != 1)
      {
        (*(v66 + 8))(v40, v21);
        v60(v40, v37, v21);
        goto LABEL_19;
      }
    }

    sub_FCF8(v37, &unk_4E9EE0);
LABEL_19:
    sub_FCF8(v15, &qword_503D70);
  }

  v42 = v21;
  swift_beginAccess();
  v43 = *(v3 + 32);
  *(v3 + 32) = 1;
  v44 = sub_1B7940(v43);
  if (*(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
  {
    sub_1B3DDC(v44);
    sub_3E9D74();
  }

  swift_beginAccess();
  v45 = *(v3 + 64);
  if (v45)
  {
    v47 = *(v3 + 32);
    v48 = *(v3 + 24);
    v75 = *(v3 + 16);
    v46 = v75;
    v76 = v48;
    v77 = v47;
    sub_7A6C8(v45);
    sub_1AE550(v46, v48);
    sub_1AE564(v47);
    v45(&v75);
    sub_16AC0(v45);
    v49 = v77;
    sub_1B78E4(v75, v76);
    sub_1B7940(v49);
  }

  v50 = v73;
  *v73 = 1;
  v51 = enum case for PageRenderActivity.primaryDataFetchStarted(_:);
  v52 = sub_3E6474();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
  v53 = v74;
  (*(v74 + 104))(v50, enum case for PageRenderEvent.activity(_:), v5);
  sub_3E9CF4();
  (*(v53 + 8))(v50, v5);
  v54 = *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider + 24);
  v55 = *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider), v54);
  v56 = v63;
  (*(v55 + 136))(v63, v54, v55);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v57 = sub_36174(0, &qword_4F10B0);

  v58 = sub_3EDBC4();
  v78 = v57;
  v79 = &protocol witness table for OS_dispatch_queue;
  v75 = v58;
  sub_3ECD94();

  (*(v66 + 8))(v56, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
}

Swift::Void __swiftcall StorePageProvider.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C0);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v27 = &v26 - v5;
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6 - 8);
  v26 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  sub_1B0BF0();
  v31 = *(*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelfController) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
  sub_886BC(&qword_4F72D0, &qword_4F72B0);
  sub_3E9FA4();

  sub_886BC(&qword_4F72D8, &qword_4F72C8);
  v12 = sub_3E9F94();
  (*(v9 + 8))(v11, v8);
  v31 = v12;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330);
  sub_886BC(&qword_4F6340, &qword_4F6330);
  sub_3EA1A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  swift_beginAccess();
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (v14 == 1)
    {

      v15 = sub_3E66D4();
      goto LABEL_6;
    }

LABEL_11:
    v22 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
    swift_beginAccess();
    v23 = v27;
    sub_FBD0(v1 + v22, v27, &unk_4E9EE0);
    sub_1AFC38(v23, 0);
    sub_FCF8(v23, &unk_4E9EE0);
LABEL_12:
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController), *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController + 24));
    v24 = v28;
    sub_3E9244();
    swift_allocObject();
    swift_weakInit();
    sub_886BC(&qword_4F72E0, &qword_4F72C0);
    v25 = v30;
    sub_3EA1A4();

    (*(v29 + 8))(v24, v25);
    swift_beginAccess();
    sub_3E9C94();
    swift_endAccess();

    return;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v15 = sub_3E6704();
LABEL_6:
  v16 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount;
  v17 = *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = v19;
    sub_1B1FAC(v1, v13, v15);
    v20 = *(v1 + v16);
    v18 = __OFSUB__(v20, 1);
    v21 = v20 - 1;
    if (!v18)
    {
      *(v1 + v16) = v21;
      if (!v21)
      {
        sub_1B3DDC(v26);
        sub_3E9D74();
      }

      sub_1B78E4(v13, v14);
      if (*(v1 + 24) == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B0BF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EC0);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  swift_beginAccess();
  sub_FBD0(v0 + v13, v8, &unk_4E9EE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_FCF8(v8, &unk_4E9EE0);
  }

  v15 = *(v10 + 32);
  v25 = v12;
  v15(v12, v8, v9);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightsProvider + 8);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 32);
  v23 = v0;
  v28 = v18(v12, ObjectType, v16);
  sub_36174(0, &qword_4F10B0);
  v24 = v4;
  v19 = sub_3EDBC4();
  v29 = v19;
  v20 = sub_3EDB64();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40);
  sub_886BC(&qword_4F5EC8, &qword_503C40);
  sub_87870();
  v21 = v26;
  sub_3EA114();
  sub_FCF8(v3, &qword_4F69E0);

  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F5ED0, &qword_4F5EC0);
  v22 = v24;
  sub_3EA1A4();

  (*(v27 + 8))(v21, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  return (*(v10 + 8))(v25, v9);
}

uint64_t sub_1B110C(uint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    *(result + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelves) = v5;

    if (*(v7 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
    {
      sub_1B3DDC(v4);
      sub_3E9D74();
    }
  }

  return result;
}

Swift::Void __swiftcall StorePageProvider.viewDidDisappear()()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController))
  {

    sub_3E92F4();
  }
}

uint64_t StorePageProvider.deinit()
{
  v1 = *(v0 + 32);
  sub_1B78E4(*(v0 + 16), *(v0 + 24));
  sub_1B7940(v1);

  sub_16AC0(*(v0 + 48));
  sub_16AC0(*(v0 + 64));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL, &unk_4E9EE0);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController);

  v2 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageTrackingID;
  v3 = sub_3E5FC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf, &unk_503DA0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf, &unk_503DA0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf, &unk_503DA0);
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent);
  }

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext, &qword_4F72E8);

  return v0;
}

uint64_t StorePageProvider.__deallocating_deinit()
{
  StorePageProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1B14E8(void **a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v3 = sub_3E6304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  if (*(v7 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) == 1)
  {
    sub_3E8E04();
    if ((sub_3E8DE4() & 1) == 0)
    {

      v25 = sub_3E8DF4();

      sub_3E8DD4();

      return;
    }
  }

  v10 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v11 = sub_3EC164();
  (*(*(v11 - 8) + 16))(v6, v7 + v10, v11);
  v12 = enum case for PageRenderActivity.primaryDataFetchCompleted(_:);
  v13 = sub_3E6474();
  (*(*(v13 - 8) + 104))(v6, v12, v13);
  (*(v4 + 104))(v6, enum case for PageRenderEvent.activity(_:), v3);
  sub_3E9CF4();
  (*(v4 + 8))(v6, v3);
  v14 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount;
  v15 = *(v9 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v9 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = v17;
  v27 = v7;
  v28 = 1;
  v29 = 0;

  sub_1AE638(&v27);
  v18 = sub_3E66D4();
  v19 = *(v9 + v14);
  v16 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + v14) = v20;
  sub_1B1FAC(v9, v7, v18);
  v22 = *(v9 + v14);
  v16 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  *(v9 + v14) = v23;
  if (!v23)
  {
    sub_1B3DDC(v21);
    v21 = sub_3E9D74();
    v23 = *(v9 + v14);
  }

  v16 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (v16)
  {
    goto LABEL_18;
  }

  *(v9 + v14) = v24;
  if (!v24)
  {
    sub_1B3DDC(v21);
    sub_3E9D74();
  }
}

uint64_t sub_1B186C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v2 - 8);
  v31 = &v28 - v3;
  v29 = sub_3E5FC4();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for NavigateBackAction();
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC8ShelfKit18NavigateBackAction_animationBehavior) = 0;
  v16 = sub_3EC634();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v17 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v19 = v18;
  (*(v4 + 8))(v6, v29);
  *(v15 + 16) = v17;
  *(v15 + 24) = v19;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 32;
  (*(v8 + 32))(v15 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10, v7);
  sub_FACC(v13, v15 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v33[3] = v14;
  v20 = sub_1B8C3C(&qword_4F74D8, type metadata accessor for NavigateBackAction);
  v33[0] = v15;
  v33[4] = v20;
  v33[5] = v30;
  sub_E69A0(v33, v32);
  v21 = swift_allocObject();
  v22 = v32[1];
  v21[1] = v32[0];
  v21[2] = v22;
  v21[3] = v32[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);

  v23 = sub_3ECE04();
  v24 = sub_3ED6F4();
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_4072F0;
  v26[5] = v21;
  v26[6] = v23;

  sub_E8ECC(0, 0, v25, &unk_407300, v26);

  return sub_E91B8(v33);
}

unint64_t sub_1B1CB4(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v3 = sub_3E6304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    *v6 = a1;
    v7 = enum case for PageRenderActivity.primaryDataFetchFailed(_:);
    v8 = sub_3E6474();
    (*(*(v8 - 8) + 104))(v6, v7, v8);
    (*(v4 + 104))(v6, enum case for PageRenderEvent.activity(_:), v3);
    swift_errorRetain();
    sub_3E9CF4();

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v10 + 32);
    *(v10 + 32) = a1;
    swift_errorRetain();
    v12 = sub_1B7940(v11);
    if (*(v10 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
    {
      sub_1B3DDC(v12);
      sub_3E9D74();
    }

    swift_beginAccess();
    v13 = *(v10 + 64);
    if (v13)
    {
      v15 = *(v10 + 32);
      v16 = *(v10 + 24);
      v19 = *(v10 + 16);
      v14 = v19;
      v20 = v16;
      v21 = v15;
      sub_7A6C8(v13);
      sub_1AE550(v14, v16);
      sub_1AE564(v15);
      v13(&v19);

      sub_16AC0(v13);
      v17 = v21;
      sub_1B78E4(v19, v20);
      return sub_1B7940(v17);
    }

    else
    {
    }
  }

  return result;
}

void sub_1B1FAC(uint64_t a1, void *a2, int a3)
{
  v105 = a3;
  v106 = sub_3E5DC4();
  v109 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v6 - 8);
  v94 = v91 - v7;
  v96 = sub_3EDBA4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v101 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7488);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8);
  __chkstk_darwin(v10 - 8);
  v104 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = (v91 - v13);
  v14 = type metadata accessor for PageContent();
  __chkstk_darwin(v14 - 8);
  v102 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v16 - 8);
  v108 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v107 = v91 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v20 - 8);
  v22 = v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v23 - 8);
  v25 = v91 - v24;
  v26 = sub_3E7784();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v91 - v31;
  sub_1B2FFC();
  swift_beginAccess();
  v33 = *(a1 + 48);
  if (v33)
  {

    v33(a2);
    sub_16AC0(v33);
  }

  v34 = a2;
  if (*(a2 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId + 8))
  {
    v35 = 0;
    v36 = 0;
  }

  else
  {
    *&v111 = *(a2 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId);
    sub_17A28();
    v35 = sub_3EE1F4();
  }

  v37 = (a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId);
  *v37 = v35;
  v37[1] = v36;

  sub_FBD0(a2 + OBJC_IVAR____TtC8ShelfKit4Page_uber, v25, &qword_4F1D50);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_FCF8(v25, &qword_4F1D50);
  }

  else
  {
    v93 = a2;
    sub_1B8D0C(v25, v32, &type metadata accessor for ArtworkModel);
    v38 = type metadata accessor for ModernShelf();
    v39 = v38[5];
    v40 = type metadata accessor for Header(0);
    (*(*(v40 - 8) + 56))(&v22[v39], 1, 1, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_3F5630;
    sub_1B8BD4(v32, v29, &type metadata accessor for ArtworkModel);
    v42 = type metadata accessor for RoomUber();
    *(v41 + 56) = v42;
    *(v41 + 64) = sub_1B8C3C(&qword_4F74A8, type metadata accessor for RoomUber);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v41 + 32));
    sub_3E5FB4();
    sub_1B8D0C(v29, boxed_opaque_existential_0Tm + *(v42 + 20), &type metadata accessor for ArtworkModel);
    sub_1B8C84(v32, &type metadata accessor for ArtworkModel);
    v44 = *(v109 + 56);
    v45 = v106;
    v46 = v107;
    v44(v107, 1, 1, v106);
    v47 = &v22[v38[12]];
    *(v47 + 4) = 0;
    *v47 = 0u;
    *(v47 + 1) = 0u;
    v48 = v38[13];
    v49 = sub_3EC634();
    (*(*(v49 - 8) + 56))(&v22[v48], 1, 1, v49);
    v50 = v38[9];
    v51 = &v22[v38[8]];
    v44(&v22[v50], 1, 1, v45);
    *v22 = 0x726562556D6F6F52;
    *(v22 + 1) = 0xE800000000000000;
    v52 = &v22[v38[6]];
    *v52 = 34;
    *(v52 + 3) = 256;
    *(v52 + 2) = 0;
    *(v52 + 1) = 1;
    *&v22[v38[7]] = v41;
    v53 = v46;
    v34 = v93;
    sub_51F9C(v53, &v22[v50], &unk_4E9EE0);
    v22[v38[10]] = 1;
    v22[v38[11]] = 0;
    *v51 = 0;
    *(v51 + 1) = 0;
    (*(*(v38 - 1) + 56))(v22, 0, 1, v38);
    v54 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf;
    swift_beginAccess();
    sub_51F9C(v22, a1 + v54, &unk_503DA0);
    swift_endAccess();
  }

  v55 = v108;
  v56 = v34 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  if (*(v34 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent + 24))
  {
    sub_1F958(v56, &v111);
  }

  else
  {
    v57 = *(v56 + 16);
    v111 = *v56;
    v112 = v57;
    v113 = *(v56 + 32);
  }

  v58 = v109;
  v59 = a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  swift_beginAccess();
  if (*(v59 + 24))
  {
    if (*(&v112 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v59, &v111);
      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  else if (*(&v112 + 1))
  {
    sub_1F958(&v111, v59);
    goto LABEL_19;
  }

  v60 = v112;
  *v59 = v111;
  *(v59 + 16) = v60;
  *(v59 + 32) = v113;
LABEL_19:
  v61 = swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) < 1)
  {
    sub_1B3DDC(v61);
    sub_3E9D74();
  }

  if (*(&v112 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  }

  v107 = OBJC_IVAR____TtC8ShelfKit4Page_pageContext;
  v62 = v103;
  sub_1B8BD4(v34 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v103, &type metadata accessor for InteractionContext.Page);
  v63 = sub_3E63E4();
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  swift_beginAccess();
  v65 = v104;
  sub_FBD0(a1 + v64, v104, &qword_4F72E8);
  swift_beginAccess();
  sub_B8464(v62, a1 + v64, &qword_4F72E8);
  swift_endAccess();
  sub_1AEC80(v65);
  sub_FCF8(v65, &qword_4F72E8);
  sub_FCF8(v62, &qword_4F72E8);
  sub_265B9C();
  v66 = sub_3E7424();
  *(&v112 + 1) = v66;
  v104 = sub_1B8C3C(&qword_4F07A0, &type metadata accessor for Podcasts);
  v113 = v104;
  v67 = __swift_allocate_boxed_opaque_existential_0Tm(&v111);
  v68 = *(v66 - 8);
  v103 = *(v68 + 104);
  v102 = (v68 + 104);
  (v103)(v67, enum case for Podcasts.renderImplicitFollowsAsLocalShows(_:), v66);
  LOBYTE(v64) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v111);
  if ((v64 & 1) == 0)
  {
    sub_1B3178(v34);
  }

  if (([objc_opt_self() supportsLocalLibrary] & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController;
    v70 = *(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController);
    if (v70)
    {
      v71 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageTrackingID;

      sub_31010C(v34, a1 + v71);

      v70 = *(a1 + v69);
      if (v70)
      {

        v72 = sub_310440();
        v93 = v72;

        *&v111 = v72;
        sub_3EDB84();
        v91[1] = sub_36174(0, &qword_4F10B0);
        v92 = sub_3EDBC4();
        v110 = v92;
        v73 = sub_3EDB64();
        v74 = v94;
        (*(*(v73 - 8) + 56))(v94, 1, 1, v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7490);
        sub_886BC(&qword_4F7498, &qword_4F7490);
        sub_87870();
        v75 = v97;
        v76 = v101;
        v77 = v108;
        sub_3EA124();
        sub_FCF8(v74, &qword_4F69E0);

        v58 = v109;
        v55 = v77;
        (*(v95 + 8))(v76, v96);

        swift_allocObject();
        swift_weakInit();
        sub_886BC(&qword_4F74A0, &qword_4F7488);
        v78 = v99;
        v70 = sub_3EA1A4();

        (*(v98 + 8))(v75, v78);
      }
    }

    *(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_reloadSubscription) = v70;
  }

  v79 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
  swift_beginAccess();
  *(a1 + v79) = sub_3E66F4();
  swift_endAccess();
  v80 = v34[2];

  if (sub_3E6374())
  {
    v81 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
    swift_beginAccess();
    sub_FBD0(a1 + v81, v55, &unk_4E9EE0);
    v82 = v106;
    if ((*(v58 + 48))(v55, 1, v106) == 1)
    {
      sub_FCF8(v55, &unk_4E9EE0);
    }

    else
    {
      v83 = v100;
      (*(v58 + 32))(v100, v55, v82);
      v84 = sub_1B80F8(v34, v83);
      v85 = v82;
      v86 = v84;
      (*(v58 + 8))(v83, v85);
      if (v86)
      {

        v80 = v86;
      }
    }
  }

  sub_265D38(*(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_objectGraph), v80);

  v87 = [objc_opt_self() currentTraitCollection];
  v88 = sub_3EDC24();

  if (v88 & 1) == 0 || (*(&v112 + 1) = v66, v113 = v104, v89 = __swift_allocate_boxed_opaque_existential_0Tm(&v111), (v103)(v89, enum case for Podcasts.mercuryOnMac(_:), v66), v90 = sub_3E6C64(), __swift_destroy_boxed_opaque_existential_1Tm(&v111), (v90))
  {
    sub_1B399C();
  }
}

uint64_t sub_1B2FFC()
{
  swift_beginAccess();
  if (!sub_3EC064())
  {
    return swift_endAccess();
  }

  v0 = sub_3E7884();
  sub_1279E0(v0);
  v2 = v1;
  swift_endAccess();

  if (v2)
  {
    swift_getObjectType();
    v4 = sub_3E94C4();
    result = HighlightsProviderProtocol.isSharedContent(_:)(v4, v5 & 1);
    if (result)
    {
      swift_beginAccess();
      v6 = sub_3EC054();
      if (*v7)
      {
        v9 = &type metadata for Bool;
        v8[0] = 1;
        sub_38EEC(v8, 0x6F43646572616873, 0xED0000746E65746ELL);
      }

      v6(v10, 0);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1B3178(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete))
  {
    sub_3E9924();

    v13 = sub_3E99F4();
    v14 = sub_3ED9D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42[0] = v16;
      *v15 = 136380675;
      v43 = a1;
      type metadata accessor for Page();

      v17 = sub_3ED2B4();
      v19 = sub_2EDD0(v17, v18, v42);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "Can't check potential feed update for incomplete page %{private}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v20 = (a1 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId);
    if (*(a1 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId + 8))
    {
      sub_3E9924();

      v21 = sub_3E99F4();
      v22 = sub_3ED9D4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42[0] = v24;
        *v23 = 136380675;
        v43 = a1;
        type metadata accessor for Page();

        v25 = sub_3ED2B4();
        v27 = sub_2EDD0(v25, v26, v42);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_0, v21, v22, "Can't check potential feed update for page without an adamID %{private}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v28 = *v20;
      if (*v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v41 = v1;
        sub_3E9924();
        v29 = sub_3ED9F4();
        v30 = sub_3E99F4();
        if (os_log_type_enabled(v30, v29))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v42[0] = v32;
          *v31 = 136380675;
          v43 = v28;
          v33 = sub_3EE7A4();
          v35 = sub_2EDD0(v33, v34, v42);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_0, v30, v29, "Scheduling feed update from store page for implicitly followed podcast adamID: %{private}s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
        }

        (*(v4 + 8))(v12, v3);
        v36 = *(v41 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController + 24);
        v37 = *(v41 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController + 32);
        __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController), v36);
        (*(v37 + 144))(v28, v36, v37);
        *(swift_allocObject() + 16) = v28;
        *(swift_allocObject() + 16) = v28;
        v38 = sub_36174(0, &qword_4F10B0);
        v39 = sub_3EDBC4();
        v42[3] = v38;
        v42[4] = &protocol witness table for OS_dispatch_queue;
        v42[0] = v39;
        sub_3ECD94();

        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }
    }
  }
}

uint64_t sub_1B36D4()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F6BF0);
  sub_3EE064();

  v4 = sub_3E99F4();
  v5 = sub_3ED9F4();

  if (!os_log_type_enabled(v4, v5))
  {

    (*(v1 + 8))(v3, v0);
    goto LABEL_10;
  }

  v18 = v0;
  v6 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v19[0] = v17;
  *v6 = 136315138;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v8 = Strong;
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  sub_1AE550(v9, *(v8 + 24));

  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);

    sub_1B78E4(v9, v10);
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v11 = 0;
  v12 = 0;
LABEL_9:
  v19[1] = v11;
  v19[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950);
  v13 = sub_3ED2B4();
  v15 = sub_2EDD0(v13, v14, v19);

  *(v6 + 4) = v15;
  _os_log_impl(&dword_0, v4, v5, "Reload publisher triggered for %s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  (*(v1 + 8))(v3, v18);
LABEL_10:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    StorePageProvider.reload(ignoreCache:)(1);
  }

  return result;
}

void sub_1B399C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = sub_3E63E4();
  __chkstk_darwin(v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingProvider;
  if (!*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingProvider))
  {
    swift_storeEnumTagMultiPayload();
    v12 = sub_3E63C4();
    sub_1B8C84(v10, &type metadata accessor for InteractionContext.Page);
    if (v12)
    {
      v13 = objc_allocWithZone(type metadata accessor for UnifiedMessagingProvider());
      v14 = v0;
      v15 = UnifiedMessagingProvider.init(placement:)(0x65486573776F7262, 0xEC00000072656461);
      v16 = *(v0 + v11);
      *(v0 + v11) = v15;

      v17 = *(v0 + v11);
      if (v17)
      {
        v18 = v17;
        v22[1] = v14;
        v19 = UnifiedMessagingProvider.bannerShelfPublisher.getter();

        v22[2] = v19;
        sub_36174(0, &qword_4F10B0);
        v20 = sub_3EDBC4();
        v22[5] = v20;
        v21 = sub_3EDB64();
        (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63F0);
        sub_886BC(&qword_4F63F8, &qword_4F63F0);
        sub_87870();
        sub_3EA114();
        sub_FCF8(v3, &qword_4F69E0);

        swift_allocObject();
        swift_weakInit();
        sub_886BC(&qword_4F6400, &qword_4F63E8);
        sub_3EA1A4();

        (*(v5 + 8))(v7, v4);
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
        sub_886BC(&qword_4F59C8, &qword_4F59C0);
        sub_3E9C94();
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1B3DDC@<X0>(unint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ModernPage();
  __chkstk_darwin(v3 - 8);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5670);
  __chkstk_darwin(v6 - 8);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v81 - v9;
  __chkstk_darwin(v10);
  v88 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v12 - 8);
  v92 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v81 - v15;
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  v91 = type metadata accessor for ModernShelf();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v87 = &v81 - v23;
  __chkstk_darwin(v24);
  v90 = &v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8);
  __chkstk_darwin(v26 - 8);
  v28 = &v81 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5748);
  __chkstk_darwin(v29 - 8);
  v31 = &v81 - v30;
  v32 = type metadata accessor for PageContent();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v36 = *(v1 + 32);
  if (v36 >= 2)
  {
    v50 = swift_allocObject();
    swift_weakInit();
    *a1 = v36;
    a1[1] = sub_1B80E8;
    a1[2] = v50;
    swift_storeEnumTagMultiPayload();
    return swift_errorRetain();
  }

  v37 = v32;
  if (*(v1 + 24) >= 2u)
  {
    *a1 = 1;
    return swift_storeEnumTagMultiPayload();
  }

  v81 = v5;
  v82 = a1;
  v38 = *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelves);
  v39 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  swift_beginAccess();
  sub_FBD0(v1 + v39, v28, &qword_4F72E8);
  swift_bridgeObjectRetain_n();
  v83 = v1;
  sub_1B49F8(v38, v28, v31);

  sub_FCF8(v28, &qword_4F72E8);
  if ((*(v33 + 48))(v31, 1, v37) != 1)
  {

    sub_1B8D0C(v31, v35, type metadata accessor for PageContent);
    return sub_1B8D0C(v35, v82, type metadata accessor for PageContent);
  }

  v40 = v38;
  sub_FCF8(v31, &qword_4F5748);
  v41 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf;
  v42 = v83;
  swift_beginAccess();
  sub_FBD0(v42 + v41, v18, &unk_503DA0);
  v43 = v94;
  v44 = *(v94 + 48);
  v45 = v91;
  if (v44(v18, 1, v91) == 1)
  {
    sub_FCF8(v18, &unk_503DA0);
    v46 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf;
    swift_beginAccess();
    v47 = v42 + v46;
    v48 = v86;
    sub_FBD0(v47, v86, &unk_503DA0);
    if (v44(v48, 1, v45) == 1)
    {
      sub_FCF8(v48, &unk_503DA0);
      v49 = v93;
      goto LABEL_19;
    }

    v58 = v48;
    v59 = v87;
    sub_1B8D0C(v58, v87, type metadata accessor for ModernShelf);
    v60 = v84;
    sub_1B8BD4(v59, v84, type metadata accessor for ModernShelf);
    v61 = v40[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v40;
    v49 = v93;
    if (!isUniquelyReferenced_nonNull_native || v61 >= v40[3] >> 1)
    {
      v40 = sub_E02B0(isUniquelyReferenced_nonNull_native, v61 + 1, 1, v40);
      v98 = v40;
    }

    sub_17C550(0, 0, 1, v60);
    v57 = &v99;
  }

  else
  {
    v52 = v18;
    v53 = v90;
    sub_1B8D0C(v52, v90, type metadata accessor for ModernShelf);
    v54 = v88;
    sub_1B8BD4(v53, v88, type metadata accessor for ModernShelf);
    v55 = v40[2];
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v40;
    if (!v56 || v55 >= v40[3] >> 1)
    {
      v40 = sub_E02B0(v56, v55 + 1, 1, v40);
      v98 = v40;
    }

    v49 = v93;
    sub_17C550(0, 0, 1, v54);
    v57 = &v100;
  }

  sub_1B8C84(*(v57 - 32), type metadata accessor for ModernShelf);
  v42 = v83;
LABEL_19:
  v63 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf;
  swift_beginAccess();
  v64 = v42 + v63;
  v65 = v92;
  sub_FBD0(v64, v92, &unk_503DA0);
  if (v44(v65, 1, v45) == 1)
  {
    sub_FCF8(v65, &unk_503DA0);
    v66 = v82;
    goto LABEL_27;
  }

  v67 = v89;
  result = sub_1B8D0C(v65, v89, type metadata accessor for ModernShelf);
  v66 = v82;
  if (v40[2])
  {
    v68 = v85;
    result = sub_1B8BD4(v67, v85, type metadata accessor for ModernShelf);
    v69 = v40[2];
    if (v69)
    {
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v40;
      if (!v70 || v69 >= v40[3] >> 1)
      {
        v40 = sub_E02B0(v70, v69 + 1, 1, v40);
        v98 = v40;
      }

      sub_17C550(1, 1, 1, v68);
      sub_1B8C84(v67, type metadata accessor for ModernShelf);
      v42 = v83;
LABEL_27:
      v71 = v42 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
      swift_beginAccess();
      if (*(v71 + 24))
      {
        sub_1F958(v71, &v95);
      }

      else
      {
        v72 = *(v71 + 16);
        v95 = *v71;
        v96 = v72;
        v97 = *(v71 + 32);
      }

      if (*(&v96 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v95);
        goto LABEL_32;
      }

      v75 = *(v42 + 24);
      if (*(v42 + 24))
      {
        if (v75 != 1)
        {
LABEL_32:
          static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_E02B0(0, v40[2] + 1, 1, v40);
          }

          v74 = v40[2];
          v73 = v40[3];
          if (v74 >= v73 >> 1)
          {
            v40 = sub_E02B0(v73 > 1, v74 + 1, 1, v40);
          }

          v40[2] = v74 + 1;
          sub_1B8D0C(v49, v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v74, type metadata accessor for ModernShelf);
          LOBYTE(v75) = *(v42 + 24);
          v76 = *(v42 + 16);
          if (v75 > 1u)
          {
            v77 = 0;
LABEL_44:
            sub_1AE550(v76, v75);
            v78 = v81;
            sub_1B4EA0(v77, v40, v81);

            sub_1B78E4(v76, v75);
            v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
            sub_1B8D0C(v78, v66, type metadata accessor for ModernPage);
            v80 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
            swift_beginAccess();
            *(v66 + v79) = *(v42 + v80);
            return swift_storeEnumTagMultiPayload();
          }

LABEL_43:
          v77 = v76;
          goto LABEL_44;
        }
      }

      else if (*(v42 + 32))
      {
        goto LABEL_32;
      }

      v76 = *(v42 + 16);
      goto LABEL_43;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B499C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    StorePageProvider.reload(ignoreCache:)(1);
  }

  return result;
}

uint64_t sub_1B49F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v27 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8);
  __chkstk_darwin(v4 - 8);
  v30 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7480);
  __chkstk_darwin(v6 - 8);
  v31 = &v26 - v7;
  v8 = type metadata accessor for ContentUnavailablePage();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModernShelf();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = *(a1 + 16);
  while (v15 != v14)
  {
    sub_1B8BD4(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14++, v13, type metadata accessor for ModernShelf);
    v33 = *&v13[*(v10 + 28)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88);
    sub_886BC(&qword_4F5A90, &qword_4F5A88);
    v16 = sub_3ED894();
    sub_1B8C84(v13, type metadata accessor for ModernShelf);
    if (v16)
    {
      v17 = type metadata accessor for PageContent();
      return (*(*(v17 - 8) + 56))(v32, 1, 1, v17);
    }
  }

  v19 = v30;
  sub_FBD0(v27, v30, &qword_4F72E8);
  v20 = sub_3E63E4();
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    sub_FCF8(v19, &qword_4F72E8);
    v21 = v31;
    (*(v28 + 56))(v31, 1, 1, v29);
  }

  else
  {
    v21 = v31;
    sub_1B52E8(v31);
    sub_1B8C84(v19, &type metadata accessor for InteractionContext.Page);
    if ((*(v28 + 48))(v21, 1, v29) != 1)
    {
      v24 = v26;
      sub_1B8D0C(v21, v26, type metadata accessor for ContentUnavailablePage);
      v25 = v24;
      v22 = v32;
      sub_1B8D0C(v25, v32, type metadata accessor for ContentUnavailablePage);
      v23 = type metadata accessor for PageContent();
      goto LABEL_10;
    }
  }

  sub_FCF8(v21, &qword_4F7480);
  v22 = v32;
  *v32 = 0;
  v23 = type metadata accessor for PageContent();
LABEL_10:
  swift_storeEnumTagMultiPayload();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1B4EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3F10);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_3ECCF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_3EC164();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v21 = &v33 - v19;
  if (a1)
  {
    v33 = v14;
    v22 = &v33 - v19;
    v23 = v8;
    v24 = v6;
    v25 = v7;
    v26 = v10;
    v27 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
    swift_beginAccess();
    v28 = a1 + v27;
    v10 = v26;
    v7 = v25;
    v6 = v24;
    v8 = v23;
    v21 = v22;
    v14 = v33;
    (*(v15 + 16))(v13, v28, v33);
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v21, v13, v14);
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v20);
    sub_3EC154();
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_FCF8(v13, &qword_4F3190);
    }
  }

  (*(v15 + 16))(v17, v21, v14);
  sub_3ECCC4();
  v29 = *(v8 + 48);
  if (v29(v6, 1, v7) == 1)
  {
    sub_3ECCE4();
    if (v29(v6, 1, v7) != 1)
    {
      sub_FCF8(v6, &qword_4F3F10);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v30 = v34;
  (*(v8 + 32))(v34, v10, v7);
  v31 = type metadata accessor for ModernPage();
  (*(v15 + 32))(v30 + *(v31 + 20), v21, v14);
  *(v30 + *(v31 + 24)) = v35;
}

uint64_t sub_1B52E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E63E4();
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8BD4(v2, v6, &type metadata accessor for InteractionContext.Page);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = 1;
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 1)
      {
        sub_1B8C84(v6, &type metadata accessor for InteractionContext.Page);
        goto LABEL_22;
      }

      v9 = v6;
    }

    else
    {
      if ((EnumCaseMultiPayload - 4) < 8)
      {
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 3)
      {
        static ContentUnavailablePage.emptyLibraryChannels.getter(a1);
        goto LABEL_21;
      }

      v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60) + 64)];
    }

    sub_FCF8(v9, &qword_4E9FD0);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 0x1A)
  {
    goto LABEL_17;
  }

  if (((1 << EnumCaseMultiPayload) & 0x7DF0000) == 0)
  {
    if (EnumCaseMultiPayload == 15)
    {
      static ContentUnavailablePage.emptyLibraryShows.getter(a1);
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 21)
    {
      static ContentUnavailablePage.emptyLibraryRecentlyUpdated.getter(a1);
      goto LABEL_21;
    }

LABEL_17:
    if (EnumCaseMultiPayload == 13)
    {
      static ContentUnavailablePage.emptyLibraryLatestEpisodes.getter(a1);
    }

    else
    {
      static ContentUnavailablePage.emptyLibrarySaved.getter(a1);
    }

    goto LABEL_21;
  }

LABEL_22:
  v10 = type metadata accessor for ContentUnavailablePage();
  return (*(*(v10 - 8) + 56))(a1, v8, 1, v10);
}

Swift::Bool __swiftcall StorePageProvider.shouldPrepareNextPage()()
{
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    v4 = *(v1 + 16);
    v5 = *v1;
    v6 = v4;
    v7 = *(v1 + 32);
    v2 = *(&v4 + 1);
    if (!*(&v4 + 1))
    {
      return v2 != 0;
    }

    goto LABEL_3;
  }

  sub_1F958(v1, &v5);
  v2 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1Tm(&v5);
  }

  return v2 != 0;
}