uint64_t sub_55D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v7 = sub_20410(&unk_3519B0, &qword_2D1230);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v86 = v72 - v9;
  v92 = sub_2CD220();
  v87 = *(v92 - 8);
  v10 = *(v87 + 64);
  v11 = __chkstk_darwin(v92);
  v91 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = v72 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v75 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v22 = v15[2];
  v72[1] = v15 + 2;
  v72[0] = v22;
  v22(v20, v21, v14);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  v25 = os_log_type_enabled(v23, v24);
  v79 = a2;
  v80 = a4;
  v78 = a1;
  v73 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v93 = v27;
    *v26 = 136446210;
    v28 = sub_2CCCA0();
    v30 = sub_3F08(v28, v29, &v93);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "MediaItemDisambiguationStrategy#disambiguationSnippet... %{public}s", v26, 0xCu);
    sub_306C(v27);
  }

  v74 = v15[1];
  result = v74(v20, v14);
  v32 = v88;
  v77 = v14;
  if (v88 >> 62)
  {
    result = sub_2CEDA0();
    v33 = result;
  }

  else
  {
    v33 = *(&dword_10 + (v88 & 0xFFFFFFFFFFFFFF8));
  }

  v76 = v15;
  if (v33)
  {
    if (v33 >= 1)
    {
      v34 = 0;
      v35 = v32 & 0xC000000000000001;
      v82 = v87 + 8;
      v83 = (v87 + 16);
      v81 = v87 + 32;
      v36 = _swiftEmptyArrayStorage;
      v37 = &selRef_hasTwoOrMoreRooms;
      v84 = v32 & 0xC000000000000001;
      v85 = v33;
      while (1)
      {
        if (v35)
        {
          v38 = sub_2CECD0();
        }

        else
        {
          v38 = *(v32 + 8 * v34 + 32);
        }

        v39 = v38;
        v40 = [v38 v37[12]];
        if (v40)
        {
          v41 = v40;
          sub_2CE270();

          v42 = [v39 title];
          if (v42)
          {
            v43 = v42;
            sub_2CE270();
            v89 = v44;

            v45 = [v39 artist];
            if (v45)
            {
              v46 = v45;
              v47 = v36;
              v48 = sub_2CE270();
              v50 = v49;
            }

            else
            {
              v47 = v36;
              v48 = 0;
              v50 = 0;
            }

            sub_565E8(v48, v50, [v39 type]);

            v51 = sub_2C8D90();
            (*(*(v51 - 8) + 56))(v86, 1, 1, v51);
            v52 = v90;
            sub_2CD210();
            (*v83)(v91, v52, v92);
            v36 = v47;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_B91F8(0, v47[2] + 1, 1, v47);
            }

            v35 = v84;
            v33 = v85;
            v37 = &selRef_hasTwoOrMoreRooms;
            v54 = v36[2];
            v53 = v36[3];
            if (v54 >= v53 >> 1)
            {
              v36 = sub_B91F8(v53 > 1, v54 + 1, 1, v36);
            }

            v55 = v87;
            v56 = v92;
            (*(v87 + 8))(v90, v92);
            v36[2] = v54 + 1;
            (*(v55 + 32))(v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54, v91, v56);
            v32 = v88;
            goto LABEL_12;
          }
        }

LABEL_12:
        if (v33 == ++v34)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v57 = v75;
    v58 = v77;
    (v72[0])(v75, v73, v77);
    v59 = sub_2CDFE0();
    v60 = sub_2CE670();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v61 = 136315394;

      v62 = sub_2CE420();
      v64 = v63;

      v65 = sub_3F08(v62, v64, &v93);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2082;
      v66 = sub_2CCCA0();
      v68 = sub_3F08(v66, v67, &v93);

      *(v61 + 14) = v68;
      _os_log_impl(&dword_0, v59, v60, "MediaItemDisambiguationStrategy#disambiguationSnippet returning items to disambiguate: %s %{public}s", v61, 0x16u);
      swift_arrayDestroy();
    }

    v74(v57, v58);
    v69 = v80;

    sub_2CD310();
    v70 = enum case for SiriAudioSnippets.disambiguation(_:);
    v71 = sub_2CD230();
    (*(*(v71 - 8) + 104))(v69, v70, v71);
  }

  return result;
}

uint64_t sub_565E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v19[0] = a1;
  v5 = *v3;
  v20 = sub_2C8EC0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[19];
  v19[1] = sub_35E0(v3 + 15, v3[18]);
  sub_1E93D4(a3);
  v12 = v3[20];
  v11 = v3[21];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v15 = sub_2CC620();
  v17 = v16;

  (*(v6 + 8))(v9, v20);
  if (v21)
  {
    v22 = v19[0];
    v23 = v21;

    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    sub_2CE350(v24);
    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_2CE350(v25);

    return v22;
  }

  return v15;
}

uint64_t sub_567DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a3;
  v24 = a4;
  v25 = sub_2C9C40();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  v14 = sub_2CB260();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_20410(&unk_353020, &unk_2D0970);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_F3F4(a2, v23 - v18, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v24, v13, &qword_34C6E8, &unk_2D0FF0);
  v19 = *&v13[*(v10 + 56)];
  v20 = [v19 catId];

  sub_2CE270();
  sub_2CA590();
  v21 = sub_2CA130();
  (*(*(v21 - 8) + 8))(v13, v21);
  sub_2CA5F0();
  sub_2CA5A0();
  (*(v5 + 104))(v8, enum case for ResponseType.disambiguation(_:), v25);
  return sub_2CA580();
}

uint64_t sub_56AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = sub_2CE000();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_56BB0, 0, 0);
}

uint64_t sub_56BB0()
{
  v34 = v0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2CDFE0();
  v6 = sub_2CE670();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446210;
    v13 = sub_2CCCA0();
    v15 = sub_3F08(v13, v14, &v33);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "MediaItemDisambiguationStrategy#clarificationOutput returning output. %{public}s", v11, 0xCu);
    sub_306C(v12);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[14];
  v16 = v0[15];
  v19 = v0[11];
  v18 = v0[12];
  v20 = sub_2CA080();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[19] = sub_2CA070();
  v23 = sub_2CD230();
  v0[5] = v23;
  v0[6] = sub_5C3A4(&qword_34CC78, &type metadata accessor for SiriAudioSnippets);
  v24 = sub_F390(v0 + 2);
  (*(*(v23 - 8) + 16))(v24, v19, v23);
  sub_20410(&unk_351900, &unk_2D0960);
  v25 = swift_allocObject();
  v0[20] = v25;
  *(v25 + 16) = xmmword_2D0770;
  sub_F3F4(v18, v16, &qword_34C6E8, &unk_2D0FF0);
  *(v25 + 32) = *(v16 + *(v17 + 48));
  v26 = sub_2CA130();
  (*(*(v26 - 8) + 8))(v16, v26);
  v27 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v32 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v28 = swift_task_alloc();
  v0[21] = v28;
  *v28 = v0;
  v28[1] = sub_56F1C;
  v29 = v0[13];
  v30 = v0[10];

  return v32(v30, v0 + 2, v25, v29);
}

uint64_t sub_56F1C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 120);
  v9 = *v0;

  sub_306C((v1 + 16));

  v7 = *(v9 + 8);

  return v7();
}

uint64_t *MediaItemDisambiguationStrategy.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_306C(v0 + 4);
  sub_306C(v0 + 9);
  v3 = v0[14];

  sub_306C(v0 + 15);
  v4 = v0[21];

  return v0;
}

uint64_t MediaItemDisambiguationStrategy.__deallocating_deinit()
{
  MediaItemDisambiguationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_57120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for MediaItemDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.paginationStyle(app:intent:parameterName:intentResolutionResult:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_571C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = a8;
  v15 = *v8;

  sub_5787C(a3, a4, a6, sub_333BC);
}

uint64_t sub_57368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20 = *(a10 + 80);
  v21 = *(a10 + 88);
  v24 = type metadata accessor for MediaItemDisambiguationStrategy();

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v24, a11);
}

uint64_t sub_574A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = *(a9 + 80);
  v20 = *(a9 + 88);
  v23 = type metadata accessor for MediaItemDisambiguationStrategy();

  return a11(a1, a2, a3, a4, a5, a6, a7, a8, v23, a10);
}

uint64_t sub_5755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 + 80);
  v16 = *(a7 + 88);
  v17 = type metadata accessor for MediaItemDisambiguationStrategy();

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v17, a8);
}

uint64_t sub_575E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a8 + 80);
  v17 = *(a8 + 88);
  v18 = type metadata accessor for MediaItemDisambiguationStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v18, a9);
}

uint64_t sub_57684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 80);
  v18 = *(a6 + 88);
  v19 = type metadata accessor for MediaItemDisambiguationStrategy();
  *v16 = v7;
  v16[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v19, a7);
}

uint64_t sub_5777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = async function pointer to ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = *(a7 + 80);
  v20 = *(a7 + 88);
  v21 = type metadata accessor for MediaItemDisambiguationStrategy();
  *v18 = v15;
  v18[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v21, a8);
}

uint64_t sub_5787C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + 112);
  v37[0] = a1;
  v37[1] = a2;
  v36 = v37;
  if (sub_13964(sub_334E8, v35, v14))
  {
    v15 = [a3 disambiguationItems];
    v16 = sub_2CE410();

    v17 = *(v16 + 16);

    if (v17)
    {
      v18 = [a3 disambiguationItems];
      v19 = sub_2CE410();

      v20 = sub_29B74(v19);

      if (v20)
      {
        v21 = sub_20410(qword_34D438, &qword_2D1280);
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        sub_2CA730();
        a4();
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v30, v9);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "MediaItemDisambiguationStrategy#makeDisambiguationItemContainer resolutionResult.disambiguationItems not of type [INMediaItem] or empty", v33, 2u);
    }

    (*(v10 + 8))(v13, v9);
    v25 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v26 = swift_allocError();
    v28 = v34;
    v29 = &enum case for PlaybackCode.ceGE29(_:);
  }

  else
  {
    v25 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v26 = swift_allocError();
    v28 = v27;
    v29 = &enum case for PlaybackCode.ceGE28(_:);
  }

  (*(*(v25 - 8) + 104))(v28, *v29, v25);
  (a4)(v26, 1);
}

unint64_t sub_57C68(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t *a6, unint64_t a7)
{
  v354 = a6;
  v339 = a5;
  v350 = a4;
  v349 = a3;
  v329 = a1;
  v10 = *v7;
  v337 = sub_2CA810();
  v344 = *(v337 - 8);
  v11 = v344[8];
  v12 = __chkstk_darwin(v337);
  v319 = &v302[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v330 = &v302[-v15];
  __chkstk_darwin(v14);
  v341 = &v302[-v16];
  v325 = sub_2CD5D0();
  v309 = *(v325 - 8);
  v17 = *(v309 + 64);
  __chkstk_darwin(v325);
  v324 = &v302[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v332 = sub_2CAB40();
  v336 = *(v332 - 8);
  v19 = *(v336 + 64);
  __chkstk_darwin(v332);
  v331 = &v302[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_20410(&unk_353080, &qword_2D1460);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v321 = &v302[-v23];
  v24 = sub_20410(&qword_34CC90, qword_2D40E0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v318 = &v302[-v26];
  v27 = sub_2CAA00();
  v334 = *(v27 - 8);
  v28 = v334[8];
  v29 = __chkstk_darwin(v27);
  v317 = &v302[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v333 = &v302[-v31];
  v32 = *(v10 + 80);
  v353 = *(v10 + 88);
  v352 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_2CA230();
  v327 = *(v33 - 8);
  v34 = *(v327 + 64);
  __chkstk_darwin(v33);
  v326 = &v302[-v35];
  v328 = v36;
  sub_2CA380();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v37 = sub_2CEFA0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v302[-v40];
  v346 = sub_2CA870();
  v345 = *(v346 - 8);
  v42 = *(v345 + 64);
  v43 = __chkstk_darwin(v346);
  v347 = &v302[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v43);
  v343 = sub_2CA7B0();
  v342 = *(v343 - 1);
  v45 = v342[8];
  __chkstk_darwin(v343);
  v47 = &v302[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v348 = sub_2CE000();
  v351 = *(v348 - 8);
  v48 = v351[8];
  v49 = __chkstk_darwin(v348);
  v323 = &v302[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __chkstk_darwin(v49);
  v335 = &v302[-v52];
  v53 = __chkstk_darwin(v51);
  v314 = &v302[-v54];
  v55 = __chkstk_darwin(v53);
  v311 = &v302[-v56];
  v57 = __chkstk_darwin(v55);
  v312 = &v302[-v58];
  v59 = __chkstk_darwin(v57);
  v313 = &v302[-v60];
  v61 = __chkstk_darwin(v59);
  v322 = &v302[-v62];
  v63 = __chkstk_darwin(v61);
  v338 = &v302[-v64];
  v65 = __chkstk_darwin(v63);
  v320 = &v302[-v66];
  __chkstk_darwin(v65);
  v68 = &v302[-v67];
  v69 = v7[14];
  v358 = a2;
  v359 = v349;
  v356 = &v358;
  if ((sub_13964(sub_13A68, v355, v69) & 1) == 0)
  {
    v89 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v90 = swift_allocError();
    (*(*(v89 - 8) + 104))(v91, enum case for PlaybackCode.ceGE31(_:), v89);
    *v41 = v90;
    swift_storeEnumTagMultiPayload();
    (v354)(v41);
    return (*(v38 + 8))(v41, v37);
  }

  v70 = v27;
  v71 = v47;
  v304 = 0;
  v72 = v354;
  v316 = v70;
  v349 = v41;
  v310 = v37;
  v308 = v38;
  if (qword_34BF58 != -1)
  {
LABEL_108:
    swift_once();
  }

  v73 = v348;
  v74 = sub_3ED0(v348, static Logger.default);
  swift_beginAccess();
  v75 = v351[2];
  v305 = v74;
  v307 = v351 + 2;
  v306 = v75;
  v75(v68, v74, v73);
  v76 = v342;
  v77 = v343;
  (v342[2])(v71, v350, v343);
  v78 = sub_2CDFE0();
  v79 = sub_2CE660();
  v80 = os_log_type_enabled(v78, v79);
  v315 = a7;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v358 = v82;
    *v81 = 136315138;
    v303 = v79;
    sub_2CA790();
    v83 = v346;
    v84 = sub_2CE2A0();
    v86 = v85;
    (v76[1])(v71, v77);
    v87 = sub_3F08(v84, v86, &v358);

    *(v81 + 4) = v87;
    _os_log_impl(&dword_0, v78, v303, "MediaItemDisambiguationStrategy#parseDisambiguationResult parse:%s", v81, 0xCu);
    sub_306C(v82);
    v88 = v348;
    v71 = v354;

    a7 = v315;

    v343 = v351[1];
    (v343)(v68, v88);
  }

  else
  {

    (v76[1])(v71, v77);
    v343 = v351[1];
    (v343)(v68, v73);
    v71 = v72;
    v83 = v346;
    v88 = v73;
  }

  v93 = v347;
  sub_2CA790();
  v94 = v345;
  v95 = (*(v345 + 88))(v93, v83);
  v96 = v349;
  v68 = v316;
  v97 = v344;
  if (v95 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v94 + 96))(v93, v83);
    v98 = *(v93 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v99 = sub_2CA830();
    v100 = swift_dynamicCastUnknownClass();
    if (v100)
    {
      v68 = v100;
      v350 = v98;
      sub_20410(&qword_34D4C0, &qword_2D1438);
      v101 = sub_2CA460();
      v102 = v101;
      if (v101 >> 62)
      {
LABEL_111:
        v103 = sub_2CEDA0();
      }

      else
      {
        v103 = *(&dword_10 + (v101 & 0xFFFFFFFFFFFFFF8));
      }

      v72 = v304;

      if (v103)
      {
        v104 = 0;
        a7 = v102 & 0xC000000000000001;
        while (1)
        {
          if (a7)
          {
            v105 = sub_2CECD0();
          }

          else
          {
            if (v104 >= *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_107;
            }

            v105 = *(v102 + 8 * v104 + 32);
          }

          v71 = v105;
          v106 = (v104 + 1);
          if (__OFADD__(v104, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v358 = v104;
          v359 = v105;
          if (sub_5385C(&v358))
          {
            break;
          }

          ++v104;
          if (v106 == v103)
          {
            goto LABEL_31;
          }
        }

        swift_bridgeObjectRelease_n();
        v167 = v320;
        v168 = v348;
        v306(v320, v305, v348);
        v169 = v71;
        v170 = sub_2CDFE0();
        v171 = sub_2CE690();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          *v172 = 138412290;
          *(v172 + 4) = v169;
          *v173 = v169;
          v174 = v169;
          _os_log_impl(&dword_0, v170, v171, "MediaItemDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %@", v172, 0xCu);
          sub_30B8(v173, &unk_34FC00, &unk_2D0150);
        }

        (v343)(v167, v168);
        sub_20410(&unk_351900, &unk_2D0960);
        v175 = swift_allocObject();
        *(v175 + 16) = xmmword_2D0770;
        *(v175 + 32) = v169;
        v176 = v169;
        v177 = v329;
        sub_732B0(v175, 1);

        v178 = v99;
        v179 = sub_73218();

        sub_73070();
        v360[0] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
        v358 = v176;
        v180 = v176;
        v181 = v177;
        v182 = v326;
        sub_2CA220();
        v183 = v349;
        v184 = v328;
        sub_2CA370();
        (*(v327 + 8))(v182, v184);
        v185 = v310;
        swift_storeEnumTagMultiPayload();
        (v354)(v183);

        (*(v308 + 8))(v183, v185);
      }

      else
      {
LABEL_31:
        swift_bridgeObjectRelease_n();
        v143 = sub_2CB850();
        sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
        v144 = swift_allocError();
        (*(*(v143 - 8) + 104))(v145, enum case for PlaybackCode.ceGE33(_:), v143);
        v146 = v349;
        *v349 = v144;
        v147 = v310;
        swift_storeEnumTagMultiPayload();
        (v354)(v146);

        (*(v308 + 8))(v146, v147);
      }

      v186 = sub_2CAFE0();
      return (*(*(v186 - 8) + 8))(v347, v186);
    }

    else
    {

      v306(v338, v305, v88);
      v148 = sub_2CDFE0();
      v149 = sub_2CE680();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_0, v148, v149, "MediaItemDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v150, 2u);
      }

      (v343)(v338, v88);
      v151 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v152 = swift_allocError();
      (*(*(v151 - 8) + 104))(v153, enum case for PlaybackCode.ceGE32(_:), v151);
      *v96 = v152;
      v154 = v310;
      swift_storeEnumTagMultiPayload();
      (v71)(v96);

      (*(v308 + 8))(v96, v154);
      v155 = sub_2CAFE0();
      return (*(*(v155 - 8) + 8))(v93, v155);
    }
  }

  if (v95 != enum case for Parse.directInvocation(_:))
  {
    if (v95 != enum case for Parse.pommesResponse(_:))
    {
      v156 = v323;
      v306(v323, v305, v88);
      v157 = sub_2CDFE0();
      v158 = sub_2CE680();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *v159 = 0;
        _os_log_impl(&dword_0, v157, v158, "MediaItemDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v159, 2u);
      }

      (v343)(v156, v88);
      v160 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v161 = swift_allocError();
      (*(*(v160 - 8) + 104))(v162, enum case for PlaybackCode.ceGE39(_:), v160);
      *v96 = v161;
      v163 = v310;
      swift_storeEnumTagMultiPayload();
      (v71)(v96);
      (*(v308 + 8))(v96, v163);
      v164 = *(v345 + 8);
      v165 = v93;
      v166 = &v362;
      return v164(v165, *(v166 - 32));
    }

    (*(v94 + 96))(v93, v83);
    v124 = *v93;
    v125 = sub_1B7F14();
    if (!v125)
    {
      v204 = v314;
      v306(v314, v305, v88);
      v205 = sub_2CDFE0();
      v206 = sub_2CE680();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 0;
        _os_log_impl(&dword_0, v205, v206, "MediaItemDisambiguationStrategy#parseDisambiguationResult pommesResponse contains no AudioExperience", v207, 2u);
      }

      (v343)(v204, v88);
      v208 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v209 = swift_allocError();
      (*(*(v208 - 8) + 104))(v210, enum case for PlaybackCode.ceGE34(_:), v208);
      *v96 = v209;
      v211 = v310;
      swift_storeEnumTagMultiPayload();
      (v71)(v96);

      return (*(v308 + 8))(v96, v211);
    }

    v344 = v124;
    v126 = v333;
    v342 = v125;
    sub_2CDA40();
    v127 = v322;
    v306(v322, v305, v88);
    v128 = v334;
    v129 = v88;
    v130 = v334[2];
    v131 = v317;
    v130(v317, v126, v68);
    v132 = sub_2CDFE0();
    v133 = sub_2CE690();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v357[0] = v135;
      *v134 = 136315138;
      sub_2CAA60();
      v360[0] = v68;
      v360[1] = sub_5C3A4(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      v136 = sub_F390(&v358);
      v130(v136, v131, v68);
      v137 = sub_2CAA50();
      v139 = v138;
      v341 = v334[1];
      (v341)(v131, v68);
      sub_306C(&v358);
      v140 = sub_3F08(v137, v139, v357);

      *(v134 + 4) = v140;
      _os_log_impl(&dword_0, v132, v133, "MediaItemDisambiguationStrategy#parseDisambiguationResult pommesResponse userDialogAct: %s", v134, 0xCu);
      sub_306C(v135);

      v128 = v334;

      v141 = v322;
      v142 = v348;
    }

    else
    {

      v341 = v128[1];
      (v341)(v131, v68);
      v141 = v127;
      v142 = v129;
    }

    (v343)(v141, v142);
    sub_20410(&qword_34D4C0, &qword_2D1438);
    v212 = sub_2CA460();
    v213 = sub_2CD700();
    v214 = v318;
    v130(v318, v333, v68);
    (v128[7])(v214, 0, 1, v68);
    v353 = v213;
    v215 = sub_2CD600();
    v216 = v349;
    if (!v215)
    {

      v240 = v311;
      v241 = v348;
      v306(v311, v305, v348);
      v242 = sub_2CDFE0();
      v243 = sub_2CE680();
      v244 = os_log_type_enabled(v242, v243);
      v245 = v354;
      v246 = v310;
      if (v244)
      {
        v247 = swift_slowAlloc();
        *v247 = 0;
        _os_log_impl(&dword_0, v242, v243, "MediaItemDisambiguationStrategy#parseDisambiguationResult AudioUsoIntent failed to be constructed", v247, 2u);
      }

      (v343)(v240, v241);
      v248 = sub_2CB850();
      sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
      v249 = swift_allocError();
      (*(*(v248 - 8) + 104))(v250, enum case for PlaybackCode.ceGE35(_:), v248);
      *v216 = v249;
      swift_storeEnumTagMultiPayload();
      (v245)(v216);

      (*(v308 + 8))(v216, v246);
      return (v341)(v333, v316);
    }

    v217 = v215;
    v339 = v212;
    result = sub_2CD680();
    v218 = v354;
    v219 = v310;
    if (result >> 62)
    {
      v301 = result;
      v220 = sub_2CEDA0();
      result = v301;
    }

    else
    {
      v220 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v221 = v321;
    a7 = v332;
    if (v220)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v222 = sub_2CECD0();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v222 = *(result + 32);
      }

      if (v222)
      {
        v337 = v217;

        v99 = sub_2CAAE0();
        v338 = v222;

        v352 = v99;
        v71 = v331;
        v350 = *(v99 + 16);
        if (!v350)
        {
LABEL_95:

          v221 = v321;
          v251 = (*(v336 + 56))(v321, 1, 1, a7);
          v218 = v354;
          v219 = v310;
          goto LABEL_98;
        }

        v223 = 0;
        v347 = (v352 + ((*(v336 + 80) + 32) & ~*(v336 + 80)));
        v346 = v336 + 16;
        LODWORD(v345) = enum case for AudioUsoIntent.UsoNamespace.identifier(_:);
        v224 = (v309 + 104);
        v68 = (v309 + 8);
        v225 = (v336 + 8);
        while (1)
        {
          if (v223 >= v352[2])
          {
            __break(1u);
            goto LABEL_113;
          }

          (*(v336 + 16))(v71, v347 + *(v336 + 72) * v223, a7);
          v226 = sub_2CAB00();
          v228 = v227;
          v230 = sub_2CD630();
          v231 = v226;
          v99 = v229;
          if (v231 == v230 && v228 == v229)
          {
          }

          else
          {
            v232 = sub_2CEEA0();

            if ((v232 & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          v99 = sub_2CAB30();
          v234 = v233;
          v235 = v324;
          v236 = v325;
          (*v224)(v324, v345, v325);
          v237 = sub_2CD5C0();
          v239 = v238;
          (*v68)(v235, v236);
          if (v234)
          {
            if (v99 == v237 && v234 == v239)
            {

              v71 = v331;
              a7 = v332;
LABEL_97:
              v263 = v336;
              v221 = v321;
              (*(v336 + 32))(v321, v71, a7);
              v251 = (*(v263 + 56))(v221, 0, 1, a7);
              v218 = v354;
              v219 = v310;
LABEL_98:
              v217 = v337;
LABEL_99:
              __chkstk_darwin(v251);
              *&v302[-16] = v221;
              sub_52690(sub_5C384, &v302[-32], v339);
              v265 = v264;

              if (v265)
              {
                v266 = sub_186DB8(v217, v265);
                v267 = v313;
                v306(v313, v305, v348);
                v268 = v265;
                v269 = sub_2CDFE0();
                v270 = sub_2CE690();

                if (os_log_type_enabled(v269, v270))
                {
                  v271 = swift_slowAlloc();
                  v272 = swift_slowAlloc();
                  *v271 = 138412290;
                  *(v271 + 4) = v268;
                  *v272 = v265;
                  v273 = v268;
                  _os_log_impl(&dword_0, v269, v270, "MediaItemDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %@", v271, 0xCu);
                  sub_30B8(v272, &unk_34FC00, &unk_2D0150);

                  v267 = v313;
                }

                v274 = v267;
                v275 = v348;
                (v343)(v274, v348);
                v276 = v312;
                v306(v312, v305, v275);
                v277 = v266;
                v278 = sub_2CDFE0();
                v279 = sub_2CE690();

                if (os_log_type_enabled(v278, v279))
                {
                  v280 = swift_slowAlloc();
                  v281 = swift_slowAlloc();
                  *v280 = 138412290;
                  *(v280 + 4) = v277;
                  *v281 = v277;
                  v282 = v277;
                  _os_log_impl(&dword_0, v278, v279, "MediaItemDisambiguationStrategy#parseDisambiguationResult Updating media search with: %@", v280, 0xCu);
                  sub_30B8(v281, &unk_34FC00, &unk_2D0150);
                }

                (v343)(v276, v348);
                sub_20410(&unk_351900, &unk_2D0960);
                v283 = swift_allocObject();
                *(v283 + 16) = xmmword_2D0770;
                *(v283 + 32) = v268;
                v284 = v268;
                v285 = v329;
                sub_732B0(v283, 1);

                v286 = v277;
                sub_73070();

                v360[0] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
                v358 = v284;
                v287 = v285;
                v288 = v284;
                v289 = v326;
                sub_2CA220();
                v290 = v349;
                v291 = v328;
                sub_2CA370();
                (*(v327 + 8))(v289, v291);
                swift_storeEnumTagMultiPayload();
                (v354)(v290);

                (*(v308 + 8))(v290, v219);
                (v341)(v333, v316);
                return sub_30B8(v321, &unk_353080, &qword_2D1460);
              }

              else
              {
                v292 = sub_2CB850();
                sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
                v293 = swift_allocError();
                (*(*(v292 - 8) + 104))(v294, enum case for PlaybackCode.ceGE36(_:), v292);
                v295 = v349;
                *v349 = v293;
                swift_storeEnumTagMultiPayload();
                (v218)(v295);

                (*(v308 + 8))(v295, v219);
                (v341)(v333, v316);
                return sub_30B8(v221, &unk_353080, &qword_2D1460);
              }
            }

            v99 = sub_2CEEA0();

            v71 = v331;
            a7 = v332;
            if (v99)
            {

              goto LABEL_97;
            }
          }

          else
          {

            v71 = v331;
            a7 = v332;
          }

LABEL_75:
          ++v223;
          (*v225)(v71, a7);
          if (v350 == v223)
          {
            goto LABEL_95;
          }
        }
      }
    }

    else
    {
    }

    v251 = (*(v336 + 56))(v221, 1, 1, a7);
    v338 = 0;
    goto LABEL_99;
  }

  (*(v94 + 96))(v93, v83);
  v107 = v341;
  v108 = v337;
  (v97[4])(v341, v93, v337);
  sub_238E4C(v107, &v358);
  if (v361 != 3)
  {
    if (v361 != 255)
    {
      sub_30B8(&v358, &qword_34CCB0, &qword_2D5710);
    }

    v109 = v335;
    v306(v335, v305, v88);
    v110 = v97[2];
    v111 = v330;
    v110(v330, v341, v108);
    v112 = sub_2CDFE0();
    v113 = sub_2CE680();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      LODWORD(v353) = v113;
      v115 = v108;
      v116 = v97;
      v117 = v114;
      v352 = swift_slowAlloc();
      v357[0] = v352;
      *v117 = 136315138;
      v110(v319, v111, v115);
      v118 = sub_2CE2A0();
      v120 = v119;
      v121 = v116[1];
      v121(v111, v115);
      v108 = v115;
      v122 = sub_3F08(v118, v120, v357);

      *(v117 + 4) = v122;
      _os_log_impl(&dword_0, v112, v353, "AppResolutionStrategy#makeAppResolutionStateFromParse received unsupported directInvocation: %s", v117, 0xCu);
      sub_306C(v352);

      v123 = v335;
    }

    else
    {

      v121 = v97[1];
      v121(v111, v108);
      v123 = v109;
    }

    (v343)(v123, v88);
    v198 = v308;
    v199 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v200 = swift_allocError();
    (*(*(v199 - 8) + 104))(v201, enum case for PlaybackCode.ceGE37(_:), v199);
    v202 = v349;
    *v349 = v200;
    v203 = v310;
    swift_storeEnumTagMultiPayload();
    (v354)(v202);
    (*(v198 + 8))(v202, v203);
    return (v121)(v341, v108);
  }

  v352 = v358;
  v351 = v359;
  sub_20410(&qword_34D4C0, &qword_2D1438);
  v187 = sub_2CA460();
  v99 = v187;
  if (v187 >> 62)
  {
LABEL_113:
    v102 = sub_2CEDA0();
    if (v102)
    {
      goto LABEL_44;
    }

LABEL_114:

    sub_30B8(&v358, &qword_34CCB0, &qword_2D5710);
    v296 = sub_2CB850();
    sub_5C3A4(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v297 = swift_allocError();
    (*(*(v296 - 8) + 104))(v298, enum case for PlaybackCode.ceGE38(_:), v296);
    v299 = v349;
    *v349 = v297;
    v300 = v310;
    swift_storeEnumTagMultiPayload();
    (v354)(v299);
    (*(v308 + 8))(v299, v300);
    goto LABEL_115;
  }

  v102 = *(&dword_10 + (v187 & 0xFFFFFFFFFFFFFF8));
  if (!v102)
  {
    goto LABEL_114;
  }

LABEL_44:
  v188 = 0;
  v353 = v99 & 0xC000000000000001;
  while (1)
  {
    if (v353)
    {
      v189 = sub_2CECD0();
    }

    else
    {
      if (v188 >= *(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_110;
      }

      v189 = *(v99 + 8 * v188 + 32);
    }

    v190 = v189;
    v68 = (v188 + 1);
    if (__OFADD__(v188, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v191 = [v189 identifier];
    if (!v191)
    {
      goto LABEL_45;
    }

    v192 = a7;
    v193 = v191;
    v194 = sub_2CE270();
    v71 = v195;

    if (v194 == v352 && v71 == v351)
    {
      break;
    }

    v197 = sub_2CEEA0();

    a7 = v192;
    if (v197)
    {
      goto LABEL_92;
    }

LABEL_45:

    ++v188;
    if (v68 == v102)
    {
      goto LABEL_114;
    }
  }

LABEL_92:
  sub_30B8(&v358, &qword_34CCB0, &qword_2D5710);

  sub_20410(&unk_351900, &unk_2D0960);
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_2D0770;
  *(v252 + 32) = v190;
  v253 = v190;
  v254 = v329;
  sub_732B0(v252, 1);

  v255 = [v254 backingStore];
  objc_opt_self();
  v256 = swift_dynamicCastObjCClass();
  if (v256)
  {
    [v256 setMediaSearch:0];
  }

  v357[3] = sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v357[0] = v253;
  v257 = v254;
  v258 = v253;
  v259 = v326;
  sub_2CA220();
  v260 = v349;
  v261 = v328;
  sub_2CA370();
  (*(v327 + 8))(v259, v261);
  v262 = v310;
  swift_storeEnumTagMultiPayload();
  (v354)(v260);

  (*(v308 + 8))(v260, v262);
LABEL_115:
  v164 = v344[1];
  v165 = v341;
  v166 = v360;
  return v164(v165, *(v166 - 32));
}

uint64_t sub_5AA9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v50 = a4;
  v45 = a6;
  v39 = a5;
  v47 = a3;
  v48 = a2;
  v41 = a1;
  v43 = *v7;
  v44 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v42 = *(v44 - 8);
  v8 = *(v42 + 64);
  __chkstk_darwin(v44);
  v40 = &v37 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2CDFE0();
  v17 = sub_2CE690();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51 = v19;
    *v18 = 136446210;
    v20 = sub_2CCCA0();
    v38 = v10;
    v22 = sub_3F08(v20, v21, &v51);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v16, v17, "MediaItemDisambiguationStrategy#promptForDisambiguationWithRF... %{public}s", v18, 0xCu);
    sub_306C(v19);

    (*(v11 + 8))(v14, v38);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v23 = v46;
  v24 = *(v46 + 24);
  v25 = v42;
  v26 = v40;
  v27 = v44;
  (*(v42 + 16))(v40, v39, v44);
  v28 = (*(v25 + 80) + 72) & ~*(v25 + 80);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 2) = *(v43 + 80);
  *(v29 + 3) = *(v30 + 88);
  *(v29 + 4) = v23;
  v31 = v41;
  v33 = v48;
  v32 = v49;
  *(v29 + 5) = v41;
  *(v29 + 6) = v33;
  *(v29 + 7) = v45;
  *(v29 + 8) = v32;
  (*(v25 + 32))(&v29[v28], v26, v27);
  v34 = *(*v24 + 232);

  v35 = v33;

  v34(v31, v47, v50, v35, sub_5B81C, v29);
}

uint64_t sub_5AE8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v48 = a8;
  v49 = a4;
  v45 = a7;
  v46 = a2;
  v50 = a3;
  v47 = a1;
  v11 = *v8;
  v42 = a5;
  v43 = v11;
  v12 = sub_20410(&qword_34D4C0, &qword_2D1438);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  __chkstk_darwin(v12);
  v41 = &v40 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "MediaItemDisambiguationStrategy#promptForDisambiguationLegacy...", v23, 2u);
  }

  (*(v16 + 8))(v19, v15);
  v40 = v9[3];
  v24 = v44;
  v25 = v41;
  (*(v44 + 16))(v41, a6, v12);
  v26 = (*(v24 + 80) + 96) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v29 = v42;
  v28 = v43;
  *(v27 + 2) = *(v43 + 80);
  v31 = v49;
  v30 = v50;
  *(v27 + 3) = *(v28 + 88);
  *(v27 + 4) = v30;
  *(v27 + 5) = v31;
  *(v27 + 6) = v29;
  v33 = v47;
  v32 = v48;
  *(v27 + 7) = v9;
  *(v27 + 8) = v33;
  v34 = v45;
  v35 = v46;
  *(v27 + 9) = v46;
  *(v27 + 10) = v34;
  *(v27 + 11) = v32;
  (*(v24 + 32))(&v27[v26], v25, v12);
  v36 = *(*v40 + 232);
  v45 = *v40 + 232;

  v37 = v29;

  v38 = v35;

  v36(v33, v50, v31, v38, sub_5B660, v27);
}

uint64_t sub_5B234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v38 = a5;
  v39 = a6;
  v42 = a3;
  v43 = a4;
  v41 = a1;
  v13 = *v8;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = a2;
  v21 = sub_2CDFE0();
  v22 = sub_2CE660();

  v23 = os_log_type_enabled(v21, v22);
  v40 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v37 = a8;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = a7;
    v27 = v26;
    v44 = v20;
    v45 = v26;
    *v25 = 136315138;
    v29 = *(v13 + 80);
    v28 = *(v13 + 88);
    swift_getAssociatedTypeWitness();
    swift_getWitnessTable();
    v30 = sub_D7E44();
    v32 = sub_3F08(v30, v31, &v45);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_0, v21, v22, "MediaItemDisambiguationStrategy#makePromptForDisambiguation intent: %s", v25, 0xCu);
    sub_306C(v27);
    a7 = v36;

    a8 = v37;
  }

  (*(v15 + 8))(v18, v14);
  v33 = v9[13];
  sub_35E0(v9 + 9, v9[12]);
  if (sub_2CC4B0())
  {
    return sub_5AA9C(v41, v40, v42, v43, v39, a7, a8);
  }

  else
  {
    return sub_5AE8C(v41, v40, v42, v43, v38, v39, a7, a8);
  }
}

unint64_t sub_5B568()
{
  result = qword_34D430;
  if (!qword_34D430)
  {
    sub_2DB30(qword_34D438, &qword_2D1280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D430);
  }

  return result;
}

uint64_t sub_5B660(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34D4C0, &qword_2D1438) - 8);
  v5 = v1 + ((*(v3 + 80) + 96) & ~*(v3 + 80));
  return sub_53BCC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
}

uint64_t sub_5B70C(char *a1, char a2)
{
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  return sub_54724(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v6);
}

uint64_t sub_5B81C(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34D4C0, &qword_2D1438) - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_55214(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_5B8A4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v96 = a5;
  v97 = a6;
  v88 = a4;
  v89 = a1;
  v8 = sub_2CD230();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  __chkstk_darwin(v8);
  v91 = v10;
  v92 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C9B80();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v86 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2CA630();
  v95 = *(v101 - 8);
  v14 = *(v95 + 64);
  v15 = __chkstk_darwin(v101);
  v90 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v16;
  __chkstk_darwin(v15);
  v100 = &v77 - v17;
  v81 = sub_2CB260();
  v80 = *(v81 - 8);
  v18 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v82 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v98 = &v77 - v25;
  v26 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v27 = v26 - 8;
  v83 = *(v26 - 8);
  v28 = *(v83 + 64);
  v29 = __chkstk_darwin(v26);
  v85 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v30;
  __chkstk_darwin(v29);
  v32 = &v77 - v31;
  v33 = sub_2CA130();
  (*(*(v33 - 8) + 16))(v32, a2, v33);
  v34 = *(v27 + 56);
  v99 = v32;
  *&v32[v34] = a3;
  v35 = qword_34BF58;
  v36 = a3;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  v38 = v21[2];
  v38(v98, v37, v20);
  v39 = sub_2CDFE0();
  v40 = sub_2CE670();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v78 = v37;
    v42 = v41;
    v43 = swift_slowAlloc();
    v102 = v43;
    *v42 = 136446210;
    v44 = sub_2CCCA0();
    v46 = sub_3F08(v44, v45, &v102);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_0, v39, v40, "MediaItemDisambiguationStrategy#clarificationOutput... %{public}s", v42, 0xCu);
    sub_306C(v43);

    v37 = v78;
  }

  v47 = v21[1];
  v47(v98, v20);
  v48 = sub_2CB460();
  v49 = v82;
  if (!v48)
  {
    sub_2CB180();
    v48 = sub_2CB170();
  }

  v50 = v48;
  v38(v49, v37, v20);

  v51 = sub_2CDFE0();
  v52 = sub_2CE660();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v78 = v47;
    v55 = v54;
    v102 = v54;
    *v53 = 136315138;
    sub_2CB130();
    v56 = v79;
    sub_2CD3C0();

    v57 = sub_2CB200();
    v77 = v21;
    v59 = v58;
    (*(v80 + 8))(v56, v81);
    v60 = sub_3F08(v57, v59, &v102);

    *(v53 + 4) = v60;
    _os_log_impl(&dword_0, v51, v52, "MediaItemDisambiguationStrategy#clarificationOutput with responseMode = %s", v53, 0xCu);
    sub_306C(v55);

    v78(v49, v20);
  }

  else
  {

    v47(v49, v20);
  }

  v98 = v50;
  v61 = sub_2C9B40();
  __chkstk_darwin(v61);
  *(&v77 - 4) = v88;
  *(&v77 - 3) = v50;
  v62 = v99;
  v63 = v100;
  *(&v77 - 2) = v99;
  sub_2CA560();
  v65 = v92;
  v64 = v93;
  v66 = v94;
  (*(v93 + 16))(v92, v89, v94);
  v67 = v85;
  sub_F3F4(v62, v85, &qword_34C6E8, &unk_2D0FF0);
  v68 = v95;
  v69 = v90;
  (*(v95 + 16))(v90, v63, v101);
  v70 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v71 = (v91 + *(v83 + 80) + v70) & ~*(v83 + 80);
  v72 = (v84 + *(v68 + 80) + v71) & ~*(v68 + 80);
  v73 = swift_allocObject();
  (*(v64 + 32))(v73 + v70, v65, v66);
  sub_14A58(v67, v73 + v71, &qword_34C6E8, &unk_2D0FF0);
  v74 = v69;
  v75 = v101;
  (*(v68 + 32))(v73 + v72, v74, v101);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v68 + 8))(v100, v75);
  return sub_30B8(v99, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_5C1D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_56AB0(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_5C3A4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_5C3EC(uint64_t a1)
{
  v74 = a1;
  v1 = sub_2CB3E0();
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  __chkstk_darwin(v1);
  v61 = (&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20410(&unk_353040, &qword_2D1528);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = (&v56 - v8);
  v9 = type metadata accessor for ShimExperience();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2CA870();
  v12 = *(v73 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v73);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CA340();
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = *(v70 + 64);
  __chkstk_darwin(v16);
  v69 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v60 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v57 = &v56 - v25;
  __chkstk_darwin(v24);
  v27 = &v56 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v68 = v20[2];
  v68(v27, v28, v19);
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "ShimFlow#on Unable to retrieve ShimExperience, producing generic error dialog", v31, 2u);
  }

  v32 = v20[1];
  v72 = v20 + 1;
  v32(v27, v19);
  sub_2CA790();
  v33 = v73;
  v34 = (*(v12 + 88))(v15, v73);
  v35 = v34;
  v36 = enum case for Parse.ifClientAction(_:);
  if (v34 == enum case for Parse.ifClientAction(_:))
  {
    LODWORD(v60) = enum case for Parse.ifClientAction(_:);
    LODWORD(v74) = v34;
    (*(v12 + 96))(v15, v33);
    v37 = v69;
    v38 = v70;
    v39 = v71;
    (*(v70 + 32))(v69, v15, v71);
    v40 = v61;
    sub_2CA330();
    v41 = v62;
    static ShimUtilities.getShimExperience(from:)(v40, v62);
    (*(v63 + 8))(v40, v64);
    v43 = v66;
    v42 = v67;
    if ((*(v66 + 48))(v41, 1, v67) == 1)
    {
      (*(v38 + 8))(v37, v39);
      sub_30B8(v41, &unk_353040, &qword_2D1528);
    }

    else
    {
      sub_606EC(v41, v65);
      v48 = v57;
      v68(v57, v28, v19);
      v49 = sub_2CDFE0();
      v50 = sub_2CE680();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "ShimFlow#execute Unable to extract shimExperience from ifClientAction parse", v51, 2u);
      }

      v32(v48, v19);
      (*(v70 + 8))(v69, v71);
      v52 = v58;
      sub_606EC(v65, v58);
      (*(v43 + 56))(v52, 0, 1, v42);
      v53 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience;
      v54 = v59;
      swift_beginAccess();
      sub_6067C(v52, v54 + v53);
      swift_endAccess();
    }

    v35 = v74;
    v36 = v60;
  }

  else
  {
    (*(v12 + 8))(v15, v33);
    v44 = v60;
    v68(v60, v28, v19);
    v45 = sub_2CDFE0();
    v46 = sub_2CE680();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "ShimFlow#execute Not ifClientAction parse", v47, 2u);
    }

    v32(v44, v19);
  }

  return v35 == v36;
}

uint64_t sub_5CB90(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v198 = a1;
  v199 = a2;
  v175 = sub_2C8D90();
  v184 = *(v175 - 8);
  v4 = *(v184 + 64);
  v5 = __chkstk_darwin(v175);
  v171 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v169 = &v165 - v8;
  v170 = v9;
  __chkstk_darwin(v7);
  v187 = &v165 - v10;
  v11 = sub_2C9EC0();
  v192 = *(v11 - 8);
  v193 = v11;
  v12 = *(v192 + 64);
  __chkstk_darwin(v11);
  v191 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShimExperience();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v186 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v194 = &v165 - v19;
  v190 = sub_2CE000();
  v188 = *(v190 - 1);
  v20 = v188[8];
  v21 = __chkstk_darwin(v190);
  v173 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v172 = &v165 - v24;
  v25 = __chkstk_darwin(v23);
  v174 = &v165 - v26;
  __chkstk_darwin(v25);
  v183 = &v165 - v27;
  v182 = sub_2CB3E0();
  v181 = *(v182 - 8);
  v28 = *(v181 + 64);
  __chkstk_darwin(v182);
  v180 = (&v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = sub_2CA870();
  v196 = *(v202 - 1);
  v30 = *(v196 + 64);
  v31 = __chkstk_darwin(v202);
  v185 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v197 = (&v165 - v33);
  v34 = sub_2CA7B0();
  v200 = *(v34 - 8);
  v201 = v34;
  v35 = *(v200 + 64);
  v36 = __chkstk_darwin(v34);
  v195 = (&v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v189 = &v165 - v38;
  v179 = sub_2CA340();
  v178 = *(v179 - 8);
  v39 = *(v178 + 64);
  __chkstk_darwin(v179);
  v177 = &v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20410(&unk_353040, &qword_2D1528);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v45 = &v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43);
  v176 = (&v165 - v47);
  __chkstk_darwin(v46);
  v49 = &v165 - v48;
  v50 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience;
  swift_beginAccess();
  sub_F3F4(v2 + v50, v49, &unk_353040, &qword_2D1528);
  v51 = *(v15 + 48);
  v52 = v14;
  v53 = v14;
  v54 = v15 + 48;
  LODWORD(v15) = v51(v49, 1, v53);
  sub_30B8(v49, &unk_353040, &qword_2D1528);
  v55 = v15 == 1;
  v56 = v3;
  v57 = v202;
  if (!v55)
  {
LABEL_5:
    sub_F3F4(v56 + v50, v45, &unk_353040, &qword_2D1528);
    if (v51(v45, 1, v52) == 1)
    {
      sub_30B8(v45, &unk_353040, &qword_2D1528);
      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v70 = sub_2CE7D0();
      v71 = v195;
      INPlayMediaIntent.toServerConversionParse()(v195);
      sub_1356F8(v71, v70);
      (*(v200 + 8))(v71, v201);
      v72 = v191;
      sub_2C9EA0();
      v198(v72);

      return (*(v192 + 8))(v72, v193);
    }

    v74 = v194;
    sub_606EC(v45, v194);
    v75 = v186;
    sub_60750(v74, v186);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v168 = v56;
    if (EnumCaseMultiPayload != 1)
    {
      v109 = *v75;
      v189 = *(v75 + 8);
      v110 = [objc_allocWithZone(INPlayMediaIntent) init];
      v197 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input;
      v112 = v200;
      v111 = v201;
      v190 = *(v200 + 16);
      v113 = v195;
      (v190)(v195, v56 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input, v201);
      v114 = v185;
      sub_2CA790();
      v200 = *(v112 + 8);
      (v200)(v113, v111);
      v115 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(v114);
      v117 = v116;
      (*(v196 + 8))(v114, v202);
      v118 = sub_1BA200(v109, v189, v115, v117);

      (v190)(v113, v197 + v168, v111);
      sub_1356F8(v113, v118);
      (v200)(v113, v111);
      v119 = v191;
      sub_2C9EA0();
      v198(v119);

      (*(v192 + 8))(v119, v193);
LABEL_37:
      v149 = v194;
      return sub_607B4(v149);
    }

    v77 = v184;
    v78 = *(v184 + 32);
    v79 = v175;
    (v78)(v187, v75, v175);
    sub_2C8D70();
    if (v80)
    {
      v197 = v78;
      v82 = v200;
      v81 = v201;
      v83 = v195;
      (*(v200 + 16))(v195, v168 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input, v201);
      v84 = v185;
      sub_2CA790();
      (*(v82 + 8))(v83, v81);
      v201 = _s23AudioFlowDelegatePlugin13ShimUtilitiesV14getAppBundleId4fromSSSg07SiriKitB05ParseO_tFZ_0(v84);
      v86 = v85;
      (*(v196 + 8))(v84, v202);
      v87 = v190;
      if (!v86)
      {
        v133 = v79;
LABEL_36:

        sub_2CBED0();
        sub_2CBEC0();
        v142 = v171;
        v143 = v187;
        (*(v77 + 16))(v171, v187, v133);
        v144 = (*(v77 + 80) + 16) & ~*(v77 + 80);
        v145 = (v170 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
        v146 = swift_allocObject();
        (v197)(v146 + v144, v142, v133);
        *(v146 + v145) = v168;
        v147 = (v146 + ((v145 + 15) & 0xFFFFFFFFFFFFFFF8));
        v148 = v199;
        *v147 = v198;
        v147[1] = v148;

        sub_2CBE70();

        (*(v77 + 8))(v143, v133);
        goto LABEL_37;
      }

      v200 = sub_60914();
      v89 = v88;

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v90 = sub_3ED0(v87, static Logger.default);
      swift_beginAccess();
      v91 = v188;
      v92 = v188[2];
      v93 = v174;
      v195 = v188 + 2;
      v196 = v90;
      v193 = v92;
      v92(v174, v90, v87);

      v94 = sub_2CDFE0();
      v95 = sub_2CE670();
      v202 = v86;

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v203 = v98;
        *v96 = 138412546;
        if (v89)
        {
          sub_10C40();
          swift_allocError();
          *v99 = v200;
          v99[1] = v89;

          v100 = _swift_stdlib_bridgeErrorToNSError();
          v101 = v100;
        }

        else
        {
          v100 = 0;
          v101 = 0;
        }

        *(v96 + 4) = v100;
        *v97 = v101;
        *(v96 + 12) = 2080;
        v136 = v201;
        *(v96 + 14) = sub_3F08(v201, v202, &v203);
        _os_log_impl(&dword_0, v94, v95, "ShimFlow#execute Link bundle identifier %@, requested bundle identifier %s", v96, 0x16u);
        sub_30B8(v97, &unk_34FC00, &unk_2D0150);

        sub_306C(v98);

        v134 = v188[1];
        (v134)(v174, v190);
        v74 = v194;
        v79 = v175;
        v135 = v168;
        v77 = v184;
      }

      else
      {

        v134 = v91[1];
        (v134)(v93, v87);
        v135 = v168;
        v77 = v184;
        v136 = v201;
      }

      v140 = v172;
      v141 = v202;
      if (v89 && (v200 == v136 && v89 == v202 || (sub_2CEEA0() & 1) != 0))
      {
        v133 = v79;

        goto LABEL_36;
      }

      v197 = v134;
      v150 = v190;
      v193(v140, v196, v190);

      v151 = sub_2CDFE0();
      v152 = sub_2CE690();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v203 = v155;
        *v153 = 138412546;
        if (v89)
        {
          sub_10C40();
          swift_allocError();
          *v156 = v200;
          v156[1] = v89;
          v157 = _swift_stdlib_bridgeErrorToNSError();
          v158 = v157;
        }

        else
        {
          v157 = 0;
          v158 = 0;
        }

        *(v153 + 4) = v157;
        *v154 = v158;
        *(v153 + 12) = 2080;
        v159 = sub_3F08(v201, v141, &v203);

        *(v153 + 14) = v159;
        _os_log_impl(&dword_0, v151, v152, "ShimFlow#execute Link bundle identifier %@ does not match requested app bundle identifier %s", v153, 0x16u);
        sub_30B8(v154, &unk_34FC00, &unk_2D0150);

        sub_306C(v155);

        (v197)(v172, v190);
        v79 = v175;
        v135 = v168;
        v77 = v184;
      }

      else
      {

        (v197)(v140, v150);
      }

      v160 = *(v135 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_playMediaCatDialogService);
      sub_2CCFB0();
      v161 = sub_2CCF80();
      v162 = swift_allocObject();
      v163 = v198;
      v164 = v199;
      v162[2] = v135;
      v162[3] = v163;
      v162[4] = v164;

      sub_252E9C(v161, sub_60F00, v162);

      (*(v77 + 8))(v187, v79);
    }

    else
    {
      v120 = v190;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v121 = sub_3ED0(v120, static Logger.default);
      swift_beginAccess();
      v122 = v188;
      v123 = v173;
      (v188[2])(v173, v121, v120);
      v124 = v169;
      (*(v77 + 16))(v169, v187, v79);
      v125 = sub_2CDFE0();
      v126 = sub_2CE680();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = v124;
        v128 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v203 = v197;
        *v128 = 136315138;
        sub_60810();
        v129 = sub_2CEE70();
        v131 = v130;
        v202 = *(v77 + 8);
        (v202)(v127, v79);
        v132 = sub_3F08(v129, v131, &v203);

        *(v128 + 4) = v132;
        _os_log_impl(&dword_0, v125, v126, "ShimFlow#execute invalid link, no host: %s", v128, 0xCu);
        sub_306C(v197);

        (v122[1])(v173, v190);
      }

      else
      {

        v202 = *(v77 + 8);
        (v202)(v124, v79);
        (v122[1])(v123, v120);
      }

      sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v137 = sub_2CE7D0();
      v138 = v195;
      INPlayMediaIntent.toServerConversionParse()(v195);
      sub_1356F8(v138, v137);
      (*(v200 + 8))(v138, v201);
      v139 = v191;
      sub_2C9EA0();
      v198(v139);

      (*(v192 + 8))(v139, v193);
      (v202)(v187, v79);
    }

    v149 = v74;
    return sub_607B4(v149);
  }

  v165 = v45;
  v166 = v51;
  v167 = v54;
  v58 = v52;
  v60 = v200;
  v59 = v201;
  v61 = v189;
  (*(v200 + 16))(v189, v56 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input, v201);
  v62 = v197;
  sub_2CA790();
  (*(v60 + 8))(v61, v59);
  v63 = v196;
  if ((*(v196 + 88))(v62, v57) == enum case for Parse.ifClientAction(_:))
  {
    v64 = v197;
    (*(v63 + 96))(v197, v57);
    v65 = v178;
    v66 = v177;
    v67 = v179;
    (*(v178 + 32))(v177, v64, v179);
    v68 = v180;
    sub_2CA330();
    v69 = v176;
    static ShimUtilities.getShimExperience(from:)(v68, v176);
    (*(v181 + 8))(v68, v182);
    (*(v65 + 8))(v66, v67);
    swift_beginAccess();
    sub_6067C(v69, v56 + v50);
    swift_endAccess();
    v52 = v58;
    v51 = v166;
    v45 = v165;
    goto LABEL_5;
  }

  (*(v63 + 8))(v197, v57);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v102 = v190;
  v103 = sub_3ED0(v190, static Logger.default);
  swift_beginAccess();
  v104 = v188;
  v105 = v183;
  (v188[2])(v183, v103, v102);
  v106 = sub_2CDFE0();
  v107 = sub_2CE680();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_0, v106, v107, "ShimFlow#execute Not ifClientAction parse", v108, 2u);
  }

  (v104[1])(v105, v102);
  return sub_5E698(0x6F7272456D696873, 0xE900000000000072, v198, v199);
}

uint64_t sub_5E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_2CA910();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(SAUIAppPunchOut) init];
  sub_20410(&qword_34CC88, &unk_2D0DC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2D0E40;
  v18 = sub_2CE270();
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = sub_2CE270();
  *(v17 + 88) = &type metadata for String;
  *(v17 + 64) = v20;
  *(v17 + 72) = v21;
  isa = sub_2CE400().super.isa;

  [v16 setLaunchOptions:isa];

  sub_2C8D50(v23);
  v25 = v24;
  [v16 setPunchOutUri:v24];

  v26 = v16;
  sub_2CBC60();
  sub_35E0(&v39, *(&v40 + 1));
  sub_2CBE60();
  if (v27)
  {
    v28 = sub_2CE260();
  }

  else
  {
    v28 = 0;
  }

  sub_306C(&v39);
  [v26 setRefId:v28];

  v29 = sub_2CA000();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_20410(&unk_351900, &unk_2D0960);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2D0770;
  *(v30 + 32) = v26;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_2C9E20();

  sub_30B8(&v39, &qword_34CC80, &qword_2D1520);
  sub_30B8(v10, &unk_353020, &unk_2D0970);
  v31 = *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher + 32);
  sub_35E0((a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher), *(a3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher + 24));
  *(&v40 + 1) = v11;
  v41 = &protocol witness table for AceOutput;
  v32 = sub_F390(&v39);
  (*(v12 + 16))(v32, v15, v11);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v38;
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = a5;

  sub_2CA010();

  (*(v12 + 8))(v15, v11);

  return sub_306C(&v39);
}

uint64_t sub_5E698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v5;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_3F08(a1, a2, &v33);
    _os_log_impl(&dword_0, v15, v16, "ShimFlow#genericErrorDialog Reached logic... %s", v19, 0xCu);
    sub_306C(v20);

    a4 = v18;
    v5 = v31;
  }

  (*(v10 + 8))(v13, v9);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v22;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  *(inited + 80) = sub_2CC1F0();
  *(inited + 88) = v23;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2CECB0(50);

  v33 = 0xD000000000000030;
  v34 = 0x80000000002DB120;
  v35._countAndFlagsBits = a1;
  v35._object = a2;
  sub_2CE350(v35);
  v24 = v33;
  v25 = v34;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v24;
  *(inited + 104) = v25;
  v26 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v27 = *(v5 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_playMediaCatDialogService);
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = a1;
  v29 = v32;
  v28[4] = a2;
  v28[5] = v29;
  v28[6] = a4;

  sub_3D150(v26, 0, sub_60648, v28);
}

uint64_t sub_5EA48(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v153 = a5;
  v154 = a6;
  *(&v147 + 1) = a4;
  *&v147 = a3;
  v151 = a2;
  v141 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v134 = &v126 - v8;
  v137 = sub_2CA910();
  v136 = *(v137 - 8);
  v9 = *(v136 + 64);
  __chkstk_darwin(v137);
  v135 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2C9EC0();
  v139 = *(v140 - 8);
  v11 = *(v139 + 64);
  __chkstk_darwin(v140);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v132 = &v126 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v150 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v126 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v149 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v148 = &v126 - v28;
  v146 = sub_2CCB30();
  v145 = *(v146 - 8);
  v29 = *(v145 + 64);
  __chkstk_darwin(v146);
  v142 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2CCAC0();
  v143 = *(v144 - 8);
  v31 = *(v143 + 64);
  __chkstk_darwin(v144);
  v33 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v34 = *(*(v126 - 8) + 64);
  v35 = __chkstk_darwin(v126);
  v127 = &v126 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v155 = &v126 - v37;
  v38 = sub_20410(&unk_3519A0, &qword_2D0980);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v126 - v40);
  v42 = sub_2CE000();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = __chkstk_darwin(v42);
  v133 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = &v126 - v47;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v49 = sub_3ED0(v42, static Logger.default);
  swift_beginAccess();
  v50 = v43[2];
  v130 = v49;
  v129 = v43 + 2;
  v128 = v50;
  v50(v48, v49, v42);
  v51 = sub_2CDFE0();
  v52 = sub_2CE670();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "ShimFlow#handleErrorDialogResult Handling dialog Result...", v53, 2u);
  }

  v56 = v43[1];
  v54 = (v43 + 1);
  v55 = v56;
  v56(v48, v42);
  sub_F3F4(v141, v41, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v141 = v55;
    v148 = v54;
    v155 = v42;
    v57 = *v41;
    v157 = v147;

    v160._countAndFlagsBits = 95;
    v160._object = 0xE100000000000000;
    sub_2CE350(v160);
    v58 = v157;
    *(&v147 + 1) = v57;
    swift_getErrorValue();
    *&v157 = sub_2CEEF0();
    *(&v157 + 1) = v59;
    v60 = sub_2CE3C0();
    v62 = v61;
    v157 = v58;

    v161._countAndFlagsBits = v60;
    v161._object = v62;
    sub_2CE350(v161);

    v63 = v143;
    v64 = v144;
    (*(v143 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.sf(_:), v144);
    v65 = v145;
    v66 = v142;
    v67 = v146;
    (*(v145 + 104))(v142, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v146);
    *&v147 = sub_2CCAE0();

    (*(v65 + 8))(v66, v67);
    (*(v63 + 8))(v33, v64);
    sub_EEAC(v152 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider, &v157);
    sub_35E0(&v157, *(&v158 + 1));
    v68 = enum case for ActivityType.failed(_:);
    v69 = sub_2C9C20();
    v70 = *(v69 - 8);
    v71 = v149;
    (*(v70 + 104))(v149, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    v72 = sub_2CA130();
    (*(*(v72 - 8) + 56))(v150, 1, 1, v72);
    v73 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v74 = sub_2C98F0();
    v75 = *(v74 - 8);
    (*(v75 + 104))(v17, v73, v74);
    (*(v75 + 56))(v17, 0, 1, v74);
    if (v151)
    {
      sub_2CE710();
    }

    v96 = v149;
    v97 = v150;
    sub_2CB4E0();

    sub_30B8(v17, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v97, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v96, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v157);
    v98 = v133;
    v99 = v155;
    v128(v133, v130, v155);
    swift_errorRetain();
    v100 = sub_2CDFE0();
    v101 = sub_2CE680();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v156 = v103;
      *v102 = 136315138;
      swift_getErrorValue();
      *&v157 = sub_2CEEF0();
      *(&v157 + 1) = v104;
      v105 = sub_2CE3C0();
      v107 = sub_3F08(v105, v106, &v156);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_0, v100, v101, "ShimFlow#handleErrorDialogResult Could not properly create dialog %s, silently failing...", v102, 0xCu);
      sub_306C(v103);
    }

    v141(v98, v99);
    v108 = v138;
    sub_2C9EB0();
    v153(v108);

    return (*(v139 + 8))(v108, v140);
  }

  else
  {
    v76 = v41;
    v77 = v155;
    sub_24BE0(v76, v155);
    v78 = v143;
    v79 = v144;
    (*(v143 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.sf(_:), v144);
    v80 = v145;
    v81 = v142;
    v82 = v146;
    (*(v145 + 104))(v142, enum case for AdditionalMetricsDescription.SourceFunction.handleDlgRes(_:), v146);
    v150 = sub_2CCAE0();
    (*(v80 + 8))(v81, v82);
    (*(v78 + 8))(v33, v79);
    v83 = v152;
    sub_EEAC(v152 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider, &v157);
    sub_35E0(&v157, *(&v158 + 1));
    v84 = enum case for ActivityType.failed(_:);
    v85 = sub_2C9C20();
    v86 = *(v85 - 8);
    v87 = v148;
    (*(v86 + 104))(v148, v84, v85);
    (*(v86 + 56))(v87, 0, 1, v85);
    v88 = v127;
    sub_F3F4(v77, v127, &qword_34C6E8, &unk_2D0FF0);

    v89 = sub_2CA130();
    v90 = *(v89 - 8);
    v91 = v131;
    (*(v90 + 32))(v131, v88, v89);
    (*(v90 + 56))(v91, 0, 1, v89);
    v92 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v93 = sub_2C98F0();
    v94 = *(v93 - 8);
    v95 = v132;
    (*(v94 + 104))(v132, v92, v93);
    (*(v94 + 56))(v95, 0, 1, v93);
    if (v151)
    {
      sub_2CE710();
    }

    v110 = v148;
    sub_2CB4E0();

    sub_30B8(v95, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v91, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v110, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v157);
    v111 = *(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_viewFactory);
    v112 = sub_2C9BE0();
    sub_20410(&unk_351900, &unk_2D0960);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_2D0770;
    *(v113 + 32) = v112;
    v114 = sub_2CA000();
    v115 = v134;
    (*(*(v114 - 8) + 56))(v134, 1, 1, v114);
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v116 = v112;
    v117 = v135;
    sub_2C9E20();

    sub_30B8(&v157, &qword_34CC80, &qword_2D1520);
    sub_30B8(v115, &unk_353020, &unk_2D0970);
    v118 = *(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher + 32);
    sub_35E0((v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher), *(v83 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher + 24));
    v119 = v137;
    *(&v158 + 1) = v137;
    v159 = &protocol witness table for AceOutput;
    v120 = sub_F390(&v157);
    v121 = v136;
    (*(v136 + 16))(v120, v117, v119);
    v122 = swift_allocObject();
    swift_weakInit();
    v123 = swift_allocObject();
    v124 = v153;
    v125 = v154;
    v123[2] = v122;
    v123[3] = v124;
    v123[4] = v125;

    sub_2CA010();

    (*(v121 + 8))(v117, v119);
    sub_30B8(v155, &qword_34C6E8, &unk_2D0FF0);

    return sub_306C(&v157);
  }
}

uint64_t sub_5FCE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), const char *a7, const char *a8)
{
  v32 = a7;
  v33 = a5;
  v34 = a4;
  v10 = sub_2C9EC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v20, v27, v15);
    v24 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (!os_log_type_enabled(v24, v28))
    {
      v22 = v20;
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v24, v28, a8, v29, 2u);
    v22 = v20;
    goto LABEL_10;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v22, v23, v15);
  v24 = sub_2CDFE0();
  v25 = a6();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, v32, v26, 2u);
LABEL_10:
  }

LABEL_12:

  (*(v16 + 8))(v22, v15);
  sub_2C9EB0();
  v34(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_60074()
{
  v1 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_input;
  v2 = sub_2CA7B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_shimExperience, &unk_353040, &qword_2D1528);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_siriKitTaskLoggingProvider));
  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_playMediaCatDialogService);

  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_viewFactory);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin8ShimFlow_publisher));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShimFlow()
{
  result = qword_34D528;
  if (!qword_34D528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_601D4()
{
  v0 = sub_2CA7B0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_602BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_602BC()
{
  if (!qword_34D538)
  {
    type metadata accessor for ShimExperience();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34D538);
    }
  }
}

uint64_t sub_6033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_603EC;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_603EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_6050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.execute()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_E664;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_605C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShimFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_60648(void (*a1)(char *, uint64_t))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[2];
  return sub_5EA48(a1, 0, v2, v3, v4, v5);
}

uint64_t sub_6067C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_353040, &qword_2D1528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_606EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimExperience();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_60750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimExperience();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_607B4(uint64_t a1)
{
  v2 = type metadata accessor for ShimExperience();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_60810()
{
  result = qword_34D648;
  if (!qword_34D648)
  {
    sub_2C8D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D648);
  }

  return result;
}

uint64_t sub_60868(uint64_t a1)
{
  v3 = *(sub_2C8D90() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_5E260(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_60914()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 1);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = _SWCServiceTypeAppLinks;
  v9 = objc_allocWithZone(_SWCServiceSpecifier);
  v10 = v8;
  v11 = sub_2CE260();
  v12 = [v9 initWithServiceType:v10 applicationIdentifier:0 domain:v11];

  v13 = objc_opt_self();
  v46[0] = 0;
  v14 = [v13 serviceDetailsWithServiceSpecifier:v12 error:v46];
  v15 = v46[0];
  if (!v14)
  {
    v29 = v46[0];
    sub_2C8D30();

    swift_willThrow();
    if (qword_34BF58 == -1)
    {
LABEL_7:
      v30 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v5, v30, v0);
      swift_errorRetain();
      v31 = sub_2CDFE0();
      v32 = sub_2CE680();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        swift_errorRetain();
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v35;
        *v34 = v35;
        _os_log_impl(&dword_0, v31, v32, "ShimFlow#execute Universal link could not be resolved %@", v33, 0xCu);
        sub_30B8(v34, &unk_34FC00, &unk_2D0150);
      }

      else
      {
      }

      (*(v1 + 8))(v5, v0);
      return 0;
    }

LABEL_25:
    swift_once();
    goto LABEL_7;
  }

  v16 = v14;
  sub_334A0(0, &qword_34D650, _SWCServiceDetails_ptr);
  v17 = sub_2CE410();
  v18 = v15;

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v7, v19, v0);

  v5 = sub_2CDFE0();
  v20 = sub_2CE670();

  if (os_log_type_enabled(v5, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v12;
    v23 = v0;
    v0 = v22;
    v45 = v22;
    *v21 = 136315138;
    v24 = sub_2CE420();
    v26 = sub_3F08(v24, v25, &v45);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v5, v20, "ShimFlow#execute ServiceDetails %s", v21, 0xCu);
    sub_306C(v0);

    v27 = *(v1 + 8);
    v1 += 8;
    v28 = v23;
    v12 = v44;
    v27(v7, v28);
  }

  else
  {

    v36 = *(v1 + 8);
    v1 += 8;
    v36(v7, v0);
  }

  if (!(v17 >> 62))
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

LABEL_21:

    return 0;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v37 = sub_2CECD0();
    goto LABEL_15;
  }

  if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_25;
  }

  v37 = *(v17 + 32);
LABEL_15:
  v38 = v37;

  v39 = [v38 serviceSpecifier];

  v40 = [v39 bundleIdentifier];
  if (v40)
  {
    v41 = sub_2CE270();

    return v41;
  }

  return 0;
}

uint64_t sub_60F00(void (*a1)(char *, uint64_t))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_5EA48(a1, 0, 0xD000000000000030, 0x80000000002DB160, v2, v3);
}

id sub_60F90(void *a1, void *a2)
{
  v3 = v2;
  v57 = a2;
  v5 = sub_2CAA00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34CC90, qword_2D40E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v57 - v15;
  sub_2CD700();
  v58 = a1;
  sub_2CDA40();
  (*(v6 + 56))(v16, 0, 1, v5);
  v17 = sub_2CD600();
  if (v17)
  {
    v18 = v17;
    v19 = sub_62CF4(v17, 0, 0);
    objc_opt_self();
    swift_dynamicCastObjCClass();
    v20 = [v3 backingStore];
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    v33 = v58;
    if (v32)
    {
      v34 = v32;
      v35 = v3;
      v36 = INIntentSlotValueTransformToMediaSearch();
      [v34 setMediaSearch:v36];
    }

    else
    {
      v35 = v3;
      v36 = v19;
      v19 = v20;
    }

    sub_2CDBC0();
    sub_2CDBB0();
    v37 = sub_2CDBA0();

    v38 = sub_232644(v33);
    v39 = [v35 backingStore];
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = v40;
      v42 = INIntentSlotValueTransformToPrivateAddMediaIntentData();
      [v41 setPrivateAddMediaIntentData:v42];
    }

    else
    {
      v42 = v38;
      v38 = v39;
    }

    v43 = sub_2CDB80();
    v45 = v44;
    v46 = sub_2CDB60();
    v48 = sub_230B38(v43, v45, v46, v47);

    objc_opt_self();
    swift_dynamicCastObjCClass();
    v49 = [v35 backingStore];
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (!v50)
    {
    }

    [v50 setIntentMetadata:v48];

    v51 = sub_232B38(v18, v37);
    v52 = [v35 backingStore];
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (!v53)
    {
    }

    [v53 setMediaDestination:v51];

    v54 = v35;
  }

  else
  {
    v57 = v3;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = v8;
    v22 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v12, v22, v8);
    v23 = v58;
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v58 = v21;
      v27 = v26;
      v28 = swift_slowAlloc();
      v59 = v28;
      *v27 = 136315138;
      sub_2CDA40();
      v29 = sub_2CE2A0();
      v31 = sub_3F08(v29, v30, &v59);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_0, v24, v25, "INAddMediaIntent#amend unable to construct AudioUsoIntent from userDialogAct: %s", v27, 0xCu);
      sub_306C(v28);

      (*(v9 + 8))(v12, v58);
    }

    else
    {

      (*(v9 + 8))(v12, v21);
    }

    v35 = v57;
    v55 = v57;
  }

  return v35;
}

uint64_t sub_615D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13)
{
  v51 = a5;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  if (a4 && !a7)
  {
    v48 = a12;
    v49 = a13;
    v50 = a10;

    if (sub_2CBD70() == a3 && v32 == a4)
    {
    }

    else
    {
      v33 = sub_2CEEA0();

      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ((sub_2CB650() & 1) != 0 && a6)
    {
      v47 = a8;
      v34 = a11[4];
      sub_35E0(a11, a11[3]);

      if (sub_2CC410())
      {

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v35 = sub_3ED0(v18, static Logger.default);
        swift_beginAccess();
        (*(v19 + 16))(v25, v35, v18);

        v36 = sub_2CDFE0();
        v37 = sub_2CE690();

        if (!os_log_type_enabled(v36, v37))
        {

          (*(v19 + 8))(v25, v18);
          a4 = a6;
          a8 = v47;
          v41 = v51;
          goto LABEL_23;
        }

        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v52[0] = v39;
        *v38 = 136315138;
        v40 = v51;
        *(v38 + 4) = sub_3F08(v51, a6, v52);
        _os_log_impl(&dword_0, v36, v37, "INAddMediaIntent#applyNowPlayingForAirPlay bundleId is AirPlay, replacing bundleId with representedBundleId %s and may attempt to execute on the device of the requesting user", v38, 0xCu);
        sub_306C(v39);

        (*(v19 + 8))(v25, v18);
        v41 = v40;
        a4 = a6;
      }

      else
      {

        v41 = a3;
      }

      a8 = v47;
LABEL_23:
      v42 = v48[4];
      sub_35E0(v48, v48[3]);
      sub_EEAC(v49, v52);
      v43 = swift_allocObject();
      v43[2] = a8;
      v43[3] = a9;
      sub_F338(v52, (v43 + 4));
      v44 = v50;
      v43[9] = v50;
      v43[10] = v41;
      v43[11] = a4;

      v45 = v44;
      sub_2CC300();
    }

LABEL_19:
    v41 = a3;
    goto LABEL_23;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v23, v26, v18);
  v27 = sub_2CDFE0();
  v28 = sub_2CE680();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "INAddMediaIntent#applyNowPlayingForAirPlay failed to get bundleId for now playing app", v29, 2u);
  }

  v30 = (*(v19 + 8))(v23, v18);
  return a8(v30);
}

uint64_t sub_61ABC(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v55 = a4;
  v62 = a3;
  v63 = a2;
  v8 = sub_2CE000();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 8);
  __chkstk_darwin(v8);
  v56 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v55 - v13;
  v15 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = sub_2CBAF0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  sub_F3F4(a1, v18, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v18, &qword_34FF00, &qword_2D3EB0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = v58;
    v28 = sub_3ED0(v58, static Logger.default);
    swift_beginAccess();
    v29 = v56;
    v30 = v57;
    (*(v57 + 2))(v56, v28, v27);
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "INAddMediaIntent#applyNowPlayingForAirPlay failed to get now playing info", v33, 2u);
    }

    v34 = (*(v30 + 1))(v29, v27);
    return (v63)(v34);
  }

  (*(v20 + 32))(v26, v18, v19);
  v57 = v26;
  v58 = v20;
  (*(v20 + 16))(v24, v26, v19);
  v36 = type metadata accessor for NowPlayingIntent();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_D4274(v24);
  v40 = v55[4];
  sub_35E0(v55, v55[3]);
  sub_2CD8D0();
  v41 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
  swift_beginAccess();
  sub_6FC1C(v14, &v39[v41]);
  swift_endAccess();

  v43 = sub_691B0(v42, 0, 0);

  objc_opt_self();
  v44 = v59;
  v45 = swift_dynamicCastObjCClass();
  v46 = [v44 backingStore];
  if (v45)
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {
      v49 = v43;
      v43 = v46;
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (!v47)
    {
      v49 = v43;
      v43 = v46;
      goto LABEL_14;
    }
  }

  v48 = v47;
  v49 = INIntentSlotValueTransformToMediaSearch();
  [v48 setMediaSearch:v49];

LABEL_14:
  v50 = sub_230B38(v60, v61, 0, 0);
  v51 = [v44 backingStore];
  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  v54 = v57;
  v53 = v58;
  if (!v52)
  {
  }

  [v52 setIntentMetadata:{v50, v55}];

  v63();

  return (*(v53 + 8))(v54, v19);
}

uint64_t INAddMediaIntent.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v90 = sub_2CA870();
  v88 = *(v90 - 8);
  v1 = *(v88 + 64);
  v2 = __chkstk_darwin(v90);
  v87 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v86 = &v78 - v4;
  v91 = sub_2CE000();
  v97 = *(v91 - 8);
  v5 = *(v97 + 64);
  v6 = __chkstk_darwin(v91);
  v96 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v78 - v8;
  v83 = sub_2C9900();
  v82 = *(v83 - 1);
  v9 = v82[8];
  __chkstk_darwin(v83);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34D658, &qword_2D1530);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v80 = &v78 - v13;
  v14 = sub_20410(&qword_34D660, &qword_2D1538);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v79 = &v78 - v16;
  v17 = sub_20410(&qword_34D668, &qword_2D1540);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v78 - v19;
  v21 = sub_2CAFE0();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  v23 = __chkstk_darwin(v21);
  v92 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v78 - v25;
  sub_20410(&qword_34D670, &qword_2D1548);
  v27 = swift_allocObject();
  v98 = xmmword_2D0090;
  *(v27 + 16) = xmmword_2D0090;
  v28 = swift_allocObject();
  *(v28 + 16) = v98;
  v29 = swift_allocObject();
  *(v29 + 16) = v98;
  v30 = swift_allocObject();
  *(v30 + 16) = v98;
  v31 = swift_allocObject();
  *(v31 + 16) = v98;
  sub_2CABB0();
  v32 = enum case for TerminalElement.Value.semantic(_:);
  v33 = sub_2CABD0();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v20, v32, v33);
  (*(v34 + 56))(v20, 0, 1, v33);
  *(v31 + 56) = sub_2CAC70();
  *(v31 + 64) = &protocol witness table for TerminalIntentNode;
  sub_F390((v31 + 32));
  sub_2CAC50();
  v35 = sub_2CACD0();
  *(v30 + 56) = v35;
  *(v30 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v30 + 32));
  sub_2CACC0();
  *(v29 + 56) = v35;
  *(v29 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v29 + 32));
  sub_2CACC0();
  *(v28 + 56) = v35;
  *(v28 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v28 + 32));
  sub_2CACC0();
  *(v27 + 56) = v35;
  *(v27 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v27 + 32));
  sub_2CACC0();
  v101 = v35;
  v102 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v100);
  sub_2CACC0();
  v36 = sub_2CAFB0();
  (*(*(v36 - 8) + 56))(v79, 1, 1, v36);
  v37 = sub_2CACE0();
  (*(*(v37 - 8) + 56))(v80, 1, 1, v37);
  sub_2CAFD0();
  (v82[13])(v81, enum case for SiriKitConfirmationState.unset(_:), v83);
  v101 = sub_2CCFE0();
  v102 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v100);
  sub_2CCFD0();
  v38 = sub_2CA860();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v82 = v84;
  *&v98 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = v91;
  v42 = sub_3ED0(v91, static Logger.default);
  swift_beginAccess();
  v43 = v97;
  v81 = *(v97 + 16);
  (v81)(v93, v42, v41);
  v45 = v94;
  v44 = v95;
  v46 = *(v94 + 16);
  v84 = (v94 + 16);
  v83 = v46;
  v46(v92, v26, v95);
  v47 = sub_2CDFE0();
  v48 = sub_2CE670();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v43;
  v51 = v44;
  v52 = v45;
  v85 = v26;
  if (v49)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v99 = v54;
    *v53 = 136315138;
    sub_6FB80(&qword_34D678, &type metadata accessor for NLIntent);
    v55 = v92;
    v56 = sub_2CEE70();
    v57 = v51;
    v59 = v58;
    v60 = *(v52 + 8);
    v60(v55, v57);
    v61 = sub_3F08(v56, v59, &v99);

    *(v53 + 4) = v61;
    _os_log_impl(&dword_0, v47, v48, "INAddMediaIntent#toServerConversionParse nlIntent:%s", v53, 0xCu);
    sub_306C(v54);
    v41 = v91;

    v62 = v97;
  }

  else
  {

    v60 = *(v45 + 8);
    v60(v92, v51);
    v62 = v50;
  }

  v63 = *(v62 + 8);
  v63(v93, v41);
  (v81)(v96, v42, v41);
  v64 = v82;
  v65 = sub_2CDFE0();
  v66 = sub_2CE670();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = v41;
    v69 = swift_slowAlloc();
    *v67 = 138412290;
    *(v67 + 4) = v64;
    *v69 = v64;
    v70 = v64;
    _os_log_impl(&dword_0, v65, v66, "INAddMediaIntent#toServerConversionParse sirikitIntent:%@", v67, 0xCu);
    sub_30B8(v69, &unk_34FC00, &unk_2D0150);
    v41 = v68;
  }

  v63(v96, v41);
  v71 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v72 = v86;
  v73 = v85;
  v74 = v95;
  v83(v86, v85, v95);
  *&v72[v71] = v98;
  v75 = v88;
  v76 = v90;
  (*(v88 + 104))(v72, enum case for Parse.NLv3IntentPlusServerConversion(_:), v90);
  (*(v75 + 16))(v87, v72, v76);
  sub_2CA7A0();
  (*(v75 + 8))(v72, v76);
  return (v60)(v73, v74);
}

id sub_62CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v778 = a3;
  v777 = a2;
  v695 = sub_2CD4E0();
  v694 = *(v695 - 8);
  v4 = *(v694 + 64);
  __chkstk_darwin(v695);
  v693 = v670 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v706 = sub_2CD560();
  v727 = *(v706 - 8);
  v6 = *(v727 + 64);
  v7 = __chkstk_darwin(v706);
  v692 = v670 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v688 = v670 - v9;
  v691 = sub_20410(&qword_34D680, &qword_2D1580);
  v10 = *(*(v691 - 8) + 64);
  __chkstk_darwin(v691);
  v698 = v670 - v11;
  v678 = sub_20410(&qword_34D688, &qword_2D1588);
  v12 = *(*(v678 - 8) + 64);
  __chkstk_darwin(v678);
  v679 = v670 - v13;
  v759 = sub_2CD4C0();
  v766 = *(v759 - 8);
  v14 = *(v766 + 64);
  __chkstk_darwin(v759);
  v712 = v670 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v744 = sub_2CD4A0();
  v733 = *(v744 - 8);
  v16 = *(v733 + 64);
  __chkstk_darwin(v744);
  v697 = v670 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v726 = sub_20410(&qword_34D690, &qword_2D1590);
  v18 = *(*(v726 - 8) + 64);
  __chkstk_darwin(v726);
  v743 = v670 - v19;
  v20 = sub_20410(&qword_34D698, &qword_2D1598);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v707 = v670 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v741 = v670 - v25;
  __chkstk_darwin(v24);
  v742 = v670 - v26;
  v764 = sub_2CE000();
  v748 = *(v764 - 8);
  v27 = *(v748 + 64);
  __chkstk_darwin(v764);
  v763 = v670 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&unk_353080, &qword_2D1460);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v722 = v670 - v31;
  v721 = sub_2CD5D0();
  v720 = *(v721 - 8);
  v32 = *(v720 + 64);
  __chkstk_darwin(v721);
  v719 = v670 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20410(&qword_34D6A0, &unk_2D3490);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v703 = v670 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v689 = v670 - v39;
  v40 = __chkstk_darwin(v38);
  v702 = v670 - v41;
  __chkstk_darwin(v40);
  v774 = v670 - v42;
  v43 = sub_2CD540();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v760 = v670 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v788 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v47 = *(*(v788 - 8) + 64);
  v48 = __chkstk_darwin(v788);
  v768 = v670 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v716 = v670 - v51;
  v52 = __chkstk_darwin(v50);
  v715 = v670 - v53;
  v54 = __chkstk_darwin(v52);
  v731 = v670 - v55;
  v56 = __chkstk_darwin(v54);
  v735 = v670 - v57;
  v58 = __chkstk_darwin(v56);
  v730 = v670 - v59;
  v60 = __chkstk_darwin(v58);
  v780 = v670 - v61;
  __chkstk_darwin(v60);
  v789 = v670 - v62;
  v776 = sub_2CD500();
  v784 = *(v776 - 8);
  v63 = *(v784 + 64);
  __chkstk_darwin(v776);
  v773 = v670 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v758 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v65 = *(*(v758 - 8) + 64);
  v66 = __chkstk_darwin(v758);
  v740 = v670 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v713 = v670 - v69;
  v70 = __chkstk_darwin(v68);
  v686 = v670 - v71;
  v72 = __chkstk_darwin(v70);
  v728 = v670 - v73;
  __chkstk_darwin(v72);
  v770 = v670 - v74;
  v75 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v76 = *(*(v75 - 8) + 64);
  v77 = __chkstk_darwin(v75 - 8);
  v699 = v670 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v77);
  v736 = v670 - v80;
  v81 = __chkstk_darwin(v79);
  v767 = v670 - v82;
  v83 = __chkstk_darwin(v81);
  v704 = v670 - v84;
  v85 = __chkstk_darwin(v83);
  v700 = v670 - v86;
  v87 = __chkstk_darwin(v85);
  v690 = v670 - v88;
  v89 = __chkstk_darwin(v87);
  v765 = (v670 - v90);
  v91 = __chkstk_darwin(v89);
  v751 = v670 - v92;
  v93 = __chkstk_darwin(v91);
  v680 = v670 - v94;
  v95 = __chkstk_darwin(v93);
  v684 = v670 - v96;
  v97 = __chkstk_darwin(v95);
  v685 = v670 - v98;
  v99 = __chkstk_darwin(v97);
  v718 = v670 - v100;
  v101 = __chkstk_darwin(v99);
  v752 = v670 - v102;
  v103 = __chkstk_darwin(v101);
  v779 = v670 - v104;
  __chkstk_darwin(v103);
  v781 = v670 - v105;
  v749 = sub_2CD570();
  v750 = *(v749 - 8);
  v106 = *(v750 + 64);
  v107 = __chkstk_darwin(v749);
  v674 = v670 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v107);
  v772 = v670 - v109;
  v110 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v111 = *(*(v110 - 8) + 64);
  v112 = __chkstk_darwin(v110 - 8);
  v675 = v670 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __chkstk_darwin(v112);
  v681 = v670 - v115;
  v116 = __chkstk_darwin(v114);
  v682 = v670 - v117;
  __chkstk_darwin(v116);
  v119 = v670 - v118;
  v120 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  v121 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120 - 8);
  v123 = v670 - v122;
  v124 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v125 = *(*(v124 - 8) + 64);
  v126 = __chkstk_darwin(v124 - 8);
  v710 = v670 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __chkstk_darwin(v126);
  v687 = v670 - v129;
  v130 = __chkstk_darwin(v128);
  v683 = v670 - v131;
  v132 = __chkstk_darwin(v130);
  v711 = v670 - v133;
  v134 = __chkstk_darwin(v132);
  v696 = v670 - v135;
  v136 = __chkstk_darwin(v134);
  v725 = v670 - v137;
  v138 = __chkstk_darwin(v136);
  v737 = v670 - v139;
  v140 = __chkstk_darwin(v138);
  v738 = v670 - v141;
  v142 = __chkstk_darwin(v140);
  v708 = v670 - v143;
  v144 = __chkstk_darwin(v142);
  v714 = v670 - v145;
  v146 = __chkstk_darwin(v144);
  v701 = v670 - v147;
  v148 = __chkstk_darwin(v146);
  v753 = v670 - v149;
  v150 = __chkstk_darwin(v148);
  v729 = v670 - v151;
  v152 = __chkstk_darwin(v150);
  v734 = v670 - v153;
  v154 = __chkstk_darwin(v152);
  v756 = v670 - v155;
  v156 = __chkstk_darwin(v154);
  v724 = v670 - v157;
  v158 = __chkstk_darwin(v156);
  v761 = v670 - v159;
  v160 = __chkstk_darwin(v158);
  v762 = v670 - v161;
  v162 = __chkstk_darwin(v160);
  v757 = v670 - v163;
  v164 = __chkstk_darwin(v162);
  v732 = v670 - v165;
  v166 = __chkstk_darwin(v164);
  v723 = v670 - v167;
  v168 = __chkstk_darwin(v166);
  v783 = v670 - v169;
  v170 = __chkstk_darwin(v168);
  v755 = v670 - v171;
  v172 = __chkstk_darwin(v170);
  v709 = v670 - v173;
  v174 = __chkstk_darwin(v172);
  v782 = (v670 - v175);
  v176 = __chkstk_darwin(v174);
  v754 = v670 - v177;
  v178 = __chkstk_darwin(v176);
  v180 = v670 - v179;
  __chkstk_darwin(v178);
  v182 = v670 - v181;
  v796 = a1;
  v183 = sub_2CD700();
  v769 = a1;

  v775 = sub_2CD770();
  v787 = v184;
  sub_2CD780();
  v185 = *(v44 + 48);
  v186 = v185(v182, 1, v43);
  v785 = v44 + 48;
  v786 = v44;
  v790 = v185;
  *&v791 = v43;
  v792 = v183;
  if (v186 == 1)
  {
    sub_30B8(v182, &qword_34D6D0, qword_2D34A0);
    sub_2CD8D0();
    if (v185(v180, 1, v43) == 1)
    {
      sub_30B8(v180, &qword_34D6D0, qword_2D34A0);
      v187 = 0;
    }

    else
    {
      v187 = sub_2AA0F4();
      (*(v44 + 8))(v180, v43);
    }
  }

  else
  {
    v187 = sub_2AA0F4();
    (*(v44 + 8))(v182, v43);
  }

  sub_2CD830();
  v188 = sub_2CD4B0();
  v189 = *(v188 - 8);
  if ((*(v189 + 48))(v123, 1, v188) == 1)
  {
    sub_30B8(v123, &qword_34D6C8, &unk_2D15C0);
    v705 = 0;
  }

  else
  {
    v705 = sub_2AA118();
    (*(v189 + 8))(v123, v188);
  }

  v190 = sub_2CD880();
  v191 = sub_18732C(v190);

  v192 = sub_2CD850();
  v193 = sub_2CD710();
  v794 = v192;
  sub_80D34(v193);
  v194 = sub_18732C(v794);

  if (v194[2] != 1)
  {
    v777 = 0;
    v778 = 0;
    v197 = v750;
    goto LABEL_20;
  }

  v195 = sub_2CBD90();
  v197 = v750;
  if (v778)
  {
    if (v195 == v777 && v196 == v778)
    {
    }

    else
    {
      v198 = sub_2CEEA0();

      if ((v198 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if (v194[2])
    {
      v199 = v194[5];
      v777 = v194[4];
      v778 = v199;

      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_19:
  v777 = 0;
  v778 = 0;
LABEL_20:
  v200 = sub_6F404(v769);
  sub_2CD900();
  v201 = *(v197 + 48);
  v202 = v749;
  v677 = v197 + 48;
  v676 = v201;
  v203 = v201(v119, 1, v749);
  v747 = v191;
  v746 = v194;
  v745 = v200;
  if (v203 == 1)
  {
    sub_30B8(v119, &qword_34D6C0, &qword_2D15B8);
    v717 = 0;
  }

  else
  {
    v204 = v772;
    (*(v197 + 16))(v772, v119, v202);
    v205 = (*(v197 + 88))(v204, v202);
    if (v205 == enum case for CommonAudio.Reference.definite(_:))
    {
      v206 = 1;
    }

    else
    {
      if (v205 != enum case for CommonAudio.Reference.indefinite(_:))
      {
        (*(v197 + 8))(v772, v202);
      }

      v206 = 0;
    }

    v717 = v206;
    (*(v197 + 8))(v119, v202);
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v207 = v784;
  v208 = *(v784 + 72);
  v209 = (*(v784 + 80) + 32) & ~*(v784 + 80);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_2D0E40;
  v211 = v210 + v209;
  v212 = (v207 + 104);
  v213 = *(v207 + 104);
  v739 = enum case for CommonAudio.Attribute.affinity(_:);
  v214 = v776;
  v213(v211);
  v772 = v212;
  v771 = v213;
  (v213)(v211 + v208, enum case for CommonAudio.Attribute.recommended(_:), v214);
  sub_186A50(v210);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v210) = sub_2CD950();

  v215 = v781;
  if (v210)
  {
    v740 = 8;
    v216 = v789;
    goto LABEL_51;
  }

  v673 = v187;
  sub_2CD840();
  v217 = v215;
  v218 = v766;
  v219 = v779;
  v220 = v759;
  v672 = *(v766 + 104);
  v670[1] = v766 + 104;
  v672(v779, enum case for CommonAudio.Verb.start(_:), v759);
  v671 = *(v218 + 56);
  v670[0] = v218 + 56;
  v671(v219, 0, 1, v220);
  v221 = *(v758 + 48);
  v222 = v770;
  sub_F3F4(v217, v770, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v219, v222 + v221, &qword_34D6B8, &qword_2D15B0);
  v223 = *(v218 + 48);
  v224 = v223(v222, 1, v220);
  v216 = v789;
  if (v224 == 1)
  {
    sub_30B8(v219, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v217, &qword_34D6B8, &qword_2D15B0);
    if (v223(v222 + v221, 1, v220) == 1)
    {
      sub_30B8(v222, &qword_34D6B8, &qword_2D15B0);
      v740 = 8;
LABEL_44:
      v187 = v673;
      goto LABEL_51;
    }

    goto LABEL_35;
  }

  v225 = v704;
  sub_F3F4(v222, v704, &qword_34D6B8, &qword_2D15B0);
  if (v223(v222 + v221, 1, v220) == 1)
  {
    sub_30B8(v779, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v781, &qword_34D6B8, &qword_2D15B0);
    (*(v766 + 8))(v225, v220);
LABEL_35:
    sub_30B8(v222, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_36;
  }

  v233 = v766;
  v234 = v222 + v221;
  v235 = v712;
  (*(v766 + 32))(v712, v234, v220);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v236 = sub_2CE250();
  v237 = *(v233 + 8);
  v237(v235, v220);
  sub_30B8(v779, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v781, &qword_34D6B8, &qword_2D15B0);
  v237(v225, v220);
  sub_30B8(v222, &qword_34D6B8, &qword_2D15B0);
  if (v236)
  {
    v740 = 8;
    v216 = v789;
    goto LABEL_44;
  }

LABEL_36:
  v226 = v767;
  sub_2CD840();
  v227 = v736;
  v228 = v759;
  v672(v736, enum case for CommonAudio.Verb.play(_:), v759);
  v671(v227, 0, 1, v228);
  v229 = *(v758 + 48);
  v230 = v740;
  sub_F3F4(v226, v740, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v227, v230 + v229, &qword_34D6B8, &qword_2D15B0);
  if (v223(v230, 1, v228) == 1)
  {
    sub_30B8(v227, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v226, &qword_34D6B8, &qword_2D15B0);
    v231 = v223(v230 + v229, 1, v228);
    v187 = v673;
    if (v231 == 1)
    {
      sub_30B8(v230, &qword_34D6B8, &qword_2D15B0);
      v216 = v789;
      goto LABEL_46;
    }

LABEL_41:
    sub_30B8(v230, &qword_34D6B0, &unk_2D4FC0);
    v216 = v789;
    goto LABEL_48;
  }

  v232 = v699;
  sub_F3F4(v230, v699, &qword_34D6B8, &qword_2D15B0);
  if (v223(v230 + v229, 1, v228) == 1)
  {
    sub_30B8(v227, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v226, &qword_34D6B8, &qword_2D15B0);
    (*(v766 + 8))(v232, v228);
    v187 = v673;
    goto LABEL_41;
  }

  v238 = v766;
  v239 = v712;
  (*(v766 + 32))(v712, v230 + v229, v228);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v240 = sub_2CE250();
  v241 = v227;
  v242 = *(v238 + 8);
  v242(v239, v228);
  sub_30B8(v241, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v767, &qword_34D6B8, &qword_2D15B0);
  v242(v232, v228);
  sub_30B8(v230, &qword_34D6B8, &qword_2D15B0);
  v216 = v789;
  v187 = v673;
  if ((v240 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_46:
  v243 = sub_2CD8E0();
  v244 = v694;
  v245 = v693;
  v246 = v695;
  (*(v694 + 104))(v693, enum case for CommonAudio.Modifier.moreOf(_:), v695);
  v247 = sub_17F540(v245, v243);

  (*(v244 + 8))(v245, v246);
  if ((v247 & 1) == 0)
  {
LABEL_48:
    v249 = v773;
    v250 = v776;
    (v771)(v773, enum case for CommonAudio.Attribute.discovery(_:), v776);
    v251 = sub_2CD910();
    (*(v784 + 8))(v249, v250);
    v248 = v705;
    if (v251)
    {
      v248 = 1;
    }

    goto LABEL_50;
  }

  v248 = 8;
LABEL_50:
  v740 = v248;
LABEL_51:
  v252 = v773;
  v253 = v776;
  (v771)(v773, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v776);
  v254 = sub_2CD910();
  v255 = *(v784 + 8);
  v784 += 8;
  v736 = v255;
  (v255)(v252, v253);
  if (v254)
  {
    v256 = 0;
  }

  else
  {
    v256 = v187;
  }

  v767 = v256;
  v257 = sub_2CD740();
  if (!v257[2])
  {
    goto LABEL_58;
  }

  v259 = v257[4];
  v258 = v257[5];
  v261 = v257[6];
  v260 = v257[7];

  v262 = sub_BF40C(v259, v258);
  if (!v263)
  {

LABEL_58:

    v265 = v790;
    v267 = sub_2CD8B0();
    v266 = v782;
    if (v267[2])
    {
      v264 = v267[5];
      v770 = v267[4];
    }

    else
    {

      v770 = 0;
      v264 = 0;
    }

    goto LABEL_61;
  }

  v264 = v263;
  v770 = v262;

  v775 = v261;
  v787 = v260;
  v265 = v790;
  v266 = v782;
LABEL_61:
  v268 = sub_2CD730();
  if (v268[2])
  {
    v269 = v268[5];
    v777 = v268[4];

    v270 = 1;
    v778 = v269;
  }

  else
  {

    v270 = 0;
  }

  v271 = v786;
  v779 = v270;
  v789 = v264;
  if (!v264)
  {
    v275 = v755;
    goto LABEL_75;
  }

  v272 = v754;
  sub_2CD8D0();
  v273 = v791;
  (*(v271 + 104))(v266, enum case for CommonAudio.MediaType.news(_:), v791);
  (*(v271 + 56))(v266, 0, 1, v273);
  v274 = *(v788 + 48);
  sub_F3F4(v272, v216, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v266, v216 + v274, &qword_34D6D0, qword_2D34A0);
  if (v265(v216, 1, v273) != 1)
  {
    v276 = v709;
    sub_F3F4(v216, v709, &qword_34D6D0, qword_2D34A0);
    if (v265(v216 + v274, 1, v791) != 1)
    {
      v277 = v786;
      v278 = v216 + v274;
      v279 = v216;
      v280 = v760;
      v281 = v276;
      v282 = v791;
      (*(v786 + 32))(v760, v278, v791);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v283 = sub_2CE250();
      v284 = *(v277 + 8);
      v284(v280, v282);
      sub_30B8(v782, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v754, &qword_34D6D0, qword_2D34A0);
      v284(v281, v282);
      v264 = v789;
      sub_30B8(v279, &qword_34D6D0, qword_2D34A0);
      v275 = v755;
      if (v283)
      {
        goto LABEL_74;
      }

LABEL_72:

      goto LABEL_75;
    }

    sub_30B8(v782, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v754, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v276, v791);
LABEL_71:
    sub_30B8(v216, &qword_34D6A8, &unk_2D15A0);
    v275 = v755;
    goto LABEL_72;
  }

  sub_30B8(v266, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v272, &qword_34D6D0, qword_2D34A0);
  if (v265(v216 + v274, 1, v791) != 1)
  {
    goto LABEL_71;
  }

  sub_30B8(v216, &qword_34D6D0, qword_2D34A0);
  v275 = v755;
LABEL_74:

  v777 = v770;
  v778 = v264;
LABEL_75:
  v285 = sub_2CD760();
  v286 = v783;
  if (v285[2])
  {
    v287 = v285[4];
    v288 = v285[5];

    v754 = sub_BF40C(v287, v288);
    v290 = v289;

    v291 = v780;
    if (v290)
    {
      goto LABEL_85;
    }
  }

  else
  {

    v754 = 0;
    v291 = v780;
  }

  v292 = sub_2CD790();
  if (v292[2])
  {
    v294 = v292[4];
    v293 = v292[5];
    v296 = v292[6];
    v295 = v292[7];

    v297 = sub_BF40C(v294, v293);
    v290 = v298;
    if (v298)
    {
      v299 = v297;

      v775 = v296;
      v787 = v295;
      v754 = v299;
    }

    else
    {
    }

    v286 = v783;
  }

  else
  {

    v290 = 0;
  }

LABEL_85:
  sub_2CD8D0();
  v300 = v786;
  v301 = v791;
  v782 = *(v786 + 104);
  v783 = (v786 + 104);
  (v782)(v286, enum case for CommonAudio.MediaType.playlist(_:), v791);
  v780 = *(v300 + 56);
  v781 = v300 + 56;
  (v780)(v286, 0, 1, v301);
  v302 = *(v788 + 48);
  sub_F3F4(v275, v291, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v286, v291 + v302, &qword_34D6D0, qword_2D34A0);
  v303 = v790;
  if ((v790)(v291, 1, v301) == 1)
  {
    sub_30B8(v286, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v275, &qword_34D6D0, qword_2D34A0);
    v304 = v303(v291 + v302, 1, v791);
    v305 = v789;
    v306 = v757;
    if (v304 == 1)
    {
      v307 = v765;
      v308 = v754;
LABEL_94:
      sub_30B8(v291, &qword_34D6D0, qword_2D34A0);
      goto LABEL_100;
    }

    goto LABEL_90;
  }

  v309 = v723;
  sub_F3F4(v291, v723, &qword_34D6D0, qword_2D34A0);
  if (v303(v291 + v302, 1, v791) == 1)
  {
    sub_30B8(v286, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v275, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v309, v791);
    v306 = v757;
LABEL_90:
    sub_30B8(v291, &qword_34D6A8, &unk_2D15A0);
    v308 = v754;
    goto LABEL_91;
  }

  v319 = v786;
  v320 = v760;
  v321 = v309;
  v322 = v791;
  (*(v786 + 32))(v760, v291 + v302, v791);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v323 = sub_2CE250();
  v324 = v290;
  v325 = *(v319 + 8);
  v325(v320, v322);
  sub_30B8(v286, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v755, &qword_34D6D0, qword_2D34A0);
  v325(v321, v322);
  v290 = v324;
  v305 = v789;
  sub_30B8(v291, &qword_34D6D0, qword_2D34A0);
  v307 = v765;
  v306 = v757;
  v308 = v754;
  if ((v323 & 1) == 0)
  {
LABEL_91:
    v310 = v732;
    sub_2CD8D0();
    v311 = v306;
    v312 = v791;
    (v782)(v306, enum case for CommonAudio.MediaType.musicPlaylist(_:), v791);
    (v780)(v306, 0, 1, v312);
    v313 = *(v788 + 48);
    v314 = v730;
    sub_F3F4(v310, v730, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v306, v314 + v313, &qword_34D6D0, qword_2D34A0);
    v315 = v790;
    if ((v790)(v314, 1, v312) == 1)
    {
      sub_30B8(v311, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v310, &qword_34D6D0, qword_2D34A0);
      if (v315(v314 + v313, 1, v791) == 1)
      {
        v291 = v314;
        v307 = v765;
        v305 = v789;
        goto LABEL_94;
      }
    }

    else
    {
      v316 = v710;
      sub_F3F4(v314, v710, &qword_34D6D0, qword_2D34A0);
      if (v315(v314 + v313, 1, v791) != 1)
      {
        v326 = v786;
        v327 = v314 + v313;
        v328 = v760;
        v329 = v314;
        v330 = v316;
        v331 = v791;
        (*(v786 + 32))(v760, v327, v791);
        sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
        v332 = sub_2CE250();
        v333 = v290;
        v334 = *(v326 + 8);
        v334(v328, v331);
        sub_30B8(v757, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v732, &qword_34D6D0, qword_2D34A0);
        v334(v330, v331);
        v290 = v333;
        sub_30B8(v329, &qword_34D6D0, qword_2D34A0);
        v335 = (v333 != 0) | v332 ^ 1;
        if (!((v333 != 0) | (v332 ^ 1) & 1))
        {
          v308 = 0;
        }

        v305 = v789;
        if (v789)
        {
          v307 = v765;
          v317 = v752;
          v318 = v778;
          if (v335)
          {
            goto LABEL_111;
          }

          goto LABEL_109;
        }

LABEL_98:
        v307 = v765;
        v317 = v752;
        v318 = v778;
        goto LABEL_111;
      }

      sub_30B8(v757, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v310, &qword_34D6D0, qword_2D34A0);
      (*(v786 + 8))(v316, v791);
    }

    sub_30B8(v314, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_98;
  }

LABEL_100:
  if (!v290)
  {
    v308 = 0;
  }

  v318 = v778;
  if (!v305)
  {
    v317 = v752;
    goto LABEL_111;
  }

  v317 = v752;
  if (!v290)
  {
LABEL_109:
    v308 = sub_BF40C(v770, v305);
    v290 = v336;
  }

LABEL_111:
  v337 = sub_2CD930();
  v338 = v337;
  v757 = v290;
  if (!v290)
  {
LABEL_114:
    v339 = v751;
    goto LABEL_125;
  }

  if (v337)
  {

    v779 = 5;
    v777 = v308;
    v318 = v290;
    goto LABEL_114;
  }

  v778 = v318;

  sub_2CD840();
  v340 = v766;
  v341 = v718;
  v342 = v759;
  (*(v766 + 104))(v718, enum case for CommonAudio.Verb.update(_:), v759);
  (*(v340 + 56))(v341, 0, 1, v342);
  v343 = *(v758 + 48);
  v344 = v317;
  v345 = v317;
  v346 = v728;
  sub_F3F4(v344, v728, &qword_34D6B8, &qword_2D15B0);
  v347 = v346;
  sub_F3F4(v341, v346 + v343, &qword_34D6B8, &qword_2D15B0);
  v348 = *(v340 + 48);
  if (v348(v347, 1, v342) == 1)
  {
    sub_30B8(v341, &qword_34D6B8, &qword_2D15B0);
    v349 = v728;
    sub_30B8(v345, &qword_34D6B8, &qword_2D15B0);
    v350 = v348(v349 + v343, 1, v342);
    v339 = v751;
    if (v350 == 1)
    {
      sub_30B8(v349, &qword_34D6B8, &qword_2D15B0);
      v318 = v778;
LABEL_123:

      goto LABEL_124;
    }

    goto LABEL_120;
  }

  v351 = v700;
  sub_F3F4(v347, v700, &qword_34D6B8, &qword_2D15B0);
  if (v348(v347 + v343, 1, v342) == 1)
  {
    sub_30B8(v718, &qword_34D6B8, &qword_2D15B0);
    v349 = v728;
    sub_30B8(v752, &qword_34D6B8, &qword_2D15B0);
    (*(v766 + 8))(v351, v342);
    v339 = v751;
LABEL_120:
    sub_30B8(v349, &qword_34D6B0, &unk_2D4FC0);
    v352 = v757;
    goto LABEL_121;
  }

  v353 = v766;
  v354 = v712;
  (*(v766 + 32))(v712, v347 + v343, v342);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v355 = sub_2CE250();
  v356 = *(v353 + 8);
  v356(v354, v342);
  sub_30B8(v718, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v752, &qword_34D6B8, &qword_2D15B0);
  v356(v351, v342);
  sub_30B8(v347, &qword_34D6B8, &qword_2D15B0);
  v352 = v757;
  v339 = v751;
  v318 = v778;
  if (v355)
  {
    goto LABEL_123;
  }

LABEL_121:

  v779 = 5;
  v777 = v308;
  v318 = v352;
LABEL_124:
  v307 = v765;
LABEL_125:
  v357 = sub_2CD800();
  if (v357[2])
  {
    v358 = v357[4];
    v359 = v357[5];

    v360 = sub_BF40C(v358, v359);
    v362 = v361;

    if (!v362)
    {
      goto LABEL_137;
    }

    if (!v338)
    {
      v778 = v360;
      sub_2CD840();
      v363 = v339;
      v364 = v766;
      v365 = v759;
      (*(v766 + 104))(v307, enum case for CommonAudio.Verb.update(_:), v759);
      (*(v364 + 56))(v307, 0, 1, v365);
      v366 = *(v758 + 48);
      v367 = v713;
      sub_F3F4(v363, v713, &qword_34D6B8, &qword_2D15B0);
      v368 = v367;
      sub_F3F4(v307, v367 + v366, &qword_34D6B8, &qword_2D15B0);
      v369 = *(v364 + 48);
      if (v369(v368, 1, v365) == 1)
      {
        sub_30B8(v307, &qword_34D6B8, &qword_2D15B0);
        v370 = v713;
        sub_30B8(v363, &qword_34D6B8, &qword_2D15B0);
        if (v369(v370 + v366, 1, v365) == 1)
        {
          sub_30B8(v370, &qword_34D6B8, &qword_2D15B0);
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v371 = v690;
      sub_F3F4(v368, v690, &qword_34D6B8, &qword_2D15B0);
      if (v369(v368 + v366, 1, v365) == 1)
      {
        sub_30B8(v765, &qword_34D6B8, &qword_2D15B0);
        v370 = v713;
        sub_30B8(v751, &qword_34D6B8, &qword_2D15B0);
        (*(v766 + 8))(v371, v365);
LABEL_133:
        sub_30B8(v370, &qword_34D6B0, &unk_2D4FC0);
        v360 = v778;
        goto LABEL_134;
      }

      v373 = v766;
      v374 = v712;
      (*(v766 + 32))(v712, v368 + v366, v365);
      sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      LODWORD(v755) = sub_2CE250();
      v375 = *(v373 + 8);
      v375(v374, v365);
      sub_30B8(v765, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v751, &qword_34D6B8, &qword_2D15B0);
      v375(v371, v365);
      sub_30B8(v368, &qword_34D6B8, &qword_2D15B0);
      v360 = v778;
      if (v755)
      {
        goto LABEL_136;
      }
    }

LABEL_134:

    sub_2CD8F0();
    v777 = v360;
    v372 = v790;
LABEL_139:
    v376 = v762;
    goto LABEL_160;
  }

LABEL_136:

LABEL_137:
  sub_2CD8F0();
  v372 = v790;
  if (v318)
  {
    v362 = v318;
    goto LABEL_139;
  }

  v377 = *(v727 + 48);
  v378 = v706;
  if (v377(v774, 1, v706) == 1)
  {
    sub_2CD8C0();
    if (v379)
    {
      v380 = *(sub_2CD7A0() + 16);

      if (!v380)
      {
        v622 = v687;
        sub_2CD8D0();
        v372 = v790;
        if ((v790)(v622, 1, v791) == 1)
        {
          sub_30B8(v622, &qword_34D6D0, qword_2D34A0);
LABEL_342:
          v362 = 0;
          goto LABEL_139;
        }

        v623 = sub_2CD530();
        v624 = v786 + 8;
        v625 = *(v786 + 8);
        v625(v622, v791);
        if (!v623)
        {
          goto LABEL_342;
        }

        v778 = v624;
        v765 = v625;
        if (v789 && (v626 = sub_BF40C(v770, v789), v627))
        {
          v362 = v627;
          v777 = v626;
          v376 = v762;
          v628 = v685;
          v629 = v684;
        }

        else
        {
          v630 = sub_2CD890();
          v631 = sub_7EF68(v630);
          v362 = v632;

          v628 = v685;
          v629 = v684;
          if (v362)
          {
            v777 = v631;
            v376 = v762;
          }

          else
          {
            v633 = sub_2CD860();
            v634 = sub_7EF68(v633);
            v362 = v635;

            v376 = v762;
            if (!v362)
            {
              v636 = sub_2CD730();
              v634 = sub_7EF68(v636);
              v362 = v637;

              if (!v362)
              {
                goto LABEL_160;
              }
            }

            v777 = v634;
          }
        }

        sub_2CD840();
        v638 = v766;
        v639 = v759;
        (*(v766 + 104))(v629, enum case for CommonAudio.Verb.start(_:), v759);
        (*(v638 + 56))(v629, 0, 1, v639);
        v640 = *(v758 + 48);
        v641 = v628;
        v642 = v628;
        v643 = v686;
        sub_F3F4(v642, v686, &qword_34D6B8, &qword_2D15B0);
        v644 = v643;
        sub_F3F4(v629, v643 + v640, &qword_34D6B8, &qword_2D15B0);
        v645 = *(v638 + 48);
        if (v645(v644, 1, v639) == 1)
        {
          sub_30B8(v629, &qword_34D6B8, &qword_2D15B0);
          v646 = v686;
          sub_30B8(v641, &qword_34D6B8, &qword_2D15B0);
          v647 = v645(v646 + v640, 1, v639);
          v372 = v790;
          if (v647 == 1)
          {
            sub_30B8(v646, &qword_34D6B8, &qword_2D15B0);
            goto LABEL_356;
          }
        }

        else
        {
          v648 = v680;
          sub_F3F4(v644, v680, &qword_34D6B8, &qword_2D15B0);
          if (v645(v644 + v640, 1, v639) != 1)
          {
            v650 = v766;
            v651 = v712;
            (*(v766 + 32))(v712, v644 + v640, v639);
            sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
            v652 = v644;
            v653 = sub_2CE250();
            v654 = *(v650 + 8);
            v654(v651, v639);
            sub_30B8(v684, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v685, &qword_34D6B8, &qword_2D15B0);
            v654(v648, v639);
            sub_30B8(v652, &qword_34D6B8, &qword_2D15B0);
            v372 = v790;
            if (v653)
            {
LABEL_356:
              v655 = v682;
              sub_2CD900();
              v656 = v750;
              v657 = v681;
              v658 = v749;
              (*(v750 + 104))(v681, enum case for CommonAudio.Reference.definite(_:), v749);
              (*(v656 + 56))(v657, 0, 1, v658);
              v659 = *(v678 + 48);
              v660 = v679;
              sub_F3F4(v655, v679, &qword_34D6C0, &qword_2D15B8);
              v779 = v659;
              sub_F3F4(v657, v660 + v659, &qword_34D6C0, &qword_2D15B8);
              v661 = v676;
              if (v676(v660, 1, v658) == 1)
              {
                sub_30B8(v657, &qword_34D6C0, &qword_2D15B8);
                sub_30B8(v655, &qword_34D6C0, &qword_2D15B8);
                if (v661(v660 + v779, 1, v658) == 1)
                {
                  sub_30B8(v660, &qword_34D6C0, &qword_2D15B8);
                  v649 = v683;
                  v372 = v790;
LABEL_363:

                  v777 = 0;
                  v362 = 0xE000000000000000;
LABEL_364:
                  sub_2CD8D0();
                  if (v372(v649, 1, v791) == 1)
                  {
                    sub_30B8(v649, &qword_34D6D0, qword_2D34A0);
                    v779 = 0;
                  }

                  else
                  {
                    v779 = sub_2AA4C4();
                    v765(v649, v791);
                  }

                  goto LABEL_160;
                }
              }

              else
              {
                v662 = v675;
                sub_F3F4(v660, v675, &qword_34D6C0, &qword_2D15B8);
                v663 = v779;
                if (v661(v660 + v779, 1, v658) != 1)
                {
                  v664 = v750;
                  v665 = v660 + v663;
                  v666 = v674;
                  (*(v750 + 32))(v674, v665, v658);
                  sub_6FB80(&qword_34D700, &type metadata accessor for CommonAudio.Reference);
                  v667 = sub_2CE250();
                  v668 = v660;
                  v669 = *(v664 + 8);
                  v669(v666, v658);
                  sub_30B8(v681, &qword_34D6C0, &qword_2D15B8);
                  sub_30B8(v682, &qword_34D6C0, &qword_2D15B8);
                  v669(v662, v658);
                  sub_30B8(v668, &qword_34D6C0, &qword_2D15B8);
                  v649 = v683;
                  v372 = v790;
                  if ((v667 & 1) == 0)
                  {
                    goto LABEL_364;
                  }

                  goto LABEL_363;
                }

                sub_30B8(v681, &qword_34D6C0, &qword_2D15B8);
                sub_30B8(v682, &qword_34D6C0, &qword_2D15B8);
                (*(v750 + 8))(v662, v658);
              }

              sub_30B8(v660, &qword_34D688, &qword_2D1588);
              v649 = v683;
              v372 = v790;
              goto LABEL_364;
            }

LABEL_354:
            v649 = v683;
            goto LABEL_364;
          }

          sub_30B8(v684, &qword_34D6B8, &qword_2D15B0);
          v646 = v686;
          sub_30B8(v685, &qword_34D6B8, &qword_2D15B0);
          (*(v766 + 8))(v648, v639);
          v372 = v790;
        }

        sub_30B8(v646, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_354;
      }
    }
  }

  v381 = v774;
  v794 = 0;
  v795 = 0xE000000000000000;
  v382 = sub_2CD7A0();
  if (v382[2])
  {
    v383 = v382[4];
    v384 = v382[5];

    v797._countAndFlagsBits = v383;
    v797._object = v384;
    sub_2CE350(v797);
  }

  v385 = v702;
  v386 = sub_2CD8C0();
  if (v387)
  {
    goto LABEL_156;
  }

  v388 = v386;
  v389 = v727;
  (*(v727 + 104))(v385, enum case for CommonAudio.RadioType.am(_:), v378);
  (*(v389 + 56))(v385, 0, 1, v378);
  v390 = v378;
  v391 = *(v691 + 48);
  v392 = v698;
  sub_F3F4(v381, v698, &qword_34D6A0, &unk_2D3490);
  v393 = v392;
  sub_F3F4(v385, v392 + v391, &qword_34D6A0, &unk_2D3490);
  if (v377(v392, 1, v390) == 1)
  {
    sub_30B8(v385, &qword_34D6A0, &unk_2D3490);
    v394 = v377((v392 + v391), 1, v390);
    v378 = v390;
    if (v394 == 1)
    {
      sub_30B8(v392, &qword_34D6A0, &unk_2D3490);
LABEL_154:
      sub_20410(&qword_34CEA8, &unk_2D0EB0);
      v402 = swift_allocObject();
      *(v402 + 16) = xmmword_2D0090;
      *(v402 + 56) = &type metadata for Double;
      *(v402 + 64) = &protocol witness table for Double;
      *(v402 + 32) = v388;
      v396._countAndFlagsBits = sub_2CE280();
      goto LABEL_155;
    }

    goto LABEL_151;
  }

  v395 = v689;
  sub_F3F4(v392, v689, &qword_34D6A0, &unk_2D3490);
  if (v377((v392 + v391), 1, v390) == 1)
  {
    sub_30B8(v385, &qword_34D6A0, &unk_2D3490);
    (*(v727 + 8))(v395, v390);
    v378 = v390;
LABEL_151:
    sub_30B8(v392, &qword_34D680, &qword_2D1580);
    goto LABEL_152;
  }

  v397 = v727;
  v398 = v393 + v391;
  v399 = v395;
  v400 = v688;
  (*(v727 + 32))(v688, v398, v390);
  sub_6FB80(&qword_34D6F8, &type metadata accessor for CommonAudio.RadioType);
  LODWORD(v778) = sub_2CE250();
  v401 = *(v397 + 8);
  v401(v400, v390);
  sub_30B8(v385, &qword_34D6A0, &unk_2D3490);
  v401(v399, v390);
  v381 = v774;
  sub_30B8(v698, &qword_34D6A0, &unk_2D3490);
  v378 = v390;
  if (v778)
  {
    goto LABEL_154;
  }

LABEL_152:
  v396._countAndFlagsBits = sub_2CE510();
LABEL_155:
  sub_BF464(v396);

LABEL_156:
  v403 = v703;
  sub_F3F4(v381, v703, &qword_34D6A0, &unk_2D3490);
  if (v377(v403, 1, v378) == 1)
  {
    sub_30B8(v403, &qword_34D6A0, &unk_2D3490);
  }

  else
  {
    v404 = v727;
    v405 = v692;
    (*(v727 + 32))(v692, v403, v378);
    v798._countAndFlagsBits = sub_2CD550();
    sub_BF464(v798);

    (*(v404 + 8))(v405, v378);
  }

  v376 = v762;
  v372 = v790;
  v362 = v795;
  v777 = v794;
  v767 = 16;
LABEL_160:
  v406 = sub_2CD750();
  if (v406[2])
  {
    v407 = v406[4];
    v408 = v406[5];

    v766 = sub_BF40C(v407, v408);
    v778 = v409;
  }

  else
  {

    v766 = 0;
    v778 = 0;
  }

  v410 = v756;
  sub_2CD8D0();
  v411 = v761;
  LODWORD(v765) = enum case for CommonAudio.MediaType.podcast(_:);
  v412 = v791;
  (v782)(v761);
  (v780)(v411, 0, 1, v412);
  v413 = *(v788 + 48);
  v414 = v735;
  sub_F3F4(v376, v735, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v411, v414 + v413, &qword_34D6D0, qword_2D34A0);
  if (v372(v414, 1, v412) == 1)
  {
    sub_30B8(v411, &qword_34D6D0, qword_2D34A0);
    v372 = v790;
    sub_30B8(v376, &qword_34D6D0, qword_2D34A0);
    v415 = v372(v414 + v413, 1, v791);
    v416 = v753;
    if (v415 == 1)
    {
      goto LABEL_171;
    }

    goto LABEL_168;
  }

  v417 = v724;
  sub_F3F4(v414, v724, &qword_34D6D0, qword_2D34A0);
  if (v372(v414 + v413, 1, v791) == 1)
  {
    sub_30B8(v761, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v762, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v417, v791);
    v416 = v753;
LABEL_168:
    sub_30B8(v414, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_169;
  }

  v423 = v791;
  v424 = v786;
  v425 = v760;
  (*(v786 + 32))(v760, v414 + v413, v791);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v426 = sub_2CE250();
  v427 = *(v424 + 8);
  v427(v425, v423);
  sub_30B8(v761, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v762, &qword_34D6D0, qword_2D34A0);
  v427(v417, v423);
  v372 = v790;
  sub_30B8(v414, &qword_34D6D0, qword_2D34A0);
  v416 = v753;
  if (v426)
  {
    goto LABEL_180;
  }

LABEL_169:
  sub_2CD8D0();
  v418 = v791;
  v419 = v734;
  (v782)(v734, enum case for CommonAudio.MediaType.episode(_:), v791);
  (v780)(v419, 0, 1, v418);
  v420 = *(v788 + 48);
  v414 = v731;
  sub_F3F4(v410, v731, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v419, v414 + v420, &qword_34D6D0, qword_2D34A0);
  if (v372(v414, 1, v418) != 1)
  {
    v421 = v711;
    sub_F3F4(v414, v711, &qword_34D6D0, qword_2D34A0);
    if (v372(v414 + v420, 1, v418) != 1)
    {
      v428 = v791;
      v429 = v786;
      v430 = v760;
      (*(v786 + 32))(v760, v414 + v420, v791);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v431 = sub_2CE250();
      v432 = v362;
      v433 = *(v429 + 8);
      v433(v430, v428);
      sub_30B8(v734, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v756, &qword_34D6D0, qword_2D34A0);
      v433(v421, v428);
      v362 = v432;
      v416 = v753;
      sub_30B8(v414, &qword_34D6D0, qword_2D34A0);
      if (v431)
      {
        goto LABEL_180;
      }

LABEL_175:
      v422 = v778;
      if (!v778)
      {
        goto LABEL_183;
      }

      goto LABEL_182;
    }

    sub_30B8(v734, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v756, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v421, v791);
LABEL_174:
    sub_30B8(v414, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_175;
  }

  sub_30B8(v419, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v410, &qword_34D6D0, qword_2D34A0);
  if (v372(v414 + v420, 1, v418) != 1)
  {
    goto LABEL_174;
  }

LABEL_171:
  sub_30B8(v414, &qword_34D6D0, qword_2D34A0);
LABEL_180:
  v422 = v778;
  if (v778 || (v434 = , v766 = v770, (v422 = v434) != 0))
  {
LABEL_182:

    v779 = 6;
    v777 = v766;
    v362 = v422;
  }

LABEL_183:
  v435 = sub_2CD7D0();
  v436 = sub_7EF68(v435);
  v438 = v437;

  if (!v438 || (v439 = sub_BF40C(v436, v438), v441 = v440, , (v778 = v441) == 0))
  {
    v778 = v362;
    goto LABEL_204;
  }

  v777 = v439;

  v442 = v729;
  sub_2CD8D0();
  v443 = v791;
  (v782)(v416, v765, v791);
  (v780)(v416, 0, 1, v443);
  v444 = *(v788 + 48);
  v445 = v715;
  sub_F3F4(v442, v715, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v416, v445 + v444, &qword_34D6D0, qword_2D34A0);
  v446 = v790;
  if ((v790)(v445, 1, v443) == 1)
  {
    sub_30B8(v416, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v442, &qword_34D6D0, qword_2D34A0);
    v447 = v446(v445 + v444, 1, v791);
    v448 = v716;
    if (v447 == 1)
    {
      sub_30B8(v445, &qword_34D6D0, qword_2D34A0);
LABEL_199:
      v779 = 6;
      goto LABEL_204;
    }

    goto LABEL_191;
  }

  v449 = v701;
  sub_F3F4(v445, v701, &qword_34D6D0, qword_2D34A0);
  if (v446(v445 + v444, 1, v791) == 1)
  {
    sub_30B8(v416, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v729, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v449, v791);
    v448 = v716;
LABEL_191:
    sub_30B8(v445, &qword_34D6A8, &unk_2D15A0);
    v450 = v708;
    goto LABEL_192;
  }

  v457 = v445;
  v458 = v786;
  v459 = v457 + v444;
  v460 = v760;
  v461 = v791;
  (*(v786 + 32))(v760, v459, v791);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v462 = sub_2CE250();
  v463 = *(v458 + 8);
  v463(v460, v461);
  sub_30B8(v416, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v729, &qword_34D6D0, qword_2D34A0);
  v463(v449, v461);
  v464 = v457;
  v450 = v708;
  sub_30B8(v464, &qword_34D6D0, qword_2D34A0);
  v448 = v716;
  if (v462)
  {
    goto LABEL_199;
  }

LABEL_192:
  v451 = v714;
  sub_2CD8D0();
  v452 = v791;
  (v782)(v450, enum case for CommonAudio.MediaType.episode(_:), v791);
  (v780)(v450, 0, 1, v452);
  v453 = *(v788 + 48);
  sub_F3F4(v451, v448, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v450, v448 + v453, &qword_34D6D0, qword_2D34A0);
  v454 = v450;
  v455 = v790;
  if ((v790)(v448, 1, v452) == 1)
  {
    sub_30B8(v454, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v451, &qword_34D6D0, qword_2D34A0);
    if (v455(v448 + v453, 1, v791) == 1)
    {
      sub_30B8(v448, &qword_34D6D0, qword_2D34A0);
      goto LABEL_199;
    }

LABEL_197:
    sub_30B8(v448, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_204;
  }

  v456 = v696;
  sub_F3F4(v448, v696, &qword_34D6D0, qword_2D34A0);
  if (v455(v448 + v453, 1, v791) == 1)
  {
    sub_30B8(v454, &qword_34D6D0, qword_2D34A0);
    sub_30B8(v714, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v456, v791);
    goto LABEL_197;
  }

  v465 = v786;
  v466 = v448 + v453;
  v467 = v760;
  v468 = v791;
  (*(v786 + 32))(v760, v466, v791);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  LODWORD(v785) = sub_2CE250();
  v469 = *(v465 + 8);
  v469(v467, v468);
  sub_30B8(v454, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v714, &qword_34D6D0, qword_2D34A0);
  v469(v456, v468);
  sub_30B8(v448, &qword_34D6D0, qword_2D34A0);
  v470 = v779;
  if (v785)
  {
    v470 = 6;
  }

  v779 = v470;
LABEL_204:
  v471 = v738;
  v472 = v737;
  v473 = sub_2CD7C0();
  v474 = sub_7EFAC(v473);
  v476 = v475;
  v765 = v477;
  v479 = v478;

  v762 = v474;
  if (v476)
  {

    v766 = sub_BF40C(v474, v476);
    v785 = v480;
  }

  else
  {
    v766 = 0;
    v785 = 0;
  }

  sub_2CD8D0();
  v481 = v791;
  (v782)(v472, enum case for CommonAudio.MediaType.audioBook(_:), v791);
  (v780)(v472, 0, 1, v481);
  v482 = *(v788 + 48);
  v483 = v768;
  sub_F3F4(v471, v768, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v472, v483 + v482, &qword_34D6D0, qword_2D34A0);
  v484 = v790;
  if ((v790)(v483, 1, v481) == 1)
  {
    sub_30B8(v472, &qword_34D6D0, qword_2D34A0);
    v485 = v768;
    sub_30B8(v471, &qword_34D6D0, qword_2D34A0);
    if (v484(v485 + v482, 1, v791) == 1)
    {
      sub_30B8(v485, &qword_34D6D0, qword_2D34A0);
      v486 = v787;
      v487 = v742;
      v488 = v741;
      v489 = v785;
      goto LABEL_217;
    }

    goto LABEL_212;
  }

  v490 = v725;
  sub_F3F4(v483, v725, &qword_34D6D0, qword_2D34A0);
  if (v484(v483 + v482, 1, v791) == 1)
  {
    sub_30B8(v472, &qword_34D6D0, qword_2D34A0);
    v485 = v768;
    sub_30B8(v471, &qword_34D6D0, qword_2D34A0);
    (*(v786 + 8))(v490, v791);
LABEL_212:
    sub_30B8(v485, &qword_34D6A8, &unk_2D15A0);
    v486 = v787;
    v487 = v742;
    v488 = v741;
    v489 = v785;
LABEL_213:
    if (v489)
    {
      goto LABEL_218;
    }

    sub_6FB3C(v762, v476);
LABEL_215:
    v491 = v744;
    v492 = v743;
    goto LABEL_225;
  }

  v493 = v791;
  v494 = v786;
  v495 = v760;
  (*(v786 + 32))(v760, v483 + v482, v791);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  LODWORD(v790) = sub_2CE250();
  v496 = *(v494 + 8);
  v496(v495, v493);
  sub_30B8(v472, &qword_34D6D0, qword_2D34A0);
  sub_30B8(v471, &qword_34D6D0, qword_2D34A0);
  v496(v490, v493);
  sub_30B8(v768, &qword_34D6D0, qword_2D34A0);
  v486 = v787;
  v487 = v742;
  v488 = v741;
  v489 = v785;
  if ((v790 & 1) == 0)
  {
    goto LABEL_213;
  }

LABEL_217:
  if (!v489)
  {
    sub_6FB3C(v762, v476);

    if (v498)
    {
      v489 = v498;
      v766 = v770;
      v479 = v486;
      v497 = v775;
      goto LABEL_223;
    }

    v489 = 0;
    goto LABEL_215;
  }

LABEL_218:

  if (!v476)
  {
    v479 = 0;
    v497 = 0;
LABEL_223:
    v491 = v744;
    v492 = v743;
    goto LABEL_224;
  }

  v491 = v744;
  v492 = v743;
  v497 = v765;
LABEL_224:

  v779 = 10;
  v775 = v497;
  v486 = v479;
  v777 = v766;
  v778 = v489;
LABEL_225:
  v499 = sub_2CD7B0();
  v787 = v486;
  v785 = v489;
  if (!v499)
  {
    goto LABEL_252;
  }

  if (!sub_2CD960() && !sub_2CD990())
  {

LABEL_252:
    sub_2CD820();
    v546 = v733;
    (*(v733 + 104))(v488, enum case for CommonAudio.Noun.library(_:), v491);
    (*(v546 + 56))(v488, 0, 1, v491);
    v547 = *(v726 + 48);
    sub_F3F4(v487, v492, &qword_34D698, &qword_2D1598);
    sub_F3F4(v488, v492 + v547, &qword_34D698, &qword_2D1598);
    v548 = *(v546 + 48);
    if (v548(v492, 1, v491) == 1)
    {
      sub_30B8(v488, &qword_34D698, &qword_2D1598);
      sub_30B8(v487, &qword_34D698, &qword_2D1598);
      if (v548(v492 + v547, 1, v491) == 1)
      {
        sub_30B8(v492, &qword_34D698, &qword_2D1598);
        v788 = 0;
        v790 = 0;
        *&v791 = 0;
        v539 = 2;
LABEL_260:
        v523 = v778;
        goto LABEL_261;
      }
    }

    else
    {
      v549 = v707;
      sub_F3F4(v492, v707, &qword_34D698, &qword_2D1598);
      if (v548(v492 + v547, 1, v491) != 1)
      {
        v550 = v733;
        v551 = v492 + v547;
        v552 = v697;
        (*(v733 + 32))(v697, v551, v491);
        sub_6FB80(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun);
        v553 = sub_2CE250();
        v554 = *(v550 + 8);
        v554(v552, v491);
        sub_30B8(v488, &qword_34D698, &qword_2D1598);
        sub_30B8(v487, &qword_34D698, &qword_2D1598);
        v554(v549, v491);
        sub_30B8(v492, &qword_34D698, &qword_2D1598);
        v788 = 0;
        v790 = 0;
        *&v791 = 0;
        v539 = v717;
        if (v553)
        {
          v539 = 2;
        }

        goto LABEL_260;
      }

      sub_30B8(v488, &qword_34D698, &qword_2D1598);
      sub_30B8(v487, &qword_34D698, &qword_2D1598);
      (*(v733 + 8))(v549, v491);
    }

    sub_30B8(v492, &qword_34D690, &qword_2D1590);
    v788 = 0;
    v790 = 0;
    *&v791 = 0;
    v539 = v717;
    goto LABEL_260;
  }

  v500 = v720;
  v501 = v719;
  v502 = v721;
  (*(v720 + 104))(v719, enum case for AudioUsoIntent.UsoNamespace.identifier(_:), v721);
  sub_2CD630();
  v788 = sub_2CAD90();

  (*(v500 + 8))(v501, v502);
  v783 = sub_20410(&qword_34D6F0, &unk_2D15D8);
  v503 = sub_2CD620();
  v504 = *(v503 - 8);
  v505 = *(v504 + 72);
  v506 = (*(v504 + 80) + 32) & ~*(v504 + 80);
  v507 = swift_allocObject();
  v791 = xmmword_2D0090;
  *(v507 + 16) = xmmword_2D0090;
  v508 = enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:);
  v509 = *(v504 + 104);
  v509(v507 + v506, enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:), v503);
  v790 = sub_2CADA0();

  v510 = swift_allocObject();
  *(v510 + 16) = v791;
  v509(v510 + v506, v508, v503);
  v786 = sub_2CADA0();

  v511 = swift_allocObject();
  *(v511 + 16) = v791;
  v509(v511 + v506, v508, v503);
  v512 = sub_2CADA0();

  v513 = v722;
  sub_7F014(v788, v722);

  v514 = sub_2CAB40();
  v515 = *(v514 - 8);
  if ((*(v515 + 48))(v513, 1, v514) == 1)
  {
    sub_30B8(v513, &unk_353080, &qword_2D1460);
    v516 = v787;
  }

  else
  {
    v517 = sub_2CAB20();
    v519 = v518;
    (*(v515 + 8))(v513, v514);
    v520 = sub_BF40C(v517, v519);
    v522 = v521;

    v516 = v787;
    if (v522)
    {

      v775 = v520;
      v516 = v522;
    }
  }

  v523 = v778;
  v524 = v786;
  if (v790 && (, v525 = sub_2CADC0(), v527 = v526, , v527))
  {
    v528 = sub_BF40C(v525, v527);
    v530 = v529;

    if (v530)
    {
      v531 = v528;
    }

    else
    {
      v531 = 0;
    }

    v790 = v531;
    if (!v524)
    {
      goto LABEL_246;
    }
  }

  else
  {
    v790 = 0;
    if (!v524)
    {
      goto LABEL_246;
    }
  }

  v532 = sub_2CADC0();
  v534 = v533;

  if (v534)
  {
    v535 = sub_BF40C(v532, v534);
    v537 = v536;

    *&v791 = v537;
    if (v537)
    {
      v538 = v535;
    }

    else
    {
      v538 = 0;
    }

    v788 = v538;
    v787 = v516;
    if (v512)
    {
      goto LABEL_247;
    }

LABEL_245:

    v539 = 1;
    goto LABEL_261;
  }

LABEL_246:
  v788 = 0;
  *&v791 = 0;
  v787 = v516;
  if (!v512)
  {
    goto LABEL_245;
  }

LABEL_247:

  v540 = sub_2CADC0();
  v542 = v541;

  if (v542 && (v543 = sub_BF40C(v540, v542), v545 = v544, , v545))
  {

    v539 = 1;
    v777 = v543;
    v523 = v545;
  }

  else
  {
    v539 = 1;
  }

LABEL_261:
  v555 = sub_2CD720();
  v556 = v773;
  v557 = v776;
  (v771)(v773, v739, v776);
  v558 = sub_17F758(v556, v555);

  (v736)(v556, v557);
  v559 = 2;
  if ((v558 & 1) == 0)
  {
    v559 = v539;
  }

  v781 = v559;
  v560 = sub_2CD860();
  v561 = sub_7EF68(v560);
  v563 = v562;

  if (!v563)
  {
    goto LABEL_278;
  }

  v564 = sub_BF40C(v561, v563);
  v566 = v565;

  if (v789)
  {
    v567 = v767;
    if (v566)
    {
      if (v767)
      {
        if (v767 == 2)
        {
          v568 = v789;

          v767 = 0;
          v779 = 0;
          *&v791 = v523;
          v777 = v770;
          v523 = v568;
LABEL_277:

          v788 = v564;
          *&v791 = v566;
          goto LABEL_278;
        }

        goto LABEL_271;
      }

      goto LABEL_273;
    }
  }

  else
  {
    v567 = v767;
    if (v566)
    {
      if (v767)
      {
LABEL_271:
        v569 = v567 == 2;
        if (v523)
        {
          goto LABEL_277;
        }

LABEL_274:
        if (v569)
        {
          v779 = 2;
          goto LABEL_279;
        }

        v523 = 0;
        goto LABEL_277;
      }

LABEL_273:
      v569 = 1;
      if (v523)
      {
        goto LABEL_277;
      }

      goto LABEL_274;
    }
  }

LABEL_278:
  v564 = v777;
  v566 = v523;
LABEL_279:
  v780 = v564;
  v570 = sub_2CD890();
  v571 = sub_7EF68(v570);
  v573 = v572;

  if (v573)
  {
    v574 = sub_BF40C(v571, v573);
    v576 = v575;
  }

  else
  {
    v574 = 0;
    v576 = 0;
  }

  v577 = sub_2CD7F0();
  v578 = sub_7EFAC(v577);
  v580 = v579;
  v582 = v581;
  v584 = v583;

  if (v580)
  {
    v585 = v580;
  }

  else
  {
    v586 = sub_2CD7E0();
    v578 = sub_7EFAC(v586);
    v588 = v587;
    v582 = v589;
    v584 = v590;

    if (!v588)
    {
      v783 = v584;
      v784 = v582;
      v782 = v578;
      v786 = 0;
      goto LABEL_289;
    }

    v585 = v588;
  }

  v783 = v584;
  v784 = v582;
  v782 = v578;
  v786 = v585;
  v591 = sub_BF40C(v578, v585);
  if (v592)
  {
    v593 = v591;
    v594 = v592;

    v574 = v593;
    v576 = v594;
  }

LABEL_289:
  v595 = v767;
  if (!v789)
  {
    if (v576)
    {
      if (!v767)
      {
        v600 = 0;
        v601 = 0;
        if (v566)
        {
          goto LABEL_297;
        }

        goto LABEL_300;
      }

      goto LABEL_296;
    }

LABEL_298:
    v574 = v780;
    v576 = v566;
    v597 = v764;
    v598 = v748;
LABEL_305:
    v602 = v779;
    goto LABEL_306;
  }

  if (!v576)
  {
    goto LABEL_298;
  }

  if (!v767)
  {
    v601 = 0;
    v600 = 1;
    if (v566)
    {
      goto LABEL_297;
    }

    goto LABEL_300;
  }

  if (v767 == 3)
  {
    v596 = v789;

    v790 = v574;
    v597 = v764;
    v598 = v748;
    v599 = v745;
LABEL_318:

    v789 = v596;
    goto LABEL_320;
  }

LABEL_296:
  v600 = 0;
  v601 = v767 != 3;
  if (v566)
  {
LABEL_297:
    v790 = v574;
    v576 = v566;
LABEL_302:
    v597 = v764;
    v598 = v748;
LABEL_303:
    v574 = v780;
LABEL_304:

    goto LABEL_305;
  }

LABEL_300:
  if (v601)
  {
    v790 = v574;
    v576 = 0;
    goto LABEL_302;
  }

  v597 = v764;
  v598 = v748;
  if (v600)
  {
    v790 = v574;
    v576 = 0;
    goto LABEL_303;
  }

  if (v786)
  {

    v621 = v783;

    v779 = 3;
    v775 = v784;
    v787 = v621;
    goto LABEL_304;
  }

  v602 = 3;
LABEL_306:
  v599 = v745;
  if (!v602 || v595)
  {
    if (v595 == 18)
    {
      if (v602 == 5)
      {
        v595 = 5;
      }

      else
      {
        v595 = 18;
      }
    }
  }

  else
  {
    v595 = v602;
  }

  if (!v789)
  {
    goto LABEL_316;
  }

  if (!v595)
  {
    v596 = v789;
    goto LABEL_318;
  }

  if (v576)
  {
LABEL_316:
    v770 = v574;
    goto LABEL_320;
  }

LABEL_320:
  if (sub_2CD920())
  {
    sub_2CD4F0();
  }

  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v792 = v599;

  v603 = sub_2CE630();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v604 = sub_3ED0(v597, static Logger.default);
  swift_beginAccess();
  v605 = v763;
  (*(v598 + 16))(v763, v604, v597);
  v606 = v603;
  v607 = sub_2CDFE0();
  v608 = sub_2CE690();

  if (os_log_type_enabled(v607, v608))
  {
    v609 = swift_slowAlloc();
    v610 = swift_slowAlloc();
    v793 = v610;
    *v609 = 136315138;
    v611 = v606;
    *&v791 = v606;
    v612 = v598;
    v613 = v611;
    v614 = [v611 description];
    v615 = sub_2CE270();
    v617 = v616;

    v618 = sub_3F08(v615, v617, &v793);

    *(v609 + 4) = v618;
    _os_log_impl(&dword_0, v607, v608, "ConverterHelpers#convertMediaSearch mediaSearch: %s", v609, 0xCu);
    sub_306C(v610);

    (*(v612 + 8))(v763, v764);
    v606 = v791;
  }

  else
  {

    (*(v598 + 8))(v605, v597);
  }

  v619 = v774;
  sub_6FB3C(v782, v786);
  sub_30B8(v619, &qword_34D6A0, &unk_2D3490);
  return v606;
}

id sub_691B0(uint64_t a1, _BYTE *a2, void *a3)
{
  v711 = a3;
  v704 = a2;
  v668 = sub_2CD4E0();
  v632 = *(v668 - 1);
  v4 = *(v632 + 64);
  __chkstk_darwin(v668);
  v631 = &v608[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v661 = sub_2CD560();
  v660 = *(v661 - 8);
  v6 = *(v660 + 64);
  v7 = __chkstk_darwin(v661);
  v630 = &v608[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v626 = &v608[-v9];
  v629 = sub_20410(&qword_34D680, &qword_2D1580);
  v10 = *(*(v629 - 8) + 64);
  __chkstk_darwin(v629);
  v639 = &v608[-v11];
  v618 = sub_20410(&qword_34D688, &qword_2D1588);
  v12 = *(*(v618 - 8) + 64);
  __chkstk_darwin(v618);
  v619 = &v608[-v13];
  v698 = sub_2CD4C0();
  v691 = *(v698 - 1);
  v14 = *(v691 + 64);
  __chkstk_darwin(v698);
  v645 = &v608[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v674 = sub_2CD4A0();
  v664 = *(v674 - 8);
  v16 = *(v664 + 64);
  __chkstk_darwin(v674);
  v634 = &v608[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v658 = sub_20410(&qword_34D690, &qword_2D1590);
  v18 = *(*(v658 - 8) + 64);
  __chkstk_darwin(v658);
  v659 = &v608[-v19];
  v20 = sub_20410(&qword_34D698, &qword_2D1598);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v640 = &v608[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v673 = &v608[-v24];
  v690 = sub_2CE000();
  v689 = *(v690 - 8);
  v25 = *(v689 + 64);
  __chkstk_darwin(v690);
  v688 = &v608[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_20410(&unk_353080, &qword_2D1460);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v655 = &v608[-v29];
  v654 = sub_2CD5D0();
  v653 = *(v654 - 8);
  v30 = *(v653 + 64);
  __chkstk_darwin(v654);
  v652 = &v608[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_20410(&qword_34D6A0, &unk_2D3490);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v638 = &v608[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v34);
  v627 = &v608[-v37];
  v38 = __chkstk_darwin(v36);
  v650 = &v608[-v39];
  __chkstk_darwin(v38);
  v695 = &v608[-v40];
  v41 = sub_2CD540();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v685 = &v608[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v715 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v45 = *(*(v715 - 8) + 64);
  v46 = __chkstk_darwin(v715);
  v671 = &v608[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __chkstk_darwin(v46);
  v648 = &v608[-v49];
  v50 = __chkstk_darwin(v48);
  v647 = &v608[-v51];
  v52 = __chkstk_darwin(v50);
  v663 = &v608[-v53];
  v54 = __chkstk_darwin(v52);
  v681 = &v608[-v55];
  v56 = __chkstk_darwin(v54);
  v662 = &v608[-v57];
  v58 = __chkstk_darwin(v56);
  v666 = &v608[-v59];
  __chkstk_darwin(v58);
  v707 = &v608[-v60];
  v701 = sub_2CD500();
  v712 = *(v701 - 8);
  v61 = *(v712 + 64);
  __chkstk_darwin(v701);
  v697 = &v608[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v684 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v63 = *(*(v684 - 8) + 64);
  v64 = __chkstk_darwin(v684);
  v705 = &v608[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __chkstk_darwin(v64);
  v636 = &v608[-v67];
  v68 = __chkstk_darwin(v66);
  v623 = &v608[-v69];
  v70 = __chkstk_darwin(v68);
  v643 = &v608[-v71];
  __chkstk_darwin(v70);
  v702 = &v608[-v72];
  v73 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v74 = *(*(v73 - 8) + 64);
  v75 = __chkstk_darwin(v73 - 8);
  v672 = &v608[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = __chkstk_darwin(v75);
  v700 = &v608[-v78];
  v79 = __chkstk_darwin(v77);
  v694 = &v608[-v80];
  v81 = __chkstk_darwin(v79);
  v635 = &v608[-v82];
  v83 = __chkstk_darwin(v81);
  v628 = &v608[-v84];
  v85 = __chkstk_darwin(v83);
  v682 = &v608[-v86];
  v87 = __chkstk_darwin(v85);
  v620 = &v608[-v88];
  v89 = __chkstk_darwin(v87);
  v624 = &v608[-v90];
  v91 = __chkstk_darwin(v89);
  v651 = &v608[-v92];
  __chkstk_darwin(v91);
  v706 = &v608[-v93];
  v678 = sub_2CD570();
  v679 = *(v678 - 8);
  v94 = *(v679 + 64);
  v95 = __chkstk_darwin(v678);
  v613 = &v608[-((v96 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v95);
  v703 = &v608[-v97];
  v98 = sub_20410(&qword_34D6C0, &qword_2D15B8);
  v99 = *(*(v98 - 8) + 64);
  v100 = __chkstk_darwin(v98 - 8);
  v614 = &v608[-((v101 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = __chkstk_darwin(v100);
  v621 = &v608[-v103];
  __chkstk_darwin(v102);
  v714 = &v608[-v104];
  v105 = sub_20410(&qword_34D6C8, &unk_2D15C0);
  v106 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105 - 8);
  v108 = &v608[-v107];
  v109 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v110 = *(*(v109 - 8) + 64);
  v111 = __chkstk_darwin(v109 - 8);
  v642 = &v608[-((v112 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = __chkstk_darwin(v111);
  v622 = &v608[-v114];
  v115 = __chkstk_darwin(v113);
  v644 = &v608[-v116];
  v117 = __chkstk_darwin(v115);
  v633 = &v608[-v118];
  v119 = __chkstk_darwin(v117);
  v657 = &v608[-v120];
  v121 = __chkstk_darwin(v119);
  v669 = &v608[-v122];
  v123 = __chkstk_darwin(v121);
  v646 = &v608[-v124];
  v125 = __chkstk_darwin(v123);
  v637 = &v608[-v126];
  v127 = __chkstk_darwin(v125);
  v667 = &v608[-v128];
  v129 = __chkstk_darwin(v127);
  v665 = &v608[-v130];
  v131 = __chkstk_darwin(v129);
  v680 = &v608[-v132];
  v133 = __chkstk_darwin(v131);
  v686 = &v608[-v134];
  v135 = __chkstk_darwin(v133);
  v625 = &v608[-v136];
  v137 = __chkstk_darwin(v135);
  v683 = &v608[-v138];
  v139 = __chkstk_darwin(v137);
  v656 = &v608[-v140];
  v141 = __chkstk_darwin(v139);
  v717 = &v608[-v142];
  v143 = __chkstk_darwin(v141);
  v641 = &v608[-v144];
  v145 = __chkstk_darwin(v143);
  v709 = &v608[-v146];
  v147 = __chkstk_darwin(v145);
  v149 = &v608[-v148];
  __chkstk_darwin(v147);
  v151 = &v608[-v150];
  v725 = a1;
  v152 = *(a1 + 40);
  v699 = *(a1 + 32);
  sub_F3F4(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_targetMediaType, &v608[-v150], &qword_34D6D0, qword_2D34A0);
  v153 = v42;
  v155 = v42 + 48;
  v154 = *(v42 + 48);
  v156 = (v154)(v151, 1, v41);
  v710 = v152;

  v719 = a1;
  v713 = v153;
  v716 = v155;
  if (v156 == 1)
  {
    sub_30B8(v151, &qword_34D6D0, qword_2D34A0);
    v157 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
    swift_beginAccess();
    sub_F3F4(a1 + v157, v149, &qword_34D6D0, qword_2D34A0);
    v158 = v154;
    if ((v154)(v149, 1, v41) == 1)
    {
      sub_30B8(v149, &qword_34D6D0, qword_2D34A0);
      v708 = 0;
    }

    else
    {
      v708 = sub_2AA0F4();
      (*(v713 + 8))(v149, v41);
    }
  }

  else
  {
    v708 = sub_2AA0F4();
    (*(v153 + 8))(v151, v41);
    v158 = v154;
  }

  v159 = v679;
  v160 = v714;
  sub_F3F4(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_sort, v108, &qword_34D6C8, &unk_2D15C0);
  v161 = sub_2CD4B0();
  v162 = *(v161 - 8);
  v163 = (*(v162 + 48))(v108, 1, v161);
  *&v718 = v41;
  if (v163 == 1)
  {
    sub_30B8(v108, &qword_34D6C8, &unk_2D15C0);
    v693 = 0;
  }

  else
  {
    v693 = sub_2AA118();
    (*(v162 + 8))(v108, v161);
  }

  v164 = v719;
  v165 = *(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_genres);

  v167 = sub_18732C(v166);

  v168 = *(v164 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_activities);
  v723 = *(v164 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_moods);

  sub_80D34(v169);
  v170 = sub_18732C(v723);

  if (v170[2] != 1)
  {
    goto LABEL_18;
  }

  v171 = sub_2CBD90();
  if (v711)
  {
    if (v171 == v704 && v172 == v711)
    {
    }

    else
    {
      v173 = sub_2CEEA0();

      if ((v173 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v170[2])
    {
      v174 = v170[5];
      v692 = v170[4];
      v704 = v174;

      goto LABEL_19;
    }
  }

  else
  {
  }

LABEL_18:
  v692 = 0;
  v704 = 0;
LABEL_19:
  v175 = v719;
  v675 = sub_6F708(v719);
  v176 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_reference;
  swift_beginAccess();
  v615 = v176;
  sub_F3F4(v175 + v176, v160, &qword_34D6C0, &qword_2D15B8);
  v177 = *(v159 + 48);
  v178 = v678;
  v617 = v159 + 48;
  v616 = v177;
  v179 = v177(v160, 1, v678);
  v714 = v158;
  v677 = v167;
  v676 = v170;
  if (v179 == 1)
  {
    sub_30B8(v160, &qword_34D6C0, &qword_2D15B8);
    v649 = 0;
  }

  else
  {
    v180 = v703;
    (*(v159 + 16))(v703, v160, v178);
    v181 = (*(v159 + 88))(v180, v178);
    if (v181 == enum case for CommonAudio.Reference.definite(_:))
    {
      v182 = 1;
    }

    else
    {
      if (v181 != enum case for CommonAudio.Reference.indefinite(_:))
      {
        (*(v159 + 8))(v180, v178);
      }

      v182 = 0;
    }

    v649 = v182;
    (*(v159 + 8))(v160, v178);
  }

  sub_20410(&qword_34D6D8, &qword_2D15D0);
  v183 = v712;
  v184 = *(v712 + 72);
  v185 = (*(v712 + 80) + 32) & ~*(v712 + 80);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_2D0E40;
  v187 = v186 + v185;
  v189 = v183 + 104;
  v188 = *(v183 + 104);
  v190 = v186 + v185;
  v670 = enum case for CommonAudio.Attribute.affinity(_:);
  v191 = v701;
  v188(v190);
  v696 = v188;
  (v188)(v187 + v184, enum case for CommonAudio.Attribute.recommended(_:), v191);
  sub_186A50(v186);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v192 = type metadata accessor for NowPlayingIntent();
  v711 = sub_6FB80(&qword_34D728, type metadata accessor for NowPlayingIntent);
  LOBYTE(v186) = sub_2CD950();

  v703 = v192;
  v687 = v189;
  if (v186)
  {
    v672 = &dword_8;
    v193 = v719;
LABEL_43:
    v210 = v714;
    v211 = v717;
    goto LABEL_50;
  }

  v194 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
  v195 = v691;
  v196 = v706;
  v197 = v698;
  v611 = *(v691 + 104);
  v611(v706, enum case for CommonAudio.Verb.start(_:), v698);
  v610 = *(v195 + 56);
  v610(v196, 0, 1, v197);
  v198 = *(v684 + 48);
  v612 = v194;
  v199 = v719 + v194;
  v200 = v702;
  sub_F3F4(v199, v702, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v196, &v200[v198], &qword_34D6B8, &qword_2D15B0);
  v201 = *(v195 + 48);
  if (v201(v200, 1, v197) == 1)
  {
    sub_30B8(v196, &qword_34D6B8, &qword_2D15B0);
    v202 = v201(&v200[v198], 1, v197);
    v203 = v705;
    if (v202 == 1)
    {
      sub_30B8(v200, &qword_34D6B8, &qword_2D15B0);
      v672 = &dword_8;
      v193 = v719;
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  v204 = v694;
  sub_F3F4(v200, v694, &qword_34D6B8, &qword_2D15B0);
  if (v201(&v200[v198], 1, v197) == 1)
  {
    sub_30B8(v196, &qword_34D6B8, &qword_2D15B0);
    (*(v691 + 8))(v204, v197);
    v203 = v705;
LABEL_34:
    sub_30B8(v200, &qword_34D6B0, &unk_2D4FC0);
    v193 = v719;
    goto LABEL_35;
  }

  v213 = v691;
  v214 = v645;
  (*(v691 + 32))(v645, &v200[v198], v197);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v609 = sub_2CE250();
  v215 = *(v213 + 8);
  v215(v214, v197);
  sub_30B8(v706, &qword_34D6B8, &qword_2D15B0);
  v215(v694, v197);
  sub_30B8(v200, &qword_34D6B8, &qword_2D15B0);
  v193 = v719;
  v203 = v705;
  if (v609)
  {
    v672 = &dword_8;
    goto LABEL_43;
  }

LABEL_35:
  v205 = v700;
  v206 = v698;
  v611(v700, enum case for CommonAudio.Verb.play(_:), v698);
  v207 = v205;
  v610(v205, 0, 1, v206);
  v208 = *(v684 + 48);
  sub_F3F4(v193 + v612, v203, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v205, &v203[v208], &qword_34D6B8, &qword_2D15B0);
  if (v201(v203, 1, v206) == 1)
  {
    sub_30B8(v205, &qword_34D6B8, &qword_2D15B0);
    v209 = v201(&v203[v208], 1, v206);
    v210 = v714;
    v211 = v717;
    if (v209 == 1)
    {
      sub_30B8(v203, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_45;
    }

LABEL_40:
    sub_30B8(v203, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_47;
  }

  v212 = v672;
  sub_F3F4(v203, v672, &qword_34D6B8, &qword_2D15B0);
  if (v201(&v203[v208], 1, v206) == 1)
  {
    sub_30B8(v207, &qword_34D6B8, &qword_2D15B0);
    (*(v691 + 8))(v212, v206);
    v210 = v714;
    v211 = v717;
    goto LABEL_40;
  }

  v216 = v203;
  v217 = v691;
  v218 = v645;
  (*(v691 + 32))(v645, &v216[v208], v206);
  sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v219 = v212;
  v220 = sub_2CE250();
  v221 = v193;
  v222 = *(v217 + 8);
  v222(v218, v206);
  sub_30B8(v700, &qword_34D6B8, &qword_2D15B0);
  v222(v219, v206);
  v193 = v221;
  sub_30B8(v705, &qword_34D6B8, &qword_2D15B0);
  v210 = v714;
  v211 = v717;
  if ((v220 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:
  v223 = *(v193 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_modifiers);
  v224 = v632;
  v225 = v631;
  v226 = v668;
  (*(v632 + 104))(v631, enum case for CommonAudio.Modifier.moreOf(_:), v668);

  v227 = sub_17F540(v225, v223);

  v228 = v225;
  v211 = v717;
  (*(v224 + 8))(v228, v226);
  if ((v227 & 1) == 0)
  {
LABEL_47:
    v230 = v697;
    v231 = v701;
    (v696)(v697, enum case for CommonAudio.Attribute.discovery(_:), v701);
    v232 = sub_2CD910();
    (*(v712 + 8))(v230, v231);
    v229 = v693;
    if (v232)
    {
      v229 = (&dword_0 + 1);
    }

    goto LABEL_49;
  }

  v229 = &dword_8;
LABEL_49:
  v672 = v229;
LABEL_50:
  v233 = v709;
  v234 = v697;
  v235 = v701;
  (v696)(v697, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v701);
  v236 = sub_2CD910();
  v237 = *(v712 + 8);
  v712 += 8;
  v668 = v237;
  (v237)(v234, v235);
  v238 = v708;
  if (v236)
  {
    v238 = 0;
  }

  v693 = v238;
  v239 = *(v193 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appShowTitles);
  if (v239[2] && (v240 = v239[6], v241 = v239[7], v242 = sub_BF40C(v239[4], v239[5]), v243))
  {
    v244 = v243;
    v694 = v242;

    v699 = v240;
    v710 = v241;
    v245 = v698;
  }

  else
  {
    v246 = *(v193 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_entities);
    v245 = v698;
    if (v246[2])
    {
      v244 = v246[5];
      v694 = v246[4];
    }

    else
    {

      v694 = 0;
      v244 = 0;
    }
  }

  v247 = *(v193 + 48);
  if (v247[2])
  {
    v248 = v247[5];
    v692 = v247[4];

    v249 = (&dword_0 + 1);
    v704 = v248;
  }

  else
  {
    v249 = 0;
  }

  v702 = v249;
  v717 = v244;
  if (v244)
  {
    v250 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
    swift_beginAccess();
    v251 = v713;
    v252 = v718;
    (*(v713 + 104))(v233, enum case for CommonAudio.MediaType.news(_:), v718);
    (*(v251 + 56))(v233, 0, 1, v252);
    v253 = *(v715 + 48);
    v254 = v193 + v250;
    v255 = v707;
    sub_F3F4(v254, v707, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v233, &v255[v253], &qword_34D6D0, qword_2D34A0);
    if ((v210)(v255, 1, v252) == 1)
    {
      v256 = v717;

      sub_30B8(v233, &qword_34D6D0, qword_2D34A0);
      if ((v210)(&v255[v253], 1, v718) == 1)
      {
        sub_30B8(v255, &qword_34D6D0, qword_2D34A0);

        v692 = v694;
        v704 = v256;
        goto LABEL_71;
      }

      goto LABEL_67;
    }

    v257 = v641;
    sub_F3F4(v255, v641, &qword_34D6D0, qword_2D34A0);
    if ((v210)(&v255[v253], 1, v718) == 1)
    {

      sub_30B8(v233, &qword_34D6D0, qword_2D34A0);
      (*(v713 + 8))(v257, v718);
LABEL_67:
      sub_30B8(v255, &qword_34D6A8, &unk_2D15A0);

      goto LABEL_71;
    }

    v258 = v255;
    v259 = v713;
    v260 = v685;
    v261 = v257;
    v262 = v718;
    (*(v713 + 32))(v685, v258 + v253, v718);
    sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
    v263 = v717;

    v264 = sub_2CE250();
    v265 = *(v259 + 8);
    v265(v260, v262);
    sub_30B8(v709, &qword_34D6D0, qword_2D34A0);
    v265(v261, v262);
    sub_30B8(v258, &qword_34D6D0, qword_2D34A0);

    if (v264)
    {
      v692 = v694;
      v704 = v263;
    }

    v193 = v719;
    v245 = v698;
  }

LABEL_71:
  v266 = *(v193 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_playlistTitles);
  if (v266[2])
  {
    v700 = sub_BF40C(v266[4], v266[5]);
    if (v267)
    {
      v268 = v267;
      goto LABEL_80;
    }
  }

  else
  {
    v700 = 0;
  }

  v269 = *(v193 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appPlaylistTitles);
  if (v269[2])
  {
    v270 = v269[6];
    v271 = v269[7];
    v272 = sub_BF40C(v269[4], v269[5]);
    v268 = v273;
    if (v273)
    {
      v274 = v272;

      v699 = v270;
      v710 = v271;
      v700 = v274;
    }

    v193 = v719;
  }

  else
  {
    v268 = 0;
  }

LABEL_80:
  v275 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
  swift_beginAccess();
  v276 = v713;
  v277 = *(v713 + 104);
  v278 = v718;
  v708 = v713 + 104;
  v707 = v277;
  (v277)(v211, enum case for CommonAudio.MediaType.playlist(_:), v718);
  v279 = *(v276 + 56);
  v706 = (v276 + 56);
  v705 = v279;
  (v279)(v211, 0, 1, v278);
  v280 = *(v715 + 48);
  v709 = v275;
  v281 = &v275[v193];
  v282 = v666;
  sub_F3F4(v281, v666, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v211, v282 + v280, &qword_34D6D0, qword_2D34A0);
  v283 = v714;
  if ((v714)(v282, 1, v278) == 1)
  {
    sub_30B8(v211, &qword_34D6D0, qword_2D34A0);
    v284 = (v283)(v282 + v280, 1, v718);
    v285 = v683;
    if (v284 == 1)
    {
      goto LABEL_89;
    }

    goto LABEL_85;
  }

  v286 = v656;
  sub_F3F4(v282, v656, &qword_34D6D0, qword_2D34A0);
  if ((v283)(v282 + v280, 1, v718) == 1)
  {
    sub_30B8(v211, &qword_34D6D0, qword_2D34A0);
    (*(v713 + 8))(v286, v718);
    v285 = v683;
LABEL_85:
    sub_30B8(v282, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_86;
  }

  v293 = v713;
  v294 = v718;
  v295 = v211;
  v296 = v286;
  v297 = v685;
  (*(v713 + 32))(v685, v282 + v280, v718);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v298 = sub_2CE250();
  v299 = *(v293 + 8);
  v299(v297, v294);
  v300 = v295;
  v245 = v698;
  sub_30B8(v300, &qword_34D6D0, qword_2D34A0);
  v299(v296, v294);
  v193 = v719;
  sub_30B8(v282, &qword_34D6D0, qword_2D34A0);
  v285 = v683;
  if ((v298 & 1) == 0)
  {
LABEL_86:
    v287 = v718;
    (v707)(v285, enum case for CommonAudio.MediaType.musicPlaylist(_:), v718);
    (v705)(v285, 0, 1, v287);
    v288 = *(v715 + 48);
    v289 = v662;
    sub_F3F4(&v709[v193], v662, &qword_34D6D0, qword_2D34A0);
    sub_F3F4(v285, &v289[v288], &qword_34D6D0, qword_2D34A0);
    v290 = v714;
    if ((v714)(v289, 1, v287) == 1)
    {
      sub_30B8(v285, &qword_34D6D0, qword_2D34A0);
      if ((v290)(&v289[v288], 1, v718) == 1)
      {
        v282 = v289;
LABEL_89:
        sub_30B8(v282, &qword_34D6D0, qword_2D34A0);
        goto LABEL_94;
      }
    }

    else
    {
      v291 = v642;
      sub_F3F4(v289, v642, &qword_34D6D0, qword_2D34A0);
      if ((v290)(&v289[v288], 1, v718) != 1)
      {
        v302 = v713;
        v303 = &v289[v288];
        v304 = v289;
        v305 = v685;
        v306 = v718;
        (*(v713 + 32))(v685, v303, v718);
        sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
        v307 = sub_2CE250();
        v308 = *(v302 + 8);
        v308(v305, v306);
        sub_30B8(v683, &qword_34D6D0, qword_2D34A0);
        v308(v291, v306);
        sub_30B8(v304, &qword_34D6D0, qword_2D34A0);
        v309 = v700;
        if (((v268 == 0) & v307) != 0)
        {
          v309 = 0;
        }

        v700 = v309;
        v292 = v717;
        if (!v717)
        {
          v193 = v719;
          goto LABEL_104;
        }

        v193 = v719;
        if (((v268 == 0) & v307) == 0)
        {
          goto LABEL_104;
        }

LABEL_103:
        v700 = sub_BF40C(v694, v292);
        v268 = v310;
        goto LABEL_104;
      }

      sub_30B8(v683, &qword_34D6D0, qword_2D34A0);
      (*(v713 + 8))(v291, v718);
    }

    sub_30B8(v289, &qword_34D6A8, &unk_2D15A0);
    v292 = v717;
    goto LABEL_104;
  }

LABEL_94:
  v301 = v700;
  if (!v268)
  {
    v301 = 0;
  }

  v700 = v301;
  v292 = v717;
  if (v717 && !v268)
  {
    goto LABEL_103;
  }

LABEL_104:
  v311 = sub_2CD930();
  v312 = v311;
  v683 = v268;
  if (v268)
  {
    if (!v311)
    {
      v326 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
      v327 = v691;
      v328 = v651;
      (*(v691 + 104))(v651, enum case for CommonAudio.Verb.update(_:), v245);
      (*(v327 + 56))(v328, 0, 1, v245);
      v329 = *(v684 + 48);
      v330 = v193 + v326;
      v331 = v643;
      sub_F3F4(v330, v643, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v328, &v331[v329], &qword_34D6B8, &qword_2D15B0);
      v332 = v327;
      v333 = v331;
      v334 = *(v332 + 48);
      if (v334(v333, 1, v245) == 1)
      {

        sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
        v335 = v334(v333 + v329, 1, v245);
        v193 = v719;
        v313 = v682;
        if (v335 == 1)
        {
          sub_30B8(v333, &qword_34D6B8, &qword_2D15B0);

          v700 = v692;
          goto LABEL_109;
        }
      }

      else
      {
        v336 = v635;
        sub_F3F4(v333, v635, &qword_34D6B8, &qword_2D15B0);
        if (v334(v333 + v329, 1, v245) != 1)
        {
          v339 = v691;
          v340 = v645;
          (*(v691 + 32))(v645, v333 + v329, v245);
          sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);

          v341 = sub_2CE250();
          v342 = *(v339 + 8);
          v342(v340, v245);
          sub_30B8(v651, &qword_34D6B8, &qword_2D15B0);
          v342(v336, v245);
          sub_30B8(v333, &qword_34D6B8, &qword_2D15B0);

          if (v341)
          {
            v700 = v692;
          }

          else
          {
            v702 = (&dword_4 + 1);
            v704 = v268;
          }

          v193 = v719;
          goto LABEL_108;
        }

        sub_30B8(v651, &qword_34D6B8, &qword_2D15B0);
        (*(v691 + 8))(v336, v245);
        v193 = v719;
        v313 = v682;
      }

      sub_30B8(v333, &qword_34D6B0, &unk_2D4FC0);

      v702 = (&dword_4 + 1);
      v704 = v268;
      goto LABEL_109;
    }

    v702 = (&dword_4 + 1);
    v704 = v268;
  }

  else
  {
    v700 = v692;
  }

LABEL_108:
  v313 = v682;
LABEL_109:
  v314 = *(v193 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePlaylistTitles);
  if (v314[2])
  {
    v315 = sub_BF40C(v314[4], v314[5]);
    v692 = v316;
    if (v316)
    {
      v317 = v315;
      v318 = v681;
      if (!v312)
      {
        v319 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
        v320 = v691;
        (*(v691 + 104))(v313, enum case for CommonAudio.Verb.update(_:), v245);
        (*(v320 + 56))(v313, 0, 1, v245);
        v321 = *(v684 + 48);
        v322 = v313;
        v323 = v719 + v319;
        v324 = v636;
        sub_F3F4(v323, v636, &qword_34D6B8, &qword_2D15B0);
        sub_F3F4(v313, &v324[v321], &qword_34D6B8, &qword_2D15B0);
        v325 = *(v320 + 48);
        if (v325(v324, 1, v245) == 1)
        {
          sub_30B8(v322, &qword_34D6B8, &qword_2D15B0);
          if (v325(&v324[v321], 1, v245) == 1)
          {
            sub_30B8(v324, &qword_34D6B8, &qword_2D15B0);
LABEL_128:

            v292 = v717;
            goto LABEL_129;
          }

          goto LABEL_123;
        }

        v337 = v628;
        sub_F3F4(v324, v628, &qword_34D6B8, &qword_2D15B0);
        if (v325(&v324[v321], 1, v245) == 1)
        {
          sub_30B8(v682, &qword_34D6B8, &qword_2D15B0);
          (*(v691 + 8))(v337, v245);
LABEL_123:
          sub_30B8(v324, &qword_34D6B0, &unk_2D4FC0);
          goto LABEL_124;
        }

        v343 = v324;
        v344 = v691;
        v345 = v337;
        v346 = v645;
        (*(v691 + 32))(v645, v343 + v321, v245);
        sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        LODWORD(v666) = sub_2CE250();
        v347 = *(v344 + 8);
        v347(v346, v698);
        sub_30B8(v682, &qword_34D6B8, &qword_2D15B0);
        v347(v345, v698);
        v245 = v698;
        sub_30B8(v343, &qword_34D6B8, &qword_2D15B0);
        if (v666)
        {
          goto LABEL_128;
        }
      }

LABEL_124:

      v338 = v719;
      sub_F3F4(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType, v695, &qword_34D6A0, &unk_2D3490);
      v700 = v317;
LABEL_132:
      v349 = v665;
      v350 = v680;
      goto LABEL_159;
    }
  }

LABEL_129:
  v338 = v719;
  v348 = v695;
  sub_F3F4(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioType, v695, &qword_34D6A0, &unk_2D3490);
  if (v704)
  {
    v692 = v704;
LABEL_131:
    v318 = v681;
    goto LABEL_132;
  }

  v351 = *(v660 + 48);
  if (v351(v348, 1, v661) == 1)
  {
    v352 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames;
    v353 = v650;
    if ((*(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency + 8) & 1) != 0 && !*(*(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames) + 16))
    {
      v338 = v719;
      v354 = v625;
      sub_F3F4(&v709[v719], v625, &qword_34D6D0, qword_2D34A0);
      if ((v714)(v354, 1, v718) == 1)
      {
        sub_30B8(v354, &qword_34D6D0, qword_2D34A0);
        v692 = 0;
        goto LABEL_131;
      }

      v563 = sub_2CD530();
      v564 = (v713 + 8);
      v565 = *(v713 + 8);
      (v565)(v354, v718);
      v318 = v681;
      v350 = v680;
      if (!v563)
      {
        v569 = &v720;
        goto LABEL_359;
      }

      v704 = v564;
      v682 = v565;
      if (v292 && (v566 = sub_BF40C(v694, v292), (v692 = v567) != 0))
      {
        v700 = v566;
        v568 = v623;
      }

      else
      {
        v570 = v719;
        v571 = sub_7EF68(*(v719 + 24));
        v568 = v623;
        v692 = v572;
        if (!v572)
        {
          v571 = sub_7EF68(*(v570 + 16));
          v692 = v573;
          if (!v573)
          {
            v571 = sub_7EF68(*(v570 + 48));
            v569 = &v720;
            v692 = v574;
            if (!v574)
            {
              goto LABEL_359;
            }
          }
        }

        v700 = v571;
      }

      v575 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_verb;
      v576 = v691;
      v577 = v624;
      (*(v691 + 104))(v624, enum case for CommonAudio.Verb.start(_:), v245);
      (*(v576 + 56))(v577, 0, 1, v245);
      v578 = *(v684 + 48);
      sub_F3F4(v719 + v575, v568, &qword_34D6B8, &qword_2D15B0);
      sub_F3F4(v577, v568 + v578, &qword_34D6B8, &qword_2D15B0);
      v579 = *(v576 + 48);
      if (v579(v568, 1, v245) == 1)
      {
        sub_30B8(v577, &qword_34D6B8, &qword_2D15B0);
        v580 = v579(v568 + v578, 1, v245);
        v581 = v714;
        if (v580 == 1)
        {
          sub_30B8(v568, &qword_34D6B8, &qword_2D15B0);
          v582 = v622;
LABEL_350:
          v590 = v679;
          v591 = v621;
          v592 = v678;
          (*(v679 + 104))(v621, enum case for CommonAudio.Reference.definite(_:), v678);
          (*(v590 + 56))(v591, 0, 1, v592);
          v593 = *(v618 + 48);
          v594 = v619;
          sub_F3F4(v719 + v615, v619, &qword_34D6C0, &qword_2D15B8);
          v595 = v594;
          sub_F3F4(v591, &v594[v593], &qword_34D6C0, &qword_2D15B8);
          v596 = v594;
          v597 = v616;
          if (v616(v596, 1, v592) == 1)
          {
            sub_30B8(v591, &qword_34D6C0, &qword_2D15B8);
            v598 = v597(v595 + v593, 1, v592);
            v584 = v682;
            if (v598 == 1)
            {
              sub_30B8(v595, &qword_34D6C0, &qword_2D15B8);

              v700 = 0;
              v692 = 0xE000000000000000;
LABEL_356:
              v350 = v680;
              goto LABEL_357;
            }

LABEL_355:
            sub_30B8(v595, &qword_34D688, &qword_2D1588);
            goto LABEL_356;
          }

          v599 = v614;
          sub_F3F4(v595, v614, &qword_34D6C0, &qword_2D15B8);
          if (v597(v595 + v593, 1, v592) == 1)
          {
            sub_30B8(v621, &qword_34D6C0, &qword_2D15B8);
            (*(v679 + 8))(v599, v592);
            v584 = v682;
            goto LABEL_355;
          }

          v600 = v679;
          v601 = v595 + v593;
          v602 = v613;
          (*(v679 + 32))(v613, v601, v592);
          sub_6FB80(&qword_34D700, &type metadata accessor for CommonAudio.Reference);
          v603 = v595;
          v604 = v599;
          v605 = v592;
          v606 = sub_2CE250();
          v607 = *(v600 + 8);
          v607(v602, v605);
          sub_30B8(v621, &qword_34D6C0, &qword_2D15B8);
          v607(v604, v605);
          sub_30B8(v603, &qword_34D6C0, &qword_2D15B8);
          if (v606)
          {

            v700 = 0;
            v692 = 0xE000000000000000;
          }

          v581 = v714;
          v350 = v680;
LABEL_348:
          v584 = v682;
LABEL_357:
          sub_F3F4(&v709[v719], v582, &qword_34D6D0, qword_2D34A0);
          if ((v581)(v582, 1, v718) != 1)
          {
            v702 = sub_2AA4C4();
            (v584)(v582, v718);
            goto LABEL_361;
          }

          sub_30B8(v582, &qword_34D6D0, qword_2D34A0);
          v569 = &v724;
LABEL_359:
          *(v569 - 32) = 0;
LABEL_361:
          v338 = v719;
          v349 = v665;
          goto LABEL_159;
        }
      }

      else
      {
        v583 = v620;
        sub_F3F4(v568, v620, &qword_34D6B8, &qword_2D15B0);
        if (v579(v568 + v578, 1, v245) != 1)
        {
          v585 = v691;
          v586 = v568 + v578;
          v587 = v645;
          (*(v691 + 32))(v645, v586, v245);
          sub_6FB80(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
          v588 = sub_2CE250();
          v589 = *(v585 + 8);
          v589(v587, v245);
          sub_30B8(v624, &qword_34D6B8, &qword_2D15B0);
          v589(v583, v245);
          sub_30B8(v568, &qword_34D6B8, &qword_2D15B0);
          v581 = v714;
          v582 = v622;
          if ((v588 & 1) == 0)
          {
            v350 = v680;
            goto LABEL_348;
          }

          goto LABEL_350;
        }

        sub_30B8(v624, &qword_34D6B8, &qword_2D15B0);
        (*(v691 + 8))(v583, v245);
        v581 = v714;
      }

      sub_30B8(v568, &qword_34D6B0, &unk_2D4FC0);
      v350 = v680;
      v582 = v622;
      goto LABEL_348;
    }
  }

  else
  {
    v352 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_radioStationNames;
    v353 = v650;
  }

  v721 = 0;
  v722 = 0xE000000000000000;
  v355 = *(v719 + v352);
  if (v355[2])
  {
    v356 = v355[4];
    v357 = v355[5];

    v726._countAndFlagsBits = v356;
    v726._object = v357;
    sub_2CE350(v726);

    v353 = v650;
  }

  v358 = v661;
  v359 = v639;
  if ((*(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency + 8) & 1) == 0)
  {
    v360 = *(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_frequency);
    v361 = v660;
    (*(v660 + 104))(v353, enum case for CommonAudio.RadioType.am(_:), v661);
    (*(v361 + 56))(v353, 0, 1, v358);
    v362 = *(v629 + 48);
    sub_F3F4(v348, v359, &qword_34D6A0, &unk_2D3490);
    sub_F3F4(v353, v359 + v362, &qword_34D6A0, &unk_2D3490);
    if (v351(v359, 1, v358) == 1)
    {
      sub_30B8(v353, &qword_34D6A0, &unk_2D3490);
      if (v351((v359 + v362), 1, v358) == 1)
      {
        sub_30B8(v359, &qword_34D6A0, &unk_2D3490);
LABEL_153:
        sub_20410(&qword_34CEA8, &unk_2D0EB0);
        v370 = swift_allocObject();
        *(v370 + 16) = xmmword_2D0090;
        *(v370 + 56) = &type metadata for Double;
        *(v370 + 64) = &protocol witness table for Double;
        *(v370 + 32) = v360;
        v364._countAndFlagsBits = sub_2CE280();
        goto LABEL_154;
      }
    }

    else
    {
      v363 = v627;
      sub_F3F4(v359, v627, &qword_34D6A0, &unk_2D3490);
      if (v351((v359 + v362), 1, v358) != 1)
      {
        v365 = v660;
        v366 = v359 + v362;
        v367 = v626;
        (*(v660 + 32))(v626, v366, v358);
        sub_6FB80(&qword_34D6F8, &type metadata accessor for CommonAudio.RadioType);
        v368 = sub_2CE250();
        v369 = *(v365 + 8);
        v369(v367, v661);
        sub_30B8(v650, &qword_34D6A0, &unk_2D3490);
        v369(v363, v661);
        v358 = v661;
        v348 = v695;
        sub_30B8(v359, &qword_34D6A0, &unk_2D3490);
        if (v368)
        {
          goto LABEL_153;
        }

LABEL_148:
        v364._countAndFlagsBits = sub_2CE510();
LABEL_154:
        sub_BF464(v364);

        goto LABEL_155;
      }

      sub_30B8(v650, &qword_34D6A0, &unk_2D3490);
      (*(v660 + 8))(v363, v358);
    }

    sub_30B8(v359, &qword_34D680, &qword_2D1580);
    goto LABEL_148;
  }

LABEL_155:
  v371 = v638;
  sub_F3F4(v348, v638, &qword_34D6A0, &unk_2D3490);
  if (v351(v371, 1, v358) == 1)
  {
    sub_30B8(v371, &qword_34D6A0, &unk_2D3490);
  }

  else
  {
    v372 = v660;
    v373 = v630;
    (*(v660 + 32))(v630, v371, v358);
    v727._countAndFlagsBits = sub_2CD550();
    sub_BF464(v727);

    (*(v372 + 8))(v373, v358);
  }

  v338 = v719;
  v318 = v681;
  v349 = v665;
  v350 = v680;
  v700 = v721;
  v692 = v722;
  v693 = 16;
LABEL_159:
  v374 = v713;
  v375 = *(v338 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_podcastTitles);
  if (v375[2])
  {
    v704 = sub_BF40C(v375[4], v375[5]);
    v377 = v376;
  }

  else
  {
    v704 = 0;
    v377 = 0;
  }

  v378 = v686;
  LODWORD(v698) = enum case for CommonAudio.MediaType.podcast(_:);
  v379 = v718;
  (v707)(v686);
  (v705)(v378, 0, 1, v379);
  v380 = *(v715 + 48);
  sub_F3F4(&v709[v719], v318, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v378, &v318[v380], &qword_34D6D0, qword_2D34A0);
  v381 = v714;
  if ((v714)(v318, 1, v379) != 1)
  {
    sub_F3F4(v318, v350, &qword_34D6D0, qword_2D34A0);
    if ((v381)(&v318[v380], 1, v718) != 1)
    {
      v388 = v685;
      v389 = v718;
      (*(v374 + 32))(v685, &v318[v380], v718);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v390 = sub_2CE250();
      v391 = *(v374 + 8);
      v391(v388, v389);
      sub_30B8(v686, &qword_34D6D0, qword_2D34A0);
      v391(v350, v389);
      v383 = v717;
      v381 = v714;
      v382 = v713;
      sub_30B8(v318, &qword_34D6D0, qword_2D34A0);
      v384 = v692;
      if (v390)
      {
        goto LABEL_177;
      }

LABEL_168:
      v385 = v718;
      (v707)(v349, enum case for CommonAudio.MediaType.episode(_:), v718);
      (v705)(v349, 0, 1, v385);
      v386 = *(v715 + 48);
      v318 = v663;
      sub_F3F4(&v709[v719], v663, &qword_34D6D0, qword_2D34A0);
      v381 = v714;
      sub_F3F4(v349, &v318[v386], &qword_34D6D0, qword_2D34A0);
      if ((v381)(v318, 1, v385) == 1)
      {
        sub_30B8(v349, &qword_34D6D0, qword_2D34A0);
        if ((v381)(&v318[v386], 1, v718) == 1)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v387 = v644;
        sub_F3F4(v318, v644, &qword_34D6D0, qword_2D34A0);
        if ((v381)(&v318[v386], 1, v718) != 1)
        {
          v392 = v685;
          v393 = v718;
          (*(v382 + 32))(v685, &v318[v386], v718);
          sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
          v394 = sub_2CE250();
          v395 = *(v382 + 8);
          v395(v392, v393);
          sub_30B8(v349, &qword_34D6D0, qword_2D34A0);
          v395(v387, v393);
          v382 = v713;
          v383 = v717;
          v381 = v714;
          sub_30B8(v318, &qword_34D6D0, qword_2D34A0);
          v384 = v692;
          if ((v394 & 1) == 0)
          {
            goto LABEL_179;
          }

          goto LABEL_177;
        }

        sub_30B8(v349, &qword_34D6D0, qword_2D34A0);
        (*(v382 + 8))(v387, v718);
        v384 = v692;
      }

      sub_30B8(v318, &qword_34D6A8, &unk_2D15A0);
      goto LABEL_179;
    }

    sub_30B8(v686, &qword_34D6D0, qword_2D34A0);
    v382 = v374;
    (*(v374 + 8))(v350, v718);
LABEL_167:
    sub_30B8(v318, &qword_34D6A8, &unk_2D15A0);
    v383 = v717;
    v384 = v692;
    goto LABEL_168;
  }

  sub_30B8(v378, &qword_34D6D0, qword_2D34A0);
  v382 = v374;
  if ((v381)(&v318[v380], 1, v718) != 1)
  {
    goto LABEL_167;
  }

  v383 = v717;
  v384 = v692;
LABEL_170:
  sub_30B8(v318, &qword_34D6D0, qword_2D34A0);
LABEL_177:
  if (v377)
  {
    goto LABEL_180;
  }

  v704 = v694;
  v377 = v383;
LABEL_179:
  if (!v377)
  {
    v397 = v667;
    v396 = v700;
    goto LABEL_182;
  }

LABEL_180:

  v702 = (&dword_4 + 2);
  v396 = v704;
  v384 = v377;
  v397 = v667;
LABEL_182:
  v398 = v719;
  v399 = sub_7EF68(*(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_applePodcastTitles));
  if (!v400 || (v401 = sub_BF40C(v399, v400), v403 = v402, , (v700 = v403) == 0))
  {
    v704 = v396;
    v409 = v669;
    goto LABEL_204;
  }

  v704 = v401;

  v404 = v718;
  (v707)(v397, v698, v718);
  (v705)(v397, 0, 1, v404);
  v405 = *(v715 + 48);
  v406 = v647;
  sub_F3F4(&v709[v398], v647, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v397, &v406[v405], &qword_34D6D0, qword_2D34A0);
  if ((v381)(v406, 1, v404) == 1)
  {
    sub_30B8(v397, &qword_34D6D0, qword_2D34A0);
    v407 = (v381)(&v406[v405], 1, v718);
    v408 = v648;
    if (v407 == 1)
    {
      sub_30B8(v406, &qword_34D6D0, qword_2D34A0);
LABEL_198:
      v702 = (&dword_4 + 2);
LABEL_202:
      v409 = v669;
      goto LABEL_203;
    }

    goto LABEL_190;
  }

  v410 = v637;
  sub_F3F4(v406, v637, &qword_34D6D0, qword_2D34A0);
  v411 = (v381)(&v406[v405], 1, v718);
  v408 = v648;
  if (v411 == 1)
  {
    sub_30B8(v397, &qword_34D6D0, qword_2D34A0);
    (*(v382 + 8))(v410, v718);
LABEL_190:
    sub_30B8(v406, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_191;
  }

  v418 = v685;
  v419 = v718;
  (*(v382 + 32))(v685, &v406[v405], v718);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v420 = sub_2CE250();
  v421 = *(v382 + 8);
  v421(v418, v419);
  sub_30B8(v397, &qword_34D6D0, qword_2D34A0);
  v421(v410, v419);
  v398 = v719;
  sub_30B8(v406, &qword_34D6D0, qword_2D34A0);
  if (v420)
  {
    goto LABEL_198;
  }

LABEL_191:
  v412 = v646;
  v413 = v718;
  (v707)(v646, enum case for CommonAudio.MediaType.episode(_:), v718);
  (v705)(v412, 0, 1, v413);
  v414 = *(v715 + 48);
  sub_F3F4(&v709[v398], v408, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v412, v408 + v414, &qword_34D6D0, qword_2D34A0);
  v415 = v714;
  if ((v714)(v408, 1, v413) != 1)
  {
    v417 = v633;
    sub_F3F4(v408, v633, &qword_34D6D0, qword_2D34A0);
    if ((v415)(v408 + v414, 1, v718) != 1)
    {
      v422 = v685;
      v423 = v718;
      (*(v382 + 32))(v685, v408 + v414, v718);
      sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v424 = sub_2CE250();
      v425 = *(v382 + 8);
      v425(v422, v423);
      sub_30B8(v646, &qword_34D6D0, qword_2D34A0);
      v425(v417, v423);
      v398 = v719;
      sub_30B8(v408, &qword_34D6D0, qword_2D34A0);
      v426 = v702;
      if (v424)
      {
        v426 = (&dword_4 + 2);
      }

      v702 = v426;
      goto LABEL_202;
    }

    sub_30B8(v646, &qword_34D6D0, qword_2D34A0);
    (*(v382 + 8))(v417, v718);
    v409 = v669;
    goto LABEL_196;
  }

  sub_30B8(v412, &qword_34D6D0, qword_2D34A0);
  v416 = (v415)(v408 + v414, 1, v718);
  v409 = v669;
  if (v416 != 1)
  {
LABEL_196:
    sub_30B8(v408, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_203;
  }

  sub_30B8(v408, &qword_34D6D0, qword_2D34A0);
  v702 = (&dword_4 + 2);
LABEL_203:
  v381 = v714;
  v384 = v700;
LABEL_204:
  v427 = sub_7EFAC(*(v398 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookTitles));
  v429 = v428;
  v700 = v430;
  v714 = v431;
  v692 = v427;
  if (v428)
  {
    v432 = v427;
    v433 = v384;

    v698 = sub_BF40C(v432, v429);
    v435 = v434;
  }

  else
  {
    v433 = v384;
    v698 = 0;
    v435 = 0;
  }

  v436 = v718;
  (v707)(v409, enum case for CommonAudio.MediaType.audioBook(_:), v718);
  (v705)(v409, 0, 1, v436);
  v437 = *(v715 + 48);
  v438 = v671;
  sub_F3F4(&v709[v719], v671, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v409, &v438[v437], &qword_34D6D0, qword_2D34A0);
  if ((v381)(v438, 1, v436) == 1)
  {
    sub_30B8(v409, &qword_34D6D0, qword_2D34A0);
    if ((v381)(&v438[v437], 1, v718) == 1)
    {
      sub_30B8(v438, &qword_34D6D0, qword_2D34A0);
      v439 = v673;
      v440 = v433;
      v441 = v700;
      goto LABEL_217;
    }

    goto LABEL_212;
  }

  v442 = v657;
  sub_F3F4(v438, v657, &qword_34D6D0, qword_2D34A0);
  if ((v381)(&v438[v437], 1, v718) == 1)
  {
    sub_30B8(v409, &qword_34D6D0, qword_2D34A0);
    (*(v713 + 8))(v442, v718);
LABEL_212:
    sub_30B8(v438, &qword_34D6A8, &unk_2D15A0);
    v439 = v673;
    v440 = v433;
    v441 = v700;
LABEL_213:
    if (v435)
    {
      goto LABEL_218;
    }

    sub_6FB3C(v692, v429);
LABEL_215:
    v443 = v693;
    goto LABEL_224;
  }

  v444 = v718;
  v716 = v435;
  v445 = v713;
  v446 = v685;
  (*(v713 + 32))(v685, &v438[v437], v718);
  sub_6FB80(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
  v447 = v438;
  v448 = sub_2CE250();
  v449 = *(v445 + 8);
  v449(v446, v444);
  sub_30B8(v409, &qword_34D6D0, qword_2D34A0);
  v449(v442, v444);
  v435 = v716;
  sub_30B8(v447, &qword_34D6D0, qword_2D34A0);
  v439 = v673;
  v440 = v433;
  v441 = v700;
  if ((v448 & 1) == 0)
  {
    goto LABEL_213;
  }

LABEL_217:
  if (v435)
  {
LABEL_218:

    v450 = v714;
    if (v429)
    {
    }

    else
    {
      v450 = 0;
      v441 = 0;
    }

    goto LABEL_223;
  }

  sub_6FB3C(v692, v429);

  if (!v451)
  {
    v435 = 0;
    goto LABEL_215;
  }

  v435 = v451;
  v698 = v694;
  v450 = v710;
  v441 = v699;
LABEL_223:
  v443 = v693;

  v702 = (&dword_8 + 2);
  v699 = v441;
  v710 = v450;
  v704 = v698;
  v440 = v435;
LABEL_224:
  v452 = *(v719 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_resolvedReference);
  v453 = v674;
  v716 = v435;
  if (!v452)
  {
    goto LABEL_252;
  }

  if (!sub_2CD960() && !sub_2CD990())
  {

LABEL_252:
    v498 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_noun;
    v499 = v664;
    (*(v664 + 104))(v439, enum case for CommonAudio.Noun.library(_:), v453);
    (*(v499 + 56))(v439, 0, 1, v453);
    v500 = *(v658 + 48);
    v501 = v719 + v498;
    v502 = v659;
    sub_F3F4(v501, v659, &qword_34D698, &qword_2D1598);
    sub_F3F4(v439, &v502[v500], &qword_34D698, &qword_2D1598);
    v503 = *(v499 + 48);
    if (v503(v502, 1, v453) == 1)
    {
      sub_30B8(v439, &qword_34D698, &qword_2D1598);
      if (v503(&v502[v500], 1, v453) == 1)
      {
        sub_30B8(v502, &qword_34D698, &qword_2D1598);
        v715 = 0;
        *&v718 = 0;
        v496 = 2;
        goto LABEL_260;
      }
    }

    else
    {
      v504 = v640;
      sub_F3F4(v502, v640, &qword_34D698, &qword_2D1598);
      if (v503(&v502[v500], 1, v453) != 1)
      {
        v505 = v439;
        v506 = v664;
        v507 = &v502[v500];
        v508 = v634;
        (*(v664 + 32))(v634, v507, v453);
        sub_6FB80(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun);
        v509 = sub_2CE250();
        v510 = *(v506 + 8);
        v510(v508, v453);
        v511 = v505;
        v443 = v693;
        sub_30B8(v511, &qword_34D698, &qword_2D1598);
        v510(v504, v453);
        sub_30B8(v502, &qword_34D698, &qword_2D1598);
        v715 = 0;
        *&v718 = 0;
        v496 = v649;
        if (v509)
        {
          v496 = 2;
        }

        goto LABEL_260;
      }

      sub_30B8(v439, &qword_34D698, &qword_2D1598);
      (*(v664 + 8))(v504, v453);
    }

    sub_30B8(v502, &qword_34D690, &qword_2D1590);
    v715 = 0;
    *&v718 = 0;
    v497 = v719;
    v496 = v649;
    goto LABEL_261;
  }

  v700 = v440;
  v454 = v653;
  v455 = v652;
  v456 = v654;
  (*(v653 + 104))(v652, enum case for AudioUsoIntent.UsoNamespace.identifier(_:), v654);
  sub_2CD700();
  sub_2CD630();
  v713 = sub_2CAD90();

  (*(v454 + 8))(v455, v456);
  sub_20410(&qword_34D6F0, &unk_2D15D8);
  v457 = sub_2CD620();
  v458 = *(v457 - 8);
  v459 = *(v458 + 72);
  v460 = (*(v458 + 80) + 32) & ~*(v458 + 80);
  v461 = swift_allocObject();
  v718 = xmmword_2D0090;
  *(v461 + 16) = xmmword_2D0090;
  v462 = enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:);
  v463 = *(v458 + 104);
  v463(v461 + v460, enum case for AudioUsoIntent.IterationOptions.includeResolvedReferences(_:), v457);
  v715 = sub_2CADA0();

  v464 = swift_allocObject();
  *(v464 + 16) = v718;
  v463(v464 + v460, v462, v457);
  v714 = sub_2CADA0();

  v465 = swift_allocObject();
  *(v465 + 16) = v718;
  v463(v465 + v460, v462, v457);
  v466 = sub_2CADA0();

  v467 = v655;
  sub_7F014(v713, v655);

  v468 = sub_2CAB40();
  v469 = *(v468 - 8);
  if ((*(v469 + 48))(v467, 1, v468) == 1)
  {
    sub_30B8(v467, &unk_353080, &qword_2D1460);
  }

  else
  {
    v470 = sub_2CAB20();
    v472 = v471;
    (*(v469 + 8))(v467, v468);
    v473 = sub_BF40C(v470, v472);
    v475 = v474;

    if (v475)
    {

      v699 = v473;
      v710 = v475;
    }
  }

  v476 = v714;
  if (v715 && (, v477 = sub_2CADC0(), v479 = v478, , v479))
  {
    v480 = sub_BF40C(v477, v479);
    v482 = v481;

    if (v482)
    {
      v483 = v480;
    }

    else
    {
      v483 = 0;
    }

    *&v718 = v483;
    if (!v476)
    {
LABEL_245:
      v715 = 0;
      if (v466)
      {
        goto LABEL_246;
      }

LABEL_244:

LABEL_249:
      v496 = 1;
      v497 = v719;
      v443 = v693;
LABEL_250:
      v440 = v700;
      goto LABEL_261;
    }
  }

  else
  {
    *&v718 = 0;
    if (!v476)
    {
      goto LABEL_245;
    }
  }

  v484 = sub_2CADC0();
  v486 = v485;

  if (!v486)
  {
    goto LABEL_245;
  }

  v487 = sub_BF40C(v484, v486);
  v489 = v488;

  if (v489)
  {
    v490 = v487;
  }

  else
  {
    v490 = 0;
  }

  v715 = v490;
  if (!v466)
  {
    goto LABEL_244;
  }

LABEL_246:

  v491 = sub_2CADC0();
  v493 = v492;

  if (!v493)
  {
    goto LABEL_249;
  }

  v494 = sub_BF40C(v491, v493);
  v440 = v495;

  v443 = v693;
  if (!v440)
  {
    v496 = 1;
    v497 = v719;
    goto LABEL_250;
  }

  v496 = 1;
  v704 = v494;
LABEL_260:
  v497 = v719;
LABEL_261:
  v512 = *(v497 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_attributes);
  v513 = v697;
  v514 = v701;
  (v696)(v697, v670, v701);

  v515 = sub_17F758(v513, v512);

  (v668)(v513, v514);
  v516 = 2;
  if ((v515 & 1) == 0)
  {
    v516 = v496;
  }

  v708 = v516;
  v517 = sub_7EF68(*(v497 + 16));
  if (!v518)
  {
    goto LABEL_279;
  }

  v519 = sub_BF40C(v517, v518);
  v521 = v520;

  if (v717)
  {
    if (v521)
    {
      if (v443)
      {
        if (v443 == 2)
        {
          v522 = v717;

          v443 = 0;
          v702 = 0;
          v704 = v694;
          v440 = v522;
LABEL_278:

          v715 = v519;
          goto LABEL_279;
        }

        goto LABEL_271;
      }

      goto LABEL_273;
    }
  }

  else if (v521)
  {
    if (v443)
    {
LABEL_271:
      v523 = v443 == 2;
      if (v440)
      {
        goto LABEL_278;
      }

LABEL_274:
      if (v523)
      {
        v702 = (&dword_0 + 2);
        goto LABEL_280;
      }

      v440 = 0;
      goto LABEL_278;
    }

LABEL_273:
    v523 = 1;
    if (v440)
    {
      goto LABEL_278;
    }

    goto LABEL_274;
  }

LABEL_279:
  v519 = v704;
  v521 = v440;
LABEL_280:
  v524 = v497;
  v525 = sub_7EF68(*(v497 + 24));
  if (v526)
  {
    v527 = sub_BF40C(v525, v526);
    v529 = v528;
  }

  else
  {
    v527 = 0;
    v529 = 0;
  }

  v530 = sub_7EFAC(*(v524 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appMusicArtistNames));
  if (v531)
  {
    v534 = v530;
    v712 = v533;
    v713 = v532;
  }

  else
  {
    v534 = sub_7EFAC(*(v524 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_appAudiobookAuthors));
    v713 = v535;
    v712 = v536;
    if (!v531)
    {
      v714 = 0;
      goto LABEL_288;
    }
  }

  v714 = v531;
  v537 = sub_BF40C(v534, v531);
  if (v538)
  {
    v539 = v537;
    v540 = v538;

    v527 = v539;
    v529 = v540;
  }

LABEL_288:
  v709 = v534;
  if (!v717)
  {
    if (v529)
    {
      if (!v443)
      {
        v542 = 0;
        v543 = 0;
        if (v521)
        {
          goto LABEL_296;
        }

        goto LABEL_300;
      }

      goto LABEL_295;
    }

LABEL_297:
    v527 = v519;
    v529 = v521;
LABEL_304:
    v544 = v702;
    goto LABEL_305;
  }

  if (!v529)
  {
    goto LABEL_297;
  }

  if (!v443)
  {
    v543 = 0;
    v542 = 1;
    if (v521)
    {
      goto LABEL_296;
    }

    goto LABEL_300;
  }

  if (v443 == 3)
  {
    v541 = v717;

    *&v718 = v527;
LABEL_317:

    v717 = v541;
    goto LABEL_319;
  }

LABEL_295:
  v542 = 0;
  v543 = v443 != 3;
  if (v521)
  {
LABEL_296:
    *&v718 = v527;
    v529 = v521;
LABEL_303:

    v527 = v519;
    goto LABEL_304;
  }

LABEL_300:
  if (v543 || (v542 & 1) != 0)
  {
    *&v718 = v527;
    v529 = 0;
    goto LABEL_303;
  }

  if (v714)
  {

    v562 = v712;

    v702 = (&dword_0 + 3);
    v699 = v713;
    v710 = v562;
    v519 = v527;
    goto LABEL_303;
  }

  v544 = (&dword_0 + 3);
LABEL_305:
  if (!v544 || v443)
  {
    if (v443 == 18)
    {
      if (v544 == &dword_4 + 1)
      {
        v443 = 5;
      }

      else
      {
        v443 = 18;
      }
    }
  }

  else
  {
    v443 = v544;
  }

  if (!v717)
  {
    goto LABEL_315;
  }

  if (!v443)
  {
    v541 = v717;
    goto LABEL_317;
  }

  if (v529)
  {
LABEL_315:
    v694 = v527;
    goto LABEL_319;
  }

LABEL_319:
  if (sub_2CD920())
  {
    sub_2CD4F0();
  }

  sub_334A0(0, &qword_34D6E0, INMediaSearch_ptr);
  v711 = v675;

  v545 = sub_2CE630();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v546 = v690;
  v547 = sub_3ED0(v690, static Logger.default);
  swift_beginAccess();
  v548 = v689;
  v549 = v688;
  (*(v689 + 16))(v688, v547, v546);
  v550 = v545;
  v551 = sub_2CDFE0();
  v552 = sub_2CE690();

  if (os_log_type_enabled(v551, v552))
  {
    v553 = swift_slowAlloc();
    v554 = swift_slowAlloc();
    v720 = v554;
    *v553 = 136315138;
    v555 = v550;
    v556 = [v555 description];
    v557 = sub_2CE270();
    v559 = v558;

    v560 = sub_3F08(v557, v559, &v720);

    *(v553 + 4) = v560;
    _os_log_impl(&dword_0, v551, v552, "ConverterHelpers#convertMediaSearch mediaSearch: %s", v553, 0xCu);
    sub_306C(v554);

    (*(v689 + 8))(v688, v690);
  }

  else
  {

    (*(v548 + 8))(v549, v546);
  }

  sub_6FB3C(v709, v714);
  sub_30B8(v695, &qword_34D6A0, &unk_2D3490);
  return v550;
}

uint64_t sub_6F404(uint64_t a1)
{
  v2 = sub_20410(&qword_34D710, &qword_2D15E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = sub_20410(&qword_34D718, &unk_2D15F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v19[1] = a1;
  sub_2CD700();

  sub_2CD870();
  v11 = sub_2CD4D0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_30B8(v10, &qword_34D718, &unk_2D15F0);
  }

  else
  {
    v13 = sub_2AA550();
    (*(v12 + 8))(v10, v11);
    if (v13)
    {

      return v13;
    }
  }

  v14 = sub_2CD8A0();

  if (!v14)
  {
    return 0;
  }

  sub_2CB0C0();
  sub_334A0(0, &qword_34D720, INDateComponentsRange_ptr);
  sub_2CB1E0();
  v15 = sub_2CB1F0();
  (*(v3 + 8))(v6, v2);
  v19[0] = sub_2CAD30();
  v15(&v18, v19);

  return v18;
}

uint64_t sub_6F708(uint64_t a1)
{
  v2 = sub_20410(&qword_34D710, &qword_2D15E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-v5];
  v7 = sub_20410(&qword_34D718, &unk_2D15F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16[-v9];
  sub_F3F4(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_decade, &v16[-v9], &qword_34D718, &unk_2D15F0);
  v11 = sub_2CD4D0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_30B8(v10, &qword_34D718, &unk_2D15F0);
  }

  else
  {
    v13 = sub_2AA550();
    (*(v12 + 8))(v10, v11);
    result = v13;
    if (v13)
    {
      return result;
    }
  }

  if (!*(a1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_dateTime))
  {
    return 0;
  }

  sub_2CB0C0();
  sub_334A0(0, &qword_34D720, INDateComponentsRange_ptr);

  sub_2CB1E0();
  v15 = sub_2CB1F0();
  (*(v3 + 8))(v6, v2);
  v18 = sub_2CAD30();
  v15(&v17, &v18);

  return v17;
}

uint64_t sub_6F9E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  v15 = sub_F390(v23);
  (*(*(a7 - 8) + 16))(v15, a1, a7);
  v16 = a2[4];
  sub_35E0(a2, a2[3]);
  sub_EEAC(a3, v22);
  sub_EEAC(a2, v21);
  sub_EEAC(v23, v20);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  sub_F338(v22, (v17 + 5));
  sub_F338(v21, (v17 + 10));
  sub_F338(v20, (v17 + 15));

  v18 = a6;
  sub_2CC2F0();

  return sub_306C(v23);
}

uint64_t sub_6FB3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_6FB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6FC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34D6D0, qword_2D34A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6FC90()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_286F0(v24, &v17);
  if (v18)
  {

    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_28760(&v17);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

void *sub_700E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v27 = v8;
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = a2;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v25[3] = v9;
  v25[4] = &off_337EB0;
  v25[0] = a4;
  _s18NeedsValueStrategyCMa();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v25, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v16;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000011;
  v17[3] = 0x80000000002DA8D0;
  v17[5] = 0xD000000000000019;
  v17[6] = 0x80000000002DB1F0;
  v17[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v24[3] = sub_2CC2B0();
  v24[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v24);
  sub_2CC2A0();
  v23[3] = sub_2CC360();
  v23[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v23);
  sub_2CC350();
  v18 = sub_2CB490();
  v22[3] = v8;
  v22[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v22[0] = v18;
  type metadata accessor for UpdateMediaAffinityDialogProvider();
  v19 = swift_allocObject();
  v19[15] = v17;
  sub_EEAC(v24, (v19 + 16));
  sub_EEAC(v22, (v19 + 21));
  sub_EEAC(v23, (v19 + 3));
  sub_EEAC(v22, (v19 + 8));
  sub_306C(a3);
  sub_306C(v22);
  sub_306C(v23);
  sub_306C(v24);
  v19[13] = 0xD000000000000011;
  v19[14] = 0x80000000002DA8D0;
  v19[2] = a1;
  v10[2] = v19;
  sub_F338(&v26, (v10 + 3));
  sub_306C(v25);
  return v10;
}

void *sub_70384(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v27 = v8;
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v25[3] = v9;
  v25[4] = &off_337EB0;
  v25[0] = a4;
  type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v25, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v16;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000011;
  v17[3] = 0x80000000002DA8D0;
  v17[5] = 0xD000000000000019;
  v17[6] = 0x80000000002DB1F0;
  v17[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v24[3] = sub_2CC2B0();
  v24[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v24);
  sub_2CC2A0();
  v23[3] = sub_2CC360();
  v23[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v23);
  sub_2CC350();
  v18 = sub_2CB490();
  v22[3] = v8;
  v22[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v22[0] = v18;
  type metadata accessor for UpdateMediaAffinityDialogProvider();
  v19 = swift_allocObject();
  v19[15] = v17;
  sub_EEAC(v24, (v19 + 16));
  sub_EEAC(v22, (v19 + 21));
  sub_EEAC(v23, (v19 + 3));
  sub_EEAC(v22, (v19 + 8));
  sub_306C(a2);
  sub_306C(v22);
  sub_306C(v23);
  sub_306C(v24);
  v19[13] = 0xD000000000000011;
  v19[14] = 0x80000000002DA8D0;
  v19[2] = a1;
  v10[2] = v19;
  sub_F338(&v26, (v10 + 3));
  sub_306C(v25);
  return v10;
}

uint64_t sub_70620(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2CB4A0();
  v26[3] = v7;
  v26[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v26[0] = a3;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v8[5] = 0xD000000000000019;
  v8[6] = 0x80000000002DB1F0;
  v8[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v9 = sub_2CC2B0();
  v24 = v9;
  v25 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v23);
  sub_2CC2A0();
  v10 = sub_2CC360();
  v21 = v10;
  v22 = &protocol witness table for StringsFileResolver;
  sub_F390(&v20);
  sub_2CC350();
  v18 = v7;
  v19 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v17 = sub_2CB490();
  type metadata accessor for UpdateMediaAffinityDialogProvider();
  v11 = swift_allocObject();
  v11[15] = v8;
  sub_EEAC(&v23, (v11 + 16));
  sub_EEAC(&v17, (v11 + 21));
  sub_EEAC(&v20, v16);
  sub_F338(&v17, v15);
  sub_306C(&v20);
  sub_306C(&v23);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v16, (v11 + 3));
  sub_F338(v15, (v11 + 8));
  type metadata accessor for UpdateMediaAffinityViewProvider();
  v12 = swift_allocObject();
  sub_10FEB0(&v23, v12);
  *(v12 + 16) = v11;
  sub_F338(&v23, v12 + 24);
  sub_EEAC(v26, &v23);
  v21 = v9;
  v22 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v20);

  sub_2CC2A0();
  v18 = v10;
  v19 = &protocol witness table for StringsFileResolver;
  sub_F390(&v17);
  sub_2CC350();
  *(a4 + 112) = &off_32F5D0;

  sub_306C(a2);
  sub_306C(v26);
  strcpy((a4 + 160), "MediaItemType");
  *(a4 + 174) = -4864;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  sub_F338(&v23, a4 + 32);
  sub_F338(&v20, a4 + 72);
  sub_F338(&v17, a4 + 120);
  return a4;
}

uint64_t sub_708D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v28[3] = v8;
  v28[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v28[0] = a3;
  type metadata accessor for UpdateMediaAffinityCatDialogService();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000011;
  v9[3] = 0x80000000002DA8D0;
  v9[5] = 0xD000000000000019;
  v9[6] = 0x80000000002DB1F0;
  v9[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v26 = v10;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v23 = sub_2CC360();
  v24 = &protocol witness table for StringsFileResolver;
  sub_F390(&v22);
  sub_2CC350();
  v20 = v8;
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = sub_2CB490();
  type metadata accessor for UpdateMediaAffinityDialogProvider();
  v11 = swift_allocObject();
  v11[15] = v9;
  sub_EEAC(&v25, (v11 + 16));
  sub_EEAC(&v19, (v11 + 21));
  sub_EEAC(&v22, v18);
  sub_F338(&v19, v17);
  sub_306C(&v22);
  sub_306C(&v25);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v18, (v11 + 3));
  sub_F338(v17, (v11 + 8));
  sub_EEAC(v28, &v25);
  v23 = v10;
  v24 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v22);
  sub_2CC2A0();
  v12 = type metadata accessor for SiriAudioOutputProvider();
  v13 = swift_allocObject();
  sub_F338(&v22, v13 + 16);
  v23 = v12;
  v24 = &off_337EB0;

  *&v22 = v13;
  sub_306C(a2);
  sub_306C(v28);
  v14 = qword_3566B0;
  v15 = sub_2CA360();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + 16) = v11;
  sub_F338(&v25, a4 + 24);
  sub_F338(&v22, a4 + 64);
  return a4;
}

uint64_t sub_70B6C()
{
  v0 = sub_2CC2B0();
  v108 = *(v0 - 8);
  v1 = *(v108 + 64);
  __chkstk_darwin(v0);
  v107 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_2CC360();
  v102 = *(v109 - 8);
  v3 = *(v102 + 8);
  __chkstk_darwin(v109);
  v101 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34D7C8, &qword_2D1618);
  v106 = *(v5 - 8);
  v6 = *(v106 + 64);
  v7 = __chkstk_darwin(v5);
  v105 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v94 - v9;
  sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v104 = sub_334A0(0, &qword_34D7D0, INUpdateMediaAffinityIntentResponse_ptr);
  sub_2C9780();
  v11 = sub_6FC90();
  sub_2C9A00();
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  _s27NeedsDisambiguationStrategyCMa_1();
  v14 = swift_allocObject();
  v15 = sub_70620(v11, &v142, v13, v14);

  *&v142 = v15;
  sub_72020(&qword_34D7D8, _s27NeedsDisambiguationStrategyCMa_1);
  sub_2C96A0();

  sub_2C9760();
  v16 = sub_6FC90();
  v17 = sub_2CB490();

  sub_2C9A00();
  v140 = v0;
  v141 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v139);
  sub_2CC2A0();
  v18 = type metadata accessor for SiriAudioOutputProvider();
  v19 = swift_allocObject();
  sub_F338(&v139, v19 + 16);
  v20 = sub_700E8(v16, v17, &v142, v19);

  *&v142 = v20;
  _s18NeedsValueStrategyCMa();
  sub_72020(&qword_34D7E0, _s18NeedsValueStrategyCMa);
  sub_2C9630();

  sub_2C96F0();
  v21 = sub_6FC90();
  sub_2C9A00();
  _s25NeedsConfirmationStrategyCMa();
  swift_allocObject();
  v22 = sub_DE190(v21, &v142);

  *&v142 = v22;
  sub_72020(&qword_34D7E8, _s25NeedsConfirmationStrategyCMa);
  sub_2C9690();

  v111 = v5;
  sub_2C9750();
  v23 = sub_6FC90();
  sub_2C9A00();
  v24 = sub_2CB490();
  v25 = _s21ConfirmIntentStrategyCMa_1();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = sub_708D4(v23, &v142, v24, v28);

  *&v142 = v29;
  sub_72020(&qword_34D7F0, _s21ConfirmIntentStrategyCMa_1);
  sub_2C96C0();

  sub_2C9720();
  v30 = sub_6FC90();
  sub_2CC350();
  sub_2C9A00();
  v31 = sub_2CB490();
  v140 = v12;
  v141 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v139 = v31;
  v137 = v0;
  v138 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v136);
  sub_2CC2A0();
  v32 = swift_allocObject();
  sub_F338(&v136, v32 + 16);
  v33 = sub_2CBC40();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_2CBC30();
  v137 = v33;
  v138 = &protocol witness table for AppIntentInvoker;
  *&v136 = v36;
  v134 = v18;
  v135 = &off_337EB0;
  *&v133 = v32;
  updated = type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = sub_F9A0(&v133, v18);
  v39 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v131 = v18;
  v132 = &off_337EB0;
  v44 = v0;
  v103 = v18;
  *&v130 = v43;
  v98 = type metadata accessor for UpdateMediaAffinityCatDialogService();
  v45 = swift_allocObject();
  v97 = 0x80000000002DB1F0;
  v45[2] = 0xD000000000000011;
  v45[3] = 0x80000000002DA8D0;
  v45[5] = 0xD000000000000019;
  v45[6] = 0x80000000002DB1F0;
  v45[4] = v30;
  *(v37 + 16) = v45;
  sub_FA14(_swiftEmptyArrayStorage);

  v128 = v0;
  v129 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v127);
  sub_2CC2A0();
  v46 = v109;
  v126[3] = v109;
  v126[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v126);
  sub_2CC350();
  v47 = sub_2CB490();
  *(&v124 + 1) = v12;
  v125 = &protocol witness table for SiriKitTaskLoggingProvider;
  v110 = v12;
  *&v123 = v47;
  v96 = type metadata accessor for UpdateMediaAffinityDialogProvider();
  v48 = swift_allocObject();
  v48[15] = v45;
  sub_EEAC(&v127, (v48 + 16));
  sub_EEAC(&v123, (v48 + 21));
  sub_EEAC(v126, &v120);
  sub_EEAC(&v123, &v117);
  sub_306C(&v142);
  (*(v102 + 1))(v101, v46);
  sub_306C(&v123);
  sub_306C(v126);
  sub_306C(&v127);
  v48[13] = 0xD000000000000011;
  v48[14] = 0x80000000002DA8D0;
  v101 = 0x80000000002DA8D0;
  v48[2] = v30;
  sub_F338(&v120, (v48 + 3));
  sub_F338(&v117, (v48 + 8));
  *(v37 + 104) = v48;
  sub_F338(&v139, v37 + 24);
  sub_F338(&v130, v37 + 64);
  sub_F338(&v136, v37 + 112);
  sub_306C(&v133);
  *&v142 = v37;
  sub_72020(&qword_34D7F8, type metadata accessor for UpdateMediaAffinity.HandleIntentStrategy);
  sub_2C9640();

  v102 = v10;
  sub_2C9700();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v49 = CATDefaultMode;
  v50 = sub_2CBC00();
  v51 = sub_2CBBF0();
  sub_2C9A00();
  v52 = v107;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v53 = swift_allocObject();
  v140 = &type metadata for StringsBackedAppNameResolver;
  updated = sub_2869C();
  v141 = updated;
  *&v139 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v139 + 16);
  v137 = v50;
  v138 = &protocol witness table for MorphunProvider;
  *&v136 = v51;
  v134 = v0;
  v135 = &protocol witness table for FeatureFlagProvider;
  v54 = sub_F390(&v133);
  (*(v108 + 16))(v54, v52, v0);
  *(v53 + 296) = v49;
  sub_EEAC(&v133, v53 + 256);
  sub_EEAC(&v139, &v130);
  sub_EEAC(&v136, &v127);
  sub_EEAC(&v142, v126);
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v55 = sub_2CCA30();

  v56 = sub_2CCA20();
  v121 = v55;
  v122 = &protocol witness table for MultiUserConnectionProvider;
  *&v120 = v56;
  v57 = sub_2CB9E0();
  v118 = v57;
  v119 = &protocol witness table for DeviceProvider;
  sub_F390(&v117);
  sub_2CB9C0();
  sub_EEAC(&v130, v53 + 16);
  sub_EEAC(&v127, v53 + 216);
  sub_EEAC(v126, v53 + 56);
  sub_EEAC(&v120, v53 + 96);
  sub_EEAC(&v117, v53 + 176);
  sub_286F0(&v123, &v112);
  if (v113)
  {

    sub_28760(&v123);
    sub_306C(v126);
    sub_306C(&v127);
    sub_306C(&v130);
    (*(v108 + 8))(v107, v44);
    sub_306C(&v142);
    sub_306C(&v133);
    sub_306C(&v136);
    sub_306C(&v139);
    sub_306C(&v117);
    sub_306C(&v120);
    sub_F338(&v112, &v114);
  }

  else
  {
    sub_EEAC(v126, &v114);
    v58 = sub_2C9E60();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = sub_2C9E50();
    v115 = v58;
    v116 = &protocol witness table for ContactsManager;

    *&v114 = v61;
    sub_28760(&v123);
    sub_306C(v126);
    sub_306C(&v127);
    sub_306C(&v130);
    (*(v108 + 8))(v107, v44);
    sub_306C(&v142);
    sub_306C(&v133);
    sub_306C(&v136);
    sub_306C(&v139);
    sub_306C(&v117);
    sub_306C(&v120);
    if (v113)
    {
      sub_28760(&v112);
    }
  }

  sub_F338(&v114, v53 + 136);
  v62 = swift_allocObject();
  v63 = v97;
  v64 = v101;
  v62[2] = 0xD000000000000011;
  v62[3] = v64;
  v62[5] = 0xD000000000000019;
  v62[6] = v63;
  v62[4] = v53;
  sub_FA14(_swiftEmptyArrayStorage);
  v99 = v53;
  swift_retain_n();

  sub_2C9A00();
  v140 = v44;
  v141 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v139);
  sub_2CC2A0();
  v137 = v109;
  v138 = &protocol witness table for StringsFileResolver;
  sub_F390(&v136);
  sub_2CC350();
  v65 = v110;
  v66 = sub_2CB490();
  v134 = v65;
  v135 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v133 = v66;
  v67 = swift_allocObject();
  v67[15] = v62;
  sub_EEAC(&v139, (v67 + 16));
  sub_EEAC(&v133, (v67 + 21));
  sub_EEAC(&v136, &v130);
  sub_EEAC(&v133, &v127);
  sub_306C(&v142);
  sub_306C(&v133);
  sub_306C(&v136);
  sub_306C(&v139);
  v67[13] = 0xD000000000000011;
  v67[14] = v64;
  v67[2] = v53;
  sub_F338(&v130, (v67 + 3));
  sub_F338(&v127, (v67 + 8));
  type metadata accessor for UpdateMediaAffinityViewProvider();
  v68 = swift_allocObject();
  v69 = v67;
  v70 = swift_retain_n();
  sub_10FEB0((v68 + 24), v70);
  v71 = updated;
  v143 = &type metadata for StringsBackedAppNameResolver;
  v144 = updated;
  *&v142 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v142 + 16);
  v140 = v57;
  v141 = &protocol witness table for DeviceProvider;
  sub_F390(&v139);
  sub_2CB9C0();
  v137 = v44;
  v138 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v136);
  sub_2CC2A0();
  v134 = sub_2CC810();
  v135 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v133);
  sub_2CC800();
  v131 = sub_2CC590();
  v132 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v130);
  sub_2CC580();
  v72 = sub_20410(&qword_34D800, &qword_2D1628);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  v75 = swift_allocObject();
  v76 = class metadata base offset for CommonAppResolver;
  v77 = v75 + *(*v75 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v77, "resolutionType");
  v77[15] = -18;
  sub_EEAC(&v142, v75 + *(*v75 + v76 + 16));
  sub_EEAC(&v139, v75 + *(*v75 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(&v136, v75 + *(*v75 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(&v133, v75 + *(*v75 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(&v130, v75 + *(*v75 + class metadata base offset for CommonAppResolver + 48));
  v78 = sub_2CCF50();
  sub_306C(&v130);
  sub_306C(&v133);
  sub_306C(&v136);
  sub_306C(&v139);
  sub_306C(&v142);
  sub_2C9A00();
  v140 = &type metadata for StringsBackedAppNameResolver;
  v141 = v71;
  *&v139 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v139 + 16);
  v95 = v44;
  v137 = v44;
  v138 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v136);
  sub_2CC2A0();
  v134 = v44;
  v135 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v133);
  sub_2CC2A0();
  v79 = v103;
  v80 = swift_allocObject();
  sub_F338(&v133, v80 + 16);
  v134 = v79;
  v135 = &off_337EB0;
  *&v133 = v80;
  swift_setDeallocating();
  sub_306C((v68 + 24));
  swift_deallocClassInstance();
  sub_20410(&qword_34D808, &qword_2D1630);
  v81 = swift_allocObject();
  v81[26] = 0;
  v81[2] = v78;
  v81[3] = v69;
  v81[4] = sub_107D74;
  v81[5] = 0;
  sub_F338(&v142, (v81 + 6));
  sub_F338(&v139, (v81 + 11));
  sub_F338(&v136, (v81 + 16));
  sub_F338(&v133, (v81 + 21));
  *&v142 = v81;
  sub_72068(&qword_34D810, &qword_34D808, &qword_2D1630);
  sub_2C9660();

  v82 = v111;
  v83 = v102;
  sub_2C9710();
  *&v142 = sub_10D76C(v69);
  sub_20410(&qword_34D818, &qword_2D1638);
  sub_72068(&qword_34D820, &qword_34D818, &qword_2D1638);
  sub_2C96B0();

  sub_2C9770();
  v84 = sub_6FC90();
  sub_2C9A00();
  v85 = sub_2CB490();
  v140 = v95;
  v141 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v139);

  sub_2CC2A0();
  v86 = swift_allocObject();
  sub_F338(&v139, v86 + 16);
  v87 = sub_70384(v84, &v142, v85, v86);

  *&v142 = v87;
  type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();
  sub_72020(&qword_34D828, type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  sub_20410(&qword_34D830, &qword_2D1640);
  *&v142 = swift_allocObject();
  sub_72068(&qword_34D838, &qword_34D830, &qword_2D1640);
  sub_2C9670();

  sub_2C9730();
  v88 = v106;
  (*(v106 + 16))(v105, v83, v82);
  v89 = sub_20410(&qword_34D840, qword_2D1648);
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  v92 = sub_2C96E0();

  (*(v88 + 8))(v83, v82);
  return v92;
}

uint64_t sub_72020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_72068(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2DB30(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_720B4(char a1)
{
  result = 0x747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6D656D20646E6162;
      break;
    case 2:
      result = 0x656D757274736E69;
      break;
    case 3:
      result = 0x6F746375646E6F63;
      break;
    case 4:
      result = 0x736C61636F76;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7265736F706D6F63;
      break;
    case 10:
      result = 0x726574697277;
      break;
    case 11:
      result = 0x6E6520646E756F73;
      break;
    case 12:
      result = 0x72656375646F7270;
      break;
    case 13:
      result = 0x726567616E616DLL;
      break;
    default:
      return result;
  }

  return result;
}