uint64_t sub_10066CE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_10004FCC4(v13, v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_10004FCC4(v14, v6, type metadata accessor for CRLSELibraryViewModelItemNode);
      if ((sub_1007F5338(v10, v6) & 1) == 0)
      {
        break;
      }

      v16 = sub_10066CE5C(*&v10[*(v4 + 20)], *&v6[*(v4 + 20)]);
      sub_10003D4BC(v6, type metadata accessor for CRLSELibraryViewModelItemNode);
      sub_10003D4BC(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_10003D4BC(v6, type metadata accessor for CRLSELibraryViewModelItemNode);
    sub_10003D4BC(v10, type metadata accessor for CRLSELibraryViewModelItemNode);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_10066D064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  __chkstk_darwin(v4);
  v6 = (v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v163 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v163[0] = *(v8 + 72);
      v163[1] = v4;
      while (1)
      {
        sub_10004FCC4(v13, v10, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
        if (!v11)
        {
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          __break(1u);
LABEL_404:
          __break(1u);
LABEL_405:
          __break(1u);
LABEL_406:
          __break(1u);
LABEL_407:
          __break(1u);
LABEL_408:
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
LABEL_413:
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          __break(1u);
LABEL_416:
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
        }

        v164 = v14;
        sub_10004FCC4(v14, v6, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
        v15 = *v10;
        v16 = v10[1];
        v18 = *v6;
        v17 = v6[1];
        v19 = v16 >> 62;
        v20 = v17 >> 62;
        v165 = v13;
        v166 = v11;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v27 = *(v15 + 16);
            v26 = *(v15 + 24);
            v24 = __OFSUB__(v26, v27);
            v21 = v26 - v27;
            if (v24)
            {
              goto LABEL_399;
            }

            goto LABEL_22;
          }

          v21 = 0;
          if (v20 <= 1)
          {
            goto LABEL_23;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_398;
          }

          v21 = v21;
          if (v20 <= 1)
          {
LABEL_23:
            if (v20)
            {
              LODWORD(v25) = HIDWORD(v18) - v18;
              if (__OFSUB__(HIDWORD(v18), v18))
              {
                goto LABEL_378;
              }

              v25 = v25;
            }

            else
            {
              v25 = BYTE6(v17);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 <= 1)
          {
            goto LABEL_23;
          }
        }

LABEL_16:
        if (v20 != 2)
        {
          if (v21)
          {
            goto LABEL_374;
          }

          goto LABEL_54;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        v24 = __OFSUB__(v22, v23);
        v25 = v22 - v23;
        if (v24)
        {
          goto LABEL_379;
        }

LABEL_29:
        if (v21 != v25)
        {
          goto LABEL_374;
        }

        if (v21 < 1)
        {
          goto LABEL_54;
        }

        if (v19 > 1)
        {
          if (v19 != 2)
          {
            memset(v168, 0, 14);
LABEL_53:
            sub_1009F9010(v168, v18, v17, &v167);
            if (!v167)
            {
              goto LABEL_374;
            }

            goto LABEL_54;
          }

          v29 = *(v15 + 16);
          v28 = *(v15 + 24);
          v30 = __DataStorage._bytes.getter();
          if (v30)
          {
            v31 = __DataStorage._offset.getter();
            if (__OFSUB__(v29, v31))
            {
              goto LABEL_425;
            }

            v30 += v29 - v31;
          }

          if (__OFSUB__(v28, v29))
          {
            goto LABEL_413;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v30, v18, v17, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

        else
        {
          if (!v19)
          {
            v168[0] = v15;
            LOWORD(v168[1]) = v16;
            BYTE2(v168[1]) = BYTE2(v16);
            BYTE3(v168[1]) = BYTE3(v16);
            BYTE4(v168[1]) = BYTE4(v16);
            BYTE5(v168[1]) = BYTE5(v16);
            goto LABEL_53;
          }

          v32 = v15;
          if (v15 >> 32 < v15)
          {
            goto LABEL_412;
          }

          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v34 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_426;
            }

            v33 += v32 - v34;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v33, v18, v17, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

LABEL_54:
        v35 = v10[2];
        v36 = v10[3];
        v38 = v6[2];
        v37 = v6[3];
        v39 = v36 >> 62;
        v40 = v37 >> 62;
        if (v36 >> 62 == 3)
        {
          v41 = 0;
          if (!v35 && v36 == 0xC000000000000000 && v37 >> 62 == 3)
          {
            v41 = 0;
            if (!v38 && v37 == 0xC000000000000000)
            {
              goto LABEL_102;
            }
          }

LABEL_70:
          if (v40 <= 1)
          {
            goto LABEL_71;
          }

          goto LABEL_64;
        }

        if (v39 > 1)
        {
          if (v39 == 2)
          {
            v46 = *(v35 + 16);
            v45 = *(v35 + 24);
            v24 = __OFSUB__(v45, v46);
            v41 = v45 - v46;
            if (v24)
            {
              goto LABEL_403;
            }

            goto LABEL_70;
          }

          v41 = 0;
          if (v40 <= 1)
          {
            goto LABEL_71;
          }
        }

        else if (v39)
        {
          LODWORD(v41) = HIDWORD(v35) - v35;
          if (__OFSUB__(HIDWORD(v35), v35))
          {
            goto LABEL_402;
          }

          v41 = v41;
          if (v40 <= 1)
          {
LABEL_71:
            if (v40)
            {
              LODWORD(v44) = HIDWORD(v38) - v38;
              if (__OFSUB__(HIDWORD(v38), v38))
              {
                goto LABEL_380;
              }

              v44 = v44;
            }

            else
            {
              v44 = BYTE6(v37);
            }

            goto LABEL_77;
          }
        }

        else
        {
          v41 = BYTE6(v36);
          if (v40 <= 1)
          {
            goto LABEL_71;
          }
        }

LABEL_64:
        if (v40 != 2)
        {
          if (v41)
          {
            goto LABEL_374;
          }

          goto LABEL_102;
        }

        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        v24 = __OFSUB__(v42, v43);
        v44 = v42 - v43;
        if (v24)
        {
          goto LABEL_381;
        }

LABEL_77:
        if (v41 != v44)
        {
          goto LABEL_374;
        }

        if (v41 < 1)
        {
          goto LABEL_102;
        }

        if (v39 > 1)
        {
          if (v39 != 2)
          {
            memset(v168, 0, 14);
LABEL_101:
            sub_1009F9010(v168, v38, v37, &v167);
            if (!v167)
            {
              goto LABEL_374;
            }

            goto LABEL_102;
          }

          v48 = *(v35 + 16);
          v47 = *(v35 + 24);
          v49 = __DataStorage._bytes.getter();
          if (v49)
          {
            v50 = __DataStorage._offset.getter();
            if (__OFSUB__(v48, v50))
            {
              goto LABEL_427;
            }

            v49 += v48 - v50;
          }

          if (__OFSUB__(v47, v48))
          {
            goto LABEL_417;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v49, v38, v37, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

        else
        {
          if (!v39)
          {
            v168[0] = v10[2];
            LOWORD(v168[1]) = v36;
            BYTE2(v168[1]) = BYTE2(v36);
            BYTE3(v168[1]) = BYTE3(v36);
            BYTE4(v168[1]) = BYTE4(v36);
            BYTE5(v168[1]) = BYTE5(v36);
            goto LABEL_101;
          }

          v51 = v35;
          if (v35 >> 32 < v35)
          {
            goto LABEL_416;
          }

          v52 = __DataStorage._bytes.getter();
          if (v52)
          {
            v53 = __DataStorage._offset.getter();
            if (__OFSUB__(v51, v53))
            {
              goto LABEL_428;
            }

            v52 += v51 - v53;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v52, v38, v37, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

LABEL_102:
        v54 = v10[4];
        v55 = v10[5];
        v57 = v6[4];
        v56 = v6[5];
        v58 = v55 >> 62;
        v59 = v56 >> 62;
        if (v55 >> 62 == 3)
        {
          v60 = 0;
          if (!v54 && v55 == 0xC000000000000000 && v56 >> 62 == 3)
          {
            v60 = 0;
            if (!v57 && v56 == 0xC000000000000000)
            {
              goto LABEL_150;
            }
          }

LABEL_118:
          if (v59 <= 1)
          {
            goto LABEL_119;
          }

          goto LABEL_112;
        }

        if (v58 > 1)
        {
          if (v58 == 2)
          {
            v65 = *(v54 + 16);
            v64 = *(v54 + 24);
            v24 = __OFSUB__(v64, v65);
            v60 = v64 - v65;
            if (v24)
            {
              goto LABEL_404;
            }

            goto LABEL_118;
          }

          v60 = 0;
          if (v59 <= 1)
          {
            goto LABEL_119;
          }
        }

        else if (v58)
        {
          LODWORD(v60) = HIDWORD(v54) - v54;
          if (__OFSUB__(HIDWORD(v54), v54))
          {
            goto LABEL_405;
          }

          v60 = v60;
          if (v59 <= 1)
          {
LABEL_119:
            if (v59)
            {
              LODWORD(v63) = HIDWORD(v57) - v57;
              if (__OFSUB__(HIDWORD(v57), v57))
              {
                goto LABEL_383;
              }

              v63 = v63;
            }

            else
            {
              v63 = BYTE6(v56);
            }

            goto LABEL_125;
          }
        }

        else
        {
          v60 = BYTE6(v55);
          if (v59 <= 1)
          {
            goto LABEL_119;
          }
        }

LABEL_112:
        if (v59 != 2)
        {
          if (v60)
          {
            goto LABEL_374;
          }

          goto LABEL_150;
        }

        v62 = *(v57 + 16);
        v61 = *(v57 + 24);
        v24 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v24)
        {
          goto LABEL_382;
        }

LABEL_125:
        if (v60 != v63)
        {
          goto LABEL_374;
        }

        if (v60 < 1)
        {
          goto LABEL_150;
        }

        if (v58 > 1)
        {
          if (v58 != 2)
          {
            memset(v168, 0, 14);
LABEL_149:
            sub_1009F9010(v168, v57, v56, &v167);
            if (!v167)
            {
              goto LABEL_374;
            }

            goto LABEL_150;
          }

          v67 = *(v54 + 16);
          v66 = *(v54 + 24);
          v68 = __DataStorage._bytes.getter();
          if (v68)
          {
            v69 = __DataStorage._offset.getter();
            if (__OFSUB__(v67, v69))
            {
              goto LABEL_429;
            }

            v68 += v67 - v69;
          }

          if (__OFSUB__(v66, v67))
          {
            goto LABEL_419;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v68, v57, v56, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

        else
        {
          if (!v58)
          {
            v168[0] = v10[4];
            LOWORD(v168[1]) = v55;
            BYTE2(v168[1]) = BYTE2(v55);
            BYTE3(v168[1]) = BYTE3(v55);
            BYTE4(v168[1]) = BYTE4(v55);
            BYTE5(v168[1]) = BYTE5(v55);
            goto LABEL_149;
          }

          v70 = v54;
          if (v54 >> 32 < v54)
          {
            goto LABEL_418;
          }

          v71 = __DataStorage._bytes.getter();
          if (v71)
          {
            v72 = __DataStorage._offset.getter();
            if (__OFSUB__(v70, v72))
            {
              goto LABEL_430;
            }

            v71 += v70 - v72;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v71, v57, v56, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

LABEL_150:
        v73 = v10[6];
        v74 = v10[7];
        v76 = v6[6];
        v75 = v6[7];
        v77 = v74 >> 62;
        v78 = v75 >> 62;
        if (v74 >> 62 == 3)
        {
          v79 = 0;
          if (!v73 && v74 == 0xC000000000000000 && v75 >> 62 == 3)
          {
            v79 = 0;
            if (!v76 && v75 == 0xC000000000000000)
            {
              goto LABEL_198;
            }
          }

LABEL_166:
          if (v78 <= 1)
          {
            goto LABEL_167;
          }

          goto LABEL_160;
        }

        if (v77 > 1)
        {
          if (v77 == 2)
          {
            v84 = *(v73 + 16);
            v83 = *(v73 + 24);
            v24 = __OFSUB__(v83, v84);
            v79 = v83 - v84;
            if (v24)
            {
              goto LABEL_406;
            }

            goto LABEL_166;
          }

          v79 = 0;
          if (v78 <= 1)
          {
            goto LABEL_167;
          }
        }

        else if (v77)
        {
          LODWORD(v79) = HIDWORD(v73) - v73;
          if (__OFSUB__(HIDWORD(v73), v73))
          {
            goto LABEL_407;
          }

          v79 = v79;
          if (v78 <= 1)
          {
LABEL_167:
            if (v78)
            {
              LODWORD(v82) = HIDWORD(v76) - v76;
              if (__OFSUB__(HIDWORD(v76), v76))
              {
                goto LABEL_385;
              }

              v82 = v82;
            }

            else
            {
              v82 = BYTE6(v75);
            }

            goto LABEL_173;
          }
        }

        else
        {
          v79 = BYTE6(v74);
          if (v78 <= 1)
          {
            goto LABEL_167;
          }
        }

LABEL_160:
        if (v78 != 2)
        {
          if (v79)
          {
            goto LABEL_374;
          }

          goto LABEL_198;
        }

        v81 = *(v76 + 16);
        v80 = *(v76 + 24);
        v24 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v24)
        {
          goto LABEL_384;
        }

LABEL_173:
        if (v79 != v82)
        {
          goto LABEL_374;
        }

        if (v79 < 1)
        {
          goto LABEL_198;
        }

        if (v77 > 1)
        {
          if (v77 != 2)
          {
            memset(v168, 0, 14);
LABEL_197:
            sub_1009F9010(v168, v76, v75, &v167);
            if (!v167)
            {
              goto LABEL_374;
            }

            goto LABEL_198;
          }

          v86 = *(v73 + 16);
          v85 = *(v73 + 24);
          v87 = __DataStorage._bytes.getter();
          if (v87)
          {
            v88 = __DataStorage._offset.getter();
            if (__OFSUB__(v86, v88))
            {
              goto LABEL_431;
            }

            v87 += v86 - v88;
          }

          if (__OFSUB__(v85, v86))
          {
            goto LABEL_421;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v87, v76, v75, v168);
          if ((v168[0] & 1) == 0)
          {
            goto LABEL_374;
          }
        }

        else
        {
          if (!v77)
          {
            v168[0] = v10[6];
            LOWORD(v168[1]) = v74;
            BYTE2(v168[1]) = BYTE2(v74);
            BYTE3(v168[1]) = BYTE3(v74);
            BYTE4(v168[1]) = BYTE4(v74);
            BYTE5(v168[1]) = BYTE5(v74);
            goto LABEL_197;
          }

          v89 = v73;
          if (v73 >> 32 < v73)
          {
            goto LABEL_420;
          }

          v90 = __DataStorage._bytes.getter();
          if (v90)
          {
            v91 = __DataStorage._offset.getter();
            if (__OFSUB__(v89, v91))
            {
              goto LABEL_432;
            }

            v90 += v89 - v91;
          }

          __DataStorage._length.getter();
          sub_1009F9010(v90, v76, v75, v168);
          if ((v168[0] & 1) == 0)
          {
LABEL_374:
            sub_10003D4BC(v6, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
            sub_10003D4BC(v10, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
            goto LABEL_375;
          }
        }

LABEL_198:
        v92 = v10[8];
        v93 = v10[9];
        v95 = v6[8];
        v94 = v6[9];
        v96 = v93 >> 62;
        v97 = v94 >> 62;
        if (v93 >> 62 == 3)
        {
          v98 = 0;
          if (!v92 && v93 == 0xC000000000000000 && v94 >> 62 == 3)
          {
            v98 = 0;
            if (!v95 && v94 == 0xC000000000000000)
            {
              goto LABEL_238;
            }
          }

LABEL_214:
          if (v97 <= 1)
          {
            goto LABEL_215;
          }

          goto LABEL_208;
        }

        if (v96 > 1)
        {
          if (v96 == 2)
          {
            v103 = *(v92 + 16);
            v102 = *(v92 + 24);
            v24 = __OFSUB__(v102, v103);
            v98 = v102 - v103;
            if (v24)
            {
              goto LABEL_408;
            }

            goto LABEL_214;
          }

          v98 = 0;
          if (v97 <= 1)
          {
            goto LABEL_215;
          }
        }

        else if (v96)
        {
          LODWORD(v98) = HIDWORD(v92) - v92;
          if (__OFSUB__(HIDWORD(v92), v92))
          {
            goto LABEL_409;
          }

          v98 = v98;
          if (v97 <= 1)
          {
LABEL_215:
            if (v97)
            {
              LODWORD(v101) = HIDWORD(v95) - v95;
              if (__OFSUB__(HIDWORD(v95), v95))
              {
                goto LABEL_386;
              }

              v101 = v101;
            }

            else
            {
              v101 = BYTE6(v94);
            }

            goto LABEL_221;
          }
        }

        else
        {
          v98 = BYTE6(v93);
          if (v97 <= 1)
          {
            goto LABEL_215;
          }
        }

LABEL_208:
        if (v97 != 2)
        {
          if (v98)
          {
            goto LABEL_374;
          }

          goto LABEL_238;
        }

        v100 = *(v95 + 16);
        v99 = *(v95 + 24);
        v24 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v24)
        {
          goto LABEL_387;
        }

LABEL_221:
        if (v98 != v101)
        {
          goto LABEL_374;
        }

        if (v98 < 1)
        {
          goto LABEL_238;
        }

        if (v96 > 1)
        {
          if (v96 == 2)
          {
            v104 = *(v92 + 16);
            v105 = *(v92 + 24);
            goto LABEL_234;
          }

          memset(v168, 0, 14);
          sub_100024E98(v95, v94);
        }

        else
        {
          if (v96)
          {
            v104 = v92;
            v105 = v92 >> 32;
            if (v92 >> 32 < v92)
            {
              goto LABEL_422;
            }

LABEL_234:
            sub_100024E98(v6[8], v6[9]);
            v106 = sub_1009F93D0(v104, v105, v93 & 0x3FFFFFFFFFFFFFFFLL, v95, v94);
            sub_10002640C(v95, v94);
            if ((v106 & 1) == 0)
            {
              goto LABEL_374;
            }

            goto LABEL_238;
          }

          v168[0] = v10[8];
          LOWORD(v168[1]) = v93;
          BYTE2(v168[1]) = BYTE2(v93);
          BYTE3(v168[1]) = BYTE3(v93);
          BYTE4(v168[1]) = BYTE4(v93);
          BYTE5(v168[1]) = BYTE5(v93);
          sub_100024E98(v95, v94);
        }

        sub_1009F9010(v168, v95, v94, &v167);
        sub_10002640C(v95, v94);
        if (!v167)
        {
          goto LABEL_374;
        }

LABEL_238:
        v107 = v10[10];
        v108 = v10[11];
        v110 = v6[10];
        v109 = v6[11];
        v111 = v108 >> 62;
        v112 = v109 >> 62;
        if (v108 >> 62 == 3)
        {
          v113 = 0;
          if (!v107 && v108 == 0xC000000000000000 && v109 >> 62 == 3)
          {
            v113 = 0;
            if (!v110 && v109 == 0xC000000000000000)
            {
              goto LABEL_278;
            }
          }

LABEL_254:
          if (v112 <= 1)
          {
            goto LABEL_255;
          }

          goto LABEL_248;
        }

        if (v111 > 1)
        {
          if (v111 == 2)
          {
            v118 = *(v107 + 16);
            v117 = *(v107 + 24);
            v24 = __OFSUB__(v117, v118);
            v113 = v117 - v118;
            if (v24)
            {
              goto LABEL_410;
            }

            goto LABEL_254;
          }

          v113 = 0;
          if (v112 <= 1)
          {
            goto LABEL_255;
          }
        }

        else if (v111)
        {
          LODWORD(v113) = HIDWORD(v107) - v107;
          if (__OFSUB__(HIDWORD(v107), v107))
          {
            goto LABEL_411;
          }

          v113 = v113;
          if (v112 <= 1)
          {
LABEL_255:
            if (v112)
            {
              LODWORD(v116) = HIDWORD(v110) - v110;
              if (__OFSUB__(HIDWORD(v110), v110))
              {
                goto LABEL_388;
              }

              v116 = v116;
            }

            else
            {
              v116 = BYTE6(v109);
            }

            goto LABEL_261;
          }
        }

        else
        {
          v113 = BYTE6(v108);
          if (v112 <= 1)
          {
            goto LABEL_255;
          }
        }

LABEL_248:
        if (v112 != 2)
        {
          if (v113)
          {
            goto LABEL_374;
          }

          goto LABEL_278;
        }

        v115 = *(v110 + 16);
        v114 = *(v110 + 24);
        v24 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v24)
        {
          goto LABEL_389;
        }

LABEL_261:
        if (v113 != v116)
        {
          goto LABEL_374;
        }

        if (v113 < 1)
        {
          goto LABEL_278;
        }

        if (v111 > 1)
        {
          if (v111 == 2)
          {
            v119 = *(v107 + 16);
            v120 = *(v107 + 24);
            goto LABEL_274;
          }

          memset(v168, 0, 14);
          sub_100024E98(v110, v109);
        }

        else
        {
          if (v111)
          {
            v119 = v107;
            v120 = v107 >> 32;
            if (v107 >> 32 < v107)
            {
              goto LABEL_423;
            }

LABEL_274:
            sub_100024E98(v6[10], v6[11]);
            v121 = sub_1009F93D0(v119, v120, v108 & 0x3FFFFFFFFFFFFFFFLL, v110, v109);
            sub_10002640C(v110, v109);
            if ((v121 & 1) == 0)
            {
              goto LABEL_374;
            }

            goto LABEL_278;
          }

          v168[0] = v10[10];
          LOWORD(v168[1]) = v108;
          BYTE2(v168[1]) = BYTE2(v108);
          BYTE3(v168[1]) = BYTE3(v108);
          BYTE4(v168[1]) = BYTE4(v108);
          BYTE5(v168[1]) = BYTE5(v108);
          sub_100024E98(v110, v109);
        }

        sub_1009F9010(v168, v110, v109, &v167);
        sub_10002640C(v110, v109);
        if (!v167)
        {
          goto LABEL_374;
        }

LABEL_278:
        v122 = v10[12];
        v123 = v10[13];
        v125 = v6[12];
        v124 = v6[13];
        v126 = v123 >> 62;
        v127 = v124 >> 62;
        if (v123 >> 62 == 3)
        {
          v128 = 0;
          if (!v122 && v123 == 0xC000000000000000 && v124 >> 62 == 3)
          {
            v128 = 0;
            if (!v125 && v124 == 0xC000000000000000)
            {
              goto LABEL_318;
            }
          }

LABEL_294:
          if (v127 <= 1)
          {
            goto LABEL_295;
          }

          goto LABEL_288;
        }

        if (v126 > 1)
        {
          if (v126 == 2)
          {
            v133 = *(v122 + 16);
            v132 = *(v122 + 24);
            v24 = __OFSUB__(v132, v133);
            v128 = v132 - v133;
            if (v24)
            {
              goto LABEL_415;
            }

            goto LABEL_294;
          }

          v128 = 0;
          if (v127 <= 1)
          {
            goto LABEL_295;
          }
        }

        else if (v126)
        {
          LODWORD(v128) = HIDWORD(v122) - v122;
          if (__OFSUB__(HIDWORD(v122), v122))
          {
            goto LABEL_414;
          }

          v128 = v128;
          if (v127 <= 1)
          {
LABEL_295:
            if (v127)
            {
              LODWORD(v131) = HIDWORD(v125) - v125;
              if (__OFSUB__(HIDWORD(v125), v125))
              {
                goto LABEL_390;
              }

              v131 = v131;
            }

            else
            {
              v131 = BYTE6(v124);
            }

            goto LABEL_301;
          }
        }

        else
        {
          v128 = BYTE6(v123);
          if (v127 <= 1)
          {
            goto LABEL_295;
          }
        }

LABEL_288:
        if (v127 != 2)
        {
          if (v128)
          {
            goto LABEL_374;
          }

          goto LABEL_318;
        }

        v130 = *(v125 + 16);
        v129 = *(v125 + 24);
        v24 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v24)
        {
          goto LABEL_391;
        }

LABEL_301:
        if (v128 != v131)
        {
          goto LABEL_374;
        }

        if (v128 < 1)
        {
          goto LABEL_318;
        }

        if (v126 > 1)
        {
          if (v126 == 2)
          {
            v134 = *(v122 + 16);
            v135 = *(v122 + 24);
            goto LABEL_314;
          }

          memset(v168, 0, 14);
          sub_100024E98(v125, v124);
        }

        else
        {
          if (v126)
          {
            v134 = v122;
            v135 = v122 >> 32;
            if (v122 >> 32 < v122)
            {
              goto LABEL_424;
            }

LABEL_314:
            sub_100024E98(v6[12], v6[13]);
            v136 = sub_1009F93D0(v134, v135, v123 & 0x3FFFFFFFFFFFFFFFLL, v125, v124);
            sub_10002640C(v125, v124);
            if ((v136 & 1) == 0)
            {
              goto LABEL_374;
            }

            goto LABEL_318;
          }

          v168[0] = v10[12];
          LOWORD(v168[1]) = v123;
          BYTE2(v168[1]) = BYTE2(v123);
          BYTE3(v168[1]) = BYTE3(v123);
          BYTE4(v168[1]) = BYTE4(v123);
          BYTE5(v168[1]) = BYTE5(v123);
          sub_100024E98(v125, v124);
        }

        sub_1009F9010(v168, v125, v124, &v167);
        sub_10002640C(v125, v124);
        if (!v167)
        {
          goto LABEL_374;
        }

LABEL_318:
        v137 = v10[14];
        v138 = v10[15];
        v140 = v6[14];
        v139 = v6[15];
        v141 = v138 >> 62;
        v142 = v139 >> 62;
        if (v138 >> 62 == 3)
        {
          v143 = 0;
          if (!v137 && v138 == 0xC000000000000000 && v139 >> 62 == 3)
          {
            v143 = 0;
            if (!v140 && v139 == 0xC000000000000000)
            {
              goto LABEL_344;
            }
          }

LABEL_331:
          if (v142 <= 1)
          {
            goto LABEL_332;
          }

          goto LABEL_337;
        }

        if (v141 == 2)
        {
          v145 = *(v137 + 16);
          v144 = *(v137 + 24);
          v24 = __OFSUB__(v144, v145);
          v143 = v144 - v145;
          if (v24)
          {
            goto LABEL_397;
          }

          goto LABEL_331;
        }

        if (v141 == 1)
        {
          LODWORD(v143) = HIDWORD(v137) - v137;
          if (__OFSUB__(HIDWORD(v137), v137))
          {
            goto LABEL_396;
          }

          v143 = v143;
          if (v142 <= 1)
          {
LABEL_332:
            if (v142)
            {
              LODWORD(v146) = HIDWORD(v140) - v140;
              if (__OFSUB__(HIDWORD(v140), v140))
              {
                goto LABEL_393;
              }

              v146 = v146;
            }

            else
            {
              v146 = BYTE6(v139);
            }

            goto LABEL_339;
          }
        }

        else
        {
          v143 = BYTE6(v138);
          if (v142 <= 1)
          {
            goto LABEL_332;
          }
        }

LABEL_337:
        if (v142 != 2)
        {
          if (v143)
          {
            goto LABEL_374;
          }

          goto LABEL_344;
        }

        v148 = *(v140 + 16);
        v147 = *(v140 + 24);
        v24 = __OFSUB__(v147, v148);
        v146 = v147 - v148;
        if (v24)
        {
          goto LABEL_392;
        }

LABEL_339:
        if (v143 != v146)
        {
          goto LABEL_374;
        }

        if (v143 >= 1)
        {
          sub_100024E98(v6[14], v6[15]);
          if ((sub_1009F9240(v137, v138, v140, v139) & 1) == 0)
          {
            goto LABEL_374;
          }
        }

LABEL_344:
        v149 = v10[16];
        v150 = v10[17];
        v152 = v6[16];
        v151 = v6[17];
        v153 = v150 >> 62;
        v154 = v151 >> 62;
        if (v150 >> 62 == 3)
        {
          v155 = 0;
          if (!v149 && v150 == 0xC000000000000000 && v151 >> 62 == 3)
          {
            v155 = 0;
            if (!v152 && v151 == 0xC000000000000000)
            {
              goto LABEL_370;
            }
          }

LABEL_357:
          if (v154 > 1)
          {
            goto LABEL_363;
          }

          goto LABEL_358;
        }

        if (v153 == 2)
        {
          v157 = *(v149 + 16);
          v156 = *(v149 + 24);
          v24 = __OFSUB__(v156, v157);
          v155 = v156 - v157;
          if (v24)
          {
            goto LABEL_401;
          }

          goto LABEL_357;
        }

        if (v153 == 1)
        {
          LODWORD(v155) = HIDWORD(v149) - v149;
          if (__OFSUB__(HIDWORD(v149), v149))
          {
            goto LABEL_400;
          }

          v155 = v155;
          if (v154 > 1)
          {
LABEL_363:
            if (v154 != 2)
            {
              if (v155)
              {
                goto LABEL_374;
              }

              goto LABEL_370;
            }

            v160 = *(v152 + 16);
            v159 = *(v152 + 24);
            v24 = __OFSUB__(v159, v160);
            v158 = v159 - v160;
            if (v24)
            {
              goto LABEL_394;
            }

            goto LABEL_365;
          }
        }

        else
        {
          v155 = BYTE6(v150);
          if (v154 > 1)
          {
            goto LABEL_363;
          }
        }

LABEL_358:
        if (v154)
        {
          LODWORD(v158) = HIDWORD(v152) - v152;
          if (__OFSUB__(HIDWORD(v152), v152))
          {
            goto LABEL_395;
          }

          v158 = v158;
        }

        else
        {
          v158 = BYTE6(v151);
        }

LABEL_365:
        if (v155 != v158)
        {
          goto LABEL_374;
        }

        if (v155 >= 1)
        {
          sub_100024E98(v6[16], v6[17]);
          if ((sub_1009F9240(v149, v150, v152, v151) & 1) == 0)
          {
            goto LABEL_374;
          }
        }

LABEL_370:
        type metadata accessor for UnknownStorage();
        sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v161 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10003D4BC(v6, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
        sub_10003D4BC(v10, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
        if (v161)
        {
          v11 = v166 - 1;
          v14 = v164 + v163[0];
          v13 = v165 + v163[0];
          if (v166 != 1)
          {
            continue;
          }
        }

        return v161 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v17 >> 62 == 3)
      {
        v21 = 0;
        if (!v18 && v17 == 0xC000000000000000)
        {
          goto LABEL_54;
        }
      }

LABEL_22:
      if (v20 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    v161 = 1;
  }

  else
  {
LABEL_375:
    v161 = 0;
  }

  return v161 & 1;
}

uint64_t sub_10066E698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Path.Element(0);
  __chkstk_darwin(v4);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v82 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v86 = 0;
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v82 = v4;
      v83 = v15;
      while (1)
      {
        sub_10004FCC4(v13, v10, type metadata accessor for CRLProto_Path.Element);
        sub_10004FCC4(v14, v6, type metadata accessor for CRLProto_Path.Element);
        v16 = *v10;
        v17 = *v6;
        v18 = v6[8];
        v84 = v14;
        v85 = v13;
        if (v18 == 1)
        {
          if (v17 > 1)
          {
            if (v17 == 2)
            {
              if (v16 != 2)
              {
                goto LABEL_163;
              }
            }

            else if (v16 != 3)
            {
              goto LABEL_163;
            }
          }

          else if (v17)
          {
            if (v16 != 1)
            {
              goto LABEL_163;
            }
          }

          else if (v16)
          {
            goto LABEL_163;
          }
        }

        else if (v16 != v17)
        {
          goto LABEL_163;
        }

        v19 = v10[2];
        v20 = v10[3];
        v22 = *(v6 + 2);
        v21 = *(v6 + 3);
        v23 = v20 >> 62;
        v24 = v21 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v31 = *(v19 + 16);
            v30 = *(v19 + 24);
            v28 = __OFSUB__(v30, v31);
            v25 = v30 - v31;
            if (v28)
            {
              goto LABEL_172;
            }

            goto LABEL_30;
          }

          v25 = 0;
          if (v24 <= 1)
          {
            goto LABEL_31;
          }
        }

        else if (v23)
        {
          LODWORD(v25) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_173;
          }

          v25 = v25;
          if (v24 <= 1)
          {
LABEL_31:
            if (v24)
            {
              LODWORD(v29) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                __break(1u);
LABEL_167:
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
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
              }

              v29 = v29;
            }

            else
            {
              v29 = BYTE6(v21);
            }

            goto LABEL_37;
          }
        }

        else
        {
          v25 = BYTE6(v20);
          if (v24 <= 1)
          {
            goto LABEL_31;
          }
        }

LABEL_21:
        if (v24 != 2)
        {
          if (v25)
          {
            goto LABEL_163;
          }

          goto LABEL_65;
        }

        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        v28 = __OFSUB__(v26, v27);
        v29 = v26 - v27;
        if (v28)
        {
          goto LABEL_167;
        }

LABEL_37:
        if (v25 != v29)
        {
          goto LABEL_163;
        }

        if (v25 < 1)
        {
          goto LABEL_65;
        }

        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v33 = *(v19 + 16);
            v32 = *(v19 + 24);
            v34 = __DataStorage._bytes.getter();
            if (v34)
            {
              v35 = __DataStorage._offset.getter();
              if (__OFSUB__(v33, v35))
              {
                goto LABEL_184;
              }

              v34 += v33 - v35;
            }

            if (__OFSUB__(v32, v33))
            {
              goto LABEL_179;
            }

            goto LABEL_61;
          }

          memset(v88, 0, 14);
        }

        else
        {
          if (v23)
          {
            v36 = v19;
            if (v19 >> 32 < v19)
            {
              goto LABEL_178;
            }

            v34 = __DataStorage._bytes.getter();
            if (v34)
            {
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v36, v37))
              {
                goto LABEL_185;
              }

              v34 += v36 - v37;
            }

LABEL_61:
            __DataStorage._length.getter();
            v38 = v86;
            sub_1009F9010(v34, v22, v21, v88);
            v86 = v38;
            if ((v88[0] & 1) == 0)
            {
              goto LABEL_163;
            }

            goto LABEL_65;
          }

          v88[0] = v10[2];
          LOWORD(v88[1]) = v20;
          BYTE2(v88[1]) = BYTE2(v20);
          BYTE3(v88[1]) = BYTE3(v20);
          BYTE4(v88[1]) = BYTE4(v20);
          BYTE5(v88[1]) = BYTE5(v20);
        }

        v39 = v86;
        sub_1009F9010(v88, v22, v21, &v87);
        v86 = v39;
        if (!v87)
        {
          goto LABEL_163;
        }

LABEL_65:
        v40 = v10[4];
        v41 = v10[5];
        v43 = *(v6 + 4);
        v42 = *(v6 + 5);
        v44 = v41 >> 62;
        v45 = v42 >> 62;
        if (v41 >> 62 == 3)
        {
          v46 = 0;
          if (!v40 && v41 == 0xC000000000000000 && v42 >> 62 == 3)
          {
            v46 = 0;
            if (!v43 && v42 == 0xC000000000000000)
            {
              goto LABEL_112;
            }
          }

LABEL_81:
          if (v45 <= 1)
          {
            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v51 = *(v40 + 16);
            v50 = *(v40 + 24);
            v28 = __OFSUB__(v50, v51);
            v46 = v50 - v51;
            if (v28)
            {
              goto LABEL_175;
            }

            goto LABEL_81;
          }

          v46 = 0;
          if (v45 <= 1)
          {
            goto LABEL_82;
          }
        }

        else if (v44)
        {
          LODWORD(v46) = HIDWORD(v40) - v40;
          if (__OFSUB__(HIDWORD(v40), v40))
          {
            goto LABEL_174;
          }

          v46 = v46;
          if (v45 <= 1)
          {
LABEL_82:
            if (v45)
            {
              LODWORD(v49) = HIDWORD(v43) - v43;
              if (__OFSUB__(HIDWORD(v43), v43))
              {
                goto LABEL_168;
              }

              v49 = v49;
            }

            else
            {
              v49 = BYTE6(v42);
            }

            goto LABEL_88;
          }
        }

        else
        {
          v46 = BYTE6(v41);
          if (v45 <= 1)
          {
            goto LABEL_82;
          }
        }

LABEL_75:
        if (v45 != 2)
        {
          if (v46)
          {
            goto LABEL_163;
          }

          goto LABEL_112;
        }

        v48 = *(v43 + 16);
        v47 = *(v43 + 24);
        v28 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v28)
        {
          goto LABEL_169;
        }

LABEL_88:
        if (v46 != v49)
        {
          goto LABEL_163;
        }

        if (v46 < 1)
        {
          goto LABEL_112;
        }

        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v53 = *(v40 + 16);
            v52 = *(v40 + 24);
            v54 = __DataStorage._bytes.getter();
            if (v54)
            {
              v55 = __DataStorage._offset.getter();
              if (__OFSUB__(v53, v55))
              {
                goto LABEL_186;
              }

              v54 += v53 - v55;
            }

            if (__OFSUB__(v52, v53))
            {
              goto LABEL_181;
            }

            goto LABEL_108;
          }

          memset(v88, 0, 14);
        }

        else
        {
          if (v44)
          {
            v56 = v40;
            if (v40 >> 32 < v40)
            {
              goto LABEL_180;
            }

            v54 = __DataStorage._bytes.getter();
            if (v54)
            {
              v57 = __DataStorage._offset.getter();
              if (__OFSUB__(v56, v57))
              {
                goto LABEL_187;
              }

              v54 += v56 - v57;
            }

LABEL_108:
            __DataStorage._length.getter();
            v58 = v86;
            sub_1009F9010(v54, v43, v42, v88);
            v86 = v58;
            if ((v88[0] & 1) == 0)
            {
              goto LABEL_163;
            }

            goto LABEL_112;
          }

          v88[0] = v10[4];
          LOWORD(v88[1]) = v41;
          BYTE2(v88[1]) = BYTE2(v41);
          BYTE3(v88[1]) = BYTE3(v41);
          BYTE4(v88[1]) = BYTE4(v41);
          BYTE5(v88[1]) = BYTE5(v41);
        }

        v59 = v86;
        sub_1009F9010(v88, v43, v42, &v87);
        v86 = v59;
        if (!v87)
        {
          goto LABEL_163;
        }

LABEL_112:
        v60 = v10[6];
        v61 = v10[7];
        v63 = *(v6 + 6);
        v62 = *(v6 + 7);
        v64 = v61 >> 62;
        v65 = v62 >> 62;
        if (v61 >> 62 == 3)
        {
          v66 = 0;
          if (!v60 && v61 == 0xC000000000000000 && v62 >> 62 == 3)
          {
            v66 = 0;
            if (!v63 && v62 == 0xC000000000000000)
            {
              goto LABEL_159;
            }
          }

LABEL_128:
          if (v65 > 1)
          {
            goto LABEL_122;
          }

          goto LABEL_129;
        }

        if (v64 > 1)
        {
          if (v64 == 2)
          {
            v71 = *(v60 + 16);
            v70 = *(v60 + 24);
            v28 = __OFSUB__(v70, v71);
            v66 = v70 - v71;
            if (v28)
            {
              goto LABEL_177;
            }

            goto LABEL_128;
          }

          v66 = 0;
          if (v65 > 1)
          {
            goto LABEL_122;
          }
        }

        else if (v64)
        {
          LODWORD(v66) = HIDWORD(v60) - v60;
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_176;
          }

          v66 = v66;
          if (v65 > 1)
          {
LABEL_122:
            if (v65 != 2)
            {
              if (v66)
              {
                goto LABEL_163;
              }

              goto LABEL_159;
            }

            v68 = *(v63 + 16);
            v67 = *(v63 + 24);
            v28 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v28)
            {
              goto LABEL_170;
            }

            goto LABEL_135;
          }
        }

        else
        {
          v66 = BYTE6(v61);
          if (v65 > 1)
          {
            goto LABEL_122;
          }
        }

LABEL_129:
        if (v65)
        {
          LODWORD(v69) = HIDWORD(v63) - v63;
          if (__OFSUB__(HIDWORD(v63), v63))
          {
            goto LABEL_171;
          }

          v69 = v69;
        }

        else
        {
          v69 = BYTE6(v62);
        }

LABEL_135:
        if (v66 != v69)
        {
          goto LABEL_163;
        }

        if (v66 >= 1)
        {
          if (v64 > 1)
          {
            if (v64 == 2)
            {
              v73 = *(v60 + 16);
              v72 = *(v60 + 24);
              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v75 = __DataStorage._offset.getter();
                if (__OFSUB__(v73, v75))
                {
                  goto LABEL_188;
                }

                v74 += v73 - v75;
              }

              if (__OFSUB__(v72, v73))
              {
                goto LABEL_183;
              }

              goto LABEL_155;
            }

            memset(v88, 0, 14);
          }

          else
          {
            if (v64)
            {
              v76 = v60;
              if (v60 >> 32 < v60)
              {
                goto LABEL_182;
              }

              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v77 = __DataStorage._offset.getter();
                if (__OFSUB__(v76, v77))
                {
                  goto LABEL_189;
                }

                v74 += v76 - v77;
              }

LABEL_155:
              __DataStorage._length.getter();
              v78 = v86;
              sub_1009F9010(v74, v63, v62, v88);
              v86 = v78;
              if ((v88[0] & 1) == 0)
              {
                goto LABEL_163;
              }

              goto LABEL_159;
            }

            v88[0] = v10[6];
            LOWORD(v88[1]) = v61;
            BYTE2(v88[1]) = BYTE2(v61);
            BYTE3(v88[1]) = BYTE3(v61);
            BYTE4(v88[1]) = BYTE4(v61);
            BYTE5(v88[1]) = BYTE5(v61);
          }

          v79 = v86;
          sub_1009F9010(v88, v63, v62, &v87);
          v86 = v79;
          if (!v87)
          {
LABEL_163:
            sub_10003D4BC(v6, type metadata accessor for CRLProto_Path.Element);
            sub_10003D4BC(v10, type metadata accessor for CRLProto_Path.Element);
            goto LABEL_164;
          }
        }

LABEL_159:
        type metadata accessor for UnknownStorage();
        sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
        v80 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10003D4BC(v6, type metadata accessor for CRLProto_Path.Element);
        sub_10003D4BC(v10, type metadata accessor for CRLProto_Path.Element);
        if (v80)
        {
          v14 = v84 + v83;
          v13 = v85 + v83;
          if (--v11)
          {
            continue;
          }
        }

        return v80 & 1;
      }

      v25 = 0;
      if (!v19 && v20 == 0xC000000000000000 && v21 >> 62 == 3)
      {
        v25 = 0;
        if (!v22 && v21 == 0xC000000000000000)
        {
          goto LABEL_65;
        }
      }

LABEL_30:
      if (v24 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    v80 = 1;
  }

  else
  {
LABEL_164:
    v80 = 0;
  }

  return v80 & 1;
}

void sub_10066F154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_100006370(0, &qword_1019F54D0);
    v5 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v13 = *(v5 - 2);

      v14 = v10;

      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (v8 == v11 && v9 == v12)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          return;
        }
      }

      v5 += 3;
      if (!--v2)
      {
        return;
      }
    }
  }
}

uint64_t sub_10066F2C0(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v67[-v8];
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v74);
  v81 = &v67[-v13];
  v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v15);
  v79 = &v67[-v19];
  __chkstk_darwin(v18);
  v78 = &v67[-v20];
  v84 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v21 = __chkstk_darwin(v84);
  v80 = &v67[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v76 = &v67[-v24];
  __chkstk_darwin(v23);
  v75 = &v67[-v25];
  v83 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v83);
  v27 = &v67[-v26];
  v82 = _s4NodeVMa(0);
  v28 = __chkstk_darwin(v82);
  v30 = &v67[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v33 = &v67[-v32];
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
    goto LABEL_44;
  }

  if (!v34 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v69 = v12;
  v70 = v17;
  v71 = v7;
  v72 = v9;
  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = a1 + v35;
  v37 = a2 + v35;
  v77 = *(v31 + 72);
  v73 = v30;
  while (1)
  {
    sub_10004FCC4(v36, v33, _s4NodeVMa);
    sub_10004FCC4(v37, v30, _s4NodeVMa);
    v38 = *(v83 + 48);
    sub_10004FCC4(v33, v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10004FCC4(v30, &v27[v38], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v50 = v75;
      sub_10004FCC4(v27, v75, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_39;
      }

      v51 = *v50;
      v52 = v27[v38];
      sub_10003D4BC(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v51 != v52)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    }

    v40 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    sub_10004FCC4(v27, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v65 = _s5BoardVMa;
LABEL_38:
      sub_10003D4BC(v40, v65);
LABEL_39:
      sub_10000CAAC(v27, &qword_101A000E0);
      goto LABEL_43;
    }

    v53 = v72;
    sub_1000252C0(v40, v72, _s5BoardVMa);
    sub_1000252C0(&v27[v38], v7, _s5BoardVMa);
    v54 = sub_1012FFD60(v53, v7);
    sub_10003D4BC(v7, _s5BoardVMa);
    sub_10003D4BC(v53, _s5BoardVMa);
    sub_10003D4BC(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if ((v54 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_32:
    v64 = sub_10066F2C0(*&v33[*(v82 + 20)], *&v30[*(v82 + 20)]);
    sub_10003D4BC(v30, _s4NodeVMa);
    sub_10003D4BC(v33, _s4NodeVMa);
    if (v64)
    {
      v37 += v77;
      v36 += v77;
      if (--v34)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  v40 = v76;
  sub_10004FCC4(v27, v76, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v65 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    goto LABEL_38;
  }

  v41 = v78;
  sub_1000252C0(v40, v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v42 = v79;
  sub_1000252C0(&v27[v38], v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v43 = *(v74 + 48);
  v44 = v81;
  sub_10004FCC4(v41, v81, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10004FCC4(v42, &v44[v43], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v45 = sub_1005B981C(&qword_1019F3480);
  v46 = *(*(v45 - 8) + 48);
  v47 = v46(v44, 5, v45);
  if (v47 > 2)
  {
    v30 = v73;
    if (v47 == 3)
    {
      v61 = &v81[v43];
      v49 = v81;
      if (v46(v61, 5, v45) != 3)
      {
        goto LABEL_41;
      }
    }

    else if (v47 == 4)
    {
      v55 = &v81[v43];
      v49 = v81;
      if (v46(v55, 5, v45) != 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v63 = &v81[v43];
      v49 = v81;
      if (v46(v63, 5, v45) != 5)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_31;
  }

  v30 = v73;
  if (v47)
  {
    if (v47 == 1)
    {
      v48 = &v81[v43];
      v49 = v81;
      if (v46(v48, 5, v45) != 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v62 = &v81[v43];
      v49 = v81;
      if (v46(v62, 5, v45) != 2)
      {
        goto LABEL_41;
      }
    }

LABEL_31:
    sub_10003D4BC(v49, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003D4BC(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003D4BC(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003D4BC(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v7 = v71;
    goto LABEL_32;
  }

  v56 = v81;
  sub_10004FCC4(v81, v70, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (!v46(&v56[v43], 5, v45))
  {
    v57 = v81;
    v58 = &v81[v43];
    v59 = v69;
    sub_1000252C0(v58, v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v60 = v70;
    v68 = sub_100F888B4(v70, v59);
    sub_10003D4BC(v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10003D4BC(v60, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v49 = v57;
    v30 = v73;
    if (!v68)
    {
      sub_10003D4BC(v57, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  sub_10003D4BC(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v49 = v81;
  v30 = v73;
LABEL_41:
  sub_10000CAAC(v49, &qword_1019F3460);
LABEL_42:
  sub_10003D4BC(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10003D4BC(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10003D4BC(v27, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_43:
  sub_10003D4BC(v30, _s4NodeVMa);
  sub_10003D4BC(v33, _s4NodeVMa);
LABEL_44:
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_10066FCE0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10066FD3C(uint64_t a1, uint64_t a2)
{
  v70 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v6 - 8);
  v66 = (&v61 - v7);
  v69 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v69);
  v9 = &v61 - v8;
  v67 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  __chkstk_darwin(v67);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v15 = (&v61 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    goto LABEL_73;
  }

  if (!v16 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v64 = v9;
  v65 = (v4 + 48);
  v20 = *(v13 + 72);
  v62 = 0;
  v63 = v20;
  v21 = v67;
  while (1)
  {
    sub_10004FCC4(v18, v15, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    if (!v16)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
    }

    v71 = v16;
    v72 = v19;
    v73 = v18;
    sub_10004FCC4(v19, v11, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    v22 = *(v21 + 28);
    v23 = *(v69 + 48);
    v24 = v64;
    sub_10000BE14(v15 + v22, v64, &qword_1019F67C0);
    sub_10000BE14(v11 + v22, v24 + v23, &qword_1019F67C0);
    v25 = *v65;
    v26 = v70;
    if ((*v65)(v24, 1, v70) == 1)
    {
      if (v25(v24 + v23, 1, v26) != 1)
      {
        goto LABEL_70;
      }

      sub_10000CAAC(v24, &qword_1019F67C0);
      goto LABEL_60;
    }

    v27 = v66;
    sub_10000BE14(v24, v66, &qword_1019F67C0);
    if (v25(v24 + v23, 1, v26) == 1)
    {
      break;
    }

    v28 = v24 + v23;
    v29 = v68;
    sub_1000252C0(v28, v68, type metadata accessor for CRLProto_Data);
    v30 = *v27;
    v31 = v27[1];
    v33 = *v29;
    v32 = v29[1];
    v34 = v31 >> 62;
    v35 = v32 >> 62;
    if (v31 >> 62 == 3)
    {
      v36 = 0;
      if (!v30 && v31 == 0xC000000000000000 && v32 >> 62 == 3)
      {
        v36 = 0;
        if (!v33 && v32 == 0xC000000000000000)
        {
          goto LABEL_59;
        }
      }

LABEL_26:
      if (v35 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v42 = *(v30 + 16);
        v41 = *(v30 + 24);
        v39 = __OFSUB__(v41, v42);
        v36 = v41 - v42;
        if (v39)
        {
          goto LABEL_79;
        }

        goto LABEL_26;
      }

      v36 = 0;
      if (v35 <= 1)
      {
        goto LABEL_27;
      }
    }

    else if (v34)
    {
      LODWORD(v36) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_78;
      }

      v36 = v36;
      if (v35 <= 1)
      {
LABEL_27:
        if (v35)
        {
          LODWORD(v40) = HIDWORD(v33) - v33;
          if (__OFSUB__(HIDWORD(v33), v33))
          {
            goto LABEL_76;
          }

          v40 = v40;
        }

        else
        {
          v40 = BYTE6(v32);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v36 = BYTE6(v31);
      if (v35 <= 1)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    if (v35 != 2)
    {
      if (v36)
      {
        goto LABEL_68;
      }

      goto LABEL_59;
    }

    v38 = *(v33 + 16);
    v37 = *(v33 + 24);
    v39 = __OFSUB__(v37, v38);
    v40 = v37 - v38;
    if (v39)
    {
      goto LABEL_77;
    }

LABEL_33:
    if (v36 != v40)
    {
      goto LABEL_68;
    }

    if (v36 >= 1)
    {
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v43 = *(v30 + 16);
          v44 = *(v30 + 24);
          v45 = __DataStorage._bytes.getter();
          if (v45)
          {
            v46 = __DataStorage._offset.getter();
            if (__OFSUB__(v43, v46))
            {
              goto LABEL_82;
            }

            v45 += v43 - v46;
          }

          if (__OFSUB__(v44, v43))
          {
            goto LABEL_81;
          }

          __DataStorage._length.getter();
          v47 = v62;
          sub_1009F9010(v45, v33, v32, v75);
          v62 = v47;
          v27 = v66;
          if ((v75[0] & 1) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_59;
        }

        memset(v75, 0, 14);
      }

      else
      {
        if (v34)
        {
          v48 = v30;
          if (v30 >> 32 < v30)
          {
            goto LABEL_80;
          }

          v49 = __DataStorage._bytes.getter();
          if (v49)
          {
            v50 = v49;
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v48, v51))
            {
              goto LABEL_83;
            }

            v61 = v48 - v51 + v50;
          }

          else
          {
            v61 = 0;
          }

          v27 = v66;
          __DataStorage._length.getter();
          v53 = v62;
          sub_1009F9010(v61, v33, v32, v75);
          v62 = v53;
          if ((v75[0] & 1) == 0)
          {
LABEL_68:
            sub_10003D4BC(v68, type metadata accessor for CRLProto_Data);
            sub_10003D4BC(v27, type metadata accessor for CRLProto_Data);
            v59 = &qword_1019F67C0;
            goto LABEL_71;
          }

          goto LABEL_59;
        }

        v75[0] = *v27;
        LOWORD(v75[1]) = v31;
        BYTE2(v75[1]) = BYTE2(v31);
        BYTE3(v75[1]) = BYTE3(v31);
        BYTE4(v75[1]) = BYTE4(v31);
        BYTE5(v75[1]) = BYTE5(v31);
      }

      v52 = v62;
      sub_1009F9010(v75, v33, v32, &v74);
      v62 = v52;
      if (!v74)
      {
        goto LABEL_68;
      }
    }

LABEL_59:
    type metadata accessor for UnknownStorage();
    sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    v54 = v27;
    v55 = v68;
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v57 = v55;
    v21 = v67;
    sub_10003D4BC(v57, type metadata accessor for CRLProto_Data);
    sub_10003D4BC(v54, type metadata accessor for CRLProto_Data);
    sub_10000CAAC(v24, &qword_1019F67C0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_60:
    if ((*v15 != *v11 || v15[1] != v11[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v15[2] != v11[2])
    {
      goto LABEL_72;
    }

    type metadata accessor for UnknownStorage();
    sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10003D4BC(v11, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_10003D4BC(v15, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    if (v58)
    {
      v16 = v71 - 1;
      v19 = v72 + v63;
      v18 = v73 + v63;
      if (v71 != 1)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  sub_10003D4BC(v27, type metadata accessor for CRLProto_Data);
LABEL_70:
  v59 = &qword_1019F6CA0;
LABEL_71:
  sub_10000CAAC(v24, v59);
LABEL_72:
  sub_10003D4BC(v11, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  sub_10003D4BC(v15, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
LABEL_73:
  v58 = 0;
  return v58 & 1;
}

BOOL sub_10067063C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = (a1 + v5);
      v7 = (a2 + v5);
      v8 = *(a2 + v5 + 80);
      if (*(a1 + v5 + 80) > 1u)
      {
        v9 = v7[6];
        v10 = v7[7];
        v12 = v7[8];
        v11 = v7[9];
        if (*(a1 + v5 + 80) == 2)
        {
          if (v8 != 2)
          {
            return 0;
          }

          v13 = v6[6];
          v14 = v6[7];
          v15 = v6[8];
          v16 = v6[9];
          if (!sub_10011ECC8(*(a1 + v5 + 32), *(a1 + v5 + 40), *(a2 + v5 + 32), *(a2 + v5 + 40)))
          {
            return 0;
          }

          result = sub_10011ECC8(v13, v14, v9, v10);
          if (!result)
          {
            return result;
          }

          result = sub_10011ECC8(v15, v16, v12, v11);
          if (!result)
          {
            return result;
          }
        }

        else if (v8 != 3 || *(a2 + v5 + 40) | *(a2 + v5 + 32) | *&v9 | *&v10 | *&v12 | *&v11)
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 80))
        {
          if (v8 != 1)
          {
            return 0;
          }
        }

        else if (*(a2 + v5 + 80))
        {
          return 0;
        }

        if (!sub_10011ECC8(*(a1 + v5 + 32), *(a1 + v5 + 40), *(a2 + v5 + 32), *(a2 + v5 + 40)))
        {
          return 0;
        }
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1006707A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLDisjointPosition.Element();
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_10004FCC4(v13, v10, type metadata accessor for CRLDisjointPosition.Element);
      sub_10004FCC4(v14, v7, type metadata accessor for CRLDisjointPosition.Element);
      if (*v10 != *v7)
      {
        break;
      }

      v16 = static UUID.== infix(_:_:)();
      sub_10003D4BC(v7, type metadata accessor for CRLDisjointPosition.Element);
      sub_10003D4BC(v10, type metadata accessor for CRLDisjointPosition.Element);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_10003D4BC(v7, type metadata accessor for CRLDisjointPosition.Element);
    sub_10003D4BC(v10, type metadata accessor for CRLDisjointPosition.Element);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1006709AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100670A08(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for CRLProto_Data(0);
  v4 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = (v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v6 - 8);
  v99 = (v86 - v7);
  v94 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v94);
  v9 = v86 - v8;
  v93 = type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
  __chkstk_darwin(v93);
  v100 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v86 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    goto LABEL_71;
  }

  if (!v15 || a1 == a2)
  {
    v83 = 1;
    return v83 & 1;
  }

  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = a1 + v16;
  v18 = (v4 + 48);
  v19 = a2 + v16;
  v91 = *(v12 + 72);
  v20 = &unk_1019F6C90;
  v89 = 0;
  v90 = v18;
  v95 = v9;
  while (1)
  {
    v97 = v17;
    sub_10004FCC4(v17, v14, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
    if (!v15)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v21 = v20;
    v96 = v19;
    v22 = v14;
    v23 = v100;
    sub_10004FCC4(v19, v100, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
    v24 = *(v93 + 20);
    v25 = *(v94 + 48);
    v26 = v22;
    v27 = &v22[v24];
    v28 = v95;
    sub_10000BE14(v27, v95, &qword_1019F67C0);
    sub_10000BE14(v23 + v24, v28 + v25, &qword_1019F67C0);
    v29 = *v18;
    v30 = v98;
    if ((*v18)(v28, 1, v98) != 1)
    {
      break;
    }

    v31 = v29(v28 + v25, 1, v30);
    v14 = v26;
    if (v31 != 1)
    {
      goto LABEL_68;
    }

    sub_10000CAAC(v28, &qword_1019F67C0);
    v32 = v15;
    v20 = v21;
LABEL_62:
    type metadata accessor for UnknownStorage();
    sub_1000063B8(v20, &type metadata accessor for UnknownStorage);
    v82 = v100;
    v83 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10003D4BC(v82, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
    sub_10003D4BC(v14, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
    if (v83)
    {
      v15 = v32 - 1;
      v19 = v96 + v91;
      v17 = v97 + v91;
      if (v32 != 1)
      {
        continue;
      }
    }

    return v83 & 1;
  }

  sub_10000BE14(v28, v99, &qword_1019F67C0);
  if (v29(v28 + v25, 1, v30) != 1)
  {
    v33 = v28 + v25;
    v34 = v92;
    sub_1000252C0(v33, v92, type metadata accessor for CRLProto_Data);
    v35 = *v99;
    v36 = v99[1];
    v37 = *v34;
    v38 = v34[1];
    v39 = v36 >> 62;
    v40 = v38 >> 62;
    v14 = v26;
    if (v36 >> 62 == 3)
    {
      v41 = 0;
      v32 = v15;
      v20 = v21;
      if (!v35 && v36 == 0xC000000000000000 && v38 >> 62 == 3)
      {
        v41 = 0;
        if (!v37 && v38 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v32 = v15;
      v20 = v21;
      if (v39 <= 1)
      {
        if (v39)
        {
          LODWORD(v41) = HIDWORD(v35) - v35;
          if (__OFSUB__(HIDWORD(v35), v35))
          {
            goto LABEL_77;
          }

          v41 = v41;
          if (v40 <= 1)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v41 = BYTE6(v36);
          if (v40 <= 1)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_20;
      }

      if (v39 != 2)
      {
        v41 = 0;
        if (v40 <= 1)
        {
LABEL_27:
          if (v40)
          {
            LODWORD(v45) = HIDWORD(v37) - v37;
            if (__OFSUB__(HIDWORD(v37), v37))
            {
              goto LABEL_75;
            }

            v45 = v45;
          }

          else
          {
            v45 = BYTE6(v38);
          }

          goto LABEL_33;
        }

LABEL_20:
        if (v40 != 2)
        {
          if (v41)
          {
            goto LABEL_66;
          }

          goto LABEL_61;
        }

        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        v44 = __OFSUB__(v42, v43);
        v45 = v42 - v43;
        if (v44)
        {
          goto LABEL_74;
        }

LABEL_33:
        if (v41 != v45)
        {
          goto LABEL_66;
        }

        if (v41 < 1)
        {
          goto LABEL_61;
        }

        if (v39 > 1)
        {
          if (v39 != 2)
          {
            memset(v102, 0, 14);
            v65 = v37;
            sub_100024E98(v37, v38);
            v66 = v89;
            sub_1009F9010(v102, v65, v38, &v101);
            v89 = v66;
            v50 = v65;
LABEL_54:
            sub_10002640C(v50, v38);
            if (!v101)
            {
              goto LABEL_66;
            }

LABEL_61:
            type metadata accessor for UnknownStorage();
            sub_1000063B8(v20, &type metadata accessor for UnknownStorage);
            v75 = v99;
            v76 = v92;
            v77 = dispatch thunk of static Equatable.== infix(_:_:)();
            v78 = v76;
            v79 = v75;
            v18 = v90;
            sub_10003D4BC(v78, type metadata accessor for CRLProto_Data);
            v80 = v79;
            v81 = v95;
            sub_10003D4BC(v80, type metadata accessor for CRLProto_Data);
            sub_10000CAAC(v81, &qword_1019F67C0);
            if ((v77 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_62;
          }

          v51 = *(v35 + 16);
          v52 = *(v35 + 24);
          v88 = *v34;
          sub_100024E98(v37, v38);
          v53 = __DataStorage._bytes.getter();
          v87 = v38;
          if (v53)
          {
            v54 = v53;
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v51, v55))
            {
              goto LABEL_80;
            }

            v56 = v51;
            v57 = v51 - v55 + v54;
            if (__OFSUB__(v52, v56))
            {
              goto LABEL_79;
            }
          }

          else
          {
            v67 = v51;
            v57 = 0;
            if (__OFSUB__(v52, v67))
            {
              goto LABEL_79;
            }
          }

          __DataStorage._length.getter();
          v68 = v87;
          v69 = v88;
          v70 = v89;
          sub_1009F9010(v57, v88, v87, v102);
          v89 = v70;
          v71 = v69;
          v72 = v68;
        }

        else
        {
          if (!v39)
          {
            v102[0] = *v99;
            LOWORD(v102[1]) = v36;
            BYTE2(v102[1]) = BYTE2(v36);
            BYTE3(v102[1]) = BYTE3(v36);
            BYTE4(v102[1]) = BYTE4(v36);
            BYTE5(v102[1]) = BYTE5(v36);
            v48 = v37;
            sub_100024E98(v37, v38);
            v49 = v89;
            sub_1009F9010(v102, v48, v38, &v101);
            v89 = v49;
            v50 = v48;
            goto LABEL_54;
          }

          v58 = v34[1];
          v59 = v35;
          v60 = v35 >> 32;
          v86[1] = v60 - v59;
          if (v60 < v59)
          {
            goto LABEL_78;
          }

          v88 = v37;
          sub_100024E98(v37, v58);
          v61 = __DataStorage._bytes.getter();
          if (v61)
          {
            v62 = v61;
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v59, v63))
            {
              goto LABEL_81;
            }

            v64 = v59 - v63 + v62;
          }

          else
          {
            v64 = 0;
          }

          __DataStorage._length.getter();
          v73 = v88;
          v74 = v89;
          sub_1009F9010(v64, v88, v58, v102);
          v89 = v74;
          v71 = v73;
          v72 = v58;
        }

        sub_10002640C(v71, v72);
        if ((v102[0] & 1) == 0)
        {
LABEL_66:
          sub_10003D4BC(v92, type metadata accessor for CRLProto_Data);
          sub_10003D4BC(v99, type metadata accessor for CRLProto_Data);
          v84 = &qword_1019F67C0;
          goto LABEL_69;
        }

        goto LABEL_61;
      }

      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      v44 = __OFSUB__(v46, v47);
      v41 = v46 - v47;
      if (v44)
      {
        goto LABEL_76;
      }
    }

    if (v40 <= 1)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_10003D4BC(v99, type metadata accessor for CRLProto_Data);
  v14 = v26;
LABEL_68:
  v84 = &qword_1019F6CA0;
LABEL_69:
  sub_10000CAAC(v28, v84);
LABEL_70:
  sub_10003D4BC(v100, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
  sub_10003D4BC(v14, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference);
LABEL_71:
  v83 = 0;
  return v83 & 1;
}

uint64_t sub_100671390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v62 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v63 = sub_1005B981C(&qword_1019F6CA0);
  __chkstk_darwin(v63);
  v61 = &v53 - v10;
  v60 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  __chkstk_darwin(v60);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = (&v53 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_51:
    v52 = 0;
    return v52 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v52 = 1;
    return v52 & 1;
  }

  v54 = 0;
  v55 = v4;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v58 = &v53 - v15;
  v59 = (v5 + 48);
  v56 = *(v14 + 72);
  v57 = v9;
  v21 = v60;
  v22 = v61;
  while (1)
  {
    sub_10004FCC4(v19, v16, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
    v64 = v19;
    sub_10004FCC4(v20, v12, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
    v23 = *v16 == *v12 && v16[1] == v12[1];
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_50;
    }

    v65 = v17;
    v24 = *(v21 + 24);
    v25 = *(v63 + 48);
    sub_10000BE14(v16 + v24, v22, &qword_1019F67C0);
    sub_10000BE14(v12 + v24, v22 + v25, &qword_1019F67C0);
    v26 = *v59;
    if ((*v59)(v22, 1, v4) == 1)
    {
      if (v26(v22 + v25, 1, v4) != 1)
      {
        goto LABEL_49;
      }

      sub_10000CAAC(v22, &qword_1019F67C0);
      v16 = v58;
      v27 = v65;
      goto LABEL_43;
    }

    v28 = v57;
    sub_10000BE14(v22, v57, &qword_1019F67C0);
    if (v26(v22 + v25, 1, v4) == 1)
    {
      sub_10003D4BC(v28, type metadata accessor for CRLProto_Data);
LABEL_49:
      sub_10000CAAC(v22, &qword_1019F6CA0);
      v16 = v58;
LABEL_50:
      sub_10003D4BC(v12, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      sub_10003D4BC(v16, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
      goto LABEL_51;
    }

    v29 = v62;
    result = sub_1000252C0(v22 + v25, v62, type metadata accessor for CRLProto_Data);
    v31 = *v28;
    v32 = v28[1];
    v33 = *v29;
    v34 = v29[1];
    v35 = v32 >> 62;
    v36 = v34 >> 62;
    if (v32 >> 62 == 3)
    {
      v37 = 0;
      v16 = v58;
      if (v31)
      {
        goto LABEL_26;
      }

      v27 = v65;
      if (v32 == 0xC000000000000000 && v34 >> 62 == 3)
      {
        v37 = 0;
        if (!v33 && v34 == 0xC000000000000000)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v16 = v58;
      if (!v35)
      {
        v37 = BYTE6(v32);
LABEL_26:
        v27 = v65;
        goto LABEL_28;
      }

      v27 = v65;
      if (v35 == 1)
      {
        LODWORD(v37) = HIDWORD(v31) - v31;
        if (__OFSUB__(HIDWORD(v31), v31))
        {
          goto LABEL_54;
        }

        v37 = v37;
      }

      else
      {
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        v40 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v40)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_28:
    if (v36 <= 1)
    {
      if (v36)
      {
        LODWORD(v41) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_53;
        }

        v41 = v41;
      }

      else
      {
        v41 = BYTE6(v34);
      }

LABEL_37:
      if (v37 != v41 || v37 >= 1 && (v44 = *v28, sub_100024E98(v33, v34), v45 = v44, v46 = v54, v47 = sub_1009F9240(v45, v32, v33, v34), v54 = v46, (v47 & 1) == 0))
      {
LABEL_47:
        sub_10003D4BC(v62, type metadata accessor for CRLProto_Data);
        sub_10003D4BC(v57, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v22, &qword_1019F67C0);
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    if (v36 == 2)
    {
      break;
    }

    if (v37)
    {
      goto LABEL_47;
    }

LABEL_42:
    v4 = v55;
    type metadata accessor for UnknownStorage();
    sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    v48 = v57;
    v49 = v62;
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10003D4BC(v49, type metadata accessor for CRLProto_Data);
    v51 = v48;
    v22 = v61;
    sub_10003D4BC(v51, type metadata accessor for CRLProto_Data);
    sub_10000CAAC(v22, &qword_1019F67C0);
    v21 = v60;
    if ((v50 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_43:
    type metadata accessor for UnknownStorage();
    sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10003D4BC(v12, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
    sub_10003D4BC(v16, type metadata accessor for CRLProto_ObjectInfo.AssetReference);
    if (v52)
    {
      v20 += v56;
      v19 = v64 + v56;
      v17 = v27 - 1;
      if (v17)
      {
        continue;
      }
    }

    return v52 & 1;
  }

  v43 = *(v33 + 16);
  v42 = *(v33 + 24);
  v40 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (!v40)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_100671AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
  __chkstk_darwin(v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_10004FCC4(v13, v10, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
      sub_10004FCC4(v14, v6, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
      v16 = *v10 == *v6 && v10[1] == v6[1];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v10[2] != v6[2])
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_1000063B8(&unk_1019F6C90, &type metadata accessor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10003D4BC(v6, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
      sub_10003D4BC(v10, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_10003D4BC(v6, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    sub_10003D4BC(v10, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100671D58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100671DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      if (*(v4 - 2) != *(i - 2))
      {
        return 0;
      }

      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(v7 + 16);
          v17 = *(v7 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_59;
          }

          goto LABEL_24;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_58;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_25:
          if (v11)
          {
            LODWORD(v16) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE6(v8);
          }

          goto LABEL_29;
        }
      }

      else
      {
        v12 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      if (v11 != 2)
      {
        if (v12)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_57;
      }

LABEL_29:
      if (v12 != v16)
      {
        return 0;
      }

      if (v12 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v29 = v3;
          v19 = *(v7 + 16);
          v28 = *(v7 + 24);
          sub_100024E98(v7, v6);
          sub_100024E98(v9, v8);
          v20 = __DataStorage._bytes.getter();
          if (v20)
          {
            v21 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_62;
            }

            v20 += v19 - v21;
          }

          if (__OFSUB__(v28, v19))
          {
            goto LABEL_61;
          }

          __DataStorage._length.getter();
          v22 = v20;
          v23 = v9;
          v24 = v8;
          v3 = v29;
          goto LABEL_50;
        }

        memset(v31, 0, 14);
        sub_100024E98(v7, v6);
        sub_100024E98(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_60;
          }

          sub_100024E98(v7, v6);
          sub_100024E98(v9, v8);
          v25 = __DataStorage._bytes.getter();
          if (v25)
          {
            v26 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v26))
            {
              goto LABEL_63;
            }

            v25 += v7 - v26;
          }

          __DataStorage._length.getter();
          v22 = v25;
          v23 = v9;
          v24 = v8;
LABEL_50:
          sub_1009F9010(v22, v23, v24, v31);
          sub_10002640C(v9, v8);
          sub_10002640C(v7, v6);
          if ((v31[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v31[0] = *(v4 - 1);
        LOWORD(v31[1]) = v6;
        BYTE2(v31[1]) = BYTE2(v6);
        BYTE3(v31[1]) = BYTE3(v6);
        BYTE4(v31[1]) = BYTE4(v6);
        BYTE5(v31[1]) = BYTE5(v6);
        sub_100024E98(v7, v6);
        sub_100024E98(v9, v8);
      }

      sub_1009F9010(v31, v9, v8, &v30);
      sub_10002640C(v9, v8);
      sub_10002640C(v7, v6);
      if (!v30)
      {
        return 0;
      }

LABEL_6:
      v4 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    v12 = 0;
    if (!v7 && v6 == 0xC000000000000000 && *i >> 62 == 3)
    {
      v12 = 0;
      if (!v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_24:
    if (v11 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  return 1;
}

uint64_t sub_1006721D8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v44 = v5;
  v45 = v6;
  *&v42[936] = v8;
  v43 = v2;
  *&v42[920] = v3;
  *&v42[928] = v4;
  __chkstk_darwin(a1);
  v10 = (v9 + 32);
  v12 = (v11 + 32);
  for (i = v13 - 1; ; --i)
  {
    memcpy(v37, v10, 0x3BDuLL);
    memcpy(v38, v12, 0x3BDuLL);
    v22 = v37[0] == v38[0] && v37[1] == v38[1];
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    memcpy(v35, &v37[2], 0x3ADuLL);
    memcpy(&v35[944], &v38[2], 0x3ADuLL);
    memcpy(v36, &v37[2], 0x3ADuLL);
    if (sub_10067EF0C(v36) != 1)
    {
      memcpy(v33, &v35[944], 0x3ADuLL);
      if (sub_10067EF0C(v33) == 1)
      {
LABEL_28:
        memcpy(v34, v35, 0x75DuLL);
        sub_10000BE14(&v37[2], v33, &qword_1019F6F18);
        sub_10000BE14(&v38[2], v33, &qword_1019F6F18);
        sub_10000CAAC(v34, &unk_1019F6F20);
        return 0;
      }

      memcpy(v31, &v35[944], 0x3ADuLL);
      memcpy(v32, v35, 0x3ADuLL);
      v23 = sub_10067EF20(v32);
      if (v23)
      {
        if (v23 != 1)
        {
          memcpy(__dst, &v35[944], 0x3ADuLL);
          if (sub_10067EF20(__dst) != 2)
          {
            goto LABEL_30;
          }

          sub_10067EF38(v37, v34);
          sub_10067EF38(v38, v34);
          sub_10000BE14(&v37[2], v34, &qword_1019F6F18);
          sub_10000BE14(&v38[2], v34, &qword_1019F6F18);
          goto LABEL_9;
        }

        v16 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, *&v24);
        memcpy(v41, v16, 0x3ACuLL);
        memcpy(__dst, &v35[944], 0x3ADuLL);
        if (sub_10067EF20(__dst) != 1)
        {
          goto LABEL_30;
        }

        v19 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v17);
        memcpy(v42, v19, 0x3ACuLL);
        sub_10067EF38(v37, v34);
        sub_10067EF38(v38, v34);
        sub_10000BE14(&v37[2], v34, &qword_1019F6F18);
        sub_10000BE14(&v38[2], v34, &qword_1019F6F18);
        v20 = _s8Freeform17TSContentLanguageO6ModelsO22ScaffoldCharacterStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v41);
      }

      else
      {
        v26 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, *&v24);
        memcpy(v39, v26, 0x37CuLL);
        memcpy(__dst, &v35[944], 0x3ADuLL);
        if (sub_10067EF20(__dst))
        {
LABEL_30:
          sub_10067EF38(v37, v34);
          sub_10067EF38(v38, v34);
          sub_10000BE14(&v37[2], v34, &qword_1019F6F18);
          sub_10000BE14(&v38[2], v34, &qword_1019F6F18);
          sub_10000CAAC(v31, &qword_1019F6F18);
LABEL_31:
          memcpy(v34, v35, 0x3ADuLL);
          sub_10000CAAC(v34, &qword_1019F6F18);
          sub_10067EF94(v38);
          sub_10067EF94(v37);
          return 0;
        }

        v29 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(__dst, *&v27);
        memcpy(v40, v29, sizeof(v40));
        sub_10067EF38(v37, v34);
        sub_10067EF38(v38, v34);
        sub_10000BE14(&v37[2], v34, &qword_1019F6F18);
        sub_10000BE14(&v38[2], v34, &qword_1019F6F18);
        v20 = _s8Freeform17TSContentLanguageO6ModelsO19CharacterPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v39);
      }

      v21 = v20;
      sub_10000CAAC(v31, &qword_1019F6F18);
      if (!v21)
      {
        goto LABEL_31;
      }

LABEL_9:
      memcpy(v34, v35, 0x3ADuLL);
      sub_10000CAAC(v34, &qword_1019F6F18);
      sub_10067EF94(v38);
      sub_10067EF94(v37);
      if (!i)
      {
        return 1;
      }

      goto LABEL_10;
    }

    memcpy(v34, &v35[944], 0x3ADuLL);
    if (sub_10067EF0C(v34) != 1)
    {
      goto LABEL_28;
    }

    memcpy(v33, v35, 0x3ADuLL);
    sub_10000BE14(&v37[2], v32, &qword_1019F6F18);
    sub_10000BE14(&v38[2], v32, &qword_1019F6F18);
    sub_10000CAAC(v33, &qword_1019F6F18);
    if (!i)
    {
      return 1;
    }

LABEL_10:
    v12 += 960;
    v10 += 960;
  }

  return 0;
}

uint64_t sub_100672778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *v4;
      v9 = *(v3 - 4);
      v10 = *(v3 - 3);
      v11 = *(v3 - 1);
      v25 = *(v3 - 2);
      v12 = *v3;
      v13 = v8 >> 5;
      if (v8 >> 5 > 3)
      {
        if (v8 >> 5 > 5)
        {
          if (v13 == 6)
          {
            if ((v12 & 0xE0) != 0xC0)
            {
              return 0;
            }

            if (v6 == v9 && v7 == v10)
            {
              goto LABEL_10;
            }

            goto LABEL_54;
          }

          if (v12 < 0xE0)
          {
            return 0;
          }

          result = 0;
          if (v10 | v9 | v25 | v11 || v12 != 224)
          {
            return result;
          }
        }

        else if (v13 == 4)
        {
          if ((v12 & 0xE0) != 0x80 || *&v6 != *&v9)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v12 & 0xE0) != 0xA0 || ((v9 ^ v6))
          {
            return result;
          }
        }
      }

      else
      {
        v15 = *(v4 - 2);
        v14 = *(v4 - 1);
        if (v8 >> 5 <= 1)
        {
          if (v13)
          {
            if ((v12 & 0xE0) != 0x20)
            {
              return 0;
            }

            v23 = *(v3 - 1);
            v24 = *(v4 - 1);
            sub_10067F098(v9, v10, v25, v11, v12);
            sub_10067F098(v6, v7, v15, v24, v8);
            v17 = _s8Freeform17TSContentLanguageO6ModelsO13UnknownObjectV23__derived_struct_equalsySbAG_AGtFZ_0(v6, v9);
LABEL_37:
            v22 = v17;
            sub_10067F114(v9, v10, v25, v23, v12);
            sub_10067F114(v6, v7, v15, v24, v8);
            if ((v22 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_10;
          }

          if (v12 >= 0x20)
          {
            return 0;
          }

          if (v8)
          {
            if ((v12 & 1) == 0)
            {
              return 0;
            }

            if (v7)
            {
              if (!v10)
              {
                return 0;
              }

LABEL_47:
              if (v6 != v9 || v7 != v10)
              {
                v19 = *(v4 - 1);
                v20 = *(v3 - 1);
                v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v14 = v19;
                v11 = v20;
                if ((v21 & 1) == 0)
                {
                  return 0;
                }
              }
            }

            else if (v10)
            {
              return 0;
            }

            if (v15 == v25 && v14 == v11)
            {
              goto LABEL_10;
            }

LABEL_54:
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_10;
          }

          if (v12)
          {
            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          if ((v12 & 0xE0) != 0x40)
          {
            return 0;
          }

          v23 = *(v3 - 1);
          v24 = *(v4 - 1);
          sub_10067F098(v9, v10, v25, v11, v12);
          sub_10067F098(v6, v7, v15, v24, v8);
          v17 = sub_100672778(v6, v9);
          goto LABEL_37;
        }

        if ((v12 & 0xE0) != 0x60 || v6 != v9)
        {
          return 0;
        }
      }

LABEL_10:
      v4 += 5;
      v3 += 5;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100672A60(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_100672AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 32);
        v6 = *(v3 + 64);
        v13[3] = *(v3 + 48);
        v13[4] = v6;
        v14 = *(v3 + 80);
        v7 = *(v3 + 16);
        v13[0] = *v3;
        v13[1] = v7;
        v13[2] = v5;
        v8 = *(v4 + 48);
        v15[2] = *(v4 + 32);
        v15[3] = v8;
        v15[4] = *(v4 + 64);
        v16 = *(v4 + 80);
        v9 = *(v4 + 16);
        v15[0] = *v4;
        v15[1] = v9;
        sub_10067EFE8(v13, v12);
        sub_10067EFE8(v15, v12);
        v10 = _s8Freeform17TSContentLanguageO6ModelsO13ListLevelTypeV23__derived_struct_equalsySbAG_AGtFZ_0(v13, v15);
        sub_10067F044(v15);
        sub_10067F044(v13);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 88;
        v3 += 88;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100672BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  for (i = 0; ; i += 32)
  {
    v6 = *(a1 + i + 40);
    v8 = *(a1 + i + 48);
    v7 = *(a1 + i + 56);
    v9 = *(a2 + i + 40);
    v11 = *(a2 + i + 48);
    v10 = *(a2 + i + 56);
    if (v6 == 4)
    {
      if (v9 != 4)
      {
        return 0;
      }

      goto LABEL_37;
    }

    if (v9 == 4)
    {
      return 0;
    }

    v24 = *(a1 + i + 48);
    v12 = 0x7468676972;
    if (v6 == 2)
    {
      v12 = 1952867692;
    }

    v13 = 0xE400000000000000;
    if (v6 != 2)
    {
      v13 = 0xE500000000000000;
    }

    v14 = 0x6C616D69636564;
    if (!*(a1 + i + 40))
    {
      v14 = 0x7265746E6563;
    }

    v15 = 0xE600000000000000;
    if (*(a1 + i + 40))
    {
      v15 = 0xE700000000000000;
    }

    v16 = *(a1 + i + 40) <= 1u ? v14 : v12;
    v17 = *(a1 + i + 40) <= 1u ? v15 : v13;
    if (*(a2 + i + 40) > 1u)
    {
      if (v9 == 2)
      {
        v18 = 0xE400000000000000;
        if (v16 == 1952867692)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        if (v16 == 0x7468676972)
        {
LABEL_34:
          if (v17 == v18)
          {

            v8 = v24;
            goto LABEL_37;
          }
        }
      }
    }

    else if (*(a2 + i + 40))
    {
      v18 = 0xE700000000000000;
      if (v16 == 0x6C616D69636564)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0xE600000000000000;
      if (v16 == 0x7265746E6563)
      {
        goto LABEL_34;
      }
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v24;
    if ((v19 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_37:
    if (v7)
    {
      break;
    }

    if (v10)
    {
      goto LABEL_51;
    }

LABEL_45:
    if (!--v2)
    {
      return 1;
    }

    result = 0;
    v22 = a1 + i;
    v23 = a2 + i;
    if (*(v22 + 64) != *(v23 + 64))
    {
      return result;
    }
  }

  if (v10)
  {
    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_45;
  }

LABEL_50:

LABEL_51:

  return 0;
}

uint64_t sub_100672EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_100672F54(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = *(v1 + 16);
  if (v3 == *(v2 + 16))
  {
    if (!v3 || v1 == v2)
    {
      return 1;
    }

    else
    {
      v4 = (v1 + 32);
      v5 = (v2 + 32);
      do
      {
        memcpy(__dst, v4, 0x6D9uLL);
        memcpy(v10, v5, 0x6D9uLL);
        sub_10067F194(__dst, v8);
        sub_10067F194(v10, v8);
        v6 = _s8Freeform17TSContentLanguageO6ModelsO9ParagraphV23__derived_struct_equalsySbAG_AGtFZ_0(__dst);
        sub_10067F1F0(v10);
        sub_10067F1F0(__dst);
        if (!v6)
        {
          break;
        }

        v5 += 1760;
        v4 += 1760;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_100673058(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006730B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 - 6), *(i - 6)), vceqq_f64(*(v3 - 4), *(i - 4))))) & 1) != 0; i += 7)
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(i - 1);
      v8 = *i;
      if (*(v3 - 16))
      {
        v10 = 1650946675;
      }

      else
      {
        v10 = 13168;
      }

      if (*(v3 - 16))
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE200000000000000;
      }

      if (*(i - 16))
      {
        v12 = 1650946675;
      }

      else
      {
        v12 = 13168;
      }

      if (*(i - 16))
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE200000000000000;
      }

      if (v10 == v12 && v11 == v13)
      {

        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 0;
        if ((v15 & 1) == 0)
        {
          return result;
        }

        if (v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100673210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v3 - 2);
      v5 = *v3;
      if (*v4)
      {
        if (*&v6 != *&v7)
        {
          v5 = 0;
        }

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        v8 = v6 == v7 && *(v4 - 1) == *(v3 - 1);
        if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100673320(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  __chkstk_darwin(v65);
  v5 = (&v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v9 = (&v61 - v8);
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v62 = *(v7 + 72);
  while (1)
  {
    result = sub_10004FCC4(v12, v9, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    if (!v10)
    {
      break;
    }

    v64 = v10;
    sub_10004FCC4(v13, v5, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    if (*v9 != *v5)
    {
      goto LABEL_56;
    }

    v15 = v65[5];
    v16 = v9 + v15;
    v17 = v5 + v15;
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_56;
    }

    result = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    v18 = *(result + 20);
    v19 = &v16[v18];
    v20 = *&v16[v18];
    v21 = *(v19 + 1);
    v22 = &v17[v18];
    v23 = *v22;
    v24 = v22[1];
    v25 = v21 >> 62;
    v26 = v24 >> 62;
    if (v21 >> 62 == 3)
    {
      if (v20)
      {
        v27 = 0;
      }

      else
      {
        v27 = v21 == 0xC000000000000000;
      }

      if (v27 && v24 >> 62 == 3 && !v23 && v24 == 0xC000000000000000)
      {
        goto LABEL_42;
      }

      v30 = 0;
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        LODWORD(v30) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_62;
        }

        v30 = v30;
      }

      else
      {
        v32 = *(v20 + 16);
        v31 = *(v20 + 24);
        v33 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v33)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v30 = BYTE6(v21);
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        if (v30)
        {
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      v33 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v33)
      {
        goto LABEL_60;
      }
    }

    else if (v26)
    {
      LODWORD(v34) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_61;
      }

      v34 = v34;
    }

    else
    {
      v34 = BYTE6(v24);
    }

    if (v30 != v34)
    {
      goto LABEL_56;
    }

    if (v30 >= 1)
    {
      sub_100024E98(v23, v24);
      if ((sub_1009F9240(v20, v21, v23, v24) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

LABEL_42:
    v37 = v65[6];
    v38 = *(v9 + v37);
    v39 = *(v9 + v37 + 8);
    v40 = (v5 + v37);
    if (v38 != *v40 || v39 != v40[1])
    {
LABEL_56:
      sub_10003D4BC(v5, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      sub_10003D4BC(v9, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      return 0;
    }

    v42 = v65[7];
    v43 = (v9 + v42);
    v44 = *(v9 + v42 + 16);
    v45 = v5 + v42;
    if (v44)
    {
      if ((v45[16] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v45[16])
      {
        goto LABEL_56;
      }

      v47 = *v43;
      v46 = v43[1];
      v48 = *v45;
      v49 = *(v45 + 1);
      v68[0] = sub_10067F244(*v43);
      *&v50 = v47;
      *(&v50 + 1) = v46;
      v63 = v50;
      v68[1] = sub_10067F244(HIDWORD(v47));
      v68[2] = sub_10067F244(DWORD2(v63));
      v68[3] = sub_10067F244(HIDWORD(v63));
      v51 = sub_100AE5050(v68, &v69);
      v53 = v52;
      v66[0] = sub_10067F244(v48);
      *&v54 = v48;
      *(&v54 + 1) = v49;
      v63 = v54;
      v66[1] = sub_10067F244(HIDWORD(v48));
      v66[2] = sub_10067F244(DWORD2(v63));
      v66[3] = sub_10067F244(HIDWORD(v63));
      v55 = sub_100AE5050(v66, v67);
      v57 = v56;
      LOBYTE(v46) = sub_1009F9488(v51, v53, v55, v56);
      sub_10002640C(v55, v57);
      sub_10002640C(v51, v53);
      if ((v46 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v58 = v65[8];
    v59 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v9 + v58 + 16), *(v5 + v58 + 16)), vceqq_f32(*(v9 + v58), *(v5 + v58))), vandq_s8(vceqq_f32(*(v9 + v58 + 32), *(v5 + v58 + 32)), vceqq_f32(*(v9 + v58 + 48), *(v5 + v58 + 48)))));
    v60 = v59 >> 31;
    sub_10003D4BC(v5, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    sub_10003D4BC(v9, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    if ((v59 & 0x80000000) != 0)
    {
      v10 = v64 - 1;
      v13 += v62;
      v12 += v62;
      if (v64 != 1)
      {
        continue;
      }
    }

    return v60;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1006737E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_30:
    v23 = 0;
    return v23 & 1;
  }

  if (!v2 || result == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v3 = 0;
  v24 = a2 + 32;
  v25 = result + 32;
  while (v3 != v2)
  {
    v4 = v25 + 24 * v3;
    v5 = *v4;
    v6 = *(v4 + 16);
    v7 = v24 + 24 * v3;
    v8 = *v7;
    v9 = *(*v4 + 16);
    if (v9 != *(*v7 + 16))
    {

      goto LABEL_29;
    }

    v26 = *(v4 + 8);
    v10 = *(v7 + 8);
    v11 = *(v7 + 16);
    if (v9)
    {

      if (v5 != v8)
      {
        v12 = v5[4];
        v13 = v5[2];
        v33 = v5[3];
        v34 = v12;
        v32 = v13;
        v14 = v8[3];
        v35 = v8[2];
        v36 = v14;
        v37 = v8[4];
        if (*&v32 == *&v35)
        {
          v15 = 5;
          while (*(&v32 + 1) == *(&v35 + 1) && *(&v32 + 2) == *(&v35 + 2) && *(&v32 + 3) == *(&v35 + 3) && *&v33 == *&v36 && *(&v33 + 1) == *(&v36 + 1))
          {
            v30 = *(&v33 + 1);
            v31 = v34;
            v28 = *(&v36 + 1);
            v29 = v37;
            sub_10067CDF8(&v32, v27);
            sub_10067CDF8(&v35, v27);
            sub_10067CE54();
            if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
            {
              sub_10067CEA8(&v35);
              sub_10067CEA8(&v32);
              break;
            }

            v16 = sub_100B3216C(*(&v34 + 1), *(&v37 + 1));
            sub_10067CEA8(&v35);
            sub_10067CEA8(&v32);
            if ((v16 & 1) == 0)
            {
              break;
            }

            if (!--v9)
            {
              goto LABEL_22;
            }

            v17 = &v5[v15];
            v18 = &v8[v15];
            v15 += 3;
            v19 = *v17;
            v20 = v17[2];
            v33 = v17[1];
            v34 = v20;
            v32 = v19;
            v21 = v18[2];
            v22 = *v18;
            v36 = v18[1];
            v37 = v21;
            v35 = v22;
            if (*&v32 != *&v22)
            {
              break;
            }
          }
        }

LABEL_28:

LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
    }

LABEL_22:
    if (v26 != v10)
    {
      goto LABEL_28;
    }

    v23 = sub_100B3216C(v6, v11);

    if ((v23 & 1) != 0 && ++v3 != v2)
    {
      continue;
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100673AF8(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_100006370(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100673D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_100B32C4C(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100673E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_10004FCC4(v20, v17, a4);
        sub_10004FCC4(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_10003D4BC(v13, a6);
        sub_10003D4BC(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_100674024(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  v5 = __chkstk_darwin(v4 - 8);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v69 - v7;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v74);
  v12 = &v69 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v81 = &v69 - v18;
  __chkstk_darwin(v17);
  v80 = &v69 - v19;
  v77 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v77);
  v21 = &v69 - v20;
  v84 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v22 = __chkstk_darwin(v84);
  v23 = __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v25 = __chkstk_darwin(&v69 - v24);
  v83 = &v69 - v26;
  v27 = __chkstk_darwin(v25);
  v32 = &v69 - v29;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
    goto LABEL_40;
  }

  if (!v33 || a1 == a2)
  {
    v54 = 1;
    return v54 & 1;
  }

  v71 = v27;
  v72 = v31;
  v73 = v30;
  v69 = v10;
  v70 = v16;
  v78 = &v69 - v29;
  v79 = v12;
  v34 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v82 = *(v28 + 72);
  v37 = v77;
  v38 = v83;
  while (1)
  {
    sub_10004FCC4(v35, v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10004FCC4(v36, v38, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v39 = *(v37 + 48);
    sub_10004FCC4(v32, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10004FCC4(v38, &v21[v39], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v52 = v37;
      v53 = v71;
      sub_10004FCC4(v21, v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_39;
      }

      v54 = *v53 ^ v21[v39] ^ 1;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v41 = v72;
    sub_10004FCC4(v21, v72, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v67 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      goto LABEL_38;
    }

    v42 = v80;
    sub_1000252C0(v41, v80, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v43 = v81;
    sub_1000252C0(&v21[v39], v81, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v44 = *(v74 + 48);
    v45 = v79;
    sub_10004FCC4(v42, v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10004FCC4(v43, v45 + v44, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v46 = sub_1005B981C(&qword_1019F3480);
    v47 = *(*(v46 - 8) + 48);
    v48 = v47(v45, 5, v46);
    if (v48 <= 2)
    {
      if (!v48)
      {
        v60 = v79;
        sub_10004FCC4(v79, v70, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        if (!v47(v60 + v44, 5, v46))
        {
          v64 = v79;
          v65 = v69;
          sub_1000252C0(&v79[v44], v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          v66 = v70;
          v54 = sub_100F92694(v70, v65);
          sub_10003D4BC(v65, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003D4BC(v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
          sub_10003D4BC(v64, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v37 = v77;
          v38 = v83;
          goto LABEL_30;
        }

        sub_10003D4BC(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v50 = v79;
        v37 = v77;
        v38 = v83;
LABEL_29:
        sub_10000CAAC(v50, &qword_1019F3460);
        v54 = 0;
        goto LABEL_30;
      }

      v49 = v46;
      v50 = v79;
      if (v48 == 1)
      {
        v51 = v47(&v79[v44], 5, v49) == 1;
      }

      else
      {
        v51 = v47(&v79[v44], 5, v49) == 2;
      }

      goto LABEL_25;
    }

    if (v48 == 3)
    {
      v61 = v46;
      v50 = v79;
      v51 = v47(&v79[v44], 5, v61) == 3;
LABEL_25:
      v37 = v77;
      v38 = v83;
      if (!v51)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    v37 = v77;
    if (v48 == 4)
    {
      v58 = v46;
      v50 = v79;
      v59 = v47(&v79[v44], 5, v58);
      v38 = v83;
      if (v59 != 4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v62 = v46;
      v50 = v79;
      v63 = v47(&v79[v44], 5, v62);
      v38 = v83;
      if (v63 != 5)
      {
        goto LABEL_29;
      }
    }

LABEL_27:
    sub_10003D4BC(v50, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v54 = 1;
LABEL_30:
    sub_10003D4BC(v81, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003D4BC(v80, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_31:
    sub_10003D4BC(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003D4BC(v38, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10003D4BC(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v54)
    {
      v36 += v82;
      v35 += v82;
      if (--v33)
      {
        continue;
      }
    }

    return v54 & 1;
  }

  v52 = v37;
  v41 = v73;
  sub_10004FCC4(v21, v73, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v55 = v75;
    sub_1000252C0(v41, v75, _s5BoardVMa);
    v56 = v76;
    sub_1000252C0(&v21[v39], v76, _s5BoardVMa);
    v54 = sub_1013030EC(v55, v56);
    sub_10003D4BC(v56, _s5BoardVMa);
    v57 = v55;
    v38 = v83;
    sub_10003D4BC(v57, _s5BoardVMa);
LABEL_16:
    v37 = v52;
    v32 = v78;
    goto LABEL_31;
  }

  v67 = _s5BoardVMa;
LABEL_38:
  sub_10003D4BC(v41, v67);
LABEL_39:
  sub_10000CAAC(v21, &qword_101A000E0);
  sub_10003D4BC(v38, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10003D4BC(v78, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_40:
  v54 = 0;
  return v54 & 1;
}

char *sub_100674A1C(uint64_t a1, void *a2)
{
  v77 = a2;
  v76 = type metadata accessor for UUID();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for URL();
  v6 = *(v90 - 8);
  __chkstk_darwin(v90);
  v8 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v71 - v10;
  __chkstk_darwin(v12);
  v84 = v71 - v13;
  __chkstk_darwin(v14);
  v74 = v71 - v15;
  __chkstk_darwin(v16);
  v18 = v71 - v17;
  __chkstk_darwin(v19);
  v21 = v71 - v20;
  v22 = [objc_opt_self() defaultManager];
  v23 = *(a1 + 16);
  if (!v23)
  {

    return _swiftEmptyArrayStorage;
  }

  v78 = v22;
  v71[0] = v2;
  v25 = *(v6 + 16);
  v24 = v6 + 16;
  v82 = (*(v24 + 64) + 32) & ~*(v24 + 64);
  v26 = a1 + v82;
  v27 = *(v24 + 56);
  v87 = (v24 - 8);
  v80 = (v24 + 16);
  v81 = v27;
  v73 = (v4 + 8);
  v89 = _swiftEmptyArrayStorage;
  v85 = v25;
  v86 = v18;
  v28 = v24;
  v29 = v25;
  v83 = v21;
  v72 = v8;
  v71[1] = v28;
  while (1)
  {
    v88 = v23;
    v29(v21, v26, v90);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      v29(v84, v21, v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100B364FC(0, *(v89 + 2) + 1, 1, v89);
      }

      v64 = v87;
      v57 = *(v89 + 2);
      v65 = *(v89 + 3);
      v58 = v57 + 1;
      if (v57 >= v65 >> 1)
      {
        v89 = sub_100B364FC(v65 > 1, v57 + 1, 1, v89);
      }

      (*v64)(v21, v90);
      v30 = v84;
      goto LABEL_4;
    }

    v34 = v11;
    v35 = [v77 URL];
    v36 = v74;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v75;
    UUID.init()();
    UUID.uuidString.getter();
    (*v73)(v37, v76);
    URL.appendingPathComponent(_:isDirectory:)();

    v79 = *v87;
    v79(v36, v90);
    URL._bridgeToObjectiveC()(v38);
    v40 = v39;
    v91 = 0;
    v41 = v78;
    v42 = [v78 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:&v91];

    if ((v42 & 1) == 0)
    {
      v66 = v91;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v67 = v79;
      goto LABEL_21;
    }

    v43 = v90;
    v44 = v91;
    URL.lastPathComponent.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v91 = 0;
    v51 = [v41 copyItemAtURL:v47 toURL:v49 error:&v91];

    v52 = v91;
    if ((v51 & 1) == 0)
    {
      break;
    }

    v53 = v72;
    v85(v72, v34, v43);
    v54 = v52;
    v55 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_100B364FC(0, *(v89 + 2) + 1, 1, v89);
    }

    v21 = v83;
    v57 = *(v89 + 2);
    v56 = *(v89 + 3);
    v58 = v57 + 1;
    v59 = v53;
    if (v57 >= v56 >> 1)
    {
      v89 = sub_100B364FC(v56 > 1, v57 + 1, 1, v89);
    }

    v60 = v55;
    v61 = v90;
    v62 = v55;
    v63 = v79;
    v79(v60, v90);
    v63(v86, v61);
    v63(v21, v61);
    v11 = v62;
    v30 = v59;
LABEL_4:
    v32 = v89;
    v31 = v90;
    *(v89 + 2) = v58;
    v33 = v81;
    (*v80)(&v32[v82 + v57 * v81], v30, v31);
    v26 += v33;
    v23 = v88 - 1;
    v29 = v85;
    if (v88 == 1)
    {

      return v89;
    }
  }

  v68 = v91;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v67 = v79;
  v79(v34, v43);
LABEL_21:
  v69 = v90;
  v67(v86, v90);
  v67(v83, v69);
  return v89;
}

uint64_t sub_1006750F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[17] = type metadata accessor for MainActor();
  v8[18] = static MainActor.shared.getter();
  v8[19] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v8[20] = v11;
  *v11 = v8;
  v11[1] = sub_1006751CC;

  return sub_100675650(a5, a6, 0);
}

uint64_t sub_1006751CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100675438;
  }

  else
  {
    v6 = sub_10067532C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10067532C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006753B0, v1, v0);
}

uint64_t sub_1006753B0()
{
  v1 = v0[15];

  if (v1)
  {
    (v0[15])(v0[21], 0);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100675438()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006754BC, v1, v0);
}

uint64_t sub_1006754BC()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Failed to insert items with error %@.", 37, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v8 = v0[22];
  if (v1)
  {
    v9 = v0[15];
    swift_errorRetain();
    v9(v8, 1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100675650(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;

  return _swift_task_switch(sub_1006756F4, v6, v5);
}

uint64_t sub_1006756F4()
{
  v1 = sub_100666548(*(v0 + 16), *(v0 + 24), *(v0 + 128));
  *(v0 + 72) = v1;
  v2 = v1;
  *(v0 + 80) = static MainActor.shared.getter();

  return _swift_task_switch(sub_1006757C8, v2, 0);
}

uint64_t sub_1006757C8()
{
  v0[11] = *(v0[9] + 112);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return _swift_task_switch(sub_10067584C, v2, v1);
}

uint64_t sub_10067584C()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1006758F8;
  v2 = *(v0 + 88);

  return sub_100658F70(v2);
}

uint64_t sub_1006758F8()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_100675A18, v3, v2);
}

uint64_t sub_100675A18()
{
  v1 = v0[11];

  v2 = [v1 boardItems];
  type metadata accessor for CRLBoardItem(0);
  v0[15] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v0[7];
  v4 = v0[8];

  return _swift_task_switch(sub_100675AB4, v3, v4);
}

uint64_t sub_100675AB4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_100675B28(uint64_t a1)
{
  v1 = *sub_100020E58((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100675B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v7;
  v5[22] = v6;

  return _swift_task_switch(sub_100675BF4, v7, v6);
}

uint64_t sub_100675BF4()
{
  v1 = [*(v0 + 144) errors];
  sub_1005B981C(&unk_1019F6B40);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_11;
  }

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlError;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "There were some errors trying to create items to insert.", 56, 2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [Strong layerHost], *(v0 + 184) = v8, v7, v8))
  {
    isa = [*(v0 + 144) errors];
    if (!isa)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    *(v0 + 192) = isa;
    v10 = [*(v0 + 144) localizedErrorDescription];
    *(v0 + 200) = v10;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100675F60;
    v11 = swift_continuation_init();
    *(v0 + 136) = sub_1005B981C(&qword_101A14AA0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = *"";
    *(v0 + 96) = sub_100675B28;
    *(v0 + 104) = &unk_10187E510;
    *(v0 + 112) = v11;
    [v8 presentErrors:isa withLocalizedDescription:v10 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
LABEL_11:

    v12 = [*(v0 + 144) boardItems];
    type metadata accessor for CRLBoardItem(0);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 >= 1)
    {
      v15 = [*(v0 + 144) boardItems];
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1006799F0(v16, 0, 0);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100675F60()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return _swift_task_switch(sub_100676068, v2, v1);
}

uint64_t sub_100676068()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);

  swift_unknownObjectRelease();

  v3 = [*(v0 + 144) boardItems];
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= 1)
  {
    v6 = [*(v0 + 144) boardItems];
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1006799F0(v7, 0, 0);
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_1006761A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = &type metadata for CRLFeatureFlags;
  v22 = sub_100004D60();
  LOBYTE(aBlock[0]) = 0;
  v7 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v7)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v10 = sub_10067E8AC();
    v11 = dispatch thunk of Tip.id.getter();
    v13 = v12;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v11;
    *(inited + 40) = v13;
    v14 = static os_log_type_t.info.getter();
    sub_100005404(v8, &_mh_execute_header, v14, "presenting tip from a barButtonItem: %{public}@", 47, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    if (sub_101039428())
    {
      type metadata accessor for TipUIPopoverViewController();
      v21 = &type metadata for CRLTipSendCopy;
      v22 = v10;
      swift_unknownObjectRetain();
      v15 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
      swift_unknownObjectRetain();
      TipUIPopoverViewController.presentationDelegate.setter();
      v16 = swift_allocObject();
      v16[2] = v4;
      v16[3] = v15;
      v16[4] = a2;
      v16[5] = a3;
      v22 = sub_10067E900;
      v23 = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      v21 = &unk_10187F370;
      v17 = _Block_copy(aBlock);
      v18 = v4;
      v19 = v15;
      sub_10002E7A8(a2);

      [v18 presentViewController:v19 animated:1 completion:v17];

      _Block_release(v17);
    }
  }
}

void *sub_100676440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100B39BE0(*(a1 + 16), 0);
  v4 = sub_100B3D664(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_100676500(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_100006370(0, &qword_1019F6E10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1005B981C(&unk_1019F4D60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100676648(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for CRLBoardItemData();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1005B981C(&unk_1019F4D60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10067672C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 32 * a3), 32 * v5);
        return;
      }
    }

    else
    {
      sub_1005B981C(&unk_1019F6F30);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100676824(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1005B981C(&unk_1019F61D0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1006769A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1005B981C(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100676B4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1005B981C(&unk_101A28660);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1005B981C(&unk_1019F4D60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_100676C68(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_100035F90();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

unint64_t sub_100676D28(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100B36BE4(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10067723C(v7, a2, 1, a3, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier, &qword_1019F6EB8);
  *v3 = v5;
  return result;
}

unint64_t sub_100676E34(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100B36C34(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_10067723C(v7, a2, 1, a3, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb, type metadata accessor for CRLFollowAccessibilityExperienceCoordinator.HistoryBreadcrumb, &qword_1019F6DF8);
  *v3 = v5;
  return result;
}

unint64_t sub_100676F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for UUID();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000CAAC(v25, &qword_1019F6DE8);
  }

  if (v18 < 1)
  {
    return sub_10000CAAC(v25, &qword_1019F6DE8);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_10000CAAC(v25, &qword_1019F6DE8);
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1006770DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *v4;
  v9 = &v4[5 * a1 + 4];
  sub_1005B981C(&qword_1019F6DE0);
  swift_arrayDestroy();
  v10 = __OFSUB__(a3, v5);
  v11 = a3 - v5;
  if (v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v4[2];
  v10 = __OFSUB__(v12, a2);
  v13 = v12 - a2;
  if (v10)
  {
    goto LABEL_18;
  }

  v14 = &v9[5 * a3];
  v15 = &v4[5 * a2 + 4];
  if (v14 != v15 || v14 >= &v15[40 * v13])
  {
    memmove(v14, v15, 40 * v13);
  }

  v16 = v4[2];
  v10 = __OFADD__(v16, v11);
  v17 = v16 + v11;
  if (v10)
  {
    goto LABEL_19;
  }

  v4[2] = v17;
LABEL_10:
  if (a3 > 0)
  {
    result = *(a4 + 8);
    v19 = *(a4 + 16);
    v20 = *(a4 + 24);
    v4 = *(a4 + 32);
    *v9 = *a4;
    v9[1] = result;
    v9[2] = v19;
    v9[3] = v20;
    v9[4] = v4;
    if (a3 == 1)
    {
      return result;
    }

LABEL_20:

    result = v4;
    __break(1u);
    return result;
  }
}

unint64_t sub_10067723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7)
{
  v13 = *v7;
  result = a5(0);
  v16 = *(*(result - 8) + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = a7;
  v15 = *(*(result - 8) + 80);
  v18 = v13 + ((v15 + 32) & ~v15);
  v19 = v18 + v16 * a1;
  result = swift_arrayDestroy();
  v20 = a3 - v17;
  if (__OFSUB__(a3, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v16 * a3;
  if (v20)
  {
    v22 = *(v13 + 16);
    if (!__OFSUB__(v22, a2))
    {
      result = v19 + v21;
      v23 = v18 + v16 * a2;
      if (v19 + v21 < v23 || result >= v23 + (v22 - a2) * v16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v23)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v25 = *(v13 + 16);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (!v26)
      {
        *(v13 + 16) = v27;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_10000CAAC(a4, v29);
  }

  if (v21 < 1)
  {
    return sub_10000CAAC(a4, v29);
  }

  result = sub_10004FCC4(a4, v19, a6);
  if (v16 >= v21)
  {
    return sub_10000CAAC(a4, v29);
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1006773C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = 0;
      while (v13 < *(a1 + 16))
      {
        v14 = v13 + 1;

        result = sub_1006774EC(v15, v16);
        v13 = v14;
        if (v12 == v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  v3 = *(a1 + 16);
  if (!v3 || (v4 = , result = sub_1006774EC(v4, v5), v3 == 1))
  {
LABEL_7:

    goto LABEL_12;
  }

  v7 = (a1 + 40);
  v8 = 1;
  while (v8 < *(a1 + 16))
  {
    ++v8;
    v9 = *v7++;

    sub_1006777C0(v10);
    result = sub_1006774EC(v9, v11);
    if (v3 == v8)
    {
      goto LABEL_7;
    }
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1006774EC(unint64_t a1, unint64_t a2)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v6 + 24) >> 1, v9 < v7 + v5))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = *v2;
    v9 = *(*v2 + 24) >> 1;
  }

  v10 = *(v6 + 16);
  v11 = v9 - v10;
  result = sub_1007A9208(v6 + 8 * v10 + 32, v9 - v10, v4);
  if (v13 < v5)
  {
    goto LABEL_42;
  }

  v4 = result;
  if (v13 < 1)
  {
    goto LABEL_11;
  }

  v14 = *(v6 + 16);
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (v15)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v6 + 16) = v16;
LABEL_11:
  if (v13 != v11)
  {
    goto LABEL_34;
  }

  v3 = *(v6 + 16);
  if (!(result >> 62))
  {
    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2 != v17)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_44:
  v28 = a2;
  result = _CocoaArrayWrapper.endIndex.getter();
  a2 = v28;
  v17 = result;
  if (v28 != result)
  {
LABEL_14:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v29 = a2;
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
LABEL_18:
        v20 = result;
        v32 = v2;
        v30 = v17;
        while (1)
        {
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v21 = *(*v2 + 24) >> 1;
          v22 = v21 - v3;
          v33 = *v2;
          if (v21 > v3)
          {
            break;
          }

          v21 = v3;
          v25 = v20;
LABEL_32:
          v20 = v25;
          *(v33 + 16) = v21;
        }

        v23 = 0;
        v24 = v3;
        v3 = v17 - v19;
        v31 = v24;
        v2 = *v2 + 8 * v24 + 32;
        v25 = v20;
        while (1)
        {
          *(v2 + 8 * v23) = v25;
          if (v3 == v23)
          {
            *(v33 + 16) = v31 + v23 + 1;
            goto LABEL_34;
          }

          v26 = v19 + v23;
          if ((v4 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_38;
            }

            if (v26 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }

            v25 = *(v4 + 32 + 8 * v19 + 8 * v23);
            v27 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v5 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }
          }

          if (v22 == ++v23)
          {
            v19 = v27;
            v3 = v21;
            v2 = v32;
            v17 = v30;
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v18 = a2;
      result = *(v4 + 8 * a2 + 32);
      v19 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_34:

  return specialized ContiguousArray._endMutation()();
}

void *sub_1006777C0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || (v6 = *(v3 + 24) >> 1, v6 < (v4 + v2)))
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = *v1;
    v6 = *(*v1 + 24) >> 1;
  }

  v7 = *(v3 + 16);
  v8 = v6 - v7;
  if (v2)
  {
    if (v8 < v2)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_100006370(0, &qword_1019F6BF0);
    result = swift_arrayInitWithCopy();
    v9 = *(v3 + 16);
    v7 = v9 + v2;
    if (__OFADD__(v9, v2))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v3 + 16) = v7;
  }

  if (v2 == v8)
  {
    v10 = v5[2];
    if (v2 != v10)
    {
      if (v2 >= v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v11 = v2 + 1;
      v20 = v5[v2 + 4];
      v12 = v20;
LABEL_14:
      while (1)
      {
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v13 = *v1;
        v14 = *(*v1 + 24) >> 1;
        v15 = v14 - v7;
        if (v14 > v7)
        {
          break;
        }

        *(v13 + 16) = v7;
      }

      v16 = (v13 + 8 * v7 + 32);
      v17 = v7 + 1;
      result = v20;
      while (1)
      {
        *v16 = result;
        v18 = v5[2];
        if (v11 == v18)
        {
          *(v13 + 16) = v17;
          goto LABEL_21;
        }

        if (v11 >= v18)
        {
          break;
        }

        v19 = v11 + 1;
        result = v5[v11 + 4];
        ++v16;
        ++v17;
        ++v11;
        if (!--v15)
        {
          v20 = result;
          v7 = v14;
          v11 = v19;
          *(v13 + 16) = v14;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

LABEL_21:

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100677990(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100677A84;

  return v5(v2 + 32);
}

uint64_t sub_100677A84()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100677B98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D4C8;

  return sub_100677990(a1, v4);
}

uint64_t sub_100677C50(uint64_t a1)
{
  v4 = *(sub_1005B981C(&unk_1019F33C0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_10066571C(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_100677D7C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100677E70;

  return v5(v2 + 16);
}

uint64_t sub_100677E70()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100677FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002D4C8;

  return sub_100675B5C(a1, a2, a3, a4, v10);
}

uint64_t sub_100678068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100677FA0(a1, v4, v5, v6, v1 + 5);
}

uint64_t sub_10067813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectWeakAssign();
  v9 = &type metadata for CRLTipSendCopy;
  v10 = sub_10067E8AC();
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip;
  swift_beginAccess();
  sub_10067E90C(v8, a1 + v6);
  result = swift_endAccess();
  if (a4)
  {
    return a4(result);
  }

  return result;
}

uint64_t sub_1006781DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_10002D3D4;

  return sub_1006750F8(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_1006782DC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || ((a1[3] ^ a2[3]) & 1) != 0 || ((a1[4] ^ a2[4]) & 1) != 0 || ((a1[5] ^ a2[5]) & 1) != 0 || ((a1[6] ^ a2[6]) & 1) != 0 || ((a1[7] ^ a2[7]))
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100006370(0, &qword_1019F54D0), (static NSObject.== infix(_:_:)()) && ((a1[32] ^ a2[32]) & 1) == 0 && ((a1[33] ^ a2[33]) & 1) == 0 && ((a1[34] ^ a2[34]) & 1) == 0)
  {
    v5 = a1[35] ^ a2[35] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100678438(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100678568(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_1005B981C(&qword_1019F6EA0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  v14 = 16 * v12;
  v15 = &v13[16 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100678664(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

char *sub_10067873C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CRLCollaboratorPresence();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_100678858(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1007AB810(result);

  return sub_10067873C(v6, v5, 1, v3);
}

char *sub_10067899C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100006370(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

id sub_100678AC0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  [v0 setText:v4];

  [v0 setEnabled:0];
  v5 = [objc_opt_self() placeholderTextColor];
  [v0 setTextColor:v5];

  v6 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];
  return v6;
}

unint64_t sub_100678CC4(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_10067D058(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

Class sub_100678D9C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = swift_allocObject();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 16) = AppStorage.init<A>(wrappedValue:_:store:)();

  AppStorage.wrappedValue.getter();

  sub_100006370(0, &qword_1019F6190);

  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v42 = v6;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = [v0 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 16) = AppStorage.init<A>(wrappedValue:_:store:)();

  AppStorage.wrappedValue.getter();

  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v41 = v12;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = [v0 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v17 + 16) = AppStorage.init<A>(wrappedValue:_:store:)();

  AppStorage.wrappedValue.getter();

  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = [v0 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = swift_allocObject();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 16) = AppStorage.init<A>(wrappedValue:_:store:)();

  AppStorage.wrappedValue.getter();

  v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006370(0, &qword_1019F6C00);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v45.value.super.isa = 0;
  v45.is_nil = 0;
  v26 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v45, 1, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, 0).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = [v0 mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = objc_opt_self();
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 systemImageNamed:v35];

  if (v36)
  {
  }

  v37._countAndFlagsBits = v31;
  v37._object = v33;
  v46.value.super.isa = v36;
  v46.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v46, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v40).super.super.isa;

  return isa;
}

uint64_t sub_1006796F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1006797E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1006798DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_1006799F0(unint64_t a1, void *a2, void *a3)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v113 = a3;
    v114 = a2;
    v115 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v114;
    a3 = v113;
    if (!v115)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = a2;
  v6 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [Strong editorController];

  if (v8)
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    v122 = v8;
    if (v9)
    {
      v10 = v9;
      if ([v9 documentIsSharedReadOnly])
      {
        v118 = objc_opt_self();
        v11 = [v118 _atomicIncrementAssertCount];
        aBlock = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &aBlock);
        StaticString.description.getter();
        v12 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v13 = String._bridgeToObjectiveC()();

        v14 = [v13 lastPathComponent];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v18 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_10146CA70;
        *(v19 + 56) = &type metadata for Int32;
        *(v19 + 64) = &protocol witness table for Int32;
        *(v19 + 32) = v11;
        v20 = sub_100006370(0, &qword_1019F4D30);
        *(v19 + 96) = v20;
        v21 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(v19 + 104) = v21;
        *(v19 + 72) = v12;
        *(v19 + 136) = &type metadata for String;
        v22 = sub_1000053B0();
        *(v19 + 112) = v15;
        *(v19 + 120) = v17;
        *(v19 + 176) = &type metadata for UInt;
        *(v19 + 184) = &protocol witness table for UInt;
        *(v19 + 144) = v22;
        *(v19 + 152) = 509;
        v23 = aBlock;
        *(v19 + 216) = v20;
        *(v19 + 224) = v21;
        *(v19 + 192) = v23;
        v24 = v12;
        v25 = v23;
        v26 = static os_log_type_t.error.getter();
        sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v27 = static os_log_type_t.error.getter();
        sub_100005404(v18, &_mh_execute_header, v27, "Attempted to insert item when board is read only.", 49, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v28 = swift_allocObject();
        v28[2] = 8;
        v28[3] = 0;
        v28[4] = 0;
        v28[5] = 0;
        v29 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v30 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v31 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v120 = String._bridgeToObjectiveC()();

        [v118 handleFailureInFunction:v30 file:v31 lineNumber:509 isFatal:0 format:v120 args:v29];
      }

      else
      {
        v78 = [objc_opt_self() nonInteractiveInsertionContext];
        v79 = swift_allocObject();
        *(v79 + 16) = 0;
        v80 = swift_allocObject();
        v80[2] = v3;
        v80[3] = v78;
        v80[4] = v79;
        v127 = sub_10067AC60;
        v128 = v80;
        aBlock = _NSConcreteStackBlock;
        v124 = *"";
        v125 = sub_10066C70C;
        v126 = &unk_10187E588;
        v81 = _Block_copy(&aBlock);
        v82 = v78;

        [v122 enumerateEditorsOnStackUsingBlock:v81];
        _Block_release(v81);
        swift_beginAccess();
        v83 = *(v79 + 16);
        v121 = v82;
        if (v83)
        {
          type metadata accessor for CRLBoardItem(0);
          swift_unknownObjectRetain();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v83 prepareGeometryForInsertingBoardItems:isa withInsertionContext:v82];

          v85.super.isa = Array._bridgeToObjectiveC()().super.isa;
          if (v5)
          {
            v127 = v5;
            v128 = v6;
            aBlock = _NSConcreteStackBlock;
            v124 = *"";
            v125 = sub_100007638;
            v126 = &unk_10187E600;
            v86 = _Block_copy(&aBlock);
          }

          else
          {
            v86 = 0;
          }

          [v83 insertBoardItems:v85.super.isa withInsertionContext:v82 postProcessBlock:v86];
          _Block_release(v86);

          if (v4)
          {
            sub_1005B981C(&qword_1019F5720);
            v107 = _bridgeCocoaArray<A>(_:)();

            v3 = v107;
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }

          v108 = type metadata accessor for CRLInsertionAnimationHelper();
          v109 = [v10 canvas];
          v110 = swift_allocObject();
          v110[2] = v3;
          v110[3] = v10;
          v110[4] = 0;
          v110[5] = v108;
          v127 = sub_10067AC6C;
          v128 = v110;
          aBlock = _NSConcreteStackBlock;
          v124 = *"";
          v125 = sub_100007638;
          v126 = &unk_10187E5D8;
          v111 = _Block_copy(&aBlock);
          v112 = v10;

          [v109 afterLayoutIncludingLayers:1 performBlock:v111];
          _Block_release(v111);

          swift_unknownObjectRelease();
        }

        else
        {
          v119 = objc_opt_self();
          v87 = [v119 _atomicIncrementAssertCount];
          aBlock = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &aBlock);
          StaticString.description.getter();
          v117 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v88 = String._bridgeToObjectiveC()();

          v89 = [v88 lastPathComponent];

          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v91;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v92 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v87;
          v94 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v94;
          v95 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v95;
          *(inited + 72) = v117;
          *(inited + 136) = &type metadata for String;
          v96 = sub_1000053B0();
          *(inited + 112) = v90;
          *(inited + 120) = v116;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v96;
          *(inited + 152) = 530;
          v97 = aBlock;
          *(inited + 216) = v94;
          *(inited + 224) = v95;
          *(inited + 192) = v97;
          v98 = v117;
          v99 = v97;
          v100 = static os_log_type_t.error.getter();
          sub_100005404(v92, &_mh_execute_header, v100, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v101 = static os_log_type_t.error.getter();
          sub_100005404(v92, &_mh_execute_header, v101, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v102 = swift_allocObject();
          v102[2] = 8;
          v102[3] = 0;
          v102[4] = 0;
          v102[5] = 0;
          v103 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v104 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v105 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v106 = String._bridgeToObjectiveC()();

          [v119 handleFailureInFunction:v104 file:v105 lineNumber:530 isFatal:0 format:v106 args:v103];
        }
      }
    }

    else
    {
      v55 = objc_opt_self();
      v56 = [v55 _atomicIncrementAssertCount];
      aBlock = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &aBlock);
      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      v59 = [v58 lastPathComponent];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v63 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v64 = swift_initStackObject();
      *(v64 + 16) = xmmword_10146CA70;
      *(v64 + 56) = &type metadata for Int32;
      *(v64 + 64) = &protocol witness table for Int32;
      *(v64 + 32) = v56;
      v65 = sub_100006370(0, &qword_1019F4D30);
      *(v64 + 96) = v65;
      v66 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      *(v64 + 104) = v66;
      *(v64 + 72) = v57;
      *(v64 + 136) = &type metadata for String;
      v67 = sub_1000053B0();
      *(v64 + 112) = v60;
      *(v64 + 120) = v62;
      *(v64 + 176) = &type metadata for UInt;
      *(v64 + 184) = &protocol witness table for UInt;
      *(v64 + 144) = v67;
      *(v64 + 152) = 504;
      v68 = aBlock;
      *(v64 + 216) = v65;
      *(v64 + 224) = v66;
      *(v64 + 192) = v68;
      v69 = v57;
      v70 = v68;
      v71 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v72 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v72, "Missing interactive canvas controller", 37, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v73 = swift_allocObject();
      v73[2] = 8;
      v73[3] = 0;
      v73[4] = 0;
      v73[5] = 0;
      v74 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      [v55 handleFailureInFunction:v75 file:v76 lineNumber:504 isFatal:0 format:v77 args:v74];
    }
  }

  else
  {
    v32 = objc_opt_self();
    v33 = [v32 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock);
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v40 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_10146CA70;
    *(v41 + 56) = &type metadata for Int32;
    *(v41 + 64) = &protocol witness table for Int32;
    *(v41 + 32) = v33;
    v42 = sub_100006370(0, &qword_1019F4D30);
    *(v41 + 96) = v42;
    v43 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v41 + 104) = v43;
    *(v41 + 72) = v34;
    *(v41 + 136) = &type metadata for String;
    v44 = sub_1000053B0();
    *(v41 + 112) = v37;
    *(v41 + 120) = v39;
    *(v41 + 176) = &type metadata for UInt;
    *(v41 + 184) = &protocol witness table for UInt;
    *(v41 + 144) = v44;
    *(v41 + 152) = 503;
    v45 = aBlock;
    *(v41 + 216) = v42;
    *(v41 + 224) = v43;
    *(v41 + 192) = v45;
    v46 = v34;
    v47 = v45;
    v48 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v41);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v40, &_mh_execute_header, v49, "Missing editor controller", 25, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v50 = swift_allocObject();
    v50[2] = 8;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v52 file:v53 lineNumber:503 isFatal:0 format:v54 args:v51];
  }
}

unint64_t sub_10067AC78()
{
  result = qword_1019F6BB8;
  if (!qword_1019F6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6BB8);
  }

  return result;
}

uint64_t sub_10067ACCC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10067AD3C(void *a1)
{
  [a1 crl_isCompactWidth];
  if (qword_1019F1DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1005B981C(&unk_1019F6CF0);
  sub_1005EB3DC(v1, qword_101AD7668);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2B50 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD9418);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1E48 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD7770);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1550 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD63B8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2048 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD7BF0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F16B8 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD67E8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1DC8 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD7620);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2B38 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD93D0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1BD0 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD71E0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1E40 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD7758);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1540 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD6388);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2038 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD7BC0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F16A8 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v1, qword_101AD67B8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10067B310()
{
  if (qword_1019F1DD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_1005EB3DC(v0, qword_101AD7638);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F2B40 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v0, qword_101AD93E8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1BD8 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v0, qword_101AD71F8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1E50 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v0, qword_101AD7788);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019F1548 != -1)
  {
    swift_once();
  }

  sub_1005EB3DC(v0, qword_101AD63A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10067B578(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_101013118();
  static TaskPriority.userInitiated.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  v8[5] = a1;
  v8[7] = 0;
  v8[8] = 0;
  v8[6] = 0;
  sub_10064191C(0, 0, v4, &unk_10146FC80, v8);
}

id sub_10067B6C4(void *a1, uint64_t a2)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = a2;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v9, "Document camera failed with error: %@", 37, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return [a1 dismissViewControllerAnimated:1 completion:{0, v11}];
}

void sub_10067B810()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_gpHelper;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_gpHelper);
  if (v2)
  {
    [*&v2[OBJC_IVAR____TtC8Freeform29CRLGenerativePlaygroundHelper_viewController] dismissViewControllerAnimated:1 completion:0];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_wantsToRestoreModeAfterGP;
  if (*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_wantsToRestoreModeAfterGP) == 1)
  {
    v4 = sub_101012FD4();
    [v4 setToPreviousModeAnimated:0];

    *(v0 + v3) = 0;
  }
}

uint64_t sub_10067B8B0()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v5 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v4 + v5, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v3, type metadata accessor for CRLBoardCRDTData);
  return v7[1];
}

void sub_10067BA08(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v9 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
  v10 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v11 = *(*(v9 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FCC4(v11 + v12, v8, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D4BC(v8, type metadata accessor for CRLBoardCRDTData);
  if (v27[0] == a1 && v27[1] == a2)
  {

    goto LABEL_12;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_12;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_12:
    v17 = [v3 navigationItem];
    v18 = [v3 traitCollection];
    v19 = [objc_opt_self() crl_phoneUI];
    v20 = [v18 crl_isCompactWidth];
    v21 = v20;
    if (v19)
    {
      if (v20)
      {
        v22 = [v18 crl_isCompactHeight];

        if (v22)
        {
          goto LABEL_19;
        }

LABEL_17:
        v23 = 0;
LABEL_20:
        [v17 setTitle:v23];

LABEL_21:
        return;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v24 = *(*(v9 + v10) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v25 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FCC4(v24 + v25, v8, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_10003D4BC(v8, type metadata accessor for CRLBoardCRDTData);
    v23 = String._bridgeToObjectiveC()();

    goto LABEL_20;
  }

  sub_101027EC0(a1, a2);
  if (v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] != 1)
  {
    v23 = [v3 traitCollection];
    sub_100642864(v23, [*&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], v27);
    sub_100642CDC(v27, 0);
    sub_1005EB2D4(v27);
    goto LABEL_21;
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlDefault;
  v16 = static os_log_type_t.info.getter();
  sub_100005404(v15, &_mh_execute_header, v16, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
}

void sub_10067BE04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {

    v4 = a4;
  }
}

void sub_10067BE80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

uint64_t sub_10067BECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100645B1C(a1, v4, v5, v6);
}

unint64_t sub_10067BFD0()
{
  result = qword_1019F6C08;
  if (!qword_1019F6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F6C08);
  }

  return result;
}

void sub_10067C07C()
{
  if (*(v0 + 16) == 1)
  {
    _s8Freeform28CRLMathCalculationControllerC13mathHintsModeAA0bfG0Ovs_0(0);
  }
}

uint64_t sub_10067C10C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10064C1E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10067C1D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10064BCC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10067C2C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10103483C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10067C38C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10067C3DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10064AE68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10067C4D8(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_10064A104(a1, v1 + v4, v6, v7);
}

uint64_t sub_10067C578(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10064A31C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10067C6C0(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10067C718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100647E90(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_10067C80C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}