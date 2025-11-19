uint64_t sub_7CDD38()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_7D2FFC(&qword_E18218, &type metadata accessor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_ABB330();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_7AB3E0(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_AB9350();
      v27 = sub_7AB3E0(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_0, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_AB3990();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_AB39B0();

    sub_7D1A74(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_7D1ADC(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v48);
    sub_7D1ADC(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_AB39A0();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v31 = sub_AB9F50();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_7D2FFC(&qword_E18218, &type metadata accessor for Song);
      v35 = sub_ABB330();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_7AB3E0(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_AB9350();
      v41 = sub_7AB3E0(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_0, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_AB3990();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_AB39B0();

    sub_7D1A74(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_7D1ADC(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v63);
    sub_7D1ADC(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_AB39A0();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_7CE944(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager);
  sub_AB3990();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_7CE9F4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager);
  sub_AB3990();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_7CEAB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060);
  __chkstk_darwin(v2 - 8);
  v53 = &v47[-v3];
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C58);
  __chkstk_darwin(v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = type metadata accessor for MetricsEvent.Page(0);
  v54 = *(*(v13 - 8) + 56);
  v54(v12, 1, 1, v13);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v57 = v1;
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager);
  v55 = v14;
  sub_AB3990();

  v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_7D1A74(v1 + v15, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v6 + 1);
      v18 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v6[32] != 1)
      {
        sub_7D2DFC(*v6, v17, v18, v19, 0);
        sub_12E1C(v12, &qword_E17C58);
        v23 = sub_AB31C0();
        v24 = *(*(v23 - 8) + 56);
        goto LABEL_24;
      }

      v49 = *v6;
      v50 = v17;
      v51 = v18;
      v52 = v19;
      swift_getKeyPath();
      *&v57 = v1;
      sub_AB3990();

      v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v21 = *(v1 + v20);
      if (v21 && (v22 = [v21 vocalsControlCommand]) != 0)
      {
        v48 = [v22 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 1;
      }

      swift_getKeyPath();
      *&v57 = v1;
      sub_AB3990();

      v25 = *(v1 + v20);
      if (v25)
      {
        v26 = [v25 playingItem];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 metadataObject];

          if (v28)
          {
            v29 = [v28 innermostModelObject];

            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = [v30 lyrics];

              if (v31)
              {
                v32 = [v31 hasStoreLyrics];

                v33 = v32 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v57);
                sub_70C54(&v57);
                if (*(v49 + 56))
                {
                  v34 = (v58 == 1) & ~(v48 | v33);
                  if (*(v49 + 56) == 1)
                  {
                    sub_7D2DFC(v49, v50, v51, v52, 1);
                    sub_12E1C(v12, &qword_E17C58);
                    v35 = sub_AB31C0();
                    v36 = v53;
                    (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
                    v37 = 0x8000000000B74CA0;
                    v46 = v34;
                    v38 = v9;
                    v39 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_7D2DFC(v49, v50, v51, v52, 1);
                    sub_12E1C(v12, &qword_E17C58);
                    v41 = sub_AB31C0();
                    v36 = v53;
                    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
                    v46 = v34;
                    v39 = 0x795373636972794CLL;
                    v37 = 0xEE00656C62616C6CLL;
                    v38 = v9;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v39, v37, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v38, 1, 0, 0, v46);
                  goto LABEL_27;
                }

                sub_7D2DFC(v49, v50, v51, v52, 1);
                sub_12E1C(v12, &qword_E17C58);
                v23 = sub_AB31C0();
                v24 = *(*(v23 - 8) + 56);
LABEL_24:
                v40 = v53;
                v24(v53, 1, 1, v23);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v40, 0, 0, 0, v9, 1, 0, 0, 2);
LABEL_27:
                v54(v9, 0, 1, v13);
                sub_7D2EF8(v9, v12);
                v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38) + 48);
                v43 = sub_AB86C0();
                (*(*(v43 - 8) + 8))(&v6[v42], v43);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v33 = 1;
      goto LABEL_20;
    }

    sub_12E1C(v12, &qword_E17C58);
  }

  else
  {
    sub_12E1C(v12, &qword_E17C58);
    sub_7D1ADC(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v54(v12, 1, 1, v13);
LABEL_28:
  sub_15F84(v12, v9, &qword_E17C58);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v56 = v1;
  sub_AB3980();

  sub_12E1C(v12, &qword_E17C58);
  return sub_12E1C(v9, &qword_E17C58);
}

uint64_t sub_7CF3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18208);
  __chkstk_darwin(v2 - 8);
  v170 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v171 = &v162 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B78);
  __chkstk_darwin(v6 - 8);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v162 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C50);
  __chkstk_darwin(v12 - 8);
  v177 = &v162 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C48);
  __chkstk_darwin(v14 - 8);
  v176 = &v162 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08);
  __chkstk_darwin(v16 - 8);
  v175 = &v162 - v17;
  v188 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v188);
  v189 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v187 = &v162 - v20;
  __chkstk_darwin(v21);
  v173 = &v162 - v22;
  v192 = sub_AB4BC0();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v162 - v25;
  __chkstk_darwin(v26);
  v174 = &v162 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  __chkstk_darwin(v28 - 8);
  v180 = &v162 - v29;
  v184 = sub_AB3430();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_AB56F0();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v33);
  v35 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_AB86C0();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_7D1A74(a1, v35, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_7D1ADC(v35, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v56 = v192;
    v55 = v190;
LABEL_12:
    v57 = Logger.lyrics.unsafeMutableAddressor();
    v58 = v191;
    (*(v55 + 16))(v191, v57, v56);
    v59 = v189;
    sub_7D1A74(v40, v189, type metadata accessor for Lyrics.StateManager.State);
    v60 = sub_AB4BA0();
    v61 = sub_AB9F50();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v55;
      v64 = swift_slowAlloc();
      v196 = v64;
      *v62 = 136446210;
      sub_7D1A74(v59, v187, type metadata accessor for Lyrics.StateManager.State);
      v65 = sub_AB9350();
      v67 = v66;
      sub_7D1ADC(v59, type metadata accessor for Lyrics.StateManager.State);
      v68 = sub_7AB3E0(v65, v67, &v196);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_0, v60, v61, "Skipping Reporting lyrics for state=%{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);

      return (*(v63 + 8))(v191, v192);
    }

    else
    {

      sub_7D1ADC(v59, type metadata accessor for Lyrics.StateManager.State);
      return (*(v55 + 8))(v58, v56);
    }
  }

  v163 = v11;
  v162 = v8;
  v41 = *(v35 + 1);
  v178 = *v35;
  v172 = v41;
  v42 = *(v35 + 2);
  v43 = *(v35 + 3);
  v44 = v35[32];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38);
  (*(v37 + 32))(v39, &v35[*(v45 + 48)], v36);
  if ((sub_AB86B0() & 1) == 0)
  {
    (*(v37 + 8))(v39, v36);
    sub_7D2DFC(v178, v172, v42, v43, v44);
    goto LABEL_11;
  }

  v164 = v42;
  v165 = v43;
  v167 = v44;
  v168 = v39;
  v166 = v37;
  v169 = v36;
  v46 = v40 + *(v188 + 20);
  v47 = v185;
  v48 = v186;
  (v185[13])(v32, enum case for ScenePhase.active(_:), v186);
  v49 = sub_AB56E0();
  v47[1](v32, v48);
  if ((v49 & 1) == 0 || (v50 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v46 + *(v50 + 20)) != 1) || *(v46 + *(v50 + 24)) != 1)
  {
    sub_7D2DFC(v178, v172, v164, v165, v167);
    (*(v166 + 8))(v168, v169);
    goto LABEL_11;
  }

  v51 = v180;
  sub_15F84(v40 + *(v188 + 24), v180, &qword_E1AD40);
  v52 = v183;
  v53 = v184;
  v54 = (*(v183 + 48))(v51, 1, v184);
  v55 = v190;
  if (v54 == 1)
  {
    (*(v166 + 8))(v168, v169);
    sub_7D2DFC(v178, v172, v164, v165, v167);
    sub_12E1C(v51, &qword_E1AD40);
    v56 = v192;
    goto LABEL_12;
  }

  (*(v52 + 32))(v182, v51, v53);
  v70 = Logger.lyrics.unsafeMutableAddressor();
  v71 = *(v55 + 16);
  v72 = v174;
  v186 = v70;
  v73 = v192;
  v185 = v71;
  v180 = v55 + 16;
  (v71)(v174);
  v74 = v173;
  sub_7D1A74(v40, v173, type metadata accessor for Lyrics.StateManager.State);
  v75 = sub_AB4BA0();
  v76 = sub_AB9F50();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v196 = v78;
    *v77 = 136446210;
    sub_7D1A74(v74, v187, type metadata accessor for Lyrics.StateManager.State);
    v79 = sub_AB9350();
    v81 = v80;
    v73 = v192;
    sub_7D1ADC(v74, type metadata accessor for Lyrics.StateManager.State);
    v82 = v79;
    v55 = v190;
    v83 = sub_7AB3E0(v82, v81, &v196);

    *(v77 + 4) = v83;
    _os_log_impl(&dword_0, v75, v76, "Reporting lyrics for state=%{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v78);
  }

  else
  {

    sub_7D1ADC(v74, type metadata accessor for Lyrics.StateManager.State);
  }

  v188 = *(v55 + 8);
  (v188)(v72, v73);
  v84 = v165;
  sub_AB33B0();
  v86 = -v85;
  v87 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v88 = v166;
  v89 = v175;
  v90 = v169;
  (*(v166 + 16))(v175, v168, v169);
  (*(v88 + 56))(v89, 0, 1, v90);
  sub_ABA410();
  swift_getKeyPath();
  v91 = v181;
  v196 = v181;
  v189 = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager);
  sub_AB3990();

  v92 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v93 = *(v91 + v92);
  if (v93)
  {
    v94 = v93;
    v95 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v95 = 0;
  }

  [v87 setModelPlayEvent:v95];

  [v87 setVisibleDuration:v86];
  swift_getKeyPath();
  v191 = v87;
  v96 = v181;
  v195[4] = v181;
  sub_AB3990();

  v97 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v98 = v176;
  sub_15F84(v96 + v97, v176, &qword_E17C48);
  v99 = type metadata accessor for Lyrics.Translation(0);
  v100 = (*(*(v99 - 8) + 48))(v98, 1, v99) != 1;
  sub_12E1C(v98, &qword_E17C48);
  [v191 setDisplayTranslationEnabled:v100];
  swift_getKeyPath();
  v195[1] = v96;
  sub_AB3990();

  v101 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v102 = v96 + v101;
  v103 = v177;
  sub_15F84(v102, v177, &qword_E17C50);
  v104 = type metadata accessor for Lyrics.Transliteration(0);
  v105 = (*(*(v104 - 8) + 48))(v103, 1, v104) != 1;
  v106 = v191;
  sub_12E1C(v103, &qword_E17C50);
  [v106 setDisplayTransliterationEnabled:v105];
  if (v167)
  {
    v107 = v178;
    v108 = v192;
    if (*(v178 + 24))
    {
      sub_7D2E9C(v178, v172, v164, v84, 1);

      v109 = sub_AB9260();
    }

    else
    {

      v109 = 0;
    }

    v118 = v171;
    [v191 setLyricsID:v109];

    (*(*v107 + 232))();
    v119 = sub_AB35A0();
    v120 = *(v119 - 8);
    if ((*(v120 + 48))(v118, 1, v119) == 1)
    {
      sub_12E1C(v118, &qword_E18208);
      v121 = 0;
      v122 = v164;
      v123 = v172;
    }

    else
    {
      v124 = v163;
      sub_AB3570();
      (*(v120 + 8))(v118, v119);
      v125 = sub_AB34C0();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v124, 1, v125) == 1)
      {
        sub_12E1C(v124, &qword_E17B78);
        v121 = 0;
      }

      else
      {
        sub_AB34A0();
        (*(v126 + 8))(v124, v125);
        v121 = sub_AB9260();
      }

      v84 = v165;
      v122 = v164;
      v123 = v172;
      v108 = v192;
    }

    v106 = v191;
    [v191 setLanguage:v121];

    v130 = v178;
    [v106 setDisplayType:*(v178 + 56)];
    sub_7D2DFC(v130, v123, v122, v84, 1);
    v110 = v179;
  }

  else
  {
    v110 = v179;
    v108 = v192;
    if (v84 && v84[3])
    {

      v111 = sub_AB9260();
    }

    else
    {

      v111 = 0;
    }

    [v106 setLyricsID:v111];

    if (v84)
    {
      v112 = *(*v84 + 232);

      v114 = v170;
      v112(v113);

      v115 = sub_AB35A0();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        sub_12E1C(v114, &qword_E18208);
        v117 = 0;
        v110 = v179;
        v108 = v192;
      }

      else
      {
        v127 = v162;
        sub_AB3570();
        (*(v116 + 8))(v114, v115);
        v128 = sub_AB34C0();
        v129 = *(v128 - 8);
        if ((*(v129 + 48))(v127, 1, v128) == 1)
        {
          sub_12E1C(v127, &qword_E17B78);
          v117 = 0;
        }

        else
        {
          sub_AB34A0();
          (*(v129 + 8))(v127, v128);
          v117 = sub_AB9260();
        }

        v110 = v179;
        v84 = v165;
        v106 = v191;
        v108 = v192;
      }
    }

    else
    {
      v117 = 0;
    }

    [v106 setLanguage:v117];

    [v106 setDisplayType:0];
  }

  v131 = sub_AB9260();
  [v106 setFeatureName:v131];

  [v106 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v132 = v181;
  v193 = v181;
  sub_AB3990();

  [*(v132 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v106];
  (v185)(v110, v186, v108);
  v133 = v106;
  v134 = sub_AB4BA0();
  v135 = sub_AB9F50();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v195[0] = swift_slowAlloc();
    *v136 = 136446978;
    v193 = [v133 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v137 = sub_AB9350();
    v139 = sub_7AB3E0(v137, v138, v195);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2082;
    v140 = [v133 lyricsID];
    if (v140)
    {
      v141 = v140;
      v142 = sub_AB92A0();
      v144 = v143;
    }

    else
    {
      v142 = 0;
      v144 = 0;
    }

    v193 = v142;
    v194 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0);
    v147 = sub_AB9350();
    v149 = sub_7AB3E0(v147, v148, v195);

    *(v136 + 14) = v149;
    *(v136 + 22) = 2082;
    [v133 visibleDuration];
    v150 = sub_AB9AA0();
    v152 = sub_7AB3E0(v150, v151, v195);

    *(v136 + 24) = v152;
    *(v136 + 32) = 2082;
    v153 = [v133 modelSong];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 humanDescription];

      v156 = sub_AB92A0();
      v158 = v157;
    }

    else
    {
      v156 = 0;
      v158 = 0;
    }

    v193 = v156;
    v194 = v158;
    v159 = sub_AB9350();
    v161 = sub_7AB3E0(v159, v160, v195);

    *(v136 + 34) = v161;
    _os_log_impl(&dword_0, v134, v135, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v136, 0x2Au);
    swift_arrayDestroy();

    sub_7D2DFC(v178, v172, v164, v165, v167);
    v145 = v179;
    v146 = v192;
  }

  else
  {

    sub_7D2DFC(v178, v172, v164, v84, v167);
    v145 = v110;
    v146 = v108;
  }

  (v188)(v145, v146);
  (*(v183 + 8))(v182, v184);
  return (*(v166 + 8))(v168, v169);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_7D1ADC(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_E17B08);
  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_E17C48);
  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_E17C50);
  sub_12E1C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_E17C58);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_7D0E64(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_7D3534;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_ABB3C0() & 1) == 0 || (sub_12C848(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_13C80(0, &unk_E1E040);
        return sub_ABA790() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB86C0();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v40 - v8;
  v9 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18230);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v19 = &v40 + *(v18 + 56) - v16;
  sub_7D1A74(a1, &v40 - v16, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D1A74(a2, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_7D1A74(v17, v14, type metadata accessor for Lyrics.StateManager.State.Loading);
    v30 = *v14;
    v31 = v14[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_7D3250(v30, v31);
      goto LABEL_11;
    }

    v32 = *v19;
    v33 = v19[8];
    if (v31)
    {
      if (v31 == 1)
      {
        if (v33 == 1)
        {
          v34 = *v19;
          sub_13C80(0, &unk_E1E040);
          v35 = sub_ABA790();
          sub_7D3250(v34, 1);
          sub_7D3250(v30, 1);
          if ((v35 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_7D3250(v32, v33);
        v32 = v30;
        LOBYTE(v33) = 1;
      }

      else if (v30)
      {
        if (v33 == 2 && v32 == &dword_0 + 1)
        {
          goto LABEL_9;
        }
      }

      else if (v33 == 2 && v32 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v19[8])
    {
      if (v32 != v30)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_7D1ADC(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v28 = 1;
      return v28 & 1;
    }

    sub_7D3250(v32, v33);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_12E1C(v17, &qword_E18230);
LABEL_34:
    v28 = 0;
    return v28 & 1;
  }

  sub_7D1A74(v17, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
  v21 = *(v11 + 1);
  v42[0] = *v11;
  v42[1] = v21;
  v43 = v11[32];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(&v11[v22], v4);
    sub_7D3220(v42);
    goto LABEL_11;
  }

  v23 = *(v19 + 1);
  v44[0] = *v19;
  v44[1] = v23;
  v45 = v19[32];
  v24 = v41;
  v25 = *(v41 + 32);
  v26 = &v11[v22];
  v27 = v40;
  v25(v40, v26, v4);
  v25(v6, &v19[v22], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v42, v44) & 1) == 0)
  {
    sub_7D3220(v44);
    sub_7D3220(v42);
    v36 = *(v24 + 8);
    v36(v6, v4);
    v36(v27, v4);
LABEL_33:
    sub_7D1ADC(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v28 = sub_AB8650();
  sub_7D3220(v44);
  sub_7D3220(v42);
  v29 = *(v24 + 8);
  v29(v6, v4);
  v29(v27, v4);
  sub_7D1ADC(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v28 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B370);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  v15 = *(v14 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  if ((sub_AB56E0() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v16 + *(v18 + 20)) != *(v17 + *(v18 + 20)) || *(v16 + *(v18 + 24)) != *(v17 + *(v18 + 24)))
  {
    return 0;
  }

  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_15F84(a1 + v19, v13, &qword_E1AD40);
  sub_15F84(a2 + v19, &v13[v20], &qword_E1AD40);
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v20], 1, v4) == 1)
    {
      sub_12E1C(v13, &qword_E1AD40);
      return 1;
    }

    goto LABEL_10;
  }

  sub_15F84(v13, v10, &qword_E1AD40);
  if (v22(&v13[v20], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_10:
    sub_12E1C(v13, &qword_E1B370);
    return 0;
  }

  (*(v21 + 32))(v7, &v13[v20], v4);
  sub_7D2FFC(&qword_E1B3A0, &type metadata accessor for Date);
  v24 = sub_AB91C0();
  v25 = *(v21 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_12E1C(v13, &qword_E1AD40);
  return (v24 & 1) != 0;
}

uint64_t sub_7D1A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_7D1ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_7D1B40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_7D1BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB86C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18238);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_15F84(a1, &v21 - v12, &qword_E17B08);
  sub_15F84(a2, &v13[v15], &qword_E17B08);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_15F84(v13, v10, &qword_E17B08);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_7D2FFC(&qword_E18220, &type metadata accessor for Song);
      v18 = sub_AB91C0();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_12E1C(v13, &qword_E17B08);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_12E1C(v13, &qword_E18238);
    v17 = 1;
    return v17 & 1;
  }

  sub_12E1C(v13, &qword_E17B08);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_7D2114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17BD0;

  return sub_7CA1FC();
}

uint64_t sub_7D21C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_7D2238()
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v0 <= 0x3F)
  {
    sub_7D280C(319, &qword_E17C98, &type metadata accessor for Song);
    if (v1 <= 0x3F)
    {
      sub_7D280C(319, &qword_E17CA0, type metadata accessor for Lyrics.Translation);
      if (v2 <= 0x3F)
      {
        sub_7D280C(319, &qword_E17CA8, type metadata accessor for Lyrics.Transliteration);
        if (v3 <= 0x3F)
        {
          sub_7D280C(319, &unk_E17CB0, type metadata accessor for MetricsEvent.Page);
          if (v4 <= 0x3F)
          {
            sub_AB39D0();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_7D249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_7D25FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_7D2754()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v1 <= 0x3F)
    {
      sub_7D280C(319, &unk_E18088, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_7D280C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_7D2860()
{
  sub_7D28CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_7D28CC()
{
  if (!qword_E18140)
  {
    sub_AB86C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_E18140);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_7D2974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB56F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_7D2A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB56F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_7D2B0C()
{
  result = sub_AB56F0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_7D2C54()
{

  return swift_deallocObject();
}

uint64_t sub_7D2C8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E046C(a1, v4);
}

uint64_t sub_7D2D44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_E046C(a1, v4);
}

uint64_t sub_7D2DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_7D2E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_7D2EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_7D2F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_7D2FFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_7D30B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_7D30F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_E065C(a1, v4);
}

uint64_t sub_7D31B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_7D3250(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_7D3264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_7D0E64(a1, v4);
}

uint64_t sub_7D3320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_17CF8;

  return sub_7C7EB4();
}

uint64_t sub_7D33D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D3438(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_7D347C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v30.receiver = v4;
  v30.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x8000000000B74CC0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v12 = qword_E73660;
  LOBYTE(v50[0]) = 1;
  *&v33 = 0x6F68706F7263694DLL;
  *(&v33 + 1) = 0xEA0000000000656ELL;
  *&v34 = qword_E73660;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  *&v39 = 0;
  *(&v39 + 1) = _swiftEmptyArrayStorage;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = v33;
  v44 = v34;
  v49 = 1;
  v47 = v39;
  v48 = 0u;
  v13 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v45 = 0u;
  v46 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 2);
  v31[1] = *(v13 + 1);
  v31[2] = v15;
  v31[0] = v14;
  v16 = *(v13 + 3);
  v17 = *(v13 + 4);
  v18 = *(v13 + 5);
  v32 = v13[96];
  v31[4] = v17;
  v31[5] = v18;
  v31[3] = v16;
  v20 = *(v13 + 4);
  v19 = *(v13 + 5);
  v21 = *(v13 + 3);
  v51 = v13[96];
  v50[4] = v20;
  v50[5] = v19;
  v50[3] = v21;
  v22 = *v13;
  v23 = *(v13 + 2);
  v50[1] = *(v13 + 1);
  v50[2] = v23;
  v50[0] = v22;
  v24 = v48;
  *(v13 + 4) = v47;
  *(v13 + 5) = v24;
  v13[96] = v49;
  v25 = v44;
  *v13 = v43;
  *(v13 + 1) = v25;
  v26 = v46;
  *(v13 + 2) = v45;
  *(v13 + 3) = v26;
  v27 = v12;
  sub_7D38E4(v31, v29);
  sub_7A1348(&v33, v29);
  sub_7D3954(v50);
  sub_8AC5D4(v31);
  sub_7D3954(v31);
  sub_7A26D4(&v33);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_7D38E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D3954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7D39E0()
{
  sub_7D50FC();
  result = sub_AB59E0();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_E169D8 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (qword_E169D8 != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_AB5DB0())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18278);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18280);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_7D5150;
}

uint64_t GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v63 = a2;
  v62 = sub_AB5CC0();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18288);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v49 - v6;
  v71 = sub_AB6EA0();
  v55 = *(v71 - 8);
  __chkstk_darwin(v71);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18290);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v49 - v14);
  v16 = sub_AB6EB0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18298);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182A0);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v68 = sub_7D43B0(a1, a3);
  (*(v17 + 16))(v22, a1, v16);
  v27 = v22;
  v28 = v26;
  (*(v17 + 32))(v19, v27, v16);
  sub_7D47C0(&qword_E182A8);
  sub_AB95A0();
  v50 = *(v24 + 44);
  *&v26[v50] = 0;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182B0) + 36);
  v30 = sub_7D47C0(&qword_E182B8);
  v66 = 0;
  v51 = (v55 + 16);
  v70 = (v55 + 32);
  v31 = v64;
  v64 += 6;
  v65 = (v31 + 7);
  v54 = (v56 + 8);
  v53 = (v55 + 8);
  v56 = v29;
  v55 = v30;
  v59 = v15;
  v58 = v16;
  v57 = v12;
  while (1)
  {
    sub_AB9CA0();
    if (*(v28 + v29) == v73[0])
    {
      v32 = 1;
      v33 = v69;
      goto LABEL_6;
    }

    v34 = sub_AB9D80();
    v35 = v52;
    v36 = v71;
    (*v51)(v52);
    v34(v73, 0);
    sub_AB9CB0();
    v33 = v69;
    v37 = v70;
    v38 = *(v69 + 48);
    v40 = v66;
    v39 = v67;
    *v67 = v66;
    result = (*v37)(&v39[v38], v35, v36);
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v66 = v40 + 1;
    *(v28 + v50) = v40 + 1;
    sub_36B0C(v67, v12, &qword_E18288);
    v32 = 0;
LABEL_6:
    (*v65)(v12, v32, 1, v33);
    sub_36B0C(v12, v15, &qword_E18290);
    if ((*v64)(v15, 1, v33) == 1)
    {
      sub_7D4804(v28);
    }

    v42 = *v15;
    v43 = v15 + *(v33 + 48);
    v44 = v60;
    (*v70)(v60, v43, v71);
    v73[0] = *v63;
    __chkstk_darwin(v73[0]);
    *(&v49 - 4) = a3;
    v45 = v68;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;

    v46 = sub_AB5C80();
    v72 = v73[0];
    __chkstk_darwin(v46);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;
    v12 = v57;

    sub_AB5C80();
    v47 = v61;
    sub_AB5CB0();
    sub_AB5CF0();
    (*v54)(v47, v62);
    sub_AB5C90();
    sub_AB5C90();

    v48 = v44;
    v15 = v59;
    (*v53)(v48, v71);
    v29 = v56;
  }

  __break(1u);
  return result;
}

char *sub_7D43B0(uint64_t a1, double a2)
{
  v33 = sub_AB6EA0();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB6EB0();
  sub_7D47C0(&qword_E182B8);
  v7 = sub_AB9C70();
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
    v34 = _swiftEmptyArrayStorage;
    sub_8A57A8(0, v7 & ~(v7 >> 63), 0);
    v8 = v34;
    sub_AB9C60();
    if (v9 < 0)
    {
      goto LABEL_24;
    }

    v32 = (v4 + 16);
    do
    {
      v10 = sub_AB9D80();
      v11 = v33;
      (*v32)(v6);
      v10(v40, 0);
      sub_AB6E90();
      v41.origin.x = v35;
      v41.size.width = v37;
      v41.origin.y = v36 - v38;
      v41.size.height = v38 + v39;
      Width = CGRectGetWidth(v41);
      (*(v4 + 8))(v6, v11);
      v34 = v8;
      v13 = a1;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_8A57A8((v14 > 1), v15 + 1, 1);
        v8 = v34;
      }

      v8[2] = v15 + 1;
      *&v8[v15 + 4] = Width;
      sub_AB9CB0();
      --v9;
      a1 = v13;
    }

    while (v9);
  }

  v16 = v8[2];
  if (!v16)
  {
    v18 = 0.0;
    goto LABEL_16;
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_14:
    v21 = v16 - v17;
    v22 = &v8[v17 + 4];
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v19 = (v8 + 6);
  v18 = 0.0;
  v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_14;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0;
  if (v16)
  {
    v25 = 0;
    while (v25 < v8[2])
    {
      v26 = *&v8[v25 + 4];
      v27 = v25 + 1;
      v28 = *(inited + 8 * v25 + 32);
      v29 = *(inited + 24);
      if (v25 + 1 >= v29 >> 1)
      {
        inited = sub_8A4D78((v29 > 1), v25 + 2, 1, inited);
      }

      *(inited + 16) = v25 + 2;
      *(inited + 8 * v25++ + 40) = v26 / v18 + v28;
      if (v16 == v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v40[0] = inited;
  v30 = sub_7D4998(0, v16, v40, a2);

  return v30;
}

uint64_t sub_7D47C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_AB6EB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7D4804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7D48C4(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_7D4944()
{
  result = qword_E182C0;
  if (!qword_E182C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E182C0);
  }

  return result;
}

char *sub_7D4998(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_8A5788(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_8A5788((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_7D4B2C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_7D4B38(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_7D4B64;
}

double sub_7D4B64(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_7D4B9C()
{
  result = qword_E182C8;
  if (!qword_E182C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18280);
    sub_36A00(&qword_E182D0, &qword_E18278);
    sub_36A00(&qword_E182D8, &qword_E182E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E182C8);
  }

  return result;
}

uint64_t sub_7D4C80()
{
  v0 = sub_AB5CE0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF85F0;
  *(v4 + 32) = sub_AB74B0();
  *(v4 + 40) = sub_AB7490();
  sub_AB7990();
  sub_AB6E90();
  sub_AB6E90();
  sub_AB6E90();
  *&v10.origin.x = v6[13];
  *&v10.size.width = v6[15];
  v10.origin.y = *&v6[14] - v7;
  v10.size.height = v7 + v8;
  CGRectInset(v10, -14.0, 0.0);
  sub_AB6DE0();
  sub_AB5CD0();

  sub_AB5CA0();
  sub_7D50A8(v9);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7D4E5C()
{
  v0 = sub_AB5CE0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182E8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF85D0;
  sub_AB7490();
  *(v4 + 32) = sub_AB7970();
  *(v4 + 40) = v5;
  sub_AB74B0();
  *(v4 + 48) = sub_AB7970();
  *(v4 + 56) = v6;
  sub_AB74B0();
  *(v4 + 64) = sub_AB7970();
  *(v4 + 72) = v7;
  sub_AB7490();
  *(v4 + 80) = sub_AB7970();
  *(v4 + 88) = v8;
  sub_AB7980();
  sub_AB6E90();
  sub_AB6E90();
  sub_AB6E90();
  *&v14.origin.x = v10[13];
  *&v14.size.width = v10[15];
  v14.origin.y = *&v10[14] - v11;
  v14.size.height = v11 + v12;
  CGRectInset(v14, -57.5, 0.0);
  sub_AB6DE0();
  sub_AB5CD0();

  sub_AB5CA0();
  sub_7D50A8(v13);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_7D50FC()
{
  result = qword_E18300;
  if (!qword_E18300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18300);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_AB93F0();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_ABB600(v5);
    }

    else
    {

      sub_AB93F0();
    }
  }

  else
  {
    sub_AB93F0();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_ABB600(v7);
    sub_ABB5D0(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_ABB5C0();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_ABB610();
}

Swift::Int sub_7D5384()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_ABB5C0();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_ABB610();
}

Swift::Int sub_7D53EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_ABB5C0();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_ABB610();
}

uint64_t sub_7D5444(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(double a1, double a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  v8 = sub_AB7450() & (a1 == a2);
  if (v7 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_AB7470();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_ABB600(*&v6);
  sub_ABB5D0(a4);
}

Swift::Int Border.hashValue.getter(double a1, uint64_t a2, unsigned __int8 a3)
{
  sub_ABB5C0();
  sub_AB7470();
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  sub_ABB600(*&v5);
  sub_ABB5D0(a3);
  return sub_ABB610();
}

void sub_7D55E4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_AB7470();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_ABB600(*&v3);
  sub_ABB5D0(v2);
}

Swift::Int sub_7D5644()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_ABB5C0();
  sub_AB7470();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_ABB600(*&v3);
  sub_ABB5D0(v2);
  return sub_ABB610();
}

BOOL sub_7D56C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_AB7450();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)()
{
  sub_AB7470();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_ABB600(*&v1);
  v2 = v0[2];
  v3 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  sub_ABB600(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_ABB600(*&v5);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_ABB5C0();
  Shadow.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_7D587C()
{
  sub_ABB5C0();
  Shadow.hash(into:)();
  return sub_ABB610();
}

BOOL sub_7D58B8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_AB7450();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_7D5970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18348);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18350);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_7D5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_AB5820();

  v10 = sub_AB7A30();
  v12 = v11;
  v13 = sub_AB7A30();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18358);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18360) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_15F84(&v27, &v23, &qword_E18368);
  return sub_12E1C(v35, &qword_E18368);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v5 = *a1;
  *&v5[8] = *(a1 + 8);
  *&v5[24] = *(a1 + 24);
  *&v5[40] = a2;
  *&v5[48] = a3;
  v5[56] = a4;

  sub_AB7310();
  v6[0] = *v5;
  v6[1] = *&v5[16];
  v7[0] = *&v5[32];
  *(v7 + 9) = *&v5[41];
  return sub_7D7814(v6);
}

uint64_t sub_7D5D44@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18390);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  v11 = *(a1 + 48);
  v39 = *(a1 + 40);
  v37 = *(a1 + 56);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  sub_7D7EE8(a1, v49);
  v16 = sub_AB6AA0();
  sub_AB5690();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v49[0]) = 0;
  v25 = *(v5 + 44);
  v26 = enum case for BlendMode.destinationOut(_:);
  v27 = sub_AB7AC0();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v39;
  *v10 = v39;
  *(v10 + 1) = v11;
  v29 = v11;
  v38 = v11;
  LOBYTE(v11) = v37;
  v10[16] = v37;
  *(v10 + 3) = 0;
  sub_15F84(v10, v7, &qword_E18390);
  *&v42 = v28;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = v11;
  *(&v43 + 1) = *v41;
  HIDWORD(v43) = *&v41[3];
  v44 = 0;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v16;
  *(&v47 + 1) = *v40;
  DWORD1(v47) = *&v40[3];
  *(&v47 + 1) = v18;
  *&v48[0] = v20;
  *(&v48[0] + 1) = v22;
  *&v48[1] = v24;
  BYTE8(v48[1]) = 0;
  v30 = v43;
  *a2 = v42;
  a2[1] = v30;
  v31 = v45;
  v32 = v46;
  *(a2 + 89) = *(v48 + 9);
  v33 = v48[0];
  a2[4] = v47;
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18398);
  sub_15F84(v7, a2 + *(v34 + 48), &qword_E18390);
  sub_15F84(&v42, v49, &qword_E183A0);
  sub_12E1C(v10, &qword_E18390);
  sub_12E1C(v7, &qword_E18390);
  v49[0] = v39;
  v49[1] = v38;
  v50 = v11;
  *v51 = *v41;
  *&v51[3] = *&v41[3];
  v52 = 0;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  *v58 = *v40;
  *&v58[3] = *&v40[3];
  v59 = v18;
  v60 = v20;
  v61 = v22;
  v62 = v24;
  v63 = 0;
  return sub_12E1C(v49, &qword_E183A0);
}

uint64_t sub_7D6104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_AB7A30();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18370) + 36));
  *v9 = sub_AB7A30();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18378);
  sub_7D5D44(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18380) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18388);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_7D6294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v3 = sub_AB6630();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E183A8);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = *(v2 + 16);
  v13 = *(v2 + 3);
  v15 = v18 + *(v14 + 36) - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E183B0);
  sub_AB5EC0();
  *v15 = v10;
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = -v13;
  v15[32] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E183B8);
  (*(*(v16 - 8) + 16))(v9, v18[0], v16);
  sub_AB5EE0();
  sub_7D7F20();
  sub_7D8004();
  sub_AB6FF0();
  (*(v4 + 8))(v6, v3);
  return sub_12E1C(v9, &qword_E183A8);
}

void sub_7D64AC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v48) = a3;
  v46 = a2;
  *&v47 = a1;
  v49 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18470);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_AB6B50();
  v43 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = sub_AB6400();
  v44 = *(v18 - 8);
  v45 = v18;
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB63A0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_AB7880();
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_AB5E50();
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v48)
  {
    v33 = v46;
    if (v46 == -1)
    {
      v40 = sub_AB5E60();
      (*(v22 + 104))(&v31[*(v40 + 20)], enum case for RoundedCornerStyle.continuous(_:), v21);
      v41 = v47;
      *v31 = v47;
      *(v31 + 1) = v41;
      *&v31[*(v28 + 20)] = a9;
      sub_AB5E40();
      v47 = v50;
      v48 = v51;
      v32 = v52;
      sub_7D867C(v31, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v34 = *&v47;
      v54.origin.x = a5;
      v54.origin.y = a6;
      v54.size.width = a7;
      v54.size.height = a8;
      v55 = CGRectInset(v54, a9, a9);
      v35 = [objc_opt_self() bezierPathWithRoundedRect:v33 byRoundingCorners:v55.origin.x cornerRadii:{v55.origin.y, v55.size.width, v55.size.height, v34, v34}];
      v36 = [v35 CGPath];
      sub_AB6DF0();
      v47 = v50;
      v48 = v51;
      v32 = v52;
    }

    goto LABEL_8;
  }

  if (v48 == 1)
  {
    sub_AB6B40();
    (*(v43 + 56))(v16, 0, 1, v17);
    sub_AB6B30();
    sub_12E1C(v16, &qword_E18470);
    sub_AB63F0();
    v53.origin.x = a5;
    v53.origin.y = a6;
    v53.size.width = a7;
    v53.size.height = a8;
    CGRectInset(v53, a9, a9);
    sub_AB63E0();
    v47 = v50;
    v48 = v51;
    v32 = v52;
    (*(v44 + 8))(v20, v45);
LABEL_8:
    v39 = v47;
    v38 = v48;
    goto LABEL_9;
  }

  v37 = *(v22 + 104);
  v37(v27, enum case for RoundedCornerStyle.continuous(_:), v21, v29);
  (v37)(v24, enum case for RoundedCornerStyle.circular(_:), v21);
  sub_AB6390();
  (*(v22 + 8))(v24, v21);
  sub_7D867C(v27, &type metadata accessor for Capsule);
  sub_AB7870();
  v39 = v50;
  v38 = v51;
  v32 = v52;
LABEL_9:
  v42 = v49;
  *v49 = v39;
  v42[1] = v38;
  *(v42 + 32) = v32;
}

double sub_7D6A2C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_7D6A4C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_7D64AC(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_7D6AA4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_AB5620();
  return sub_A8F90;
}

uint64_t sub_7D6B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7D85D0();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7D6B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7D85D0();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7D6BF8(uint64_t a1)
{
  v2 = sub_7D85D0();

  return Shape.body.getter(a1, v2);
}

void sub_7D6C44()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_E18308 = v1 == &dword_4 + 2;
}

uint64_t sub_7D6CA8()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_E18308)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_E739E0 = -1;
  byte_E739E8 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_E169E8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_E169E8 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_7D6DC4()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_E18308)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_E739F8 = -1;
  byte_E73A00 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_E169F0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_E169F0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_7D6EE0()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_E18308)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_E73A10 = -1;
  byte_E73A18 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_E169F8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_E169F8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_7D6FFC()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_E18308)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_E73A28 = -1;
  byte_E73A30 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_E16A00 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_E16A00 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_7D7118()
{
  if (qword_E169E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_E18308)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_E73A40 = -1;
  byte_E73A48 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_E16A08 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_E16A08 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_7D7234()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_7D7310;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_119878;
  v3[3] = &block_descriptor_220;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_AB7420();
  static Border.artwork = result;
  qword_E73A58 = 0x3FE0000000000000;
  byte_E73A60 = 0;
  return result;
}

id sub_7D7310(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_B28320[v1 == &dword_0 + 1];
  v4 = &selRef_blackColor;
  if (v1 != &dword_0 + 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  v0 = *&qword_E73A58;

  return v0;
}

double sub_7D7474()
{
  sub_AB7480();
  v0 = sub_AB74C0();

  static Shadow.shallow = v0;
  unk_E73A70 = xmmword_AFEDA0;
  result = 2.0;
  unk_E73A80 = xmmword_B28330;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_E16A18 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16A18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_E73A70;
  *(a1 + 24) = unk_E73A80;
}

double sub_7D75A8()
{
  sub_AB7480();
  v0 = sub_AB74C0();

  static Shadow.intermediate = v0;
  unk_E73A98 = xmmword_AF7C30;
  result = 15.0;
  unk_E73AA8 = xmmword_B28340;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_E16A20 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16A20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_E73A98;
  *(a1 + 24) = unk_E73AA8;
}

double sub_7D76E0()
{
  sub_AB7480();
  v0 = sub_AB74C0();

  static Shadow.deep = v0;
  unk_E73AC0 = xmmword_B28350;
  result = 25.0;
  unk_E73AD0 = xmmword_B28360;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_E16A28 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16A28 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = unk_E73AC0;
  *(a1 + 24) = unk_E73AD0;
}

unint64_t sub_7D7848()
{
  result = qword_E18310;
  if (!qword_E18310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18310);
  }

  return result;
}

unint64_t sub_7D78A0()
{
  result = qword_E18318;
  if (!qword_E18318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18318);
  }

  return result;
}

unint64_t sub_7D78F8()
{
  result = qword_E18320;
  if (!qword_E18320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18320);
  }

  return result;
}

unint64_t sub_7D7950()
{
  result = qword_E18328;
  if (!qword_E18328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18328);
  }

  return result;
}

__n128 __swift_memcpy40_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_7D7A18()
{
  result = qword_E18330;
  if (!qword_E18330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18330);
  }

  return result;
}

unint64_t sub_7D7A8C()
{
  result = qword_E1AE60;
  if (!qword_E1AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1AE60);
  }

  return result;
}

unint64_t sub_7D7B00()
{
  result = qword_E18338;
  if (!qword_E18338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18338);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_AB5D50();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_7D7BE4()
{
  result = qword_E18340;
  if (!qword_E18340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18340);
  }

  return result;
}

__n128 __swift_memcpy42_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7D7C4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7D7CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_7D7D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_7D7D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7D7DBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_7D7E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7D7F20()
{
  result = qword_E183C0;
  if (!qword_E183C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E183A8);
    sub_36A00(&qword_E183C8, &qword_E183B8);
    sub_36A00(&qword_E183D0, &qword_E183B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183C0);
  }

  return result;
}

unint64_t sub_7D8004()
{
  result = qword_E183D8;
  if (!qword_E183D8)
  {
    sub_AB6630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183D8);
  }

  return result;
}

uint64_t block_copy_helper_220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7D8074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7D80BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_7D8114()
{
  result = qword_E183E0;
  if (!qword_E183E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18350);
    sub_7D81CC();
    sub_36A00(&qword_E18400, &qword_E18408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183E0);
  }

  return result;
}

unint64_t sub_7D81CC()
{
  result = qword_E183E8;
  if (!qword_E183E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E183F0);
    sub_36A00(&qword_E183F8, &qword_E18348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E183E8);
  }

  return result;
}

unint64_t sub_7D8288()
{
  result = qword_E18410;
  if (!qword_E18410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18360);
    sub_36A00(&qword_E18418, &qword_E18358);
    sub_36A00(&qword_E18420, &qword_E18368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18410);
  }

  return result;
}

unint64_t sub_7D8370()
{
  result = qword_E18428;
  if (!qword_E18428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18370);
    sub_36A00(&qword_E18430, &qword_E18388);
    sub_36A00(&qword_E18438, &qword_E18380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18428);
  }

  return result;
}

uint64_t sub_7D8454()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E183A8);
  sub_AB6630();
  sub_7D7F20();
  sub_7D8004();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_7D8520()
{
  result = qword_E18450;
  if (!qword_E18450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18450);
  }

  return result;
}

unint64_t sub_7D8578()
{
  result = qword_E18458;
  if (!qword_E18458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18458);
  }

  return result;
}

unint64_t sub_7D85D0()
{
  result = qword_E18460;
  if (!qword_E18460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18460);
  }

  return result;
}

unint64_t sub_7D8628()
{
  result = qword_E18468;
  if (!qword_E18468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18468);
  }

  return result;
}

uint64_t sub_7D867C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_7D86F0(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_8A5748(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_8A5748(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_7949C8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_7D8924(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_ABAEC0();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_AB3A30();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_7D89CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_ABB060();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_8A5768(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_ABAE20();
        _s3__C7CGColorCMa_1(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_8A5768((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_9ACFC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _s3__C7CGColorCMa_1(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_8A5768((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_9ACFC(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_7D8B98(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_7DC66C(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = sub_AB9780();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  sub_AB9870();
  return v5;
}

double sub_7D8D44()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_B00DA0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_B28370, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double sub_7D8DF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_B00DA0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_B28370, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

void *sub_7D8EEC(uint64_t a1, void *a2)
{
  v4 = sub_7D8B98(a1, a2);
  sub_7D8DF4(a1, a2);
  v6 = sub_7D8F60(v4, v5);

  return v6;
}

void *sub_7D8F60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_8A57C8(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = sub_AB7970();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_8A57C8((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = sub_AB7970();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_8A57C8((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_7D916C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  sub_AB5820();
  sub_AB6D40();
  sub_7DD1C4(v24);
  v4 = sub_AB74B0();
  sub_AB5820();
  sub_AB6D40();
  sub_7DD1C4(v25);
  v5 = sub_AB74B0();
  sub_AB5820();
  sub_AB6D40();
  sub_7DD1C4(v26);
  v6 = sub_AB74B0();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  sub_15F84(v30, v55, &qword_E187A0);
  sub_15F84(v34, v55, &qword_E187A0);
  sub_15F84(&v38, v55, &qword_E187A0);
  sub_12E1C(v43, &qword_E187A0);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  sub_12E1C(v49, &qword_E187A0);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return sub_12E1C(v55, &qword_E187A0);
}

double sub_7D9450@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = sub_AB7A30();
  v6 = v5;
  sub_7D916C(v18, &v36);
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  v34[10] = v46;
  v34[11] = v47;
  v34[12] = v48;
  v34[6] = v42;
  v34[7] = v43;
  v34[8] = v44;
  v34[9] = v45;
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v34[5] = v41;
  v33 = v49;
  v35 = v49;
  v34[0] = v36;
  v34[1] = v37;
  sub_15F84(&v20, v17, &qword_E18790);
  sub_12E1C(v34, &qword_E18790);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v36 = v20;
  v37 = v21;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18798) + 36);
  v8 = enum case for BlendMode.plusLighter(_:);
  v9 = sub_AB7AC0();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v6;
  v10 = v47;
  *(a1 + 176) = v46;
  *(a1 + 192) = v10;
  *(a1 + 208) = v48;
  *(a1 + 224) = v49;
  v11 = v43;
  *(a1 + 112) = v42;
  *(a1 + 128) = v11;
  v12 = v45;
  *(a1 + 144) = v44;
  *(a1 + 160) = v12;
  v13 = v39;
  *(a1 + 48) = v38;
  *(a1 + 64) = v13;
  v14 = v41;
  *(a1 + 80) = v40;
  *(a1 + 96) = v14;
  result = *&v36;
  v16 = v37;
  *(a1 + 16) = v36;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_7D9654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a3;
  swift_getWitnessTable();
  sub_AB6710();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187A8);
  v5 = sub_AB5D50();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  v20 = *(a2 + 16);
  v21 = v3;
  sub_AB7A30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187B0);
  WitnessTable = swift_getWitnessTable();
  sub_7DCF04(&qword_E187B8, &qword_E187B0, &unk_B2C788, sub_7DD224);
  sub_AB7250();
  v12 = sub_36A00(&qword_E187C8, &qword_E187A8);
  v22 = WitnessTable;
  v23 = v12;
  v13 = swift_getWitnessTable();
  sub_7FF188(v7, v5, v13);
  v14 = *(v17 + 8);
  v14(v7, v5);
  sub_7FF188(v10, v5, v13);
  return (v14)(v10, v5);
}

double sub_7D98EC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_7D8EEC(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  sub_AB7980();
  sub_AB5B40();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  sub_AB7A30();
  sub_AB5970();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_7D9A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_AB63A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18510) + 36));
  v13 = sub_AB5E60();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0) + 36)) = 256;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18518);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  sub_AB7A30();
  sub_AB5970();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18520) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = sub_AB7A30();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  sub_AB6D70();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = sub_AB74B0();
  v43 = v26;
  v27 = sub_AB7490();
  sub_AB74B0();
  v28 = sub_AB74C0();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18528);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  sub_15F84(&v57, &v47, &qword_E18530);
  return sub_12E1C(v65, &qword_E18530);
}

__n128 sub_7D9DCC@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_7D9DD8@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_7D9E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_7DC6E0(v7, v8) & 1;
}

uint64_t sub_7D9E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_AB63A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18560);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin(v7);
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  sub_AB6D70();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  sub_AB6D70();
  v13 = sub_AB74B0();
  v14 = sub_AB7490();
  sub_AB74B0();
  v15 = sub_AB74C0();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_7DC3B8(v44, v33);
  sub_AB6D30();
  sub_7D50A8(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 64);
  LOBYTE(v29) = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB77F0();
  v16 = swift_allocObject();
  v17 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v19;
  sub_7DC48C(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18570);
  sub_7DC4C4();
  sub_7DC518();
  sub_36A00(&qword_E185A8, &qword_E18570);
  v20 = v24;
  sub_AB7110();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  sub_7DC5FC(&v28);
  sub_7D50A8(v39);
  v33[0] = *(a1 + 88);
  LOBYTE(v33[1]) = *(a1 + 104);
  sub_AB77F0();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185B0);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_7DA34C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18590);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18568) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return sub_7DC634(v14, &v13);
}

uint64_t sub_7DA424@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18570);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v17 = v16 - v8;
  v16[1] = swift_getKeyPath();
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E185C0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E185C8);
  v11 = sub_36A00(&qword_E185D0, &qword_E185C0);
  v12 = sub_36A00(&qword_E185D8, &qword_E185C8);
  v20 = &type metadata for Double;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  swift_getOpaqueTypeConformance2();
  sub_AB5A20();
  sub_36A00(&qword_E185A8, &qword_E18570);
  v13 = v17;
  sub_AB5DE0();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_AB5E00();
  sub_AB5DF0();
  v14(v6, v3);
  return (v14)(v13, v3);
}

uint64_t sub_7DA700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_AB7780();
  __chkstk_darwin(v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185C8);
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  __chkstk_darwin(v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v24 = &v23 - v14;
  v32 = *(a1 + 16);
  v33 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185E0);
  sub_AB77F0();
  sub_AB58C0();
  sub_36A00(&qword_E185D0, &qword_E185C0);
  sub_AB68C0();
  v15 = *(v10 + 8);
  v25 = v10 + 8;
  v26 = v15;
  v15(v12, v9);
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  sub_AB77F0();
  sub_AB7770();
  *&v32 = 0;
  BYTE8(v32) = 0;
  v16 = v27;
  sub_AB5BC0();
  sub_36A00(&qword_E185D8, &qword_E185C8);
  v18 = v28;
  v17 = v29;
  sub_AB68C0();
  v19 = *(v30 + 8);
  v19(v16, v17);
  v20 = v24;
  sub_AB68E0();
  sub_AB68D0();
  v21 = v26;
  v26(v12, v9);
  v19(v18, v17);
  return v21(v20, v9);
}

double sub_7DAAF4@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_AB6D50();
  *&v6 = COERCE_DOUBLE(sub_AB6D80());
  v8 = v7;
  v10 = v9;
  sub_7D50A8(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_7DABC0@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_AB6D50();
  *&v6 = COERCE_DOUBLE(sub_AB6D80());
  v8 = v7;
  v10 = v9;
  sub_7D50A8(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

uint64_t sub_7DACA4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_7DC77C(v8, v9) & 1;
}

uint64_t sub_7DAD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18538) + 36));
  v10 = *(sub_AB5E60() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_AB63A0();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18540);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_AB7A30();
  sub_AB5970();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18548) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = sub_AB7A30();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18550) + 36);
  sub_7D9E94(v24, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18558);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14)
{
  *&v15 = a9;
  *(&v15 + 1) = a10;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a11;
  *(&v17 + 1) = a3;
  *&v18 = a4;
  *(&v18 + 1) = a12;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  v20[0] = a7;
  *&v20[8] = a8;
  *&v20[16] = a13;
  v20[24] = a14;

  sub_AB7310();
  v21[4] = v19;
  v22[0] = *v20;
  *(v22 + 9) = *&v20[9];
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  return sub_7DB008(v21);
}

void sub_7DB038(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_7DB2D4(0.5);
  sub_7DB2D4(1.0);
  sub_7DB2D4(4.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_7DB7B0(v32);
  sub_7DBBA4(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_7DB7B0(v35);
  sub_7DBBA4(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    sub_7DB7B0(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B036F0;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_7DBBA4(v38);
    sub_7D89CC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_AB9740().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_7DB2D4(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = UIView.forAutolayout.getter();

  v6 = [v5 layer];
  [v6 setBorderWidth:a1];

  v7 = [v5 layer];
  v8 = [objc_opt_self() whiteColor];
  v9 = [v8 CGColor];

  [v7 setBorderColor:v9];
  v10 = [v5 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_AB9A80().super.super.isa;
  [v11 setValue:isa forKey:kCAFilterInputRadius];

  v13 = [v5 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF4EC0;
  *(v14 + 56) = sub_13C80(0, &qword_E185F8);
  *(v14 + 32) = v11;
  v15 = v11;
  v16 = sub_AB9740().super.isa;

  [v13 setFilters:v16];

  v17 = [v5 layer];
  [v17 setCompositingFilter:kCAFilterPlusL];

  [v2 addSubview:v5];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF93E0;
  v20 = [v5 topAnchor];
  v21 = [v2 topAnchor];
  v22 = a1 * -0.5;
  v23 = [v20 constraintEqualToAnchor:v21 constant:a1 * -0.5];

  *(v19 + 32) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v2 bottomAnchor];
  v26 = a1 * 0.5;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  *(v19 + 40) = v27;
  v28 = [v5 leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v22];

  *(v19 + 48) = v30;
  v31 = [v5 trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v26];

  *(v19 + 56) = v33;
  sub_13C80(0, qword_E18600);
  v34 = sub_AB9740().super.isa;

  [v18 activateConstraints:v34];
}

__n128 sub_7DB7B0@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_7DB7B0(v20);
  sub_7DBBA4(v20);
  sub_7DB7B0(v21);
  sub_7DBBA4(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_7DB7B0(v22);
  sub_7D8D44();
  v15 = v14;
  sub_7DBBA4(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_ABAEC0();
    sub_13C80(0, &qword_E19E40);
    v17 = 32;
    do
    {
      sub_ABA760(*(v15 + v17));
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  sub_13C80(0, &qword_E19E40);
  isa = sub_AB9740().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = sub_ABA620();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_ABA680();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_15F84(a1, v8, &qword_E1DB50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_12E1C(v8, &qword_E1DB50);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_ABA650();
  v14 = v28;
  [v28 bounds];
  sub_ABA610();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v17 = [v14 subviews];
  sub_13C80(0, &qword_E1E050);
  v18 = sub_AB9760();

  v26 = v10;
  v27 = v9;
  v25 = v12;
  if (v18 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v20 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = sub_ABAE20();
      }

      else
      {
        if (v20 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 layer];
      [v24 setCornerRadius:v16];

      ++v20;
      if (v23 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v26 + 8))(v25, v27);
}

id sub_7DBFA4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id sub_7DBFB0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id sub_7DBFBC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_7DBFC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_7DC84C(v7, v8) & 1;
}

unint64_t sub_7DC068()
{
  result = qword_E184A8;
  if (!qword_E184A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E184A8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB012GlowModifierVGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_AB5D50();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_7DC14C()
{
  result = qword_E184B0;
  if (!qword_E184B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E184B0);
  }

  return result;
}

__n128 __swift_memcpy64_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_7DC1F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_7DC238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7DC2B4(uint64_t a1)
{
  result = sub_7DC068();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DC2DC(uint64_t a1)
{
  result = sub_7DC14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DC304(uint64_t a1)
{
  result = sub_7DC32C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DC32C()
{
  result = qword_E18508;
  if (!qword_E18508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18508);
  }

  return result;
}

uint64_t sub_7DC414()
{

  return swift_deallocObject();
}

unint64_t sub_7DC4C4()
{
  result = qword_E18578;
  if (!qword_E18578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18578);
  }

  return result;
}

unint64_t sub_7DC518()
{
  result = qword_E18580;
  if (!qword_E18580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18568);
    sub_36A00(&qword_E18588, &qword_E18590);
    sub_36A00(&qword_E18598, &qword_E185A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18580);
  }

  return result;
}

uint64_t sub_7DC66C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70);
  }

  else
  {

    return sub_ABB340();
  }
}

uint64_t sub_7DC6E0(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_AB7B80() & 1) == 0 || (sub_AB7B80() & 1) == 0 || (sub_AB7450() & 1) == 0 || (sub_AB7450() & 1) == 0)
  {
    return 0;
  }

  return sub_AB7450();
}

uint64_t sub_7DC77C(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_AB6D90() & 1) == 0 || a1[6] != a2[6] || (sub_AB7450() & 1) == 0 || (sub_AB7450() & 1) == 0)
  {
    return 0;
  }

  return sub_AB7450();
}

uint64_t sub_7DC84C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_s3__C7CGColorCMa_1(0), sub_7DC93C(), (sub_AB3B20() & 1) != 0) && (sub_AB3B20() & 1) != 0)
  {
    return sub_AB3B20() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_7DC93C()
{
  result = qword_E185E8;
  if (!qword_E185E8)
  {
    _s3__C7CGColorCMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E185E8);
  }

  return result;
}

uint64_t sub_7DC998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7DC9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7DCA44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy80_8_1(uint64_t a1, uint64_t a2)
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

uint64_t sub_7DCB04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7DCB4C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_7DCBB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_7DCBF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_7DCC54()
{
  result = qword_E18688;
  if (!qword_E18688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18528);
    sub_7DCF04(&qword_E18690, &qword_E18520, &unk_B2C358, sub_7DCD38);
    sub_36A00(&qword_E186B0, &qword_E18530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18688);
  }

  return result;
}

unint64_t sub_7DCD38()
{
  result = qword_E18698;
  if (!qword_E18698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18510);
    sub_36A00(&qword_E186A0, &qword_E18518);
    sub_36A00(&qword_E186A8, &unk_E1BAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18698);
  }

  return result;
}

unint64_t sub_7DCE20()
{
  result = qword_E186B8;
  if (!qword_E186B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18550);
    sub_7DCF04(&qword_E186C0, &qword_E18548, &unk_B2C380, sub_7DCF88);
    sub_36A00(&qword_E186D8, &qword_E18558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E186B8);
  }

  return result;
}

uint64_t sub_7DCF04(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_7DCF88()
{
  result = qword_E186C8;
  if (!qword_E186C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18538);
    sub_36A00(&qword_E186D0, &qword_E18540);
    sub_36A00(&qword_E186A8, &unk_E1BAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E186C8);
  }

  return result;
}

unint64_t sub_7DD06C(uint64_t a1)
{
  result = sub_7DD094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DD094()
{
  result = qword_E18730;
  if (!qword_E18730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18730);
  }

  return result;
}

unint64_t sub_7DD0E8(uint64_t a1)
{
  result = sub_7DD110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_7DD110()
{
  result = qword_E18788;
  if (!qword_E18788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18788);
  }

  return result;
}

unint64_t sub_7DD224()
{
  result = qword_E187C0;
  if (!qword_E187C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E187C0);
  }

  return result;
}

unint64_t sub_7DD27C()
{
  result = qword_E187D0;
  if (!qword_E187D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18798);
    sub_36A00(&qword_E187D8, &qword_E187E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E187D0);
  }

  return result;
}

uint64_t sub_7DD334()
{
  type metadata accessor for GradientMaskModifier();
  swift_getWitnessTable();
  sub_AB6710();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187A8);
  sub_AB5D50();
  swift_getWitnessTable();
  sub_36A00(&qword_E187C8, &qword_E187A8);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_AB7630();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  sub_7DDBC8(a1, a2, a3);
  sub_AB7630();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_AB7630();
  return v1;
}

uint64_t type metadata accessor for HostedScenePhaseModel()
{
  result = qword_E188B8;
  if (!qword_E188B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model()
{
  type metadata accessor for HostedScenePhaseModel();
  sub_AB7630();
  return v1;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187F0);
  v31 = v11;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_AB7A30();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187F8);
  sub_AB7660();
  v30 = v36;
  v17 = v37;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18800);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18808) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18810);
  sub_AB7640();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel);
  sub_AB3990();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18830) + 28);
  v25 = sub_AB56F0();
  (*(*(v25 - 8) + 16))(v23 + v24, v21 + v22, v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  sub_AB7640();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_7DEA30();
  sub_7DEBCC();
  sub_AB7330();

  return sub_12E1C(v13, &qword_E187F0);
}

uint64_t sub_7DD950(uint64_t a1)
{
  v2 = sub_AB56F0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_AB5F70();
}

void sub_7DDA18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18810);
  sub_AB7640();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_7DEE08(Strong);
}

uint64_t View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_AB7630();
  type metadata accessor for HostedScenePhaseModel();
  swift_allocObject();
  sub_7DDBC8(a1, a2, a3);
  sub_AB7630();
  sub_AB7310();
}

uint64_t sub_7DDBC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = sub_AB56F0();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v11 = sub_AB4BC0();
  __swift_project_value_buffer(v11, static Logger.scenes);
  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = sub_ABADE0();
    v18 = sub_7AB3E0(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  return v4;
}

uint64_t sub_7DDDEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB56F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_7E059C(&qword_E18A18, &type metadata accessor for ScenePhase);
  v14[0] = a1;
  LOBYTE(a1) = sub_AB91C0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_7DE414();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel);
    sub_AB3980();
  }

  return (v10)(v14[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.scenes);
}

uint64_t sub_7DE10C()
{
  v1 = v0;
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, static Logger.scenes);

  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = sub_ABADE0();
    v9 = sub_7AB3E0(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      sub_808B0(v13, v20);
      v14 = [v12 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      [v14 removeObserver:sub_ABB3A0()];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = sub_AB56F0();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = sub_AB39D0();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_7DE3C0()
{
  sub_7DE10C();

  return swift_deallocClassInstance();
}

void sub_7DE414()
{
  v1 = v0;
  v2 = sub_AB56F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, static Logger.scenes);

  v18 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_ABADE0();
    v11 = sub_7AB3E0(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel);
    sub_AB3990();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = sub_AB9350();
    v15 = sub_7AB3E0(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_0, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_7DE710@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel);
  sub_AB3990();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = sub_AB56F0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_7DE808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E059C(&qword_E18820, type metadata accessor for HostedScenePhaseModel);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = sub_AB56F0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_7DE904(uint64_t a1)
{
  v2 = sub_AB56F0();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_7DDDEC(v5);
}

uint64_t sub_7DE9D4()
{

  return swift_deallocObject();
}

unint64_t sub_7DEA30()
{
  result = qword_E18838;
  if (!qword_E18838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187F0);
    sub_7DEAE8();
    sub_36A00(&qword_E18860, &qword_E18830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18838);
  }

  return result;
}

unint64_t sub_7DEAE8()
{
  result = qword_E18840;
  if (!qword_E18840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18808);
    sub_36A00(&qword_E18848, &qword_E18800);
    sub_36A00(&qword_E18850, &qword_E18858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18840);
  }

  return result;
}

unint64_t sub_7DEBCC()
{
  result = qword_E18868;
  if (!qword_E18868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187E8);
    sub_7E059C(&qword_E18870, sub_7DEC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18868);
  }

  return result;
}

unint64_t sub_7DEC80()
{
  result = qword_E18878;
  if (!qword_E18878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E18878);
  }

  return result;
}

uint64_t sub_7DECCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB56F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_7DE414();
  return (*(v5 + 8))(v8, v4);
}

void sub_7DEE08(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_AB56F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      sub_7DEC80();
      v11 = a1;
      v12 = sub_ABA790();

      if (v12)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v13 = sub_AB4BC0();
  __swift_project_value_buffer(v13, static Logger.scenes);

  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = sub_ABADE0();
    v30 = v4;
    v19 = sub_7AB3E0(v17, v18, &v32);
    v29 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v31 = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
    v21 = sub_AB9350();
    v23 = sub_7AB3E0(v21, v22, &v32);
    v4 = v30;

    *(v16 + 14) = v23;
    v8 = v29;
    _os_log_impl(&dword_0, v14, v15, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = [v24 activationState];

    v27 = &enum case for ScenePhase.background(_:);
    v28 = &enum case for ScenePhase.active(_:);
    if (v26)
    {
      v28 = &enum case for ScenePhase.inactive(_:);
    }

    if (v26 != &dword_0 + 2)
    {
      v27 = v28;
    }

    (*(v6 + 104))(v4, *v27, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    (*(v6 + 104))(v8, enum case for ScenePhase.inactive(_:), v5);
  }

  sub_7DDDEC(v8);
  sub_7DF210();
}

uint64_t sub_7DF210()
{
  v1 = v0;
  v2 = sub_AB56F0();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2);
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A00);
  v4 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_E16A30 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, static Logger.scenes);

    v9 = v7;
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = sub_ABADE0();
      v17 = sub_7AB3E0(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = sub_AB92A0();
      v22 = v21;

      v23 = sub_7AB3E0(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_0, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A08);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    sub_8A5768(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      sub_7E039C(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = sub_7E0510;
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_7DFE60;
      ObjectType = &block_descriptor_221;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      sub_12E1C(v54, &qword_E18A00);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        sub_8A5768((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      sub_9ACFC(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    sub_7E02C8(v70);
  }

  else
  {
    if (qword_E16A30 != -1)
    {
      swift_once();
    }

    v72 = sub_AB4BC0();
    __swift_project_value_buffer(v72, static Logger.scenes);

    v73 = sub_AB4BA0();
    v74 = sub_AB9F50();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = sub_ABADE0();
      v80 = sub_7AB3E0(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_0, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    sub_7E02C8(v81);
  }
}

uint64_t sub_7DFBA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_AB56F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_E16A30 != -1)
    {
      swift_once();
    }

    v11 = sub_AB4BC0();
    __swift_project_value_buffer(v11, static Logger.scenes);
    v12 = a3;

    v13 = sub_AB4BA0();
    v14 = sub_AB9F50();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = sub_ABADE0();
      v27 = a4;
      v19 = sub_7AB3E0(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A10);
      v22 = sub_AB9350();
      v24 = sub_7AB3E0(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&dword_0, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    sub_7DDDEC(v9);
  }

  return result;
}

uint64_t sub_7DFE60(uint64_t a1)
{
  v2 = sub_AB2BD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_AB2B90();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_7DFF54()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.scenes);
  __swift_project_value_buffer(v0, static Logger.scenes);
  return static Logger.music(_:)();
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E16A30 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_7E0090()
{
  result = sub_AB56F0();
  if (v1 <= 0x3F)
  {
    result = sub_AB39D0();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_7E0180()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187E8);
  sub_7DEA30();
  sub_7DEBCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7E0210()
{
  sub_AB5D50();
  sub_7E0274();
  return swift_getWitnessTable();
}

unint64_t sub_7E0274()
{
  result = qword_E189F8;
  if (!qword_E189F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E189F8);
  }

  return result;
}

uint64_t sub_7E02C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      sub_808B0(v4, v6);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      [v5 removeObserver:sub_ABB3A0()];

      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_7E039C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E040C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_7E0444()
{
  v1 = sub_AB56F0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_7E0510(uint64_t a1)
{
  v3 = *(sub_AB56F0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_7DFBA4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_221(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7E059C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WindowSceneResolver.windowScene.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28);
  sub_AB77F0();
  return v1;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28);
  sub_AB77F0();
  return sub_7E076C;
}

void sub_7E076C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_AB7800();
  }

  else
  {
    sub_AB7800();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28);
  sub_AB7810();
  return v1;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28);
  sub_AB7810();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18A28);
  sub_AB7800();
}

void sub_7E0BEC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t sub_7E0C4C()
{
  result = qword_E18A38;
  if (!qword_E18A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18A38);
  }

  return result;
}

uint64_t sub_7E0D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7E0E28();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_7E0D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7E0E28();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_7E0DDC()
{
  sub_7E0E28();
  sub_AB65B0();
  __break(1u);
}

__n128 __swift_memcpy24_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_7E0E28()
{
  result = qword_E18A68;
  if (!qword_E18A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18A68);
  }

  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  sub_7E247C(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  return v0;
}

uint64_t sub_7E0F9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v1 + v6, v5, &qword_E18AA8);
  v7 = sub_7E6298(v5, a1);
  sub_12E1C(v5, &qword_E18AA8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
    sub_AB3980();
  }

  else
  {
    sub_15F84(a1, v5, &qword_E18AA8);
    swift_beginAccess();
    sub_7E7844(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_12E1C(a1, &qword_E18AA8);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(v1 + v3, v8);
  v4 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v8, a1);
  sub_7E60DC(v8);
  if (v4)
  {
    sub_7E24B4(a1, v8);
    sub_7E24B4(v1 + v3, v7);
    swift_beginAccess();
    sub_7E61B4(v8, v1 + v3);
    swift_endAccess();
    sub_7E24EC(v7);
    sub_7E60DC(v7);
    sub_7E60DC(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v8[0] = v1;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
    sub_AB3980();
  }

  return sub_7E60DC(a1);
}

uint64_t NoticePresenter.willPresentHandler.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3980();
  sub_17654(a1);
}

uint64_t sub_7E1428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_15F84(v3 + v4, a2, &qword_E18AA8);
}

uint64_t sub_7E1500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_15F84(a1, &v6 - v3, &qword_E18AA8);
  return sub_7E0F9C(v4);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_15F84(v5 + v3, a1, &qword_E18AA8);
}

uint64_t sub_7E1684(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_7E78D0(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  swift_getKeyPath();
  v15 = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v2 + v7, v6, &qword_E18AA8);
  v8 = type metadata accessor for Notice(0);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_12E1C(v6, &qword_E18AA8);
  if (v7 != 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v13[-16] = v2;
    *&v13[-8] = 0;
    v14 = v2;
    sub_AB3980();

    if (a1)
    {
      sub_AB7A90();
    }

    sub_AB5B00();

    swift_getKeyPath();
    v14 = v2;
    sub_AB3990();

    v10 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v11 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v11)
    {
      *(v11 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v14 = v2;
    sub_AB3990();

    if (*(v2 + v10))
    {
      sub_13C80(0, &qword_E1B340);
      v12 = sub_ABA150();

      OS_dispatch_queue.asyncAfter(_:block:)(sub_7E6290, v2);
    }
  }
}

uint64_t sub_7E1A38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for Notice(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_7E0F9C(v2);
}

void sub_7E1B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v2 - 8);
  v4 = v7 - v3;
  swift_getKeyPath();
  v7[1] = a1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(a1 + v5, v4, &qword_E18AA8);
  v6 = type metadata accessor for Notice(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_12E1C(v4, &qword_E18AA8);
  if (v5 == 1)
  {
    sub_7E3280(0);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Notice(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v6);
  _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(v6, a2);
  return sub_721288(v6);
}

void sub_7E1D24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v10[0] = a1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v10[0] = a1;
    sub_AB3990();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_7E24B4(a1 + v5, v10);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = sub_7E6538(v7, v10);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    sub_7E3280(v4);
  }
}

void sub_7E1F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  sub_7E76F0(a2, &v19 - v5);
  v7 = type metadata accessor for Notice(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_7E0F9C(v6);
  swift_getKeyPath();
  v20 = a1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v9 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v9)
  {
    v10 = [v9 rootViewController];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = [v12 view];

        if (!v13)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v13 setNeedsLayout];
        v11 = v13;
      }
    }
  }

  swift_getKeyPath();
  v20 = a1;
  sub_AB3990();

  v14 = *(a1 + v8);
  if (v14)
  {
    v15 = [v14 rootViewController];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v17 = swift_dynamicCastClass();
      if (!v17)
      {
LABEL_12:

        return;
      }

      v18 = [v17 view];

      if (v18)
      {
        [v18 layoutIfNeeded];
        v16 = v18;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_7E217C()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();
}

uint64_t sub_7E2228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
}

uint64_t sub_7E22DC()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3980();
}

uint64_t sub_7E23A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;
  if (!v2)
  {
  }

  sub_AB7CA0();
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a2, double a3, double a4, double a5, double a6)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

void sub_7E24EC(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(v1 + v4, v9);
  v5 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(a1, v9);
  sub_7E60DC(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    sub_AB3990();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          sub_AB3990();

          sub_7E24B4(v2 + v4, v9);
          sub_7E5430(v9);
        }
      }
    }
  }
}

void (*sub_7E26A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  sub_7E24B4(v1 + v5, v4);
  return sub_7E2740;
}

void sub_7E2740(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    sub_7E24B4(*a1, v2 + 56);
    sub_7E24B4(v3 + v4, v2 + 112);
    swift_beginAccess();
    sub_7E61B4(v2 + 56, v3 + v4);
    swift_endAccess();
    sub_7E24EC(v2 + 112);
    sub_7E60DC(v2 + 112);
  }

  else
  {
    sub_7E24B4(v3 + v4, v2 + 56);
    swift_beginAccess();
    sub_7E61B4(v2, v3 + v4);
    swift_endAccess();
    sub_7E24EC(v2 + 56);
  }

  sub_7E60DC(v2 + 56);
  sub_7E60DC(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_7E24B4(v5 + v3, a1);
}

uint64_t sub_7E28F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return sub_7E24B4(v3 + v4, a2);
}

uint64_t sub_7E29B8(uint64_t a1, uint64_t a2)
{
  sub_7E24B4(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(a1 + v3, v5);
  swift_beginAccess();
  sub_7E61B4(v6, a1 + v3);
  swift_endAccess();
  sub_7E24EC(v5);
  sub_7E60DC(v5);
  return sub_7E60DC(v6);
}

void (*NoticePresenter.configuration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7E26A8(v4);
  return sub_7E2BA0;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_307CC(*v1);
  return v2;
}

uint64_t sub_7E2CE0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_7E7BF4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_307CC(v5);
}

uint64_t sub_7E2DEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_7E7B94;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_307CC(v1);
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3980();
  sub_17654(v4);
}

uint64_t sub_7E2F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  sub_307CC(a2);
  return sub_17654(v6);
}

void (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7E2BAC();
  return sub_7E3104;
}

void *sub_7E3110()
{
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id sub_7E31C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void sub_7E3280(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v6 = v5;
      v7 = a1;
      v8 = sub_ABA790();

      if (v8)
      {
        v9 = *(v2 + v4);
        goto LABEL_8;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
    sub_AB3980();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v7 = 0;
LABEL_8:
  *(v2 + v4) = a1;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  v11 = v7;
  sub_AB3990();

  if (v9)
  {
    v12 = *(v2 + v4);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v9 = v9, v14 = sub_ABA790(), v9, v13, (v14 & 1) == 0))
    {
      [v9 resignKeyWindow];
    }
  }

  else
  {
  }
}

void sub_7E34C8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  v6 = a2;
  sub_AB3990();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = sub_ABA790(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_E18AA8);

  sub_7E60DC(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_17654(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  sub_12E1C(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &qword_E18AA8);

  sub_7E60DC(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  sub_17654(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = sub_AB39D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.noticePresenting(_:configurator:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_AB7630();
  sub_AB7310();
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_AB7630();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8);
  sub_AB77F0();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_7E707C((v3 + 6), (v3 + 3));

  sub_15F84((v4 + 7), (v4 + 3), &qword_E18AC0);
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8);
  sub_AB77F0();
  return sub_7E3AC0;
}

void sub_7E3AC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    sub_AB7800();
    sub_7E70D8((v2 + 6));

    sub_12E1C((v2 + 7), &qword_E18AC0);
  }

  else
  {
    sub_AB7800();
    sub_7E70D8((v2 + 6));

    sub_12E1C((v2 + 7), &qword_E18AC0);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8);
  sub_AB7810();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AC8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_AB7A30();
  v10 = v9;
  v12 = v2[6];
  v28[0] = v2[5];
  v11 = v28[0];
  v28[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187F8);
  sub_AB7660();
  v22 = v26;
  v13 = v27;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AD0);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v22;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v26 = v11;
  *(&v26 + 1) = v12;
  sub_AB7640();
  v16 = v28[0];
  v25 = v28[0];
  *&v26 = v12;
  v17 = *v3;
  v18 = v3[3];
  v29 = v3[2];
  v30 = v17;
  v28[0] = v11;
  v19 = swift_allocObject();
  v20 = *(v3 + 1);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 2);
  *(v19 + 64) = v3[6];
  sub_7E707C(&v30, v24);

  sub_15F84(&v29, v24, &qword_E18AC0);
  sub_307CC(v18);
  sub_15F84(v28, v24, &qword_E187E8);
  sub_15F84(&v26, v24, &qword_E18AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E187E8);
  sub_7E719C();
  sub_7DEBCC();
  sub_AB7330();

  return sub_12E1C(v7, &qword_E18AC8);
}

uint64_t sub_7E3EA0(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  sub_307CC(*(a3 + 3));
  v6 = v4;
  v7 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v12 = v7;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_7E24B4(v7 + v8, &v12);

  v5(&v12);
  UIWindowScene.noticePresenter.getter();
  sub_7E24B4(&v12, v11);
  NoticePresenter.configuration.setter(v11);
  sub_17654(v5);

  sub_7E60DC(&v12);
LABEL_5:
  v9 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v12 = *a3;
  v13 = *(a3 + 2);
  v11[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AB8);
  return sub_AB7800();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    sub_12E1C(v5, &qword_E18AF0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AF8);
  type metadata accessor for NoticePresenter();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter();
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
    sub_AB3990();

    v5[0] = v0;
    swift_getKeyPath();
    sub_AB39B0();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_7E24B4(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    sub_7E24B4(v0 + v2, v4);
    swift_beginAccess();
    sub_7E61B4(v5, v0 + v2);
    swift_endAccess();
    sub_7E24EC(v4);
    sub_7E60DC(v4);
    sub_7E60DC(v5);
    v5[0] = v0;
    swift_getKeyPath();
    sub_AB39A0();

    return v0;
  }

  return v4[0];
}

__n128 sub_7E42A0@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18D98);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_AB6440();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DA0);
  sub_7E43FC(v1, &v5[*(v6 + 44)]);
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v5, a1, &qword_E18D98);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DA8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_7E43FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DB0);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v4 = &KeyPath - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v5 - 8);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DB8);
  __chkstk_darwin(v12 - 8);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v87 = &KeyPath - v16;
  v88 = a1[4];
  sub_AB7A30();
  sub_AB5970();
  v92 = v100;
  v91 = v102;
  v90 = v104;
  v89 = v105;
  v114 = 1;
  v113 = v101;
  v112 = v103;
  v17 = a1[1];
  v86 = *a1;
  v106 = v86;
  v107 = v17;
  v85 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC0);
  sub_AB7640();
  v18 = v99;
  swift_getKeyPath();
  v106 = v18;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v18 + v19, v7, &qword_E18AA8);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &qword_E18AA8);
    v20 = 1;
    v21 = v87;
    v22 = v93;
  }

  else
  {
    v84 = v11;
    sub_7E768C(v7, v11);
    sub_7E76F0(v11, v4);
    v23 = type metadata accessor for NoticeView(0);
    v24 = &v4[v23[5]];
    *v24 = swift_getKeyPath();
    *(v24 + 1) = 0;
    *(v24 + 8) = 0;
    v25 = &v4[v23[6]];
    v111 = 0x3FF0000000000000;
    sub_AB7630();
    v26 = v107;
    *v25 = v106;
    *(v25 + 1) = v26;
    v27 = &v4[v23[7]];
    LOBYTE(v111) = 0;
    sub_AB5890();
    v28 = v107;
    v29 = v108;
    *v27 = v106;
    *(v27 + 1) = v28;
    *(v27 + 1) = v29;
    v30 = &v4[v23[8]];
    LOBYTE(v111) = 0;
    sub_AB7630();
    v31 = v107;
    *v30 = v106;
    *(v30 + 1) = v31;
    LOBYTE(v30) = sub_AB6AD0();
    sub_AB5690();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DD0) + 36)];
    *v40 = v30;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    LOBYTE(v30) = sub_AB6AF0();
    sub_AB5690();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DD8) + 36)];
    *v49 = v30;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v30) = sub_AB6B00();
    sub_AB5690();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DE0) + 36)];
    *v58 = v30;
    *(v58 + 1) = v51;
    *(v58 + 2) = v53;
    *(v58 + 3) = v55;
    *(v58 + 4) = v57;
    v58[40] = 0;
    sub_AB59B0();
    sub_AB7A50();
    sub_AB59D0();

    sub_AB7BB0();
    sub_AB59A0();
    sub_AB7A50();
    sub_AB59D0();

    sub_AB7BB0();
    sub_AB59A0();
    sub_AB7A50();
    sub_AB59D0();

    sub_AB5990();

    v59 = sub_AB59C0();

    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DE8) + 36)] = v59;
    KeyPath = swift_getKeyPath();
    v111 = v85;
    sub_AB9940();

    sub_15F84(&v111, &v106, &qword_E18DF0);
    v60 = sub_AB9930();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);

    sub_15F84(&v111, &v106, &qword_E18DF0);
    v63 = sub_AB9930();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = &protocol witness table for MainActor;
    v65 = *(a1 + 1);
    *(v64 + 32) = *a1;
    *(v64 + 48) = v65;
    *(v64 + 64) = *(a1 + 2);
    sub_AB7820();
    sub_721288(v84);
    v66 = v106;
    v67 = v107;
    v68 = v108;
    v69 = v93;
    v70 = &v4[*(v93 + 36)];
    *v70 = KeyPath;
    *(v70 + 1) = v66;
    *(v70 + 2) = v67;
    v70[24] = v68;
    v21 = v87;
    sub_36B0C(v4, v87, &qword_E18DB0);
    v20 = 0;
    v22 = v69;
  }

  (*(v94 + 56))(v21, v20, 1, v22);
  sub_AB7A30();
  sub_AB5970();
  v94 = v106;
  v93 = v108;
  v88 = v109;
  v87 = v110;
  v98 = 1;
  v97 = v107;
  v96 = BYTE8(v108);
  v71 = v114;
  v72 = v113;
  v73 = v112;
  sub_15F84(v21, v14, &qword_E18DB8);
  v74 = v98;
  v75 = v97;
  v76 = v96;
  v77 = v95;
  *v95 = 0;
  *(v77 + 8) = v71;
  v77[2] = v92;
  *(v77 + 24) = v72;
  v77[4] = v91;
  *(v77 + 40) = v73;
  v78 = v89;
  v77[6] = v90;
  v77[7] = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC8);
  sub_15F84(v14, v77 + *(v79 + 48), &qword_E18DB8);
  v80 = v77 + *(v79 + 64);
  *v80 = 0;
  v80[8] = v74;
  *(v80 + 2) = v94;
  v80[24] = v75;
  *(v80 + 4) = v93;
  v80[40] = v76;
  v81 = v87;
  *(v80 + 6) = v88;
  *(v80 + 7) = v81;
  sub_12E1C(v21, &qword_E18DB8);
  return sub_12E1C(v14, &qword_E18DB8);
}

uint64_t sub_7E4E78@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC0);
  sub_AB7640();
  v7 = v12;
  swift_getKeyPath();
  *&v11 = v7;
  sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
  sub_AB3990();

  v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_15F84(v7 + v8, v6, &qword_E18AA8);

  v9 = type metadata accessor for Notice(0);
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  result = sub_12E1C(v6, &qword_E18AA8);
  *a2 = v8;
  return result;
}

_BYTE *sub_7E5038(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DC0);
    sub_AB7640();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id sub_7E512C(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id sub_7E5430(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  sub_7E61B4(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return sub_7E60DC(a1);
  }

  sub_AB6B10();
  v5 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(*(v4 + 16));
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_AB6500();
  v13[2] = v5;
  *(v13 + 3) = v7;
  *(v13 + 4) = v9;
  *(v13 + 5) = v11;
  v12(&v17, 0);
  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v16 = result;
      [result layoutIfNeeded];

      return sub_7E60DC(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_7E56B8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  sub_AB6B10();
  v7 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v6[2]);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_AB6500();
  v15[2] = v7;
  *(v15 + 3) = v9;
  *(v15 + 4) = v11;
  *(v15 + 5) = v13;
  v14(v22, 0);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v17 = v16;
  v18 = [v2 view];
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v18;
  [v17 addSubview:v18];

  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    [v20 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_7E58CC()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  sub_ABA4B0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_7E77F8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2D4D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1822E0;
  aBlock[3] = &block_descriptor_222;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  sub_AB64B0();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  sub_ABA470();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_7E5CA4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_7E5DE0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_13C80(0, &qword_E18878);
      v7 = sub_ABA790();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = sub_AB6B20();
  if (v8 != sub_AB6B20() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter()
{
  result = qword_E18B28;
  if (!qword_E18B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7E6260(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_7E3280(v1);
}

uint64_t sub_7E6298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18DF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_15F84(a1, &v20 - v12, &qword_E18AA8);
  sub_15F84(a2, &v13[v15], &qword_E18AA8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_15F84(v13, v10, &qword_E18AA8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_7E768C(&v13[v15], v7);
      v18 = static Notice.== infix(_:_:)(v10, v7);
      sub_721288(v7);
      sub_721288(v10);
      sub_12E1C(v13, &qword_E18AA8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_721288(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_12E1C(v13, &qword_E18DF8);
    v17 = 1;
    return v17 & 1;
  }

  sub_12E1C(v13, &qword_E18AA8);
  v17 = 0;
  return v17 & 1;
}

char *sub_7E6538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_AB6A20();
  __chkstk_darwin(v6 - 8);
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v7 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  sub_7E24B4(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  sub_AB6B10();
  v8 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v7[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter();
  sub_AB7630();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E00));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = sub_AB64F0();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  sub_AB6A00();
  sub_AB64C0();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  sub_7E60DC(a2);
  return v22;
}

_BYTE *_s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(uint64_t a1, char a2)
{
  v3 = v2;
  v50 = a1;
  v48 = sub_AB7C80();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v44 - v9;
  v11 = sub_AB7C10();
  __chkstk_darwin(v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Notice(0);
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v49);
  if ((a2 & 1) == 0 || (result = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor(), *result == 1))
  {
    v44[1] = v11;
    v44[2] = v13;
    v45 = v7;
    v46 = v10;
    v47 = v5;
    swift_getKeyPath();
    aBlock = v3;
    sub_7E7B4C(&qword_E18AA0, type metadata accessor for NoticePresenter);
    sub_AB3990();

    v17 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
    swift_beginAccess();
    v18 = *v17;
    v19 = &off_E18000;
    if (*v17)
    {
      v44[0] = v14;
      swift_getKeyPath();
      aBlock = v3;

      sub_AB3990();

      aBlock = v3;
      swift_getKeyPath();
      sub_AB39B0();

      v20 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      sub_7E24B4(v3 + v20, &aBlock);
      v18(&aBlock);
      sub_17654(v18);
      sub_7E24B4(v3 + v20, v52);
      swift_beginAccess();
      v21 = v3 + v20;
      v19 = &off_E18000;
      sub_7E61B4(&aBlock, v21);
      swift_endAccess();
      sub_7E24EC(v52);
      sub_7E60DC(v52);
      sub_7E60DC(&aBlock);
      aBlock = v3;
      v14 = v44[0];
      swift_getKeyPath();
      sub_AB39A0();
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_AB3990();

    v22 = v19[336];
    swift_beginAccess();
    sub_7E24B4(v22 + v3, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_7E60DC(&aBlock);
    if (Strong)
    {
      sub_7E1D24(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_AB3990();

    v24 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v25 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v25)
    {
      *(v25 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    sub_AB3990();

    v26 = *(v3 + v24);
    if (v26)
    {
      [v26 makeKeyAndVisible];
    }

    v27 = objc_opt_self();
    sub_7E76F0(v50, v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    sub_7E768C(v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_7E7AE0;
    *(v30 + 24) = v29;
    v57 = sub_36C08;
    v58 = v30;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1822E0;
    v56 = &block_descriptor_90_2;
    v31 = _Block_copy(&aBlock);

    [v27 performWithoutAnimation:v31];
    _Block_release(v31);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v32 = v49;
      v33 = (v50 + *(v49 + 36));
      if ((v33[1] & 1) == 0)
      {
        v34 = *v33;
        v35 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v35 notificationOccurred:v34];
      }

      if (*(v50 + *(v32 + 40)) == 1)
      {
        v57 = sub_7E7B44;
        v58 = v3;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_1B5EB4;
        v56 = &block_descriptor_93_1;
        _Block_copy(&aBlock);
        v51 = _swiftEmptyArrayStorage;
        sub_7E7B4C(&qword_E17588, &type metadata accessor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17590);
        sub_36A00(&qword_E17598, &qword_E17590);
        sub_ABABB0();
        sub_AB7CB0();
        swift_allocObject();
        v36 = sub_AB7C90();

        sub_13C80(0, &qword_E1B340);
        v37 = sub_ABA150();
        v38 = v45;
        sub_AB7C70();
        v39 = v46;
        sub_AB7CE0();
        v40 = *(v47 + 8);
        v41 = v38;
        v42 = v48;
        v40(v41, v48);
        sub_ABA120();

        v40(v39, v42);
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v44[-2] = v3;
        v44[-1] = v36;
        aBlock = v3;
        sub_AB3980();
      }
    }
  }

  return result;
}

uint64_t sub_7E712C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_7E719C()
{
  result = qword_E18AE0;
  if (!qword_E18AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18AC8);
    sub_36A00(&qword_E18AE8, &qword_E18AD0);
    sub_36A00(&qword_E18850, &qword_E18858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18AE0);
  }

  return result;
}

void sub_7E72A4()
{
  sub_7E7390();
  if (v0 <= 0x3F)
  {
    sub_AB39D0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_7E7390()
{
  if (!qword_E18B38)
  {
    type metadata accessor for Notice(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E18B38);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI15NoticePresenterC13ConfigurationVIegl_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_7E742C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7E7470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_7E7518()
{
  sub_AB5D50();
  sub_7E757C();
  return swift_getWitnessTable();
}

unint64_t sub_7E757C()
{
  result = qword_E18D90;
  if (!qword_E18D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18D90);
  }

  return result;
}

uint64_t sub_7E75D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18AC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E187E8);
  sub_7E719C();
  sub_7DEBCC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7E768C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E76F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_68Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_7E77C0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7E7844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E78D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18AA8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_7E7940()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_AB8A60();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void sub_7E7AE0()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_7E1F00(v2, v3);
}

uint64_t sub_7E7B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7E7BBC()
{

  return swift_deallocObject();
}

unint64_t sub_7E7C20()
{
  result = qword_E18E08;
  if (!qword_E18E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E18DA8);
    sub_36A00(&qword_E18E10, &qword_E18D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18E08);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  sub_AB7630();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  sub_AB5890();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  sub_AB7630();
  *v8 = v10;
  *(v8 + 8) = v11;
  return sub_7ECB1C(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  sub_7E80AC();
  sub_AB6250();
  return v1;
}

double sub_7E7EA4@<D0>(uint64_t a1@<X8>)
{
  sub_7E80AC();
  sub_AB6250();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_7E7EFC@<D0>(uint64_t a1@<X8>)
{
  sub_7E80AC();
  sub_AB6250();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_7E7F54(uint64_t *a1)
{
  sub_7E8378(*a1, a1[1]);
  sub_7E80AC();
  return sub_AB6260();
}

unint64_t sub_7E80AC()
{
  result = qword_E18E18;
  if (!qword_E18E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E18E18);
  }

  return result;
}

uint64_t sub_7E813C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = sub_AB6240();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    sub_7E8378(*v5, v7);
  }

  else
  {

    sub_AB9F40();
    v9 = sub_AB6A40();
    sub_AB4A90();

    sub_AB6230();
    swift_getAtKeyPath();
    sub_7E8328(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_7E8328(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_7E8334(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_7E8334(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_7E8378(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v117 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E20);
  __chkstk_darwin(v116);
  v115 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v111 - v5;
  v142 = sub_AB5C70();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v111 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E28);
  __chkstk_darwin(v113);
  v112 = &v111 - v9;
  v137 = sub_AB5730();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for NoticeView(0);
  v124 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v11;
  v148 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_AB6640();
  __chkstk_darwin(v122);
  v121 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E30);
  __chkstk_darwin(v138);
  v134 = &v111 - v13;
  v14 = type metadata accessor for NoticeView.Content(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E38);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v111 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E40);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v111 - v24;
  *&v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E48);
  __chkstk_darwin(v119);
  v27 = &v111 - v26;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E50);
  __chkstk_darwin(v120);
  v29 = &v111 - v28;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E58);
  __chkstk_darwin(v146);
  v145 = &v111 - v30;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E60);
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = &v111 - v31;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E68);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v111 - v32;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E70);
  __chkstk_darwin(v123);
  v130 = &v111 - v33;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E78);
  __chkstk_darwin(v127);
  v133 = &v111 - v34;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E80);
  __chkstk_darwin(v144);
  v143 = &v111 - v35;
  v36 = v2;
  sub_7ECB84(v2, v17, type metadata accessor for Notice);
  *&v17[*(v15 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A190);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v15 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16D50);
  swift_storeEnumTagMultiPayload();
  *&v157 = 0x4041000000000000;
  sub_7ECA74();
  sub_AB58F0();
  *&v157 = 0x4010000000000000;
  sub_7ECAC8();
  sub_AB58F0();
  sub_AB7A30();
  sub_AB5E90();
  sub_7ECB1C(v17, v21, type metadata accessor for NoticeView.Content);
  v37 = &v21[*(v19 + 44)];
  v38 = v162;
  *(v37 + 4) = v161;
  *(v37 + 5) = v38;
  *(v37 + 6) = v163;
  v39 = v158;
  *v37 = v157;
  *(v37 + 1) = v39;
  v40 = v160;
  *(v37 + 2) = v159;
  *(v37 + 3) = v40;
  v41 = &v25[*(v23 + 44)];
  sub_AB79E0();
  LOBYTE(v23) = sub_AB6AA0();
  v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E98) + 36)] = v23;
  sub_36B0C(v21, v25, &qword_E18E38);
  if (qword_E16A08 != -1)
  {
    swift_once();
  }

  v42 = static Corner.extraLarge;
  v43 = unk_E73A40;
  v44 = byte_E73A48;
  sub_36B0C(v25, v27, &qword_E18E40);
  v45 = &v27[*(v119 + 36)];
  *v45 = v42;
  *(v45 + 1) = v43;
  v45[16] = v44;
  v46 = v2 + *(v149 + 28);
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = *(v46 + 24);
  LOBYTE(v153) = *v46;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18EA0);
  sub_AB58A0();
  if (v150)
  {
    v51 = 0.4;
  }

  else
  {
    v51 = 1.0;
  }

  sub_36B0C(v27, v29, &qword_E18E48);
  *&v29[*(v120 + 36)] = v51;
  v52 = sub_AB7A70();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_AB58A0();
  v53 = v150;
  v54 = v29;
  v55 = v145;
  sub_36B0C(v54, v145, &qword_E18E50);
  v56 = v55 + *(v146 + 36);
  *v56 = v52;
  *(v56 + 8) = v53;
  sub_AB67A0();
  v57 = v134;
  sub_AB57C0();
  LOBYTE(v153) = v47;
  v154 = v48;
  v155 = v49;
  v156 = v50;
  sub_AB58B0();
  LODWORD(v121) = v150;
  v120 = v151;
  v119 = v152;
  v118 = v36;
  v58 = v148;
  v122 = type metadata accessor for NoticeView;
  sub_7ECB84(v36, v148, type metadata accessor for NoticeView);
  v59 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v60 = swift_allocObject();
  v124 = type metadata accessor for NoticeView;
  sub_7ECB1C(v58, v60 + v59, type metadata accessor for NoticeView);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18EA8);
  v62 = v57 + *(v61 + 44);
  *v62 = v121;
  *(v62 + 8) = v120;
  *(v62 + 16) = v119;
  v63 = (v57 + *(v61 + 48));
  *v63 = sub_7ECBF0;
  v63[1] = v60;
  v64 = v135;
  sub_AB5720();
  sub_7ECB84(v36, v58, type metadata accessor for NoticeView);
  v65 = swift_allocObject();
  sub_7ECB1C(v58, v65 + v59, type metadata accessor for NoticeView);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_7ECE74;
  *(v66 + 24) = v65;
  v67 = v138;
  v68 = v137;
  sub_AB78E0();

  (*(v136 + 8))(v64, v68);
  sub_AB57E0();
  v69 = sub_7ECEC4();
  v70 = sub_36A00(&qword_E18EF8, &qword_E18E30);
  v71 = v125;
  v72 = v146;
  v73 = v145;
  sub_AB72D0();
  sub_12E1C(v57, &qword_E18E30);
  sub_12E1C(v73, &qword_E18E58);
  v74 = v118;
  v75 = v148;
  sub_7ECB84(v118, v148, v122);
  v76 = swift_allocObject();
  sub_7ECB1C(v75, v76 + v59, v124);
  type metadata accessor for Notice(0);
  v153 = v72;
  v154 = v67;
  v155 = v69;
  v156 = v70;
  swift_getOpaqueTypeConformance2();
  sub_7ED288(&qword_E18F00, type metadata accessor for Notice);
  v77 = v126;
  v78 = v131;
  sub_AB7330();

  (*(v128 + 8))(v71, v78);
  v79 = v130;
  v80 = &v130[*(v123 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F08);
  sub_AB5ED0();
  *v80 = swift_getKeyPath();
  (*(v129 + 32))(v79, v77, v132);
  v81 = (v74 + *(v149 + 24));
  v82 = *v81;
  v83 = v81[1];
  v153 = v82;
  v154 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F10);
  sub_AB7640();
  v84 = v150;
  sub_AB7BB0();
  v86 = v85;
  v88 = v87;
  v89 = v79;
  v90 = v133;
  sub_36B0C(v89, v133, &qword_E18E70);
  v91 = (v90 + *(v127 + 36));
  *v91 = v84;
  v91[1] = v84;
  v91[2] = v86;
  v91[3] = v88;
  sub_AB7A50();
  v92 = sub_AB7A60();

  v93 = v143;
  v94 = &v143[*(v144 + 36)];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18F18);
  sub_7ECB84(v74, v94 + *(v95 + 36), type metadata accessor for Notice);
  *v94 = v92;
  sub_36B0C(v90, v93, &qword_E18E78);
  v96 = v141;
  v97 = *(v141 + 104);
  v98 = v139;
  v99 = v142;
  v97(v139, enum case for DynamicTypeSize.xSmall(_:), v142);
  v100 = v140;
  v97(v140, enum case for DynamicTypeSize.accessibility2(_:), v99);
  sub_7ED288(&qword_E17A98, &type metadata accessor for DynamicTypeSize);
  result = sub_AB9170();
  if (result)
  {
    v102 = v98;
    v103 = *(v96 + 32);
    v104 = v114;
    v103(v114, v102, v99);
    v105 = v116;
    v103((v104 + *(v116 + 48)), v100, v99);
    v106 = v115;
    sub_15F84(v104, v115, &qword_E18E20);
    v107 = *(v105 + 48);
    v108 = v112;
    v103(v112, v106, v99);
    v109 = *(v96 + 8);
    v109(v106 + v107, v99);
    sub_36B0C(v104, v106, &qword_E18E20);
    v103((v108 + *(v113 + 36)), (v106 + *(v105 + 48)), v99);
    v109(v106, v99);
    sub_7ED404();
    sub_36A00(&qword_E18F48, &qword_E18E28);
    v110 = v143;
    sub_AB70A0();
    sub_12E1C(v108, &qword_E18E28);
    return sub_12E1C(v110, &qword_E18E80);
  }

  else
  {
    __break(1u);
  }

  return result;
}