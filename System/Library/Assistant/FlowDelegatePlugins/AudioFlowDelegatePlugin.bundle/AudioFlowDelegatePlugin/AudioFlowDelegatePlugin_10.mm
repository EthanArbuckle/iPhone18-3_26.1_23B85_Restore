uint64_t sub_11F0B8(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v36 - v14;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v16 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v13, v16, v8);
    swift_errorRetain();
    v17 = sub_2CDFE0();
    v18 = sub_2CE680();
    sub_A41AC(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36[0] = a4;
      v36[1] = a1;
      v21 = a3;
      v22 = v20;
      v37 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v23 = sub_2CE2A0();
      v25 = sub_3F08(v23, v24, &v37);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_0, v17, v18, "PlayMediaViewProvider#makeSuggestionView error while creating suggestionView: %{public}s", v19, 0xCu);
      sub_306C(v22);
      a3 = v21;
    }

    (*(v9 + 8))(v13, v8);
    a1 = 0;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v15, v26, v8);
    v27 = a1;
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();
    sub_A41AC(a1, 0);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36[0] = a4;
      v31 = a3;
      v32 = v30;
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v27;
      *v33 = a1;
      v34 = v27;
      _os_log_impl(&dword_0, v28, v29, "PlayMediaViewProvider#makeSuggestionView created snippet: %@", v32, 0xCu);
      sub_30B8(v33, &unk_34FC00, &unk_2D0150);

      a3 = v31;
    }

    (*(v9 + 8))(v15, v8);
  }

  return a3(a1);
}

uint64_t sub_11F4BC(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = *(*(sub_20410(&qword_3519C8, &qword_2D49D0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = sub_2CD1D0();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = sub_2CE000();
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_11F61C, 0, 0);
}

uint64_t sub_11F61C()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = sub_3ED0(v2, static Logger.default);
  *(v0 + 160) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 168) = v5;
  *(v0 + 176) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2CDFE0();
  v7 = sub_2CE660();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "PlayMediaViewProvider#suggestionView Creating suggestions view.", v8, 2u);
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 120);

  v13 = *(v11 + 8);
  *(v0 + 184) = v13;
  v13(v9, v10);
  sub_2CE270();
  sub_2CD1C0();
  sub_2CD1B0();
  *(v0 + 192) = sub_2CD1A0();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v14 = sub_90968(_swiftEmptyArrayStorage);
  *(v0 + 200) = v14;
  v15 = async function pointer to SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)[1];
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *v16 = v0;
  v16[1] = sub_11FA38;
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v21 = *(v0 + 120);

  return SiriSuggestionsFacade.doSiriHints(requestId:applicationSessionId:sourceOwner:intentProperties:verb:executionProperties:executionContextData:suggestionCallback:)(v17, v18, 0, 0, v0 + 16, v14, 0, 0);
}

uint64_t sub_11FA38()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  v6 = v2[24];
  sub_30B8((v2 + 2), &unk_3519D0, &unk_2D49E0);

  if (v0)
  {
    v7 = sub_11FD40;
  }

  else
  {
    v7 = sub_11FBAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_11FBAC()
{
  v1 = *(v0 + 96);
  v2 = sub_2CD160();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  if (v4 == 1)
  {
    (*(v6 + 8))(*(v0 + 120), *(v0 + 104));
    sub_30B8(v1, &qword_3519C8, &qword_2D49D0);
    v8 = 0;
  }

  else
  {
    v8 = sub_2CD150();
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v1, v2);
  }

  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  **(v0 + 80) = v8;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_11FD40()
{
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
  swift_errorRetain();
  v3 = sub_2CDFE0();
  v4 = sub_2CE680();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "PlayMediaViewProvider#suggestionView Error SiriSuggestions view: %@", v5, 0xCu);
    sub_30B8(v6, &unk_34FC00, &unk_2D0150);
  }

  else
  {
  }

  v8 = *(v0 + 136) + 8;
  (*(v0 + 184))(*(v0 + 144), *(v0 + 128));
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  **(v0 + 80) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_11FF18(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t), unint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v48 = a1;
  v49 = a2;
  v8 = sub_20410(&qword_3519E8, &qword_2D49F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v45 - v19;
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  v23 = sub_1D2364(&off_330390);
  sub_F1954(&unk_3303B0);
  if ((v23 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a3, &off_3303C0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v17, v24, v12);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "PlayMediaViewProvider won't build alternatives for story telling.", v27, 2u);
    }

    (*(v13 + 8))(v17, v12);
LABEL_8:
    v28 = sub_20410(&qword_3519F0, &qword_2D49F8);
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    v48(v11);
    return sub_30B8(v11, &qword_3519E8, &qword_2D49F0);
  }

  v30 = [a3 hashedRouteUIDs];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2CE410();

    v33 = *(v32 + 16);

    if (v33)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v34 = sub_3ED0(v12, static Logger.default);
      swift_beginAccess();
      (*(v13 + 16))(v20, v34, v12);
      v35 = sub_2CDFE0();
      v36 = sub_2CE690();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "PlayMediaViewProvider won't build alternatives for whole house audio requests. hashedRouteUIDs present.", v37, 2u);
      }

      (*(v13 + 8))(v20, v12);
      goto LABEL_8;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v22, v38, v12);
  v39 = sub_2CDFE0();
  v40 = sub_2CE670();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "PlayMediaViewProvider building alternative section...", v41, 2u);
  }

  (*(v13 + 8))(v22, v12);
  v42 = sub_35E0((a4 + 144), *(a4 + 168));
  v43 = swift_allocObject();
  *(v43 + 16) = v48;
  *(v43 + 24) = v49;
  v44 = *v42;

  sub_2ABBA8(v46, v47, a3, sub_13D8C, v43);
}

uint64_t sub_1204B8()
{
  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  sub_306C((v0 + 144));
  sub_306C((v0 + 184));

  return sub_306C((v0 + 232));
}

uint64_t sub_1204FC()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 24));

  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  sub_306C((v0 + 144));
  sub_306C((v0 + 184));

  sub_306C((v0 + 232));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayMediaViewProvider()
{
  result = qword_351770;
  if (!qword_351770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_120630()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  if (sub_2CB460())
  {

    sub_2CB130();

    v24 = sub_2CD3F0();

    sub_2CB130();

    v8 = sub_2CD3B0();
  }

  else
  {
    v8 = 0;
    v24 = 0;
  }

  v23 = v8;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  v10 = v1[2];
  v10(v7, v9, v0);
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v1;
    *v13 = 67109120;
    *(v13 + 4) = v24 & 1;
    _os_log_impl(&dword_0, v11, v12, "PlayMediaViewProvider#doesSnippetNeedUISessionID isSystemApertureEnabled: %{BOOL}d", v13, 8u);
    v1 = v22;
  }

  v14 = v1[1];
  v14(v7, v0);
  v10(v5, v9, v0);
  v15 = sub_2CDFE0();
  v16 = sub_2CE670();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v23;
  if (v17)
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v18 & 1;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaViewProvider#doesSnippetNeedUISessionID isInAmbient: %{BOOL}d", v19, 8u);
  }

  v14(v5, v0);
  return (v24 | v18) & 1;
}

uint64_t sub_120964(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, void (*a6)(uint64_t **), uint64_t a7)
{
  v191 = a5;
  v196 = a4;
  v197 = a3;
  v11 = sub_2CDFD0();
  v193 = *(v11 - 8);
  v194 = v11;
  v12 = *(v193 + 64);
  v13 = __chkstk_darwin(v11);
  v188 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v14;
  __chkstk_darwin(v13);
  v192 = &v180 - v15;
  v186 = sub_2C8E80();
  v185 = *(v186 - 8);
  v16 = *(v185 + 64);
  __chkstk_darwin(v186);
  v184 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v202 = v18;
  v203 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v189 = &v180 - v25;
  v26 = __chkstk_darwin(v24);
  v195 = &v180 - v27;
  v28 = __chkstk_darwin(v26);
  v190 = &v180 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v180 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v180 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v180 - v37;
  __chkstk_darwin(v36);
  v40 = &v180 - v39;
  v41 = swift_allocObject();
  v199 = a6;
  *(v41 + 16) = a6;
  *(v41 + 24) = a7;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_121F80;
  *(v42 + 24) = v41;
  v200 = v42;
  v198 = a7;
  v43 = a2;

  v201 = v41;

  if (sub_2CE860())
  {
    sub_2CCF90();
    if (v44)
    {
      v45 = sub_2CBDB0();

      if (v45)
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v46 = v202;
        v47 = sub_3ED0(v202, static Logger.default);
        swift_beginAccess();
        (*(v203 + 16))(v40, v47, v46);
        v48 = sub_2CDFE0();
        v49 = sub_2CE670();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v48, v49, "PlayMediaViewProvider#makeViews fallbackImplicitRecommendation scenario, override bundleIdentifier with fallback", v50, 2u);
        }

        v51 = v40;
        v52 = v202;
        (*(v203 + 8))(v51, v202);
        v53 = sub_2CBE10();
        v55 = v54;
LABEL_11:
        if (!sub_2CE810())
        {

          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v66 = sub_3ED0(v52, static Logger.default);
          swift_beginAccess();
          v67 = v203;
          (*(v203 + 16))(v38, v66, v52);
          v68 = sub_2CDFE0();
          v69 = sub_2CE670();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_0, v68, v69, "PlayMediaViewProvider#makeViews won't return an AceView because no view actions on next/later destinations (or create radio)", v70, 2u);
          }

          (*(v67 + 8))(v38, v52);
          goto LABEL_81;
        }

        v58 = [a1 mediaItems];
        if (v58)
        {
          v59 = v58;
          sub_334A0(0, &qword_356F50, INMediaItem_ptr);
          v60 = sub_2CE410();

          if (v60 >> 62)
          {
            if (sub_2CEDA0())
            {
              goto LABEL_15;
            }
          }

          else if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_15:
            if ([v197 code] != &dword_4 && objc_msgSend(v197, "code") != &dword_0 + 1)
            {

              if (qword_34BF58 != -1)
              {
                swift_once();
              }

              v85 = sub_3ED0(v52, static Logger.default);
              swift_beginAccess();
              v86 = v203;
              v87 = v189;
              (*(v203 + 16))(v189, v85, v52);
              v88 = v52;
              v89 = v197;
              v90 = sub_2CDFE0();
              v91 = sub_2CE660();

              if (os_log_type_enabled(v90, v91))
              {
                v92 = swift_slowAlloc();
                v93 = swift_slowAlloc();
                v207 = v93;
                *v92 = 136446210;
                v206 = [v89 code];
                v94 = sub_2CEE70();
                v96 = sub_3F08(v94, v95, &v207);

                *(v92 + 4) = v96;
                _os_log_impl(&dword_0, v90, v91, "PlayMediaViewProvider#makeViews won't return an AceView because non-success code: %{public}s", v92, 0xCu);
                sub_306C(v93);
              }

              (*(v86 + 8))(v87, v88);
              goto LABEL_81;
            }

            if (sub_2CB640())
            {

              if (qword_34BF58 != -1)
              {
                swift_once();
              }

              v61 = sub_3ED0(v52, static Logger.default);
              swift_beginAccess();
              v62 = v203;
              (*(v203 + 16))(v32, v61, v52);
              v63 = sub_2CDFE0();
              v64 = sub_2CE660();
              if (os_log_type_enabled(v63, v64))
              {
                v65 = swift_slowAlloc();
                *v65 = 0;
                _os_log_impl(&dword_0, v63, v64, "PlayMediaViewProvider#makeViews won't return an AceView for CarPlay", v65, 2u);
              }

              (*(v62 + 8))(v32, v52);
LABEL_81:
              v207 = _swiftEmptyArrayStorage;
              v208 = 0;
              v199(&v207);
            }

            v189 = v60;
            v79 = sub_2CCF90();
            v81 = v80;
            v82 = sub_2CBE10();
            if (v81)
            {
              v84 = v195;
              if (v79 == v82 && v81 == v83)
              {

LABEL_46:

                goto LABEL_47;
              }

              v97 = sub_2CEEA0();

              if (v97)
              {
LABEL_47:
                v99 = sub_2CE830();
                v100 = v196;
                if ((v99 ^ v196))
                {
LABEL_48:
                  v101 = [objc_allocWithZone(SFMediaRemoteControlCardSection) init];
                  v102 = v184;
                  sub_2C8E70();
                  sub_2C8E50();
                  (*(v185 + 8))(v102, v186);
                  v103 = sub_2CE260();

                  [v101 setCardSectionId:v103];

                  sub_2CCF90();
                  if (v104)
                  {
                    v105 = sub_2CE260();
                  }

                  else
                  {
                    v105 = 0;
                  }

                  [v101 setPlaybackBundleIdentifier:v105];

                  v122 = [a1 hashedRouteUIDs];
                  v123 = v203;
                  v183 = a1;
                  v182 = v55;
                  v181 = v53;
                  if (v122)
                  {
                    v124 = v122;
                    v125 = sub_2CE410();

                    if (v125[2])
                    {
                      v127 = v125[4];
                      v126 = v125[5];

                      if (qword_34BF58 != -1)
                      {
                        swift_once();
                      }

                      v128 = sub_3ED0(v52, static Logger.default);
                      swift_beginAccess();
                      (*(v123 + 16))(v84, v128, v52);

                      v129 = sub_2CDFE0();
                      v130 = sub_2CE660();

                      if (os_log_type_enabled(v129, v130))
                      {
                        v131 = swift_slowAlloc();
                        v132 = v52;
                        v133 = swift_slowAlloc();
                        v207 = v133;
                        *v131 = 136315138;
                        *(v131 + 4) = sub_3F08(v127, v126, &v207);
                        _os_log_impl(&dword_0, v129, v130, "PlayMediaViewProvider#makeViews rendering snippet with route: %s", v131, 0xCu);
                        sub_306C(v133);

                        v134 = v132;
                        a1 = v183;
                        (*(v123 + 8))(v195, v134);
                      }

                      else
                      {

                        (*(v123 + 8))(v84, v52);
                      }

                      v135 = sub_2CE260();

                      [v101 setPlaybackRouteUniqueIdentifier:v135];

                      [v101 setPlaybackRouteUniqueIdentifierIsEncrypted:1];
                    }

                    else
                    {
                    }
                  }

                  v136 = swift_allocObject();
                  sub_20410(&unk_351900, &unk_2D0960);
                  v137 = swift_allocObject();
                  *(v137 + 16) = xmmword_2D0770;
                  *(v137 + 32) = v101;
                  v203 = v136;
                  *(v136 + 16) = v137;
                  v138 = qword_34BF98;
                  v139 = v101;
                  if (v138 != -1)
                  {
                    swift_once();
                  }

                  v140 = qword_35F760;
                  v141 = v192;
                  sub_2CDFB0();
                  sub_2CE9E0();
                  sub_2CDF90();
                  sub_120630();
                  v142 = swift_allocObject();
                  *(v142 + 16) = 0u;
                  *(v142 + 32) = 0u;
                  *(v142 + 48) = 0u;
                  *(v142 + 64) = 0;
                  if (qword_34BF90 != -1)
                  {
                    swift_once();
                  }

                  v202 = qword_351740;
                  sub_20410(&qword_34F2A8, &qword_2D4990);
                  v143 = swift_allocObject();
                  *(v143 + 16) = xmmword_2D1010;
                  v144 = swift_allocObject();
                  v145 = v191;
                  v144[2] = v191;
                  v144[3] = v43;
                  v146 = v145;
                  v144[4] = v189;
                  v144[5] = a1;
                  v144[6] = v142;
                  *(v143 + 32) = sub_121FC4;
                  *(v143 + 40) = v144;
                  v147 = swift_allocObject();
                  v147[2] = v146;
                  v147[3] = v43;
                  v147[4] = a1;
                  v147[5] = v142;
                  v147[6] = v139;
                  *(v143 + 48) = sub_121FDC;
                  *(v143 + 56) = v147;
                  v148 = swift_allocObject();
                  *(v148 + 16) = v146;
                  *(v148 + 24) = v142;
                  *(v143 + 64) = sub_12200C;
                  *(v143 + 72) = v148;
                  v149 = swift_allocObject();
                  v149[2] = v146;
                  v149[3] = a1;
                  v149[4] = v142;
                  *(v143 + 80) = sub_122014;
                  *(v143 + 88) = v149;
                  v198 = v43;
                  v150 = v193;
                  v151 = *(v193 + 16);
                  v195 = v142;
                  v152 = v188;
                  v151(v188, v141, v194);
                  v153 = (*(v150 + 80) + 40) & ~*(v150 + 80);
                  v154 = (v187 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v155 = (v154 + 23) & 0xFFFFFFFFFFFFFFF8;
                  v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
                  v190 = ((v156 + 15) & 0xFFFFFFFFFFFFFFF8);
                  v157 = (v156 + 39) & 0xFFFFFFFFFFFFFFF8;
                  v158 = swift_allocObject();
                  v199 = v139;
                  v159 = v158;
                  v160 = v203;
                  v158[2] = v142;
                  v158[3] = v160;
                  v158[4] = v191;
                  v161 = v152;
                  v162 = v194;
                  (*(v150 + 32))(v158 + v153, v161, v194);
                  v163 = (v159 + v154);
                  v164 = v182;
                  *v163 = v181;
                  v163[1] = v164;
                  *(v159 + v155) = v198;
                  v165 = v183;
                  *(v159 + v156) = v183;
                  v166 = &v190[v159];
                  v167 = v200;
                  *v166 = sub_333BC;
                  *(v166 + 1) = v167;
                  v166[16] = v196 & 1;
                  v168 = v197;
                  *(v159 + v157) = v197;
                  swift_retain_n();
                  swift_retain_n();
                  v169 = v165;
                  swift_retain_n();
                  v170 = v169;
                  v171 = v199;
                  v172 = v170;

                  v173 = v168;
                  sub_2CCC70();

                  (*(v193 + 8))(v192, v162);
                }

                v106 = v99;

                v107 = v100 & 1;
                v108 = v106 & 1;
LABEL_51:

                v109 = v203;
                if (qword_34BF58 != -1)
                {
                  swift_once();
                }

                v110 = v202;
                v111 = sub_3ED0(v202, static Logger.default);
                swift_beginAccess();
                v112 = v190;
                (*(v109 + 16))(v190, v111, v110);
                v113 = sub_2CDFE0();
                v114 = sub_2CE660();
                if (os_log_type_enabled(v113, v114))
                {
                  v115 = swift_slowAlloc();
                  v116 = swift_slowAlloc();
                  v207 = v116;
                  *v115 = 136446722;
                  v117 = sub_2CCC90();
                  v119 = v107;
                  v120 = sub_3F08(v117, v118, &v207);

                  *(v115 + 4) = v120;
                  *(v115 + 12) = 1026;
                  *(v115 + 14) = v119;
                  *(v115 + 18) = 1026;
                  *(v115 + 20) = v108;
                  _os_log_impl(&dword_0, v113, v114, "PlayMediaViewProvider#makeViews %{public}s suppressing view: interstitial?:%{BOOL,public}d renderInHandle: %{BOOL,public}d", v115, 0x18u);
                  sub_306C(v116);

                  (*(v109 + 8))(v190, v110);
                }

                else
                {

                  (*(v109 + 8))(v112, v110);
                }

                goto LABEL_81;
              }
            }

            else
            {

              v84 = v195;
            }

            if (v53 == sub_2CBE30() && v55 == v98)
            {
              goto LABEL_46;
            }

            v121 = sub_2CEEA0();

            if ((v121 & 1) == 0)
            {
              if (v196)
              {
                goto LABEL_48;
              }

              v108 = 0;
              v107 = 0;
              goto LABEL_51;
            }

            goto LABEL_47;
          }
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v174 = sub_3ED0(v52, static Logger.default);
        swift_beginAccess();
        v175 = v203;
        (*(v203 + 16))(v35, v174, v52);
        v176 = sub_2CDFE0();
        v177 = sub_2CE680();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          *v178 = 0;
          _os_log_impl(&dword_0, v176, v177, "PlayMediaViewProvider#makeViews won't return an AceView because nil or empty mediaItems", v178, 2u);
        }

        (*(v175 + 8))(v35, v52);
        goto LABEL_81;
      }
    }
  }

  v56 = sub_2CCF90();
  if (v57)
  {
    v53 = v56;
    v55 = v57;
    v52 = v202;
    goto LABEL_11;
  }

  v71 = v202;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v72 = sub_3ED0(v71, static Logger.default);
  swift_beginAccess();
  v73 = v203;
  (*(v203 + 16))(v23, v72, v71);
  v74 = sub_2CDFE0();
  v75 = sub_2CE680();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_0, v74, v75, "PlayMediaViewProvider#makeViews missing app bundle identifier", v76, 2u);
  }

  (*(v73 + 8))(v23, v71);
  sub_10C40();
  v77 = swift_allocError();
  *v78 = 0xD00000000000001DLL;
  v78[1] = 0x80000000002DD6F0;
  v204 = v77;
  v205 = 1;
  v199(&v204);
}

uint64_t sub_121F80(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

void sub_122020()
{
  v1 = *(sub_2CDFD0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8));
  sub_11D224(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1220F8(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, uint64_t a5, void *a6)
{
  v118 = a6;
  v119 = a3;
  v120 = a4;
  v8 = sub_20410(&unk_3519B0, &qword_2D1230);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v111 - v10;
  v12 = sub_2C8E80();
  v13 = *(v12 - 8);
  v116 = v12;
  *&v117 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v115 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v111 - v23;
  __chkstk_darwin(v22);
  v26 = &v111 - v25;
  v27 = [a2 mediaItems];
  if (!v27)
  {
    goto LABEL_57;
  }

  v28 = v27;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v29 = sub_2CE410();

  if (v29 >> 62)
  {
    if (sub_2CEDA0())
    {
      goto LABEL_4;
    }

LABEL_56:

    goto LABEL_57;
  }

  if (!*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_56;
  }

LABEL_4:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_66;
    }

    v30 = *(v29 + 32);
  }

  v31 = v30;

  v32 = [v31 privateMediaItemValueData];

  if (v32)
  {
    v114 = v32;
    v33 = sub_2CCF90();
    v35 = v34;
    v36 = sub_2CBE10();
    if (v35)
    {
      if (v33 == v36 && v35 == v37)
      {

        v38 = 0;
      }

      else
      {
        v39 = sub_2CEEA0();

        v38 = v39 ^ 1;
      }
    }

    else
    {

      v38 = 1;
    }

    v29 = v114;
    v40 = [v114 provider];
    if (!v40)
    {
      goto LABEL_47;
    }

    v41 = v40;
    v42 = sub_2CE270();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    v46 = (v44 & 0x2000000000000000) == 0;
    v29 = v114;
    if (v46)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v38 & 1 | (v45 == 0))
    {
      goto LABEL_47;
    }

    v47 = [v114 bundleId];
    if (v47)
    {
      v48 = v47;
      v49 = sub_2CE270();
      v51 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v51 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v51)
      {
        v52 = [v29 providerAppName];
        if (v52)
        {
          v53 = v52;
          v54 = sub_2CE270();
          v56 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v56 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            v113 = v54;
            v57 = v29;
            v58 = [objc_allocWithZone(SAUIAppPunchOut) init];
            [v58 setBundleId:v48];

            [v58 setAppDisplayName:v53];
            [v58 setAppAvailableInStorefront:1];
            v59 = v58;
            v60 = v115;
            sub_2C8E70();
            sub_2C8E50();
            v61 = *(v117 + 8);
            *&v117 = v117 + 8;
            v112 = v61;
            v61(v60, v116);
            v62 = sub_2CE260();

            [v59 setAceId:v62];

            v63 = [v57 universalResourceLink];
            if (v63)
            {
              v64 = v63;
              v65 = sub_2CE270();
              v67 = v66;

              v68 = HIBYTE(v67) & 0xF;
              if ((v67 & 0x2000000000000000) == 0)
              {
                v68 = v65 & 0xFFFFFFFFFFFFLL;
              }

              if (v68)
              {
                v69 = [v114 universalResourceLink];
                if (!v69)
                {

                  __break(1u);
                  return;
                }

                v70 = v69;

                sub_2CE270();

                sub_2C8D80();

                v71 = sub_2C8D90();
                v72 = *(v71 - 8);
                v74 = 0;
                if ((*(v72 + 48))(v11, 1, v71) != 1)
                {
                  sub_2C8D50(v73);
                  v74 = v75;
                  (*(v72 + 8))(v11, v71);
                }

                [v59 setPunchOutUri:v74];

                goto LABEL_52;
              }
            }

LABEL_52:
            v87 = v59;
            v88 = sub_2C9C60();

            v89 = [objc_allocWithZone(SFAttributionFooterCardSection) init];
            v90 = sub_2C9C50();

            [v89 setTrailingAttribution:v90];

            v91 = v89;
            v92 = v115;
            sub_2C8E70();
            sub_2C8E50();
            v112(v92, v116);
            v93 = sub_2CE260();

            [v91 setCardSectionId:v93];

            sub_20410(&unk_351900, &unk_2D0960);
            v94 = swift_allocObject();
            v117 = xmmword_2D0770;
            *(v94 + 16) = xmmword_2D0770;
            *(v94 + 32) = v88;
            sub_334A0(0, &qword_3519E0, SFAbstractCommand_ptr);
            v95 = v88;
            isa = sub_2CE400().super.isa;

            [v91 setCommands:isa];

            v97 = swift_allocObject();
            *(v97 + 16) = v117;
            *(v97 + 32) = v87;
            swift_beginAccess();
            v99 = *(a5 + 32);
            v98 = *(a5 + 40);
            *(a5 + 32) = v91;
            *(a5 + 40) = v97;
            v100 = v91;
            v101 = v87;
            v102 = v100;

            v103 = swift_beginAccess();
            if (*(a5 + 32))
            {
              v103 = [v118 setSeparatorStyle:1];
            }

            v119(v103);

            return;
          }
        }

        else
        {
          v53 = v48;
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v80 = sub_3ED0(v16, static Logger.default);
        swift_beginAccess();
        (*(v17 + 16))(v21, v80, v16);
        v81 = sub_2CDFE0();
        v82 = sub_2CE670();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_0, v81, v82, "PlayMediaViewProvider won't build broadcast radio card section because providerAppName is empty.", v83, 2u);
          v29 = v114;
        }

        (*(v17 + 8))(v21, v16);
LABEL_47:
        swift_beginAccess();
        v84 = *(a5 + 32);
        v85 = *(a5 + 40);
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;

        v86 = swift_beginAccess();
        if (*(a5 + 32))
        {
          v86 = [v118 setSeparatorStyle:1];
        }

        v119(v86);

        return;
      }
    }

    if (qword_34BF58 == -1)
    {
LABEL_37:
      v76 = sub_3ED0(v16, static Logger.default);
      swift_beginAccess();
      (*(v17 + 16))(v24, v76, v16);
      v77 = sub_2CDFE0();
      v78 = sub_2CE670();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_0, v77, v78, "PlayMediaViewProvider won't build broadcast radio card section because bundleId is empty.", v79, 2u);
        v29 = v114;
      }

      (*(v17 + 8))(v24, v16);
      goto LABEL_47;
    }

LABEL_66:
    swift_once();
    goto LABEL_37;
  }

LABEL_57:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v104 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  (*(v17 + 16))(v26, v104, v16);
  v105 = sub_2CDFE0();
  v106 = sub_2CE670();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_0, v105, v106, "PlayMediaViewProvider won't build broadcast radio card section - no privateMediaItemValueData present", v107, 2u);
  }

  (*(v17 + 8))(v26, v16);
  swift_beginAccess();
  v108 = *(a5 + 32);
  v109 = *(a5 + 40);
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;

  v110 = swift_beginAccess();
  if (*(a5 + 32))
  {
    v110 = [v118 setSeparatorStyle:1];
  }

  v119(v110);
}

uint64_t sub_122DB0(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  if (a2)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v15, v18, v10);
    swift_errorRetain();
    v19 = sub_2CDFE0();
    v20 = sub_2CE680();
    sub_A41AC(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v40 = a3;
      v24 = v23;
      v42 = a1;
      v43[0] = v23;
      *v22 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v25 = sub_2CE2A0();
      v27 = sub_3F08(v25, v26, v43);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v19, v20, "PlayMediaViewProvider#makeSuggestionView error while creating suggestionView: %{public}s", v22, 0xCu);
      sub_306C(v24);
      a3 = v40;
    }

    (*(v11 + 8))(v15, v10);
    swift_beginAccess();
    v28 = *(a5 + 48);
    *(a5 + 48) = 0;
  }

  else
  {
    v41 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = sub_3ED0(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v17, v29, v10);
    v30 = a1;
    v31 = sub_2CDFE0();
    v32 = sub_2CE680();
    sub_A41AC(a1, 0);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v40 = a3;
      v34 = v33;
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v30;
      *v35 = a1;
      v36 = v30;
      _os_log_impl(&dword_0, v31, v32, "PlayMediaViewProvider#makeSuggestionView created snippet: %@", v34, 0xCu);
      sub_30B8(v35, &unk_34FC00, &unk_2D0150);

      a3 = v40;
    }

    (*(v11 + 8))(v17, v10);
    swift_beginAccess();
    v28 = *(a5 + 48);
    *(a5 + 48) = a1;
    v37 = v30;
  }

  return a3();
}

uint64_t sub_1231F4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_350500, &unk_2D3B50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v8;
  v9 = sub_2C8E80();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v9);
  v49 = v12;
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = &v49 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v21 = swift_allocObject();
  v56 = a1;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_124488;
  *(v22 + 24) = v21;
  v59 = v22;
  v23 = qword_34BF58;
  v57 = a2;

  v58 = a3;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v25 = v15[2];
  v25(v20, v24, v14);
  v26 = sub_2CDFE0();
  v27 = sub_2CE660();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "PlayMediaViewProvider#suggestionView...", v28, 2u);
  }

  v29 = v15[1];
  v29(v20, v14);
  if (sub_2CB460())
  {
    sub_2CB130();

    sub_2CD390();
    v31 = v30;

    if (v31)
    {
      v32 = v51;
      sub_2C8E40();

      v34 = v53;
      v33 = v54;
      if ((*(v53 + 48))(v32, 1, v54) != 1)
      {
        v42 = *(v34 + 32);
        v43 = v52;
        v42(v52, v32, v33);
        v44 = swift_allocObject();
        v45 = v59;
        *(v44 + 16) = sub_124494;
        *(v44 + 24) = v45;
        v46 = v50;
        (*(v34 + 16))(v50, v43, v33);
        v47 = (*(v34 + 80) + 16) & ~*(v34 + 80);
        v48 = swift_allocObject();
        v42((v48 + v47), v46, v33);

        sub_20410(&qword_3519C0, &qword_2D49C8);
        sub_2CE4F0();

        (*(v34 + 8))(v52, v33);
      }

      sub_30B8(v32, &qword_350500, &unk_2D3B50);
    }
  }

  v35 = v55;
  v25(v55, v24, v14);
  v36 = sub_2CDFE0();
  v37 = sub_2CE660();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v37, "PlayMediaViewProvider#makeSuggestionsView No active requestId. Not creating suggestions view.", v38, 2u);
  }

  v29(v35, v14);
  v39 = v57;

  v40 = v58;

  sub_122DB0(0, 0, v56, v39, v40);
}

uint64_t sub_123808(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_34BF58;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v12, v6);
  v13 = sub_2CDFE0();
  v14 = sub_2CE660();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "PlayMediaViewProvider#makeSuggestionView...", v15, 2u);
  }

  (*(v7 + 8))(v10, v6);

  sub_1231F4(a1, a2, a3);
}

void sub_123A10(uint64_t a1, void *a2)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v84 - v10;
  __chkstk_darwin(v9);
  v13 = &v84 - v12;
  v14 = sub_20410(&unk_3519B0, &qword_2D1230);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v87 = &v84 - v16;
  v17 = sub_2C8E80();
  v88 = *(v17 - 8);
  v18 = *(v88 + 64);
  __chkstk_darwin(v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 mediaItems];
  if (!v21)
  {
    goto LABEL_55;
  }

  v22 = v21;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v23 = sub_2CE410();

  if (!(v23 >> 62))
  {
    if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_54;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = sub_2CECD0();
  }

  else
  {
    if (!*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_62;
    }

    v24 = *(v23 + 32);
  }

  v25 = v24;

  v26 = [v25 privateMediaItemValueData];

  if (!v26)
  {
LABEL_55:
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v80 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v8, v80, v3);
    v81 = sub_2CDFE0();
    v82 = sub_2CE670();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "PlayMediaViewProvider#makeBroadcastRadioButton no privateMediaItemValueData present", v83, 2u);
    }

    (*(v4 + 8))(v8, v3);
    return;
  }

  v27 = sub_2CCF90();
  v29 = v28;
  v30 = sub_2CBE10();
  if (v29)
  {
    if (v27 == v30 && v29 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_2CEEA0();
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = [v26 provider];
  if (!v33)
  {
    goto LABEL_36;
  }

  v86 = v26;
  v34 = v33;
  v35 = sub_2CE270();
  v37 = v36;

  if ((v32 & 1) == 0)
  {

    return;
  }

  v38 = v35 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v38 = HIBYTE(v37) & 0xF;
  }

  v26 = v86;
  if (!v38)
  {
LABEL_36:

    return;
  }

  v39 = [v86 bundleId];
  if (!v39)
  {
LABEL_39:
    if (qword_34BF58 == -1)
    {
LABEL_40:
      v67 = sub_3ED0(v3, static Logger.default);
      swift_beginAccess();
      (*(v4 + 16))(v11, v67, v3);
      v68 = sub_2CDFE0();
      v69 = sub_2CE670();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_0, v68, v69, "PlayMediaViewProvider#makeBroadcastRadioButton bundleId is empty.", v70, 2u);
      }

      (*(v4 + 8))(v11, v3);
      return;
    }

LABEL_62:
    swift_once();
    goto LABEL_40;
  }

  v40 = v39;
  v41 = sub_2CE270();
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    goto LABEL_39;
  }

  v44 = [v26 providerAppName];
  if (!v44)
  {
    v45 = v40;
LABEL_45:

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v71 = sub_3ED0(v3, static Logger.default);
    swift_beginAccess();
    (*(v4 + 16))(v13, v71, v3);
    v72 = sub_2CDFE0();
    v73 = sub_2CE670();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "PlayMediaViewProvider#makeBroadcastRadioButton providerAppName is empty.", v74, 2u);
    }

    (*(v4 + 8))(v13, v3);
    return;
  }

  v45 = v44;
  v46 = sub_2CE270();
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {

    goto LABEL_45;
  }

  v49 = v26;
  v50 = [objc_allocWithZone(SAUIAppPunchOut) init];
  [v50 setBundleId:v40];

  v85 = v45;
  [v50 setAppDisplayName:v45];
  [v50 setAppAvailableInStorefront:1];
  v51 = v50;
  sub_2C8E70();
  sub_2C8E50();
  (*(v88 + 8))(v20, v17);
  v52 = sub_2CE260();

  [v51 setAceId:v52];

  v53 = [v49 universalResourceLink];
  if (!v53)
  {
LABEL_51:

LABEL_52:
    v75 = [objc_allocWithZone(SAUIButton) init];
    sub_20410(&unk_351900, &unk_2D0960);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_2D0770;
    *(v76 + 32) = v51;
    v77 = v51;
    sub_20410(&unk_351990, &unk_2D49A8);
    isa = sub_2CE400().super.isa;

    [v75 setCommands:isa];

    v79 = v85;
    [v75 setText:v85];

    return;
  }

  v54 = v53;
  v55 = sub_2CE270();
  v57 = v56;

  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {

    goto LABEL_51;
  }

  v59 = [v86 universalResourceLink];
  if (v59)
  {
    v60 = v59;

    sub_2CE270();

    v61 = v87;
    sub_2C8D80();

    v62 = sub_2C8D90();
    v63 = *(v62 - 8);
    v65 = 0;
    if ((*(v63 + 48))(v61, 1, v62) != 1)
    {
      sub_2C8D50(v64);
      v65 = v66;
      (*(v63 + 8))(v61, v62);
    }

    [v51 setPunchOutUri:v65];

    goto LABEL_52;
  }

  __break(1u);
}

unint64_t sub_124424()
{
  result = qword_34CCA8;
  if (!qword_34CCA8)
  {
    sub_2CB850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CCA8);
  }

  return result;
}

uint64_t sub_1244A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_1244D4(uint64_t a1)
{
  v4 = *(sub_2C8E80() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_11F4BC(a1, v1 + v5);
}

uint64_t sub_1245B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_124608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB730;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000015;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_124C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD900;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001BLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_125310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD8D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002FLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002FLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002FLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_125994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD8A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002ELL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002ELL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002ELL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_126018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_12669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_126D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1273A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD870;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000025;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000025, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000025;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_127A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD840;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000021;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000021;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_1280AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_128730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_128DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DD820;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000017;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000017, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000017;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_129438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_129ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC030;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001DLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D7C;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001DLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001DLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13D84;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E010;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_12A174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v80 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v79 = &v74 - v8;
  v77 = sub_2CCB20();
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = *(*(v81 - 8) + 64);
  v12 = __chkstk_darwin(v81);
  v78 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v74 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v84 = &v74 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v83 = &v74 - v20;
  v21 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v82 = &v74 - v23;
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v74 - v36);
  sub_F3F4(v80, &v74 - v36, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v37;
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v29);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v24);
    swift_getErrorValue();
    sub_2CEEF0();
    v90 = sub_2CCAE0();

    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v39 = v85[7];
    v85 = sub_35E0(v85 + 3, v85[6]);
    v40 = enum case for ActivityType.failed(_:);
    v41 = sub_2C9C20();
    v42 = *(v41 - 8);
    v43 = v82;
    (*(v42 + 104))(v82, v40, v41);
    (*(v42 + 56))(v43, 0, 1, v41);
    v44 = sub_2CA130();
    v45 = v83;
    (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
    v46 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v47 = sub_2C98F0();
    v48 = *(v47 - 8);
    v49 = v84;
    (*(v48 + 104))(v84, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v49, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v45, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v43, &qword_34CB88, &unk_2D0D90);
    v91[0] = v38;
    v92 = 1;
    swift_errorRetain();
    v88(v91);

    return sub_30B8(v91, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v37, v90);
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.umahis(_:), v29);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v24);
    v51 = v76;
    v52 = v75;
    v53 = v77;
    (*(v76 + 104))(v75, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v77);
    v80 = sub_2CCAD0();
    v74 = v54;
    (*(v51 + 8))(v52, v53);
    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v55 = v85;
    v75 = v85[6];
    v76 = v85[7];
    v77 = sub_35E0(v85 + 3, v75);
    v56 = enum case for ActivityType.completed(_:);
    v57 = sub_2C9C20();
    v58 = *(v57 - 8);
    v59 = v82;
    (*(v58 + 104))(v82, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    v60 = v78;
    sub_F3F4(v90, v78, &qword_34C6E8, &unk_2D0FF0);

    v61 = sub_2CA130();
    v62 = *(v61 - 8);
    v63 = v83;
    (*(v62 + 32))(v83, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    v64 = enum case for SiriKitReliabilityCodes.success(_:);
    v65 = sub_2C98F0();
    v66 = *(v65 - 8);
    v67 = v84;
    (*(v66 + 104))(v84, v64, v65);
    (*(v66 + 56))(v67, 0, 1, v65);
    INUpdateMediaAffinityIntent.firstMediaItemType()();
    sub_2CB4E0();

    sub_30B8(v67, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v63, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v59, &qword_34CB88, &unk_2D0D90);
    v68 = sub_35E0(v55 + 8, v55[11]);
    v69 = v90;
    sub_F3F4(v90, v60, &qword_34C6E8, &unk_2D0FF0);
    v70 = *(v60 + *(v81 + 48));
    v71 = sub_2CA000();
    v72 = v79;
    (*(*(v71 - 8) + 56))(v79, 1, 1, v71);
    v73 = *v68;
    sub_1C077C(v60, v70, v72, _swiftEmptyArrayStorage, v88, v89);

    sub_30B8(v72, &unk_353020, &unk_2D0970);
    sub_30B8(v69, &qword_34C6E8, &unk_2D0FF0);
    return (*(v62 + 8))(v60, v61);
  }
}

uint64_t sub_12AD18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v110 = a8;
  v108 = a7;
  v126 = a5;
  v127 = a6;
  v128 = a4;
  v124 = a2;
  v125 = a3;
  v112 = a1;
  v109 = sub_2CCB20();
  v107 = *(v109 - 8);
  v9 = *(v107 + 64);
  __chkstk_darwin(v109);
  v106 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v121 = &v105 - v13;
  v120 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v120 - 8) + 64);
  v15 = __chkstk_darwin(v120);
  v111 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v105 - v17;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v123 = &v105 - v21;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v122 = &v105 - v24;
  v25 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v105 - v27;
  v119 = sub_2CCB30();
  v118 = *(v119 - 8);
  v29 = v118[8];
  __chkstk_darwin(v119);
  v115 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2CCAC0();
  v116 = *(v117 - 8);
  v31 = *(v116 + 64);
  __chkstk_darwin(v117);
  v113 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2CE000();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v105 - v39;
  v41 = sub_20410(&unk_3519A0, &qword_2D0980);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v44 = (&v105 - v43);
  sub_F3F4(v112, &v105 - v43, &unk_3519A0, &qword_2D0980);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v114 = v28;
  if (EnumCaseMultiPayload == 1)
  {
    v46 = *v44;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v47 = sub_3ED0(v33, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v40, v47, v33);
    swift_errorRetain();
    v48 = sub_2CDFE0();
    v49 = sub_2CE680();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&dword_0, v48, v49, "UnsupportedValueStrategy#makeUnsupportedValueOutput dialog provider failed with error: %@", v50, 0xCu);
      sub_30B8(v51, &unk_34FC00, &unk_2D0150);
    }

    (*(v34 + 8))(v40, v33);
    v53 = v116;
    v54 = v113;
    v55 = v117;
    (*(v116 + 104))(v113, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v117);
    v56 = v118;
    v57 = v115;
    v58 = v119;
    (v118[13])(v115, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v119);
    swift_getErrorValue();
    sub_2CEEF0();
    v121 = sub_2CCAE0();

    (v56[1])(v57, v58);
    (*(v53 + 8))(v54, v55);
    v59 = v124[7];
    v124 = sub_35E0(v124 + 3, v124[6]);
    v60 = enum case for ActivityType.failed(_:);
    v61 = sub_2C9C20();
    v62 = *(v61 - 8);
    v63 = v114;
    (*(v62 + 104))(v114, v60, v61);
    (*(v62 + 56))(v63, 0, 1, v61);
    v64 = sub_2CA130();
    v65 = v122;
    (*(*(v64 - 8) + 56))(v122, 1, 1, v64);
    v66 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v67 = sub_2C98F0();
    v68 = *(v67 - 8);
    v69 = v123;
    (*(v68 + 104))(v123, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    sub_2CB4E0();

    sub_30B8(v69, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v65, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v63, &qword_34CB88, &unk_2D0D90);
    v129[0] = v46;
    v130 = 1;
    swift_errorRetain();
    v126(v129);

    return sub_30B8(v129, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v112 = a9;
    sub_24BE0(v44, v18);
    v71 = v18;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v72 = sub_3ED0(v33, static Logger.default);
    swift_beginAccess();
    (*(v34 + 16))(v38, v72, v33);
    v73 = sub_2CDFE0();
    v74 = sub_2CE690();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "UnsupportedValueStrategy#makeUnsupportedValueOutput acquired dialog.", v75, 2u);
    }

    (*(v34 + 8))(v38, v33);
    sub_78DC4(v128, v121);
    v76 = v116;
    v77 = v113;
    v78 = v117;
    (*(v116 + 104))(v113, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v117);
    v79 = v118;
    v80 = v115;
    v81 = v119;
    (v118[13])(v115, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v119);
    v82 = v107;
    v83 = v106;
    v84 = v109;
    (*(v107 + 104))(v106, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v109);
    v112 = sub_2CCB00();
    v110 = v85;
    (*(v82 + 8))(v83, v84);
    (v79[1])(v80, v81);
    (*(v76 + 8))(v77, v78);
    v86 = v124;
    v116 = v124[6];
    v117 = v124[7];
    v118 = sub_35E0(v124 + 3, v116);
    v87 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v88 = sub_2C9C20();
    v89 = *(v88 - 8);
    v90 = v114;
    (*(v89 + 104))(v114, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = v71;
    v119 = v71;
    v92 = v111;
    sub_F3F4(v91, v111, &qword_34C6E8, &unk_2D0FF0);

    v93 = sub_2CA130();
    v94 = *(v93 - 8);
    v95 = v122;
    (*(v94 + 32))(v122, v92, v93);
    (*(v94 + 56))(v95, 0, 1, v93);
    v96 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
    v97 = sub_2C98F0();
    v98 = *(v97 - 8);
    v99 = v123;
    (*(v98 + 104))(v123, v96, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    sub_2CB4E0();

    sub_30B8(v99, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v95, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v90, &qword_34CB88, &unk_2D0D90);
    v100 = sub_35E0(v86 + 8, v86[11]);
    v101 = v119;
    sub_F3F4(v119, v92, &qword_34C6E8, &unk_2D0FF0);
    v102 = *(v92 + *(v120 + 48));
    v103 = *v100;
    v104 = v121;
    sub_1C077C(v92, v102, v121, _swiftEmptyArrayStorage, v126, v127);

    sub_30B8(v104, &unk_353020, &unk_2D0970);
    sub_30B8(v101, &qword_34C6E8, &unk_2D0FF0);
    return (*(v94 + 8))(v92, v93);
  }
}

uint64_t sub_12BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  updated = type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, updated, a10);
}

uint64_t sub_12BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  updated = type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, updated, a10);
}

uint64_t sub_12BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v59 = a3;
  v65 = a1;
  v66 = a2;
  v6 = sub_2CDFD0();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  v8 = __chkstk_darwin(v6);
  v9 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = v55 - v10;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v63 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v55 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v19 = v12[2];
  v58 = v18;
  v57 = v19;
  v55[1] = v12 + 2;
  v19(v17, v18, v11);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "CommonDialogProvider#somethingHasToBePlayingDialog", v22, 2u);
  }

  v23 = v12[1];
  v64 = v12 + 1;
  v61 = v23;
  v23(v17, v11);
  v62 = v5[2];
  v24 = v5[14];
  v67 = v5[13];
  v56 = 0x80000000002DD9A0;
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v55[0] = v11;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v25 = qword_35F760;
  v26 = v68;
  sub_2CDFB0();
  v27 = v69;
  v28 = v70;
  (*(v69 + 16))(v9, v26, v70);
  v29 = (*(v27 + 80) + 33) & ~*(v27 + 80);
  v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = "catServiceExecute";
  *(v31 + 24) = 17;
  *(v31 + 32) = 2;
  (*(v27 + 32))(v31 + v29, v9, v28);
  v32 = (v31 + v30);
  v33 = v60;
  *v32 = v59;
  v32[1] = v33;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2D0E40;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_1087C();
  v36 = v67;
  *(v34 + 32) = v67;
  *(v34 + 40) = v24;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  *(v34 + 64) = v35;
  *(v34 + 72) = 0xD000000000000017;
  v37 = v56;
  *(v34 + 80) = v56;

  v54 = v34;
  LOBYTE(v53) = 2;
  v52 = 125;
  sub_2CDF90();

  v38 = swift_allocObject();
  *(v38 + 16) = sub_13CD4;
  *(v38 + 24) = v31;
  v39 = v63;
  v40 = v55[0];
  v57(v63, v58, v55[0]);

  v41 = sub_2CDFE0();
  v42 = sub_2CE660();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_3F08(v36, v24, &v71);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_3F08(0xD000000000000017, v37, &v71);
    _os_log_impl(&dword_0, v41, v42, "Evaluating CAT family:%s id:%s...", v43, 0x16u);
    swift_arrayDestroy();

    v61(v39, v40);
    v36 = v67;
  }

  else
  {

    v61(v39, v40);
  }

  v71 = v36;
  v72 = v24;

  v75._countAndFlagsBits = 35;
  v75._object = 0xE100000000000000;
  sub_2CE350(v75);
  v76._countAndFlagsBits = 0xD000000000000017;
  v76._object = v37;
  sub_2CE350(v76);
  v45 = v71;
  v44 = v72;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13D84;
  v48[4] = v38;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v65;
  v55[-10] = v62;
  v55[-9] = v50;
  v55[-8] = v66;
  v55[-7] = v73;
  v55[-6] = 0;
  v55[-5] = v45;
  v52 = v44;
  v53 = sub_3E010;
  v54 = v48;

  sub_2CB0F0();

  (*(v69 + 8))(v68, v70);
  return sub_30B8(v73, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_12C57C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v56 = a7;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v55 = a2;
  v57 = a1;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v49 - v13;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v16 = v8[2];
  v16(v14, v15, v7);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "UnsupportedValueStrategy#makeUnsupportedValueOutput", v19, 2u);
  }

  v20 = v8[1];
  v20(v14, v7);
  sub_2CB450();
  v21 = v55;
  if (sub_2CEA80())
  {
    v16(v12, v15, v7);
    v22 = sub_2CDFE0();
    v23 = sub_2CE690();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "UnsupportedValueStrategy#makeUnsupportedValueOutput no NowPlaying app", v24, 2u);
    }

    v20(v12, v7);
    v25 = v54;
    v26 = *(v54 + 16);
    v27 = sub_112C0(_swiftEmptyArrayStorage);
    v28 = swift_allocObject();
    v30 = v56;
    v29 = v57;
    v28[2] = v25;
    v28[3] = v29;
    v31 = v53;
    v28[4] = v21;
    v28[5] = v31;
    v28[6] = v30;

    v32 = v21;

    sub_12BDBC(v27, v29, sub_12CBCC, v28);
  }

  else
  {
    v33 = v54;
    v49 = *(v54 + 16);
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    strcpy((inited + 32), "MetricsError");
    *(inited + 16) = xmmword_2D0090;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_2CECB0(50);

    v59 = 0xD00000000000002DLL;
    v60 = 0x80000000002DD970;
    v35 = v52;
    v58 = [v52 resolutionResultCode];
    v61._countAndFlagsBits = sub_2CEE70();
    sub_2CE350(v61);

    v62._countAndFlagsBits = 95;
    v62._object = 0xE100000000000000;
    sub_2CE350(v62);
    v58 = [v35 unsupportedReason];
    v63._countAndFlagsBits = sub_2CEE70();
    sub_2CE350(v63);

    v36 = v59;
    v37 = v60;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v36;
    *(inited + 56) = v37;
    v38 = v21;
    v39 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v40 = [objc_allocWithZone(INUpdateMediaAffinityIntentResponse) initWithCode:4 userActivity:0];
    v41 = swift_allocObject();
    v43 = v56;
    v42 = v57;
    *(v41 + 16) = v33;
    *(v41 + 24) = v42;
    v44 = v53;
    *(v41 + 32) = v38;
    *(v41 + 40) = v44;
    v45 = v50;
    *(v41 + 48) = v43;
    *(v41 + 56) = v45;
    *(v41 + 64) = v51;
    *(v41 + 72) = v35;

    v46 = v38;

    v47 = v35;
    sub_E4FD0(v39, v42, sub_12CB98, v41);
  }
}

unint64_t sub_12CAF8(uint64_t a1)
{
  result = sub_12CB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_12CB20()
{
  result = qword_34D828;
  if (!qword_34D828)
  {
    type metadata accessor for UpdateMediaAffinity.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D828);
  }

  return result;
}

uint64_t _s25NeedsConfirmationStrategyCMa_0()
{
  result = qword_351CD8;
  if (!qword_351CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_12CC28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_2CE990();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2CE180();
  v43 = *(v45 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayMediaCatDialogService();
  v10 = swift_allocObject();
  v10[6] = 0xEF746E65746E4961;
  v10[2] = 0xD000000000000011;
  v10[3] = 0x80000000002DA8D0;
  v39 = 0x80000000002DA8D0;
  v10[4] = a1;
  v10[5] = 0x6964654D79616C50;
  sub_FA14(_swiftEmptyArrayStorage);
  v40 = a1;
  swift_retain_n();

  v41 = sub_2CC2B0();
  v63 = v41;
  v64 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v62);
  sub_2CC2A0();
  v38 = sub_2CC360();
  v60 = v38;
  v61 = &protocol witness table for StringsFileResolver;
  sub_F390(&v59);
  sub_2CC350();
  v11 = sub_2CB4A0();
  v12 = sub_2CB490();
  v57 = v11;
  v58 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v56 = v12;
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v13 = qword_35F900;
  sub_2CBC60();
  v14 = type metadata accessor for DialogHistoryProvider();
  v54[3] = v14;
  v54[4] = &off_33CAE0;
  v54[0] = v13;
  type metadata accessor for PlayMediaDialogProvider();
  v15 = swift_allocObject();
  v16 = sub_F9A0(v54, v14);
  v17 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v53[3] = v14;
  v53[4] = &off_33CAE0;
  v53[0] = v21;
  v15[15] = v10;
  sub_EEAC(&v62, (v15 + 16));
  sub_EEAC(&v56, (v15 + 31));
  sub_EEAC(v53, (v15 + 21));
  sub_EEAC(v55, (v15 + 26));
  sub_EEAC(&v59, v52);

  v22 = sub_2CB490();
  v50 = v11;
  v51 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v49 = v22;
  sub_306C(v55);
  sub_306C(&v56);
  sub_306C(&v59);
  sub_306C(&v62);
  sub_306C(v53);
  v15[13] = 0xD000000000000011;
  v23 = v40;
  v15[14] = v39;
  v15[2] = v23;
  sub_F338(v52, (v15 + 3));
  sub_F338(&v49, (v15 + 8));
  sub_306C(v54);
  v63 = v38;
  v64 = &protocol witness table for StringsFileResolver;
  sub_F390(&v62);
  sub_2CC350();
  sub_20410(&qword_351E00, &unk_2D4B40);
  v24 = swift_allocObject();
  sub_F338(&v62, v24 + 16);
  v40 = v24;
  *(v24 + 56) = v15;
  v25 = v41;
  v63 = v41;
  v64 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v62);

  sub_2CC2A0();
  type metadata accessor for SiriAudioOutputProvider();
  v39 = swift_allocObject();
  sub_F338(&v62, v39 + 16);
  v63 = v25;
  v64 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v62);
  sub_2CC2A0();
  v26 = sub_2CB490();
  v60 = v11;
  v61 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v59 = v26;
  v27 = sub_2CC900();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_2CC8F0();
  v63 = v27;
  v64 = &protocol witness table for AppleMediaServicesProvider;
  v61 = &protocol witness table for FeatureFlagProvider;
  *&v62 = v30;
  v60 = v25;
  sub_F390(&v59);
  sub_2CC2A0();
  v31 = sub_2CB490();
  v57 = v11;
  v58 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v56 = v31;
  if (qword_34BF88 != -1)
  {
    swift_once();
  }

  v32 = qword_35F740;

  sub_2C9A00();
  v33 = v42;
  sub_2CE170();
  v34 = v44;
  sub_2CE980();
  v35 = sub_2CBA00();

  sub_306C(v48);
  (*(v46 + 8))(v34, v47);
  (*(v43 + 8))(v33, v45);
  v3[26] = v35;
  v3[2] = v15;
  sub_F338(&v62, (v3 + 3));
  sub_F338(&v59, (v3 + 8));
  sub_F338(&v56, (v3 + 13));
  v3[18] = v32;
  sub_F338(v55, (v3 + 20));
  v36 = v40;
  v3[25] = v39;
  v3[19] = v36;
  return v3;
}

uint64_t sub_12D2A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v153 = a7;
  v152 = a6;
  v162 = a5;
  v165 = sub_2CDFD0();
  v164 = *(v165 - 8);
  v11 = *(v164 + 64);
  v12 = __chkstk_darwin(v165);
  v148 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v151 = &v144 - v15;
  v150 = v16;
  __chkstk_darwin(v14);
  v160 = &v144 - v17;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v149 = &v144 - v25;
  __chkstk_darwin(v24);
  v27 = &v144 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v29 = v19[2];
  v156 = v28;
  v163 = v18;
  v155 = v19 + 2;
  v154 = v29;
  v29(v27, v28, v18);
  v30 = sub_2CDFE0();
  v31 = sub_2CE670();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "CommonDialogProvider#makePromptForConfirmationDialog", v32, 2u);
  }

  v33 = v19[1];
  v158 = v19 + 1;
  v157 = v33;
  v33(v27, v163);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;

  v35 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v171 = v35;
  v159 = a1;
  if (a2 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v36 = [a4 itemToConfirm];
    sub_2CEC00();
    swift_unknownObjectRelease();
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    if (swift_dynamicCast())
    {
      v37 = v167[0];
      v38 = [v167[0] artist];
      if (v38)
      {
        v39 = v38;
        v40 = sub_2CE270();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      v67 = [v37 title];
      if (v67)
      {
        v68 = v67;
        sub_2CE270();

        v69 = sub_2CE2B0();
        v71 = v70;

        if (v42)
        {
          v72 = sub_2CE2B0();
          if (v71)
          {
            if (v73)
            {
              if (v69 == v72 && v71 == v73)
              {
                v148 = v42;

                goto LABEL_40;
              }

              v83 = sub_2CEEA0();

              if (v83)
              {
LABEL_39:
                v148 = v42;
                goto LABEL_40;
              }

LABEL_35:
              v148 = v42;
              v80 = [v37 title];
              if (v80)
              {
                v81 = v80;
                v147 = sub_2CE270();
                v43 = v82;

                goto LABEL_41;
              }

LABEL_40:
              v147 = 0;
              v43 = 0;
LABEL_41:
              objc_opt_self();
              v84 = swift_dynamicCastObjCClass();
              if (!v84)
              {
                v91 = 0xE300000000000000;
                v92 = 4473921;
                if (v43)
                {
LABEL_66:
                  v93 = 0;
                  v88 = v43;
                  v90 = v147;
                  v95 = v148;
                  goto LABEL_67;
                }

LABEL_48:
                sub_236110(0x436F54656C746974, 0xEE006D7269666E6FLL, v167);
                sub_30B8(v167, &qword_34CEA0, &qword_2D0FC0);
                v93 = 0;
                v94 = v161;
                v95 = v148;
LABEL_68:
                if (v95)
                {
                  v169 = &type metadata for String;
                  *&v168 = v40;
                  *(&v168 + 1) = v95;
                  sub_E2DC(&v168, v167);
                  v106 = v171;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v166 = v106;
                  sub_237690(v167, 0x6F54747369747261, 0xEF6D7269666E6F43, isUniquelyReferenced_nonNull_native);
                  v108 = v166;
                }

                else
                {
                  sub_236110(0x6F54747369747261, 0xEF6D7269666E6F43, &v168);
                  sub_30B8(&v168, &qword_34CEA0, &qword_2D0FC0);
                  v108 = v171;
                }

                v148 = v37;
                v169 = &type metadata for Bool;
                LOBYTE(v168) = v93;
                sub_E2DC(&v168, v167);
                v109 = swift_isUniquelyReferenced_nonNull_native();
                v166 = v108;
                sub_237690(v167, 0x5265726E65477369, 0xEC0000006F696461, v109);
                v110 = v166;
                v171 = v166;
                v169 = &type metadata for String;
                *&v168 = v92;
                *(&v168 + 1) = v91;
                sub_E2DC(&v168, v167);
                v111 = swift_isUniquelyReferenced_nonNull_native();
                v166 = v110;
                sub_237690(v167, 0x7954746E65746E69, 0xEA00000000006570, v111);
                v147 = v166;
                v146 = v94[2];
                v112 = v94[14];
                v161 = v94[13];
                v145 = 0x80000000002DDA90;
                v169 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
                v170 = &off_338D38;
                *&v168 = v162;
                v113 = qword_34BF98;
                v114 = v162;
                if (v113 != -1)
                {
                  swift_once();
                }

                v115 = qword_35F760;
                v116 = v160;
                sub_2CDFB0();
                v117 = v164;
                v118 = v151;
                v119 = v165;
                (*(v164 + 16))(v151, v116, v165);
                v120 = (*(v117 + 80) + 33) & ~*(v117 + 80);
                v121 = (v150 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
                v122 = swift_allocObject();
                *(v122 + 16) = "catServiceExecute";
                *(v122 + 24) = 17;
                *(v122 + 32) = 2;
                (*(v117 + 32))(v122 + v120, v118, v119);
                v123 = (v122 + v121);
                v124 = v153;
                *v123 = v152;
                v123[1] = v124;

                sub_2CE9E0();
                sub_20410(&qword_34CEA8, &unk_2D0EB0);
                v125 = swift_allocObject();
                *(v125 + 16) = xmmword_2D0E40;
                *(v125 + 56) = &type metadata for String;
                v126 = sub_1087C();
                *(v125 + 32) = v161;
                *(v125 + 40) = v112;
                *(v125 + 96) = &type metadata for String;
                *(v125 + 104) = v126;
                *(v125 + 64) = v126;
                *(v125 + 72) = 0xD000000000000011;
                v127 = v145;
                *(v125 + 80) = v145;

                v143 = v125;
                LOBYTE(v142) = 2;
                v141 = 125;
                sub_2CDF90();

                v128 = swift_allocObject();
                *(v128 + 16) = sub_13D80;
                *(v128 + 24) = v122;
                v129 = v149;
                v130 = v163;
                v154(v149, v156, v163);

                v131 = sub_2CDFE0();
                v132 = sub_2CE660();

                if (os_log_type_enabled(v131, v132))
                {
                  v133 = swift_slowAlloc();
                  v167[0] = swift_slowAlloc();
                  *v133 = 136315394;
                  *(v133 + 4) = sub_3F08(v161, v112, v167);
                  *(v133 + 12) = 2080;
                  *(v133 + 14) = sub_3F08(0xD000000000000011, v127, v167);
                  _os_log_impl(&dword_0, v131, v132, "Evaluating CAT family:%s id:%s...", v133, 0x16u);
                  swift_arrayDestroy();
                }

                v157(v129, v130);
                v167[0] = v161;
                v167[1] = v112;

                v174._countAndFlagsBits = 35;
                v174._object = 0xE100000000000000;
                sub_2CE350(v174);
                v175._countAndFlagsBits = 0xD000000000000011;
                v175._object = v127;
                sub_2CE350(v175);
                v134 = *v167;
                v135 = sub_2CB460();
                if (!v135)
                {
                  sub_2CB180();
                  v135 = sub_2CB170();
                }

                v136 = v135;
                v137 = swift_allocObject();
                v137[2] = v136;
                v137[3] = sub_13DB4;
                v137[4] = v128;
                v138 = sub_2CB180();
                __chkstk_darwin(v138);
                v139 = v147;
                *(&v144 - 10) = v146;
                *(&v144 - 9) = v139;
                *(&v144 - 8) = v159;
                *(&v144 - 7) = &v168;
                *(&v144 - 6) = 0;
                *(&v144 - 5) = v134;
                v141 = *(&v134 + 1);
                v142 = sub_3E06C;
                v143 = v137;

                sub_2CB0F0();

                (*(v164 + 8))(v160, v165);
                return sub_30B8(&v168, &qword_34C6C0, &qword_2D0710);
              }

              v85 = v84;
              v86 = [v84 mediaSearch];
              if (v86)
              {
                v87 = v86;
                v88 = [v86 genreNames];

                if (!v88)
                {
                  v90 = 0;
                  if (!v37)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }

                v89 = sub_2CE410();

                if (v89[2])
                {
                  v90 = v89[4];
                  v88 = v89[5];

                  if (!v37)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_53;
                }
              }

              v90 = 0;
              v88 = 0;
              if (!v37)
              {
                goto LABEL_58;
              }

LABEL_53:
              v96 = [v37 privateMediaItemValueData];
              if (v96)
              {
                v97 = v96;
                v98 = [v96 provider];

                if (v98)
                {
                  v99 = sub_2CE270();
                  v101 = v100;

                  v102 = HIBYTE(v101) & 0xF;
                  if ((v101 & 0x2000000000000000) == 0)
                  {
                    v102 = v99 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v102)
                  {
LABEL_59:
                    if (!v88)
                    {
                      goto LABEL_65;
                    }

                    v103 = HIBYTE(v88) & 0xF;
                    if ((v88 & 0x2000000000000000) == 0)
                    {
                      v103 = v90 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v103)
                    {

                      v40 = 0;
                      v93 = 1;
                      v91 = 0xE400000000000000;
                      v95 = 0xE000000000000000;
                      v92 = 1497451600;
LABEL_67:
                      v169 = &type metadata for String;
                      *&v168 = v90;
                      *(&v168 + 1) = v88;
                      sub_E2DC(&v168, v167);
                      v104 = v171;
                      v105 = swift_isUniquelyReferenced_nonNull_native();
                      v166 = v104;
                      sub_237690(v167, 0x436F54656C746974, 0xEE006D7269666E6FLL, v105);
                      v171 = v166;
                      v94 = v161;
                      goto LABEL_68;
                    }

LABEL_64:

LABEL_65:
                    v91 = 0xE400000000000000;
                    v92 = 1497451600;
                    if (v43)
                    {
                      goto LABEL_66;
                    }

                    goto LABEL_48;
                  }
                }
              }

LABEL_58:
              if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v85, &off_32F190))
              {
                goto LABEL_64;
              }

              goto LABEL_59;
            }

LABEL_34:

            goto LABEL_35;
          }

LABEL_27:
          if (!v73)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }

        if (v71)
        {
          goto LABEL_34;
        }
      }

      else if (v42)
      {
        sub_2CE2B0();
        goto LABEL_27;
      }

      v147 = 0;
      v43 = 0;
    }

    else
    {
      v147 = 0;
      v43 = 0;
      v37 = 0;
      v40 = 0;
    }

    v148 = 0;
    goto LABEL_41;
  }

  v149 = v35;
  v147 = v161[2];
  v44 = v161[14];
  v160 = v161[13];
  v161 = 0x80000000002DDA60;
  v169 = sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v170 = &off_338D38;
  *&v168 = v162;
  v45 = qword_34BF98;
  v46 = v162;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = qword_35F760;
  v48 = v148;
  sub_2CDFB0();
  v49 = v164;
  v50 = v151;
  v51 = v165;
  (*(v164 + 16))(v151, v48, v165);
  v52 = (*(v49 + 80) + 33) & ~*(v49 + 80);
  v53 = (v150 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = "catServiceExecute";
  *(v54 + 24) = 17;
  *(v54 + 32) = 2;
  (*(v49 + 32))(v54 + v52, v50, v51);
  v55 = (v54 + v53);
  v56 = v153;
  *v55 = v152;
  v55[1] = v56;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_2D0E40;
  *(v57 + 56) = &type metadata for String;
  v58 = sub_1087C();
  v59 = v160;
  *(v57 + 32) = v160;
  *(v57 + 40) = v44;
  *(v57 + 96) = &type metadata for String;
  *(v57 + 104) = v58;
  *(v57 + 64) = v58;
  *(v57 + 72) = 0xD000000000000020;
  v162 = 0xD000000000000020;
  v60 = v161;
  *(v57 + 80) = v161;

  v143 = v57;
  LOBYTE(v142) = 2;
  v141 = 125;
  sub_2CDF90();

  v61 = swift_allocObject();
  *(v61 + 16) = sub_13D80;
  *(v61 + 24) = v54;
  v62 = v163;
  v154(v23, v156, v163);

  v63 = sub_2CDFE0();
  v64 = sub_2CE660();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v156 = v61;
    v66 = v65;
    v167[0] = swift_slowAlloc();
    *v66 = 136315394;
    *(v66 + 4) = sub_3F08(v59, v44, v167);
    *(v66 + 12) = 2080;
    *(v66 + 14) = sub_3F08(v162, v60, v167);
    _os_log_impl(&dword_0, v63, v64, "Evaluating CAT family:%s id:%s...", v66, 0x16u);
    swift_arrayDestroy();

    v61 = v156;

    v157(v23, v62);
    v59 = v160;
  }

  else
  {

    v157(v23, v62);
  }

  v167[0] = v59;
  v167[1] = v44;

  v172._countAndFlagsBits = 35;
  v172._object = 0xE100000000000000;
  sub_2CE350(v172);
  v173._countAndFlagsBits = 0xD000000000000020;
  v173._object = v60;
  sub_2CE350(v173);
  v74 = *v167;
  v75 = sub_2CB460();
  v76 = v149;
  if (!v75)
  {
    sub_2CB180();
    v75 = sub_2CB170();
  }

  v77 = v75;
  v78 = swift_allocObject();
  v78[2] = v77;
  v78[3] = sub_13DB4;
  v78[4] = v61;
  v79 = sub_2CB180();
  __chkstk_darwin(v79);
  *(&v144 - 10) = v147;
  *(&v144 - 9) = v76;
  *(&v144 - 8) = v159;
  *(&v144 - 7) = &v168;
  *(&v144 - 6) = 0;
  *(&v144 - 5) = v74;
  v141 = *(&v74 + 1);
  v142 = sub_3E06C;
  v143 = v78;

  sub_2CB0F0();

  (*(v164 + 8))(v148, v165);
  return sub_30B8(&v168, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_12E824(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v157 = a7;
  v156 = a6;
  v166 = a5;
  v169 = sub_2CDFD0();
  v168 = *(v169 - 8);
  v11 = *(v168 + 64);
  v12 = __chkstk_darwin(v169);
  v152 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v155 = &v148 - v15;
  v154 = v16;
  __chkstk_darwin(v14);
  v164 = &v148 - v17;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v153 = &v148 - v25;
  __chkstk_darwin(v24);
  v27 = &v148 - v26;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  v29 = v19;
  v30 = *(v19 + 16);
  v160 = v28;
  v167 = v18;
  v159 = v19 + 16;
  v158 = v30;
  v30(v27, v28, v18);
  v31 = sub_2CDFE0();
  v32 = sub_2CE670();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "CommonDialogProvider#makePromptForConfirmationDialog", v33, 2u);
  }

  v34 = *(v29 + 8);
  v162 = v29 + 8;
  v161 = v34;
  v34(v27, v167);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;

  v36 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v175 = v36;
  v163 = a1;
  if (a2 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL || (sub_2CEEA0() & 1) != 0)
  {
    v37 = [a4 itemToConfirm];
    sub_2CEC00();
    swift_unknownObjectRelease();
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    if (!swift_dynamicCast())
    {
      v45 = 0;
      v46 = 0;
      v38 = 0;
      v42 = 0;
      v44 = 0;
      v40 = v166;
      goto LABEL_39;
    }

    v38 = v171[0];
    v39 = [v171[0] artist];
    v40 = v166;
    if (v39)
    {
      v41 = v39;
      v42 = sub_2CE270();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v70 = [v38 title];
    if (v70)
    {
      v71 = v70;
      sub_2CE270();

      v72 = sub_2CE2B0();
      v74 = v73;

      if (!v44)
      {
        if (!v74)
        {
          v45 = 0;
          v46 = 0;
          v44 = 0;
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      v75 = sub_2CE2B0();
      if (v74)
      {
        if (v76)
        {
          if (v72 == v75 && v74 == v76)
          {

LABEL_38:
            v45 = 0;
            v46 = 0;
LABEL_39:
            objc_opt_self();
            v87 = swift_dynamicCastObjCClass();
            v152 = v38;
            v151 = v42;
            if (!v87)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v94 = 0xE300000000000000;
                v95 = 4473921;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v94 = 0xE600000000000000;
                  v95 = 0x484352414553;
                }

                else
                {
                  v144 = [v40 affinityType];
                  if (v144 == &dword_0 + 1)
                  {
                    v94 = 0xE400000000000000;
                    v95 = 1162561868;
                  }

                  else
                  {
                    v94 = 0xE700000000000000;
                    if (v144 == &dword_0 + 2)
                    {
                      v95 = 0x454B494C534944;
                    }

                    else
                    {
                      v95 = 0x4E574F4E4B4E55;
                    }
                  }
                }
              }

              goto LABEL_68;
            }

            v88 = v87;
            v89 = [v87 mediaSearch];
            if (v89)
            {
              v90 = v89;
              v91 = [v89 genreNames];

              if (!v91)
              {
                v92 = v45;
                v45 = 0;
                if (!v38)
                {
LABEL_59:
                  if (!_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v88, &off_32F1C0))
                  {

                    goto LABEL_66;
                  }

LABEL_60:
                  if (v91)
                  {
                    v103 = HIBYTE(v91) & 0xF;
                    if ((v91 & 0x2000000000000000) == 0)
                    {
                      v103 = v45 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v103)
                    {

                      v151 = 0;
                      v104 = 1;
                      v94 = 0xE400000000000000;
                      v44 = 0xE000000000000000;
                      v95 = 1497451600;
                      goto LABEL_70;
                    }

                    v94 = 0xE400000000000000;
                    v95 = 1497451600;
                    goto LABEL_67;
                  }

LABEL_66:
                  v94 = 0xE400000000000000;
                  v95 = 1497451600;
LABEL_67:
                  v45 = v92;
LABEL_68:
                  if (!v46)
                  {
                    sub_236110(0x436F54656C746974, 0xEE006D7269666E6FLL, v171);
                    sub_30B8(v171, &qword_34CEA0, &qword_2D0FC0);
                    v104 = 0;
                    v105 = v165;
                    goto LABEL_72;
                  }

                  v104 = 0;
                  v91 = v46;
LABEL_70:
                  v105 = v165;
                  v173 = &type metadata for String;
                  *&v172 = v45;
                  *(&v172 + 1) = v91;
                  sub_E2DC(&v172, v171);
                  v106 = v175;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v170 = v106;
                  sub_237690(v171, 0x436F54656C746974, 0xEE006D7269666E6FLL, isUniquelyReferenced_nonNull_native);
                  v175 = v170;
LABEL_72:
                  if (v44)
                  {
                    v173 = &type metadata for String;
                    *&v172 = v151;
                    *(&v172 + 1) = v44;
                    sub_E2DC(&v172, v171);
                    v108 = v175;
                    v109 = swift_isUniquelyReferenced_nonNull_native();
                    v170 = v108;
                    sub_237690(v171, 0x6F54747369747261, 0xEF6D7269666E6F43, v109);
                    v110 = v170;
                  }

                  else
                  {
                    sub_236110(0x6F54747369747261, 0xEF6D7269666E6F43, &v172);
                    sub_30B8(&v172, &qword_34CEA0, &qword_2D0FC0);
                    v110 = v175;
                  }

                  v173 = &type metadata for Bool;
                  LOBYTE(v172) = v104;
                  sub_E2DC(&v172, v171);
                  v111 = swift_isUniquelyReferenced_nonNull_native();
                  v170 = v110;
                  sub_237690(v171, 0x5265726E65477369, 0xEC0000006F696461, v111);
                  v112 = v170;
                  v175 = v170;
                  v173 = &type metadata for String;
                  *&v172 = v95;
                  *(&v172 + 1) = v94;
                  sub_E2DC(&v172, v171);
                  v113 = swift_isUniquelyReferenced_nonNull_native();
                  v170 = v112;
                  sub_237690(v171, 0x7954746E65746E69, 0xEA00000000006570, v113);
                  v151 = v170;
                  v150 = v105[2];
                  v114 = v105[14];
                  v165 = v105[13];
                  v149 = 0x80000000002DDA90;
                  v173 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
                  v174 = &off_33CC40;
                  *&v172 = v166;
                  v115 = qword_34BF98;
                  v116 = v166;
                  if (v115 != -1)
                  {
                    swift_once();
                  }

                  v117 = qword_35F760;
                  v118 = v164;
                  sub_2CDFB0();
                  v119 = v168;
                  v120 = v155;
                  v121 = v169;
                  (*(v168 + 16))(v155, v118, v169);
                  v122 = (*(v119 + 80) + 33) & ~*(v119 + 80);
                  v123 = (v154 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v124 = swift_allocObject();
                  *(v124 + 16) = "catServiceExecute";
                  *(v124 + 24) = 17;
                  *(v124 + 32) = 2;
                  (*(v119 + 32))(v124 + v122, v120, v121);
                  v125 = (v124 + v123);
                  v126 = v157;
                  *v125 = v156;
                  v125[1] = v126;

                  sub_2CE9E0();
                  sub_20410(&qword_34CEA8, &unk_2D0EB0);
                  v127 = swift_allocObject();
                  *(v127 + 16) = xmmword_2D0E40;
                  *(v127 + 56) = &type metadata for String;
                  v128 = sub_1087C();
                  *(v127 + 32) = v165;
                  *(v127 + 40) = v114;
                  *(v127 + 96) = &type metadata for String;
                  *(v127 + 104) = v128;
                  *(v127 + 64) = v128;
                  *(v127 + 72) = 0xD000000000000011;
                  v129 = v149;
                  *(v127 + 80) = v149;

                  v147 = v127;
                  LOBYTE(v146) = 2;
                  v145 = 125;
                  sub_2CDF90();

                  v130 = swift_allocObject();
                  *(v130 + 16) = sub_13D80;
                  *(v130 + 24) = v124;
                  v131 = v153;
                  v132 = v167;
                  v158(v153, v160, v167);

                  v133 = sub_2CDFE0();
                  v134 = sub_2CE660();

                  if (os_log_type_enabled(v133, v134))
                  {
                    v135 = swift_slowAlloc();
                    v171[0] = swift_slowAlloc();
                    *v135 = 136315394;
                    *(v135 + 4) = sub_3F08(v165, v114, v171);
                    *(v135 + 12) = 2080;
                    *(v135 + 14) = sub_3F08(0xD000000000000011, v129, v171);
                    _os_log_impl(&dword_0, v133, v134, "Evaluating CAT family:%s id:%s...", v135, 0x16u);
                    swift_arrayDestroy();
                  }

                  v161(v131, v132);
                  v171[0] = v165;
                  v171[1] = v114;

                  v178._countAndFlagsBits = 35;
                  v178._object = 0xE100000000000000;
                  sub_2CE350(v178);
                  v179._countAndFlagsBits = 0xD000000000000011;
                  v179._object = v129;
                  sub_2CE350(v179);
                  v136 = *v171;
                  v137 = sub_2CB460();
                  if (!v137)
                  {
                    sub_2CB180();
                    v137 = sub_2CB170();
                  }

                  v138 = v137;
                  v139 = v163;
                  v140 = swift_allocObject();
                  v140[2] = v138;
                  v140[3] = sub_13DB4;
                  v140[4] = v130;
                  v141 = sub_2CB180();
                  __chkstk_darwin(v141);
                  v142 = v151;
                  *(&v148 - 10) = v150;
                  *(&v148 - 9) = v142;
                  *(&v148 - 8) = v139;
                  *(&v148 - 7) = &v172;
                  *(&v148 - 6) = 0;
                  *(&v148 - 5) = v136;
                  v145 = *(&v136 + 1);
                  v146 = sub_3E06C;
                  v147 = v140;

                  sub_2CB0F0();

                  (*(v168 + 8))(v164, v169);
                  return sub_30B8(&v172, &qword_34C6C0, &qword_2D0710);
                }

LABEL_54:
                v96 = [v38 privateMediaItemValueData];
                if (v96)
                {
                  v97 = v96;
                  v98 = [v96 provider];

                  if (v98)
                  {
                    v99 = sub_2CE270();
                    v101 = v100;

                    v102 = HIBYTE(v101) & 0xF;
                    if ((v101 & 0x2000000000000000) == 0)
                    {
                      v102 = v99 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v102)
                    {
                      goto LABEL_60;
                    }
                  }
                }

                goto LABEL_59;
              }

              v92 = v45;
              v93 = sub_2CE410();

              if (v93[2])
              {
                v45 = v93[4];
                v91 = v93[5];

                if (!v38)
                {
                  goto LABEL_59;
                }

                goto LABEL_54;
              }
            }

            else
            {
              v92 = v45;
            }

            v45 = 0;
            v91 = 0;
            if (!v38)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          }

          v86 = sub_2CEEA0();

          if (v86)
          {
            goto LABEL_38;
          }

LABEL_34:
          v83 = [v38 title];
          if (v83)
          {
            v84 = v83;
            v45 = sub_2CE270();
            v46 = v85;

            goto LABEL_39;
          }

          goto LABEL_38;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      if (!v44)
      {
        goto LABEL_38;
      }

      sub_2CE2B0();
    }

    if (!v76)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v153 = v36;
  v151 = v165[2];
  v47 = v165[14];
  v164 = v165[13];
  v165 = 0x80000000002DDA60;
  v173 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v174 = &off_33CC40;
  *&v172 = v166;
  v48 = qword_34BF98;
  v49 = v166;
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = qword_35F760;
  v51 = v152;
  sub_2CDFB0();
  v52 = v168;
  v53 = v155;
  v54 = v169;
  (*(v168 + 16))(v155, v51, v169);
  v55 = (*(v52 + 80) + 33) & ~*(v52 + 80);
  v56 = (v154 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = "catServiceExecute";
  *(v57 + 24) = 17;
  *(v57 + 32) = 2;
  (*(v52 + 32))(v57 + v55, v53, v54);
  v58 = (v57 + v56);
  v59 = v157;
  *v58 = v156;
  v58[1] = v59;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2D0E40;
  *(v60 + 56) = &type metadata for String;
  v61 = sub_1087C();
  v62 = v164;
  *(v60 + 32) = v164;
  *(v60 + 40) = v47;
  *(v60 + 96) = &type metadata for String;
  *(v60 + 104) = v61;
  *(v60 + 64) = v61;
  *(v60 + 72) = 0xD000000000000020;
  v166 = 0xD000000000000020;
  v63 = v165;
  *(v60 + 80) = v165;

  v147 = v60;
  LOBYTE(v146) = 2;
  v145 = 125;
  sub_2CDF90();

  v64 = swift_allocObject();
  *(v64 + 16) = sub_13D7C;
  *(v64 + 24) = v57;
  v65 = v167;
  v158(v23, v160, v167);

  v66 = sub_2CDFE0();
  v67 = sub_2CE660();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v160 = v64;
    v69 = v68;
    v171[0] = swift_slowAlloc();
    *v69 = 136315394;
    *(v69 + 4) = sub_3F08(v62, v47, v171);
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_3F08(v166, v63, v171);
    _os_log_impl(&dword_0, v66, v67, "Evaluating CAT family:%s id:%s...", v69, 0x16u);
    swift_arrayDestroy();

    v64 = v160;

    v161(v23, v65);
    v62 = v164;
  }

  else
  {

    v161(v23, v65);
  }

  v171[0] = v62;
  v171[1] = v47;

  v176._countAndFlagsBits = 35;
  v176._object = 0xE100000000000000;
  sub_2CE350(v176);
  v177._countAndFlagsBits = 0xD000000000000020;
  v177._object = v63;
  sub_2CE350(v177);
  v77 = *v171;
  v78 = sub_2CB460();
  if (!v78)
  {
    sub_2CB180();
    v78 = sub_2CB170();
  }

  v79 = v78;
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = sub_13D84;
  v80[4] = v64;
  v81 = sub_2CB180();
  __chkstk_darwin(v81);
  v82 = v153;
  *(&v148 - 10) = v151;
  *(&v148 - 9) = v82;
  *(&v148 - 8) = v163;
  *(&v148 - 7) = &v172;
  *(&v148 - 6) = 0;
  *(&v148 - 5) = v77;
  v145 = *(&v77 + 1);
  v146 = sub_3E010;
  v147 = v80;

  sub_2CB0F0();

  (*(v168 + 8))(v152, v169);
  return sub_30B8(&v172, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_12FE64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v139 = a8;
  v136 = a1;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v132 = &v116 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v131 = &v116 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v130 = &v116 - v21;
  v22 = sub_2CCB30();
  v127 = *(v22 - 8);
  v128 = v22;
  v23 = *(v127 + 64);
  __chkstk_darwin(v22);
  v125 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_2CCAC0();
  v124 = *(v126 - 8);
  v25 = *(v124 + 64);
  __chkstk_darwin(v126);
  v123 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a4;
  v122 = [a4 unsupportedReason];
  v141 = v122;
  v142 = 0;
  sub_20410(&qword_352080, qword_2D4BD0);
  v120 = sub_2CE2A0();
  v33 = v32;
  v119 = [a5 affinityType];
  v118 = [a5 affinityType];
  INUpdateMediaAffinityIntent.firstMediaItemType()();
  v34 = INMediaItemTypeGetName();
  if (v34)
  {
    v35 = v34;
    v121 = sub_2CE270();
    v37 = v36;
  }

  else
  {
    v121 = 0;
    v37 = 0xE000000000000000;
  }

  v133 = a2;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v134 = a3;
  v135 = a5;
  v138 = a9;
  v38 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  (*(v28 + 16))(v31, v38, v27);

  v39 = sub_2CDFE0();
  v40 = sub_2CE690();

  v41 = os_log_type_enabled(v39, v40);
  v137 = v37;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v117 = v27;
    v141 = v43;
    *v42 = 136315394;
    v44 = sub_3F08(v120, v33, &v141);

    *(v42 + 4) = v44;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_3F08(v121, v37, &v141);
    _os_log_impl(&dword_0, v39, v40, "UpdateMediaAffinityDialogProvider#makeUnsupportedDialog, reason: %s, mediaType: %s", v42, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v31, v117);
  }

  else
  {

    (*(v28 + 8))(v31, v27);
  }

  v45 = v123;
  v46 = v124;
  v47 = v126;
  (*(v124 + 104))(v123, enum case for AdditionalMetricsDescription.ModuleName.umadp(_:), v126);
  v49 = v127;
  v48 = v128;
  v50 = v125;
  (*(v127 + 104))(v125, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedDialog(_:), v128);
  v51 = v129;
  v141 = [v129 unsupportedReason];
  sub_2CEE70();
  [v51 resolutionResultCode];
  v129 = sub_2CCAE0();

  (*(v49 + 8))(v50, v48);
  (*(v46 + 8))(v45, v47);
  v52 = v140[25];
  v128 = sub_35E0(v140 + 21, v140[24]);
  v53 = enum case for ActivityType.failed(_:);
  v54 = sub_2C9C20();
  v55 = *(v54 - 8);
  v56 = v130;
  (*(v55 + 104))(v130, v53, v54);
  (*(v55 + 56))(v56, 0, 1, v54);
  v57 = sub_2CA130();
  v58 = v131;
  (*(*(v57 - 8) + 56))(v131, 1, 1, v57);
  v59 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v60 = sub_2C98F0();
  v61 = *(v60 - 8);
  v62 = v132;
  (*(v61 + 104))(v132, v59, v60);
  (*(v61 + 56))(v62, 0, 1, v60);
  v64 = v135;
  v63 = v136;
  sub_2CB4E0();

  sub_30B8(v62, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v58, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
  sub_112C0(_swiftEmptyArrayStorage);

  v66 = v133;
  v65 = v134;
  if ((v133 != 0x657449616964656DLL || v134 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {

    if (v66 == 0x7974696E69666661 && v65 == 0xEC00000065707954 || (sub_2CEEA0() & 1) != 0)
    {
      v74 = v118 == &dword_0 + 2;
      v75 = v119 == &dword_0 + 1;
      sub_20410(&unk_353120, &unk_2D0B50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0E40;
      strcpy((inited + 32), "isLikeAffinity");
      *(inited + 47) = -18;
      *(inited + 48) = v75;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 80) = 0xD000000000000011;
      *(inited + 88) = 0x80000000002DB070;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = v74;
      v77 = sub_112C0(inited);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      v78 = v140[15];
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v79 = v64;
      sub_BFB8C(v77, v63, &v141, v139, v138);
    }

    else
    {
      v104 = v140[15];
      v105 = sub_112C0(_swiftEmptyArrayStorage);
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v106 = v64;
      sub_C2928(v105, v63, &v141, v139, v138);
    }

    goto LABEL_36;
  }

  v67 = v122;
  if (v122 > 4)
  {
    if (v122 <= 6)
    {
      if (v122 == (&dword_4 + 1))
      {

        v89 = v140[15];
        v90 = sub_112C0(_swiftEmptyArrayStorage);
        v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v144 = &off_33CC40;
        v141 = v64;
        v91 = v64;
        sub_33504(v90, v63, &v141, v139, v138);
      }

      else
      {

        v71 = v140[15];
        v72 = sub_112C0(_swiftEmptyArrayStorage);
        v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v144 = &off_33CC40;
        v141 = v64;
        v73 = v64;
        sub_C0210(v72, v63, &v141, v139, v138);
      }

      goto LABEL_36;
    }

    if (v122 == (&dword_4 + 3))
    {

      v99 = v140[15];
      v100 = sub_112C0(_swiftEmptyArrayStorage);
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v101 = v64;
      sub_39CA0(v100, v63, &v141, v139, v138);
      goto LABEL_36;
    }

    if (v122 == &dword_8)
    {

      v83 = v140[15];
      v84 = sub_112C0(_swiftEmptyArrayStorage);
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v85 = v64;
      sub_3C470(v84, v63, &v141, v139, v138);
      goto LABEL_36;
    }
  }

  else
  {
    if (v122 > 2)
    {
      if (v122 == (&dword_0 + 3))
      {
        v92 = v118 == &dword_0 + 2;
        v93 = v119 == &dword_0 + 1;
        sub_20410(&unk_353120, &unk_2D0B50);
        v94 = swift_initStackObject();
        *(v94 + 16) = xmmword_2D10E0;
        strcpy((v94 + 32), "isLikeAffinity");
        *(v94 + 47) = -18;
        *(v94 + 48) = v93;
        *(v94 + 72) = &type metadata for Bool;
        *(v94 + 80) = 0xD000000000000011;
        *(v94 + 88) = 0x80000000002DB070;
        *(v94 + 96) = v92;
        *(v94 + 120) = &type metadata for Bool;
        *(v94 + 128) = 0x707954616964656DLL;
        *(v94 + 168) = &type metadata for String;
        *(v94 + 136) = 0xE900000000000065;
        v95 = v137;
        *(v94 + 144) = v121;
        *(v94 + 152) = v95;
        v96 = sub_112C0(v94);
        swift_setDeallocating();
        sub_20410(&qword_34CBA0, &unk_2D0FE0);
        swift_arrayDestroy();
        v97 = v140[15];
        v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v144 = &off_33CC40;
        v141 = v64;
        v98 = v64;
        sub_C0894(v96, v63, &v141, v139, v138);
      }

      else
      {

        v80 = v140[15];
        v81 = sub_112C0(_swiftEmptyArrayStorage);
        v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
        v144 = &off_33CC40;
        v141 = v64;
        v82 = v64;
        sub_38950(v81, v63, &v141, v139, v138);
      }

      goto LABEL_36;
    }

    if (v122 == (&dword_0 + 1))
    {

      v86 = v140[15];
      v87 = sub_112C0(_swiftEmptyArrayStorage);
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v88 = v64;
      sub_38FC0(v87, v63, &v141, v139, v138);
      goto LABEL_36;
    }

    if (v122 == (&dword_0 + 2))
    {

      v68 = v140[15];
      v69 = sub_112C0(_swiftEmptyArrayStorage);
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v70 = v64;
      sub_39630(v69, v63, &v141, v139, v138);
LABEL_36:

      return sub_30B8(&v141, &qword_34C6C0, &qword_2D0710);
    }
  }

  if (_INUpdateMediaAffinityMediaItemUnsupportedReasonAppNotAvailable == v67)
  {
    v102 = v140[15];
    v103 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v103, v63, v139, v138);
  }

  else if (_INUpdateMediaAffinityMediaItemUnsupportedReasonAppNotConfigured == v67)
  {
    v108 = v140[15];
    v109 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v109, v63, v139, v138);
  }

  else
  {
    if (_INUpdateMediaAffinityMediaItemUnsupportedReasonAppAccountFailure != v67)
    {
      v112 = _INUpdateMediaAffinityMediaItemUnsupportedReasonAppDoesntSupportIntent;
      v113 = v140[15];
      v114 = sub_112C0(_swiftEmptyArrayStorage);
      v143 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
      v144 = &off_33CC40;
      v141 = v64;
      v115 = v64;
      if (v112 == v67)
      {
        sub_3A310(v114, v63, &v141, v139, v138);
      }

      else
      {
        sub_382E0(v114, v63, &v141, v139, v138);
      }

      goto LABEL_36;
    }

    v110 = v140[15];
    v111 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B6F8(v111, v63, v139, v138);
  }
}

uint64_t sub_130EA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_112C0(_swiftEmptyArrayStorage);
  v11 = *(v5 + 120);
  v14[3] = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v14[4] = &off_33CC40;
  v14[0] = a2;
  v12 = a2;
  sub_C0F18(v10, a1, v14, a4, a5);

  return sub_30B8(v14, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_130F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D10E0;
  strcpy((inited + 32), "isLikeAffinity");
  *(inited + 47) = -18;
  *(inited + 48) = [a4 affinityType] == &dword_0 + 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DB070;
  *(inited + 96) = [a4 affinityType] == &dword_0 + 2;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000000002DDAB0;
  if (a2 == 0x657449616964656DLL && a3 == 0xEA0000000000736DLL)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v11 & 1;
  v12 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v13 = *(v6 + 120);
  v19[3] = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v19[4] = &off_33CC40;
  v19[0] = a4;
  v14 = a4;
  sub_C159C(v12, a1, v19, a5, a6);

  return sub_30B8(v19, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_13117C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = sub_2CCFB0();
  *(inited + 48) = a1;
  v43 = a1;

  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v51 = v14;
  if ((a2 != 0x7974696E69666661 || a3 != 0xEC00000065707954) && (sub_2CEEA0() & 1) == 0)
  {

    return sub_12E824(v43, a2, a3, a4, a5, a6, a7);
  }

  v15 = [a4 itemToConfirm];
  sub_2CEC00();
  swift_unknownObjectRelease();
  type metadata accessor for INMediaAffinityType(0);
  v16 = swift_dynamicCast();
  v17 = sub_281668();
  v19 = v18;
  v20 = sub_281674();
  if (v19)
  {
    if (v21)
    {
      if (v17 == v20 && v19 == v21)
      {

        goto LABEL_13;
      }

      v23 = sub_2CEEA0();

      if (v23)
      {
LABEL_13:
        v24 = 0;
        v25 = 0;
        if (!v16)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!v21)
    {
      goto LABEL_13;
    }
  }

  v24 = sub_281674();
  v25 = v26;
  if (!v16)
  {
LABEL_19:
    v27 = 0xE700000000000000;
    v28 = 0x4E574F4E4B4E55;
    goto LABEL_20;
  }

LABEL_16:
  if (*&v50[0] == 1)
  {
    v27 = 0xE400000000000000;
    v28 = 1162561868;
    goto LABEL_20;
  }

  if (*&v50[0] != 2)
  {
    goto LABEL_19;
  }

  v27 = 0xE700000000000000;
  v28 = 0x454B494C534944;
LABEL_20:
  if (v19)
  {
    v47 = &type metadata for String;
    *&v46 = v17;
    *(&v46 + 1) = v19;
    sub_E2DC(&v46, v50);
    v29 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v29;
    sub_237690(v50, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v51 = v49;
  }

  else
  {
    sub_236110(0x656C746974, 0xE500000000000000, &v46);
    sub_30B8(&v46, &qword_34CEA0, &qword_2D0FC0);
  }

  if (v25)
  {
    v47 = &type metadata for String;
    *&v46 = v24;
    *(&v46 + 1) = v25;
    sub_E2DC(&v46, v50);
    v31 = v51;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v31;
    sub_237690(v50, 0x747369747261, 0xE600000000000000, v32);
    v51 = v49;
  }

  else
  {
    sub_236110(0x747369747261, 0xE600000000000000, &v46);
    sub_30B8(&v46, &qword_34CEA0, &qword_2D0FC0);
  }

  v33 = [a5 mediaItems];
  if (v33)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v34 = sub_2CE410();

    if (v34 >> 62)
    {
      v33 = sub_2CEDA0();
    }

    else
    {
      v33 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    }
  }

  v47 = &type metadata for Int;
  *&v46 = v33;
  sub_E2DC(&v46, v50);
  v35 = v51;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v35;
  sub_237690(v50, 0x657449616964656DLL, 0xEE00746E756F436DLL, v36);
  v37 = v49;
  v47 = &type metadata for String;
  *&v46 = v28;
  *(&v46 + 1) = v27;
  sub_E2DC(&v46, v50);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v37;
  sub_237690(v50, 0x7974696E69666661, 0xEC00000065707954, v38);
  v39 = v49;
  v40 = *(v44 + 120);
  v47 = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v48 = &off_33CC40;
  *&v46 = a5;
  v41 = a5;
  sub_C22A4(v39, v43, &v46, v42, a7);

  return sub_30B8(&v46, &qword_34C6C0, &qword_2D0710);
}

uint64_t type metadata accessor for UpdateMediaAffinityDialogProvider()
{
  result = qword_351E30;
  if (!qword_351E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1317A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v32 = a4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0050;
  strcpy((inited + 32), "isLikeAffinity");
  *(inited + 47) = -18;
  *(inited + 48) = [a2 affinityType] == &dword_0 + 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DB070;
  *(inited + 96) = [a2 affinityType] == &dword_0 + 2;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x80000000002DDAD0;
  v8 = [a2 mediaSearch];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 reference];

    v11 = v10 == &dword_0 + 1;
  }

  else
  {
    v11 = 0;
  }

  *(inited + 144) = v11;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x657449616964656DLL;
  *(inited + 184) = 0xEF746E756F43736DLL;
  v12 = [a2 mediaItems];
  if (v12)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v13 = sub_2CE410();

    if (v13 >> 62)
    {
      v12 = sub_2CEDA0();
    }

    else
    {
      v12 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    }
  }

  *(inited + 192) = v12;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0x7473697472417369;
  *(inited + 232) = 0xE800000000000000;
  v14 = [a2 mediaSearch];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 mediaType];

    v17 = v16 == &dword_0 + 3;
  }

  else
  {
    v17 = 0;
  }

  *(inited + 240) = v17;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0x6D75626C417369;
  *(inited + 280) = 0xE700000000000000;
  v18 = [a2 mediaSearch];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 mediaType];

    v21 = v20 == &dword_0 + 2;
  }

  else
  {
    v21 = 0;
  }

  *(inited + 288) = v21;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0x676E6F537369;
  *(inited + 328) = 0xE600000000000000;
  v22 = [a2 mediaSearch];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 mediaType];

    v25 = v24 == &dword_0 + 1;
  }

  else
  {
    v25 = 0;
  }

  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v25;
  v26 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v27 = *(v4 + 120);
  v34[3] = sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  v34[4] = &off_33CC40;
  v34[0] = a2;
  v28 = a2;
  sub_BF508(v26, a1, v34, v31, v33);

  return sub_30B8(v34, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_131B6C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v105 = a1;
  v106 = a2;
  v89 = sub_2CD500();
  v88 = *(v89 - 8);
  v2 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2CD4C0();
  v103 = *(v4 - 8);
  v5 = v103[8];
  __chkstk_darwin(v4);
  v90 = &v80[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v7 = *(*(v102 - 8) + 64);
  v8 = __chkstk_darwin(v102);
  v91 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v96 = &v80[-v10];
  v11 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v86 = &v80[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v93 = &v80[-v16];
  v17 = __chkstk_darwin(v15);
  v94 = &v80[-v18];
  v19 = __chkstk_darwin(v17);
  v92 = &v80[-v20];
  v21 = __chkstk_darwin(v19);
  v95 = &v80[-v22];
  v23 = __chkstk_darwin(v21);
  v101 = &v80[-v24];
  __chkstk_darwin(v23);
  v26 = &v80[-v25];
  v104 = sub_2CA870();
  v27 = *(v104 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v104);
  v30 = &v80[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = __chkstk_darwin(v31);
  v100 = &v80[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v37 = &v80[-v36];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v38 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v39 = v32[2];
  v99 = v38;
  v98 = v32 + 2;
  v97 = v39;
  v39(v37, v38, v31);
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_0, v40, v41, "PlayMediaFlowStrategy#actionForInput", v42, 2u);
  }

  v45 = v32[1];
  v43 = v32 + 1;
  v44 = v45;
  v45(v37, v31);
  sub_2CA790();
  v46 = sub_D2F98(v30, &v107);
  (*(v27 + 8))(v30, v104, v46);
  if (!v108)
  {
    sub_30B8(&v107, &qword_34CF98, &unk_2D1A40);
    goto LABEL_11;
  }

  v104 = v44;
  v105 = v43;
  sub_420A4(&v107, &v109);
  sub_35E0(&v109, v110);
  sub_2CD840();
  v47 = v103;
  v48 = v103[6];
  v49 = v48(v26, 1, v4);
  sub_30B8(v26, &qword_34D6B8, &qword_2D15B0);
  if (v49 == 1)
  {
LABEL_29:
    sub_2C9CE0();
    return sub_306C(&v109);
  }

  sub_35E0(&v109, v110);
  v50 = v101;
  sub_2CD840();
  v51 = v50;
  v52 = v47[13];
  v53 = v95;
  v85 = v47 + 13;
  v83 = v52;
  v52(v95, enum case for CommonAudio.Verb.play(_:), v4);
  v54 = v47[7];
  v84 = v47 + 7;
  v82 = v54;
  v54(v53, 0, 1, v4);
  v55 = *(v102 + 48);
  v56 = v50;
  v57 = v96;
  sub_F7598(v56, v96);
  sub_F7598(v53, &v57[v55]);
  if (v48(v57, 1, v4) == 1)
  {
    sub_30B8(v53, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v51, &qword_34D6B8, &qword_2D15B0);
    if (v48(&v57[v55], 1, v4) == 1)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v63 = v92;
  sub_F7598(v57, v92);
  if (v48(&v57[v55], 1, v4) == 1)
  {
    sub_30B8(v53, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v101, &qword_34D6B8, &qword_2D15B0);
    (v47[1])(v63, v4);
LABEL_16:
    sub_30B8(v57, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_17;
  }

  v73 = &v57[v55];
  v74 = v90;
  (v47[4])(v90, v73, v4);
  sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v81 = sub_2CE250();
  v75 = v103[1];
  v75(v74, v4);
  sub_30B8(v53, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v101, &qword_34D6B8, &qword_2D15B0);
  v75(v92, v4);
  v47 = v103;
  sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
  if (v81)
  {
    goto LABEL_29;
  }

LABEL_17:
  sub_35E0(&v109, v110);
  v64 = v94;
  sub_2CD840();
  v65 = v93;
  v83(v93, enum case for CommonAudio.Verb.start(_:), v4);
  v82(v65, 0, 1, v4);
  v66 = *(v102 + 48);
  v67 = v91;
  sub_F7598(v64, v91);
  sub_F7598(v65, &v67[v66]);
  if (v48(v67, 1, v4) == 1)
  {
    sub_30B8(v65, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v64, &qword_34D6B8, &qword_2D15B0);
    if (v48(&v67[v66], 1, v4) == 1)
    {
      v57 = v67;
LABEL_20:
      sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_29;
    }
  }

  else
  {
    v68 = v86;
    sub_F7598(v67, v86);
    if (v48(&v67[v66], 1, v4) != 1)
    {
      v76 = &v67[v66];
      v77 = v90;
      (v47[4])(v90, v76, v4);
      sub_F7608(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      v78 = sub_2CE250();
      v79 = v47[1];
      v79(v77, v4);
      sub_30B8(v93, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v94, &qword_34D6B8, &qword_2D15B0);
      v79(v68, v4);
      sub_30B8(v67, &qword_34D6B8, &qword_2D15B0);
      if (v78)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    sub_30B8(v93, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v94, &qword_34D6B8, &qword_2D15B0);
    (v47[1])(v68, v4);
  }

  sub_30B8(v67, &qword_34D6B0, &unk_2D4FC0);
LABEL_24:
  sub_35E0(&v109, v110);
  v69 = v88;
  v70 = v87;
  v71 = v89;
  (*(v88 + 104))(v87, enum case for CommonAudio.Attribute.playNext(_:), v89);
  v72 = sub_2CD910();
  (*(v69 + 8))(v70, v71);
  if (v72)
  {
    goto LABEL_29;
  }

  sub_306C(&v109);
  v44 = v104;
LABEL_11:
  v58 = v100;
  v97(v100, v99, v31);
  v59 = sub_2CDFE0();
  v60 = sub_2CE680();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "PlayMediaFlowStrategy#actionForInput received unsupported pommesResponse", v61, 2u);
  }

  v44(v58, v31);
  return sub_2C9CF0();
}

uint64_t type metadata accessor for PlayMediaFlowStrategy()
{
  result = qword_3520B0;
  if (!qword_3520B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1328FC(void *a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v55 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v56 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v14 = v5[2];
  v14(v12, v13, v4);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "PlayMediaFlowStrategy#makeIntentFrom", v17, 2u);
  }

  v20 = v5[1];
  v19 = v5 + 1;
  v18 = v20;
  v20(v12, v4);
  v21 = sub_1B8014();
  if (v21)
  {
    v22 = v21;
    v23 = v56;
    v14(v56, v13, v4);
    v24 = v22;
    v25 = sub_2CDFE0();
    v26 = sub_2CE670();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v27 = 136315138;
      v28 = v24;
      v54 = v18;
      v29 = v28;
      v30 = [v28 description];
      v53 = v19;
      v31 = v24;
      v32 = v30;
      v33 = sub_2CE270();
      v35 = v34;

      v24 = v31;
      v36 = sub_3F08(v33, v35, &v59);

      *(v27 + 4) = v36;
      _os_log_impl(&dword_0, v25, v26, "PlayMediaFlowStrategy#makeIntentFromParse converted pommesResponse to intent: %s", v27, 0xCu);
      sub_306C(v55);

      v54(v56, v4);
    }

    else
    {

      v18(v23, v4);
    }

    v49 = v24;
    v58(v22, 0);
  }

  else
  {
    v37 = v55;
    v14(v55, v13, v4);
    v38 = v37;
    v39 = a1;
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v59 = v43;
      *v42 = 136315138;
      sub_2CDAD0();
      v54 = v18;
      sub_2CDA50();
      v44 = sub_2CE420();
      v45 = v38;
      v47 = v46;

      v48 = sub_3F08(v44, v47, &v59);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_0, v40, v41, "PlayMediaFlowStrategy#makeIntentFromParse pommesResponse doesn't contain audioExperience %s", v42, 0xCu);
      sub_306C(v43);

      v54(v45, v4);
    }

    else
    {

      v18(v37, v4);
    }

    v50 = sub_2CB850();
    sub_F7608(&qword_34CCA8, &type metadata accessor for PlaybackCode);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, enum case for PlaybackCode.ceGE75(_:), v50);
    v58(v51, 1);
  }
}

uint64_t sub_132EA8(unsigned __int8 *a1)
{
  v3 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DirectInvocationIntent_confirmationState;
  v8 = sub_2CD490();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v1 + v7, 1, 1, v8);
  if (a1[56] == 2)
  {
    if (*a1 > 1u)
    {
      if (*a1 == 2)
      {
        v11 = &enum case for CommonAudio.Confirmation.moreInfo(_:);
      }

      else
      {
        v11 = &enum case for CommonAudio.Confirmation.cancel(_:);
      }
    }

    else if (*a1)
    {
      v11 = &enum case for CommonAudio.Confirmation.no(_:);
    }

    else
    {
      v11 = &enum case for CommonAudio.Confirmation.yes(_:);
    }

    (*(v9 + 104))(v6, *v11, v8);
    v10(v6, 0, 1, v8);
    swift_beginAccess();
    sub_133464(v6, v1 + v7);
    swift_endAccess();
  }

  else
  {

    sub_133410(a1);
    return 0;
  }

  return v1;
}

uint64_t sub_133060()
{
  sub_1333A8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DirectInvocationIntent_confirmationState);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DirectInvocationIntent()
{
  result = qword_352250;
  if (!qword_352250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_133118()
{
  sub_1331A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1331A8()
{
  if (!qword_34F668)
  {
    sub_2CD490();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34F668);
    }
  }
}

uint64_t sub_133200@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DirectInvocationIntent_confirmationState;
  swift_beginAccess();
  return sub_133338(v3 + v4, a1);
}

uint64_t sub_1332C8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_133338(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1333A8(uint64_t a1)
{
  v2 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_133464(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1334D4()
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

  sub_2C9A00();
  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
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
  sub_F3F4(v24, &v17, qword_34C708, &qword_2D1620);
  if (v18)
  {

    sub_30B8(v24, qword_34C708, &qword_2D1620);
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
    sub_30B8(v24, qword_34C708, &qword_2D1620);
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
      sub_30B8(&v17, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

uint64_t sub_1338FC@<X0>(void *a1@<X8>)
{
  v2 = sub_2CC040();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_2CC030();
  (*(v3 + 16))(v7, v9, v2);
  v10 = sub_13496C(v7);
  (*(v3 + 8))(v9, v2);
  result = type metadata accessor for ShazamKitRecognizer();
  a1[3] = result;
  a1[4] = &off_334628;
  *a1 = v10;
  return result;
}

uint64_t sub_133A2C@<X0>(uint64_t *a1@<X8>)
{
  v6 = sub_2CC2B0();
  v7 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v5);
  sub_2CC2A0();
  v2 = type metadata accessor for SiriAudioOutputProvider();
  v3 = swift_allocObject();
  result = sub_F338(&v5, v3 + 16);
  a1[3] = v2;
  a1[4] = &off_337EB0;
  *a1 = v3;
  return result;
}

uint64_t sub_133ABC()
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
  sub_F3F4(v24, &v17, qword_34C708, &qword_2D1620);
  if (v18)
  {

    sub_30B8(v24, qword_34C708, &qword_2D1620);
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
    sub_30B8(v24, qword_34C708, &qword_2D1620);
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
      sub_30B8(&v17, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

uint64_t sub_133EE4@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = sub_2CC2B0();
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = sub_2CDC30();
  v70[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(v70);
  sub_2CDC20();
  v10 = type metadata accessor for AudioFlowProvider();
  v11 = swift_allocObject();
  v69[3] = v1;
  v69[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v69);
  sub_2CC2A0();
  sub_2C9A00();
  sub_2CA430();
  v66[3] = sub_2CC040();
  v66[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v66);
  sub_2CC030();
  v65[4] = &off_3367A0;
  v65[3] = v10;
  v65[0] = v11;
  v12 = type metadata accessor for PommesResponseFlow();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v46 = v12;
  v15 = swift_allocObject();
  v16 = sub_F9A0(v65, v10);
  v17 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v64[4] = &off_3367A0;
  v64[3] = v10;
  v64[0] = v21;
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input;
  v23 = sub_2CA7B0();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse) = 0;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v9, v24, v5);
  v25 = sub_2CDFE0();
  v26 = sub_2CE670();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "PommesResponseFlow#init", v27, 2u);
  }

  (*(v6 + 8))(v9, v5);
  sub_EEAC(v70, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider);
  sub_EEAC(v64, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider);
  sub_EEAC(v69, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_featureFlagProvider);
  sub_EEAC(v68, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker);
  sub_EEAC(v67, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_publisher);
  sub_EEAC(v66, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_nowPlayingProvider);
  v28 = (v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_addFlowWithAppResolution);
  *v28 = sub_2A1120;
  v28[1] = 0;
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v29 = CATDefaultMode;
  v30 = sub_2CBC00();
  v31 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v32 = swift_allocObject();
  v62[3] = &type metadata for StringsBackedAppNameResolver;
  v62[4] = sub_2869C();
  v62[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v62[0] + 16);
  v61[3] = v30;
  v61[4] = &protocol witness table for MorphunProvider;
  v61[0] = v31;
  v60[3] = v1;
  v60[4] = &protocol witness table for FeatureFlagProvider;
  v33 = sub_F390(v60);
  v34 = v45;
  (*(v45 + 16))(v33, v4, v1);
  *(v32 + 296) = v29;
  sub_EEAC(v60, v32 + 256);
  sub_EEAC(v62, v59);
  sub_EEAC(v61, v58);
  sub_EEAC(v63, v57);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v35 = sub_2CCA30();

  v36 = sub_2CCA20();
  v54[3] = v35;
  v54[4] = &protocol witness table for MultiUserConnectionProvider;
  v54[0] = v36;
  v53[3] = sub_2CB9E0();
  v53[4] = &protocol witness table for DeviceProvider;
  sub_F390(v53);
  sub_2CB9C0();
  sub_EEAC(v59, v32 + 16);
  sub_EEAC(v58, v32 + 216);
  sub_EEAC(v57, v32 + 56);
  sub_EEAC(v54, v32 + 96);
  sub_EEAC(v53, v32 + 176);
  sub_F3F4(v55, &v48, qword_34C708, &qword_2D1620);
  if (v49)
  {

    sub_30B8(v55, qword_34C708, &qword_2D1620);
    sub_306C(v57);
    sub_306C(v58);
    sub_306C(v59);
    (*(v34 + 8))(v4, v1);
    sub_306C(v63);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v62);
    sub_306C(v53);
    sub_306C(v54);
    sub_F338(&v48, &v50);
  }

  else
  {
    sub_EEAC(v57, &v50);
    v37 = sub_2C9E60();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_2C9E50();
    v51 = v37;
    v52 = &protocol witness table for ContactsManager;

    *&v50 = v40;
    sub_30B8(v55, qword_34C708, &qword_2D1620);
    sub_306C(v57);
    sub_306C(v58);
    sub_306C(v59);
    (*(v34 + 8))(v4, v1);
    sub_306C(v63);
    sub_306C(v60);
    sub_306C(v61);
    sub_306C(v62);
    sub_306C(v53);
    sub_306C(v54);
    if (v49)
    {
      sub_30B8(&v48, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v50, v32 + 136);
  type metadata accessor for CommonMediaIntentCatDialogService();
  v41 = swift_allocObject();
  sub_306C(v67);
  sub_306C(v68);
  sub_306C(v66);
  sub_306C(v69);
  sub_306C(v70);
  sub_306C(v64);
  v41[2] = 0xD000000000000011;
  v41[3] = 0x80000000002DA8D0;
  v41[4] = v32;
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_commonMediaIntentCatDialogService) = v41;
  sub_306C(v65);
  v42 = v47;
  v47[3] = v46;
  result = sub_139688(&qword_3524E8, type metadata accessor for PommesResponseFlow);
  v42[4] = result;
  *v42 = v15;
  return result;
}

uint64_t sub_13479C(uint64_t a1, void *a2)
{
  v4 = sub_2CA7B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352470, &qword_2D4D68);
  if (qword_34BFE8 != -1)
  {
    swift_once();
  }

  v14 = qword_35F7D0;
  v9 = qword_34BFF0;

  if (v9 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v8, a1, v4);

  v10 = a2;
  v14 = sub_2CA8A0();
  sub_139084(&qword_352478, &qword_352470, &qword_2D4D68);
  v11 = sub_2C97B0();

  return v11;
}

id sub_13496C(uint64_t a1)
{
  v2 = sub_2CC040();
  v10[3] = v2;
  v10[4] = &protocol witness table for NowPlayingProvider;
  v3 = sub_F390(v10);
  (*(*(v2 - 8) + 32))(v3, a1, v2);
  v4 = type metadata accessor for ShazamKitRecognizer();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_result] = 0;
  sub_20410(&qword_34FF10, qword_2D3620);
  swift_storeEnumTagMultiPayload();
  sub_EEAC(v10, &v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_nowPlayingProvider]);
  v6 = [objc_allocWithZone(SHManagedSession) init];
  *&v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_managedSession] = v6;
  *&v5[OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShazamKitRecognizer_dispatchGroup] = dispatch_group_create();
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_306C(v10);
  return v7;
}

uint64_t sub_134AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a1;
  v7 = sub_2CDFD0();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CC2B0();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = v68[8];
  __chkstk_darwin(v10);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2CB4A0();
  v100 = &protocol witness table for SiriKitTaskLoggingProvider;
  v18 = v99;
  v98[0] = a3;
  sub_2C8E20();
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v20 = sub_20410(&qword_3524B0, &unk_2D8440);
  (*(*(v20 - 8) + 56))(a4 + v19, 1, 1, v20);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v21, v13);
  v22 = sub_2CDFE0();
  v23 = sub_2CE670();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "PlayMediaRCHFlowWrapper#init", v24, 2u);
  }

  (*(v14 + 8))(v17, v13);
  sub_F3F4(v73, a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_input, &qword_34E480, &qword_2D2280);
  if (a2)
  {
    v25 = a2;
    v26 = v18;
    v27 = v69;
    v28 = v67;
  }

  else
  {
    sub_20410(&qword_3510A8, &unk_2D4D80);
    v26 = v18;
    if (qword_34C030 != -1)
    {
      swift_once();
    }

    v97[0] = static PlayMedia.flowStrategy;
    v29 = qword_34C038;

    v30 = v29 == -1;
    v27 = v69;
    v28 = v67;
    if (!v30)
    {
      swift_once();
    }

    v25 = sub_2CA8B0();
  }

  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaFlow) = v25;
  sub_EEAC(v98, a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider);
  v31 = qword_34BFB8;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = CATDefaultMode;
  v33 = sub_2CBC00();
  v34 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v35 = swift_allocObject();
  v95 = &type metadata for StringsBackedAppNameResolver;
  v96 = sub_2869C();
  v94[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v94[0] + 16);
  v92 = v33;
  v93 = &protocol witness table for MorphunProvider;
  v91[0] = v34;
  v89 = v27;
  v90 = &protocol witness table for FeatureFlagProvider;
  v36 = sub_F390(v88);
  v37 = v68;
  (v68[2])(v36, v28, v27);
  *(v35 + 296) = v32;
  sub_EEAC(v88, v35 + 256);
  sub_EEAC(v94, v87);
  sub_EEAC(v91, v86);
  sub_EEAC(v97, v85);
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v38 = sub_2CCA30();

  v39 = sub_2CCA20();
  v81 = v38;
  v82 = &protocol witness table for MultiUserConnectionProvider;
  *&v80 = v39;
  v79[3] = sub_2CB9E0();
  v79[4] = &protocol witness table for DeviceProvider;
  sub_F390(v79);
  sub_2CB9C0();
  sub_EEAC(v87, v35 + 16);
  sub_EEAC(v86, v35 + 216);
  sub_EEAC(v85, v35 + 56);
  sub_EEAC(&v80, v35 + 96);
  sub_EEAC(v79, v35 + 176);
  sub_F3F4(v83, &v74, qword_34C708, &qword_2D1620);
  if (v75)
  {

    sub_30B8(v83, qword_34C708, &qword_2D1620);
    sub_306C(v85);
    sub_306C(v86);
    sub_306C(v87);
    (v37[1])(v28, v27);
    sub_306C(v97);
    sub_306C(v88);
    sub_306C(v91);
    sub_306C(v94);
    sub_306C(v79);
    sub_306C(&v80);
    sub_F338(&v74, &v76);
  }

  else
  {
    sub_EEAC(v85, &v76);
    v40 = sub_2C9E60();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_2C9E50();
    v77 = v40;
    v78 = &protocol witness table for ContactsManager;

    *&v76 = v43;
    sub_30B8(v83, qword_34C708, &qword_2D1620);
    sub_306C(v85);
    sub_306C(v86);
    sub_306C(v87);
    (v37[1])(v28, v27);
    sub_306C(v97);
    sub_306C(v88);
    sub_306C(v91);
    sub_306C(v94);
    sub_306C(v79);
    sub_306C(&v80);
    if (v75)
    {
      sub_30B8(&v74, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v76, v35 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v44 = swift_allocObject();
  v44[5] = 0x6964654D79616C50;
  v44[6] = 0xEF746E65746E4961;
  v44[2] = 0xD000000000000011;
  v44[3] = 0x80000000002DA8D0;
  v69 = 0x80000000002DA8D0;
  v44[4] = v35;
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService) = v44;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v95 = v27;
  v96 = &protocol witness table for FeatureFlagProvider;
  sub_F390(v94);
  sub_2CC2A0();
  v92 = sub_2CC360();
  v93 = &protocol witness table for StringsFileResolver;
  sub_F390(v91);
  sub_2CC350();
  v45 = sub_2CB490();
  v89 = v26;
  v90 = &protocol witness table for SiriKitTaskLoggingProvider;
  v88[0] = v45;
  v46 = v26;
  if (qword_34C048 != -1)
  {
    swift_once();
  }

  v47 = qword_35F900;
  sub_2CBC60();
  v48 = type metadata accessor for DialogHistoryProvider();
  v86[3] = v48;
  v86[4] = &off_33CAE0;
  v86[0] = v47;
  type metadata accessor for PlayMediaDialogProvider();
  v49 = swift_allocObject();
  v50 = sub_F9A0(v86, v48);
  v68 = &v66;
  v51 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = (&v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = *v53;
  v85[3] = v48;
  v85[4] = &off_33CAE0;
  v85[0] = v55;
  v49[15] = v44;
  sub_EEAC(v94, (v49 + 16));
  sub_EEAC(v88, (v49 + 31));
  sub_EEAC(v85, (v49 + 21));
  sub_EEAC(v87, (v49 + 26));
  sub_EEAC(v91, v83);

  v56 = sub_2CB490();
  v81 = v46;
  v82 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v80 = v56;
  sub_306C(v87);
  sub_306C(v97);
  sub_306C(v88);
  sub_306C(v91);
  sub_306C(v94);
  sub_306C(v85);
  v49[13] = 0xD000000000000011;
  v49[14] = v69;
  v49[2] = v35;
  sub_F338(v83, (v49 + 3));
  sub_F338(&v80, (v49 + 8));
  sub_306C(v86);
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaDialogProvider) = v49;
  v57 = sub_2C9C10();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_viewFactory) = sub_2C9BF0();
  v60 = sub_2CC070();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  *(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_pseSignalsStitcher) = sub_2CC060();
  sub_2CBED0();
  sub_2CBEC0();
  sub_2CBE90();

  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v63 = qword_35F760;
  v64 = v70;
  sub_2CDFB0();
  (*(v71 + 32))(a4 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_signpost, v64, v72);
  sub_2CE9E0();
  sub_2CDF90();

  sub_30B8(v73, &qword_34E480, &qword_2D2280);
  sub_306C(v98);
  return a4;
}

uint64_t sub_1356F8(uint64_t a1, void *a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_2CA7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_3510A8, &unk_2D4D80);
  if (qword_34C030 != -1)
  {
    swift_once();
  }

  v25 = static PlayMedia.flowStrategy;
  v13 = qword_34C038;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *(v9 + 16);
  v14(v12, a1, v8);

  v15 = a2;
  v16 = sub_2CA8A0();
  v14(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_2CB4A0();
  v17 = sub_2CB490();
  v18 = type metadata accessor for PlayMediaRCHFlowWrapper(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v25 = sub_134AA4(v7, v16, v17, v21);
  sub_139688(&qword_3510B0, type metadata accessor for PlayMediaRCHFlowWrapper);
  v22 = sub_2C97B0();

  return v22;
}

uint64_t sub_1359C4(uint64_t a1, void *a2)
{
  v4 = sub_2CC2B0();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34E480, &qword_2D2280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - v9;
  v11 = sub_2CA7B0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  v58 = v4;
  v88[3] = v4;
  v88[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v88);
  v14 = a2;
  sub_2CC2A0();
  v15 = sub_2CC7A0();
  v16 = sub_2CC790();
  v87[3] = v15;
  v87[4] = &protocol witness table for MediaRemoteAPIProvider;
  v87[0] = v16;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v85[3] = &type metadata for StringsBackedAppNameResolver;
  v17 = sub_2869C();
  v85[4] = v17;
  v18 = swift_allocObject();
  v85[0] = v18;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v18 + 16);
  v57 = sub_2CB9E0();
  v84[3] = v57;
  v84[4] = &protocol witness table for DeviceProvider;
  sub_F390(v84);
  sub_2CB9C0();
  v83[3] = sub_2CDDF0();
  v83[4] = &protocol witness table for EncryptionProvider;
  sub_F390(v83);
  sub_2CDDE0();
  v19 = sub_2CC710();
  v20 = sub_2CC700();
  v82[4] = &protocol witness table for SharedContextProvider;
  v82[3] = v19;
  v82[0] = v20;
  v21 = sub_2CB4A0();
  v22 = sub_2CB490();
  v81 = &protocol witness table for SiriKitTaskLoggingProvider;
  v80 = v21;
  *&v79 = v22;
  v23 = type metadata accessor for ConfirmInterruptionFlow();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v61 = v23;
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  v13((v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input), 1, 1, v11);
  v28 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent) = 0;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_originalPlayMediaRCHFlowWrapper) = 0;
  v29 = v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_state;
  *v29 = 0;
  *(v29 + 8) = 1;
  swift_beginAccess();
  v62 = v10;
  sub_BED04(v10, v26 + v27);
  swift_endAccess();
  v30 = *(v26 + v28);
  *(v26 + v28) = a2;

  sub_EEAC(v88, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_featureFlagProvider);
  sub_EEAC(v87, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_mediaRemoteAPIProvider);
  sub_EEAC(v84, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_deviceProvider);
  sub_EEAC(v86, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_aceServiceInvoker);
  sub_EEAC(v86, v78);
  v31 = CATDefaultMode;
  v32 = sub_2CBC00();
  v33 = sub_2CBBF0();

  v34 = v59;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v35 = swift_allocObject();
  v77[3] = &type metadata for StringsBackedAppNameResolver;
  v77[4] = v17;
  v77[0] = swift_allocObject();
  sub_285EC(v18 + 16, v77[0] + 16);
  v76[3] = v32;
  v76[4] = &protocol witness table for MorphunProvider;
  v76[0] = v33;
  v36 = v58;
  v75[3] = v58;
  v75[4] = &protocol witness table for FeatureFlagProvider;
  v37 = sub_F390(v75);
  v38 = v60;
  (*(v60 + 16))(v37, v34, v36);
  *(v35 + 296) = v31;
  sub_EEAC(v75, v35 + 256);
  sub_EEAC(v77, v74);
  sub_EEAC(v76, v73);
  sub_EEAC(v78, v72);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v39 = sub_2CCA30();
  v40 = sub_2CCA20();
  v69[3] = v39;
  v69[4] = &protocol witness table for MultiUserConnectionProvider;
  v69[0] = v40;
  v68[3] = v57;
  v68[4] = &protocol witness table for DeviceProvider;
  sub_F390(v68);
  sub_2CB9C0();
  sub_EEAC(v74, v35 + 16);
  sub_EEAC(v73, v35 + 216);
  sub_EEAC(v72, v35 + 56);
  sub_EEAC(v69, v35 + 96);
  sub_EEAC(v68, v35 + 176);
  sub_F3F4(v70, &v63, qword_34C708, &qword_2D1620);
  v41 = v36;
  if (v64)
  {

    sub_30B8(v70, qword_34C708, &qword_2D1620);
    sub_306C(v72);
    sub_306C(v73);
    sub_306C(v74);
    (*(v38 + 8))(v34, v36);
    sub_306C(v78);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    sub_306C(v68);
    sub_306C(v69);
    sub_F338(&v63, &v65);
  }

  else
  {
    sub_EEAC(v72, &v65);
    v42 = sub_2C9E60();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_2C9E50();
    v66 = v42;
    v67 = &protocol witness table for ContactsManager;

    *&v65 = v45;
    sub_30B8(v70, qword_34C708, &qword_2D1620);
    sub_306C(v72);
    sub_306C(v73);
    sub_306C(v74);
    (*(v38 + 8))(v34, v41);
    sub_306C(v78);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    sub_306C(v68);
    sub_306C(v69);
    if (v64)
    {
      sub_30B8(&v63, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v65, v35 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v46 = swift_allocObject();
  v46[5] = 0x6964654D79616C50;
  v46[6] = 0xEF746E65746E4961;
  v46[2] = 0xD000000000000011;
  v46[3] = 0x80000000002DA8D0;
  v46[4] = v35;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_playMediaCatDialogService) = v46;
  v47 = sub_2C9C10();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_viewFactory) = sub_2C9BF0();
  sub_EEAC(v85, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_appNameResolver);
  sub_EEAC(v83, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_encryptionProvider);
  sub_EEAC(v82, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_sharedContextProvider);
  sub_EEAC(v88, v78);
  sub_EEAC(v86, v77);
  v50 = sub_2CBCD0();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_2CBCB0();
  v54 = (v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_seDeviceProvider);
  v54[3] = v50;
  v54[4] = &protocol witness table for SEDeviceProvider;
  *v54 = v53;
  sub_306C(v86);
  sub_30B8(v62, &qword_34E480, &qword_2D2280);
  sub_306C(v82);
  sub_306C(v83);
  sub_306C(v84);
  sub_306C(v85);
  sub_306C(v87);
  sub_306C(v88);
  sub_F338(&v79, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_siriKitTaskLoggingProvider);
  v88[0] = v26;
  sub_139688(&qword_34ED60, type metadata accessor for ConfirmInterruptionFlow);
  v55 = sub_2C97B0();

  return v55;
}

uint64_t sub_1362C8(uint64_t a1)
{
  v78 = a1;
  v77 = sub_2CC2B0();
  v1 = *(v77 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v77);
  v75 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20410(&qword_34E480, &qword_2D2280);
  v4 = *(*(v74 - 8) + 64);
  v5 = __chkstk_darwin(v74);
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v74 - v8;
  __chkstk_darwin(v7);
  v11 = &v74 - v10;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  sub_F3F4(v78, v11, &qword_34E480, &qword_2D2280);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  v20 = os_log_type_enabled(v18, v19);
  v76 = v1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v113[0] = v22;
    *v21 = 136315138;
    sub_F3F4(v11, v9, &qword_34E480, &qword_2D2280);
    v23 = sub_2CE2A0();
    v74 = v12;
    v25 = v24;
    sub_30B8(v11, &qword_34E480, &qword_2D2280);
    v26 = sub_3F08(v23, v25, v113);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v18, v19, "Returning ambiguousPlayFlow with %s", v21, 0xCu);
    sub_306C(v22);

    (*(v13 + 8))(v16, v74);
  }

  else
  {

    sub_30B8(v11, &qword_34E480, &qword_2D2280);
    (*(v13 + 8))(v16, v12);
  }

  v27 = v79;
  sub_F3F4(v78, v79, &qword_34E480, &qword_2D2280);
  sub_2CA430();
  v112[3] = sub_2CDC30();
  v112[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(v112);
  sub_2CDC20();
  v28 = type metadata accessor for AudioFlowProvider();
  v29 = swift_allocObject();
  v30 = sub_2CC6F0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_2CC6E0();
  v111[3] = v30;
  v111[4] = &protocol witness table for NetworkStatusProvider;
  v111[0] = v33;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v109[3] = &type metadata for StringsBackedAppNameResolver;
  v74 = sub_2869C();
  v109[4] = v74;
  v34 = swift_allocObject();
  v109[0] = v34;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v34 + 16);
  v35 = sub_2CBCD0();
  v36 = sub_2CBCC0();
  v108 = &protocol witness table for SEDeviceProvider;
  v107 = v35;
  *&v106 = v36;
  v37 = v77;
  v104 = v77;
  v105 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v103);
  sub_2CC2A0();
  v38 = sub_2CB4A0();
  v39 = sub_2CB490();
  v102 = &protocol witness table for SiriKitTaskLoggingProvider;
  v101 = v38;
  *&v100 = v39;
  v99[4] = &off_3367A0;
  v99[3] = v28;
  v99[0] = v29;
  v40 = type metadata accessor for AmbiguousPlayFlow();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = sub_F9A0(v99, v28);
  v78 = &v74;
  v45 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v44);
  v47 = (&v74 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v47;
  v98 = &off_3367A0;
  v97 = v28;
  *&v96 = v49;
  v50 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_input;
  v51 = sub_2CA7B0();
  (*(*(v51 - 8) + 56))(&v43[v50], 1, 1, v51);
  v43[OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_state] = 0;
  *&v43[OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimAudioExperience] = 0;
  v52 = &v43[OBJC_IVAR____TtC23AudioFlowDelegatePlugin17AmbiguousPlayFlow_shimError];
  *v52 = 0;
  *(v52 + 1) = 0;
  swift_beginAccess();
  sub_BED04(v27, &v43[v50]);
  swift_endAccess();
  sub_EEAC(v112, (v43 + 16));
  sub_EEAC(v111, (v43 + 56));
  sub_EEAC(v110, (v43 + 112));
  sub_EEAC(v109, (v43 + 152));
  sub_EEAC(v110, v95);
  v53 = CATDefaultMode;
  v54 = sub_2CBC00();
  v55 = sub_2CBBF0();
  v56 = v75;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v57 = swift_allocObject();
  v94[3] = &type metadata for StringsBackedAppNameResolver;
  v94[4] = v74;
  v94[0] = swift_allocObject();
  sub_285EC(v34 + 16, v94[0] + 16);
  v93[3] = v54;
  v93[4] = &protocol witness table for MorphunProvider;
  v93[0] = v55;
  v92[3] = v37;
  v92[4] = &protocol witness table for FeatureFlagProvider;
  v58 = sub_F390(v92);
  v59 = v76;
  (*(v76 + 16))(v58, v56, v37);
  *(v57 + 296) = v53;
  sub_EEAC(v92, v57 + 256);
  sub_EEAC(v94, v91);
  sub_EEAC(v93, v90);
  sub_EEAC(v95, v89);
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  v60 = sub_2CCA30();

  v61 = sub_2CCA20();
  v86[3] = v60;
  v86[4] = &protocol witness table for MultiUserConnectionProvider;
  v86[0] = v61;
  v85[3] = sub_2CB9E0();
  v85[4] = &protocol witness table for DeviceProvider;
  sub_F390(v85);
  sub_2CB9C0();
  sub_EEAC(v91, v57 + 16);
  sub_EEAC(v90, v57 + 216);
  sub_EEAC(v89, v57 + 56);
  sub_EEAC(v86, v57 + 96);
  sub_EEAC(v85, v57 + 176);
  sub_F3F4(v87, &v80, qword_34C708, &qword_2D1620);
  if (v81)
  {

    sub_30B8(v87, qword_34C708, &qword_2D1620);
    sub_306C(v89);
    sub_306C(v90);
    sub_306C(v91);
    (*(v59 + 8))(v56, v37);
    sub_306C(v95);
    sub_306C(v92);
    sub_306C(v93);
    sub_306C(v94);
    sub_306C(v85);
    sub_306C(v86);
    sub_F338(&v80, &v82);
  }

  else
  {
    sub_EEAC(v89, &v82);
    v62 = v56;
    v63 = sub_2C9E60();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    v66 = sub_2C9E50();
    v83 = v63;
    v84 = &protocol witness table for ContactsManager;

    *&v82 = v66;
    sub_30B8(v87, qword_34C708, &qword_2D1620);
    sub_306C(v89);
    sub_306C(v90);
    sub_306C(v91);
    (*(v59 + 8))(v62, v37);
    sub_306C(v95);
    sub_306C(v92);
    sub_306C(v93);
    sub_306C(v94);
    sub_306C(v85);
    sub_306C(v86);
    if (v81)
    {
      sub_30B8(&v80, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v82, v57 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v67 = swift_allocObject();
  v67[6] = 0xEF746E65746E4961;
  v67[2] = 0xD000000000000011;
  v67[3] = 0x80000000002DA8D0;
  v67[4] = v57;
  v67[5] = 0x6964654D79616C50;
  *(v43 + 12) = v67;
  v68 = sub_2C9C10();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_2C9BF0();
  sub_306C(v110);
  sub_30B8(v79, &qword_34E480, &qword_2D2280);
  sub_306C(v109);
  sub_306C(v111);
  sub_306C(v112);
  *(v43 + 13) = v71;
  sub_F338(&v106, (v43 + 192));
  sub_F338(&v103, (v43 + 232));
  sub_F338(&v96, (v43 + 272));
  sub_F338(&v100, (v43 + 312));
  sub_F338(v113, (v43 + 352));
  *(v43 + 49) = sub_20AE68;
  *(v43 + 50) = 0;
  sub_306C(v99);
  *&v113[0] = v43;
  sub_139688(&qword_352480, type metadata accessor for AmbiguousPlayFlow);
  v72 = sub_2C97B0();

  return v72;
}

uint64_t sub_136E6C(void *a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_2CA7B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "Initializing Determine Strategy", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_34BF70 != -1)
  {
    swift_once();
  }

  v17 = qword_35F728;
  if (qword_34BF78 != -1)
  {
    swift_once();
  }

  sub_20410(&qword_3524B8, &qword_2D4D90);
  v23 = v17;
  (*(v4 + 16))(v7, a2, v3);

  v18 = v22;
  v23 = sub_2CA8A0();
  sub_139084(&qword_3524C0, &qword_3524B8, &qword_2D4D90);
  v19 = sub_2C97B0();

  return v19;
}

uint64_t sub_1371BC(uint64_t a1)
{
  v62 = a1;
  v1 = sub_2CC040();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v59 - v7;
  v61 = type metadata accessor for AcousticIDFlow.State(0);
  v9 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v64 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34E480, &qword_2D2280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v63 = &v59 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v60 = v8;
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Initializing AcousticIDFlow", v22, 2u);
    v8 = v60;
  }

  (*(v15 + 8))(v18, v14);
  v23 = v63;
  sub_F3F4(v62, v63, &qword_34E480, &qword_2D2280);
  v24 = v64;
  swift_storeEnumTagMultiPayload();
  sub_2CC030();
  (*(v2 + 16))(v6, v8, v1);
  v25 = sub_13496C(v6);
  (*(v2 + 8))(v8, v1);
  v83[3] = type metadata accessor for ShazamKitRecognizer();
  v83[4] = &off_334628;
  v83[0] = v25;
  v26 = sub_2CC610();
  v27 = sub_2CC600();
  v82[3] = v26;
  v82[4] = &protocol witness table for ShazamSessionManager;
  v82[0] = v27;
  sub_2C99F0();
  v28 = sub_133ABC();
  sub_2CA430();
  v29 = sub_2CB4A0();
  v30 = sub_2CB490();
  v78 = v29;
  v79 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v77 = v30;
  v75 = sub_2CC650();
  v76 = &protocol witness table for SubscriptionProvider;
  sub_F390(&v74);
  sub_2CC630();
  v31 = sub_2CC2B0();
  v72 = v31;
  v73 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v71);
  sub_2CC2A0();
  v69 = v31;
  v70 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v68);
  sub_2CC2A0();
  v32 = type metadata accessor for SiriAudioOutputProvider();
  v33 = swift_allocObject();
  sub_F338(&v68, v33 + 16);
  v69 = v32;
  v70 = &off_337EB0;
  *&v68 = v33;
  v34 = type metadata accessor for AcousticIDFlow(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = sub_F9A0(&v68, v32);
  v39 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v66 = v32;
  v67 = &off_337EB0;
  *&v65 = v43;
  v44 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_input;
  v45 = sub_2CA7B0();
  (*(*(v45 - 8) + 56))(v37 + v44, 1, 1, v45);
  *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_enableLiveActivity) = 0;
  *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_isInAmbient) = 0;
  swift_beginAccess();
  sub_BED04(v23, v37 + v44);
  swift_endAccess();
  sub_EEAC(v83, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamKitRecognizer);
  sub_EEAC(v82, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_shazamSessionManager);
  type metadata accessor for AcousticIdCatDialogService();
  v46 = swift_allocObject();
  v46[5] = 0xD000000000000010;
  v46[6] = 0x80000000002DDBD0;
  v46[2] = 0xD000000000000011;
  v46[3] = 0x80000000002DA8D0;
  v46[4] = v28;
  *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_acousticIdCatDialogService) = v46;
  sub_EEAC(v81, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_aceServiceInvokerAsync);
  v47 = sub_2C9C10();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_2C9BF0();
  sub_306C(v81);
  sub_30B8(v23, &qword_34E480, &qword_2D2280);
  sub_306C(v82);
  sub_306C(v83);
  *(v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_viewFactory) = v50;
  sub_1390D8(v24, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_state);
  sub_F338(&v80, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_publisher);
  sub_F338(&v77, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_siriKitTaskLoggingProvider);
  sub_F338(&v74, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_subscriptionProvider);
  sub_F338(&v71, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_featureFlagProvider);
  sub_F338(&v65, v37 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin14AcousticIDFlow_outputProvider);
  sub_306C(&v68);
  v83[0] = v37;
  sub_139688(&qword_3524C8, type metadata accessor for AcousticIDFlow);
  v51 = sub_2C97B0();

  sub_20410(&qword_3524A0, &qword_2D5F70);
  v52 = *(sub_2C9620() - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2D0090;
  sub_2C9600();
  type metadata accessor for GuardedFlow();
  v56 = swift_allocObject();
  *(v56 + 16) = v51;
  *(v56 + 24) = 0;
  *(v56 + 32) = v55;
  v83[0] = v56;
  sub_139688(&qword_3524A8, type metadata accessor for GuardedFlow);
  v57 = sub_2C97B0();

  return v57;
}

uint64_t sub_137A7C(uint64_t a1, void *a2)
{
  v4 = sub_2CA7B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&qword_352490, &unk_2D4D70);
  if (qword_34BF20 != -1)
  {
    swift_once();
  }

  v20 = qword_35F500;
  v9 = qword_34BF28;

  if (v9 != -1)
  {
    swift_once();
  }

  (*(v5 + 16))(v8, a1, v4);

  v10 = a2;
  v20 = sub_2CA8A0();
  sub_139084(&qword_352498, &qword_352490, &unk_2D4D70);
  v11 = sub_2C97B0();
  sub_20410(&qword_3524A0, &qword_2D5F70);
  v12 = *(sub_2C9620() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2D0090;
  sub_2C9610();
  type metadata accessor for GuardedFlow();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = 0;
  *(v16 + 32) = v15;
  v20 = v16;
  sub_139688(&qword_3524A8, type metadata accessor for GuardedFlow);

  v17 = sub_2C97B0();

  return v17;
}

uint64_t sub_137D70(uint64_t a1)
{
  v57 = a1;
  v1 = sub_2CC2B0();
  v60 = *(v1 - 8);
  v2 = *(v60 + 64);
  __chkstk_darwin(v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34E480, &qword_2D2280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v53 - v7;
  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v58 = v8;
  v53 = v10 + 56;
  v54 = v11;
  v11(v8, 1, 1, v9);
  v91[3] = sub_2CDC30();
  v91[4] = &protocol witness table for ControlsFlowProvider;
  sub_F390(v91);
  sub_2CDC20();
  v12 = type metadata accessor for AudioFlowProvider();
  v13 = swift_allocObject();
  sub_2CA430();
  v14 = sub_2CB4A0();
  v15 = sub_2CB490();
  v89[3] = v14;
  v89[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v89[0] = v15;
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v88[3] = &type metadata for StringsBackedAppNameResolver;
  v56 = sub_2869C();
  v88[4] = v56;
  v55 = swift_allocObject();
  v88[0] = v55;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v55 + 16);
  v86 = v1;
  v87 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v85);
  sub_2CC2A0();
  v16 = type metadata accessor for SiriAudioOutputProvider();
  v17 = swift_allocObject();
  sub_F338(&v85, v17 + 16);
  sub_2C9A00();
  sub_2CC2A0();
  v84[4] = &off_3367A0;
  v84[3] = v12;
  v84[0] = v13;
  v83 = &off_337EB0;
  v82 = v16;
  v81[0] = v17;
  v18 = type metadata accessor for AmbiguousShuffleFlow();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v62 = v18;
  v21 = swift_allocObject();
  v22 = sub_F9A0(v84, v12);
  v61 = &v53;
  v23 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = v82;
  v28 = sub_F9A0(v81, v82);
  v59 = &v53;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v25;
  v34 = *v31;
  v80[4] = &off_3367A0;
  v80[3] = v12;
  v80[0] = v33;
  v79[4] = &off_337EB0;
  v35 = v1;
  v36 = v4;
  v79[3] = v16;
  v79[0] = v34;
  v37 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input;
  v54(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_input, 1, 1, v9);
  swift_beginAccess();
  v38 = v58;
  sub_BED04(v58, v21 + v37);
  swift_endAccess();
  sub_EEAC(v91, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_controlsFlowProvider);
  sub_EEAC(v80, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_audioFlowProvider);
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_fallbackFlow) = v57;
  sub_EEAC(v90, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_publisher);
  sub_EEAC(v89, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v88, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_appNameResolver);
  sub_EEAC(v79, v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_outputProvider);
  sub_EEAC(&v85, v78);
  LODWORD(v27) = CATDefaultMode;
  v39 = sub_2CBC00();

  v40 = sub_2CBBF0();
  type metadata accessor for CatService();
  v41 = swift_allocObject();
  v77[3] = &type metadata for StringsBackedAppNameResolver;
  v77[4] = v56;
  v77[0] = swift_allocObject();
  sub_285EC(v55 + 16, v77[0] + 16);
  v76[3] = v39;
  v76[4] = &protocol witness table for MorphunProvider;
  v76[0] = v40;
  v75[3] = v35;
  v75[4] = &protocol witness table for FeatureFlagProvider;
  v42 = sub_F390(v75);
  v43 = v60;
  (*(v60 + 16))(v42, v36, v35);
  *(v41 + 296) = v27;
  sub_EEAC(v75, v41 + 256);
  sub_EEAC(v77, v74);
  sub_EEAC(v76, v73);
  sub_EEAC(v78, v72);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v44 = sub_2CCA30();

  v45 = sub_2CCA20();
  v69[3] = v44;
  v69[4] = &protocol witness table for MultiUserConnectionProvider;
  v69[0] = v45;
  v68[3] = sub_2CB9E0();
  v68[4] = &protocol witness table for DeviceProvider;
  sub_F390(v68);
  sub_2CB9C0();
  sub_EEAC(v74, v41 + 16);
  sub_EEAC(v73, v41 + 216);
  sub_EEAC(v72, v41 + 56);
  sub_EEAC(v69, v41 + 96);
  sub_EEAC(v68, v41 + 176);
  sub_F3F4(v70, &v63, qword_34C708, &qword_2D1620);
  if (v64)
  {

    sub_30B8(v70, qword_34C708, &qword_2D1620);
    sub_306C(v72);
    sub_306C(v73);
    sub_306C(v74);
    sub_306C(v78);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    sub_306C(v68);
    sub_306C(v69);
    sub_F338(&v63, &v65);
  }

  else
  {
    sub_EEAC(v72, &v65);
    v46 = sub_2C9E60();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_2C9E50();
    v66 = v46;
    v67 = &protocol witness table for ContactsManager;

    *&v65 = v49;
    sub_30B8(v70, qword_34C708, &qword_2D1620);
    sub_306C(v72);
    sub_306C(v73);
    sub_306C(v74);
    sub_306C(v78);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    sub_306C(v68);
    sub_306C(v69);
    if (v64)
    {
      sub_30B8(&v63, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v65, v41 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v50 = swift_allocObject();
  v50[5] = 0x6964654D79616C50;
  v50[6] = 0xEF746E65746E4961;
  (*(v43 + 8))(v36, v35);
  sub_306C(&v85);
  sub_306C(v90);
  sub_30B8(v38, &qword_34E480, &qword_2D2280);
  sub_306C(v88);
  sub_306C(v89);
  sub_306C(v91);
  sub_306C(v79);
  sub_306C(v80);
  v50[2] = 0xD000000000000011;
  v50[3] = 0x80000000002DA8D0;
  v50[4] = v41;
  *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin20AmbiguousShuffleFlow_playMediaCatDialogService) = v50;
  sub_306C(v81);
  sub_306C(v84);
  v91[0] = v21;
  sub_139688(&qword_3524E0, type metadata accessor for AmbiguousShuffleFlow);
  v51 = sub_2C97B0();

  return v51;
}

uint64_t sub_1386E8()
{
  v0 = sub_20410(&qword_34E480, &qword_2D2280);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v37 - v2;
  v4 = sub_2CA7B0();
  v5 = *(v4 - 8);
  v38 = *(v5 + 56);
  v39 = v5 + 56;
  v38(v3, 1, 1, v4);
  v6 = type metadata accessor for AudioFlowProvider();
  v7 = swift_allocObject();
  v54[3] = sub_2CC040();
  v54[4] = &protocol witness table for NowPlayingProvider;
  sub_F390(v54);
  sub_2CC030();
  v8 = sub_133ABC();
  v52 = sub_2CDE30();
  v53 = &protocol witness table for DeviceResolutionProvider;
  sub_F390(&v51);
  sub_2CDE20();
  v9 = sub_2CC710();
  v10 = sub_2CC700();
  v49 = v9;
  v50 = &protocol witness table for SharedContextProvider;
  *&v48 = v10;
  type metadata accessor for DetermineFlowStrategy();
  v11 = swift_allocObject();
  sub_F338(&v51, v11 + 16);
  sub_F338(&v48, v11 + 56);
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  v52 = v12;
  v53 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v51 = v13;
  sub_2C99F0();
  v14 = sub_2CBC40();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2CBC30();
  v46 = v14;
  v47 = &protocol witness table for AppIntentInvoker;
  *&v45 = v17;
  v43 = sub_2CC2B0();
  v44 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v42);
  sub_2CC2A0();
  v41[3] = v6;
  v41[4] = &off_3367A0;
  v41[0] = v7;
  v18 = type metadata accessor for AmbiguousDetermineFlow();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = sub_F9A0(v41, v6);
  v23 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v40[3] = v6;
  v40[4] = &off_3367A0;
  v40[0] = v27;
  v28 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input;
  v38(&v21[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AmbiguousDetermineFlow_input], 1, 1, v4);
  swift_beginAccess();
  sub_BED04(v3, &v21[v28]);
  swift_endAccess();
  sub_EEAC(v40, (v21 + 16));
  sub_EEAC(v54, (v21 + 56));
  *(v21 + 12) = v11;
  sub_EEAC(&v51, (v21 + 104));
  type metadata accessor for DetermineCatDialogService();
  v29 = swift_allocObject();
  v29[6] = 0xEF746E65746E4965;
  v29[2] = 0xD000000000000011;
  v29[3] = 0x80000000002DA8D0;
  v29[4] = v8;
  v29[5] = 0x6E696D7265746544;
  *(v21 + 18) = v29;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v30 = swift_allocObject();
  v30[2] = 0xD000000000000011;
  v30[3] = 0x80000000002DA8D0;
  v30[4] = v8;
  *(v21 + 19) = v30;
  sub_EEAC(&v48, (v21 + 160));
  v31 = sub_2C9C10();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = sub_2C9BF0();
  sub_306C(&v48);
  sub_30B8(v3, &qword_34E480, &qword_2D2280);
  sub_306C(&v51);
  sub_306C(v54);
  sub_306C(v40);
  *(v21 + 25) = v34;
  sub_F338(&v45, (v21 + 208));
  sub_F338(&v42, (v21 + 248));
  sub_306C(v41);
  v54[0] = v21;
  sub_139688(&qword_3524D8, type metadata accessor for AmbiguousDetermineFlow);
  v35 = sub_2C97B0();

  return v35;
}

uint64_t sub_138BA8(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  sub_F3F4(a1, &v36 - v4, &qword_34E480, &qword_2D2280);
  if (!sub_2CB460())
  {
    sub_2CB180();
    sub_2CB170();
  }

  v37 = sub_2CB160();

  v6 = type metadata accessor for AudioFlowProvider();
  v7 = swift_allocObject();
  v8 = sub_2CC2B0();
  v50 = v8;
  v51 = &protocol witness table for FeatureFlagProvider;
  sub_F390(v49);
  sub_2CC2A0();
  v9 = sub_2CB4A0();
  v10 = sub_2CB490();
  v47 = v9;
  v48 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v46 = v10;
  v11 = sub_2CC900();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2CC8F0();
  v50 = v11;
  v51 = &protocol witness table for AppleMediaServicesProvider;
  v49[0] = v14;
  v15 = sub_133ABC();
  sub_2CA430();
  v16 = sub_2CB490();
  v44 = v9;
  v45 = &protocol witness table for SiriKitTaskLoggingProvider;
  v42 = &protocol witness table for FeatureFlagProvider;
  *&v43 = v16;
  v41 = v8;
  sub_F390(&v40);
  sub_2CC2A0();
  v39[3] = v6;
  v39[4] = &off_3367A0;
  v39[0] = v7;
  v17 = type metadata accessor for SwitchNewsSourcePreferenceFlow();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = sub_F9A0(v39, v6);
  v22 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v38[3] = v6;
  v38[4] = &off_3367A0;
  v38[0] = v26;
  v27 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_input;
  v28 = sub_2CA7B0();
  (*(*(v28 - 8) + 56))(v20 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_parse;
  v30 = sub_2CA870();
  (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
  v31 = (v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastTopicId);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_newsPodcastIdentifier);
  *v32 = 0;
  v32[1] = 0;
  swift_beginAccess();
  sub_BED04(v5, v20 + v27);
  swift_endAccess();
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_networkAvailabilityProvider) = v37;
  sub_EEAC(v38, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_audioFlowProvider);
  sub_EEAC(v49, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_appleMediaServicesProvider);
  type metadata accessor for PlayMediaCatDialogService();
  v33 = swift_allocObject();
  v33[5] = 0x6964654D79616C50;
  v33[6] = 0xEF746E65746E4961;
  sub_30B8(v5, &qword_34E480, &qword_2D2280);
  sub_306C(v49);
  sub_306C(v38);
  v33[2] = 0xD000000000000011;
  v33[3] = 0x80000000002DA8D0;
  v33[4] = v15;
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_playMediaCatDialogService) = v33;
  sub_F338(&v46, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_publisher);
  sub_F338(&v43, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_siriKitTaskLoggingProvider);
  sub_F338(&v40, v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_featureFlagProvider);
  *(v20 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin30SwitchNewsSourcePreferenceFlow_httpCallAttemptState) = 0;
  sub_306C(v39);
  v49[0] = v20;
  sub_139688(&qword_352488, type metadata accessor for SwitchNewsSourcePreferenceFlow);
  v34 = sub_2C97B0();

  return v34;
}

uint64_t sub_139084(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1390D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcousticIDFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13913C()
{
  v0 = sub_20410(&qword_34E480, &qword_2D2280);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v30 - v2;
  v4 = sub_2CA7B0();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = type metadata accessor for AudioFlowProvider();
  v7 = swift_allocObject();
  v45[3] = sub_2CDE30();
  v45[4] = &protocol witness table for DeviceResolutionProvider;
  sub_F390(v45);
  sub_2CDE20();
  v44[3] = sub_2CDDF0();
  v44[4] = &protocol witness table for EncryptionProvider;
  sub_F390(v44);
  sub_2CDDE0();
  v8 = sub_2CC710();
  v9 = sub_2CC700();
  v43[3] = v8;
  v43[4] = &protocol witness table for SharedContextProvider;
  v43[0] = v9;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v41[3] = &type metadata for StringsBackedAppNameResolver;
  v41[4] = sub_2869C();
  v41[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v41[0] + 16);
  v31 = sub_1334D4();
  v10 = sub_2CB4A0();
  v11 = sub_2CB490();
  v39 = v10;
  v40 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v38 = v11;
  v36 = sub_2CC040();
  v37 = &protocol witness table for NowPlayingProvider;
  sub_F390(&v35);
  sub_2CC030();
  v34[3] = v6;
  v34[4] = &off_3367A0;
  v34[0] = v7;
  v12 = type metadata accessor for ShuffleOnDeviceFlow();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = sub_F9A0(v34, v6);
  v32 = &v30;
  v17 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v33[3] = v6;
  v33[4] = &off_3367A0;
  v33[0] = v21;
  v22 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input;
  v5((v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_input), 1, 1, v4);
  swift_beginAccess();
  sub_BED04(v3, v15 + v22);
  swift_endAccess();
  sub_EEAC(v33, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_audioFlowProvider);
  sub_EEAC(v45, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_deviceResolutionProvider);
  sub_EEAC(v44, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_encryptionProvider);
  sub_EEAC(v43, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_sharedContextProvider);
  sub_EEAC(v42, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_aceServiceInvoker);
  sub_EEAC(v41, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_appNameResolver);
  type metadata accessor for PlayMediaCatDialogService();
  v23 = swift_allocObject();
  v23[5] = 0x6964654D79616C50;
  v23[6] = 0xEF746E65746E4961;
  v23[2] = 0xD000000000000011;
  v23[3] = 0x80000000002DA8D0;
  v23[4] = v31;
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_playMediaCatDialogService) = v23;
  v24 = sub_2C9C10();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2C9BF0();
  sub_306C(v42);
  sub_30B8(v3, &qword_34E480, &qword_2D2280);
  sub_306C(v41);
  sub_306C(v43);
  sub_306C(v44);
  sub_306C(v45);
  sub_306C(v33);
  *(v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_viewFactory) = v27;
  sub_F338(&v38, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_siriKitTaskLoggingProvider);
  sub_F338(&v35, v15 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin19ShuffleOnDeviceFlow_nowPlayingProvider);
  sub_306C(v34);
  v45[0] = v15;
  sub_139688(&qword_3524D0, type metadata accessor for ShuffleOnDeviceFlow);
  v28 = sub_2C97B0();

  return v28;
}

uint64_t sub_139688(unint64_t *a1, void (*a2)(uint64_t))
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

void Determine.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v64 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v65 = &v63 - v15;
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v66 = v10[2];
  v67 = v18;
  v66(v17, v18, v9);

  v19 = sub_2CDFE0();
  v20 = sub_2CE670();

  v21 = os_log_type_enabled(v19, v20);
  v72 = v5;
  v73 = a1;
  v68 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v63 = a5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v74 = a1;
    v75 = v24;
    *v23 = 136315138;
    sub_2CCFB0();
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App);
    v25 = sub_2CEE70();
    v27 = sub_3F08(v25, v26, &v75);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v19, v20, "Determine+HandleIntentStrategy#makeIntentHandledResponse for app: %s", v23, 0xCu);
    sub_306C(v24);
    v6 = v72;

    a5 = v63;
  }

  v28 = v10[1];
  v28(v17, v9);
  v29 = v9;
  v30 = v6[19];
  sub_35E0(v6 + 15, v6[18]);
  if (sub_2CC4B0())
  {
    v31 = v65;
    v66(v65, v67, v9);
    v32 = v73;

    v33 = sub_2CDFE0();
    v34 = sub_2CE670();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74 = v32;
      v75 = v36;
      *v35 = 136315394;
      sub_2CCFB0();
      sub_14010C(&qword_34C170, 255, &type metadata accessor for App);
      v37 = sub_2CEE70();
      v39 = sub_3F08(v37, v38, &v75);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v40 = sub_2CCCA0();
      v42 = sub_3F08(v40, v41, &v75);

      *(v35 + 14) = v42;
      v32 = v73;
      _os_log_impl(&dword_0, v33, v34, "Determine+HandleIntentStrategy#makeIntentHandledResponseWithRF for app: %s %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      v43 = v65;
    }

    else
    {

      v43 = v31;
    }

    v28(v43, v29);

    v57 = v72;

    v58 = v69;
    v59 = v70;

    sub_14DDCC(v58, v57, v32, v58, v59, v71, a5);
  }

  else
  {
    v44 = v64;
    v66(v64, v67, v9);
    v45 = v73;

    v46 = sub_2CDFE0();
    v47 = sub_2CE670();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v67 = v29;
      v49 = v48;
      v50 = v6;
      v51 = swift_slowAlloc();
      v74 = v45;
      v75 = v51;
      *v49 = 136315138;
      sub_2CCFB0();
      sub_14010C(&qword_34C170, 255, &type metadata accessor for App);
      v52 = sub_2CEE70();
      v54 = sub_3F08(v52, v53, &v75);

      *(v49 + 4) = v54;
      v45 = v73;
      _os_log_impl(&dword_0, v46, v47, "Determine+HandleIntentStrategy#makeIntentHandledResponse for app: %s", v49, 0xCu);
      sub_306C(v51);
      v6 = v50;

      v55 = v67;
      v56 = v64;
    }

    else
    {

      v56 = v44;
      v55 = v29;
    }

    v28(v56, v55);
    v60 = v6[8];

    v61 = v69;
    v62 = v70;

    sub_DD150(v45, v61, v60, v6, v71, a5, v45, v61, v62);
  }
}

void Determine.HandleIntentStrategy.makeIntentHandledResponseLegacy(app:intent:intentResponse:_:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a4;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = v6;
    v21 = v20;
    v33 = a1;
    v34 = v20;
    *v19 = 136315138;
    sub_2CCFB0();
    v28 = a2;
    sub_14010C(&qword_34C170, 255, &type metadata accessor for App);
    v22 = sub_2CEE70();
    v24 = sub_3F08(v22, v23, &v34);

    *(v19 + 4) = v24;
    a2 = v28;
    _os_log_impl(&dword_0, v16, v17, "Determine+HandleIntentStrategy#makeIntentHandledResponse for app: %s", v19, 0xCu);
    sub_306C(v21);
    v6 = v29;

    a5 = v30;
  }

  (*(v11 + 8))(v14, v10);
  v25 = *(v6 + 64);

  v26 = a2;
  v27 = v31;
  sub_DD150(a1, v26, v25, v6, v32, a5, a1, v26, v27);
}

uint64_t sub_13A118(uint64_t a1, char a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v63 = a7;
  v64 = a8;
  v65 = a6;
  v70 = a4;
  v71 = a5;
  v72 = a1;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v62 - v12;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v69 = &v62 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v62 - v19;
  v21 = sub_2CB970();
  v67 = *(v21 - 8);
  v68 = v21;
  v22 = *(v67 + 64);
  __chkstk_darwin(v21);
  v66 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v30 + 104))(v33, enum case for AdditionalMetricsDescription.ModuleName.dhis(_:), v29);
    (*(v25 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v24);
    swift_getErrorValue();
    sub_2CEEF0();
    v34 = sub_2CCAE0();
    v64 = v35;
    v65 = v34;

    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v36 = a3[6];
    v63 = a3[7];
    v62 = sub_35E0(a3 + 3, v36);
    v38 = v66;
    v37 = v67;
    v39 = v68;
    (*(v67 + 104))(v66, enum case for TypeOfIntent.determine(_:), v68);
    v40 = enum case for ActivityType.failed(_:);
    v41 = sub_2C9C20();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v20, v40, v41);
    (*(v42 + 56))(v20, 0, 1, v41);
    v43 = sub_2CA130();
    v44 = v69;
    (*(*(v43 - 8) + 56))(v69, 1, 1, v43);
    v45 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v46 = sub_2C98F0();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v13, v45, v46);
    (*(v47 + 56))(v13, 0, 1, v46);
    sub_2CB4C0();

    sub_30B8(v13, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v44, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v20, &qword_34CB88, &unk_2D0D90);
    (*(v37 + 8))(v38, v39);
    v73[0] = v72;
    v74 = 1;
    swift_errorRetain();
    v70(v73);
    return sub_30B8(v73, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v49 = a3[9];
    v50 = swift_allocObject();
    v51 = v70;
    v52 = v71;
    *(v50 + 16) = a3;
    *(v50 + 24) = v51;
    v54 = v63;
    v53 = v64;
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    *(v50 + 48) = v53;
    v55 = v72;
    *(v50 + 56) = v72;
    sub_140154(v55, 0);

    v56 = v54;
    v57 = v53;
    v58 = [v56 targetDeviceIds];
    if (v58 && (v59 = v58, v60 = sub_2CE410(), v59, v61 = *(v60 + 16), , v61))
    {
      sub_4843C(v65, v56, sub_DE0C8, v50);
    }

    else
    {
      sub_45370(v65, v56, sub_DE0C8, v50);
    }
  }
}