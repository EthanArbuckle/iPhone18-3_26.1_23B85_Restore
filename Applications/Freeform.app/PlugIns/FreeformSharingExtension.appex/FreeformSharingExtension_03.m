uint64_t sub_10005AF20()
{
  v4 = v0[63];
  v3 = v0[64];
  swift_willThrow();

  v5 = v0[62] + 1;
  if (v5 == v0[61])
  {
LABEL_6:

    v9 = v0[57];
    v10 = sub_1000633DC(v0[42]);

    v11 = v0[1];

    return v11(v10);
  }

  else
  {
    v6 = &qword_1000B44B0;
    inited = &type metadata for Any;
    while (1)
    {
      v0[62] = v5;
      v8 = v0[60];
      if (v5 >= *(v8 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      sub_100032924(v8 + 32 * v5 + 32, (v0 + 36));
      sub_100032404(0, &qword_1000B44B0);
      if (swift_dynamicCast())
      {
        break;
      }

      v5 = v0[62] + 1;
      if (v5 == v0[61])
      {
        goto LABEL_6;
      }
    }

    v6 = v0[43];
    v0[63] = v6;
    v13 = [v6 attachments];
    if (v13)
    {
      v14 = v13;
      sub_100032404(0, &qword_1000B44B8);
      v2 = sub_10007E554();
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    inited = swift_initStackObject();
    inited[1] = xmmword_1000860E0;
    v1 = v2 >> 62;
    v58 = v0 + 44;
    if (!(v2 >> 62))
    {
      v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }

LABEL_47:
    v15 = sub_10007E904();
LABEL_14:
    v16 = v0[58];
    *(inited + 7) = &type metadata for Int;
    *(inited + 8) = &protocol witness table for Int;
    *(inited + 4) = v15;
    v17 = sub_10007E614();
    sub_100069E88(v16, &_mh_execute_header, v17, "Attachment Count: %d", 20, 2, inited);
    swift_setDeallocating();
    sub_1000211F8((inited + 2));
    v18 = [v6 attributedContentText];
    if (v18)
    {
      inited = v18;
      v57 = v15;
      v19 = v0[55];
      v20 = v0[56];
      v21 = v0[54];
      v22 = [v18 string];
      v23 = sub_10007E444();
      v25 = v24;

      v0[40] = v23;
      v0[41] = v25;
      sub_10007DAD4();
      sub_1000610DC();
      v6 = sub_10007E744();
      v27 = v26;
      (*(v19 + 8))(v20, v21);

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v56 = inited;
        v59 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v1)
        {
          v61 = sub_10007E904();
        }

        else
        {
          v61 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        v60 = v2 & 0xC000000000000001;
        while (1)
        {
          v29 = v61 != v30;
          if (v61 == v30)
          {
            break;
          }

          if (v60)
          {
            v31 = sub_10007E844();
          }

          else
          {
            if (v30 >= *(v59 + 16))
            {
              goto LABEL_46;
            }

            v31 = *(v2 + 8 * v30 + 32);
          }

          v32 = v31;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_45;
          }

          v34 = v0[52];
          v33 = v0[53];
          v35 = v2;
          v36 = v0[51];
          sub_10007E054();
          v1 = sub_10007DFD4();
          v37 = v36;
          v2 = v35;
          (*(v34 + 8))(v33, v37);
          v6 = sub_10007E404();

          inited = [v32 hasItemConformingToTypeIdentifier:v6];

          ++v30;
          if (inited)
          {
            if (v57 != 1)
            {
              v29 = 0;
              inited = v56;
              goto LABEL_40;
            }

            break;
          }
        }

        v39 = v0[48];
        v38 = v0[49];
        v40 = v0[47];
        v62 = [objc_allocWithZone(CRLSEImportableItem) init];
        v41 = [v56 string];
        v42 = sub_10007E444();
        v44 = v43;

        sub_10005B740(v42, v44, v40);

        if ((*(v38 + 48))(v40, 1, v39) == 1)
        {
          sub_100023AE0(v0[47], &qword_1000B2980);
          v45 = v62;
          [v62 setAttributedText:v56];
        }

        else
        {
          v46 = v0[49];
          v47 = v0[50];
          v48 = v0[48];
          (*(v46 + 32))(v47, v0[47], v48);
          sub_10007DD04(v49);
          v51 = v50;
          v45 = v62;
          [v62 setUrl:v50];

          (*(v46 + 8))(v47, v48);
        }

        inited = v56;
        v52 = v45;
        sub_10007E534();
        if (*(v0[42] + 16) >= *(v0[42] + 24) >> 1)
        {
          sub_10007E564();
        }

        sub_10007E584();
      }

      else
      {
        v29 = 0;
      }

LABEL_40:
    }

    else
    {
      v29 = 0;
    }

    v53 = v0[57];
    sub_100032404(0, &qword_1000B44B8);
    isa = sub_10007E544().super.isa;
    v0[64] = isa;

    v0[2] = v0;
    v0[7] = v58;
    v0[3] = sub_10005A6D0;
    v55 = swift_continuation_init();
    v0[35] = sub_10001FF68(&unk_1000B44C0);
    v0[28] = _NSConcreteStackBlock;
    v0[29] = 1107296256;
    v0[30] = sub_10005B650;
    v0[31] = &unk_1000A9AD0;
    v0[32] = v55;
    [v53 createImportItems:isa skipTextAttachments:v29 completion:v0 + 28];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10005B650(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100021160((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10001FF68(&qword_1000B2BE0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100032404(0, &qword_1000B2988);
    **(*(v4 + 64) + 40) = sub_10007E554();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10005B740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_10007DD94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10007DD64();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100023AE0(v8, &qword_1000B2980);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (sub_10007DCA4())
  {
    goto LABEL_10;
  }

  sub_10007DD54();
  if (!v14)
  {
    goto LABEL_10;
  }

  if (sub_10007DCD4() == a1 && v15 == a2)
  {

    goto LABEL_12;
  }

  v17 = sub_10007EAA4();

  if (v17)
  {
LABEL_12:
    __chkstk_darwin(v18);
    *&v21[-16] = v12;
    v19 = sub_100058D0C(sub_10006442C, &v21[-32], &off_1000A72E8);
    swift_arrayDestroy();
    if (v19)
    {
      (*(v10 + 16))(a3, v12, v9);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    (*(v10 + 56))(a3, v20, 1, v9);
    return (*(v10 + 8))(v12, v9);
  }

LABEL_10:
  (*(v10 + 56))(a3, 1, 1, v9);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10005BA20(void *a1)
{
  v2 = sub_10001FF68(&qword_1000B44A8);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  v5 = a1[1];
  v10[2] = *a1;
  v10[3] = v5;
  result = sub_10007DD54();
  if (v7)
  {
    v10[0] = result;
    v10[1] = v7;
    v8 = sub_10007DEC4();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_1000610DC();
    v9 = sub_10007E774();
    sub_100023AE0(v4, &qword_1000B44A8);

    return v9 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005BB68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v179 = a3;
  v175 = a2;
  v191 = a1;
  v190 = type metadata accessor for CRLSEBoard(0);
  v176 = *(v190 - 8);
  __chkstk_darwin(v190);
  v177 = v5;
  v178 = v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for CRLSEManifestItem(0);
  v165 = *(v163 - 8);
  v6 = __chkstk_darwin(v163);
  v164 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v170 = v154 - v8;
  v9 = sub_10001FF68(&qword_1000B2208);
  __chkstk_darwin(v9 - 8);
  v174 = v154 - v10;
  v173 = type metadata accessor for CRLSEBoardIdentifier(0);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v169 = v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10001FF68(&unk_1000B4400);
  __chkstk_darwin(v12 - 8);
  v162 = v154 - v13;
  v186 = sub_10007DCC4();
  v189 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001FF68(&qword_1000B2210);
  __chkstk_darwin(v15 - 8);
  v17 = v154 - v16;
  v180 = type metadata accessor for CRLSEImportManifest(0);
  v161 = *(v180 - 8);
  v18 = __chkstk_darwin(v180);
  v166 = v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v160 = v154 - v21;
  __chkstk_darwin(v20);
  v187 = v154 - v22;
  v23 = sub_10007DEB4();
  v198 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v188 = v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v171 = v154 - v27;
  __chkstk_darwin(v26);
  v197 = v154 - v28;
  v29 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v29 - 8);
  v31 = v154 - v30;
  v32 = sub_10007DD94();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v168 = v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v184 = v154 - v37;
  v38 = __chkstk_darwin(v36);
  v194 = v154 - v39;
  v40 = __chkstk_darwin(v38);
  v196 = v154 - v41;
  v42 = __chkstk_darwin(v40);
  v195 = v154 - v43;
  __chkstk_darwin(v42);
  v45 = v154 - v44;
  v204 = 0;
  v46 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_importDirectoryURL;
  swift_beginAccess();
  v192 = v4;
  sub_100023A78(v4 + v46, v31, &qword_1000B2980);
  if ((*(v33 + 48))(v31, 1, v32) != 1)
  {
    v50 = *(v33 + 32);
    v159 = v33 + 32;
    v158 = v50;
    v50(v45, v31, v32);
    sub_100023A78(v191 + *(v190 + 24), v17, &qword_1000B2210);
    v51 = (*(v198 + 48))(v17, 1, v23);
    v183 = v23;
    v182 = v32;
    v193 = v45;
    v181 = v33;
    if (v51 == 1)
    {
      sub_100023AE0(v17, &qword_1000B2210);
      v52 = v188;
      sub_10007DEA4();
      v53 = v198;
      v54 = v197;
      v157 = *(v198 + 32);
      v157(v197, v52, v23);
      (*(v53 + 16))(v52, v54, v23);
      *&aBlock = sub_10007DE54();
      *(&aBlock + 1) = v55;
      LODWORD(v171) = enum case for URL.DirectoryHint.inferFromPath(_:);
      v56 = v189;
      v57 = *(v189 + 104);
      v58 = v185;
      v59 = v186;
      v57(v185);
      v168 = sub_1000610DC();
      v60 = v194;
      sub_10007DD74();
      v61 = *(v56 + 8);
      v61(v58, v59);

      strcpy(&aBlock, "Manifest.plist");
      HIBYTE(aBlock) = -18;
      (v57)(v58, v171, v59);
      v62 = v198;
      v63 = v183;
      v64 = v184;
      sub_10007DD84();
      v61(v58, v59);
      v65 = v182;
      v167 = *(v62 + 8);
      v167(v52, v63);
      v66 = v158;
      v158(v195, v60, v65);
      v66(v196, v64, v65);
      v67 = v62;
      v68 = v63;
      v69 = v187;
      (*(v67 + 56))(v187, 1, 1, v63);
      v70 = v191;
      v71 = (v191 + *(v190 + 20));
      v73 = *v71;
      v72 = v71[1];
      v74 = v180;
      v75 = (v69 + *(v180 + 20));
      *v75 = 0;
      v75[1] = 0;
      v76 = (v69 + v74[6]);
      *v76 = v73;
      v76[1] = v72;
      *(v69 + v74[7]) = &_swiftEmptyArrayStorage;
    }

    else
    {
      v77 = v198;
      v78 = v171;
      v157 = *(v198 + 32);
      v157(v171, v17, v23);
      v79 = *(v77 + 16);
      v80 = v197;
      v79(v197, v78, v23);
      v154[2] = v77 + 16;
      v154[1] = v79;
      v79(v188, v80, v23);
      *&aBlock = sub_10007DE54();
      *(&aBlock + 1) = v81;
      v82 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v83 = v189;
      v85 = v189 + 104;
      v84 = *(v189 + 104);
      v86 = v185;
      v87 = v186;
      v84(v185, enum case for URL.DirectoryHint.inferFromPath(_:), v186);
      v88 = sub_1000610DC();
      sub_10007DD74();
      v89 = *(v83 + 8);
      v89(v86, v87);

      strcpy(&aBlock, "Manifest.plist");
      HIBYTE(aBlock) = -18;
      v155 = v82;
      v156 = v85;
      v154[5] = v84;
      v84(v86, v82, v87);
      v90 = v184;
      v154[4] = v88;
      v91 = v194;
      sub_10007DD84();
      v189 = v83 + 8;
      v154[3] = v89;
      v89(v86, v87);
      v65 = v182;
      v68 = v183;
      v167 = *(v198 + 8);
      v154[6] = v198 + 8;
      (v167)(v188);
      v92 = v158;
      v158(v195, v91, v65);
      v93 = v196;
      v92(v196, v90, v65);
      sub_10007DC14();
      swift_allocObject();
      sub_10007DC04();
      v94 = v181;
      v95 = v168;
      (*(v181 + 16))(v168, v93, v65);
      v96 = sub_10007DDA4();
      v98 = v97;
      (*(v94 + 8))(v95, v65);
      sub_10006243C(&qword_1000B4420, type metadata accessor for CRLSEImportManifest);
      v99 = v162;
      v74 = v180;
      sub_10007DBF4();
      v100 = (v161 + 56);
      v69 = v187;
      v167(v171, v68);

      sub_100025ED8(v96, v98);
      (*v100)(v99, 0, 1, v74);
      v153 = v160;
      sub_1000643C4(v99, v160, type metadata accessor for CRLSEImportManifest);
      sub_1000643C4(v153, v69, type metadata accessor for CRLSEImportManifest);
      v70 = v191;
    }

    v101 = v174;
    sub_100023A78(v70, v174, &qword_1000B2208);
    v102 = (*(v172 + 48))(v101, 1, v173);
    if (v102 == 1)
    {
      sub_100023AE0(v101, &qword_1000B2208);
    }

    else
    {
      v103 = v101;
      v104 = v169;
      sub_1000643C4(v103, v169, type metadata accessor for CRLSEBoardIdentifier);
      sub_100023AE0(v69, &qword_1000B2210);
      v105 = v198;
      v157(v69, v104, v68);
      (*(v105 + 56))(v69, 0, 1, v68);
      v106 = (v104 + *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20));
      v108 = *v106;
      v107 = v106[1];
      v109 = (v69 + v74[5]);
      *v109 = v108;
      v109[1] = v107;
    }

    v110 = v192;
    if (v175)
    {
      v111 = v175;
      if ([v111 length] < 1)
      {
      }

      else
      {
        v112 = v170;
        sub_10007DEA4();
        v113 = v163;
        v114 = *(v163 + 24);
        v115 = v111;
        sub_10007DBB4();
        v116 = sub_10007DBA4();
        (*(*(v116 - 8) + 56))(v112 + v114, 0, 1, v116);
        (*(v181 + 56))(v112 + v113[7], 1, 1, v65);
        v117 = v113[8];
        v118 = sub_10007E084();
        (*(*(v118 - 8) + 56))(v112 + v117, 1, 1, v118);
        v119 = (v112 + v113[5]);
        *v119 = 0;
        v119[1] = 0;
        v120 = v164;
        sub_100062868(v112, v164, type metadata accessor for CRLSEManifestItem);
        v121 = v74[7];
        v122 = *(v69 + v121);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v69 + v121) = v122;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = sub_10006DF38(0, v122[2] + 1, 1, v122);
          *(v69 + v121) = v122;
        }

        v125 = v122[2];
        v124 = v122[3];
        if (v125 >= v124 >> 1)
        {
          *(v69 + v121) = sub_10006DF38(v124 > 1, v125 + 1, 1, v122);
        }

        sub_100064364(v170, type metadata accessor for CRLSEManifestItem);
        v126 = *(v69 + v121);
        *(v126 + 16) = v125 + 1;
        sub_1000643C4(v120, v126 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v125, type metadata accessor for CRLSEManifestItem);
        *(v69 + v121) = v126;
      }
    }

    v127 = [objc_allocWithZone(NSFileCoordinator) initWithFilePresenter:v110];
    sub_10007DD04(v128);
    v130 = v129;
    v131 = v178;
    sub_100062868(v70, v178, type metadata accessor for CRLSEBoard);
    v132 = ((*(v176 + 80) + 56) & ~*(v176 + 80));
    v133 = (v132 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
    v134 = swift_allocObject();
    v135 = v179;
    v134[2] = v195;
    v134[3] = v135;
    v134[4] = v110;
    v134[5] = v69;
    v134[6] = v196;
    sub_1000643C4(v131, v132 + v134, type metadata accessor for CRLSEBoard);
    *(v134 + v133) = v197;
    *(v134 + ((v133 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v204;
    v136 = swift_allocObject();
    *(v136 + 16) = sub_100062720;
    *(v136 + 24) = v134;
    v202 = sub_1000627E4;
    v203 = v136;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v200 = sub_10005F3B4;
    v201 = &unk_1000A9AA8;
    v137 = _Block_copy(&aBlock);

    v138 = v110;

    *&aBlock = 0;
    [v127 coordinateWritingItemAtURL:v130 options:0 error:&aBlock byAccessor:v137];
    _Block_release(v137);

    v139 = aBlock;
    LOBYTE(v137) = swift_isEscapingClosureAtFileLocation();

    if (v137)
    {
      __break(1u);
    }

    else
    {
      if (!v139)
      {
        v150 = *(v181 + 8);
        v151 = v182;
        v150(v193, v182);

        v49 = v204;
        goto LABEL_25;
      }

      v194 = v138;
      v132 = &type metadata for String;
      if (qword_1000B1C10 == -1)
      {
LABEL_23:
        v140 = static OS_os_log.crlSharingExtension;
        sub_10001FF68(&qword_1000B43B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000860C0;
        v142 = sub_1000588B0();
        v144 = v143;
        *(inited + 56) = v132;
        v145 = sub_10003186C();
        *(inited + 64) = v145;
        *(inited + 32) = v142;
        *(inited + 40) = v144;
        *&aBlock = v139;
        sub_100032404(0, &qword_1000B4410);
        v146 = v139;
        v147 = sub_10007E464();
        *(inited + 96) = v132;
        *(inited + 104) = v145;
        *(inited + 72) = v147;
        *(inited + 80) = v148;
        v149 = sub_10007E624();
        sub_100069E88(v140, &_mh_execute_header, v149, "Failed to write sharing extension data due to file coordination error : %{public}@ <%@>", 87, 2, inited);

        swift_setDeallocating();
        sub_10001FF68(&qword_1000B2968);
        swift_arrayDestroy();
        v150 = *(v181 + 8);
        v151 = v182;
        v150(v193, v182);
        v49 = 0;
        v204 = 0;
        v69 = v187;
        v138 = v194;
LABEL_25:

        sub_100064364(v69, type metadata accessor for CRLSEImportManifest);
        v150(v196, v151);
        v150(v195, v151);
        v167(v197, v183);
        [objc_opt_self() removeFilePresenter:v138];

        return v49;
      }
    }

    swift_once();
    goto LABEL_23;
  }

  sub_100023AE0(v31, &qword_1000B2980);
  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  v47 = static OS_os_log.crlSharingExtension;
  v48 = sub_10007E624();
  sub_100069E88(v47, &_mh_execute_header, v48, "Unable to resolve import directory URL", 38, 2, &_swiftEmptyArrayStorage);
  [objc_opt_self() removeFilePresenter:v192];
  return 0;
}

uint64_t sub_10005D6B4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v261 = a8;
  v265 = a7;
  v267 = a6;
  v305 = a5;
  v295 = a3;
  v11 = sub_10007DCC4();
  v256 = *(v11 - 8);
  v257 = v11;
  __chkstk_darwin(v11);
  v255 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v262);
  v263 = &v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001FF68(&qword_1000B2A38);
  __chkstk_darwin(v14 - 8);
  v260 = &v252 - v15;
  v16 = sub_10001FF68(&qword_1000B2208);
  __chkstk_darwin(v16 - 8);
  v264 = &v252 - v17;
  v306 = sub_10007E084();
  v311 = *(v306 - 8);
  __chkstk_darwin(v306);
  v273 = &v252 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10001FF68(&unk_1000B4440);
  __chkstk_darwin(v19 - 8);
  v21 = &v252 - v20;
  v22 = sub_10001FF68(&qword_1000B2980);
  v23 = __chkstk_darwin(v22 - 8);
  v259 = &v252 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v293 = &v252 - v25;
  v26 = sub_10001FF68(&qword_1000B3D38);
  __chkstk_darwin(v26 - 8);
  v284 = &v252 - v27;
  v28 = type metadata accessor for CRLSEManifestItem(0);
  v291 = *(v28 - 8);
  v292 = v28;
  v29 = __chkstk_darwin(v28);
  v304 = &v252 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v303 = &v252 - v31;
  v294 = type metadata accessor for CRLSEImportManifest(0);
  __chkstk_darwin(v294);
  v269 = &v252 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10007DD94();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v258 = &v252 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v252 - v38;
  v40 = __chkstk_darwin(v37);
  v266 = &v252 - v41;
  v42 = __chkstk_darwin(v40);
  v272 = &v252 - v43;
  v44 = __chkstk_darwin(v42);
  v275 = &v252 - v45;
  v46 = __chkstk_darwin(v44);
  v281 = &v252 - v47;
  v48 = __chkstk_darwin(v46);
  v282 = &v252 - v49;
  v50 = __chkstk_darwin(v48);
  v283 = &v252 - v51;
  v52 = __chkstk_darwin(v50);
  v301 = &v252 - v53;
  __chkstk_darwin(v52);
  v55 = &v252 - v54;
  v278 = objc_opt_self();
  v56 = [v278 defaultManager];
  v57 = *(v34 + 16);
  v279 = a2;
  v285 = v57;
  v286 = v34 + 16;
  v57(v55, a2, v33);
  sub_10007DD04(v58);
  v60 = v59;
  v268 = v34;
  v61 = *(v34 + 8);
  v280 = v55;
  v62 = v33;
  v296 = v61;
  v297 = v34 + 8;
  v61(v55, v33);
  v317[0] = 0;
  LODWORD(v34) = [v56 createDirectoryAtURL:v60 withIntermediateDirectories:1 attributes:0 error:v317];

  v63 = v317[0];
  if (!v34)
  {
    v190 = v317[0];
    v290 = sub_10007DC84();

    swift_willThrow();
    goto LABEL_84;
  }

  if (v295 >> 62)
  {
    v64 = sub_10007E904();
  }

  else
  {
    v64 = *((v295 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v303;
  v300 = v33;
  v253 = v39;
  if (!v64)
  {
    v191 = v63;
    v290 = 0;
    v69 = v33;
LABEL_65:
    v192 = v69;
    sub_10007DC54();
    swift_allocObject();
    sub_10007DC44();
    sub_10007DC24();
    v193 = v269;
    sub_100062868(v305, v269, type metadata accessor for CRLSEImportManifest);
    sub_10006243C(&qword_1000B4450, type metadata accessor for CRLSEImportManifest);
    v194 = v290;
    v69 = sub_10007DC34();
    v64 = v195;
    sub_100064364(v193, type metadata accessor for CRLSEImportManifest);
    v290 = v194;
    if (v194)
    {
      goto LABEL_69;
    }

    v196 = v266;
    v285(v266, v267, v192);
    v197 = v290;
    sub_10007DDE4();
    v290 = v197;
    if (v197)
    {
      v296(v196, v192);
LABEL_68:
      sub_100025ED8(v69, v64);
LABEL_69:

LABEL_84:
      if (qword_1000B1C10 != -1)
      {
        goto LABEL_92;
      }

      goto LABEL_85;
    }

    v296(v196, v192);
    v199 = v264;
    v198 = v265;
    sub_100023A78(v265, v264, &qword_1000B2208);
    v200 = type metadata accessor for CRLSEBoardIdentifier(0);
    if ((*(*(v200 - 8) + 48))(v199, 1, v200) == 1)
    {
      sub_100023AE0(v199, &qword_1000B2208);
      v201 = v198;
      v202 = sub_10005FD84();
      v203 = a4;
      v204 = sub_100064120(v202);

      v205 = sub_10001FF68(&qword_1000B2A20);
      v206 = v263;
      v207 = &v263[*(v205 + 48)];
      v208 = *(v205 + 64);
      v209 = sub_10007DEB4();
      (*(*(v209 - 8) + 16))(v206, v261, v209);
      v210 = (v201 + *(type metadata accessor for CRLSEBoard(0) + 20));
      v211 = v210[1];
      *v207 = *v210;
      *(v207 + 1) = v211;

      sub_10007DE34();
      v212 = sub_10007DE44();
      (*(*(v212 - 8) + 56))(v206 + v208, 0, 1, v212);
      swift_storeEnumTagMultiPayload();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v317[0] = v204;
      v214 = v260;
      sub_100061E90(v206, isUniquelyReferenced_nonNull_native, v260);
      sub_100023AE0(v214, &qword_1000B2A38);
      sub_10001FF68(&qword_1000B4458);
      sub_1000642B0();
      v215 = v290;
      v216 = sub_10007DC34();
      v218 = v217;

      v290 = v215;
      if (v215)
      {
        goto LABEL_68;
      }

      v219 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_containerURL;
      swift_beginAccess();
      v220 = v203 + v219;
      v221 = v259;
      sub_100023A78(v220, v259, &qword_1000B2980);
      v222 = v268;
      v223 = v300;
      if (!(*(v268 + 48))(v221, 1, v300))
      {
        v285(v280, v221, v223);
        sub_100023AE0(v221, &qword_1000B2980);
        v312 = 0xD000000000000013;
        v313 = 0x800000010008E060;
        v244 = v256;
        v245 = *(v256 + 104);
        v310 = v218;
        v311 = v216;
        v246 = v255;
        v247 = v257;
        v245(v255, enum case for URL.DirectoryHint.inferFromPath(_:), v257);
        sub_1000610DC();
        v248 = v280;
        sub_10007DD74();
        v249 = v247;
        v21 = v310;
        (*(v244 + 8))(v246, v249);
        a4 = v296;
        v296(v248, v223);
        v250 = v253;
        (*(v222 + 32))(v253, v258, v223);
        v251 = v290;
        sub_10007DDE4();
        v290 = v251;
        v70 = v250;
        v71 = v223;
        if (v251)
        {
          a4(v250, v223);
          sub_100025ED8(v311, v21);
          goto LABEL_68;
        }

LABEL_90:
        a4(v70, v71);
        sub_100025ED8(v311, v21);
        sub_100025ED8(v69, v64);

LABEL_79:
        v232 = 1;
        goto LABEL_86;
      }

      sub_100025ED8(v216, v218);
      sub_100025ED8(v69, v64);

      v224 = &qword_1000B2980;
      v225 = v221;
    }

    else
    {
      sub_100025ED8(v69, v64);

      v224 = &qword_1000B2208;
      v225 = v199;
    }

    result = sub_100023AE0(v225, v224);
    goto LABEL_79;
  }

  v66 = v295;
  v299 = v295 & 0xC000000000000001;
  v277 = v295 & 0xFFFFFFFFFFFFFF8;
  v309 = (v268 + 56);
  v302 = (v311 + 56);
  v287 = (v268 + 32);
  v254 = (v311 + 8);
  v67 = v63;
  v68 = 0;
  v290 = 0;
  v271 = xmmword_1000860E0;
  v270 = xmmword_1000860C0;
  v69 = v62;
  v288 = a4;
  v289 = v21;
  v298 = v64;
  while (1)
  {
    if (v299)
    {
      v70 = sub_10007E844();
      goto LABEL_12;
    }

    if (v68 >= *(v277 + 16))
    {
      break;
    }

    v70 = *(v66 + 8 * v68 + 32);
LABEL_12:
    v72 = v70;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    v311 = v68 + 1;
    v73 = [v70 attributedText];
    if (!v73 || (v74 = v73, v75 = [v73 length], v74, v75 < 1))
    {
      sub_10007DEA4();
      v310 = v72;
      v76 = v292;
      v77 = v292[6];
      v78 = sub_10007DBA4();
      v79 = v69;
      v80 = *(*(v78 - 8) + 56);
      v80(v65 + v77, 1, 1, v78);
      v81 = *v309;
      v307 = v76[7];
      v308 = v81;
      v81(v65 + v307, 1, 1, v79);
      v82 = v76[8];
      v83 = *v302;
      (*v302)(v65 + v82, 1, 1, v306);
      v84 = v76[5];
      v85 = v310;
      v86 = (v65 + v84);
      *v86 = 0;
      v86[1] = 0;
      if ([v85 attributedText])
      {
        v87 = v284;
        sub_10007DBB4();
        v80(v87, 0, 1, v78);
        v88 = v87;
        v85 = v310;
        sub_100023A10(v88, v65 + v77, &qword_1000B3D38);
      }

      v89 = [v85 url];
      if (v89)
      {
        v90 = v293;
        v91 = v89;
        sub_10007DD24();

        v92 = 0;
        v65 = v303;
        v21 = v289;
      }

      else
      {
        v92 = 1;
        v65 = v303;
        v21 = v289;
        v90 = v293;
      }

      v69 = v300;
      v93 = 1;
      v308(v90, v92, 1, v300);
      sub_100023A10(v90, v65 + v307, &qword_1000B2980);
      v94 = [v85 mediaUTI];
      if (v94)
      {
        v95 = v94;
        sub_10007E014();

        v93 = 0;
      }

      v83(v21, v93, 1, v306);
      sub_100023A10(v21, v65 + v82, &unk_1000B4440);
      v96 = [v85 url];
      if (v96)
      {
        v97 = v283;
        v98 = v96;
        sub_10007DD24();

        v99 = *v287;
        v100 = v301;
        (*v287)(v301, v97, v69);
        if (sub_10007DCA4())
        {
          v276 = v99;
          sub_10007DCF4();
          v101 = v280;
          v285(v280, v279, v69);
          sub_10007DE54();
          v102 = v282;
          sub_10007DD14();

          v296(v101, v69);
          v103 = v278;
          v104 = [v278 defaultManager];
          sub_10007DD04(v105);
          v107 = v106;
          v317[0] = 0;
          LODWORD(v101) = [v104 createDirectoryAtURL:v106 withIntermediateDirectories:1 attributes:0 error:v317];

          v108 = v317[0];
          if (!v101)
          {
            v226 = v108;

            v290 = sub_10007DC84();

            swift_willThrow();
            v227 = v300;
            v228 = v296;
            v296(v102, v300);
LABEL_76:
            v230 = v301;
LABEL_82:
            v228(v230, v227);
            goto LABEL_83;
          }

          sub_10007DD14();

          v109 = [v103 defaultManager];
          sub_10007DD04(v110);
          v112 = v111;
          sub_10007DD04(v113);
          v115 = v114;
          v317[0] = 0;
          v116 = [v109 copyItemAtURL:v112 toURL:v114 error:v317];

          if (!v116)
          {
            v229 = v317[0];
            v290 = sub_10007DC84();

            swift_willThrow();
            v227 = v300;
            v228 = v296;
            v296(v281, v300);
            v228(v102, v227);
            goto LABEL_76;
          }

          v117 = qword_1000B1C10;
          v118 = v317[0];
          v85 = v310;
          if (v117 != -1)
          {
            swift_once();
          }

          v119 = static OS_os_log.crlSharingExtension;
          sub_10001FF68(&qword_1000B43B0);
          inited = swift_initStackObject();
          *(inited + 16) = v270;
          sub_10007DD04(v121);
          v123 = v122;
          v124 = sub_100032404(0, &qword_1000B4488);
          *(inited + 56) = v124;
          v125 = sub_100062824(&qword_1000B4490, &qword_1000B4488);
          *(inited + 64) = v125;
          *(inited + 32) = v123;
          v21 = (inited + 32);
          v126 = v281;
          sub_10007DD04(v127);
          *(inited + 96) = v124;
          *(inited + 104) = v125;
          *(inited + 72) = v128;
          v129 = sub_10007E614();
          sub_100069E88(v119, &_mh_execute_header, v129, "Copied file at URL: %@ to %@", 28, 2, inited);
          swift_setDeallocating();
          sub_10001FF68(&qword_1000B2968);
          swift_arrayDestroy();
          v69 = v300;
          v130 = v296;
          v296(v282, v300);
          v130(v301, v69);
          v65 = v303;
          v131 = v307;
          sub_100023AE0(v303 + v307, &qword_1000B2980);
          v276(v65 + v131, v126, v69);
          v308(v65 + v131, 0, 1, v69);
          goto LABEL_58;
        }

        v296(v100, v69);
      }

      v132 = [v85 image];
      if (v132)
      {
        v133 = v132;
        v134 = [(UIImage *)v132 CGImage];
        if (v134)
        {
          v135 = v134;
          AlphaInfo = CGImageGetAlphaInfo(v134);
          if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
          {
            v137 = UIImageJPEGRepresentation(v133, 0.8);
            if (v137)
            {
              goto LABEL_35;
            }

LABEL_40:
          }

          else
          {
            v137 = UIImagePNGRepresentation(v133);
            if (!v137)
            {
              goto LABEL_40;
            }

LABEL_35:
            v138 = v137;
            v274 = sub_10007DDD4();
            v276 = v139;

            v140 = [(UIImage *)v133 CGImage];
            if (v140)
            {
              v141 = v140;
              v142 = CGImageGetAlphaInfo(v140);

              if (v142 > kCGImageAlphaNoneSkipFirst)
              {
                LOBYTE(v143) = 1;
              }

              else
              {
                v143 = 0x1Eu >> v142;
              }
            }

            else
            {
              LOBYTE(v143) = 0;
            }

            sub_10001FF68(&unk_1000B4470);
            v144 = swift_allocObject();
            *(v144 + 16) = v271;
            v145 = [objc_opt_self() mainBundle];
            v146 = sub_10007E404();
            v147 = sub_10007E404();
            v21 = [v145 localizedStringForKey:v146 value:v147 table:0];

            v148 = sub_10007E444();
            v150 = v149;

            *(v144 + 32) = v148;
            *(v144 + 40) = v150;
            if (v143)
            {
              v151 = v273;
              sub_10007E024();
            }

            else
            {
              v151 = v273;
              sub_10007E044();
            }

            v152 = sub_10007E004();
            v154 = v153;
            (*v254)(v151, v306);
            if (v154)
            {
              v155 = v152;
            }

            else
            {
              v155 = 6778480;
            }

            if (!v154)
            {
              v154 = 0xE300000000000000;
            }

            v157 = *(v144 + 16);
            v156 = *(v144 + 24);
            if (v157 >= v156 >> 1)
            {
              v144 = sub_10006DD28((v156 > 1), v157 + 1, 1, v144);
            }

            *(v144 + 16) = v157 + 1;
            v158 = v144 + 16 * v157;
            *(v158 + 32) = v155;
            *(v158 + 40) = v154;
            v159 = v280;
            v160 = v300;
            v285(v280, v279, v300);
            sub_10007DE54();
            v161 = v275;
            sub_10007DD14();

            v162 = v159;
            v163 = v161;
            v296(v162, v160);
            v164 = [v278 defaultManager];
            sub_10007DD04(v165);
            v167 = v166;
            v317[0] = 0;
            LODWORD(v161) = [v164 createDirectoryAtURL:v166 withIntermediateDirectories:1 attributes:0 error:v317];

            v168 = v317[0];
            if (!v161)
            {
              v233 = v163;
              v234 = v317[0];

              v290 = sub_10007DC84();

              swift_willThrow();
              sub_100025ED8(v274, v276);
              v296(v233, v300);
LABEL_83:
              sub_100064364(v303, type metadata accessor for CRLSEManifestItem);
              goto LABEL_84;
            }

            v317[0] = v144;
            v169 = v168;
            sub_10001FF68(&unk_1000B2A10);
            sub_10004CA9C();
            sub_10007E3E4();

            v170 = v272;
            sub_10007DD14();

            v171 = v290;
            sub_10007DDE4();
            v290 = v171;
            if (v171)
            {

              sub_100025ED8(v274, v276);
              v227 = v300;
              v228 = v296;
              v296(v170, v300);
              v230 = v275;
              goto LABEL_82;
            }

            v172 = v303;
            v173 = v307;
            sub_100023AE0(v303 + v307, &qword_1000B2980);
            v174 = v300;
            v285((v172 + v173), v170, v300);
            v308(v172 + v173, 0, 1, v174);
            if (qword_1000B1C10 != -1)
            {
              swift_once();
            }

            v308 = static OS_os_log.crlSharingExtension;
            sub_10001FF68(&qword_1000B43B0);
            v175 = swift_initStackObject();
            *(v175 + 16) = v271;
            sub_10007DD04(v176);
            v178 = v177;
            *(v175 + 56) = sub_100032404(0, &qword_1000B4488);
            *(v175 + 64) = sub_100062824(&qword_1000B4490, &qword_1000B4488);
            *(v175 + 32) = v178;
            v179 = sub_10007E614();
            sub_100069E88(v308, &_mh_execute_header, v179, "Copied image data to %@", 23, 2, v175);
            sub_100025ED8(v274, v276);

            swift_setDeallocating();
            sub_1000211F8(v175 + 32);
            v180 = v296;
            v296(v170, v174);
            v180(v275, v174);
            v65 = v303;
            v69 = v174;
            v85 = v310;
          }
        }

        else
        {
        }
      }

LABEL_58:
      sub_100062868(v65, v304, type metadata accessor for CRLSEManifestItem);
      v181 = *(v294 + 28);
      v182 = v305;
      v183 = *(v305 + v181);
      v184 = swift_isUniquelyReferenced_nonNull_native();
      *(v182 + v181) = v183;
      if ((v184 & 1) == 0)
      {
        v183 = sub_10006DF38(0, v183[2] + 1, 1, v183);
        *(v305 + v181) = v183;
      }

      v186 = v183[2];
      v185 = v183[3];
      if (v186 >= v185 >> 1)
      {
        v189 = sub_10006DF38(v185 > 1, v186 + 1, 1, v183);
        *(v305 + v181) = v189;
      }

      v187 = v304;
      v188 = *(v305 + v181);
      *(v188 + 16) = v186 + 1;
      sub_1000643C4(v187, v188 + ((*(v291 + 80) + 32) & ~*(v291 + 80)) + *(v291 + 72) * v186, type metadata accessor for CRLSEManifestItem);
      sub_100064364(v65, type metadata accessor for CRLSEManifestItem);
      a4 = v288;
      v66 = v295;
      goto LABEL_7;
    }

LABEL_7:
    ++v68;
    v64 = v298;
    if (v311 == v298)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_92:
  swift_once();
LABEL_85:
  v235 = static OS_os_log.crlSharingExtension;
  sub_10001FF68(&qword_1000B43B0);
  v236 = swift_initStackObject();
  *(v236 + 16) = xmmword_1000860C0;
  swift_getErrorValue();
  v237 = Error.publicDescription.getter(v315, v316);
  v239 = v238;
  *(v236 + 56) = &type metadata for String;
  v240 = sub_10003186C();
  *(v236 + 64) = v240;
  *(v236 + 32) = v237;
  *(v236 + 40) = v239;
  swift_getErrorValue();
  v241 = Error.fullDescription.getter(v314);
  *(v236 + 96) = &type metadata for String;
  *(v236 + 104) = v240;
  *(v236 + 72) = v241;
  *(v236 + 80) = v242;
  v243 = sub_10007E624();
  sub_100069E88(v235, &_mh_execute_header, v243, "Failed to write sharing extension data with error: %{public}@ <%@>", 66, 2, v236);

  swift_setDeallocating();
  sub_10001FF68(&qword_1000B2968);
  result = swift_arrayDestroy();
  v232 = 0;
LABEL_86:
  *a9 = v232;
  return result;
}

uint64_t sub_10005F3B4(uint64_t a1)
{
  v2 = sub_10007DD94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_10007DD24();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10005F498()
{
  v1 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2930);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_10005FD84();
  v9 = v8[2];
  if (v9)
  {
    v20 = v7;
    v21 = v0;
    v22 = &_swiftEmptyArrayStorage;
    sub_10007AAB0(0, v9, 0);
    v10 = v22;
    v11 = *(type metadata accessor for CRLSELibraryViewModel.Item(0) - 8);
    v12 = *(v11 + 80);
    v19 = v8;
    v13 = v8 + ((v12 + 32) & ~v12);
    v14 = *(v11 + 72);
    do
    {
      sub_100062868(v13, v4, type metadata accessor for CRLSELibraryViewModel.Item);
      *&v4[*(v1 + 20)] = &_swiftEmptyArrayStorage;
      v22 = v10;
      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        sub_10007AAB0(v15 > 1, v16 + 1, 1);
        v10 = v22;
      }

      v10[2] = v16 + 1;
      sub_1000643C4(v4, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, type metadata accessor for CRLSELibraryViewModelItemNode);
      v13 += v14;
      --v9;
    }

    while (v9);

    v7 = v20;
  }

  else
  {

    v10 = &_swiftEmptyArrayStorage;
  }

  sub_10005F740(v7);
  type metadata accessor for CRLSELibrary();
  swift_allocObject();
  v17 = sub_1000749C0(v7, v10);

  return v17;
}

uint64_t sub_10005F740@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_10007DCC4();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_10007DD94();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_containerURL;
  swift_beginAccess();
  sub_100023A78(v1 + v15, v7, &qword_1000B2980);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100023AE0(v7, &qword_1000B2980);
    v16 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
    return (*(*(v16 - 8) + 56))(v34, 1, 1, v16);
  }

  else
  {
    v18 = v34;
    (*(v9 + 32))(v14, v7, v8);
    sub_10007DC14();
    swift_allocObject();
    sub_10007DC04();
    strcpy(v35, "Snapshot.plist");
    HIBYTE(v35[1]) = -18;
    v20 = v32;
    v19 = v33;
    (*(v32 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
    sub_1000610DC();
    v31 = v14;
    sub_10007DD74();
    (*(v20 + 8))(v4, v19);
    v21 = v12;
    v22 = sub_10007DDA4();
    v24 = v23;
    sub_10001FF68(&unk_1000B43E0);
    sub_100062484();
    sub_10007DBF4();
    v26 = v35[0];
    if (*(v35[0] + 16))
    {
      v27 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
      v28 = *(v27 - 8);
      sub_100062868(v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v18, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100025ED8(v22, v24);

      v29 = *(v9 + 8);
      v29(v21, v8);
      v29(v31, v8);
      return (*(v28 + 56))(v18, 0, 1, v27);
    }

    else
    {
      sub_100025ED8(v22, v24);

      v30 = *(v9 + 8);
      v30(v12, v8);
      v30(v31, v8);
      v25 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
      return (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
    }
  }
}

void *sub_10005FD84()
{
  v28 = sub_10007DCC4();
  v1 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_10007DD94();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_containerURL;
  swift_beginAccess();
  v15 = v0 + v14;
  v16 = v8;
  sub_100023A78(v15, v6, &qword_1000B2980);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100023AE0(v6, &qword_1000B2980);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v29 = 0xD000000000000013;
    v30 = 0x800000010008E060;
    v17 = v28;
    (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v28);
    sub_1000610DC();
    sub_10007DD74();
    (*(v1 + 8))(v3, v17);
    v18 = [objc_opt_self() defaultManager];
    sub_10007DD34(0);
    v19 = sub_10007E404();

    v20 = [v18 fileExistsAtPath:v19];

    if (v20)
    {
      sub_10007DC14();
      swift_allocObject();
      sub_10007DC04();
      v21 = v11;
      v23 = sub_10007DDA4();
      v25 = v24;
      sub_10001FF68(&qword_1000B43C8);
      sub_100062388();
      sub_10007DBF4();

      sub_100025ED8(v23, v25);
      v26 = *(v16 + 8);
      v26(v21, v7);
      v26(v13, v7);
      return v29;
    }

    v22 = *(v16 + 8);
    v22(v11, v7);
    v22(v13, v7);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000602EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_10007EAA4();
  }
}

uint64_t sub_10006035C(unint64_t a1, const char *a2)
{
  v96 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v96);
  v95 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v99);
  v97 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001FF68(&qword_1000B2930);
  v15 = __chkstk_darwin(v14 - 8);
  v92 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v85 - v17;
  v18 = sub_10007DAF4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_100061088();
    swift_allocError();
    *v48 = xmmword_100089C10;
LABEL_12:
    *(v48 + 16) = 0;
    return swift_willThrow();
  }

  v87 = v10;
  v88 = v11;
  v98 = v13;
  v89 = v3;
  v90 = v2;
  v23 = v20;

  v86 = a1;
  v91 = a2;
  v24 = sub_10007E404();
  v25 = [v24 crl_stringByFixingBrokenSurrogatePairs];

  v26 = sub_10007E444();
  v28 = v27;

  v101 = v26;
  v102 = v28;
  sub_10007DAD4();
  v103 = sub_1000610DC();
  v29 = sub_10007E744();
  v31 = v30;
  v32 = *(v19 + 8);
  v32(v22, v23);

  while (1)
  {

    v101 = v29;
    v102 = v31;
    sub_10007DAE4();
    v33 = sub_10007E734();
    v35 = v34;
    v37 = v36;
    v32(v22, v23);

    if (v37)
    {
      break;
    }

    v29 = sub_100058EE0(v33, v35, 32, 0xE100000000000000, v29, v31);
    v39 = v38;

    v31 = v39;
  }

  v40 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v40 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    sub_100061088();
    swift_allocError();
    v49 = v91;
    *v48 = v86;
    *(v48 + 8) = v49;
    goto LABEL_12;
  }

  v86 = v29;

  v41 = sub_10005F498();
  v42 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards;
  swift_beginAccess();
  v43 = v93;
  sub_100023A78(v41 + v42, v93, &qword_1000B2930);

  v44 = v92;
  sub_100023A78(v43, v92, &qword_1000B2930);
  v45 = v87;
  v46 = v88;
  if ((*(v88 + 48))(v44, 1, v87) == 1)
  {
    v47 = sub_100023AE0(v44, &qword_1000B2930);
LABEL_31:
    v53 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v51 = *&v44[*(v45 + 20)];

  sub_100064364(v44, type metadata accessor for CRLSELibraryViewModelItemNode);
  v52 = *(v51 + 16);
  if (!v52)
  {

    goto LABEL_31;
  }

  v100[0] = _swiftEmptyArrayStorage;
  sub_10007AA90(0, v52, 0);
  v53 = v100[0];
  v54 = v51 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v90 = v51;
  v91 = "Recently Deleted";
  v103 = *(v46 + 72);
  v55 = v97;
  do
  {
    v56 = v98;
    sub_100062868(v54, v98, type metadata accessor for CRLSELibraryViewModelItemNode);
    sub_100062868(v56, v55, type metadata accessor for CRLSELibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_100064364(v56, type metadata accessor for CRLSELibraryViewModelItemNode);
        v69 = sub_10001FF68(&qword_1000B2A20);
        v70 = &v55[*(v69 + 48)];
        v59 = *v70;
        v58 = v70[1];
        sub_100023AE0(&v55[*(v69 + 64)], &unk_1000B2A00);
        v71 = sub_10007DEB4();
        (*(*(v71 - 8) + 8))(v55, v71);
        goto LABEL_26;
      }

      sub_100064364(v56, type metadata accessor for CRLSELibraryViewModelItemNode);
      v60 = v55;
      v61 = v95;
      sub_1000643C4(v60, v95, type metadata accessor for CRLSELibraryViewModel.Board);
      v62 = (v61 + *(v96 + 24));
      v59 = *v62;
      v58 = v62[1];

      v63 = type metadata accessor for CRLSELibraryViewModel.Board;
      v64 = v61;
      v55 = v97;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v65 = v55;
        v66 = v94;
        sub_1000643C4(v65, v94, type metadata accessor for CRLSELibraryViewModel.Filter);
        v59 = sub_100018B58();
        v58 = v67;
        v68 = v66;
        v55 = v97;
        sub_100064364(v68, type metadata accessor for CRLSELibraryViewModel.Filter);
      }

      else
      {
        if (*v55)
        {
          sub_100064364(v56, type metadata accessor for CRLSELibraryViewModelItemNode);
          v58 = 0xE700000000000000;
          v59 = 0x737265646C6F46;
          goto LABEL_26;
        }

        type metadata accessor for CRLSEExtensionContextManager();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v73 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v74 = sub_10007E404();
        v92 = v74;
        v75 = sub_10007E404();
        v76 = sub_10007E404();
        v77 = [v73 localizedStringForKey:v74 value:v75 table:v76];

        v59 = sub_10007E444();
        v58 = v78;

        v55 = v97;
      }

      v63 = type metadata accessor for CRLSELibraryViewModelItemNode;
      v64 = v56;
    }

    sub_100064364(v64, v63);
LABEL_26:
    v100[0] = v53;
    v80 = v53[2];
    v79 = v53[3];
    if (v80 >= v79 >> 1)
    {
      sub_10007AA90((v79 > 1), v80 + 1, 1);
      v55 = v97;
      v53 = v100[0];
    }

    v53[2] = v80 + 1;
    v81 = &v53[2 * v80];
    v81[4] = v59;
    v81[5] = v58;
    v54 += v103;
    --v52;
  }

  while (v52);

  v43 = v93;
LABEL_32:
  v82 = v86;
  v100[0] = v86;
  v100[1] = v31;
  __chkstk_darwin(v47);
  *(&v85 - 2) = v100;
  v83 = sub_100058D0C(sub_100062260, (&v85 - 4), v53);

  if (v83)
  {
    sub_100061088();
    swift_allocError();
    *v84 = v82;
    *(v84 + 8) = v31;
    *(v84 + 16) = 1;
    swift_willThrow();
    return sub_100023AE0(v43, &qword_1000B2930);
  }

  else
  {
    sub_100023AE0(v43, &qword_1000B2930);
    return v82;
  }
}

id sub_100060E6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSEExtensionContextManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLSEExtensionContextManager()
{
  result = qword_1000B4370;
  if (!qword_1000B4370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060F94()
{
  sub_100061030();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100061030()
{
  if (!qword_1000B4380)
  {
    sub_10007DD94();
    v0 = sub_10007E714();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B4380);
    }
  }
}

unint64_t sub_100061088()
{
  result = qword_1000B4390;
  if (!qword_1000B4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4390);
  }

  return result;
}

unint64_t sub_1000610DC()
{
  result = qword_1000B4398;
  if (!qword_1000B4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4398);
  }

  return result;
}

uint64_t sub_100061134(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10007E904();
LABEL_9:
  result = sub_10007E854();
  *v1 = result;
  return result;
}

uint64_t sub_1000611D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10007EB04();
  sub_100018264(v20);
  v10 = sub_10007EB54();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_100062868(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v15 = sub_100021FE0(v8, a2);
      sub_100064364(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100064364(a2, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_100062868(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLSELibraryViewModel.Item);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100062868(a2, v8, type metadata accessor for CRLSELibraryViewModel.Item);
    v20[0] = *v3;
    sub_10006171C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_1000643C4(a2, v17, type metadata accessor for CRLSELibraryViewModel.Item);
    return 1;
  }
}

uint64_t sub_100061414()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v30 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10001FF68(&qword_1000B4498);
  result = sub_10007E7E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1000643C4(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_10007EB04();
      sub_100018264(v31);
      result = sub_10007EB54();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1000643C4(v4, *(v7 + 48) + v15 * v19, type metadata accessor for CRLSELibraryViewModel.Item);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_10006171C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100061414();
  }

  else
  {
    if (v14 > v13)
    {
      sub_100061960();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100061B6C();
  }

  v15 = *v4;
  sub_10007EB04();
  sub_100018264(v27);
  v16 = sub_10007EB54();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_100062868(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLSELibraryViewModel.Item);
      v20 = sub_100021FE0(v12, a1);
      sub_100064364(v12, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000643C4(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLSELibraryViewModel.Item);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10007EAB4();
  __break(1u);
  return result;
}

void *sub_100061960()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FF68(&qword_1000B4498);
  v6 = *v0;
  v7 = sub_10007E7D4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100062868(*(v6 + 48) + v21, v5, type metadata accessor for CRLSELibraryViewModel.Item);
        result = sub_1000643C4(v5, *(v8 + 48) + v21, type metadata accessor for CRLSELibraryViewModel.Item);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_100061B6C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10001FF68(&qword_1000B4498);
  result = sub_10007E7E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_100062868(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_10007EB04();
      sub_100018264(v29);
      result = sub_10007EB54();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1000643C4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for CRLSELibraryViewModel.Item);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_100061E44(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_10007E524();
  }

  __break(1u);
  return result;
}

uint64_t sub_100061E90@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v41 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_10007EB04();
  sub_100018264(v44);
  v11 = sub_10007EB54();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  v14 = *(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13;
  v43 = v3;
  if (v14)
  {
    LODWORD(v40) = a2;
    v15 = ~v12;
    v16 = *(v7 + 72);
    v17 = 1;
    while (1)
    {
      sub_100062868(*(v10 + 48) + v16 * v13, v9, type metadata accessor for CRLSELibraryViewModel.Item);
      v18 = sub_100021FE0(v9, a1);
      sub_100064364(v9, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v18)
      {
        break;
      }

      v13 = (v13 + 1) & v15;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v17 = 0;
LABEL_8:
    v19 = v18 ^ 1u;
    v4 = v43;
    LOBYTE(a2) = v40;
  }

  else
  {
    v19 = 1;
    v17 = 1;
  }

  v20 = *(v10 + 16);
  v21 = v20 + v17;
  if (__OFADD__(v20, v17))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v22 = *(v10 + 24);
  if (v22 >= v21 && (a2 & 1) != 0)
  {
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v23 = *(v7 + 72) * v13;
LABEL_28:
      v36 = *v4;
      v37 = *(*v4 + 48) + v23;
      v35 = v42;
      sub_1000643C4(v37, v42, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_1000643C4(a1, *(v36 + 48) + v23, type metadata accessor for CRLSELibraryViewModel.Item);
      v34 = 0;
      return (*(v7 + 56))(v35, v34, 1, v41);
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_100061414();
  }

  else
  {
    if (v22 >= v21)
    {
      sub_100061960();
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    sub_100061B6C();
  }

  v40 = v19;
  v24 = *v4;
  sub_10007EB04();
  sub_100018264(v44);
  v25 = sub_10007EB54();
  v26 = -1 << *(v24 + 32);
  v13 = v25 & ~v26;
  if (((*(v24 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_24:
    v4 = v43;
    if ((v40 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_25:
    v30 = *v4;
    *(*v4 + 8 * (v13 >> 6) + 56) |= 1 << v13;
    sub_1000643C4(a1, *(v30 + 48) + *(v7 + 72) * v13, type metadata accessor for CRLSELibraryViewModel.Item);
    v31 = *(v30 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      *(v30 + 16) = v33;
      v34 = 1;
      v35 = v42;
      return (*(v7 + 56))(v35, v34, 1, v41);
    }

    goto LABEL_31;
  }

  v27 = ~v26;
  v28 = *(v7 + 72);
  while (1)
  {
    v23 = v28 * v13;
    sub_100062868(*(v24 + 48) + v28 * v13, v9, type metadata accessor for CRLSELibraryViewModel.Item);
    v29 = sub_100021FE0(v9, a1);
    sub_100064364(v9, type metadata accessor for CRLSELibraryViewModel.Item);
    if (v29)
    {
      break;
    }

    v13 = (v13 + 1) & v27;
    if (((*(v24 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v4 = v43;
  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_32:
  result = sub_10007EAB4();
  __break(1u);
  return result;
}

uint64_t sub_100062260(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10007EAA4() & 1;
  }
}

unint64_t sub_1000622B8()
{
  result = qword_1000B43A0;
  if (!qword_1000B43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B43A0);
  }

  return result;
}

uint64_t sub_10006230C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10007E504();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10007E4E4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100062388()
{
  result = qword_1000B43D0;
  if (!qword_1000B43D0)
  {
    sub_10001FDB8(&qword_1000B43C8);
    sub_10006243C(&qword_1000B2568, type metadata accessor for CRLSELibraryViewModel.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B43D0);
  }

  return result;
}

uint64_t sub_10006243C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100062484()
{
  result = qword_1000B2570;
  if (!qword_1000B2570)
  {
    sub_10001FDB8(&unk_1000B43E0);
    sub_10006243C(&unk_1000B43F0, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2570);
  }

  return result;
}

uint64_t sub_100062538()
{
  v1 = type metadata accessor for CRLSEBoard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for CRLSEBoardIdentifier(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_10007DEB4();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    type metadata accessor for CRLSEBoardIdentifierStorage(0);
  }

  v8 = *(v1 + 24);
  v9 = sub_10007DEB4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100062720(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLSEBoard(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10005D6B4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10006280C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100062824(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100032404(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100062868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000628D0(unint64_t a1, uint64_t a2)
{
  v4 = sub_10007DD94();
  p_base_prots = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001FF68(&qword_1000B2980);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  if (a1 >> 62)
  {
LABEL_29:
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_10007E904();
  }

  else
  {
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v49 = a1 & 0xC000000000000001;
  v32 = a1;
  v42 = (p_base_prots + 7);
  v43 = (a1 + 32);
  v41 = (p_base_prots + 6);
  v37 = (p_base_prots + 1);
  v38 = (p_base_prots + 2);
  v36 = (a2 + 40);
  p_base_prots = &CRLPreviewImages.LookupKey.base_prots;
  a1 = &type metadata for String;
  v34 = v4;
  v35 = a2;
  v33 = v10;
  v39 = v13;
  while (v14 != v13)
  {
    if (v49)
    {
      v15 = sub_10007E844();
    }

    else
    {
      if (v14 >= *(v44 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = *&v43[8 * v14];
    }

    v16 = v15;
    if ([v15 p:v32 base:?prots[511]])
    {
      v17 = [v16 url];
      if (v17)
      {
        v18 = v17;
        sub_10007DD24();

        p_base_prots = (&CRLPreviewImages.LookupKey + 40);
        v19 = 0;
      }

      else
      {
        v19 = 1;
      }

      (*v42)(v10, v19, 1, v4);
      sub_1000644FC(v10, v12);
      if ((*v41)(v12, 1, v4))
      {
        sub_100023AE0(v12, &qword_1000B2980);
        goto LABEL_14;
      }

      v21 = v40;
      (*v38)(v40, v12, v4);
      sub_100023AE0(v12, &qword_1000B2980);
      v22 = sub_10007DCF4();
      v23 = v4;
      v25 = v24;
      (*v37)(v21, v23);
      v26 = *(a2 + 16) + 1;
      v27 = v36;
      while (--v26)
      {
        v28 = v27 + 2;
        v29 = *v27;
        v47 = *(v27 - 1);
        v48 = v29;
        v45 = v22;
        v46 = v25;
        sub_1000610DC();
        v30 = sub_10007E754();
        v27 = v28;
        if (!v30)
        {

          return v14;
        }
      }

      v4 = v34;
      a2 = v35;
      v10 = v33;
      v13 = v39;
      p_base_prots = (&CRLPreviewImages.LookupKey + 40);
      v20 = __OFADD__(v14++, 1);
      if (v20)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_14:

      v20 = __OFADD__(v14++, 1);
      if (v20)
      {
        goto LABEL_28;
      }
    }
  }

  return 0;
}

unint64_t sub_100062CA0(unint64_t *a1, uint64_t a2)
{
  v6 = sub_10007DD94();
  v61 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001FF68(&qword_1000B2980);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v15 = *a1;
  result = sub_1000628D0(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v66 = v14;
  v60 = v12;
  if (v17)
  {
    if (v15 >> 62)
    {
      return sub_10007E904();
    }

    return *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  v50 = 0;
  v18 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v56 = (v61 + 48);
  v57 = (v61 + 56);
  v52 = (v61 + 8);
  v53 = (v61 + 16);
  v19 = a2;
  v51 = (a2 + 40);
  v54 = a2;
  v55 = a1;
  v58 = v8;
  v59 = v6;
  v20 = v60;
  v21 = v66;
  while (1)
  {
LABEL_9:
    if (v15 >> 62)
    {
      if (v18 == sub_10007E904())
      {
        return v3;
      }
    }

    else if (v18 == *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v61 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v23 = sub_10007E844();
      goto LABEL_15;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    v23 = *(v15 + 8 * v18 + 32);
LABEL_15:
    v24 = v23;
    if ([v23 isHTTP])
    {
      v25 = [v24 url];
      if (v25)
      {
        v26 = v25;
        sub_10007DD24();

        v20 = v60;
        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      (*v57)(v20, v27, 1, v6);
      sub_1000644FC(v20, v21);
      if (!(*v56)(v21, 1, v6))
      {
        (*v53)(v8, v21, v6);
        sub_100023AE0(v21, &qword_1000B2980);
        v30 = sub_10007DCF4();
        v31 = v8;
        v32 = v30;
        v33 = v6;
        v35 = v34;
        (*v52)(v31, v33);
        v36 = *(v19 + 16) + 1;
        v37 = v51;
        while (--v36)
        {
          v38 = v37 + 2;
          v39 = *v37;
          v64 = *(v37 - 1);
          v65 = v39;
          v62 = v32;
          v63 = v35;
          sub_1000610DC();
          v40 = sub_10007E754();
          v37 = v38;
          v21 = v66;
          if (!v40)
          {

            v19 = v54;
            v8 = v58;
            v6 = v59;
            v20 = v60;
            v22 = __OFADD__(v18++, 1);
            if (v22)
            {
              goto LABEL_53;
            }

            goto LABEL_9;
          }
        }

        v19 = v54;
        v8 = v58;
        v6 = v59;
        v20 = v60;
        if (v3 == v18)
        {
          goto LABEL_7;
        }

LABEL_22:
        if (v61)
        {
          v28 = sub_10007E844();
          v29 = sub_10007E844();
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          v41 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3 >= v41)
          {
            goto LABEL_58;
          }

          if (v18 >= v41)
          {
            goto LABEL_59;
          }

          v42 = *(v15 + 32 + 8 * v18);
          v28 = *(v15 + 32 + 8 * v3);
          v29 = v42;
        }

        v43 = v29;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
        {
          v15 = sub_1000747C0(v15);
          v44 = (v15 >> 62) & 1;
        }

        else
        {
          LODWORD(v44) = 0;
        }

        v45 = v15 & 0xFFFFFFFFFFFFFF8;
        v46 = *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v43;

        if ((v15 & 0x8000000000000000) != 0 || v44)
        {
          v15 = sub_1000747C0(v15);
          v45 = v15 & 0xFFFFFFFFFFFFFF8;
        }

        v47 = v55;
        v8 = v58;
        v6 = v59;
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v18 >= *(v45 + 16))
        {
          goto LABEL_56;
        }

        v48 = v45 + 8 * v18;
        v49 = *(v48 + 32);
        *(v48 + 32) = v28;

        *v47 = v15;
        v20 = v60;
        v21 = v66;
        goto LABEL_7;
      }

      sub_100023AE0(v21, &qword_1000B2980);
    }

    if (v3 != v18)
    {
      goto LABEL_22;
    }

LABEL_7:
    v22 = __OFADD__(v3++, 1);
    if (v22)
    {
      goto LABEL_54;
    }

    v22 = __OFADD__(v18++, 1);
    if (v22)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return sub_10007E904();
}

uint64_t sub_1000631F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100032404(0, &qword_1000B2988);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_10007E904();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_10007E904();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100063304(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10007E904();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_10007E904();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100061134(result);

  return sub_1000631F4(v4, v2, 0);
}

uint64_t sub_1000633DC(uint64_t a1)
{
  v2 = sub_10001FF68(&qword_1000B2980);
  v3 = __chkstk_darwin(v2 - 8);
  v105 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v104 - v6;
  v8 = __chkstk_darwin(v5);
  v111 = &v104 - v9;
  v10 = __chkstk_darwin(v8);
  v106 = &v104 - v11;
  __chkstk_darwin(v10);
  v110 = &v104 - v12;
  v13 = sub_10007DD94();
  v108 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v107 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v114 = &v104 - v17;
  __chkstk_darwin(v16);
  v118 = &v104 - v18;
  v19 = 0;
  v20 = 0;
  v123 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  v120 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v21 == v19)
    {
      v119 = v13;
      v112 = v7;
      v123 = _swiftEmptyArrayStorage;
      v7 = v120;
      v109 = v120 >> 62;
      if (v120 >> 62)
      {
        goto LABEL_133;
      }

      v25 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    if (v19 >= v21)
    {
      break;
    }

    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_121;
    }

    v23 = *(a1 + 32 + 8 * v19++);
    if (v23)
    {
      v24 = v23;
      sub_10007E534();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007E564();
      }

      sub_10007E584();
      v120 = v123;
      v19 = v22;
    }
  }

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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  v25 = sub_10007E904();
LABEL_11:
  v26 = _swiftEmptyArrayStorage;
  if (v25)
  {
    v27 = 0;
    v28 = v7 & 0xC000000000000001;
    v115 = (v7 + 32);
    v116 = v7 & 0xFFFFFFFFFFFFFF8;
    v117 = (v108 + 8);
    do
    {
      if (v28)
      {
        v29 = sub_10007E844();
      }

      else
      {
        if (v27 >= *(v116 + 16))
        {
          goto LABEL_127;
        }

        v29 = v115[v27];
      }

      v30 = v29;
      if (__OFADD__(v27++, 1))
      {
        goto LABEL_122;
      }

      v122 = v29;
      __chkstk_darwin(v29);
      *(&v104 - 2) = &v122;
      if ((sub_100058DB8(sub_100064478, (&v104 - 4), v26) & 1) == 0)
      {
        v32 = [v30 url];
        if (v32)
        {
          v33 = v32;
          sub_10007DD24();

          if ((sub_10007DCA4() & 1) == 0)
          {
            sub_100032404(0, &unk_1000B44E0);
            if (v25 >= 1)
            {
              v34 = 0;
              v113 = v20;
              while (1)
              {
                if (v28)
                {
                  v35 = sub_10007E844();
                }

                else
                {
                  v35 = *(v7 + 8 * v34 + 32);
                }

                v36 = v35;
                if ((sub_10007E704() & 1) == 0)
                {
                  v37 = [v36 image];
                  if (v37 || (v37 = [v36 attributedText]) != 0)
                  {

                    v38 = v36;
                    sub_10007E534();
                    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_10007E564();
                    }

                    sub_10007E584();

                    v26 = v123;
                    goto LABEL_26;
                  }

                  v39 = [v36 url];
                  if (v39)
                  {
                    v40 = v26;
                    v41 = v114;
                    v42 = v39;
                    sub_10007DD24();

                    if (sub_10007DCA4())
                    {
                      (*v117)(v41, v119);

                      v26 = v40;
                    }

                    else
                    {
                      v43 = v36;
                      sub_10007E534();
                      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_10007E564();
                      }

                      sub_10007E584();

                      (*v117)(v114, v119);
                      v26 = v123;
                    }

                    v20 = v113;
                    goto LABEL_26;
                  }
                }

LABEL_26:
                ++v34;
                v7 = v120;
                if (v25 == v34)
                {
                  goto LABEL_13;
                }
              }
            }

            goto LABEL_131;
          }

LABEL_13:
          (*v117)(v118, v119);
        }
      }
    }

    while (v27 != v25);
  }

  v122 = _swiftEmptyArrayStorage;
  if (v109)
  {
    v44 = sub_10007E904();
  }

  else
  {
    v44 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v112;
  if (v44)
  {
    v46 = 0;
    v47 = v7 & 0xC000000000000001;
    v48 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v47)
      {
        v50 = sub_10007E844();
      }

      else
      {
        if (v46 >= *(v48 + 16))
        {
          goto LABEL_124;
        }

        v50 = *(v7 + 8 * v46 + 32);
      }

      v51 = v50;
      v7 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_123;
      }

      v121 = v50;
      __chkstk_darwin(v50);
      *(&v104 - 2) = &v121;

      v52 = sub_100058DB8(sub_100064634, (&v104 - 4), v26);

      if (v52)
      {
      }

      else
      {
        sub_10007E884();
        sub_10007E8B4();
        sub_10007E8C4();
        sub_10007E894();
      }

      ++v46;
      v49 = v7 == v44;
      v7 = v120;
      if (v49)
      {
        v53 = v122;
        v45 = v112;
        goto LABEL_59;
      }
    }
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_59:

  v122 = v53;
  if (v53 < 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = (v53 >> 62) & 1;
  }

  if (v7)
  {
    if (sub_10007E904() > 1)
    {
      v54 = sub_10007E904();
      goto LABEL_64;
    }

    goto LABEL_142;
  }

  v54 = *(v53 + 16);
  if (v54 <= 1)
  {
LABEL_142:

    return v122;
  }

LABEL_64:
  v55 = 0;
  v56 = v53 & 0xC000000000000001;
  do
  {
    if (v54 == v55)
    {
      goto LABEL_142;
    }

    if (v56)
    {
      v57 = sub_10007E844();
    }

    else
    {
      if (v55 >= *(v53 + 16))
      {
        goto LABEL_126;
      }

      v57 = *(v53 + 8 * v55 + 32);
    }

    v58 = v57;
    if (__OFADD__(v55, 1))
    {
      goto LABEL_125;
    }

    v59 = [v57 isPDF];

    ++v55;
  }

  while (!v59);
  v121 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    v60 = *(v53 + 16);
    v61 = v106;
    if (!v60)
    {
      goto LABEL_97;
    }

LABEL_75:
    v62 = 0;
    v116 = v108 + 48;
    v117 = (v108 + 56);
    v114 = (v108 + 8);
    v115 = (v108 + 16);
    v120 = v53 & 0xC000000000000001;
    v118 = v60;
    while (1)
    {
      if (v56)
      {
        v63 = sub_10007E844();
      }

      else
      {
        if (v62 >= *(v53 + 16))
        {
          goto LABEL_132;
        }

        v63 = *(v53 + 8 * v62 + 32);
      }

      v7 = v63;
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_128;
      }

      if ([v63 isPDF])
      {
        break;
      }

LABEL_77:
      ++v62;
      if (v64 == v60)
      {
        v76 = v121;
        if ((v121 & 0x8000000000000000) == 0)
        {
          goto LABEL_98;
        }

        goto LABEL_137;
      }
    }

    v65 = [v7 url];
    if (v65)
    {
      v66 = v65;
      sub_10007DD24();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = v61;
    v69 = v61;
    v70 = v119;
    (*v117)(v68, v67, 1, v119);
    v71 = v69;
    v72 = v69;
    v73 = v110;
    sub_1000644FC(v72, v110);
    if ((*v116)(v73, 1, v70))
    {

      sub_100023AE0(v73, &qword_1000B2980);
    }

    else
    {
      v74 = v107;
      (*v115)(v107, v73, v70);
      sub_100023AE0(v73, &qword_1000B2980);
      v75 = sub_10007DCA4();
      (*v114)(v74, v70);
      if (v75)
      {
        sub_10007E884();
        sub_10007E8B4();
        v61 = v106;
        v45 = v112;
        sub_10007E8C4();
        sub_10007E894();
LABEL_93:
        v56 = v120;
        v60 = v118;
        goto LABEL_77;
      }

      v45 = v112;
    }

    v61 = v71;
    goto LABEL_93;
  }

  v60 = sub_10007E904();
  v61 = v106;
  if (v60)
  {
    goto LABEL_75;
  }

LABEL_97:
  v76 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_137:
    v100 = v76;
    v77 = sub_10007E904();
    v76 = v100;
    if (v77)
    {
      goto LABEL_100;
    }

    goto LABEL_138;
  }

LABEL_98:
  if ((v76 & 0x4000000000000000) != 0)
  {
    goto LABEL_137;
  }

  v77 = *(v76 + 16);
  if (!v77)
  {
LABEL_138:
    v80 = _swiftEmptyArrayStorage;
    goto LABEL_139;
  }

LABEL_100:
  v78 = 0;
  v120 = v76 & 0xC000000000000001;
  v117 = (v108 + 56);
  v79 = (v108 + 48);
  v80 = _swiftEmptyArrayStorage;
  v115 = (v108 + 8);
  v118 = v76;
  do
  {
    v116 = v80;
    v81 = v78;
    while (1)
    {
      if (v120)
      {
        v82 = sub_10007E844();
        v78 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v81 >= *(v76 + 16))
        {
          goto LABEL_130;
        }

        v82 = *(v76 + 8 * v81 + 32);
        v78 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_129;
        }
      }

      v7 = v82;
      v83 = [v7 url];
      if (v83)
      {
        v84 = v83;
        sub_10007DD24();

        v45 = v112;
        v85 = 0;
      }

      else
      {
        v85 = 1;
      }

      v86 = v45;
      v87 = v45;
      v88 = v119;
      (*v117)(v86, v85, 1, v119);
      v89 = v87;
      v90 = v87;
      v91 = v111;
      sub_1000644FC(v90, v111);
      if ((*v79)(v91, 1, v88) != 1)
      {
        break;
      }

      sub_100023AE0(v91, &qword_1000B2980);

      ++v81;
      v45 = v89;
      v76 = v118;
      if (v78 == v77)
      {
        v80 = v116;
        goto LABEL_139;
      }
    }

    v92 = v105;
    sub_100023A78(v91, v105, &qword_1000B2980);
    v93 = sub_10007DCF4();
    v113 = v94;
    v114 = v93;
    (*v115)(v92, v119);
    sub_100023AE0(v91, &qword_1000B2980);

    v80 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_10006DD28(0, *(v80 + 2) + 1, 1, v80);
    }

    v76 = v118;
    v96 = *(v80 + 2);
    v95 = *(v80 + 3);
    v7 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      v99 = v118;
      v80 = sub_10006DD28((v95 > 1), v96 + 1, 1, v80);
      v76 = v99;
    }

    *(v80 + 2) = v7;
    v97 = &v80[16 * v96];
    v98 = v113;
    *(v97 + 4) = v114;
    *(v97 + 5) = v98;
    v45 = v112;
  }

  while (v78 != v77);
LABEL_139:

  v101 = sub_100062CA0(&v122, v80);

  if (v122 >> 62)
  {
    result = sub_10007E904();
    v103 = result;
    if (result < v101)
    {
      goto LABEL_144;
    }

LABEL_141:
    sub_100063304(v101, v103);

    goto LABEL_142;
  }

  v103 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v103 >= v101)
  {
    goto LABEL_141;
  }

LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_100064120(uint64_t a1)
{
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_10006243C(&qword_1000B44A0, type metadata accessor for CRLSELibraryViewModel.Item);
  result = sub_10007E604();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100062868(v11, v6, type metadata accessor for CRLSELibraryViewModel.Item);
      sub_1000611D4(v8, v6);
      sub_100064364(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

unint64_t sub_1000642B0()
{
  result = qword_1000B4460;
  if (!qword_1000B4460)
  {
    sub_10001FDB8(&qword_1000B4458);
    sub_10006243C(&qword_1000B2580, type metadata accessor for CRLSELibraryViewModel.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4460);
  }

  return result;
}

uint64_t sub_100064364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000643C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000644FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001FF68(&qword_1000B2980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10006456C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100064588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000645D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t *OS_os_log.crlAssert.unsafeMutableAddressor()
{
  if (qword_1000B1B68 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssert;
}

uint64_t *OS_os_log.crlSharingExtension.unsafeMutableAddressor()
{
  if (qword_1000B1C10 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSharingExtension;
}

uint64_t *OS_os_log.crlBoardLibrary.unsafeMutableAddressor()
{
  if (qword_1000B1BF8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardLibrary;
}

uint64_t *OS_os_log.crlFolderUI.unsafeMutableAddressor()
{
  if (qword_1000B1BF0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFolderUI;
}

uint64_t *OS_os_log.crlDefault.unsafeMutableAddressor()
{
  if (qword_1000B1B60 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDefault;
}

uint64_t *OS_os_log.crlBoardPreviewImageCache.unsafeMutableAddressor()
{
  if (qword_1000B1C00 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardPreviewImageCache;
}

void sub_100064830()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLDefaultCat_log_t, &CRLDefaultCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDefault = v1;
}

void sub_100064914()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAssertCat_log_t, &CRLAssertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssert = v1;
}

void sub_1000649F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLErrorCat_log_t, &CRLErrorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlError = v1;
}

uint64_t *OS_os_log.crlError.unsafeMutableAddressor()
{
  if (qword_1000B1B70 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlError;
}

void sub_100064B24()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLWarningCat_log_t, &CRLWarningCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlWarning = v1;
}

uint64_t *OS_os_log.crlWarning.unsafeMutableAddressor()
{
  if (qword_1000B1B78 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlWarning;
}

void sub_100064C58()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAlertCat_log_t, &CRLAlertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAlert = v1;
}

uint64_t *OS_os_log.crlAlert.unsafeMutableAddressor()
{
  if (qword_1000B1B80 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAlert;
}

void sub_100064D88()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLPerformanceCat_log_t, &CRLPerformanceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPerformance = v1;
}

uint64_t *OS_os_log.crlPerformance.unsafeMutableAddressor()
{
  if (qword_1000B1B88 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPerformance;
}

void sub_100064EB4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLStatusHUDCat_log_t, &CRLStatusHUDCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStatusHUD = v1;
}

uint64_t *OS_os_log.crlStatusHUD.unsafeMutableAddressor()
{
  if (qword_1000B1B90 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStatusHUD;
}

void sub_100064FE8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLTextInputCat_log_t, &CRLTextInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTextInput = v1;
}

uint64_t *OS_os_log.crlTextInput.unsafeMutableAddressor()
{
  if (qword_1000B1B98 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTextInput;
}

void sub_10006511C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLTraceableResourceCat_log_t, &CRLTraceableResourceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTraceableResource = v1;
}

uint64_t *OS_os_log.crlTraceableResource.unsafeMutableAddressor()
{
  if (qword_1000B1BA0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTraceableResource;
}

void sub_100065248()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLStorageHierachyCat_log_t, &CRLStorageHierachyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStorageHierachy = v1;
}

uint64_t *OS_os_log.crlStorageHierachy.unsafeMutableAddressor()
{
  if (qword_1000B1BA8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStorageHierachy;
}

void sub_100065374()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSerializableObjectCat_log_t, &CRLSerializableObjectCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSerializableObject = v1;
}

uint64_t *OS_os_log.crlSerializableObject.unsafeMutableAddressor()
{
  if (qword_1000B1BB0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSerializableObject;
}

void sub_1000654A0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaborationParticipantCat_log_t, &CRLCollaborationParticipantCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaborationParticipant = v1;
}

uint64_t *OS_os_log.crlCollaborationParticipant.unsafeMutableAddressor()
{
  if (qword_1000B1BB8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaborationParticipant;
}

void sub_1000655CC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSpotlightCat_log_t, &CRLSpotlightCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSpotlight = v1;
}

uint64_t *OS_os_log.crlSpotlight.unsafeMutableAddressor()
{
  if (qword_1000B1BC0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSpotlight;
}

void sub_100065700()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLNetworkReachabilityCat_log_t, &CRLNetworkReachabilityCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlNetworkReachability = v1;
}

uint64_t *OS_os_log.crlNetworkReachability.unsafeMutableAddressor()
{
  if (qword_1000B1BC8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlNetworkReachability;
}

void sub_10006582C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetDownloadManagerCat_log_t, &CRLAssetDownloadManagerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssetDownloadManager = v1;
}

uint64_t *OS_os_log.crlAssetDownloadManager.unsafeMutableAddressor()
{
  if (qword_1000B1BD0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssetDownloadManager;
}

void sub_100065958()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAnalyticsCat_log_t, &CRLAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnalytics = v1;
}

uint64_t *OS_os_log.crlAnalytics.unsafeMutableAddressor()
{
  if (qword_1000B1BD8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnalytics;
}

void sub_100065A8C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAppAnalyticsCat_log_t, &CRLAppAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAppAnalytics = v1;
}

uint64_t *OS_os_log.crlAppAnalytics.unsafeMutableAddressor()
{
  if (qword_1000B1BE0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAppAnalytics;
}

uint64_t (*static OS_os_log.crlAppAnalytics.modify())()
{
  if (qword_1000B1BE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_100065C64()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardCat_log_t, &CRLKeyboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlKeyboard = v1;
}

uint64_t *OS_os_log.crlKeyboard.unsafeMutableAddressor()
{
  if (qword_1000B1BE8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlKeyboard;
}

void sub_100065D98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLFolderUICat_log_t, &CRLFolderUICat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFolderUI = v1;
}

void sub_100065E7C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardLibraryCat_log_t, &CRLBoardLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardLibrary = v1;
}

void sub_100065F58()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardPreviewImageCacheCat_log_t, &CRLBoardPreviewImageCacheCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardPreviewImageCache = v1;
}

void sub_100066034()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLDragAndDropCat_log_t, &CRLDragAndDropCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDragAndDrop = v1;
}

uint64_t *OS_os_log.crlDragAndDrop.unsafeMutableAddressor()
{
  if (qword_1000B1C08 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDragAndDrop;
}

void sub_100066160()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSharingExtensionCat_log_t, &CRLSharingExtensionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSharingExtension = v1;
}

void sub_10006623C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLStencilLibraryCat_log_t, &CRLStencilLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStencilLibrary = v1;
}

uint64_t *OS_os_log.crlStencilLibrary.unsafeMutableAddressor()
{
  if (qword_1000B1C18 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStencilLibrary;
}

void sub_100066368()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeMessageTransferCat_log_t, &CRLCarmelRealTimeMessageTransferCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlRealTimeMessageTransfer = v1;
}

uint64_t *OS_os_log.crlRealTimeMessageTransfer.unsafeMutableAddressor()
{
  if (qword_1000B1C20 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlRealTimeMessageTransfer;
}

void sub_100066494()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLZoneRefetchCat_log_t, &CRLZoneRefetchCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlZoneRefetch = v1;
}

uint64_t *OS_os_log.crlZoneRefetch.unsafeMutableAddressor()
{
  if (qword_1000B1C28 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlZoneRefetch;
}

void sub_1000665C0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSendACopyCat_log_t, &CRLSendACopyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSendACopy = v1;
}

uint64_t *OS_os_log.crlSendACopy.unsafeMutableAddressor()
{
  if (qword_1000B1C30 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSendACopy;
}

void sub_1000666F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudKitEnvironmentCat_log_t, &CRLCloudKitEnvironmentCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudKitEnvironment = v1;
}

uint64_t *OS_os_log.crlCloudKitEnvironment.unsafeMutableAddressor()
{
  if (qword_1000B1C38 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudKitEnvironment;
}

void sub_100066820()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSidebarCat_log_t, &CRLSidebarCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSidebar = v1;
}

uint64_t *OS_os_log.crlSidebar.unsafeMutableAddressor()
{
  if (qword_1000B1C40 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSidebar;
}

void sub_100066954()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLInsertMediaCat_log_t, &CRLInsertMediaCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlInsertMedia = v1;
}

uint64_t *OS_os_log.crlInsertMedia.unsafeMutableAddressor()
{
  if (qword_1000B1C48 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlInsertMedia;
}

void sub_100066A80()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaboratorCursorCat_log_t, &CRLCollaboratorCursorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaboratorCursor = v1;
}

uint64_t *OS_os_log.crlCollaboratorCursor.unsafeMutableAddressor()
{
  if (qword_1000B1C50 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaboratorCursor;
}

void sub_100066BAC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLStateRestorationCat_log_t, &CRLStateRestorationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStateRestoration = v1;
}

uint64_t *OS_os_log.crlStateRestoration.unsafeMutableAddressor()
{
  if (qword_1000B1C58 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStateRestoration;
}

void sub_100066CD8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLFollowCat_log_t, &CRLFollowCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFollow = v1;
}

uint64_t *OS_os_log.crlFollow.unsafeMutableAddressor()
{
  if (qword_1000B1C60 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFollow;
}

void sub_100066E08()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLJoinLeaveCat_log_t, &CRLJoinLeaveCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlJoinLeave = v1;
}

uint64_t *OS_os_log.crlJoinLeave.unsafeMutableAddressor()
{
  if (qword_1000B1C68 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlJoinLeave;
}

void sub_100066F3C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLPencilHoverCat_log_t, &CRLPencilHoverCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPencilHover = v1;
}

uint64_t *OS_os_log.crlPencilHover.unsafeMutableAddressor()
{
  if (qword_1000B1C70 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPencilHover;
}

void sub_100067068()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLScenesCat_log_t, &CRLScenesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlScenes = v1;
}

uint64_t *OS_os_log.crlScenes.unsafeMutableAddressor()
{
  if (qword_1000B1C78 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlScenes;
}

void sub_10006719C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLTablesCat_log_t, &CRLTablesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTables = v1;
}

uint64_t *OS_os_log.crlTables.unsafeMutableAddressor()
{
  if (qword_1000B1C80 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTables;
}

void sub_1000672D0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLThreeDimensionalObjectsCat_log_t, &CRLThreeDimensionalObjectsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlThreeDimensionalObjects = v1;
}

uint64_t *OS_os_log.crlThreeDimensionalObjects.unsafeMutableAddressor()
{
  if (qword_1000B1C88 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlThreeDimensionalObjects;
}

void sub_1000673FC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLChangeShapeCat_log_t, &CRLChangeShapeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlChangeShape = v1;
}

uint64_t *OS_os_log.crlChangeShape.unsafeMutableAddressor()
{
  if (qword_1000B1C90 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlChangeShape;
}

void sub_100067528()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudQuotaMessagingCat_log_t, &CRLCloudQuotaMessagingCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudQuotaMessaging = v1;
}

uint64_t *OS_os_log.crlCloudQuotaMessaging.unsafeMutableAddressor()
{
  if (qword_1000B1C98 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudQuotaMessaging;
}

void sub_100067654()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRL3DBreakthroughCat_log_t, &CRL3DBreakthroughCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crl3DBreakthrough = v1;
}

uint64_t *OS_os_log.crl3DBreakthrough.unsafeMutableAddressor()
{
  if (qword_1000B1CA0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crl3DBreakthrough;
}

void sub_100067780()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLObjectTransformCat_log_t, &CRLObjectTransformCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlObjectTransform = v1;
}

uint64_t *OS_os_log.crlObjectTransform.unsafeMutableAddressor()
{
  if (qword_1000B1CA8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlObjectTransform;
}

void sub_1000678AC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLLayerAnimationCat_log_t, &CRLLayerAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlLayerAnimation = v1;
}

uint64_t *OS_os_log.crlLayerAnimation.unsafeMutableAddressor()
{
  if (qword_1000B1CB0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlLayerAnimation;
}

void sub_1000679D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAnimationImplCat_log_t, &CRLAnimationImplCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnimationImpl = v1;
}

uint64_t *OS_os_log.crlAnimationImpl.unsafeMutableAddressor()
{
  if (qword_1000B1CB8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnimationImpl;
}

void sub_100067B04()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLMiniFormatterCat_log_t, &CRLMiniFormatterCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlMiniFormatter = v1;
}

uint64_t *OS_os_log.crlMiniFormatter.unsafeMutableAddressor()
{
  if (qword_1000B1CC0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlMiniFormatter;
}

void sub_100067C30()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSceneManagementCat_log_t, &CRLSceneManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sceneManagement = v1;
}

uint64_t *OS_os_log.sceneManagement.unsafeMutableAddressor()
{
  if (qword_1000B1CC8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sceneManagement;
}

void sub_100067D64()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCompositionCat_log_t, &CRLCompositionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.composition = v1;
}

uint64_t *OS_os_log.composition.unsafeMutableAddressor()
{
  if (qword_1000B1CD0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.composition;
}

void sub_100067E94()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLViewControllerCat_log_t, &CRLViewControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.CRLViewController = v1;
}

uint64_t *OS_os_log.CRLViewController.unsafeMutableAddressor()
{
  if (qword_1000B1CD8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.CRLViewController;
}

void sub_100067FC0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAppIntentsCat_log_t, &CRLAppIntentsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appIntents = v1;
}

uint64_t *OS_os_log.appIntents.unsafeMutableAddressor()
{
  if (qword_1000B1CE0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appIntents;
}

void sub_1000680EC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAppStateCat_log_t, &CRLAppStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appState = v1;
}

uint64_t *OS_os_log.appState.unsafeMutableAddressor()
{
  if (qword_1000B1CE8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appState;
}

void sub_100068214()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLInteractionCat_log_t, &CRLInteractionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.interaction = v1;
}

uint64_t *OS_os_log.interaction.unsafeMutableAddressor()
{
  if (qword_1000B1CF0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.interaction;
}

void sub_100068344()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLContentStateCat_log_t, &CRLContentStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.contentState = v1;
}

uint64_t *OS_os_log.contentState.unsafeMutableAddressor()
{
  if (qword_1000B1CF8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.contentState;
}

void sub_100068474()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardDataStoreCat_log_t, &CRLBoardDataStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardStore = v1;
}

uint64_t *OS_os_log.boardStore.unsafeMutableAddressor()
{
  if (qword_1000B1D00 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardStore;
}

void sub_1000685A0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLFileProviderStoreCat_log_t, &CRLFileProviderStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.fileProviderStore = v1;
}

uint64_t *OS_os_log.fileProviderStore.unsafeMutableAddressor()
{
  if (qword_1000B1D08 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.fileProviderStore;
}

void sub_1000686CC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLPersistenceCat_log_t, &CRLPersistenceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.persistence = v1;
}

uint64_t *OS_os_log.persistence.unsafeMutableAddressor()
{
  if (qword_1000B1D10 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.persistence;
}

void sub_1000687FC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLDataSyncCat_log_t, &CRLDataSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataSync = v1;
}

uint64_t *OS_os_log.dataSync.unsafeMutableAddressor()
{
  if (qword_1000B1D18 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataSync;
}

void sub_100068924()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCommandControllerCat_log_t, &CRLCommandControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.commandController = v1;
}

uint64_t *OS_os_log.commandController.unsafeMutableAddressor()
{
  if (qword_1000B1D20 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.commandController;
}

void sub_100068A50()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSuspendResumeCollaborationCat_log_t, &CRLSuspendResumeCollaborationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.suspendResumeCollaboration = v1;
}

uint64_t *OS_os_log.suspendResumeCollaboration.unsafeMutableAddressor()
{
  if (qword_1000B1D28 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.suspendResumeCollaboration;
}

void sub_100068B7C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeSyncCat_log_t, &CRLCarmelRealTimeSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.realTimeSync = v1;
}

uint64_t *OS_os_log.realTimeSync.unsafeMutableAddressor()
{
  if (qword_1000B1D30 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.realTimeSync;
}

void sub_100068CA8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardInputCat_log_t, &CRLKeyboardInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.keyboardInput = v1;
}

uint64_t *OS_os_log.keyboardInput.unsafeMutableAddressor()
{
  if (qword_1000B1D38 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.keyboardInput;
}

void sub_100068DDC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLTargetGestureCat_log_t, &CRLTargetGestureCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.target_gesture = v1;
}

uint64_t *OS_os_log.target_gesture.unsafeMutableAddressor()
{
  if (qword_1000B1D40 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.target_gesture;
}

void sub_100068F10()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLDataStoreUpgradeCat_log_t, &CRLDataStoreUpgradeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.upgrade = v1;
}

uint64_t *OS_os_log.upgrade.unsafeMutableAddressor()
{
  if (qword_1000B1D48 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.upgrade;
}

void sub_10006903C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLPasteboardCat_log_t, &CRLPasteboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.pasteboard = v1;
}

uint64_t *OS_os_log.pasteboard.unsafeMutableAddressor()
{
  if (qword_1000B1D50 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.pasteboard;
}

void sub_100069168()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemDataSizeCat_log_t, &CRLBoardItemDataSizeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemDataSize = v1;
}

uint64_t *OS_os_log.boardItemDataSize.unsafeMutableAddressor()
{
  if (qword_1000B1D58 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemDataSize;
}

void sub_100069294()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemLifecycleCat_log_t, &CRLBoardItemLifecycleCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemLifecycle = v1;
}

uint64_t *OS_os_log.boardItemLifecycle.unsafeMutableAddressor()
{
  if (qword_1000B1D60 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemLifecycle;
}

void sub_1000693C0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetManagementCat_log_t, &CRLAssetManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.assetManagement = v1;
}

uint64_t *OS_os_log.assetManagement.unsafeMutableAddressor()
{
  if (qword_1000B1D68 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.assetManagement;
}

void sub_1000694F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLShareStateCat_log_t, &CRLShareStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.shareState = v1;
}

uint64_t *OS_os_log.shareState.unsafeMutableAddressor()
{
  if (qword_1000B1D70 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.shareState;
}

void sub_100069620()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLDrawingDataDetectors_log_t, &CRLDrawingDataDetectors_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.DrawingDataDetectors = v1;
}

uint64_t *OS_os_log.DrawingDataDetectors.unsafeMutableAddressor()
{
  if (qword_1000B1D78 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.DrawingDataDetectors;
}

void sub_10006974C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSideStore_log_t, &CRLSideStore_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sideStore = v1;
}

uint64_t *OS_os_log.sideStore.unsafeMutableAddressor()
{
  if (qword_1000B1D80 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sideStore;
}

void sub_100069878()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLSurfaceCat_log_t, &CRLSurfaceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSurface = v1;
}

uint64_t *OS_os_log.crlSurface.unsafeMutableAddressor()
{
  if (qword_1000B1D88 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSurface;
}

id sub_1000699A0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_100069A00()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLWritingTools_log_t, &CRLWritingTools_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.writingTools = v1;
}

uint64_t *OS_os_log.writingTools.unsafeMutableAddressor()
{
  if (qword_1000B1D90 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.writingTools;
}

uint64_t (*static OS_os_log.writingTools.modify())()
{
  if (qword_1000B1D90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_100069BE0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10007E404();
  v1 = CRLLogEnsureCreated(v0, &CRLFreehandDrawingStrokeAnimationCat_log_t, &CRLFreehandDrawingStrokeAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFreehandDrawingStrokeAnimation = v1;
}

uint64_t *OS_os_log.crlFreehandDrawingStrokeAnimation.unsafeMutableAddressor()
{
  if (qword_1000B1D98 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFreehandDrawingStrokeAnimation;
}

id sub_100069D0C(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_100069D98(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.crlFreehandDrawingStrokeAnimation.modify())()
{
  if (qword_1000B1D98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100069E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*(a7 + 16))
  {
    case 1:
      sub_10001FF68(&qword_1000B43B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000860E0;
      v9 = a7 + 32;
      v10 = v20 + 32;
      goto LABEL_25;
    case 2:
      sub_10001FF68(&qword_1000B43B0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000860C0;
      sub_10006AD90(a7 + 32, v16 + 32);
      v9 = a7 + 72;
      v10 = v16 + 72;
      goto LABEL_25;
    case 3:
      sub_10001FF68(&qword_1000B43B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100089F20;
      sub_10006AD90(a7 + 32, v18 + 32);
      sub_10006AD90(a7 + 72, v18 + 72);
      v9 = a7 + 112;
      v10 = v18 + 112;
      goto LABEL_25;
    case 4:
      sub_10001FF68(&qword_1000B43B0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100089F10;
      sub_10006AD90(a7 + 32, v13 + 32);
      sub_10006AD90(a7 + 72, v13 + 72);
      sub_10006AD90(a7 + 112, v13 + 112);
      v9 = a7 + 152;
      v10 = v13 + 152;
      goto LABEL_25;
    case 5:
      sub_10001FF68(&qword_1000B43B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100089F00;
      sub_10006AD90(a7 + 32, v23 + 32);
      sub_10006AD90(a7 + 72, v23 + 72);
      sub_10006AD90(a7 + 112, v23 + 112);
      sub_10006AD90(a7 + 152, v23 + 152);
      v9 = a7 + 192;
      v10 = v23 + 192;
      goto LABEL_25;
    case 6:
      sub_10001FF68(&qword_1000B43B0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100089EF0;
      sub_10006AD90(a7 + 32, v26 + 32);
      sub_10006AD90(a7 + 72, v26 + 72);
      sub_10006AD90(a7 + 112, v26 + 112);
      sub_10006AD90(a7 + 152, v26 + 152);
      sub_10006AD90(a7 + 192, v26 + 192);
      v9 = a7 + 232;
      v10 = v26 + 232;
      goto LABEL_25;
    case 7:
      sub_10001FF68(&qword_1000B43B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100089EE0;
      sub_10006AD90(a7 + 32, v19 + 32);
      sub_10006AD90(a7 + 72, v19 + 72);
      sub_10006AD90(a7 + 112, v19 + 112);
      sub_10006AD90(a7 + 152, v19 + 152);
      sub_10006AD90(a7 + 192, v19 + 192);
      sub_10006AD90(a7 + 232, v19 + 232);
      v9 = a7 + 272;
      v10 = v19 + 272;
      goto LABEL_25;
    case 8:
      sub_10001FF68(&qword_1000B43B0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100089ED0;
      sub_10006AD90(a7 + 32, v29 + 32);
      sub_10006AD90(a7 + 72, v29 + 72);
      sub_10006AD90(a7 + 112, v29 + 112);
      sub_10006AD90(a7 + 152, v29 + 152);
      sub_10006AD90(a7 + 192, v29 + 192);
      sub_10006AD90(a7 + 232, v29 + 232);
      sub_10006AD90(a7 + 272, v29 + 272);
      v9 = a7 + 312;
      v10 = v29 + 312;
      goto LABEL_25;
    case 9:
      sub_10001FF68(&qword_1000B43B0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100089EC0;
      sub_10006AD90(a7 + 32, v15 + 32);
      sub_10006AD90(a7 + 72, v15 + 72);
      sub_10006AD90(a7 + 112, v15 + 112);
      sub_10006AD90(a7 + 152, v15 + 152);
      sub_10006AD90(a7 + 192, v15 + 192);
      sub_10006AD90(a7 + 232, v15 + 232);
      sub_10006AD90(a7 + 272, v15 + 272);
      sub_10006AD90(a7 + 312, v15 + 312);
      v9 = a7 + 352;
      v10 = v15 + 352;
      goto LABEL_25;
    case 0xALL:
      sub_10001FF68(&qword_1000B43B0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100089EB0;
      sub_10006AD90(a7 + 32, v28 + 32);
      sub_10006AD90(a7 + 72, v28 + 72);
      sub_10006AD90(a7 + 112, v28 + 112);
      sub_10006AD90(a7 + 152, v28 + 152);
      sub_10006AD90(a7 + 192, v28 + 192);
      sub_10006AD90(a7 + 232, v28 + 232);
      sub_10006AD90(a7 + 272, v28 + 272);
      sub_10006AD90(a7 + 312, v28 + 312);
      sub_10006AD90(a7 + 352, v28 + 352);
      v9 = a7 + 392;
      v10 = v28 + 392;
      goto LABEL_25;
    case 0xBLL:
      sub_10001FF68(&qword_1000B43B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100089EA0;
      sub_10006AD90(a7 + 32, v12 + 32);
      sub_10006AD90(a7 + 72, v12 + 72);
      sub_10006AD90(a7 + 112, v12 + 112);
      sub_10006AD90(a7 + 152, v12 + 152);
      sub_10006AD90(a7 + 192, v12 + 192);
      sub_10006AD90(a7 + 232, v12 + 232);
      sub_10006AD90(a7 + 272, v12 + 272);
      sub_10006AD90(a7 + 312, v12 + 312);
      sub_10006AD90(a7 + 352, v12 + 352);
      sub_10006AD90(a7 + 392, v12 + 392);
      v9 = a7 + 432;
      v10 = v12 + 432;
      goto LABEL_25;
    case 0xCLL:
      sub_10001FF68(&qword_1000B43B0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100089E90;
      sub_10006AD90(a7 + 32, v14 + 32);
      sub_10006AD90(a7 + 72, v14 + 72);
      sub_10006AD90(a7 + 112, v14 + 112);
      sub_10006AD90(a7 + 152, v14 + 152);
      sub_10006AD90(a7 + 192, v14 + 192);
      sub_10006AD90(a7 + 232, v14 + 232);
      sub_10006AD90(a7 + 272, v14 + 272);
      sub_10006AD90(a7 + 312, v14 + 312);
      sub_10006AD90(a7 + 352, v14 + 352);
      sub_10006AD90(a7 + 392, v14 + 392);
      sub_10006AD90(a7 + 432, v14 + 432);
      v9 = a7 + 472;
      v10 = v14 + 472;
      goto LABEL_25;
    case 0xDLL:
      sub_10001FF68(&qword_1000B43B0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100089E80;
      sub_10006AD90(a7 + 32, v25 + 32);
      sub_10006AD90(a7 + 72, v25 + 72);
      sub_10006AD90(a7 + 112, v25 + 112);
      sub_10006AD90(a7 + 152, v25 + 152);
      sub_10006AD90(a7 + 192, v25 + 192);
      sub_10006AD90(a7 + 232, v25 + 232);
      sub_10006AD90(a7 + 272, v25 + 272);
      sub_10006AD90(a7 + 312, v25 + 312);
      sub_10006AD90(a7 + 352, v25 + 352);
      sub_10006AD90(a7 + 392, v25 + 392);
      sub_10006AD90(a7 + 432, v25 + 432);
      sub_10006AD90(a7 + 472, v25 + 472);
      v9 = a7 + 512;
      v10 = v25 + 512;
      goto LABEL_25;
    case 0xELL:
      sub_10001FF68(&qword_1000B43B0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100089E70;
      sub_10006AD90(a7 + 32, v11 + 32);
      sub_10006AD90(a7 + 72, v11 + 72);
      sub_10006AD90(a7 + 112, v11 + 112);
      sub_10006AD90(a7 + 152, v11 + 152);
      sub_10006AD90(a7 + 192, v11 + 192);
      sub_10006AD90(a7 + 232, v11 + 232);
      sub_10006AD90(a7 + 272, v11 + 272);
      sub_10006AD90(a7 + 312, v11 + 312);
      sub_10006AD90(a7 + 352, v11 + 352);
      sub_10006AD90(a7 + 392, v11 + 392);
      sub_10006AD90(a7 + 432, v11 + 432);
      sub_10006AD90(a7 + 472, v11 + 472);
      sub_10006AD90(a7 + 512, v11 + 512);
      v9 = a7 + 552;
      v10 = v11 + 552;
      goto LABEL_25;
    case 0xFLL:
      sub_10001FF68(&qword_1000B43B0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100089E60;
      sub_10006AD90(a7 + 32, v17 + 32);
      sub_10006AD90(a7 + 72, v17 + 72);
      sub_10006AD90(a7 + 112, v17 + 112);
      sub_10006AD90(a7 + 152, v17 + 152);
      sub_10006AD90(a7 + 192, v17 + 192);
      sub_10006AD90(a7 + 232, v17 + 232);
      sub_10006AD90(a7 + 272, v17 + 272);
      sub_10006AD90(a7 + 312, v17 + 312);
      sub_10006AD90(a7 + 352, v17 + 352);
      sub_10006AD90(a7 + 392, v17 + 392);
      sub_10006AD90(a7 + 432, v17 + 432);
      sub_10006AD90(a7 + 472, v17 + 472);
      sub_10006AD90(a7 + 512, v17 + 512);
      sub_10006AD90(a7 + 552, v17 + 552);
      v9 = a7 + 592;
      v10 = v17 + 592;
      goto LABEL_25;
    case 0x10:
      sub_10001FF68(&qword_1000B43B0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100089E50;
      sub_10006AD90(a7 + 32, v8 + 32);
      sub_10006AD90(a7 + 72, v8 + 72);
      sub_10006AD90(a7 + 112, v8 + 112);
      sub_10006AD90(a7 + 152, v8 + 152);
      sub_10006AD90(a7 + 192, v8 + 192);
      sub_10006AD90(a7 + 232, v8 + 232);
      sub_10006AD90(a7 + 272, v8 + 272);
      sub_10006AD90(a7 + 312, v8 + 312);
      sub_10006AD90(a7 + 352, v8 + 352);
      sub_10006AD90(a7 + 392, v8 + 392);
      sub_10006AD90(a7 + 432, v8 + 432);
      sub_10006AD90(a7 + 472, v8 + 472);
      sub_10006AD90(a7 + 512, v8 + 512);
      sub_10006AD90(a7 + 552, v8 + 552);
      sub_10006AD90(a7 + 592, v8 + 592);
      v9 = a7 + 632;
      v10 = v8 + 632;
      goto LABEL_25;
    case 0x11:
      sub_10001FF68(&qword_1000B43B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100089E40;
      sub_10006AD90(a7 + 32, v21 + 32);
      sub_10006AD90(a7 + 72, v21 + 72);
      sub_10006AD90(a7 + 112, v21 + 112);
      sub_10006AD90(a7 + 152, v21 + 152);
      sub_10006AD90(a7 + 192, v21 + 192);
      sub_10006AD90(a7 + 232, v21 + 232);
      sub_10006AD90(a7 + 272, v21 + 272);
      sub_10006AD90(a7 + 312, v21 + 312);
      sub_10006AD90(a7 + 352, v21 + 352);
      sub_10006AD90(a7 + 392, v21 + 392);
      sub_10006AD90(a7 + 432, v21 + 432);
      sub_10006AD90(a7 + 472, v21 + 472);
      sub_10006AD90(a7 + 512, v21 + 512);
      sub_10006AD90(a7 + 552, v21 + 552);
      sub_10006AD90(a7 + 592, v21 + 592);
      sub_10006AD90(a7 + 632, v21 + 632);
      v9 = a7 + 672;
      v10 = v21 + 672;
      goto LABEL_25;
    case 0x12:
      sub_10001FF68(&qword_1000B43B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100089E30;
      sub_10006AD90(a7 + 32, v27 + 32);
      sub_10006AD90(a7 + 72, v27 + 72);
      sub_10006AD90(a7 + 112, v27 + 112);
      sub_10006AD90(a7 + 152, v27 + 152);
      sub_10006AD90(a7 + 192, v27 + 192);
      sub_10006AD90(a7 + 232, v27 + 232);
      sub_10006AD90(a7 + 272, v27 + 272);
      sub_10006AD90(a7 + 312, v27 + 312);
      sub_10006AD90(a7 + 352, v27 + 352);
      sub_10006AD90(a7 + 392, v27 + 392);
      sub_10006AD90(a7 + 432, v27 + 432);
      sub_10006AD90(a7 + 472, v27 + 472);
      sub_10006AD90(a7 + 512, v27 + 512);
      sub_10006AD90(a7 + 552, v27 + 552);
      sub_10006AD90(a7 + 592, v27 + 592);
      sub_10006AD90(a7 + 632, v27 + 632);
      sub_10006AD90(a7 + 672, v27 + 672);
      v9 = a7 + 712;
      v10 = v27 + 712;
      goto LABEL_25;
    case 0x13:
      sub_10001FF68(&qword_1000B43B0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100089E20;
      sub_10006AD90(a7 + 32, v30 + 32);
      sub_10006AD90(a7 + 72, v30 + 72);
      sub_10006AD90(a7 + 112, v30 + 112);
      sub_10006AD90(a7 + 152, v30 + 152);
      sub_10006AD90(a7 + 192, v30 + 192);
      sub_10006AD90(a7 + 232, v30 + 232);
      sub_10006AD90(a7 + 272, v30 + 272);
      sub_10006AD90(a7 + 312, v30 + 312);
      sub_10006AD90(a7 + 352, v30 + 352);
      sub_10006AD90(a7 + 392, v30 + 392);
      sub_10006AD90(a7 + 432, v30 + 432);
      sub_10006AD90(a7 + 472, v30 + 472);
      sub_10006AD90(a7 + 512, v30 + 512);
      sub_10006AD90(a7 + 552, v30 + 552);
      sub_10006AD90(a7 + 592, v30 + 592);
      sub_10006AD90(a7 + 632, v30 + 632);
      sub_10006AD90(a7 + 672, v30 + 672);
      sub_10006AD90(a7 + 712, v30 + 712);
      v9 = a7 + 752;
      v10 = v30 + 752;
      goto LABEL_25;
    case 0x14:
      sub_10001FF68(&qword_1000B43B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100089E10;
      sub_10006AD90(a7 + 32, v22 + 32);
      sub_10006AD90(a7 + 72, v22 + 72);
      sub_10006AD90(a7 + 112, v22 + 112);
      sub_10006AD90(a7 + 152, v22 + 152);
      sub_10006AD90(a7 + 192, v22 + 192);
      sub_10006AD90(a7 + 232, v22 + 232);
      sub_10006AD90(a7 + 272, v22 + 272);
      sub_10006AD90(a7 + 312, v22 + 312);
      sub_10006AD90(a7 + 352, v22 + 352);
      sub_10006AD90(a7 + 392, v22 + 392);
      sub_10006AD90(a7 + 432, v22 + 432);
      sub_10006AD90(a7 + 472, v22 + 472);
      sub_10006AD90(a7 + 512, v22 + 512);
      sub_10006AD90(a7 + 552, v22 + 552);
      sub_10006AD90(a7 + 592, v22 + 592);
      sub_10006AD90(a7 + 632, v22 + 632);
      sub_10006AD90(a7 + 672, v22 + 672);
      sub_10006AD90(a7 + 712, v22 + 712);
      sub_10006AD90(a7 + 752, v22 + 752);
      v9 = a7 + 792;
      v10 = v22 + 792;
LABEL_25:
      sub_10006AD90(v9, v10);
      sub_10007E094();

      break;
    default:

      result = sub_10007E094();
      break;
  }

  return result;
}

uint64_t sub_10006AD90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10006ADF8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_100074828(v12, v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      v14 = a1(v10);
      if (v3)
      {
        return sub_100074890(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      }

      if (v14)
      {
        break;
      }

      sub_100074890(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1000748F0(v10, v18, type metadata accessor for CRLSELibraryViewModelItemNode);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_10006AFC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10006DF60(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1000B4658, &unk_10008ADA0, type metadata accessor for CRLSELibraryViewModelItemNode);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10006B114(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_10007E854();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10001FF68(&unk_1000B44D0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10006B218(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10007E904();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_10007E904();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100061130();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10007456C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10006B308@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v49 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001FF68(&qword_1000B2930);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v15 = __chkstk_darwin(v14 - 8);
  v42 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - v18;
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  v22 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_libraryNode;
  swift_beginAccess();
  v41 = v1;
  sub_100023A78(v1 + v22, v13, &qword_1000B2930);
  v23 = *(v3 + 48);
  if (v23(v13, 1, v2))
  {
    sub_100023AE0(v13, &qword_1000B2930);
    return (*(v3 + 56))(v43, 1, 1, v2);
  }

  else
  {
    v47 = v23;
    v48 = v3 + 48;
    v44 = v3;
    sub_100074828(v13, v19, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_100023AE0(v13, &qword_1000B2930);
    sub_1000748F0(v19, v21, type metadata accessor for CRLSELibraryViewModel.Item);
    v40 = v21;
    sub_100074828(v21, v42, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_10001FF68(&qword_1000B4660);
    v25 = *(v45 + 72);
    v26 = *(v45 + 80);
    v45 = v2;
    v27 = (v26 + 32) & ~v26;
    v39 = swift_allocObject();
    v28 = v39 + v27;
    v29 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards;
    v30 = v41;
    swift_beginAccess();
    sub_100023A78(v30 + v29, v28, &qword_1000B2930);
    v31 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_recents;
    swift_beginAccess();
    sub_100023A78(v30 + v31, v28 + v25, &qword_1000B2930);
    sub_10006B9D0(v28 + 2 * v25);
    v32 = v45;
    sub_10006B9D8(v28 + 3 * v25);
    v33 = &_swiftEmptyArrayStorage;
    v34 = 4;
    v41 = v28;
    do
    {
      sub_100023A78(v28, v11, &qword_1000B2930);
      sub_100074958(v11, v8, &qword_1000B2930);
      if (v47(v8, 1, v32) == 1)
      {
        sub_100023AE0(v8, &qword_1000B2930);
      }

      else
      {
        sub_1000748F0(v8, v49, type metadata accessor for CRLSELibraryViewModelItemNode);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_10006DF60(0, v33[2] + 1, 1, v33, &qword_1000B4658, &unk_10008ADA0, type metadata accessor for CRLSELibraryViewModelItemNode);
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = sub_10006DF60(v35 > 1, v36 + 1, 1, v33, &qword_1000B4658, &unk_10008ADA0, type metadata accessor for CRLSELibraryViewModelItemNode);
        }

        v33[2] = v36 + 1;
        sub_1000748F0(v49, v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, type metadata accessor for CRLSELibraryViewModelItemNode);
        v32 = v45;
      }

      v28 += v25;
      --v34;
    }

    while (v34);
    sub_100074890(v40, type metadata accessor for CRLSELibraryViewModel.Item);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = v43;
    sub_1000748F0(v42, v43, type metadata accessor for CRLSELibraryViewModel.Item);
    *(v37 + *(v32 + 20)) = v33;
    return (*(v44 + 56))(v37, 0, 1, v32);
  }
}

uint64_t sub_10006B9E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v68) = a1;
  v3 = v2;
  v62 = a2;
  v59 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v59);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10001FF68(&qword_1000B4250);
  __chkstk_darwin(v64);
  v6 = &v57 - v5;
  v65 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v65);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v63 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v13 = __chkstk_darwin(v12 - 8);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = __chkstk_darwin(v15);
  v66 = &v57 - v19;
  __chkstk_darwin(v18);
  v67 = &v57 - v20;
  v21 = sub_10001FF68(&qword_1000B2930);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_libraryNode;
  swift_beginAccess();
  v25 = v3 + v24;
  v26 = v63;
  sub_100023A78(v25, v23, &qword_1000B2930);
  if ((*(v26 + 48))(v23, 1, v9))
  {
    sub_100023AE0(v23, &qword_1000B2930);
    return (*(v26 + 56))(v62, 1, 1, v9);
  }

  v69 = v17;
  v58 = v9;
  v28 = *&v23[*(v9 + 20)];

  sub_100023AE0(v23, &qword_1000B2930);
  v29 = sub_10001FF68(&unk_1000B4240);
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v67;
  v33 = v68;
  v68 = v29;
  v31(v67, v33, 5);
  result = sub_1000748F0(v32, v66, type metadata accessor for CRLSELibraryViewModel.Filter);
  v34 = v64;
  v67 = *(v28 + 16);
  if (v67)
  {
    v35 = 0;
    v36 = (v30 + 48);
    while (1)
    {
      if (v35 >= *(v28 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100074828(v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v35, v11, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v11, v8, type metadata accessor for CRLSELibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_100074890(v8, type metadata accessor for CRLSELibraryViewModel.Item);
LABEL_6:
      ++v35;
      result = sub_100074890(v11, type metadata accessor for CRLSELibraryViewModelItemNode);
      if (v67 == v35)
      {
        goto LABEL_35;
      }
    }

    v37 = v69;
    sub_1000748F0(v8, v69, type metadata accessor for CRLSELibraryViewModel.Filter);
    v38 = *(v34 + 48);
    sub_100074828(v37, v6, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_100074828(v66, &v6[v38], type metadata accessor for CRLSELibraryViewModel.Filter);
    v39 = *v36;
    v40 = (*v36)(v6, 5, v68);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        if (v39(&v6[v38], 5, v68) == 3)
        {
          goto LABEL_38;
        }
      }

      else if (v40 == 4)
      {
        if (v39(&v6[v38], 5, v68) == 4)
        {
          goto LABEL_38;
        }
      }

      else if (v39(&v6[v38], 5, v68) == 5)
      {
        goto LABEL_38;
      }
    }

    else if (v40)
    {
      if (v40 == 1)
      {
        if (v39(&v6[v38], 5, v68) == 1)
        {
          goto LABEL_38;
        }
      }

      else if (v39(&v6[v38], 5, v68) == 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v41 = v61;
      sub_100074828(v6, v61, type metadata accessor for CRLSELibraryViewModel.Filter);
      if (!v39(&v6[v38], 5, v68))
      {
        v43 = &v6[v38];
        v44 = v60;
        sub_1000748F0(v43, v60, type metadata accessor for CRLSELibraryViewModel.Folder);
        if (sub_10007DE74())
        {
          if (v45 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v46 = *(v41 + v45), v47 = *(v41 + v45 + 8), v48 = (v44 + v45), v46 == *v48) && v47 == v48[1] || (sub_10007EAA4())
          {
            if (v49 = *(v59 + 20), v50 = *(v41 + v49), v51 = *(v41 + v49 + 8), v52 = (v44 + v49), v50 == *v52) && v51 == v52[1] || (sub_10007EAA4())
            {
              sub_100074890(v44, type metadata accessor for CRLSELibraryViewModel.Folder);
              sub_100074890(v41, type metadata accessor for CRLSELibraryViewModel.Folder);
LABEL_38:
              sub_100074890(v6, type metadata accessor for CRLSELibraryViewModel.Filter);
              sub_100074890(v69, type metadata accessor for CRLSELibraryViewModel.Filter);
              sub_100074890(v66, type metadata accessor for CRLSELibraryViewModel.Filter);

              v56 = v62;
              sub_1000748F0(v11, v62, type metadata accessor for CRLSELibraryViewModelItemNode);
              v53 = *(v26 + 56);
              v54 = v56;
              v55 = 0;
              return v53(v54, v55, 1, v58);
            }
          }
        }

        sub_100074890(v44, type metadata accessor for CRLSELibraryViewModel.Folder);
        sub_100074890(v41, type metadata accessor for CRLSELibraryViewModel.Folder);
        sub_100074890(v6, type metadata accessor for CRLSELibraryViewModel.Filter);
        v42 = v69;
        goto LABEL_26;
      }

      sub_100074890(v41, type metadata accessor for CRLSELibraryViewModel.Folder);
    }

    sub_100023AE0(v6, &qword_1000B4250);
    v42 = v69;
LABEL_26:
    sub_100074890(v42, type metadata accessor for CRLSELibraryViewModel.Filter);
    v34 = v64;
    goto LABEL_6;
  }

LABEL_35:
  sub_100074890(v66, type metadata accessor for CRLSELibraryViewModel.Filter);

  v53 = *(v26 + 56);
  v54 = v62;
  v55 = 1;
  return v53(v54, v55, 1, v58);
}

uint64_t sub_10006C27C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v3 = *(v2 - 8);
  v4 = sub_10001FF68(&qword_1000B2930);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  v10 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards;
  swift_beginAccess();
  sub_100023A78(v1 + v10, v9, &qword_1000B2930);
  v11 = *(v3 + 48);
  if (v11(v9, 1, v2))
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v12 = *&v9[*(v2 + 20)];
  }

  sub_100023AE0(v9, &qword_1000B2930);
  v33 = v12;

  sub_10006AFC4(v13);
  v14 = v33;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_100074774(v14);
  }

  v15 = v14[2];
  v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31 = v14 + v29;
  v32 = v15;
  sub_10006E13C(&v31, sub_100070AF0, sub_10006EB4C);
  v28[1] = 0;
  v16 = sub_10006B910();
  v18 = v17;
  if (!v11(v17, 1, v2))
  {
    *&v18[*(v2 + 20)] = v14;
  }

  (v16)(&v31, 0);
  v19 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_recents;
  swift_beginAccess();
  sub_100023A78(v1 + v19, v7, &qword_1000B2930);
  if (v11(v7, 1, v2))
  {
    v20 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v20 = *&v7[*(v2 + 20)];
  }

  sub_100023AE0(v7, &qword_1000B2930);
  v30 = v20;

  sub_10006AFC4(v21);
  v22 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_100074774(v22);
  }

  v23 = v22[2];
  v31 = v22 + v29;
  v32 = v23;
  sub_10006E13C(&v31, sub_10006F3CC, sub_10006E278);
  v24 = sub_10006B970();
  v26 = v25;
  if (!v11(v25, 1, v2))
  {
    *&v26[*(v2 + 20)] = v22;
  }

  return (v24)(&v31, 0);
}

BOOL sub_10006C640(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v46 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v46);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v7 = __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v42 - v10;
  v12 = sub_10001FF68(&unk_1000B2A00);
  v13 = __chkstk_darwin(v12 - 8);
  v44 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10007DE44();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v43 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v47 = v42 - v21;
  sub_100074828(a1, v11, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v25 = sub_10001FF68(&qword_1000B2A20);

    sub_100074958(&v11[*(v25 + 64)], v16, &unk_1000B2A00);
    v26 = sub_10007DEB4();
    (*(*(v26 - 8) + 8))(v11, v26);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000748F0(v11, v5, type metadata accessor for CRLSELibraryViewModel.Board);
      sub_100023A78(&v5[*(v46 + 32)], v16, &unk_1000B2A00);
      v23 = type metadata accessor for CRLSELibraryViewModel.Board;
      v24 = v5;
    }

    else
    {
      (*(v18 + 56))(v16, 1, 1, v17);
      v23 = type metadata accessor for CRLSELibraryViewModel.Item;
      v24 = v11;
    }

    sub_100074890(v24, v23);
  }

  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    sub_100023AE0(v16, &unk_1000B2A00);
    return 0;
  }

  else
  {
    v42[1] = v2;
    v29 = v16;
    v30 = *(v18 + 32);
    v30(v47, v29, v17);
    sub_100074828(v45, v9, type metadata accessor for CRLSELibraryViewModel.Item);
    v31 = swift_getEnumCaseMultiPayload();
    if (v31 == 3)
    {
      v35 = sub_10001FF68(&qword_1000B2A20);

      v36 = &v9[*(v35 + 64)];
      v32 = v44;
      sub_100074958(v36, v44, &unk_1000B2A00);
      v37 = sub_10007DEB4();
      (*(*(v37 - 8) + 8))(v9, v37);
    }

    else
    {
      if (v31 == 2)
      {
        sub_1000748F0(v9, v5, type metadata accessor for CRLSELibraryViewModel.Board);
        v32 = v44;
        sub_100023A78(&v5[*(v46 + 32)], v44, &unk_1000B2A00);
        v33 = type metadata accessor for CRLSELibraryViewModel.Board;
        v34 = v5;
      }

      else
      {
        v32 = v44;
        (*(v18 + 56))(v44, 1, 1, v17);
        v33 = type metadata accessor for CRLSELibraryViewModel.Item;
        v34 = v9;
      }

      sub_100074890(v34, v33);
    }

    if (v27(v32, 1, v17) == 1)
    {
      (*(v18 + 8))(v47, v17);
      sub_100023AE0(v32, &unk_1000B2A00);
      return 0;
    }

    else
    {
      v38 = v43;
      v30(v43, v32, v17);
      v39 = v47;
      v40 = sub_10007DE24();
      v41 = *(v18 + 8);
      v41(v38, v17);
      v41(v39, v17);
      return v40 == 1;
    }
  }
}

uint64_t sub_10006CC5C(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v80 = a2;
  v73 = sub_10001FF68(&qword_1000B25C0);
  __chkstk_darwin(v73);
  v4 = &v68 - v3;
  v5 = sub_10001FF68(&qword_1000B2210);
  v6 = __chkstk_darwin(v5 - 8);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = &v68 - v8;
  v9 = sub_10007DEB4();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = __chkstk_darwin(v9);
  v69 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = &v68 - v12;
  v13 = type metadata accessor for CRLSEBoardIdentifier(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001FF68(&qword_1000B25C8);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_10001FF68(&qword_1000B2208);
  v20 = __chkstk_darwin(v19 - 8);
  v72 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v68 - v22;
  v24 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v25 = __chkstk_darwin(v24);
  v77 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v68 - v27;
  v29 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v29 - 8);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  sub_100074828(a1, v28, type metadata accessor for CRLSELibraryViewModel.Item);
  v78 = v24;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100074890(v28, type metadata accessor for CRLSELibraryViewModel.Item);
    v36 = v81;
    v39 = v4;
    goto LABEL_10;
  }

  v68 = v4;
  sub_1000748F0(v28, v31, type metadata accessor for CRLSELibraryViewModel.Board);
  sub_100074828(v31, v23, type metadata accessor for CRLSEBoardIdentifier);
  (*(v14 + 56))(v23, 0, 1, v13);
  v32 = *(v16 + 48);
  sub_100023A78(v23, v18, &qword_1000B2208);
  sub_100023A78(v80, &v18[v32], &qword_1000B2208);
  v33 = *(v14 + 48);
  v34 = v18;
  if (v33(v18, 1, v13) != 1)
  {
    v40 = v72;
    sub_100023A78(v18, v72, &qword_1000B2208);
    v41 = v33(&v18[v32], 1, v13);
    v36 = v81;
    if (v41 != 1)
    {
      v58 = &v18[v32];
      v59 = v70;
      sub_1000748F0(v58, v70, type metadata accessor for CRLSEBoardIdentifier);
      if (sub_10007DE74())
      {
        v60 = *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20);
        v61 = *(v40 + v60);
        v62 = *(v40 + v60 + 8);
        v63 = (v59 + v60);
        v39 = v68;
        if (v61 == *v63 && v62 == v63[1])
        {
          sub_100023AE0(v23, &qword_1000B2208);
          sub_100074890(v31, type metadata accessor for CRLSELibraryViewModel.Board);
          sub_100074890(v59, type metadata accessor for CRLSEBoardIdentifier);
          sub_100074890(v40, type metadata accessor for CRLSEBoardIdentifier);
          v38 = v34;
          v37 = &qword_1000B2208;
          goto LABEL_23;
        }

        v67 = sub_10007EAA4();
        sub_100023AE0(v23, &qword_1000B2208);
        sub_100074890(v31, type metadata accessor for CRLSELibraryViewModel.Board);
        sub_100074890(v59, type metadata accessor for CRLSEBoardIdentifier);
        sub_100074890(v40, type metadata accessor for CRLSEBoardIdentifier);
        v36 = v81;
        sub_100023AE0(v34, &qword_1000B2208);
        if (v67)
        {
          return 1;
        }

LABEL_10:
        v44 = v77;
        sub_100074828(v79, v77, type metadata accessor for CRLSELibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v45 = sub_10001FF68(&qword_1000B2A20);

          v46 = *(v45 + 64);
          v47 = v75;
          v48 = v36;
          v49 = v36;
          v50 = v76;
          v79 = *(v75 + 32);
          v79(v48, v44, v76);
          sub_100023AE0(v44 + v46, &unk_1000B2A00);
          v51 = v74;
          (*(v47 + 16))(v74, v49, v50);
          (*(v47 + 56))(v51, 0, 1, v50);
          v52 = *(type metadata accessor for CRLSEBoard(0) + 24);
          v53 = *(v73 + 48);
          sub_100023A78(v51, v39, &qword_1000B2210);
          sub_100023A78(v80 + v52, v39 + v53, &qword_1000B2210);
          v54 = *(v47 + 48);
          if (v54(v39, 1, v50) == 1)
          {
            sub_100023AE0(v51, &qword_1000B2210);
            (*(v47 + 8))(v49, v50);
            if (v54(v39 + v53, 1, v50) == 1)
            {
              v37 = &qword_1000B2210;
              v38 = v39;
              goto LABEL_23;
            }

            goto LABEL_17;
          }

          v55 = v71;
          sub_100023A78(v39, v71, &qword_1000B2210);
          if (v54(v39 + v53, 1, v50) == 1)
          {
            sub_100023AE0(v51, &qword_1000B2210);
            v56 = *(v47 + 8);
            v56(v81, v50);
            v56(v55, v50);
LABEL_17:
            sub_100023AE0(v39, &qword_1000B25C0);
            return 0;
          }

          v64 = v69;
          v79(v69, v39 + v53, v50);
          sub_10006DCD0();
          v65 = sub_10007E3F4();
          v66 = *(v47 + 8);
          v66(v64, v50);
          sub_100023AE0(v51, &qword_1000B2210);
          v66(v81, v50);
          v66(v55, v50);
          sub_100023AE0(v39, &qword_1000B2210);
          if (v65)
          {
            return 1;
          }
        }

        else
        {
          sub_100074890(v44, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        return 0;
      }

      sub_100023AE0(v23, &qword_1000B2208);
      sub_100074890(v31, type metadata accessor for CRLSELibraryViewModel.Board);
      sub_100074890(v59, type metadata accessor for CRLSEBoardIdentifier);
      sub_100074890(v40, type metadata accessor for CRLSEBoardIdentifier);
      v43 = v34;
      v42 = &qword_1000B2208;
LABEL_9:
      sub_100023AE0(v43, v42);
      v39 = v68;
      goto LABEL_10;
    }

    sub_100023AE0(v23, &qword_1000B2208);
    sub_100074890(v31, type metadata accessor for CRLSELibraryViewModel.Board);
    sub_100074890(v40, type metadata accessor for CRLSEBoardIdentifier);
LABEL_8:
    v42 = &qword_1000B25C8;
    v43 = v18;
    goto LABEL_9;
  }

  sub_100023AE0(v23, &qword_1000B2208);
  sub_100074890(v31, type metadata accessor for CRLSELibraryViewModel.Board);
  v35 = v33(&v18[v32], 1, v13);
  v36 = v81;
  if (v35 != 1)
  {
    goto LABEL_8;
  }

  v37 = &qword_1000B2208;
  v38 = v18;
LABEL_23:
  sub_100023AE0(v38, v37);
  return 1;
}

uint64_t sub_10006D794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v4 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CRLSEBoard(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001FF68(&qword_1000B2930);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards;
  swift_beginAccess();
  sub_100023A78(v2 + v14, v13, &qword_1000B2930);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_100023AE0(v13, &qword_1000B2930);
    v15 = *(v5 + 56);
    v16 = a2;
    return v15(v16, 1, 1, v4);
  }

  v17 = *&v13[*(v4 + 20)];

  sub_100023AE0(v13, &qword_1000B2930);
  result = sub_100074828(v22, v10, type metadata accessor for CRLSEBoard);
  v19 = *(v17 + 16);
  v20 = a2;
  if (!v19)
  {
LABEL_8:
    sub_100074890(v10, type metadata accessor for CRLSEBoard);

    v15 = *(v5 + 56);
    v16 = v20;
    return v15(v16, 1, 1, v4);
  }

  v21 = 0;
  while (v21 < *(v17 + 16))
  {
    sub_100074828(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, type metadata accessor for CRLSELibraryViewModelItemNode);
    if (sub_10006CC5C(v7, v10))
    {
      sub_100074890(v10, type metadata accessor for CRLSEBoard);

      sub_1000748F0(v7, v20, type metadata accessor for CRLSELibraryViewModelItemNode);
      return (*(v5 + 56))(v20, 0, 1, v4);
    }

    ++v21;
    result = sub_100074890(v7, type metadata accessor for CRLSELibraryViewModelItemNode);
    if (v19 == v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006DAD4()
{
  sub_100023AE0(v0 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_libraryNode, &qword_1000B2930);
  sub_100023AE0(v0 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_allBoards, &qword_1000B2930);
  sub_100023AE0(v0 + OBJC_IVAR____TtC24FreeformSharingExtension12CRLSELibrary_recents, &qword_1000B2930);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLSELibrary()
{
  result = qword_1000B4520;
  if (!qword_1000B4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006DBE4()
{
  sub_10006DC78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006DC78()
{
  if (!qword_1000B4530)
  {
    type metadata accessor for CRLSELibraryViewModelItemNode(255);
    v0 = sub_10007E714();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B4530);
    }
  }
}

unint64_t sub_10006DCD0()
{
  result = qword_1000B25D0;
  if (!qword_1000B25D0)
  {
    sub_10007DEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B25D0);
  }

  return result;
}

char *sub_10006DD28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001FF68(&unk_1000B4470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006DE34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001FF68(&qword_1000B4650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10006DF60(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001FF68(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_10006E13C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_10007EA64(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLSELibraryViewModelItemNode(0);
        v10 = sub_10007E574();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for CRLSELibraryViewModelItemNode(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_10006E278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v74 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v74);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = __chkstk_darwin(v88);
  v86 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  v13 = sub_10001FF68(&unk_1000B2A00);
  v14 = __chkstk_darwin(v13 - 8);
  v83 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v63 - v16;
  v18 = sub_10007DE44();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v79 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v63 - v22;
  v78 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v23 = __chkstk_darwin(v78);
  v77 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v90 = &v63 - v26;
  result = __chkstk_darwin(v25);
  v89 = &v63 - v29;
  v65 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v28 + 72);
    v70 = v86 + 8;
    v71 = v12 + 8;
    v72 = (v19 + 56);
    v87 = (v19 + 48);
    v84 = (v19 + 32);
    v81 = (v19 + 8);
    v32 = v30 + v31 * (a3 - 1);
    v75 = -v31;
    v76 = v30;
    v33 = a1 - a3;
    v64 = v31;
    v34 = v30 + v31 * a3;
    v82 = v17;
    v80 = v12;
    while (2)
    {
      v69 = a3;
      v66 = v34;
      v67 = v33;
      v68 = v32;
      while (1)
      {
        v36 = v89;
        sub_100074828(v34, v89, type metadata accessor for CRLSELibraryViewModelItemNode);
        sub_100074828(v32, v90, type metadata accessor for CRLSELibraryViewModelItemNode);
        sub_100074828(v36, v12, type metadata accessor for CRLSELibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 3)
        {
          v41 = sub_10001FF68(&qword_1000B2A20);

          sub_100074958(&v12[*(v41 + 64)], v17, &unk_1000B2A00);
          v42 = sub_10007DEB4();
          (*(*(v42 - 8) + 8))(v12, v42);
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            v38 = v73;
            sub_1000748F0(v12, v73, type metadata accessor for CRLSELibraryViewModel.Board);
            sub_100023A78(v38 + *(v74 + 32), v17, &unk_1000B2A00);
            v39 = type metadata accessor for CRLSELibraryViewModel.Board;
            v40 = v38;
          }

          else
          {
            (*v72)(v17, 1, 1, v18);
            v39 = type metadata accessor for CRLSELibraryViewModel.Item;
            v40 = v12;
          }

          sub_100074890(v40, v39);
        }

        v43 = *v87;
        if ((*v87)(v17, 1, v18) == 1)
        {
          break;
        }

        v44 = *v84;
        (*v84)(v85, v17, v18);
        sub_100074828(v90, v86, type metadata accessor for CRLSELibraryViewModel.Item);
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 == 3)
        {
          v51 = sub_10001FF68(&qword_1000B2A20);

          v52 = *(v51 + 64);
          v53 = v86;
          v54 = v83;
          sub_100074958(v86 + v52, v83, &unk_1000B2A00);
          v55 = sub_10007DEB4();
          v56 = v53;
          v50 = v54;
          (*(*(v55 - 8) + 8))(v56, v55);
        }

        else
        {
          if (v45 == 2)
          {
            v46 = v73;
            sub_1000748F0(v86, v73, type metadata accessor for CRLSELibraryViewModel.Board);
            v47 = v83;
            sub_100023A78(v46 + *(v74 + 32), v83, &unk_1000B2A00);
            v48 = type metadata accessor for CRLSELibraryViewModel.Board;
            v49 = v46;
            v50 = v47;
          }

          else
          {
            v50 = v83;
            (*v72)(v83, 1, 1, v18);
            v48 = type metadata accessor for CRLSELibraryViewModel.Item;
            v49 = v86;
          }

          sub_100074890(v49, v48);
        }

        if (v43(v50, 1, v18) == 1)
        {
          (*v81)(v85, v18);
          v35 = v50;
          v12 = v80;
          v17 = v82;
          goto LABEL_5;
        }

        v57 = v79;
        v44(v79, v50, v18);
        v58 = v85;
        v59 = sub_10007DE24();
        v60 = *v81;
        (*v81)(v57, v18);
        v60(v58, v18);
        sub_100074890(v90, type metadata accessor for CRLSELibraryViewModelItemNode);
        result = sub_100074890(v89, type metadata accessor for CRLSELibraryViewModelItemNode);
        v12 = v80;
        v17 = v82;
        if (v59 != 1)
        {
          goto LABEL_6;
        }

        if (!v76)
        {
          __break(1u);
          return result;
        }

        v61 = v77;
        sub_1000748F0(v34, v77, type metadata accessor for CRLSELibraryViewModelItemNode);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1000748F0(v61, v32, type metadata accessor for CRLSELibraryViewModelItemNode);
        v32 += v75;
        v34 += v75;
        if (__CFADD__(v33++, 1))
        {
          goto LABEL_6;
        }
      }

      v35 = v17;
LABEL_5:
      sub_100023AE0(v35, &unk_1000B2A00);
      sub_100074890(v90, type metadata accessor for CRLSELibraryViewModelItemNode);
      result = sub_100074890(v89, type metadata accessor for CRLSELibraryViewModelItemNode);
LABEL_6:
      a3 = v69 + 1;
      v32 = v68 + v64;
      v33 = v67 - 1;
      v34 = v66 + v64;
      if (v69 + 1 == v65)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_10006EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v77 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v77);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v13 = __chkstk_darwin(v84);
  v83 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  v81 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v17 = __chkstk_darwin(v81);
  v80 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v89 = &v66 - v20;
  result = __chkstk_darwin(v19);
  v24 = &v66 - v23;
  v68 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v73 = "Recently Deleted";
    v27 = v25 + v26 * (a3 - 1);
    v78 = -v26;
    v79 = v25;
    v28 = a1 - a3;
    v67 = v26;
    v29 = v25 + v26 * a3;
    v74 = v12;
    v75 = v9;
    v76 = v16;
    v82 = &v66 - v23;
LABEL_5:
    v71 = v27;
    v72 = a3;
    v69 = v29;
    v70 = v28;
    v30 = v28;
    while (1)
    {
      sub_100074828(v29, v24, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v27, v89, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v24, v16, type metadata accessor for CRLSELibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_1000748F0(v16, v9, type metadata accessor for CRLSELibraryViewModel.Board);
          v34 = &v9[*(v77 + 24)];
          v33 = *v34;
          v32 = v34[1];

          sub_100074890(v9, type metadata accessor for CRLSELibraryViewModel.Board);
        }

        else
        {
          v36 = sub_10001FF68(&qword_1000B2A20);
          v37 = &v16[*(v36 + 48)];
          v33 = *v37;
          v32 = v37[1];
          sub_100023AE0(&v16[*(v36 + 64)], &unk_1000B2A00);
          v38 = sub_10007DEB4();
          (*(*(v38 - 8) + 8))(v16, v38);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_1000748F0(v16, v12, type metadata accessor for CRLSELibraryViewModel.Filter);
        v33 = sub_100018B58();
        v32 = v35;
        sub_100074890(v12, type metadata accessor for CRLSELibraryViewModel.Filter);
      }

      else if (*v16)
      {
        v32 = 0xE700000000000000;
        v33 = 0x737265646C6F46;
      }

      else
      {
        type metadata accessor for CRLSEExtensionContextManager();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        v41 = sub_10007E404();
        v42 = sub_10007E404();
        v43 = sub_10007E404();
        v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

        v12 = v74;
        v33 = sub_10007E444();
        v32 = v45;

        v9 = v75;
      }

      v87 = v33;
      v88 = v32;
      sub_100074828(v89, v83, type metadata accessor for CRLSELibraryViewModel.Item);
      v46 = swift_getEnumCaseMultiPayload();
      if (v46 > 1)
      {
        if (v46 == 2)
        {
          sub_1000748F0(v83, v9, type metadata accessor for CRLSELibraryViewModel.Board);
          v49 = &v9[*(v77 + 24)];
          v48 = *v49;
          v47 = v49[1];

          sub_100074890(v9, type metadata accessor for CRLSELibraryViewModel.Board);
        }

        else
        {
          v51 = sub_10001FF68(&qword_1000B2A20);
          v52 = v83;
          v53 = &v83[*(v51 + 48)];
          v48 = *v53;
          v47 = v53[1];
          sub_100023AE0(&v83[*(v51 + 64)], &unk_1000B2A00);
          v54 = sub_10007DEB4();
          v55 = v52;
          v16 = v76;
          (*(*(v54 - 8) + 8))(v55, v54);
        }
      }

      else if (v46)
      {
        sub_1000748F0(v83, v12, type metadata accessor for CRLSELibraryViewModel.Filter);
        v48 = sub_100018B58();
        v47 = v50;
        sub_100074890(v12, type metadata accessor for CRLSELibraryViewModel.Filter);
      }

      else if (*v83)
      {
        v47 = 0xE700000000000000;
        v48 = 0x737265646C6F46;
      }

      else
      {
        type metadata accessor for CRLSEExtensionContextManager();
        v56 = swift_getObjCClassFromMetadata();
        v57 = [objc_opt_self() bundleForClass:v56];
        v58 = sub_10007E404();
        v59 = sub_10007E404();
        v60 = sub_10007E404();
        v61 = [v57 localizedStringForKey:v58 value:v59 table:v60];

        v9 = v75;
        v12 = v74;
        v48 = sub_10007E444();
        v47 = v62;

        v16 = v76;
      }

      v85 = v48;
      v86 = v47;
      sub_1000610DC();
      v63 = sub_10007E764();

      sub_100074890(v89, type metadata accessor for CRLSELibraryViewModelItemNode);
      v24 = v82;
      result = sub_100074890(v82, type metadata accessor for CRLSELibraryViewModelItemNode);
      if (v63 != -1)
      {
LABEL_4:
        a3 = v72 + 1;
        v27 = v71 + v67;
        v28 = v70 - 1;
        v29 = v69 + v67;
        if (v72 + 1 == v68)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v79)
      {
        break;
      }

      v64 = v80;
      sub_1000748F0(v29, v80, type metadata accessor for CRLSELibraryViewModelItemNode);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000748F0(v64, v27, type metadata accessor for CRLSELibraryViewModelItemNode);
      v27 += v78;
      v29 += v78;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10006F3CC(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v5 = v4;
  v191 = a1;
  v216 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v216);
  v215 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = __chkstk_darwin(v231);
  v11 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v186 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v186 - v16;
  __chkstk_darwin(v15);
  v19 = &v186 - v18;
  v20 = sub_10001FF68(&unk_1000B2A00);
  v21 = __chkstk_darwin(v20 - 8);
  v222 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v223 = &v186 - v24;
  v25 = __chkstk_darwin(v23);
  v196 = &v186 - v26;
  __chkstk_darwin(v25);
  v205 = &v186 - v27;
  v28 = sub_10007DE44();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v220 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v227 = &v186 - v33;
  v34 = __chkstk_darwin(v32);
  v192 = &v186 - v35;
  __chkstk_darwin(v34);
  v204 = &v186 - v36;
  v221 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v207 = *(v221 - 8);
  v37 = __chkstk_darwin(v221);
  v197 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v219 = &v186 - v40;
  v41 = __chkstk_darwin(v39);
  v232 = &v186 - v42;
  v43 = __chkstk_darwin(v41);
  v228 = &v186 - v44;
  v45 = __chkstk_darwin(v43);
  v213 = &v186 - v46;
  v47 = __chkstk_darwin(v45);
  v212 = &v186 - v48;
  v49 = __chkstk_darwin(v47);
  result = __chkstk_darwin(v49);
  v211 = a3;
  if (a3[1] < 1)
  {
    v55 = &_swiftEmptyArrayStorage;
LABEL_132:
    v56 = *v191;
    if (!*v191)
    {
      goto LABEL_172;
    }

    v29 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_166;
    }

    result = v29;
LABEL_135:
    v233 = result;
    v29 = *(result + 16);
    if (v29 >= 2)
    {
      while (*v211)
      {
        v182 = *(result + 16 * v29);
        v183 = result;
        v184 = *(result + 16 * (v29 - 1) + 40);
        sub_100072194(*v211 + *(v207 + 72) * v182, *v211 + *(v207 + 72) * *(result + 16 * (v29 - 1) + 32), *v211 + *(v207 + 72) * v184, v56);
        if (v5)
        {
        }

        if (v184 < v182)
        {
          goto LABEL_159;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v183 = sub_100074474(v183);
        }

        if (v29 - 2 >= *(v183 + 2))
        {
          goto LABEL_160;
        }

        v185 = &v183[16 * v29];
        *v185 = v182;
        *(v185 + 1) = v184;
        v233 = v183;
        sub_1000743E8(v29 - 1);
        result = v233;
        v29 = *(v233 + 16);
        if (v29 <= 1)
        {
        }
      }

      goto LABEL_170;
    }
  }

  v53 = a3[1];
  v187 = &v186 - v51;
  v186 = v52;
  v54 = 0;
  v202 = v19;
  v193 = v19 + 8;
  v189 = v17 + 8;
  v214 = (v29 + 56);
  v229 = (v29 + 32);
  v230 = (v29 + 48);
  v225 = (v29 + 8);
  v210 = v14 + 8;
  v209 = v11 + 8;
  v55 = &_swiftEmptyArrayStorage;
  v190 = a4;
  v226 = v11;
  v224 = v14;
  v203 = v17;
  v56 = v223;
  v57 = v53;
  while (1)
  {
    v58 = v54;
    v198 = v55;
    if (v54 + 1 >= v57)
    {
      v57 = v54 + 1;
      goto LABEL_43;
    }

    v59 = *v211;
    v60 = *(v207 + 72);
    v61 = *v211 + v60 * (v54 + 1);
    v217 = type metadata accessor for CRLSELibraryViewModelItemNode;
    v218 = v61;
    v62 = v187;
    sub_100074828(v61, v187, type metadata accessor for CRLSELibraryViewModelItemNode);
    v206 = v59;
    v63 = v59 + v60 * v58;
    v64 = v186;
    sub_100074828(v63, v186, v217);
    LODWORD(v217) = sub_10006C640(v62, v64);
    if (v5)
    {
      sub_100074890(v64, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074890(v187, type metadata accessor for CRLSELibraryViewModelItemNode);
    }

    v194 = 0;
    v29 = type metadata accessor for CRLSELibraryViewModelItemNode;
    sub_100074890(v64, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = sub_100074890(v187, type metadata accessor for CRLSELibraryViewModelItemNode);
    v188 = v58;
    v65 = v58 + 2;
    v66 = v206 + v60 * (v58 + 2);
    v67 = v60;
    v206 = v60;
    v208 = v57;
    while (v57 != v65)
    {
      v69 = v212;
      sub_100074828(v66, v212, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v218, v213, type metadata accessor for CRLSELibraryViewModelItemNode);
      v70 = v69;
      v71 = v202;
      sub_100074828(v70, v202, type metadata accessor for CRLSELibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        v78 = sub_10001FF68(&qword_1000B2A20);

        v79 = v71 + *(v78 + 64);
        v77 = v205;
        sub_100074958(v79, v205, &unk_1000B2A00);
        v80 = sub_10007DEB4();
        (*(*(v80 - 8) + 8))(v71, v80);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v73 = v215;
          sub_1000748F0(v71, v215, type metadata accessor for CRLSELibraryViewModel.Board);
          v74 = v205;
          sub_100023A78(v73 + *(v216 + 32), v205, &unk_1000B2A00);
          v75 = type metadata accessor for CRLSELibraryViewModel.Board;
          v76 = v73;
          v77 = v74;
        }

        else
        {
          v77 = v205;
          (*v214)(v205, 1, 1, v28);
          v75 = type metadata accessor for CRLSELibraryViewModel.Item;
          v76 = v71;
        }

        sub_100074890(v76, v75);
      }

      v81 = *v230;
      if ((*v230)(v77, 1, v28) != 1)
      {
        v201 = *v229;
        (v201)(v204, v77, v28);
        sub_100074828(v213, v203, type metadata accessor for CRLSELibraryViewModel.Item);
        v82 = swift_getEnumCaseMultiPayload();
        if (v82 == 2)
        {
          v90 = v215;
          sub_1000748F0(v203, v215, type metadata accessor for CRLSELibraryViewModel.Board);
          v91 = v196;
          sub_100023A78(v90 + *(v216 + 32), v196, &unk_1000B2A00);
          v92 = type metadata accessor for CRLSELibraryViewModel.Board;
          v93 = v90;
          v89 = v91;
        }

        else
        {
          if (v82 == 3)
          {
            v83 = sub_10001FF68(&qword_1000B2A20);

            v84 = *(v83 + 64);
            v85 = v203;
            v86 = v196;
            sub_100074958(&v203[v84], v196, &unk_1000B2A00);
            v87 = sub_10007DEB4();
            v88 = v85;
            v89 = v86;
            (*(*(v87 - 8) + 8))(v88, v87);
LABEL_23:
            if (v81(v89, 1, v28) == 1)
            {
              (*v225)(v204, v28);
              sub_100023AE0(v89, &unk_1000B2A00);
              v68 = 0;
            }

            else
            {
              v94 = v192;
              (v201)(v192, v89, v28);
              v95 = v204;
              v201 = sub_10007DE24();
              v96 = *v225;
              (*v225)(v94, v28);
              v96(v95, v28);
              v57 = v208;
              v68 = v201 == 1;
            }

            v67 = v206;
            goto LABEL_8;
          }

          v89 = v196;
          (*v214)(v196, 1, 1, v28);
          v92 = type metadata accessor for CRLSELibraryViewModel.Item;
          v93 = v203;
        }

        sub_100074890(v93, v92);
        goto LABEL_23;
      }

      sub_100023AE0(v77, &unk_1000B2A00);
      v68 = 0;
LABEL_8:
      v29 = type metadata accessor for CRLSELibraryViewModelItemNode;
      sub_100074890(v213, type metadata accessor for CRLSELibraryViewModelItemNode);
      result = sub_100074890(v212, type metadata accessor for CRLSELibraryViewModelItemNode);
      ++v65;
      v66 += v67;
      v218 += v67;
      if ((v217 & 1) != v68)
      {
        v57 = v65 - 1;
        break;
      }
    }

    v5 = v194;
    a4 = v190;
    v58 = v188;
    if ((v217 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (v57 < v188)
    {
      goto LABEL_165;
    }

    if (v188 < v57)
    {
      v97 = v67 * (v57 - 1);
      v98 = v67;
      v99 = v57 * v67;
      v208 = v57;
      v100 = v57;
      v101 = v188;
      v102 = v188 * v98;
      do
      {
        if (v101 != --v100)
        {
          v103 = *v211;
          if (!*v211)
          {
            goto LABEL_169;
          }

          v29 = v103 + v102;
          sub_1000748F0(v103 + v102, v197, type metadata accessor for CRLSELibraryViewModelItemNode);
          if (v102 < v97 || v29 >= v103 + v99)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v102 != v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1000748F0(v197, v103 + v97, type metadata accessor for CRLSELibraryViewModelItemNode);
          v5 = v194;
        }

        ++v101;
        v97 -= v206;
        v99 -= v206;
        v102 += v206;
      }

      while (v101 < v100);
      a4 = v190;
      v14 = v224;
      v57 = v208;
      v58 = v188;
    }

LABEL_43:
    v104 = v211[1];
    if (v57 >= v104)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v57, v58))
    {
      goto LABEL_162;
    }

    if (v57 - v58 >= a4)
    {
LABEL_52:
      v29 = v57;
      if (v57 < v58)
      {
        goto LABEL_161;
      }

      goto LABEL_53;
    }

    if (__OFADD__(v58, a4))
    {
      goto LABEL_163;
    }

    if (v58 + a4 >= v104)
    {
      v29 = v211[1];
    }

    else
    {
      v29 = v58 + a4;
    }

    if (v29 < v58)
    {
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      result = sub_100074474(v29);
      goto LABEL_135;
    }

    if (v57 == v29)
    {
      goto LABEL_52;
    }

    v194 = v5;
    v151 = *v211;
    v152 = *(v207 + 72);
    v153 = *v211 + v152 * (v57 - 1);
    v217 = -v152;
    v188 = v58;
    v154 = (v58 - v57);
    v218 = v151;
    v195 = v152;
    v155 = v151 + v57 * v152;
    v199 = v29;
LABEL_106:
    v208 = v57;
    v200 = v155;
    v201 = v154;
    v206 = v153;
    v157 = v153;
LABEL_107:
    v158 = v228;
    sub_100074828(v155, v228, type metadata accessor for CRLSELibraryViewModelItemNode);
    sub_100074828(v157, v232, type metadata accessor for CRLSELibraryViewModelItemNode);
    sub_100074828(v158, v14, type metadata accessor for CRLSELibraryViewModel.Item);
    v159 = swift_getEnumCaseMultiPayload();
    if (v159 == 3)
    {
      v163 = sub_10001FF68(&qword_1000B2A20);

      sub_100074958(&v14[*(v163 + 64)], v56, &unk_1000B2A00);
      v164 = sub_10007DEB4();
      (*(*(v164 - 8) + 8))(v14, v164);
    }

    else
    {
      if (v159 == 2)
      {
        v160 = v215;
        sub_1000748F0(v14, v215, type metadata accessor for CRLSELibraryViewModel.Board);
        sub_100023A78(v160 + *(v216 + 32), v56, &unk_1000B2A00);
        v161 = type metadata accessor for CRLSELibraryViewModel.Board;
        v162 = v160;
      }

      else
      {
        (*v214)(v56, 1, 1, v28);
        v161 = type metadata accessor for CRLSELibraryViewModel.Item;
        v162 = v14;
      }

      sub_100074890(v162, v161);
    }

    v165 = v226;
    v166 = *v230;
    if ((*v230)(v56, 1, v28) == 1)
    {
      v156 = v56;
      v14 = v224;
      goto LABEL_104;
    }

    v167 = *v229;
    (*v229)(v227, v56, v28);
    sub_100074828(v232, v165, type metadata accessor for CRLSELibraryViewModel.Item);
    v168 = swift_getEnumCaseMultiPayload();
    if (v168 == 3)
    {
      v172 = sub_10001FF68(&qword_1000B2A20);

      v173 = *(v172 + 64);
      v174 = v226;
      v170 = v222;
      sub_100074958(&v226[v173], v222, &unk_1000B2A00);
      v175 = sub_10007DEB4();
      (*(*(v175 - 8) + 8))(v174, v175);
    }

    else
    {
      if (v168 == 2)
      {
        v169 = v165;
        v165 = v215;
        sub_1000748F0(v169, v215, type metadata accessor for CRLSELibraryViewModel.Board);
        v170 = v222;
        sub_100023A78(v165 + *(v216 + 32), v222, &unk_1000B2A00);
        v171 = type metadata accessor for CRLSELibraryViewModel.Board;
      }

      else
      {
        v170 = v222;
        (*v214)(v222, 1, 1, v28);
        v171 = type metadata accessor for CRLSELibraryViewModel.Item;
      }

      sub_100074890(v165, v171);
    }

    if (v166(v170, 1, v28) == 1)
    {
      (*v225)(v227, v28);
      v156 = v170;
      v56 = v223;
      v14 = v224;
LABEL_104:
      sub_100023AE0(v156, &unk_1000B2A00);
      sub_100074890(v232, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074890(v228, type metadata accessor for CRLSELibraryViewModelItemNode);
      goto LABEL_105;
    }

    v176 = v220;
    v167(v220, v170, v28);
    v177 = v227;
    v178 = sub_10007DE24();
    v179 = *v225;
    (*v225)(v176, v28);
    v179(v177, v28);
    sub_100074890(v232, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = sub_100074890(v228, type metadata accessor for CRLSELibraryViewModelItemNode);
    v14 = v224;
    if (v178 == 1)
    {
      break;
    }

    v56 = v223;
LABEL_105:
    v57 = v208 + 1;
    v153 = v206 + v195;
    v154 = v201 - 1;
    v155 = v200 + v195;
    v29 = v199;
    if (v208 + 1 != v199)
    {
      goto LABEL_106;
    }

    v5 = v194;
    v58 = v188;
    if (v199 < v188)
    {
      goto LABEL_161;
    }

LABEL_53:
    result = swift_isUniquelyReferenced_nonNull_native();
    v199 = v29;
    if (result)
    {
      v55 = v198;
    }

    else
    {
      result = sub_10006DE34(0, *(v198 + 2) + 1, 1, v198);
      v55 = result;
    }

    v106 = *(v55 + 2);
    v105 = *(v55 + 3);
    v29 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      result = sub_10006DE34((v105 > 1), v106 + 1, 1, v55);
      v55 = result;
    }

    *(v55 + 2) = v29;
    v107 = &v55[16 * v106];
    v108 = v199;
    *(v107 + 4) = v58;
    *(v107 + 5) = v108;
    v218 = *v191;
    if (!v218)
    {
      goto LABEL_171;
    }

    if (v106)
    {
      while (1)
      {
        v109 = v29 - 1;
        if (v29 >= 4)
        {
          break;
        }

        if (v29 == 3)
        {
          v110 = *(v55 + 4);
          v111 = *(v55 + 5);
          v120 = __OFSUB__(v111, v110);
          v112 = v111 - v110;
          v113 = v120;
LABEL_72:
          if (v113)
          {
            goto LABEL_150;
          }

          v126 = &v55[16 * v29];
          v128 = *v126;
          v127 = *(v126 + 1);
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_153;
          }

          v132 = &v55[16 * v109 + 32];
          v134 = *v132;
          v133 = *(v132 + 1);
          v120 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v120)
          {
            goto LABEL_156;
          }

          if (__OFADD__(v130, v135))
          {
            goto LABEL_157;
          }

          if (v130 + v135 >= v112)
          {
            if (v112 < v135)
            {
              v109 = v29 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v136 = &v55[16 * v29];
        v138 = *v136;
        v137 = *(v136 + 1);
        v120 = __OFSUB__(v137, v138);
        v130 = v137 - v138;
        v131 = v120;
LABEL_86:
        if (v131)
        {
          goto LABEL_152;
        }

        v139 = &v55[16 * v109];
        v141 = *(v139 + 4);
        v140 = *(v139 + 5);
        v120 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v120)
        {
          goto LABEL_155;
        }

        if (v142 < v130)
        {
          goto LABEL_3;
        }

LABEL_93:
        v147 = v109 - 1;
        if (v109 - 1 >= v29)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
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
          goto LABEL_164;
        }

        if (!*v211)
        {
          goto LABEL_168;
        }

        v148 = v55;
        v29 = *&v55[16 * v147 + 32];
        v149 = *&v55[16 * v109 + 40];
        sub_100072194(*v211 + *(v207 + 72) * v29, *v211 + *(v207 + 72) * *&v55[16 * v109 + 32], *v211 + *(v207 + 72) * v149, v218);
        if (v5)
        {
        }

        if (v149 < v29)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v148 = sub_100074474(v148);
        }

        if (v147 >= *(v148 + 2))
        {
          goto LABEL_147;
        }

        v150 = &v148[16 * v147];
        *(v150 + 4) = v29;
        *(v150 + 5) = v149;
        v233 = v148;
        result = sub_1000743E8(v109);
        v55 = v233;
        v29 = *(v233 + 16);
        if (v29 <= 1)
        {
          goto LABEL_3;
        }
      }

      v114 = &v55[16 * v29 + 32];
      v115 = *(v114 - 64);
      v116 = *(v114 - 56);
      v120 = __OFSUB__(v116, v115);
      v117 = v116 - v115;
      if (v120)
      {
        goto LABEL_148;
      }

      v119 = *(v114 - 48);
      v118 = *(v114 - 40);
      v120 = __OFSUB__(v118, v119);
      v112 = v118 - v119;
      v113 = v120;
      if (v120)
      {
        goto LABEL_149;
      }

      v121 = &v55[16 * v29];
      v123 = *v121;
      v122 = *(v121 + 1);
      v120 = __OFSUB__(v122, v123);
      v124 = v122 - v123;
      if (v120)
      {
        goto LABEL_151;
      }

      v120 = __OFADD__(v112, v124);
      v125 = v112 + v124;
      if (v120)
      {
        goto LABEL_154;
      }

      if (v125 >= v117)
      {
        v143 = &v55[16 * v109 + 32];
        v145 = *v143;
        v144 = *(v143 + 1);
        v120 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v120)
        {
          goto LABEL_158;
        }

        if (v112 < v146)
        {
          v109 = v29 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v57 = v211[1];
    v54 = v199;
    a4 = v190;
    if (v199 >= v57)
    {
      goto LABEL_132;
    }
  }

  v56 = v223;
  if (v218)
  {
    v180 = v219;
    sub_1000748F0(v155, v219, type metadata accessor for CRLSELibraryViewModelItemNode);
    swift_arrayInitWithTakeFrontToBack();
    sub_1000748F0(v180, v157, type metadata accessor for CRLSELibraryViewModelItemNode);
    v157 += v217;
    v155 += v217;
    if (__CFADD__(v154++, 1))
    {
      goto LABEL_105;
    }

    goto LABEL_107;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_100070AF0(uint64_t (**a1)(uint64_t a1), uint64_t a2, uint64_t (*a3)(uint64_t a1), unint64_t a4)
{
  v5 = v4;
  v195 = a1;
  v215 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v215);
  v214 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v213 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v222 = &v190 - v16;
  v17 = __chkstk_darwin(v15);
  v207 = &v190 - v18;
  __chkstk_darwin(v17);
  v206 = &v190 - v19;
  v219 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  v203 = *(v219 - 8);
  v20 = __chkstk_darwin(v219);
  v196 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v218 = &v190 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v190 - v25;
  v27 = __chkstk_darwin(v24);
  v221 = &v190 - v28;
  v29 = __chkstk_darwin(v27);
  v211 = &v190 - v30;
  v31 = __chkstk_darwin(v29);
  v205 = &v190 - v32;
  v33 = __chkstk_darwin(v31);
  v191 = &v190 - v34;
  result = __chkstk_darwin(v33);
  v190 = &v190 - v36;
  v204 = a3;
  if (*(a3 + 1) < 1)
  {
    v39 = &_swiftEmptyArrayStorage;
LABEL_139:
    a3 = *v195;
    if (!*v195)
    {
      goto LABEL_178;
    }

    a4 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_171;
    }

    result = a4;
LABEL_142:
    v227 = result;
    a4 = *(result + 16);
    if (a4 < 2)
    {
    }

    while (*v204)
    {
      v186 = *(result + 16 * a4);
      v187 = result;
      v188 = *(result + 16 * (a4 - 1) + 40);
      sub_10007331C(*v204 + *(v203 + 72) * v186, *v204 + *(v203 + 72) * *(result + 16 * (a4 - 1) + 32), (*v204 + *(v203 + 72) * v188), a3);
      if (v5)
      {
      }

      if (v188 < v186)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v187 = sub_100074474(v187);
      }

      if (a4 - 2 >= *(v187 + 2))
      {
        goto LABEL_166;
      }

      v189 = &v187[16 * a4];
      *v189 = v186;
      *(v189 + 1) = v188;
      v227 = v187;
      sub_1000743E8(a4 - 1);
      result = v227;
      a4 = *(v227 + 16);
      if (a4 <= 1)
      {
      }
    }

LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v37 = *(a3 + 1);
  v38 = 0;
  v39 = &_swiftEmptyArrayStorage;
  v208 = "Recently Deleted";
  v194 = a4;
  v212 = v11;
  v209 = v14;
  v220 = v26;
  while (2)
  {
    v210 = v37;
    v198 = v39;
    if (v38 + 1 >= v37)
    {
      v88 = (v38 + 1);
      goto LABEL_44;
    }

    v192 = v5;
    v40 = *v204;
    v201 = v40;
    v41 = *(v203 + 72);
    v42 = v40 + v41 * (v38 + 1);
    v43 = v190;
    sub_100074828(v42, v190, type metadata accessor for CRLSELibraryViewModelItemNode);
    v44 = v191;
    sub_100074828(v40 + v41 * v38, v191, type metadata accessor for CRLSELibraryViewModelItemNode);
    v225 = sub_1000187F4();
    v226 = v45;
    v223 = sub_1000187F4();
    v224 = v46;
    v202 = sub_1000610DC();
    v216 = sub_10007E764();

    a3 = type metadata accessor for CRLSELibraryViewModelItemNode;
    sub_100074890(v44, type metadata accessor for CRLSELibraryViewModelItemNode);
    result = sub_100074890(v43, type metadata accessor for CRLSELibraryViewModelItemNode);
    v193 = v38;
    v47 = (v38 + 2);
    v217 = v41;
    v48 = v201 + v41 * (v38 + 2);
    while (v210 != v47)
    {
      v57 = v205;
      sub_100074828(v48, v205, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v42, v211, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_100074828(v57, v206, type metadata accessor for CRLSELibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v61 = v214;
          sub_1000748F0(v206, v214, type metadata accessor for CRLSELibraryViewModel.Board);
          v62 = (v61 + *(v215 + 24));
          v60 = *v62;
          v59 = v62[1];

          v63 = type metadata accessor for CRLSELibraryViewModel.Board;
LABEL_17:
          sub_100074890(v61, v63);
          goto LABEL_20;
        }

        v65 = sub_10001FF68(&qword_1000B2A20);
        v66 = v206;
        v67 = &v206[*(v65 + 48)];
        v60 = *v67;
        v59 = v67[1];
        sub_100023AE0(&v206[*(v65 + 64)], &unk_1000B2A00);
        v68 = sub_10007DEB4();
        (*(*(v68 - 8) + 8))(v66, v68);
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v61 = v213;
          sub_1000748F0(v206, v213, type metadata accessor for CRLSELibraryViewModel.Filter);
          v60 = sub_100018B58();
          v59 = v64;
          v63 = type metadata accessor for CRLSELibraryViewModel.Filter;
          goto LABEL_17;
        }

        if (*v206)
        {
          v59 = 0xE700000000000000;
          v60 = 0x737265646C6F46;
        }

        else
        {
          type metadata accessor for CRLSEExtensionContextManager();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v70 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          v71 = sub_10007E404();
          v72 = sub_10007E404();
          v73 = sub_10007E404();
          v74 = [v70 localizedStringForKey:v71 value:v72 table:v73];

          v60 = sub_10007E444();
          v59 = v75;
        }
      }

LABEL_20:
      v225 = v60;
      v226 = v59;
      sub_100074828(v211, v207, type metadata accessor for CRLSELibraryViewModel.Item);
      v76 = swift_getEnumCaseMultiPayload();
      if (v76 <= 1)
      {
        if (!v76)
        {
          if (*v207)
          {
            v53 = 0xE700000000000000;
            v52 = 0x737265646C6F46;
          }

          else
          {
            type metadata accessor for CRLSEExtensionContextManager();
            v81 = swift_getObjCClassFromMetadata();
            v82 = [objc_opt_self() bundleForClass:v81];
            v83 = sub_10007E404();
            v84 = sub_10007E404();
            v85 = sub_10007E404();
            v86 = [v82 localizedStringForKey:v83 value:v84 table:v85];

            v52 = sub_10007E444();
            v53 = v87;
          }

          goto LABEL_8;
        }

        v77 = v213;
        sub_1000748F0(v207, v213, type metadata accessor for CRLSELibraryViewModel.Filter);
        v52 = sub_100018B58();
        v53 = v80;
        v79 = type metadata accessor for CRLSELibraryViewModel.Filter;
        goto LABEL_27;
      }

      if (v76 == 2)
      {
        v77 = v214;
        sub_1000748F0(v207, v214, type metadata accessor for CRLSELibraryViewModel.Board);
        v78 = (v77 + *(v215 + 24));
        v52 = *v78;
        v53 = v78[1];

        v79 = type metadata accessor for CRLSELibraryViewModel.Board;
LABEL_27:
        sub_100074890(v77, v79);
        goto LABEL_8;
      }

      v49 = sub_10001FF68(&qword_1000B2A20);
      v50 = v207;
      v51 = &v207[*(v49 + 48)];
      v52 = *v51;
      v53 = v51[1];
      sub_100023AE0(&v207[*(v49 + 64)], &unk_1000B2A00);
      v54 = sub_10007DEB4();
      (*(*(v54 - 8) + 8))(v50, v54);
LABEL_8:
      v55 = v216 == -1;
      v223 = v52;
      v224 = v53;
      v56 = sub_10007E764();

      a3 = type metadata accessor for CRLSELibraryViewModelItemNode;
      sub_100074890(v211, type metadata accessor for CRLSELibraryViewModelItemNode);
      result = sub_100074890(v205, type metadata accessor for CRLSELibraryViewModelItemNode);
      v47 = (v47 + 1);
      v48 += v217;
      v42 += v217;
      if (((v55 ^ (v56 != -1)) & 1) == 0)
      {
        v210 = (v47 - 1);
        break;
      }
    }

    v26 = v220;
    v5 = v192;
    a4 = v194;
    v38 = v193;
    if (v216 != -1)
    {
LABEL_43:
      v14 = v209;
      v88 = v210;
      goto LABEL_44;
    }

    if (v210 < v193)
    {
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    if (v193 >= v210)
    {
      goto LABEL_43;
    }

    v14 = v209;
    v89 = v217 * (v210 - 1);
    v90 = v210 * v217;
    v91 = v210;
    v92 = v193;
    v93 = v193 * v217;
    do
    {
      v91 = (v91 - 1);
      if (v92 != v91)
      {
        v94 = *v204;
        if (!*v204)
        {
          goto LABEL_176;
        }

        a3 = (v94 + v93);
        sub_1000748F0(v94 + v93, v196, type metadata accessor for CRLSELibraryViewModelItemNode);
        if (v93 < v89 || a3 >= v94 + v90)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v93 != v89)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = sub_1000748F0(v196, v94 + v89, type metadata accessor for CRLSELibraryViewModelItemNode);
        v14 = v209;
      }

      v92 = (v92 + 1);
      v89 -= v217;
      v90 -= v217;
      v93 += v217;
    }

    while (v92 < v91);
    a4 = v194;
    v26 = v220;
    v38 = v193;
    v88 = v210;
LABEL_44:
    v95 = *(v204 + 1);
    if (v88 >= v95)
    {
LABEL_53:
      a3 = v88;
      if (v88 < v38)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v210 = v88;
      v154 = __OFSUB__(v88, v38);
      v96 = v88 - v38;
      if (v154)
      {
        goto LABEL_168;
      }

      if (v96 < a4)
      {
        if (__OFADD__(v38, a4))
        {
          goto LABEL_169;
        }

        if ((v38 + a4) >= v95)
        {
          a3 = v95;
        }

        else
        {
          a3 = (v38 + a4);
        }

        if (a3 >= v38)
        {
          v88 = v210;
          if (v210 == a3)
          {
            goto LABEL_53;
          }

          v192 = v5;
          v97 = *v204;
          v98 = *(v203 + 72);
          v99 = *v204 + v98 * (v210 - 1);
          v216 = -v98;
          v193 = v38;
          v100 = v38 - v210;
          v217 = v97;
          v197 = v98;
          v101 = v97 + v210 * v98;
          v199 = a3;
          while (2)
          {
            v200 = v101;
            v201 = v100;
            v202 = v99;
            v102 = v99;
LABEL_60:
            v103 = v221;
            sub_100074828(v101, v221, type metadata accessor for CRLSELibraryViewModelItemNode);
            sub_100074828(v102, v26, type metadata accessor for CRLSELibraryViewModelItemNode);
            sub_100074828(v103, v222, type metadata accessor for CRLSELibraryViewModel.Item);
            v104 = swift_getEnumCaseMultiPayload();
            if (v104 > 1)
            {
              if (v104 != 2)
              {
                v111 = sub_10001FF68(&qword_1000B2A20);
                v112 = v222;
                v113 = &v222[*(v111 + 48)];
                v106 = *v113;
                v105 = v113[1];
                sub_100023AE0(&v222[*(v111 + 64)], &unk_1000B2A00);
                v114 = sub_10007DEB4();
                (*(*(v114 - 8) + 8))(v112, v114);
                goto LABEL_70;
              }

              v107 = v214;
              sub_1000748F0(v222, v214, type metadata accessor for CRLSELibraryViewModel.Board);
              v108 = (v107 + *(v215 + 24));
              v106 = *v108;
              v105 = v108[1];

              v109 = type metadata accessor for CRLSELibraryViewModel.Board;
            }

            else
            {
              if (!v104)
              {
                if (*v222)
                {
                  v105 = 0xE700000000000000;
                  v106 = 0x737265646C6F46;
                }

                else
                {
                  type metadata accessor for CRLSEExtensionContextManager();
                  v115 = swift_getObjCClassFromMetadata();
                  v116 = [objc_opt_self() bundleForClass:v115];
                  v117 = sub_10007E404();
                  v118 = sub_10007E404();
                  v119 = sub_10007E404();
                  v120 = [v116 localizedStringForKey:v117 value:v118 table:v119];

                  v26 = v220;
                  v106 = sub_10007E444();
                  v105 = v121;

                  v14 = v209;
                }

LABEL_70:
                v225 = v106;
                v226 = v105;
                sub_100074828(v26, v14, type metadata accessor for CRLSELibraryViewModel.Item);
                v122 = swift_getEnumCaseMultiPayload();
                if (v122 > 1)
                {
                  if (v122 != 2)
                  {
                    v129 = sub_10001FF68(&qword_1000B2A20);
                    v130 = &v14[*(v129 + 48)];
                    v124 = *v130;
                    v123 = v130[1];
                    sub_100023AE0(&v14[*(v129 + 64)], &unk_1000B2A00);
                    v131 = sub_10007DEB4();
                    (*(*(v131 - 8) + 8))(v14, v131);
                    goto LABEL_80;
                  }

                  v125 = v214;
                  sub_1000748F0(v14, v214, type metadata accessor for CRLSELibraryViewModel.Board);
                  v126 = (v125 + *(v215 + 24));
                  v124 = *v126;
                  v123 = v126[1];

                  v127 = type metadata accessor for CRLSELibraryViewModel.Board;
                }

                else
                {
                  if (!v122)
                  {
                    if (*v14)
                    {
                      v123 = 0xE700000000000000;
                      v124 = 0x737265646C6F46;
                    }

                    else
                    {
                      type metadata accessor for CRLSEExtensionContextManager();
                      v132 = swift_getObjCClassFromMetadata();
                      v133 = [objc_opt_self() bundleForClass:v132];
                      v134 = sub_10007E404();
                      v135 = sub_10007E404();
                      v136 = sub_10007E404();
                      v137 = [v133 localizedStringForKey:v134 value:v135 table:v136];

                      v14 = v209;
                      v124 = sub_10007E444();
                      v123 = v138;
                    }

LABEL_80:
                    v223 = v124;
                    v224 = v123;
                    sub_1000610DC();
                    a4 = sub_10007E764();

                    v26 = v220;
                    sub_100074890(v220, type metadata accessor for CRLSELibraryViewModelItemNode);
                    result = sub_100074890(v221, type metadata accessor for CRLSELibraryViewModelItemNode);
                    if (a4 != -1)
                    {
                      goto LABEL_58;
                    }

                    if (!v217)
                    {
                      goto LABEL_173;
                    }

                    a4 = v218;
                    sub_1000748F0(v101, v218, type metadata accessor for CRLSELibraryViewModelItemNode);
                    swift_arrayInitWithTakeFrontToBack();
                    sub_1000748F0(a4, v102, type metadata accessor for CRLSELibraryViewModelItemNode);
                    v102 += v216;
                    v101 += v216;
                    if (__CFADD__(v100++, 1))
                    {
LABEL_58:
                      v99 = v202 + v197;
                      v100 = v201 - 1;
                      v101 = v200 + v197;
                      v210 = (v210 + 1);
                      a3 = v199;
                      if (v210 == v199)
                      {
                        v5 = v192;
                        v38 = v193;
                        if (v199 < v193)
                        {
                          goto LABEL_167;
                        }

                        goto LABEL_86;
                      }

                      continue;
                    }

                    goto LABEL_60;
                  }

                  v125 = v213;
                  sub_1000748F0(v14, v213, type metadata accessor for CRLSELibraryViewModel.Filter);
                  v124 = sub_100018B58();
                  v123 = v128;
                  v127 = type metadata accessor for CRLSELibraryViewModel.Filter;
                }

                sub_100074890(v125, v127);
                goto LABEL_80;
              }

              v107 = v213;
              sub_1000748F0(v222, v213, type metadata accessor for CRLSELibraryViewModel.Filter);
              v106 = sub_100018B58();
              v105 = v110;
              v109 = type metadata accessor for CRLSELibraryViewModel.Filter;
            }

            break;
          }

          sub_100074890(v107, v109);
          goto LABEL_70;
        }

LABEL_170:
        __break(1u);
LABEL_171:
        result = sub_100074474(a4);
        goto LABEL_142;
      }

      a3 = v210;
      if (v210 < v38)
      {
        goto LABEL_167;
      }
    }

LABEL_86:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v39 = v198;
    }

    else
    {
      result = sub_10006DE34(0, *(v198 + 2) + 1, 1, v198);
      v39 = result;
    }

    v141 = *(v39 + 2);
    v140 = *(v39 + 3);
    a4 = v141 + 1;
    if (v141 >= v140 >> 1)
    {
      result = sub_10006DE34((v140 > 1), v141 + 1, 1, v39);
      v39 = result;
    }

    *(v39 + 2) = a4;
    v142 = &v39[16 * v141];
    *(v142 + 4) = v38;
    *(v142 + 5) = a3;
    v199 = a3;
    a3 = *v195;
    if (*v195)
    {
      if (!v141)
      {
LABEL_3:
        v37 = *(v204 + 1);
        v38 = v199;
        a4 = v194;
        if (v199 >= v37)
        {
          goto LABEL_139;
        }

        continue;
      }

      while (2)
      {
        v143 = a4 - 1;
        if (a4 >= 4)
        {
          v148 = &v39[16 * a4 + 32];
          v149 = *(v148 - 64);
          v150 = *(v148 - 56);
          v154 = __OFSUB__(v150, v149);
          v151 = v150 - v149;
          if (v154)
          {
            goto LABEL_154;
          }

          v153 = *(v148 - 48);
          v152 = *(v148 - 40);
          v154 = __OFSUB__(v152, v153);
          v146 = v152 - v153;
          v147 = v154;
          if (v154)
          {
            goto LABEL_155;
          }

          v155 = &v39[16 * a4];
          v157 = *v155;
          v156 = *(v155 + 1);
          v154 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v154)
          {
            goto LABEL_157;
          }

          v154 = __OFADD__(v146, v158);
          v159 = v146 + v158;
          if (v154)
          {
            goto LABEL_160;
          }

          if (v159 >= v151)
          {
            v177 = &v39[16 * v143 + 32];
            v179 = *v177;
            v178 = *(v177 + 1);
            v154 = __OFSUB__(v178, v179);
            v180 = v178 - v179;
            if (v154)
            {
              goto LABEL_164;
            }

            if (v146 < v180)
            {
              v143 = a4 - 2;
            }
          }

          else
          {
LABEL_105:
            if (v147)
            {
              goto LABEL_156;
            }

            v160 = &v39[16 * a4];
            v162 = *v160;
            v161 = *(v160 + 1);
            v163 = __OFSUB__(v161, v162);
            v164 = v161 - v162;
            v165 = v163;
            if (v163)
            {
              goto LABEL_159;
            }

            v166 = &v39[16 * v143 + 32];
            v168 = *v166;
            v167 = *(v166 + 1);
            v154 = __OFSUB__(v167, v168);
            v169 = v167 - v168;
            if (v154)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v164, v169))
            {
              goto LABEL_163;
            }

            if (v164 + v169 < v146)
            {
              goto LABEL_119;
            }

            if (v146 < v169)
            {
              v143 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v144 = *(v39 + 4);
            v145 = *(v39 + 5);
            v154 = __OFSUB__(v145, v144);
            v146 = v145 - v144;
            v147 = v154;
            goto LABEL_105;
          }

          v170 = &v39[16 * a4];
          v172 = *v170;
          v171 = *(v170 + 1);
          v154 = __OFSUB__(v171, v172);
          v164 = v171 - v172;
          v165 = v154;
LABEL_119:
          if (v165)
          {
            goto LABEL_158;
          }

          v173 = &v39[16 * v143];
          v175 = *(v173 + 4);
          v174 = *(v173 + 5);
          v154 = __OFSUB__(v174, v175);
          v176 = v174 - v175;
          if (v154)
          {
            goto LABEL_161;
          }

          if (v176 < v164)
          {
            goto LABEL_3;
          }
        }

        v181 = v143 - 1;
        if (v143 - 1 >= a4)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
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
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (!*v204)
        {
          goto LABEL_174;
        }

        v182 = v39;
        a4 = *&v39[16 * v181 + 32];
        v183 = *&v39[16 * v143 + 40];
        sub_10007331C(*v204 + *(v203 + 72) * a4, *v204 + *(v203 + 72) * *&v39[16 * v143 + 32], (*v204 + *(v203 + 72) * v183), a3);
        if (v5)
        {
        }

        if (v183 < a4)
        {
          goto LABEL_152;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v184 = v182;
        }

        else
        {
          v184 = sub_100074474(v182);
        }

        v26 = v220;
        if (v181 >= *(v184 + 2))
        {
          goto LABEL_153;
        }

        v185 = &v184[16 * v181];
        *(v185 + 4) = a4;
        *(v185 + 5) = v183;
        v227 = v184;
        result = sub_1000743E8(v143);
        v39 = v227;
        a4 = *(v227 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
  return result;
}