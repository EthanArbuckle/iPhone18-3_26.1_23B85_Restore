uint64_t sub_1FFC60@<X0>(unint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = [objc_opt_self() mainBundle];
  v21._countAndFlagsBits = 0xE000000000000000;
  v26._countAndFlagsBits = 0x544154535F57454ELL;
  v26._object = 0xEB000000004E4F49;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v6.super.isa = v5;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v7 = sub_3E5A74(v26, v27, v6, v28, v21);
  v22 = v8;
  v23 = v7;

  v9 = sub_3E7784();
  v10 = *(*(v9 - 8) + 56);
  v10(v4, 1, 1, v9);
  v25[3] = type metadata accessor for TextFieldAlertAction();
  v25[4] = sub_208000(&qword_501120, type metadata accessor for TextFieldAlertAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v25);
  static TextFieldAlertAction.newStation(then:)(0, 0, boxed_opaque_existential_0Tm);
  v12 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v14 = v13;
  sub_FBD0(v25, v24, &qword_4EDE00);
  v15 = type metadata accessor for ActionMenu.Item(0);
  v16 = v15[7];
  v10(a1 + v16, 1, 1, v9);
  v17 = v15[8];
  v18 = a1 + v15[10];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *a1 = v12;
  a1[1] = v14;
  v19 = v22;
  a1[2] = v23;
  a1[3] = v19;
  a1[4] = 0;
  a1[5] = 0;
  sub_51F9C(v4, a1 + v16, &qword_4F1D50);
  *(a1 + v17) = 2;
  *(a1 + v15[9]) = 1;
  sub_51F9C(v24, v18, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(v25, &qword_4EDE00);
}

uint64_t sub_1FFEF8@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_3E5FC4();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v11;
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v17 = &v44 - v16;
  v50 = &v44 - v16;
  v18 = [objc_opt_self() mainBundle];
  v43._countAndFlagsBits = 0xEC00000079726172;
  v57._countAndFlagsBits = 0x42494C5F54494445;
  v57._object = 0xEC00000059524152;
  v58.value._countAndFlagsBits = 0;
  v58.value._object = 0;
  v19.super.isa = v18;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v20 = sub_3E5A74(v57, v58, v19, v59, v43);
  v51 = v21;
  v52 = v20;

  v48 = sub_3E7784();
  v22 = *(v48 - 8);
  v47 = *(v22 + 56);
  v49 = v22 + 56;
  v47(v17, 1, 1, v48);
  v23 = swift_allocObject();
  swift_weakInit();

  v45 = v14;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v24 = type metadata accessor for ClosureAction();
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v26 = sub_208494;
  v26[1] = v23;
  v27 = v11;
  v28 = v8;
  (*(v9 + 16))(v27, v14, v8);
  v29 = sub_3EC634();
  v30 = v7;
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);

  sub_3E5FB4();
  v31 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v33 = v32;

  (*(v53 + 8))(v4, v54);
  (*(v9 + 8))(v45, v28);
  *(v25 + 16) = v31;
  *(v25 + 24) = v33;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 32;
  (*(v9 + 32))(v25 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v46, v28);
  sub_FACC(v30, v25 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  v56[3] = v24;
  v56[4] = sub_208000(&qword_4F13D8, type metadata accessor for ClosureAction);
  v56[0] = v25;
  v34 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v36 = v35;
  sub_FBD0(v56, v55, &qword_4EDE00);
  v37 = type metadata accessor for ActionMenu.Item(0);
  v38 = v37[7];
  v47(a1 + v38, 1, 1, v48);
  v39 = v37[8];
  v40 = a1 + v37[10];
  *(v40 + 32) = 0;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *a1 = v34;
  a1[1] = v36;
  v41 = v51;
  a1[2] = v52;
  a1[3] = v41;
  a1[4] = 0;
  a1[5] = 0;
  sub_51F9C(v50, a1 + v38, &qword_4F1D50);
  *(a1 + v39) = 2;
  *(a1 + v37[9]) = 1;
  sub_51F9C(v55, v40, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(v56, &qword_4EDE00);
}

uint64_t sub_20049C(uint64_t a1)
{
  v2 = sub_3EBBC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3EBC14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageContent();
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();

  if ([v13 isMainThread])
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();

      sub_1FE970(v12);
      sub_3E9D74();
    }
  }

  else
  {
    sub_36174(0, &qword_4F10B0);
    v21 = sub_3EDBC4();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2084A4;
    *(v14 + 24) = a1;
    aBlock[4] = sub_FE5AC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1279E4;
    aBlock[3] = &block_descriptor_16;
    v19 = _Block_copy(aBlock);
    v20 = v6;

    sub_3EBBE4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_208000(&qword_506A20, &type metadata accessor for DispatchWorkItemFlags);
    v15 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DE0);
    sub_886BC(&qword_506A30, &unk_503DE0);
    sub_3EE244();
    v16 = v19;
    v17 = v21;
    sub_3EDBE4();
    _Block_release(v16);

    (*(v3 + 8))(v15, v2);
    return (*(v7 + 8))(v9, v20);
  }
}

uint64_t sub_2008A0()
{
  v0 = type metadata accessor for PageContent();
  __chkstk_darwin(v0 - 8);
  v2 = &v4[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    sub_1FE970(v2);
    sub_3E9D74();
  }

  return result;
}

uint64_t sub_200980()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_3E9D44();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F9978(result);
  }

  return result;
}

uint64_t sub_200A38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A48);
  __chkstk_darwin(v2 - 8);
  v4 = (&v46 - v3);
  v5 = type metadata accessor for Link();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageContent();
  __chkstk_darwin(v9 - 8);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v11 - 8);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v13 - 8);
  v46 = &v46 - v14;
  v15 = type metadata accessor for ModernShelf();
  v47 = *(v15 - 8);
  v48 = v15;
  __chkstk_darwin(v15);
  v49 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TabMenu.Item(0) - 8;
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v18 + 72);
    v53 = v6;
    v24 = (v6 + 48);
    v25 = _swiftEmptyArrayStorage;
    v54 = v5;
    do
    {
      sub_208584(v22, v20, type metadata accessor for TabMenu.Item);
      static Link.libraryLink(from:)(v20, v4);
      sub_2085EC(v20, type metadata accessor for TabMenu.Item);
      if ((*v24)(v4, 1, v5) == 1)
      {
        sub_FCF8(v4, &qword_4F9A48);
      }

      else
      {
        sub_20864C(v4, v8, type metadata accessor for Link);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_E08B0(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_E08B0(v26 > 1, v27 + 1, 1, v25);
        }

        v25[2] = v27 + 1;
        sub_20864C(v8, v25 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v27, type metadata accessor for Link);
        v5 = v54;
      }

      v22 += v23;
      --v21;
    }

    while (v21);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  v28 = v48;
  v29 = v48[5];
  v30 = type metadata accessor for Header(0);
  v31 = v49;
  (*(*(v30 - 8) + 56))(&v49[v29], 1, 1, v30);
  v32 = sub_77914(v25);

  v33 = sub_3E5DC4();
  v34 = *(*(v33 - 8) + 56);
  v35 = v46;
  v34(v46, 1, 1, v33);
  v36 = &v31[v28[12]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v37 = v28[13];
  sub_3E85C4();
  sub_3EC584();

  v38 = sub_3EC634();
  (*(*(v38 - 8) + 56))(&v31[v37], 0, 1, v38);
  v39 = v28[9];
  v40 = &v31[v28[8]];
  v34(&v31[v39], 1, 1, v33);
  *v31 = 0xD000000000000026;
  *(v31 + 1) = 0x800000000042ADC0;
  v41 = &v31[v28[6]];
  *v41 = 21;
  *(v41 + 3) = 256;
  *(v41 + 2) = 0;
  *(v41 + 1) = 1;
  *&v31[v28[7]] = v32;
  sub_51F9C(v35, &v31[v39], &unk_4E9EE0);
  v31[v28[10]] = 1;
  v31[v28[11]] = 0;
  *v40 = 0;
  *(v40 + 1) = 0;
  v42 = v50;
  sub_208584(v31, v50, type metadata accessor for ModernShelf);
  (*(v47 + 56))(v42, 0, 2, v28);
  v43 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_linksShelf;
  v44 = v52;
  swift_beginAccess();
  sub_B8464(v42, v44 + v43, &qword_4F5978);
  swift_endAccess();
  swift_beginAccess();

  sub_1FE970(v51);
  sub_3E9D74();

  sub_FCF8(v42, &qword_4F5978);
  return sub_2085EC(v31, type metadata accessor for ModernShelf);
}

uint64_t static Link.libraryLink(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v424 = a1;
  v419 = a2;
  v413 = sub_3E5FC4();
  v412 = *(v413 - 8);
  __chkstk_darwin(v413);
  v411 = &v383 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v417 = &v383 - v4;
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v410 = &v383 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC1F4();
  v415 = *(v7 - 8);
  v416 = v7;
  __chkstk_darwin(v7);
  v414 = &v383 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v422 = (&v383 - v10);
  v418 = sub_3E7784();
  v409 = *(v418 - 8);
  __chkstk_darwin(v418);
  v423 = &v383 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = sub_3E6AC4();
  v408 = *(v407 - 8);
  __chkstk_darwin(v407);
  v405 = &v383 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_501100);
  __chkstk_darwin(v13 - 8);
  v403 = &v383 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v392 = &v383 - v16;
  __chkstk_darwin(v17);
  v391 = &v383 - v18;
  __chkstk_darwin(v19);
  v390 = &v383 - v20;
  __chkstk_darwin(v21);
  v402 = &v383 - v22;
  __chkstk_darwin(v23);
  v401 = &v383 - v24;
  __chkstk_darwin(v25);
  v389 = &v383 - v26;
  v420 = sub_3E6AE4();
  v404 = *(v420 - 8);
  __chkstk_darwin(v420);
  v28 = &v383 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v388 = &v383 - v30;
  __chkstk_darwin(v31);
  v387 = &v383 - v32;
  __chkstk_darwin(v33);
  v386 = &v383 - v34;
  __chkstk_darwin(v35);
  v37 = &v383 - v36;
  __chkstk_darwin(v38);
  v40 = &v383 - v39;
  __chkstk_darwin(v41);
  v385 = &v383 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v43 - 8);
  v45 = &v383 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v400 = &v383 - v47;
  __chkstk_darwin(v48);
  v399 = &v383 - v49;
  __chkstk_darwin(v50);
  v398 = &v383 - v51;
  __chkstk_darwin(v52);
  v54 = &v383 - v53;
  __chkstk_darwin(v55);
  v57 = &v383 - v56;
  __chkstk_darwin(v58);
  v397 = &v383 - v59;
  v60 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v60);
  v62 = &v383 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v396 = &v383 - v64;
  __chkstk_darwin(v65);
  v395 = (&v383 - v66);
  __chkstk_darwin(v67);
  v394 = &v383 - v68;
  __chkstk_darwin(v69);
  v71 = &v383 - v70;
  __chkstk_darwin(v72);
  v74 = &v383 - v73;
  __chkstk_darwin(v75);
  v421 = &v383 - v76;
  __chkstk_darwin(v77);
  v393 = (&v383 - v78);
  v406 = type metadata accessor for TabMenu.Item(0);
  v79 = *(v424 + *(v406 + 7));
  if (v79 <= 3)
  {
    v395 = v40;
    v396 = v37;
    v397 = v28;
    v90 = v401;
    v91 = v402;
    v92 = v403;
    v398 = v74;
    v399 = v57;
    v400 = v54;
    if (v79 != 1)
    {
      v93 = v420;
      if (v79 != 2)
      {
        if (v79 != 3)
        {
          goto LABEL_18;
        }

        v94 = v71;
        swift_storeEnumTagMultiPayload();
        sub_3E5D94();
        v95 = sub_3E80B4();
        v97 = v96;
        v98 = v406;
        v99 = v424;
        v100 = v91;
        sub_FBD0(v424 + *(v406 + 5), v91, &unk_501100);
        v101 = v404;
        v102 = (*(v404 + 48))(v91, 1, v93);
        v403 = v97;
        v401 = v95;
        if (v102 == 1)
        {
          sub_FCF8(v91, &unk_501100);
        }

        else
        {
          v163 = v396;
          (*(v101 + 32))(v396, v100, v93);
          if (*(v99 + *(v98 + 10)))
          {
            v164 = v405;
            sub_3E6AD4();
            sub_3E6AB4();
            (*(v408 + 8))(v164, v407);
            (*(v101 + 8))(v163, v93);
            v165 = v418;
            v166 = v409;
LABEL_59:
            v324 = v423;
            sub_3E7774();
            v424 = TabMenu.Item.shelfUniqueID.getter();
            v420 = v325;
            v326 = (v99 + *(v98 + 6));
            v327 = v326[1];
            v410 = *v326;
            v409 = v327;
            v328 = type metadata accessor for Link();
            v329 = *(v328 + 28);
            v330 = v328;
            v408 = v328;
            v176 = v419;
            sub_208584(v324, v419 + v329, &type metadata accessor for ArtworkModel);
            (*(v166 + 56))(v176 + v329, 0, 1, v165);
            v407 = v176 + *(v330 + 36);
            v331 = v421;
            sub_208584(v94, v421, type metadata accessor for FlowDestination);

            sub_3E8574();
            v418 = v94;
            sub_3E67A4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
            sub_3EC044();
            *(swift_allocObject() + 16) = xmmword_3F5630;
            sub_3E8504();
            sub_3EBFC4();

            sub_3EC534();
            v332 = v422;
            sub_3EC1C4();
            v432 = v425;
            sub_FCF8(&v432, &unk_4F8A10);
            v431 = v426;
            sub_FCF8(&v431, &qword_4E94E0);
            v430 = v427;
            sub_FCF8(&v430, &unk_4F8A20);
            sub_16AC0(v428);
            v333 = type metadata accessor for FlowAction(0);
            v334 = swift_allocObject();
            sub_208584(v331, v334 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
            type metadata accessor for FlowAction.DestinationType(0);
            swift_storeEnumTagMultiPayload();
            v335 = (v334 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
            *v335 = 0;
            v335[1] = 0;
            *(v334 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
            *(v334 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
            *(v334 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
            v337 = v415;
            v336 = v416;
            v338 = v414;
            (*(v415 + 16))(v414, v332, v416);
            v405 = sub_3EC634();
            v339 = *(v405 - 1);
            v404 = *(v339 + 56);
            v406 = (v339 + 56);
            v340 = v417;
            (v404)(v417, 1, 1, v405);
            v341 = v411;
            sub_3E5FB4();
            v342 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
            v344 = v343;
            (*(v412 + 8))(v341, v413);
            (*(v337 + 8))(v422, v336);
            sub_2085EC(v421, type metadata accessor for FlowDestination);
            *(v334 + 16) = v342;
            *(v334 + 24) = v344;
            *(v334 + 32) = 0;
            *(v334 + 40) = 0;
            *(v334 + 48) = 48;
            (*(v337 + 32))(v334 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v338, v336);
            sub_FACC(v340, v334 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
            v345 = v407;
            *(v407 + 24) = v333;
            v345[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
            *v345 = v334;
            v346 = v408;
            v347 = *(v408 + 40);
            sub_3E8574();
            v348 = v409;
            v349 = v410;
            sub_3EC5A4();

            sub_2085EC(v423, &type metadata accessor for ArtworkModel);
            (v404)(v176 + v347, 0, 1, v405);
            v227 = v346;
            v350 = *(v346 + 44);
            v351 = sub_3E5764();
            (*(*(v351 - 8) + 56))(v176 + v350, 1, 1, v351);

            v352 = v420;
            *v176 = v424;
            v176[1] = v352;
            v176[2] = v349;
            v176[3] = v348;
            v176[4] = 0;
            v176[5] = 0;
            *(v176 + *(v227 + 32)) = 8;
            sub_FCF8(v400, &unk_4E9EE0);
            v322 = v418;
            goto LABEL_60;
          }

          (*(v101 + 8))(v163, v93);
        }

        v165 = v418;
        v166 = v409;
        v323 = v405;
        sub_3E6AD4();
        sub_3E6AB4();
        (*(v408 + 8))(v323, v407);
        goto LABEL_59;
      }

      swift_storeEnumTagMultiPayload();
      sub_3E5D94();
      v402 = sub_3E81E4();
      v150 = v149;
      v151 = v406;
      v152 = v424;
      v153 = v90;
      sub_FBD0(v424 + *(v406 + 5), v90, &unk_501100);
      v154 = v404;
      v155 = (*(v404 + 48))(v90, 1, v93);
      v403 = v150;
      if (v155 == 1)
      {
        sub_FCF8(v90, &unk_501100);
        v156 = v418;
        v157 = v409;
      }

      else
      {
        v167 = v395;
        (*(v154 + 32))(v395, v153, v93);
        v156 = v418;
        v157 = v409;
        if (*(v152 + *(v151 + 10)))
        {
          v168 = v405;
          sub_3E6AD4();
          sub_3E6AB4();
          (*(v408 + 8))(v168, v407);
          (*(v154 + 8))(v167, v420);
LABEL_64:
          v354 = v423;
          sub_3E7774();
          v420 = TabMenu.Item.shelfUniqueID.getter();
          v410 = v355;
          v356 = (v152 + *(v151 + 6));
          v357 = v356[1];
          v424 = *v356;
          v409 = v357;
          v358 = type metadata accessor for Link();
          v359 = *(v358 + 28);
          v360 = v358;
          v408 = v358;
          v239 = v419;
          sub_208584(v354, v419 + v359, &type metadata accessor for ArtworkModel);
          (*(v157 + 56))(v239 + v359, 0, 1, v156);
          v418 = v239 + *(v360 + 36);
          v361 = v421;
          sub_208584(v398, v421, type metadata accessor for FlowDestination);

          sub_3E8574();
          sub_3E67A4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
          sub_3EC044();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3E8504();
          sub_3EBFC4();

          sub_3EC534();
          v362 = v422;
          sub_3EC1C4();
          v432 = v425;
          sub_FCF8(&v432, &unk_4F8A10);
          v431 = v426;
          sub_FCF8(&v431, &qword_4E94E0);
          v430 = v427;
          sub_FCF8(&v430, &unk_4F8A20);
          sub_16AC0(v428);
          v363 = type metadata accessor for FlowAction(0);
          v364 = swift_allocObject();
          sub_208584(v361, v364 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
          type metadata accessor for FlowAction.DestinationType(0);
          swift_storeEnumTagMultiPayload();
          v365 = (v364 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
          *v365 = 0;
          v365[1] = 0;
          *(v364 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
          *(v364 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
          *(v364 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
          v367 = v415;
          v366 = v416;
          v368 = v414;
          (*(v415 + 16))(v414, v362, v416);
          v406 = sub_3EC634();
          v369 = *(v406 - 1);
          v405 = *(v369 + 56);
          v407 = v369 + 56;
          v370 = v417;
          (v405)(v417, 1, 1, v406);
          v371 = v411;
          sub_3E5FB4();
          v372 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v374 = v373;
          (*(v412 + 8))(v371, v413);
          (*(v367 + 8))(v422, v366);
          sub_2085EC(v421, type metadata accessor for FlowDestination);
          *(v364 + 16) = v372;
          *(v364 + 24) = v374;
          *(v364 + 32) = 0;
          *(v364 + 40) = 0;
          *(v364 + 48) = 48;
          (*(v367 + 32))(v364 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v368, v366);
          sub_FACC(v370, v364 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
          v375 = v418;
          *(v418 + 24) = v363;
          v375[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
          *v375 = v364;
          v376 = v408;
          v377 = *(v408 + 40);
          sub_3E8574();
          v378 = v409;
          v379 = v424;
          sub_3EC5A4();

          sub_2085EC(v423, &type metadata accessor for ArtworkModel);
          (v405)(v239 + v377, 0, 1, v406);
          v259 = v376;
          v380 = *(v376 + 44);
          v381 = sub_3E5764();
          (*(*(v381 - 8) + 56))(v239 + v380, 1, 1, v381);

          v382 = v410;
          *v239 = v420;
          v239[1] = v382;
          v239[2] = v379;
          v239[3] = v378;
          v239[4] = 0;
          v239[5] = 0;
          *(v239 + *(v259 + 32)) = 8;
          sub_FCF8(v399, &unk_4E9EE0);
          v263 = &v429;
          goto LABEL_65;
        }

        (*(v154 + 8))(v167, v93);
      }

      v353 = v405;
      sub_3E6AD4();
      sub_3E6AB4();
      (*(v408 + 8))(v353, v407);
      goto LABEL_64;
    }

    v112 = v62;
    swift_storeEnumTagMultiPayload();
    sub_3E5D94();
    v401 = sub_3E8154();
    v402 = v113;
    v114 = v406;
    v115 = v424;
    sub_FBD0(v424 + *(v406 + 5), v92, &unk_501100);
    v116 = v404;
    v117 = v420;
    v118 = (*(v404 + 48))(v92, 1, v420);
    v384 = v62;
    if (v118 == 1)
    {
      sub_FCF8(v92, &unk_501100);
      v119 = v418;
      v120 = v409;
      v121 = v405;
    }

    else
    {
      v158 = v397;
      (*(v116 + 32))(v397, v92, v117);
      v119 = v418;
      v120 = v409;
      v121 = v405;
      if (*(v115 + *(v114 + 10)))
      {
        sub_3E6AD4();
        sub_3E6AB4();
        (*(v408 + 8))(v121, v407);
        (*(v116 + 8))(v158, v420);
        v119 = v418;
        v112 = v62;
LABEL_43:
        v169 = v423;
        sub_3E7774();
        v420 = TabMenu.Item.shelfUniqueID.getter();
        v409 = v170;
        v171 = (v115 + *(v114 + 6));
        v172 = v171[1];
        v424 = *v171;
        v408 = v172;
        v173 = type metadata accessor for Link();
        v174 = *(v173 + 28);
        v175 = v173;
        v407 = v173;
        v176 = v419;
        sub_208584(v169, v419 + v174, &type metadata accessor for ArtworkModel);
        (*(v120 + 56))(v176 + v174, 0, 1, v119);
        v418 = v176 + *(v175 + 36);
        v177 = v421;
        sub_208584(v112, v421, type metadata accessor for FlowDestination);

        sub_3E8574();
        sub_3E67A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
        sub_3EC044();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3E8504();
        v383 = v45;
        sub_3EBFC4();

        sub_3EC534();
        v178 = v422;
        sub_3EC1C4();
        v432 = v425;
        sub_FCF8(&v432, &unk_4F8A10);
        v431 = v426;
        sub_FCF8(&v431, &qword_4E94E0);
        v430 = v427;
        sub_FCF8(&v430, &unk_4F8A20);
        sub_16AC0(v428);
        v179 = type metadata accessor for FlowAction(0);
        v180 = swift_allocObject();
        sub_208584(v177, v180 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
        type metadata accessor for FlowAction.DestinationType(0);
        swift_storeEnumTagMultiPayload();
        v181 = (v180 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
        *v181 = 0;
        v181[1] = 0;
        *(v180 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
        *(v180 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
        *(v180 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
        v183 = v415;
        v182 = v416;
        v184 = v414;
        (*(v415 + 16))(v414, v178, v416);
        v406 = sub_3EC634();
        v185 = *(v406 - 1);
        v405 = *(v185 + 56);
        v410 = (v185 + 56);
        v186 = v417;
        (v405)(v417, 1, 1, v406);
        v187 = v411;
        sub_3E5FB4();
        v188 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v190 = v189;
        (*(v412 + 8))(v187, v413);
        (*(v183 + 8))(v422, v182);
        v422 = type metadata accessor for FlowDestination;
        sub_2085EC(v421, type metadata accessor for FlowDestination);
        *(v180 + 16) = v188;
        *(v180 + 24) = v190;
        *(v180 + 32) = 0;
        *(v180 + 40) = 0;
        *(v180 + 48) = 48;
        (*(v183 + 32))(v180 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v184, v182);
        sub_FACC(v186, v180 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
        v191 = v418;
        *(v418 + 24) = v179;
        v191[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
        *v191 = v180;
        v192 = v407;
        v193 = *(v407 + 40);
        sub_3E8574();
        v194 = v408;
        v195 = v424;
        sub_3EC5A4();

        sub_2085EC(v423, &type metadata accessor for ArtworkModel);
        (v405)(v176 + v193, 0, 1, v406);
        v196 = *(v192 + 44);
        v197 = sub_3E5764();
        (*(*(v197 - 8) + 56))(v176 + v196, 1, 1, v197);

        v198 = v409;
        *v176 = v420;
        v176[1] = v198;
        v176[2] = v195;
        v176[3] = v194;
        v176[4] = 0;
        v176[5] = 0;
        *(v176 + *(v192 + 32)) = 8;
        sub_FCF8(v383, &unk_4E9EE0);
        sub_2085EC(v384, v422);
        v199 = v192;
        v200 = v192;
        return (*(*(v200 - 8) + 56))(v176, 0, 1, v199);
      }

      (*(v116 + 8))(v158, v117);
      v112 = v384;
    }

    sub_3E6AD4();
    sub_3E6AB4();
    (*(v408 + 8))(v121, v407);
    goto LABEL_43;
  }

  if (v79 > 15)
  {
    if (v79 != 16)
    {
      v103 = v420;
      if (v79 != 17)
      {
        goto LABEL_18;
      }

      swift_storeEnumTagMultiPayload();
      sub_3E5D94();
      v402 = sub_3E8104();
      v403 = v104;
      v105 = v406;
      v106 = v424;
      v107 = v392;
      sub_FBD0(v424 + *(v406 + 5), v392, &unk_501100);
      v108 = v404;
      if ((*(v404 + 48))(v107, 1, v103) == 1)
      {
        sub_FCF8(v107, &unk_501100);
        v109 = v418;
        v110 = v409;
        v111 = v405;
      }

      else
      {
        v162 = v388;
        (*(v108 + 32))(v388, v107, v103);
        v109 = v418;
        v110 = v409;
        v111 = v405;
        if (*(v106 + *(v105 + 10)))
        {
          sub_3E6AD4();
          sub_3E6AB4();
          (*(v408 + 8))(v111, v407);
          (*(v108 + 8))(v162, v103);
LABEL_55:
          v293 = v423;
          sub_3E7774();
          v420 = TabMenu.Item.shelfUniqueID.getter();
          v409 = v294;
          v295 = (v106 + *(v105 + 6));
          v296 = v295[1];
          v424 = *v295;
          v408 = v296;
          v297 = type metadata accessor for Link();
          v298 = *(v297 + 28);
          v299 = v297;
          v407 = v297;
          v176 = v419;
          sub_208584(v293, v419 + v298, &type metadata accessor for ArtworkModel);
          (*(v110 + 56))(v176 + v298, 0, 1, v109);
          v418 = v176 + *(v299 + 36);
          v300 = v421;
          sub_208584(v396, v421, type metadata accessor for FlowDestination);

          sub_3E8574();
          sub_3E67A4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
          sub_3EC044();
          *(swift_allocObject() + 16) = xmmword_3F5630;
          sub_3E8504();
          sub_3EBFC4();

          sub_3EC534();
          v301 = v422;
          sub_3EC1C4();
          v432 = v425;
          sub_FCF8(&v432, &unk_4F8A10);
          v431 = v426;
          sub_FCF8(&v431, &qword_4E94E0);
          v430 = v427;
          sub_FCF8(&v430, &unk_4F8A20);
          sub_16AC0(v428);
          v302 = type metadata accessor for FlowAction(0);
          v303 = swift_allocObject();
          sub_208584(v300, v303 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
          type metadata accessor for FlowAction.DestinationType(0);
          swift_storeEnumTagMultiPayload();
          v304 = (v303 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
          *v304 = 0;
          v304[1] = 0;
          *(v303 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
          *(v303 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
          *(v303 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
          v306 = v415;
          v305 = v416;
          v307 = v414;
          (*(v415 + 16))(v414, v301, v416);
          v406 = sub_3EC634();
          v308 = *(v406 - 1);
          v405 = *(v308 + 56);
          v410 = (v308 + 56);
          v309 = v417;
          (v405)(v417, 1, 1, v406);
          v310 = v411;
          sub_3E5FB4();
          v311 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
          v313 = v312;
          (*(v412 + 8))(v310, v413);
          (*(v306 + 8))(v422, v305);
          sub_2085EC(v421, type metadata accessor for FlowDestination);
          *(v303 + 16) = v311;
          *(v303 + 24) = v313;
          *(v303 + 32) = 0;
          *(v303 + 40) = 0;
          *(v303 + 48) = 48;
          (*(v306 + 32))(v303 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v307, v305);
          sub_FACC(v309, v303 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
          v314 = v418;
          *(v418 + 24) = v302;
          v314[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
          *v314 = v303;
          v315 = v407;
          v316 = *(v407 + 40);
          sub_3E8574();
          v317 = v408;
          v318 = v424;
          sub_3EC5A4();

          sub_2085EC(v423, &type metadata accessor for ArtworkModel);
          (v405)(v176 + v316, 0, 1, v406);
          v227 = v315;
          v319 = *(v315 + 44);
          v320 = sub_3E5764();
          (*(*(v320 - 8) + 56))(v176 + v319, 1, 1, v320);

          v321 = v409;
          *v176 = v420;
          v176[1] = v321;
          v176[2] = v318;
          v176[3] = v317;
          v176[4] = 0;
          v176[5] = 0;
          *(v176 + *(v227 + 32)) = 8;
          sub_FCF8(v400, &unk_4E9EE0);
          v231 = &v427;
          goto LABEL_56;
        }

        (*(v108 + 8))(v162, v103);
      }

      sub_3E6AD4();
      sub_3E6AB4();
      (*(v408 + 8))(v111, v407);
      goto LABEL_55;
    }

    v137 = v395;
    *v395 = 5;
    *(v137 + 1) = 0u;
    *(v137 + 3) = 0u;
    *(v137 + 5) = 0u;
    v137[7] = 0;
    *(v137 + 64) = 10;
    swift_storeEnumTagMultiPayload();
    sub_3E5D94();
    v403 = sub_3E80F4();
    v139 = v138;
    v140 = v406;
    v141 = v424;
    v142 = v391;
    sub_FBD0(v424 + *(v406 + 5), v391, &unk_501100);
    v143 = v404;
    v144 = v420;
    v145 = (*(v404 + 48))(v142, 1, v420);
    v402 = v139;
    if (v145 == 1)
    {
      sub_FCF8(v142, &unk_501100);
      v146 = v418;
      v147 = v409;
      v148 = v405;
    }

    else
    {
      v160 = v387;
      (*(v143 + 32))(v387, v142, v144);
      v146 = v418;
      v147 = v409;
      v148 = v405;
      if (*(v141 + *(v140 + 10)))
      {
        sub_3E6AD4();
        sub_3E6AB4();
        (*(v408 + 8))(v148, v407);
        (*(v143 + 8))(v160, v144);
LABEL_49:
        v232 = v423;
        sub_3E7774();
        v420 = TabMenu.Item.shelfUniqueID.getter();
        v409 = v233;
        v234 = (v141 + *(v140 + 6));
        v235 = v234[1];
        v424 = *v234;
        v408 = v235;
        v236 = type metadata accessor for Link();
        v237 = *(v236 + 28);
        v238 = v236;
        v407 = v236;
        v239 = v419;
        sub_208584(v232, v419 + v237, &type metadata accessor for ArtworkModel);
        (*(v147 + 56))(v239 + v237, 0, 1, v146);
        v418 = v239 + *(v238 + 36);
        v240 = v421;
        sub_208584(v395, v421, type metadata accessor for FlowDestination);

        sub_3E8574();
        sub_3E67A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
        sub_3EC044();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3E8504();
        sub_3EBFC4();

        sub_3EC534();
        v241 = v422;
        sub_3EC1C4();
        v432 = v425;
        sub_FCF8(&v432, &unk_4F8A10);
        v431 = v426;
        sub_FCF8(&v431, &qword_4E94E0);
        v430 = v427;
        sub_FCF8(&v430, &unk_4F8A20);
        sub_16AC0(v428);
        v242 = type metadata accessor for FlowAction(0);
        v243 = swift_allocObject();
        sub_208584(v240, v243 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
        type metadata accessor for FlowAction.DestinationType(0);
        swift_storeEnumTagMultiPayload();
        v244 = (v243 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
        *v244 = 0;
        v244[1] = 0;
        *(v243 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
        *(v243 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
        *(v243 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
        v246 = v415;
        v245 = v416;
        v247 = v414;
        (*(v415 + 16))(v414, v241, v416);
        v406 = sub_3EC634();
        v248 = *(v406 - 1);
        v405 = *(v248 + 56);
        v410 = (v248 + 56);
        v249 = v417;
        (v405)(v417, 1, 1, v406);
        v250 = v411;
        sub_3E5FB4();
        v251 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v253 = v252;
        (*(v412 + 8))(v250, v413);
        (*(v246 + 8))(v422, v245);
        sub_2085EC(v421, type metadata accessor for FlowDestination);
        *(v243 + 16) = v251;
        *(v243 + 24) = v253;
        *(v243 + 32) = 0;
        *(v243 + 40) = 0;
        *(v243 + 48) = 48;
        (*(v246 + 32))(v243 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v247, v245);
        sub_FACC(v249, v243 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
        v254 = v418;
        *(v418 + 24) = v242;
        v254[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
        *v254 = v243;
        v255 = v407;
        v256 = *(v407 + 40);
        sub_3E8574();
        v257 = v408;
        v258 = v424;
        sub_3EC5A4();

        sub_2085EC(v423, &type metadata accessor for ArtworkModel);
        (v405)(v239 + v256, 0, 1, v406);
        v259 = v255;
        v260 = *(v255 + 44);
        v261 = sub_3E5764();
        (*(*(v261 - 8) + 56))(v239 + v260, 1, 1, v261);

        v262 = v409;
        *v239 = v420;
        v239[1] = v262;
        v239[2] = v258;
        v239[3] = v257;
        v239[4] = 0;
        v239[5] = 0;
        *(v239 + *(v259 + 32)) = 8;
        sub_FCF8(v399, &unk_4E9EE0);
        v263 = &v426;
LABEL_65:
        sub_2085EC(*(v263 - 32), type metadata accessor for FlowDestination);
        return (*(*(v259 - 8) + 56))(v239, 0, 1, v259);
      }

      (*(v143 + 8))(v160, v144);
    }

    sub_3E6AD4();
    sub_3E6AB4();
    (*(v408 + 8))(v148, v407);
    goto LABEL_49;
  }

  if (v79 == 4)
  {
    v127 = v394;
    *(v394 + 32) = 0u;
    *(v127 + 48) = 0u;
    *v127 = 0u;
    *(v127 + 16) = 0u;
    *(v127 + 64) = 10;
    swift_storeEnumTagMultiPayload();
    sub_3E5D94();
    v403 = sub_3E80C4();
    v402 = v128;
    v129 = v406;
    v130 = v424;
    v131 = v390;
    sub_FBD0(v424 + *(v406 + 5), v390, &unk_501100);
    v132 = v404;
    v133 = v420;
    if ((*(v404 + 48))(v131, 1, v420) == 1)
    {
      sub_FCF8(v131, &unk_501100);
      v134 = v418;
      v135 = v409;
      v136 = v405;
    }

    else
    {
      v159 = v386;
      (*(v132 + 32))(v386, v131, v133);
      v134 = v418;
      v135 = v409;
      v136 = v405;
      if (*(v130 + *(v129 + 10)))
      {
        sub_3E6AD4();
        sub_3E6AB4();
        (*(v408 + 8))(v136, v407);
        (*(v132 + 8))(v159, v133);
LABEL_46:
        v201 = v423;
        sub_3E7774();
        v420 = TabMenu.Item.shelfUniqueID.getter();
        v409 = v202;
        v203 = (v130 + *(v129 + 6));
        v204 = v203[1];
        v424 = *v203;
        v408 = v204;
        v205 = type metadata accessor for Link();
        v206 = *(v205 + 28);
        v207 = v205;
        v407 = v205;
        v176 = v419;
        sub_208584(v201, v419 + v206, &type metadata accessor for ArtworkModel);
        (*(v135 + 56))(v176 + v206, 0, 1, v134);
        v418 = v176 + *(v207 + 36);
        v406 = type metadata accessor for FlowDestination;
        v208 = v421;
        sub_208584(v394, v421, type metadata accessor for FlowDestination);

        sub_3E8574();
        sub_3E67A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
        sub_3EC044();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3E8504();
        sub_3EBFC4();

        sub_3EC534();
        v209 = v422;
        sub_3EC1C4();
        v432 = v425;
        sub_FCF8(&v432, &unk_4F8A10);
        v431 = v426;
        sub_FCF8(&v431, &qword_4E94E0);
        v430 = v427;
        sub_FCF8(&v430, &unk_4F8A20);
        sub_16AC0(v428);
        v210 = type metadata accessor for FlowAction(0);
        v211 = swift_allocObject();
        sub_208584(v208, v211 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, v406);
        type metadata accessor for FlowAction.DestinationType(0);
        swift_storeEnumTagMultiPayload();
        v212 = (v211 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
        *v212 = 0;
        v212[1] = 0;
        *(v211 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
        *(v211 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
        *(v211 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
        v214 = v415;
        v213 = v416;
        v215 = v414;
        (*(v415 + 16))(v414, v209, v416);
        v406 = sub_3EC634();
        v216 = *(v406 - 1);
        v405 = *(v216 + 56);
        v410 = (v216 + 56);
        v217 = v417;
        (v405)(v417, 1, 1, v406);
        v218 = v411;
        sub_3E5FB4();
        v219 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v221 = v220;
        (*(v412 + 8))(v218, v413);
        (*(v214 + 8))(v422, v213);
        sub_2085EC(v421, type metadata accessor for FlowDestination);
        *(v211 + 16) = v219;
        *(v211 + 24) = v221;
        *(v211 + 32) = 0;
        *(v211 + 40) = 0;
        *(v211 + 48) = 48;
        (*(v214 + 32))(v211 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v215, v213);
        sub_FACC(v217, v211 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
        v222 = v418;
        *(v418 + 24) = v210;
        v222[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
        *v222 = v211;
        v223 = v407;
        v224 = *(v407 + 40);
        sub_3E8574();
        v225 = v408;
        v226 = v424;
        sub_3EC5A4();

        sub_2085EC(v423, &type metadata accessor for ArtworkModel);
        (v405)(v176 + v224, 0, 1, v406);
        v227 = v223;
        v228 = *(v223 + 44);
        v229 = sub_3E5764();
        (*(*(v229 - 8) + 56))(v176 + v228, 1, 1, v229);

        v230 = v409;
        *v176 = v420;
        v176[1] = v230;
        v176[2] = v226;
        v176[3] = v225;
        v176[4] = 0;
        v176[5] = 0;
        *(v176 + *(v227 + 32)) = 8;
        sub_FCF8(v398, &unk_4E9EE0);
        v231 = &v425 + 8;
LABEL_56:
        v322 = *(v231 - 32);
LABEL_60:
        sub_2085EC(v322, type metadata accessor for FlowDestination);
        v199 = v227;
        v200 = v227;
        return (*(*(v200 - 8) + 56))(v176, 0, 1, v199);
      }

      (*(v132 + 8))(v159, v133);
    }

    sub_3E6AD4();
    sub_3E6AB4();
    (*(v408 + 8))(v136, v407);
    goto LABEL_46;
  }

  v80 = v420;
  if (v79 == 15)
  {
    v81 = v393;
    *v393 = 6;
    *(v81 + 1) = 0u;
    *(v81 + 3) = 0u;
    *(v81 + 5) = 0u;
    v81[7] = 0;
    *(v81 + 64) = 10;
    swift_storeEnumTagMultiPayload();
    sub_3E5D94();
    v402 = sub_3E8144();
    v403 = v82;
    v83 = v406;
    v84 = v424;
    v85 = v389;
    sub_FBD0(v424 + *(v406 + 5), v389, &unk_501100);
    v86 = v404;
    if ((*(v404 + 48))(v85, 1, v80) == 1)
    {
      sub_FCF8(v85, &unk_501100);
      v87 = v418;
      v88 = v409;
      v89 = v405;
    }

    else
    {
      v161 = v385;
      (*(v86 + 32))(v385, v85, v80);
      v87 = v418;
      v88 = v409;
      v89 = v405;
      if (*(v84 + *(v83 + 10)))
      {
        sub_3E6AD4();
        sub_3E6AB4();
        (*(v408 + 8))(v89, v407);
        (*(v86 + 8))(v161, v80);
LABEL_52:
        v264 = v423;
        sub_3E7774();
        v420 = TabMenu.Item.shelfUniqueID.getter();
        v409 = v265;
        v266 = (v84 + *(v83 + 6));
        v267 = v266[1];
        v424 = *v266;
        v408 = v267;
        v268 = type metadata accessor for Link();
        v269 = *(v268 + 28);
        v270 = v268;
        v407 = v268;
        v239 = v419;
        sub_208584(v264, v419 + v269, &type metadata accessor for ArtworkModel);
        (*(v88 + 56))(v239 + v269, 0, 1, v87);
        v418 = v239 + *(v270 + 36);
        v271 = v421;
        sub_208584(v393, v421, type metadata accessor for FlowDestination);

        sub_3E8574();
        sub_3E67A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
        sub_3EC044();
        *(swift_allocObject() + 16) = xmmword_3F5630;
        sub_3E8504();
        sub_3EBFC4();

        sub_3EC534();
        v272 = v422;
        sub_3EC1C4();
        v432 = v425;
        sub_FCF8(&v432, &unk_4F8A10);
        v431 = v426;
        sub_FCF8(&v431, &qword_4E94E0);
        v430 = v427;
        sub_FCF8(&v430, &unk_4F8A20);
        sub_16AC0(v428);
        v273 = type metadata accessor for FlowAction(0);
        v274 = swift_allocObject();
        sub_208584(v271, v274 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
        type metadata accessor for FlowAction.DestinationType(0);
        swift_storeEnumTagMultiPayload();
        v275 = (v274 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
        *v275 = 0;
        v275[1] = 0;
        *(v274 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
        *(v274 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
        *(v274 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
        v277 = v415;
        v276 = v416;
        v278 = v414;
        (*(v415 + 16))(v414, v272, v416);
        v406 = sub_3EC634();
        v279 = *(v406 - 1);
        v405 = *(v279 + 56);
        v410 = (v279 + 56);
        v280 = v417;
        (v405)(v417, 1, 1, v406);
        v281 = v411;
        sub_3E5FB4();
        v282 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
        v284 = v283;
        (*(v412 + 8))(v281, v413);
        (*(v277 + 8))(v422, v276);
        sub_2085EC(v421, type metadata accessor for FlowDestination);
        *(v274 + 16) = v282;
        *(v274 + 24) = v284;
        *(v274 + 32) = 0;
        *(v274 + 40) = 0;
        *(v274 + 48) = 48;
        (*(v277 + 32))(v274 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v278, v276);
        sub_FACC(v280, v274 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
        v285 = v418;
        *(v418 + 24) = v273;
        v285[4] = sub_208000(&qword_4F8A40, type metadata accessor for FlowAction);
        *v285 = v274;
        v286 = v407;
        v287 = *(v407 + 40);
        sub_3E8574();
        v288 = v408;
        v289 = v424;
        sub_3EC5A4();

        sub_2085EC(v423, &type metadata accessor for ArtworkModel);
        (v405)(v239 + v287, 0, 1, v406);
        v259 = v286;
        v290 = *(v286 + 44);
        v291 = sub_3E5764();
        (*(*(v291 - 8) + 56))(v239 + v290, 1, 1, v291);

        v292 = v409;
        *v239 = v420;
        v239[1] = v292;
        v239[2] = v289;
        v239[3] = v288;
        v239[4] = 0;
        v239[5] = 0;
        *(v239 + *(v259 + 32)) = 8;
        sub_FCF8(v397, &unk_4E9EE0);
        v263 = &v425;
        goto LABEL_65;
      }

      (*(v86 + 8))(v161, v80);
    }

    sub_3E6AD4();
    sub_3E6AB4();
    (*(v408 + 8))(v89, v407);
    goto LABEL_52;
  }

LABEL_18:
  v122 = type metadata accessor for Link();
  v123 = *(*(v122 - 8) + 56);
  v124 = v122;
  v125 = v419;

  return v123(v125, 1, 1, v124);
}

uint64_t sub_2053C0(uint64_t a1, int a2)
{
  v4 = sub_3E6174();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TabMenu.Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  v13 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v43 = result;
  if (!result)
  {
    return result;
  }

  v37 = v5;
  v38 = v4;
  if (a2)
  {

    v15 = v13;
LABEL_17:
    v24 = v43;
    sub_200A38(v15);

    *(v24 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems) = v13;

    v25 = v38;
    if (a2)
    {
      v26 = v13[2];
      if (v26)
      {
        v27 = 0;
        v28 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v29 = *(v8 + 72);
        v30 = (v37 + 8);
        do
        {
          if (v28[*(v7 + 36)] == 1)
          {
            v31 = LibraryPresenter.multiSelectableExtension.getter();
            if (v31)
            {
              v32 = v31;
              swift_beginAccess();
              v33 = v32[12];
              sub_17B93C(v33);

              if (v33)
              {
                v34 = v39;
                sub_3E6164();
                v33(v34);
                sub_16AC0(v33);
                (*v30)(v34, v25);
              }
            }
          }

          ++v27;
          v28 += v29;
        }

        while (v26 != v27);
      }
    }
  }

  v36 = a2;
  v16 = v13[2];
  if (!v16)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_16:
    LOBYTE(a2) = v36;
    goto LABEL_17;
  }

  v17 = 0;
  v15 = _swiftEmptyArrayStorage;
  v41 = v13[2];
  v42 = v7;
  v18 = v40;
  while (v17 < v13[2])
  {
    v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v20 = *(v8 + 72);
    sub_208584(v13 + v19 + v20 * v17, v12, type metadata accessor for TabMenu.Item);
    if (v12[*(v7 + 36)] == 1)
    {
      sub_20864C(v12, v18, type metadata accessor for TabMenu.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_41D74(0, v15[2] + 1, 1);
        v18 = v40;
        v15 = v44;
      }

      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        sub_41D74(v22 > 1, v23 + 1, 1);
        v18 = v40;
        v15 = v44;
      }

      v15[2] = v23 + 1;
      result = sub_20864C(v18, v15 + v19 + v23 * v20, type metadata accessor for TabMenu.Item);
      v16 = v41;
      v7 = v42;
    }

    else
    {
      result = sub_2085EC(v12, type metadata accessor for TabMenu.Item);
    }

    if (v16 == ++v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

size_t sub_2057E0(unint64_t a1)
{
  v2 = type metadata accessor for Link();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  v45 = type metadata accessor for ModernShelf();
  v15 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v17 = sub_3EE5A4();
  }

  else
  {
    v17 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v18 = _swiftEmptyArrayStorage;
  v47 = v11;
  v48 = v8;
  v43 = v14;
  v44 = v15;
  if (!v17)
  {
LABEL_12:
    v25 = v45;
    v26 = *(v45 + 20);
    v27 = type metadata accessor for Header(0);
    v28 = v46;
    (*(*(v27 - 8) + 56))(&v46[v26], 1, 1, v27);
    v29 = sub_77914(v18);

    v30 = sub_3E5DC4();
    v31 = *(*(v30 - 8) + 56);
    v32 = v43;
    v31(v43, 1, 1, v30);
    v33 = &v28[v25[12]];
    *(v33 + 4) = 0;
    *v33 = 0u;
    *(v33 + 1) = 0u;
    v34 = v25[13];
    sub_3E85C4();
    sub_3EC584();

    v35 = sub_3EC634();
    (*(*(v35 - 8) + 56))(&v28[v34], 0, 1, v35);
    v36 = v25[9];
    v37 = &v28[v25[8]];
    v31(&v28[v36], 1, 1, v30);
    *v28 = 0xD000000000000029;
    *(v28 + 1) = 0x800000000042AD90;
    v38 = &v28[v25[6]];
    *v38 = 21;
    *(v38 + 3) = 256;
    *(v38 + 2) = 0;
    *(v38 + 1) = 1;
    *&v28[v25[7]] = v29;
    sub_51F9C(v32, &v28[v36], &unk_4E9EE0);
    v28[v25[10]] = 1;
    v28[v25[11]] = 0;
    *v37 = 0;
    *(v37 + 1) = 0;
    v39 = v47;
    sub_208584(v28, v47, type metadata accessor for ModernShelf);
    (*(v44 + 56))(v39, 0, 2, v25);
    v40 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_stationsShelf;
    v41 = v49;
    swift_beginAccess();
    sub_B8464(v39, v41 + v40, &qword_4F5978);
    swift_endAccess();
    swift_beginAccess();

    sub_1FE970(v48);
    sub_3E9D74();

    sub_FCF8(v39, &qword_4F5978);
    return sub_2085EC(v28, type metadata accessor for ModernShelf);
  }

  v42 = a1;
  v50 = _swiftEmptyArrayStorage;
  result = sub_41DD8(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v18 = v50;
    v21 = v42 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v22 = sub_3EE3F4();
      }

      else
      {
      }

      v51 = 1;
      Link.init(station:presentationContext:showChevron:)(v22, &v51, 1, v5);
      v50 = v18;
      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        sub_41DD8(v23 > 1, v24 + 1, 1);
        v18 = v50;
      }

      ++v20;
      v18[2] = v24 + 1;
      sub_20864C(v5, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, type metadata accessor for Link);
    }

    while (v17 != v20);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_205E08(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2057E0(v1);
  }

  return result;
}

uint64_t sub_205E68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for BubbleTip();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_3E7274();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(v9 + 104))(v12, enum case for TipGroup.downloads(_:), v8, v10);
  if (!*(v13 + 16))
  {
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  sub_557FC(v12);
  if ((v14 & 1) == 0)
  {
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_12:

    result = (*(v9 + 8))(v12, v8);
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v16 = v15[2];
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_6:
  v30 = v12;
  v31 = v9;
  v32 = v8;
  v33 = a2;
  v36 = _swiftEmptyArrayStorage;
  v17 = v15;
  sub_41C8C(0, v16, 0);
  v18 = v36;
  v29[1] = v17;
  v19 = (v17 + 4);
  do
  {
    sub_1F958(v19, v34);
    v20 = v35;
    v21 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v22 = __chkstk_darwin(v21);
    v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24, v22);
    BubbleTip.init<A>(from:style:)(v24, v20, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v36 = v18;
    v27 = v18[2];
    v26 = v18[3];
    if (v27 >= v26 >> 1)
    {
      sub_41C8C(v26 > 1, v27 + 1, 1);
      v18 = v36;
    }

    v18[2] = v27 + 1;
    sub_20864C(v7, v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for BubbleTip);
    v19 += 40;
    --v16;
  }

  while (v16);
  (*(v31 + 8))(v30, v32);

  a2 = v33;
LABEL_13:
  *a2 = v18;
  return result;
}

uint64_t sub_2061E4(uint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for BubbleTip();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (*(v12 + 16))
    {
      sub_208584(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11, type metadata accessor for BubbleTip);
      static ModernShelf.bubbleTipShelf(for:)(v11, v7);
      v15 = type metadata accessor for ModernShelf();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      v16 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipShelf;
      swift_beginAccess();
      sub_B8464(v7, v14 + v16, &unk_503DA0);
      swift_endAccess();
      swift_beginAccess();

      sub_1FE970(v4);
      sub_3E9D74();

      sub_FCF8(v7, &unk_503DA0);
      return sub_2085EC(v11, type metadata accessor for BubbleTip);
    }

    else
    {
      v17 = type metadata accessor for ModernShelf();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      v18 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipShelf;
      swift_beginAccess();
      sub_B8464(v7, v14 + v18, &unk_503DA0);
      swift_endAccess();
      swift_beginAccess();

      sub_1FE970(v4);
      sub_3E9D74();

      return sub_FCF8(v7, &unk_503DA0);
    }
  }

  return result;
}

uint64_t sub_206570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_501070);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for TabMenu.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  __chkstk_darwin(v11);
  v52 = &v43 - v12;
  v13 = type metadata accessor for Link() - 8;
  __chkstk_darwin(v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = *(a1 + 16);
  if (v51)
  {
    v17 = 0;
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v49 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems;
    v48 = a1 + v18;
    v47 = *(v14 + 72);
    v44 = 0x80000000004258E0;
    v46 = (v6 + 56);
    v55 = v6;
    v45 = (v6 + 48);
    v56 = _swiftEmptyArrayStorage;
    v59 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v4;
    do
    {
      v57 = v17;
      sub_208584(v48 + v47 * v17, v16, type metadata accessor for Link);
      v20 = *(*(v54 + v49) + 16);
      v58 = *(v54 + v49);

      if (v20)
      {
        v21 = v58 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v60 = *(v55 + 72);
        while (1)
        {
          sub_208584(v21, v10, type metadata accessor for TabMenu.Item);
          v22 = *&v10[*(v5 + 28)];
          v23 = 0xE500000000000000;
          v24 = 0x73776F6873;
          switch(v22)
          {
            case 1uLL:
              break;
            case 2uLL:
              v23 = 0xE800000000000000;
              v24 = 0x736C656E6E616863;
              break;
            case 3uLL:
              v23 = 0xEA00000000007365;
              v24 = 0x69726F6765746163;
              break;
            case 4uLL:
              v24 = 0x64616F6C6E776F64;
              v23 = 0xEA00000000006465;
              break;
            case 5uLL:
              v24 = 0x7472616843706F74;
              goto LABEL_13;
            case 6uLL:
              v24 = 0x6F546E7265646F6DLL;
              v23 = 0xEF73747261684370;
              break;
            case 7uLL:
              v23 = 0xE700000000000000;
              v24 = 0x7972617262696CLL;
              break;
            case 8uLL:
              v23 = 0xE600000000000000;
              v24 = 0x6E657473696CLL;
              break;
            case 9uLL:
              v23 = 0xE700000000000000;
              v25 = 0x6F6C61746163;
              goto LABEL_27;
            case 0xAuLL:
              v24 = 0x7265666E69;
              break;
            case 0xBuLL:
              v23 = 0xE800000000000000;
              v24 = 0x64657463656C6573;
              break;
            case 0xCuLL:
              v23 = 0xE600000000000000;
              v24 = 0x686372616573;
              break;
            case 0xDuLL:
              v23 = 0xE700000000000000;
              v25 = 0x6E6964616F6CLL;
LABEL_27:
              v24 = v25 & 0xFFFFFFFFFFFFLL | 0x67000000000000;
              break;
            case 0xEuLL:
              v23 = 0xEA00000000007265;
              v24 = 0x79616C50696E696DLL;
              break;
            case 0xFuLL:
              v24 = 0x6B72616D6B6F6F62;
LABEL_13:
              v23 = 0xE900000000000073;
              break;
            case 0x10uLL:
              v24 = 0x704574736574616CLL;
              v23 = 0xEE007365646F7369;
              break;
            case 0x11uLL:
              v24 = 0x796C746E65636572;
              v23 = 0xEF64657461647055;
              break;
            case 0x12uLL:
              v24 = 0xD000000000000014;
              v23 = v44;
              break;
            default:
              v23 = 0xE700000000000000;
              v24 = 0x6E6F6974617473;
              break;
          }

          v66 = v24;
          v67 = v23;
          v26 = v10[*(v5 + 40)];
          *(&v65 + 1) = &type metadata for Bool;
          LOBYTE(v64) = v26;
          sub_FBD0(&v64, &v61, &unk_501090);
          if (v62)
          {
            sub_1FB90(&v61, v63);
            sub_2F4AC(v63, &v61);
            v68._countAndFlagsBits = sub_3ED2B4();
            sub_3ED3D4(v68);

            __swift_destroy_boxed_opaque_existential_1Tm(v63);
          }

          else
          {
            sub_FCF8(&v61, &unk_501090);
          }

          sub_FCF8(&v64, &unk_501090);
          if (v22 - 1 >= 0x12)
          {
            if (v22)
            {
              v29 = v22[2];
              v30 = v22[3];
              *(&v65 + 1) = &type metadata for String;
              *&v64 = v29;
              *(&v64 + 1) = v30;
              sub_FBD0(&v64, &v61, &unk_501090);
              v16 = v59;
              if (v62)
              {
                sub_1FB90(&v61, v63);
                sub_2F4AC(v63, &v61);
                sub_29EA4(v22);

                v69._countAndFlagsBits = sub_3ED2B4();
                sub_3ED3D4(v69);

                __swift_destroy_boxed_opaque_existential_1Tm(v63);
              }

              else
              {
                sub_29EA4(v22);

                sub_FCF8(&v61, &unk_501090);
              }

              sub_FCF8(&v64, &unk_501090);
              v31 = v22[4];
              v32 = v22[5];
              *(&v65 + 1) = &type metadata for String;
              *&v64 = v31;
              *(&v64 + 1) = v32;
              sub_FBD0(&v64, &v61, &unk_501090);
              if (v62)
              {
                sub_1FB90(&v61, v63);
                sub_2F4AC(v63, &v61);

                v70._countAndFlagsBits = sub_3ED2B4();
                sub_3ED3D4(v70);

                sub_29EB8(v22);
                __swift_destroy_boxed_opaque_existential_1Tm(v63);
              }

              else
              {

                sub_29EB8(v22);
                sub_FCF8(&v61, &unk_501090);
              }

              sub_FCF8(&v64, &unk_501090);
              v28 = v66;
              v27 = v67;
              v33 = *(v22 + OBJC_IVAR____TtC8ShelfKit13StationDetail_episodeCount);
              *(&v65 + 1) = &type metadata for Int;
              *&v64 = v33;
            }

            else
            {
              v28 = v66;
              v27 = v67;
              v64 = 0u;
              v65 = 0u;
              v16 = v59;
            }

            sub_FBD0(&v64, &v61, &unk_501090);
            if (v62)
            {
              sub_1FB90(&v61, v63);
              sub_2F4AC(v63, &v61);

              v71._countAndFlagsBits = sub_3ED2B4();
              sub_3ED3D4(v71);

              sub_29EB8(v22);
              __swift_destroy_boxed_opaque_existential_1Tm(v63);
              v28 = v66;
              v27 = v67;
            }

            else
            {
              sub_FCF8(&v61, &unk_501090);
            }

            sub_FCF8(&v64, &unk_501090);
          }

          else
          {
            v28 = v66;
            v27 = v67;
            v16 = v59;
          }

          if (v28 == *v16 && v27 == v16[1])
          {
            break;
          }

          v34 = sub_3EE804();

          if (v34)
          {
            goto LABEL_52;
          }

          sub_2085EC(v10, type metadata accessor for TabMenu.Item);
          v21 += v60;
          if (!--v20)
          {
            goto LABEL_50;
          }
        }

LABEL_52:
        v35 = v50;
        sub_20864C(v10, v50, type metadata accessor for TabMenu.Item);
        (*v46)(v35, 0, 1, v5);
      }

      else
      {
LABEL_50:
        v35 = v50;
        (*v46)(v50, 1, 1, v5);
      }

      if ((*v45)(v35, 1, v5) == 1)
      {
        sub_FCF8(v35, &qword_501070);
        v19 = v57;
      }

      else
      {
        v36 = v52;
        sub_20864C(v35, v52, type metadata accessor for TabMenu.Item);
        sub_208584(v36, v53, type metadata accessor for TabMenu.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_E0888(0, v56[2] + 1, 1, v56);
        }

        v39 = v56[2];
        v38 = v56[3];
        if (v39 >= v38 >> 1)
        {
          v56 = sub_E0888(v38 > 1, v39 + 1, 1, v56);
        }

        sub_2085EC(v52, type metadata accessor for TabMenu.Item);
        v40 = v55;
        v41 = v56;
        v56[2] = v39 + 1;
        sub_20864C(v53, v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, type metadata accessor for TabMenu.Item);
      }

      v17 = v19 + 1;
      sub_2085EC(v16, type metadata accessor for Link);
    }

    while (v17 != v51);
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
  }

  *(v54 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems) = v56;
}

uint64_t sub_207098@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (TabMenu.Item.shelfUniqueID.getter() == *a2 && v8 == a2[1])
  {
  }

  else
  {
    v10 = sub_3EE804();

    if ((v10 & 1) == 0)
    {
      return sub_208584(a1, a4, type metadata accessor for TabMenu.Item);
    }
  }

  v12 = sub_3E6AE4();
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v13 = type metadata accessor for TabMenu.Item(0);
  v14 = (a1 + v13[6]);
  v16 = *v14;
  v15 = v14[1];
  v17 = *(a1 + v13[7]);
  v18 = *(a1 + v13[8]);
  sub_FBD0(a1 + v13[5], a4 + v13[5], &unk_501100);
  v19 = *(a1 + v13[10]);
  v20 = *(a1 + v13[11]);
  v21 = v13[13];
  v22 = *(a1 + v13[12]);
  v23 = *(a1 + v21);
  v24 = (a4 + v13[6]);
  *v24 = v16;
  v24[1] = v15;
  *(a4 + v13[7]) = v17;
  *(a4 + v13[8]) = v18;
  *(a4 + v13[9]) = a3 & 1;
  *(a4 + v13[10]) = v19;
  *(a4 + v13[11]) = v20;
  *(a4 + v13[12]) = v22;
  *(a4 + v21) = v23;

  sub_29EA4(v17);
}

uint64_t sub_207238(uint64_t *a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v5 == 0;
    v8 = *(result + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isLibraryEmpty);
    *(result + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isLibraryEmpty) = v7;
    if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
    {
      sub_1F9978();
      swift_beginAccess();

      sub_1FE970(v4);
      sub_3E9D74();
    }
  }

  return result;
}

uint64_t LibraryPresenter.deinit()
{

  sub_2085EC(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_interactionContextPage, &type metadata accessor for InteractionContext.Page);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryObserverProvider);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryActionController);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipProvider);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedShelf, &qword_4F5978);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedHasMoreShelf, &unk_503DA0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipShelf, &unk_503DA0);

  sub_1FA4B4(*(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension));
  sub_1FB670(*(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension));
  sub_1FC4D4(*(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension));
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_linksShelf, &qword_4F5978);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_stationsShelf, &qword_4F5978);
  return v0;
}

uint64_t LibraryPresenter.__deallocating_deinit()
{
  LibraryPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_207614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v25[3] = type metadata accessor for AlertSheetAction();
  v25[4] = sub_208000(&qword_4F9A58, type metadata accessor for AlertSheetAction);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v25);
  sub_208584(a1, boxed_opaque_existential_0Tm, type metadata accessor for AlertSheetAction);
  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  v13 = sub_3E6434();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v11, a2, a3);

  sub_FCF8(v11, &qword_5005B0);
  sub_1F958(v25, v23);
  v24 = v14;
  sub_E69A0(v23, v22);
  v15 = swift_allocObject();
  v16 = v22[1];
  v15[1] = v22[0];
  v15[2] = v16;
  v15[3] = v22[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v17 = sub_3ECE04();
  v18 = sub_3ED6F4();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_40D3D0;
  v19[5] = v15;
  v19[6] = v17;

  sub_E8ECC(0, 0, v8, &unk_40D3D8, v19);

  sub_E91B8(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v17;
}

uint64_t sub_20793C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3E65B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageContent();
  __chkstk_darwin(v8);
  *(v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v1 + 16) = sub_3E9D94();
  *&v32 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  *(v1 + 24) = sub_3E9D94();
  v10 = [objc_opt_self() mainBundle];
  v29._countAndFlagsBits = 0xE700000000000000;
  v38._countAndFlagsBits = 0x494C5F454C544954;
  v38._object = 0xED00005952415242;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v11.super.isa = v10;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v12 = sub_3E5A74(v38, v39, v11, v40, v29);
  v14 = v13;

  *&v32 = v12;
  *(&v32 + 1) = v14;
  BYTE4(v33) = -96;
  LODWORD(v33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v2 + 32) = sub_3E9D94();
  *(v2 + 40) = 1;
  sub_3E63E4();
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_refreshControls;
  LOBYTE(v32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  swift_allocObject();
  *(v2 + v15) = sub_3E9D94();
  v16 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_hasLoadedContent;
  (*(v5 + 104))(v7, enum case for ExtendedLaunchStatus.loading(_:), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5598);
  swift_allocObject();
  *(v2 + v16) = sub_3E9D94();
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isLibraryEmpty) = 2;
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_subscriptions) = _swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedShelf;
  v18 = type metadata accessor for ModernShelf();
  v19 = *(*(v18 - 8) + 56);
  v19(v2 + v17, 1, 2, v18);
  v19(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_recentlyUpdatedHasMoreShelf, 1, 1, v18);
  v19(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipShelf, 1, 1, v18);
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryItems) = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_isEditing;
  LOBYTE(v32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v2 + v20) = sub_3E9D94();
  v21 = v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___reorderingExtension;
  *v21 = 1;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0u;
  *(v21 + 8) = 0u;
  v22 = (v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___deletableExtension);
  *v22 = 1;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = 0;
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension) = 1;
  v19(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_linksShelf, 1, 2, v18);
  v19(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_stationsShelf, 1, 2, v18);
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_objectGraph) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);

  sub_3EC394();
  v23 = v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryDataProvider;
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryDataProvider) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB40);
  sub_3EC394();
  sub_1D4F0(&v32, v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryObserverProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1D4F0(&v32, v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryActionController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230);
  sub_3EC394();
  sub_1D4F0(&v32, v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_libraryTipProvider);
  LOWORD(v32) = 256;
  BYTE2(v32) = 7;
  *(&v32 + 7) = 0;
  *(&v32 + 3) = 15;
  *(&v32 + 9) = 50463489;
  *(&v32 + 13) = 3847;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = -1;
  v24 = *(v23 + 8);
  ObjectType = swift_getObjectType();
  v30[2] = v34;
  v30[3] = v35;
  v30[4] = v36;
  v31 = v37;
  v30[0] = v32;
  v30[1] = v33;
  v26 = *(v24 + 192);
  swift_unknownObjectRetain();
  v27 = v26(0, 1, 2, v30, 50, ObjectType, v24);
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter_updatedShowsPublisher) = v27;
  sub_1F9978();
  sub_1AE46C(&v32);
  return v2;
}

uint64_t sub_207FA8(uint64_t a1)
{
  result = sub_208000(&qword_4F9838, type metadata accessor for LibraryPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_208000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LibraryPresenter()
{
  result = qword_4F98A0;
  if (!qword_4F98A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_208120@<D0>(_OWORD *a1@<X8>)
{
  LibraryPresenter.reorderingExtension.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_208168@<D0>(_OWORD *a1@<X8>)
{
  LibraryPresenter.deletableExtension.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

void *sub_2081A8@<X0>(void *a1@<X8>)
{
  result = LibraryPresenter.multiSelectableExtension.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2081D4(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension);
  *(*a2 + OBJC_IVAR____TtC8ShelfKit16LibraryPresenter____lazy_storage___multiSelectableExtension) = *a1;

  return sub_1FC4D4(v2);
}

void sub_208228()
{
  sub_3E63E4();
  if (v0 <= 0x3F)
  {
    sub_208424(319, &unk_4F91B0, &type metadata accessor for Loadable);
    if (v1 <= 0x3F)
    {
      sub_208424(319, &qword_4F5FD0, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_208424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ModernShelf();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2084AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_208584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2085EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20864C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *LibraryShowPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  swift_allocObject();
  v4 = sub_208CA0(a1, a2);

  return v4;
}

void *LibraryShowPresenter.init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_208CA0(a1, a2);

  return v2;
}

Swift::Void __swiftcall LibraryShowPresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = v0[5];
  swift_beginAccess();
  v6 = v1[2];
  v7 = (v5 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_208E04;
  v7[1] = v6;

  sub_16AC0(v8);
  LibraryShowProvider.loadPageContent()();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  v9 = v26;
  if (v26)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E9EA4();

    v10 = type metadata accessor for ModernShelf();
    if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
    {
      sub_208E40(v4);
LABEL_4:
      v11 = *(v9 + 56);
      v26 = *(v9 + 48);
      v27 = v11;
      v29 = 0;
      v28 = 0;
LABEL_27:

      sub_3E9D74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
      v16 = *(type metadata accessor for HeaderButtonItem() - 8);
      v17 = *(v16 + 72);
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3F5310;
      v20 = (v19 + v18);
      v21 = v1[3];
      v22 = v1[4];
      *v20 = v21;
      v20[1] = v22;
      type metadata accessor for FollowButtonPresenter.Data(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v23 = (v19 + v18 + v17);

      v24 = PodcastDetail.lockup.getter();
      v23[3] = type metadata accessor for LibraryShowLockup();
      v23[4] = sub_208FC8(&qword_4F9A60, 255, type metadata accessor for LibraryShowLockup);
      *v23 = v24;
      swift_storeEnumTagMultiPayload();
      v26 = v19;
      sub_3E9D44();

      goto LABEL_28;
    }

    v12 = v4[*(v10 + 24)];
    if (v12 <= 0x2A)
    {
      switch(v12)
      {
        case '""':
          v13 = 6;
          goto LABEL_23;
        case '#':
          v13 = 2;
          goto LABEL_23;
        case '$':
          v13 = 1;
          goto LABEL_23;
      }
    }

    else if (v4[*(v10 + 24)] > 0x32u)
    {
      if (v12 == 51)
      {
        v13 = 0;
        goto LABEL_23;
      }

      if (v12 == 74)
      {
        v13 = 7;
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 == 43)
      {
        v13 = 3;
        goto LABEL_23;
      }

      if (v12 == 44)
      {
        v13 = 4;
LABEL_23:
        sub_208EA8(v4);
        if (*(v9 + 56))
        {
          v14 = *(v9 + 48);
          v15 = *(v9 + 56);
        }

        else
        {
          v14 = 0;
          v15 = 0xE000000000000000;
        }

        v26 = v14;
        v27 = v15;
        v28 = v13;
        v29 = 96;
        goto LABEL_27;
      }
    }

    sub_208EA8(v4);
    goto LABEL_4;
  }

  v26 = 1;

  sub_3E9D44();
LABEL_28:
}

uint64_t LibraryShowPresenter.deinit()
{

  return v0;
}

uint64_t LibraryShowPresenter.__deallocating_deinit()
{
  LibraryShowPresenter.deinit();

  return swift_deallocClassInstance();
}

void *sub_208CA0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  v2[2] = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  v2[6] = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  v2[7] = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  swift_allocObject();
  v2[8] = sub_3E9D94();
  v2[9] = a1;
  v2[3] = v4;
  v2[4] = v5;
  type metadata accessor for LibraryShowProvider();
  swift_allocObject();

  v2[5] = sub_198830(a1, v4, v5);
  return v2;
}

uint64_t sub_208E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_208EA8(uint64_t a1)
{
  v2 = type metadata accessor for ModernShelf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_208F04(uint64_t a1, uint64_t a2)
{
  result = sub_208FC8(&qword_4F9B48, a2, type metadata accessor for LibraryShowPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_208FC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LongDescriptionPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  swift_allocObject();
  v3 = sub_209E00(a2);

  return v3;
}

uint64_t LongDescriptionPresenter.init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_209E00(a2);

  return v2;
}

uint64_t LongDescriptionPresenter.interactionContextPage.getter()
{
  sub_3E63E4();

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall LongDescriptionPresenter.viewDidLoad()()
{
  v98 = type metadata accessor for PageContent();
  __chkstk_darwin(v98);
  v2 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v75 - v7;
  v106 = type metadata accessor for Header(0);
  v96 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v103 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v12 - 8);
  v104 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v14 - 8);
  v102 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v16 - 8);
  v107 = &v75 - v17;
  v18 = sub_3EC164();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_3ECCF4();
  v97 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ModernPage();
  __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v0;
  v29 = *(v0 + 16);
  v30 = v29[6];
  if (v30)
  {
    v88 = v26;
    v89 = v22;
    v91 = v19;
    v92 = v18;
    v93 = v28;
    v94 = v5;
    v100 = v30;
    v101 = v8;
    v95 = v2;

    v87 = v24;
    sub_3ECCE4();
    v90 = v21;
    sub_3EC154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8);
    v85 = type metadata accessor for ModernShelf();
    v31 = (*(*(v85 - 8) + 80) + 32) & ~*(*(v85 - 8) + 80);
    v32 = swift_allocObject();
    v81 = xmmword_3F5630;
    *(v32 + 16) = xmmword_3F5630;
    v86 = v32;
    v84 = (v32 + v31);
    sub_3E62F4();
    v83 = sub_3E62E4();
    v82 = v33;

    v34 = v29[3];
    v78 = v29[2];
    v80 = v34;
    v35 = v29[5];
    v76 = v29[4];
    v79 = v35;
    v36 = type metadata accessor for ActionMenu(0);
    v77 = *(*(v36 - 8) + 56);
    v77(v102, 1, 1, v36);
    v37 = type metadata accessor for Header.PrimaryAction(0);
    v38 = *(*(v37 - 8) + 56);
    v38(v104, 1, 1, v37);
    v39 = sub_3E7784();
    v40 = *(*(v39 - 8) + 56);
    v40(v103, 1, 1, v39);
    v41 = v105;
    v42 = v106;
    *(v105 + 32) = 0;
    *v41 = 0u;
    v41[1] = 0u;
    v75 = v42[7];
    v77(v41 + v75, 1, 1, v36);
    v43 = v42[8];
    v38(v41 + v43, 1, 1, v37);
    v44 = v78;
    v45 = v42[9];
    v46 = v41 + v45;
    v47 = v79;
    v40(v46, 1, 1, v39);
    v48 = v80;

    if (sub_3EE0E4())
    {
      v49 = v105;
      *v105 = v44;
      *(v49 + 8) = v48;
      *(v49 + 16) = v76;
      *(v49 + 24) = v47;
      *(v49 + 32) = 0;
      sub_51F9C(v102, v49 + v75, &qword_4F1AB8);
      v50 = v104;
      sub_F7C5C(v104, v49 + v43);
      sub_51F9C(v103, v49 + v45, &qword_4F1D50);
      v51 = v107;
      sub_209F78(v49, v107, type metadata accessor for Header);
      (*(v96 + 56))(v51, 0, 1, v106);
      sub_FCF8(v50, &qword_4F1AB0);
      sub_209F18(v49, type metadata accessor for Header);
    }

    else
    {

      sub_FCF8(v103, &qword_4F1D50);
      sub_FCF8(v102, &qword_4F1AB8);
      sub_FCF8(v104, &qword_4F1AB0);
      sub_209F18(v105, type metadata accessor for Header);
      (*(v96 + 56))(v107, 1, 1, v106);
    }

    v52 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v53 = swift_allocObject();
    *(v53 + 16) = v81;
    *(v53 + 56) = type metadata accessor for Paragraph();
    *(v53 + 64) = sub_20A0A4(&qword_4F9C28, 255, type metadata accessor for Paragraph);
    *(v53 + 32) = v100;
    v54 = sub_3E5DC4();
    v55 = *(*(v54 - 8) + 56);
    v55(v52, 1, 1, v54);
    v56 = sub_3EC634();
    v57 = v94;
    (*(*(v56 - 8) + 56))(v94, 1, 1, v56);
    v58 = v85;
    v59 = v84;
    v60 = (v84 + *(v85 + 32));
    *v60 = 0;
    v60[1] = 0;
    v61 = v58[9];
    v55(v59 + v61, 1, 1, v54);
    v62 = v82;
    *v59 = v83;
    v59[1] = v62;
    sub_FACC(v107, v59 + v58[5], &qword_4F1AC0);
    v63 = v59 + v58[6];
    *v63 = 22;
    *(v63 + 3) = 256;
    *(v63 + 2) = 0;
    *(v63 + 1) = 1;
    *(v59 + v58[7]) = v53;

    sub_51F9C(v101, v59 + v61, &unk_4E9EE0);
    *(v59 + v58[10]) = 1;
    *(v59 + v58[11]) = 0;
    v64 = v59 + v58[12];
    *(v64 + 4) = 0;
    *v64 = 0u;
    *(v64 + 1) = 0u;
    sub_FACC(v57, v59 + v58[13], &unk_4E9170);
    *v60 = 0;
    v60[1] = 0;

    v65 = v93;
    (*(v97 + 32))(v93, v87, v89);
    v66 = v88;
    (*(v91 + 32))(v65 + *(v88 + 20), v90, v92);
    *(v65 + *(v66 + 24)) = v86;
    v67 = [objc_opt_self() mainBundle];
    v74._countAndFlagsBits = 0xE000000000000000;
    v112._countAndFlagsBits = 0x49545F54554F4241;
    v112._object = 0xEB00000000454C54;
    v113.value._countAndFlagsBits = 0;
    v113.value._object = 0;
    v68.super.isa = v67;
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    v69 = sub_3E5A74(v112, v113, v68, v114, v74);
    v71 = v70;

    v108 = v69;
    v109 = v71;
    v111 = 32;
    v110 = 0;
    sub_3E9D44();

    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    v73 = v95;
    sub_209F78(v65, v95, type metadata accessor for ModernPage);
    *(v73 + v72) = sub_3E66E4();
    swift_storeEnumTagMultiPayload();
    sub_3E9D44();

    sub_209F18(v73, type metadata accessor for PageContent);
    sub_209F18(v65, type metadata accessor for ModernPage);
  }
}

uint64_t LongDescriptionPresenter.deinit()
{

  return v0;
}

uint64_t LongDescriptionPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_209E00(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v9[1] = 0;
  v10[0] = 0;
  *(v10 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v2 + 24) = sub_3E9D94();
  *v6 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v2 + 32) = sub_3E9D94();
  *(v2 + 40) = 1;
  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_209F18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_209F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_209FE0(uint64_t a1, uint64_t a2)
{
  result = sub_20A0A4(&qword_4F9D10, a2, type metadata accessor for LongDescriptionPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20A0A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20A128()
{
  sub_3E8914();
  swift_beginAccess();
  sub_3E8914();
  swift_endAccess();
  v0 = sub_3E7F44();
  v2 = v1;
  if (v0 == sub_3E7F44() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_3EE804();

    if ((v5 & 1) == 0)
    {
      swift_beginAccess();
      sub_3E8914();
      swift_endAccess();
      sub_3E7E64();
    }
  }

  v6 = sub_3E88A4();
  swift_beginAccess();
  v7 = sub_3E88A4();
  swift_endAccess();
  if (v6 != v7)
  {
    swift_beginAccess();
    sub_3E88A4();
    swift_endAccess();
    sub_3E7EA4();
  }

  v8 = sub_3E88D4() & 1;
  swift_beginAccess();
  v9 = sub_3E88D4() & 1;
  v10 = swift_endAccess();
  if (v8 != v9)
  {
    swift_beginAccess();
    sub_3E88D4();
    swift_endAccess();
    v10 = sub_3E7EE4();
  }

  return sub_20A394(v10);
}

uint64_t sub_20A394()
{
  v1 = v0;
  v2 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v2);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for HeaderButtonItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = (v0 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_rebuildMenuBar);
  swift_beginAccess();
  v13 = *v12;

  v13(v14);

  v15 = *(v1 + 232);
  if (v15 == 10)
  {
    if (*(v1 + 168) == 2)
    {
      v21 = vorrq_s8(*(v1 + 200), *(v1 + 216));
      if (!(*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *(v1 + 192) | *(v1 + 184) | *(v1 + 176)))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_3F5630;
        swift_storeEnumTagMultiPayload();
        v32 = v22;
        sub_3E9D44();
      }
    }

    goto LABEL_8;
  }

  if (v15 != 9 || !*(v1 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_podcastDetail))
  {
LABEL_8:
    sub_215684(v4);
    if (*(*(v4 + *(v2 + 32)) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
      v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_3F5630;
      v26 = v25 + v24;
      sub_21DD34(v4, v26, type metadata accessor for ActionMenu);
      if (_UISolariumEnabled())
      {
        v27 = 0;
      }

      else
      {
        v27 = 2;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
      v29 = v28[16];
      v30 = v28[20];
      *(v26 + v28[12]) = v27;
      v31 = sub_3E6AC4();
      (*(*(v31 - 8) + 56))(v26 + v29, 1, 1, v31);
      *(v26 + v30) = 0;
      swift_storeEnumTagMultiPayload();
      v32 = v25;
      sub_3E9D44();
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
      sub_3E9D44();
    }

    v19 = type metadata accessor for ActionMenu;
    v20 = v4;
    return sub_21DD9C(v20, v19);
  }

  v16 = PodcastDetail.lockup.getter();
  v8[3] = type metadata accessor for LibraryShowLockup();
  v8[4] = sub_20C25C(&qword_4F9A60, type metadata accessor for LibraryShowLockup);

  *v8 = v16;
  swift_storeEnumTagMultiPayload();
  sub_21DCCC(v8, v11, type metadata accessor for HeaderButtonItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_3F5630;
  sub_21DD34(v11, v18 + v17, type metadata accessor for HeaderButtonItem);
  v32 = v18;
  sub_3E9D44();

  v19 = type metadata accessor for HeaderButtonItem;
  v20 = v11;
  return sub_21DD9C(v20, v19);
}

uint64_t ModernEpisodesPresenter.dismiss.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_dismiss;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_20A978@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_rebuildMenuBar);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_FE5AC;
  a2[1] = v6;
}

uint64_t sub_20AA04(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_rebuildMenuBar);
  swift_beginAccess();
  *v6 = sub_199400;
  v6[1] = v5;
}

uint64_t ModernEpisodesPresenter.rebuildMenuBar.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_rebuildMenuBar);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ModernEpisodesPresenter.rebuildMenuBar.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_rebuildMenuBar);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ModernEpisodesPresenter.refreshControls.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___refreshControls;
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___refreshControls))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___refreshControls);
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
    swift_allocObject();
    v2 = sub_3E9D94();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t (*ModernEpisodesPresenter.refreshControls.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = ModernEpisodesPresenter.refreshControls.getter();
  return sub_20AD60;
}

uint64_t sub_20AD78()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 232);
  if (v3 <= 4)
  {
    if (v3 >= 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*(v0 + 232) <= 7u)
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          return 0;
        }

        return 0;
      }

LABEL_7:
      v5 = *(v0 + 168);

      return v5;
    }

    if (v3 == 8)
    {
      goto LABEL_7;
    }

    if (v3 != 9)
    {
      v7 = *(v0 + 216);
      v6 = *(v0 + 224);
      v8 = *(v0 + 200);
      v9 = *(v0 + 208);
      v11 = *(v0 + 184);
      v10 = *(v0 + 192);
      if (v1 | v2 | v6 | v7 | v9 | v8 | v10 | v11)
      {
        v12 = v6 | v1 | v7 | v9 | v8 | v10 | v11;
        if ((v2 != 1 || v12) && ((v2 & 0xFFFFFFFFFFFFFFFELL) == 2 && !v12 || (v2 != 4 || v12) && v2 == 5 && !v12))
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t ModernEpisodesPresenter.paginatedPublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_paginatedPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

__n128 ModernEpisodesPresenter.Configuration.init(episodeListType:showsPageHeader:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 65) = a2;
  return result;
}

uint64_t ModernEpisodesPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  ModernEpisodesPresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

uint64_t ModernEpisodesPresenter.init(asPartOf:with:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v116 = v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v115 = v105 - v9;
  v10 = sub_3EC1F4();
  v113 = *(v10 - 8);
  v114 = v10;
  __chkstk_darwin(v10);
  v127 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v126 = v105 - v13;
  v110 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v110);
  v112 = (v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v128 = v105 - v16;
  v125 = sub_3E5FC4();
  v130 = *(v125 - 8);
  __chkstk_darwin(v125);
  v111 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v18 - 8);
  v129 = v105 - v19;
  v20 = sub_3E8944();
  v119 = *(v20 - 8);
  v120 = v20;
  __chkstk_darwin(v20);
  v118 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  v117 = *(v124 - 8);
  __chkstk_darwin(v124);
  v23 = v105 - v22;
  v24 = type metadata accessor for PageContent();
  __chkstk_darwin(v24);
  v26 = v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2[3];
  v149 = a2[2];
  v150 = v27;
  v151 = *(a2 + 32);
  v29 = *a2;
  v28 = a2[1];
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_areEpisodesEmpty) = 2;
  v147 = v29;
  v148 = v28;
  v30 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_pageHeader;
  memset(v132, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  v31 = sub_3E9D94();
  v121 = v30;
  *(v3 + v30) = v31;
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_hideAllHeaderSeparators) = 1;
  v32 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_dismiss;
  LOBYTE(v132[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v3 + v32) = sub_3E9D94();
  v33 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_headerButtonItems;
  *&v132[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  *(v3 + v33) = sub_3E9D94();
  v34 = (v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_rebuildMenuBar);
  *v34 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
  v34[1] = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___refreshControls) = 0;
  v35 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_pageContent;
  *v26 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v3 + v35) = sub_3E9D94();
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_subscriptions) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_paginatedPublisher) = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_podcastDetail) = 0;
  v36 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___downloadingShelf;
  v37 = type metadata accessor for ModernShelf();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v122 = v38 + 56;
  v123 = v39;
  v39((v3 + v36), 1, 1, v37);
  *(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_frozenLockupShelves) = _swiftEmptyArrayStorage;
  v40 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter__episodeOrderingFrozen;
  LOBYTE(v132[0]) = 0;
  sub_3E9E64();
  (*(v117 + 32))(v3 + v40, v23, v124);
  *(v3 + 16) = a1;
  type metadata accessor for FreezableContentSubject();

  sub_3EC394();
  *(v3 + 24) = *&v132[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC394();
  *(v3 + 32) = v132[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1D4F0(v132, v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5358);
  sub_3EC394();
  sub_1D4F0(v132, v3 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1230);
  v124 = a1;
  sub_3EC394();
  sub_1D4F0(v132, v3 + 128);
  v42 = v147;
  v41 = v148;
  *(v3 + 184) = v148;
  v43 = v149;
  v44 = v150;
  *(v3 + 200) = v149;
  *(v3 + 216) = v44;
  v45 = v151;
  *(v3 + 232) = v151;
  *(v3 + 168) = v42;
  v141[2] = v43;
  v141[3] = v44;
  v142 = v45;
  v141[0] = v42;
  v141[1] = v41;
  v146 = v45;
  v145[2] = v43;
  v145[3] = v44;
  v145[0] = v42;
  v145[1] = v41;
  sub_20C1A0(&v147, v132);
  sub_DAD10(v141, v132);
  sub_DAD10(v145, v132);
  sub_3E7E54();
  sub_20C1D8(v145);
  v46 = *(v3 + 184);
  v47 = *(v3 + 216);
  v132[2] = *(v3 + 200);
  v132[3] = v47;
  v133 = *(v3 + 232);
  v132[0] = *(v3 + 168);
  v132[1] = v46;
  sub_DAD10(v132, v143);
  sub_3E7E94();
  sub_20C1D8(v132);
  v48 = *(v3 + 184);
  v49 = *(v3 + 216);
  v143[2] = *(v3 + 200);
  v143[3] = v49;
  v144 = *(v3 + 232);
  v143[0] = *(v3 + 168);
  v143[1] = v48;
  sub_DAD10(v143, &v136);
  sub_3E7ED4();
  sub_20C1D8(v143);
  v50 = v118;
  sub_3E8954();
  (*(v119 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings, v50, v120);
  v51 = *(v3 + 184);
  v52 = *(v3 + 216);
  v138 = *(v3 + 200);
  v139 = v52;
  v140 = *(v3 + 232);
  v136 = *(v3 + 168);
  v137 = v51;
  sub_DAD10(&v136, v134);
  v53 = EpisodeListType.title.getter();
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    if (v140 != 10 || (v57 = v138 | *(&v137 + 1) | v137, v139 | *(&v139 + 1) | v136 | *(&v138 + 1) | v57 | *(&v136 + 1)) && ((v136 - 5) > 1 || v139 | *(&v139 + 1) | *(&v138 + 1) | v57 | *(&v136 + 1)))
    {
      sub_20C1D8(&v136);
      v58 = 0x2000000000;
    }

    else
    {
      v58 = 0xA000000000;
    }

    sub_20C22C(&v147);
    if (HIBYTE(v151) == 1)
    {
      *&v134[0] = v55;
      *(&v134[0] + 1) = v56;
      BYTE4(v134[1]) = BYTE4(v58);
      LODWORD(v134[1]) = v58;

      sub_3E9D74();

      goto LABEL_13;
    }
  }

  else
  {
    sub_20C1D8(&v136);
    sub_20C22C(&v147);
  }

  memset(v134, 0, 21);

  sub_3E9D74();

LABEL_13:
  v59 = *(v3 + 184);
  v60 = *(v3 + 216);
  v134[2] = *(v3 + 200);
  v134[3] = v60;
  v135 = *(v3 + 232);
  v134[0] = *(v3 + 168);
  v134[1] = v59;
  sub_DAD10(v134, v131);
  v61 = sub_3E7EB4();
  v63 = v62;
  sub_20C1D8(v134);
  if (v63)
  {
    v64 = [objc_opt_self() mainBundle];
    v104._countAndFlagsBits = 0x800000000042AEA0;
    v152._countAndFlagsBits = 0x6C6C754620656553;
    v152._object = 0xED0000776F685320;
    v153.value._countAndFlagsBits = 0;
    v153.value._object = 0;
    v65.super.isa = v64;
    v154._countAndFlagsBits = 0;
    v154._object = 0xE000000000000000;
    v121 = sub_3E5A74(v152, v153, v65, v154, v104);
    v108 = v66;

    v67 = *(v37 + 20);
    v68 = type metadata accessor for Header(0);
    (*(*(v68 - 8) + 56))(&v129[v67], 1, 1, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_3F5630;
    v69 = v111;
    sub_3E5FB4();
    v117 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v109 = v70;
    v71 = *(v130 + 8);
    v130 += 8;
    v106 = v71;
    v71(v69, v125);
    v72 = sub_3E7784();
    (*(*(v72 - 8) + 56))(v128, 1, 1, v72);
    v73 = v112;
    *v112 = v61;
    *(v73 + 8) = v63;
    swift_storeEnumTagMultiPayload();
    v74 = v126;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v110 = type metadata accessor for FlowAction(0);
    v75 = swift_allocObject();
    sub_21DD34(v73, v75 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v76 = (v75 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v76 = 0;
    v76[1] = 0;
    *(v75 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v75 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v75 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v77 = v113;
    v78 = v74;
    v79 = v114;
    (*(v113 + 16))(v127, v78, v114);
    v119 = sub_3EC634();
    v80 = *(v119 - 8);
    v118 = *(v80 + 56);
    v105[1] = v80 + 56;
    v107 = v37;
    v81 = v115;
    (v118)(v115, 1, 1, v119);
    sub_3E5FB4();
    v82 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v84 = v83;
    v106(v69, v125);
    (*(v77 + 8))(v126, v79);
    sub_21DD9C(v73, type metadata accessor for FlowDestination);
    *(v75 + 16) = v82;
    *(v75 + 24) = v84;
    v85 = v108;
    *(v75 + 32) = v121;
    *(v75 + 40) = v85;
    *(v75 + 48) = 48;
    (*(v77 + 32))(v75 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v127, v79);
    sub_FACC(v81, v75 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
    v130 = sub_20C25C(&qword_4F8A40, type metadata accessor for FlowAction);
    v86 = type metadata accessor for Link();
    v87 = v120;
    *(v120 + 56) = v86;
    *(v87 + 64) = sub_20C25C(&qword_4EDDC8, type metadata accessor for Link);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v87 + 32));
    (v118)(boxed_opaque_existential_0Tm + v86[10], 1, 1, v119);
    v89 = v86[11];
    v90 = sub_3E5764();
    (*(*(v90 - 8) + 56))(boxed_opaque_existential_0Tm + v89, 1, 1, v90);
    v91 = v109;
    *boxed_opaque_existential_0Tm = v117;
    boxed_opaque_existential_0Tm[1] = v91;
    boxed_opaque_existential_0Tm[2] = v121;
    boxed_opaque_existential_0Tm[3] = v85;
    boxed_opaque_existential_0Tm[4] = 0;
    boxed_opaque_existential_0Tm[5] = 0;
    sub_FACC(v128, boxed_opaque_existential_0Tm + v86[7], &qword_4F1D50);
    *(boxed_opaque_existential_0Tm + v86[8]) = 48;
    v92 = boxed_opaque_existential_0Tm + v86[9];
    *v92 = v75;
    *(v92 + 8) = v131[0];
    v93 = v130;
    *(v92 + 3) = v110;
    *(v92 + 4) = v93;

    v94 = sub_3E5DC4();
    v95 = *(*(v94 - 8) + 56);
    v96 = v116;
    v95(v116, 1, 1, v94);
    v97 = v107;
    v98 = v129;
    v99 = &v129[v107[12]];
    *(v99 + 4) = 0;
    *v99 = 0u;
    *(v99 + 1) = 0u;
    (v118)(&v98[v97[13]], 1, 1, v119);
    v100 = v97[9];
    v101 = &v98[v97[8]];
    v95(&v98[v100], 1, 1, v94);
    *v98 = 0x6B6E694C776F6853;
    *(v98 + 1) = 0xE800000000000000;
    v102 = &v98[v97[6]];
    *v102 = 19;
    *(v102 + 3) = 256;
    *(v102 + 2) = 0;
    *(v102 + 1) = 1;
    *&v98[v97[7]] = v120;
    sub_51F9C(v96, &v98[v100], &unk_4E9EE0);
    v98[v97[10]] = 1;
    v98[v97[11]] = 0;
    *v101 = 0;
    *(v101 + 1) = 0;
    v123(v98, 0, 1, v97);
    sub_FACC(v98, v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_fullShowLink, &unk_503DA0);
  }

  else
  {

    v123((v3 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_fullShowLink), 1, 1, v37);
  }

  return v3;
}

uint64_t sub_20C25C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ModernEpisodesPresenter.interactionContextPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
  swift_beginAccess();
  v4 = sub_3E8944();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, v1 + v3, v4);
  (*(v5 + 56))(a1, 0, 1, v4);
  sub_3E63E4();
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall ModernEpisodesPresenter.viewDidLoad()()
{
  v1 = v0;
  v151 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  v145 = *(v2 - 8);
  v146 = *(v145 + 64);
  __chkstk_darwin(v2 - 8);
  v150 = &v104 - v3;
  v4 = type metadata accessor for ModernShelf();
  v140 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v149 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v5;
  __chkstk_darwin(v6);
  v139 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v8 - 8);
  v138 = &v104 - v9;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5D78);
  __chkstk_darwin(v134);
  v133 = &v104 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E18);
  v136 = *(v11 - 8);
  v137 = v11;
  __chkstk_darwin(v11);
  v135 = &v104 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E20);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v156 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E28);
  v147 = *(v14 - 8);
  v148 = v14;
  __chkstk_darwin(v14);
  v144 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E30);
  v128 = *(v16 - 8);
  v129 = v16;
  __chkstk_darwin(v16);
  v127 = &v104 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E38);
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v104 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E40);
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v118 = &v104 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E48);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v104 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E50);
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v107 = &v104 - v21;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E58);
  v112 = *(v116 - 8);
  __chkstk_darwin(v116);
  v108 = &v104 - v22;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E60);
  v114 = *(v117 - 8);
  __chkstk_darwin(v117);
  v109 = &v104 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E68);
  v153 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v104 - v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E70);
  v132 = *(v154 - 8);
  __chkstk_darwin(v154);
  v28 = &v104 - v27;
  sub_20DC98();
  v29 = *(v0 + 232);
  v157 = v0;
  if (v29 == 9)
  {
    v30 = v0[22];
    v31 = v157[21];
    v32 = v157[5];
    ObjectType = swift_getObjectType();
    v34 = v31;
    v1 = v157;
    *(v1 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_podcastDetail) = (*(v32 + 312))(v34, v30, ObjectType, v32);
  }

  sub_20A394();
  v35 = v1[4];
  v36 = v1[5];
  v37 = swift_getObjectType();
  v38 = *(v1 + 23);
  v39 = *(v1 + 27);
  v171[2] = *(v1 + 25);
  v171[3] = v39;
  v172 = *(v1 + 232);
  v171[0] = *(v1 + 21);
  v171[1] = v38;
  v40 = (*(v36 + 384))(v171, v37, v36);
  v41 = *(v36 + 392);
  v152 = v40;
  v105 = v35;
  v42 = v41(v40, 50, v37, v36);
  v43 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_paginatedPublisher;
  swift_beginAccess();
  *(v1 + v43) = v42;

  v155 = v42;
  *&v169[0] = v42;
  swift_getKeyPath();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E78);
  v124 = sub_886BC(&qword_4F9E80, &qword_4F9E78);
  v125 = v44;
  sub_3EA014();

  sub_886BC(&qword_4F9E88, &qword_4F9E68);
  sub_3EA174();
  (*(v153 + 8))(v26, v24);
  sub_886BC(&qword_4F9E90, &qword_4F9E70);
  v45 = v154;
  v46 = sub_3E9F94();
  (*(v132 + 8))(v28, v45);
  *&v169[0] = v46;
  swift_allocObject();
  swift_weakInit();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
  sub_886BC(&qword_4F62B0, &qword_4F6A10);
  v153 = v47;
  sub_3EA1A4();

  v48 = v1 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_subscriptions;
  swift_beginAccess();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  v50 = sub_886BC(&qword_4F59C8, &qword_4F59C0);
  v131 = v49;
  v132 = v48;
  v130 = v50;
  sub_3E9C94();
  swift_endAccess();

  v51 = *(v1 + 23);
  v52 = *(v1 + 27);
  v169[2] = *(v1 + 25);
  v169[3] = v52;
  v170 = *(v1 + 232);
  v169[0] = *(v1 + 21);
  v169[1] = v51;
  v154 = sub_20DF78(v169, v46);
  v53 = *(v1 + 23);
  v54 = *(v1 + 27);
  v166 = *(v1 + 25);
  v167 = v54;
  v168 = *(v1 + 232);
  v164 = *(v1 + 21);
  v165 = v53;
  v55 = sub_3E7F14();
  v126 = v46;
  if (v55)
  {
    *&v159 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EE8);
    sub_886BC(&qword_4F9EF0, &qword_4F9EE8);
    sub_20C25C(&qword_4F6EF0, &type metadata accessor for EpisodeListSettings);
    v56 = v107;
    sub_3EA174();
    v57 = swift_allocObject();
    *(v57 + 16) = v105;
    *(v57 + 24) = v36;
    sub_886BC(&qword_4F9EF8, &qword_4F9E50);
    swift_unknownObjectRetain();
    v58 = v108;
    v59 = v115;
    sub_3E9FA4();

    (*(v111 + 8))(v56, v59);
    sub_886BC(&qword_4F9F00, &qword_4F9E58);
    v60 = v109;
    v61 = v116;
    sub_3EA184();
    (*(v112 + 8))(v58, v61);
    sub_886BC(&qword_4F9F08, &qword_4F9E60);
    v62 = v117;
    v63 = sub_3E9F34();
    (*(v114 + 8))(v60, v62);
    *&v159 = v63;
    v64 = sub_3E9F94();

    *&v159 = v64;
    v158[0] = v46;
    v65 = v118;
    sub_3E9FE4();
    sub_886BC(&qword_4F9F10, &qword_4F9E40);
    v66 = v119;
    v67 = v122;
    sub_3E9FA4();
    (*(v120 + 8))(v65, v67);
    sub_886BC(&qword_4F9F18, &qword_4F9E48);
    v68 = v123;
    v153 = sub_3E9F94();

    (*(v121 + 8))(v66, v68);
  }

  else
  {
    LOBYTE(v159) = 0;
    v69 = v106;
    sub_3E9DF4();
    sub_886BC(&qword_4F9E98, &qword_4F9E38);
    v70 = v113;
    v153 = sub_3E9F94();
    (*(v110 + 8))(v69, v70);
  }

  if ([objc_opt_self() isRunningOnDesktop])
  {
    v71 = 3;
  }

  else
  {
    v71 = 4;
  }

  __swift_project_boxed_opaque_existential_1(v157 + 16, v157[19]);
  *&v159 = sub_3E6DB4();
  *(swift_allocObject() + 16) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EA0);
  sub_886BC(&qword_4F8060, &qword_4F8058);
  v72 = v127;
  sub_3EA024();

  sub_886BC(&qword_4F9EA8, &qword_4F9E30);
  v73 = v129;
  v74 = sub_3E9F94();
  (*(v128 + 8))(v72, v73);
  v75 = sub_20F4E8();
  *&v159 = v155;
  v76 = sub_3E9F94();
  v158[0] = v154;
  v123 = v74;
  v158[12] = v74;
  v158[11] = v75;
  v128 = v75;
  v129 = v76;
  v158[9] = v153;
  v158[10] = v76;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  sub_3E9E74();
  swift_endAccess();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63F0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EB8);
  sub_886BC(&qword_4F63F8, &qword_4F63F0);
  sub_886BC(&qword_4F9EC0, &qword_4F9EB0);
  sub_886BC(&qword_4F5DC8, &qword_4F5DC0);
  sub_886BC(&qword_4F9EC8, &qword_4F9EB8);
  sub_886BC(&qword_4F5DE0, &qword_4F5D78);
  v77 = v135;
  sub_3E9BC4();
  sub_36174(0, &qword_4F10B0);
  v78 = sub_3EDBC4();
  *&v159 = v78;
  v79 = sub_3EDB64();
  v80 = v138;
  (*(*(v79 - 8) + 56))(v138, 1, 1, v79);
  sub_886BC(&qword_4F9ED0, &qword_4F9E18);
  sub_87870();
  v81 = v137;
  sub_3EA114();
  sub_FCF8(v80, &qword_4F69E0);
  (*(v136 + 8))(v77, v81);

  v82 = *(v157 + 23);
  v83 = *(v157 + 27);
  v161 = *(v157 + 25);
  v162 = v83;
  v163 = *(v157 + 232);
  v84 = v157;
  v159 = *(v157 + 21);
  v160 = v82;
  v85 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_fullShowLink;
  sub_DAD10(&v159, v158);
  v86 = v139;
  sub_20F9EC(v139);
  v87 = swift_allocObject();
  swift_weakInit();
  v88 = v150;
  sub_FBD0(v84 + v85, v150, &unk_503DA0);
  v89 = v86;
  v90 = v149;
  sub_21DCCC(v89, v149, type metadata accessor for ModernShelf);
  v91 = (*(v145 + 80) + 24) & ~*(v145 + 80);
  v92 = (v146 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = (*(v140 + 80) + v92 + 65) & ~*(v140 + 80);
  v94 = (v142 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  *(v95 + 16) = v87;
  sub_FACC(v88, v95 + v91, &unk_503DA0);
  v96 = v95 + v92;
  v97 = v162;
  *(v96 + 32) = v161;
  *(v96 + 48) = v97;
  *(v96 + 64) = v163;
  v98 = v160;
  *v96 = v159;
  *(v96 + 16) = v98;
  sub_21DCCC(v90, v95 + v93, type metadata accessor for ModernShelf);
  *(v95 + v94) = v151;
  v99 = swift_allocObject();
  *(v99 + 16) = sub_2142D4;
  *(v99 + 24) = v95;
  type metadata accessor for PageContent();
  sub_886BC(&qword_4F9ED8, &qword_4F9E20);
  v100 = v143;
  v101 = v144;
  v102 = v156;
  sub_3E9FA4();

  (*(v141 + 8))(v102, v100);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F9EE0, &qword_4F9E28);
  v103 = v148;
  sub_3EA1A4();

  (*(v147 + 8))(v101, v103);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  v158[0] = ModernEpisodesPresenter.refreshControls.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  sub_886BC(&qword_4F94C8, &qword_4F94C0);
  sub_3EA1A4();

  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_20DC98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  v6[1] = *(v0 + 24);
  type metadata accessor for FreezableContentSubject();
  sub_20C25C(&qword_4F94D8, type metadata accessor for FreezableContentSubject);
  sub_1F9300();
  sub_3EA174();
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F94E8, &qword_4F94D0);
  sub_3EA1A4();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_20DEEC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1 == 0;
    v4 = *(result + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_areEpisodesEmpty);
    *(result + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_areEpisodesEmpty) = v3;
    if (v4 == 2 || ((v3 ^ v4) & 1) != 0)
    {
      sub_20A394();
    }
  }

  return result;
}

uint64_t sub_20DF78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5B10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v12 - 8);
  v51 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1D8);
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1E0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v42 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1E8);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v42 - v18;
  v19 = sub_3E7EB4();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v23 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    v25 = (*(v23 + 328))(v21, v22, ObjectType, v23);

    v52[0] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1F0);
    sub_886BC(&qword_4FA1F8, &qword_4FA1F0);
    v26 = sub_3E9EF4();

    v52[9] = v42;
    v52[10] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
    v42 = v5;
    sub_886BC(&qword_4FA208, &qword_4FA200);
    sub_886BC(&qword_4F62B0, &qword_4F6A10);
    sub_3E9FE4();

    v27 = swift_allocObject();
    v28 = *(a1 + 48);
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 64) = v28;
    *(v27 + 80) = *(a1 + 64);
    v29 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_21DC68;
    *(v30 + 24) = v27;
    sub_DAD10(a1, v52);
    sub_886BC(&qword_4FA210, &qword_4FA1D8);
    v31 = v44;
    v32 = v45;
    sub_3EA024();

    (*(v43 + 8))(v16, v31);
    sub_36174(0, &qword_4F10B0);
    v33 = sub_3EDBC4();
    v52[0] = v33;
    v34 = sub_3EDB64();
    v35 = v51;
    (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
    sub_886BC(&qword_4FA218, &qword_4FA1E0);
    sub_87870();
    v36 = v46;
    v37 = v49;
    sub_3EA114();
    sub_FCF8(v35, &qword_4F69E0);

    (*(v47 + 8))(v32, v37);
    sub_886BC(&qword_4FA220, &qword_4FA1E8);
    v38 = v50;
    v39 = sub_3E9F94();
    (*(v48 + 8))(v36, v38);
  }

  else
  {
    v40 = type metadata accessor for ModernShelf();
    (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
    sub_3E9DF4();
    sub_886BC(&qword_4F5B20, &qword_4F5B10);
    v39 = sub_3E9F94();
    (*(v9 + 8))(v11, v8);
  }

  return v39;
}

uint64_t static ModernEpisodesPresenter.hasHiddenPlayedEpisodesPublisher(episodeListType:episodeSettingsPublisher:libraryDataProvider:lockupCountPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v35 = a4;
  v36 = a3;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E40);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v30 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E48);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E50);
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E58);
  v33 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E60);
  v34 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  if (sub_3E7F14())
  {
    v45 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EE8);
    sub_886BC(&qword_4F9EF0, &qword_4F9EE8);
    sub_20C25C(&qword_4F6EF0, &type metadata accessor for EpisodeListSettings);
    sub_3EA174();
    v20 = swift_allocObject();
    v21 = v35;
    *(v20 + 16) = v36;
    *(v20 + 24) = v21;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10);
    sub_886BC(&qword_4F9EF8, &qword_4F9E50);
    sub_3E9FA4();

    (*(v32 + 8))(v13, v11);
    sub_886BC(&qword_4F9F00, &qword_4F9E58);
    sub_886BC(&qword_4F62B0, &qword_4F6A10);
    sub_3EA184();
    (*(v33 + 8))(v16, v14);
    sub_886BC(&qword_4F9F08, &qword_4F9E60);
    v22 = sub_3E9F34();
    (*(v34 + 8))(v19, v17);
    v45 = v22;
    v23 = sub_3E9F94();

    v24 = v37;
    v44 = v38;
    v45 = v23;
    sub_3E9FE4();
    sub_886BC(&qword_4F9F10, &qword_4F9E40);
    v25 = v39;
    v26 = v42;
    sub_3E9FA4();
    (*(v40 + 8))(v24, v26);
    sub_886BC(&qword_4F9F18, &qword_4F9E48);
    v27 = v43;
    v28 = sub_3E9F94();

    (*(v41 + 8))(v25, v27);
  }

  else
  {
    LOBYTE(v45) = 0;
    sub_3E9DF4();
    sub_886BC(&qword_4F9E98, &qword_4F9E38);
    v28 = sub_3E9F94();
    (*(v6 + 8))(v8, v5);
  }

  return v28;
}

uint64_t sub_20EE54@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1C8);
  result = sub_3E95A4();
  *a1 = result;
  return result;
}

uint64_t sub_20EE94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20EED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a2;
  v53 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1C0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v53 - v5);
  v73 = type metadata accessor for BubbleTip();
  v7 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E7274();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v53 - v14;
  v15 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1D0);
  result = sub_3EE5D4();
  v17 = result;
  v18 = 0;
  v19 = *(v15 + 64);
  v55 = v15 + 64;
  v62 = v15;
  v20 = 1 << *(v15 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v54 = (v20 + 63) >> 6;
  v60 = v10 + 16;
  v64 = v10;
  v23 = (v7 + 56);
  v71 = v7;
  v24 = (v7 + 48);
  v58 = result + 64;
  v61 = result;
  v57 = v9;
  v56 = v12;
  v59 = v10 + 32;
  if (v22)
  {
    while (1)
    {
      v66 = (v22 - 1) & v22;
      v67 = v18;
      v25 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_10:
      v30 = v62;
      v29 = v63;
      v31 = *(v62 + 48);
      v32 = v64;
      v33 = *(v64 + 16);
      v69 = *(v64 + 72) * v25;
      v34 = v25;
      v33(v63, v31 + v69, v9);
      v35 = *(v30 + 56);
      v70 = v34;
      v36 = *(v35 + 8 * v34);
      v68 = *(v32 + 32);
      v68(v12, v29, v9);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = v36 + 32;
        v65 = v36;

        v39 = _swiftEmptyArrayStorage;
        do
        {
          sub_1F958(v38, v75);
          v40 = v76;
          v41 = __swift_project_boxed_opaque_existential_1(v75, v76);
          v42 = __chkstk_darwin(v41);
          v44 = &v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v45 + 16))(v44, v42);
          BubbleTip.init<A>(from:style:)(v44, v40, v6);
          v46 = v73;
          (*v23)(v6, 0, 1, v73);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          if ((*v24)(v6, 1, v46) == 1)
          {
            sub_FCF8(v6, &qword_4FA1C0);
          }

          else
          {
            sub_21DCCC(v6, v72, type metadata accessor for BubbleTip);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_E08D8(0, v39[2] + 1, 1, v39);
            }

            v48 = v39[2];
            v47 = v39[3];
            if (v48 >= v47 >> 1)
            {
              v39 = sub_E08D8(v47 > 1, v48 + 1, 1, v39);
            }

            v39[2] = v48 + 1;
            sub_21DCCC(v72, v39 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v48, type metadata accessor for BubbleTip);
          }

          v38 += 40;
          --v37;
        }

        while (v37);

        v9 = v57;
        v12 = v56;
      }

      else
      {
        v39 = _swiftEmptyArrayStorage;
      }

      v49 = v70;
      *(v58 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v17 = v61;
      result = (v68)(*(v61 + 48) + v69, v12, v9);
      *(*(v17 + 56) + 8 * v49) = v39;
      v50 = *(v17 + 16);
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        break;
      }

      *(v17 + 16) = v52;
      v22 = v66;
      v18 = v67;
      if (!v66)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v18;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v54)
      {
        *v53 = v17;
        return result;
      }

      v28 = *(v55 + 8 * v27);
      ++v26;
      if (v28)
      {
        v66 = (v28 - 1) & v28;
        v67 = v27;
        v25 = __clz(__rbit64(v28)) | (v27 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20F4E8()
{
  v1 = type metadata accessor for ObserverQueue();
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7008);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7010);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E38);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 232);
  if (v16 == 2)
  {
    v19 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v19 + 272))(v15, v14, ObjectType, v19);
LABEL_7:
    swift_storeEnumTagMultiPayload();

    v23 = sub_188E58(v3);

    sub_21DD9C(v3, type metadata accessor for ObserverQueue);
    v31 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0);
    sub_886BC(&qword_4F61F0, &qword_4F61E0);
    sub_3EA024();

    sub_886BC(&qword_4F7078, &qword_4F7008);
    v24 = v28;
    sub_3EA174();
    (*(v27 + 8))(v6, v24);
    sub_886BC(&qword_4F70A8, &qword_4F7010);
    v25 = v30;
    v18 = sub_3E9F94();

    (*(v29 + 8))(v9, v25);
    return v18;
  }

  if (v16 == 10)
  {
    v17 = vorrq_s8(*(v0 + 200), *(v0 + 216));
    if (!(*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | *(v0 + 192) | *(v0 + 184) | v14 | v15))
    {
      v21 = *(v0 + 40);
      v22 = swift_getObjectType();
      (*(v21 + 264))(v22, v21);
      goto LABEL_7;
    }
  }

  v32 = 0;
  sub_3E9DF4();
  sub_886BC(&qword_4F9E98, &qword_4F9E38);
  v18 = sub_3E9F94();
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t sub_20F9EC@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___downloadingShelf;
  swift_beginAccess();
  sub_FBD0(v1 + v9, v8, &unk_503DA0);
  v10 = type metadata accessor for ModernShelf();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_21DCCC(v8, a1, type metadata accessor for ModernShelf);
  }

  sub_FCF8(v8, &unk_503DA0);
  sub_20FC20(a1);
  sub_21DD34(a1, v5, type metadata accessor for ModernShelf);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_51F9C(v5, v1 + v9, &unk_503DA0);
  return swift_endAccess();
}

uint64_t sub_20FC20@<X0>(char *a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v2 - 8);
  v87 = &v67 - v3;
  v4 = sub_3EC544();
  __chkstk_darwin(v4 - 8);
  v92 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - v7;
  v85 = sub_3EC1F4();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v67 - v11;
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v14 - 8);
  v16 = &v67 - v15;
  v79 = &v67 - v15;
  v17 = sub_3E5FC4();
  v72 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() mainBundle];
  v102._countAndFlagsBits = 0xD000000000000014;
  v66._countAndFlagsBits = 0xE000000000000000;
  v102._object = 0x800000000042B110;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v22.super.isa = v21;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v80 = sub_3E5A74(v102, v103, v22, v104, v66);
  v78 = v23;

  v89 = 0x800000000042B130;
  v88 = type metadata accessor for ModernShelf();
  v24 = *(v88 + 20);
  v25 = type metadata accessor for Header(0);
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
  v93 = swift_allocObject();
  v91 = xmmword_3F5630;
  *(v93 + 16) = xmmword_3F5630;
  sub_3E5FB4();
  v83 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v82 = v26;
  v27 = *(v18 + 8);
  v71 = v18 + 8;
  v73 = v27;
  v27(v20, v17);
  v28 = sub_3E7784();
  (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
  swift_storeEnumTagMultiPayload();
  sub_3E80E4();
  sub_3E8574();
  v75 = sub_3E5DC4();
  v29 = *(v75 - 8);
  v76 = *(v29 + 56);
  v77 = v29 + 56;
  v76(v8, 1, 1, v75);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
  sub_3EC044();
  *(swift_allocObject() + 16) = v91;
  sub_3E8504();
  v70 = v8;
  sub_3EBFC4();

  sub_3EC534();
  v30 = v74;
  sub_3EC1C4();
  v101 = v95;
  sub_FCF8(&v101, &unk_4F8A10);
  v100 = v96;
  sub_FCF8(&v100, &qword_4E94E0);
  v99 = v97;
  sub_FCF8(&v99, &unk_4F8A20);
  sub_16AC0(v98);
  sub_FCF8(v8, &unk_4E9EE0);
  v69 = type metadata accessor for FlowAction(0);
  v31 = swift_allocObject();
  v32 = v68;
  sub_21DD34(v68, v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v33 = (v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v33 = 0;
  v33[1] = 0;
  *(v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v31 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v34 = v84;
  v35 = v81;
  v36 = v30;
  v37 = v30;
  v38 = v85;
  (*(v84 + 16))(v81, v36, v85);
  *&v91 = sub_3EC634();
  v39 = *(v91 - 8);
  v90 = *(v39 + 56);
  v92 = (v39 + 56);
  v40 = v87;
  v90(v87, 1, 1, v91);
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;
  v73(v20, v72);
  (*(v34 + 8))(v37, v38);
  sub_21DD9C(v32, type metadata accessor for FlowDestination);
  *(v31 + 16) = v41;
  *(v31 + 24) = v43;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 48;
  (*(v34 + 32))(v31 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v35, v38);
  sub_FACC(v40, v31 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v44 = sub_20C25C(&qword_4F8A40, type metadata accessor for FlowAction);
  sub_3E8574();
  v45 = v78;

  v46 = v80;
  sub_3EC5A4();

  v90(v40, 0, 1, v91);
  v47 = type metadata accessor for Link();
  v48 = v93;
  *(v93 + 56) = v47;
  *(v48 + 64) = sub_20C25C(&qword_4EDDC8, type metadata accessor for Link);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v48 + 32));
  v50 = v47[11];
  v51 = sub_3E5764();
  (*(*(v51 - 8) + 56))(boxed_opaque_existential_0Tm + v50, 1, 1, v51);
  v52 = v82;
  *boxed_opaque_existential_0Tm = v83;
  boxed_opaque_existential_0Tm[1] = v52;
  boxed_opaque_existential_0Tm[2] = v46;
  boxed_opaque_existential_0Tm[3] = v45;
  boxed_opaque_existential_0Tm[4] = 0;
  boxed_opaque_existential_0Tm[5] = 0;
  sub_FACC(v79, boxed_opaque_existential_0Tm + v47[7], &qword_4F1D50);
  *(boxed_opaque_existential_0Tm + v47[8]) = 48;
  v53 = boxed_opaque_existential_0Tm + v47[9];
  *v53 = v31;
  *(v53 + 8) = v94;
  *(v53 + 3) = v69;
  *(v53 + 4) = v44;
  sub_FACC(v40, boxed_opaque_existential_0Tm + v47[10], &unk_4E9170);
  v54 = v70;
  v55 = v75;
  v56 = v76;
  v76(v70, 1, 1, v75);
  v57 = v88;
  v58 = v86;
  v59 = &v86[*(v88 + 48)];
  *(v59 + 4) = 0;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  v60 = v57[13];
  sub_3E85C4();
  v61 = v89;
  sub_3EC584();

  v90(&v58[v60], 0, 1, v91);
  v62 = v57[9];
  v63 = &v58[v57[8]];
  v56(&v58[v62], 1, 1, v55);
  *v58 = 0xD000000000000024;
  *(v58 + 1) = v61;
  v64 = &v58[v57[6]];
  *v64 = 19;
  *(v64 + 3) = 256;
  *(v64 + 2) = 0;
  *(v64 + 1) = 1;
  *&v58[v57[7]] = v93;
  result = sub_51F9C(v54, &v58[v62], &unk_4E9EE0);
  v58[v57[10]] = 1;
  v58[v57[11]] = 0;
  *v63 = 0;
  *(v63 + 1) = 0;
  return result;
}

uint64_t sub_210860()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t ModernEpisodesPresenter.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 128);
  sub_6BE48(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  v1 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
  v2 = sub_3E8944();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_fullShowLink, &unk_503DA0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___downloadingShelf, &unk_503DA0);

  v3 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter__episodeOrderingFrozen;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5AE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ModernEpisodesPresenter.__deallocating_deinit()
{
  ModernEpisodesPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_210B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
  swift_beginAccess();
  v5 = sub_3E8944();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a1, v3 + v4, v5);
  (*(v6 + 56))(a1, 0, 1, v5);
  sub_3E63E4();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ModernEpisodesPresenter.buildMenuBar(with:)(Class isa)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v92 = &v82 - v5;
  v88 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v88);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v82 - v9;
  v11 = type metadata accessor for ActionMenu.Child(0);
  v94 = *(v11 - 8);
  __chkstk_darwin(v11);
  v96 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v82 - v18;
  __chkstk_darwin(v19);
  v21 = (&v82 - v20);
  v22 = sub_625AC(_swiftEmptyArrayStorage);
  v99 = _swiftEmptyArrayStorage;
  v23 = sub_21AD3C(1);
  sub_4143C(v23);
  v24 = sub_2176DC(1);
  sub_4143C(v24);
  v25 = v99[2];
  v91 = v1;
  v93 = v11;
  v84 = v10;
  if (v25)
  {
    v90 = v14;
    if (qword_4E8BB0 != -1)
    {
      swift_once();
    }

    v26 = qword_504288;
    v27 = swift_allocObject();
    v27[2] = v22;
    v27[3] = &v99;
    v27[4] = v2;
    v28 = swift_allocObject();
    v85 = sub_21D478;
    v86 = v27;
    *(v28 + 16) = sub_21D478;
    *(v28 + 24) = v27;
    aBlock[4] = sub_21D494;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C7E8;
    aBlock[3] = &block_descriptor_17;
    v29 = _Block_copy(aBlock);

    [(objc_class *)isa replaceChildrenOfMenuForIdentifier:v26 fromChildrenBlock:v29];
    _Block_release(v29);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
      goto LABEL_40;
    }

    v14 = v90;
    v2 = v91;
    v11 = v93;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  aBlock[0] = _swiftEmptyArrayStorage;
  v30 = _UISolariumEnabled();
  v87 = isa;
  v83 = v7;
  v89 = v22;
  if (v30)
  {
    sub_2161C4(v21);
    v31 = sub_E0900(0, 1, 1, _swiftEmptyArrayStorage);
    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = sub_E0900(v32 > 1, v33 + 1, 1, v31);
    }

    v31[2] = v33 + 1;
    v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v35 = *(v14 + 72);
    sub_FACC(v21, v31 + v34 + v35 * v33, &qword_4EA7C8);
    aBlock[0] = v31;
    v2 = v91;
  }

  else
  {
    v35 = *(v14 + 72);
    v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1458);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_3F5300;
  v37 = v36 + v34;
  sub_216D2C((v36 + v34));
  v38 = *(v2 + 21);
  v39 = *(v2 + 22);
  v40 = v2[232];
  if (v40 == 2)
  {
    sub_219D84(v38, v39, (v37 + v35));
  }

  else if (v40 == 10 && (v41 = vorrq_s8(*(v2 + 200), *(v2 + 216)), !(*&vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL)) | *(v2 + 24) | *(v2 + 23) | v39 | v38)))
  {
    sub_219694((v37 + v35));
  }

  else
  {
    (*(v94 + 56))(v37 + v35, 1, 1, v11);
  }

  sub_218B58((v37 + 2 * v35));
  sub_414BC(v36);
  v90 = aBlock[0];
  v42 = *(aBlock[0] + 16);
  if (v42)
  {
    v43 = v90 + v34;
    v44 = (v94 + 48);
    v45 = _swiftEmptyArrayStorage;
    do
    {
      v46 = v95;
      sub_FBD0(v43, v95, &qword_4EA7C8);
      sub_FACC(v46, v16, &qword_4EA7C8);
      if ((*v44)(v16, 1, v11) == 1)
      {
        sub_FCF8(v16, &qword_4EA7C8);
      }

      else
      {
        sub_21DCCC(v16, v96, type metadata accessor for ActionMenu.Child);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_E0140(0, v45[2] + 1, 1, v45);
        }

        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          v45 = sub_E0140(v47 > 1, v48 + 1, 1, v45);
        }

        v45[2] = v48 + 1;
        sub_21DCCC(v96, v45 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v48, type metadata accessor for ActionMenu.Child);
        v11 = v93;
      }

      v43 += v35;
      --v42;
    }

    while (v42);

    v2 = v91;
    if (v45[2])
    {
LABEL_29:
      v49 = sub_3E7784();
      v50 = *(*(v49 - 8) + 56);
      v50(v92, 1, 1, v49);
      v51 = v2;
      v52 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v54 = v53;
      v55 = v88;
      v56 = *(v88 + 28);
      v57 = v84;
      v50(v84 + v56, 1, 1, v49);
      *v57 = v52;
      v57[1] = v54;
      v57[2] = 0;
      v57[3] = 0xE000000000000000;
      v57[4] = 0;
      v57[5] = 0;
      sub_51F9C(v92, v57 + v56, &qword_4F1D50);
      *(v57 + *(v55 + 32)) = v45;
      v29 = v51;
      v58 = v51[2];
      sub_36174(0, &qword_4EB5D0);
      v59 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v57 + v56);
      LOBYTE(v56) = sub_3ED204();
      v97 = v89;
      v79 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(v45, v58);
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      v104.value._countAndFlagsBits = 0;
      v104.value._object = 0;
      v100.value.super.isa = v59;
      v100.is_nil = v56;
      v60.value = (&dword_0 + 1);
      isa = sub_3EDE14(v102, v104, v100, v60, 0xFFFFFFFFFFFFFFFFLL, v79, v81).super.super.isa;
      sub_21DD9C(v57, type metadata accessor for ActionMenu);
      if (qword_4E8BA8 == -1)
      {
LABEL_30:
        [(objc_class *)v87 insertSiblingMenu:isa afterMenuForIdentifier:qword_504280];

        v2 = v29;
        goto LABEL_33;
      }

LABEL_40:
      swift_once();
      goto LABEL_30;
    }
  }

  else
  {

    v45 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v61 = sub_21B28C();
  if (v61[2])
  {
    v96 = v61;
    v62 = sub_3E7784();
    v63 = *(*(v62 - 8) + 56);
    v64 = v92;
    v63(v92, 1, 1, v62);
    v65 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v67 = v66;
    v68 = v88;
    v69 = *(v88 + 28);
    v70 = v2;
    v71 = v83;
    v63(v83 + v69, 1, 1, v62);
    *v71 = v65;
    v71[1] = v67;
    v71[2] = 0;
    v71[3] = 0xE000000000000000;
    v71[4] = 0;
    v71[5] = 0;
    sub_51F9C(v64, v71 + v69, &qword_4F1D50);
    v72 = *(v68 + 32);
    v73 = v96;
    *(v71 + v72) = v96;
    v74 = *(v70 + 2);
    sub_36174(0, &qword_4EB5D0);
    v75 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v71 + v69);
    LOBYTE(v65) = sub_3ED204();
    v97 = v89;
    v80 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(v73, v74);
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v105.value._countAndFlagsBits = 0;
    v105.value._object = 0;
    v101.value.super.isa = v75;
    v101.is_nil = v65;
    v76.value = (&dword_0 + 1);
    v77.super.super.isa = sub_3EDE14(v103, v105, v101, v76, 0xFFFFFFFFFFFFFFFFLL, v80, v81).super.super.isa;

    sub_21DD9C(v71, type metadata accessor for ActionMenu);
    if (qword_4E8BA8 != -1)
    {
      swift_once();
    }

    [(objc_class *)v87 insertSiblingMenu:v77.super.super.isa afterMenuForIdentifier:qword_504280];
  }

  else
  {
  }

  return sub_16AC0(v85);
}

uint64_t sub_21176C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_paginatedPublisher;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_2117E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v178 = a7;
  v163 = a4;
  v170 = a3;
  v184 = a2;
  v175 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7480);
  __chkstk_darwin(v13 - 8);
  v164 = &v149 - v14;
  v162 = type metadata accessor for ContentUnavailablePage();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v157 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModernPage();
  __chkstk_darwin(v16 - 8);
  v169 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_3E7274();
  v183 = *(v180 - 8);
  __chkstk_darwin(v180);
  v165 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v179 = &v149 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1C0);
  __chkstk_darwin(v21 - 8);
  v166 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v167 = &v149 - v24;
  v172 = type metadata accessor for BubbleTip();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v154 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v156 = &v149 - v27;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v185);
  v182 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v159 = &v149 - v30;
  __chkstk_darwin(v31);
  v153 = &v149 - v32;
  __chkstk_darwin(v33);
  v155 = &v149 - v34;
  __chkstk_darwin(v35);
  v177 = &v149 - v36;
  __chkstk_darwin(v37);
  v173 = &v149 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v39 - 8);
  v174 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v149 - v42;
  v44 = type metadata accessor for ModernShelf();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v181 = &v149 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v152 = (&v149 - v48);
  __chkstk_darwin(v49);
  v158 = (&v149 - v50);
  __chkstk_darwin(v51);
  v176 = &v149 - v52;
  __chkstk_darwin(v53);
  v55 = &v149 - v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1C8);
  sub_3E95D4();
  v186 = v44;
  if (a5)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v160 = v45;
      v56 = v194;
      v191 = v194;
      swift_allocObject();
      v149 = a8;
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      v44 = v186;
      sub_3E9504();
      a8 = v149;

      v57 = v56;
      v45 = v160;
      sub_192858(v57);
      v194 = v195;
    }
  }

  v58 = sub_3E95E4();
  v59 = v194;
  *&v195 = v194;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
  if (sub_3E9544())
  {
    sub_192858(v59);
    goto LABEL_6;
  }

  v150 = v59;
  v151 = v58;
  v168 = a9;
  LOBYTE(v191) = 0;
  v192 = _swiftEmptyArrayStorage;
  v193 = _swiftEmptyArrayStorage;
  sub_FBD0(v175, v43, &unk_503DA0);
  v61 = *(v45 + 48);
  if (v61(v43, 1, v44) == 1)
  {
    v62 = v45;
    sub_FCF8(v43, &unk_503DA0);
    v63 = _swiftEmptyArrayStorage;
  }

  else
  {
    v64 = v44;
    v65 = a6;
    v66 = a8;
    sub_21DCCC(v43, v55, type metadata accessor for ModernShelf);
    v67 = v173;
    sub_21DD34(v55, v173, type metadata accessor for ModernShelf);
    v62 = v45;
    (*(v45 + 56))(v67, 0, 2, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v68 = v195;
    v63 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
    v70 = v63[2];
    v69 = v63[3];
    if (v70 >= v69 >> 1)
    {
      v63 = sub_E02FC((v69 > 1), v70 + 1, 1, v63);
    }

    sub_FCF8(v173, &qword_4F5978);
    sub_21DD9C(v55, type metadata accessor for ModernShelf);
    v63[2] = v70 + 1;
    v63[v70 + 4] = v68;
    v193 = v63;
    a8 = v66;
    a6 = v65;
    v44 = v186;
  }

  v71 = v174;
  sub_FBD0(v178, v174, &unk_503DA0);
  v72 = v61(v71, 1, v44);
  v73 = v184;
  v74 = v179;
  if (v72 == 1)
  {
    sub_FCF8(v71, &unk_503DA0);
    v75 = v62;
    v76 = v168;
    v77 = v180;
  }

  else
  {
    v78 = v71;
    v79 = v176;
    sub_21DCCC(v78, v176, type metadata accessor for ModernShelf);
    v80 = v177;
    sub_21DD34(v79, v177, type metadata accessor for ModernShelf);
    v75 = v62;
    (*(v62 + 56))(v80, 0, 2, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v81 = v195;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v168;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_E02FC(0, v63[2] + 1, 1, v63);
    }

    v77 = v180;
    v84 = v63[2];
    v83 = v63[3];
    if (v84 >= v83 >> 1)
    {
      v63 = sub_E02FC((v83 > 1), v84 + 1, 1, v63);
    }

    sub_FCF8(v177, &qword_4F5978);
    sub_21DD9C(v176, type metadata accessor for ModernShelf);
    v63[2] = v84 + 1;
    v63[v84 + 4] = v81;
    v193 = v63;
    v73 = v184;
  }

  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v199 = 10;
  if (sub_3E7F04())
  {
    v160 = v75;
    v85 = *(v183 + 104);
    v85(v74, enum case for TipGroup.onlyDownloads(_:), v77);
    if (*(v73 + 16) && (v86 = sub_557FC(v74), (v87 & 1) != 0))
    {
      v149 = a8;
      v180 = a6;
      v88 = *(*(v73 + 56) + 8 * v86);
      v89 = *(v183 + 8);

      v89(v74, v77);
      if (*(v88 + 16))
      {
        v90 = v171;
        v91 = v167;
        sub_21DD34(v88 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v167, type metadata accessor for BubbleTip);
        v92 = 0;
      }

      else
      {
        v92 = 1;
        v90 = v171;
        v91 = v167;
      }

      v93 = *(v90 + 56);
      v105 = v172;
      v93(v91, v92, 1, v172);
      if ((*(v90 + 48))(v91, 1, v105) != 1)
      {
        v106 = v156;
        sub_21DCCC(v91, v156, type metadata accessor for BubbleTip);
        v107 = v158;
        static ModernShelf.bubbleTipShelf(for:)(v106, v158);
        v108 = v155;
        sub_21DD34(v107, v155, type metadata accessor for ModernShelf);
        v75 = v160;
        (*(v160 + 56))(v108, 0, 2, v186);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
        sub_3E9504();
        v109 = v188;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_E02FC(0, v63[2] + 1, 1, v63);
        }

        v76 = v168;
        a8 = v149;
        v111 = v63[2];
        v110 = v63[3];
        v112 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          v63 = sub_E02FC((v110 > 1), v111 + 1, 1, v63);
        }

        sub_FCF8(v108, &qword_4F5978);
        v113 = v187;
        goto LABEL_40;
      }

      v73 = v184;
      a6 = v180;
      v95 = v91;
      a8 = v149;
    }

    else
    {
      v89 = *(v183 + 8);
      v89(v74, v77);
      v93 = *(v171 + 56);
      v94 = v167;
      v93(v167, 1, 1, v172);
      v95 = v94;
    }

    sub_FCF8(v95, &qword_4FA1C0);
    v96 = v165;
    v85(v165, enum case for TipGroup.downloads(_:), v77);
    v97 = v96;
    if (*(v73 + 16) && (v98 = sub_557FC(v96), (v99 & 1) != 0))
    {
      v180 = a6;
      v100 = *(*(v73 + 56) + 8 * v98);

      v89(v97, v77);
      if (*(v100 + 16))
      {
        v101 = v171;
        v102 = v166;
        sub_21DD34(v100 + ((*(v171 + 80) + 32) & ~*(v171 + 80)), v166, type metadata accessor for BubbleTip);
        v103 = 0;
        v104 = v186;
        v75 = v160;
        v76 = v168;
      }

      else
      {
        v103 = 1;
        v104 = v186;
        v75 = v160;
        v76 = v168;
        v102 = v166;
        v101 = v171;
      }

      v114 = v172;
      v93(v102, v103, 1, v172);
      if ((*(v101 + 48))(v102, 1, v114) != 1)
      {
        v106 = v154;
        sub_21DCCC(v102, v154, type metadata accessor for BubbleTip);
        v115 = [objc_opt_self() currentTraitCollection];
        v116 = [v115 horizontalSizeClass];

        if (v116 == &dword_0 + 2)
        {
          v117 = sub_3EE804();

          if ((v117 & 1) == 0)
          {
            v118 = v152;
            static ModernShelf.bubbleTipShelf(for:)(v106, v152);
            v119 = v153;
            sub_21DD34(v118, v153, type metadata accessor for ModernShelf);
            (*(v75 + 56))(v119, 0, 2, v104);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
            sub_3E9504();
            v109 = v188;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_E02FC(0, v63[2] + 1, 1, v63);
            }

            v111 = v63[2];
            v120 = v63[3];
            v112 = v111 + 1;
            if (v111 >= v120 >> 1)
            {
              v63 = sub_E02FC((v120 > 1), v111 + 1, 1, v63);
            }

            sub_FCF8(v153, &qword_4F5978);
            v113 = &v184;
LABEL_40:
            sub_21DD9C(*(v113 - 32), type metadata accessor for ModernShelf);
            sub_21DD9C(v106, type metadata accessor for BubbleTip);
            v63[2] = v112;
            v63[v111 + 4] = v109;
            v193 = v63;
            v104 = v186;
            goto LABEL_52;
          }
        }

        else
        {
        }

        sub_21DD9C(v106, type metadata accessor for BubbleTip);
LABEL_52:
        if (v170)
        {
          v121 = v159;
          sub_21DD34(a10, v159, type metadata accessor for ModernShelf);
          (*(v75 + 56))(v121, 0, 2, v104);
          ModernShelfListBuilder.addImportantShelf(_:)();
          sub_FCF8(v121, &qword_4F5978);
        }

        goto LABEL_54;
      }
    }

    else
    {
      v89(v96, v77);
      v102 = v166;
      v93(v166, 1, 1, v172);
      v104 = v186;
      v75 = v160;
      v76 = v168;
    }

    sub_FCF8(v102, &qword_4FA1C0);
    goto LABEL_52;
  }

LABEL_54:
  v122 = v192;
  v123 = v150;
  sub_192B2C(v150);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v122 = sub_E02FC(0, v122[2] + 1, 1, v122);
  }

  v125 = v122[2];
  v124 = v122[3];
  if (v125 >= v124 >> 1)
  {
    v122 = sub_E02FC((v124 > 1), v125 + 1, 1, v122);
  }

  v122[2] = v125 + 1;
  v122[v125 + 4] = v123;
  v192 = v122;
  v126 = v193;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_E02FC(0, v126[2] + 1, 1, v126);
  }

  v128 = v126[2];
  v127 = v126[3];
  if (v128 >= v127 >> 1)
  {
    v126 = sub_E02FC((v127 > 1), v128 + 1, 1, v126);
  }

  v126[2] = v128 + 1;
  v126[v128 + 4] = v123;
  v193 = v126;
  if (v151)
  {
    v129 = v181;
    static ModernShelf.loadingShelf(id:)(0x5365726F4D736168, 0xEC000000666C6568, v181);
    v130 = v129;
    v131 = v182;
    sub_21DD34(v130, v182, type metadata accessor for ModernShelf);
    (*(v75 + 56))(v131, 0, 2, v186);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v132 = v188;
    v134 = v126[2];
    v133 = v126[3];
    if (v134 >= v133 >> 1)
    {
      v126 = sub_E02FC((v133 > 1), v134 + 1, 1, v126);
    }

    sub_FCF8(v182, &qword_4F5978);
    sub_21DD9C(v181, type metadata accessor for ModernShelf);
    v126[2] = v134 + 1;
    v126[v134 + 4] = v132;
    v193 = v126;
  }

  v135 = v191;
  v136 = v192;
  LOBYTE(v188) = v191;
  v189 = v192;
  v190 = v126;
  ModernShelfListBuilder.hasImportantContent.getter();
  if (v137)
  {
    LOBYTE(v188) = v135;
    v189 = v136;
    v190 = v126;
    ModernShelfListBuilder.buildList()();
    v139 = v138;

    v140 = v169;
    sub_214440(v76, v139, v169);

    v141 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_21DD34(v140, a8, type metadata accessor for ModernPage);
    LOBYTE(v139) = sub_3E66E4();
    sub_21DD9C(v140, type metadata accessor for ModernPage);
    a8[v141] = v139;
    v60 = type metadata accessor for PageContent();
    goto LABEL_68;
  }

  LOBYTE(v188) = v135;
  v189 = v136;
  v190 = v126;
  ModernShelfListBuilder.areAnyImportantShelvesStillLoading.getter();
  v144 = v143;

  if (v144)
  {
    *a8 = 0;
    goto LABEL_7;
  }

  v145 = v164;
  static ModernEpisodesPresenter.contentUnavailablePage(for:hasHiddenPlayedEpisodes:)(v76, v163 & 1, v164);
  if ((*(v161 + 48))(v145, 1, v162) != 1)
  {
    v147 = v145;
    v148 = v157;
    sub_21DCCC(v147, v157, type metadata accessor for ContentUnavailablePage);
    sub_21DCCC(v148, a8, type metadata accessor for ContentUnavailablePage);
    v60 = type metadata accessor for PageContent();
    goto LABEL_68;
  }

  sub_FCF8(v145, &qword_4F7480);
  if (*(v76 + 64) == 9 && (v170 & 1) != 0)
  {
LABEL_6:
    *a8 = 1;
LABEL_7:
    v60 = type metadata accessor for PageContent();
LABEL_68:
    swift_storeEnumTagMultiPayload();
    return (*(*(v60 - 8) + 56))(a8, 0, 1, v60);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    v187[7] = 1;
    sub_3E9D44();
  }

  v146 = type metadata accessor for PageContent();
  return (*(*(v146 - 8) + 56))(a8, 1, 1, v146);
}

uint64_t sub_2130C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for ModernShelf();
  v6 = *(v5 - 1);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 65) & ~v7;
  v138 = *(v6 + 64);

  v9 = v0 + v3;
  v139 = v8;
  if (!(*(v6 + 48))(v9, 1, v5))
  {

    v10 = v9 + v5[5];
    v11 = type metadata accessor for Header(0);
    if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
    {
      v136 = v7;

      v12 = v10 + v11[7];
      v13 = type metadata accessor for ActionMenu(0);
      if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
      {
        v129 = v11;
        v130 = v10;

        v14 = v12 + *(v13 + 28);
        v15 = sub_3E7784();
        if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
        {

          v16 = *(v14 + 32);
          if (v16 != 255)
          {
            sub_F2248(*(v14 + 16), *(v14 + 24), v16);
          }

          v17 = *(v14 + 64);
          if (v17 != 255)
          {
            sub_F2260(*(v14 + 56), v17);
          }

          v18 = *(v14 + 80);
          if (v18 != 255)
          {
            sub_F2260(*(v14 + 72), v18);
          }

          v19 = *(v14 + 96);
          if (v19 != 255)
          {
            sub_F2260(*(v14 + 88), v19);
          }

          v20 = *(v14 + 112);
          if (v20 != 255)
          {
            sub_F2260(*(v14 + 104), v20);
          }

          v21 = *(v14 + 128);
          if (v21 != 255)
          {
            sub_F2260(*(v14 + 120), v21);
          }

          v22 = *(v15 + 44);
          v23 = sub_3E7624();
          (*(*(v23 - 8) + 8))(v14 + v22, v23);
        }

        v11 = v129;
        v10 = v130;
      }

      v24 = v10 + v11[8];
      v25 = type metadata accessor for Header.PrimaryAction(0);
      if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        switch(EnumCaseMultiPayload)
        {
          case 2:

            v117 = v24 + *(v13 + 28);
            v118 = sub_3E7784();
            if (!(*(*(v118 - 8) + 48))(v117, 1, v118))
            {

              v119 = *(v117 + 32);
              if (v119 != 255)
              {
                sub_F2248(*(v117 + 16), *(v117 + 24), v119);
              }

              v120 = *(v117 + 64);
              if (v120 != 255)
              {
                sub_F2260(*(v117 + 56), v120);
              }

              v121 = *(v117 + 80);
              if (v121 != 255)
              {
                sub_F2260(*(v117 + 72), v121);
              }

              v122 = *(v117 + 96);
              if (v122 != 255)
              {
                sub_F2260(*(v117 + 88), v122);
              }

              v123 = *(v117 + 112);
              if (v123 != 255)
              {
                sub_F2260(*(v117 + 104), v123);
              }

              v124 = *(v117 + 128);
              if (v124 != 255)
              {
                sub_F2260(*(v117 + 120), v124);
              }

              v125 = *(v118 + 44);
              v126 = sub_3E7624();
              (*(*(v126 - 8) + 8))(v117 + v125, v126);
            }

            break;
          case 1:

            break;
          case 0:

            v93 = type metadata accessor for ActionButton();
            v133 = v24 + v93[6];
            v94 = sub_3E7784();
            if (!(*(*(v94 - 8) + 48))(v133, 1, v94))
            {

              v95 = *(v133 + 32);
              if (v95 != 255)
              {
                sub_F2248(*(v133 + 16), *(v133 + 24), v95);
              }

              v96 = *(v133 + 64);
              if (v96 != 255)
              {
                sub_F2260(*(v133 + 56), v96);
              }

              v97 = *(v133 + 80);
              if (v97 != 255)
              {
                sub_F2260(*(v133 + 72), v97);
              }

              v98 = *(v133 + 96);
              if (v98 != 255)
              {
                sub_F2260(*(v133 + 88), v98);
              }

              v99 = *(v133 + 112);
              if (v99 != 255)
              {
                sub_F2260(*(v133 + 104), v99);
              }

              v100 = *(v133 + 128);
              if (v100 != 255)
              {
                sub_F2260(*(v133 + 120), v100);
              }

              v128 = *(v94 + 44);
              v101 = sub_3E7624();
              (*(*(v101 - 8) + 8))(v133 + v128, v101);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v24 + v93[8]);
            v102 = v93[9];
            v103 = sub_3EC634();
            v104 = *(v103 - 8);
            v134 = v102;
            v105 = v24 + v102;
            v106 = v103;
            if (!(*(v104 + 48))(v105, 1, v103))
            {
              (*(v104 + 8))(v24 + v134, v106);
            }

            break;
        }
      }

      v26 = v10 + v11[9];
      v27 = sub_3E7784();
      v7 = v136;
      v8 = v139;
      if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
      {

        v28 = *(v26 + 32);
        if (v28 != 255)
        {
          sub_F2248(*(v26 + 16), *(v26 + 24), v28);
        }

        v29 = *(v26 + 64);
        if (v29 != 255)
        {
          sub_F2260(*(v26 + 56), v29);
        }

        v30 = *(v26 + 80);
        if (v30 != 255)
        {
          sub_F2260(*(v26 + 72), v30);
        }

        v31 = *(v26 + 96);
        if (v31 != 255)
        {
          sub_F2260(*(v26 + 88), v31);
        }

        v32 = *(v26 + 112);
        if (v32 != 255)
        {
          sub_F2260(*(v26 + 104), v32);
        }

        v33 = *(v26 + 128);
        if (v33 != 255)
        {
          sub_F2260(*(v26 + 120), v33);
        }

        v34 = *(v27 + 44);
        v35 = sub_3E7624();
        (*(*(v35 - 8) + 8))(v26 + v34, v35);
      }
    }

    v36 = v5[9];
    v37 = sub_3E5DC4();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v9 + v36, 1, v37))
    {
      (*(v38 + 8))(v9 + v36, v37);
    }

    v39 = v9 + v5[12];
    if (*(v39 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    v40 = v5[13];
    v41 = sub_3EC634();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v9 + v40, 1, v41))
    {
      (*(v42 + 8))(v9 + v40, v41);
    }
  }

  sub_6BE48(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32), *(v0 + v4 + 40), *(v0 + v4 + 48), *(v0 + v4 + 56), *(v0 + v4 + 64));
  v43 = v0 + v8;

  v44 = v43 + v5[5];
  v45 = type metadata accessor for Header(0);
  if (!(*(*(v45 - 1) + 48))(v44, 1, v45))
  {
    v137 = v7;

    v46 = v44 + v45[7];
    v47 = type metadata accessor for ActionMenu(0);
    if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
    {

      v48 = v46 + *(v47 + 28);
      v49 = sub_3E7784();
      if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
      {

        v50 = *(v48 + 32);
        if (v50 != 255)
        {
          sub_F2248(*(v48 + 16), *(v48 + 24), v50);
        }

        v51 = *(v48 + 64);
        if (v51 != 255)
        {
          sub_F2260(*(v48 + 56), v51);
        }

        v52 = *(v48 + 80);
        if (v52 != 255)
        {
          sub_F2260(*(v48 + 72), v52);
        }

        v53 = *(v48 + 96);
        if (v53 != 255)
        {
          sub_F2260(*(v48 + 88), v53);
        }

        v54 = *(v48 + 112);
        if (v54 != 255)
        {
          sub_F2260(*(v48 + 104), v54);
        }

        v131 = v2;
        v55 = *(v48 + 128);
        if (v55 != 255)
        {
          sub_F2260(*(v48 + 120), v55);
        }

        v56 = *(v49 + 44);
        v57 = sub_3E7624();
        (*(*(v57 - 8) + 8))(v48 + v56, v57);

        v2 = v131;
      }
    }

    v58 = v44 + v45[8];
    v59 = type metadata accessor for Header.PrimaryAction(0);
    if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
    {
      v77 = swift_getEnumCaseMultiPayload();
      switch(v77)
      {
        case 2:

          v107 = v58 + *(v47 + 28);
          v108 = sub_3E7784();
          if (!(*(*(v108 - 8) + 48))(v107, 1, v108))
          {

            v109 = *(v107 + 32);
            if (v109 != 255)
            {
              sub_F2248(*(v107 + 16), *(v107 + 24), v109);
            }

            v110 = *(v107 + 64);
            if (v110 != 255)
            {
              sub_F2260(*(v107 + 56), v110);
            }

            v111 = *(v107 + 80);
            if (v111 != 255)
            {
              sub_F2260(*(v107 + 72), v111);
            }

            v112 = *(v107 + 96);
            if (v112 != 255)
            {
              sub_F2260(*(v107 + 88), v112);
            }

            v113 = *(v107 + 112);
            if (v113 != 255)
            {
              sub_F2260(*(v107 + 104), v113);
            }

            v135 = v2;
            v114 = *(v107 + 128);
            if (v114 != 255)
            {
              sub_F2260(*(v107 + 120), v114);
            }

            v115 = *(v108 + 44);
            v116 = sub_3E7624();
            (*(*(v116 - 8) + 8))(v107 + v115, v116);

            v2 = v135;
          }

          break;
        case 1:

          break;
        case 0:

          v78 = type metadata accessor for ActionButton();
          v79 = v58 + v78[6];
          v80 = sub_3E7784();
          if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
          {

            v81 = *(v79 + 32);
            if (v81 != 255)
            {
              sub_F2248(*(v79 + 16), *(v79 + 24), v81);
            }

            v82 = *(v79 + 64);
            if (v82 != 255)
            {
              sub_F2260(*(v79 + 56), v82);
            }

            v83 = *(v79 + 80);
            if (v83 != 255)
            {
              sub_F2260(*(v79 + 72), v83);
            }

            v84 = *(v79 + 96);
            if (v84 != 255)
            {
              sub_F2260(*(v79 + 88), v84);
            }

            v85 = *(v79 + 112);
            if (v85 != 255)
            {
              sub_F2260(*(v79 + 104), v85);
            }

            v132 = v2;
            v86 = *(v79 + 128);
            if (v86 != 255)
            {
              sub_F2260(*(v79 + 120), v86);
            }

            v87 = *(v80 + 44);
            v88 = sub_3E7624();
            (*(*(v88 - 8) + 8))(v79 + v87, v88);

            v2 = v132;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v58 + v78[8]);
          v89 = v78[9];
          v90 = sub_3EC634();
          v91 = *(v90 - 8);
          if (!(*(v91 + 48))(v58 + v89, 1, v90))
          {
            (*(v91 + 8))(v58 + v89, v90);
          }

          break;
      }
    }

    v60 = v44 + v45[9];
    v61 = sub_3E7784();
    v7 = v137;
    if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
    {

      v62 = *(v60 + 32);
      if (v62 != 255)
      {
        sub_F2248(*(v60 + 16), *(v60 + 24), v62);
      }

      v63 = *(v60 + 64);
      if (v63 != 255)
      {
        sub_F2260(*(v60 + 56), v63);
      }

      v64 = *(v60 + 80);
      if (v64 != 255)
      {
        sub_F2260(*(v60 + 72), v64);
      }

      v65 = *(v60 + 96);
      if (v65 != 255)
      {
        sub_F2260(*(v60 + 88), v65);
      }

      v66 = *(v60 + 112);
      if (v66 != 255)
      {
        sub_F2260(*(v60 + 104), v66);
      }

      v67 = *(v60 + 128);
      if (v67 != 255)
      {
        sub_F2260(*(v60 + 120), v67);
      }

      v68 = *(v61 + 44);
      v69 = sub_3E7624();
      (*(*(v69 - 8) + 8))(v60 + v68, v69);
    }
  }

  v70 = v5[9];
  v71 = sub_3E5DC4();
  v72 = *(v71 - 8);
  if (!(*(v72 + 48))(v43 + v70, 1, v71))
  {
    (*(v72 + 8))(v43 + v70, v71);
  }

  v73 = v43 + v5[12];
  if (*(v73 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  v74 = v5[13];
  v75 = sub_3EC634();
  v76 = *(v75 - 8);
  if (!(*(v76 + 48))(v43 + v74, 1, v75))
  {
    (*(v76 + 8))(v43 + v74, v75);
  }

  return _swift_deallocObject(v0, ((v138 + v139 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_2142D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W4>, char a5@<W5>, _BYTE *a6@<X8>)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0) - 8);
  v14 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(type metadata accessor for ModernShelf() - 8);
  return sub_2117E0(a1, a2, a3, a4, a5, *(v6 + 16), v6 + v14, a6, v6 + v15, v6 + ((v15 + *(v16 + 80) + 65) & ~*(v16 + 80)));
}

uint64_t sub_214440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EC544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v70 - v11;
  v13 = *(a1 + 64);
  if (!*(a1 + 64))
  {
    v34 = sub_3E8024();
    v36 = v35;
    v37 = sub_3E7A54();
    v39 = v38;
    v71 = v34;
    v72 = v36;
    v89._countAndFlagsBits = 95;
    v89._object = 0xE100000000000000;
    sub_3ED3D4(v89);
    v90._countAndFlagsBits = v37;
    v90._object = v39;
    sub_3ED3D4(v90);

    sub_3ECCE4();
    v26 = sub_3E7A54();
    goto LABEL_17;
  }

  if (v13 == 6)
  {
    v28 = sub_3E8024();
    v30 = v29;
    v31 = sub_3E7AF4();
    v33 = v32;
    v71 = v28;
    v72 = v30;
    v87._countAndFlagsBits = 95;
    v87._object = 0xE100000000000000;
    sub_3ED3D4(v87);
    v88._countAndFlagsBits = v31;
    v88._object = v33;
    sub_3ED3D4(v88);

    sub_3ECCE4();
    v26 = sub_3E7AF4();
    goto LABEL_17;
  }

  if (v13 != 10)
  {
LABEL_18:
    v63 = sub_3E8024();
    v65 = v64;
    v66 = sub_3E7B24();
    v68 = v67;
    v71 = v63;
    v72 = v65;
    v97._countAndFlagsBits = 95;
    v97._object = 0xE100000000000000;
    sub_3ED3D4(v97);
    v98._countAndFlagsBits = v66;
    v98._object = v68;
    sub_3ED3D4(v98);

    sub_3ECCE4();
    v62 = type metadata accessor for ModernPage();
    sub_3EC154();
    goto LABEL_19;
  }

  v14 = a1[5];
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[6] | a1[7];
  v18 = a1[4] | a1[3] | a1[2];
  if (!(v17 | *a1 | v14 | v18 | v16))
  {
    v40 = sub_3E8024();
    v42 = v41;
    v43 = sub_3E7A34();
    v45 = v44;
    v71 = v40;
    v72 = v42;
    v91._countAndFlagsBits = 95;
    v91._object = 0xE100000000000000;
    sub_3ED3D4(v91);
    v92._countAndFlagsBits = v43;
    v92._object = v45;
    sub_3ED3D4(v92);

    sub_3ECCE4();
    v26 = sub_3E7A34();
    goto LABEL_17;
  }

  v19 = v17 | v14 | v18 | v16;
  if (v15 != 1 || v19)
  {
    if (v15 == 5 && !v19)
    {
      v46 = sub_3E8024();
      v48 = v47;
      v49 = sub_3E7A74();
      v51 = v50;
      v71 = v46;
      v72 = v48;
      v93._countAndFlagsBits = 95;
      v93._object = 0xE100000000000000;
      sub_3ED3D4(v93);
      v94._countAndFlagsBits = v49;
      v94._object = v51;
      sub_3ED3D4(v94);

      sub_3ECCE4();
      v26 = sub_3E7A74();
      goto LABEL_17;
    }

    if (v15 == 6 && !v19)
    {
      v52 = sub_3E8024();
      v54 = v53;
      v55 = sub_3E7AB4();
      v57 = v56;
      v71 = v52;
      v72 = v54;
      v95._countAndFlagsBits = 95;
      v95._object = 0xE100000000000000;
      sub_3ED3D4(v95);
      v96._countAndFlagsBits = v55;
      v96._object = v57;
      sub_3ED3D4(v96);

      sub_3ECCE4();
      v26 = sub_3E7AB4();
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v20 = sub_3E8024();
  v22 = v21;
  v23 = sub_3E7A84();
  v25 = v24;
  v71 = v20;
  v72 = v22;
  v85._countAndFlagsBits = 95;
  v85._object = 0xE100000000000000;
  sub_3ED3D4(v85);
  v86._countAndFlagsBits = v23;
  v86._object = v25;
  sub_3ED3D4(v86);

  sub_3ECCE4();
  v26 = sub_3E7A84();
LABEL_17:
  v58 = v26;
  v59 = v27;
  v60 = sub_3E8024();
  v71 = v58;
  v72 = v59;
  v73 = v60;
  v74 = v61;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v7 + 16))(v9, v12, v6);
  v62 = type metadata accessor for ModernPage();
  sub_3EC0C4();
  v84 = v78;
  sub_FCF8(&v84, &unk_4F8A10);
  v83 = v79;
  sub_FCF8(&v83, &qword_4E94E0);
  v82 = v80;
  sub_FCF8(&v82, &unk_4F8A20);
  sub_16AC0(v81);
  (*(v7 + 8))(v12, v6);

LABEL_19:
  *(a3 + *(v62 + 24)) = a2;
}

uint64_t static ModernEpisodesPresenter.contentUnavailablePage(for:hasHiddenPlayedEpisodes:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 64) < 0xAu)
  {
    goto LABEL_5;
  }

  v4 = a1[5];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[6] | a1[7];
  v8 = a1[4] | a1[3] | a1[2];
  if (!(v7 | *a1 | v4 | v8 | v6))
  {
    if (a2)
    {
      static ContentUnavailablePage.emptyUnplayedLibraryDownloaded.getter(a3);
    }

    else
    {
      static ContentUnavailablePage.emptyLibraryDownloaded.getter(a3);
    }

    goto LABEL_19;
  }

  v9 = v7 | v4 | v8 | v6;
  if ((v5 - 1) <= 3 && !v9)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_20;
  }

  if (v5 == 5 && !v9)
  {
    if (a2)
    {
      static ContentUnavailablePage.emptyUnplayedLibraryLatestEpisodes.getter(a3);
    }

    else
    {
      static ContentUnavailablePage.emptyLibraryLatestEpisodes.getter(a3);
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v10 = 1;
  if (v5 == 6 && !v9)
  {
    if (a2)
    {
      static ContentUnavailablePage.emptyUnplayedLibrarySaved.getter(a3);
    }

    else
    {
      static ContentUnavailablePage.emptyLibrarySaved.getter(a3);
    }

    goto LABEL_19;
  }

LABEL_20:
  v11 = type metadata accessor for ContentUnavailablePage();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, v10, 1, v11);
}

uint64_t sub_214BA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_214C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = a3;
  v58 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v60 = v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v63 = v56 - v9;
  v10 = sub_3E7784();
  __chkstk_darwin(v10 - 8);
  v62 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShowEpisodeCountHeader(0);
  __chkstk_darwin(v12);
  v14 = (v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v59 = v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA230);
  __chkstk_darwin(v17 - 8);
  v19 = v56 - v18;
  v20 = type metadata accessor for ShowEpisodeCountHeaderData(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_FBD0(a1, v19, &qword_4FA230);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_FCF8(v19, &qword_4FA230);
    v24 = type metadata accessor for ModernShelf();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  else
  {
    sub_21DCCC(v19, v23, type metadata accessor for ShowEpisodeCountHeaderData);
    v26 = *v23;
    v27 = v23[1];
    sub_21DD34(v23 + *(v20 + 20), v62, &type metadata accessor for ArtworkModel);
    v28 = *(v23 + *(v20 + 24));
    if (((*(v61 + 64) - 2) & 0xF8) != 0)
    {
      v29 = 4;
    }

    else
    {
      v29 = 0x4020403040401uLL >> (8 * (*(v61 + 64) - 2));
    }

    v30 = sub_3EC634();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v61 = v30;
    v56[1] = v31 + 56;
    v57 = v32;
    (v32)(v63, 1, 1);
    v56[0] = v26;
    v65 = v26;
    v66 = v27;
    swift_bridgeObjectRetain_n();

    v67._countAndFlagsBits = 45;
    v67._object = 0xE100000000000000;
    sub_3ED3D4(v67);
    v33 = v58;
    v64 = v58;
    v68._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v68);

    v69._countAndFlagsBits = 45;
    v69._object = 0xE100000000000000;
    sub_3ED3D4(v69);
    v34 = 0xE700000000000000;
    v35 = 0x7972617262696CLL;
    v36 = 0x6B72616D6B6F6F62;
    v37 = 0xE900000000000073;
    v38 = 0xE700000000000000;
    v39 = 0x6E6F6974617473;
    if ((v29 & 7) != 3)
    {
      v39 = 1701736302;
      v38 = 0xE400000000000000;
    }

    if ((v29 & 7) != 2)
    {
      v36 = v39;
      v37 = v38;
    }

    if ((v29 & 7) != 0)
    {
      v35 = 0x64616F6C6E776F64;
      v34 = 0xE900000000000073;
    }

    if ((v29 & 7u) <= 1)
    {
      v40._countAndFlagsBits = v35;
    }

    else
    {
      v40._countAndFlagsBits = v36;
    }

    if ((v29 & 7u) <= 1)
    {
      v41 = v34;
    }

    else
    {
      v41 = v37;
    }

    v40._object = v41;
    sub_3ED3D4(v40);

    v42 = v66;
    *v14 = v65;
    v14[1] = v42;
    v14[2] = v56[0];
    v14[3] = v27;
    sub_21DCCC(v62, v14 + v12[6], &type metadata accessor for ArtworkModel);
    *(v14 + v12[7]) = v28;
    *(v14 + v12[8]) = v33;
    *(v14 + v12[9]) = v29;
    sub_FACC(v63, v14 + v12[10], &unk_4E9170);
    v43 = v59;
    sub_21DCCC(v14, v59, type metadata accessor for ShowEpisodeCountHeader);
    v44 = type metadata accessor for ModernShelf();
    v45 = v44[5];
    v46 = type metadata accessor for Header(0);
    (*(*(v46 - 8) + 56))(&a4[v45], 1, 1, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_3F5630;
    *(v47 + 56) = v12;
    *(v47 + 64) = sub_20C25C(&qword_4FA238, type metadata accessor for ShowEpisodeCountHeader);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v47 + 32));
    sub_21DCCC(v43, boxed_opaque_existential_0Tm, type metadata accessor for ShowEpisodeCountHeader);
    sub_21DD9C(v23, type metadata accessor for ShowEpisodeCountHeaderData);
    v49 = sub_3E5DC4();
    v50 = *(*(v49 - 8) + 56);
    v51 = v60;
    v50(v60, 1, 1, v49);
    v52 = &a4[v44[12]];
    *(v52 + 4) = 0;
    *v52 = 0u;
    *(v52 + 1) = 0u;
    v57(&a4[v44[13]], 1, 1, v61);
    v53 = v44[9];
    v54 = &a4[v44[8]];
    v50(&a4[v53], 1, 1, v49);
    *a4 = 0xD000000000000027;
    *(a4 + 1) = 0x800000000042B160;
    v55 = &a4[v44[6]];
    *v55 = 56;
    *(v55 + 3) = 256;
    *(v55 + 2) = 0;
    *(v55 + 1) = 1;
    *&a4[v44[7]] = v47;
    sub_51F9C(v51, &a4[v53], &unk_4E9EE0);
    a4[v44[10]] = 1;
    a4[v44[11]] = 0;
    *v54 = 0;
    *(v54 + 1) = 0;
    return (*(*(v44 - 1) + 56))(a4, 0, 1, v44);
  }
}

uint64_t sub_2153EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = sub_3E8944();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_3E88D4())
  {
    (*(v11 + 16))(v13, a1, v10);
    sub_3E88E4();
    ObjectType = swift_getObjectType();
    v15 = (*(a2 + 360))(v13, ObjectType, a2);
    result = (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17[1] = 0;
    sub_3E9DF4();
    sub_886BC(&qword_4FA1B0, &qword_4FA1A8);
    v15 = sub_3E9F94();
    result = (*(v7 + 8))(v9, v6);
  }

  *a3 = v15;
  return result;
}

uint64_t sub_215630()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_215684@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v102 = &v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C8);
  __chkstk_darwin(v6 - 8);
  v100 = (&v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v93 - v9);
  __chkstk_darwin(v11);
  v13 = (&v93 - v12);
  v14 = type metadata accessor for ActionMenu.Child(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v98 = (&v93 - v18);
  __chkstk_darwin(v19);
  v95 = &v93 - v20;
  __chkstk_darwin(v21);
  v96 = &v93 - v22;
  __chkstk_darwin(v23);
  v97 = &v93 - v24;
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  __chkstk_darwin(v28);
  v30 = &v93 - v29;
  __chkstk_darwin(v31);
  v33 = &v93 - v32;
  v104 = _swiftEmptyArrayStorage;
  v34 = sub_3E7414();
  v103 = v15;
  v101 = v14;
  if (v34)
  {
    sub_216D2C(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_FCF8(v13, &qword_4EA7C8);
    }

    else
    {
      sub_21DCCC(v13, v33, type metadata accessor for ActionMenu.Child);
      sub_21DD34(v33, v30, type metadata accessor for ActionMenu.Child);
      v35 = sub_E0140(0, 1, 1, _swiftEmptyArrayStorage);
      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        v35 = sub_E0140(v36 > 1, v37 + 1, 1, v35);
      }

      sub_21DD9C(v33, type metadata accessor for ActionMenu.Child);
      v35[2] = v37 + 1;
      sub_21DCCC(v30, v35 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v37, type metadata accessor for ActionMenu.Child);
      v104 = v35;
    }

    v38 = sub_2176DC(0);
    sub_4143C(v38);
    v15 = v103;
    v14 = v101;
  }

  sub_218B58(v10);
  v39 = *(v15 + 48);
  if (v39(v10, 1, v14) == 1)
  {
    sub_FCF8(v10, &qword_4EA7C8);
    v40 = v103;
  }

  else
  {
    sub_21DCCC(v10, v27, type metadata accessor for ActionMenu.Child);
    v41 = v97;
    sub_21DD34(v27, v97, type metadata accessor for ActionMenu.Child);
    v42 = v104;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_E0140(0, v42[2] + 1, 1, v42);
    }

    v44 = v42[2];
    v43 = v42[3];
    if (v44 >= v43 >> 1)
    {
      v42 = sub_E0140(v43 > 1, v44 + 1, 1, v42);
    }

    sub_21DD9C(v27, type metadata accessor for ActionMenu.Child);
    v42[2] = v44 + 1;
    v40 = v103;
    sub_21DCCC(v41, v42 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v103 + 72) * v44, type metadata accessor for ActionMenu.Child);
    v104 = v42;
  }

  v45 = *(v2 + 168);
  v46 = *(v2 + 176);
  v47 = *(v2 + 232);
  v48 = v100;
  if (v47 == 2)
  {
    sub_219D84(v45, v46, v100);
  }

  else
  {
    if (v47 != 10 || (v49 = vorrq_s8(*(v2 + 200), *(v2 + 216)), *&vorr_s8(*v49.i8, *&vextq_s8(v49, v49, 8uLL)) | *(v2 + 192) | *(v2 + 184) | v46 | v45))
    {
      (*(v40 + 56))(v100, 1, 1, v14);
      goto LABEL_22;
    }

    sub_219694(v100);
  }

  if (v39(v48, 1, v14) == 1)
  {
LABEL_22:
    sub_FCF8(v48, &qword_4EA7C8);
    v50 = v102;
    if ((sub_3E7414() & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v51 = v96;
  sub_21DCCC(v48, v96, type metadata accessor for ActionMenu.Child);
  v52 = v95;
  sub_21DD34(v51, v95, type metadata accessor for ActionMenu.Child);
  v53 = v104;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_E0140(0, v53[2] + 1, 1, v53);
  }

  v50 = v102;
  v55 = v53[2];
  v54 = v53[3];
  if (v55 >= v54 >> 1)
  {
    v53 = sub_E0140(v54 > 1, v55 + 1, 1, v53);
  }

  sub_21DD9C(v96, type metadata accessor for ActionMenu.Child);
  v53[2] = v55 + 1;
  sub_21DCCC(v52, v53 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v55, type metadata accessor for ActionMenu.Child);
  v104 = v53;
  if (sub_3E7414())
  {
LABEL_29:
    v56 = sub_21AD3C(0);
    v57 = v56[2];
    v94 = a1;
    if (v57)
    {
      v100 = v2;
      v58 = sub_3E7784();
      v59 = *(*(v58 - 8) + 56);
      v59(v50, 1, 1, v58);
      v60 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v62 = v61;
      v63 = type metadata accessor for ActionMenu(0);
      v64 = *(v63 + 28);
      v65 = v98;
      v59(v98 + v64, 1, 1, v58);
      *v65 = v60;
      v65[1] = v62;
      v65[2] = 0;
      v65[3] = 0xE000000000000000;
      v65[4] = 0;
      v65[5] = 0;
      v66 = v65 + v64;
      v50 = v102;
      sub_51F9C(v102, v66, &qword_4F1D50);
      *(v65 + *(v63 + 32)) = v56;
      swift_storeEnumTagMultiPayload();
      v67 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_E0140(0, v67[2] + 1, 1, v67);
      }

      v69 = v67[2];
      v68 = v67[3];
      v70 = v103;
      if (v69 >= v68 >> 1)
      {
        v67 = sub_E0140(v68 > 1, v69 + 1, 1, v67);
      }

      v67[2] = v69 + 1;
      sub_21DCCC(v98, v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, type metadata accessor for ActionMenu.Child);
      v104 = v67;
    }

    else
    {
    }

    v71 = sub_21B28C();
    if (v71[2])
    {
      v72 = sub_3E7784();
      v73 = *(*(v72 - 8) + 56);
      v73(v50, 1, 1, v72);
      v74 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v76 = v75;
      v77 = type metadata accessor for ActionMenu(0);
      v78 = *(v77 + 28);
      v79 = v99;
      v73(v99 + v78, 1, 1, v72);
      *v79 = v74;
      v79[1] = v76;
      v79[2] = 0;
      v79[3] = 0xE000000000000000;
      v79[4] = 0;
      v79[5] = 0;
      sub_51F9C(v50, v79 + v78, &qword_4F1D50);
      *(v79 + *(v77 + 32)) = v71;
      swift_storeEnumTagMultiPayload();
      v80 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_E0140(0, v80[2] + 1, 1, v80);
      }

      v82 = v80[2];
      v81 = v80[3];
      v83 = v103;
      a1 = v94;
      if (v82 >= v81 >> 1)
      {
        v80 = sub_E0140(v81 > 1, v82 + 1, 1, v80);
      }

      v80[2] = v82 + 1;
      sub_21DCCC(v99, v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v82, type metadata accessor for ActionMenu.Child);
      v104 = v80;
    }

    else
    {

      a1 = v94;
    }
  }

LABEL_43:
  sub_3E7774();
  v84 = sub_3E7784();
  v85 = *(*(v84 - 8) + 56);
  v85(v50, 0, 1, v84);
  v86 = v104;
  v87 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v89 = v88;
  v90 = type metadata accessor for ActionMenu(0);
  v91 = *(v90 + 28);
  v85(a1 + v91, 1, 1, v84);
  *a1 = v87;
  a1[1] = v89;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  result = sub_51F9C(v50, a1 + v91, &qword_4F1D50);
  *(a1 + *(v90 + 32)) = v86;
  return result;
}

uint64_t sub_2161C4@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_3E5FC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v8 = &v61 - v7;
  v74 = sub_3EC1F4();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v76 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = *(v1 + 184);
  v20 = *(v1 + 216);
  v81 = *(v1 + 200);
  v82 = v20;
  v83 = *(v1 + 232);
  v79 = *(v1 + 168);
  v80 = v19;
  v21 = sub_3E7EC4();
  v22 = sub_216A20(14, v21);

  if (v22)
  {
    v69 = a1;
    swift_beginAccess();
    sub_3E8914();
    swift_endAccess();
    v23 = sub_3E7F44();
    v25 = v24;
    v26 = sub_3E7F44();
    v72 = v15;
    v71 = v3;
    v70 = v4;
    if (v23 == v26 && v25 == v27)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_3EE804();
    }

    v63 = v28;

    v32 = [objc_opt_self() mainBundle];
    v60._countAndFlagsBits = 0xE000000000000000;
    v85._object = 0x800000000042B050;
    v85._countAndFlagsBits = 0xD000000000000018;
    v86.value._countAndFlagsBits = 0;
    v86.value._object = 0;
    v33.super.isa = v32;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    v68 = sub_3E5A74(v85, v86, v33, v87, v60);
    v67 = v34;

    v62 = v18;
    sub_3E7774();
    v65 = sub_3E7784();
    v35 = *(v65 - 8);
    v64 = *(v35 + 56);
    v66 = v35 + 56;
    v64(v18, 0, 1, v65);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v61 = v36;
    *(v37 + 16) = v36;
    *(v37 + 24) = v28 & 1;

    v38 = v12;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v39 = type metadata accessor for ClosureAction();
    v40 = swift_allocObject();
    v41 = (v40 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v41 = sub_21D990;
    v41[1] = v37;
    v42 = v73;
    v43 = v74;
    (*(v73 + 16))(v76, v38, v74);
    v44 = sub_3EC634();
    (*(*(v44 - 8) + 56))(v8, 1, 1, v44);

    v45 = v75;
    sub_3E5FB4();
    v46 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v48 = v47;

    (*(v70 + 8))(v45, v71);
    (*(v42 + 8))(v38, v43);
    *(v40 + 16) = v46;
    *(v40 + 24) = v48;
    *(v40 + 32) = 0;
    *(v40 + 40) = 0;
    *(v40 + 48) = 32;
    (*(v42 + 32))(v40 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v76, v43);
    sub_FACC(v8, v40 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

    v78[3] = v39;
    v78[4] = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
    v78[0] = v40;
    v49 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v51 = v50;
    v52 = v72;
    sub_FACC(v62, v72, &qword_4F1D50);
    sub_FBD0(v78, v77, &qword_4EDE00);
    v53 = type metadata accessor for ActionMenu.Item(0);
    v54 = v53[7];
    v55 = v69;
    v64(v69 + v54, 1, 1, v65);
    v56 = v53[8];
    v57 = v55 + v53[10];
    *(v57 + 32) = 0;
    *v57 = 0u;
    *(v57 + 16) = 0u;
    *v55 = v49;
    v55[1] = v51;
    v58 = v67;
    v55[2] = v68;
    v55[3] = v58;
    v55[4] = 0;
    v55[5] = 0;
    sub_51F9C(v52, v55 + v54, &qword_4F1D50);
    *(v55 + v56) = 2;
    *(v55 + v53[9]) = (v63 & 1) == 0;
    sub_51F9C(v77, v57, &qword_4EDE00);
    v59 = type metadata accessor for ActionMenu.Child(0);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v78, &qword_4EDE00);
    return (*(*(v59 - 8) + 56))(v55, 0, 1, v59);
  }

  else
  {
    v29 = type metadata accessor for ActionMenu.Child(0);
    v30 = *(*(v29 - 8) + 56);

    return v30(a1, 1, 1, v29);
  }
}

BOOL sub_216A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = sub_3E7F44();
    v8 = v7;
    if (v6 == sub_3E7F44() && v8 == v9)
    {

      return v4 != 0;
    }

    v11 = sub_3EE804();

    ++v3;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_216AE4(uint64_t a1, char a2)
{
  v3 = sub_3E8944();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v7);
  v9 = v16 - v8 + 40;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
    swift_beginAccess();
    if (a2)
    {
      sub_3E8934();
      swift_endAccess();
      sub_3E7E44();
      sub_20C1D8(v16);
    }

    v13 = *(v4 + 16);
    v13(v9, v11 + v12, v3);
    sub_3E8924();
    v13(v6, v11 + v12, v3);
    swift_beginAccess();
    (*(v4 + 24))(v11 + v12, v9, v3);
    swift_endAccess();
    sub_20A128();

    v14 = *(v4 + 8);
    v14(v6, v3);
    return (v14)(v9, v3);
  }

  return result;
}

uint64_t sub_216D2C@<X0>(unint64_t *a1@<X8>)
{
  v73 = a1;
  v2 = sub_3E5FC4();
  v71 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_3EC1F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = *(v1 + 184);
  v20 = *(v1 + 216);
  v78 = *(v1 + 200);
  v79 = v20;
  v80 = *(v1 + 232);
  v76 = *(v1 + 168);
  v77 = v19;
  if (sub_3E7F14())
  {
    swift_beginAccess();
    v21 = sub_3E88D4();
    v59 = v9;
    v22 = v21;
    v63 = v21;
    swift_endAccess();
    v67 = v15;
    v23 = [objc_opt_self() mainBundle];
    v57._countAndFlagsBits = 0xE000000000000000;
    v82._object = 0x800000000042B0B0;
    v82._countAndFlagsBits = 0xD000000000000014;
    v83.value._countAndFlagsBits = 0;
    v83.value._object = 0;
    v24.super.isa = v23;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    v69 = sub_3E5A74(v82, v83, v24, v84, v57);
    v68 = v25;

    sub_3E7774();
    v65 = sub_3E7784();
    v26 = *(v65 - 8);
    v64 = *(v26 + 56);
    v66 = v26 + 56;
    v64(v18, 0, 1, v65);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v62 = v18;
    v29 = v28;
    v61 = v27;
    *(v28 + 16) = v27;
    *(v28 + 24) = v22 & 1;

    v30 = v70;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v31 = type metadata accessor for ClosureAction();
    v60 = v2;
    v32 = v31;
    v33 = swift_allocObject();
    v34 = (v33 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v34 = sub_21DB48;
    v34[1] = v29;
    (*(v9 + 16))(v72, v30, v8);
    v35 = sub_3EC634();
    (*(*(v35 - 8) + 56))(v7, 1, 1, v35);

    sub_3E5FB4();
    v36 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v37 = v71;
    v38 = v73;
    v58 = v7;
    v40 = v39;

    (*(v37 + 8))(v4, v60);
    v41 = v59;
    (*(v59 + 8))(v30, v8);
    *(v33 + 16) = v36;
    *(v33 + 24) = v40;
    *(v33 + 32) = 0;
    *(v33 + 40) = 0;
    *(v33 + 48) = 32;
    (*(v41 + 32))(v33 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v72, v8);
    sub_FACC(v58, v33 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

    v75[3] = v32;
    v75[4] = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
    v75[0] = v33;
    v42 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v44 = v43;
    v45 = v67;
    sub_FACC(v62, v67, &qword_4F1D50);
    sub_FBD0(v75, v74, &qword_4EDE00);
    v46 = type metadata accessor for ActionMenu.Item(0);
    v47 = v46[7];
    v64(v38 + v47, 1, 1, v65);
    v48 = v46[8];
    v49 = v38 + v46[10];
    *(v49 + 32) = 0;
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *v38 = v42;
    v38[1] = v44;
    v50 = v68;
    v38[2] = v69;
    v38[3] = v50;
    v38[4] = 0;
    v38[5] = 0;
    sub_51F9C(v45, v38 + v47, &qword_4F1D50);
    *(v38 + v48) = 2;
    *(v38 + v46[9]) = (v63 & 1) == 0;
    sub_51F9C(v74, v49, &qword_4EDE00);
    v51 = type metadata accessor for ActionMenu.Child(0);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v75, &qword_4EDE00);
    return (*(*(v51 - 8) + 56))(v38, 0, 1, v51);
  }

  else
  {
    v53 = type metadata accessor for ActionMenu.Child(0);
    v54 = *(*(v53 - 8) + 56);
    v55 = v53;
    v56 = v73;

    return v54(v56, 1, 1, v55);
  }
}

uint64_t sub_2174F4()
{
  v0 = sub_3E8944();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
    v9 = result;
    swift_beginAccess();
    v10 = *(v1 + 16);
    v10(v6, v9 + v8, v0);
    sub_3E88E4();
    v10(v3, v9 + v8, v0);
    swift_beginAccess();
    (*(v1 + 24))(v9 + v8, v6, v0);
    swift_endAccess();
    sub_20A128();

    v11 = *(v1 + 8);
    v11(v3, v0);
    return (v11)(v6, v0);
  }

  return result;
}

void *sub_2176DC(char a1)
{
  v2 = v1;
  v151 = sub_3E5FC4();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EC1F4();
  v152 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v8 - 8);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v124 - v12;
  __chkstk_darwin(v13);
  v149 = &v124 - v14;
  __chkstk_darwin(v15);
  v17 = &v124 - v16;
  v18 = *(v1 + 184);
  v19 = *(v1 + 216);
  v160 = *(v1 + 200);
  v161 = v19;
  v162 = *(v1 + 232);
  v158 = *(v1 + 168);
  v159 = v18;
  v20 = sub_3E7EC4();
  if (sub_116358(v20, &off_4B2038))
  {
  }

  else
  {
    v21 = sub_116358(v20, &off_4B2060);

    if ((v21 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v144 = v17;
  v145 = v10;
  swift_beginAccess();
  sub_3E8914();
  swift_endAccess();
  v22 = sub_3E7F44();
  v24 = v23;
  v25 = 1;
  if (v22 != sub_3E7F44() || v24 != v26)
  {
    v27 = sub_3EE804();

    if (v27)
    {
      v25 = 1;
      goto LABEL_9;
    }

    v118 = sub_3E7F44();
    v120 = v119;
    if (v118 == sub_3E7F44() && v120 == v121)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_3EE804();
    }
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v147 = type metadata accessor for ActionMenu.Child(0);
  v28 = *(*(v147 - 8) + 72);
  v29 = (*(*(v147 - 8) + 80) + 32) & ~*(*(v147 - 8) + 80);
  v146 = v25;
  if (a1)
  {
    v139 = v28;
    v30 = swift_allocObject();
    v143 = v30;
    *(v30 + 16) = xmmword_3F5310;
    v31 = (v30 + v29);
    v138 = objc_opt_self();
    v32 = [v138 mainBundle];
    v122._countAndFlagsBits = 0xE000000000000000;
    v163._object = 0x800000000042B0F0;
    v163._countAndFlagsBits = 0xD000000000000010;
    v166.value._countAndFlagsBits = 0;
    v166.value._object = 0;
    v33.super.isa = v32;
    v169._countAndFlagsBits = 0;
    v169._object = 0xE000000000000000;
    v128 = sub_3E5A74(v163, v166, v33, v169, v122);
    v127 = v34;

    v141 = sub_3E7784();
    v35 = *(v141 - 8);
    v140 = *(v35 + 56);
    v144 = (v35 + 56);
    v140(v150, 1, 1, v141);
    v36 = swift_allocObject();
    swift_weakInit();

    v37 = v7;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v142 = type metadata accessor for ClosureAction();
    v38 = swift_allocObject();
    v39 = v152;
    v40 = v153;
    v41 = v38;
    v42 = (v38 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v42 = sub_21DB60;
    v42[1] = v36;
    v43 = *(v39 + 16);
    v136 = v39 + 16;
    v137 = v43;
    v125 = v37;
    v43(v38 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v37, v5);
    v44 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
    v134 = sub_3EC634();
    v45 = *(v134 - 8);
    v133 = *(v45 + 56);
    v129 = v2;
    v135 = v45 + 56;
    v133(v41 + v44, 1, 1, v134);

    v46 = v148;
    sub_3E5FB4();
    v47 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v126 = v5;
    v49 = v48;

    v50 = *(v40 + 8);
    v153 = v40 + 8;
    v132 = v50;
    v50(v46, v151);
    v51 = *(v39 + 8);
    v152 = v39 + 8;
    v131 = v51;
    v51(v37, v5);

    *(v41 + 16) = v47;
    *(v41 + 24) = v49;
    *(v41 + 32) = 0;
    *(v41 + 40) = 0;
    *(v41 + 48) = 32;
    v156 = v142;
    v130 = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
    v157 = v130;
    v155 = v41;
    v52 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v54 = v53;
    v55 = v149;
    sub_FBD0(v150, v149, &qword_4F1D50);
    sub_FBD0(&v155, v154, &qword_4EDE00);
    v56 = type metadata accessor for ActionMenu.Item(0);
    v57 = v56[7];
    v58 = v141;
    v59 = v140;
    v140(v31 + v57, 1, 1, v141);
    v60 = v56[8];
    v61 = v31 + v56[10];
    *(v61 + 32) = 0;
    *v61 = 0u;
    *(v61 + 16) = 0u;
    *v31 = v52;
    v31[1] = v54;
    v62 = v127;
    v31[2] = v128;
    v31[3] = v62;
    v31[4] = 0;
    v31[5] = 0;
    sub_51F9C(v55, v31 + v57, &qword_4F1D50);
    *(v31 + v60) = 2;
    *(v31 + v56[9]) = v146 & 1;
    sub_51F9C(v154, v61, &qword_4EDE00);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v150, &qword_4F1D50);
    sub_FCF8(&v155, &qword_4EDE00);
    v63 = [v138 mainBundle];
    v123._countAndFlagsBits = 0xE000000000000000;
    v164._object = 0x800000000042B0D0;
    v164._countAndFlagsBits = 0xD000000000000010;
    v167.value._countAndFlagsBits = 0;
    v167.value._object = 0;
    v64.super.isa = v63;
    v170._countAndFlagsBits = 0;
    v170._object = 0xE000000000000000;
    v150 = sub_3E5A74(v164, v167, v64, v170, v123);
    v138 = v65;

    v59(v145, 1, 1, v58);
    v66 = (v31 + v139);
    v67 = swift_allocObject();
    swift_weakInit();

    v68 = v125;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v69 = v142;
    v70 = swift_allocObject();
    v71 = (v70 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v71 = sub_21DB80;
    v71[1] = v67;
    v72 = v126;
    v137(v70 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v68, v126);
    v133(v70 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, 1, 1, v134);

    v73 = v148;
    sub_3E5FB4();
    v74 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v76 = v75;

    v132(v73, v151);
    v131(v68, v72);

    *(v70 + 16) = v74;
    *(v70 + 24) = v76;
    *(v70 + 32) = 0;
    *(v70 + 40) = 0;
    *(v70 + 48) = 32;
    v156 = v69;
    v157 = v130;
    v155 = v70;
    v77 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v79 = v78;
    v80 = v145;
    v81 = v149;
    sub_FBD0(v145, v149, &qword_4F1D50);
    sub_FBD0(&v155, v154, &qword_4EDE00);
    v82 = v56[7];
    v140(v66 + v82, 1, 1, v141);
    v83 = v56[8];
    v84 = v66 + v56[10];
    *(v84 + 32) = 0;
    *v84 = 0u;
    *(v84 + 16) = 0u;
    *v66 = v77;
    v66[1] = v79;
    v85 = v138;
    v66[2] = v150;
    v66[3] = v85;
    v66[4] = 0;
    v66[5] = 0;
    sub_51F9C(v81, v66 + v82, &qword_4F1D50);
    *(v66 + v83) = 2;
    *(v66 + v56[9]) = (v146 & 1) == 0;
    sub_51F9C(v154, v84, &qword_4EDE00);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v80, &qword_4F1D50);
  }

  else
  {
    v86 = swift_allocObject();
    v143 = v86;
    *(v86 + 16) = xmmword_3F5630;
    v87 = (v86 + v29);
    v88 = [objc_opt_self() mainBundle];
    v122._countAndFlagsBits = 0xE000000000000000;
    v165._object = 0x800000000042B0D0;
    v165._countAndFlagsBits = 0xD000000000000010;
    v168.value._countAndFlagsBits = 0;
    v168.value._object = 0;
    v89.super.isa = v88;
    v171._countAndFlagsBits = 0;
    v171._object = 0xE000000000000000;
    v150 = sub_3E5A74(v165, v168, v89, v171, v122);
    v145 = v90;

    v91 = v144;
    sub_3E7774();
    v141 = sub_3E7784();
    v92 = *(v141 - 8);
    v140 = *(v92 + 56);
    v142 = v92 + 56;
    v140(v91, 0, 1, v141);
    v93 = swift_allocObject();
    swift_weakInit();
    v94 = swift_allocObject();
    v139 = v93;
    *(v94 + 16) = v93;
    *(v94 + 24) = v25 & 1;

    v95 = v7;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v96 = type metadata accessor for ClosureAction();
    v97 = swift_allocObject();
    v98 = (v97 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v98 = sub_21DB54;
    v98[1] = v94;
    v99 = v152;
    v100 = v5;
    (*(v152 + 16))(v97 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v95, v5);
    v101 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
    v102 = sub_3EC634();
    (*(*(v102 - 8) + 56))(v97 + v101, 1, 1, v102);

    v103 = v148;
    sub_3E5FB4();
    v104 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v106 = v105;

    (*(v153 + 8))(v103, v151);
    (*(v99 + 8))(v95, v100);

    *(v97 + 16) = v104;
    *(v97 + 24) = v106;
    *(v97 + 32) = 0;
    *(v97 + 40) = 0;
    *(v97 + 48) = 32;
    v156 = v96;
    v157 = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
    v155 = v97;
    v107 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v109 = v108;
    v110 = v144;
    v111 = v149;
    sub_FBD0(v144, v149, &qword_4F1D50);
    sub_FBD0(&v155, v154, &qword_4EDE00);
    v112 = type metadata accessor for ActionMenu.Item(0);
    v113 = v112[7];
    v140(v87 + v113, 1, 1, v141);
    v114 = v112[8];
    v115 = v87 + v112[10];
    *(v115 + 32) = 0;
    *v115 = 0u;
    *(v115 + 16) = 0u;
    *v87 = v107;
    v87[1] = v109;
    v116 = v145;
    v87[2] = v150;
    v87[3] = v116;
    v87[4] = 0;
    v87[5] = 0;
    sub_51F9C(v111, v87 + v113, &qword_4F1D50);
    *(v87 + v114) = 2;
    *(v87 + v112[9]) = (v146 & 1) == 0;
    sub_51F9C(v154, v115, &qword_4EDE00);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v110, &qword_4F1D50);
  }

  sub_FCF8(&v155, &qword_4EDE00);
  return v143;
}

uint64_t sub_218788()
{
  v0 = sub_3E8944();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
    v9 = result;
    swift_beginAccess();
    v10 = *(v1 + 16);
    v10(v6, v9 + v8, v0);
    sub_3E8924();
    v10(v3, v9 + v8, v0);
    swift_beginAccess();
    (*(v1 + 24))(v9 + v8, v6, v0);
    swift_endAccess();
    sub_20A128();

    v11 = *(v1 + 8);
    v11(v3, v0);
    return (v11)(v6, v0);
  }

  return result;
}

uint64_t sub_218974()
{
  v0 = sub_3E8944();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
    v9 = result;
    swift_beginAccess();
    v10 = *(v1 + 16);
    v10(v6, v9 + v8, v0);
    sub_3E8924();
    v10(v3, v9 + v8, v0);
    swift_beginAccess();
    (*(v1 + 24))(v9 + v8, v6, v0);
    swift_endAccess();
    sub_20A128();

    v11 = *(v1 + 8);
    v11(v3, v0);
    return (v11)(v6, v0);
  }

  return result;
}

uint64_t sub_218B58@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v10 = &v66 - v9;
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v18 - 8);
  __chkstk_darwin(v19);
  if (*(v2 + 232) == 7)
  {
    v72 = v17;
    v82 = v14;
    v83 = &v66 - v20;
    v73 = v12;
    v74 = v11;
    v75 = v7;
    v76 = v5;
    v77 = v10;
    v78 = v4;
    v79 = v21;
    v84 = a1;
    v23 = *(v2 + 168);
    v22 = *(v2 + 176);
    v24 = *(v2 + 184);
    v68 = *(v2 + 192);
    v25 = *(v2 + 208);
    v71 = *(v2 + 200);
    v69 = v25;
    v26 = *(v2 + 216);
    v70 = *(v2 + 224);
    v28 = *(v2 + 72);
    v27 = *(v2 + 80);
    __swift_project_boxed_opaque_existential_1((v2 + 48), v28);
    v29 = *(v27 + 544);

    v80 = v23;
    v81 = v22;
    if (v29(v23, v22, v28, v27))
    {
      v30 = [objc_opt_self() mainBundle];
      v65._countAndFlagsBits = 0xEA00000000006C6CLL;
      v88._countAndFlagsBits = 0x415F455641534E55;
      v88._object = 0xEA00000000004C4CLL;
      v89.value._countAndFlagsBits = 0;
      v89.value._object = 0;
      v31.super.isa = v30;
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      v71 = sub_3E5A74(v88, v89, v31, v90, v65);
      v70 = v32;

      v33 = v83;
      sub_3E7774();
      v68 = sub_3E7784();
      v34 = *(v68 - 8);
      v67 = *(v34 + 56);
      v69 = v34 + 56;
      v67(v33, 0, 1, v68);
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      v66 = v35;
      v38 = v80;
      v37 = v81;
      *(v36 + 2) = v35;
      *(v36 + 3) = v38;
      *(v36 + 4) = v37;

      v39 = v72;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v40 = type metadata accessor for ClosureAction();
      v41 = swift_allocObject();
      v42 = (v41 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      *v42 = sub_21DB3C;
      v42[1] = v36;
      v43 = v73;
      v44 = v74;
      (*(v73 + 16))(v82, v39, v74);
      v45 = sub_3EC634();
      v46 = v77;
      (*(*(v45 - 8) + 56))(v77, 1, 1, v45);

      v47 = v75;
      sub_3E5FB4();
      v48 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v50 = v49;

      (*(v76 + 8))(v47, v78);
      (*(v43 + 8))(v39, v44);
      *(v41 + 16) = v48;
      *(v41 + 24) = v50;
      *(v41 + 32) = 0;
      *(v41 + 40) = 0;
      *(v41 + 48) = 32;
      (*(v43 + 32))(v41 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v82, v44);
      sub_FACC(v46, v41 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

      v86[3] = v40;
      v86[4] = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
      v86[0] = v41;
      v51 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v53 = v52;
      v54 = v79;
      sub_FACC(v83, v79, &qword_4F1D50);
      sub_FBD0(v86, v85, &qword_4EDE00);
      v55 = type metadata accessor for ActionMenu.Item(0);
      v56 = v55[7];
      v57 = v84;
      v67(v84 + v56, 1, 1, v68);
      v58 = v55[8];
      v59 = v57 + v55[10];
      *(v59 + 32) = 0;
      *v59 = 0u;
      *(v59 + 16) = 0u;
      *v57 = v51;
      v57[1] = v53;
      v60 = v70;
      v57[2] = v71;
      v57[3] = v60;
      v57[4] = 0;
      v57[5] = 0;
      sub_51F9C(v54, v57 + v56, &qword_4F1D50);
      *(v57 + v58) = 2;
      *(v57 + v55[9]) = 1;
      sub_51F9C(v85, v59, &qword_4EDE00);
      v61 = type metadata accessor for ActionMenu.Child(0);
      swift_storeEnumTagMultiPayload();
      sub_FCF8(v86, &qword_4EDE00);
      return (*(*(v61 - 8) + 56))(v57, 0, 1, v61);
    }

    sub_6BE48(v80, v81, v24, v68, v71, v69, v26, v70, 7u);
    a1 = v84;
  }

  v63 = type metadata accessor for ActionMenu.Child(0);
  v64 = *(*(v63 - 8) + 56);

  return v64(a1, 1, 1, v63);
}

uint64_t sub_219378(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_3E9A04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_3E9924();

    v11 = sub_3E99F4();
    v12 = sub_3ED9F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = v12;
      v14 = v13;
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v14 = 136315394;
      *(v14 + 4) = sub_2EDD0(a2, a3, v26);
      *(v14 + 12) = 2080;
      v15 = [objc_opt_self() callStackSymbols];
      v23 = v5;
      sub_3ED584();

      v16 = sub_3ED594();
      v18 = v17;

      v19 = sub_2EDD0(v16, v18, v26);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_0, v11, v24, "ModernEpisodePresenter.buildUnsaveAllMenuItem() - Unsaving all bookmarked episodes for podcast UUID %s %s", v14, 0x16u);
      swift_arrayDestroy();

      (*(v6 + 8))(v8, v23);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v20 = v10[14];
    v21 = v10[15];
    __swift_project_boxed_opaque_existential_1(v10 + 11, v20);
    v22 = (*(v21 + 32))(a2, a3, v20, v21);
    v26[3] = type metadata accessor for ModernEpisodesPresenter();
    v26[0] = v10;

    sub_21D13C(v22, v26, 0);

    return sub_FCF8(v26, &unk_501090);
  }

  return result;
}

uint64_t sub_219694@<X0>(unint64_t *a1@<X8>)
{
  v66 = a1;
  v2 = sub_3E5FC4();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v62 = &v54 - v5;
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = v1[9];
  v20 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v19);
  if ((*(v20 + 504))(v19, v20))
  {
    v21 = [objc_opt_self() mainBundle];
    v53._countAndFlagsBits = 0xE000000000000000;
    v70._object = 0x800000000042B070;
    v70._countAndFlagsBits = 0xD000000000000014;
    v71.value._countAndFlagsBits = 0;
    v71.value._object = 0;
    v22.super.isa = v21;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v23 = sub_3E5A74(v70, v71, v22, v72, v53);
    v60 = v24;
    v61 = v23;

    v56 = v18;
    sub_3E7774();
    v58 = sub_3E7784();
    v25 = *(v58 - 8);
    v57 = *(v25 + 56);
    v59 = v25 + 56;
    v57(v18, 0, 1, v58);
    v26 = swift_allocObject();
    swift_weakInit();

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v27 = type metadata accessor for ClosureAction();
    v28 = swift_allocObject();
    v29 = (v28 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v29 = sub_21D99C;
    v29[1] = v26;
    v30 = *(v7 + 16);
    v54 = v9;
    v30(v9, v12, v6);
    v31 = sub_3EC634();
    v32 = v62;
    (*(*(v31 - 8) + 56))(v62, 1, 1, v31);

    v33 = v63;
    sub_3E5FB4();
    v34 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v55 = v15;
    v36 = v35;

    (*(v64 + 8))(v33, v65);
    (*(v7 + 8))(v12, v6);
    *(v28 + 16) = v34;
    *(v28 + 24) = v36;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
    *(v28 + 48) = 32;
    (*(v7 + 32))(v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v54, v6);
    sub_FACC(v32, v28 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

    v68[3] = v27;
    v68[4] = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
    v68[0] = v28;
    v37 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v39 = v38;
    v40 = v55;
    sub_FACC(v56, v55, &qword_4F1D50);
    sub_FBD0(v68, v67, &qword_4EDE00);
    v41 = type metadata accessor for ActionMenu.Item(0);
    v42 = v41[7];
    v43 = v66;
    v57(v66 + v42, 1, 1, v58);
    v44 = v41[8];
    v45 = v43 + v41[10];
    *(v45 + 32) = 0;
    *v45 = 0u;
    *(v45 + 16) = 0u;
    *v43 = v37;
    v43[1] = v39;
    v46 = v60;
    v43[2] = v61;
    v43[3] = v46;
    v43[4] = 0;
    v43[5] = 0;
    sub_51F9C(v40, v43 + v42, &qword_4F1D50);
    *(v43 + v44) = 1;
    *(v43 + v41[9]) = 1;
    sub_51F9C(v67, v45, &qword_4EDE00);
    v47 = type metadata accessor for ActionMenu.Child(0);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v68, &qword_4EDE00);
    return (*(*(v47 - 8) + 56))(v43, 0, 1, v47);
  }

  else
  {
    v49 = type metadata accessor for ActionMenu.Child(0);
    v50 = *(*(v49 - 8) + 56);
    v51 = v49;
    v52 = v66;

    return v50(v52, 1, 1, v51);
  }
}

uint64_t sub_219D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v73 = a3;
  v6 = sub_3E5FC4();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v69 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v68 = v58 - v9;
  v10 = sub_3EC1F4();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v72 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v15 - 8);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v58 - v19;
  v21 = v3[9];
  v22 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v21);
  if ((*(v22 + 496))(a1, a2, v21, v22))
  {
    v63 = v17;
    v23 = [objc_opt_self() mainBundle];
    v57._countAndFlagsBits = 0x800000000042B090;
    v77._countAndFlagsBits = 0xD00000000000001FLL;
    v77._object = 0x8000000000427470;
    v78.value._countAndFlagsBits = 0;
    v78.value._object = 0;
    v24.super.isa = v23;
    v79._countAndFlagsBits = 0;
    v79._object = 0xE000000000000000;
    v25 = sub_3E5A74(v77, v78, v24, v79, v57);
    v64 = v26;
    v65 = v25;

    v59 = v20;
    sub_3E7774();
    v61 = sub_3E7784();
    v27 = *(v61 - 8);
    v60 = *(v27 + 56);
    v62 = v27 + 56;
    v60(v20, 0, 1, v61);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v58[1] = v28;
    v29[2] = v28;
    v29[3] = a1;
    v29[4] = a2;

    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v30 = type metadata accessor for ClosureAction();
    v31 = swift_allocObject();
    v32 = (v31 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v32 = sub_21DA58;
    v32[1] = v29;
    v33 = v66;
    v34 = v67;
    (*(v66 + 16))(v72, v14, v67);
    v35 = sub_3EC634();
    v36 = v68;
    (*(*(v35 - 8) + 56))(v68, 1, 1, v35);

    v37 = v69;
    sub_3E5FB4();
    v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v40 = v39;

    (*(v70 + 8))(v37, v71);
    (*(v33 + 8))(v14, v34);
    *(v31 + 16) = v38;
    *(v31 + 24) = v40;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0;
    *(v31 + 48) = 32;
    (*(v33 + 32))(v31 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v72, v34);
    sub_FACC(v36, v31 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

    v75[3] = v30;
    v75[4] = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
    v75[0] = v31;
    v41 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v43 = v42;
    v44 = v63;
    sub_FACC(v59, v63, &qword_4F1D50);
    sub_FBD0(v75, v74, &qword_4EDE00);
    v45 = type metadata accessor for ActionMenu.Item(0);
    v46 = v45[7];
    v47 = v73;
    v60(v73 + v46, 1, 1, v61);
    v48 = v45[8];
    v49 = v47 + v45[10];
    *(v49 + 32) = 0;
    *v49 = 0u;
    *(v49 + 16) = 0u;
    *v47 = v41;
    v47[1] = v43;
    v50 = v64;
    v47[2] = v65;
    v47[3] = v50;
    v47[4] = 0;
    v47[5] = 0;
    sub_51F9C(v44, v47 + v46, &qword_4F1D50);
    *(v47 + v48) = 1;
    *(v47 + v45[9]) = 1;
    sub_51F9C(v74, v49, &qword_4EDE00);
    v51 = type metadata accessor for ActionMenu.Child(0);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v75, &qword_4EDE00);
    return (*(*(v51 - 8) + 56))(v47, 0, 1, v51);
  }

  else
  {
    v53 = type metadata accessor for ActionMenu.Child(0);
    v54 = *(*(v53 - 8) + 56);
    v55 = v53;
    v56 = v73;

    return v54(v56, 1, 1, v55);
  }
}

void *sub_21A4E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[14];
    v2 = result[15];
    v3 = result;
    __swift_project_boxed_opaque_existential_1(result + 11, v1);
    v4 = (*(v2 + 48))(v1, v2);
    v5[3] = type metadata accessor for ModernEpisodesPresenter();
    v5[0] = v3;

    sub_21D13C(v4, v5, 0);

    return sub_FCF8(v5, &unk_501090);
  }

  return result;
}

void *sub_21A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result[14];
    v7 = result[15];
    v8 = result;
    __swift_project_boxed_opaque_existential_1(result + 11, v6);
    v9 = (*(v7 + 40))(a2, a3, v6, v7);
    v10[3] = type metadata accessor for ModernEpisodesPresenter();
    v10[0] = v8;

    sub_21D13C(v9, v10, 0);

    return sub_FCF8(v10, &unk_501090);
  }

  return result;
}

uint64_t sub_21A6CC@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, unint64_t *a3@<X8>)
{
  v69 = a3;
  v5 = sub_3E5FC4();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v66 = &v55 - v8;
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = sub_3E7F44();
  v21 = v20;
  if (v19 == sub_3E7F44() && v21 == v22)
  {

    v23 = 0;
  }

  else
  {
    v24 = sub_3EE804();

    v23 = 0;
    if ((v24 & 1) == 0)
    {
      v23 = sub_3E7F24() ^ 1;
    }
  }

  v67 = v23;
  v25 = EpisodeSortType.displayTitle.getter(a1);
  v64 = v26;
  v65 = v25;
  v27 = EpisodeSortType.displaySubtitle(with:)(a2);
  v61 = v28;
  v62 = v27;
  v59 = sub_3E7784();
  v29 = *(v59 - 8);
  v58 = *(v29 + 56);
  v60 = v29 + 56;
  v58(v18, 1, 1, v59);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v57 = v30;
  *(v31 + 16) = v30;
  *(v31 + 24) = a1;

  v32 = v15;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v33 = type metadata accessor for ClosureAction();
  v34 = swift_allocObject();
  v35 = (v34 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v35 = sub_21DBA0;
  v35[1] = v31;
  v36 = *(v10 + 16);
  v56 = v12;
  v36(v12, v15, v9);
  v37 = sub_3EC634();
  v38 = v66;
  (*(*(v37 - 8) + 56))(v66, 1, 1, v37);

  v39 = v68;
  sub_3E5FB4();
  v63 = v18;
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;

  (*(v70 + 8))(v39, v71);
  (*(v10 + 8))(v32, v9);
  *(v34 + 16) = v40;
  *(v34 + 24) = v42;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0;
  *(v34 + 48) = 32;
  (*(v10 + 32))(v34 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v56, v9);
  sub_FACC(v38, v34 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  v73[3] = v33;
  v73[4] = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
  v73[0] = v34;
  v43 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v45 = v44;
  sub_FBD0(v73, v72, &qword_4EDE00);
  v46 = type metadata accessor for ActionMenu.Item(0);
  v47 = v46[7];
  v48 = v69;
  v58(v69 + v47, 1, 1, v59);
  v49 = v46[8];
  v50 = v48 + v46[10];
  *(v50 + 32) = 0;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *v48 = v43;
  v48[1] = v45;
  v51 = v64;
  v48[2] = v65;
  v48[3] = v51;
  v52 = v61;
  v48[4] = v62;
  v48[5] = v52;
  sub_51F9C(v63, v48 + v47, &qword_4F1D50);
  *(v48 + v49) = 2;
  *(v48 + v46[9]) = v67 & 1;
  sub_51F9C(v72, v50, &qword_4EDE00);
  v53 = type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v73, &qword_4EDE00);
  return (*(*(v53 - 8) + 56))(v48, 0, 1, v53);
}

void *sub_21AD3C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v48 - v4);
  v51 = type metadata accessor for ActionMenu.Child(0);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 184);
  v8 = *(v1 + 216);
  v56 = *(v1 + 200);
  v57 = v8;
  v58 = *(v1 + 232);
  v52 = v1;
  v54 = *(v1 + 168);
  v55 = v7;
  v9 = sub_3E7EC4();
  if ((a1 & 1) != 0 && _UISolariumEnabled())
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 32);
      v12 = _swiftEmptyArrayStorage;
      do
      {
        v14 = *v11++;
        v13 = v14;
        v15 = sub_3E7F44();
        v17 = v16;
        if (v15 == sub_3E7F44() && v17 == v18)
        {
        }

        else
        {
          v20 = sub_3EE804();

          if ((v20 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v53 = v12;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_41E1C(0, v12[2] + 1, 1);
              v12 = v53;
            }

            v23 = v12[2];
            v22 = v12[3];
            if (v23 >= v22 >> 1)
            {
              sub_41E1C((v22 > 1), v23 + 1, 1);
              v12 = v53;
            }

            v12[2] = v23 + 1;
            *(v12 + v23 + 32) = v13;
          }
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    v9 = v12;
  }

  v25 = sub_116358(v24, &off_4B2088);

  if (v25)
  {
    goto LABEL_21;
  }

  v27 = sub_116358(v26, &off_4B20B0);

  if (v27)
  {
    goto LABEL_21;
  }

  swift_beginAccess();
  v30 = sub_3E8914();
  swift_endAccess();
  v31 = *(v9 + 16);
  if (!v31)
  {

    v33 = _swiftEmptyArrayStorage;
    v43 = _swiftEmptyArrayStorage[2];
    if (v43)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  v53 = _swiftEmptyArrayStorage;
  sub_41E1C(0, v31, 0);
  v32 = 32;
  v33 = v53;
  do
  {
    v34 = *(v9 + v32);
    v35 = sub_3E7F44();
    v37 = v36;
    if (v35 == sub_3E7F44() && v37 == v38)
    {

LABEL_32:
      v34 = sub_3E7F34();
      goto LABEL_33;
    }

    v40 = sub_3EE804();

    if (v40)
    {
      goto LABEL_32;
    }

LABEL_33:
    v53 = v33;
    v42 = v33[2];
    v41 = v33[3];
    if (v42 >= v41 >> 1)
    {
      sub_41E1C((v41 > 1), v42 + 1, 1);
      v33 = v53;
    }

    v33[2] = v42 + 1;
    *(v33 + v42 + 32) = v34;
    ++v32;
    --v31;
  }

  while (v31);

  v43 = v33[2];
  if (!v43)
  {
LABEL_21:

    return _swiftEmptyArrayStorage;
  }

LABEL_37:
  v28 = _swiftEmptyArrayStorage;
  v44 = (v49 + 48);
  v45 = 32;
  do
  {
    sub_21A6CC(*(v33 + v45), v30, v5);
    if ((*v44)(v5, 1, v51) == 1)
    {
      sub_FCF8(v5, &qword_4EA7C8);
    }

    else
    {
      sub_21DCCC(v5, v50, type metadata accessor for ActionMenu.Child);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_E0140(0, v28[2] + 1, 1, v28);
      }

      v47 = v28[2];
      v46 = v28[3];
      if (v47 >= v46 >> 1)
      {
        v28 = sub_E0140(v46 > 1, v47 + 1, 1, v28);
      }

      v28[2] = v47 + 1;
      sub_21DCCC(v50, v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, type metadata accessor for ActionMenu.Child);
    }

    ++v45;
    --v43;
  }

  while (v43);

  return v28;
}

void *sub_21B28C()
{
  v172 = sub_3E5FC4();
  v175 = *(v172 - 8);
  __chkstk_darwin(v172);
  v2 = &v141 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3EC1F4();
  v176 = *(v3 - 8);
  __chkstk_darwin(v3);
  v173 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = &v141 - v9;
  __chkstk_darwin(v10);
  v12 = &v141 - v11;
  __chkstk_darwin(v13);
  v15 = &v141 - v14;
  __chkstk_darwin(v16);
  v18 = &v141 - v17;
  v19 = *(v0 + 184);
  v20 = *(v0 + 216);
  v183 = *(v0 + 200);
  v184 = v20;
  v185 = *(v0 + 232);
  v181 = *(v0 + 168);
  v182 = v19;
  if ((sub_3E7EF4() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v149 = v7;
  swift_beginAccess();
  v157 = v0;
  v21 = sub_3E88A4();
  v165 = v21;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v169 = type metadata accessor for ActionMenu.Child(0);
  v22 = *(v169 - 8);
  v167 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v147 = v24;
  *(v24 + 16) = xmmword_3F52F0;
  v168 = v15;
  v156 = (v24 + v23);
  v155 = objc_opt_self();
  v25 = [v155 mainBundle];
  v137._countAndFlagsBits = 0xE000000000000000;
  v186._countAndFlagsBits = 0x6B6565572031;
  v186._object = 0xE600000000000000;
  v190.value._countAndFlagsBits = 0;
  v190.value._object = 0;
  v26.super.isa = v25;
  v194._countAndFlagsBits = 0;
  v194._object = 0xE000000000000000;
  v146 = sub_3E5A74(v186, v190, v26, v194, v137);
  v145 = v27;

  v174 = sub_3E7784();
  v28 = *(v174 - 8);
  v170 = *(v28 + 56);
  v171 = v28 + 56;
  v170(v18, 1, 1, v174);
  v143 = v18;
  v144 = v21 != 0;
  v29 = swift_allocObject();
  v30 = v176;
  v31 = v29;
  swift_weakInit();

  v32 = v173;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v33 = type metadata accessor for ClosureAction();
  v150 = v33;
  v34 = swift_allocObject();
  v35 = v3;
  v36 = v34;
  v37 = (v34 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v37 = sub_21DA64;
  v37[1] = v31;
  v38 = *(v30 + 16);
  v163 = v30 + 16;
  v164 = v38;
  v39 = v35;
  v152 = v35;
  (v38)(v34 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v32);
  v40 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v162 = sub_3EC634();
  v41 = *(v162 - 8);
  v161 = *(v41 + 56);
  v154 = v41 + 56;
  v161(v36 + v40, 1, 1, v162);

  sub_3E5FB4();
  v42 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v2;
  v153 = v2;
  v45 = v44;

  v148 = v12;
  v46 = *(v175 + 8);
  v175 += 8;
  v160 = v46;
  v46(v43, v172);
  v47 = *(v30 + 8);
  v176 = v30 + 8;
  v159 = v47;
  v47(v32, v39);

  *(v36 + 16) = v42;
  *(v36 + 24) = v45;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 48) = 32;
  v179 = v33;
  v158 = sub_20C25C(&qword_4F13D8, type metadata accessor for ClosureAction);
  v180 = v158;
  v178 = v36;
  v48 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v142 = v49;
  v50 = v143;
  v51 = v168;
  sub_FBD0(v143, v168, &qword_4F1D50);
  sub_FBD0(&v178, v177, &qword_4EDE00);
  v52 = type metadata accessor for ActionMenu.Item(0);
  v53 = v52[7];
  v54 = v156;
  v55 = v170;
  v170(v156 + v53, 1, 1, v174);
  v56 = v52[8];
  v57 = v52[10];
  v151 = v52;
  v58 = v54 + v57;
  *(v58 + 32) = 0;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  v59 = v142;
  *v54 = v48;
  v54[1] = v59;
  v60 = v145;
  v54[2] = v146;
  v54[3] = v60;
  v54[4] = 0;
  v54[5] = 0;
  sub_51F9C(v51, v54 + v53, &qword_4F1D50);
  *(v54 + v56) = 2;
  *(v54 + v52[9]) = v144;
  sub_51F9C(v177, v58, &qword_4EDE00);
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v50, &qword_4F1D50);
  sub_FCF8(&v178, &qword_4EDE00);
  v61 = [v155 mainBundle];
  v138._countAndFlagsBits = 0xE000000000000000;
  v187._countAndFlagsBits = 0x736B6565572032;
  v187._object = 0xE700000000000000;
  v191.value._countAndFlagsBits = 0;
  v191.value._object = 0;
  v62.super.isa = v61;
  v195._countAndFlagsBits = 0;
  v195._object = 0xE000000000000000;
  v146 = sub_3E5A74(v187, v191, v62, v195, v138);
  v145 = v63;

  v64 = v148;
  v55(v148, 1, 1, v174);
  v144 = v165 != 1;
  v65 = (v54 + v167);
  v66 = swift_allocObject();
  swift_weakInit();

  v67 = v173;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v68 = v150;
  v69 = swift_allocObject();
  v70 = (v69 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v70 = sub_21DA84;
  v70[1] = v66;
  v71 = v152;
  v164(v69 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v67, v152);
  v161(v69 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, 1, 1, v162);

  v72 = v153;
  sub_3E5FB4();
  v73 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v75 = v74;

  v160(v72, v172);
  v159(v67, v71);

  *(v69 + 16) = v73;
  *(v69 + 24) = v75;
  *(v69 + 32) = 0;
  *(v69 + 40) = 0;
  *(v69 + 48) = 32;
  v179 = v68;
  v180 = v158;
  v178 = v69;
  v76 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v78 = v77;
  v79 = v168;
  sub_FBD0(v64, v168, &qword_4F1D50);
  sub_FBD0(&v178, v177, &qword_4EDE00);
  v80 = v151;
  v81 = v151[7];
  v82 = v174;
  v83 = v170;
  v170(v65 + v81, 1, 1, v174);
  v84 = v80[8];
  v85 = v65 + v80[10];
  *(v85 + 32) = 0;
  *v85 = 0u;
  *(v85 + 16) = 0u;
  *v65 = v76;
  v65[1] = v78;
  v86 = v145;
  v65[2] = v146;
  v65[3] = v86;
  v65[4] = 0;
  v65[5] = 0;
  sub_51F9C(v79, v65 + v81, &qword_4F1D50);
  *(v65 + v84) = 2;
  *(v65 + v80[9]) = v144;
  sub_51F9C(v177, v85, &qword_4EDE00);
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v148, &qword_4F1D50);
  sub_FCF8(&v178, &qword_4EDE00);
  v87 = [v155 mainBundle];
  v139._countAndFlagsBits = 0xE000000000000000;
  v188._countAndFlagsBits = 0x68746E6F4D2031;
  v188._object = 0xE700000000000000;
  v192.value._countAndFlagsBits = 0;
  v192.value._object = 0;
  v88.super.isa = v87;
  v196._countAndFlagsBits = 0;
  v196._object = 0xE000000000000000;
  v146 = sub_3E5A74(v188, v192, v88, v196, v139);
  v145 = v89;

  v83(v166, 1, 1, v82);
  v144 = v165 != 2;
  v148 = (2 * v167);
  v90 = (v156 + 2 * v167);
  v91 = swift_allocObject();
  swift_weakInit();

  v92 = v173;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v93 = v150;
  v94 = swift_allocObject();
  v95 = (v94 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v95 = sub_21DAA4;
  v95[1] = v91;
  v96 = v152;
  v164(v94 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v92, v152);
  v161(v94 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, 1, 1, v162);

  v97 = v153;
  sub_3E5FB4();
  v98 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v100 = v99;

  v160(v97, v172);
  v159(v92, v96);

  *(v94 + 16) = v98;
  *(v94 + 24) = v100;
  *(v94 + 32) = 0;
  *(v94 + 40) = 0;
  *(v94 + 48) = 32;
  v179 = v93;
  v180 = v158;
  v178 = v94;
  v101 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v103 = v102;
  v104 = v166;
  v105 = v168;
  sub_FBD0(v166, v168, &qword_4F1D50);
  sub_FBD0(&v178, v177, &qword_4EDE00);
  v106 = v151;
  v107 = v151[7];
  v170(v90 + v107, 1, 1, v174);
  v108 = v106[8];
  v109 = v90 + v106[10];
  *(v109 + 32) = 0;
  *v109 = 0u;
  *(v109 + 16) = 0u;
  *v90 = v101;
  v90[1] = v103;
  v110 = v145;
  v90[2] = v146;
  v90[3] = v110;
  v90[4] = 0;
  v90[5] = 0;
  sub_51F9C(v105, v90 + v107, &qword_4F1D50);
  *(v90 + v108) = 2;
  *(v90 + v106[9]) = v144;
  sub_51F9C(v177, v109, &qword_4EDE00);
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v104, &qword_4F1D50);
  sub_FCF8(&v178, &qword_4EDE00);
  v111 = [v155 mainBundle];
  v140._countAndFlagsBits = 0xE000000000000000;
  v189._countAndFlagsBits = 7105601;
  v189._object = 0xE300000000000000;
  v193.value._countAndFlagsBits = 0;
  v193.value._object = 0;
  v112.super.isa = v111;
  v197._countAndFlagsBits = 0;
  v197._object = 0xE000000000000000;
  v166 = sub_3E5A74(v189, v193, v112, v197, v140);
  v155 = v113;

  v114 = v149;
  v170(v149, 1, 1, v174);
  LODWORD(v165) = v165 != 3;
  v115 = &v148[v167 + v156];
  v116 = swift_allocObject();
  swift_weakInit();

  v117 = v173;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v118 = v150;
  v119 = swift_allocObject();
  v120 = (v119 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v120 = sub_21DAC4;
  v120[1] = v116;
  v121 = v152;
  v164(v119 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v117, v152);
  v161(v119 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, 1, 1, v162);

  v122 = v153;
  sub_3E5FB4();
  v123 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v125 = v124;

  v160(v122, v172);
  v159(v117, v121);

  *(v119 + 16) = v123;
  *(v119 + 24) = v125;
  *(v119 + 32) = 0;
  *(v119 + 40) = 0;
  *(v119 + 48) = 32;
  v179 = v118;
  v180 = v158;
  v178 = v119;
  v126 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v128 = v127;
  v129 = v168;
  sub_FBD0(v114, v168, &qword_4F1D50);
  sub_FBD0(&v178, v177, &qword_4EDE00);
  v130 = v151;
  v131 = v151[7];
  v170(v115 + v131, 1, 1, v174);
  v132 = v130[8];
  v133 = v130;
  v134 = v115 + v130[10];
  *(v134 + 32) = 0;
  *v134 = 0u;
  *(v134 + 16) = 0u;
  *v115 = v126;
  v115[1] = v128;
  v135 = v155;
  v115[2] = v166;
  v115[3] = v135;
  v115[4] = 0;
  v115[5] = 0;
  sub_51F9C(v129, v115 + v131, &qword_4F1D50);
  *(v115 + v132) = 2;
  *(v115 + v133[9]) = v165;
  sub_51F9C(v177, v134, &qword_4EDE00);
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v149, &qword_4F1D50);
  sub_FCF8(&v178, &qword_4EDE00);
  return v147;
}

uint64_t sub_21C580()
{
  v0 = sub_3E8944();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_episodeListSettings;
    v9 = result;
    swift_beginAccess();
    v10 = *(v1 + 16);
    v10(v6, v9 + v8, v0);
    sub_3E88B4();
    v10(v3, v9 + v8, v0);
    swift_beginAccess();
    (*(v1 + 24))(v9 + v8, v6, v0);
    swift_endAccess();
    sub_20A128();

    v11 = *(v1 + 8);
    v11(v3, v0);
    return (v11)(v6, v0);
  }

  return result;
}

void *sub_21C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);

  v6 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(v5, v4);

  return v6;
}

Class sub_21C7E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_36174(0, &unk_5010A0);
  sub_3ED584();
  v1();

  v2.super.isa = sub_3ED574().super.isa;

  return v2.super.isa;
}

uint64_t sub_21C880(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 184);
    v4 = *(result + 216);
    v7[2] = *(result + 200);
    v7[3] = v4;
    v8 = *(result + 232);
    v7[0] = *(result + 168);
    v7[1] = v3;
    sub_DAD10(v7, v6);
    v5 = sub_3E7E74();
    sub_20C1D8(v7);
    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v6[0] = (v1 & 1) == 0;
      return sub_3E9EB4();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21C96C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a2;
  v5 = type metadata accessor for ModernShelf();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v22 = a3;
    v27 = _swiftEmptyArrayStorage;
    sub_41CF0(0, v12, 0);
    v14 = 0;
    v13 = v27;
    v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v23 = v11 + v24;
    while (v14 < *(v11 + 16))
    {
      v15 = v6;
      v16 = *(v6 + 72);
      v17 = v25;
      sub_21DD34(v23 + v16 * v14, v25, type metadata accessor for ModernShelf);
      sub_21CC10(v17, v10);
      sub_21DD9C(v17, type metadata accessor for ModernShelf);
      v27 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_41CF0(v18 > 1, v19 + 1, 1);
        v13 = v27;
      }

      ++v14;
      v13[2] = v19 + 1;
      sub_21DCCC(v10, v13 + v24 + v19 * v16, type metadata accessor for ModernShelf);
      v6 = v15;
      if (v12 == v14)
      {
        a3 = v22;
        goto LABEL_8;
      }
    }

    __break(1u);
    sub_21DD9C(v6, type metadata accessor for ModernShelf);

    __break(1u);
  }

  else
  {
LABEL_8:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_frozenLockupShelves) = v13;
    }

    *a3 = v13;
  }

  return result;
}

uint64_t sub_21CC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for ModernShelf();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_5;
  }

  v30 = v11;
  v31 = v14;
  v32 = a2;
  v16 = a1;
  v17 = *(Strong + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter_frozenLockupShelves);

  __chkstk_darwin(v18);
  *(&v30 - 2) = v16;
  sub_2B627C(sub_21DBB4, v17, v7);
  v33 = v2;

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    a2 = v32;
    a1 = v16;
LABEL_5:
    sub_FCF8(v7, &unk_503DA0);
    return sub_21DD34(a1, a2, type metadata accessor for ModernShelf);
  }

  v19 = v31;
  sub_21DCCC(v7, v31, type metadata accessor for ModernShelf);
  v20 = sub_373FAC(*(v19 + *(v8 + 28)));
  a2 = v32;
  if (!v20)
  {
    sub_21DD9C(v19, type metadata accessor for ModernShelf);
LABEL_12:
    a1 = v16;
    return sub_21DD34(a1, a2, type metadata accessor for ModernShelf);
  }

  v21 = v20;
  v22 = sub_373FAC(*(v16 + *(v8 + 28)));
  if (!v22)
  {
    sub_21DD9C(v19, type metadata accessor for ModernShelf);

    goto LABEL_12;
  }

  v23 = v22;
  sub_21DD34(v16, v30, type metadata accessor for ModernShelf);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E9EA4();

    v24 = v34;
  }

  else
  {
    v24 = 0;
  }

  v26 = sub_2D57C8(v21, v23, v24);

  v27 = sub_76CAC(v26);

  sub_21DD9C(v19, type metadata accessor for ModernShelf);
  v28 = *(v8 + 28);
  v29 = v30;

  *(v29 + v28) = v27;
  return sub_21DCCC(v29, a2, type metadata accessor for ModernShelf);
}

uint64_t sub_21D048@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_21D0C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_21D13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v24[3] = type metadata accessor for SheetAction();
  v24[4] = sub_20C25C(&qword_4FA1A0, type metadata accessor for SheetAction);
  v24[0] = a1;
  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  v12 = sub_3E6434();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v11, a2, a3);

  sub_FCF8(v11, &qword_5005B0);
  sub_1F958(v24, v22);
  v23 = v13;
  sub_E69A0(v22, v21);
  v14 = swift_allocObject();
  v15 = v21[1];
  v14[1] = v21[0];
  v14[2] = v15;
  v14[3] = v21[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v16 = sub_3ECE04();
  v17 = sub_3ED6F4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_4072F0;
  v18[5] = v14;
  v18[6] = v16;

  sub_E8ECC(0, 0, v8, &unk_407300, v18);

  sub_E91B8(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v16;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21D4D4(uint64_t a1)
{
  result = sub_20C25C(&qword_4FA000, type metadata accessor for ModernEpisodesPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ModernEpisodesPresenter()
{
  result = qword_4FA068;
  if (!qword_4FA068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D60C@<X0>(uint64_t *a1@<X8>)
{
  result = ModernEpisodesPresenter.refreshControls.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21D638(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC8ShelfKit23ModernEpisodesPresenter____lazy_storage___refreshControls) = *a1;
}

void sub_21D68C()
{
  sub_3E8944();
  if (v0 <= 0x3F)
  {
    sub_1F09A0();
    if (v1 <= 0x3F)
    {
      sub_1835E8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21D864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21D8B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D920()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21D958()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_21D9A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_21D9E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t objectdestroy_20Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_21DBB4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_3EE804() & 1;
  }
}

uint64_t sub_21DC14()
{
  sub_6BE48(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_21DC70(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA228);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_21DCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DD9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ModernStationDetailPresenter.reorderingExtension.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  if (v4 == 1)
  {
    v6 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    v12 = v2[3];
    v5 = sub_21E170;
    v2[3] = sub_21E170;
    v2[4] = v6;
    v7 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v2[5] = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v2[6] = 0;
    v9 = sub_21E1D8;
    v2[7] = sub_21E1D8;
    v2[8] = v10;

    sub_1FA4B4(v12);
    v8 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;

  return sub_1FA514(v4);
}

uint64_t sub_21DFF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21E02C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = *(*a2 + 24);
  v8[3] = *a1;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  sub_1FA524(v2);

  return sub_1FA4B4(v9);
}

uint64_t ModernStationDetailPresenter.reorderingExtension.setter(_OWORD *a1)
{
  v2 = *(v1 + 24);
  v3 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = a1[2];
  return sub_1FA4B4(v2);
}

uint64_t sub_21E0DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station);
    if (*(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) == 1)
    {

      return 0;
    }

    else
    {
      v2 = *(v1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder);

      return v2 == 2;
    }
  }

  return result;
}

uint64_t sub_21E178(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21E1E0(a2);
  }

  return result;
}

uint64_t sub_21E1E0(uint64_t result)
{
  if ((*(*(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station) + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped) & 1) == 0)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = result + 32;
      v4 = _swiftEmptyArrayStorage;
      do
      {
        sub_1F958(v3, &v17);
        sub_1D4F0(&v17, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        type metadata accessor for LibraryEpisodeLockup();
        if (swift_dynamicCast())
        {
          v7 = *(v15 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
          v6 = *(v15 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid + 8);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_DFAE8(0, *(v4 + 2) + 1, 1, v4);
          }

          v9 = *(v4 + 2);
          v8 = *(v4 + 3);
          if (v9 >= v8 >> 1)
          {
            v4 = sub_DFAE8((v8 > 1), v9 + 1, 1, v4);
          }

          *(v4 + 2) = v9 + 1;
          v5 = &v4[16 * v9];
          *(v5 + 4) = v7;
          *(v5 + 5) = v6;
        }

        v3 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v10 = *(v14 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryDataProvider + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(&v17, ObjectType, v10);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    (*(v13 + 216))(*(v14 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid), *(v14 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid + 8), v4, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v17);
  }

  return result;
}