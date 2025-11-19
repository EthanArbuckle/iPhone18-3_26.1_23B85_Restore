uint64_t sub_1005E3B08()
{
  v1 = *(v0 + 2840);
  v2 = *(v0 + 2832);
  v3 = *(v0 + 1728);
  v4 = *(v0 + 1720);
  v5 = *(v0 + 944);
  (*(v3 + 16))(v5, v2 + OBJC_IVAR____TtC7Journal5Asset_id, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1001F81C4(v5);
  sub_100004F84(v5, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v6 = *(v0 + 2864);
  v7 = *(v0 + 2832);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2184);
  v10 = *(v0 + 2176);
  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));

  (*(v9 + 8))(v8, v10);
  v11 = *(v0 + 2608) + 1;
  if (v11 == *(v0 + 912))
  {
LABEL_2:
    v12 = *(v0 + 2568);

    v13 = *(v0 + 8);
    v14 = *(v0 + 2536);

    return v13(v14);
  }

  v481 = (v0 + 688);
  v377 = (v0 + 736);
  v418 = (v0 + 752);
  v440 = (v0 + 784);
  v511 = (v0 + 776);
  v520 = (v0 + 808);
  v460 = (v0 + 816);
  v454 = 0x80000001008FDD50;
  v490 = 0x80000001008FDE10;
  v503 = 1;
  v410 = (v0 + 840);
  while (1)
  {
    *(v0 + 2608) = v11;
    *(v0 + 2600) = v6;
    v16 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v17 = *(v0 + 832);
    v18 = (v17 * v16) >> 64;
    v19 = v17 * v16;
    v20 = *(v0 + 2552);
    if (v16 > v19)
    {
      v21 = -v20 % v20;
      if (v21 > v19)
      {
        do
        {
          v22 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v23 = *(v0 + 680);
        }

        while (v21 > v23 * v22);
        v18 = (v23 * v22) >> 64;
        v20 = *(v0 + 2552);
      }
    }

    if (v18 >= v20)
    {
      __break(1u);
LABEL_117:
      v500 = *(v0 + 2988);
      v431 = *(v0 + 2980);
      v257 = *(v0 + 2256);
      v258 = *(v0 + 2248);
      v424 = *(v0 + 2160);
      v515 = *(v0 + 2056);
      v259 = *(v0 + 1904);
      v260 = *(v0 + 1872);
      v261 = *(v0 + 1864);
      v478 = *(v0 + 1384);
      v485 = *(v0 + 1376);
      v493 = *(v0 + 2048);
      v450 = *(v0 + 1368);
      v457 = *(v0 + 1360);
      v444 = *(v0 + 1352);
      v415 = *(v0 + 1344);
      v262 = *(v0 + 1336);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_100940080;
      *(v263 + 56) = &type metadata for String;
      *(v263 + 32) = 0xD000000000000018;
      *(v263 + 40) = 0x80000001008FDC60;
      print(_:separator:terminator:)();

      Date.init()();
      v264 = *(v257 + 56);
      v264(v259, 0, 1, v258);
      v264(v260, 1, 1, v258);
      v264(v261, 1, 1, v258);
      v507 = *(v515 + 104);
      v507(v262, v500, v493);
      v472 = *(v515 + 56);
      v472(v262, 0, 1, v493);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v264(v259, 0, 1, v258);
      v264(v260, 1, 1, v258);
      v264(v261, 1, 1, v258);
      v507(v262, v500, v493);
      v472(v262, 0, 1, v493);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v264(v259, 0, 1, v258);
      v264(v260, 1, 1, v258);
      v264(v261, 1, 1, v258);
      v507(v262, v500, v493);
      v472(v262, 0, 1, v493);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      Date.init()();
      v264(v259, 0, 1, v258);
      v264(v260, 1, 1, v258);
      v264(v261, 1, 1, v258);
      v507(v262, v500, v493);
      v472(v262, 0, 1, v493);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      sub_1000F24EC(&qword_100AD64A8);
      v265 = *(v444 + 72);
      v266 = (*(v444 + 80) + 32) & ~*(v444 + 80);
      v267 = swift_allocObject();
      *(v267 + 16) = xmmword_100941FE0;
      v268 = v267 + v266;
      v269 = *(v444 + 16);
      v269(v268, v478, v415);
      v269(v268 + v265, v485, v415);
      v269(v268 + 2 * v265, v450, v415);
      v269(v268 + 3 * v265, v457, v415);
      sub_1006ADB18(v267);
      v507(v424, v431, v493);
      v243 = sub_10011CEC0(v424, _swiftEmptyArrayStorage);
      v270 = *(v444 + 8);
      v270(v457, v415);
      v270(v450, v415);
      v270(v485, v415);
      v270(v478, v415);
      goto LABEL_124;
    }

    v24 = *(v0 + 2888);
    v25 = *(v0 + 2216);
    v26 = *(v0 + 2208);
    v27 = *(v0 + 2184);
    v28 = *(v0 + 2176);
    v29 = *(v27 + 16);
    v30 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v27 + 72) * v18;
    *(v0 + 2616) = v29;
    *(v0 + 2624) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v25, v30, v28);
    v29(v26, v25, v28);
    v31 = (*(v27 + 88))(v26, v28);
    if (v31 == v24)
    {
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_100940080;
      *(v201 + 56) = &type metadata for String;
      *(v201 + 32) = 0xD000000000000013;
      *(v201 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v202 = swift_task_alloc();
      *(v0 + 2632) = v202;
      *(v202 + 16) = 1;
      v203 = swift_task_alloc();
      *(v0 + 2640) = v203;
      v204 = sub_1000F24EC(&qword_100AEABF0);
      *v203 = v0;
      v203[1] = sub_1005CAA34;
      v175 = *(v0 + 880);
      v174 = *(v0 + 872);
      v180 = v204;
      v178 = sub_1005ED67C;
      v173 = v0 + 848;
      goto LABEL_101;
    }

    if (v31 != *(v0 + 2892))
    {
      break;
    }

LABEL_6:
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
LABEL_7:
    v11 = *(v0 + 2608) + 1;
    if (v11 == *(v0 + 912))
    {
      goto LABEL_2;
    }
  }

  if (v31 == *(v0 + 2896))
  {
    v205 = swift_allocObject();
    *(v205 + 16) = xmmword_100940080;
    *(v205 + 56) = &type metadata for String;
    *(v205 + 32) = 0xD000000000000013;
    *(v205 + 40) = 0x80000001008FDBE0;
    print(_:separator:terminator:)();

    v206 = swift_task_alloc();
    *(v0 + 2704) = v206;
    *v206 = v0;
    v206[1] = sub_1005D1548;
    v207 = *(v0 + 1264);
    v208 = *(v0 + 880);
    v209 = *(v0 + 872);

    return sub_1006A580C(v207, v209, v208);
  }

  if (v31 == *(v0 + 2900))
  {
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100940080;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 32) = 0xD000000000000012;
    *(v32 + 40) = 0x80000001008FDE10;
    print(_:separator:terminator:)();

    v33 = *(v0 + 112);
    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_36;
    }

    *v460 = 0;
    swift_stdlib_random();
    v35 = *v460 * v34;
    v36 = (*v460 * v34) >> 64;
    if (v34 > v35)
    {
      v37 = -v34 % v34;
      if (v37 > v35)
      {
        do
        {
          *v410 = 0;
          swift_stdlib_random();
        }

        while (v37 > *v410 * v34);
        v36 = (*v410 * v34) >> 64;
      }
    }

    if (v36 >= *(v33 + 16))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      v202 = swift_task_alloc();
      *(v0 + 2808) = v202;
      *(v202 + 16) = 1;
      v360 = swift_task_alloc();
      *(v0 + 2816) = v360;
      v361 = sub_1000F24EC(&qword_100AEABF0);
      *v360 = v0;
      v360[1] = sub_1005DDCB8;
      v175 = *(v0 + 880);
      v174 = *(v0 + 872);
      v180 = v361;
      v178 = sub_1005ED564;
      v173 = v0 + 824;
      goto LABEL_101;
    }

    swift_beginAccess();

    sub_100691A14(v36);
    swift_endAccess();

LABEL_36:
    v52 = *(v0 + 2024);
    v53 = *(v0 + 1600);
    v54 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v53 + 48))(v52, 1, v54) == 1)
    {
      v55 = *(v0 + 2216);
      v56 = *(v0 + 2184);
      v57 = *(v0 + 2176);
      v58 = *(v0 + 2024);
      goto LABEL_38;
    }

    (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
    v59 = Data.init(contentsOf:options:)();
    if (v6)
    {
      v61 = *(v0 + 2216);
      v62 = *(v0 + 2184);
      v63 = *(v0 + 2176);
      v64 = *(v0 + 1664);
      v65 = *(v0 + 1600);
      v66 = *(v0 + 1592);

      (*(v65 + 8))(v64, v66);
      goto LABEL_58;
    }

    v107 = v59;
    v108 = v60;
    v109 = objc_allocWithZone(UIImage);
    sub_100049ED8(v107, v108);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v111 = [v109 initWithData:isa];

    sub_1000340DC(v107, v108);
    if (!v111)
    {
      v112 = *(v0 + 2216);
      v113 = *(v0 + 2184);
      v114 = *(v0 + 2176);
      v115 = *(v0 + 1664);
      v116 = *(v0 + 1600);
      v117 = *(v0 + 1592);

      sub_1000340DC(v107, v108);
      (*(v116 + 8))(v115, v117);
      (*(v113 + 8))(v112, v114);
      goto LABEL_68;
    }

    v454 = v108;
    v385 = *(v0 + 3000);
    v396 = *(v0 + 2900);
    v210 = *(v0 + 2256);
    v378 = *(v0 + 2248);
    v461 = *(v0 + 2200);
    v427 = *(v0 + 2192);
    v504 = *(v0 + 2184);
    v391 = *(v0 + 2176);
    v491 = *(v0 + 2160);
    v434 = *(v0 + 2152);
    v373 = *(v0 + 2144);
    v521 = *(v0 + 2056);
    v482 = *(v0 + 2048);
    v419 = *(v0 + 2016);
    v364 = *(v0 + 1896);
    v468 = *(v0 + 1744);
    v404 = *(v0 + 1736);
    v512 = *(v0 + 1728);
    v411 = *(v0 + 1720);
    v441 = *(v0 + 1712);
    v211 = *(v0 + 1600);
    v212 = *(v0 + 1592);
    v370 = *(v0 + 1544);
    v213 = *(v0 + 1528);
    v367 = *(v0 + 1520);
    (*(v521 + 104))();

    (*(v211 + 56))(v419, 1, 1, v212);
    v420 = v111;
    Date.init()();
    (*(v210 + 56))(v364, 0, 1, v378);
    (*(v213 + 104))(v370, v385, v367);
    (*(v504 + 104))(v461, v396, v391);
    v397 = *(v521 + 16);
    v397(v491, v373, v482);
    UUID.init()();
    *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
    (*(v512 + 16))(v404, v468, v411);
    v29(v427, v461, v391);
    v214 = v491;
    v397(v434, v491, v482);
    v215 = sub_100285908(v404, v427, v434);
    v216 = *(v512 + 8);
    v216(v468, v411);
    v490 = *(v521 + 8);
    v490(v214, v482);
    (*(v504 + 8))(v461, v391);
    *v441 = v420;
    swift_storeEnumTagMultiPayload();
    v503 = v420;
    UUID.init()();
    v217 = UUID.uuidString.getter();
    v219 = v218;
    v216(v468, v411);
    type metadata accessor for AssetAttachment(0);
    v220 = swift_allocObject();
    *(v220 + 16) = 0;
    sub_1005ED56C(v441, v220 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v221 = (v220 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v221 = v217;
    v221[1] = v219;
    v222 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v511 = v215;
    if (*((*(v215 + v222) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v215 + v222) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_154:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v442 = *(v0 + 2048);
    v448 = *(v0 + 2144);
    v223 = *(v0 + 2016);
    v224 = *(v0 + 2008);
    v379 = *(v0 + 1904);
    v374 = *(v0 + 1896);
    v462 = *(v0 + 1664);
    v412 = *(v0 + 1600);
    v435 = *(v0 + 1592);
    v392 = *(v0 + 1544);
    v225 = *(v0 + 1528);
    v386 = *(v0 + 1520);
    v405 = *(v0 + 1512);
    v428 = *(v0 + 1504);
    v469 = *(v0 + 1496);
    v226 = *(v0 + 1488);
    v421 = *(v0 + 1480);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000082B4(v223, v224, &unk_100AD6DD0);
    sub_1000082B4(v374, v379, &unk_100AD4790);
    (*(v225 + 16))(v226, v392, v386);
    (*(v225 + 56))(v226, 0, 1, v386);
    MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

    sub_1000340DC(v107, v454);
    (*(v225 + 8))(v392, v386);
    sub_100004F84(v374, &unk_100AD4790);
    sub_100004F84(v223, &unk_100AD6DD0);
    v490(v448, v442);
    (*(v412 + 8))(v462, v435);
    (*(v428 + 32))(v421, v405, v469);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AE0E90);
    v227 = swift_allocObject();
    v228 = *(*v227 + 104);
    v229 = sub_1000F24EC(&qword_100AD6F70);
    (*(*(v229 - 8) + 56))(v227 + v228, 1, 1, v229);
    *(v227 + *(*v227 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v421, v227 + *(*v227 + 120), &qword_100ADA8E0);
    v230 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
LABEL_122:
    v243 = v511;
    *(v511 + *v230) = v227;
LABEL_123:

    v6 = 0;
LABEL_124:
    *(v0 + 2832) = v243;
    *(v0 + 2824) = v6;
    v298 = *(v0 + 2608);
    v525 = *(v0 + 3008);
    v518 = *(v0 + 3004);
    v299 = *(v0 + 992);
    v300 = *(v0 + 984);
    v509 = *(v0 + 976);
    v301 = *(v0 + 968);
    v302 = *(v0 + 960);
    v303 = *(v0 + 952);
    v304 = *(v0 + 896);
    *(v0 + 576) = *(v0 + 888);
    *(v0 + 584) = v304;

    v305._countAndFlagsBits = 0x20746573734120;
    v305._object = 0xE700000000000000;
    String.append(_:)(v305);
    *(v0 + 768) = v298;
    v306._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v306);

    v307 = v243;
    v308 = objc_allocWithZone(NSAttributedString);
    v309 = String._bridgeToObjectiveC()();

    v310 = [v308 initWithString:v309];

    v311 = *(v307 + OBJC_IVAR____TtC7Journal5Asset_title);
    *(v307 + OBJC_IVAR____TtC7Journal5Asset_title) = v310;

    *v299 = static AssetPlacement.maxGridCount.getter();
    (*(v300 + 104))(v299, v518, v509);
    (*(v302 + 104))(v301, v525, v303);
    LOBYTE(v309) = JournalFeatureFlags.isEnabled.getter();
    (*(v302 + 8))(v301, v303);
    if (v309)
    {
      *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
      v312 = swift_task_alloc();
      *(v0 + 2848) = v312;
      *v312 = v0;
      v312[1] = sub_1005DEA30;
      v313 = *(v0 + 992);
      v314 = *(v0 + 880);
      v315 = *(v0 + 872);

      return sub_10056B238(v315, v314, v307, v313, 1);
    }

    else
    {
      v316 = swift_task_alloc();
      *(v0 + 2872) = v316;
      *v316 = v0;
      v316[1] = sub_1005DEE38;
      v317 = *(v0 + 992);
      v318 = *(v0 + 880);
      v319 = *(v0 + 872);

      return sub_1001F8424(v319, v318, v307, v317);
    }
  }

  if (v31 == *(v0 + 2904))
  {
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100940080;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 32) = 0xD000000000000015;
    *(v38 + 40) = 0x80000001008FDD50;
    print(_:separator:terminator:)();

    v39 = *(v0 + 120);
    v40 = *(v39 + 16);
    if (v40)
    {
      *v440 = 0;
      swift_stdlib_random();
      v41 = *v440 * v40;
      v42 = (*v440 * v40) >> 64;
      if (v40 > v41)
      {
        v43 = -v40 % v40;
        v44 = (v0 + 808);
        if (v43 > v41)
        {
          do
          {
            *v44 = 0;
            swift_stdlib_random();
            v44 = (v0 + 808);
          }

          while (v43 > *v520 * v40);
          v42 = (*v520 * v40) >> 64;
        }
      }

      if (v42 >= *(v39 + 16))
      {
        goto LABEL_148;
      }

      swift_beginAccess();

      sub_100691A14(v42);
      swift_endAccess();
    }

    v118 = *(v0 + 2000);
    v119 = *(v0 + 1600);
    v120 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v119 + 48))(v118, 1, v120) != 1)
    {
      (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
      v122 = Data.init(contentsOf:options:)();
      if (v6)
      {
        v61 = *(v0 + 2216);
        v62 = *(v0 + 2184);
        v63 = *(v0 + 2176);
        v124 = *(v0 + 1656);
        v125 = *(v0 + 1600);
        v126 = *(v0 + 1592);

        (*(v125 + 8))(v124, v126);
LABEL_58:
        (*(v62 + 8))(v61, v63);
LABEL_68:
        v6 = 0;
        goto LABEL_7;
      }

      v134 = v123;
      v135 = v122;
      v136 = objc_allocWithZone(UIImage);
      sub_100049ED8(v135, v134);
      v137 = Data._bridgeToObjectiveC()().super.isa;
      v138 = [v136 initWithData:v137];

      sub_1000340DC(v135, v134);
      v139 = v135;
      if (!v138)
      {
        v477 = *(v0 + 2216);
        v140 = *(v0 + 2184);
        v141 = *(v0 + 2176);
        v142 = *(v0 + 1656);
        v143 = *(v0 + 1600);
        v144 = *(v0 + 1592);

        sub_1000340DC(v139, v134);
        (*(v143 + 8))(v142, v144);
        (*(v140 + 8))(v477, v141);
        goto LABEL_68;
      }

      v443 = v135;
      v449 = v134;
      v387 = *(v0 + 2992);
      v398 = *(v0 + 2904);
      v236 = *(v0 + 2256);
      v380 = *(v0 + 2248);
      v393 = *(v0 + 2200);
      v413 = *(v0 + 2192);
      v513 = *(v0 + 2184);
      v455 = *(v0 + 2176);
      v492 = *(v0 + 2160);
      v422 = *(v0 + 2152);
      v375 = *(v0 + 2136);
      v522 = *(v0 + 2056);
      v470 = *(v0 + 2048);
      v237 = *(v0 + 1992);
      v365 = *(v0 + 1888);
      v463 = *(v0 + 1744);
      v406 = *(v0 + 1736);
      v505 = *(v0 + 1728);
      v483 = *(v0 + 1720);
      v429 = *(v0 + 1712);
      v362 = *(v0 + 1656);
      v238 = *(v0 + 1600);
      v239 = *(v0 + 1592);
      v371 = *(v0 + 1536);
      v240 = *(v0 + 1528);
      v368 = *(v0 + 1520);
      (*(v522 + 104))();

      (*(v238 + 16))(v237, v362, v239);
      (*(v238 + 56))(v237, 0, 1, v239);
      Date.init()();
      (*(v236 + 56))(v365, 0, 1, v380);
      (*(v240 + 104))(v371, v387, v368);
      (*(v513 + 104))(v393, v398, v455);
      v399 = *(v522 + 16);
      v399(v492, v375, v470);
      UUID.init()();
      *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
      (*(v505 + 16))(v406, v463, v483);
      v29(v413, v393, v455);
      v399(v422, v492, v470);
      v241 = sub_100285908(v406, v413, v422);
      v242 = *(v505 + 8);
      v242(v463, v483);
      v506 = *(v522 + 8);
      v506(v492, v470);
      (*(v513 + 8))(v393, v455);
      *v429 = v138;
      swift_storeEnumTagMultiPayload();
      v243 = v241;
      v514 = v138;
      UUID.init()();
      v244 = UUID.uuidString.getter();
      v246 = v245;
      v242(v463, v483);
      type metadata accessor for AssetAttachment(0);
      v247 = swift_allocObject();
      *(v247 + 16) = 0;
      sub_1005ED56C(v429, v247 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v248 = (v247 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v248 = v244;
      v248[1] = v246;
      v249 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v243 + v249) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v243 + v249) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v456 = *(v0 + 2048);
      v464 = *(v0 + 2136);
      v250 = *(v0 + 2008);
      v251 = *(v0 + 1992);
      v388 = *(v0 + 1904);
      v381 = *(v0 + 1888);
      v484 = *(v0 + 1656);
      v414 = *(v0 + 1600);
      v436 = *(v0 + 1592);
      v400 = *(v0 + 1536);
      v252 = *(v0 + 1528);
      v394 = *(v0 + 1520);
      v253 = *(v0 + 1488);
      v407 = *(v0 + 1464);
      v423 = *(v0 + 1456);
      v471 = *(v0 + 1448);
      v430 = *(v0 + 1440);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      sub_1000082B4(v251, v250, &unk_100AD6DD0);
      sub_1000082B4(v381, v388, &unk_100AD4790);
      (*(v252 + 16))(v253, v400, v394);
      (*(v252 + 56))(v253, 0, 1, v394);
      PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

      sub_1000340DC(v443, v449);
      (*(v252 + 8))(v400, v394);
      sub_100004F84(v381, &unk_100AD4790);
      sub_100004F84(v251, &unk_100AD6DD0);
      v506(v464, v456);
      (*(v414 + 8))(v484, v436);
      (*(v423 + 32))(v430, v407, v471);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E80);
      v254 = swift_allocObject();
      v255 = *(*v254 + 104);
      v256 = sub_1000F24EC(&qword_100AD2A70);
      (*(*(v256 - 8) + 56))(v254 + v255, 1, 1, v256);
      *(v254 + *(*v254 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v430, v254 + *(*v254 + 120), &qword_100ADA958);
      *(v243 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = v254;

      goto LABEL_123;
    }

    v58 = *(v0 + 2000);
    (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

    goto LABEL_54;
  }

  if (v31 == *(v0 + 2908))
  {
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100940080;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 32) = 0xD000000000000012;
    *(v45 + 40) = 0x80000001008FDCA0;
    print(_:separator:terminator:)();

    v46 = *(v0 + 128);
    v47 = *(v46 + 16);
    if (v47)
    {
      *v418 = 0;
      swift_stdlib_random();
      v48 = *v418 * v47;
      v49 = (*v418 * v47) >> 64;
      if (v47 > v48)
      {
        v50 = -v47 % v47;
        v51 = (v0 + 776);
        if (v50 > v48)
        {
          do
          {
            *v51 = 0;
            swift_stdlib_random();
            v51 = (v0 + 776);
          }

          while (v50 > *v511 * v47);
          v49 = (*v511 * v47) >> 64;
        }
      }

      if (v49 >= *(v46 + 16))
      {
        goto LABEL_149;
      }

      swift_beginAccess();

      sub_100691A14(v49);
      swift_endAccess();
    }

    v145 = *(v0 + 1984);
    v146 = *(v0 + 1600);
    v147 = *(v0 + 1592);
    URL.init(string:)();
    if ((*(v146 + 48))(v145, 1, v147) != 1)
    {
      (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
      v148 = Data.init(contentsOf:options:)();
      if (v6)
      {
        v150 = *(v0 + 2216);
        v151 = *(v0 + 2184);
        v152 = *(v0 + 2176);
        v153 = *(v0 + 1648);
        v154 = *(v0 + 1600);
        v155 = *(v0 + 1592);

        (*(v154 + 8))(v153, v155);
        (*(v151 + 8))(v150, v152);
      }

      else
      {
        v156 = v148;
        v157 = v149;
        v158 = objc_allocWithZone(UIImage);
        sub_100049ED8(v156, v157);
        v159 = Data._bridgeToObjectiveC()().super.isa;
        v160 = [v158 initWithData:v159];

        sub_1000340DC(v156, v157);
        if (v160)
        {
          v458 = v157;
          v401 = *(v0 + 2908);
          v280 = *(v0 + 2256);
          v389 = *(v0 + 2248);
          v466 = *(v0 + 2200);
          v432 = *(v0 + 2192);
          v281 = *(v0 + 2184);
          v395 = *(v0 + 2176);
          v495 = *(v0 + 2160);
          v517 = *(v0 + 2152);
          v382 = *(v0 + 2128);
          v487 = *(v0 + 2048);
          v282 = *(v0 + 1880);
          v474 = *(v0 + 1744);
          v408 = *(v0 + 1736);
          v524 = *(v0 + 1728);
          v416 = *(v0 + 1720);
          v445 = *(v0 + 1712);
          v508 = *(v0 + 2056);
          (*(v508 + 104))();

          v437 = v160;
          Date.init()();
          (*(v280 + 56))(v282, 0, 1, v389);
          (*(v281 + 104))(v466, v401, v395);
          v402 = *(v508 + 16);
          v402(v495, v382, v487);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for BookAsset()) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
          (*(v524 + 16))(v408, v474, v416);
          v29(v432, v466, v395);
          v283 = v495;
          v402(v517, v495, v487);
          v284 = sub_100285908(v408, v432, v517);
          v285 = *(v524 + 8);
          v511 = v284;
          v285(v474, v416);
          v496 = *(v508 + 8);
          v496(v283, v487);
          (*(v281 + 8))(v466, v395);
          *v445 = v437;
          swift_storeEnumTagMultiPayload();
          v488 = v437;
          UUID.init()();
          v286 = UUID.uuidString.getter();
          v288 = v287;
          v285(v474, v416);
          type metadata accessor for AssetAttachment(0);
          v289 = swift_allocObject();
          *(v289 + 16) = 0;
          sub_1005ED56C(v445, v289 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
          v290 = (v289 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
          *v290 = v286;
          v290[1] = v288;
          v291 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v511 + v291) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v511 + v291) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v438 = *(v0 + 2128);
          v433 = *(v0 + 2048);
          v292 = *(v0 + 1904);
          v293 = *(v0 + 1880);
          v294 = *(v0 + 1600);
          v446 = *(v0 + 1592);
          v452 = *(v0 + 1648);
          v295 = *(v0 + 1424);
          v425 = *(v0 + 1416);
          v467 = *(v0 + 1400);
          v475 = *(v0 + 1408);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v293, v292, &unk_100AD4790);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v156, v458);
          sub_100004F84(v293, &unk_100AD4790);
          v496(v438, v433);
          (*(v294 + 8))(v452, v446);
          (*(v425 + 32))(v467, v295, v475);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8);
          v227 = swift_allocObject();
          v296 = *(*v227 + 104);
          v297 = sub_1000F24EC(&qword_100AD4318);
          (*(*(v297 - 8) + 56))(v227 + v296, 1, 1, v297);
          *(v227 + *(*v227 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v467, v227 + *(*v227 + 120), &qword_100ADA8C0);
          v230 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
          goto LABEL_122;
        }

        v161 = *(v0 + 2216);
        v162 = *(v0 + 2184);
        v163 = *(v0 + 2176);
        v164 = *(v0 + 1648);
        v165 = *(v0 + 1600);
        v166 = *(v0 + 1592);

        sub_1000340DC(v156, v157);
        (*(v165 + 8))(v164, v166);
        (*(v162 + 8))(v161, v163);
      }

      v6 = 0;
      goto LABEL_7;
    }

    v55 = *(v0 + 2216);
    v56 = *(v0 + 2184);
    v57 = *(v0 + 2176);
    v58 = *(v0 + 1984);
LABEL_38:
    (*(v56 + 8))(v55, v57);

LABEL_54:

    v121 = v58;
LABEL_55:
    sub_100004F84(v121, &unk_100AD6DD0);
    goto LABEL_7;
  }

  if (v31 != *(v0 + 2912))
  {
    if (v31 != *(v0 + 2916))
    {
      if (v31 == *(v0 + 2920))
      {
        goto LABEL_117;
      }

      if (v31 == *(v0 + 2924))
      {
        v473 = *(v0 + 2988);
        v523 = *(v0 + 2980);
        v271 = *(v0 + 2256);
        v272 = *(v0 + 2248);
        v273 = *(v0 + 2056);
        v274 = *(v0 + 1904);
        v275 = *(v0 + 1872);
        v465 = *(v0 + 2048);
        v451 = *(v0 + 1864);
        v494 = *(v0 + 2160);
        v501 = *(v0 + 1376);
        v479 = *(v0 + 1384);
        v486 = *(v0 + 1352);
        v516 = *(v0 + 1344);
        v276 = *(v0 + 1336);
        v277 = swift_allocObject();
        *(v277 + 16) = xmmword_100940080;
        *(v277 + 56) = &type metadata for String;
        *(v277 + 32) = 0xD000000000000017;
        *(v277 + 40) = 0x80000001008FDC40;
        print(_:separator:terminator:)();

        Date.init()();
        v278 = *(v271 + 56);
        v278(v274, 0, 1, v272);
        v278(v275, 1, 1, v272);
        v278(v451, 1, 1, v272);
        v279 = *(v273 + 104);
        v279(v276, v473, v465);
        (*(v273 + 56))(v276, 0, 1, v465);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        v279(v494, v523, v465);
        (*(v486 + 16))(v501, v479, v516);
        v243 = sub_10033CC64(v494, v501);
        (*(v486 + 8))(v479, v516);
        goto LABEL_124;
      }

      if (v31 == *(v0 + 2928))
      {
        v127 = *(v0 + 1944);
        v128 = *(v0 + 1936);
        v129 = *(v0 + 1600);
        v130 = *(v0 + 1592);
        v131 = [objc_allocWithZone(LPLinkMetadata) init];
        *(v0 + 2712) = v131;
        URL.init(string:)();
        sub_1000082B4(v127, v128, &unk_100AD6DD0);
        v499 = *(v129 + 48);
        if (v499(v128, 1, v130) == 1)
        {
          v133 = 0;
        }

        else
        {
          v167 = *(v0 + 1936);
          v168 = *(v0 + 1600);
          v169 = *(v0 + 1592);
          URL._bridgeToObjectiveC()(v132);
          v133 = v170;
          (*(v168 + 8))(v167, v169);
        }

        v171 = *(v0 + 1928);
        v172 = *(v0 + 1592);
        [v131 setURL:v133];

        URL.init(string:)();
        v173 = (v499)(v171, 1, v172);
        if (v173 == 1)
        {
          goto LABEL_156;
        }

        v182 = *(v0 + 1928);
        v183 = *(v0 + 1600);
        v184 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v181);
        v186 = v185;
        v187 = *(v183 + 8);
        *(v0 + 2720) = v187;
        *(v0 + 2728) = (v183 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v187(v182, v184);
        [v131 setOriginalURL:v186];

        *(v0 + 656) = 0x20656C707041;
        *(v0 + 664) = 0xE600000000000000;
        *(v0 + 696) = 0;
        swift_stdlib_random();
        v188 = *(v0 + 696);
        if (((100 * v188) & 0xFFFFFFFFFFFFFFF0) != 0)
        {
          v189 = (v188 * 0x64uLL) >> 64;
        }

        else
        {
          v190 = (v0 + 688);
          do
          {
            *v190 = 0;
            swift_stdlib_random();
            v190 = (v0 + 688);
          }

          while (((100 * *v481) & 0xFFFFFFFFFFFFFFF0) == 0);
          v189 = (*v481 * 0x64uLL) >> 64;
        }

        v191 = *(v0 + 1944);
        v192 = *(v0 + 1920);
        v193 = *(v0 + 1592);
        *(v0 + 864) = v189;
        v194._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v194);

        v195 = String._bridgeToObjectiveC()();

        [v131 setTitle:v195];

        sub_1000082B4(v191, v192, &unk_100AD6DD0);
        if (v499(v192, 1, v193) != 1)
        {
          v322 = *(v0 + 2980);
          v323 = *(v0 + 2104);
          v324 = *(v0 + 2056);
          v325 = *(v0 + 2048);
          v326 = *(v0 + 1616);
          v327 = *(v0 + 1608);
          v328 = *(v0 + 1600);
          v329 = *(v0 + 1592);
          (*(v328 + 32))(v326, *(v0 + 1920), v329);
          (*(v324 + 104))(v323, v322, v325);
          (*(v328 + 16))(v327, v326, v329);
          Date.init()();
          v330 = swift_task_alloc();
          *(v0 + 2736) = v330;
          *v330 = v0;
          v330[1] = sub_1005D69DC;
          v331 = *(v0 + 2288);
          v332 = *(v0 + 2104);
          v333 = *(v0 + 1608);
          v334 = *(v0 + 880);
          v335 = *(v0 + 872);

          return sub_1001DEA08(v335, v334, v332, v333, 0, 0, v331);
        }

        v196 = *(v0 + 2216);
        v197 = *(v0 + 2184);
        v198 = *(v0 + 2176);
        v199 = *(v0 + 1944);
        v200 = *(v0 + 1920);

        sub_100004F84(v199, &unk_100AD6DD0);
        (*(v197 + 8))(v196, v198);
        v121 = v200;
        goto LABEL_55;
      }

      if (v31 == *(v0 + 2932))
      {
        v202 = swift_task_alloc();
        *(v0 + 2760) = v202;
        *(v202 + 16) = 1;
        v320 = swift_task_alloc();
        *(v0 + 2768) = v320;
        v321 = sub_1000F24EC(&qword_100AEABF0);
        *v320 = v0;
        v320[1] = sub_1005DB91C;
        v175 = *(v0 + 880);
        v174 = *(v0 + 872);
        v180 = v321;
        v178 = sub_1005ED67C;
        v173 = v0 + 712;
LABEL_101:
        v177 = 0x80000001008FDB40;
        v176 = 0xD000000000000024;
        v179 = v202;

        return withCheckedContinuation<A>(isolation:function:_:)(v173, v174, v175, v176, v177, v178, v179, v180);
      }

      if (v31 == *(v0 + 2936))
      {
        v202 = swift_task_alloc();
        *(v0 + 2776) = v202;
        *(v202 + 16) = 1;
        v336 = swift_task_alloc();
        *(v0 + 2784) = v336;
        v337 = sub_1000F24EC(&qword_100AEABF0);
        *v336 = v0;
        v336[1] = sub_1005DC438;
        v175 = *(v0 + 880);
        v174 = *(v0 + 872);
        v180 = v337;
        v178 = sub_1005ED67C;
        v173 = v0 + 720;
        goto LABEL_101;
      }

      if (v31 == *(v0 + 2940))
      {
        v338 = sub_1005ED3EC(v31, -90.0, 90.0);
        v340 = v339;
        sub_1005ED3EC(v338, -180.0, 180.0);
        v342 = v341;
        *v377 = _swiftEmptyArrayStorage;
        v173 = sub_1006A699C(5001);
        if (v173 + 5000 >= 1)
        {
          v343 = v173 + 4999;
          v107 = 1;
          while (1)
          {
            v344 = sub_1005ED3EC(v173, -0.01, 0.01);
            v340 = v340 + v345;
            sub_1005ED3EC(v344, -0.01, 0.01);
            v342 = v342 + v346;
            [objc_allocWithZone(CLLocation) initWithLatitude:v340 longitude:v342];
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v377 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v377 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v173 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (!v343)
            {
              break;
            }

            --v343;
            if (__OFADD__(v107++, 1))
            {
              __break(1u);
              goto LABEL_154;
            }
          }

          v383 = *(v0 + 2940);
          v348 = *(v0 + 2304);
          v366 = *(v0 + 2280);
          v349 = *(v0 + 2256);
          v350 = *(v0 + 2248);
          v372 = *(v0 + 2200);
          v403 = *(v0 + 2192);
          v502 = *(v0 + 2184);
          v369 = *(v0 + 2176);
          v376 = *(v0 + 2160);
          v409 = *(v0 + 2152);
          v510 = *(v0 + 2080);
          v519 = *(v0 + 2048);
          v526 = *(v0 + 2056);
          v417 = *(v0 + 1904);
          v426 = *(v0 + 1872);
          v351 = *(v0 + 1792);
          v476 = *(v0 + 1784);
          v480 = *(v0 + 1744);
          v390 = *(v0 + 1736);
          v489 = *(v0 + 1728);
          v497 = *(v0 + 1720);
          v439 = *(v0 + 1176);
          v447 = *(v0 + 1168);
          v453 = *(v0 + 1152);
          v459 = *(v0 + 1160);
          (*(v526 + 104))();
          Date.init()();
          Date.addingTimeInterval(_:)();
          v352 = *(v349 + 8);
          v352(v348, v350);
          v363 = *(v349 + 56);
          v363(v351, 0, 1, v350);
          Date.init()();
          Date.addingTimeInterval(_:)();
          v352(v348, v350);
          sub_1006A699C(0x20000000000001);
          Date.addingTimeInterval(_:)();
          v352(v366, v350);
          v363(v476, 0, 1, v350);
          sub_1006A699C(0x20000000000001);
          sub_1006A699C(0x20000000000001);
          (*(v502 + 104))(v372, v383, v369);
          v384 = *(v526 + 16);
          v384(v376, v510, v519);
          UUID.init()();
          *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
          (*(v489 + 16))(v390, v480, v497);
          v29(v403, v372, v369);
          v384(v409, v376, v519);
          v353 = sub_100285908(v390, v403, v409);
          (*(v489 + 8))(v480, v497);
          v498 = *(v526 + 8);
          v498(v376, v519);
          (*(v502 + 8))(v372, v369);
          sub_1000082B4(v351, v417, &unk_100AD4790);
          sub_1000082B4(v476, v426, &unk_100AD4790);
          v243 = v353;
          WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
          sub_100004F84(v476, &unk_100AD4790);
          sub_100004F84(v351, &unk_100AD4790);
          v498(v510, v519);
          (*(v447 + 32))(v453, v439, v459);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE0E20);
          v354 = swift_allocObject();
          v355 = *(*v354 + 104);
          v356 = sub_1000F24EC(&qword_100AD5B28);
          (*(*(v356 - 8) + 56))(v354 + v355, 1, 1, v356);
          *(v354 + *(*v354 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v453, v354 + *(*v354 + 120), &qword_100ADA8A0);
          *(v243 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = v354;

          goto LABEL_124;
        }

        __break(1u);
LABEL_156:
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v173, v174, v175, v176, v177, v178, v179, v180);
      }

      if (v31 != *(v0 + 2944))
      {
        if (v31 == *(v0 + 2948))
        {
          v357 = *(v0 + 2160);
          (*(*(v0 + 2056) + 104))(v357, *(v0 + 2980), *(v0 + 2048));
          v243 = sub_10019BB28(v357, 0, 0);
          goto LABEL_124;
        }

        if (v31 == *(v0 + 2952))
        {
          v202 = swift_task_alloc();
          *(v0 + 2792) = v202;
          *(v202 + 16) = 1;
          v358 = swift_task_alloc();
          *(v0 + 2800) = v358;
          v359 = sub_1000F24EC(&qword_100AEABF0);
          *v358 = v0;
          v358[1] = sub_1005DCF44;
          v175 = *(v0 + 880);
          v174 = *(v0 + 872);
          v180 = v359;
          v178 = sub_1005ED67C;
          v173 = v0 + 760;
          goto LABEL_101;
        }

        if (v31 != *(v0 + 2956) && v31 != *(v0 + 2960) && v31 != *(v0 + 2964) && v31 != *(v0 + 2968))
        {
          if (v31 == *(v0 + 2972))
          {
            goto LABEL_150;
          }

          if (v31 != *(v0 + 2976))
          {

            return _diagnoseUnexpectedEnumCase<A>(type:)();
          }
        }
      }
    }

    goto LABEL_6;
  }

  v67 = *(v0 + 1744);
  v68 = *(v0 + 1728);
  v69 = *(v0 + 1720);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100940080;
  *(v70 + 56) = &type metadata for String;
  *(v70 + 32) = 0xD000000000000012;
  *(v70 + 40) = 0x80000001008FDC00;
  print(_:separator:terminator:)();

  UUID.init()();
  v71 = UUID.uuidString.getter();
  v73 = v72;
  v74 = *(v68 + 8);
  *(v0 + 2648) = v74;
  *(v0 + 2656) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v67, v69);
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v75 = *(v0 + 1672);
  v76 = *(v0 + 1600);
  v77 = *(v0 + 1592);
  v78 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v78, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  *(v0 + 640) = v71;
  *(v0 + 648) = v73;
  v79._countAndFlagsBits = 1717658414;
  v79._object = 0xE400000000000000;
  String.append(_:)(v79);
  URL.appendingPathComponent(_:)();

  v80 = *(v76 + 8);
  *(v0 + 2664) = v80;
  *(v0 + 2672) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80(v75, v77);
  v81 = sub_1001C075C(5, &off_100A57518);
  v83 = v82;
  *(v0 + 2680) = v82;
  v84 = objc_opt_self();
  v85 = [v84 defaultManager];
  URL.absoluteString.getter();
  v86 = String._bridgeToObjectiveC()();

  v87 = [v85 fileExistsAtPath:v86];

  if (!v87)
  {
    goto LABEL_110;
  }

  v88 = [v84 defaultManager];
  URL._bridgeToObjectiveC()(v89);
  v91 = v90;
  *(v0 + 744) = 0;
  v92 = [v88 removeItemAtURL:v90 error:v0 + 744];

  v93 = *(v0 + 744);
  if (!v92)
  {
    v94 = v93;

    v95 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v96 = *(v0 + 2664);
    v97 = *(v0 + 2216);
    v98 = *(v0 + 2184);
    v99 = *(v0 + 2176);
    v100 = *(v0 + 1640);
    v101 = *(v0 + 1592);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_100940080;
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v103 = *(v0 + 600);
    *(v0 + 608) = *(v0 + 592);
    *(v0 + 616) = v103;
    v104._object = 0x80000001008FDC20;
    v104._countAndFlagsBits = 0x100000000000001ALL;
    String.append(_:)(v104);
    *(v0 + 728) = v95;
    sub_1000F24EC(&qword_100AD5BC0);
    _print_unlocked<A, B>(_:_:)();
    v105 = *(v0 + 608);
    v106 = *(v0 + 616);
    *(v102 + 56) = &type metadata for String;
    *(v102 + 32) = v105;
    *(v102 + 40) = v106;
    print(_:separator:terminator:)();

    v96(v100, v101);
    (*(v98 + 8))(v97, v99);
    v6 = 0;
    goto LABEL_7;
  }

  v231 = v93;
LABEL_110:
  v232 = swift_task_alloc();
  *(v0 + 2688) = v232;
  *v232 = v0;
  v232[1] = sub_1005D08E4;
  v233 = *(v0 + 1640);
  v234 = *(v0 + 880);
  v235 = *(v0 + 872);

  return sub_10016A7C4(v235, v234, v81, v83, v233);
}

uint64_t sub_1005E8714()
{
  v365 = (v0 + 688);
  v410 = (v0 + 752);
  v372 = (v0 + 776);
  v430 = (v0 + 784);
  v379 = (v0 + 808);
  v466 = (v0 + 816);
  v400 = (v0 + 840);
  v475 = *(v0 + 2696);
  v436 = "\tRandomEntry audio";
  v442 = 0x80000001008FDE30;
  v487 = 1;
LABEL_2:
  v1 = *(v0 + 2664);
  v447 = *(v0 + 2216);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2176);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1592);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  *(v0 + 592) = 0;
  *(v0 + 600) = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v7 = *(v0 + 600);
  *(v0 + 608) = *(v0 + 592);
  *(v0 + 616) = v7;
  v8._object = 0x80000001008FDC20;
  v8._countAndFlagsBits = 0x100000000000001ALL;
  String.append(_:)(v8);
  *(v0 + 728) = v475;
  sub_1000F24EC(&qword_100AD5BC0);
  _print_unlocked<A, B>(_:_:)();
  v9 = *(v0 + 608);
  v10 = *(v0 + 616);
  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;
  print(_:separator:terminator:)();

  v1(v4, v5);
  (*(v2 + 8))(v447, v3);
  v11 = *(v0 + 2608) + 1;
  if (v11 == *(v0 + 912))
  {
LABEL_86:
    v163 = *(v0 + 2568);

    v164 = *(v0 + 8);
    v165 = *(v0 + 2536);

    return v164(v165);
  }

  while (1)
  {
    *(v0 + 2608) = v11;
    *(v0 + 2600) = 0;
    v12 = *(v0 + 2552);
    *(v0 + 832) = 0;
    swift_stdlib_random();
    v13 = *(v0 + 832);
    v14 = (v13 * v12) >> 64;
    v15 = v13 * v12;
    v16 = *(v0 + 2552);
    if (v12 > v15)
    {
      v17 = -v16 % v16;
      if (v17 > v15)
      {
        do
        {
          v18 = *(v0 + 2552);
          *(v0 + 680) = 0;
          swift_stdlib_random();
          v19 = *(v0 + 680);
        }

        while (v17 > v19 * v18);
        v14 = (v19 * v18) >> 64;
        v16 = *(v0 + 2552);
      }
    }

    if (v14 >= v16)
    {
      __break(1u);
LABEL_105:
      v168 = swift_task_alloc();
      *(v0 + 2760) = v168;
      *(v168 + 16) = 1;
      v248 = swift_task_alloc();
      *(v0 + 2768) = v248;
      v249 = sub_1000F24EC(&qword_100AEABF0);
      *v248 = v0;
      v248[1] = sub_1005DB91C;
      v113 = *(v0 + 880);
      v112 = *(v0 + 872);
      v118 = v249;
      v116 = sub_1005ED67C;
      v111 = v0 + 712;
      goto LABEL_90;
    }

    v20 = *(v0 + 2888);
    v21 = *(v0 + 2216);
    v22 = *(v0 + 2208);
    v23 = *(v0 + 2184);
    v24 = *(v0 + 2176);
    v25 = *(v23 + 16);
    v26 = *(v0 + 904) + ((*(v0 + 2884) + 32) & ~*(v0 + 2884)) + *(v23 + 72) * v14;
    *(v0 + 2616) = v25;
    *(v0 + 2624) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v26, v24);
    v25(v22, v21, v24);
    v27 = (*(v23 + 88))(v22, v24);
    if (v27 == v20)
    {
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_100940080;
      *(v167 + 56) = &type metadata for String;
      *(v167 + 32) = 0xD000000000000013;
      *(v167 + 40) = 0x80000001008FDEC0;
      print(_:separator:terminator:)();

      v168 = swift_task_alloc();
      *(v0 + 2632) = v168;
      *(v168 + 16) = 1;
      v169 = swift_task_alloc();
      *(v0 + 2640) = v169;
      v170 = sub_1000F24EC(&qword_100AEABF0);
      *v169 = v0;
      v169[1] = sub_1005CAA34;
      v113 = *(v0 + 880);
      v112 = *(v0 + 872);
      v118 = v170;
      v116 = sub_1005ED67C;
      v111 = v0 + 848;
      goto LABEL_90;
    }

    if (v27 == *(v0 + 2892))
    {
      goto LABEL_4;
    }

    if (v27 == *(v0 + 2896))
    {
      break;
    }

    if (v27 == *(v0 + 2900))
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100940080;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 32) = 0xD000000000000012;
      *(v28 + 40) = 0x80000001008FDE10;
      print(_:separator:terminator:)();

      v29 = *(v0 + 112);
      v30 = v29[2];
      if (v30)
      {
        v31 = v0 + 816;
        *v466 = 0;
        swift_stdlib_random();
        v32 = *v466 * v30;
        v33 = (*v466 * v30) >> 64;
        if (v30 > v32)
        {
          v31 = -v30 % v30;
          if (v31 > v32)
          {
            do
            {
              *v400 = 0;
              swift_stdlib_random();
            }

            while (v31 > *v400 * v30);
            v33 = (*v400 * v30) >> 64;
          }
        }

        if (v33 >= v29[2])
        {
          __break(1u);
          goto LABEL_133;
        }

        swift_beginAccess();

        sub_100691A14(v33);
        swift_endAccess();
      }

      v46 = *(v0 + 2024);
      v47 = *(v0 + 1600);
      v48 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v47 + 48))(v46, 1, v48) == 1)
      {
        v49 = *(v0 + 2216);
        v50 = *(v0 + 2184);
        v51 = *(v0 + 2176);
        v52 = *(v0 + 2024);
        goto LABEL_50;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1664), *(v0 + 2024), *(v0 + 1592));
      v459 = 0;
      v64 = Data.init(contentsOf:options:)();
      v66 = v65;
      v67 = objc_allocWithZone(UIImage);
      sub_100049ED8(v64, v66);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v69 = [v67 initWithData:isa];

      sub_1000340DC(v64, v66);
      v70 = v64;
      if (v69)
      {
        v436 = v64;
        v442 = v66;
        v352 = *(v0 + 3000);
        v373 = *(v0 + 2900);
        v176 = *(v0 + 2256);
        v349 = *(v0 + 2248);
        v359 = *(v0 + 2200);
        v411 = *(v0 + 2192);
        v177 = *(v0 + 2184);
        v452 = *(v0 + 2176);
        v467 = *(v0 + 2160);
        v417 = *(v0 + 2152);
        v346 = *(v0 + 2144);
        v480 = *(v0 + 2056);
        v460 = *(v0 + 2048);
        v401 = *(v0 + 2016);
        v338 = *(v0 + 1896);
        v366 = *(v0 + 1744);
        v386 = *(v0 + 1736);
        v488 = *(v0 + 1728);
        v393 = *(v0 + 1720);
        v423 = *(v0 + 1712);
        v178 = *(v0 + 1600);
        v179 = *(v0 + 1592);
        v343 = *(v0 + 1544);
        v180 = *(v0 + 1528);
        v340 = *(v0 + 1520);
        (*(v480 + 104))();

        (*(v178 + 56))(v401, 1, 1, v179);
        v402 = v69;
        Date.init()();
        (*(v176 + 56))(v338, 0, 1, v349);
        (*(v180 + 104))(v343, v352, v340);
        (*(v177 + 104))(v359, v373, v452);
        v374 = *(v480 + 16);
        v374(v467, v346, v460);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for MusicAsset()) + OBJC_IVAR____TtC7Journal10MusicAsset_metadata) = 0;
        (*(v488 + 16))(v386, v366, v393);
        v25(v411, v359, v452);
        v181 = v467;
        v374(v417, v467, v460);
        v182 = sub_100285908(v386, v411, v417);
        v183 = *(v488 + 8);
        v183(v366, v393);
        v466 = *(v480 + 8);
        v466(v181, v460);
        (*(v177 + 8))(v359, v452);
        *v423 = v402;
        swift_storeEnumTagMultiPayload();
        v459 = v402;
        UUID.init()();
        v184 = UUID.uuidString.getter();
        v186 = v185;
        v183(v366, v393);
        type metadata accessor for AssetAttachment(0);
        v187 = swift_allocObject();
        *(v187 + 16) = 0;
        sub_1005ED56C(v423, v187 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v188 = (v187 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v188 = v184;
        v188[1] = v186;
        v189 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v487 = v182;
        if (*((*(v182 + v189) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v182 + v189) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_143:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v412 = *(v0 + 2048);
        v418 = *(v0 + 2144);
        v190 = *(v0 + 2016);
        v191 = *(v0 + 2008);
        v353 = *(v0 + 1904);
        v192 = *(v0 + 1896);
        v424 = *(v0 + 1664);
        v380 = *(v0 + 1600);
        v403 = *(v0 + 1592);
        v367 = *(v0 + 1544);
        v193 = *(v0 + 1528);
        v360 = *(v0 + 1520);
        v375 = *(v0 + 1512);
        v394 = *(v0 + 1504);
        v431 = *(v0 + 1496);
        v194 = *(v0 + 1488);
        v387 = *(v0 + 1480);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v190, v191, &unk_100AD6DD0);
        sub_1000082B4(v192, v353, &unk_100AD4790);
        (*(v193 + 16))(v194, v367, v360);
        (*(v193 + 56))(v194, 0, 1, v360);
        MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();

        sub_1000340DC(v436, v442);
        (*(v193 + 8))(v367, v360);
        sub_100004F84(v192, &unk_100AD4790);
        sub_100004F84(v190, &unk_100AD6DD0);
        v466(v418, v412);
        (*(v380 + 8))(v424, v403);
        (*(v394 + 32))(v387, v375, v431);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E90);
        v195 = swift_allocObject();
        v196 = *(*v195 + 104);
        v197 = sub_1000F24EC(&qword_100AD6F70);
        (*(*(v197 - 8) + 56))(v195 + v196, 1, 1, v197);
        *(v195 + *(*v195 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v387, v195 + *(*v195 + 120), &qword_100ADA8E0);
        v198 = &OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
        goto LABEL_98;
      }

      v71 = *(v0 + 2216);
      v72 = *(v0 + 2184);
      v73 = *(v0 + 2176);
      v74 = *(v0 + 1664);
      v75 = *(v0 + 1600);
      v76 = *(v0 + 1592);

      sub_1000340DC(v70, v66);
      (*(v75 + 8))(v74, v76);
      (*(v72 + 8))(v71, v73);
    }

    else if (v27 == *(v0 + 2904))
    {
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100940080;
      *(v34 + 56) = &type metadata for String;
      *(v34 + 32) = 0xD000000000000015;
      *(v34 + 40) = 0x80000001008FDD50;
      print(_:separator:terminator:)();

      v35 = *(v0 + 120);
      v36 = *(v35 + 16);
      if (v36)
      {
        *v430 = 0;
        swift_stdlib_random();
        v37 = *v430 * v36;
        v38 = (*v430 * v36) >> 64;
        if (v36 > v37)
        {
          v39 = -v36 % v36;
          if (v39 > v37)
          {
            do
            {
              *v379 = 0;
              swift_stdlib_random();
            }

            while (v39 > *v379 * v36);
            v38 = (*v379 * v36) >> 64;
          }
        }

        if (v38 >= *(v35 + 16))
        {
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          v168 = swift_task_alloc();
          *(v0 + 2808) = v168;
          *(v168 + 16) = 1;
          v335 = swift_task_alloc();
          *(v0 + 2816) = v335;
          v336 = sub_1000F24EC(&qword_100AEABF0);
          *v335 = v0;
          v335[1] = sub_1005DDCB8;
          v113 = *(v0 + 880);
          v112 = *(v0 + 872);
          v118 = v336;
          v116 = sub_1005ED564;
          v111 = v0 + 824;
LABEL_90:
          v115 = 0x80000001008FDB40;
          v114 = 0xD000000000000024;
          v117 = v168;

          return withCheckedContinuation<A>(isolation:function:_:)(v111, v112, v113, v114, v115, v116, v117, v118);
        }

        swift_beginAccess();

        sub_100691A14(v38);
        swift_endAccess();
      }

      v61 = *(v0 + 2000);
      v62 = *(v0 + 1600);
      v63 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v62 + 48))(v61, 1, v63) == 1)
      {
        v49 = *(v0 + 2216);
        v50 = *(v0 + 2184);
        v51 = *(v0 + 2176);
        v52 = *(v0 + 2000);
LABEL_50:
        (*(v50 + 8))(v49, v51);

LABEL_51:

        sub_100004F84(v52, &unk_100AD6DD0);
        goto LABEL_5;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1656), *(v0 + 2000), *(v0 + 1592));
      v459 = 0;
      v80 = Data.init(contentsOf:options:)();
      v82 = v81;
      v83 = objc_allocWithZone(UIImage);
      sub_100049ED8(v80, v82);
      v84 = Data._bridgeToObjectiveC()().super.isa;
      v85 = [v83 initWithData:v84];

      sub_1000340DC(v80, v82);
      v86 = v80;
      if (v85)
      {
        v426 = v80;
        v433 = v82;
        v361 = *(v0 + 2992);
        v381 = *(v0 + 2904);
        v347 = *(v0 + 2256);
        v354 = *(v0 + 2248);
        v439 = *(v0 + 2200);
        v396 = *(v0 + 2192);
        v224 = *(v0 + 2184);
        v368 = *(v0 + 2176);
        v470 = *(v0 + 2160);
        v405 = *(v0 + 2152);
        v350 = *(v0 + 2136);
        v483 = *(v0 + 2056);
        v455 = *(v0 + 2048);
        v225 = *(v0 + 1992);
        v339 = *(v0 + 1888);
        v445 = *(v0 + 1744);
        v389 = *(v0 + 1736);
        v490 = *(v0 + 1728);
        v463 = *(v0 + 1720);
        v413 = *(v0 + 1712);
        v337 = *(v0 + 1656);
        v226 = *(v0 + 1600);
        v227 = *(v0 + 1592);
        v344 = *(v0 + 1536);
        v228 = *(v0 + 1528);
        v341 = *(v0 + 1520);
        (*(v483 + 104))();

        (*(v226 + 16))(v225, v337, v227);
        (*(v226 + 56))(v225, 0, 1, v227);
        Date.init()();
        (*(v347 + 56))(v339, 0, 1, v354);
        (*(v228 + 104))(v344, v361, v341);
        (*(v224 + 104))(v439, v381, v368);
        v382 = *(v483 + 16);
        v382(v470, v350, v455);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for PodcastAsset()) + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata) = 0;
        (*(v490 + 16))(v389, v445, v463);
        v25(v396, v439, v368);
        v229 = v470;
        v382(v405, v470, v455);
        v230 = sub_100285908(v389, v396, v405);
        v231 = *(v490 + 8);
        v231(v445, v463);
        v471 = *(v483 + 8);
        v471(v229, v455);
        (*(v224 + 8))(v439, v368);
        *v413 = v85;
        swift_storeEnumTagMultiPayload();
        v232 = v230;
        v456 = v85;
        UUID.init()();
        v233 = UUID.uuidString.getter();
        v235 = v234;
        v231(v445, v463);
        type metadata accessor for AssetAttachment(0);
        v236 = swift_allocObject();
        *(v236 + 16) = 0;
        sub_1005ED56C(v413, v236 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v237 = (v236 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v237 = v233;
        v237[1] = v235;
        v238 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v491 = v232;
        if (*((*&v232[v238] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v232[v238] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v414 = *(v0 + 2048);
        v419 = *(v0 + 2136);
        v239 = *(v0 + 2008);
        v240 = *(v0 + 1992);
        v362 = *(v0 + 1904);
        v355 = *(v0 + 1888);
        v446 = *(v0 + 1656);
        v383 = *(v0 + 1600);
        v406 = *(v0 + 1592);
        v369 = *(v0 + 1536);
        v241 = *(v0 + 1528);
        v242 = *(v0 + 1520);
        v243 = *(v0 + 1488);
        v376 = *(v0 + 1464);
        v390 = *(v0 + 1456);
        v440 = *(v0 + 1448);
        v397 = *(v0 + 1440);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_1000082B4(v240, v239, &unk_100AD6DD0);
        sub_1000082B4(v355, v362, &unk_100AD4790);
        (*(v241 + 16))(v243, v369, v242);
        (*(v241 + 56))(v243, 0, 1, v242);
        PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();

        sub_1000340DC(v426, v433);
        (*(v241 + 8))(v369, v242);
        sub_100004F84(v355, &unk_100AD4790);
        sub_100004F84(v240, &unk_100AD6DD0);
        v471(v419, v414);
        (*(v383 + 8))(v446, v406);
        (*(v390 + 32))(v397, v376, v440);
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AE0E80);
        v244 = swift_allocObject();
        v245 = *(*v244 + 104);
        v246 = sub_1000F24EC(&qword_100AD2A70);
        (*(*(v246 - 8) + 56))(v244 + v245, 1, 1, v246);
        *(v244 + *(*v244 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v397, v244 + *(*v244 + 120), &qword_100ADA958);
        v247 = OBJC_IVAR____TtC7Journal12PodcastAsset_metadata;
        v199 = v491;
        goto LABEL_119;
      }

      v87 = *(v0 + 2216);
      v88 = *(v0 + 2184);
      v89 = *(v0 + 2176);
      v90 = *(v0 + 1656);
      v91 = *(v0 + 1600);
      v92 = *(v0 + 1592);

      sub_1000340DC(v86, v82);
      (*(v91 + 8))(v90, v92);
      (*(v88 + 8))(v87, v89);
    }

    else if (v27 == *(v0 + 2908))
    {
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100940080;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = 0xD000000000000012;
      *(v40 + 40) = 0x80000001008FDCA0;
      print(_:separator:terminator:)();

      v41 = *(v0 + 128);
      v42 = *(v41 + 16);
      if (v42)
      {
        *v410 = 0;
        swift_stdlib_random();
        v43 = *v410 * v42;
        v44 = (*v410 * v42) >> 64;
        if (v42 > v43)
        {
          v45 = -v42 % v42;
          if (v45 > v43)
          {
            do
            {
              *v372 = 0;
              swift_stdlib_random();
            }

            while (v45 > *v372 * v42);
            v44 = (*v372 * v42) >> 64;
          }
        }

        if (v44 >= *(v41 + 16))
        {
          goto LABEL_138;
        }

        swift_beginAccess();

        sub_100691A14(v44);
        swift_endAccess();
      }

      v77 = *(v0 + 1984);
      v78 = *(v0 + 1600);
      v79 = *(v0 + 1592);
      URL.init(string:)();
      if ((*(v78 + 48))(v77, 1, v79) == 1)
      {
        v52 = *(v0 + 1984);
        (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));

        goto LABEL_51;
      }

      (*(*(v0 + 1600) + 32))(*(v0 + 1648), *(v0 + 1984), *(v0 + 1592));
      v459 = 0;
      v93 = Data.init(contentsOf:options:)();
      v95 = v94;
      v96 = objc_allocWithZone(UIImage);
      sub_100049ED8(v93, v95);
      v97 = Data._bridgeToObjectiveC()().super.isa;
      v98 = [v96 initWithData:v97];

      sub_1000340DC(v93, v95);
      if (v98)
      {
        v436 = v93;
        v442 = v95;
        v377 = *(v0 + 2908);
        v309 = *(v0 + 2256);
        v364 = *(v0 + 2248);
        v371 = *(v0 + 2200);
        v408 = *(v0 + 2192);
        v310 = *(v0 + 2184);
        v450 = *(v0 + 2176);
        v474 = *(v0 + 2160);
        v415 = *(v0 + 2152);
        v358 = *(v0 + 2128);
        v311 = *(v0 + 1880);
        v458 = *(v0 + 1744);
        v465 = *(v0 + 2048);
        v385 = *(v0 + 1736);
        v494 = *(v0 + 1728);
        v392 = *(v0 + 1720);
        v428 = *(v0 + 1712);
        v486 = *(v0 + 2056);
        (*(v486 + 104))();

        v421 = v98;
        Date.init()();
        (*(v309 + 56))(v311, 0, 1, v364);
        (*(v310 + 104))(v371, v377, v450);
        v378 = *(v486 + 16);
        v378(v474, v358, v465);
        UUID.init()();
        *(objc_allocWithZone(type metadata accessor for BookAsset()) + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = 0;
        (*(v494 + 16))(v385, v458, v392);
        v25(v408, v371, v450);
        v312 = v474;
        v378(v415, v474, v465);
        v313 = sub_100285908(v385, v408, v415);
        v314 = *(v494 + 8);
        v314(v458, v392);
        v466 = *(v486 + 8);
        v466(v312, v465);
        (*(v310 + 8))(v371, v450);
        *v428 = v421;
        swift_storeEnumTagMultiPayload();
        v459 = v421;
        UUID.init()();
        v315 = UUID.uuidString.getter();
        v317 = v316;
        v314(v458, v392);
        type metadata accessor for AssetAttachment(0);
        v318 = swift_allocObject();
        *(v318 + 16) = 0;
        sub_1005ED56C(v428, v318 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        v319 = (v318 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
        *v319 = v315;
        v319[1] = v317;
        v320 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v487 = v313;
        if (*((*(v313 + v320) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v313 + v320) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_145;
        }

        goto LABEL_129;
      }

      v99 = *(v0 + 2216);
      v100 = *(v0 + 2184);
      v101 = *(v0 + 2176);
      v102 = *(v0 + 1648);
      v103 = *(v0 + 1600);
      v104 = *(v0 + 1592);

      sub_1000340DC(v93, v95);
      (*(v103 + 8))(v102, v104);
      (*(v100 + 8))(v99, v101);
    }

    else
    {
      if (v27 == *(v0 + 2912))
      {
        v137 = *(v0 + 1744);
        v138 = *(v0 + 1728);
        v139 = *(v0 + 1720);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_100940080;
        *(v140 + 56) = &type metadata for String;
        *(v140 + 32) = 0xD000000000000012;
        *(v140 + 40) = 0x80000001008FDC00;
        print(_:separator:terminator:)();

        UUID.init()();
        v141 = UUID.uuidString.getter();
        v143 = v142;
        v144 = *(v138 + 8);
        *(v0 + 2648) = v144;
        *(v0 + 2656) = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v144(v137, v139);
        if (qword_100AD0060 != -1)
        {
          swift_once();
        }

        v145 = *(v0 + 1672);
        v146 = *(v0 + 1600);
        v147 = *(v0 + 1592);
        v148 = type metadata accessor for FileStoreConfiguration();
        sub_10000617C(v148, qword_100B2FC48);
        FileStoreConfiguration.temporaryDirectoryURL.getter();
        *(v0 + 640) = v141;
        *(v0 + 648) = v143;
        v149._countAndFlagsBits = 1717658414;
        v149._object = 0xE400000000000000;
        String.append(_:)(v149);
        URL.appendingPathComponent(_:)();

        v150 = *(v146 + 8);
        *(v0 + 2664) = v150;
        *(v0 + 2672) = (v146 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v150(v145, v147);
        v31 = sub_1001C075C(5, &off_100A57518);
        v30 = v151;
        *(v0 + 2680) = v151;
        v152 = objc_opt_self();
        v153 = [v152 defaultManager];
        URL.absoluteString.getter();
        v154 = String._bridgeToObjectiveC()();

        v155 = [v153 fileExistsAtPath:v154];

        if (v155)
        {
          v156 = [v152 defaultManager];
          URL._bridgeToObjectiveC()(v157);
          v159 = v158;
          *(v0 + 744) = 0;
          v160 = [v156 removeItemAtURL:v158 error:v0 + 744];

          v29 = *(v0 + 744);
          if (!v160)
          {
            v161 = v29;

            v162 = _convertNSErrorToError(_:)();

            v475 = v162;
            swift_willThrow();
            v459 = v162;
            goto LABEL_2;
          }

LABEL_133:
          v330 = v29;
        }

        v331 = swift_task_alloc();
        *(v0 + 2688) = v331;
        *v331 = v0;
        v331[1] = sub_1005D08E4;
        v332 = *(v0 + 1640);
        v333 = *(v0 + 880);
        v334 = *(v0 + 872);

        return sub_10016A7C4(v334, v333, v31, v30, v332);
      }

      if (v27 == *(v0 + 2916))
      {
        goto LABEL_4;
      }

      if (v27 == *(v0 + 2920))
      {
        v461 = *(v0 + 2988);
        v404 = *(v0 + 2980);
        v200 = *(v0 + 2256);
        v201 = *(v0 + 2248);
        v395 = *(v0 + 2160);
        v453 = *(v0 + 2048);
        v202 = *(v0 + 1904);
        v203 = *(v0 + 1872);
        v204 = *(v0 + 1864);
        v425 = *(v0 + 1376);
        v476 = *(v0 + 1368);
        v481 = *(v0 + 2056);
        v437 = *(v0 + 1384);
        v443 = *(v0 + 1360);
        v432 = *(v0 + 1352);
        v388 = *(v0 + 1344);
        v205 = *(v0 + 1336);
        v206 = swift_allocObject();
        *(v206 + 16) = xmmword_100940080;
        *(v206 + 56) = &type metadata for String;
        *(v206 + 32) = 0xD000000000000018;
        *(v206 + 40) = 0x80000001008FDC60;
        print(_:separator:terminator:)();

        Date.init()();
        v207 = *(v200 + 56);
        v207(v202, 0, 1, v201);
        v207(v203, 1, 1, v201);
        v207(v204, 1, 1, v201);
        v489 = *(v481 + 104);
        v489(v205, v461, v453);
        v468 = *(v481 + 56);
        v468(v205, 0, 1, v453);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        Date.init()();
        v207(v202, 0, 1, v201);
        v207(v203, 1, 1, v201);
        v207(v204, 1, 1, v201);
        v489(v205, v461, v453);
        v468(v205, 0, 1, v453);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        Date.init()();
        v207(v202, 0, 1, v201);
        v207(v203, 1, 1, v201);
        v207(v204, 1, 1, v201);
        v489(v205, v461, v453);
        v468(v205, 0, 1, v453);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        Date.init()();
        v207(v202, 0, 1, v201);
        v207(v203, 1, 1, v201);
        v207(v204, 1, 1, v201);
        v489(v205, v461, v453);
        v468(v205, 0, 1, v453);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        sub_1000F24EC(&qword_100AD64A8);
        v208 = *(v432 + 72);
        v209 = (*(v432 + 80) + 32) & ~*(v432 + 80);
        v210 = swift_allocObject();
        *(v210 + 16) = xmmword_100941FE0;
        v211 = v210 + v209;
        v212 = *(v432 + 16);
        v212(v211, v437, v388);
        v212(v211 + v208, v425, v388);
        v212(v211 + 2 * v208, v476, v388);
        v212(v211 + 3 * v208, v443, v388);
        sub_1006ADB18(v210);
        v489(v395, v404, v453);
        v199 = sub_10011CEC0(v395, _swiftEmptyArrayStorage);
        v213 = *(v432 + 8);
        v213(v443, v388);
        v213(v476, v388);
        v213(v425, v388);
        v213(v437, v388);
        goto LABEL_121;
      }

      if (v27 == *(v0 + 2924))
      {
        v444 = *(v0 + 2988);
        v482 = *(v0 + 2980);
        v214 = *(v0 + 2256);
        v215 = *(v0 + 2248);
        v216 = *(v0 + 2056);
        v217 = *(v0 + 1904);
        v218 = *(v0 + 1872);
        v438 = *(v0 + 2048);
        v219 = *(v0 + 1864);
        v462 = *(v0 + 2160);
        v469 = *(v0 + 1376);
        v448 = *(v0 + 1384);
        v454 = *(v0 + 1352);
        v477 = *(v0 + 1344);
        v220 = *(v0 + 1336);
        v221 = swift_allocObject();
        *(v221 + 16) = xmmword_100940080;
        *(v221 + 56) = &type metadata for String;
        *(v221 + 32) = 0xD000000000000017;
        *(v221 + 40) = 0x80000001008FDC40;
        print(_:separator:terminator:)();

        Date.init()();
        v222 = *(v214 + 56);
        v222(v217, 0, 1, v215);
        v222(v218, 1, 1, v215);
        v222(v219, 1, 1, v215);
        v223 = *(v216 + 104);
        v223(v220, v444, v438);
        (*(v216 + 56))(v220, 0, 1, v438);
        VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
        v223(v462, v482, v438);
        (*(v454 + 16))(v469, v448, v477);
        v199 = sub_10033CC64(v462, v469);
        (*(v454 + 8))(v448, v477);
        goto LABEL_121;
      }

      if (v27 != *(v0 + 2928))
      {
        if (v27 == *(v0 + 2932))
        {
          goto LABEL_105;
        }

        if (v27 == *(v0 + 2936))
        {
          v168 = swift_task_alloc();
          *(v0 + 2776) = v168;
          *(v168 + 16) = 1;
          v264 = swift_task_alloc();
          *(v0 + 2784) = v264;
          v265 = sub_1000F24EC(&qword_100AEABF0);
          *v264 = v0;
          v264[1] = sub_1005DC438;
          v113 = *(v0 + 880);
          v112 = *(v0 + 872);
          v118 = v265;
          v116 = sub_1005ED67C;
          v111 = v0 + 720;
          goto LABEL_90;
        }

        if (v27 == *(v0 + 2940))
        {
          v266 = sub_1005ED3EC(v27, -90.0, 90.0);
          v268 = v267;
          sub_1005ED3EC(v266, -180.0, 180.0);
          v270 = v269;
          v271 = (v0 + 736);
          *(v0 + 736) = _swiftEmptyArrayStorage;
          v272 = sub_1006A699C(5001);
          if (v272 + 5000 >= 1)
          {
            v273 = v272 + 4999;
            v274 = 1;
            while (1)
            {
              v275 = sub_1005ED3EC(v272, -0.01, 0.01);
              v268 = v268 + v276;
              sub_1005ED3EC(v275, -0.01, 0.01);
              v270 = v270 + v277;
              [objc_allocWithZone(CLLocation) initWithLatitude:v268 longitude:v270];
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v271 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v271 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v271 = (v0 + 736);
              }

              v272 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (!v273)
              {
                break;
              }

              --v273;
              if (__OFADD__(v274++, 1))
              {
                __break(1u);
                goto LABEL_143;
              }
            }

            v356 = *(v0 + 2940);
            v279 = *(v0 + 2304);
            v342 = *(v0 + 2280);
            v280 = *(v0 + 2256);
            v281 = *(v0 + 2248);
            v348 = *(v0 + 2200);
            v384 = *(v0 + 2192);
            v478 = *(v0 + 2184);
            v345 = *(v0 + 2176);
            v351 = *(v0 + 2160);
            v391 = *(v0 + 2152);
            v464 = *(v0 + 2056);
            v484 = *(v0 + 2080);
            v492 = *(v0 + 2048);
            v398 = *(v0 + 1904);
            v407 = *(v0 + 1872);
            v282 = *(v0 + 1792);
            v449 = *(v0 + 1784);
            v457 = *(v0 + 1744);
            v363 = *(v0 + 1736);
            v472 = *(v0 + 1728);
            v370 = *(v0 + 1720);
            v420 = *(v0 + 1176);
            v427 = *(v0 + 1168);
            v434 = *(v0 + 1152);
            v441 = *(v0 + 1160);
            (*(v464 + 104))();
            Date.init()();
            Date.addingTimeInterval(_:)();
            v283 = *(v280 + 8);
            v283(v279, v281);
            v284 = *(v280 + 56);
            v284(v282, 0, 1, v281);
            Date.init()();
            Date.addingTimeInterval(_:)();
            v283(v279, v281);
            sub_1006A699C(0x20000000000001);
            Date.addingTimeInterval(_:)();
            v283(v342, v281);
            v284(v449, 0, 1, v281);
            sub_1006A699C(0x20000000000001);
            sub_1006A699C(0x20000000000001);
            (*(v478 + 104))(v348, v356, v345);
            v357 = *(v464 + 16);
            v357(v351, v484, v492);
            UUID.init()();
            *(objc_allocWithZone(type metadata accessor for WorkoutRouteAsset()) + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata) = 0;
            (*(v472 + 16))(v363, v457, v370);
            v25(v384, v348, v345);
            v357(v391, v351, v492);
            v285 = sub_100285908(v363, v384, v391);
            (*(v472 + 8))(v457, v370);
            v473 = *(v464 + 8);
            v473(v351, v492);
            (*(v478 + 8))(v348, v345);
            sub_1000082B4(v282, v398, &unk_100AD4790);
            sub_1000082B4(v449, v407, &unk_100AD4790);
            v199 = v285;
            WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
            sub_100004F84(v449, &unk_100AD4790);
            sub_100004F84(v282, &unk_100AD4790);
            v473(v484, v492);
            (*(v427 + 32))(v434, v420, v441);
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&qword_100AE0E20);
            v244 = swift_allocObject();
            v286 = *(*v244 + 104);
            v287 = sub_1000F24EC(&qword_100AD5B28);
            (*(*(v287 - 8) + 56))(v244 + v286, 1, 1, v287);
            *(v244 + *(*v244 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v434, v244 + *(*v244 + 120), &qword_100ADA8A0);
            v247 = OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
LABEL_119:
            *&v199[v247] = v244;

LABEL_120:

LABEL_121:
            *(v0 + 2832) = v199;
            *(v0 + 2824) = 0;
            v288 = *(v0 + 2608);
            v493 = *(v0 + 3008);
            v485 = *(v0 + 3004);
            v289 = *(v0 + 992);
            v290 = *(v0 + 984);
            v479 = *(v0 + 976);
            v291 = *(v0 + 968);
            v292 = *(v0 + 960);
            v293 = *(v0 + 952);
            v294 = *(v0 + 896);
            *(v0 + 576) = *(v0 + 888);
            *(v0 + 584) = v294;

            v295._countAndFlagsBits = 0x20746573734120;
            v295._object = 0xE700000000000000;
            String.append(_:)(v295);
            *(v0 + 768) = v288;
            v296._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v296);

            v297 = objc_allocWithZone(NSAttributedString);
            v298 = String._bridgeToObjectiveC()();

            v299 = [v297 initWithString:v298];

            v300 = *&v199[OBJC_IVAR____TtC7Journal5Asset_title];
            *&v199[OBJC_IVAR____TtC7Journal5Asset_title] = v299;

            *v289 = static AssetPlacement.maxGridCount.getter();
            (*(v290 + 104))(v289, v485, v479);
            (*(v292 + 104))(v291, v493, v293);
            LOBYTE(v298) = JournalFeatureFlags.isEnabled.getter();
            (*(v292 + 8))(v291, v293);
            if (v298)
            {
              *(v0 + 2840) = CFAbsoluteTimeGetCurrent();
              v301 = swift_task_alloc();
              *(v0 + 2848) = v301;
              *v301 = v0;
              v301[1] = sub_1005DEA30;
              v302 = *(v0 + 992);
              v303 = *(v0 + 880);
              v304 = *(v0 + 872);

              return sub_10056B238(v304, v303, v199, v302, 1);
            }

            else
            {
              v305 = swift_task_alloc();
              *(v0 + 2872) = v305;
              *v305 = v0;
              v305[1] = sub_1005DEE38;
              v306 = *(v0 + 992);
              v307 = *(v0 + 880);
              v308 = *(v0 + 872);

              return sub_1001F8424(v308, v307, v199, v306);
            }
          }

          __break(1u);
LABEL_145:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_129:
          v416 = *(v0 + 2128);
          v409 = *(v0 + 2048);
          v321 = *(v0 + 1904);
          v322 = *(v0 + 1880);
          v323 = *(v0 + 1600);
          v422 = *(v0 + 1592);
          v429 = *(v0 + 1648);
          v399 = *(v0 + 1424);
          v324 = *(v0 + 1416);
          v435 = *(v0 + 1400);
          v451 = *(v0 + 1408);
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_1000082B4(v322, v321, &unk_100AD4790);
          BookAssetMetadata.init(mediaId:title:author:timeOfPurchase:)();

          sub_1000340DC(v436, v442);
          sub_100004F84(v322, &unk_100AD4790);
          v466(v416, v409);
          (*(v323 + 8))(v429, v422);
          (*(v324 + 32))(v435, v399, v451);
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AEABF8);
          v195 = swift_allocObject();
          v325 = *(*v195 + 104);
          v326 = sub_1000F24EC(&qword_100AD4318);
          (*(*(v326 - 8) + 56))(v195 + v325, 1, 1, v326);
          *(v195 + *(*v195 + 112)) = xmmword_100941EE0;
          sub_100021CEC(v435, v195 + *(*v195 + 120), &qword_100ADA8C0);
          v198 = &OBJC_IVAR____TtC7Journal9BookAsset_metadata;
LABEL_98:
          v199 = v487;
          *(v487 + *v198) = v195;
          goto LABEL_120;
        }

        if (v27 != *(v0 + 2944))
        {
          if (v27 == *(v0 + 2948))
          {
            v327 = *(v0 + 2160);
            (*(*(v0 + 2056) + 104))(v327, *(v0 + 2980), *(v0 + 2048));
            v199 = sub_10019BB28(v327, 0, 0);
            goto LABEL_121;
          }

          if (v27 == *(v0 + 2952))
          {
            v168 = swift_task_alloc();
            *(v0 + 2792) = v168;
            *(v168 + 16) = 1;
            v328 = swift_task_alloc();
            *(v0 + 2800) = v328;
            v329 = sub_1000F24EC(&qword_100AEABF0);
            *v328 = v0;
            v328[1] = sub_1005DCF44;
            v113 = *(v0 + 880);
            v112 = *(v0 + 872);
            v118 = v329;
            v116 = sub_1005ED67C;
            v111 = v0 + 760;
            goto LABEL_90;
          }

          if (v27 != *(v0 + 2956) && v27 != *(v0 + 2960) && v27 != *(v0 + 2964) && v27 != *(v0 + 2968))
          {
            if (v27 == *(v0 + 2972))
            {
              goto LABEL_139;
            }

            if (v27 != *(v0 + 2976))
            {

              return _diagnoseUnexpectedEnumCase<A>(type:)();
            }
          }
        }

LABEL_4:
        (*(*(v0 + 2184) + 8))(*(v0 + 2216), *(v0 + 2176));
        goto LABEL_5;
      }

      v53 = *(v0 + 1944);
      v54 = *(v0 + 1936);
      v55 = *(v0 + 1600);
      v56 = *(v0 + 1592);
      v57 = [objc_allocWithZone(LPLinkMetadata) init];
      *(v0 + 2712) = v57;
      URL.init(string:)();
      sub_1000082B4(v53, v54, &unk_100AD6DD0);
      v58 = *(v55 + 48);
      if (v58(v54, 1, v56) == 1)
      {
        v60 = 0;
      }

      else
      {
        v105 = *(v0 + 1936);
        v106 = *(v0 + 1600);
        v107 = *(v0 + 1592);
        URL._bridgeToObjectiveC()(v59);
        v60 = v108;
        (*(v106 + 8))(v105, v107);
      }

      v109 = *(v0 + 1928);
      v110 = *(v0 + 1592);
      [v57 setURL:v60];

      URL.init(string:)();
      v111 = (v58)(v109, 1, v110);
      if (v111 == 1)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v111, v112, v113, v114, v115, v116, v117, v118);
      }

      v120 = *(v0 + 1928);
      v121 = *(v0 + 1600);
      v122 = *(v0 + 1592);
      URL._bridgeToObjectiveC()(v119);
      v124 = v123;
      v125 = *(v121 + 8);
      *(v0 + 2720) = v125;
      *(v0 + 2728) = (v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v125(v120, v122);
      [v57 setOriginalURL:v124];

      *(v0 + 656) = 0x20656C707041;
      *(v0 + 664) = 0xE600000000000000;
      *(v0 + 696) = 0;
      swift_stdlib_random();
      v126 = *(v0 + 696);
      if (((100 * v126) & 0xFFFFFFFFFFFFFFF0) == 0)
      {
        do
        {
          *v365 = 0;
          swift_stdlib_random();
          v126 = *v365;
        }

        while (((100 * *v365) & 0xFFFFFFFFFFFFFFF0) == 0);
      }

      v127 = *(v0 + 1944);
      v128 = *(v0 + 1920);
      v129 = *(v0 + 1592);
      *(v0 + 864) = (v126 * 0x64uLL) >> 64;
      v130._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v130);

      v131 = String._bridgeToObjectiveC()();

      [v57 setTitle:v131];

      sub_1000082B4(v127, v128, &unk_100AD6DD0);
      if (v58(v128, 1, v129) != 1)
      {
        v250 = *(v0 + 2980);
        v251 = *(v0 + 2104);
        v252 = *(v0 + 2056);
        v253 = *(v0 + 2048);
        v254 = *(v0 + 1616);
        v255 = *(v0 + 1608);
        v256 = *(v0 + 1600);
        v257 = *(v0 + 1592);
        (*(v256 + 32))(v254, *(v0 + 1920), v257);
        (*(v252 + 104))(v251, v250, v253);
        (*(v256 + 16))(v255, v254, v257);
        Date.init()();
        v258 = swift_task_alloc();
        *(v0 + 2736) = v258;
        *v258 = v0;
        v258[1] = sub_1005D69DC;
        v259 = *(v0 + 2288);
        v260 = *(v0 + 2104);
        v261 = *(v0 + 1608);
        v262 = *(v0 + 880);
        v263 = *(v0 + 872);

        return sub_1001DEA08(v263, v262, v260, v261, 0, 0, v259);
      }

      v132 = *(v0 + 2216);
      v133 = *(v0 + 2184);
      v134 = *(v0 + 2176);
      v135 = *(v0 + 1944);
      v136 = *(v0 + 1920);

      sub_100004F84(v135, &unk_100AD6DD0);
      (*(v133 + 8))(v132, v134);
      sub_100004F84(v136, &unk_100AD6DD0);
    }

LABEL_5:
    v11 = *(v0 + 2608) + 1;
    if (v11 == *(v0 + 912))
    {
      goto LABEL_86;
    }
  }

  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_100940080;
  *(v171 + 56) = &type metadata for String;
  *(v171 + 32) = 0xD000000000000013;
  *(v171 + 40) = 0x80000001008FDBE0;
  print(_:separator:terminator:)();

  v172 = swift_task_alloc();
  *(v0 + 2704) = v172;
  *v172 = v0;
  v172[1] = sub_1005D1548;
  v173 = *(v0 + 1264);
  v174 = *(v0 + 880);
  v175 = *(v0 + 872);

  return sub_1006A580C(v173, v175, v174);
}

uint64_t sub_1005ED1DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1006A699C(147);
  sub_1001C075C(v8 + 3, &off_100A57518);
  v9 = objc_allocWithZone(NSAttributedString);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithString:v10];

  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.enhancedSync(_:), v4);
  v12 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    sub_100780694(v11);
  }

  else
  {
    v13 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
    v14 = *(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
    if (!v14 || (sub_1005ED630(), v15 = v14, v16 = v11, v17 = static NSObject.== infix(_:_:)(), v16, v15, (v17 & 1) == 0))
    {
      *(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged) = 1;
    }

    v18 = *(a1 + v13);
    *(a1 + v13) = v11;
    v11 = v18;
  }

  [*(a1 + 32) setIsDraft:0];
  *a2 = a1;
}

uint64_t sub_1005ED404(uint64_t result, uint64_t (*a2)(uint64_t, double, double), double a3, double a4)
{
  if (a3 == a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a4 - a3;
  if (COERCE__INT64(fabs(a4 - a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  result = swift_stdlib_random();
  if (v6 * vcvtd_n_f64_u64(0, 0x35uLL) + a3 == a4)
  {
    return a2(v8, a3, a4);
  }

  return result;
}

uint64_t sub_1005ED4B0@<X0>(char **a1@<X8>)
{
  v3 = *(type metadata accessor for EntrySource() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1001180C8(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1005ED56C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005ED5D4(uint64_t a1)
{
  v2 = type metadata accessor for RandomVideoAssetGenerator.VideoAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005ED630()
{
  result = qword_100AE4890;
  if (!qword_100AE4890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE4890);
  }

  return result;
}

id sub_1005ED6C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalAssetViewFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005ED718(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  sub_1005F10EC(a1, a2, a3, a4, a5, v14, a7);
  return v13;
}

uint64_t sub_1005ED798@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005F62D8(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 80);
}

uint64_t sub_1005ED870@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005F62D8(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
}

uint64_t sub_1005ED948()
{
  v1 = v0;
  swift_getKeyPath();
  *&v26 = v0;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 88);
  swift_unknownObjectRetain();
  v4(&v26, ObjectType, v2);
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_100018480(&v26, v29);
    v5 = v30;
    v6 = v31;
    sub_10000CA14(v29, v30);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    sub_1005EFDF8(&v26);
    v10 = v27;
    if (v27)
    {
      v11 = v28;
      sub_10000CA14(&v26, v27);
      v12 = (*(v11 + 8))(v10, v11);
      v14 = v13;
      sub_10000BA7C(&v26);
      if (v7 == v12 && v9 == v14)
      {

LABEL_9:
        swift_getKeyPath();
        *&v26 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = *(v1 + 64);
        v17 = swift_getObjectType();
        v18 = *(v16 + 120);
        swift_unknownObjectRetain();
        v18(v17, v16);
LABEL_13:
        swift_unknownObjectRelease();
        return sub_10000BA7C(v29);
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100004F84(&v26, &unk_100AE9D30);
    }

    sub_10000BA7C(v29);
  }

  else
  {
    sub_100004F84(&v26, &unk_100AE9D30);
  }

  sub_1005EFDF8(&v26);
  if (v27)
  {
    sub_100018480(&v26, v29);
    swift_getKeyPath();
    *&v26 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v1 + 64);
    v20 = swift_getObjectType();
    v21 = *(v19 + 128);
    swift_unknownObjectRetain();
    v21(v20, v19);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    *&v26 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v1 + 64);
    v23 = swift_getObjectType();
    v24 = *(v22 + 112);
    swift_unknownObjectRetain();
    v24(v29, v23, v22);
    goto LABEL_13;
  }

  return sub_100004F84(&v26, &unk_100AE9D30);
}

uint64_t sub_1005EDD04()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[2])
  {
    v1 = v0[3];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v1) = sub_100885D80(ObjectType, v1);
    swift_unknownObjectRelease();
    if (v1)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v0[2])
      {
        v3 = v0[3];
        v4 = swift_getObjectType();
        v5 = *(v3 + 64);
        swift_unknownObjectRetain();
        v5(v4, v3);
        swift_unknownObjectRelease();
      }
    }
  }

  result = sub_1005F0B78();
  if (result)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = v0[8];
    v8 = swift_getObjectType();
    v9 = *(v7 + 136);
    swift_unknownObjectRetain();
    v9(v8, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005EDEDC()
{
  v1 = v0;
  sub_1005EFDF8(v27);
  v2 = v28;
  if (v28)
  {
    v3 = v29;
    sub_10000CA14(v27, v28);
    v4 = (*(v3 + 32))(v2, v3);
    if (v4)
    {
      v5 = *(v4 + 16);

      sub_10000BA7C(v27);
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      sub_10000BA7C(v27);
    }
  }

  else
  {
    sub_100004F84(v27, &unk_100AE9D30);
  }

  if (*(v1 + 80))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  v27[0] = v1;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v1 + 16) || (v11 = *(v1 + 24), ObjectType = swift_getObjectType(), v13 = *(v11 + 32), swift_unknownObjectRetain(), LODWORD(v11) = v13(ObjectType, v11), swift_unknownObjectRelease(), !v11))
  {
    swift_getKeyPath();
    v27[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v1 + 40);
    swift_getKeyPath();
    v27[0] = v17;
    sub_1005F62D8(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = *(v17 + 32);
    sub_1005F6320(v19, v18, *(v17 + 32));

    if ((v20 & 0xC0) == 0x80 && v19 == 1 && !v18 && v20 == 128)
    {
      return 0;
    }

    sub_1005F637C(v19, v18, v20);
    return 6;
  }

  swift_getKeyPath();
  v27[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16))
  {
    v14 = *(v1 + 24);
    v15 = swift_getObjectType();
    v16 = *(v14 + 32);
    swift_unknownObjectRetain();
    LODWORD(v14) = v16(v15, v14);
    swift_unknownObjectRelease();
    if (v14 == 2 && sub_1005F0B78())
    {
LABEL_8:
      sub_1005EFDF8(v27);
      v7 = v28;
      if (v28)
      {
        v8 = v29;
        sub_10000CA14(v27, v28);
        v9 = (*(v8 + 32))(v7, v8);
        if (v9)
        {
          v10 = *(v9 + 16);

          sub_10000BA7C(v27);
          if (!v10)
          {
            return 5;
          }
        }

        else
        {
          sub_10000BA7C(v27);
        }
      }

      else
      {
        sub_100004F84(v27, &unk_100AE9D30);
      }
    }
  }

  swift_getKeyPath();
  v27[0] = v1;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v1 + 40);
  swift_getKeyPath();
  v27[0] = v21;
  sub_1005F62D8(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v21 + 16);
  v22 = *(v21 + 24);
  v23 = *(v21 + 32);
  sub_1005F6320(v6, v22, *(v21 + 32));

  if (v23 >> 6)
  {
    if (v23 >> 6 == 1)
    {
      v27[0] = v6;
      sub_1000F24EC(&qword_100AD5BC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v26 == 3)
      {

        return 3;
      }

      if (v26)
      {
LABEL_40:

        return 2;
      }

      else
      {

        return 4;
      }
    }

    else
    {
      if (v22 | v6)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 == 128;
      }

      return !v24;
    }
  }

  else
  {

    if (v23)
    {

      return 4;
    }
  }

  return v6;
}

uint64_t sub_1005EE44C()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1005EE4E4, v3, v2);
}

uint64_t sub_1005EE4E4()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v0[7] = v2;
  if (v2)
  {
    v3 = *(v0[3] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 72);
    swift_unknownObjectRetain();
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1005EE6E8;

    return v10(ObjectType, v3);
  }

  else
  {
    v8 = v0[3];

    if (*(v8 + 48))
    {
      sub_10057E548();
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1005EE6E8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1005EE824;
  }

  else
  {
    v5 = sub_1005F64B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005EE824()
{

  swift_unknownObjectRelease();
  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEAC28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed trying to cancel recording: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005EE9DC()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1005EEA74, v3, v2);
}

uint64_t sub_1005EEA74()
{
  v1 = v0[3];
  if (*(v1 + 80))
  {

LABEL_3:
    v2 = v0[1];

    return v2();
  }

  swift_getKeyPath();
  v0[2] = v1;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 16);
  v0[7] = v4;
  if (!v4)
  {
    v9 = v0[3];

    if (*(v9 + 48))
    {
      sub_10057E7B0(0, 0);
    }

    goto LABEL_3;
  }

  v5 = *(v0[3] + 24);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 96);
  swift_unknownObjectRetain();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1005EEC94;

  return v10(ObjectType, v5);
}

uint64_t sub_1005EEC94()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1005EEE3C;
  }

  else
  {
    v5 = sub_1005EEDD0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005EEDD0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005EEE3C()
{

  swift_unknownObjectRelease();
  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEAC28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed trying to save recording: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005EEFF4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEAC28);
  v1 = sub_10000617C(v0, qword_100AEAC28);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005EF0BC()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_1005EF164@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_1005EF214()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1005EF2E4()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1005EF388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_1005EF434(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005EF568()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_1005EF610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1005EF64C()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 81);
}

uint64_t sub_1005EF6EC(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005EF7FC()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

uint64_t sub_1005EF89C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1005EF96C(uint64_t result)
{
  if (*(v1 + 88) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005EFA70()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

uint64_t sub_1005EFB14(uint64_t result, char a2)
{
  if ((*(v2 + 104) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 96) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 96) = result;
    *(v2 + 104) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1005EFC48()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 106);
}

uint64_t sub_1005EFCE8(uint64_t result)
{
  if (*(v1 + 106) == (result & 1))
  {
    *(v1 + 106) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1005EFDF8@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
    swift_getKeyPath();
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 88);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v1 + 48);
    if (v7 && *(v7 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset))
    {
      v9 = *(v7 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
      *(a1 + 24) = type metadata accessor for AudioAsset();
      *(a1 + 32) = &off_100A82B98;
      *a1 = v9;

      v8 = v9;
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

double sub_1005EFF5C()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[2] && (v1 = v0[3], v2 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v1) = sub_100885D80(v2, v1), swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!v0[2])
    {
      return 0.0;
    }

    v3 = v0[3];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v0[8];
    ObjectType = swift_getObjectType();
    v5 = *(v6 + 16);
  }

  (*(v5 + 24))(ObjectType);
  return result;
}

double sub_1005F00F4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[2] && (v3 = v1[3], v4 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v3) = sub_100885D80(v4, v3), swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v1[2])
    {
      v5 = v1[3];
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 56);
      swift_unknownObjectRetain();
      v8 = COERCE_DOUBLE(v7(a1, ObjectType, v5));
      v10 = v9;
      swift_unknownObjectRelease();
      if (v10)
      {
        return 0.0;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = v1[8];
    v13 = swift_getObjectType();
    v14 = *(v12 + 40);
    swift_unknownObjectRetain();
    v11 = v14(v13, v12);
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t sub_1005F02FC()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[2] && (v1 = v0[3], v2 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v1) = sub_100885D80(v2, v1), swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v0[2])
    {
      v4 = v0[3];
      ObjectType = swift_getObjectType();
      return (*(*(v4 + 8) + 24))(ObjectType);
    }
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v0[8];
    v7 = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v8(v7, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005F04CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-1] - v3;
  sub_1005EFDF8(v11);
  v5 = v12;
  if (v12)
  {
    v6 = v13;
    sub_10000CA14(v11, v12);
    (*(v6 + 48))(v5, v6);
    sub_10000BA7C(v11);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      return (*(v8 + 32))(a1, v4, v7);
    }
  }

  else
  {
    sub_100004F84(v11, &unk_100AE9D30);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  Date.init()();
  type metadata accessor for Date();
  result = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (result != 1)
  {
    return sub_100004F84(v4, &unk_100AD4790);
  }

  return result;
}

double *sub_1005F06DC()
{
  if (*(v0 + 80) == 1)
  {
    swift_getKeyPath();
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 88);
    swift_unknownObjectRetain();
    v3(v11, ObjectType, v1);
    swift_unknownObjectRelease();
    v4 = v12;
    if (v12)
    {
      v5 = v13;
      sub_10000CA14(v11, v12);
      v6 = (*(v5 + 32))(v4, v5);
      sub_10000BA7C(v11);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      sub_100004F84(v11, &unk_100AE9D30);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = *(v0 + 72);
    swift_getKeyPath();
    v11[0] = v8;
    sub_1005F62D8(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + 80);
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1006AD964(v10);
    return v9;
  }
}

uint64_t sub_1005F0910()
{
  v30 = type metadata accessor for TranscriptViewModelSegment();
  v0 = *(v30 - 8);
  __chkstk_darwin(v30);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005F06DC();
  v4 = *(v3 + 2);
  if (v4)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v4, 0);
    v5 = v31;
    v7 = *(v0 + 16);
    v6 = v0 + 16;
    v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v28 = *(v6 + 56);
    v29 = v7;
    v26[1] = v3;
    v27 = (v6 - 8);
    do
    {
      v9 = v30;
      v10 = v6;
      v29(v2, v8, v30);
      v11 = TranscriptViewModelSegment.text.getter();
      v13 = v12;
      (*v27)(v2, v9);
      v31 = v5;
      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        sub_1001999C0((v14 > 1), v15 + 1, 1);
        v5 = v31;
      }

      *(v5 + 2) = v15 + 1;
      v16 = &v5[2 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v8 += v28;
      --v4;
      v6 = v10;
    }

    while (v4);

    v18 = v5[2];
    if (v18 != 0.0)
    {
LABEL_7:
      v19 = 0;
      v20 = 0;
      v21 = (v5 + 5);
      v22 = 0xE000000000000000;
      while (v20 < *(v5 + 2))
      {
        ++v20;
        v24 = *(v21 - 1);
        v23 = *v21;
        v31 = v19;
        v32 = v22;

        v25._countAndFlagsBits = v24;
        v25._object = v23;
        String.append(_:)(v25);

        v19 = v31;
        v22 = v32;
        v21 += 2;
        if (*&v18 == v20)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[2];
    if (v18 != 0.0)
    {
      goto LABEL_7;
    }
  }

  v19 = 0;
LABEL_13:

  return v19;
}

BOOL sub_1005F0B78()
{
  v1 = v0;
  swift_getKeyPath();
  v23[0] = v0;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v2) = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  v23[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v0 + 64);
  v6 = swift_getObjectType();
  v7 = *(v5 + 88);
  swift_unknownObjectRetain();
  v7(v23, v6, v5);
  swift_unknownObjectRelease();
  v8 = v24;
  if (v24)
  {
    v9 = v25;
    sub_10000CA14(v23, v24);
    v10 = (*(v9 + 8))(v8, v9);
    v8 = v11;
    sub_10000BA7C(v23);
  }

  else
  {
    sub_100004F84(v23, &unk_100AE9D30);
    v10 = 0;
  }

  sub_1005EFDF8(v23);
  v12 = v24;
  if (!v24)
  {
    sub_100004F84(v23, &unk_100AE9D30);
    if (!v8)
    {
      goto LABEL_16;
    }

LABEL_14:

    return 0;
  }

  v13 = v25;
  sub_10000CA14(v23, v24);
  v14 = (*(v13 + 8))(v12, v13);
  v16 = v15;
  sub_10000BA7C(v23);
  if (!v8)
  {
    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  if (v10 == v14 && v8 == v16)
  {

LABEL_16:
    swift_getKeyPath();
    v23[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v1 + 64);
    v20 = swift_getObjectType();
    v21 = *(v19 + 88);
    swift_unknownObjectRetain();
    v21(v23, v20, v19);
    swift_unknownObjectRelease();
    v22 = v24 != 0;
    sub_100004F84(v23, &unk_100AE9D30);
    return v22;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_16;
  }

  return 0;
}

BOOL sub_1005F0ECC()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = sub_100885D80(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1005F0FAC()
{
  if (*(v0 + 80))
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + 16) && (v2 = *(v0 + 24), ObjectType = swift_getObjectType(), v4 = *(v2 + 32), swift_unknownObjectRetain(), LODWORD(v2) = v4(ObjectType, v2), swift_unknownObjectRelease(), v2 == 2))
    {
      sub_1005EFF5C();
      static Duration.seconds(_:)();
      static Duration.zero.getter();
      v1 = static Duration.== infix(_:_:)() ^ 1;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1005F10EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v15 - 8);
  v17 = &v22 - v16;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0x3F847AE147AE147BLL;
  if (qword_100AD0A90 != -1)
  {
    swift_once();
  }

  *(v8 + 40) = qword_100B31070;
  *(v8 + 81) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 1;
  *(v8 + 106) = 0;

  ObservationRegistrar.init()();
  *(v8 + 48) = a2;
  *(v8 + 56) = a1;
  *(v8 + 64) = a7;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4 & 1;
  *(v8 + 105) = a5;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  *(v20 + 32) = v8;
  *(v20 + 40) = 0;
  sub_1003E9628(0, 0, v17, &unk_10094E010, v20);

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1005F1308(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = qword_100B2FC98;
  if (qword_100B2FC98)
  {
    v8 = qword_100B2FCA0;
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    v31 = v1;
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    swift_unknownObjectRetain_n();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = v1[7];
    swift_unknownObjectRelease();
    if (v10 != v7)
    {
      (*(v8 + 128))(ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v31 = v2;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = v2[8];
  v12 = swift_getObjectType();
  v13 = *(v11 + 136);
  swift_unknownObjectRetain();
  v13(v12, v11);
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v31 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v2[2] && (v14 = v2[3], v15 = swift_getObjectType(), v16 = *(v14 + 32), swift_unknownObjectRetain(), v17 = v16(v15, v14), swift_unknownObjectRelease(), v17))
  {
    if (v17 == 1)
    {
      if (a1)
      {
        return sub_1005F1840();
      }

      swift_getKeyPath();
      v31 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = v2[8];
      v26 = swift_getObjectType();
      v27 = *(v25 + 128);
      swift_unknownObjectRetain();
      v27(v26, v25);
      swift_unknownObjectRelease();
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      type metadata accessor for MainActor();

      v29 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v21[2] = v29;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v2;
      v22 = &unk_10095FB60;
    }

    else
    {
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      type metadata accessor for MainActor();

      v24 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v21[2] = v24;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v2;
      v22 = &unk_10095FB58;
    }
  }

  else
  {
    swift_getKeyPath();
    v31 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!v2[2])
    {
      sub_1005F28A8();
    }

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v2;
    v22 = &unk_10095FB48;
  }

  sub_1003E9628(0, 0, v6, v22, v21);
}

uint64_t sub_1005F1840()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v0[2];
  if (v2)
  {
    v3 = v0[3];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 64);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v0[8];
    v7 = swift_getObjectType();
    v8 = *(v6 + 104);
    swift_unknownObjectRetain();
    v8(v2, v3, v7, v6);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005F19B4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (*(v0 + 106) == 1)
  {
    *(v0 + 106) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v13 - 2) = v0;
    *(&v13 - 8) = 1;
    v14 = v0;
    sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  v14 = v0;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 128);
  swift_unknownObjectRetain();
  v8(ObjectType, v6);
  result = swift_unknownObjectRelease();
  if ((*(v0 + 80) & 1) == 0)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    type metadata accessor for MainActor();

    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v1;
    sub_1003E9628(0, 0, v4, &unk_10094CA70, v12);
  }

  return result;
}

uint64_t sub_1005F1C74()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC7Journal18RecordingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordingViewModel()
{
  result = qword_100AEAC70;
  if (!qword_100AEAC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005F1D8C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double *sub_1005F1E8C()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[2] && (v1 = v0[3], v2 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v1) = sub_100885D80(v2, v1), swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!v0[2])
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = v0[3];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v0[8];
    ObjectType = swift_getObjectType();
    v5 = *(v6 + 16);
  }

  return (*(v5 + 16))(ObjectType);
}

double sub_1005F2028(uint64_t a1)
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[2] && (v3 = v1[3], v4 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v3) = sub_100885D80(v4, v3), swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v1[2])
    {
      v5 = v1[3];
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 56);
      swift_unknownObjectRetain();
      v8 = COERCE_DOUBLE(v7(a1, ObjectType, v5));
      v10 = v9;
      swift_unknownObjectRelease();
      result = 0.0;
      if ((v10 & 1) == 0)
      {
        return v8;
      }
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = v1[8];
    v13 = swift_getObjectType();
    (*(*(v12 + 16) + 24))(v13);
  }

  return result;
}

BOOL sub_1005F2210()
{
  if (*(v0 + 80))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 16))
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v2) = sub_100885D80(ObjectType, v2);
    swift_unknownObjectRelease();
    if (v2)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + 16))
  {
    return 1;
  }

  v4 = *(v0 + 24);
  v5 = swift_getObjectType();
  v6 = *(v4 + 32);
  swift_unknownObjectRetain();
  LOBYTE(v4) = v6(v5, v4);
  swift_unknownObjectRelease();
  return v4 == 0;
}

double sub_1005F238C()
{
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[2] && (v1 = v0[3], v2 = swift_getObjectType(), swift_unknownObjectRetain(), LOBYTE(v1) = sub_100885D80(v2, v1), swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!v0[2])
    {
      return 25.0;
    }

    v3 = v0[3];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v0[8];
    ObjectType = swift_getObjectType();
    v5 = *(v6 + 16);
  }

  (*(v5 + 32))(ObjectType);
  return result;
}

uint64_t sub_1005F25E4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + 88);
}

uint64_t sub_1005F2684(double a1)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 160);
  swift_unknownObjectRetain();
  v6(ObjectType, v4, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1005F27E0(uint64_t a1)
{
  result = sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005F2838(uint64_t a1)
{
  result = sub_1005F62D8(&qword_100AEAF78, type metadata accessor for RecordingViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005F28A8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!v0[2])
  {
    v3 = v0[6];
    if (v3)
    {
      v4 = v0[9];
      type metadata accessor for AudioRecordingManager();
      swift_allocObject();
      swift_retain_n();

      sub_100770658(v3, v4);

      sub_1005F62D8(&qword_100AEAF80, type metadata accessor for AudioRecordingManager);
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (qword_100ACFED0 != -1)
      {
        swift_once();
      }

      v6 = qword_100B2FA60;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = v1[3];
      v8 = swift_unknownObjectRetain();
      sub_100500538(v8, v7);

      *(v6 + 24) = v7;
      swift_unknownObjectWeakAssign();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1005F2B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&unk_100AD6DD0);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1005F2BF0, v6, v5);
}

uint64_t sub_1005F2BF0()
{
  v1 = v0[5];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC7Journal18RecordingViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = v2;
  v0[11] = sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 16);
  v0[12] = v3;
  if (v3)
  {
    v4 = *(v0[5] + 24);
    v0[13] = v4;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 88);
    swift_unknownObjectRetain();
    v14 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1005F2EB0;

    return v14(ObjectType, v4);
  }

  else
  {

    if (qword_100AD00A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AEAC28);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed starting recording because no recordingManager", v12, 2u);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1005F2EB0()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return _swift_task_switch(sub_1005F3648, v3, v4);
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];
    v7 = swift_task_alloc();
    v2[16] = v7;
    *v7 = v2;
    v7[1] = sub_1005F3040;

    return sub_1005759D4(v6, v5);
  }
}

uint64_t sub_1005F3040()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1005F3248;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1005F316C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005F316C()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1005F3470;
  v4 = *(v0 + 48);

  return sub_100242704(v4);
}

uint64_t sub_1005F3248()
{
  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEAC28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed starting live activity: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 48);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1005F3470;
  v10 = *(v0 + 48);

  return sub_100242704(v10);
}

uint64_t sub_1005F3470()
{
  v2 = *v1;
  (*v1)[19] = v0;

  sub_100004F84(v2[6], &unk_100AD6DD0);
  v3 = v2[9];
  v4 = v2[8];
  if (v0)
  {
    v5 = sub_1005F39AC;
  }

  else
  {
    v5 = sub_1005F35D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005F35D4()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005F3648()
{
  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEAC28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed starting recording: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1005F380C;

  return sub_1005EE44C();
}

uint64_t sub_1005F380C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1005F392C, v3, v2);
}

uint64_t sub_1005F392C()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005F39AC()
{
  v0[3] = v0[19];
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {
    v1 = v0[5];
    if (*(v1 + 81))
    {
      swift_getKeyPath();
      v2 = swift_task_alloc();
      *(v2 + 16) = v1;
      *(v2 + 24) = 0;
      v0[4] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v1 + 81) = 0;
    }
  }

  else
  {
  }

  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AEAC28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed transcribing: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005F3C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1005F3CFC, v6, v5);
}

uint64_t sub_1005F3CFC()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v0[7] = v2;
  if (v2)
  {
    v3 = *(v0[3] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 80);
    swift_unknownObjectRetain();
    v9 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1005F3EF4;

    return v9(ObjectType, v3);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1005F3EF4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1005F4010;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000EC728;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005F4010()
{

  swift_unknownObjectRelease();
  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEAC28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed resuming recording: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005F41C8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001F0D04;

  return sub_1005EE9DC();
}

uint64_t sub_1005F4274()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002181EC;

  return sub_1005EE44C();
}

uint64_t sub_1005F4320()
{
  v1[12] = v0;
  v2 = type metadata accessor for TranscriptViewModelSegment();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v5;
  v1[23] = v4;

  return _swift_task_switch(sub_1005F44B4, v5, v4);
}

uint64_t sub_1005F44B4()
{
  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = sub_10000617C(v1, qword_100AEAC28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transcribing current attachment", v4, 2u);
  }

  sub_1005EFDF8((v0 + 2));
  v5 = v0[5];
  if (!v5)
  {
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[17];

    sub_100004F84((v0 + 2), &unk_100AE9D30);
    (*(v11 + 56))(v12, 1, 1, v10);
    goto LABEL_9;
  }

  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[6];
  sub_10000CA14(v0 + 2, v0[5]);
  (*(v9 + 16))(v5, v9);
  sub_10000BA7C((v0 + 2));
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {

LABEL_9:
    sub_100004F84(v0[17], &unk_100AD6DD0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Current attachment doesn't have a media url; canceling transcription", v15, 2u);
    }

    v16 = v0[1];

    return v16();
  }

  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[18];
  v21 = v0[16];
  v22 = v0[12];
  (*(v19 + 32))(v18, v0[17], v20);
  sub_1005F28A8();
  v0[25] = *(v22 + 72);
  (*(v19 + 16))(v21, v18, v20);
  (*(v19 + 56))(v21, 0, 1, v20);
  v23 = swift_task_alloc();
  v0[26] = v23;
  *v23 = v0;
  v23[1] = sub_1005F4854;
  v24 = v0[16];

  return sub_100242704(v24);
}

uint64_t sub_1005F4854()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 216) = v0;

  sub_100004F84(v3, &unk_100AD6DD0);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1005F4DD8;
  }

  else
  {
    v6 = sub_1005F49BC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1005F49BC()
{
  v44 = v0;
  v1 = v0;
  v2 = v0[25];
  v3 = v1[12];

  swift_getKeyPath();
  v1[10] = v2;
  sub_1005F62D8(&unk_100AE4270, type metadata accessor for TranscriptionCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v2 + 72);
  if (*(v3 + 48))
  {
    v5 = v1[20];

    sub_10057AB08(v5, v4);
  }

  else
  {
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    log = v6;
    v8 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    buf = v8;
    *v8 = 136380675;
    v9 = *(v4 + 16);
    if (v9)
    {
      v36 = v7;
      v10 = v1[14];
      v43 = _swiftEmptyArrayStorage;
      sub_1001999C0(0, v9, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = *(v10 + 16);
      v10 += 16;
      v13 = v4 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v40 = *(v10 + 56);
      v41 = v12;
      v14 = (v10 - 8);
      do
      {
        v15 = v1[15];
        v16 = v1;
        v17 = v1[13];
        v41(v15, v13, v17);
        v18 = TranscriptViewModelSegment.text.getter();
        v20 = v19;
        (*v14)(v15, v17);
        v43 = v11;
        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          sub_1001999C0((v21 > 1), v22 + 1, 1);
          v11 = v43;
        }

        *(v11 + 2) = v22 + 1;
        v23 = &v11[2 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        v13 += v40;
        --v9;
        v1 = v16;
      }

      while (v9);

      v7 = v36;
    }

    else
    {

      v11 = _swiftEmptyArrayStorage;
    }

    v27 = v1[19];
    v28 = v1[20];
    v29 = v1[18];
    v1[11] = v11;
    sub_1000F24EC(&qword_100AD60A0);
    sub_10009BDD4();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v33 = sub_100008458(v30, v32, &v42);

    *(buf + 4) = v33;
    _os_log_impl(&_mh_execute_header, log, v7, "Transcribed current attachment: %{private}s", buf, 0xCu);
    sub_10000BA7C(v37);

    (*(v27 + 8))(v28, v29);
  }

  else
  {
    v25 = v1[19];
    v24 = v1[20];
    v26 = v1[18];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v1[1];

  return v34();
}

uint64_t sub_1005F4DD8()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005F4E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 265) = a5;
  *(v5 + 144) = a4;
  sub_1000F24EC(&qword_100AD1350);
  *(v5 + 152) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 160) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 168) = v7;
  *(v5 + 176) = v6;

  return _swift_task_switch(sub_1005F4F64, v7, v6);
}

uint64_t sub_1005F4F64()
{
  v1 = *(v0 + 160);

  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_1005F5024;

  return (sub_1005AAA54)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1005F5024()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1005F5168, v3, v2);
}

uint64_t sub_1005F5168()
{
  v2 = v0[18];
  v1 = v0[19];
  swift_getKeyPath();
  v0[24] = OBJC_IVAR____TtC7Journal18RecordingViewModel___observationRegistrar;
  v0[12] = v2;
  v0[25] = sub_1005F62D8(&qword_100AD62F8, type metadata accessor for RecordingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[26] = *(v2 + 40);
  v3 = type metadata accessor for Locale();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1005F52DC;
  v5 = v0[19];

  return sub_100089408(v5);
}

uint64_t sub_1005F52DC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 266) = a1;

  sub_100004F84(v3, &qword_100AD1350);
  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return _swift_task_switch(sub_1005F5454, v5, v4);
}

uint64_t sub_1005F5454()
{
  v1 = *(v0 + 266);
  v2 = *(v0 + 144);
  if (v1 == *(v2 + 81))
  {
    *(v2 + 81) = v1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 104) = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 112) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 81) == 1)
  {
    v5 = *(v0 + 144);
    swift_getKeyPath();
    *(v0 + 120) = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 224) = *(v5 + 40);

    v6 = swift_task_alloc();
    *(v0 + 232) = v6;
    *v6 = v0;
    v6[1] = sub_1005F5724;
    v7 = *(v0 + 265);

    return sub_10079A954(v7);
  }

  else
  {

    if (qword_100AD00A0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AEAC28);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Transcription isn't supported; canceling initialization.", v12, 2u);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1005F5724()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1005F5B30;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1005F5840;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005F5840()
{
  sub_1005EFDF8(v0 + 56);
  if (*(v0 + 80))
  {
    sub_100018480((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    sub_10000CA14((v0 + 16), v2);
    if (sub_10029B198(v2, v1))
    {
      v3 = swift_task_alloc();
      *(v0 + 248) = v3;
      *v3 = v0;
      v3[1] = sub_1005F5984;

      return sub_1005F4320();
    }

    sub_10000BA7C(v0 + 16);
  }

  else
  {

    sub_100004F84(v0 + 56, &unk_100AE9D30);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1005F5984()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1005F5DD0;
  }

  else
  {
    v5 = sub_1005F5AC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005F5AC0()
{

  sub_10000BA7C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005F5B30()
{

  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEAC28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to download transcription model: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  sub_1005EFDF8(v0 + 56);
  if (*(v0 + 80))
  {
    sub_100018480((v0 + 56), v0 + 16);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    sub_10000CA14((v0 + 16), v8);
    if (sub_10029B198(v8, v7))
    {
      v9 = swift_task_alloc();
      *(v0 + 248) = v9;
      *v9 = v0;
      v9[1] = sub_1005F5984;

      return sub_1005F4320();
    }

    sub_10000BA7C(v0 + 16);
  }

  else
  {

    sub_100004F84(v0 + 56, &unk_100AE9D30);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1005F5DD0()
{
  v0[16] = v0[32];
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0);
  if (swift_dynamicCast())
  {
    v1 = v0[18];
    if (*(v1 + 81))
    {
      swift_getKeyPath();
      v2 = swift_task_alloc();
      *(v2 + 16) = v1;
      *(v2 + 24) = 0;
      v0[17] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {

      *(v1 + 81) = 0;
    }
  }

  else
  {
  }

  if (qword_100AD00A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AEAC28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed transcription for existing attachment: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  else
  {
  }

  sub_10000BA7C((v0 + 2));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005F608C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005F2B20(a1, v4, v5, v6);
}

uint64_t sub_1005F6140(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005F3C64(a1, v4, v5, v6);
}

uint64_t sub_1005F6204()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1005F627C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 96) = *(v0 + 24);
  *(v1 + 104) = v2;
}

uint64_t sub_1005F629C()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_1005F62D8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1005F6320(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {

    return swift_errorRetain();
  }

  else if (!(a3 >> 6))
  {
    v4 = result;
  }

  return result;
}

void *sub_1005F637C(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
  }

  return result;
}

uint64_t sub_1005F63D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F6430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_1005F6480(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1005F64FC(uint64_t a1)
{
  v2 = sub_1005F88D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F6538(uint64_t a1)
{
  v2 = sub_1005F88D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1005F65E4(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AEB0D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1005F88D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1005F66F8(uint64_t a1, void *a2)
{
  v43 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v43);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedSubstring();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE9520);
  __chkstk_darwin(v7 - 8);
  v39 = &v32 - v8;
  v32 = sub_1000F24EC(&qword_100ADA540);
  __chkstk_darwin(v32);
  v33 = &v32 - v9;
  v38 = type metadata accessor for AttributedString.Runs();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AE9528);
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = a2[2];
  v17 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v20 = &v32 - v19;
  dispatch thunk of FormatStyle.format(_:)();
  v37 = a2;
  v21 = a2[4];
  v40 = AssociatedTypeWitness;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_100544528();
  AttributedString.Runs.subscript.getter();

  (*(v10 + 8))(v12, v38);
  v47 = v16;
  v48 = v17;
  v22 = v15;
  v23 = v39;
  v49 = v21;
  v50 = v2;
  sub_100565ED8(sub_1005F8508, v46, v39);
  v24 = sub_1000F24EC(&qword_100AE9518);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    v25 = v20;
    v26 = v40;
    sub_100004F84(v23, &qword_100AE9520);
    if (*(v2 + *(v37 + 11)) && *(v2 + *(v37 + 11)) == 1)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        v29 = 0;
        goto LABEL_9;
      }
    }

    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_1005F86C0(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView);
    v29 = String.init<A>(_:)();
  }

  else
  {
    v27 = v33;
    sub_1005F852C(v23 + *(v24 + 48), v33);
    sub_1005F859C();
    v28 = v34;
    v26 = v40;
    dispatch thunk of AttributedStringProtocol.subscript.getter();
    AttributedSubstring.characters.getter();
    (*(v35 + 8))(v28, v36);
    sub_1005F86C0(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView);
    v29 = String.init<A>(_:)();
    sub_100004F84(v27, &qword_100ADA540);
    v25 = v20;
  }

LABEL_9:
  (*(v44 + 8))(v22, v45);
  (*(v41 + 8))(v25, v26);
  return v29;
}

uint64_t sub_1005F6D84(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(_s17MeasurementFilterVMa() + 44));
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      v10 = 0;
      return v10 & 1;
    }

    v5 = 0xE800000000000000;
    v4 = 0x6E617073656D6974;
  }

  else
  {
    if (v2)
    {
      v4 = 1953066613;
    }

    else
    {
      v4 = 0x65756C6176;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 1953066613;
  if (v3 != 1)
  {
    v7 = 0x6E617073656D6974;
    v6 = 0xE800000000000000;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x65756C6176;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1005F6EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v12 - 8) + 16))(a3, v3, a2, v9);
  dispatch thunk of FormatStyle.locale(_:)();
  (*(v8 + 40))(a3, v11, v7);
  v13 = *(a2 + 48);
  v14 = type metadata accessor for Locale();
  return (*(*(v14 - 8) + 24))(a3 + v13, a1, v14);
}

uint64_t sub_1005F7000(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1005F711C(char a1)
{
  if (!a1)
  {
    return 1702060386;
  }

  if (a1 == 1)
  {
    return 0x6E656E6F706D6F63;
  }

  return 0x656C61636F6CLL;
}

uint64_t sub_1005F716C(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s17MeasurementFilterVMa() + 44);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (!v5)
  {
    v7 = 0xE500000000000000;
    v8 = 0x65756C6176;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v5 != 1)
  {
    v7 = 0xE800000000000000;
    v8 = 0x6E617073656D6974;
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (v6 == 1)
    {
      v9 = 0xE400000000000000;
      if (v8 != 1953066613)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = 0xE800000000000000;
      if (v8 != 0x6E617073656D6974)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v7 = 0xE400000000000000;
  v8 = 1953066613;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_11:
  v9 = 0xE500000000000000;
  if (v8 != 0x65756C6176)
  {
LABEL_16:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }

    return 0;
  }

LABEL_14:
  if (v7 != v9)
  {
    goto LABEL_16;
  }

LABEL_17:

  return static Locale.== infix(_:_:)();
}

uint64_t sub_1005F72F8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11[0] = a2;
  v11[1] = v3;
  _s17MeasurementFilterV10CodingKeysOMa();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  sub_10000CA14(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v8 = v11[2];
  v9 = v11[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v14 = *(v8 + *(v11[0] + 44));
    v13 = 1;
    sub_1005F866C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    type metadata accessor for Locale();
    sub_1005F86C0(&qword_100AEB028, &type metadata accessor for Locale);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1005F7530()
{
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  type metadata accessor for Locale();
  sub_1005F86C0(qword_100AEB030, &type metadata accessor for Locale);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1005F7624()
{
  Hasher.init(_seed:)();
  sub_1005F7530();
  return Hasher._finalize()();
}

uint64_t sub_1005F766C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v43 = type metadata accessor for Locale();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 - 8);
  __chkstk_darwin(v8);
  v35 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17MeasurementFilterV10CodingKeysOMa();
  swift_getWitnessTable();
  v36 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v28 - v10;
  v34 = a3;
  v12 = _s17MeasurementFilterVMa();
  v31 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = *(v13 + 48);
  v39 = &v28 - v15;
  v40 = v14;
  static Locale.autoupdatingCurrent.getter();
  v16 = a1[3];
  v42 = a1;
  sub_10000CA14(a1, v16);
  v37 = v11;
  v17 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v21 = v43;
    v22 = v39;
    sub_10000BA7C(v42);
    return (*(v41 + 8))(&v22[v40], v21);
  }

  else
  {
    v18 = v31;
    v19 = v32;
    v38 = v12;
    v20 = v33;
    v47 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v39;
    (*(v20 + 32))(v39, v35, a2);
    v45 = 1;
    sub_1005F8618();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v43;
    v23[*(v38 + 44)] = v46;
    v44 = 2;
    sub_1005F86C0(&qword_100AEB018, &type metadata accessor for Locale);
    v25 = v30;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v37, v36);
    (*(v41 + 40))(&v23[v40], v25, v24);
    v26 = v38;
    (*(v18 + 16))(v29, v23, v38);
    sub_10000BA7C(v42);
    return (*(v18 + 8))(v23, v26);
  }
}

Swift::Int sub_1005F7B94()
{
  Hasher.init(_seed:)();
  TranscriptPostProcessorError.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1005F7BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F7000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F7C24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1005F88CC();
  *a1 = result;
  return result;
}

uint64_t sub_1005F7C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1005F7CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1005F7D00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1005F66F8(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int sub_1005F7D70()
{
  Hasher.init(_seed:)();
  sub_1005F7530();
  return Hasher._finalize()();
}

uint64_t sub_1005F7DC8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005F7E58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v25 = *(v5 - 8);
  v6 = *(v25 + 84);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v25 + 64);
  if (v6 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v6;
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v13 = ((v11 + v9 + 1) & ~v11) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v17 < 2)
    {
LABEL_31:
      if (v6 == v12)
      {
        v21 = *(v25 + 48);

        return v21(a1, v6, v5);
      }

      else
      {
        v22 = a1 + v9;
        if (v10 > 0xFD)
        {
          v24 = *(v8 + 48);

          return v24(&v22[v11 + 1] & ~v11);
        }

        else
        {
          v23 = *v22;
          if (v23 >= 3)
          {
            return v23 - 2;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_18:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1005F80EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v24 = *(v7 - 8);
  v8 = *(v24 + 84);
  v9 = *(type metadata accessor for Locale() - 8);
  v10 = *(v24 + 64);
  if (v8 <= *(v9 + 84))
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v9 + 80);
  if (v11 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = v11;
  }

  v14 = ((v12 + v10 + 1) & ~v12) + *(v9 + 64);
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_51:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v13)
  {
    v21 = *(v24 + 56);

    v21(a1, a2, v8, v7);
  }

  else
  {
    v22 = &a1[v10];
    if (v11 > 0xFD)
    {
      v23 = *(v9 + 56);

      v23(&v22[v12 + 1] & ~v12, a2);
    }

    else
    {
      *v22 = a2 + 2;
    }
  }
}

unint64_t sub_1005F8490(unint64_t a1, unint64_t a2)
{
  if (Character.isWhitespace.getter())
  {
    return 1;
  }

  result = sub_10057714C(a1, a2);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = (result - 8232) < 2 || result == 133;
    return (result - 14) > 0xFFFFFFFB || v5;
  }

  return result;
}

uint64_t sub_1005F852C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005F859C()
{
  result = qword_100ADA548;
  if (!qword_100ADA548)
  {
    sub_1000F2A18(&qword_100ADA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA548);
  }

  return result;
}

unint64_t sub_1005F8618()
{
  result = qword_100AEB010;
  if (!qword_100AEB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB010);
  }

  return result;
}

unint64_t sub_1005F866C()
{
  result = qword_100AEB020;
  if (!qword_100AEB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB020);
  }

  return result;
}

uint64_t sub_1005F86C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005F8738()
{
  result = qword_100AEB0B8;
  if (!qword_100AEB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0B8);
  }

  return result;
}

unint64_t sub_1005F8790()
{
  result = qword_100AEB0C0;
  if (!qword_100AEB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0C0);
  }

  return result;
}

unint64_t sub_1005F87E8()
{
  result = qword_100AEB0C8;
  if (!qword_100AEB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0C8);
  }

  return result;
}

unint64_t sub_1005F8840()
{
  result = qword_100AEB0D0;
  if (!qword_100AEB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0D0);
  }

  return result;
}

unint64_t sub_1005F88D4()
{
  result = qword_100AEB0E0;
  if (!qword_100AEB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0E0);
  }

  return result;
}

unint64_t sub_1005F893C()
{
  result = qword_100AEB0E8;
  if (!qword_100AEB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0E8);
  }

  return result;
}

unint64_t sub_1005F8994()
{
  result = qword_100AEB0F0;
  if (!qword_100AEB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0F0);
  }

  return result;
}

id sub_1005F89E8()
{
  v1 = type metadata accessor for ColorResource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for UnsupportedEntryMode();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v52 = v0;
  v19 = sub_1000AB4D8();
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  aBlock = *(v19 + 4);
  type metadata accessor for JournalEntryMO();
  if ((MinimumSupportedVersion.isEditingSupported.getter() & 1) == 0)
  {
    v48 = v4;
    v49 = v2;
    v50 = v1;
    v51 = v20;
    JournalEntryMO.unsupportedEntryMode.getter();
    v21 = *(v13 + 48);
    if (v21(v11, 1, v12) == 1)
    {
      v22 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v23 = *(v13 + 104);
      v23(v18, enum case for UnsupportedEntryMode.hiddenAll(_:), v12);
      if (v21(v11, 1, v12) != 1)
      {
        sub_100004F84(v11, &qword_100ADE5A0);
      }
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      v22 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v23 = *(v13 + 104);
    }

    v2 = v49;
    v23(v16, v22, v12);
    sub_1002AC794();
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *(v13 + 8);
    v25(v16, v12);
    v25(v18, v12);
    v1 = v50;
    v20 = v51;
    v4 = v48;
    if (v24)
    {

      return 0;
    }
  }

  NSManagedObjectContext.performAndWait<A>(_:)();
  if (aBlock == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v27 = swift_allocObject();
    v28 = v52;
    *(v27 + 16) = v52;
    *(v27 + 24) = v20;
    v29 = v28;

    v30 = String._bridgeToObjectiveC()();

    v59 = sub_1005FC4AC;
    v60 = v27;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100831E20;
    v58 = &unk_100A756C8;
    v31 = _Block_copy(&aBlock);
    v32 = [objc_opt_self() contextualActionWithStyle:0 title:v30 handler:v31];

    _Block_release(v31);

    if (qword_100AD09E8 != -1)
    {
      swift_once();
    }

    [v32 setImage:qword_100B30EC0];
    v33 = [objc_opt_self() systemBlueColor];
    [v32 setBackgroundColor:v33];

    sub_1000F24EC(&unk_100AD4780);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100941D50;
    *(v34 + 32) = v32;
    sub_1000065A8(0, &qword_100AD4E28);
    v35 = v32;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = [objc_opt_self() configurationWithActions:isa];
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();

    v37 = String._bridgeToObjectiveC()();

    v59 = sub_1005FC4A4;
    v60 = v20;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100831E20;
    v58 = &unk_100A75678;
    v38 = _Block_copy(&aBlock);
    v39 = [objc_opt_self() contextualActionWithStyle:0 title:v37 handler:v38];

    _Block_release(v38);

    v40 = String._bridgeToObjectiveC()();
    v41 = [objc_opt_self() systemImageNamed:v40];

    [v39 setImage:v41];
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0CA0 != -1)
    {
      swift_once();
    }

    v42 = sub_10000617C(v1, qword_100B314F0);
    (*(v2 + 16))(v4, v42, v1);
    v43 = UIColor.init(resource:)();
    [v39 setBackgroundColor:v43];

    sub_1000F24EC(&unk_100AD4780);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100941D50;
    *(v44 + 32) = v39;
    sub_1000065A8(0, &qword_100AD4E28);
    v45 = v39;
    v46 = Array._bridgeToObjectiveC()().super.isa;

    v26 = [objc_opt_self() configurationWithActions:v46];

    [v26 setPerformsFirstActionWithFullSwipe:0];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v26 _setSwipeActionsStyle:3];
    }
  }

  return v26;
}

char *sub_1005F9400()
{
  v0 = type metadata accessor for ColorResource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  result = sub_1000AB4D8();
  if (result)
  {
    v7 = result;
    aBlock = *(result + 4);
    type metadata accessor for JournalEntryMO();
    if (MinimumSupportedVersion.isEditingSupported.getter())
    {
      v36 = v1;
      v37 = v0;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;

      v10 = String._bridgeToObjectiveC()();

      v42 = sub_1005FC444;
      v43 = v9;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v34[1] = &v40;
      v40 = sub_100831E20;
      v41 = &unk_100A75600;
      v11 = _Block_copy(&aBlock);
      v12 = objc_opt_self();
      v13 = [v12 contextualActionWithStyle:0 title:v10 handler:v11];

      _Block_release(v11);

      v14 = [objc_opt_self() systemRedColor];
      [v13 setBackgroundColor:v14];

      v15 = String._bridgeToObjectiveC()();
      v16 = objc_opt_self();
      v17 = [v16 systemImageNamed:v15];

      v35 = v13;
      [v13 setImage:v17];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v7;

      v20 = String._bridgeToObjectiveC()();

      v42 = sub_1005FC49C;
      v43 = v19;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_100831E20;
      v41 = &unk_100A75650;
      v21 = _Block_copy(&aBlock);
      v22 = [v12 contextualActionWithStyle:0 title:v20 handler:v21];

      _Block_release(v21);

      v23 = String._bridgeToObjectiveC()();
      v24 = [v16 systemImageNamed:v23];

      [v22 setImage:v24];
      sub_1000065A8(0, &qword_100AD4C70);
      if (qword_100AD0BE0 != -1)
      {
        swift_once();
      }

      v25 = v37;
      v26 = sub_10000617C(v37, qword_100B312B0);
      (*(v36 + 16))(v3, v26, v25);
      v27 = UIColor.init(resource:)();
      [v22 setBackgroundColor:v27];

      NSManagedObjectContext.performAndWait<A>(_:)();
      LODWORD(v27) = aBlock;
      sub_1000F24EC(&unk_100AD4780);
      v28 = swift_allocObject();
      if (v27 == 1)
      {
        *(v28 + 16) = xmmword_100941D50;
        v29 = v35;
        *(v28 + 32) = v35;
      }

      else
      {
        *(v28 + 16) = xmmword_100941D60;
        v29 = v35;
        *(v28 + 32) = v35;
        *(v28 + 40) = v22;
        v30 = v22;
      }

      sub_1000065A8(0, &qword_100AD4E28);
      v31 = v29;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v33 = [objc_opt_self() configurationWithActions:isa];

      [v33 setPerformsFirstActionWithFullSwipe:0];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        [v33 _setSwipeActionsStyle:3];
      }

      return v33;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1005F9B54(unint64_t a1, void (*a2)(void, void, void))
{
  v93 = a2;
  v96 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v106 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v104 = sub_100316044(a1);
    LODWORD(v94) = sub_10031619C(a1);
    if (v13)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v13 = &OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked;
    do
    {
      v16 = v15;
      if (v14 == v15)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v16, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        if (__OFADD__(v16, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      v18 = *(v17 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked);

      v15 = v16 + 1;
    }

    while ((v18 & 1) != 0);
    v87 = a1 & 0xC000000000000001;
    v86 = a1 & 0xFFFFFFFFFFFFFF8;
    v99 = v3;
    v103 = v7;
    v98 = sub_1000F24EC(&unk_100AD4780);
    preferredElementSize = swift_allocObject();
    v97 = xmmword_100941D50;
    *(preferredElementSize + 16) = xmmword_100941D50;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v102 = v10;
    v101 = String.init(localized:table:bundle:locale:comment:)();
    v92 = v20;
    v21 = String._bridgeToObjectiveC()();
    v100 = objc_opt_self();
    v22 = [v100 systemImageNamed:v21];

    v23 = sub_1000065A8(0, &unk_100AD4D00);
    v24 = sub_1000065A8(0, &qword_100AD4420);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;

    v101 = v24;
    *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v110.value.super.isa = 0;
    v110.is_nil = 0;
    v92 = v23;
    v28.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v27, 0, v110, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v82).super.super.isa;
    v29 = v93;
    if (v93 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isa = v28.super.super.isa;
    if (v30)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v97;
      *(v31 + 32) = v28;
      v32 = v28.super.super.isa;
    }

    else
    {
      v33 = [(objc_class *)v28.super.super.isa children];
      sub_1000065A8(0, &unk_100ADC630);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v109 = v29;

    sub_1006AD920(v31);
    v90 = v109;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D60;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    if (v14 == v16)
    {
      v34._countAndFlagsBits = 0x2065766F6D6552;
      v34._object = 0xE700000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
      v109 = i;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v35 = 0x72616D6B6F6F4220;
      v36 = 0xEA0000000000736BLL;
    }

    else
    {
      v37._countAndFlagsBits = 0x6B72616D6B6F6F42;
      v37._object = 0xE900000000000020;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v37);
      v109 = i;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v35 = 0x73656972746E4520;
      v36 = 0xE800000000000000;
    }

    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v35);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    LODWORD(v93) = v14 == v16;
    String.init(localized:table:bundle:locale:comment:)();
    v38 = String._bridgeToObjectiveC()();
    v39 = v100;
    v40 = [v100 systemImageNamed:v38];

    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v93;
    *(v42 + 32) = a1;

    v108[4] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v94 = v43;
    v44 = String._bridgeToObjectiveC()();
    v45 = [v39 systemImageNamed:v44];

    if (qword_100AD0A58 != -1)
    {
      swift_once();
    }

    v46 = v99;
    v47 = v95;
    v48 = v96;
    v93 = *(v99 + 104);
    (v93)(v95, enum case for JournalFeatureFlags.multipleJournals(_:), v96);
    v49 = JournalFeatureFlags.isEnabled.getter();
    v50 = *(v46 + 8);
    v99 = v46 + 8;
    v88 = v50;
    v50(v47, v48);
    if (v49)
    {
      sub_100771E70();
    }

    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = a1;

    v108[5] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53._countAndFlagsBits = 0x20746E697250;
    v53._object = 0xE600000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
    v54 = i;
    v109 = i;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v55._countAndFlagsBits = 0x73656972746E4520;
    v55._object = 0xE800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v55);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v56 = String._bridgeToObjectiveC()();
    v57 = [v100 systemImageNamed:v56];

    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = a1;

    v108[6] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    if (v54 != 1 || (v60 = v95, v61 = v96, (v93)(v95, enum case for JournalFeatureFlags.debug(_:), v96), v62 = JournalFeatureFlags.isEnabled.getter(), result = v88(v60, v61), (v62 & 1) == 0))
    {
      v65.super.super.isa = 0;
      goto LABEL_35;
    }

    if (v87)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_33;
    }

    if (!*(v86 + 16))
    {
      break;
    }

    v64 = *(a1 + 32);

LABEL_33:
    v65.super.super.isa = sub_100751090(v64, _swiftEmptyArrayStorage, v107).super.super.isa;

LABEL_35:
    v7 = 0;
    v10 = v108;
    v108[7] = v65.super.super.isa;
    v13 = _swiftEmptyArrayStorage;
    v109 = _swiftEmptyArrayStorage;
    v3 = 4;
LABEL_36:
    if (v7 <= 4)
    {
      v66 = 4;
    }

    else
    {
      v66 = v7;
    }

    while (1)
    {
      if (v7 == 4)
      {
        sub_1000F24EC(&qword_100AEB0F8);
        swift_arrayDestroy();
        v69._countAndFlagsBits = 0;
        v69._object = 0xE000000000000000;
        v111.value.super.isa = 0;
        v111.is_nil = 0;
        v70.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v69, 0, v111, 1, 0xFFFFFFFFFFFFFFFFLL, v13, v82).super.super.isa;
        v71 = inited;
        *(inited + 32) = v70;
        v72 = swift_allocObject();
        *(v72 + 16) = v97;
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v73._countAndFlagsBits = 0x206574656C6544;
        v73._object = 0xE700000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v73);
        v109 = i;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v74._countAndFlagsBits = 0x73656972746E4520;
        v74._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v74);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v75 = String._bridgeToObjectiveC()();
        v76 = [v100 systemImageNamed:v75];

        v77 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v78 = swift_allocObject();
        *(v78 + 16) = v77;
        *(v78 + 24) = a1;

        *(v72 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v79._countAndFlagsBits = 0;
        v79._object = 0xE000000000000000;
        v112.value.super.isa = 0;
        v112.is_nil = 0;
        v71[5].super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v79, 0, v112, 1, 0xFFFFFFFFFFFFFFFFLL, v72, v83).super.super.isa;
        v109 = v90;
        sub_1006AD920(v71);
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        v113.value.super.isa = 0;
        v113.is_nil = 0;
        v81 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v80, 0, v113, 0, 0xFFFFFFFFFFFFFFFFLL, v109, v84).super.super.isa;

        return v81;
      }

      if (v66 == v7)
      {
        break;
      }

      v67 = v108[v7++ + 4];
      if (v67)
      {
        v68 = v67;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v109;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005FABE4(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_13:
    v14 = (*((swift_isaMask & *a3) + 0x4B8))(_swiftEmptyArrayStorage);

    return v14;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v15 = a3;
    v8 = *(a3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(a2 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v8 objectWithID:{v9, v15}];
      type metadata accessor for JournalEntryMO();
      v12 = swift_dynamicCastClassUnconditional();
      v13 = [v12 managedObjectContext];
      if (!v13)
      {
        v13 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      ++v7;
      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v12, 0, 0, v13);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);
    a3 = v15;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005FAE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v9 = *(a3 + 32);
    }

    *v6 = 1;
    v10 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    sub_1003054F0(v9, v6, 1);

    return sub_100004F84(v6, &qword_100AD57F0);
  }

  return result;
}

void sub_1005FB008(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100310C58((a3 & 1) == 0, a4);
  }
}

void sub_1005FB07C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005FBD98(a3, a1, Strong);
  }
}

void sub_1005FB0EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100306248(a3);
  }
}

uint64_t sub_1005FB148(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [a1 presentationSourceItem];
    (*((swift_isaMask & *v6) + 0x4D0))(a3, v7, 0, 0, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005FB228(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  sub_1000F24EC(&unk_100AD4780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100941D50;
  *(v12 + 32) = a6;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = a5;
  v15 = a2;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v12;
  v17[5] = v14;
  v17[6] = a2;
  sub_1003E9628(0, 0, v11, &unk_100960188, v17);
}

uint64_t sub_1005FB3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a5;
  sub_1003E9628(0, 0, v9, &unk_100960198, v12);

  return a3(1);
}

uint64_t sub_1005FB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for Locale();
  v4[3] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1005FB5D8, v6, v5);
}

uint64_t sub_1005FB5D8()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1005FB66C, v2, v4);
}

uint64_t sub_1005FB66C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked;
  v0[8] = OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked;
  v3 = *(v1 + v2);
  *(v1 + v2) = v3 ^ 1;
  sub_10078333C(v3);

  v4 = v0[6];
  v5 = v0[7];

  return _swift_task_switch(sub_1005FB6F8, v4, v5);
}

uint64_t sub_1005FB6F8()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1005FB7C0;

  return sub_10062833C(v1);
}

uint64_t sub_1005FB7C0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1005FB904, v3, v2);
}

uint64_t sub_1005FB904()
{

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v1 = UIAccessibilityAnnouncementNotification;
  v2 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005FBA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1000F24EC(&unk_100AD4780);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100941D50;
    *(v12 + 32) = a6;
    v13 = *((swift_isaMask & *v11) + 0x4D0);

    v13(v12, a2, 0, a3, a4);
  }

  return result;
}

uint64_t sub_1005FBB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    *v10 = 1;
    v13 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    sub_1003054F0(a6, v10, 1);

    sub_100004F84(v10, &qword_100AD57F0);
  }

  return a3(1);
}

void sub_1005FBCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v6 = *(a3 + 32);
    }

    (*((swift_isaMask & *v5) + 0x4A8))(v6);
  }
}

void sub_1005FBD98(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(type metadata accessor for JournalMembershipListViewController());

  v12 = sub_10012D520(v6, sub_1003189B4, v5);
  v7 = [v12 popoverPresentationController];
  if (v7)
  {
    v8 = v7;
    [v7 setSourceItem:{objc_msgSend(a2, "presentationSourceItem")}];

    swift_unknownObjectRelease();
  }

  if (_UISolariumEnabled() && [a2 presentationSourceItem])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_1000065A8(0, &qword_100ADE550);
      *(swift_allocObject() + 16) = v10;
      swift_unknownObjectRetain();
      v11 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

      [v12 setPreferredTransition:v11];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  [a3 presentViewController:v12 animated:1 completion:0];
}

id sub_1005FBFFC(uint64_t a1)
{
  v3 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v29 = a1;
  aBlock[0] = _swiftEmptyArrayStorage;
  v11 = *(a1 + 16);
  v27 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v28 = v1;
  v26 = v1;
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v13 = (v7 + 8);
  do
  {
    v25 = v10;
    v10 = v12;
    while (1)
    {
      if (v10 >= v11)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      (*(v7 + 16))(v9, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v6);
      v12 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

      v15 = *&v28[v27];
      if (v15)
      {
        break;
      }

      v14 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
LABEL_5:
      sub_100004F84(v5, &unk_100AD7CB0);
LABEL_6:
      (*v13)(v9, v6);
      ++v10;
      if (v12 == v11)
      {
        v10 = v25;
        goto LABEL_18;
      }
    }

    v16 = v15;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v17 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v17 - 8) + 48))(v5, 1, v17) == 1)
    {
      goto LABEL_5;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100165FAC(v5);
      goto LABEL_6;
    }

    (*v13)(v9, v6);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = aBlock[0];
  }

  while (v12 != v11);
LABEL_18:
  v5 = v26;

  if (v10 >> 62)
  {
LABEL_23:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_24;
    }

LABEL_20:
    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    *(v18 + 24) = v5;
    v19 = objc_opt_self();
    aBlock[4] = sub_1005FC43C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D1F68;
    aBlock[3] = &unk_100A755B0;
    v20 = _Block_copy(aBlock);
    v21 = v5;

    v22 = [v19 configurationWithIdentifier:0 previewProvider:0 actionProvider:v20];

    _Block_release(v20);
  }

  else
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_24:

    return 0;
  }

  return v22;
}

uint64_t sub_1005FC44C(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1005FC4B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10055E4BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005FC57C(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_1005FC5D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1005FB4E8(a1, v4, v5, v6);
}

unint64_t sub_1005FC6BC()
{
  result = qword_100AEB100;
  if (!qword_100AEB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB100);
  }

  return result;
}

void sub_1005FC710(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1005FC7B0()
{
  sub_1000065A8(0, &qword_100AE4210);
  UIViewController.ViewLoading.init()();
  sub_1000F24EC(&qword_100AEB168);
  UIViewController.ViewLoading.init()();
  v1 = sub_100014964();
  if (v1 == 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  v0[OBJC_IVAR____TtC7Journal35LockJournalOnboardingViewController_selectedTimeout] = v2;
  *&v0[OBJC_IVAR____TtC7Journal35LockJournalOnboardingViewController_tableViewTopMargin] = 0x403E000000000000;
  if (qword_100AD0548 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  sub_1005FFE78();
  v4 = String._bridgeToObjectiveC()();

  if (qword_100AD09C0 != -1)
  {
    swift_once();
  }

  v5 = qword_100B30E98;
  if (qword_100B30E98)
  {
    v6 = [objc_opt_self() systemIndigoColor];
    v5 = [v5 imageWithTintColor:v6];
  }

  v9.receiver = v0;
  v9.super_class = type metadata accessor for LockJournalOnboardingViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithTitle:detailText:icon:contentLayout:", v3, v4, v5, 3);

  return v7;
}

void sub_1005FC97C()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LockJournalOnboardingViewController();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAccessibilityViewIsModal:1];

    sub_1005FCCBC();
    v3 = [objc_opt_self() boldButton];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 systemIndigoColor];
    [v5 setTintColor:v6];

    if (qword_100AD0448 != -1)
    {
      swift_once();
    }

    v7 = String._bridgeToObjectiveC()();
    [v5 setTitle:v7 forState:0];

    [v5 addTarget:v0 action:"turnOnButtonTapped" forControlEvents:64];
    v8 = [objc_opt_self() linkButton];
    if (qword_100AD0570 != -1)
    {
      swift_once();
    }

    v9 = String._bridgeToObjectiveC()();
    [v8 setTitle:v9 forState:0];

    [v8 addTarget:v0 action:"notNowButtonTapped" forControlEvents:64];
    v10 = [v0 buttonTray];
    [v10 addButton:v5];

    v11 = [v0 buttonTray];
    [v11 addButton:v8];

    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 keyCommandWithInput:v12 modifierFlags:0 action:"turnOnButtonTapped"];

    [v0 addKeyCommand:v14];
    v15 = [v13 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"notNowButtonTapped"];
    [v0 addKeyCommand:v15];

    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005FCCBC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AEB1A8);
  v85 = *(v2 - 8);
  v86 = v2;
  __chkstk_darwin(v2);
  v84 = v72 - v3;
  v4 = sub_1000F24EC(&qword_100ADE610);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v75 = v5;
  v76 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72[0] = v72 - v7;
  v81 = sub_1000F24EC(&qword_100AEB1B0);
  v77 = *(v81 - 8);
  __chkstk_darwin(v81);
  v72[1] = v8;
  v73 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = v72 - v10;
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UICollectionLayoutListConfiguration();
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v15, v20);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v23 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  (*(v12 + 104))(v14, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v11);
  UICollectionLayoutListConfiguration.headerMode.setter();
  sub_1000065A8(0, &unk_100AE7E80);
  v78 = v22;
  v24 = static UICollectionViewCompositionalLayout.list(using:)();
  v25 = objc_allocWithZone(type metadata accessor for LockJournalOnboardingViewController.SelfSizingCollectionView());
  v74 = v24;
  v26 = [v25 initWithFrame:v24 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v26;
  v27 = v1;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v28 = v88;
  [v88 setScrollEnabled:0];

  v29 = [v27 contentView];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v30 = v88;
  [v29 addSubview:v88];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v31 = v88;
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v33 = [v88 superview];
  if (v33)
  {
    v34 = v33;
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v31 topAnchor];
    v36 = [v34 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    [v37 setConstant:30.0];
    if (v37)
    {
      [v37 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v37 = 0;
    v34 = v31;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v38 = v88;
  v39 = sub_100028DA0(0, 1, 0.0);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v40 = v88;
  v41 = [v88 p_ivar_lyt[467]];
  if (v41)
  {
    v42 = v41;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v43 = [v40 leadingAnchor];
    v44 = [v42 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    [v45 setConstant:0.0];
    if (v45)
    {
      [v45 setActive:1];
    }
  }

  else
  {
    v45 = 0;
    v42 = v40;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v46 = v88;
  v47 = [v88 p_ivar_lyt[467]];
  if (v47)
  {
    v48 = v47;
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v46 trailingAnchor];
    v50 = [v48 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    [v51 setConstant:0.0];
    if (v51)
    {
      [v51 setActive:1];
    }
  }

  else
  {
    v51 = 0;
    v48 = v46;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000065A8(0, &qword_100AD4D40);
  v52 = v87;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v72[0];
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v54 = v77;
  v55 = v73;
  v56 = v81;
  (*(v77 + 16))(v73, v52, v81);
  v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v58 = swift_allocObject();
  (*(v54 + 32))(v58 + v57, v55, v56);
  v59 = objc_allocWithZone(sub_1000F24EC(&qword_100AEB168));
  v60 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v88 = v60;
  v61 = v27;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v62 = v88;
  v63 = v82;
  v64 = v83;
  v65 = v76;
  (*(v82 + 16))(v76, v53, v83);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v66, v65, v64);
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  sub_1005FFDC4();
  sub_1005FFE18();
  v68 = v84;
  NSDiffableDataSourceSnapshot.init()();
  v69 = v86;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A5A8D8);
  LOBYTE(v88) = 1;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v70 = v88;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v85 + 8))(v68, v69);
  (*(v63 + 8))(v53, v64);
  (*(v54 + 8))(v87, v56);
  return (*(v79 + 8))(v78, v80);
}

void sub_1005FDA30()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  v7 = [objc_allocWithZone(LAContext) init];
  if ([v7 canEvaluatePolicy:2 error:0])
  {
    if (qword_100AD0578 != -1)
    {
      swift_once();
    }

    v3 = String._bridgeToObjectiveC()();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    aBlock[4] = sub_1005FFCF0;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005FC710;
    aBlock[3] = &unk_100A75968;
    v5 = _Block_copy(aBlock);
    v6 = v0;

    [v7 evaluatePolicy:2 localizedReason:v3 reply:v5];
    _Block_release(v5);
  }

  else
  {
    sub_1005FE25C();
  }
}

uint64_t sub_1005FDC20(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1005FFCF8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A759E0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1005FDED8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for SettingsKey();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      v9 = *(Strong + OBJC_IVAR____TtC7Journal35LockJournalOnboardingViewController_selectedTimeout);
      sub_1000065A8(0, &qword_100AE1A30);
      v10 = static NSUserDefaults.shared.getter();
      v11 = String._bridgeToObjectiveC()();
      [v10 removeObjectForKey:v11];

      v12 = String._bridgeToObjectiveC()();
      [v10 removeObjectForKey:v12];

      v13 = qword_100960428[v9];
      (*(v4 + 104))(v6, enum case for SettingsKey.lockJournalState(_:), v3);
      SettingsKey.rawValue.getter();
      (*(v4 + 8))(v6, v3);
      v14 = String._bridgeToObjectiveC()();

      [v10 setInteger:v13 forKey:v14];
    }

    v15 = [v8 presentingViewController];
    if (v15)
    {
      v16 = v15;
      [v15 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1005FE25C()
{
  type metadata accessor for JurassicAlertController();
  if (qword_100AD0580 != -1)
  {
    swift_once();
  }

  if (qword_100AD0588 != -1)
  {
    swift_once();
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  if (qword_100AD0428 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  v6 = String._bridgeToObjectiveC()();
  v9[4] = sub_1005FFCE8;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10016B4D8;
  v9[3] = &unk_100A75918;
  v7 = _Block_copy(v9);

  v8 = [objc_opt_self() actionWithTitle:v6 style:1 handler:v7];
  _Block_release(v7);

  [v3 addAction:v8];
  [v5 presentViewController:v3 animated:1 completion:0];
}

void sub_1005FE4C4(int a1, id a2)
{
  v2 = [a2 presentingViewController];
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1005FE534()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for LockJournalOnboardingViewController();
  objc_msgSendSuper2(&v15, "viewDidLayoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  [v3 directionalLayoutMargins];
  v6 = v5;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v8 = v7;
  if (v2 == 2)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 16.0;
  }

  if (v6 - v9 > 0.0)
  {
    v10 = v6 - v9;
  }

  else
  {
    v10 = 0.0;
  }

  [v7 directionalLayoutMargins];
  v12 = v11;

  if (v12 - v9 > 0.0)
  {
    v13 = v12 - v9;
  }

  else
  {
    v13 = 0.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v14 setDirectionalLayoutMargins:{0.0, v10, 0.0, v13}];
}

uint64_t type metadata accessor for LockJournalOnboardingViewController()
{
  result = qword_100AEB150;
  if (!qword_100AEB150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005FE89C()
{
  sub_1005FE980();
  if (v0 <= 0x3F)
  {
    sub_1005FE9E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005FE980()
{
  if (!qword_100AE4208)
  {
    sub_1000065A8(255, &qword_100AE4210);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE4208);
    }
  }
}

void sub_1005FE9E8()
{
  if (!qword_100AEB160)
  {
    sub_1000F2A18(&qword_100AEB168);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEB160);
    }
  }
}

id sub_1005FECA8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005FED30()
{
  result = qword_100AEB198;
  if (!qword_100AEB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB198);
  }

  return result;
}

unint64_t sub_1005FED88()
{
  result = qword_100AEB1A0;
  if (!qword_100AEB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB1A0);
  }

  return result;
}

uint64_t sub_1005FEDDC(void *a1)
{
  v66 = a1;
  v1 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v51 - v2;
  v4 = type metadata accessor for UICellAccessory.PopUpMenuOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for UIBackgroundConfiguration();
  v64 = *(v15 - 8);
  v65 = v15;
  __chkstk_darwin(v15);
  v62 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UIListContentConfiguration();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v54 = v11;
    v55 = v9;
    v56 = v7;
    v57 = v8;
    v58 = v3;
    v59 = v5;
    v60 = v4;
    static UIListContentConfiguration.valueCell()();
    if (qword_100AD0568 != -1)
    {
      swift_once();
    }

    UIListContentConfiguration.text.setter();
    v67 = OBJC_IVAR____TtC7Journal35LockJournalOnboardingViewController_selectedTimeout;
    sub_1005FF61C();
    UIListContentConfiguration.secondaryText.setter();
    UIListContentConfiguration.directionalLayoutMargins.getter();
    v22 = 8.0;
    if (v21 > 8.0)
    {
      v23 = v21;
    }

    else
    {
      v23 = 8.0;
    }

    v24 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *v25 = v23;
    v24(v68, 0);
    UIListContentConfiguration.directionalLayoutMargins.getter();
    if (v26 > 8.0)
    {
      v22 = v26;
    }

    v27 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *(v28 + 16) = v22;
    v27(v68, 0);
    v29 = v63;
    v68[3] = v63;
    v68[4] = &protocol witness table for UIListContentConfiguration;
    v30 = sub_10001A770(v68);
    v31 = *(v61 + 16);
    v53 = v18;
    v31(v30, v18, v29);
    UICollectionViewCell.contentConfiguration.setter();
    v32 = v62;
    static UIBackgroundConfiguration.listCell()();
    v33 = [objc_opt_self() secondarySystemBackgroundColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    v34 = v64;
    v35 = v32;
    v36 = v65;
    (*(v64 + 16))(v14, v35, v65);
    (*(v34 + 56))(v14, 0, 1, v36);
    UICollectionViewCell.backgroundConfiguration.setter();
    sub_1000F24EC(&unk_100AD4410);
    v37 = *(type metadata accessor for UICellAccessory() - 8);
    v51 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100940080;
    v68[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_1000065A8(0, &qword_100AD4420);
    v38 = 0;
    do
    {
      v39 = *(&off_100A5A928 + v38 + 32);
      sub_1005FF61C();
      ++v38;
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = v39;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v38 != 4);
    sub_1000065A8(0, &unk_100AD4D00);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v69.value.super.isa = 0;
    v69.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v42, 0, v69, 32, 0xFFFFFFFFFFFFFFFFLL, v68[0], v50).super.super.isa;
    v44 = v55;
    v45 = v54;
    v46 = v57;
    (*(v55 + 104))(v54, enum case for UICellAccessory.DisplayedState.always(_:), v57);
    v47 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v47 - 8) + 56))(v58, 1, 1, v47);
    v48 = v56;
    UICellAccessory.PopUpMenuOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.popUpMenu(_:displayed:options:selectedElementDidChangeHandler:)();

    (*(v59 + 8))(v48, v60);
    (*(v44 + 8))(v45, v46);
    v49 = v66;
    UICollectionViewListCell.accessories.setter();
    [v49 setAccessibilityTraits:UIAccessibilityTraitButton];

    (*(v64 + 8))(v62, v65);
    return (*(v61 + 8))(v53, v63);
  }

  return result;
}

uint64_t sub_1005FF61C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_1005FF834()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  sub_100047788(UIFontTextStyleTitle3, &off_100A5A950, 0);
  sub_100047D60(&unk_100A5A970);
  v6 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v6(v11, 0);
  v7 = [objc_opt_self() labelColor];
  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v8(v11, 0);
  v11[3] = v2;
  v11[4] = &protocol witness table for UIListContentConfiguration;
  v9 = sub_10001A770(v11);
  (*(v3 + 16))(v9, v5, v2);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v3 + 8))(v5, v2);
}

void sub_1005FFADC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1005FFB38(a3);
  }
}

uint64_t sub_1005FFB38(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AEB1A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  *(v2 + OBJC_IVAR____TtC7Journal35LockJournalOnboardingViewController_selectedTimeout) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v8 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(&off_100A5A988);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1005FFD0C()
{
  sub_1000F24EC(&qword_100AEB1B0);
  sub_1000065A8(0, &qword_100AD4D40);
  return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
}

unint64_t sub_1005FFDC4()
{
  result = qword_100AEB1B8;
  if (!qword_100AEB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB1B8);
  }

  return result;
}

unint64_t sub_1005FFE18()
{
  result = qword_100AEB1C0;
  if (!qword_100AEB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB1C0);
  }

  return result;
}

uint64_t sub_1005FFE78()
{
  v0 = [objc_allocWithZone(LAContext) init];
  [v0 canEvaluatePolicy:1 error:0];
  if ([v0 biometryType] == 2)
  {
    if (qword_100AD0550 != -1)
    {
      swift_once();
    }

    v1 = &xmmword_100B30680;
  }

  else if ([v0 biometryType] == 1)
  {
    if (qword_100AD0558 != -1)
    {
      swift_once();
    }

    v1 = &xmmword_100B30690;
  }

  else
  {
    if (qword_100AD0560 != -1)
    {
      swift_once();
    }

    v1 = &xmmword_100B306A0;
  }

  v2 = *v1;

  return v2;
}

id sub_1005FFFD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v4 - 8);
  *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry] = 0;
  v5 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton;
  type metadata accessor for JournalEntryMetadataButton();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton;
  sub_1000065A8(0, &qword_100ADFC10);
  static UIButton.Configuration.borderless()();
  *&v2[v6] = UIButton.init(configuration:primaryAction:)();
  v7 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView;
  *&v2[v7] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkViewLeadingSpaceConstraint] = 0;
  v8 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_dividerLineView;
  type metadata accessor for JournalDividerView();
  *&v2[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButton;
  static UIButton.Configuration.borderless()();
  *&v2[v9] = UIButton.init(configuration:primaryAction:)();
  *&v2[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint] = 0;
  *&v2[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_itemMargin] = 0x4028000000000000;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for JournalEntryCellChinView();
  v10 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_100057FD0();
  }

  return v11;
}

void sub_1006002DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView);

    [v2 setAlpha:1.0];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint);
    v5 = v3;
    v6 = v4;

    if (v4)
    {
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = *(v7 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView);

        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v19.origin.x = v11;
        v19.origin.y = v13;
        v19.size.width = v15;
        v19.size.height = v17;
        v18 = CGRectGetWidth(v19) * -2.0;
      }

      else
      {
        v18 = -0.0;
      }

      [v6 setConstant:v18];
    }
  }
}

void sub_10060044C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView);

    [v2 setAlpha:0.0];
  }
}

void sub_1006004C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkViewLeadingSpaceConstraint);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setActive:0];
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint);
    v6 = v4;
    v7 = v5;

    if (v5)
    {
      [v7 setConstant:0.0];
    }
  }
}

void sub_1006005A8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_cellDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v8 = (*(v5 + 48))(v3, ObjectType, v5);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v7 = v8;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
LABEL_6:
  v9 = v7;
  [a1 setMenu:?];
}

void sub_100600748(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry);
  if (v2)
  {

    v4 = UIView.viewControllerForPresenting.getter();
    if (v4)
    {
      v5 = v4;
      sub_1000F24EC(&unk_100AD4780);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100941D50;
      *(v6 + 32) = v2;
      objc_allocWithZone(type metadata accessor for JournalMembershipListViewController());

      v11 = sub_10012D520(v6, 0, 0);
      v7 = [v11 popoverPresentationController];
      if (v7)
      {
        v8 = v7;
        [v7 setSourceItem:a1];
      }

      v9 = v11;
      if (_UISolariumEnabled())
      {
        sub_1000065A8(0, &qword_100ADE550);
        *(swift_allocObject() + 16) = a1;
        v10 = a1;
        v9 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

        [v11 setPreferredTransition:v9];
      }

      [v5 presentViewController:v11 animated:1 completion:0];
    }

    else
    {
    }
  }
}

uint64_t sub_1006009BC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D50;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(UIAccessibilityCustomAction);

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100600D70;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B7420;
  aBlock[3] = &unk_100A75AA8;
  v6 = _Block_copy(aBlock);
  v7 = [v4 initWithName:v5 actionHandler:v6];

  _Block_release(v6);

  *(v2 + 32) = v7;
  return v2;
}

BOOL sub_100600C04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton);
    [v2 performPrimaryAction];
  }

  return v1 != 0;
}

id sub_100600C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalEntryCellChinView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100600DAC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_contentView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_menuButton;
  *&v4[v11] = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_image] = 0;
  v12 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_imageBackgroundColor;
  *&v4[v12] = [objc_opt_self() whiteColor];
  v13 = &v4[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_tapClosure];
  *v13 = DebugData.init(name:);
  v13[1] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for EntrySwipeMenuButton();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_100601068();

  return v14;
}

id sub_100600F18(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_imageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_contentView;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_menuButton;
  *&v1[v5] = [objc_allocWithZone(UIButton) init];
  *&v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_image] = 0;
  v6 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_imageBackgroundColor;
  *&v1[v6] = [objc_opt_self() whiteColor];
  v7 = &v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_tapClosure];
  *v7 = DebugData.init(name:);
  v7[1] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EntrySwipeMenuButton();
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_100601068();
  }

  return v9;
}

uint64_t sub_100601068()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 heightAnchor];
  v3 = [v2 constraintEqualToConstant:58.0];

  [v3 setActive:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 widthAnchor];
  v5 = [v4 constraintEqualToConstant:58.0];

  [v5 setActive:1];
  v6 = *&v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_contentView];
  [v6 setBackgroundColor:*&v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_imageBackgroundColor]];
  v7 = [v6 layer];
  [v7 setMasksToBounds:1];

  v8 = [v6 layer];
  [v8 setCornerRadius:29.0];

  v9 = *&v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_imageView];
  [v9 setImage:*&v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_image]];
  v10 = sub_10076107C();
  v11 = [objc_opt_self() configurationWithFont:v10 scale:3];

  [v9 setPreferredSymbolConfiguration:v11];
  [v9 setMaximumContentSizeCategory:UIContentSizeCategoryMedium];
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  [v9 setTintColor:v13];

  [v9 setContentMode:1];
  v14 = *&v1[OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_menuButton];
  [v14 addTarget:v1 action:"buttonTapped" forControlEvents:64];
  v15 = [v12 clearColor];
  [v14 setBackgroundColor:v15];

  [v1 addSubview:v6];
  [v6 addSubview:v9];
  [v1 addSubview:v14];
  sub_100013178(0.0);

  sub_100013178(0.0);

  v16 = [v9 superview];
  if (v16)
  {
    v17 = v16;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v9 centerYAnchor];
    v19 = [v17 centerYAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:0.0];
    [v20 setActive:1];
  }

  v21 = [v9 superview];
  if (v21)
  {
    v22 = v21;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v22 centerXAnchor];
    v24 = [v9 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    [v25 setActive:1];
  }

  v26 = objc_opt_self();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1006018BC;
  *(v28 + 24) = v27;
  v31[4] = sub_100028EF4;
  v31[5] = v28;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 1107296256;
  v31[2] = sub_10001A7D4;
  v31[3] = &unk_100A75C10;
  v29 = _Block_copy(v31);

  [v26 performWithoutAnimation:v29];
  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

void sub_100601634()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_contentView;
    v2 = Strong;
    v3 = [*(Strong + OBJC_IVAR____TtC7Journal20EntrySwipeMenuButton_contentView) layer];
    CATransform3DMakeScale(&v5, 0.9, 0.9, 1.0);
    [v3 setTransform:&v5];

    v4 = [*&v2[v1] layer];
    [v4 setOpacity:0.0];
  }
}

id sub_1006017D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntrySwipeMenuButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006018C4()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 indexPathsForSelectedItems];
  if (result)
  {
    v7 = result;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v12 = *(v3 + 16);
      v10 = v3 + 16;
      v11 = v12;
      v13 = (*(v10 + 64) + 32) & ~*(v10 + 64);
      v17[1] = v8;
      v14 = v8 + v13;
      v15 = *(v10 + 56);
      do
      {
        v11(v5, v14, v2);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v1 deselectItemAtIndexPath:isa animated:0];

        (*(v10 - 8))(v5, v2);
        v14 += v15;
        --v9;
      }

      while (v9);
    }

    else
    {
    }
  }

  return result;
}

void sub_100601BAC(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_chinView);
  v4 = *(v3 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton);
  if (a1)
  {
    v5 = 1;
  }

  else if (*(v3 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry))
  {
    v6 = *(v3 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton);

    v7 = sub_1002AC4A8();

    v4 = v6;
    v5 = v7 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  [v4 setHidden:v5 & 1];
  [*(v3 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton) setUserInteractionEnabled:(a1 ^ 1) & 1];
  v8 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView);
  [v8 setUserInteractionEnabled:(a1 ^ 1) & 1];
  v9 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView);
  if (v9)
  {
    [v9 setUserInteractionEnabled:(a1 ^ 1) & 1];
  }

  if (a1)
  {
    v10 = *&v8[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
    if (v10)
    {
      v11 = v10;
      sub_1006018C4();
    }
  }
}