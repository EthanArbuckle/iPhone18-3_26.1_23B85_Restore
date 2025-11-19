unint64_t sub_100B694A8()
{
  result = qword_101A12840;
  if (!qword_101A12840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12840);
  }

  return result;
}

unint64_t sub_100B69500()
{
  result = qword_101A12848;
  if (!qword_101A12848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12848);
  }

  return result;
}

unint64_t sub_100B69558()
{
  result = qword_101A12850;
  if (!qword_101A12850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12850);
  }

  return result;
}

unint64_t sub_100B695B0()
{
  result = qword_101A12858;
  if (!qword_101A12858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12858);
  }

  return result;
}

unint64_t sub_100B69608()
{
  result = qword_101A12860;
  if (!qword_101A12860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12860);
  }

  return result;
}

unint64_t sub_100B69660()
{
  result = qword_101A12868;
  if (!qword_101A12868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12868);
  }

  return result;
}

unint64_t sub_100B696B8()
{
  result = qword_101A12870;
  if (!qword_101A12870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12870);
  }

  return result;
}

unint64_t sub_100B69710()
{
  result = qword_101A12878;
  if (!qword_101A12878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12878);
  }

  return result;
}

unint64_t sub_100B69768()
{
  result = qword_101A12880;
  if (!qword_101A12880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12880);
  }

  return result;
}

unint64_t sub_100B697C0()
{
  result = qword_101A12888;
  if (!qword_101A12888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12888);
  }

  return result;
}

unint64_t sub_100B69818()
{
  result = qword_101A12890;
  if (!qword_101A12890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12890);
  }

  return result;
}

unint64_t sub_100B69870()
{
  result = qword_101A12898;
  if (!qword_101A12898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12898);
  }

  return result;
}

uint64_t sub_100B698C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B69958()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLFileEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    [v3 showMediaReplaceUI:v0];
  }

  return swift_unknownObjectRelease();
}

id sub_100B699FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterFileDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100B69A54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a3 <= 2u)
  {
    if (a3 >= 2u)
    {
      *(&v11 + 1) = &type metadata for CRLImagePresetData;
      v12 = sub_100B6D4C4();
      *&v10 = swift_allocObject();
      sub_100024E98(a1, a2);
      sub_10007E614();
    }

    else
    {
      *(&v11 + 1) = &type metadata for CRLWPShapePresetData;
      v12 = sub_100AB78A4();
      *&v10 = swift_allocObject();
      sub_100024E98(a1, a2);
      sub_10007E448();
    }

LABEL_11:
    CRValue.init(serializedData:)();
    result = sub_10000CAAC(a4, &qword_101A0B1E0);
    if (v4)
    {
      return sub_100B3EB7C(&v10);
    }

    goto LABEL_14;
  }

  if (a3 == 3)
  {
    *(&v11 + 1) = &type metadata for CRLMoviePresetData;
    v12 = sub_100B6D470();
    *&v10 = swift_allocObject();
    sub_100024E98(a1, a2);
    sub_10007E960();
    goto LABEL_11;
  }

  if (a3 != 4)
  {
    *(&v11 + 1) = &type metadata for CRLShapePresetData;
    v12 = sub_100B6D5F0();
    *&v10 = swift_allocObject();
    sub_100024E98(a1, a2);
    sub_100B6D644();
    goto LABEL_11;
  }

  *(&v11 + 1) = &type metadata for CRLWPTextPresetData;
  v12 = sub_100967AAC();
  *&v10 = swift_allocObject();
  sub_100024E98(a1, a2);
  sub_100694290();
  CRValue.init(serializedData:)();
  if (v4)
  {
    sub_10000CAAC(a4, &qword_101A0B1E0);
    return sub_100B3EB7C(&v10);
  }

  result = sub_10000CAAC(a4, &qword_101A0B1E0);
LABEL_14:
  v9 = v11;
  *a4 = v10;
  *(a4 + 16) = v9;
  *(a4 + 32) = v12;
  return result;
}

uint64_t *sub_100B69CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t), unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  v330 = a8;
  v334 = a7;
  v333 = a6;
  v329 = a5;
  v328 = a4;
  *(&v332 + 1) = a2;
  *&v332 = a1;
  v326 = a11;
  v324 = a10;
  v331 = a9;
  v271 = sub_1005B981C(&qword_101A102C0);
  v276 = *(v271 - 8);
  v11 = __chkstk_darwin(v271);
  v274 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v278 = &v264 - v13;
  v270 = sub_1005B981C(&unk_101A2C890);
  v275 = *(v270 - 8);
  v14 = __chkstk_darwin(v270);
  v273 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v277 = &v264 - v16;
  v284 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
  v17 = __chkstk_darwin(v284);
  v283 = &v264 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v285 = &v264 - v19;
  v313 = type metadata accessor for CRLConnectionLineCRDTData(0);
  v20 = __chkstk_darwin(v313);
  v307 = &v264 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v310 = &v264 - v23;
  __chkstk_darwin(v22);
  v314 = &v264 - v24;
  v304 = type metadata accessor for CRLMovieItemCRDTData(0);
  v25 = __chkstk_darwin(v304);
  v301 = &v264 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v305 = &v264 - v27;
  v302 = type metadata accessor for CRLFileItemCRDTData(0);
  v28 = __chkstk_darwin(v302);
  v298 = &v264 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v303 = &v264 - v30;
  v299 = type metadata accessor for CRLURLItemCRDTData(0);
  v31 = __chkstk_darwin(v299);
  v294 = &v264 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v300 = &v264 - v33;
  v296 = type metadata accessor for CRLUSDZItemCRDTData(0);
  v34 = __chkstk_darwin(v296);
  v290 = &v264 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v297 = &v264 - v36;
  v308 = type metadata accessor for CRLImageItemCRDTData(0);
  v37 = __chkstk_darwin(v308);
  v306 = &v264 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v309 = &v264 - v39;
  v319 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  v40 = __chkstk_darwin(v319);
  v311 = &v264 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v312 = &v264 - v43;
  __chkstk_darwin(v42);
  v321 = &v264 - v44;
  v288 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  v45 = __chkstk_darwin(v288);
  v282 = &v264 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v287 = &v264 - v48;
  __chkstk_darwin(v47);
  v289 = &v264 - v49;
  v327 = sub_1005B981C(&unk_101A0F400);
  v50 = __chkstk_darwin(v327);
  v279 = &v264 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v291 = &v264 - v53;
  v54 = __chkstk_darwin(v52);
  v322 = &v264 - v55;
  v56 = __chkstk_darwin(v54);
  v325 = &v264 - v57;
  v58 = __chkstk_darwin(v56);
  v315 = &v264 - v59;
  v60 = __chkstk_darwin(v58);
  v316 = &v264 - v61;
  v62 = __chkstk_darwin(v60);
  v317 = &v264 - v63;
  v64 = __chkstk_darwin(v62);
  v320 = &v264 - v65;
  __chkstk_darwin(v64);
  v295 = &v264 - v66;
  v292 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  v67 = __chkstk_darwin(v292);
  v286 = &v264 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v293 = &v264 - v69;
  v323 = type metadata accessor for CRLContainerItemCRDTData(0);
  v70 = __chkstk_darwin(v323);
  v281 = &v264 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v272 = &v264 - v73;
  v74 = __chkstk_darwin(v72);
  v280 = &v264 - v75;
  v76 = __chkstk_darwin(v74);
  v318 = &v264 - v77;
  __chkstk_darwin(v76);
  v79 = &v264 - v78;
  v80 = sub_1005B981C(&qword_101A128E8);
  v81 = __chkstk_darwin(v80 - 8);
  v83 = &v264 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v81);
  v86 = &v264 - v85;
  __chkstk_darwin(v84);
  v88 = &v264 - v87;
  v89 = sub_1005B981C(&unk_101A226A0);
  v90 = __chkstk_darwin(v89);
  v91 = __chkstk_darwin(v90);
  v92 = __chkstk_darwin(v91);
  v94 = &v264 - v93;
  v95 = __chkstk_darwin(v92);
  v97 = &v264 - v96;
  v98 = __chkstk_darwin(v95);
  v99 = __chkstk_darwin(v98);
  v100 = __chkstk_darwin(v99);
  v101 = __chkstk_darwin(v100);
  __chkstk_darwin(v101);
  v103 = __chkstk_darwin(&v264 - v102);
  v104 = __chkstk_darwin(v103);
  v106 = &v264 - v105;
  v107 = __chkstk_darwin(v104);
  v108 = __chkstk_darwin(v107);
  v109 = __chkstk_darwin(v108);
  v121 = &v264 - v120;
  if ((v119 & 0x100) != 0)
  {
    if (v332 == 0 && !v119)
    {
      v125 = v118;
      v126 = v117;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_1019FC000, type metadata accessor for CRLContainerItemCRDTData);
      CRDT.init(serializedData:)();
      v155 = &unk_101A226A0;
      sub_10000BE14(v106, v126, &unk_101A226A0);
      v156 = v318;
      sub_100B6F3BC(v79, v318, type metadata accessor for CRLContainerItemCRDTData);
      type metadata accessor for CRLContainerItemData(0);
      v157 = swift_allocObject();
      sub_100B6F3BC(v156, v157 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000BE14(v126, v125, &unk_101A226A0);
      sub_10000BE14(v125, v157 + *(*v157 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v125, &unk_101A226A0);
      v158 = type metadata accessor for CRLContainerItemCRDTData;
LABEL_18:
      v159 = v158;
      sub_10004AAC4(v156, v158);
      sub_10000CAAC(v126, &unk_101A226A0);
      sub_10004AAC4(v79, v159);
      v137 = v106;
      goto LABEL_19;
    }

    if (v332 == 1 && !v119)
    {
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F8, &unk_101A0F400);
      v127 = v325;
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_1019F7E28, type metadata accessor for CRLWPShapeItemCRDTData);
      v128 = v321;
      CRDT.init(serializedData:)();
      v155 = &unk_101A0F400;
      v129 = v320;
      sub_10000BE14(v127, v320, &unk_101A0F400);
      v130 = v312;
      sub_100B6F3BC(v128, v312, type metadata accessor for CRLWPShapeItemCRDTData);
      type metadata accessor for CRLWPShapeItemData(0);
      v131 = swift_allocObject();
      v132 = v129;
      v133 = v317;
      sub_10000BE14(v132, v317, &unk_101A0F400);
      v134 = v311;
      sub_100B6F3BC(v130, v311, type metadata accessor for CRLWPShapeItemCRDTData);
      sub_100B6F3BC(v134, v131 + *(*v131 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
      v135 = v316;
      sub_10000BE14(v133, v316, &unk_101A0F400);
      *(v131 + qword_101A27318) = 0;
      v136 = v315;
      sub_10000BE14(v135, v315, &unk_101A0F400);
      sub_10000BE14(v136, v131 + *(*v131 + 736), &unk_101A0F400);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v136, &unk_101A0F400);
      sub_10000CAAC(v135, &unk_101A0F400);
      sub_10004AAC4(v134, type metadata accessor for CRLWPShapeItemCRDTData);
      sub_10000CAAC(v133, &unk_101A0F400);
      sub_10004AAC4(v130, type metadata accessor for CRLWPShapeItemCRDTData);
      sub_10000CAAC(v320, &unk_101A0F400);
      sub_10004AAC4(v321, type metadata accessor for CRLWPShapeItemCRDTData);
      v137 = v325;
LABEL_19:
      v160 = v155;
LABEL_20:
      sub_10000CAAC(v137, v160);
      return sub_100747AF0(v328, v329);
    }

    if (v332 == 2 && !v119)
    {
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F8, &unk_101A0F400);
      v138 = v322;
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A0C528, type metadata accessor for CRLConnectionLineCRDTData);
      v139 = v314;
      CRDT.init(serializedData:)();
      v155 = &unk_101A0F400;
      v166 = v320;
      sub_10000BE14(v138, v320, &unk_101A0F400);
      v167 = v310;
      sub_100B6F3BC(v139, v310, type metadata accessor for CRLConnectionLineCRDTData);
      type metadata accessor for CRLConnectionLineItemData(0);
      v168 = swift_allocObject();
      v169 = v166;
      v170 = v317;
      sub_10000BE14(v169, v317, &unk_101A0F400);
      v171 = v307;
      sub_100B6F3BC(v167, v307, type metadata accessor for CRLConnectionLineCRDTData);
      sub_100B6F3BC(v171, v168 + *(*v168 + 888), type metadata accessor for CRLConnectionLineCRDTData);
      v172 = v316;
      sub_10000BE14(v170, v316, &unk_101A0F400);
      *(v168 + qword_101A27318) = 0;
      v173 = v315;
      sub_10000BE14(v172, v315, &unk_101A0F400);
      sub_10000BE14(v173, v168 + *(*v168 + 736), &unk_101A0F400);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v173, &unk_101A0F400);
      sub_10000CAAC(v172, &unk_101A0F400);
      sub_10004AAC4(v171, type metadata accessor for CRLConnectionLineCRDTData);
      sub_10000CAAC(v170, &unk_101A0F400);
      sub_10004AAC4(v310, type metadata accessor for CRLConnectionLineCRDTData);
      sub_10000CAAC(v320, &unk_101A0F400);
      sub_10004AAC4(v139, type metadata accessor for CRLConnectionLineCRDTData);
      v137 = v322;
      goto LABEL_19;
    }

    if (v332 == 3 && !v119)
    {
      v141 = v114;
      v142 = v117;
      v143 = v113;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      v334 = v143;
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A12918, type metadata accessor for CRLImageItemCRDTData);
      v144 = v309;
      CRDT.init(serializedData:)();
      sub_10000BE14(v334, v141, &unk_101A226A0);
      v176 = v306;
      sub_100B6F3BC(v144, v306, type metadata accessor for CRLImageItemCRDTData);
      type metadata accessor for CRLImageItemData(0);
      v177 = swift_allocObject();
      sub_100B6F3BC(v176, v177 + qword_101AD8A28, type metadata accessor for CRLImageItemCRDTData);
      v178 = [objc_opt_self() standardUserDefaults];
      v179 = [v178 BOOLForKey:@"CRLNewImageItemsHaveGoodEnoughFidelityVersionSetAboveCurrentDefault"];

      if (!v179)
      {
        v182 = v328;
        v181 = *(v328 + 8);
        goto LABEL_37;
      }

      v180 = sub_10001FF1C();
      v181 = (v180 + 1);
      if (v180 != -1)
      {
        v182 = v328;
LABEL_37:
        v187 = v141;
        v268 = v141;
        v188 = *(v182 + 32);
        v190 = *(v182 + 16);
        v189 = *(v182 + 24);
        v191 = *v182;
        sub_10000BE14(v187, v142, &unk_101A226A0);
        v335[0] = v191;
        v335[1] = v181;
        v335[2] = v190;
        v335[3] = v189;
        v336 = v188;
        sub_10000BE14(v142, v177 + *(*v177 + 736), &unk_101A226A0);
        sub_1005B981C(&unk_1019F5250);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v142, &unk_101A226A0);
        sub_10004AAC4(v306, type metadata accessor for CRLImageItemCRDTData);
        sub_10000CAAC(v268, &unk_101A226A0);
        sub_10004AAC4(v309, type metadata accessor for CRLImageItemCRDTData);
        sub_10000CAAC(v334, &unk_101A226A0);
        return sub_100747AF0(v335, v329);
      }

      __break(1u);
      goto LABEL_58;
    }

    if (v332 == 4 && !v119)
    {
      v161 = v118;
      v162 = v117;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_1019F5E98, type metadata accessor for CRLMovieItemCRDTData);
      v163 = v305;
      CRDT.init(serializedData:)();
      v155 = &unk_101A226A0;
      sub_10000BE14(v94, v162, &unk_101A226A0);
      v185 = v301;
      sub_100B6F3BC(v163, v301, type metadata accessor for CRLMovieItemCRDTData);
      type metadata accessor for CRLMovieItemData(0);
      v186 = swift_allocObject();
      sub_100B6F3BC(v185, v186 + qword_101AD5F20, type metadata accessor for CRLMovieItemCRDTData);
      sub_10000BE14(v162, v161, &unk_101A226A0);
      sub_10000BE14(v161, v186 + *(*v186 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v161, &unk_101A226A0);
      sub_10004AAC4(v185, type metadata accessor for CRLMovieItemCRDTData);
      sub_10000CAAC(v162, &unk_101A226A0);
      sub_10004AAC4(v163, type metadata accessor for CRLMovieItemCRDTData);
      v137 = v94;
      goto LABEL_19;
    }

    if (v332 == 5 && !v119)
    {
      v164 = v118;
      v126 = v117;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      v106 = v97;
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A12900, type metadata accessor for CRLFileItemCRDTData);
      v79 = v303;
      CRDT.init(serializedData:)();
      v155 = &unk_101A226A0;
      sub_10000BE14(v106, v126, &unk_101A226A0);
      v156 = v298;
      sub_100B6F3BC(v79, v298, type metadata accessor for CRLFileItemCRDTData);
      type metadata accessor for CRLFileItemData(0);
      v165 = swift_allocObject();
      sub_100B6F3BC(v156, v165 + qword_101AD89B8, type metadata accessor for CRLFileItemCRDTData);
      sub_10000BE14(v126, v164, &unk_101A226A0);
      sub_10000BE14(v164, v165 + *(*v165 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v164, &unk_101A226A0);
      v158 = type metadata accessor for CRLFileItemCRDTData;
      goto LABEL_18;
    }

    if (v332 == 6 && !v119)
    {
      v174 = v118;
      v126 = v117;
      v106 = v116;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A12908, type metadata accessor for CRLURLItemCRDTData);
      v79 = v300;
      CRDT.init(serializedData:)();
      v155 = &unk_101A226A0;
      sub_10000BE14(v106, v126, &unk_101A226A0);
      v156 = v294;
      sub_100B6F3BC(v79, v294, type metadata accessor for CRLURLItemCRDTData);
      type metadata accessor for CRLURLItemData(0);
      v175 = swift_allocObject();
      sub_100B6F3BC(v156, v175 + qword_101AD7BB8, type metadata accessor for CRLURLItemCRDTData);
      sub_10000BE14(v126, v174, &unk_101A226A0);
      sub_10000BE14(v174, v175 + *(*v175 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v174, &unk_101A226A0);
      v158 = type metadata accessor for CRLURLItemCRDTData;
      goto LABEL_18;
    }

    if (v332 == 7 && !v119)
    {
      v183 = v118;
      v126 = v117;
      v106 = v115;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A12910, type metadata accessor for CRLUSDZItemCRDTData);
      v79 = v297;
      CRDT.init(serializedData:)();
      v155 = &unk_101A226A0;
      sub_10000BE14(v106, v126, &unk_101A226A0);
      v156 = v290;
      sub_100B6F3BC(v79, v290, type metadata accessor for CRLUSDZItemCRDTData);
      type metadata accessor for CRLUSDZItemData(0);
      v184 = swift_allocObject();
      sub_100B6F3BC(v156, v184 + qword_101AD9460, type metadata accessor for CRLUSDZItemCRDTData);
      sub_10000BE14(v126, v183, &unk_101A226A0);
      sub_10000BE14(v183, v184 + *(*v184 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v183, &unk_101A226A0);
      v158 = type metadata accessor for CRLUSDZItemCRDTData;
      goto LABEL_18;
    }

    if (v332 == 8 && !v119)
    {
      v192 = v109;
      v193 = v118;
      v194 = v117;
      v195 = v112;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A12920, type metadata accessor for CRLFreehandDrawingCRDTData);
      v196 = v293;
      CRDT.init(serializedData:)();
      v155 = &unk_101A226A0;
      v267 = v195;
      v269 = v194;
      sub_10000BE14(v195, v194, &unk_101A226A0);
      v237 = v286;
      sub_100B6F3BC(v196, v286, type metadata accessor for CRLFreehandDrawingCRDTData);
      type metadata accessor for CRLFreehandItemData(0);
      v238 = swift_allocObject();
      sub_100B6F3BC(v237, v238 + qword_101AD9588, type metadata accessor for CRLFreehandDrawingCRDTData);
      sub_10000BE14(v194, v193, &unk_101A226A0);
      v239 = v318;
      sub_100B6F3BC(v237, v318, type metadata accessor for CRLContainerItemCRDTData);
      sub_100B6F3BC(v239, v238 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000BE14(v193, v192, &unk_101A226A0);
      sub_10000BE14(v192, v238 + *(*v238 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v192, &unk_101A226A0);
      sub_10004AAC4(v239, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000CAAC(v193, &unk_101A226A0);
      sub_10004AAC4(v237, type metadata accessor for CRLFreehandDrawingCRDTData);
      sub_10000CAAC(v269, &unk_101A226A0);
      sub_10004AAC4(v196, type metadata accessor for CRLFreehandDrawingCRDTData);
      v137 = v267;
      goto LABEL_19;
    }

    if (v332 == 9 && !v119)
    {
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F8, &unk_101A0F400);
      v197 = v295;
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_1019FB2C0, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v198 = v289;
      CRDT.init(serializedData:)();
      v155 = &unk_101A0F400;
      v199 = v320;
      sub_10000BE14(v197, v320, &unk_101A0F400);
      v200 = v287;
      sub_100B6F3BC(v198, v287, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      type metadata accessor for CRLFreehandDrawingShapeItemData(0);
      v201 = swift_allocObject();
      v202 = v199;
      v203 = v317;
      sub_10000BE14(v202, v317, &unk_101A0F400);
      v204 = v282;
      sub_100B6F3BC(v200, v282, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_100B6F3BC(v204, v201 + *(*v201 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v205 = v316;
      sub_10000BE14(v203, v316, &unk_101A0F400);
      *(v201 + qword_101A27318) = 0;
      v206 = v315;
      sub_10000BE14(v205, v315, &unk_101A0F400);
      sub_10000BE14(v206, v201 + *(*v201 + 736), &unk_101A0F400);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v206, &unk_101A0F400);
      sub_10000CAAC(v205, &unk_101A0F400);
      sub_10004AAC4(v204, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_10000CAAC(v203, &unk_101A0F400);
      sub_10004AAC4(v287, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      sub_10000CAAC(v320, &unk_101A0F400);
      sub_10004AAC4(v198, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
      v137 = v295;
      goto LABEL_19;
    }

    if (v332 == 0xA && !v119)
    {
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F8, &unk_101A0F400);
      v207 = v291;
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_101A084F0, type metadata accessor for CRLWPStickyNoteItemCRDTData);
      v208 = v285;
      CRDT.init(serializedData:)();
      v209 = v320;
      sub_10000BE14(v207, v320, &unk_101A0F400);
      v210 = v283;
      sub_100B6F3BC(v208, v283, type metadata accessor for CRLWPStickyNoteItemCRDTData);
      type metadata accessor for CRLWPStickyNoteItemData(0);
      v211 = swift_allocObject();
      sub_100B6F3BC(v210, v211 + qword_101AD6C38, type metadata accessor for CRLWPStickyNoteItemCRDTData);
      v212 = v317;
      sub_10000BE14(v209, v317, &unk_101A0F400);
      v213 = v312;
      sub_100B6F3BC(v210, v312, type metadata accessor for CRLWPShapeItemCRDTData);
      v214 = v316;
      sub_10000BE14(v212, v316, &unk_101A0F400);
      v215 = v311;
      sub_100B6F3BC(v213, v311, type metadata accessor for CRLWPShapeItemCRDTData);
      sub_100B6F3BC(v215, v211 + *(*v211 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
      v216 = v315;
      sub_10000BE14(v214, v315, &unk_101A0F400);
      *(v211 + qword_101A27318) = 0;
      v217 = v279;
      sub_10000BE14(v216, v279, &unk_101A0F400);
      sub_10000BE14(v217, v211 + *(*v211 + 736), &unk_101A0F400);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      v155 = &unk_101A0F400;
      sub_10000CAAC(v217, &unk_101A0F400);
      sub_10000CAAC(v216, &unk_101A0F400);
      sub_10004AAC4(v215, type metadata accessor for CRLWPShapeItemCRDTData);
      sub_10000CAAC(v214, &unk_101A0F400);
      sub_10004AAC4(v213, type metadata accessor for CRLWPShapeItemCRDTData);
      sub_10000CAAC(v317, &unk_101A0F400);
      sub_10004AAC4(v283, type metadata accessor for CRLWPStickyNoteItemCRDTData);
      sub_10000CAAC(v320, &unk_101A0F400);
      sub_10004AAC4(v208, type metadata accessor for CRLWPStickyNoteItemCRDTData);
      v137 = v291;
      goto LABEL_19;
    }

    if (v332 != 0xB || v119)
    {
      v240 = v109;
      v241 = v118;
      v242 = v117;
      v243 = v110;
      sub_100024E98(v333, v334);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_1019FC000, type metadata accessor for CRLContainerItemCRDTData);
      CRDT.init(serializedData:)();
      if (v326 >> 60 == 15)
      {
        sub_10004AAC4(v281, type metadata accessor for CRLContainerItemCRDTData);
        sub_10000CAAC(v243, &unk_101A226A0);
        return 0;
      }

      sub_100024E98(v324, v326);
      _s18SurfaceCapsuleDataVMa();
      sub_100B6D2F4(&qword_1019FBFF0, _s18SurfaceCapsuleDataVMa);
      Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
      v265 = v243;
      v269 = v242;
      sub_10000BE14(v243, v242, &unk_101A226A0);
      v248 = v318;
      sub_100B6F3BC(v281, v318, type metadata accessor for CRLContainerItemCRDTData);
      v249 = *(v276 + 16);
      v250 = v274;
      v251 = v271;
      v249(v274, v278, v271);
      type metadata accessor for CRLSurfaceItemData();
      v252 = swift_allocObject();
      v249((v252 + qword_101AD7250), v250, v251);
      v253 = v241;
      sub_10000BE14(v269, v241, &unk_101A226A0);
      v254 = v272;
      sub_100B6F3BC(v248, v272, type metadata accessor for CRLContainerItemCRDTData);
      sub_100B6F3BC(v254, v252 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000BE14(v253, v240, &unk_101A226A0);
      sub_10000BE14(v240, v252 + *(*v252 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10000CAAC(v240, &unk_101A226A0);
      sub_10004AAC4(v254, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000CAAC(v253, &unk_101A226A0);
      v255 = *(v276 + 8);
      v255(v274, v251);
      sub_10004AAC4(v248, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000CAAC(v269, &unk_101A226A0);
      v255(v278, v251);
      sub_10004AAC4(v281, type metadata accessor for CRLContainerItemCRDTData);
      v137 = v265;
    }

    else
    {
      v218 = v326;
      if (v326 >> 60 == 15)
      {
        v177 = objc_opt_self();
        v179 = [v177 _atomicIncrementAssertCount];
        v335[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v335);
        StaticString.description.getter();
        v181 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v219 = String._bridgeToObjectiveC()();

        v220 = [v219 lastPathComponent];

        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v221;

        if (qword_1019F20A0 == -1)
        {
LABEL_51:
          v222 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v179;
          v224 = sub_1005CF000();
          *(inited + 96) = v224;
          v225 = sub_100B6D2F4(&qword_1019F52E0, sub_1005CF000);
          *(inited + 104) = v225;
          *(inited + 72) = v181;
          *(inited + 136) = &type metadata for String;
          v226 = sub_1000053B0();
          *(inited + 112) = v79;
          *(inited + 120) = v88;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v226;
          *(inited + 152) = 126;
          v227 = v335[0];
          *(inited + 216) = v224;
          *(inited + 224) = v225;
          *(inited + 192) = v227;
          v228 = v181;
          v229 = v227;
          v230 = static os_log_type_t.error.getter();
          sub_100005404(v222, &_mh_execute_header, v230, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v231 = static os_log_type_t.error.getter();
          sub_100005404(v222, &_mh_execute_header, v231, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v232 = swift_allocObject();
          v232[2] = 8;
          v232[3] = 0;
          v232[4] = 0;
          v232[5] = 0;
          v233 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v234 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v235 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v236 = String._bridgeToObjectiveC()();

          [v177 handleFailureInFunction:v234 file:v235 lineNumber:126 isFatal:0 format:v236 args:v233];

          return 0;
        }

LABEL_58:
        swift_once();
        goto LABEL_51;
      }

      v244 = v111;
      v245 = v109;
      v246 = v118;
      v247 = v117;
      sub_100024E98(v333, v334);
      sub_100024E84(v324, v218);
      sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
      CRDT.init(serializedData:)();
      sub_100024E98(v330, v331);
      sub_100B6D2F4(&qword_1019FC000, type metadata accessor for CRLContainerItemCRDTData);
      CRDT.init(serializedData:)();
      sub_100024E98(v324, v326);
      _s15CapsuleDatabaseVMa();
      sub_100B6D2F4(&qword_1019F8BB0, _s15CapsuleDatabaseVMa);
      Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
      v266 = v244;
      v269 = v247;
      sub_10000BE14(v244, v247, &unk_101A226A0);
      v256 = v318;
      sub_100B6F3BC(v280, v318, type metadata accessor for CRLContainerItemCRDTData);
      v257 = *(v275 + 16);
      v258 = v273;
      v259 = v270;
      v257(v273, v277, v270);
      type metadata accessor for CRLTableItemData();
      v260 = swift_allocObject();
      v257((v260 + qword_101AD9268), v258, v259);
      v261 = v246;
      sub_10000BE14(v269, v246, &unk_101A226A0);
      v262 = v272;
      sub_100B6F3BC(v256, v272, type metadata accessor for CRLContainerItemCRDTData);
      sub_100B6F3BC(v262, v260 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000BE14(v261, v245, &unk_101A226A0);
      sub_10000BE14(v245, v260 + *(*v260 + 736), &unk_101A226A0);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_100025870(v324, v326);
      sub_10000CAAC(v245, &unk_101A226A0);
      sub_10004AAC4(v262, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000CAAC(v261, &unk_101A226A0);
      v263 = *(v275 + 8);
      v263(v273, v259);
      sub_10004AAC4(v256, type metadata accessor for CRLContainerItemCRDTData);
      sub_10000CAAC(v269, &unk_101A226A0);
      v263(v277, v259);
      sub_10004AAC4(v280, type metadata accessor for CRLContainerItemCRDTData);
      v137 = v266;
    }

    v160 = &unk_101A226A0;
    goto LABEL_20;
  }

  LODWORD(v325) = v119;
  v327 = v118;
  v122 = v117;
  sub_100024E98(v333, v334);
  sub_10001A2F8(&qword_101A128F0, &unk_101A226A0);
  CRDT.init(serializedData:)();
  v334 = v83;
  v123 = sub_1005B981C(&qword_101A12928);
  v124 = *(*(v123 - 8) + 56);
  v124(v88, 1, 1, v123);
  if (v326 >> 60 != 15)
  {
    v333 = v124;
    sub_100024E98(v324, v326);
    sub_100B6D3AC();
    Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
    sub_10000CAAC(v88, &qword_101A128E8);
    v124 = v333;
    v333(v86, 0, 1, v123);
    sub_100B6D400(v86, v88);
  }

  v269 = v122;
  sub_10000BE14(v121, v122, &unk_101A226A0);
  v145 = v334;
  sub_10000BE14(v88, v334, &qword_101A128E8);
  type metadata accessor for CRLUnknownItemData();
  v146 = swift_allocObject();
  v147 = qword_101AD7B90;
  v124((v146 + qword_101AD7B90), 1, 1, v123);
  v148 = v146 + qword_101A1BA58;
  v149 = *(&v332 + 1);
  *v148 = v332;
  *(v148 + 8) = v149;
  *(v148 + 16) = v325;
  v150 = (v146 + qword_101A1BA60);
  v151 = v330;
  v152 = v331;
  *v150 = v330;
  v150[1] = v152;
  swift_beginAccess();
  sub_100024E98(v151, v152);
  sub_100B6D33C(v145, v146 + v147);
  swift_endAccess();
  v153 = v269;
  v154 = v327;
  sub_10000BE14(v269, v327, &unk_101A226A0);
  sub_10000BE14(v154, v146 + *(*v146 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v154, &unk_101A226A0);
  sub_10000CAAC(v145, &qword_101A128E8);
  sub_10000CAAC(v153, &unk_101A226A0);
  sub_10000CAAC(v88, &qword_101A128E8);
  sub_10000CAAC(v121, &unk_101A226A0);
  return sub_100747AF0(v328, v329);
}

uint64_t sub_100B6D2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B6D33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A128E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B6D3AC()
{
  result = qword_101A12930;
  if (!qword_101A12930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12930);
  }

  return result;
}

uint64_t sub_100B6D400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A128E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B6D470()
{
  result = qword_101A12938;
  if (!qword_101A12938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12938);
  }

  return result;
}

unint64_t sub_100B6D4C4()
{
  result = qword_101A12948;
  if (!qword_101A12948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12948);
  }

  return result;
}

uint64_t sub_100B6D518()
{
  if (v0[14])
  {

    if (v0[20])
    {
    }

    if (v0[27])
    {
    }
  }

  if (v0[41])
  {
  }

  return _swift_deallocObject(v0, 400, 7);
}

unint64_t sub_100B6D5F0()
{
  result = qword_101A12958;
  if (!qword_101A12958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12958);
  }

  return result;
}

unint64_t sub_100B6D644()
{
  result = qword_101A12960;
  if (!qword_101A12960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12960);
  }

  return result;
}

char *sub_100B6D698(uint64_t a1, void *a2)
{
  result = (*(*a1 + 464))(a1);
  if ((v6 & 0x100) == 0)
  {
    if (*a1 == &off_101A1BAC0)
    {
      v7 = objc_allocWithZone(type metadata accessor for CRLUnknownItem());
      *&v7[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
      *&v7[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
      v51.super_class = type metadata accessor for CRLBoardItemBase(0);
      v8 = a2;

      return objc_msgSendSuper2(&v51, "init", v7, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
    }

    __break(1u);
    goto LABEL_83;
  }

  if (result | v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9)
  {
    type metadata accessor for CRLContainerItemData(0);
    v22 = swift_dynamicCastClassUnconditional();
    v23 = objc_allocWithZone(type metadata accessor for CRLGroupItem());
    *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = &_swiftEmptyDictionarySingleton;
    *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
    *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
    *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
    *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
    *&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
    *&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v22;
    v54.super_class = type metadata accessor for CRLBoardItemBase(0);
    v24 = a2;

    return objc_msgSendSuper2(&v54, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v23, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
  }

  if (result == 1 && v5 == 0 && v6 == 0)
  {
    type metadata accessor for CRLWPShapeItemData(0);
    v25 = swift_dynamicCastClassUnconditional();
    v26 = type metadata accessor for CRLWPShapeItem();
    goto LABEL_51;
  }

  if (result == 2 && v5 == 0 && v6 == 0)
  {
    if (*a1 == &off_101A0C0B8)
    {
      v28 = objc_allocWithZone(type metadata accessor for CRLConnectionLineItem());
      *&v28[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
      *&v28[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
      *&v28[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
      v58.super_class = type metadata accessor for CRLBoardItemBase(0);
      v29 = a2;

      return objc_msgSendSuper2(&v58, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v28, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
    }

    __break(1u);
    goto LABEL_89;
  }

  if (result != 3 || v5 != 0 || v6 != 0)
  {
    if (result != 4 || v5 != 0 || v6 != 0)
    {
      if (result != 5 || v5 != 0 || v6 != 0)
      {
        if (result == 6 && !v5 && !v6)
        {
          if (*a1 == &off_101A1C108)
          {
            v20 = objc_allocWithZone(type metadata accessor for CRLURLItem());
            *&v20[OBJC_IVAR____TtC8Freeform10CRLURLItem__metadataPayload] = 0;
            *&v20[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
            *&v20[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
            v57.super_class = type metadata accessor for CRLBoardItemBase(0);
            v21 = a2;

            return objc_msgSendSuper2(&v57, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v20, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
          }

          goto LABEL_92;
        }

        if (result == 7 && !v5 && !v6)
        {
          if (*a1 == &off_101A2E658)
          {
            v34 = objc_allocWithZone(type metadata accessor for CRLUSDZItem());
            *&v34[OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload] = 0;
            *&v34[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
            *&v34[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
            v55.super_class = type metadata accessor for CRLBoardItemBase(0);
            v35 = a2;

            return objc_msgSendSuper2(&v55, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v34, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
          }

          goto LABEL_93;
        }

        if (result == 8 && !v5 && !v6)
        {
          type metadata accessor for CRLFreehandItemData(0);
          v36 = swift_dynamicCastClassUnconditional();
          v37 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingItem());
          *&v37[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = &_swiftEmptyDictionarySingleton;
          *&v37[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
          *&v37[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
          *&v37[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
          *&v37[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
          *&v37[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
          *&v37[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v36;
          v52.super_class = type metadata accessor for CRLBoardItemBase(0);
          v38 = a2;

          return objc_msgSendSuper2(&v52, "init", v51.receiver, v51.super_class, v37, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
        }

        if (result == 9 && !v5 && !v6)
        {
          if (*a1 == &off_1019FAE60)
          {
            v39 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingShapeItem());
            *&v39[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokes] = 0;
            *&v39[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInParentSpace] = 0;
            v40 = &v39[OBJC_IVAR____TtC8Freeform27CRLFreehandDrawingShapeItem_cachedPencilKitStrokesInRootSpace];
            *v40 = 0u;
            *(v40 + 1) = 0u;
            *(v40 + 2) = 0u;
            *(v40 + 6) = 0;
            *&v39[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
            *&v39[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
            *&v39[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
            v53.super_class = type metadata accessor for CRLBoardItemBase(0);
            v41 = a2;

            return objc_msgSendSuper2(&v53, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v39, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
          }

          goto LABEL_94;
        }

        if (result != 10 || v5 || v6)
        {
LABEL_83:
          if (result != 11 || v5 || v6)
          {
            type metadata accessor for CRLSurfaceItemData();
            v46 = swift_dynamicCastClassUnconditional();
            v47 = objc_allocWithZone(type metadata accessor for CRLSurfaceItem());
            v48 = OBJC_IVAR____TtC8Freeform14CRLSurfaceItem_cachedBoardId;
            v49 = type metadata accessor for CRLBoardIdentifier(0);
            (*(*(v49 - 8) + 56))(&v47[v48], 1, 1, v49);
            *&v47[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = &_swiftEmptyDictionarySingleton;
            *&v47[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
            *&v47[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
            *&v47[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
            *&v47[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
            *&v47[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
            *&v47[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v46;
            v60.super_class = type metadata accessor for CRLBoardItemBase(0);
            v50 = a2;

            return objc_msgSendSuper2(&v60, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v47, v60.super_class);
          }

          else
          {
            type metadata accessor for CRLTableItemData();
            v42 = swift_dynamicCastClassUnconditional();
            v43 = objc_allocWithZone(type metadata accessor for CRLTableItem());
            v44 = &v43[OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap];
            *v44 = 0u;
            v44[1] = 0u;
            v43[OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid] = 1;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = &_swiftEmptyDictionarySingleton;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
            *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v42;
            v59.super_class = type metadata accessor for CRLBoardItemBase(0);
            v45 = a2;

            return objc_msgSendSuper2(&v59, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v56.receiver, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v43, v59.super_class, v60.receiver, v60.super_class);
          }
        }

        type metadata accessor for CRLWPStickyNoteItemData(0);
        v25 = swift_dynamicCastClassUnconditional();
        v26 = type metadata accessor for CRLWPStickyNoteItem();
LABEL_51:
        objc_allocWithZone(v26);
        v27 = a2;

        return sub_100AB0A4C(v27, v25);
      }

      if (*a1 == &off_101A241E8)
      {
        v32 = objc_allocWithZone(type metadata accessor for CRLFileItem());
        *&v32[OBJC_IVAR____TtC8Freeform11CRLFileItem__metadataPayload] = 0;
        *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a2;
        *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = a1;
        v56.super_class = type metadata accessor for CRLBoardItemBase(0);
        v33 = a2;

        return objc_msgSendSuper2(&v56, "init", v51.receiver, v51.super_class, v52.receiver, v52.super_class, v53.receiver, v53.super_class, v54.receiver, v54.super_class, v55.receiver, v55.super_class, v32, v56.super_class, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59.receiver, v59.super_class, v60.receiver, v60.super_class);
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      return result;
    }

    if (*a1 == &off_1019F58C8)
    {
      v31 = a2;

      return sub_1011224E8(v31, a1);
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (*a1 != &off_101A25280)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v30 = a2;

  return sub_101122410(v30, a1);
}

uint64_t *sub_100B6E0C0(uint64_t *a1)
{
  v1 = a1;
  v2 = sub_100A0557C(a1[4], v1[5], *(v1 + 48));
  if ((v4 & 0x10000) != 0)
  {
    sub_1006B305C();
    swift_allocError();
    v25 = 1;
  }

  else
  {
    v5 = v1[7];
    if (*(v5 + 16))
    {
      v6 = v4;
      v7 = v3;
      v8 = v2;
      v32 = *v1;
      v9 = v1[2];
      v10 = sub_1007C8330(1u);
      if (v11)
      {
        v31 = v9;
        v12 = (*(v5 + 56) + 16 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = *(v5 + 16);
        sub_100024E98(*v12, v14);
        if (!v15 || (v16 = sub_1007C8330(2u), (v17 & 1) == 0))
        {
          sub_1006B305C();
          swift_allocError();
          *v27 = 6;
          swift_willThrow();
          sub_10002640C(v13, v14);
          return v1;
        }

        v18 = (*(v5 + 56) + 16 * v16);
        v19 = *(v5 + 16);
        v29 = v18[1];
        v30 = *v18;
        sub_100024E98(*v18, v29);
        if (v19)
        {
          v20 = sub_1007C8330(3u);
          if (v21)
          {
            v22 = (*(v5 + 56) + 16 * v20);
            v19 = *v22;
            v23 = v22[1];
            sub_100024E98(*v22, v23);
LABEL_17:
            v33 = v32;
            v34 = v31;
            v35 = 0;
            v36 = 1;
            v1 = sub_100B69CC0(v8, v7, v6 & 0x1FF, &v33, v1[3], v13, v14, v30, v29, v19, v23);
            sub_100025870(v19, v23);
            sub_10002640C(v30, v29);
            sub_10002640C(v13, v14);
            if (v1)
            {
              return v1;
            }

            sub_1006B305C();
            swift_allocError();
            *v28 = 0;
            goto LABEL_12;
          }

          v19 = 0;
        }

        v23 = 0xF000000000000000;
        goto LABEL_17;
      }
    }

    sub_1006B305C();
    swift_allocError();
    v25 = 5;
  }

  *v24 = v25;
LABEL_12:
  swift_willThrow();
  return v1;
}

uint64_t sub_100B6E310(uint64_t a1, void *a2)
{
  v4 = sub_100A0557C(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  if ((v6 & 0x10000) == 0 || (!(v4 | v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v16 = 1;
LABEL_10:
    sub_1006B305C();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();
    return v16;
  }

  v8 = *(a1 + 56);
  if (!*(v8 + 16) || (v9 = sub_1007C8330(0), (v10 & 1) == 0))
  {
    v16 = 10;
    goto LABEL_10;
  }

  v11 = (*(v8 + 56) + 16 * v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *a1;
  v15 = *(a1 + 8);
  sub_100024E98(*v11, v13);
  v16 = sub_100880CF0(v12, v13, v14, v15, a2);
  sub_10002640C(v12, v13);
  return v16;
}

char *sub_100B6E41C(uint64_t a1, uint64_t a2, void *a3)
{
  v97 = a3;
  v100 = a2;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v99 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v89 - v12;
  v14 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v14);
  v102 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  __chkstk_darwin(v19);
  v21 = &v89 - v20;
  v22 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v22 - 8);
  v109 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  v33 = sub_100A0557C(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  if ((v35 & 0x10000) == 0 || v33 | v34 || v35)
  {
    sub_1006B305C();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
  }

  else
  {
    v96 = v13;
    v38 = v21;
    sub_1012C7A3C();
    if (!v3)
    {
      v95 = v32;
      v39 = *(a1 + 56);
      if (v39[2] && (v40 = sub_1007C8330(2u), (v41 & 1) != 0))
      {
        v42 = (v39[7] + 16 * v40);
        v43 = *v42;
        v94 = v42[1];
        sub_100024E98(v43, v94);
        v44 = sub_100B6D2F4(&qword_1019FC000, type metadata accessor for CRLContainerItemCRDTData);
        v93 = v38;
        v45 = v44;
        CRDT.init(serializedData:)();
        v92 = v45;
        v94 = v39;
        sub_10000BE14(v95, v29, &unk_101A226A0);
        sub_100B6F3BC(v93, v18, type metadata accessor for CRLContainerItemCRDTData);
        v107[0] = 0x1000000000000;
        v107[1] = 0x2000400000000;
        v107[2] = 0x1000000000000;
        v107[3] = 0;
        v108 = 1;
        v90 = type metadata accessor for CRLContainerItemData(0);
        v46 = swift_allocObject();
        sub_100B6F3BC(v18, v46 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
        sub_10000BE14(v29, v26, &unk_101A226A0);
        sub_10000BE14(v26, v46 + *(*v46 + 736), &unk_101A226A0);
        v91 = sub_1005B981C(&unk_1019F5250);
        CRRegister.wrappedValue.getter();
        sub_10000CAAC(v26, &unk_101A226A0);
        sub_10004AAC4(v18, type metadata accessor for CRLContainerItemCRDTData);
        sub_10000CAAC(v29, &unk_101A226A0);
        v47 = sub_100747AF0(v107, 4);
        sub_1012C7A5C();
        v89 = v47;
        v50 = v94;
        if (v94[2])
        {
          v51 = sub_1007C8330(5u);
          if (v52)
          {
            sub_100024E98(*(v50[7] + 16 * v51), *(v50[7] + 16 * v51 + 8));
            v53 = v102;
            CRDT.init(serializedData:)();
            sub_10000BE14(v109, v29, &unk_101A226A0);
            sub_100B6F3BC(v53, v18, type metadata accessor for CRLContainerItemCRDTData);
            v54 = swift_allocObject();
            sub_100B6F3BC(v18, v54 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
            sub_10000BE14(v29, v26, &unk_101A226A0);
            sub_10000BE14(v26, v54 + *(*v54 + 736), &unk_101A226A0);
            CRRegister.wrappedValue.getter();
            sub_10000CAAC(v26, &unk_101A226A0);
            v92 = type metadata accessor for CRLContainerItemCRDTData;
            sub_10004AAC4(v18, type metadata accessor for CRLContainerItemCRDTData);
            sub_10000CAAC(v29, &unk_101A226A0);
            v94 = sub_100747AF0(v107, 4);
            v90 = type metadata accessor for CRLBoard(0);
            v55 = objc_allocWithZone(v90);
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
            v56 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
            v57 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
            (*(*(v57 - 8) + 56))(&v55[v56], 1, 1, v57);
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
            v58 = &v55[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
            *v58 = _swiftEmptySetSingleton;
            v58[1] = _swiftEmptySetSingleton;
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
            v59 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
            *&v55[v59] = sub_100BD4D84(_swiftEmptyArrayStorage);
            v60 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
            sub_1005B981C(&unk_101A22670);
            swift_allocObject();
            *&v55[v60] = PassthroughSubject.init()();
            v61 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
            swift_allocObject();
            *&v55[v61] = PassthroughSubject.init()();
            v62 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
            sub_1005B981C(&qword_101A12970);
            swift_allocObject();
            *&v55[v62] = PassthroughSubject.init()();
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
            swift_unknownObjectWeakInit();
            v63 = v97;
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = v97;
            v64 = v100;
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = v100;
            v55[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = 0;
            v65 = type metadata accessor for CRLRootContainerItem(0);
            v66 = objc_allocWithZone(v65);
            swift_unknownObjectWeakInit();
            *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
            *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
            *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
            *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
            *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
            *&v66[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v63;
            *&v66[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v89;
            v67 = type metadata accessor for CRLBoardItemBase(0);
            v106.receiver = v66;
            v106.super_class = v67;
            v68 = v63;

            v69 = objc_msgSendSuper2(&v106, "init");
            v70 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v69;
            v71 = objc_allocWithZone(v65);
            swift_unknownObjectWeakInit();
            *&v71[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
            *&v71[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
            *&v71[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
            *&v71[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
            *&v71[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
            *&v71[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v68;
            *&v71[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v94;
            v105.receiver = v71;
            v105.super_class = v67;
            v72 = v68;

            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v105, "init");
            v73 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            v74 = v64 + v73;
            v75 = v98;
            sub_100B6F3BC(v74, v98, type metadata accessor for CRLBoardCRDTData);
            v76 = v101;
            CRRegister.wrappedValue.getter();
            sub_10004AAC4(v75, type metadata accessor for CRLBoardCRDTData);
            v78 = *(v64 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
            v77 = *(v64 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

            v79 = v96;
            sub_10084BD4C(v76, v78, v77, v96);
            v80 = v99;
            v81 = sub_100B6F3BC(v79, v99, type metadata accessor for CRLBoardIdentifier);
            (*(**(*&v55[v70] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v81);
            type metadata accessor for CRLBoardChangeSet(0);
            swift_allocObject();
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v80, v76, 0);
            type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
            v82 = swift_allocObject();
            sub_1005B981C(&qword_101A12978);
            v83 = swift_allocObject();
            *(v83 + 16) = _swiftEmptyDictionarySingleton;
            *(v83 + 24) = _swiftEmptyDictionarySingleton;
            *(v82 + 16) = v83;
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v82;
            type metadata accessor for CRLActiveBoardShareState();
            v84 = swift_allocObject();
            *(v84 + 16) = 0;
            swift_unknownObjectWeakInit();
            v85 = *(v84 + 16);
            *(v84 + 16) = 0;

            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v84;
            *&v55[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
            v104.receiver = v55;
            v104.super_class = v90;
            v86 = objc_msgSendSuper2(&v104, "init");
            swift_unknownObjectWeakAssign();
            v103 = *(*&v86[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
            swift_allocObject();
            swift_unknownObjectWeakInit();
            v26 = v86;

            sub_1005B981C(&unk_101A22680);
            sub_10001A2F8(&qword_101A12980, &unk_101A22680);
            Publisher<>.sink(receiveValue:)();

            swift_beginAccess();
            AnyCancellable.store(in:)();
            swift_endAccess();

            sub_10004AAC4(v79, type metadata accessor for CRLBoardIdentifier);
            v87 = v92;
            sub_10004AAC4(v102, v92);
            sub_10000CAAC(v109, &unk_101A226A0);
            sub_10004AAC4(v93, v87);
            sub_10000CAAC(v95, &unk_101A226A0);
            return v26;
          }
        }

        sub_1006B305C();
        swift_allocError();
        *v88 = 8;
        swift_willThrow();

        v26 = &unk_10146E610;
        sub_10000CAAC(v109, &unk_101A226A0);
        sub_10004AAC4(v93, type metadata accessor for CRLContainerItemCRDTData);
        v49 = v95;
      }

      else
      {
        sub_1006B305C();
        swift_allocError();
        *v48 = 6;
        swift_willThrow();
        v49 = v95;
      }

      sub_10000CAAC(v49, &unk_101A226A0);
    }
  }

  return v26;
}

uint64_t sub_100B6F3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B6F42C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_1005B981C(&qword_101A0F718);
  __chkstk_darwin(v6 - 8);
  v55 = v50 - v7;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  __chkstk_darwin(v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v50 - v13;
  v15 = type metadata accessor for Mirror();
  v56 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = &type metadata for CRLBoardTitleValidator.Error;
  sub_1005B981C(&qword_101A12AD0);
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  sub_100015D4C();
  if (!swift_dynamicCastMetatype())
  {
    v53._countAndFlagsBits = v18;
    v53._object = v20;
    v54 = v15;
    v63 = &type metadata for CRLBoardTitleValidator.Error;
    countAndFlagsBits = a1;
    v61 = a2;
    v62[0] = a3;
    sub_10070C1F4(a1, a2, a3);
    Mirror.init(reflecting:)();
    v21 = v55;
    Mirror.displayStyle.getter();
    v22 = v57;
    v23 = v58;
    if ((*(v58 + 48))(v21, 1, v57) == 1)
    {
      (*(v56 + 8))(v17, v54);
      sub_10000CAAC(v21, &qword_101A0F718);
      return v53._countAndFlagsBits;
    }

    v34 = a2;
    v51 = a1;
    v52 = v17;
    (*(v23 + 32))(v14, v21, v22);
    (*(v23 + 104))(v11, enum case for Mirror.DisplayStyle.enum(_:), v22);
    v35 = static Mirror.DisplayStyle.== infix(_:_:)();
    v36 = *(v23 + 8);
    v36(v11, v22);
    v37 = v56;
    if ((v35 & 1) == 0)
    {
      countAndFlagsBits = 0;
      v61 = 0xE000000000000000;
      String.append(_:)(v53);

      v41._countAndFlagsBits = 40;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      _print_unlocked<A, B>(_:_:)();
      v42._countAndFlagsBits = 41;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      v43 = countAndFlagsBits;
      v36(v14, v22);
      (*(v37 + 8))(v52, v54);
      return v43;
    }

    v50[0] = v36;
    v58 = v23 + 8;
    v50[1] = Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v55 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    v38 = v54;
    if (v55 != result)
    {
      __break(1u);
      return result;
    }

    v39 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v39)
    {
      swift_unknownObjectRelease();

      object = v53._object;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v45 = countAndFlagsBits;
      v44 = v61;
      sub_100005070(v62);
      object = v53._object;
      if (v44)
      {
LABEL_16:
        countAndFlagsBits = v53._countAndFlagsBits;
        v61 = object;
        v47._countAndFlagsBits = 46;
        v47._object = 0xE100000000000000;
        String.append(_:)(v47);
        v48._countAndFlagsBits = v45;
        v48._object = v44;
        String.append(_:)(v48);

        v49 = countAndFlagsBits;
        (v50[0])(v14, v57);
        (*(v56 + 8))(v52, v38);
        return v49;
      }
    }

    countAndFlagsBits = v51;
    v61 = v34;
    v62[0] = a3;
    sub_10070C1F4(v51, v34, a3);
    v45 = String.init<A>(describing:)();
    v44 = v46;

    goto LABEL_16;
  }

  countAndFlagsBits = a1;
  v61 = a2;
  v62[0] = a3;
  sub_10070C1F4(a1, a2, a3);
  sub_10070C224();
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    sub_10070C20C(a1, a2, a3);
  }

  else
  {
    swift_allocError();
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
  }

  v26 = _convertErrorToNSError(_:)();

  countAndFlagsBits = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  countAndFlagsBits = 0x20726F727245534ELL;
  v61 = 0xEF3D6E69616D6F44;
  v27 = [v26 domain];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0x3D65646F4320;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);
  v59 = [v26 code];
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  return countAndFlagsBits;
}

uint64_t sub_100B6FAF0()
{
  swift_getObjectType();
  sub_1005B981C(&qword_101A12AB0);
  String.init<A>(reflecting:)();

  sub_100015D4C();
  sub_100B71C30(&qword_101A12AB8, sub_100015D4C);
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  _StringGuts.grow(_:)(25);

  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3D65646F4320;
  v9._object = 0xE600000000000000;
  String.append(_:)(v9);
  [v3 code];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  return 0x20726F727245534ELL;
}

uint64_t sub_100B6FCD4(char *a1)
{
  v57 = a1;
  v1 = sub_1005B981C(&qword_101A0F718);
  __chkstk_darwin(v1 - 8);
  v3 = &v50 - v2;
  v4 = type metadata accessor for Mirror.DisplayStyle();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for Mirror();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CKError(0);
  v15 = v14;
  countAndFlagsBits = v14;
  sub_1005B981C(&qword_101A12AA0);
  v16 = String.init<A>(reflecting:)();
  v18 = v17;
  sub_100015D4C();
  if (!swift_dynamicCastMetatype())
  {
    v53._countAndFlagsBits = v16;
    v53._object = v18;
    v54 = v10;
    v55 = v11;
    v61[1] = v15;
    countAndFlagsBits = v57;
    v21 = v57;
    Mirror.init(reflecting:)();
    Mirror.displayStyle.getter();
    v22 = v56;
    if ((*(v56 + 48))(v3, 1, v4) == 1)
    {
      (*(v55 + 8))(v13, v54);
      sub_10000CAAC(v3, &qword_101A0F718);
      return v53._countAndFlagsBits;
    }

    v57 = v13;
    v33 = v9;
    (*(v22 + 32))(v9, v3, v4);
    (*(v22 + 104))(v6, enum case for Mirror.DisplayStyle.enum(_:), v4);
    v34 = static Mirror.DisplayStyle.== infix(_:_:)();
    v35 = *(v22 + 8);
    v35(v6, v4);
    v36 = v55;
    if ((v34 & 1) == 0)
    {
      countAndFlagsBits = 0;
      v60 = 0xE000000000000000;
      String.append(_:)(v53);

      v41._countAndFlagsBits = 40;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      _print_unlocked<A, B>(_:_:)();
      v42._countAndFlagsBits = 41;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
LABEL_16:
      v49 = countAndFlagsBits;
      v35(v33, v4);
      (*(v36 + 8))(v57, v54);
      return v49;
    }

    v50 = v15;
    v51 = v21;
    v52 = v35;
    v56 = Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v37 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v37 != result)
    {
      __break(1u);
      return result;
    }

    v38 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    v39 = v51;
    if (v38)
    {
      swift_unknownObjectRelease();

      object = v53._object;
      v35 = v52;
      v36 = v55;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v44 = countAndFlagsBits;
      v43 = v60;
      sub_100005070(v61);
      object = v53._object;
      v35 = v52;
      v36 = v55;
      if (v43)
      {
LABEL_15:
        countAndFlagsBits = v53._countAndFlagsBits;
        v60 = object;
        v47._countAndFlagsBits = 46;
        v47._object = 0xE100000000000000;
        String.append(_:)(v47);
        v48._countAndFlagsBits = v44;
        v48._object = v43;
        String.append(_:)(v48);

        goto LABEL_16;
      }
    }

    countAndFlagsBits = v39;
    v45 = v39;
    v44 = String.init<A>(describing:)();
    v43 = v46;

    goto LABEL_15;
  }

  v19 = v57;
  countAndFlagsBits = v57;
  sub_100B71C30(&qword_1019F31E0, type metadata accessor for CKError);
  v20 = v19;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v24 = v20;
  }

  v25 = _convertErrorToNSError(_:)();

  countAndFlagsBits = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  countAndFlagsBits = 0x20726F727245534ELL;
  v60 = 0xEF3D6E69616D6F44;
  v26 = [v25 domain];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x3D65646F4320;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v58 = [v25 code];
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  return countAndFlagsBits;
}

uint64_t sub_100B7034C(int a1)
{
  v53 = a1;
  v1 = sub_1005B981C(&qword_101A0F718);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - v2;
  v4 = type metadata accessor for Mirror.DisplayStyle();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for Mirror();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = &type metadata for CRLSendACopyBoardDataHandlerError;
  sub_1005B981C(&qword_101A12AC0);
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  sub_100015D4C();
  if (!swift_dynamicCastMetatype())
  {
    v50._countAndFlagsBits = v14;
    v50._object = v16;
    v49 = v9;
    v51 = v10;
    v57[1] = &type metadata for CRLSendACopyBoardDataHandlerError;
    LOBYTE(countAndFlagsBits) = v53;
    Mirror.init(reflecting:)();
    Mirror.displayStyle.getter();
    v28 = v52;
    if ((*(v52 + 48))(v3, 1, v4) == 1)
    {
      (*(v11 + 8))(v13, v51);
      sub_10000CAAC(v3, &qword_101A0F718);
      return v50._countAndFlagsBits;
    }

    v29 = v4;
    v48 = v13;
    v30 = v49;
    (*(v28 + 32))(v49, v3, v4);
    (*(v28 + 104))(v6, enum case for Mirror.DisplayStyle.enum(_:), v4);
    v31 = static Mirror.DisplayStyle.== infix(_:_:)();
    v32 = *(v28 + 8);
    v32(v6, v29);
    if ((v31 & 1) == 0)
    {
      countAndFlagsBits = 0;
      v56 = 0xE000000000000000;
      String.append(_:)(v50);

      v38._countAndFlagsBits = 40;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      _print_unlocked<A, B>(_:_:)();
      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40 = countAndFlagsBits;
      v32(v30, v29);
LABEL_15:
      (*(v11 + 8))(v48, v51);
      return v40;
    }

    v47 = v32;
    v52 = Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v33 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v33 != result)
    {
      __break(1u);
      return result;
    }

    v34 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v34)
    {
      swift_unknownObjectRelease();

      object = v50._object;
      v36 = v47;
      v37 = v53;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v42 = countAndFlagsBits;
      v41 = v56;
      sub_100005070(v57);
      object = v50._object;
      v36 = v47;
      v37 = v53;
      if (v41)
      {
LABEL_14:
        countAndFlagsBits = v50._countAndFlagsBits;
        v56 = object;
        v44._countAndFlagsBits = 46;
        v44._object = 0xE100000000000000;
        String.append(_:)(v44);
        v45._countAndFlagsBits = v42;
        v45._object = v41;
        String.append(_:)(v45);

        v40 = countAndFlagsBits;
        v36(v49, v29);
        goto LABEL_15;
      }
    }

    LOBYTE(countAndFlagsBits) = v37;
    v42 = String.init<A>(describing:)();
    v41 = v43;

    goto LABEL_14;
  }

  v17 = v53;
  LOBYTE(countAndFlagsBits) = v53;
  sub_100B71C78();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
    *v18 = v17;
  }

  v19 = _convertErrorToNSError(_:)();

  countAndFlagsBits = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  countAndFlagsBits = 0x20726F727245534ELL;
  v56 = 0xEF3D6E69616D6F44;
  v20 = [v19 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x3D65646F4320;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v54 = [v19 code];
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  return countAndFlagsBits;
}

id sub_100B7098C(unsigned __int8 a1)
{
  v1 = a1;
  sub_1005B981C(&qword_101A12AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_1005B981C(&unk_1019F6C70);
  *(inited + 72) = v11;
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  v13 = sub_100B71B28();
  *(inited + 120) = v11;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(NSError);
  v16 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithDomain:v16 code:v1 + 100 userInfo:isa];

  return v18;
}

uint64_t sub_100B70BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[81] = v13;
  v8[80] = v12;
  v8[79] = a8;
  v8[78] = a7;
  v8[77] = a6;
  v8[76] = a5;
  v8[75] = a4;
  v9 = type metadata accessor for URL();
  v8[82] = v9;
  v8[83] = *(v9 - 8);
  v8[84] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v8[85] = swift_task_alloc();

  return _swift_task_switch(sub_100B70CD4, 0, 0);
}

uint64_t sub_100B70CD4()
{
  v1 = v0[75];
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = swift_task_alloc();
  v0[86] = v6;
  *v6 = v0;
  v6[1] = sub_100B70D90;
  v7 = v0[85];
  v8 = v0[76];

  return sub_100F9B6AC(v7, v8, v3, v2, v4, v5);
}

uint64_t sub_100B70D90()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_100B70F94;
  }

  else
  {
    v2 = sub_100B70EA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B70EA4()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[79];
  sub_100B71578(v0[77], v0[78], v2);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v5();

  (*(v3 + 8))(v2, v4);
  sub_100086F34(v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B70F94()
{
  v0[65] = v0[87];
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v1 = v0[66];
    v0[69] = v1;
    sub_100B71C30(&qword_1019F3348, type metadata accessor for CKError);
    v2 = v1;
    _BridgedStoredNSError.code.getter();
    if (v0[70] == 4)
    {
    }

    else
    {
      v0[71] = v2;
      _BridgedStoredNSError.code.getter();

      if (v0[72] != 3)
      {
        if (qword_1019F2168 != -1)
        {
          swift_once();
        }

        v45 = v0[81];
        v47 = v0[79];
        v30 = static OS_os_log.crlSendACopy;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C4D0;
        v32 = UUID.uuidString.getter();
        v34 = v33;
        *(inited + 56) = &type metadata for String;
        v35 = sub_1000053B0();
        *(inited + 64) = v35;
        *(inited + 32) = v32;
        *(inited + 40) = v34;
        v36 = sub_100B6FCD4(v2);
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v35;
        *(inited + 72) = v36;
        *(inited + 80) = v37;
        v0[73] = v2;
        v25 = v2;
        v38 = String.init<A>(reflecting:)();
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v35;
        *(inited + 112) = v38;
        *(inited + 120) = v39;
        v40 = static os_log_type_t.error.getter();
        sub_100005404(v30, &_mh_execute_header, v40, "Failed to create Send A Copy url with URL data for board (UUID: %{public}@) due to server error %{public}@ <%@>", 111, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v29 = 1;
        goto LABEL_14;
      }
    }

    if (qword_1019F2168 != -1)
    {
      swift_once();
    }

    v45 = v0[81];
    v47 = v0[79];
    v17 = static OS_os_log.crlSendACopy;
    sub_1005B981C(&qword_1019F54E0);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146C4D0;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    v22 = sub_1000053B0();
    *(v18 + 64) = v22;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v23 = sub_100B6FCD4(v2);
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v22;
    *(v18 + 72) = v23;
    *(v18 + 80) = v24;
    v0[74] = v2;
    v25 = v2;
    v26 = String.init<A>(reflecting:)();
    *(v18 + 136) = &type metadata for String;
    *(v18 + 144) = v22;
    *(v18 + 112) = v26;
    *(v18 + 120) = v27;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v28, "Failed to create Send A Copy url with URL data for board (UUID: %{public}@) due to network  error %{public}@ <%@>", 113, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = 0;
LABEL_14:
    v41 = sub_100B7098C(v29);
    [v45 cancel];
    v42 = v41;
    v47(0, v41);

    goto LABEL_15;
  }

  if (qword_1019F2168 != -1)
  {
    swift_once();
  }

  v3 = v0[81];
  v46 = v0[79];
  v4 = static OS_os_log.crlSendACopy;
  sub_1005B981C(&qword_1019F54E0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10146C4D0;
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_1000053B0();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  swift_getErrorValue();
  v10 = Error.publicDescription.getter(v0[60], v0[61]);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  swift_getErrorValue();
  v12 = Error.fullDescription.getter(v0[63]);
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v9;
  *(v5 + 112) = v12;
  *(v5 + 120) = v13;
  v14 = static os_log_type_t.error.getter();
  sub_100005404(v4, &_mh_execute_header, v14, "Failed to create Send A Copy url with URL data for board (UUID: %{public}@) with error %{public}@ <%@>", 102, 2, v5);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v15 = sub_100B7098C(2u);
  [v3 cancel];
  v16 = v15;
  v46(0, v15);

LABEL_15:

  v43 = v0[1];

  return v43();
}

uint64_t sub_100B71578@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v36 = a3;
  v3 = type metadata accessor for URLComponents();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v29[0] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - v6;
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v12 - 8);
  v35 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  v32 = *(v18 + 48);
  result = v32(v16, 1, v17);
  if (result != 1)
  {
    v30 = v18;
    v31 = *(v18 + 32);
    v31(v20, v16, v17);
    v37 = UUID.uuidString.getter();
    v38 = v22;
    (*(v9 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
    sub_100017CD8();
    URL.append<A>(component:directoryHint:)();
    (*(v9 + 8))(v11, v8);

    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v23 = v33;
    v24 = v34;
    v25 = *(v33 + 48);
    if (!v25(v7, 1, v34))
    {
      sub_10122B5EC();
      URLComponents.fragment.setter();
    }

    if (v25(v7, 1, v24))
    {
      v26 = v35;
      (*(v30 + 56))(v35, 1, 1, v17);
      v27 = v32;
    }

    else
    {
      v28 = v29[0];
      (*(v23 + 16))(v29[0], v7, v24);
      v26 = v35;
      URLComponents.url.getter();
      (*(v23 + 8))(v28, v24);
      v27 = v32;
      if (v32(v26, 1, v17) != 1)
      {
        (*(v30 + 8))(v20, v17);
        v31(v36, v26, v17);
        return sub_10000CAAC(v7, &qword_101A00288);
      }
    }

    v31(v36, v20, v17);
    if (v27(v26, 1, v17) != 1)
    {
      sub_10000CAAC(v26, &unk_1019F33C0);
    }

    return sub_10000CAAC(v7, &qword_101A00288);
  }

  __break(1u);
  return result;
}

uint64_t sub_100B71A90()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100B71B28()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100B71C30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100B71C78()
{
  result = qword_101A12AC8;
  if (!qword_101A12AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12AC8);
  }

  return result;
}

uint64_t sub_100B71CCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

id sub_100B71E54(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_cachedAvatarImages;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16) && (v6 = sub_1007C90C4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    return v8;
  }

  else
  {
    v10 = [objc_opt_self() scopeWithPointSize:0 scale:0 rightToLeft:*(v2 + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size) style:{*(v2 + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size + 8), a1}];
    v11 = [objc_opt_self() defaultSettings];
    v12 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v11];
    v13 = *(v2 + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_contact);
    if (v13)
    {
      sub_1005B981C(&unk_1019F4D60);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_101465920;
      *(v14 + 32) = v13;
      sub_100B72358();
      v15 = v13;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v17 = [v12 avatarImageForContacts:isa scope:v10];

      v18 = [objc_allocWithZone(CRLImage) initWithUIImage:v17];
    }

    else
    {
      v18 = sub_100B7213C(a1);
    }

    swift_beginAccess();
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    sub_100AA0130(v19, isUniquelyReferenced_nonNull_native, a1);
    *(v2 + v4) = v21;
    swift_endAccess();
    swift_unknownObjectRelease();

    return v19;
  }
}

id sub_100B7213C(double a1)
{
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v3];
  v5 = [v4 placeholderImageProvider];
  v6 = [v5 imageForSize:0 scale:*(v1 + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size) style:{*(v1 + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size + 8), a1}];
  swift_unknownObjectRelease();
  v7 = [objc_allocWithZone(CRLImage) initWithUIImage:v6];

  return v7;
}

id sub_100B722B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaboratorAvatarRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100B72358()
{
  result = qword_101A00EC0;
  if (!qword_101A00EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A00EC0);
  }

  return result;
}

void sub_100B724F4(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLMovieItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
LABEL_8:

        return;
      }

      v14 = *(v5 + OBJC_IVAR____TtC8Freeform24CRLCommandSetMovieVolume_volume);
      v9 = v11;
      if ((sub_1011255D0(v13) & 1) == 0)
      {
LABEL_7:
        v12 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);

        goto LABEL_8;
      }

      if (**(v11 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
      {
        swift_beginAccess();
        v41 = v14;
        v42 = 0;
        type metadata accessor for CRLMovieItemCRDTData(0);

        sub_1005B981C(&unk_101A2C7E0);
        CRRegister.wrappedValue.setter();
        swift_endAccess();

        goto LABEL_7;
      }

      __break(1u);
    }
  }

  v15 = objc_opt_self();
  v16 = [v15 _atomicIncrementAssertCount];
  v40 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v40);
  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v16;
  v25 = sub_1005CF000();
  *(inited + 96) = v25;
  v26 = sub_1005CF04C();
  *(inited + 104) = v26;
  *(inited + 72) = v17;
  *(inited + 136) = &type metadata for String;
  v27 = sub_1000053B0();
  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v27;
  *(inited + 152) = 61;
  v28 = v40;
  *(inited + 216) = v25;
  *(inited + 224) = v26;
  *(inited + 192) = v28;
  v29 = v17;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v32 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v32, "Unable to retrieve movie item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve movie item");
  type metadata accessor for __VaListBuilder();
  v33 = swift_allocObject();
  v33[2] = 8;
  v33[3] = 0;
  v33[4] = 0;
  v33[5] = 0;
  v34 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  [v15 handleFailureInFunction:v35 file:v36 lineNumber:61 isFatal:1 format:v37 args:v34];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v38, v39);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100B72AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100B72B3C(uint64_t a1, uint64_t *a2, void *a3, float a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  *&v9[*a3] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v12 + 8))(a1, v11);
  return v13;
}

id sub_100B72C58(char *a1, float a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(void))
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v13 + 16))(&a1[*a5], v15, v12);
  *&a1[*a6] = a2;
  v16 = a7(0);
  v19.receiver = a1;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "init");
  (*(v13 + 8))(v15, v12);
  return v17;
}

id sub_100B72DB0(void *a1, float a2, uint64_t a3, char *a4, SEL *a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&a4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v11);
  v14 = a4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  *&v16 = a2;
  v17 = [a1 *a5];

  return v17;
}

void sub_100B72F14(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLMovieItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        sub_100D91544(v13, *(v5 + OBJC_IVAR____TtC8Freeform30CRLCommandSetMovieCornerRadius_cornerRadius));
        v14 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);
      }

      return;
    }
  }

  v15 = objc_opt_self();
  v16 = [v15 _atomicIncrementAssertCount];
  v40 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v40);
  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v23 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v16;
  v25 = sub_1005CF000();
  *(inited + 96) = v25;
  v26 = sub_1005CF04C();
  *(inited + 104) = v26;
  *(inited + 72) = v17;
  *(inited + 136) = &type metadata for String;
  v27 = sub_1000053B0();
  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v27;
  *(inited + 152) = 87;
  v28 = v40;
  *(inited + 216) = v25;
  *(inited + 224) = v26;
  *(inited + 192) = v28;
  v29 = v17;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v32 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v32, "Unable to retrieve movie item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve movie item");
  type metadata accessor for __VaListBuilder();
  v33 = swift_allocObject();
  v33[2] = 8;
  v33[3] = 0;
  v33[4] = 0;
  v33[5] = 0;
  v34 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  [v15 handleFailureInFunction:v35 file:v36 lineNumber:87 isFatal:1 format:v37 args:v34];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v38, v39);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Class sub_100B73440(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5, v7);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

id sub_100B7355C(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform25CRLCommandSetMovieLooping_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR____TtC8Freeform25CRLCommandSetMovieLooping_isLooping] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v8 + 8))(a1, v7);
  return v9;
}

void sub_100B738D8(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLMovieItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        sub_100D90AD4(*(v5 + OBJC_IVAR____TtC8Freeform25CRLCommandSetMovieLooping_isLooping));
        v13 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);
      }

      return;
    }
  }

  v14 = objc_opt_self();
  v15 = [v14 _atomicIncrementAssertCount];
  v39 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v39);
  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v17 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v15;
  v24 = sub_1005CF000();
  *(inited + 96) = v24;
  v25 = sub_1005CF04C();
  *(inited + 104) = v25;
  *(inited + 72) = v16;
  *(inited + 136) = &type metadata for String;
  v26 = sub_1000053B0();
  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v26;
  *(inited + 152) = 109;
  v27 = v39;
  *(inited + 216) = v24;
  *(inited + 224) = v25;
  *(inited + 192) = v27;
  v28 = v16;
  v29 = v27;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v31 = static os_log_type_t.error.getter();
  sub_100005404(v22, &_mh_execute_header, v31, "Unable to retrieve movie item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve movie item");
  type metadata accessor for __VaListBuilder();
  v32 = swift_allocObject();
  v32[2] = 8;
  v32[3] = 0;
  v32[4] = 0;
  v32[5] = 0;
  v33 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  [v14 handleFailureInFunction:v34 file:v35 lineNumber:109 isFatal:1 format:v36 args:v33];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v37, v38);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100B73DA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);

  return v4(v1 + v2, v3);
}

uint64_t sub_100B73E34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_100B73ED0()
{
  result = type metadata accessor for UUID();
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

id sub_100B73F64(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v9 = __chkstk_darwin(v6).n128_u64[0];
  v11 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 912;
  if ((a2 - 44) < 4)
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v107[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v107);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 24;
    v25 = v107[0];
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "We need to set the poster time and the poster image together so they stay in sync. Also the poster image is a board item asset so it is async so we'll have to wait until we have both and change them together, use CRLCommandSetMoviePosterTime", 241, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:24 isFatal:0 format:v34 args:v31];
LABEL_5:

    return 0;
  }

  if (a2 == 48)
  {
    v43 = v8;
    if (([a3 respondsToSelector:{"floatValue", v9}] & 1) == 0)
    {
      v66 = objc_opt_self();
      v67 = [v66 _atomicIncrementAssertCount];
      v107[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v107);
      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v69 = String._bridgeToObjectiveC()();

      v70 = [v69 lastPathComponent];

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v74 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v75 = swift_initStackObject();
      *(v75 + 16) = xmmword_10146CA70;
      *(v75 + 56) = &type metadata for Int32;
      *(v75 + 64) = &protocol witness table for Int32;
      *(v75 + 32) = v67;
      v76 = sub_1005CF000();
      *(v75 + 96) = v76;
      v77 = sub_1005CF04C();
      *(v75 + 104) = v77;
      *(v75 + 72) = v68;
      *(v75 + 136) = &type metadata for String;
      v78 = sub_1000053B0();
      *(v75 + 112) = v71;
      *(v75 + 120) = v73;
      *(v75 + 176) = &type metadata for UInt;
      *(v75 + 184) = &protocol witness table for UInt;
      *(v75 + 144) = v78;
      *(v75 + 152) = 30;
      v79 = v107[0];
      *(v75 + 216) = v76;
      *(v75 + 224) = v77;
      *(v75 + 192) = v79;
      v80 = v68;
      v81 = v79;
      v82 = static os_log_type_t.error.getter();
      sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v75);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v83 = static os_log_type_t.error.getter();
      sub_100005404(v74, &_mh_execute_header, v83, "An invalid value was passed in to CRLCommandSetMovieValue for property volume.", 80, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v84 = swift_allocObject();
      v84[2] = 8;
      v84[3] = 0;
      v84[4] = 0;
      v84[5] = 0;
      v85 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      [v66 handleFailureInFunction:v32 file:v33 lineNumber:30 isFatal:0 format:v34 args:v85];
      goto LABEL_5;
    }

    [a3 floatValue];
    v38 = v44;
    v39 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieVolume(0));
    (*(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
    v40.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v11, v43);
    v42 = "initWithId:volume:";
  }

  else
  {
    if (a2 != 49)
    {
      v46 = objc_opt_self();
      v47 = [v46 _atomicIncrementAssertCount];
      v107[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v107);
      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      v50 = [v49 lastPathComponent];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v54 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_10146CA70;
      *(v55 + 56) = &type metadata for Int32;
      *(v55 + 64) = &protocol witness table for Int32;
      *(v55 + 32) = v47;
      v56 = sub_1005CF000();
      *(v55 + 96) = v56;
      v57 = sub_1005CF04C();
      *(v55 + 104) = v57;
      *(v55 + 72) = v48;
      *(v55 + 136) = &type metadata for String;
      v58 = sub_1000053B0();
      *(v55 + 112) = v51;
      *(v55 + 120) = v53;
      *(v55 + 176) = &type metadata for UInt;
      *(v55 + 184) = &protocol witness table for UInt;
      *(v55 + 144) = v58;
      *(v55 + 152) = 40;
      v59 = v107[0];
      *(v55 + 216) = v56;
      *(v55 + 224) = v57;
      *(v55 + 192) = v59;
      v60 = v48;
      v61 = v59;
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v55);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v54, &_mh_execute_header, v63, "Unhandled movie property.", 25, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v64 = swift_allocObject();
      v64[2] = 8;
      v64[3] = 0;
      v64[4] = 0;
      v64[5] = 0;
      v65 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      [v46 handleFailureInFunction:v32 file:v33 lineNumber:40 isFatal:0 format:v34 args:v65];
      goto LABEL_5;
    }

    v36 = v8;
    if (([a3 respondsToSelector:{"floatValue", v9}] & 1) == 0)
    {
      v86 = objc_opt_self();
      v87 = [v86 _atomicIncrementAssertCount];
      v107[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v107);
      StaticString.description.getter();
      v88 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v89 = String._bridgeToObjectiveC()();

      v90 = [v89 lastPathComponent];

      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v94 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_10146CA70;
      *(v95 + 56) = &type metadata for Int32;
      *(v95 + 64) = &protocol witness table for Int32;
      *(v95 + 32) = v87;
      v96 = sub_1005CF000();
      *(v95 + 96) = v96;
      v97 = sub_1005CF04C();
      *(v95 + 104) = v97;
      *(v95 + 72) = v88;
      *(v95 + 136) = &type metadata for String;
      v98 = sub_1000053B0();
      *(v95 + 112) = v91;
      *(v95 + 120) = v93;
      *(v95 + 176) = &type metadata for UInt;
      *(v95 + 184) = &protocol witness table for UInt;
      *(v95 + 144) = v98;
      *(v95 + 152) = 37;
      v99 = v107[0];
      *(v95 + 216) = v96;
      *(v95 + 224) = v97;
      *(v95 + 192) = v99;
      v100 = v88;
      v101 = v99;
      v102 = static os_log_type_t.error.getter();
      sub_100005404(v94, &_mh_execute_header, v102, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v95);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v103 = static os_log_type_t.error.getter();
      sub_100005404(v94, &_mh_execute_header, v103, "An invalid value was passed in to CRLCommandSetMovieValue for property cornerRadius.", 86, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v104 = swift_allocObject();
      v104[2] = 8;
      v104[3] = 0;
      v104[4] = 0;
      v104[5] = 0;
      v105 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      [v86 handleFailureInFunction:v32 file:v33 lineNumber:37 isFatal:0 format:v34 args:v105];
      goto LABEL_5;
    }

    [a3 floatValue];
    v38 = v37;
    v39 = objc_allocWithZone(type metadata accessor for CRLCommandSetMovieCornerRadius(0));
    (*(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
    v40.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v11, v36);
    v42 = "initWithId:cornerRadius:";
  }

  LODWORD(v41) = v38;
  v45 = [v39 v42];

  return v45;
}

void sub_100B74E8C(uint64_t a1, uint64_t a2, int a3)
{
  v8 = type metadata accessor for CRLBoardScenesCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1012E0400(a1, &off_1018A75D0);
  if (!v4)
  {
    v30 = a3;
    v11 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandDuplicateBoard_boardToDuplicate);
    v12 = type metadata accessor for CRLUUIDRemapHelper();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
    *&v13[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
    v13[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 1;
    v29.receiver = v13;
    v29.super_class = v12;
    v14 = objc_msgSendSuper2(&v29, "init");
    v15 = *(v11 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
    v16 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
    v17 = v15;
    v18 = 0;
    sub_1012E0400(v16, &off_10188FE10);
    v19 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v20 = *&v17[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    if (!v20)
    {
      v28 = 0;
      sub_10096C7D4();
      v18 = v28;
      v20 = *&v17[v19];
    }

    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    sub_100972DB0(v21, a2, v14);

    if (v18)
    {
    }

    else
    {
      sub_1012CF6CC(v16, &off_10188FE10, 2);

      v22 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
      v23 = *(v11 + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v24 = type metadata accessor for CRLBoardCRDTData(0);
      sub_100B751F0(v23 + *(v24 + 36), v10);
      v25 = v22 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v26 = *(v24 + 36);

      sub_100B75254(v10, v25 + v26);
      swift_endAccess();

      sub_1012CF6CC(a1, &off_1018A75D0, v30);
    }
  }
}

id sub_100B75188()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandDuplicateBoard();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100B751F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardScenesCRDTData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B75254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardScenesCRDTData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CRLFileReadWriteUserOptionsViewController()
{
  result = qword_101A12C18;
  if (!qword_101A12C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B75344@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v59 = a2;
  v3 = sub_1005B981C(&qword_101A12C88);
  __chkstk_darwin(v3 - 8);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = (&v54 - v6);
  v7 = sub_1005B981C(&qword_101A12C90);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v71 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v54 - v11;
  __chkstk_darwin(v12);
  v70 = &v54 - v13;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v57 = type metadata accessor for Divider();
  v69 = *(v57 - 8);
  __chkstk_darwin(v57);
  v68 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v54 - v19;
  __chkstk_darwin(v20);
  v60 = &v54 - v21;
  __chkstk_darwin(v22);
  v66 = &v54 - v23;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  static Font.title.getter();
  v29 = Text.font(_:)();
  v61 = v30;
  v62 = v29;
  v56 = v31;
  v65 = v32;

  sub_10007441C(v24, v26, v28 & 1);

  Divider.init()();
  v73 = *a1;
  sub_1005B981C(&qword_101A1CF70);
  State.projectedValue.getter();
  Toggle.init(isOn:label:)();
  v72 = *a1;
  State.wrappedValue.getter();
  v33 = &v16[*(v8 + 44)];
  v55 = v16;
  *v33 = v73;
  *(v33 + 1) = sub_100B75AE4;
  *(v33 + 2) = 0;
  v73 = a1[1];
  State.projectedValue.getter();
  v34 = v70;
  Toggle.init(isOn:label:)();
  v72 = a1[1];
  State.wrappedValue.getter();
  v35 = v34 + *(v8 + 44);
  *v35 = v73;
  *(v35 + 8) = sub_100B75B74;
  *(v35 + 16) = 0;
  v36 = v60;
  Divider.init()();
  v37 = static VerticalAlignment.center.getter();
  v38 = v63;
  *v63 = v37;
  v38[1] = 0;
  *(v38 + 16) = 1;
  v39 = sub_1005B981C(&qword_101A12C98);
  sub_100B75C00(a1, v38 + *(v39 + 44));
  LOBYTE(v72) = v56 & 1;
  v40 = *(v69 + 16);
  v41 = v64;
  v42 = v57;
  v40(v64, v66, v57);
  v43 = v67;
  sub_10000BE14(v16, v67, &qword_101A12C90);
  sub_10000BE14(v70, v71, &qword_101A12C90);
  v44 = v42;
  v40(v68, v36, v42);
  v45 = v58;
  sub_10000BE14(v38, v58, &qword_101A12C88);
  v46 = v72;
  v56 = v72;
  v47 = v59;
  v49 = v61;
  v48 = v62;
  *v59 = v62;
  v47[1] = v49;
  *(v47 + 16) = v46;
  v47[3] = v65;
  v50 = sub_1005B981C(&qword_101A12CA0);
  v40(v47 + v50[12], v41, v44);
  sub_10000BE14(v43, v47 + v50[16], &qword_101A12C90);
  sub_10000BE14(v71, v47 + v50[20], &qword_101A12C90);
  v51 = v68;
  v40(v47 + v50[24], v68, v44);
  sub_10000BE14(v45, v47 + v50[28], &qword_101A12C88);
  sub_10081EF10(v48, v49, v56);

  sub_10000CAAC(v63, &qword_101A12C88);
  v52 = *(v69 + 8);
  v52(v60, v44);
  sub_10000CAAC(v70, &qword_101A12C90);
  sub_10000CAAC(v55, &qword_101A12C90);
  v52(v66, v44);
  sub_10000CAAC(v45, &qword_101A12C88);
  v52(v51, v44);
  sub_10000CAAC(v71, &qword_101A12C90);
  sub_10000CAAC(v67, &qword_101A12C90);
  v52(v64, v44);
  sub_10007441C(v62, v61, v72);
}

uint64_t sub_100B75A6C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100B75AFC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100B75B8C(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1019F2778 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  return a2();
}

uint64_t sub_100B75C00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019FEA78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = LocalizedStringKey.init(stringLiteral:)();
  v26 = v12;
  v27 = v11;
  v24[1] = v13;
  v25 = v14;
  v15 = *a1;
  v29 = a1[1];
  v30 = v15;
  v16 = *(a1 + 4);
  v17 = swift_allocObject();
  v18 = a1[1];
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = a1[2];
  sub_10000BE14(&v30, v28, &qword_101A1CF70);
  sub_10000BE14(&v29, v28, &qword_101A1CF70);
  sub_10067F2EC(v16);
  Button<>.init(_:action:)();
  v19 = *(v5 + 16);
  v19(v7, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = sub_1005B981C(&qword_101A12CA8);
  v19((a2 + *(v20 + 48)), v7, v4);
  v21 = a2 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = *(v5 + 8);
  v22(v10, v4);
  return (v22)(v7, v4);
}

uint64_t sub_100B75E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v26[0] = *v1;
  v26[1] = v3;
  v26[2] = v1[2];
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1005B981C(&qword_101A12C68);
  sub_100B75344(v26, (a1 + *(v4 + 44)));
  v5 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_1005B981C(&qword_101A12C70) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a1 + *(sub_1005B981C(&qword_101A12C78) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  result = sub_1005B981C(&qword_101A12C80);
  *(a1 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_100B75F80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  sub_100B761F4(&v5);
  return UIHostingController.init(coder:rootView:)();
}

id sub_100B75FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileReadWriteUserOptionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100B76064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100B760C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100B7614C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100B761F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2778 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  State.init(wrappedValue:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = State.init(wrappedValue:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v4;
  return result;
}

unint64_t sub_100B76350()
{
  result = qword_101A12CB0;
  if (!qword_101A12CB0)
  {
    sub_1005C4E5C(&qword_101A12C80);
    sub_100B76438(&qword_101A12CB8, &qword_101A12C78, &unk_10149A6F0, sub_100B76408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CB0);
  }

  return result;
}

uint64_t sub_100B76438(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B764BC()
{
  result = qword_101A12CC8;
  if (!qword_101A12CC8)
  {
    sub_1005C4E5C(&qword_101A12CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CC8);
  }

  return result;
}

uint64_t sub_100B76520(char a1)
{
  result = 0x73746E65746E6F63;
  switch(a1)
  {
    case 3:
      return 0x7974696361706FLL;
    case 4:
      return 0x6E65646469487369;
    case 5:
      return 0x426F54736B73616DLL;
    case 6:
      return 0x656C62756F447369;
    case 7:
      v4 = 0x72656E726F63;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 8:
      return 0x6957726564726F62;
    case 9:
      v3 = 0x726564726F62;
      goto LABEL_20;
    case 10:
      return 0x756F72676B636162;
    case 11:
      return 0x704F776F64616873;
    case 12:
      v4 = 0x776F64616873;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 13:
      return 0x664F776F64616873;
    case 14:
      v3 = 0x776F64616873;
      goto LABEL_20;
    case 15:
      return 0x6150776F64616873;
    case 16:
      return 0x737265746C6966;
    case 17:
      return 0xD000000000000011;
    case 18:
      return 0xD000000000000011;
    case 19:
      return 0x6152646C756F6873;
    case 20:
      return 0xD000000000000012;
    case 21:
      return 0x73646E756F62;
    case 22:
      return 0x6E6F697469736F70;
    case 23:
      return 0x6F697469736F507ALL;
    case 24:
      return 0x6F50726F68636E61;
    case 25:
      return 0x6F50726F68636E61;
    case 26:
      return 0x726F66736E617274;
    case 27:
      return 0xD000000000000011;
    case 28:
      return 0xD000000000000010;
    case 29:
      return 1752457584;
    case 30:
      return 0x6F6C6F436C6C6966;
    case 31:
      v3 = 0x656B6F727473;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      break;
    case 32:
      result = 0x7453656B6F727473;
      break;
    case 33:
      result = 0x6E45656B6F727473;
      break;
    case 34:
      result = 0x74646957656E696CLL;
      break;
    case 35:
      result = 0x6D694C726574696DLL;
      break;
    case 36:
      result = 0x68736144656E696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100B7694C()
{
  sub_1006C121C(v0, v3);
  result = 1;
  switch(v5[192])
  {
    case 1:
      sub_100687CF4(v3);
      goto LABEL_43;
    case 2:
    case 3:
      return result;
    case 4:
    case 5:
      return 2;
    case 6:
    case 7:
      return 3;
    case 8:
    case 9:
      return 4;
    case 0xA:
    case 0xB:
      return 5;
    case 0xC:
    case 0xD:
      return 6;
    case 0xE:
    case 0xF:
      return 7;
    case 0x10:
    case 0x11:
      return 8;
    case 0x12:
    case 0x13:
      sub_100687CF4(v3);
      return 9;
    case 0x14:
    case 0x15:
      sub_100687CF4(v3);
      return 10;
    case 0x16:
    case 0x17:
      return 11;
    case 0x18:
    case 0x19:
      return 12;
    case 0x1A:
    case 0x1B:
      return 13;
    case 0x1C:
    case 0x1D:
      sub_100687CF4(v3);
      return 14;
    case 0x1E:
    case 0x1F:
      sub_100687CF4(v3);
      return 15;
    case 0x20:
    case 0x21:
      sub_100687CF4(v3);
      return 16;
    case 0x22:
      sub_1005E09AC(v4);
      sub_1005E09AC(v3);
      return 17;
    case 0x23:
      sub_100687CF4(v3);
      return 17;
    case 0x24:
    case 0x25:
      sub_100687CF4(v3);
      return 18;
    case 0x26:
    case 0x27:
      return 19;
    case 0x28:
    case 0x29:
      return 20;
    case 0x2A:
    case 0x2B:
      return 21;
    case 0x2C:
    case 0x2D:
      return 22;
    case 0x2E:
    case 0x2F:
      return 23;
    case 0x30:
    case 0x31:
      return 24;
    case 0x32:
    case 0x33:
      return 25;
    case 0x34:
    case 0x35:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
      return 26;
    case 0x36:
    case 0x37:
      return 27;
    case 0x38:
    case 0x39:
      goto LABEL_38;
    case 0x3A:
    case 0x3B:
      sub_100687CF4(v3);
      return 29;
    case 0x3C:
    case 0x3D:
      sub_100687CF4(v3);
      return 30;
    case 0x3E:
    case 0x3F:
      sub_100687CF4(v3);
      return 31;
    case 0x40:
    case 0x41:
      return 32;
    case 0x42:
    case 0x43:
      return 33;
    case 0x44:
    case 0x45:
      return 34;
    case 0x46:
    case 0x47:
      return 35;
    case 0x48:
    case 0x49:
      return 36;
    case 0x4A:
      sub_100687CF4(v3);
      return 26;
    case 0x4F:
      v2 = v5;
      goto LABEL_37;
    case 0x50:
      v2 = v4;
LABEL_37:
      sub_100687C30(v2);
LABEL_38:
      result = 28;
      break;
    default:
      sub_1005E09AC(v4);
      sub_1005E09AC(v3);
LABEL_43:
      result = 0;
      break;
  }

  return result;
}

void sub_100B76B70(uint64_t a1@<X8>, float a2@<S0>)
{
  sub_1006C121C(v2, &v130);
  switch(v146)
  {
    case 1:
    case 35:
      v122 = v130;
      v123 = v131;
      v114 = 0u;
      v115 = 0u;
      sub_100601584(&v122, &v106);
      *(a1 + 24) = &type metadata for InterpolatableAny;
      v53 = swift_allocObject();
      *a1 = v53;
      sub_100BF5B4C(&v106, v53 + 16, a2);
      sub_100B7AA2C(&v106);
      sub_100B7AA2C(&v114);
      goto LABEL_26;
    case 2:
    case 42:
      v37 = sub_100120AD8(*&v130, *(&v130 + 1), *&v131, *(&v131 + 1), *&v132, *(&v132 + 1), *&v133, *(&v133 + 1), a2);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      type metadata accessor for CGRect(0);
      *(a1 + 24) = v44;
      v45 = swift_allocObject();
      *a1 = v45;
      v45[2] = v37;
      *(v45 + 3) = v39;
      *(v45 + 4) = v41;
      *(v45 + 5) = v43;
      return;
    case 3:
    case 43:
      v122 = 0u;
      v123 = 0u;
      type metadata accessor for CGRect(0);
      *(&v115 + 1) = v49;
      v50 = swift_allocObject();
      *&v114 = v50;
      v51 = v131;
      *(v50 + 16) = v130;
      *(v50 + 32) = v51;
      goto LABEL_45;
    case 4:
    case 44:
    case 50:
      v14 = sub_100120ABC(*&v130, *(&v130 + 1), *&v131, *(&v131 + 1), a2);
      v16 = v15;
      type metadata accessor for CGPoint(0);
      goto LABEL_36;
    case 5:
    case 45:
    case 51:
      v19 = *(&v130 + 1);
      v18 = v130;
      v122 = 0u;
      v123 = 0u;
      type metadata accessor for CGPoint(0);
      goto LABEL_44;
    case 6:
    case 22:
      v48 = ((1.0 - a2) * *&v130) + (*(&v130 + 1) * a2);
      *(a1 + 24) = &type metadata for Float;
      *a1 = v48;
      return;
    case 7:
    case 23:
      v122 = 0u;
      v123 = 0u;
      *(&v115 + 1) = &type metadata for Float;
      LODWORD(v114) = v130;
      goto LABEL_45;
    case 8:
    case 10:
    case 12:
    case 38:
      v10 = v130;
      v11 = BYTE1(v130);
      v12 = lroundf(a2);
      *(a1 + 24) = &type metadata for Bool;
      if (v12 <= 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      *a1 = v13;
      return;
    case 9:
    case 11:
    case 13:
    case 39:
      v122 = 0u;
      v123 = 0u;
      *(&v115 + 1) = &type metadata for Bool;
      LOBYTE(v114) = v130;
      goto LABEL_45;
    case 14:
    case 16:
    case 24:
    case 40:
    case 46:
    case 48:
    case 64:
    case 66:
    case 68:
    case 70:
    case 72:
      v5 = sub_100120944(*&v130, *(&v130 + 1), a2);
      *(a1 + 24) = &type metadata for CGFloat;
      *a1 = v5;
      return;
    case 15:
    case 17:
    case 25:
    case 41:
    case 47:
    case 49:
    case 65:
    case 67:
    case 69:
    case 71:
    case 73:
      v122 = 0u;
      v123 = 0u;
      *(&v115 + 1) = &type metadata for CGFloat;
      *&v114 = v130;
      goto LABEL_45;
    case 18:
    case 20:
    case 28:
    case 60:
    case 62:
      v6 = *(&v130 + 1);
      v8 = v130;
      v9 = 0;
      if (v130)
      {
        type metadata accessor for CGColor(0);
      }

      v122 = v8;
      *&v123 = 0;
      *(&v123 + 1) = v9;
      v7 = 0;
      if (v6)
      {
        goto LABEL_9;
      }

      goto LABEL_55;
    case 19:
    case 21:
    case 29:
    case 61:
    case 63:
      v6 = v130;
      v122 = 0u;
      v123 = 0u;
      v7 = 0;
      if (!v130)
      {
        goto LABEL_55;
      }

LABEL_9:
      type metadata accessor for CGColor(0);
      goto LABEL_55;
    case 26:
      v14 = sub_100120ABC(*&v130, *(&v130 + 1), *&v131, *(&v131 + 1), a2);
      v16 = v62;
      type metadata accessor for CGSize(0);
LABEL_36:
      *(a1 + 24) = v17;
      *a1 = v14;
      *(a1 + 8) = v16;
      return;
    case 27:
      v19 = *(&v130 + 1);
      v18 = v130;
      v122 = 0u;
      v123 = 0u;
      type metadata accessor for CGSize(0);
LABEL_44:
      *(&v115 + 1) = v20;
      *&v114 = v18;
      *(&v114 + 1) = v19;
      goto LABEL_45;
    case 30:
      v6 = *(&v130 + 1);
      v63 = v130;
      v64 = 0;
      if (v130)
      {
        type metadata accessor for CGPath(0);
      }

      v122 = v63;
      *&v123 = 0;
      *(&v123 + 1) = v64;
      v7 = 0;
      if (!v6)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    case 31:
      v6 = v130;
      v122 = 0u;
      v123 = 0u;
      v7 = 0;
      if (v130)
      {
LABEL_42:
        type metadata accessor for CGPath(0);
      }

      goto LABEL_55;
    case 32:
    case 36:
      v6 = *(&v130 + 1);
      v46 = v130;
      if (v130)
      {
        v47 = sub_1005B981C(&qword_101A09290);
      }

      else
      {
        v47 = 0;
      }

      v122 = v46;
      *&v123 = 0;
      *(&v123 + 1) = v47;
      if (v6)
      {
        goto LABEL_54;
      }

      goto LABEL_28;
    case 33:
    case 37:
      v6 = v130;
      v122 = 0u;
      v123 = 0u;
      if (v130)
      {
LABEL_54:
        v7 = sub_1005B981C(&qword_101A09290);
      }

      else
      {
LABEL_28:
        v7 = 0;
      }

LABEL_55:
      v114 = v6;
      *&v115 = 0;
      *(&v115 + 1) = v7;
      *(a1 + 24) = &type metadata for InterpolatableAny;
      v95 = swift_allocObject();
      *a1 = v95;
      sub_100BF5B4C(&v114, v95 + 16, a2);
      sub_100B7AA2C(&v114);
      v66 = &v122;
      goto LABEL_56;
    case 52:
    case 54:
      v118 = v134;
      v119 = v135;
      v120 = v136;
      v121 = v137;
      v114 = v130;
      v115 = v131;
      v116 = v132;
      v117 = v133;
      v110 = v142;
      v111 = v143;
      v112 = v144;
      v113 = v145;
      v106 = v138;
      v107 = v139;
      v108 = v140;
      v109 = v141;
      v27 = *&CATransform3DIdentity.m33;
      v102 = *&CATransform3DIdentity.m31;
      v103 = v27;
      v28 = *&CATransform3DIdentity.m43;
      v104 = *&CATransform3DIdentity.m41;
      v105 = v28;
      v29 = *&CATransform3DIdentity.m13;
      v98 = *&CATransform3DIdentity.m11;
      v99 = v29;
      v30 = *&CATransform3DIdentity.m23;
      v100 = *&CATransform3DIdentity.m21;
      v101 = v30;
      CATransform3DInterpolate();
      v126 = v102;
      v127 = v103;
      v128 = v104;
      v129 = v105;
      v122 = v98;
      v123 = v99;
      v124 = v100;
      v125 = v101;
      type metadata accessor for CATransform3D(0);
      *(a1 + 24) = v31;
      v32 = swift_allocObject();
      *a1 = v32;
      v33 = v127;
      v32[5] = v126;
      v32[6] = v33;
      v34 = v129;
      v32[7] = v128;
      v32[8] = v34;
      v35 = v123;
      v32[1] = v122;
      v32[2] = v35;
      v36 = v125;
      v32[3] = v124;
      v32[4] = v36;
      return;
    case 53:
    case 55:
      v122 = 0u;
      v123 = 0u;
      type metadata accessor for CATransform3D(0);
      *(&v115 + 1) = v21;
      v22 = swift_allocObject();
      *&v114 = v22;
      v23 = v135;
      v22[5] = v134;
      v22[6] = v23;
      v24 = v137;
      v22[7] = v136;
      v22[8] = v24;
      v25 = v131;
      v22[1] = v130;
      v22[2] = v25;
      v26 = v133;
      v22[3] = v132;
      v22[4] = v26;
      goto LABEL_45;
    case 56:
      v122 = v130;
      v123 = v131;
      v124 = v132;
      v114 = v133;
      v115 = v134;
      v116 = v135;
      sub_10013A468(&v122, &v114, &v106, a2);
      v55 = v108;
      type metadata accessor for CGAffineTransform(0);
      v96 = v107;
      v97 = v106;
      *(a1 + 24) = v56;
      v57 = swift_allocObject();
      *a1 = v57;
      v57[1] = v97;
      v57[2] = v96;
      v57[3] = v55;
      return;
    case 57:
      v58 = v132;
      v122 = 0u;
      v123 = 0u;
      type metadata accessor for CGAffineTransform(0);
      *(&v115 + 1) = v59;
      v60 = swift_allocObject();
      *&v114 = v60;
      v61 = v131;
      v60[1] = v130;
      v60[2] = v61;
      v60[3] = v58;
      goto LABEL_45;
    case 58:
      v67 = v130;
      v68 = sub_100BF62A8(a2);
      type metadata accessor for CGPath(0);
      *(a1 + 24) = v69;

      *a1 = v68;
      return;
    case 59:
      v70 = v130;
      v122 = 0u;
      v123 = 0u;
      type metadata accessor for CGPath(0);
      *(&v115 + 1) = v71;
      *&v114 = v70;
LABEL_45:
      *(a1 + 24) = &type metadata for InterpolatableAny;
      v65 = swift_allocObject();
      *a1 = v65;
      sub_100BF5B4C(&v114, v65 + 16, a2);
      sub_100B7AA2C(&v122);
      v66 = &v114;
LABEL_56:
      sub_100B7AA2C(v66);
      return;
    case 74:
      sub_100687CF4(&v130);
      goto LABEL_49;
    case 75:
    case 76:
    case 77:
    case 78:
      goto LABEL_49;
    case 79:
      v54 = &v134;
      goto LABEL_34;
    case 80:
      v54 = &v132;
LABEL_34:
      sub_100687C30(v54);
LABEL_49:
      v72 = objc_opt_self();
      v73 = [v72 _atomicIncrementAssertCount];
      *&v130 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v130);
      StaticString.description.getter();
      v74 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      v76 = [v75 lastPathComponent];

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v80 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_10146CA70;
      *(v81 + 56) = &type metadata for Int32;
      *(v81 + 64) = &protocol witness table for Int32;
      *(v81 + 32) = v73;
      v82 = sub_100006370(0, &qword_1019F4D30);
      *(v81 + 96) = v82;
      v83 = sub_1005CF04C();
      *(v81 + 104) = v83;
      *(v81 + 72) = v74;
      *(v81 + 136) = &type metadata for String;
      v84 = sub_1000053B0();
      *(v81 + 112) = v77;
      *(v81 + 120) = v79;
      *(v81 + 176) = &type metadata for UInt;
      *(v81 + 184) = &protocol witness table for UInt;
      *(v81 + 144) = v84;
      *(v81 + 152) = 677;
      v85 = v130;
      *(v81 + 216) = v82;
      *(v81 + 224) = v83;
      *(v81 + 192) = v85;
      v86 = v74;
      v87 = v85;
      v88 = static os_log_type_t.error.getter();
      sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v81);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v89 = static os_log_type_t.error.getter();
      sub_100005404(v80, &_mh_execute_header, v89, "Cannot retrieve an interpolated value for virtual descriptors. Call interpolatedValue(by:) on a full property transition instead.", 129, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v90 = swift_allocObject();
      v90[2] = 8;
      v90[3] = 0;
      v90[4] = 0;
      v90[5] = 0;
      v91 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v92 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v93 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v94 = String._bridgeToObjectiveC()();

      [v72 handleFailureInFunction:v92 file:v93 lineNumber:677 isFatal:0 format:v94 args:v91];

      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    default:
      v122 = v130;
      v123 = v131;
      v114 = v132;
      v115 = v133;
      sub_100601584(&v122, &v106);
      sub_100601584(&v114, &v98);
      *(a1 + 24) = &type metadata for InterpolatableAny;
      v52 = swift_allocObject();
      *a1 = v52;
      sub_100BF5B4C(&v98, v52 + 16, a2);
      sub_100B7AA2C(&v98);
      sub_100B7AA2C(&v106);
      sub_1005E09AC(&v114);
LABEL_26:
      sub_1005E09AC(&v122);
      break;
  }
}

void sub_100B77684(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1006C121C(v2, v208);
  sub_1006C121C(v208, &v191);
  switch(v207)
  {
    case 1:
    case 35:
      v179 = v191;
      v180 = v192;
      v65 = sub_100B7694C();
      sub_100601584(&v179, &v171);
      *(a2 + 24) = &type metadata for CRLLayerImplicitPropertyTransition;
      *(a2 + 32) = sub_100B78D54();
      v66 = swift_allocObject();
      *a2 = v66;
      swift_unknownObjectWeakInit();
      *(v66 + 24) = 0u;
      *(v66 + 40) = 0u;
      *(v66 + 56) = v65;
      swift_unknownObjectWeakAssign();
      sub_10002C638(&v171, v66 + 24, &unk_1019F4D00);
      goto LABEL_21;
    case 2:
    case 42:
      v142 = v192;
      v147 = v191;
      v152 = v194;
      v161 = v193;
      v6 = sub_100B7694C();
      type metadata accessor for CGRect(0);
      v54 = v53;
      *(&v180 + 1) = v53;
      v55 = swift_allocObject();
      *&v179 = v55;
      *(v55 + 16) = v147;
      *(v55 + 32) = v142;
      *(&v172 + 1) = v54;
      v56 = swift_allocObject();
      *&v171 = v56;
      *(v56 + 16) = v161;
      *(v56 + 32) = v152;
      goto LABEL_70;
    case 3:
    case 43:
      v153 = v192;
      v162 = v191;
      v8 = sub_100B7694C();
      type metadata accessor for CGRect(0);
      *(&v180 + 1) = v60;
      v61 = swift_allocObject();
      *&v179 = v61;
      *(v61 + 16) = v162;
      *(v61 + 32) = v153;
      goto LABEL_75;
    case 4:
    case 44:
    case 50:
      v20 = *(&v191 + 1);
      v19 = v191;
      v22 = *(&v192 + 1);
      v21 = v192;
      v6 = sub_100B7694C();
      type metadata accessor for CGPoint(0);
      goto LABEL_42;
    case 5:
    case 45:
    case 51:
      v25 = *(&v191 + 1);
      v24 = v191;
      v8 = sub_100B7694C();
      type metadata accessor for CGPoint(0);
      goto LABEL_49;
    case 6:
    case 22:
      v59 = v191;
      v6 = sub_100B7694C();
      *(&v180 + 1) = &type metadata for Float;
      LODWORD(v179) = v59;
      *(&v172 + 1) = &type metadata for Float;
      LODWORD(v171) = HIDWORD(v59);
      goto LABEL_70;
    case 7:
    case 23:
      v67 = v191;
      v8 = sub_100B7694C();
      *(&v180 + 1) = &type metadata for Float;
      LODWORD(v179) = v67;
      goto LABEL_75;
    case 8:
    case 10:
    case 12:
    case 38:
      v17 = v191;
      v18 = BYTE1(v191);
      v6 = sub_100B7694C();
      *(&v180 + 1) = &type metadata for Bool;
      LOBYTE(v179) = v17;
      *(&v172 + 1) = &type metadata for Bool;
      LOBYTE(v171) = v18;
      goto LABEL_70;
    case 9:
    case 11:
    case 13:
    case 39:
      v16 = v191;
      v8 = sub_100B7694C();
      *(&v180 + 1) = &type metadata for Bool;
      LOBYTE(v179) = v16;
      goto LABEL_75;
    case 14:
    case 16:
    case 24:
    case 40:
    case 46:
    case 48:
    case 64:
    case 66:
    case 68:
    case 70:
    case 72:
      v5 = v191;
      v6 = sub_100B7694C();
      *(&v180 + 1) = &type metadata for CGFloat;
      *&v179 = v5;
      *(&v172 + 1) = &type metadata for CGFloat;
      *&v171 = *(&v5 + 1);
      goto LABEL_70;
    case 15:
    case 17:
    case 25:
    case 41:
    case 47:
    case 49:
    case 65:
    case 67:
    case 69:
    case 71:
    case 73:
      v7 = v191;
      v8 = sub_100B7694C();
      *(&v180 + 1) = &type metadata for CGFloat;
      *&v179 = v7;
      goto LABEL_75;
    case 18:
    case 20:
    case 28:
    case 60:
    case 62:
      v11 = *(&v191 + 1);
      v12 = v191;
      v13 = sub_100B7694C();
      if (v12)
      {
        type metadata accessor for CGColor(0);
        v15 = v12;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v179 + 1) = 0;
        *&v180 = 0;
      }

      *&v179 = v15;
      *(&v180 + 1) = v14;
      v68 = 0;
      if (!v11)
      {
        goto LABEL_82;
      }

      type metadata accessor for CGColor(0);
      goto LABEL_83;
    case 19:
    case 21:
    case 29:
    case 61:
    case 63:
      v9 = v191;
      v8 = sub_100B7694C();
      v10 = 0;
      if (!v9)
      {
        goto LABEL_73;
      }

      type metadata accessor for CGColor(0);
      goto LABEL_74;
    case 26:
      v20 = *(&v191 + 1);
      v19 = v191;
      v22 = *(&v192 + 1);
      v21 = v192;
      v6 = sub_100B7694C();
      type metadata accessor for CGSize(0);
LABEL_42:
      *(&v180 + 1) = v23;
      *&v179 = v19;
      *(&v179 + 1) = v20;
      *(&v172 + 1) = v23;
      *&v171 = v21;
      *(&v171 + 1) = v22;
      goto LABEL_70;
    case 27:
      v25 = *(&v191 + 1);
      v24 = v191;
      v8 = sub_100B7694C();
      type metadata accessor for CGSize(0);
LABEL_49:
      *(&v180 + 1) = v26;
      *&v179 = v24;
      *(&v179 + 1) = v25;
      goto LABEL_75;
    case 30:
      v11 = *(&v191 + 1);
      v12 = v191;
      v13 = sub_100B7694C();
      if (v12)
      {
        type metadata accessor for CGPath(0);
        v101 = v12;
      }

      else
      {
        v101 = 0;
        v100 = 0;
        *(&v179 + 1) = 0;
        *&v180 = 0;
      }

      *&v179 = v101;
      *(&v180 + 1) = v100;
      v68 = 0;
      if (v11)
      {
        type metadata accessor for CGPath(0);
      }

      else
      {
LABEL_82:
        *(&v171 + 1) = 0;
        *&v172 = 0;
      }

LABEL_83:
      *&v171 = v11;
      *(&v172 + 1) = v68;
      goto LABEL_84;
    case 31:
      v9 = v191;
      v8 = sub_100B7694C();
      v10 = 0;
      if (!v9)
      {
        goto LABEL_73;
      }

      type metadata accessor for CGPath(0);
      goto LABEL_74;
    case 32:
    case 36:
      v57 = v191;
      v6 = sub_100B7694C();
      if (v57)
      {
        v58 = sub_1005B981C(&qword_101A09290);
      }

      else
      {
        v58 = 0;
        *(&v179 + 1) = 0;
        *&v180 = 0;
      }

      *&v179 = v57;
      *(&v180 + 1) = v58;
      if (*(&v57 + 1))
      {
        v129 = sub_1005B981C(&qword_101A09290);
      }

      else
      {
        v129 = 0;
        *(&v171 + 1) = 0;
        *&v172 = 0;
      }

      *&v171 = *(&v57 + 1);
      *(&v172 + 1) = v129;
      goto LABEL_70;
    case 33:
    case 37:
      v9 = v191;
      v8 = sub_100B7694C();
      if (v9)
      {
        v10 = sub_1005B981C(&qword_101A09290);
      }

      else
      {
        v10 = 0;
LABEL_73:
        *(&v179 + 1) = 0;
        *&v180 = 0;
      }

LABEL_74:
      *&v179 = v9;
      *(&v180 + 1) = v10;
      goto LABEL_75;
    case 52:
    case 54:
      v175 = v195;
      v176 = v196;
      v177 = v197;
      v178 = v198;
      v171 = v191;
      v172 = v192;
      v173 = v193;
      v174 = v194;
      v181 = v201;
      v182 = v202;
      v179 = v199;
      v180 = v200;
      v185 = v205;
      v186 = v206;
      v183 = v203;
      v184 = v204;
      v37 = sub_100B7694C();
      type metadata accessor for CATransform3D(0);
      v39 = v38;
      *(&v189 + 1) = v38;
      v40 = swift_allocObject();
      *&v188 = v40;
      v41 = v176;
      v40[5] = v175;
      v40[6] = v41;
      v42 = v178;
      v40[7] = v177;
      v40[8] = v42;
      v43 = v172;
      v40[1] = v171;
      v40[2] = v43;
      v44 = v174;
      v40[3] = v173;
      v40[4] = v44;
      v170[3] = v39;
      v45 = swift_allocObject();
      v170[0] = v45;
      v46 = v184;
      v45[5] = v183;
      v45[6] = v46;
      v47 = v186;
      v45[7] = v185;
      v45[8] = v47;
      v48 = v180;
      v45[1] = v179;
      v45[2] = v48;
      v49 = v182;
      v45[3] = v181;
      v45[4] = v49;
      *(a2 + 24) = &type metadata for CRLLayerConcretePropertyTransition;
      *(a2 + 32) = sub_100B78DA8();
      v50 = swift_allocObject();
      *a2 = v50;
      *(v50 + 32) = 0u;
      *(v50 + 64) = 0u;
      *(v50 + 48) = 0u;
      v51 = v50 + 48;
      *(v50 + 16) = 0u;
      *(v50 + 80) = v37;
      *(v50 + 88) = sub_100B76520(v37);
      *(v50 + 96) = v52;
      sub_10002C638(&v188, v50 + 16, &unk_1019F4D00);
      v36 = v170;
      goto LABEL_71;
    case 53:
    case 55:
      v183 = v195;
      v184 = v196;
      v185 = v197;
      v186 = v198;
      v179 = v191;
      v180 = v192;
      v181 = v193;
      v182 = v194;
      v27 = sub_100B7694C();
      type metadata accessor for CATransform3D(0);
      *(&v172 + 1) = v28;
      v29 = swift_allocObject();
      *&v171 = v29;
      v30 = v184;
      v29[5] = v183;
      v29[6] = v30;
      v31 = v186;
      v29[7] = v185;
      v29[8] = v31;
      v32 = v180;
      v29[1] = v179;
      v29[2] = v32;
      v33 = v182;
      v29[3] = v181;
      v29[4] = v33;
      *(a2 + 24) = &type metadata for CRLLayerImplicitPropertyTransition;
      *(a2 + 32) = sub_100B78D54();
      v34 = swift_allocObject();
      *a2 = v34;
      swift_unknownObjectWeakInit();
      *(v34 + 24) = 0u;
      v35 = v34 + 24;
      *(v34 + 40) = 0u;
      *(v34 + 56) = v27;
      swift_unknownObjectWeakAssign();
      v36 = &v171;
      goto LABEL_76;
    case 56:
      v72 = v193;
      v73 = v196;
      v144 = v192;
      v149 = v191;
      v155 = v195;
      v164 = v194;
      v6 = sub_100B7694C();
      type metadata accessor for CGAffineTransform(0);
      v75 = v74;
      *(&v180 + 1) = v74;
      v76 = swift_allocObject();
      *&v179 = v76;
      v76[1] = v149;
      v76[2] = v144;
      v76[3] = v72;
      *(&v172 + 1) = v75;
      v77 = swift_allocObject();
      *&v171 = v77;
      v77[1] = v164;
      v77[2] = v155;
      v77[3] = v73;
LABEL_70:
      *(a2 + 24) = &type metadata for CRLLayerConcretePropertyTransition;
      *(a2 + 32) = sub_100B78DA8();
      v130 = swift_allocObject();
      *a2 = v130;
      *(v130 + 32) = 0u;
      *(v130 + 64) = 0u;
      *(v130 + 48) = 0u;
      v51 = v130 + 48;
      *(v130 + 16) = 0u;
      *(v130 + 80) = v6;
      *(v130 + 88) = sub_100B76520(v6);
      *(v130 + 96) = v131;
      sub_10002C638(&v179, v130 + 16, &unk_1019F4D00);
      v36 = &v171;
LABEL_71:
      v132 = v51;
      goto LABEL_77;
    case 57:
      v92 = v193;
      v158 = v192;
      v167 = v191;
      v8 = sub_100B7694C();
      type metadata accessor for CGAffineTransform(0);
      *(&v180 + 1) = v93;
      v94 = swift_allocObject();
      *&v179 = v94;
      v94[1] = v167;
      v94[2] = v158;
      v94[3] = v92;
      goto LABEL_75;
    case 58:
      v11 = *(&v191 + 1);
      v12 = v191;
      v13 = sub_100B7694C();
      type metadata accessor for CGPath(0);
      *(&v180 + 1) = v107;
      *&v179 = v12;
      *(&v172 + 1) = v107;
      *&v171 = v11;
LABEL_84:
      *(a2 + 24) = &type metadata for CRLLayerConcretePropertyTransition;
      *(a2 + 32) = sub_100B78DA8();
      v134 = swift_allocObject();
      *a2 = v134;
      *(v134 + 32) = 0u;
      *(v134 + 64) = 0u;
      *(v134 + 48) = 0u;
      v135 = v134 + 48;
      *(v134 + 16) = 0u;
      v136 = v134 + 16;
      *(v134 + 80) = v13;
      *(v134 + 88) = sub_100B76520(v13);
      *(v134 + 96) = v137;
      v138 = v12;
      v139 = v11;
      sub_10002C638(&v179, v136, &unk_1019F4D00);
      sub_10002C638(&v171, v135, &unk_1019F4D00);

      goto LABEL_78;
    case 59:
      v108 = v191;
      v8 = sub_100B7694C();
      type metadata accessor for CGPath(0);
      *(&v180 + 1) = v109;
      *&v179 = v108;
LABEL_75:
      *(a2 + 24) = &type metadata for CRLLayerImplicitPropertyTransition;
      *(a2 + 32) = sub_100B78D54();
      v133 = swift_allocObject();
      *a2 = v133;
      swift_unknownObjectWeakInit();
      *(v133 + 24) = 0u;
      v35 = v133 + 24;
      *(v133 + 40) = 0u;
      *(v133 + 56) = v8;
      swift_unknownObjectWeakAssign();
      v36 = &v179;
LABEL_76:
      v132 = v35;
LABEL_77:
      sub_10002C638(v36, v132, &unk_1019F4D00);
      goto LABEL_78;
    case 74:
      v110 = v191;
      v111 = v192;
      v112 = v193;
      v113 = *(&v193 + 1);
      v114 = v194;
      *(a2 + 24) = &type metadata for CRLLayerTransformByScaleFactorTransition;
      *(a2 + 32) = sub_100B78D00();
      v115 = swift_allocObject();
      *a2 = v115;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v115 + 24) = v110;
      *(v115 + 40) = v111;
      *(v115 + 56) = v112;
      swift_unknownObjectWeakAssign();

      *(v115 + 72) = v114;
      goto LABEL_78;
    case 75:
      v185 = v199;
      v186 = v200;
      v187 = v201;
      v181 = v195;
      v182 = v196;
      v183 = v197;
      v184 = v198;
      v179 = v193;
      v180 = v194;
      *(a2 + 24) = &type metadata for CRLLayerTransformBy2DTranslationTransition;
      *(a2 + 32) = sub_100B78CAC();
      v95 = swift_allocObject();
      *a2 = v95;
      v159 = v192;
      v168 = v191;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v95 + 40) = v159;
      *(v95 + 24) = v168;
      v96 = v183;
      *(v95 + 136) = v184;
      v97 = v186;
      *(v95 + 152) = v185;
      *(v95 + 168) = v97;
      v98 = v179;
      *(v95 + 72) = v180;
      v99 = v182;
      *(v95 + 88) = v181;
      *(v95 + 104) = v99;
      *(v95 + 184) = v187;
      *(v95 + 120) = v96;
      *(v95 + 56) = v98;
      goto LABEL_78;
    case 76:
      v185 = v201;
      v186 = v202;
      v187 = v203;
      v181 = v197;
      v182 = v198;
      v183 = v199;
      v184 = v200;
      v179 = v195;
      v180 = v196;
      *(a2 + 24) = &type metadata for CRLLayerTransformByNaturalRectTransition;
      *(a2 + 32) = sub_100B78C58();
      v102 = swift_allocObject();
      *a2 = v102;
      v160 = v193;
      v169 = v191;
      v146 = v194;
      v151 = v192;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v102 + 40) = v151;
      *(v102 + 24) = v169;
      *(v102 + 72) = v146;
      *(v102 + 56) = v160;
      v103 = v183;
      *(v102 + 168) = v184;
      v104 = v186;
      *(v102 + 184) = v185;
      *(v102 + 200) = v104;
      *(v102 + 216) = v187;
      v105 = v179;
      *(v102 + 104) = v180;
      v106 = v182;
      *(v102 + 120) = v181;
      *(v102 + 136) = v106;
      *(v102 + 152) = v103;
      *(v102 + 88) = v105;
      goto LABEL_78;
    case 77:
      v145 = v192;
      v150 = v191;
      v156 = v194;
      v165 = v193;
      objc_opt_self();
      v78 = swift_dynamicCastObjCClass();
      if (!v78)
      {
        goto LABEL_62;
      }

      v79 = v78;
      v80 = a1;
      v81 = [v79 canvasView];
      if (!v81)
      {
        goto LABEL_86;
      }

      v82 = v81;
      v83 = [v81 enclosingScrollView];
      if (!v83)
      {
        goto LABEL_85;
      }

      v190 = 0;
      v188 = 0u;
      v189 = 0u;
      v173 = 0u;
      v174 = 0u;
      *&v175 = 0;
      *(&v175 + 1) = 0xD00000000000001BLL;
      *&v176 = 0x80000001015785A0;
      *&v171 = v82;
      *&v172 = v83;
      v84 = v82;
      *(&v171 + 1) = [v84 canvasLayer];
      v85 = [v84 canvasLayer];

      v86 = [v85 controller];
      if (v86)
      {

        sub_100687CF4(v208);
        *(&v172 + 1) = v86;
        sub_10002C638(&v188, &v173, &qword_101A07158);
        v181 = v173;
        v182 = v174;
        v183 = v175;
        *&v184 = v176;
        v179 = v171;
        v180 = v172;
        *(a2 + 24) = &type metadata for CRLCanvasLayerTransformByUnscaledRectTransition;
        *(a2 + 32) = sub_100B78C04();
        v87 = swift_allocObject();
        *a2 = v87;
        v88 = v182;
        *(v87 + 48) = v181;
        *(v87 + 64) = v88;
        *(v87 + 80) = v183;
        *(v87 + 96) = v184;
        v89 = v180;
        *(v87 + 16) = v179;
        *(v87 + 32) = v89;
        *(v87 + 120) = v145;
        *(v87 + 104) = v150;
        *(v87 + 136) = 0;
        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_91;
    case 78:
      v156 = v192;
      v165 = v191;
      objc_opt_self();
      v116 = swift_dynamicCastObjCClass();
      if (v116)
      {
        v117 = v116;
        v80 = a1;
        v118 = [v117 canvasView];
        if (v118)
        {
          v82 = v118;
          v119 = [v118 enclosingScrollView];
          if (v119)
          {
            v190 = 0;
            v188 = 0u;
            v189 = 0u;
            v173 = 0u;
            v174 = 0u;
            *&v175 = 0;
            *(&v175 + 1) = 0xD00000000000001BLL;
            *&v176 = 0x80000001015785A0;
            *&v171 = v82;
            *&v172 = v119;
            v120 = v82;
            *(&v171 + 1) = [v120 canvasLayer];
            v121 = [v120 canvasLayer];

            v122 = [v121 controller];
            if (v122)
            {

              sub_100687CF4(v208);
              *(&v172 + 1) = v122;
              sub_10002C638(&v188, &v173, &qword_101A07158);
              v181 = v173;
              v182 = v174;
              v183 = v175;
              *&v184 = v176;
              v179 = v171;
              v180 = v172;
              *(a2 + 24) = &type metadata for CRLCanvasLayerTransformByUnscaledRectTransition;
              *(a2 + 32) = sub_100B78C04();
              v87 = swift_allocObject();
              *a2 = v87;
              v123 = v182;
              *(v87 + 48) = v181;
              *(v87 + 64) = v123;
              *(v87 + 80) = v183;
              *(v87 + 96) = v184;
              v124 = v180;
              *(v87 + 16) = v179;
              *(v87 + 32) = v124;
              *(v87 + 104) = 0u;
              *(v87 + 120) = 0u;
              *(v87 + 136) = 1;
LABEL_58:
              *(v87 + 144) = v165;
              *(v87 + 160) = v156;
              *(v87 + 176) = 0;
            }

            else
            {
LABEL_91:
              __break(1u);
            }

            return;
          }

LABEL_85:
        }

LABEL_86:
        if (qword_1019F2208 != -1)
        {
          swift_once();
        }

        v140 = static OS_os_log.crlLayerAnimation;
        v141 = static os_log_type_t.error.getter();
        sub_100005404(v140, &_mh_execute_header, v141, "Property transition .transformByUnscaledRect could not resolve canvas and scroll view from canvas layer.", 104, 2, _swiftEmptyArrayStorage);

        goto LABEL_89;
      }

LABEL_62:
      if (qword_1019F2208 != -1)
      {
        swift_once();
      }

      v127 = static OS_os_log.crlLayerAnimation;
      v128 = static os_log_type_t.error.getter();
      sub_100005404(v127, &_mh_execute_header, v128, "Property transition .transformByUnscaledRect can only be used by canvas layer animations", 88, 2, _swiftEmptyArrayStorage);
LABEL_89:
      sub_100687CF4(v208);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      return;
    case 79:
      v143 = v192;
      v148 = v191;
      v154 = v194;
      v163 = v193;
      v181 = v197;
      v182 = v198;
      v183 = v199;
      *&v184 = v200;
      v179 = v195;
      v180 = v196;
      type metadata accessor for CRLCanvasBackgroundLayer();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_59;
      }

      sub_100687CF4(v208);
      *(a2 + 24) = &type metadata for CRLCanvasLayerTransformByUnscaledRectTransition;
      *(a2 + 32) = sub_100B78C04();
      v69 = swift_allocObject();
      *a2 = v69;
      v70 = v182;
      *(v69 + 48) = v181;
      *(v69 + 64) = v70;
      *(v69 + 80) = v183;
      *(v69 + 96) = v184;
      v71 = v180;
      *(v69 + 16) = v179;
      *(v69 + 32) = v71;
      *(v69 + 120) = v143;
      *(v69 + 104) = v148;
      *(v69 + 136) = 0;
      *(v69 + 144) = v163;
      *(v69 + 160) = v154;
      goto LABEL_38;
    case 80:
      v157 = v192;
      v166 = v191;
      v181 = v195;
      v182 = v196;
      v183 = v197;
      *&v184 = v198;
      v179 = v193;
      v180 = v194;
      type metadata accessor for CRLCanvasBackgroundLayer();
      if (!swift_dynamicCastClass())
      {
LABEL_59:
        if (qword_1019F2208 != -1)
        {
          swift_once();
        }

        v125 = static OS_os_log.crlLayerAnimation;
        v126 = static os_log_type_t.error.getter();
        sub_100005404(v125, &_mh_execute_header, v126, "Property transition .dynamicTransformByUnscaledRect can only be used by canvas background layer animations", 106, 2, _swiftEmptyArrayStorage);
        sub_100687C30(&v179);
        goto LABEL_89;
      }

      sub_100687CF4(v208);
      *(a2 + 24) = &type metadata for CRLCanvasLayerTransformByUnscaledRectTransition;
      *(a2 + 32) = sub_100B78C04();
      v69 = swift_allocObject();
      *a2 = v69;
      v90 = v182;
      *(v69 + 48) = v181;
      *(v69 + 64) = v90;
      *(v69 + 80) = v183;
      *(v69 + 96) = v184;
      v91 = v180;
      *(v69 + 16) = v179;
      *(v69 + 32) = v91;
      *(v69 + 104) = 0u;
      *(v69 + 120) = 0u;
      *(v69 + 136) = 1;
      *(v69 + 144) = v166;
      *(v69 + 160) = v157;
LABEL_38:
      *(v69 + 176) = 1;
      return;
    default:
      v179 = v191;
      v180 = v192;
      v171 = v193;
      v172 = v194;
      v62 = sub_100B7694C();
      sub_100601584(&v179, &v188);
      sub_100601584(&v171, v170);
      *(a2 + 24) = &type metadata for CRLLayerConcretePropertyTransition;
      *(a2 + 32) = sub_100B78DA8();
      v63 = swift_allocObject();
      *a2 = v63;
      *(v63 + 32) = 0u;
      *(v63 + 64) = 0u;
      *(v63 + 48) = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 80) = v62;
      *(v63 + 88) = sub_100B76520(v62);
      *(v63 + 96) = v64;
      sub_10002C638(&v188, v63 + 16, &unk_1019F4D00);
      sub_10002C638(v170, v63 + 48, &unk_1019F4D00);
      sub_1005E09AC(&v171);
LABEL_21:
      sub_1005E09AC(&v179);
LABEL_78:
      sub_100687CF4(v208);
      return;
  }
}

uint64_t sub_100B78A08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100B76520(*a1);
  v5 = v4;
  if (v3 == sub_100B76520(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100B78A90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100B76520(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B78AF4()
{
  sub_100B76520(*v0);
  String.hash(into:)();
}

Swift::Int sub_100B78B48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100B76520(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B78BA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100B7AD24();
  *a1 = result;
  return result;
}

uint64_t sub_100B78BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100B76520(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100B78C04()
{
  result = qword_101A12CD8;
  if (!qword_101A12CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CD8);
  }

  return result;
}

unint64_t sub_100B78C58()
{
  result = qword_101A12CE0;
  if (!qword_101A12CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CE0);
  }

  return result;
}

unint64_t sub_100B78CAC()
{
  result = qword_101A12CE8;
  if (!qword_101A12CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CE8);
  }

  return result;
}

unint64_t sub_100B78D00()
{
  result = qword_101A12CF0;
  if (!qword_101A12CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CF0);
  }

  return result;
}

unint64_t sub_100B78D54()
{
  result = qword_101A12CF8;
  if (!qword_101A12CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12CF8);
  }

  return result;
}

unint64_t sub_100B78DA8()
{
  result = qword_101A12D00;
  if (!qword_101A12D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12D00);
  }

  return result;
}

BOOL sub_100B78DFC(uint64_t a1, uint64_t a2)
{
  sub_100601584(a1, &v13);
  if (!v14)
  {
    v7 = &v13;
LABEL_8:
    sub_1005E09AC(v7);
    sub_100601584(a1, &v15);
    sub_1005B981C(&unk_1019F4D00);
    Optional._bridgeToObjectiveC()();
    sub_1005E09AC(&v15);
    swift_unknownObjectRelease();
    return !*(a1 + 24) && !*(a2 + 24);
  }

  sub_10000BF3C(&v13, &v15);
  sub_100601584(a2, &v11);
  if (!v12)
  {
    sub_100005070(&v15);
    v7 = &v11;
    goto LABEL_8;
  }

  sub_10000BF3C(&v11, &v13);
  sub_100064288(&v15, &v11);
  sub_100006370(0, &qword_1019F54D0);
  if (swift_dynamicCast())
  {
    sub_100064288(&v13, &v11);
    if (swift_dynamicCast())
    {
      v4 = v10;
      v5 = [v10 isEqual:v4];

      sub_100005070(&v13);
      sub_100005070(&v15);
      return v5;
    }
  }

  sub_100020E58(&v15, v16);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100020E58(&v13, v14);
  v9 = _bridgeAnythingToObjectiveC<A>(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100005070(&v13);
  sub_100005070(&v15);
  return v8 == v9;
}

uint64_t sub_100B79004(uint64_t a1, uint64_t a2)
{
  sub_1006C121C(a1, &v130);
  switch(v138)
  {
    case 1:
      v116 = v130;
      sub_1006C121C(a2, &rect2);
      if (v129 == 1)
      {
        goto LABEL_40;
      }

      goto LABEL_98;
    case 2:
      y = v130.origin.y;
      x = v130.origin.x;
      height = v130.size.height;
      width = v130.size.width;
      v14 = v131.origin.y;
      v13 = v131.origin.x;
      v16 = v131.size.height;
      v15 = v131.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 2)
      {
        goto LABEL_160;
      }

      goto LABEL_174;
    case 3:
      v22 = v130.origin.y;
      v21 = v130.origin.x;
      v24 = v130.size.height;
      v23 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 3)
      {
        goto LABEL_220;
      }

      goto LABEL_174;
    case 4:
      v18 = v130.origin.y;
      v17 = v130.origin.x;
      v19 = v130.size.height;
      v20 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 4)
      {
        goto LABEL_187;
      }

      goto LABEL_174;
    case 5:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 5)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 6:
      v48 = *(&v130.origin.x + 1);
      v47 = *&v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 6)
      {
        goto LABEL_146;
      }

      goto LABEL_174;
    case 7:
      v40 = *&v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 7)
      {
        goto LABEL_166;
      }

      goto LABEL_174;
    case 8:
      x_low = LOBYTE(v130.origin.x);
      v39 = BYTE1(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 == 8)
      {
        goto LABEL_185;
      }

      goto LABEL_174;
    case 9:
      v37 = LOBYTE(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 == 9)
      {
        goto LABEL_153;
      }

      goto LABEL_174;
    case 10:
      x_low = LOBYTE(v130.origin.x);
      v39 = BYTE1(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 == 10)
      {
        goto LABEL_185;
      }

      goto LABEL_174;
    case 11:
      v37 = LOBYTE(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 == 11)
      {
        goto LABEL_153;
      }

      goto LABEL_174;
    case 12:
      x_low = LOBYTE(v130.origin.x);
      v39 = BYTE1(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 == 12)
      {
        goto LABEL_185;
      }

      goto LABEL_174;
    case 13:
      v37 = LOBYTE(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 == 13)
      {
        goto LABEL_153;
      }

      goto LABEL_174;
    case 14:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 14)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 15:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 15)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 16:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 16)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 17:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 17)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 18:
      v35 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 18)
      {
        goto LABEL_172;
      }

      goto LABEL_168;
    case 19:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 19)
      {
        goto LABEL_178;
      }

      goto LABEL_173;
    case 20:
      v35 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 20)
      {
        goto LABEL_172;
      }

      goto LABEL_168;
    case 21:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 21)
      {
        goto LABEL_178;
      }

      goto LABEL_173;
    case 22:
      v48 = *(&v130.origin.x + 1);
      v47 = *&v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 22)
      {
        goto LABEL_174;
      }

LABEL_146:
      LOBYTE(v27) = v48 == *(&rect2.origin.x + 1) && v47 == *&rect2.origin.x;
      return LOBYTE(v27) & 1;
    case 23:
      v40 = *&v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 23)
      {
        goto LABEL_174;
      }

LABEL_166:
      LOBYTE(v27) = v40 == *&rect2.origin.x;
      return LOBYTE(v27) & 1;
    case 24:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 24)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 25:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 25)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 26:
      v18 = v130.origin.y;
      v17 = v130.origin.x;
      v19 = v130.size.height;
      v20 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 26)
      {
        goto LABEL_187;
      }

      goto LABEL_174;
    case 27:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 27)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 28:
      v35 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 28)
      {
        goto LABEL_168;
      }

      goto LABEL_172;
    case 29:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 29)
      {
        goto LABEL_178;
      }

      goto LABEL_173;
    case 30:
      v35 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 30)
      {
        goto LABEL_172;
      }

      v36 = rect2.origin.x;
      v49 = rect2.origin.y;
      if (v33 == 0.0)
      {
        if (*&rect2.origin.x)
        {
          goto LABEL_229;
        }
      }

      else
      {
        if (!*&rect2.origin.x)
        {
          goto LABEL_235;
        }

        type metadata accessor for CGPath(0);
        sub_100B7A9E4(&qword_101A12D10, type metadata accessor for CGPath);
        v50 = *&v36;
        v51 = static _CFObject.== infix(_:_:)();

        if ((v51 & 1) == 0)
        {
          goto LABEL_171;
        }
      }

      if (v35 == 0.0)
      {
        goto LABEL_260;
      }

      if (v49 != 0.0)
      {
        type metadata accessor for CGPath(0);
        v74 = &qword_101A12D10;
        v75 = type metadata accessor for CGPath;
        goto LABEL_233;
      }

      goto LABEL_254;
    case 31:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 31)
      {
        goto LABEL_173;
      }

      v35 = rect2.origin.x;
      if (v33 == 0.0)
      {
        goto LABEL_182;
      }

      if (!*&rect2.origin.x)
      {
        goto LABEL_236;
      }

      type metadata accessor for CGPath(0);
      v41 = &qword_101A12D10;
      v42 = type metadata accessor for CGPath;
      goto LABEL_181;
    case 32:
      v28 = v130.origin.y;
      v29 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 32)
      {
        goto LABEL_141;
      }

      goto LABEL_42;
    case 33:
      v28 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 33)
      {
        goto LABEL_60;
      }

      goto LABEL_142;
    case 34:
      v116 = v130;
      v111 = v131;
      sub_1006C121C(a2, &rect2);
      if (v129 == 34)
      {
        goto LABEL_49;
      }

      goto LABEL_3;
    case 35:
      v116 = v130;
      sub_1006C121C(a2, &rect2);
      if (v129 != 35)
      {
        goto LABEL_98;
      }

LABEL_40:
      v111 = rect2;
      LOBYTE(v27) = sub_100B78DFC(&v116, &v111);
      goto LABEL_240;
    case 36:
      v28 = v130.origin.y;
      v29 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 36)
      {
LABEL_141:

LABEL_142:

        goto LABEL_174;
      }

LABEL_42:
      v30 = rect2.origin.x;
      v27 = rect2.origin.y;
      if (v29 == 0.0)
      {
        v31 = 0;
        rect2.size.width = 0.0;
        rect2.origin.y = 0.0;
      }

      else
      {
        v31 = sub_1005B981C(&qword_101A09290);
      }

      rect2.origin.x = v29;
      *&rect2.size.height = v31;
      if (v30 == 0.0)
      {
        v77 = 0;
        v116.size.width = 0.0;
        v116.origin.y = 0.0;
      }

      else
      {
        v77 = sub_1005B981C(&qword_101A09290);
      }

      v116.origin.x = v30;
      *&v116.size.height = v77;
      v78 = sub_100B78DFC(&rect2, &v116);
      sub_1005E09AC(&v116);
      sub_1005E09AC(&rect2);
      if (!v78)
      {

        goto LABEL_175;
      }

      if (v28 == 0.0)
      {
LABEL_247:
        v32 = 0;
        rect2.size.width = 0.0;
        rect2.origin.y = 0.0;
      }

      else
      {
LABEL_61:
        v32 = sub_1005B981C(&qword_101A09290);
      }

      rect2.origin.x = v28;
      *&rect2.size.height = v32;
      if (v27 == 0.0)
      {
        v79 = 0;
        v116.size.width = 0.0;
        v116.origin.y = 0.0;
      }

      else
      {
        v79 = sub_1005B981C(&qword_101A09290);
      }

      v116.origin.x = v27;
      *&v116.size.height = v79;
      LOBYTE(v27) = sub_100B78DFC(&rect2, &v116);
      sub_1005E09AC(&v116);
      sub_1005E09AC(&rect2);
      return LOBYTE(v27) & 1;
    case 37:
      v28 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 37)
      {
        goto LABEL_142;
      }

LABEL_60:
      v27 = rect2.origin.x;
      if (v28 != 0.0)
      {
        goto LABEL_61;
      }

      goto LABEL_247;
    case 38:
      x_low = LOBYTE(v130.origin.x);
      v39 = BYTE1(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 != 38)
      {
        goto LABEL_174;
      }

LABEL_185:
      LOBYTE(v27) = (x_low ^ LOBYTE(rect2.origin.x) | v39 ^ BYTE1(rect2.origin.x)) ^ 1;
      return LOBYTE(v27) & 1;
    case 39:
      v37 = LOBYTE(v130.origin.x);
      sub_1006C121C(a2, &rect2);
      if (v129 != 39)
      {
        goto LABEL_174;
      }

LABEL_153:
      LOBYTE(v27) = v37 ^ LOBYTE(rect2.origin.x) ^ 1;
      return LOBYTE(v27) & 1;
    case 40:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 40)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 41:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 41)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 42:
      y = v130.origin.y;
      x = v130.origin.x;
      height = v130.size.height;
      width = v130.size.width;
      v14 = v131.origin.y;
      v13 = v131.origin.x;
      v16 = v131.size.height;
      v15 = v131.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 42)
      {
        goto LABEL_160;
      }

      goto LABEL_174;
    case 43:
      v22 = v130.origin.y;
      v21 = v130.origin.x;
      v24 = v130.size.height;
      v23 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 43)
      {
        goto LABEL_220;
      }

      goto LABEL_174;
    case 44:
      v18 = v130.origin.y;
      v17 = v130.origin.x;
      v19 = v130.size.height;
      v20 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 == 44)
      {
        goto LABEL_187;
      }

      goto LABEL_174;
    case 45:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 45)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 46:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 46)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 47:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 47)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 48:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 48)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 49:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 49)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 50:
      v18 = v130.origin.y;
      v17 = v130.origin.x;
      v19 = v130.size.height;
      v20 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 != 50)
      {
        goto LABEL_174;
      }

LABEL_187:
      if (v17 != rect2.origin.x || v18 != rect2.origin.y || v20 != rect2.size.width)
      {
        goto LABEL_175;
      }

      v66 = rect2.size.height;
      goto LABEL_210;
    case 51:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 51)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 52:
      v113 = v132;
      v114 = v133;
      v111 = v130;
      v112 = v131;
      v117 = v135;
      v116 = v134;
      v119 = v137;
      v118 = v136;
      sub_1006C121C(a2, &rect2);
      if (v129 == 52)
      {
        goto LABEL_203;
      }

      goto LABEL_174;
    case 53:
      v118 = v132;
      v119 = v133;
      v116 = v130;
      v117 = v131;
      sub_1006C121C(a2, &rect2);
      if (v129 == 53)
      {
        goto LABEL_201;
      }

      goto LABEL_174;
    case 54:
      v113 = v132;
      v114 = v133;
      v111 = v130;
      v112 = v131;
      v117 = v135;
      v116 = v134;
      v119 = v137;
      v118 = v136;
      sub_1006C121C(a2, &rect2);
      if (v129 != 54)
      {
        goto LABEL_174;
      }

LABEL_203:
      v99 = v123;
      v100 = v124;
      v97 = rect2;
      v98 = v122;
      v107 = v126;
      v106 = v125;
      v109 = v128;
      v108 = v127;
      v103 = v113;
      v104 = v114;
      v101 = v111;
      v102 = v112;
      if (!sub_10013A608(&v101.origin.x, &v97.origin.x, 0.0))
      {
        goto LABEL_175;
      }

      v103 = v118;
      v104 = v119;
      v101 = v116;
      v102 = v117;
      v99 = v108;
      v100 = v109;
      v97 = v106;
      v98 = v107;
      v67 = &v101;
      p_size = &v97;
      goto LABEL_205;
    case 55:
      v118 = v132;
      v119 = v133;
      v116 = v130;
      v117 = v131;
      sub_1006C121C(a2, &rect2);
      if (v129 != 55)
      {
        goto LABEL_174;
      }

LABEL_201:
      v108 = v123;
      v109 = v124;
      v106 = rect2;
      v107 = v122;
      v113 = v118;
      v114 = v119;
      v111 = v116;
      v112 = v117;
      v67 = &v111;
      p_size = &v106;
      goto LABEL_205;
    case 56:
      v111 = v130;
      v112.origin = v131.origin;
      v101.origin = v131.size;
      v101.size = v132.origin;
      v102.origin = v132.size;
      sub_1006C121C(a2, &rect2);
      if (v129 != 56)
      {
        goto LABEL_174;
      }

      v116 = rect2;
      v117.origin = v122.origin;
      v106.origin = v122.size;
      v106.size = v123.origin;
      v107.origin = v123.size;
      if (static CGAffineTransform.== infix(_:_:)())
      {
        goto LABEL_158;
      }

      goto LABEL_175;
    case 57:
      v111 = v130;
      v112.origin = v131.origin;
      sub_1006C121C(a2, &rect2);
      if (v129 != 57)
      {
        goto LABEL_174;
      }

      v116 = rect2;
      v117.origin = v122.origin;
LABEL_158:
      LOBYTE(v27) = static CGAffineTransform.== infix(_:_:)();
      return LOBYTE(v27) & 1;
    case 58:
      v34 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 58)
      {

        goto LABEL_174;
      }

      v35 = rect2.origin.x;
      v36 = rect2.origin.y;
      type metadata accessor for CGPath(0);
      sub_100B7A9E4(&qword_101A12D10, type metadata accessor for CGPath);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0)
      {

        goto LABEL_254;
      }

      LOBYTE(v27) = static _CFObject.== infix(_:_:)();

LABEL_164:
      return LOBYTE(v27) & 1;
    case 59:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 59)
      {
        goto LABEL_173;
      }

      v35 = rect2.origin.x;
      type metadata accessor for CGPath(0);
      sub_100B7A9E4(&qword_101A12D10, type metadata accessor for CGPath);
      LOBYTE(v27) = static _CFObject.== infix(_:_:)();
      goto LABEL_164;
    case 60:
      v35 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 60)
      {
        goto LABEL_168;
      }

      goto LABEL_172;
    case 61:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 61)
      {
        goto LABEL_178;
      }

      goto LABEL_173;
    case 62:
      v35 = v130.origin.y;
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 62)
      {
LABEL_172:

LABEL_173:
        goto LABEL_174;
      }

LABEL_168:
      v36 = rect2.origin.x;
      v49 = rect2.origin.y;
      if (v33 == 0.0)
      {
        if (*&rect2.origin.x)
        {
LABEL_229:

          goto LABEL_175;
        }
      }

      else
      {
        if (!*&rect2.origin.x)
        {
LABEL_235:

          goto LABEL_236;
        }

        type metadata accessor for CGColor(0);
        sub_100B7A9E4(&qword_101A12D08, type metadata accessor for CGColor);
        v50 = *&v36;
        v61 = static _CFObject.== infix(_:_:)();

        if ((v61 & 1) == 0)
        {
LABEL_171:

          goto LABEL_175;
        }
      }

      if (v35 != 0.0)
      {
        if (v49 == 0.0)
        {
LABEL_254:

          goto LABEL_255;
        }

        type metadata accessor for CGColor(0);
        v74 = &qword_101A12D08;
        v75 = type metadata accessor for CGColor;
LABEL_233:
        sub_100B7A9E4(v74, v75);
        v76 = *&v49;
        LOBYTE(v27) = static _CFObject.== infix(_:_:)();

        goto LABEL_234;
      }

LABEL_260:

      if (v49 == 0.0)
      {
        goto LABEL_262;
      }

      goto LABEL_175;
    case 63:
      v33 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 63)
      {
        goto LABEL_173;
      }

LABEL_178:
      v35 = rect2.origin.x;
      if (v33 == 0.0)
      {
LABEL_182:
        if (v35 == 0.0)
        {
          goto LABEL_262;
        }

LABEL_255:

        goto LABEL_175;
      }

      if (!*&rect2.origin.x)
      {
LABEL_236:

        goto LABEL_175;
      }

      type metadata accessor for CGColor(0);
      v41 = &qword_101A12D08;
      v42 = type metadata accessor for CGColor;
LABEL_181:
      sub_100B7A9E4(v41, v42);
      v63 = *&v35;
      LOBYTE(v27) = static _CFObject.== infix(_:_:)();

      return LOBYTE(v27) & 1;
    case 64:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 64)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 65:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 65)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 66:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 66)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 67:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 67)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 68:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 68)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 69:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 69)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 70:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 70)
      {
        goto LABEL_223;
      }

      goto LABEL_174;
    case 71:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 == 71)
      {
        goto LABEL_209;
      }

      goto LABEL_174;
    case 72:
      v7 = v130.origin.y;
      v8 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 72)
      {
        goto LABEL_174;
      }

LABEL_223:
      LOBYTE(v27) = v7 == rect2.origin.y && v8 == rect2.origin.x;
      return LOBYTE(v27) & 1;
    case 73:
      v19 = v130.origin.x;
      sub_1006C121C(a2, &rect2);
      if (v129 != 73)
      {
        goto LABEL_174;
      }

LABEL_209:
      v66 = rect2.origin.x;
LABEL_210:
      LOBYTE(v27) = v19 == v66;
      return LOBYTE(v27) & 1;
    case 74:
      origin = v130.origin;
      size = v130.size;
      v71 = LOBYTE(v131.origin.x);
      v33 = v131.origin.y;
      width_low = LOBYTE(v131.size.width);
      sub_1006C121C(a2, &rect2);
      if (v129 != 74)
      {
        goto LABEL_173;
      }

      v27 = v122.origin.y;
      if (origin.x != rect2.origin.x || origin.y != rect2.origin.y)
      {
        goto LABEL_272;
      }

      v73 = LOBYTE(v122.size.width);
      if (v71)
      {
        if ((LOBYTE(v122.origin.x) & 1) == 0)
        {
LABEL_272:

          goto LABEL_175;
        }
      }

      else if ((LOBYTE(v122.origin.x) & 1) != 0 || size.width != rect2.size.width || size.height != rect2.size.height)
      {
        goto LABEL_272;
      }

      if (v33 != 0.0)
      {
        if (!*&v122.origin.y)
        {
LABEL_234:

          return LOBYTE(v27) & 1;
        }

        sub_100006370(0, &qword_1019FFFF0);
        v80 = *&v33;
        v81 = static NSObject.== infix(_:_:)();

        if (v81)
        {
          goto LABEL_275;
        }

LABEL_175:
        LOBYTE(v27) = 0;
        return LOBYTE(v27) & 1;
      }

      if (*&v122.origin.y)
      {

        goto LABEL_175;
      }

LABEL_275:
      LOBYTE(v27) = v73 == 2 && width_low == 2;
      if (width_low != 2 && v73 != 2)
      {
        LOBYTE(v27) = v73 ^ width_low ^ 1;
      }

      return LOBYTE(v27) & 1;
    case 75:
      v89 = v130.size;
      v92.origin = v130.origin;
      v119 = v134;
      v120 = LOBYTE(v135.origin.x);
      v117 = v132;
      v118 = v133;
      v116 = v131;
      sub_1006C121C(a2, &rect2);
      if (v129 != 75)
      {
        goto LABEL_174;
      }

      v114 = v125;
      v115 = LOBYTE(v126.origin.x);
      v112 = v123;
      v113 = v124;
      v111 = v122;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v92.origin, rect2.origin), vceqq_f64(v89, rect2.size)))))
      {
        goto LABEL_110;
      }

      goto LABEL_175;
    case 76:
      v43 = v130.origin;
      v44 = v130.size;
      v45 = v131.origin;
      v46 = v131.size;
      v119 = v135;
      v120 = LOBYTE(v136.origin.x);
      v117 = v133;
      v118 = v134;
      v116 = v132;
      sub_1006C121C(a2, &rect2);
      if (v129 != 76)
      {
        goto LABEL_174;
      }

      v92.origin.x = v122.origin.x;
      v86 = v122.size.width;
      v90 = v122.origin.y;
      v83 = v122.size.height;
      v114 = v126;
      v115 = LOBYTE(v127.origin.x);
      v112 = v124;
      v113 = v125;
      v111 = v123;
      v142.origin = v43;
      v142.size = v44;
      if (!CGRectEqualToRect(v142, rect2))
      {
        goto LABEL_175;
      }

      v143.origin = v45;
      v143.size = v46;
      v146.origin.x = v92.origin.x;
      v146.size.width = v86;
      v146.origin.y = v90;
      v146.size.height = v83;
      if (!CGRectEqualToRect(v143, v146))
      {
        goto LABEL_175;
      }

LABEL_110:
      v109 = v119;
      v110 = v120;
      v107 = v117;
      v108 = v118;
      v106 = v116;
      if (sub_1006A42F0(&v106) == 1)
      {
        v104 = v114;
        v105 = v115;
        v102 = v112;
        v103 = v113;
        v101 = v111;
        if (sub_1006A42F0(&v101) != 1)
        {
          goto LABEL_175;
        }

LABEL_262:
        LOBYTE(v27) = 1;
      }

      else
      {
        v104 = v114;
        v105 = v115;
        v102 = v112;
        v103 = v113;
        v101 = v111;
        if (sub_1006A42F0(&v101) == 1)
        {
          goto LABEL_175;
        }

        v97 = v106;
        v98 = v107;
        v99 = v108;
        v100 = v109;
        v92.size = v101.origin;
        v93 = v101.size;
        v94 = v102;
        v95 = v103;
        v96 = v104;
        v67 = &v97;
        p_size = &v92.size;
LABEL_205:
        LOBYTE(v27) = sub_10013A608(&v67->origin.x, &p_size->origin.x, 0.0);
      }

      return LOBYTE(v27) & 1;
    case 77:
      y = v130.origin.y;
      x = v130.origin.x;
      height = v130.size.height;
      width = v130.size.width;
      v14 = v131.origin.y;
      v13 = v131.origin.x;
      v16 = v131.size.height;
      v15 = v131.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 != 77)
      {
        goto LABEL_174;
      }

LABEL_160:
      v92.origin.x = v122.origin.x;
      v87 = v122.size.width;
      v91 = v122.origin.y;
      v84 = v122.size.height;
      v144.origin.x = x;
      v144.origin.y = y;
      v144.size.width = width;
      v144.size.height = height;
      if (!CGRectEqualToRect(v144, rect2))
      {
        goto LABEL_175;
      }

      v53 = v13;
      v54 = v14;
      v55 = v15;
      v56 = v16;
      v57 = v92.origin.x;
      v59 = v87;
      v58 = v91;
      v60 = v84;
LABEL_221:
      LOBYTE(v27) = CGRectEqualToRect(*&v53, *&v57);
      return LOBYTE(v27) & 1;
    case 78:
      v22 = v130.origin.y;
      v21 = v130.origin.x;
      v24 = v130.size.height;
      v23 = v130.size.width;
      sub_1006C121C(a2, &rect2);
      if (v129 != 78)
      {
        goto LABEL_174;
      }

LABEL_220:
      v57 = rect2.origin.x;
      v58 = rect2.origin.y;
      v59 = rect2.size.width;
      v60 = rect2.size.height;
      v53 = v21;
      v54 = v22;
      v55 = v23;
      v56 = v24;
      goto LABEL_221;
    case 79:
      v3 = v130.origin;
      v4 = v130.size;
      v5 = v131.origin;
      v6 = v131.size;
      v117 = v133;
      v118.origin = v134.origin;
      v118.size.width = v134.size.width;
      v116 = v132;
      sub_1006C121C(a2, &rect2);
      if (v129 != 79)
      {
        goto LABEL_24;
      }

      v92.origin.x = v122.origin.x;
      v85 = v122.size.width;
      v88 = v122.origin.y;
      v82 = v122.size.height;
      v112 = v124;
      v113.origin = v125.origin;
      v113.size.width = v125.size.width;
      v111 = v123;
      v139.origin = v3;
      v139.size = v4;
      if (CGRectEqualToRect(v139, rect2))
      {
        v140.origin = v5;
        v140.size = v6;
        v145.origin.x = v92.origin.x;
        v145.size.width = v85;
        v145.origin.y = v88;
        v145.size.height = v82;
        if (CGRectEqualToRect(v140, v145))
        {
          goto LABEL_20;
        }
      }

      goto LABEL_226;
    case 80:
      v25 = v130.origin;
      v26 = v130.size;
      v117 = v132;
      v118.origin = v133.origin;
      v118.size.width = v133.size.width;
      v116 = v131;
      sub_1006C121C(a2, &rect2);
      if (v129 != 80)
      {
LABEL_24:
        sub_100687C30(&v116);
        goto LABEL_174;
      }

      v112 = v123;
      v113.origin = v124.origin;
      v113.size.width = v124.size.width;
      v111 = v122;
      v141.origin = v25;
      v141.size = v26;
      if (!CGRectEqualToRect(v141, rect2))
      {
        goto LABEL_226;
      }

LABEL_20:
      sub_100006370(0, &qword_1019F54D0);
      if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
      {
        LOBYTE(v27) = static NSObject.== infix(_:_:)();
      }

      else
      {
LABEL_226:
        LOBYTE(v27) = 0;
      }

      sub_100687C30(&v111);
      sub_100687C30(&v116);
      return LOBYTE(v27) & 1;
    default:
      v116 = v130;
      v111 = v131;
      sub_1006C121C(a2, &rect2);
      if (!v129)
      {
LABEL_49:
        v106 = rect2;
        v101 = v122;
        LOBYTE(v27) = sub_100B78DFC(&v116, &v106) && sub_100B78DFC(&v111, &v101);
        sub_1005E09AC(&v101);
        sub_1005E09AC(&v106);
LABEL_240:
        sub_1005E09AC(&v111);
        sub_1005E09AC(&v116);
        return LOBYTE(v27) & 1;
      }

LABEL_3:
      sub_1005E09AC(&v111);
LABEL_98:
      sub_1005E09AC(&v116);
LABEL_174:
      sub_100687CF4(&rect2);
      goto LABEL_175;
  }
}

uint64_t sub_100B7A9E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B7AA88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB0 && *(a1 + 257))
  {
    return (*a1 + 176);
  }

  v3 = *(a1 + 256);
  if (v3 >= 0x51)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B7AAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAF)
  {
    *(result + 256) = 0;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 176;
    if (a3 >= 0xB0)
    {
      *(result + 257) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB0)
    {
      *(result + 257) = 0;
    }

    if (a2)
    {
      *(result + 256) = -a2;
    }
  }

  return result;
}

uint64_t sub_100B7AB2C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x50)
  {
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 81;
    LOBYTE(a2) = 81;
  }

  *(result + 256) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLLayerPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLLayerPropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100B7ACD0()
{
  result = qword_101A12D18;
  if (!qword_101A12D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12D18);
  }

  return result;
}

uint64_t sub_100B7AD24()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

void sub_100B7AD78(unint64_t a1, uint64_t *a2)
{
  v99 = a2;
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  isUniquelyReferenced_nonNull_native = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_165:
    v87 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v87;
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v89 = isUniquelyReferenced_nonNull_native;
  v90 = v4;
  v8 = 0;
  v93 = a1 & 0xFFFFFFFFFFFFFF8;
  v94 = a1 & 0xC000000000000001;
  v91 = v7;
  v92 = a1;
  while (1)
  {
    if (v94)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v93 + 16))
      {
        goto LABEL_159;
      }

      v4 = *(a1 + 8 * v8 + 32);
    }

    v10 = v4;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    v11 = *((swift_isaMask & *v4) + 0xC8);
    v11();
    type metadata accessor for CRLGroupItem();
    if (swift_dynamicCastClass())
    {
      v12 = v10;
      sub_1005F36D4();
      v13 = v95;
      sub_100B7AD78();
      v95 = v13;
    }

    v14 = (v11)();
    v17 = v14;
    v18 = v15;
    v19 = v16;
    isUniquelyReferenced_nonNull_native = v16;
    v96 = v8 + 1;
    if ((v16 & 0x100) != 0)
    {
      if (!(v14 | v15) && v16 == 0)
      {
        v20 = 0xE500000000000000;
        v21 = 0x70756F7247;
      }

      else
      {
        v23 = v14 == 1 && v15 == 0;
        if (v23 && v16 == 0)
        {
          v20 = 0xE500000000000000;
          v21 = 0x6570616853;
        }

        else
        {
          v25 = v14 == 2 && v15 == 0;
          if (v25 && v16 == 0)
          {
            v21 = 0x697463656E6E6F43;
            v20 = 0xEE00656E694C6E6FLL;
          }

          else
          {
            v27 = v14 == 3 && v15 == 0;
            if (v27 && v16 == 0)
            {
              v20 = 0xE500000000000000;
              v21 = 0x6567616D49;
            }

            else
            {
              v29 = v14 == 4 && v15 == 0;
              if (v29 && v16 == 0)
              {
                v21 = 0x41724F6569766F4DLL;
                v20 = 0xEC0000006F696475;
              }

              else
              {
                v31 = v14 == 5 && v15 == 0;
                if (v31 && v16 == 0)
                {
                  v20 = 0xE400000000000000;
                  v21 = 1701603654;
                }

                else if (v14 != 6 || v15 || v16)
                {
                  if (v14 != 7 || v15 || v16)
                  {
                    if (v14 != 8 || v15 || v16)
                    {
                      v20 = 0xEA00000000006570;
                      if (v14 != 9 || v15 || v16)
                      {
                        if (v14 != 10 || v15 || v16)
                        {
                          v81 = v16 == 0;
                          v82 = v14 == 11 && v15 == 0;
                          v83 = v82;
                          v21 = v83 && v81 ? 0x656C626154 : 0x65636166727553;
                          v20 = v83 && v81 ? 0xE500000000000000 : 0xE700000000000000;
                        }

                        else
                        {
                          v20 = 0xEA00000000006574;
                          v21 = 0x6F4E796B63697453;
                        }
                      }

                      else
                      {
                        v21 = 0x6168536E77617244;
                      }
                    }

                    else
                    {
                      v20 = 0xE700000000000000;
                      v21 = 0x676E6977617244;
                    }
                  }

                  else
                  {
                    v20 = 0xE800000000000000;
                    v21 = 0x7463656A624F4433;
                  }
                }

                else
                {
                  v20 = 0xE700000000000000;
                  v21 = 0x65746973626557;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v20 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E55;
    }

    v97 = 0x657079546D657469;
    v98 = 0xE800000000000000;
    v33 = v20;
    String.append(_:)(*&v21);

    v35 = v97;
    v34 = v98;
    if ((v19 & 0x100) != 0 && (v17 | v18 || isUniquelyReferenced_nonNull_native != 0))
    {
      v37 = v17 == 1 && v18 == 0;
      if (!v37 || isUniquelyReferenced_nonNull_native != 0)
      {
        v39 = v17 == 2 && v18 == 0;
        if (!v39 || isUniquelyReferenced_nonNull_native != 0)
        {
          v41 = v17 == 3 && v18 == 0;
          if (!v41 || isUniquelyReferenced_nonNull_native != 0)
          {
            v43 = v17 == 4 && v18 == 0;
            if (v43 && isUniquelyReferenced_nonNull_native == 0)
            {
              type metadata accessor for CRLMovieItem();
              v45 = swift_dynamicCastClass();
              if (v45)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_104:
    v51 = *v99;
    if (*(*v99 + 16))
    {
      v52 = sub_10000BE7C(v35, v34);
      if (v53)
      {
        v54 = *(*(v51 + 56) + 8 * v52);
        objc_opt_self();
        v55 = swift_dynamicCastObjCClass();
        if (!v55)
        {

          goto LABEL_6;
        }

        v56 = v55;
        a1 = v54;
        v4 = [v56 integerValue];
        if (__OFADD__(v4, 1))
        {
          goto LABEL_162;
        }

        v57 = [objc_allocWithZone(NSNumber) initWithInteger:v4 + 1];
        v58 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *v58;
        v97 = v59;
        v4 = sub_10000BE7C(v35, v34);
        v61 = *(v59 + 16);
        v62 = (v60 & 1) == 0;
        v63 = __OFADD__(v61, v62);
        v64 = v61 + v62;
        if (v63)
        {
          goto LABEL_163;
        }

        v65 = v60;
        if (*(v59 + 24) < v64)
        {
          sub_100A8B700(v64, isUniquelyReferenced_nonNull_native);
          v4 = sub_10000BE7C(v35, v34);
          if ((v65 & 1) != (v66 & 1))
          {
            goto LABEL_168;
          }

          goto LABEL_122;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_122:
          v76 = v97;
          if ((v65 & 1) == 0)
          {
            goto LABEL_156;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v4;
          sub_100AA5680();
          v4 = isUniquelyReferenced_nonNull_native;
          v76 = v97;
          if ((v65 & 1) == 0)
          {
LABEL_156:
            v76[(v4 >> 6) + 8] |= 1 << v4;
            v84 = (v76[6] + 16 * v4);
            *v84 = v35;
            v84[1] = v34;
            *(v76[7] + 8 * v4) = v57;
            v85 = v76[2];
            v63 = __OFADD__(v85, 1);
            v86 = v85 + 1;
            if (v63)
            {
              goto LABEL_164;
            }

            v76[2] = v86;

            goto LABEL_5;
          }
        }

        v80 = v76[7];
        isUniquelyReferenced_nonNull_native = *(v80 + 8 * v4);
        *(v80 + 8 * v4) = v57;

        goto LABEL_5;
      }
    }

    a1 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    v67 = v99;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *v67;
    v97 = v69;
    v4 = sub_10000BE7C(v35, v34);
    v71 = *(v69 + 16);
    v72 = (v70 & 1) == 0;
    v63 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v63)
    {
      goto LABEL_160;
    }

    v74 = v70;
    if (*(v69 + 24) >= v73)
    {
      if ((v68 & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = v4;
        sub_100AA5680();
        v4 = isUniquelyReferenced_nonNull_native;
        v76 = v97;
        if ((v74 & 1) == 0)
        {
LABEL_118:
          v76[(v4 >> 6) + 8] |= 1 << v4;
          v77 = (v76[6] + 16 * v4);
          *v77 = v35;
          v77[1] = v34;
          *(v76[7] + 8 * v4) = a1;
          v78 = v76[2];
          v63 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v63)
          {
            goto LABEL_161;
          }

          v76[2] = v79;
          goto LABEL_5;
        }

        goto LABEL_4;
      }
    }

    else
    {
      sub_100A8B700(v73, v68);
      v4 = sub_10000BE7C(v35, v34);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_168;
      }
    }

    v76 = v97;
    if ((v74 & 1) == 0)
    {
      goto LABEL_118;
    }

LABEL_4:
    v9 = v76[7];
    isUniquelyReferenced_nonNull_native = *(v9 + 8 * v4);
    *(v9 + 8 * v4) = a1;

LABEL_5:
    *v99 = v76;

LABEL_6:
    a1 = v92;
    ++v8;
    if (v96 == v91)
    {
      return;
    }
  }

  v46 = v45;
  v47 = v10;

  if (**(v46 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680);
    isUniquelyReferenced_nonNull_native = v89;
    CRRegister.wrappedValue.getter();
    v48 = *(isUniquelyReferenced_nonNull_native + *(v90 + 36));
    swift_endAccess();

    sub_10003D5DC(isUniquelyReferenced_nonNull_native, type metadata accessor for CRLMovieItemAssetData);
    if (v48)
    {
      v49 = 0x6F69647541;
    }

    else
    {
      v49 = 0x6569766F4DLL;
    }

    v97 = 0x657079546D657469;
    v98 = 0xE800000000000000;
    v50 = 0xE500000000000000;
    String.append(_:)(*&v49);

    v35 = v97;
    v34 = v98;
    goto LABEL_104;
  }

  __break(1u);
LABEL_168:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100B7B6A4(uint64_t a1, uint64_t *a2, void *a3)
{
  v125 = a3;
  v127 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v127);
  v126 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1005B981C(&qword_101A1F1B0);
  __chkstk_darwin(v131);
  v130 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v125 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v132 = a1;

  v14 = 0;
  v134 = a2;
  v128 = v13;
  v129 = a1 + 64;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = v132;
    v18 = *(v132 + 48);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    v21 = v140;
    (*(v20 + 16))(v140, v18 + *(v20 + 72) * v16, v19);
    v22 = *(*(v17 + 56) + 8 * v16);
    v24 = v130;
    v23 = v131;
    *(v21 + *(v131 + 48)) = v22;
    sub_10000BE14(v21, v24, &qword_101A1F1B0);
    v25 = *(v24 + *(v23 + 48));
    v26 = *(v20 + 8);
    v27 = v22;
    v28 = v26(v24, v19);
    v29 = *((swift_isaMask & *v25) + 0xC8);
    v30 = (swift_isaMask & *v25) + 200;
    v29(v28);
    type metadata accessor for CRLGroupItem();
    if (swift_dynamicCastClass())
    {
      v31 = v25;
      v32 = sub_1005F36D4();
      v33 = v133;
      sub_100B7AD78(v32, v134);
      v133 = v33;
    }

    v136 = v29;
    v137 = v25;
    v135 = v30;
    v34 = (v29)();
    v37 = v34;
    v38 = v35;
    v39 = v36;
    v40 = v36;
    if ((v36 & 0x100) != 0)
    {
      if (v34 | v35)
      {
        v43 = 0;
      }

      else
      {
        v43 = v36 == 0;
      }

      if (v43)
      {
        v41 = 0xE500000000000000;
        v42 = 0x70756F7247;
      }

      else if (v34 == 1 && v35 == 0 && v36 == 0)
      {
        v41 = 0xE500000000000000;
        v42 = 0x6570616853;
      }

      else if (v34 == 2 && v35 == 0 && v36 == 0)
      {
        v42 = 0x697463656E6E6F43;
        v41 = 0xEE00656E694C6E6FLL;
      }

      else if (v34 == 3 && v35 == 0 && v36 == 0)
      {
        v41 = 0xE500000000000000;
        v42 = 0x6567616D49;
      }

      else if (v34 == 4 && v35 == 0 && v36 == 0)
      {
        v42 = 0x41724F6569766F4DLL;
        v41 = 0xEC0000006F696475;
      }

      else if (v34 == 5 && v35 == 0 && v36 == 0)
      {
        v41 = 0xE400000000000000;
        v42 = 1701603654;
      }

      else if (v34 != 6 || v35 || v36)
      {
        if (v34 != 7 || v35 || v36)
        {
          if (v34 != 8 || v35 || v36)
          {
            v41 = 0xEA00000000006570;
            if (v34 != 9 || v35 || v36)
            {
              if (v34 != 10 || v35 || v36)
              {
                v120 = v36 == 0;
                v122 = v34 == 11 && v35 == 0;
                if (v122 && v120)
                {
                  v42 = 0x656C626154;
                }

                else
                {
                  v42 = 0x65636166727553;
                }

                if (v122 && v120)
                {
                  v41 = 0xE500000000000000;
                }

                else
                {
                  v41 = 0xE700000000000000;
                }
              }

              else
              {
                v41 = 0xEA00000000006574;
                v42 = 0x6F4E796B63697453;
              }
            }

            else
            {
              v42 = 0x6168536E77617244;
            }
          }

          else
          {
            v41 = 0xE700000000000000;
            v42 = 0x676E6977617244;
          }
        }

        else
        {
          v41 = 0xE800000000000000;
          v42 = 0x7463656A624F4433;
        }
      }

      else
      {
        v41 = 0xE700000000000000;
        v42 = 0x65746973626557;
      }
    }

    else
    {
      v41 = 0xE700000000000000;
      v42 = 0x6E776F6E6B6E55;
    }

    v138 = 0x657079546D657469;
    v139 = 0xE800000000000000;
    v54 = v41;
    String.append(_:)(*&v42);

    v55 = v138;
    v56 = v139;
    if ((v39 & 0x100) == 0 || (!(v37 | v38) ? (v57 = v40 == 0) : (v57 = 0), v57 || (v37 == 1 ? (v58 = v38 == 0) : (v58 = 0), v58 ? (v59 = v40 == 0) : (v59 = 0), v59 || (v37 == 2 ? (v60 = v38 == 0) : (v60 = 0), v60 ? (v61 = v40 == 0) : (v61 = 0), v61 || (v37 == 3 ? (v62 = v38 == 0) : (v62 = 0), v62 ? (v63 = v40 == 0) : (v63 = 0), v63 || (v37 == 4 ? (v64 = v38 == 0) : (v64 = 0), v64 ? (v65 = v40 == 0) : (v65 = 0), !v65))))))
    {
      v66 = v134;
      v67 = v137;
    }

    else
    {
      type metadata accessor for CRLMovieItem();
      v67 = v137;
      v113 = swift_dynamicCastClass();
      v66 = v134;
      if (v113)
      {
        v114 = v113;
        v115 = v67;

        if (**(v114 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          goto LABEL_195;
        }

        swift_beginAccess();

        sub_1005B981C(&qword_101A28680);
        v116 = v126;
        CRRegister.wrappedValue.getter();
        v117 = *(v116 + *(v127 + 36));
        swift_endAccess();

        sub_10003D5DC(v116, type metadata accessor for CRLMovieItemAssetData);
        if (v117)
        {
          v118 = 0x6F69647541;
        }

        else
        {
          v118 = 0x6569766F4DLL;
        }

        v138 = 0x657079546D657469;
        v139 = 0xE800000000000000;
        v119 = 0xE500000000000000;
        String.append(_:)(*&v118);

        v55 = v138;
        v56 = v139;
      }
    }

    v68 = *v66;
    if (*(*v66 + 16) && (v69 = sub_10000BE7C(v55, v56), (v70 & 1) != 0))
    {
      v71 = *(*(v68 + 56) + 8 * v69);
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v73 = v72;
        v74 = v71;
        v75 = [v73 integerValue];
        if (__OFADD__(v75, 1))
        {
          goto LABEL_194;
        }

        v76 = [objc_allocWithZone(NSNumber) initWithInteger:v75 + 1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = *v66;
        sub_100043E54(v76, v55, v56, isUniquelyReferenced_nonNull_native);

        *v66 = v138;
      }

      else
      {
      }
    }

    else
    {
      v79 = v55;
      v80 = v67;
      v137 = [objc_allocWithZone(NSNumber) initWithInteger:1];
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v82 = v66;
      v83 = v81;
      v84 = v82;
      v138 = *v82;
      v85 = v138;
      v86 = v56;
      v87 = v79;
      v88 = v86;
      v78 = sub_10000BE7C(v79, v86);
      v90 = *(v85 + 16);
      v91 = (v89 & 1) == 0;
      v92 = __OFADD__(v90, v91);
      v93 = v90 + v91;
      if (v92)
      {
        goto LABEL_192;
      }

      v94 = v89;
      if (*(v85 + 24) >= v93)
      {
        if ((v83 & 1) == 0)
        {
          v123 = v78;
          sub_100AA5680();
          v78 = v123;
        }
      }

      else
      {
        sub_100A8B700(v93, v83);
        v78 = sub_10000BE7C(v87, v88);
        if ((v94 & 1) != (v95 & 1))
        {
          goto LABEL_196;
        }
      }

      v96 = v84;
      v97 = v138;
      v67 = v80;
      if (v94)
      {
        v98 = *(v138 + 56);
        v99 = *(v98 + 8 * v78);
        *(v98 + 8 * v78) = v137;
      }

      else
      {
        *(v138 + 8 * (v78 >> 6) + 64) |= 1 << v78;
        v100 = (v97[6] + 16 * v78);
        *v100 = v87;
        v100[1] = v88;
        *(v97[7] + 8 * v78) = v137;
        v101 = v97[2];
        v92 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v92)
        {
          goto LABEL_193;
        }

        v97[2] = v102;
      }

      *v96 = v97;
    }

    v103 = v136(v78);
    v13 = v128;
    if ((v105 & 0x100) != 0 && (v103 | v104 || v105 != 0))
    {
      v107 = v103 == 1 && v104 == 0;
      if (!v107 || v105 != 0)
      {
        v109 = v103 == 2 && v104 == 0;
        v110 = v109 && v105 == 0;
        if (!v110 && (v103 != 3 || v104 || v105) && (v103 != 4 || v104 || v105) && (v103 != 5 || v104 || v105) && (v103 != 6 || v104 || v105) && (v103 != 7 || v104 || v105) && v103 == 8 && !v104 && !v105)
        {
          type metadata accessor for CRLFreehandDrawingItem();
          if (swift_dynamicCastClass())
          {
            v111 = v67;
            v112 = v125;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }
      }
    }

    v12 &= v12 - 1;

    sub_10000CAAC(v140, &qword_101A1F1B0);
    v9 = v129;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B7C1E4(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 312) = a9;
  *(v9 + 192) = a2;
  *(v9 + 200) = a3;
  *(v9 + 184) = a1;
  *(v9 + 176) = a7;
  *(v9 + 208) = type metadata accessor for CRLBoardCRDTData(0);
  *(v9 + 216) = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  *(v9 + 224) = v10;
  *(v9 + 232) = *(v10 - 8);
  *(v9 + 240) = swift_task_alloc();
  v11 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  *(v9 + 248) = v11;
  *(v9 + 256) = *(v11 - 8);
  *(v9 + 264) = swift_task_alloc();
  sub_1005B981C(&qword_101A08DF0);
  *(v9 + 272) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v9 + 280) = v12;
  *v12 = v9;
  v12[1] = sub_100B7C3B4;

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t sub_100B7C3B4()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100B7C51C, 0, 0);
  }
}

uint64_t sub_100B7C51C()
{
  v1 = *(v0 + 176);
  v2 = sub_100043E40(_swiftEmptyArrayStorage);
  *(v0 + 128) = v2;
  v3 = v0 + 128;
  *(v0 + 136) = _swiftEmptyArrayStorage;
  v115 = (v0 + 136);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState);
  v5 = *(v4 + 16);
  v116 = (v0 + 128);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 currentUserParticipant];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 role];

      v10 = v9 == 1;
      v3 = v0 + 128;
      v11 = v10;
    }

    else
    {

      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v13 = [objc_allocWithZone(NSNumber) initWithBool:v11];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v13, 0x72656E774F7369, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v15 = [objc_allocWithZone(NSNumber) initWithBool:*(v4 + 16) != 0];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v15, 0x6465726168537369, 0xE800000000000000, v16);
  v17 = *(v4 + 16);
  if (v17)
  {
    v18 = v17;
    v19 = [v18 currentUserParticipant];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 permission];

      v3 = v0 + 128;
    }

    else
    {
      v21 = [v18 publicPermission];
    }

    v22 = v21 == 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(NSNumber) initWithBool:v22];
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v23, 0x6E4F646165527369, 0xEA0000000000796CLL, v24);
  *v3 = v2;
  v25 = *(v4 + 16);
  if (!v25)
  {
    v40 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v41 = &selRef_editAccessibilityDescription_;
    goto LABEL_80;
  }

  v26 = v25;
  v27 = [v26 currentUserParticipant];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 role];

    v30 = &selRef_editAccessibilityDescription_;
    if (v29 == 1)
    {
      v31 = *(v4 + 16);
      if (v31 && (v32 = v31, [v32 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v32, sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) != 0))
      {
        v33 = *(v3 + 40);
        v34 = [v33 participants];

        sub_100006370(0, &qword_1019F5520);
        v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v117 = v35;
        if (v35 >> 62)
        {
          v36 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v36)
        {
          v3 = 0;
          v113 = v0;
          while (1)
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v3 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v37 = *(v35 + 8 * v3 + 32);
            }

            v38 = v37;
            v39 = (v3 + 1);
            if (__OFADD__(v3, 1))
            {
              goto LABEL_64;
            }

            if ([v37 acceptanceStatus] == 1)
            {
              v30 = (v35 & 0xC000000000000001);
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v12 = &_s10Foundation9IndexPathVSHAAMc_ptr;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v0 = v113;
            }

            else
            {
            }

            ++v3;
            if (v39 == v36)
            {
              v3 = v116;
              v30 = &selRef_editAccessibilityDescription_;
              break;
            }
          }
        }

        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
        {
          v51 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v51 = _swiftEmptyArrayStorage[2];
        }
      }

      else
      {
        v51 = 0;
        v117 = 0;
      }

      v52 = [objc_allocWithZone(v12[90]) v30[391]];
      v53 = *v3;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      sub_100043E54(v52, 0xD00000000000001CLL, 0x800000010158D090, v54);

      v55 = v53;
      if (v117)
      {
        if (v117 >> 62)
        {
          v56 = _CocoaArrayWrapper.endIndex.getter();
          if (v56)
          {
LABEL_50:
            v3 = 0;
            v30 = (v117 & 0xC000000000000001);
            while (1)
            {
              if (v30)
              {
                v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v3 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_63;
                }

                v57 = *(v117 + 8 * v3 + 32);
              }

              v58 = v57;
              v59 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if ([v57 acceptanceStatus] == 2)
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v12 = &_s10Foundation9IndexPathVSHAAMc_ptr;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              else
              {
              }

              ++v3;
              if (v59 == v56)
              {
                v3 = v116;
                v30 = &selRef_editAccessibilityDescription_;
                goto LABEL_68;
              }
            }

            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            v47 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_38;
          }
        }

        else
        {
          v56 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v56)
          {
            goto LABEL_50;
          }
        }

LABEL_68:

        v55 = v53;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
        {
          v60 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v60 = _swiftEmptyArrayStorage[2];
        }
      }

      else
      {
        v60 = 0;
      }

      v61 = [objc_allocWithZone(v12[90]) v30[391]];
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v55;
      sub_100043E54(v61, 0xD000000000000015, 0x800000010158D050, v62);

      goto LABEL_73;
    }
  }

  else
  {

    v30 = &selRef_editAccessibilityDescription_;
  }

  v42 = *(v4 + 16);
  if (!v42 || (v43 = v42, [v43 copy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), v43, sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) == 0))
  {
    v47 = 0;
    goto LABEL_40;
  }

  v44 = *(v3 + 32);
  v45 = [v44 participants];

  sub_100006370(0, &qword_1019F5520);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v46 >> 62)
  {
    goto LABEL_66;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

LABEL_40:
  v48 = [objc_allocWithZone(v12[90]) v30[391]];
  v49 = *v3;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v49;
  sub_100043E54(v48, 0xD000000000000015, 0x800000010158D050, v50);
LABEL_73:
  v2 = v118;
  *v3 = v118;
  v63 = *(v0 + 272);
  v65 = *(v0 + 248);
  v64 = *(v0 + 256);
  v66 = *(v0 + 176);
  v67 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v66 + v67, v63, &qword_101A08DF0);
  v68 = (*(v64 + 48))(v63, 1, v65);
  v69 = *(v0 + 272);
  if (!v68)
  {
    v71 = *(v0 + 264);
    v72 = *(v0 + 272);
    sub_10004FDFC(v69, v71, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_10000CAAC(v72, &qword_101A08DF0);

    sub_10003D5DC(v71, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v73 = *(v0 + 152);
    if (v73 >> 62)
    {
      goto LABEL_84;
    }

    v70 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_77;
  }

  sub_10000CAAC(v69, &qword_101A08DF0);
  v70 = 0;
  while (1)
  {
    v41 = &selRef_editAccessibilityDescription_;
    v74 = __OFADD__(v70, 1);
    v75 = v70 + 1;
    if (!v74)
    {
      break;
    }

    __break(1u);
LABEL_84:
    v70 = _CocoaArrayWrapper.endIndex.getter();
LABEL_77:
  }

  v76 = [objc_allocWithZone(v12[90]) initWithInteger:v75];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v76, 0xD000000000000019, 0x800000010158D070, v77);
  v40 = v12;
LABEL_80:
  v78 = *(v0 + 232);
  v79 = *(v0 + 240);
  v80 = *(v0 + 216);
  v81 = *(v0 + 224);
  v114 = *(v0 + 312);
  v83 = *(v0 + 192);
  v82 = *(v0 + 200);
  v84 = *(v0 + 176);
  v85 = *(v0 + 184);
  v86 = [objc_allocWithZone(v40[90]) v41[391]];
  v87 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v86, 0x756F43736D657469, 0xEA0000000000746ELL, v87);
  *(v0 + 128) = v2;
  v88 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.identifier.getter();
  (*(v78 + 8))(v79, v81);
  v89 = String._bridgeToObjectiveC()();

  v90 = *(v0 + 128);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v89, 0x6F4C6D6574737973, 0xEC000000656C6163, v91);
  v92 = [objc_allocWithZone(v40[90]) initWithDouble:v85];
  v93 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v92, 0x6965486472616F62, 0xEB00000000746867, v93);
  v94 = [objc_allocWithZone(v40[90]) initWithDouble:v83];
  v95 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v94, 0x6469576472616F62, 0xEA00000000006874, v95);
  v96 = [objc_allocWithZone(v40[90]) initWithDouble:v83 * v85];
  v97 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v96, 0x6572416472616F62, 0xE900000000000061, v97);
  v98 = [objc_allocWithZone(v40[90]) initWithDouble:v82];
  v99 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v98, 0x6C61635377656976, 0xE900000000000065, v99);
  v100 = v90;
  v101 = *(v84 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v102 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FDFC(v101 + v102, v80, type metadata accessor for CRLBoardCRDTData);
  type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_1019F4850);
  CRRegister.wrappedValue.getter();
  sub_10003D5DC(v80, type metadata accessor for CRLBoardCRDTData);
  v103 = *(v0 + 144);
  static Date.timeIntervalSinceReferenceDate.getter();
  v105 = [objc_allocWithZone(v40[90]) initWithDouble:v104 - v103];
  v106 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v105, 0xD00000000000001ALL, 0x800000010158D010, v106);
  v107 = [objc_allocWithZone(v40[90]) initWithBool:v114];
  v108 = swift_isUniquelyReferenced_nonNull_native();
  sub_100043E54(v107, 0xD000000000000015, 0x800000010158D030, v108);
  *(v0 + 128) = v100;

  sub_100B7B6A4(v109, v116, v115);

  *(v0 + 296) = *(v0 + 136);
  type metadata accessor for MainActor();
  *(v0 + 304) = static MainActor.shared.getter();
  v111 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100B7D41C, v111, v110);
}

uint64_t sub_100B7D41C()
{
  v1 = *(v0 + 296);

  sub_101305B68(v1);

  return _swift_task_switch(sub_100B7D494, 0, 0);
}

uint64_t sub_100B7D494()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v1 sendEventInDomain:v2 lazily:1 eventPayload:isa];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100B7D608@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for CRLMaskInfoData()
{
  result = qword_101A12E18;
  if (!qword_101A12E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B7D728()
{
  type metadata accessor for CRLPathSourceData(319);
  if (v0 <= 0x3F)
  {
    sub_100B7D7B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B7D7B4()
{
  if (!qword_1019F5D58)
  {
    type metadata accessor for AnyCRValue();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5D58);
    }
  }
}

Swift::Int sub_100B7D840()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149B4B0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B7D8C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10149B4B0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100B7D92C()
{
  v1 = 0x797274656D6F6567;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756F5368746170;
  }
}

uint64_t sub_100B7D998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B7EC94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B7D9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B7E940();
  v5 = sub_100B7E998();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100B7DA40(uint64_t a1)
{
  v2 = sub_100B7E998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B7DA7C(uint64_t a1)
{
  v2 = sub_100B7E998();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100B7DAB8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLMaskInfoData();
  *(a2 + *(v4 + 24)) = _swiftEmptyDictionarySingleton;
  [a1 size];
  v7 = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v5, v6}];
  if (v7)
  {
    v8 = v7;
    [a1 center];
    v10 = v9;
    v12 = v11;
    [a1 position];
    v14 = sub_10011F31C(v10, v12, v13);
    v16 = v15;
    [a1 size];
    v19 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v14 size:{v16, v17, v18}];
    v20 = v8;
    sub_100C3D740(v20, a2);
    sub_101271CCC(v19, v23);

    v21 = (a2 + *(v4 + 20));
    v22 = v23[1];
    *v21 = v23[0];
    v21[1] = v22;
  }

  else
  {
    __break(1u);
  }
}

id sub_100B7DC20(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLMaskInfoData() + 20);
  v4 = (v1 + v3);
  v5 = *(v1 + v3 + 16);
  v6 = *(v1 + v3 + 20);
  v7 = *(v1 + v3 + 21);
  v8 = v4[1].u8[6];
  v9 = v4[1].u8[7];
  v10 = (a1 + v3);
  v12 = *v4;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v4, *v10)))) & 1) != 0 || v5 != v10[1].f32[0] || ((v6 ^ v10[1].u8[4]) & 1) != 0 || ((v7 ^ v10[1].u8[5]) & 1) != 0 || ((v8 ^ v10[1].u8[6]) & 1) != 0 || ((v9 ^ v10[1].u8[7]) & 1) != 0 || (sub_100B3216C(v4[1].i64[1], v10[1].i64[1]) & 1) == 0)
  {
    return [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v6 size:v7 widthValid:v8 heightValid:v9 horizontalFlip:v12.f32[0] verticalFlip:v12.f32[1] angle:{v12.f32[2], v12.f32[3], v5}];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100B7DD50(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A12ED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100B7E998();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  type metadata accessor for CRLPathSourceData(0);
  sub_100B7EEE4(&qword_101A12EE0, type metadata accessor for CRLPathSourceData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLMaskInfoData();
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v20[0] = *v10;
    v20[1] = v11;
    v12 = v10[1];
    v18 = *v10;
    v19 = v12;
    v17 = 1;
    sub_10074A4EC(v20, v16);
    sub_10074A8D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = v18;
    v16[1] = v19;
    sub_10074A710(v16);
    v15 = *(v3 + *(v9 + 24));
    v14[7] = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B7DFB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for CRLPathSourceData(0);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A12EC8);
  v23 = *(v7 - 8);
  v24 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CRLMaskInfoData();
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  sub_100020E58(a1, v13);
  sub_100B7E998();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v25);
  }

  v14 = v23;
  v15 = v12;
  LOBYTE(v27) = 0;
  sub_100B7EEE4(&qword_101A12ED0, type metadata accessor for CRLPathSourceData);
  v16 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100B7EDBC(v6, v15);
  v30 = 1;
  sub_10074A764();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = (v15 + *(v10 + 20));
  v18 = v28;
  *v17 = v27;
  v17[1] = v18;
  sub_1005B981C(&unk_101A0D960);
  v29 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v10 + 24);
  (*(v14 + 8))(v9, v16);
  *(v15 + v19) = v26;
  sub_100B7EE20(v15, v22);
  sub_100005070(v25);
  return sub_100B7EE84(v15, type metadata accessor for CRLMaskInfoData);
}

uint64_t sub_100B7E3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B7EEE4(&qword_101A12EE8, type metadata accessor for CRLMaskInfoData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B7E42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B7EEE4(&qword_101A12EE8, type metadata accessor for CRLMaskInfoData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100B7E4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B7EEE4(&qword_101A12E60, type metadata accessor for CRLMaskInfoData);
  v7 = sub_100B7EEE4(&qword_101A12EF0, type metadata accessor for CRLMaskInfoData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100B7E57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B7EEE4(&qword_101A12EE8, type metadata accessor for CRLMaskInfoData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100B7E6F0(uint64_t a1)
{
  v2 = sub_100B7EEE4(&qword_101A12EB8, type metadata accessor for CRLMaskInfoData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100B7E890()
{
  result = qword_101A12E78;
  if (!qword_101A12E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12E78);
  }

  return result;
}

unint64_t sub_100B7E8E8()
{
  result = qword_101A12E80;
  if (!qword_101A12E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12E80);
  }

  return result;
}

unint64_t sub_100B7E940()
{
  result = qword_101A12E88;
  if (!qword_101A12E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12E88);
  }

  return result;
}

unint64_t sub_100B7E998()
{
  result = qword_101A12E90;
  if (!qword_101A12E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12E90);
  }

  return result;
}

unint64_t sub_100B7E9F0()
{
  result = qword_101A12E98;
  if (!qword_101A12E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12E98);
  }

  return result;
}

unint64_t sub_100B7EA48()
{
  result = qword_101A12EA0;
  if (!qword_101A12EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12EA0);
  }

  return result;
}

unint64_t sub_100B7EAA0()
{
  result = qword_101A12EA8;
  if (!qword_101A12EA8)
  {
    sub_1005C4E5C(&qword_101A12EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12EA8);
  }

  return result;
}

uint64_t sub_100B7EB94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_100C48FE0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLMaskInfoData();
  v5 = *(v4 + 20);
  v6 = &a1[v5];
  v7 = *&a1[v5 + 16];
  v8 = &a2[v5];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*v6, *v8)))))
  {
    return 0;
  }

  if (v7 != v8[1].f32[0])
  {
    return 0;
  }

  if ((v6[1].u8[4] ^ v8[1].u8[4]))
  {
    return 0;
  }

  if ((v6[1].u8[5] ^ v8[1].u8[5]))
  {
    return 0;
  }

  if ((v6[1].u8[6] ^ v8[1].u8[6]))
  {
    return 0;
  }

  if ((v6[1].u8[7] ^ v8[1].u8[7]))
  {
    return 0;
  }

  v9 = v4;
  if ((sub_100B3216C(v6[1].i64[1], v8[1].i64[1]) & 1) == 0)
  {
    return 0;
  }

  v10 = *(v9 + 24);
  v11 = *&a1[v10];
  v12 = *&a2[v10];

  return sub_100B3216C(v11, v12);
}

uint64_t sub_100B7EC94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F5368746170 && a2 == 0xEE00617461446563;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100B7EDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLPathSourceData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B7EE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLMaskInfoData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B7EE84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B7EEE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100B7EF40()
{
  result = qword_101A12EF8;
  if (!qword_101A12EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12EF8);
  }

  return result;
}

uint64_t sub_100B7EF94()
{
  sub_1005C4E5C(&unk_1019F6B40);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100B7F058()
{
  v1 = *(*v0 + 88);
  sub_1005C4E5C(&unk_1019F6B40);
  type metadata accessor for CheckedContinuation();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100B7F114()
{
  sub_100B7F058();

  return swift_deallocClassInstance();
}

void sub_100B7F264(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = v5 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter;
  swift_beginAccess();
  *(v11 + 96) = a1;
  if (!a1)
  {
    v12 = sub_100B7F6A8(a2, a3, a4, a5);
    swift_beginAccess();
    *v11 = v12;
    [*(v11 + 104) setViewScale:v12];
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    *(v11 + 40) = a5;
    *(v11 + 48) = 0;
    swift_endAccess();
  }

  v13 = UIGraphicsGetCurrentContext();
  if (v13)
  {
    v14 = v13;
    v15 = *(v11 + 104);
    v16 = [v15 canvas];
    v17 = [v15 infos];
    [v16 setInfosToDisplay:v17];

    v18 = [v15 canvas];
    [v18 nonInteractiveLayoutIfNeeded];

    v19 = [v15 canvas];
    [v19 unscaledRectOfLayouts];
    v21 = v20;
    v23 = v22;

    if (*(v5 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_printScenes) != 1)
    {
      v31 = *v11;
LABEL_21:
      v33 = v31 * v23;
      CGContextTranslateCTM(v14, 0.0, v33);
      CGContextScaleCTM(v14, 1.0, -1.0);
      v43.origin.x = a2;
      v43.origin.y = a3;
      v43.size.width = a4;
      v43.size.height = a5;
      v34 = CGRectGetMidX(v43) - v21 * v31 * 0.5;
      v44.origin.x = a2;
      v44.origin.y = a3;
      v44.size.width = a4;
      v44.size.height = a5;
      v35 = CGRectGetMidY(v44) - v33 * 0.5;
      if (v34 != 0.0 || v35 != 0.0)
      {
        CGContextTranslateCTM(v14, v34, -v35);
      }

      v36 = *(v11 + 80);
      v42[4] = *(v11 + 64);
      v42[5] = v36;
      v37 = *(v11 + 112);
      v42[6] = *(v11 + 96);
      v42[7] = v37;
      v38 = *(v11 + 16);
      v42[0] = *v11;
      v42[1] = v38;
      v39 = *(v11 + 48);
      v42[2] = *(v11 + 32);
      v42[3] = v39;
      sub_1008BE39C(v42, v41);
      sub_100CA7914(v14);

      sub_1008BE3F8(v42);
      return;
    }

    v24 = *(v11 + 8);
    if (v24)
    {
      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if ((a1 & 0x8000000000000000) == 0 && v25 > a1)
      {
        if ((v24 & 0xC000000000000001) == 0)
        {
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
            __break(1u);
            return;
          }

          v26 = *(v24 + 8 * a1 + 32);
          goto LABEL_13;
        }

LABEL_29:

        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v26 = v40;
LABEL_13:
        v27 = *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
        v28 = *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8];
        v21 = *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16];
        v23 = *&v26[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24];

        if (*(v11 + 50) == 1 && (*(v11 + 88) & 1) == 0)
        {
          sub_100121F30(1, *(v11 + 72), *(v11 + 80), v27, v28, v21, v23);
          v21 = v29;
          v23 = v30;
        }

        v31 = 1.0;
        if ((*(v11 + 48) & 1) == 0)
        {
          v32 = *(v11 + 40) / v23;
          if (v32 >= *(v11 + 32) / v21)
          {
            v32 = *(v11 + 32) / v21;
          }

          v31 = floor(v32 * 100.0) / 100.0;
        }

        goto LABEL_21;
      }
    }
  }
}

double sub_100B7F6A8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter;
  swift_beginAccess();
  v10 = *(v9 + 104);
  v11 = [v10 canvas];
  v12 = [v10 infos];
  [v11 setInfosToDisplay:v12];

  v13 = [v10 canvas];
  [v13 nonInteractiveLayoutIfNeeded];

  v14 = [v10 canvas];
  [v14 unscaledRectOfLayouts];
  v16 = v15;
  v18 = v17;

  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Width = CGRectGetWidth(v24);
  if (v16 > 1.0)
  {
    v20 = v16;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = Width / v20;
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  Height = CGRectGetHeight(v25);
  if (v18 > 1.0)
  {
    Height = Height / v18;
  }

  if (Height >= v21)
  {
    Height = v21;
  }

  return fmin(floor(Height * 100.0) / 100.0, 1.0);
}