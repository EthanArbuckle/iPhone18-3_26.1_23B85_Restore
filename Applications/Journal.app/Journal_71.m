uint64_t sub_1007AE118()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1007AE1C4(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) = a2;
}

uint64_t sub_1007AE208()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
}

uint64_t sub_1007AE2B0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType) = result;
  return result;
}

uint64_t sub_1007AE3D8()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsKey();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE36E8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v53 - v9;
  v11 = sub_1000F24EC(&qword_100AE2AA0);
  __chkstk_darwin(v11 - 8);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  swift_getKeyPath();
  v60 = v0;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  (*(v5 + 104))(v15, enum case for EntryDateSource.moment(_:), v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v17 = *(v8 + 56);
  sub_1000082B4(v1 + v16, v10, &qword_100AE2AA0);
  sub_1000082B4(v15, &v10[v17], &qword_100AE2AA0);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    v19 = v58;
    sub_1000082B4(v10, v58, &qword_100AE2AA0);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      v20 = v54;
      (*(v5 + 32))(v54, &v10[v17], v4);
      sub_1000342E0(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v20, v4);
      sub_100004F84(v15, &qword_100AE2AA0);
      v22(v19, v4);
      sub_100004F84(v10, &qword_100AE2AA0);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_100004F84(v15, &qword_100AE2AA0);
    (*(v5 + 8))(v19, v4);
LABEL_6:
    sub_100004F84(v10, &qword_100AE36E8);
    return 0;
  }

  sub_100004F84(v15, &qword_100AE2AA0);
  if (v18(&v10[v17], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100004F84(v10, &qword_100AE2AA0);
LABEL_8:
  sub_1000065A8(0, &qword_100AE1A30);
  v23 = static NSUserDefaults.shared.getter();
  v25 = v55;
  v24 = v56;
  v26 = v57;
  (*(v56 + 104))(v55, enum case for SettingsKey.alwaysUseMomentDate(_:), v57);
  SettingsKey.rawValue.getter();
  (*(v24 + 8))(v25, v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = [v23 BOOLForKey:v27];

  if ((v28 & 1) == 0)
  {
    v29 = *(sub_1007B376C() + 2);

    if (v29 <= 2)
    {
      v30 = sub_1007B376C();
      v31 = sub_100891094(v30);

      v59[2] = v31;
      v32 = *(v1 + 16);
      v33 = OBJC_IVAR____TtC7Journal14EntryViewModel_id;
      v34 = *(v32 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
      v35 = [v34 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      LOBYTE(v34) = sub_100286DEC(v59, v36, v38);

      if (v34)
      {
        v39 = *(v32 + v33);
        v40 = [v39 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_1007B376C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_10009BCC8(0, *(v44 + 2) + 1, 1, v44);
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          v44 = sub_10009BCC8((v45 > 1), v46 + 1, 1, v44);
        }

        *(v44 + 2) = v46 + 1;
        v47 = &v44[16 * v46];
        *(v47 + 4) = v41;
        *(v47 + 5) = v43;
        v48 = [objc_opt_self() standardUserDefaults];
        isa = Array._bridgeToObjectiveC()().super.isa;

        v50 = String._bridgeToObjectiveC()();
        [v48 setObject:isa forKey:v50];

        v51 = *(sub_1007B376C() + 2);

        if (v51 == 3)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1007AEB5C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = v12 - v8;
  sub_1007ADC94(v12 - v8);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_100004F84(v9, &unk_100AD4790);
  swift_getKeyPath();
  v13 = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1007AF14C()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_1007AF1E8, v3, v2);
}

uint64_t sub_1007AF1E8()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) + 16))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
    v5 = static MainActor.shared.getter();
    v0[8] = v5;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_1007AF3A0;
    v7 = v0[3];

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v6, v4, &type metadata for () + 8, v5, &protocol witness table for MainActor, &unk_100968390, v7, v4);
  }
}

uint64_t sub_1007AF3A0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10063D208, v3, v2);
}

uint64_t sub_1007AF4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v4 = type metadata accessor for Calendar();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = sub_1000F24EC(&unk_100AEE0A0);
  v3[41] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AD5B20);
  v3[42] = v6;
  v3[43] = *(v6 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = sub_1000F24EC(&unk_100AD4790);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[58] = v7;
  v3[59] = *(v7 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[68] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[69] = v9;
  v3[70] = v8;

  return _swift_task_switch(sub_1007AF8A8, v9, v8);
}

void sub_1007AF8A8()
{
  v234 = v0;
  *(v0 + 192) = _swiftEmptySetSingleton;
  v214 = (v0 + 192);
  v1 = *(*(*(v0 + 232) + 16) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v1 >> 62)
  {
    v150 = *(*(v0 + 232) + 16);
    v151 = _CocoaArrayWrapper.endIndex.getter();
    v152 = v150;
    v2 = v151;
    v205 = v152;
    if (v151)
    {
      goto LABEL_3;
    }

LABEL_91:
    v226 = _swiftEmptyArrayStorage;
    v213 = 3;
    v149 = _swiftEmptySetSingleton;
LABEL_92:
    *(v0 + 568) = v149;
    v153 = *(v0 + 464);
    v154 = *(v0 + 472);
    v155 = *(v0 + 456);
    sub_1006040D4(v149, v155);
    v156 = *(v154 + 48);
    if (v156(v155, 1, v153) == 1)
    {
      sub_100004F84(*(v0 + 456), &unk_100AD4790);
    }

    else
    {
      v229 = v149;
      v232 = v156;
      v157 = *(v0 + 464);
      v158 = *(v0 + 400);
      v224 = *(*(v0 + 472) + 32);
      v224(*(v0 + 528), *(v0 + 456), v157);
      static Calendar.current.getter();
      swift_allocObject();
      swift_weakInit();
      NSManagedObjectContext.performAndWait<A>(_:)();

      v159 = v156(v158, 1, v157);
      v160 = *(v0 + 496);
      if (v159 == 1)
      {
        v161 = v156;
        v162 = *(v0 + 464);
        v163 = *(v0 + 472);
        v164 = *(v0 + 400);
        v165 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
        swift_beginAccess();
        (*(v163 + 16))(v160, v205 + v165, v162);
        if (v161(v164, 1, v162) != 1)
        {
          sub_100004F84(*(v0 + 400), &unk_100AD4790);
        }
      }

      else
      {
        v224(v160, *(v0 + 400), *(v0 + 464));
      }

      v166 = *(v0 + 528);
      v167 = *(v0 + 496);
      v169 = *(v0 + 464);
      v168 = *(v0 + 472);
      v170 = *(v0 + 264);
      v171 = *(v0 + 240);
      v172 = *(v0 + 248);
      v225 = Calendar.isDate(_:inSameDayAs:)();
      v173 = *(v168 + 8);
      v173(v167, v169);
      (*(v172 + 8))(v170, v171);
      v173(v166, v169);
      v149 = v229;
      v156 = v232;
      if (v225)
      {
        goto LABEL_110;
      }
    }

    v174 = *(v0 + 464);
    v175 = *(v0 + 392);
    sub_1007ADC94(v175);
    if (v156(v175, 1, v174) == 1)
    {
      v176 = (v0 + 392);
LABEL_103:
      sub_100004F84(*v176, &unk_100AD4790);
      goto LABEL_104;
    }

    v177 = *(v0 + 464);
    v178 = *(v0 + 384);
    v179 = *(*(v0 + 472) + 32);
    v179(*(v0 + 488), *(v0 + 392), v177);
    sub_1006040D4(v149, v178);
    if (v156(v178, 1, v177) == 1)
    {
      v176 = (v0 + 384);
      (*(*(v0 + 472) + 8))(*(v0 + 488), *(v0 + 464));
      goto LABEL_103;
    }

    v192 = *(v0 + 472);
    v191 = *(v0 + 480);
    v193 = *(v0 + 464);
    v195 = *(v0 + 248);
    v194 = *(v0 + 256);
    v196 = *(v0 + 240);
    v197 = *(v0 + 488);
    v179(v191, *(v0 + 384), v193);
    static Calendar.current.getter();
    v198 = Calendar.isDate(_:inSameDayAs:)();
    (*(v195 + 8))(v194, v196);
    v199 = *(v192 + 8);
    v199(v191, v193);
    v199(v197, v193);
    if ((v198 & 1) == 0)
    {
LABEL_104:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v180 = v226;
      }

      else
      {
        v180 = sub_100692AC0(v226);
      }

      *(v0 + 576) = v180;
      v181 = *(v180 + 16);
      v182 = *(*(v0 + 296) + 80);
      v233[0] = v180 + ((v182 + 32) & ~v182);
      v233[1] = v181;
      v183 = v180;
      sub_1007B2758(v233);
      v184 = *(v0 + 232);
      swift_getKeyPath();
      v185 = swift_task_alloc();
      *(v185 + 16) = v184;
      *(v185 + 24) = v183;
      *(v0 + 584) = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel___observationRegistrar;
      *(v0 + 200) = v184;
      *(v0 + 592) = sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v186 = *(v184 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType);
      if (v186 == 3)
      {
        v187 = v213;
        if (v213 != 3)
        {
LABEL_108:
          v188 = *(v0 + 232);
          v189 = v187;
          swift_getKeyPath();
          v190 = swift_task_alloc();
          *(v190 + 16) = v188;
          *(v190 + 24) = v189;
          *(v0 + 208) = v188;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_116:
          v202 = *(v0 + 544);
          v203 = **(v0 + 224);

          v204 = swift_task_alloc();
          *(v0 + 600) = v204;
          *v204 = v0;
          v204[1] = sub_1007B131C;

          sub_1007AC8C8(v202, &protocol witness table for MainActor, v203);
          return;
        }
      }

      else
      {
        v201 = v186 == v213;
        v187 = v213;
        if (!v201)
        {
          goto LABEL_108;
        }
      }

      *(v184 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaType) = v187;
      goto LABEL_116;
    }

LABEL_110:

    v200 = *(v0 + 8);

    v200();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v205 = *(*(v0 + 232) + 16);
  if (!v2)
  {
    goto LABEL_91;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = *(v0 + 472);
    v207 = *(v0 + 328);
    v219 = v1 & 0xC000000000000001;
    v206 = (*(v0 + 344) + 56);
    v4 = (v3 + 48);
    v209 = *(v0 + 296);
    v208 = *(v0 + 288);
    v215 = (v3 + 32);
    v222 = (v3 + 16);
    v223 = (v3 + 56);
    v221 = (v3 + 8);

    v5 = 0;
    v226 = _swiftEmptyArrayStorage;
    v213 = 3;
    v212 = v1;
    v220 = v2;
    v227 = v4;
    v211 = v0;
    while (1)
    {
      v228 = v5;
      if (v219)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v1 + 8 * v5 + 32);
      }

      v10 = v9;
      type metadata accessor for PhotoAsset();
      v11 = swift_dynamicCastClass();
      v230 = v10;
      if (!v11)
      {
        goto LABEL_28;
      }

      v12 = v11;
      v13 = OBJC_IVAR____TtC7Journal10PhotoAsset_metadata;
      if (*(v11 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
      {
        v14 = v10;
      }

      else
      {
        v15 = *(v11 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v15)
        {
          v16 = v10;
          v17 = [v15 assetMetaData];
          if (v17)
          {
            v18 = *(v0 + 328);
            v216 = *(v0 + 336);
            v19 = v17;
            v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v22 = v21;

            *v18 = v20;
            v4 = v227;
            *(v207 + 8) = v22;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0);
            v23 = swift_allocObject();
            (*v206)(v23 + *(*v23 + 104), 1, 1, v216);
            *(v23 + *(*v23 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v18, v23 + *(*v23 + 120), &unk_100AEE0A0);
            *(v12 + v13) = v23;
          }

          if (!*(v12 + v13))
          {
LABEL_22:
            v35 = *(v0 + 368);
            v36 = type metadata accessor for PhotoLibraryAssetMetadata();
            (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
LABEL_23:
            v37 = *(v0 + 464);
            v38 = *(v0 + 440);
            sub_100004F84(*(v0 + 368), &qword_100AD5B20);
            (*v223)(v38, 1, 1, v37);
LABEL_24:
            v39 = *(v0 + 464);
            v41 = *(v0 + 440);
            v40 = *(v0 + 448);
            v42 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
            swift_beginAccess();
            sub_1000082B4(v12 + v42, v40, &unk_100AD4790);
            v10 = v230;

            v30 = *v4;
            if ((*v4)(v41, 1, v39) != 1)
            {
              sub_100004F84(*(v0 + 440), &unk_100AD4790);
            }

            goto LABEL_26;
          }
        }

        else
        {
          v34 = v10;
          if (!*(v12 + v13))
          {
            goto LABEL_22;
          }
        }
      }

      v24 = *(v0 + 368);

      sub_100046ADC(v24);

      v25 = type metadata accessor for PhotoLibraryAssetMetadata();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v24, 1, v25) == 1)
      {
        goto LABEL_23;
      }

      v27 = *(v0 + 464);
      v28 = *(v0 + 440);
      v29 = *(v0 + 368);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v26 + 8))(v29, v25);
      v30 = *v4;
      if ((*v4)(v28, 1, v27) == 1)
      {
        goto LABEL_24;
      }

      v31 = *(v0 + 464);
      v33 = *(v0 + 440);
      v32 = *(v0 + 448);
      v10 = v230;

      (*v215)(v32, v33, v31);
      (*v223)(v32, 0, 1, v31);
LABEL_26:
      v43 = *(v0 + 464);
      v44 = *(v0 + 448);
      v45 = 1;
      if (v30(v44, 1, v43) != 1)
      {
        goto LABEL_48;
      }

      sub_100004F84(v44, &unk_100AD4790);
      v4 = v227;
LABEL_28:
      type metadata accessor for LivePhotoAsset();
      v46 = swift_dynamicCastClass();
      if (!v46)
      {
        goto LABEL_45;
      }

      v47 = v46;
      v48 = OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata;
      if (*(v46 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
      {
        v49 = v10;
      }

      else
      {
        v50 = *(v46 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v50)
        {
          v51 = v10;
          v52 = [v50 assetMetaData];
          if (v52)
          {
            v53 = *(v0 + 328);
            v54 = *(v0 + 336);
            v55 = v52;
            v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            *v53 = v56;
            *(v207 + 8) = v58;
            v4 = v227;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0);
            v59 = swift_allocObject();
            (*v206)(v59 + *(*v59 + 104), 1, 1, v54);
            *(v59 + *(*v59 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v53, v59 + *(*v59 + 120), &unk_100AEE0A0);
            *(v47 + v48) = v59;
          }

          if (!*(v47 + v48))
          {
LABEL_39:
            v71 = *(v0 + 360);
            v72 = type metadata accessor for PhotoLibraryAssetMetadata();
            (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
LABEL_40:
            v73 = *(v0 + 464);
            v74 = *(v0 + 424);
            sub_100004F84(*(v0 + 360), &qword_100AD5B20);
            (*v223)(v74, 1, 1, v73);
LABEL_41:
            v75 = *(v0 + 464);
            v77 = *(v0 + 424);
            v76 = *(v0 + 432);
            v78 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
            swift_beginAccess();
            sub_1000082B4(v47 + v78, v76, &unk_100AD4790);

            v66 = *v4;
            if ((*v4)(v77, 1, v75) != 1)
            {
              sub_100004F84(*(v0 + 424), &unk_100AD4790);
            }

            goto LABEL_43;
          }
        }

        else
        {
          v70 = v10;
          if (!*(v47 + v48))
          {
            goto LABEL_39;
          }
        }
      }

      v60 = *(v0 + 360);

      sub_100046ADC(v60);

      v61 = type metadata accessor for PhotoLibraryAssetMetadata();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v60, 1, v61) == 1)
      {
        goto LABEL_40;
      }

      v63 = *(v0 + 464);
      v64 = *(v0 + 424);
      v65 = *(v0 + 360);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v62 + 8))(v65, v61);
      v66 = *v4;
      if ((*v4)(v64, 1, v63) == 1)
      {
        goto LABEL_41;
      }

      v67 = *(v0 + 464);
      v69 = *(v0 + 424);
      v68 = *(v0 + 432);

      (*v215)(v68, v69, v67);
      (*v223)(v68, 0, 1, v67);
LABEL_43:
      v43 = *(v0 + 464);
      v44 = *(v0 + 432);
      v45 = 1;
      if (v66(v44, 1, v43) != 1)
      {
LABEL_48:
        v217 = 0;
        v83 = 0;
        goto LABEL_65;
      }

      sub_100004F84(v44, &unk_100AD4790);
      v4 = v227;
      v10 = v230;
LABEL_45:
      type metadata accessor for VideoAsset();
      v79 = swift_dynamicCastClass();
      if (!v79)
      {

        goto LABEL_7;
      }

      v80 = v79;
      v81 = OBJC_IVAR____TtC7Journal10VideoAsset_metadata;
      if (*(v79 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
      {
        v82 = v10;
      }

      else
      {
        v84 = *(v79 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v84)
        {
          v85 = v10;
          v86 = [v84 assetMetaData];
          if (v86)
          {
            v87 = *(v0 + 328);
            v88 = *(v0 + 336);
            v89 = v86;
            v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;

            *v87 = v90;
            *(v207 + 8) = v92;
            v4 = v227;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&unk_100AEE0B0);
            v93 = swift_allocObject();
            (*v206)(v93 + *(*v93 + 104), 1, 1, v88);
            *(v93 + *(*v93 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v87, v93 + *(*v93 + 120), &unk_100AEE0A0);
            *(v80 + v81) = v93;
          }

          if (!*(v80 + v81))
          {
LABEL_58:
            v105 = *(v0 + 352);
            v106 = type metadata accessor for PhotoLibraryAssetMetadata();
            (*(*(v106 - 8) + 56))(v105, 1, 1, v106);
LABEL_59:
            v107 = *(v0 + 464);
            v108 = *(v0 + 408);
            sub_100004F84(*(v0 + 352), &qword_100AD5B20);
            (*v223)(v108, 1, 1, v107);
LABEL_60:
            v109 = *(v0 + 464);
            v111 = *(v0 + 408);
            v110 = *(v0 + 416);
            v112 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
            swift_beginAccess();
            sub_1000082B4(v80 + v112, v110, &unk_100AD4790);

            v100 = *v4;
            if ((*v4)(v111, 1, v109) != 1)
            {
              sub_100004F84(*(v0 + 408), &unk_100AD4790);
            }

            goto LABEL_62;
          }
        }

        else
        {
          v104 = v10;
          if (!*(v80 + v81))
          {
            goto LABEL_58;
          }
        }
      }

      v94 = *(v0 + 352);

      sub_100046ADC(v94);

      v95 = type metadata accessor for PhotoLibraryAssetMetadata();
      v96 = *(v95 - 8);
      if ((*(v96 + 48))(v94, 1, v95) == 1)
      {
        goto LABEL_59;
      }

      v97 = *(v0 + 464);
      v98 = *(v0 + 408);
      v99 = *(v0 + 352);
      PhotoLibraryAssetMetadata.date.getter();
      (*(v96 + 8))(v99, v95);
      v100 = *v4;
      if ((*v4)(v98, 1, v97) == 1)
      {
        goto LABEL_60;
      }

      v101 = *(v0 + 464);
      v103 = *(v0 + 408);
      v102 = *(v0 + 416);

      (*v215)(v102, v103, v101);
      (*v223)(v102, 0, 1, v101);
LABEL_62:
      v43 = *(v0 + 464);
      v44 = *(v0 + 416);
      if (v100(v44, 1, v43) == 1)
      {

        sub_100004F84(v44, &unk_100AD4790);
        goto LABEL_7;
      }

      v217 = 1;
      v45 = 0;
      v83 = 1;
LABEL_65:
      v113 = *(v0 + 520);
      v115 = *(v0 + 504);
      v114 = *(v0 + 512);
      (*v215)(*(v0 + 536), v44, v43);
      sub_100492EAC(v113);
      v116 = *v222;
      (*v222)(v115, v113, v43);
      v117 = sub_10028B4B8(v114, v115);
      v118 = *v221;
      (*v221)(v114, v43);
      if (v117)
      {
        v119 = v213;
        if (v213 > 1)
        {
          if (v213 != 2)
          {
LABEL_74:
            v119 = v83;
          }
        }

        else
        {
          if (v213)
          {
            if ((v45 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          else if ((v217 & 1) == 0)
          {
            goto LABEL_74;
          }

          v119 = 2;
        }

        v213 = v119;
        v120 = *(v0 + 520);
        v121 = *(v0 + 464);
        v122 = *(v0 + 312);
        v218 = swift_allocBox();
        v124 = v123;
        v125 = OBJC_IVAR____TtC7Journal5Asset_id;
        v126 = type metadata accessor for UUID();
        (*(*(v126 - 8) + 16))(v124, &v230[v125], v126);
        v116((v124 + *(v208 + 20)), v120, v121);
        *(v124 + *(v208 + 24)) = 0;
        swift_beginAccess();
        sub_1007B38F8(v124, v122);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v127 = v226;
        }

        else
        {
          v127 = sub_1003E6F24(0, *(v226 + 2) + 1, 1, v226);
        }

        v129 = *(v127 + 2);
        v128 = *(v127 + 3);
        v210 = v118;
        if (v129 >= v128 >> 1)
        {
          v127 = sub_1003E6F24(v128 > 1, v129 + 1, 1, v127);
        }

        v130 = *(v0 + 312);
        v131 = *(v0 + 280);
        v132 = *(v211 + 272);
        *(v127 + 2) = v129 + 1;
        v226 = v127;
        sub_1007B39D0(v130, v127 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v129);
        v133 = type metadata accessor for TaskPriority();
        v134 = *(v133 - 8);
        (*(v134 + 56))(v131, 1, 1, v133);
        v135 = swift_allocObject();
        v135[2] = 0;
        v136 = v135 + 2;
        v135[3] = 0;
        v135[4] = v218;
        v135[5] = v230;
        sub_1000082B4(v131, v132, &qword_100AD5170);
        v137 = v132;
        v0 = v211;
        LODWORD(v131) = (*(v134 + 48))(v137, 1, v133);
        v231 = v230;

        v138 = *(v211 + 272);
        if (v131 == 1)
        {
          sub_100004F84(*(v211 + 272), &qword_100AD5170);
          if (*v136)
          {
            goto LABEL_81;
          }

LABEL_83:
          v139 = 0;
          v141 = 0;
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v134 + 8))(v138, v133);
          if (!*v136)
          {
            goto LABEL_83;
          }

LABEL_81:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v139 = dispatch thunk of Actor.unownedExecutor.getter();
          v141 = v140;
          swift_unknownObjectRelease();
        }

        v142 = **(v211 + 224);
        v143 = swift_allocObject();
        *(v143 + 16) = &unk_1009683D0;
        *(v143 + 24) = v135;

        if (v141 | v139)
        {
          v144 = v214 - 22;
          *(v214 - 22) = 0;
          *(v214 - 21) = 0;
          *(v211 + 32) = v139;
          *(v211 + 40) = v141;
        }

        else
        {
          v144 = 0;
        }

        v145 = *(v211 + 536);
        v146 = *(v211 + 520);
        v147 = *(v211 + 464);
        v148 = *(v211 + 280);
        *(v211 + 120) = 1;
        *(v211 + 128) = v144;
        *(v211 + 136) = v142;
        swift_task_create();

        sub_100004F84(v148, &qword_100AD5170);
        v210(v146, v147);
        v210(v145, v147);

        goto LABEL_6;
      }

      v6 = *(v0 + 536);
      v7 = *(v0 + 520);
      v8 = *(v0 + 464);

      v118(v7, v8);
      v118(v6, v8);
LABEL_6:
      v1 = v212;
      v4 = v227;
LABEL_7:
      v5 = v228 + 1;
      if (v220 == v228 + 1)
      {

        v149 = *v214;
        goto LABEL_92;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1007B131C(uint64_t a1)
{
  v3 = *v2;
  v3[76] = a1;
  v3[77] = v1;

  if (v1)
  {
  }

  else
  {

    v5 = v3[70];
    v6 = v3[69];

    return _swift_task_switch(sub_1007B1460, v6, v5);
  }
}

uint64_t sub_1007B1460()
{
  v9 = v0;
  v1 = v0[77];
  v2 = v0[76];

  v8 = v2;

  sub_1007B1C8C(&v8);
  if (v1)
  {
  }

  else
  {

    v4 = v8;
    if (v8[2])
    {
      v5 = v0[29];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = v4;
      v0[27] = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1007B173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a1;
  v5[12] = a5;
  v5[8] = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v5[9] = v6;
  v5[13] = swift_projectBox();

  return _swift_task_switch(sub_1007B17BC, 0, 0);
}

uint64_t sub_1007B17BC()
{
  if (qword_100ACFB90 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2F628;
  v0[14] = v0[8];
  v0[15] = v1;
  v0[16] = [objc_opt_self() currentTraitCollection];
  v0[17] = type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v3;
  v0[20] = v2;

  return _swift_task_switch(sub_1007B18B8, v3, v2);
}

uint64_t sub_1007B18B8()
{
  v1 = *(v0 + 96);
  v7 = *(v0 + 120);
  v2 = static MainActor.shared.getter();
  *(v0 + 168) = v2;
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 6;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = v7;
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  v5 = sub_1000F24EC(&qword_100AE4D18);
  *v4 = v0;
  v4[1] = sub_1007B1A00;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 80, v2, &protocol witness table for MainActor, 0xD00000000000003BLL, 0x80000001009004A0, sub_1006877A4, v3, v5);
}

uint64_t sub_1007B1A00()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_1007B1B60, v3, v2);
}

uint64_t sub_1007B1B60()
{

  *(v0 + 192) = *(v0 + 80);

  return _swift_task_switch(sub_1007B1BDC, 0, 0);
}

uint64_t sub_1007B1BDC()
{
  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  swift_beginAccess();
  v5 = *(v3 + 24);
  v6 = *(v2 + v5);
  *(v2 + v5) = v1;

  swift_beginAccess();
  sub_1007B38F8(v2, v4);
  v7 = v0[1];

  return v7();
}

void sub_1007B1C8C(void **a1)
{
  v2 = *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1002050E8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1007B2758(v5);
  *a1 = v3;
}

uint64_t sub_1007B1D34()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) = 0;
  }

  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
    {

      sub_1003E8698();
    }

    v5 = *&v4[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];

    swift_unknownObjectRetain();
    sub_100177384(1, v5, v1, v4);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_1007B1F38()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = result;
      if (*(result + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
      {

        sub_1003E8698();
      }

      v4 = *&v3[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];

      swift_unknownObjectRetain();
      sub_100177384(1, v4, v1, v3);

      return swift_unknownObjectRelease_n();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1007B2138()
{

  v1 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel_maximumDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date, v2);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source, &qword_100AE2AA0);
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__delegate);

  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

void sub_1007B22B4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1007B23F4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1007B23F4()
{
  if (!qword_100AF0C88)
  {
    type metadata accessor for EntryDateSource();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF0C88);
    }
  }
}

void sub_1007B24A4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1007B2540();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1007B2540()
{
  if (!qword_100AF1A68)
  {
    sub_1000065A8(255, &qword_100AE9450);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF1A68);
    }
  }
}

unint64_t sub_1007B25F4()
{
  result = qword_100AF1AA0;
  if (!qword_100AF1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1AA0);
  }

  return result;
}

uint64_t sub_1007B2660(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1007B3F8C;

  return v6(a1);
}

void sub_1007B2758(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
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
        type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(type metadata accessor for CanvasDatePickerViewModel.MediaDate(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1007B2A84(v8, v9, a1, v4);
      v6[2] = 0.0;

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
    sub_1007B2884(0, v2, 1, a1);
  }
}

void sub_1007B2884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_1007B38F8(v23, v17);
      sub_1007B38F8(v20, v13);
      v24 = static Date.> infix(_:_:)();
      sub_1003FD790(v13);
      sub_1003FD790(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_1007B39D0(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_1007B39D0(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1007B2A84(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v110 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v113 = &v99 - v12;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_129:
      v94 = sub_100204C44(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        sub_1007B32E4(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_100204C44(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_100204BB8(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v105 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v112;
      v25 = v22;
      v26 = *(v110 + 72);
      v5 = *v112 + v26 * v23;
      sub_1007B38F8(v5, v18);
      sub_1007B38F8(v24 + v26 * v25, v15);
      LODWORD(v109) = static Date.> infix(_:_:)();
      sub_1003FD790(v15);
      sub_1003FD790(v18);
      v100 = v25;
      v27 = v25 + 2;
      v111 = v26;
      v28 = v24 + v26 * v27;
      v29 = v109;
      while (v19 != v27)
      {
        sub_1007B38F8(v28, v18);
        sub_1007B38F8(v5, v15);
        v30 = static Date.> infix(_:_:)() & 1;
        sub_1003FD790(v15);
        sub_1003FD790(v18);
        ++v27;
        v28 += v111;
        v5 += v111;
        if ((v29 & 1) != v30)
        {
          v31 = v29;
          v19 = v27 - 1;
          goto LABEL_11;
        }
      }

      v31 = v29;
LABEL_11:
      v22 = v100;
      a4 = v101;
      if (v31)
      {
        if (v19 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v19)
        {
          v99 = v6;
          v32 = v111 * (v19 - 1);
          v33 = v19 * v111;
          v109 = v19;
          v34 = v19;
          v35 = v100;
          v36 = v100 * v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_1007B39D0(v37 + v36, v104);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1007B39D0(v104, v37 + v32);
            }

            ++v35;
            v32 -= v111;
            v33 -= v111;
            v36 += v111;
          }

          while (v35 < v34);
          v6 = v99;
          v22 = v100;
          a4 = v101;
          v19 = v109;
        }
      }
    }

    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v105;
    }

    else
    {
      v21 = sub_1003E4B80(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v21 = sub_1003E4B80((v41 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v40;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_113;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_116;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_120;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_115;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
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

        if (!*v112)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_1007B32E4(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v21[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_100204C44(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        sub_100204BB8(v44);
        v21 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v112[1];
    v20 = v106;
    a4 = v101;
    if (v106 >= v19)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v22;
  a4 = *v112;
  v85 = *(v110 + 72);
  v86 = *v112 + v85 * (v19 - 1);
  v87 = v19;
  v88 = -v85;
  v89 = v22 - v87;
  v109 = v87;
  v103 = v85;
  v5 = a4 + v87 * v85;
  v106 = v39;
LABEL_86:
  v107 = v5;
  v108 = v89;
  v111 = v86;
  v90 = v86;
  while (1)
  {
    sub_1007B38F8(v5, v18);
    sub_1007B38F8(v90, v15);
    v91 = static Date.> infix(_:_:)();
    sub_1003FD790(v15);
    sub_1003FD790(v18);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v86 = v111 + v103;
      v89 = v108 - 1;
      v40 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v22 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v92 = v113;
    sub_1007B39D0(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_1007B39D0(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
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
}

void sub_1007B32E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  __chkstk_darwin(v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_1007B38F8(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_1007B38F8(v32, v41);
          v35 = static Date.> infix(_:_:)();
          v36 = v34;
          v11 = v33;
          sub_1003FD790(v36);
          sub_1003FD790(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_1007B38F8(a2, v11);
        v20 = v41;
        sub_1007B38F8(a4, v41);
        v21 = static Date.> infix(_:_:)();
        sub_1003FD790(v20);
        sub_1003FD790(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_100204DF4(&v46, &v45, &v44);
}

double *sub_1007B376C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 arrayForKey:v1];

  if (v2)
  {
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100584B0C(v3);

    if (v4)
    {
      return v4;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1007B384C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100032EC8;

  return sub_1007AF4E4(a1, a2, v2);
}

uint64_t sub_1007B38F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B398C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__mediaDates) = *(v0 + 24);
}

uint64_t sub_1007B39D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007B3A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1007B173C(a1, v4, v5, v7, v6);
}

uint64_t sub_1007B3AF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_1007B2660(a1, v4);
}

uint64_t sub_1007B3BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE2AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000F24EC(&qword_100AE36E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000082B4(a1, &v21 - v12, &qword_100AE2AA0);
  sub_1000082B4(a2, &v13[v15], &qword_100AE2AA0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &qword_100AE2AA0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1000342E0(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100004F84(v13, &qword_100AE2AA0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100004F84(v13, &qword_100AE36E8);
    v17 = 1;
    return v17 & 1;
  }

  sub_100004F84(v13, &qword_100AE2AA0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1007B3EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE2AA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007B3FC8()
{
  result = qword_100AF1AF8;
  if (!qword_100AF1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1AF8);
  }

  return result;
}

uint64_t sub_1007B4050()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100006118(v6, qword_100B31080);
  sub_10000617C(v6, qword_100B31080);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1007B4230(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000F24EC(&qword_100AE46A0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for JournalEntity();
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v6;
  v2[15] = v5;

  return _swift_task_switch(sub_1007B441C, v6, v5);
}

uint64_t sub_1007B441C()
{
  if (qword_100ACFED0 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2FA60;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = sub_100885D80(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v2)
    {

      sub_1001928AC();
      swift_allocError();
      *v4 = 4;
LABEL_11:
      swift_willThrow();
LABEL_14:

      v15 = v0[1];
LABEL_15:

      return v15();
    }
  }

  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_100510628();
  v0[16] = v6;

  if (!v6)
  {

    sub_1001928AC();
    swift_allocError();
    *v13 = 0;
    goto LABEL_11;
  }

  v7 = v0[12];
  IntentParameter.wrappedValue.getter();
  v8 = sub_100236610();
  v0[17] = v8;
  sub_100542920(v7);
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  sub_1001EDCD8(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = v0[8];

    sub_100004F84(v12, &qword_100AD1420);
LABEL_13:
    sub_1001928AC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    goto LABEL_14;
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  if (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16))
  {
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];
    v20 = v0[4];

    (*(v18 + 16))(v20, v17, v19);
    v21 = type metadata accessor for AppLaunchAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    sub_1001F05E8(v20);
    sub_100004F84(v20, &qword_100AE46A0);
    v22 = v0[16];
    v23 = v0[11];
    v24 = v0[9];
    v25 = v0[10];
    static IntentResult.result<>()();

    (*(v25 + 8))(v23, v24);

    v15 = v0[1];
    goto LABEL_15;
  }

  v26 = v0[13];

  if (v26)
  {
    swift_getObjectType();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v0[18] = v27;
  v0[19] = v29;

  return _swift_task_switch(sub_1007B4878, v27, v29);
}

uint64_t sub_1007B4878()
{
  v1 = v0[17];
  (*(v0[6] + 104))(v0[7], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[5]);

  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1007B4970;
  v3 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2, v3, sub_100163FAC, v1, &type metadata for () + 8);
}

uint64_t sub_1007B4970()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[18];
    v5 = v2[19];

    return _swift_task_switch(sub_1007B4AC4, v4, v5);
  }
}

uint64_t sub_1007B4AC4()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1007B4B28, v1, v2);
}

uint64_t sub_1007B4B28()
{
  v1 = v0[4];

  v2 = sub_1000F24EC(&qword_100AD62A0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for CanvasContentInputType();
  *v1 = 0;
  *(v1 + 1) = 0;
  (*(*(v5 - 8) + 56))(&v1[v3], 1, 1, v5);
  v6 = type metadata accessor for WidgetFamily();
  (*(*(v6 - 8) + 56))(&v1[v4], 1, 1, v6);
  v7 = type metadata accessor for AppLaunchAction();
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  sub_1001F05E8(v1);
  sub_100004F84(v1, &qword_100AE46A0);
  v8 = v0[16];
  v9 = v0[11];
  v10 = v0[9];
  v11 = v0[10];
  static IntentResult.result<>()();

  (*(v11 + 8))(v9, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1007B4D30(uint64_t a1)
{
  v2 = type metadata accessor for JournalEntity();
  __chkstk_darwin(v2 - 8);
  sub_100542868(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100542920(a1);
}

void (*sub_1007B4DC0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1002A8020;
}

unint64_t sub_1007B4E3C()
{
  result = qword_100AF1B00;
  if (!qword_100AF1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1B00);
  }

  return result;
}

unint64_t sub_1007B4E94()
{
  result = qword_100AF1B08;
  if (!qword_100AF1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1B08);
  }

  return result;
}

uint64_t sub_1007B4F54@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD0AB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000617C(v2, qword_100B31080);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1007B4FFC(uint64_t a1)
{
  v2 = sub_1005428CC();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1007B503C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_1007B4230(a1, v4);
}

uint64_t sub_1007B50DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007B5150();
  *a1 = result;
  return result;
}

uint64_t sub_1007B5104(uint64_t a1)
{
  v2 = sub_10054297C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1007B5150()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F24EC(&qword_100AE8938);
  __chkstk_darwin(v2 - 8);
  v29 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = v25 - v5;
  v6 = sub_1000F24EC(&qword_100AED208);
  __chkstk_darwin(v6 - 8);
  v27 = v25 - v7;
  v8 = sub_1000F24EC(&qword_100AD9E60);
  __chkstk_darwin(v8 - 8);
  v26 = v25 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_1000F24EC(&qword_100AF1B10);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for JournalEntity();
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1007B56D8(&qword_100AD9C98);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_1007B56D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JournalEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1007B571C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000A0564();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_1003E9628(0, 0, v2, &unk_1009686E8, v10);
  }
}

void sub_1007B58F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:1];
    v5 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
    [*&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView] setAlpha:1.0];
    [*&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel] setAlpha:1.0];
    [*&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel] setAlpha:1.0];
    [*&v4[v5] setAlpha:1.0];
    [*&v4[v5] setImage:a2];
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 blackColor];
    [v7 setBackgroundColor:v8];
  }
}

uint64_t sub_1007B5A38()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v5 = *((swift_isaMask & *v4) + 0x58);
  v6 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v7 = v4;
  v5(7, v6);

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_1003E9628(0, 0, v3, &unk_10095F870, v11);
}

id sub_1007B5C00()
{
  v1 = v0;
  v62 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v63 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v3 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:8.0];
    if (v8)
    {
      [v8 setActive:1];
    }
  }

  else
  {
    v8 = 0;
    v5 = v3;
  }

  v9 = *(v1 + v63);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v9 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:8.0];
    if (v14)
    {
      [v14 setActive:1];
    }
  }

  else
  {
    v14 = 0;
    v11 = v9;
  }

  v15 = *(v1 + v63);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v15 heightAnchor];
  v17 = [v15 widthAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 multiplier:1.0];

  [v18 setActive:1];
  v19 = *(v1 + v63);
  v20 = sub_100028DA0(0, 1, 8.0);

  v21 = *(v1 + v63);
  v22 = *(v1 + v62);
  v23 = v21;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v22 leadingAnchor];
  v25 = [v23 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  [v26 setConstant:8.0];
  [v26 setActive:1];

  v27 = [*(v1 + v62) bottomAnchor];
  v28 = [*(v1 + v63) centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  [v29 setActive:1];
  v30 = *(v1 + v62);
  v31 = [v30 superview];
  if (v31)
  {
    v32 = v31;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v30 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

    [v35 setConstant:-8.0];
    if (v35)
    {
      [v35 setActive:1];
    }

    v36 = &selRef_setSuggestedName_;
  }

  else
  {
    v35 = 0;
    v32 = v30;
    v36 = &selRef_setSuggestedName_;
  }

  [*(v1 + v62) setTextAlignment:0];
  v37 = *(v1 + v62);
  v38 = [v37 superview];
  if (v38)
  {
    v39 = v38;
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v37 topAnchor];
    v41 = [v39 topAnchor];
    v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41];

    [v42 setConstant:8.0];
    if (v42)
    {
      [v42 setActive:1];
    }
  }

  else
  {
    v42 = 0;
    v39 = v37;
  }

  v43 = *(v1 + v63);
  v44 = *(v1 + v2);
  v45 = v43;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v44 v36[232]];
  v47 = [v45 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setConstant:8.0];
  [v48 setActive:1];

  v49 = [*(v1 + v2) topAnchor];
  v50 = [*(v1 + v63) centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  [v51 setActive:1];
  v52 = *(v1 + v2);
  v53 = [v52 superview];
  if (v53)
  {
    v54 = v53;
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [v52 trailingAnchor];
    v56 = [v54 trailingAnchor];
    v57 = [v55 constraintLessThanOrEqualToAnchor:v56];

    [v57 setConstant:-8.0];
    if (v57)
    {
      [v57 setActive:1];
    }
  }

  else
  {
    v57 = 0;
    v54 = v52;
  }

  v58 = *(v1 + v2);
  v59 = sub_100028DA0(2, 1, 8.0);

  v60 = *(v1 + v2);

  return [v60 setTextAlignment:0];
}

id sub_1007B6470()
{
  v1 = v0;
  v66 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v5 = [v4 superview];
  v6 = &selRef_setSuggestedName_;
  if (v5)
  {
    v7 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v4 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setConstant:8.0];
    if (v10)
    {
      [v10 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v10 = 0;
    v7 = v4;
  }

  v11 = *(v1 + v3);
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 v6[278]];
    v14 = [v11 topAnchor];
    v15 = [v13 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:8.0];
    if (v16)
    {
      [v16 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v16 = 0;
    v13 = v11;
  }

  v17 = *(v1 + v3);
  [v17 v6[278]];
  v18 = [v17 heightAnchor];
  v19 = [v17 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:1.0];

  [v20 setActive:1];
  v21 = *(v1 + v3);
  v22 = sub_100028DA0(0, 1, 8.0);

  v23 = *(v1 + v3);
  v24 = *(v1 + v66);
  v25 = v23;
  [v24 v6[278]];
  v26 = [v24 leadingAnchor];
  v27 = [v25 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  [v28 setConstant:12.0];
  [v28 setActive:1];

  v29 = [*(v1 + v66) bottomAnchor];
  v65 = v3;
  v30 = [*(v1 + v3) centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  [v31 setActive:1];
  v32 = *(v1 + v66);
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v32 trailingAnchor];
    v36 = [v34 trailingAnchor];
    v37 = [v35 constraintLessThanOrEqualToAnchor:v36];

    [v37 setConstant:-12.0];
    if (v37)
    {
      [v37 setActive:1];
    }

    v38 = v2;

    v39 = &selRef_setSuggestedName_;
  }

  else
  {
    v37 = 0;
    v34 = v32;
    v38 = v2;
    v39 = &selRef_setSuggestedName_;
  }

  [*(v1 + v66) setTextAlignment:0];
  v40 = *(v1 + v38);
  v41 = [v40 superview];
  if (v41)
  {
    v42 = v41;
    [v40 v39[278]];
    v43 = [v40 topAnchor];
    v44 = [v42 topAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

    [v45 setConstant:12.0];
    if (v45)
    {
      [v45 setActive:1];
    }

    v39 = &selRef_setSuggestedName_;
  }

  else
  {
    v45 = 0;
    v42 = v40;
  }

  v46 = *(v1 + v65);
  v47 = *(v1 + v38);
  v48 = v46;
  [v47 v39[278]];
  v49 = [v47 leadingAnchor];
  v50 = [v48 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  [v51 setConstant:12.0];
  [v51 setActive:1];

  v52 = [*(v1 + v38) topAnchor];
  v53 = [*(v1 + v65) centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  [v54 setActive:1];
  v55 = *(v1 + v38);
  v56 = [v55 superview];
  if (v56)
  {
    v57 = v56;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v55 trailingAnchor];
    v59 = [v57 trailingAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

    [v60 setConstant:-12.0];
    if (v60)
    {
      [v60 setActive:1];
    }
  }

  else
  {
    v60 = 0;
    v57 = v55;
  }

  v61 = *(v1 + v38);
  v62 = sub_100028DA0(2, 1, 8.0);

  v63 = *(v1 + v38);

  return [v63 setTextAlignment:0];
}

void sub_1007B6CD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v4 = qword_100AD03C8;
  v5 = *(v0 + v2);
  if (v4 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_100B303C0];

  v6 = *(v1 + v2);
  v7 = [v6 superview];
  v8 = &selRef_setSuggestedName_;
  if (v7)
  {
    v9 = v7;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v6 topAnchor];
    v11 = [v9 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:25.0];
    if (v12)
    {
      [v12 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v12 = 0;
    v9 = v6;
  }

  v13 = *(v1 + v2);
  v14 = [v13 superview];
  if (v14)
  {
    v15 = v14;
    [v13 v8[278]];
    v16 = [v13 leadingAnchor];
    v17 = [v15 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:20.0];
    if (v18)
    {
      [v18 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v18 = 0;
    v15 = v13;
  }

  v19 = *(v1 + v2);
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 v8[278]];
    v22 = [v19 trailingAnchor];
    v23 = [v21 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:-20.0];
    if (v24)
    {
      [v24 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v24 = 0;
    v21 = v19;
  }

  [*(v1 + v2) setTextAlignment:1];
  v25 = *(v1 + v3);
  v26 = sub_100028DA0(0, 1, 25.0);

  v27 = *(v1 + v3);
  v28 = [v27 superview];
  if (v28)
  {
    v29 = v28;
    [v27 v8[278]];
    v30 = [v27 leadingAnchor];
    v31 = [v29 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:20.0];
    if (v32)
    {
      [v32 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v32 = 0;
    v29 = v27;
  }

  v33 = *(v1 + v3);
  v34 = [v33 superview];
  if (v34)
  {
    v35 = v34;
    [v33 v8[278]];
    v36 = [v33 trailingAnchor];
    v37 = [v35 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    [v38 setConstant:-20.0];
    if (v38)
    {
      [v38 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v38 = 0;
    v35 = v33;
  }

  [*(v1 + v3) setTextAlignment:1];
  v39 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v40 = *(v1 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v41 = [v40 superview];
  if (v41)
  {
    v42 = v41;
    [v40 v8[278]];
    v43 = [v40 leadingAnchor];
    v44 = [v42 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    [v45 setConstant:20.0];
    if (v45)
    {
      [v45 setActive:1];
    }

    v8 = &selRef_setSuggestedName_;
  }

  else
  {
    v45 = 0;
    v42 = v40;
  }

  v46 = *(v1 + v2);
  v47 = *(v1 + v39);
  v48 = v46;
  [v47 v8[278]];
  v49 = [v47 topAnchor];
  v50 = v8;
  v51 = [v48 bottomAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];

  [v52 setConstant:15.0];
  [v52 setActive:1];

  v53 = *(v1 + v39);
  v54 = [v53 superview];
  if (v54)
  {
    v55 = v54;
    [v53 *(v50 + 2224)];
    v56 = [v53 trailingAnchor];
    v57 = [v55 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    [v58 setConstant:-20.0];
    if (v58)
    {
      [v58 setActive:1];
    }

    v50 = 0x100AAA000;
  }

  else
  {
    v58 = 0;
    v55 = v53;
  }

  v59 = *(v1 + v3);
  v60 = *(v1 + v39);
  v61 = v59;
  [v60 *(v50 + 2224)];
  v62 = [v60 bottomAnchor];
  v63 = [v61 topAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setConstant:-15.0];
  [v64 setActive:1];
}

void *sub_1007B757C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
  v2 = v1;
  return v1;
}

double sub_1007B75AC()
{
  v0 = type metadata accessor for Calendar();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  WorkoutIconAssetMetadata.startTime.getter();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  WorkoutIconAssetMetadata.endTime.getter();
  if (v18(v8, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v8, 1, v11) != 1)
    {
      sub_100004F84(v8, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940080;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10005FF80(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  Calendar.dateComponents(_:from:to:)();

  (*(v32 + 8))(v2, v33);
  v24 = DateComponents.second.getter();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

void sub_1007B7AAC()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
}

id sub_1007B7B1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutActivityGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007B7BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1000907DC(a1, v4, v5, v6);
}

void sub_1007B7C88()
{
  v1 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_labelTextProvider;
  type metadata accessor for WorkoutActivityGridView.LabelTextProvider();
  v5 = swift_allocObject();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = 0;
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007B7D90()
{
  v1 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) <= 1u && *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType))
  {
    v2 = 1;
LABEL_17:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (*(v0 + v1) == 3)
    {
      v2 = 1;
      goto LABEL_17;
    }

    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      if (*(v0 + v1) > 6u)
      {
        v2 = 1;
        goto LABEL_17;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        if (*(v0 + v1) > 3u || *(v0 + v1))
        {
          v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        else
        {
          v2 = 1;
        }

        goto LABEL_17;
      }
    }
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_1007B81D8()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC7Journal18VideoAssetGridView_durationLabel;
    v6 = [*(result + OBJC_IVAR____TtC7Journal18VideoAssetGridView_durationLabel) superview];
    if (v6)
    {

      [v4 bringSubviewToFront:*&v4[v5]];
    }

    else
    {
      v7 = qword_100AD03B8;
      v8 = *&v4[v5];
      if (v7 != -1)
      {
        swift_once();
      }

      [v8 setFont:qword_100B303B0];

      v9 = *&v4[v5];
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 whiteColor];
      [v11 setTextColor:v12];

      [*&v4[v5] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
      [*&v4[v5] setAdjustsFontForContentSizeCategory:1];
      [*&v4[v5] setAdjustsFontSizeToFitWidth:1];
      [v4 addSubview:*&v4[v5]];
      v13 = *&v4[v5];
      v14 = [v13 superview];
      v15 = &selRef_setSuggestedName_;
      if (v14)
      {
        v16 = v14;
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
        v17 = [v13 trailingAnchor];
        v18 = [v16 trailingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        [v19 setConstant:-8.0];
        if (v19)
        {
          [v19 setActive:1];
        }

        v15 = &selRef_setSuggestedName_;
      }

      else
      {
        v19 = 0;
        v16 = v13;
      }

      v20 = *&v4[v5];
      v21 = [v20 superview];
      if (v21)
      {
        v22 = v21;
        [v20 v15[278]];
        v23 = [v20 leadingAnchor];
        v24 = [v22 leadingAnchor];
        v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

        [v25 setConstant:8.0];
        if (v25)
        {
          [v25 setActive:1];
        }
      }

      else
      {
        v25 = 0;
        v22 = v20;
      }

      v26 = *&v4[v5];
      v27 = sub_100028DA0(0, 1, 6.0);
    }

    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v2, 1, 1, v28);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v29;

    sub_1004EC158(0, 0, v2, &unk_100968718, v31);
  }

  return result;
}

uint64_t sub_1007B8690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v4[35] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v9;
  v4[42] = v8;

  return _swift_task_switch(sub_1000B43D8, v9, v8);
}

uint64_t sub_1007B8878()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_1007B9338;
  }

  else
  {
    v6 = v2[43];

    v3 = v2[41];
    v4 = v2[42];
    v5 = sub_1007B89AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1007B89AC()
{
  v13 = v0[34];
  v1 = v0[31];
  v15 = v0[33];
  v16 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[55];
  v5 = v0[57];
  sub_100005508();
  v6 = v0[56];
  v14 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v6;
  v9[5] = v5;
  v0[12] = sub_1007B98DC;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100006C7C;
  v0[11] = &unk_100A7DD20;
  v10 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[27] = _swiftEmptyArrayStorage;
  sub_100006BA4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v3 + 8))(v1, v2);
  (*(v15 + 8))(v13, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1007B8C60()
{
  v1 = v0[40];
  v2 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v0[50] = [v2 initWithURL:v4 options:0];

  sub_1000F24EC(&qword_100AD8860);
  v6 = static AVPartialAsyncProperty<A>.duration.getter();
  v0[51] = v6;
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_1007B8D7C;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 58, v6, v1, &protocol witness table for MainActor);
}

uint64_t sub_1007B8D7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_1007B9218;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_1007B8EC0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1007B8EC0()
{
  v1 = v0[50];

  v2 = v0[58];
  v0[61] = v0[59];
  v3 = v0[60];
  v0[53] = v2;
  v0[54] = v3;
  v4 = v0[41];
  v5 = v0[42];

  return _swift_task_switch(sub_1007B8F40, v4, v5);
}

uint64_t sub_1007B8F40()
{
  v1 = v0[53];
  v13 = v0[54];
  v18 = v0[36];
  v19 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v3 = v0[31];
  v16 = v0[32];
  v17 = v0[37];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[61];

  sub_100005508();
  v14 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v1;
  v9[4] = v6;
  v9[5] = v13;
  v0[6] = sub_1000B5F58;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A7DCD0;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[26] = _swiftEmptyArrayStorage;
  sub_100006BA4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v5 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1007B9218()
{
  v1 = v0[50];

  v2 = v0[41];
  v3 = v0[42];

  return _swift_task_switch(sub_1007B9284, v2, v3);
}

uint64_t sub_1007B9284()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007B9338()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1007B93FC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Notification.userInfo.getter();
  if (v6)
  {
    v7 = v6;
    v22 = 0xD000000000000019;
    v23 = 0x80000001008E5300;
    AnyHashable.init<A>(_:)();
    if (*(v7 + 16) && (v8 = sub_100361EDC(v24), (v9 & 1) != 0))
    {
      sub_10000BA20(*(v7 + 56) + 32 * v8, v25);
      sub_100177B94(v24);

      sub_1000F24EC(&qword_100AD60A0);
      if (swift_dynamicCast())
      {
        v10 = v22;
        v11 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
        if (v11)
        {
          (*(v3 + 16))(v5, v11 + OBJC_IVAR____TtC7Journal5Asset_id, v2);
          v12 = v11;
          v13 = UUID.uuidString.getter();
          v15 = v14;
          v16 = (*(v3 + 8))(v5, v2);
          v24[0] = v13;
          v24[1] = v15;
          __chkstk_darwin(v16);
          *(&v21 - 2) = v24;
          LOBYTE(v13) = sub_100194FF0(sub_100124B50, (&v21 - 4), v10);

          if ((v13 & 1) != 0 || (*(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) & 1) == 0)
          {
          }

          else
          {
            v17 = (v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
            v18 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
            *v17 = 0;
            v17[1] = 0;
            sub_100004DF8(v18);
            sub_1000999CC();
            sub_100815D10();
          }
        }

        else
        {

          v19 = (v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
          v20 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
          *v19 = 0;
          v19[1] = 0;
          sub_100004DF8(v20);
          sub_1000999CC();
          sub_100815D10();
        }
      }
    }

    else
    {

      sub_100177B94(v24);
    }
  }
}

id sub_1007B987C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1007B98E0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for AssetTypesVC();
  v19.receiver = v0;
  v19.super_class = v5;
  objc_msgSendSuper2(&v19, "viewDidLoad");
  v6 = String._bridgeToObjectiveC()();
  [v1 setTitle:v6];

  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = objc_allocWithZone(sub_1000F24EC(&qword_100AF1CD8));
  v9 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v10 = *&v1[OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource];
  *&v1[OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource] = v9;

  result = [v1 tableView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v12 = [objc_allocWithZone(UIRefreshControl) init];
  [v11 setRefreshControl:v12];

  result = [v1 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result refreshControl];

  if (v14)
  {
    [v14 addTarget:v1 action:"refreshData" forControlEvents:4096];
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  sub_1003E9628(0, 0, v4, &unk_100968808, v18);
}

id sub_1007B9B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  UITableViewCell.defaultContentConfiguration()();
  sub_10012B8BC();
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() _systemImageNamed:v9];

  UIListContentConfiguration.image.setter();
  AssetType.rawValue.getter();
  UIListContentConfiguration.text.setter();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v20;
  if (*(v20 + 16) && (v12 = sub_100362044(a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = 0;
  }

  v20 = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x73656972746E6520;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  UIListContentConfiguration.secondaryText.setter();
  v19[3] = v4;
  v19[4] = &protocol witness table for UIListContentConfiguration;
  v17 = sub_10001A770(v19);
  (*(v5 + 16))(v17, v7, v4);
  UITableViewCell.contentConfiguration.setter();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1007B9E8C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AF1CC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = type metadata accessor for AssetType();
  sub_1007BA7DC();
  sub_1007BA830();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5AE70);
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v16;
  v8 = *(v16 + 16);
  if (v8)
  {
    v9 = sub_1003E754C(*(v16 + 16), 0);
    sub_1001C268C(&v16, &v9[(*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)], v8, v7);
    v11 = v10;
    sub_100014FF8();
    if (v11 == v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

LABEL_7:
  LOBYTE(v16) = 1;
  result = NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  v13 = *(v1 + OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource);
  if (v13)
  {
    v14 = v13;

    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007BA110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1007BA1A8, v6, v5);
}

uint64_t sub_1007BA1A8()
{
  if (qword_100ACF9C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1007BA26C;

  return sub_100179B44();
}

uint64_t sub_1007BA26C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1007BA38C, v3, v2);
}

id sub_1007BA38C()
{
  v1 = *(v0 + 16);
  sub_1007B9E8C();
  result = [v1 tableView];
  if (result)
  {
    v3 = result;

    v4 = [v3 refreshControl];

    [v4 endRefreshing];
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1007BA70C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetTypesVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1007BA788()
{
  result = qword_100AF1CC0;
  if (!qword_100AF1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1CC0);
  }

  return result;
}

unint64_t sub_1007BA7DC()
{
  result = qword_100AF1CD0;
  if (!qword_100AF1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1CD0);
  }

  return result;
}

unint64_t sub_1007BA830()
{
  result = qword_100ADFEE0;
  if (!qword_100ADFEE0)
  {
    type metadata accessor for AssetType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFEE0);
  }

  return result;
}

uint64_t sub_1007BA888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1007BA110(a1, v4, v5, v6);
}

uint64_t sub_1007BA93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1007BA110(a1, v4, v5, v6);
}

void sub_1007BA9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v8 = sub_1000F24EC(&unk_100AF1CE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31.i8[-v9];
  v11 = type metadata accessor for PresentationIntent.Kind();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31.i8[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PresentationIntent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31.i8[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005D974(a1, v36);
  if (v37)
  {
    v33 = a2;
    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      v32 = a3;
      v19 = v35;
      [v35 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000065A8(0, &qword_100AD2A80);
      if (swift_dynamicCast())
      {
        v20 = v35;
        [v19 firstLineHeadIndent];
        *v22.i64 = *v21.i64 - trunc(*v21.i64);
        v23.f64[0] = NAN;
        v23.f64[1] = NAN;
        v31 = vnegq_f64(v23);
        v24 = *vbslq_s8(v31, v22, v21).i64 + -0.1;
        [v19 headIndent];
        if (fabs(v24) >= 0.01 || (*v26.i64 = *v25.i64 - trunc(*v25.i64), fabs(*vbslq_s8(v31, v26, v25).i64 + -0.1) >= 0.01))
        {
          v29 = v32;
          v30 = v33;
          v28 = v34;
        }

        else
        {
          [v20 setFirstLineHeadIndent:0.0];
          [v20 setHeadIndent:0.0];
          (*(v12 + 104))(v14, enum case for PresentationIntent.Kind.blockQuote(_:), v11);
          (*(v16 + 56))(v10, 1, 1, v15);
          PresentationIntent.init(_:identity:parent:)();
          isa = PresentationIntent._bridgeToObjectiveC()().super.isa;
          v28 = v34;
          v29 = v32;
          v30 = v33;
          [v34 addAttribute:NSPresentationIntentAttributeName value:isa range:{v33, v32}];

          (*(v16 + 8))(v18, v15);
        }

        [v20 setParagraphSpacingBefore:10.0];
        [v28 addAttribute:NSParagraphStyleAttributeName value:v20 range:{v30, v29}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000261D4(v36);
  }
}

void sub_1007BAE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(id, uint64_t, uint64_t))
{
  v8 = *a5 + 1;
  if (__OFADD__(*a5, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = v6;
    v18 = v7;
    *a5 = v8;
    sub_10005D974(a1, v15);
    if (v16)
    {
      sub_1000065A8(0, &qword_100ADC5F0);
      if (swift_dynamicCast())
      {
        v11 = [v14 textAttachment];
        swift_getObjectType();
        v12 = swift_conformsToProtocol2();
        if (v12)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          a6(v11, v12, *a5);
        }
      }
    }

    else
    {
      sub_1000261D4(v15);
    }
  }
}

void sub_1007BAF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10005D974(a1, v10);
  if (v11)
  {
    sub_1000065A8(0, &qword_100AD4C70);
    if (swift_dynamicCast())
    {
      if (sub_1004173E4())
      {
        v8 = [objc_opt_self() blackColor];
        [a5 addAttribute:NSForegroundColorAttributeName value:v8 range:{a2, a3}];
      }
    }
  }

  else
  {
    sub_1000261D4(v10);
  }
}

void sub_1007BB00C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  sub_10005D974(a1, v12);
  if (v13)
  {
    sub_1000065A8(0, &qword_100AD2A78);
    if (swift_dynamicCast())
    {
      v10 = [v11 fontWithSize:a4];
      [a6 addAttribute:NSFontAttributeName value:v10 range:{a2, a3}];
    }
  }

  else
  {
    sub_1000261D4(v12);
  }
}

uint64_t sub_1007BB104(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  v8 = [a1 length];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1007BB6C4;
  *(v10 + 24) = v9;
  v39 = sub_10007E150;
  v40 = v10;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10007E0A4;
  v38 = &unk_100A7DE78;
  v11 = _Block_copy(&aBlock);
  v12 = v7;

  [a1 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_7;
  }

  v34 = -1;
  v15 = NSParagraphAttachmentAttributeName;
  v16 = [a1 length];
  v17 = swift_allocObject();
  v17[2] = &v34;
  v17[3] = a2;
  v17[4] = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1007BB6CC;
  *(v18 + 24) = v17;
  v39 = sub_100673DC8;
  v40 = v18;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10007E0A4;
  v38 = &unk_100A7DEF0;
  v19 = _Block_copy(&aBlock);

  [a1 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v19}];
  _Block_release(v19);
  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21 = [a1 length];
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1007BB6D8;
  *(v23 + 24) = v22;
  v39 = sub_100673DC8;
  v40 = v23;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10007E0A4;
  v38 = &unk_100A7DF68;
  v24 = _Block_copy(&aBlock);
  v25 = v12;

  [a1 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  v26 = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = [a1 length];
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1007BB6E0;
  *(v29 + 24) = v28;
  v39 = sub_100673DC8;
  v40 = v29;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_10007E0A4;
  v38 = &unk_100A7DFE0;
  v30 = _Block_copy(&aBlock);
  v31 = v25;

  [a1 enumerateAttribute:NSFontAttributeName inRange:0 options:v27 usingBlock:{0, v30}];
  _Block_release(v30);
  v32 = swift_isEscapingClosureAtFileLocation();

  if ((v32 & 1) == 0)
  {
    return v31;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_1007BB6FC(void *a1)
{
  if ([v1 isEditable])
  {
    [a1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000065A8(0, &qword_100ADB9C0);
    if (swift_dynamicCast())
    {
      v2 = v24;
      if ([v2 length] < 1)
      {
        goto LABEL_22;
      }

      v3 = [v2 string];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = sub_1000961EC(v4, v6);
      v9 = v8;

      if (!v9)
      {
        goto LABEL_22;
      }

      if (v7 == 10 && v9 == 0xE100000000000000)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      result = [v2 length];
      if (__OFSUB__(result, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v12 = [v2 attributesAtIndex:result - 1 effectiveRange:0];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v13 + 16) || (v14 = sub_100051964(NSParagraphStyleAttributeName), (v15 & 1) == 0))
      {

        goto LABEL_22;
      }

      sub_10000BA20(*(v13 + 56) + 32 * v14, v25);

      sub_1000065A8(0, &qword_100ADFF70);
      if (swift_dynamicCast())
      {
        [v24 firstLineHeadIndent];
        *v17.i64 = *v16.i64 - trunc(*v16.i64);
        v18.f64[0] = NAN;
        v18.f64[1] = NAN;
        v23 = vnegq_f64(v18);
        v19 = *vbslq_s8(v23, v17, v16).i64 + -0.1;
        [v24 headIndent];
        if (fabs(v19) >= 0.01)
        {
          goto LABEL_20;
        }

        *v21.i64 = *v20.i64 - trunc(*v20.i64);
        if (fabs(*vbslq_s8(v23, v21, v20).i64 + -0.1) >= 0.01)
        {
          goto LABEL_20;
        }

        result = [v2 length];
        if (!__OFSUB__(result, 1))
        {
          [v2 deleteCharactersInRange:{result - 1, 1}];
LABEL_20:

          goto LABEL_22;
        }

        goto LABEL_24;
      }

LABEL_22:

      return v2;
    }
  }

  return a1;
}

void sub_1007BBA50()
{
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = NSFontAttributeName;
  v2 = NSFontAttributeName;
  v3 = [v0 traitCollection];
  v4 = sub_10010BBF4(v3);

  *(inited + 64) = sub_1000065A8(0, &qword_100AD2A78);
  *(inited + 40) = v4;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100AD9210);
  v5 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts)) != 0)
  {
    v7 = v6;
    v8 = [v7 string];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    v9 = objc_allocWithZone(NSAttributedString);
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = [v9 initWithString:v8 attributes:isa];

    [v0 setAttributedPlaceholder:v11];
  }

  else
  {
    if (qword_100AD0590 != -1)
    {
      swift_once();
    }

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    v14 = Dictionary._bridgeToObjectiveC()().super.isa;

    v11 = [v12 initWithString:v13 attributes:v14];

    [v0 setAttributedPlaceholder:v11];
  }

  v15 = [v0 _placeholderLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 isEditable];
    v18 = 0.0;
    if (v17)
    {
      v18 = 1.0;
    }

    [v16 setAlpha:v18];
  }
}

id sub_1007BBDA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 textStorage];
  result = [v11 string];
  if (result)
  {
    v13 = result;

    v14 = [v3 selectedRange];
    v16 = [v13 paragraphRangeForRange:{v14, v15}];
    v18 = [v13 substringWithRange:{v16, v17}];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v26[0] = v19;
    v26[1] = v21;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v22 = StringProtocol.trimmingCharacters(in:)();
    v24 = v23;
    (*(v7 + 8))(v10, v6);

    v25 = sub_1007BE9DC(v22, v24, a1, a2);

    return (v25 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007BBF88(int a1)
{
  v2 = v1;
  LODWORD(v65) = a1;
  v3 = type metadata accessor for CharacterSet();
  v64 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
  *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor] = 0;

  v7 = [v1 textStorage];
  v8 = [v7 string];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;

  v10 = [v2 selectedRange];
  v66 = [v9 paragraphRangeForRange:{v10, v11}];
  v67 = v12;
  v13 = [v9 substringWithRange:?];
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v2 typingAttributes];
  type metadata accessor for Key(0);
  v18 = v17;
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v19 + 16);
  v21 = &selRef_setRegion_;
  v68 = NSParagraphStyleAttributeName;
  if (v20 && (v22 = sub_100051964(NSParagraphStyleAttributeName), (v23 & 1) != 0))
  {
    sub_10000BA20(*(v19 + 56) + 32 * v22, &v72);

    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      v62 = v18;
      v24 = *&v70[0];
      [*&v70[0] mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v25 = sub_1000065A8(0, &qword_100AD2A80);
      if (swift_dynamicCast())
      {
        v61 = v25;
        v60 = v24;
        v26 = *&v70[0];
        if ((v65 & 1) != 0 && (*(v2 + OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear) & 1) == 0 && v67 == 1)
        {
          v65 = OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear;
          *&v72 = v63;
          *(&v72 + 1) = v15;
          static CharacterSet.whitespaces.getter();
          sub_1000777B4();
          v27 = StringProtocol.trimmingCharacters(in:)();
          v29 = v28;
          (*(v64 + 8))(v5, v3);

          v30 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v30 = v27 & 0xFFFFFFFFFFFFLL;
          }

          if (v30)
          {
            v31 = [v26 textLists];
            sub_1000065A8(0, &qword_100AD4290);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            *(v2 + v65) = 1;
LABEL_31:
            v42 = v68;
            sub_1000065A8(0, &qword_100AD4290);
            isa = Array._bridgeToObjectiveC()().super.isa;
            [v26 setTextLists:isa];

            [v26 setFirstLineHeadIndent:0.0];
            [v26 setHeadIndent:0.0];
            v73 = v61;
            *&v72 = v26;
            v44 = v26;
            v45 = [v2 typingAttributes];
            v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = v46;
            if (v73)
            {
              sub_10002432C(&v72, v70);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v69 = v46;
              sub_100048100(v70, v42, isUniquelyReferenced_nonNull_native);
              v71 = v69;
            }

            else
            {
              sub_100004F84(&v72, &qword_100AD13D0);
              sub_100080694(v70);
              sub_100004F84(v70, &qword_100AD13D0);
            }

            v58 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v2 setTypingAttributes:v58];

            v21 = &selRef_setRegion_;
            goto LABEL_14;
          }
        }

        else
        {
        }

        *(v2 + OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear) = 0;
        goto LABEL_31;
      }

      v21 = &selRef_setRegion_;
    }

    else
    {

      v21 = &selRef_setRegion_;
    }
  }

  else
  {
  }

LABEL_14:
  v32 = [v2 typingAttributes];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v33 + 16) && (v34 = sub_100051964(NSForegroundColorAttributeName), (v35 & 1) != 0))
  {
    sub_10000BA20(*(v33 + 56) + 32 * v34, &v72);

    v36 = sub_1000065A8(0, &qword_100AD4C70);
    if (swift_dynamicCast())
    {
      v37 = *&v70[0];
      sub_1000065A8(0, &unk_100AD43A0);
      if (qword_100AD0370 != -1)
      {
        swift_once();
      }

      if (static NSObject.== infix(_:_:)())
      {
        if (qword_100AD0AC0 != -1)
        {
          swift_once();
        }

        v73 = v36;
        *&v72 = qword_100B31098;
        v38 = qword_100B31098;
        v39 = [v2 typingAttributes];
        v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = v40;
        if (v73)
        {
          sub_10002432C(&v72, v70);
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v40;
          sub_100048100(v70, NSForegroundColorAttributeName, v41);
          v71 = v69;
        }

        else
        {
          sub_100004F84(&v72, &qword_100AD13D0);
          sub_100080694(v70);
          sub_100004F84(v70, &qword_100AD13D0);
        }

        v48 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 setTypingAttributes:v48];

        v21 = &selRef_setRegion_;
      }

      else
      {
      }
    }
  }

  else
  {
  }

  v49 = sub_1000065A8(0, &qword_100AD2A80);
  v50 = sub_100047F28();
  sub_1000065A8(0, &qword_100AD4290);
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v50 v21[97]];

  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  v53 = v68;
  *(inited + 32) = v68;
  *(inited + 64) = v49;
  *(inited + 40) = v50;
  v54 = v53;
  v55 = v50;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100AD9210);
  v56 = [v2 textStorage];
  v57 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 addAttributes:v57 range:{v66, v67}];
}

void sub_1007BC9B8()
{
  v1 = [v0 traitCollection];
  v2 = sub_10010BBF4(v1);

  v3 = [v0 inputDelegate];
  if (v3)
  {
    [v3 textWillChange:v0];
    swift_unknownObjectRelease();
  }

  v4 = [v0 textStorage];
  [v4 beginEditing];

  v5 = [v0 textStorage];
  v6 = [v0 textStorage];
  v7 = [v6 length];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1007C829C;
  *(v9 + 24) = v8;
  v38 = sub_100673DC8;
  v39 = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v36 = sub_10007E0A4;
  v37 = &unk_100A7E8A0;
  v10 = _Block_copy(&aBlock);
  v11 = v0;
  v12 = v2;

  [v5 enumerateAttribute:NSFontAttributeName inRange:0 options:v7 usingBlock:{0x100000, v10}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v14 = [v11 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v15 + 16))
  {

    v17 = v12;
    goto LABEL_13;
  }

  v16 = sub_100051964(NSFontAttributeName);
  v17 = v12;
  if ((v18 & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_10000BA20(*(v15 + 56) + 32 * v16, &aBlock);

  sub_1000065A8(0, &qword_100AD2A78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v26 = &selRef_initWithName_managedObjectModel_;
    v25 = v17;
    goto LABEL_14;
  }

  v19 = [v33[0] fontDescriptor];
  v20 = [v19 symbolicTraits];

  if (!v20)
  {

    goto LABEL_13;
  }

  v21 = [v12 fontDescriptor];
  v22 = [v12 fontDescriptor];
  v23 = [v22 symbolicTraits];

  v24 = [v21 fontDescriptorWithSymbolicTraits:v23 | v20];
  if (!v24)
  {

    v17 = v12;
    goto LABEL_13;
  }

  v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

  v17 = v12;
  v26 = &selRef_initWithName_managedObjectModel_;
LABEL_14:
  v37 = sub_1000065A8(0, &qword_100AD2A78);
  *&aBlock = v25;
  v27 = [v11 v26[445]];
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v28;
  if (v37)
  {
    sub_10002432C(&aBlock, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v33, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
    v34 = v28;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0);
    sub_100080694(v33);
    sub_100004F84(v33, &qword_100AD13D0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setTypingAttributes:isa];

  v31 = [v11 textStorage];
  [v31 endEditing];

  v32 = [v11 inputDelegate];
  if (v32)
  {
    [v32 textDidChange:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1007BCFCC()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isFirstResponder])
  {
    return;
  }

  if (v1[OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController])
  {
    return;
  }

  v6 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (!v6)
  {
    return;
  }

  v7 = objc_opt_self();

  v8 = [v7 currentTraitCollection];
  type metadata accessor for CustomAttributeProviderConcrete();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  Logger.init(subsystem:category:)();
  v10 = v9 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v10 + 4) = 0;
  *v10 = 2;
  v11 = sub_100789EB0(v8, v9, v6);

  if (!v11)
  {
    return;
  }

  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.enhancedSync(_:), v2);
  v12 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v5, v2);
  v35 = v11;
  if ((v12 & 1) == 0)
  {
    v14 = [v7 currentTraitCollection];
    v15 = v11;
    v16 = [v15 string];
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v16];

    v18 = [objc_opt_self() labelColor];
    v19 = sub_10010BBF4(v14);
    v20 = [v15 length];
    v34 = v14;
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v21 = v20;
      v22 = swift_allocObject();
      v22[2] = v19;
      v22[3] = v18;
      v22[4] = 0x4020000000000000;
      v22[5] = 0;
      v22[6] = v17;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1007868E0;
      *(v23 + 24) = v22;
      v42 = sub_1007C82F8;
      v43 = v23;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v40 = sub_10007F714;
      v41 = &unk_100A7E828;
      v24 = _Block_copy(&aBlock);
      v25 = v19;
      v26 = v18;
      v13 = v17;

      [v15 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];

      _Block_release(v24);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v13 = v11;
LABEL_11:
  v27 = sub_1007BB6FC(v13);
  [v1 setAttributedText:v27];
  v28 = sub_1000065A8(0, &qword_100AD2A80);
  v29 = sub_100047F28();
  v41 = v28;
  *&aBlock = v29;
  v30 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v31;
  if (v41)
  {
    sub_10002432C(&aBlock, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v31;
    sub_100048100(v37, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v38 = v36;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0);
    sub_100080694(v37);
    sub_100004F84(v37, &qword_100AD13D0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 setTypingAttributes:isa];
}

void sub_1007BD5CC()
{
  v1 = v0;
  v2 = [v0 textStorage];
  [v2 beginEditing];

  v3 = [v1 textStorage];
  v6.value.location = 0;
  v6.value.length = 0;
  v6.is_nil = 1;
  NSMutableAttributedString.ensureListIntegrity(range:)(v6);

  v4 = [v1 textStorage];
  [v4 endEditing];
}

char *sub_1007BD68C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(v3) initWithFrame:a2 textContainer:{0.0, 0.0, 0.0, 0.0}];
  *&v10[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry] = a1;
  v11 = v10;

  if (!a2)
  {
    (*(v7 + 104))(v9, enum case for JournalFeatureFlags.enhancedSync(_:), v6);
    v12 = JournalFeatureFlags.isEnabled.getter();
    v13 = (*(v7 + 8))(v9, v6);
    if ((v12 & 1) == 0)
    {
      (*((swift_isaMask & *v11) + 0x170))(v13);
    }
  }

  sub_1007BBA50();

  return v11;
}

uint64_t sub_1007BD844()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF1CF0);
  sub_10000617C(v0, qword_100AF1CF0);
  return Logger.init(subsystem:category:)();
}

void sub_1007BD8C8(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView;
  v5 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
  if (v5)
  {
    if (a1)
    {
      sub_1000065A8(0, &qword_100ADC670);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint;
  v10 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint];
  if (v10)
  {
    [v10 constant];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = type metadata accessor for JournalTextView();
  v56.receiver = v2;
  v56.super_class = v13;
  objc_msgSendSuper2(&v56, "textContainerInset");
  v55.receiver = v2;
  v55.super_class = v13;
  objc_msgSendSuper2(&v55, "setTextContainerInset:", v12);
  v14 = *&v2[v4];
  if (v14)
  {
    v15 = v14;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addSubview:v15];
    if ([v15 respondsToSelector:"_accessibilitySetSortPriority:"])
    {
      [v15 _accessibilitySetSortPriority:1000];
      v16 = [v15 subviews];
      sub_1000065A8(0, &qword_100ADC670);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = v9;
      if (v17 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          [v20 _accessibilitySetSortPriority:1000];

          ++v19;
          if (v22 == i)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

LABEL_24:

      v9 = v54;
    }

    v23 = [v15 topAnchor];
    v24 = [v2 contentLayoutGuide];
    v25 = [v24 topAnchor];

    [v2 textContainerInset];
    v26 = [v23 constraintEqualToAnchor:v25 constant:?];

    v27 = *&v2[v9];
    *&v2[v9] = v26;

    v28 = [v15 layoutMarginsGuide];
    v29 = [v28 leftAnchor];

    v30 = [v2 frameLayoutGuide];
    v31 = [v30 leftAnchor];

    [v2 textContainerInset];
    v33 = [v29 constraintEqualToAnchor:v31 constant:v32];

    v34 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint;
    v35 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint];
    *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint] = v33;

    v36 = [v2 frameLayoutGuide];
    v37 = [v36 rightAnchor];

    v38 = [v15 layoutMarginsGuide];
    v39 = [v38 rightAnchor];

    [v2 textContainerInset];
    v41 = [v37 constraintEqualToAnchor:v39 constant:v40];

    v42 = OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint;
    v43 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint];
    *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint] = v41;

    sub_1000F24EC(&unk_100AD4780);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100941D70;
    v45 = *&v2[v9];
    if (v45)
    {
      v46 = v44;
      *(v44 + 32) = v45;
      v47 = *&v2[v34];
      if (v47)
      {
        *(v44 + 40) = v47;
        v48 = *&v2[v42];
        if (v48)
        {
          v49 = objc_opt_self();
          *(v46 + 48) = v48;
          sub_1000065A8(0, &qword_100AD8000);
          v50 = v45;
          v51 = v47;
          v52 = v48;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v49 activateConstraints:isa];

          return;
        }

LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_1007BDED4()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v0 bounds];
      Width = CGRectGetWidth(v23);
      [v0 textContainerInset];
      v7 = Width - v6;
      [v0 textContainerInset];
      v9 = v7 - v8;
      [v3 constant];
      v11 = v10;
      LODWORD(v12) = 1148846080;
      LODWORD(v13) = 1112014848;
      [v4 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v13}];
      v15 = ceil(v11 + v14);
      [v0 textContainerInset];
      if (v16 != v15)
      {
        v17 = type metadata accessor for JournalTextView();
        v21.receiver = v0;
        v21.super_class = v17;
        objc_msgSendSuper2(&v21, "textContainerInset");
        v20.receiver = v0;
        v20.super_class = v17;
        objc_msgSendSuper2(&v20, "setTextContainerInset:", v15);
      }
    }
  }

  v18 = type metadata accessor for JournalTextView();
  v22.receiver = v0;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, "layoutSubviews");
}

uint64_t sub_1007BE024(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  if (*(a1 + 16) && (v10 = sub_100051964(NSFontAttributeName), (v11 & 1) != 0))
  {
    sub_10000BA20(*(a1 + 56) + 32 * v10, &v15);
    sub_100004F84(&v15, &qword_100AD13D0);
    *a5 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    sub_100004F84(&v15, &qword_100AD13D0);
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }
  }

  v12 = sub_100051964(NSForegroundColorAttributeName);
  if (v13)
  {
    sub_10000BA20(*(a1 + 56) + 32 * v12, &v15);
    result = sub_100004F84(&v15, &qword_100AD13D0);
    *a6 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v15 = 0u;
  v16 = 0u;
  result = sub_100004F84(&v15, &qword_100AD13D0);
LABEL_9:
  if (*a5 == 1 && *a6 == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1007BE254()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for JournalTextView();
  objc_msgSendSuper2(&v34, "deleteBackward");
  v2 = [v0 textStorage];
  v3 = [v2 length];

  if (v3 < 1)
  {
    v25 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v26 + 16) || (v27 = sub_100051964(NSParagraphStyleAttributeName), (v28 & 1) == 0))
    {

      return;
    }

    sub_10000BA20(*(v26 + 56) + 32 * v27, v33);

    sub_1000065A8(0, &qword_100ADFF70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v11 = v32;
    v29 = [v32 textLists];
    sub_1000065A8(0, &qword_100AD4290);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      if (v31 >= 1)
      {
        sub_1007BBF88(0);
      }

      return;
    }

LABEL_24:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_18;
  }

  v4 = [v1 textStorage];
  v5 = [v4 string];
  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = v5;

  v7 = [v1 selectedRange];
  v9 = [v6 paragraphRangeForRange:{v7, v8}];
  v11 = v10;

  if (__OFADD__(v9, v11))
  {
    __break(1u);
    goto LABEL_24;
  }

  v12 = [v1 textStorage];
  v13 = [v12 length];

  if (v13 >= &v11[v9])
  {
    if (!v11)
    {
LABEL_12:
      sub_1007BBF88(1);
      return;
    }

    if (v11 == 1)
    {
      v14 = [v1 textStorage];
      v15 = [v14 attributedSubstringFromRange:{v9, 1}];

      v16 = [v15 string];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000961EC(v17, v19);
      v22 = v21;

      if (v22)
      {
        v23 = sub_10057714C(v20, v22);
        if ((v23 & 0x100000000) == 0)
        {
          v24 = v23;

          if ((v24 - 14) > 0xFFFFFFFB || (v24 - 8232) < 2 || v24 == 133)
          {
            goto LABEL_12;
          }

          return;
        }

LABEL_26:
        __break(1u);
      }
    }
  }
}

void sub_1007BE64C()
{
  v1 = [v0 textStorage];
  v2 = [v1 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String.count.getter();

  if (v3 >= 1)
  {
    v4 = [v0 textStorage];
    v5 = [v4 string];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = sub_1000961EC(v6, v8);
    v11 = v10;

    if (v11)
    {
      if (v9 == 10 && v11 == 0xE100000000000000)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return;
        }
      }

      v13 = String.count.getter();
      v14 = [v0 textStorage];
      v15 = [v0 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v17 = [v0 selectedRange];
      [v14 setAttributes:isa range:{v17, v18}];

      v19 = [v0 textStorage];
      v20 = [v0 typingAttributes];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v0 textStorage];
      v22 = [v21 length];

      if (__OFSUB__(v22, v13))
      {
        __break(1u);
      }

      else
      {
        [v19 setAttributes:v23 range:{&v22[-v13], v13}];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1007BE9DC(uint64_t a1, unint64_t a2, uint64_t a3, NSString a4)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_1000F5D40(a1, a2);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = v8;
  v11 = [v4 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v12 + 16) || (v55 = v4, v13 = sub_100051964(NSParagraphStyleAttributeName), (v14 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_10000BA20(*(v12 + 56) + 32 * v13, &v58);

  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    return 0;
  }

  [v56[0] mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v15 = sub_1000065A8(0, &qword_100AD2A80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v53 = v56[0];
  v54 = v15;
  v16 = [v4 textStorage];
  result = [v16 string];
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = result;

  v18 = [v17 paragraphRangeForRange:{a3, a4}];
  v20 = v19;

  v51 = &v20[v18];
  if (__OFADD__(v18, v20))
  {
    __break(1u);
    goto LABEL_31;
  }

  v21 = [v4 textStorage];
  v22 = [v21 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = String.count.getter();

  v24 = [v4 textStorage];
  v25 = [v24 string];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v27;

  v28 = sub_1000961EC(v26, a4);
  v30 = v29;

  if (v30)
  {
    result = sub_10057714C(v28, v30);
    if ((result & 0x100000000) != 0)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v31 = result;

    if ((v31 - 14) <= 0xFFFFFFFB && (v31 - 8232) >= 2 && v31 != 133)
    {
      goto LABEL_15;
    }
  }

  if (v23 == v51)
  {
LABEL_15:
    v32 = [v4 textStorage];
    v33 = [v32 attributesAtIndex:v18 effectiveRange:0];

    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = [v4 textStorage];
    v34 = objc_allocWithZone(NSAttributedString);
    a4 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v34 initWithString:a4 attributes:isa];

    [v52 appendAttributedString:v36];
  }

  v37 = [v4 textStorage];
  v20 = [v37 length];

  if (__OFADD__(v18, v10))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v20 >= &v10[v18])
  {
    v38 = [v4 textStorage];
    [v38 deleteCharactersInRange:{v18, v10}];
  }

  [v4 setSelectedRange:{v18, 0}];
  v39 = [v4 textStorage];
  result = [v39 string];
  if (!result)
  {
    goto LABEL_34;
  }

  v40 = result;

  v20 = [v40 paragraphRangeForRange:{v18, 0}];
  a4 = v41;

  v18 = v9;
  v10 = v56[0];
  v42 = [v56[0] textLists];
  sub_1000065A8(0, &qword_100AD4290);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v58 = v43;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_32:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v44 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setTextLists:v44];

  v45 = [v55 textStorage];
  [v45 addAttribute:NSParagraphStyleAttributeName value:v10 range:{v20, a4}];

  v59 = v54;
  *&v58 = v10;
  v46 = v10;
  v47 = [v55 typingAttributes];
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = v48;
  if (v59)
  {
    sub_10002432C(&v58, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v56, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v57 = v48;
  }

  else
  {
    sub_100004F84(&v58, &qword_100AD13D0);
    sub_100080694(v56);
    sub_100004F84(v56, &qword_100AD13D0);
  }

  v50 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v55 setTypingAttributes:v50];

  return 1;
}

double sub_1007BF264()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for JournalTextView();
  objc_msgSendSuper2(&v18, "accessibilityFrame");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
  if (v9)
  {
    [v9 accessibilityFrame];
    v24.origin.x = v2;
    v24.origin.y = v4;
    v24.size.width = v6;
    v24.size.height = v8;
    v20 = CGRectIntersection(v19, v24);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    if (!CGRectIsNull(v20))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (CGRectGetHeight(v21) > 4.0)
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        memset(&slice, 0, sizeof(slice));
        v14 = CGRectGetHeight(v22) + -4.0;
        memset(&v16, 0, sizeof(v16));
        v23.origin.x = v2;
        v23.origin.y = v4;
        v23.size.width = v6;
        v23.size.height = v8;
        CGRectDivide(v23, &slice, &v16, v14, CGRectMinYEdge);
        return v16.origin.x;
      }
    }
  }

  return v2;
}

id sub_1007BF4D4(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    result = [v2 isEditing];
    if (!result)
    {
      return result;
    }

    sub_1000082B4(a2, v42, &qword_100AD13D0);
    v6 = v43;
    if (v43)
    {
      v7 = sub_10000CA14(v42, v43);
      v8 = *(v6 - 8);
      v9 = __chkstk_darwin(v7);
      v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v11, v6);
      sub_10000BA7C(v42);
    }

    else
    {
      v12 = 0;
    }

    v13 = type metadata accessor for JournalTextView();
    v39.receiver = v2;
    v39.super_class = v13;
    v14 = objc_msgSendSuper2(&v39, "canPerformAction:withSender:", a1, v12);
    swift_unknownObjectRelease();
    if (v14)
    {
      return [v2 allowsEditingTextAttributes];
    }

    return 0;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      sub_1000082B4(a2, v42, &qword_100AD13D0);
      v15 = v43;
      if (v43)
      {
        v16 = sub_10000CA14(v42, v43);
        v17 = *(v15 - 8);
        v18 = __chkstk_darwin(v16);
        v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v20, v18);
        v21 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v17 + 8))(v20, v15);
        sub_10000BA7C(v42);
      }

      else
      {
        v21 = 0;
      }

      v33 = type metadata accessor for JournalTextView();
      v40.receiver = v2;
      v40.super_class = v33;
      v34 = objc_msgSendSuper2(&v40, "canPerformAction:withSender:", a1, v21);
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [objc_opt_self() generalPasteboard];
        v36 = [v35 hasStrings];

        return v36;
      }

      return 0;
    }

    if (static Selector.== infix(_:_:)())
    {
      v22 = UITextView.selectedRanges.getter();
      v23 = *(v22 + 16) + 1;
      v24 = 40;
      do
      {
        if (!--v23)
        {

          return 0;
        }

        v25 = *(v22 + v24);
        v24 += 16;
      }

      while (v25 <= 0);

      return (([v2 isEditing] & 1) != 0);
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0 && (static Selector.== infix(_:_:)() & 1) == 0)
    {
      sub_1000082B4(a2, v42, &qword_100AD13D0);
      v26 = v43;
      if (v43)
      {
        v27 = sub_10000CA14(v42, v43);
        v28 = *(v26 - 8);
        v29 = __chkstk_darwin(v27);
        v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v31, v29);
        v32 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v28 + 8))(v31, v26);
        sub_10000BA7C(v42);
      }

      else
      {
        v32 = 0;
      }

      v37 = type metadata accessor for JournalTextView();
      v41.receiver = v2;
      v41.super_class = v37;
      v38 = objc_msgSendSuper2(&v41, "canPerformAction:withSender:", a1, v32);
      swift_unknownObjectRelease();
      return v38;
    }
  }

  result = [v2 isEditing];
  if (result)
  {
    return [v2 allowsEditingTextAttributes];
  }

  return result;
}

void sub_1007BFAA8(void *a1)
{
  v2 = v1;
  if (![a1 isEmpty])
  {
    goto LABEL_32;
  }

  sub_1000065A8(0, &unk_100AD43A0);
  v4 = [a1 start];
  v5 = [v1 beginningOfDocument];
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = [v2 interactions];
  sub_1000F24EC(&qword_100AF1DF8);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_35:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v8 & 0xC000000000000001;
  v28 = v2;
  v11 = v2;
  v12 = 0;
  v2 = &_s7SwiftUI9AnimationV9easeInOutACvgZ_ptr_0;
  while (v9 != v12)
  {
    if (v10)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      [v14 locationInView:v11];
      v16 = v15;
      v18 = v17;
      swift_unknownObjectRelease();
      if (v16 < 1.79769313e308 && v18 < 1.79769313e308)
      {
        v9 = v12;
        break;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (__OFADD__(v12++, 1))
    {
      goto LABEL_34;
    }
  }

  if (!(v8 >> 62))
  {
    if (v9 != *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v9 == _CocoaArrayWrapper.endIndex.getter())
  {
LABEL_31:

    v2 = v28;
LABEL_32:
    sub_1000065A8(0, &unk_100ADC630);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v29.receiver = v2;
    v29.super_class = type metadata accessor for JournalTextView();
    objc_msgSendSuper2(&v29, "editMenuForTextRange:suggestedActions:", a1, isa);

    return;
  }

LABEL_22:
  if (v10)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
LABEL_38:
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  [v20 locationInView:v11];
  v22 = v21;
  v24 = v23;
  swift_unknownObjectRelease();

  if (v22 >= 1.79769313e308)
  {
LABEL_39:

    goto LABEL_40;
  }

  v2 = v28;
  if (v24 < 1.79769313e308)
  {

    [v11 textContainerInset];
    if (v24 < v25)
    {
      sub_1000065A8(0, &unk_100AD4D00);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v30.value.super.isa = 0;
      v30.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, (v8 + 32));
      return;
    }

    goto LABEL_32;
  }

LABEL_40:
  __break(1u);
}

void sub_1007BFF20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id a5, void *a6)
{
  v10 = [a5 textStorage];
  sub_1000082B4(a1, v19, &qword_100AD13D0);
  if (!v20)
  {
    sub_100004F84(v19, &qword_100AD13D0);
    goto LABEL_8;
  }

  sub_1000065A8(0, &qword_100AD2A78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v17 = a6;
    goto LABEL_9;
  }

  v11 = [v18 fontDescriptor];
  v12 = [v11 symbolicTraits];

  if (!v12 || (v13 = [a6 fontDescriptor], v14 = objc_msgSend(a6, "fontDescriptor"), v15 = objc_msgSend(v14, "symbolicTraits"), v14, v16 = objc_msgSend(v13, "fontDescriptorWithSymbolicTraits:", v15 | v12), v13, !v16))
  {

    goto LABEL_8;
  }

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];

LABEL_9:
  [v10 addAttribute:NSFontAttributeName value:v17 range:{a2, a3}];
}

id sub_1007C0124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007C01F4(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v7 + 16) || (v8 = sub_100051964(NSParagraphStyleAttributeName), (v9 & 1) == 0))
  {

    return;
  }

  sub_10000BA20(*(v7 + 56) + 32 * v8, &v57);

  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v10 = *&v55[0];
  v11 = [v3 textStorage];
  v12 = [v11 length];

  if (v12 == a1 && !a2)
  {
    v13 = [v3 textStorage];
    [v13 beginEditing];

    v14 = [v3 textStorage];
    v15 = [v3 typingAttributes];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = objc_allocWithZone(NSAttributedString);
    v17 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v16 initWithString:v17 attributes:isa];

    [v14 appendAttributedString:v19];
    v20 = [v3 textStorage];
    [v20 endEditing];

    return;
  }

  [*&v55[0] firstLineHeadIndent];
  *v22.i64 = *v21.i64 - trunc(*v21.i64);
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v54 = vnegq_f64(v23);
  v24 = *vbslq_s8(v54, v22, v21).i64 + -0.1;
  [*&v55[0] headIndent];
  if (fabs(v24) >= 0.01)
  {
    goto LABEL_28;
  }

  *v26.i64 = *v25.i64 - trunc(*v25.i64);
  if (fabs(*vbslq_s8(v54, v26, v25).i64 + -0.1) >= 0.01)
  {
    goto LABEL_28;
  }

  v27 = [v3 typingAttributes];
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v28 + 16) && (v29 = sub_100051964(NSForegroundColorAttributeName), (v30 & 1) != 0))
  {
    sub_10000BA20(*(v28 + 56) + 32 * v29, &v57);

    sub_1000065A8(0, &qword_100AD4C70);
    if (swift_dynamicCast())
    {
      v31 = *&v55[0];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v31 = 0;
LABEL_17:
  if (qword_100AD0AC0 == -1)
  {
    if (v31)
    {
      goto LABEL_19;
    }

LABEL_28:

    return;
  }

  swift_once();
  if (!v31)
  {
    goto LABEL_28;
  }

LABEL_19:
  v32 = qword_100B31098;
  v33 = sub_1000065A8(0, &qword_100AD4C70);
  v34 = v32;
  v35 = v33;
  LOBYTE(v33) = static NSObject.== infix(_:_:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_28;
  }

  v36 = [v3 textStorage];
  v37 = [v36 string];
  if (v37)
  {
    v38 = v37;

    v39 = [v3 selectedRange];
    v41 = [v38 paragraphRangeForRange:{v39, v40}];
    v52 = v42;
    v53 = v41;

    if (qword_100AD0370 != -1)
    {
      swift_once();
    }

    v58 = v35;
    *&v57 = qword_100B30368;
    v51 = qword_100B30368;
    v43 = [v3 typingAttributes];
    v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = v44;
    if (v58)
    {
      sub_10002432C(&v57, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100048100(v55, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
      v56 = v44;
    }

    else
    {
      sub_100004F84(&v57, &qword_100AD13D0);
      sub_100080694(v55);
      sub_100004F84(v55, &qword_100AD13D0);
    }

    v46 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 setTypingAttributes:v46];

    v47 = [v3 textStorage];
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSForegroundColorAttributeName;
    *(inited + 64) = v35;
    *(inited + 40) = v51;
    v49 = NSForegroundColorAttributeName;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210);
    v50 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v47 addAttributes:v50 range:{v53, v52}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1007C08E4(void *a1)
{
  [a1 action];
  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  [v1 selectedRange];
  if (v3)
  {
    v22[0] = [v1 selectedRange];
    v22[1] = v4;
    v5 = [v1 textStorage];
    v6 = [v5 attributesAtIndex:v22[0] effectiveRange:v22];

    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v6) = sub_1007C6D58(v7);

    [a1 setState:v6 & 1];
    return;
  }

  v8 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v9 + 16) || (v10 = sub_100051964(NSParagraphStyleAttributeName), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_10000BA20(*(v9 + 56) + 32 * v10, v22);

  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    [a1 setState:0];
    return;
  }

  [v21 firstLineHeadIndent];
  *v13.i64 = *v12.i64 - trunc(*v12.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v20 = vnegq_f64(v14);
  v15 = *vbslq_s8(v20, v13, v12).i64 + -0.1;
  [v21 headIndent];
  *v17.i64 = *v16.i64 - trunc(*v16.i64);
  v18 = fabs(v15) < 0.01;
  v19 = fabs(*vbslq_s8(v20, v17, v16).i64 + -0.1) < 0.01 && v18;
  [a1 setState:v19];
}

void sub_1007C0C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7, char **a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1000082B4(a1, v40, &qword_100AD13D0);
    if (!v41)
    {
      sub_100004F84(v40, &qword_100AD13D0);
      return;
    }

    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      [v39 firstLineHeadIndent];
      *v16.i64 = *v15.i64 - trunc(*v15.i64);
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v37 = vnegq_f64(v17);
      v18 = *vbslq_s8(v37, v16, v15).i64 + -0.1;
      [v39 headIndent];
      v36 = v19;
      v20 = *a6;
      v21 = NSNotFound.getter();
      if (fabs(v18) < 0.01)
      {
        *v22.i64 = *v36.i64 - trunc(*v36.i64);
        if (fabs(*vbslq_s8(v37, v22, v36).i64 + -0.1) < 0.01)
        {
          if (v20 == v21)
          {
            v23 = a3 + a2;
            goto LABEL_22;
          }

          v29 = *(a6 + 1);
          v30 = *a6 + v29;
          if (__OFADD__(*a6, v29))
          {
            __break(1u);
          }

          else
          {
            v23 = a2 + a3;
            if (!__OFADD__(a2, a3))
            {
              if (v30 <= v23)
              {
                v30 = a2 + a3;
              }

              if (*a6 < a2)
              {
                a2 = *a6;
              }

              a3 = v30 - a2;
              if (__OFSUB__(v30, a2))
              {
                __break(1u);
                return;
              }

LABEL_22:
              *a6 = a2;
              *(a6 + 1) = a3;
              if (v23 == a7[1] + *a7)
              {
                a6 = *a8;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *a8 = a6;
                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_24:
                  v33 = *(a6 + 2);
                  v32 = *(a6 + 3);
                  if (v33 >= v32 >> 1)
                  {
                    *a8 = sub_1003E5668((v32 > 1), v33 + 1, 1, a6);
                  }

                  v34 = *a8;
                  *(v34 + 2) = v33 + 1;
                  v35 = &v34[16 * v33];
                  *(v35 + 4) = a2;
                  *(v35 + 5) = a3;
                  return;
                }

LABEL_31:
                a6 = sub_1003E5668(0, *(a6 + 2) + 1, 1, a6);
                *a8 = a6;
                goto LABEL_24;
              }

LABEL_27:

              return;
            }
          }

          __break(1u);
          goto LABEL_31;
        }
      }

      if (v20 == v21)
      {
        goto LABEL_27;
      }

      v38 = *a6;
      v24 = *a8;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_1003E5668(0, *(v24 + 2) + 1, 1, v24);
        *a8 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1003E5668((v26 > 1), v27 + 1, 1, v24);
        *a8 = v24;
      }

      *(v24 + 2) = v27 + 1;
      *&v24[16 * v27 + 32] = v38;
      v28 = NSNotFound.getter();

      *a6 = v28;
      *(a6 + 1) = 0;
    }
  }
}

BOOL sub_1007C0F60()
{
  v1 = [v0 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16) && (v3 = sub_100051964(NSParagraphStyleAttributeName), (v4 & 1) != 0))
  {
    sub_10000BA20(*(v2 + 56) + 32 * v3, v15);

    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      [v14 firstLineHeadIndent];
      *v6.i64 = *v5.i64 - trunc(*v5.i64);
      v7.f64[0] = NAN;
      v7.f64[1] = NAN;
      v13 = vnegq_f64(v7);
      v8 = *vbslq_s8(v13, v6, v5).i64 + -0.1;
      [v14 headIndent];
      v12 = v9;

      if (fabs(v8) < 0.01)
      {
        *v10.i64 = *v12.i64 - trunc(*v12.i64);
        return fabs(*vbslq_s8(v13, v10, v12).i64 + -0.1) < 0.01;
      }
    }
  }

  else
  {
  }

  return 0;
}

id sub_1007C1110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 textStorage];
  result = [v6 string];
  if (!result)
  {
    goto LABEL_35;
  }

  v8 = result;

  v9 = [v8 paragraphRangeForRange:{a1, a2}];
  v11 = v10;

  v12 = [v3 undoManager];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    type metadata accessor for JournalTextView();
    NSUndoManager.registerUndo<A>(withTarget:handler:)();
  }

  v15 = [v3 textStorage];
  [v15 beginEditing];

  v16 = [v3 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v17 + 16) && (v18 = sub_100051964(NSParagraphStyleAttributeName), (v19 & 1) != 0))
  {
    sub_10000BA20(*(v17 + 56) + 32 * v18, &aBlock);

    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      v20 = *&v63[0];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v20 = 0;
LABEL_10:
  v21 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v22 = v21;
  if (v20)
  {
    [v21 setParagraphStyle:v20];
  }

  else
  {
    [v21 setParagraphSpacingBefore:8.0];
  }

  [v22 setFirstLineHeadIndent:14.1];
  [v22 setHeadIndent:14.1];
  v60 = sub_1000065A8(0, &qword_100AD2A80);
  *&aBlock = v22;
  v23 = [v3 typingAttributes];
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v24;
  if (v60)
  {
    sub_10002432C(&aBlock, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v63, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
    v64 = v24;
  }

  else
  {
    sub_100004F84(&aBlock, &qword_100AD13D0);
    sub_100080694(v63);
    sub_100004F84(v63, &qword_100AD13D0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = &selRef_setSuggestedName_;
  [v3 setTypingAttributes:isa];

  v28 = [v3 typingAttributes];
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = sub_1007C6E84(v29);

  if (!v30)
  {
    v29 = NSForegroundColorAttributeName;
    if (qword_100AD0370 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v27 = (v57 + v11);
    if (!__OFADD__(v57, v11))
    {
      break;
    }

    __break(1u);
LABEL_33:
    swift_once();
LABEL_20:
    v31 = qword_100B30368;
    v60 = sub_1000065A8(0, &qword_100AD4C70);
    *&aBlock = v31;
    v32 = v31;
    v33 = [v3 typingAttributes];
    v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v34;
    if (v60)
    {
      sub_10002432C(&aBlock, v63);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_100048100(v63, v29, v35);
      v64 = v34;
    }

    else
    {
      sub_100004F84(&aBlock, &qword_100AD13D0);
      sub_100080694(v63);
      sub_100004F84(v63, &qword_100AD13D0);
    }

    v29 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v3 v27[6]];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v36 = [v3 textStorage];
  v37 = [v36 length];

  if (v37 < v27)
  {
LABEL_26:
    v38 = [v3 selectedTextRange];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 start];

      if (v40)
      {
        v41 = [v3 beginningOfDocument];
        v42 = [v3 offsetFromPosition:v41 toPosition:v40];

        v43 = objc_allocWithZone(NSMutableAttributedString);
        v44 = String._bridgeToObjectiveC()();
        v45 = [v43 initWithString:v44];

        v46 = [v3 typingAttributes];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v45 setAttributes:v47 range:{0, 0}];

        v48 = [v3 textStorage];
        [v48 insertAttributedString:v45 atIndex:v42];
      }
    }

    v49 = 0;
    goto LABEL_31;
  }

  v50 = [v3 textStorage];
  v51 = swift_allocObject();
  *(v51 + 16) = v3;
  v52 = swift_allocObject();
  v49 = sub_1007C822C;
  *(v52 + 16) = sub_1007C822C;
  *(v52 + 24) = v51;
  v61 = sub_1007C82F8;
  v62 = v52;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v59 = sub_10007F714;
  v60 = &unk_100A7E468;
  v53 = _Block_copy(&aBlock);
  v54 = v3;

  [v50 enumerateAttributesInRange:v57 options:v11 usingBlock:{0x100000, v53}];

  _Block_release(v53);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
LABEL_31:
    v56 = [v3 textStorage];
    [v56 endEditing];

    return sub_100004DF8(v49);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void sub_1007C1A28(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v8 = &selRef_setRegion_;
  v9 = [v4 textStorage];
  v10 = [v9 string];
  if (v10)
  {
    v11 = v10;

    v12 = [v11 paragraphRangeForRange:{a1, a2}];
    v14 = v13;

    v15 = [v4 undoManager];
    if (v15)
    {
      v16 = v15;
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      *(v17 + 24) = v14;
      type metadata accessor for JournalTextView();
      NSUndoManager.registerUndo<A>(withTarget:handler:)();
    }

    v18 = [v4 textStorage];
    [v18 beginEditing];

    v19 = [v4 textStorage];
    v20 = &selRef_setSuggestedName_;
    v21 = [v19 length];

    if (v21 >= 1)
    {
      if (v14)
      {
        v22 = &v12[v14];
        if (__OFADD__(v12, v14))
        {
          __break(1u);
        }

        else
        {
          v23 = [v4 textStorage];
          v24 = [v23 length];

          if (v24 < v22)
          {
            goto LABEL_8;
          }

          v26 = [v4 textStorage];
          v27 = swift_allocObject();
          *(v27 + 16) = v4;
          *(v27 + 24) = ObjectType;
          v20 = swift_allocObject();
          v20[2] = sub_1007C8218;
          v20[3] = v27;
          v58 = sub_1007C82F8;
          v59 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v56 = sub_10007F714;
          v57 = &unk_100A7E1C0;
          v22 = _Block_copy(&aBlock);
          v3 = v59;
          v28 = v4;

          [v26 enumerateAttributesInRange:v12 options:v14 usingBlock:{0x100000, v22}];

          _Block_release(v22);
          LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

          if ((v26 & 1) == 0)
          {
            v25 = sub_1007C8218;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_8:
      v25 = 0;
LABEL_14:
      v29 = [v4 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v30 + 16) && (v31 = sub_100051964(NSParagraphStyleAttributeName), (v32 & 1) != 0))
      {
        sub_10000BA20(*(v30 + 56) + 32 * v31, &aBlock);

        sub_1000065A8(0, &qword_100ADFF70);
        if (swift_dynamicCast())
        {
          v33 = v53[0];
          [v53[0] mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v34 = sub_1000065A8(0, &qword_100AD2A80);
          if (swift_dynamicCast())
          {
            v52 = v25;
            [v53[0] setFirstLineHeadIndent:0.0];
            [v53[0] setHeadIndent:0.0];
            v57 = v34;
            *&aBlock = v53[0];
            v35 = v53[0];
            v36 = [v4 typingAttributes];
            v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v54 = v37;
            if (v57)
            {
              sub_10002432C(&aBlock, v53);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_100048100(v53, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
              v54 = v37;
            }

            else
            {
              sub_100004F84(&aBlock, &qword_100AD13D0);
              sub_100080694(v53);
              sub_100004F84(v53, &qword_100AD13D0);
            }

            v8 = &selRef_setRegion_;
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v4 setTypingAttributes:isa];

            v25 = v52;
          }

          else
          {
          }
        }
      }

      else
      {
      }

      v39 = [v4 typingAttributes];
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v40 + 16) && (v22 = NSForegroundColorAttributeName, v41 = sub_100051964(NSForegroundColorAttributeName), (v42 & 1) != 0))
      {
        v50 = v25;
        sub_10000BA20(*(v40 + 56) + 32 * v41, &aBlock);

        v3 = sub_1000065A8(0, &qword_100AD4C70);
        if (swift_dynamicCast())
        {
          v20 = v53[0];
          sub_1000065A8(0, &unk_100AD43A0);
          if (qword_100AD0370 == -1)
          {
LABEL_25:
            if (static NSObject.== infix(_:_:)())
            {
              if (qword_100AD0AC0 != -1)
              {
                swift_once();
              }

              v57 = v3;
              *&aBlock = qword_100B31098;
              v43 = qword_100B31098;
              v44 = [v4 typingAttributes];
              v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v54 = v45;
              if (v57)
              {
                sub_10002432C(&aBlock, v53);
                v46 = swift_isUniquelyReferenced_nonNull_native();
                sub_100048100(v53, v22, v46);
                v54 = v45;
              }

              else
              {
                sub_100004F84(&aBlock, &qword_100AD13D0);
                sub_100080694(v53);
                sub_100004F84(v53, &qword_100AD13D0);
              }

              v49 = Dictionary._bridgeToObjectiveC()().super.isa;

              [v4 setTypingAttributes:v49];
            }

            v25 = v50;
            goto LABEL_31;
          }

LABEL_41:
          swift_once();
          goto LABEL_25;
        }

        v25 = v50;
      }

      else
      {
      }

LABEL_31:
      [v4 setNeedsLayout];
      v47 = [v4 v8[417]];
      [v47 endEditing];

      sub_100004DF8(v25);
      return;
    }

    sub_1007BBF88(0);
    sub_100080784();
    v51 = [v4 textStorage];
    [v51 endEditing];
  }

  else
  {
    __break(1u);
  }
}

void sub_1007C22F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a1 + 16) && (v9 = sub_100051964(NSParagraphStyleAttributeName), (v10 & 1) != 0) && (sub_10000BA20(*(a1 + 56) + 32 * v9, v18), sub_1000065A8(0, &qword_100ADFF70), swift_dynamicCast()))
  {
    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v13 = v12;
  if (v11)
  {
    [v12 setParagraphStyle:v11];
  }

  else
  {
    [v12 setParagraphSpacingBefore:8.0];
  }

  [v13 setFirstLineHeadIndent:14.1];
  [v13 setHeadIndent:14.1];
  v14 = [a5 textStorage];
  [v14 addAttribute:NSParagraphStyleAttributeName value:v13 range:{a2, a3}];

  v15 = sub_1007C6E84(a1);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [a5 textStorage];
    if (qword_100AD0370 != -1)
    {
      swift_once();
    }

    [v16 addAttribute:? value:? range:?];
  }
}

void sub_1007C2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v9 = sub_100051964(NSParagraphStyleAttributeName);
  if ((v10 & 1) == 0)
  {
    return;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v9, v16);
  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  [v15 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000065A8(0, &qword_100AD2A80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  [v15 setFirstLineHeadIndent:0.0];
  [v15 setHeadIndent:0.0];
  v11 = [a5 textStorage];
  [v11 addAttribute:NSParagraphStyleAttributeName value:v15 range:{a2, a3}];

  if (!*(a1 + 16) || (v12 = sub_100051964(NSForegroundColorAttributeName), (v13 & 1) == 0) || (sub_10000BA20(*(a1 + 56) + 32 * v12, v16), sub_1000065A8(0, &qword_100AD4C70), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:

    return;
  }

  sub_1000065A8(0, &unk_100AD43A0);
  if (qword_100AD0370 != -1)
  {
    swift_once();
  }

  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_17;
  }

  v14 = [a5 textStorage];
  if (qword_100AD0AC0 != -1)
  {
    swift_once();
  }

  [v14 addAttribute:NSForegroundColorAttributeName value:qword_100B31098 range:{a2, a3}];
}

uint64_t sub_1007C2818(uint64_t a1)
{
  v3 = type metadata accessor for UITextFormattingViewController.ChangeValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for UITextFormattingViewController.ChangeValue.bold(_:) || v8 == enum case for UITextFormattingViewController.ChangeValue.italic(_:) || v8 == enum case for UITextFormattingViewController.ChangeValue.underline(_:) || v8 == enum case for UITextFormattingViewController.ChangeValue.strikethrough(_:))
  {
    sub_1007BE64C();
    return 1;
  }

  if (v8 == enum case for UITextFormattingViewController.ChangeValue.textColor(_:))
  {
    v14 = v1;
    (*(v4 + 96))(v7, v3);
    v15 = *v7;
    if (!sub_1004173E4() && !sub_100417348())
    {
      v43 = &v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
      v44 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
      if (v44)
      {
        v12 = 1;
        goto LABEL_39;
      }

      v52 = v15;
      v12 = 1;
      v51 = v15;
LABEL_47:
      *v43 = v51;
      goto LABEL_48;
    }

    v16 = [v1 selectedRange];
    [v1 selectedRange];
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      __break(1u);
    }

    else
    {
      v19 = [v1 textStorage];
      v20 = [v19 length];

      if (v20 >= v18)
      {
        [v1 selectedRange];
        if (v21 >= 1)
        {
          v22 = [v1 textStorage];
          v23 = [v22 attributesAtIndex:objc_msgSend(v1 effectiveRange:{"selectedRange"), 0}];

          type metadata accessor for Key(0);
          sub_100051798(&qword_100ADC650, type metadata accessor for Key);
          v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (qword_100AD0AC0 != -1)
          {
            swift_once();
          }

          v25 = qword_100B31098;
          v57 = sub_1000065A8(0, &qword_100AD4C70);
          *&v56 = v25;
          sub_10002432C(&v56, v54);
          v26 = v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v24;
          sub_100048100(v54, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
          v28 = v14;
          v29 = [v14 textStorage];
          v30.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v31 = [v14 selectedRange];
          [v29 setAttributes:v30.super.isa range:{v31, v32}];

          goto LABEL_38;
        }
      }

      v16 = NSForegroundColorAttributeName;
      if (qword_100AD0AC0 == -1)
      {
LABEL_27:
        v35 = qword_100B31098;
        v57 = sub_1000065A8(0, &qword_100AD4C70);
        *&v56 = v35;
        v36 = v35;
        v37 = [v1 typingAttributes];
        type metadata accessor for Key(0);
        sub_100051798(&qword_100ADC650, type metadata accessor for Key);
        v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v55 = v38;
        if (v57)
        {
          sub_10002432C(&v56, v54);
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v53 = v38;
          sub_100048100(v54, v16, v39);
          v55 = v53;
        }

        else
        {
          sub_100004F84(&v56, &qword_100AD13D0);
          sub_100080694(v54);
          sub_100004F84(v54, &qword_100AD13D0);
        }

        v30.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v28 = v14;
        [v14 setTypingAttributes:v30.super.isa];
LABEL_38:

        v45 = *&v28[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
        *&v28[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor] = 0;

        v12 = 0;
        v43 = &v28[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
        v44 = *&v28[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
        if (v44)
        {
LABEL_39:
          sub_1000065A8(0, &qword_100AD4C70);
          v46 = v15;
          v47 = v44;
          v48 = static NSObject.== infix(_:_:)();

          v49 = v15;
          if ((v12 & 1) == 0)
          {

            v49 = 0;
          }

          v50 = *v43;
          *v43 = v49;

          if (v48)
          {

            return v12;
          }

LABEL_48:
          sub_1007BE64C();

          return v12;
        }

        v51 = 0;
        goto LABEL_47;
      }
    }

    swift_once();
    goto LABEL_27;
  }

  if (v8 == enum case for UITextFormattingViewController.ChangeValue.textList(_:))
  {
    (*(v4 + 8))(v7, v3);
    sub_1007BE64C();
    v33 = [v1 selectedRange];
    sub_1007C01F4(v33, v34);
    return 1;
  }

  if (v8 != enum case for UITextFormattingViewController.ChangeValue.toggleBlockquote(_:))
  {
    (*(v4 + 8))(v7, v3);
    return 1;
  }

  (*(v4 + 96))(v7, v3);
  v40 = *v7;
  v41 = [v1 selectedRange];
  if (v40 == 1)
  {
    sub_1007C1110(v41, v42);
  }

  else
  {
    sub_1007C1A28(v41, v42);
  }

  return 0;
}

id sub_1007C3048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for UITextFormattingViewController.FormattingDescriptor();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v28 - v9;
  [v2 selectedRange];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v2 selectedRange];
  [v2 selectedRange];
  v14 = &v12[v13];
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  result = [v2 attributedText];
  if (result)
  {
    v16 = result;
    v17 = [result length];

    if (v17 < v14)
    {
LABEL_5:
      v18 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      UITextFormattingViewController.FormattingDescriptor.init(attributes:)();
      sub_1007C0F60();
      UITextFormattingViewController.FormattingDescriptor._blockquote.setter();
      v19 = [v2 typingAttributes];
      v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v20 + 16) && (v21 = sub_100051964(NSStrikethroughStyleAttributeName), (v22 & 1) != 0))
      {
        sub_10000BA20(*(v20 + 56) + 32 * v21, v30);
      }

      else
      {

        memset(v30, 0, sizeof(v30));
      }

      sub_100004F84(v30, &qword_100AD13D0);
      UITextFormattingViewController.FormattingDescriptor.strikethroughPresent.setter();
      return (*(v4 + 32))(v29, v10, v3);
    }

    result = [v2 attributedText];
    if (result)
    {
      [v2 selectedRange];
      UITextFormattingViewController.FormattingDescriptor.init(string:range:)();
      v23 = [v2 selectedRange];
      *&v30[0] = v23;
      *(&v30[0] + 1) = v24;
      v25 = [v2 textStorage];
      v26 = [v25 attributesAtIndex:v23 effectiveRange:v30];

      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1007C6D58(v27);

      UITextFormattingViewController.FormattingDescriptor._blockquote.setter();
      v10 = v6;
      return (*(v4 + 32))(v29, v10, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1007C3554(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (!a1 || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_100AD0AB8 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_10000617C(v73, qword_100AF1CF0);
    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v78 = _swift_stdlib_bridgeErrorToNSError();
        v79 = v78;
      }

      else
      {
        v78 = 0;
        v79 = 0;
      }

      *(v76 + 4) = v78;
      *v77 = v79;
      _os_log_impl(&_mh_execute_header, v74, v75, "Failed to load text for pasting: %@", v76, 0xCu);
      sub_100004F84(v77, &unk_100AD4BB0);
    }

    [a3 setNoResult];
    v72 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v82 = a8;
  v83 = a6;
  v91 = _swiftEmptyArrayStorage;
  v17 = *(a4 + 16);
  swift_unknownObjectRetain();
  v80 = a3;
  v81 = a7;
  if (v17)
  {
    v18 = sub_100051964(NSParagraphStyleAttributeName);
    if (v19)
    {
      sub_10000BA20(*(a4 + 56) + 32 * v18, &aBlock);
      sub_1000065A8(0, &qword_100ADFF70);
      if (swift_dynamicCast())
      {
        v20 = [v84 textLists];
        sub_1000065A8(0, &qword_100AD4290);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v91 = v21;
      }
    }
  }

  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];
  v23 = [v22 length];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1007C8278;
  *(v25 + 24) = v24;
  v89 = sub_100673DC8;
  v90 = v25;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10007E0A4;
  v88 = &unk_100A7E5D0;
  v26 = _Block_copy(&aBlock);
  v27 = v22;

  [v27 enumerateAttribute:NSLinkAttributeName inRange:0 options:v23 usingBlock:{0, v26}];
  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_28;
  }

  v28 = [v27 length];

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1007C8280;
  *(v30 + 24) = v29;
  v89 = sub_100673DC8;
  v90 = v30;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10007E0A4;
  v88 = &unk_100A7E648;
  v31 = _Block_copy(&aBlock);
  v32 = v27;

  [v32 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v28 usingBlock:{0, v31}];
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = [v32 length];

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1007C8288;
  *(v36 + 24) = v35;
  v89 = sub_100673DC8;
  v90 = v36;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10007E0A4;
  v88 = &unk_100A7E6C0;
  v37 = _Block_copy(&aBlock);
  v38 = v32;

  [v38 enumerateAttribute:NSFontAttributeName inRange:0 options:v34 usingBlock:{0, v37}];
  _Block_release(v37);
  v39 = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = [v38 length];

  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = swift_allocObject();
  v41[2] = a5;
  v41[3] = &v91;
  v41[4] = v83 + 16;
  v41[5] = v38;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1007C8290;
  *(v42 + 24) = v41;
  v89 = sub_100673DC8;
  v90 = v42;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10007E0A4;
  v88 = &unk_100A7E738;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = a5;

  [v44 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v40 usingBlock:{0, v43}];
  _Block_release(v43);
  v46 = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = NSAdaptiveImageGlyphAttributeName;
  v48 = [v44 length];

  [v44 removeAttribute:v47 range:{0, v48}];
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSForegroundColorAttributeName;
  v50 = sub_1000065A8(0, &qword_100AD4C70);
  *(inited + 40) = v81;
  *(inited + 64) = v50;
  *(inited + 72) = NSBackgroundColorAttributeName;
  v51 = objc_opt_self();
  v52 = NSForegroundColorAttributeName;
  v53 = v81;
  v54 = NSBackgroundColorAttributeName;
  v55 = [v51 clearColor];
  *(inited + 104) = v50;
  *(inited + 80) = v55;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = [v44 length];

  [v44 addAttributes:isa range:{0, v57}];
  v58 = [v44 length];

  [v44 fixAttributesInRange:{0, v58}];
  v59 = v44;
  v60 = [v59 string];
  if (!v60)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = String._bridgeToObjectiveC()();
  }

  v61 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v60];

  v62 = [v51 labelColor];
  v63 = sub_10010BBF4(v82);
  v64 = [v59 length];
  if ((v64 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v65 = v64;
  v66 = swift_allocObject();
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = 0x4020000000000000;
  v66[5] = 0;
  v66[6] = v61;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1000804A0;
  *(v67 + 24) = v66;
  v89 = sub_1007C82F8;
  v90 = v67;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10007F714;
  v88 = &unk_100A7E7B0;
  v68 = _Block_copy(&aBlock);
  v69 = v63;
  v70 = v62;
  v71 = v61;

  [v59 enumerateAttributesInRange:0 options:v65 usingBlock:{0, v68}];

  _Block_release(v68);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if ((v65 & 1) == 0)
  {
    [v80 setAttributedStringResult:v71];

    swift_unknownObjectRelease();

    v72 = sub_1007C8290;
LABEL_26:
    sub_100004DF8(v72);
    return;
  }

LABEL_34:
  __break(1u);
}

id sub_1007C41B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  sub_1000082B4(a1, v16, &qword_100AD13D0);
  if (v17)
  {
    v12 = type metadata accessor for URL();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v11, v13 ^ 1u, 1, v12);
  }

  else
  {
    sub_100004F84(v16, &qword_100AD13D0);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  type metadata accessor for URL();
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_100004F84(v11, &unk_100AD6DD0);
  if (!v14)
  {
    return [a5 removeAttribute:NSLinkAttributeName range:{a2, a3}];
  }

  return result;
}

uint64_t sub_1007C439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1000082B4(a1, v10, &qword_100AD13D0);
  if (!v11)
  {
    return sub_100004F84(v10, &qword_100AD13D0);
  }

  sub_1000065A8(0, &unk_100AF1DE0);
  result = swift_dynamicCast();
  if (result)
  {

    return [a5 deleteCharactersInRange:{a2, a3}];
  }

  return result;
}

void sub_1007C446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1000082B4(a1, v14, &qword_100AD13D0);
  if (!v15)
  {
    sub_100004F84(v14, &qword_100AD13D0);
    goto LABEL_5;
  }

  sub_1000065A8(0, &qword_100AD2A78);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = [v13 fontDescriptor];

  v9 = [v8 symbolicTraits];
  v10 = v9 & 3;
LABEL_6:
  sub_1000F24EC(&unk_100ADFBF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = xmmword_100968820;
  *(inited + 48) = 0;
  *(inited + 56) = v10;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  v12 = sub_100047788(UIFontTextStyleBody, inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  [a5 addAttribute:NSFontAttributeName value:v12 range:{a2, a3}];
}

void sub_1007C4620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, void *a8)
{
  sub_1000082B4(a1, v20, &qword_100AD13D0);
  if (v21)
  {
    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      [v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_1000065A8(0, &qword_100AD2A80);
      if (swift_dynamicCast())
      {
        v12 = v19;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_100004F84(v20, &qword_100AD13D0);
  }

  sub_1000065A8(0, &qword_100AD2A80);
  v12 = sub_100047F28();
LABEL_7:
  sub_1000065A8(0, &qword_100AD4290);
  v13 = v12;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTextLists:isa];

  swift_beginAccess();
  v15 = *a7;
  v16 = v13;
  if (v15 == 1)
  {
    v17 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v17 setParagraphStyle:v13];
    [v17 setFirstLineHeadIndent:14.1];
    [v17 setHeadIndent:14.1];
    [v17 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000065A8(0, &qword_100AD2A80);
    if (swift_dynamicCast())
    {

      v16 = v18;
    }

    else
    {
      v16 = v13;
    }
  }

  [a8 addAttribute:NSParagraphStyleAttributeName value:v16 range:{a2, a3}];
}

id sub_1007C4900(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v10, &unk_100AD6DD0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &unk_100AD6DD0);
    if (qword_100AD0AB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000617C(v15, qword_100AF1CF0);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v18 + 4) = v20;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to load URL for pasting: %@", v18, 0xCu);
      sub_100004F84(v19, &unk_100AD4BB0);
    }

    return [a3 setNoResult];
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    URL.formatted()();
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940050;
    *(inited + 32) = NSFontAttributeName;
    v23 = NSFontAttributeName;
    v34 = a3;
    v24 = sub_100047788(UIFontTextStyleBody, &off_100A5AE98, 0);
    sub_100047D60(&unk_100A5AEB8);
    v25 = sub_1000065A8(0, &qword_100AD2A78);
    *(inited + 40) = v24;
    *(inited + 64) = v25;
    *(inited + 72) = NSForegroundColorAttributeName;
    *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70);
    *(inited + 80) = a4;
    v26 = NSForegroundColorAttributeName;
    v27 = a4;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_1000F24EC(&unk_100AD9210);
    swift_arrayDestroy();
    v28 = objc_allocWithZone(NSAttributedString);
    v29 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [v28 initWithString:v29 attributes:isa];

    [v34 setAttributedStringResult:v31];
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1007C4E50(uint64_t a1, uint64_t a2)
{
  v24 = &type metadata for Int;
  *&v23 = 0;
  sub_10002432C(&v23, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = a2;
  sub_100048100(v22, NSUnderlineStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v4 = v25;
  v24 = &type metadata for Int;
  *&v23 = 0;
  sub_10002432C(&v23, v22);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100048100(v22, NSStrikethroughStyleAttributeName, v5);
  v6 = v4;
  v25 = v4;
  v7 = *(v4 + 16);
  v8 = NSFontAttributeName;
  v9 = v8;
  if (v7 && (v10 = sub_100051964(v8), (v11 & 1) != 0) && (sub_10000BA20(*(v6 + 56) + 32 * v10, &v23), v12 = sub_1000065A8(0, &qword_100AD2A78), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v22[0];
    v14 = [v22[0] fontDescriptor];
    v15 = [v13 fontDescriptor];
    v16 = [v15 symbolicTraits];

    v17 = [v14 fontDescriptorWithSymbolicTraits:v16 & 0xFFFFFFFC];
    if (v17)
    {
      v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];

      v13 = v18;
    }

    v24 = v12;
    *&v23 = v13;
    sub_10002432C(&v23, v22);
    v19 = v25;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_100048100(v22, v9, v20);

    v25 = v19;
  }

  else
  {
    sub_100080694(&v23);

    sub_100004F84(&v23, &qword_100AD13D0);
  }

  sub_100080694(&v23);
  sub_100004F84(&v23, &qword_100AD13D0);
  sub_100080694(&v23);
  sub_100004F84(&v23, &qword_100AD13D0);
  return v25;
}

Class sub_1007C5118(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = a2;
  v5 = v3();

  if (v5)
  {
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

void sub_1007C5234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (!*(a1 + 16) || (v7 = sub_100051964(NSParagraphStyleAttributeName), (v8 & 1) == 0) || (sub_10000BA20(*(a1 + 56) + 32 * v7, v19), sub_1000065A8(0, &qword_100ADFF70), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    goto LABEL_8;
  }

  [v18 firstLineHeadIndent];
  *v10.i64 = *v9.i64 - trunc(*v9.i64);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v17 = vnegq_f64(v11);
  v12 = *vbslq_s8(v17, v10, v9).i64 + -0.1;
  [v18 headIndent];
  v16 = v13;

  if (fabs(v12) < 0.01)
  {
    *v14.i64 = *v16.i64 - trunc(*v16.i64);
    if (fabs(*vbslq_s8(v17, v14, v16).i64 + -0.1) < 0.01)
    {
      v15 = 1;
LABEL_8:
      *a5 = v15;
    }
  }
}

uint64_t sub_1007C53C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 16) && (v7 = sub_100051964(NSStrikethroughStyleAttributeName), (v8 & 1) != 0))
  {
    sub_10000BA20(*(a1 + 56) + 32 * v7, v10);
    return sub_100004F84(v10, &qword_100AD13D0);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    result = sub_100004F84(v10, &qword_100AD13D0);
    *a5 = 0;
  }

  return result;
}

void sub_1007C54BC(void *a1)
{
  if ([a1 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_100004F84(v7, &qword_100AD13D0);
    return;
  }

  if (swift_dynamicCast())
  {
    if (v4 == 2)
    {
      if (qword_100ACF920 != -1)
      {
        swift_once();
      }

      v2 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:qword_100B2F2E0 options:0 startingItemNumber:1];
      if (v2)
      {
LABEL_13:
        v3 = v2;
        sub_1007C5638(v3);
      }
    }

    else
    {
      if (v4 == 1)
      {
        v1 = &NSTextListMarkerHyphen;
      }

      else
      {
        if (v4)
        {
          return;
        }

        v1 = &NSTextListMarkerDisc;
      }

      v2 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:*v1 options:0];
      if (v2)
      {
        goto LABEL_13;
      }
    }
  }
}

id sub_1007C5638(void *a1)
{
  v2 = v1;
  result = [v1 allowsEditingTextAttributes];
  if (result)
  {
    v128 = sub_100364568(_swiftEmptyArrayStorage);
    v127 = 1;
    v5 = &selRef_setRegion_;
    [v1 selectedRange];
    v115 = a1;
    v116 = v1;
    if (v6 >= 1)
    {
      result = [v1 attributedText];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = [v1 selectedRange];
      v10 = v9;
      v11 = swift_allocObject();
      v11[2] = &v128;
      v11[3] = a1;
      v11[4] = &v127;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1007C6D4C;
      *(v12 + 24) = v11;
      v121 = sub_10007E150;
      v122 = v12;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v120 = sub_10007E0A4;
      *(&v120 + 1) = &unk_100A7E058;
      v13 = _Block_copy(&aBlock);
      v14 = a1;
      a1 = v122;
      v112 = v14;

      v114 = NSParagraphStyleAttributeName;
      [v7 enumerateAttribute:NSParagraphStyleAttributeName inRange:v8 options:v10 usingBlock:{0, v13}];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v16 = v128;
        v17 = v128 + 64;
        v18 = 1 << *(v128 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v128 + 64);
        a1 = ((v18 + 63) >> 6);

        v21 = 0;
LABEL_9:
        if (v20)
        {
          goto LABEL_14;
        }

LABEL_10:
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= a1)
          {

            v33 = sub_1007C6D4C;
            v5 = &selRef_setRegion_;
            a1 = v115;
            goto LABEL_21;
          }

          v20 = *(v17 + 8 * v24);
          ++v21;
          if (v20)
          {
            v21 = v24;
LABEL_14:
            while (1)
            {
              v25 = __clz(__rbit64(v20));
              v20 &= v20 - 1;
              v26 = v25 | (v21 << 6);
              v27 = *(*(v16 + 48) + 8 * v26);
              v28 = (*(v16 + 56) + 16 * v26);
              v29 = v28[1];
              v117 = *v28;
              isEscapingClosureAtFileLocation = v27;
              [isEscapingClosureAtFileLocation mutableCopy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_1000065A8(0, &qword_100AD2A80);
              if (swift_dynamicCast())
              {
                break;
              }

              if (!v20)
              {
                goto LABEL_10;
              }
            }

            v30 = v124;
            if ((v127 & 1) == 0)
            {
              sub_1000F24EC(&unk_100AD4780);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_100941D50;
              *(v31 + 32) = v112;
              v32 = v112;
            }

            sub_1000065A8(0, &qword_100AD4290);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v30 setTextLists:isa];

            v23 = [v116 textStorage];
            [v23 addAttribute:NSParagraphStyleAttributeName value:v30 range:{v117, v29}];

            v2 = v116;
            goto LABEL_9;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v33 = 0;
LABEL_21:
    [v2 v5[418]];
    if (v34 >= 1)
    {
      v35 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v36 + 16) && (v37 = sub_100051964(NSParagraphStyleAttributeName), (v38 & 1) != 0))
      {
        sub_10000BA20(*(v36 + 56) + 32 * v37, &aBlock);

        sub_1000065A8(0, &qword_100ADFF70);
        if (swift_dynamicCast())
        {
          v118 = v33;
          v39 = v124;
          [v124 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v40 = sub_1000065A8(0, &qword_100AD2A80);
          if (swift_dynamicCast())
          {
            v41 = v124;
            if ((v127 & 1) == 0)
            {
              sub_1000F24EC(&unk_100AD4780);
              v92 = swift_allocObject();
              *(v92 + 16) = xmmword_100941D50;
              *(v92 + 32) = v115;
              v93 = v115;
            }

            sub_1000065A8(0, &qword_100AD4290);
            v94 = Array._bridgeToObjectiveC()().super.isa;

            [v41 setTextLists:v94];

            *(&v120 + 1) = v40;
            *&aBlock = v41;
            v47 = v41;
            v95 = [v2 typingAttributes];
            v96 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v126 = v96;
            if (*(&v120 + 1))
            {
              sub_10002432C(&aBlock, &v124);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v123 = v96;
              sub_100048100(&v124, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
              v126 = v123;
            }

            else
            {
              sub_100004F84(&aBlock, &qword_100AD13D0);
              sub_100080694(&v124);
              sub_100004F84(&v124, &qword_100AD13D0);
            }

            v98 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v2 setTypingAttributes:v98];

            sub_1007C6BD8(v47);
            goto LABEL_43;
          }

          v33 = v118;
          if (v127)
          {
            goto LABEL_72;
          }

LABEL_30:
          v118 = v33;
          v42 = sub_1000065A8(0, &qword_100AD2A80);
          v43 = sub_100047F28();
          sub_1000F24EC(&unk_100AD4780);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_100941D50;
          *(v44 + 32) = v115;
          sub_1000065A8(0, &qword_100AD4290);
          v45 = v115;
          v46 = Array._bridgeToObjectiveC()().super.isa;

          [v43 setTextLists:v46];

          *(&v120 + 1) = v42;
          *&aBlock = v43;
          v47 = v43;
          v48 = [v2 typingAttributes];
          v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v126 = v49;
          if (*(&v120 + 1))
          {
            sub_10002432C(&aBlock, &v124);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            v123 = v49;
            sub_100048100(&v124, NSParagraphStyleAttributeName, v50);
            v126 = v123;
          }

          else
          {
            sub_100004F84(&aBlock, &qword_100AD13D0);
            sub_100080694(&v124);
            sub_100004F84(&v124, &qword_100AD13D0);
          }

          v64 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v2 setTypingAttributes:v64];

LABEL_43:
          v33 = v118;
          goto LABEL_72;
        }
      }

      else
      {
      }

      if (v127)
      {
LABEL_72:
        v90 = [v2 v5[418]];
        sub_1007C01F4(v90, v91);
        sub_1007BE64C();

        return sub_100004DF8(v33);
      }

      goto LABEL_30;
    }

    v51 = [v2 v5[418]];
    v52 = [v2 textStorage];
    v53 = [v52 length];

    if (v53 < 1 || (v54 = [v2 textStorage], v55 = objc_msgSend(v54, "length"), v54, v51 >= v55))
    {
      v57 = NSParagraphStyleAttributeName;
      v59 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_100051798(&qword_100ADC650, type metadata accessor for Key);
      v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v60 + 16) || (v61 = sub_100051964(NSParagraphStyleAttributeName), (v62 & 1) == 0))
      {

        v114 = 0;
        v5 = &selRef_setRegion_;
LABEL_68:
        v80 = sub_1000065A8(0, &qword_100AD2A80);
        v81 = sub_100047F28();
        sub_1000F24EC(&unk_100AD4780);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_100941D50;
        *(v82 + 32) = a1;
        sub_1000065A8(0, &qword_100AD4290);
        v83 = a1;
        v84 = Array._bridgeToObjectiveC()().super.isa;

        [v81 setTextLists:v84];

        *(&v120 + 1) = v80;
        *&aBlock = v81;
        v85 = v81;
        v86 = [v2 typingAttributes];
        type metadata accessor for Key(0);
        sub_100051798(&qword_100ADC650, type metadata accessor for Key);
        v87 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v126 = v87;
        if (*(&v120 + 1))
        {
          sub_10002432C(&aBlock, &v124);
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v123 = v87;
          sub_100048100(&v124, v57, v88);
          v126 = v123;
        }

        else
        {
          sub_100004F84(&aBlock, &qword_100AD13D0);
          sub_100080694(&v124);
          sub_100004F84(&v124, &qword_100AD13D0);
        }

        v89 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 setTypingAttributes:v89];

        sub_1007C6BD8(v85);
        goto LABEL_72;
      }

      sub_10000BA20(*(v60 + 56) + 32 * v61, &aBlock);

      sub_1000065A8(0, &qword_100ADFF70);
      v5 = &selRef_setRegion_;
      if (swift_dynamicCast())
      {
        v63 = v124;
        goto LABEL_50;
      }
    }

    else
    {
      v56 = [v2 textStorage];
      v57 = NSParagraphStyleAttributeName;
      v58 = [v56 attribute:NSParagraphStyleAttributeName atIndex:v51 effectiveRange:0];

      if (v58)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
      }

      v5 = &selRef_setRegion_;
      aBlock = v124;
      v120 = v125;
      if (*(&v125 + 1))
      {
        sub_1000065A8(0, &qword_100ADFF70);
        if (swift_dynamicCast())
        {
          v63 = v126;
LABEL_50:
          v65 = v63;
          [v65 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v66 = sub_1000065A8(0, &qword_100AD2A80);
          v67 = swift_dynamicCast();

          v114 = v65;
          if (v67)
          {
            v108 = v124;
            v68 = [v65 textLists];
            v107 = sub_1000065A8(0, &qword_100AD4290);
            isEscapingClosureAtFileLocation = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v117 = v33;
            v109 = v66;
            v110 = v57;
            if (!(isEscapingClosureAtFileLocation >> 62))
            {
              v111 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
              v113 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_53;
            }

LABEL_90:
            v111 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
            v113 = _CocoaArrayWrapper.endIndex.getter();
LABEL_53:
            v69 = 0;
            while (1)
            {
              if (v113 == v69)
              {

                sub_1000F24EC(&unk_100AD4780);
                v99 = swift_allocObject();
                *(v99 + 16) = xmmword_100941D50;
                *(v99 + 32) = a1;
                v100 = a1;
                goto LABEL_82;
              }

              if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
              {
                v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v69 >= *(v111 + 16))
                {
                  goto LABEL_89;
                }

                v70 = *(isEscapingClosureAtFileLocation + 8 * v69 + 32);
              }

              v71 = v70;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_88;
              }

              v72 = [v70 markerFormat];
              v73 = [a1 markerFormat];
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v75;
              if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
              {
                break;
              }

              v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

              ++v69;
              a1 = v115;
              if (v79)
              {
                goto LABEL_81;
              }
            }

LABEL_81:

LABEL_82:
            v101 = Array._bridgeToObjectiveC()().super.isa;

            [v108 setTextLists:v101];

            *(&v120 + 1) = v109;
            *&aBlock = v108;
            v102 = v108;
            v2 = v116;
            v103 = [v116 typingAttributes];
            type metadata accessor for Key(0);
            sub_100051798(&qword_100ADC650, type metadata accessor for Key);
            v104 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v126 = v104;
            v5 = &selRef_setRegion_;
            v33 = v117;
            if (*(&v120 + 1))
            {
              sub_10002432C(&aBlock, &v124);
              v105 = swift_isUniquelyReferenced_nonNull_native();
              v123 = v104;
              sub_100048100(&v124, v110, v105);
              v126 = v123;
            }

            else
            {
              sub_100004F84(&aBlock, &qword_100AD13D0);
              sub_100080694(&v124);
              sub_100004F84(&v124, &qword_100AD13D0);
            }

            v106 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v116 setTypingAttributes:v106];

            sub_1007C6BD8(v102);
            goto LABEL_72;
          }

          goto LABEL_68;
        }
      }

      else
      {
        sub_100004F84(&aBlock, &qword_100AD13D0);
      }
    }

    v114 = 0;
    goto LABEL_68;
  }

  return result;
}

void sub_1007C68F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _BYTE *a7)
{
  sub_1000082B4(a1, v32, &qword_100AD13D0);
  if (v32[3])
  {
    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      v26 = a7;
      v11 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32[0] = *a5;
      *a5 = 0x8000000000000000;
      sub_1002030E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);

      *a5 = v32[0];

      v27 = v11;
      v13 = [v11 textLists];
      sub_1000065A8(0, &qword_100AD4290);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
LABEL_25:
        v28 = v14 & 0xFFFFFFFFFFFFFF8;
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = v14 & 0xFFFFFFFFFFFFFF8;
        v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      while (1)
      {
        if (v29 == v15)
        {

          *v26 = 0;
          return;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v28 + 16))
          {
            goto LABEL_24;
          }

          v16 = *(v14 + 8 * v15 + 32);
        }

        v17 = v16;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v18 = [v16 markerFormat];
        v19 = [a6 markerFormat];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
        if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v15;
        if (v25)
        {
          goto LABEL_21;
        }
      }

LABEL_21:
    }
  }

  else
  {
    sub_100004F84(v32, &qword_100AD13D0);
  }
}

void sub_1007C6BD8(uint64_t a1)
{
  v3 = [v1 textStorage];
  v4 = [v3 length];

  if (v4 >= 1)
  {
    v5 = [v1 textStorage];
    v6 = [v5 string];
    if (v6)
    {
      v7 = v6;

      v8 = [v1 selectedRange];
      v10 = [v7 paragraphRangeForRange:{v8, v9}];
      v12 = v11;

      if (v12 >= 1)
      {
        v13 = [v1 textStorage];
        [v13 addAttribute:NSParagraphStyleAttributeName value:a1 range:{v10, v12}];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_1007C6D58(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_100051964(NSParagraphStyleAttributeName);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v2, v15);
  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v14 firstLineHeadIndent];
  *v5.i64 = *v4.i64 - trunc(*v4.i64);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v13 = vnegq_f64(v6);
  v7 = *vbslq_s8(v13, v5, v4).i64 + -0.1;
  [v14 headIndent];
  v12 = v8;

  *v9.i64 = *v12.i64 - trunc(*v12.i64);
  v10 = fabs(v7) < 0.01;
  return fabs(*vbslq_s8(v13, v9, v12).i64 + -0.1) < 0.01 && v10;
}

void *sub_1007C6E84(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_100051964(NSForegroundColorAttributeName);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000BA20(*(a1 + 56) + 32 * v2, v11);
  sub_1000065A8(0, &qword_100AD4C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v10;
  if (qword_100AD0AC0 != -1)
  {
    swift_once();
  }

  v5 = qword_100B31098;
  v6 = static NSObject.== infix(_:_:)();

  if (v6 & 1) != 0 || (v7 = [objc_opt_self() blackColor], v8 = static NSObject.== infix(_:_:)(), v7, (v8))
  {

    return 0;
  }

  return v4;
}

void sub_1007C6FC4()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = v23 - v8;
  v10 = [v0 textStorage];
  v11 = [v10 string];
  if (v11)
  {
    v12 = v11;

    v13 = [v1 selectedRange];
    v15 = [v12 lineRangeForRange:{v13, v14}];
    v17 = [v12 substringWithRange:{v15, v16}];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    static CharacterSet.newlines.getter();
    CharacterSet.init(charactersIn:)();
    LOBYTE(v17) = CharacterSet.isSuperset(of:)();
    v21 = *(v3 + 8);
    v21(v5, v2);
    v21(v9, v2);
    if (v17)
    {
    }

    else
    {
      v23[0] = v18;
      v23[1] = v20;
      static CharacterSet.whitespaces.getter();
      sub_1000777B4();
      StringProtocol.trimmingCharacters(in:)();
      v21(v9, v2);

      v22 = String.count.getter();

      if (v22)
      {
        sub_1007BE64C();
LABEL_7:

        return;
      }
    }

    sub_1007BBF88(0);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1007C7228()
{
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryLeftConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryRightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView) = 0;
  v1 = OBJC_IVAR____TtC7Journal15JournalTextView_blockQuoteLayerView;
  type metadata accessor for BlockQuoteLayerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_removeListsNextClear) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1007C7310(void *a1)
{
  v2 = v1;
  v4 = [v1 textColor];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key);
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = [v1 traitCollection];
    v10 = [v1 typingAttributes];
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v11 + 16) && (v12 = sub_100051964(NSParagraphStyleAttributeName), (v13 & 1) != 0))
    {
      sub_10000BA20(*(v11 + 56) + 32 * v12, aBlock);

      sub_1000065A8(0, &qword_100ADFF70);
      if (swift_dynamicCast())
      {
        [v42 firstLineHeadIndent];
        *v15.i64 = *v14.i64 - trunc(*v14.i64);
        v16.f64[0] = NAN;
        v16.f64[1] = NAN;
        v41 = vnegq_f64(v16);
        v17 = *vbslq_s8(v41, v15, v14).i64 + -0.1;
        [v42 headIndent];
        v40 = v18;

        *v19.i64 = *v40.i64 - trunc(*v40.i64);
        v20 = fabs(v17) < 0.01;
        if (fabs(*vbslq_s8(v41, v19, v40).i64 + -0.1) >= 0.01)
        {
          v20 = 0;
        }

        *(v6 + 16) = v20;
      }
    }

    else
    {
    }

    v21 = [a1 itemProvider];
    sub_1000065A8(0, &qword_100AE4890);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [v21 canLoadObjectOfClass:ObjCClassFromMetadata];

    if (v23)
    {
      v24 = [a1 itemProvider];
      v25 = swift_allocObject();
      v25[2] = a1;
      v25[3] = v8;
      v25[4] = v2;
      v25[5] = v6;
      v25[6] = v5;
      v25[7] = v9;
      aBlock[4] = sub_1007C8268;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006AD5D8;
      aBlock[3] = &unk_100A7E558;
      v26 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v27 = v2;

      v28 = v5;
      v29 = v9;

      v30 = [v24 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v26];

      _Block_release(v26);
    }

    else
    {

      v31 = [a1 itemProvider];
      type metadata accessor for URL();
      sub_100051798(&qword_100AF1DD8, &type metadata accessor for URL);
      v32 = NSItemProvider.canLoadObject<A>(ofClass:)();

      if (v32)
      {
        v33 = [a1 itemProvider];
        v34 = swift_allocObject();
        *(v34 + 16) = a1;
        *(v34 + 24) = v5;
        swift_unknownObjectRetain();
        v5 = v5;
        v35 = NSItemProvider.loadObject<A>(ofClass:completionHandler:)();
      }

      else
      {
        if (qword_100AD0AB8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_10000617C(v36, qword_100AF1CF0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Paste ignored, not text or URL", v39, 2u);
        }

        [a1 setNoResult];
      }
    }
  }

  else
  {

    [a1 setNoResult];
  }
}

void sub_1007C7900()
{
  v1 = v0;
  if (![v0 allowsEditingTextAttributes])
  {
    return;
  }

  [v0 selectedRange];
  if (v2 >= 1)
  {
    LOBYTE(v31) = 0;
    v3 = [v0 textStorage];
    v4 = [v1 selectedRange];
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = &v31;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1007C8210;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1007C82F8;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007F714;
    aBlock[3] = &unk_100A7E148;
    v9 = _Block_copy(aBlock);

    [v3 enumerateAttributesInRange:v4 options:v6 usingBlock:{0, v9}];

    _Block_release(v9);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      v10 = v31;
      v11 = [v1 selectedRange];
      if (v10 == 1)
      {
        sub_1007C1A28(v11, v12);
      }

      else
      {
        sub_1007C1110(v11, v12);
      }
    }

    return;
  }

  v13 = [v0 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v14 + 16) || (v15 = sub_100051964(NSParagraphStyleAttributeName), (v16 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_10000BA20(*(v14 + 56) + 32 * v15, aBlock);

  sub_1000065A8(0, &qword_100ADFF70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v26 = [v1 selectedRange];
    sub_1007C1110(v26, v27);
    return;
  }

  v17 = v31;
  [v31 firstLineHeadIndent];
  *v19.i64 = *v18.i64 - trunc(*v18.i64);
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v29 = vnegq_f64(v20);
  v21 = *vbslq_s8(v29, v19, v18).i64 + -0.1;
  [v17 headIndent];
  v28 = v22;
  v23 = [v1 selectedRange];
  if (fabs(v21) >= 0.01 || (*v25.i64 = *v28.i64 - trunc(*v28.i64), fabs(*vbslq_s8(v29, v25, v28).i64 + -0.1) >= 0.01))
  {
    sub_1007C1110(v23, v24);
  }

  else
  {
    sub_1007C1A28(v23, v24);
  }
}

id sub_1007C7CB8()
{
  v1 = v0;
  result = [v0 allowsEditingTextAttributes];
  if (!result)
  {
    return result;
  }

  [v0 selectedRange];
  if (v3 <= 0)
  {
    v16 = 0;
    v13 = NSStrikethroughStyleAttributeName;
    goto LABEL_10;
  }

  LOBYTE(v37[0]) = 1;
  result = [v0 attributedText];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [v1 selectedRange];
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v37;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1007C8208;
  *(v9 + 24) = v8;
  v34 = sub_100080468;
  v35 = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_10007F714;
  *(&v33 + 1) = &unk_100A7E0D0;
  v10 = _Block_copy(&aBlock);

  [v4 enumerateAttributesInRange:v5 options:v7 usingBlock:{0, v10}];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v37[0];
  v12 = [v1 textStorage];
  v13 = NSStrikethroughStyleAttributeName;
  if (v11)
  {
    v14 = [v1 selectedRange];
    [(objc_class *)v12 removeAttribute:NSStrikethroughStyleAttributeName range:v14, v15];
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v18 = [v1 selectedRange];
    [(objc_class *)v12 addAttribute:NSStrikethroughStyleAttributeName value:isa range:v18, v19];

    v12 = isa;
  }

  v16 = sub_1007C8208;
LABEL_10:
  v20 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key);
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v21 + 16) && (v22 = sub_100051964(v13), (v23 & 1) != 0))
  {
    sub_10000BA20(*(v21 + 56) + 32 * v22, &aBlock);

    sub_100004F84(&aBlock, &qword_100AD13D0);
    v24 = [v1 typingAttributes];
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v37[0] = v25;
    sub_100080694(&aBlock);
    sub_100004F84(&aBlock, &qword_100AD13D0);
    v26 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 setTypingAttributes:v26];

    v27 = v16;
  }

  else
  {

    aBlock = 0u;
    v33 = 0u;
    sub_100004F84(&aBlock, &qword_100AD13D0);
    *(&v33 + 1) = &type metadata for Int;
    *&aBlock = 1;
    v28 = [v1 typingAttributes];
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = v29;
    if (*(&v33 + 1))
    {
      sub_10002432C(&aBlock, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v29;
      sub_100048100(v37, v13, isUniquelyReferenced_nonNull_native);
      v38 = v36;
    }

    else
    {
      sub_100004F84(&aBlock, &qword_100AD13D0);
      sub_100080694(v37);
      sub_100004F84(v37, &qword_100AD13D0);
    }

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 setTypingAttributes:v31];

    v27 = v16;
  }

  return sub_100004DF8(v27);
}