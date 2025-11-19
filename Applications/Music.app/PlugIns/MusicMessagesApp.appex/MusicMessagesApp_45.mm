uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = sub_1004D83DC();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = sub_1000107AC(a3, a9 + v32, &qword_100648D88);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

uint64_t Lyrics.TextLine.hash(into:)()
{
  sub_1004DF27C(*(v0 + 16));
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004DF2AC(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v3 + 64)))();
  sub_1004DD55C();
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  sub_1004DF26C();
  Lyrics.TextLine.hash(into:)();
  return sub_1004DF2BC();
}

uint64_t sub_1004569BC(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int sub_100456A50()
{
  sub_1004DF26C();
  Lyrics.TextLine.hash(into:)();
  return sub_1004DF2BC();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter()
{
  sub_1004DEAAC(54);
  v1._object = 0x80000001004FABE0;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1004DD5FC(v1);
  v2._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_1004DD5FC(v3);
  sub_1004DDBAC();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v4);
  sub_1004DDBAC();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  sub_1004DEAAC(68);
  v1._object = 0x80000001004FAC00;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1004DD5FC(v1);
  v2._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_1004DD5FC(v3);
  sub_1004DDBAC();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v4);
  sub_1004DDBAC();
  v5._countAndFlagsBits = 0x697277676E6F7320;
  v5._object = 0xED00003D73726574;
  sub_1004DD5FC(v5);
  v6._countAndFlagsBits = sub_1004DD88C();
  sub_1004DD5FC(v6);

  return 0;
}

uint64_t sub_100456DC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = sub_100028F80(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = sub_1004D83DC();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t _s7LyricsX0A0C11TranslationV8language10Foundation6LocaleV8LanguageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004D83DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100456FF4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_100457060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D88);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = sub_100028F80(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = sub_10046F9B4(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (qword_100648BC0 != -1)
            {
              swift_once();
            }

            v35 = sub_1004D966C();
            sub_100035430(v35, static Logger.lyrics);
            sub_10046DD7C(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = sub_1004D964C();
            v37 = sub_1004DDF7C();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              sub_10046DDE4(v15, type metadata accessor for Lyrics.TextLine);
              v43 = sub_1004633D0(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&_mh_execute_header, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              sub_100008D24(v87);
            }

            else
            {

              sub_10046DDE4(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = sub_1004D83DC();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        sub_10046DD7C(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        sub_10046E230(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        sub_10046DD7C(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        sub_10046E230(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        sub_10046F9B4(&v96, v95);
        sub_10046F9B4(&v96, v95);
        v71 = v89;

        v72 = v85;

        sub_1000107AC(v91, a2 + v70, &qword_100648D88);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = sub_10046FB84;
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = sub_10046FCEC;
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = sub_10046FDA8;
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (qword_100648BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = sub_1004D83DC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100648D88);
  __chkstk_darwin();
  v7 = &v27 - v6;
  sub_100004CB8(&qword_100648D90);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_1000108DC(a1, v7, &qword_100648D88);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &qword_100648D88;
    v13 = v7;
LABEL_7:
    sub_10001074C(v13, v12);
    v21 = 1;
    return v21 & 1;
  }

  sub_1004D83AC();
  v14 = *(v3 + 8);
  v14(v7, v2);
  v15 = sub_1004D82FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) == 1)
  {
    v12 = &qword_100648D90;
    v13 = v11;
    goto LABEL_7;
  }

  v28 = v14;
  sub_1004D82DC();
  v27 = v18;
  v19 = v11;
  v20 = *(v16 + 8);
  v20(v19, v15);
  sub_1004D839C();
  sub_1004D83AC();
  v28(v5, v2);
  if (v17(v9, 1, v15) == 1)
  {
    v12 = &qword_100648D90;
    v13 = v9;
    goto LABEL_7;
  }

  v23 = sub_1004D82DC();
  v25 = v24;
  v20(v9, v15);
  if (qword_100648BA8 != -1)
  {
    swift_once();
  }

  v26 = sub_1001206A4(v23, v25, qword_100674258);

  v21 = v26 ^ 1;
  return v21 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10064A830);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_1004D83DC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v1 + v12, v7, &qword_10064A830);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_10001074C(v7, &qword_10064A830);
    return sub_1000108DC(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &qword_100648D88);
  }

  else
  {
    sub_10046DD7C(v7, v5, type metadata accessor for Lyrics.Translation);
    sub_10001074C(v7, &qword_10064A830);
    (*(v9 + 16))(v11, v5, v8);
    sub_10046DDE4(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t sub_100458138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1000108DC(v3 + v6, a3, a2);
}

uint64_t sub_1004581C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_1000107AC(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_100458440(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void sub_100458440(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v35 = 0;
  v36 = 0xE000000000000000;
  v28 = *(v5 + 16);
  if (v28)
  {
    v6 = 0;
    v27 = v5 + 32;
    v24 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v27 + 8 * v6);
      v7 = v35;
      v8 = v36;
      v33 = v35;
      v34 = v36;
      v10 = *(v9 + 16);
      if (v10)
      {
        v29 = v9;
        v30 = v6;
        v11 = &v4[*(v26 + 64)];
        v12 = &v4[*(v26 + 72)];
        v13 = v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v31 = *(v25 + 72);

        do
        {
          v17 = sub_10046DD7C(v13, v4, type metadata accessor for Lyrics.TextLine);
          v18 = v33 & 0xFFFFFFFFFFFFLL;
          if ((v34 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v34) & 0xF;
          }

          if (v18)
          {
            v43._countAndFlagsBits = 10;
            v43._object = 0xE100000000000000;
            sub_1004DD5FC(v43);
          }

          v19 = (*v11)(v17);
          v21 = v20;
          (*v12)(v37);
          v22 = v38;
          if (v38)
          {
            v14 = v37[2];

            sub_10001074C(v37, &qword_100648D80);
            v32._countAndFlagsBits = 40;
            v32._object = 0xE100000000000000;

            v40._countAndFlagsBits = v14;
            v40._object = v22;
            sub_1004DD5FC(v40);
            v41._countAndFlagsBits = 41;
            v41._object = 0xE100000000000000;
            sub_1004DD5FC(v41);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v32._countAndFlagsBits;
            object = v32._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v32._countAndFlagsBits = v19;
          v32._object = v21;

          v42._countAndFlagsBits = countAndFlagsBits;
          v42._object = object;
          sub_1004DD5FC(v42);

          sub_1004DD5FC(v32);

          sub_10046DDE4(v4, type metadata accessor for Lyrics.TextLine);
          v13 += v31;
          --v10;
        }

        while (v10);
        v7 = v33;
        v8 = v34;
        v5 = v24;
        v6 = v30;
      }

      else
      {
      }

      ++v6;
      v35 = v7;
      v36 = v8;
      v39._countAndFlagsBits = 10;
      v39._object = 0xE100000000000000;
      sub_1004DD5FC(v39);

      if (v6 == v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

uint64_t Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t (*Lyrics.staticText.modify(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return sub_1004587C0;
}

uint64_t sub_1004587C0(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_100008C70(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_100458898(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1004DF08C();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_100458980@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_10046DD7C(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return sub_10046DDE4(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      sub_10046DDE4(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_10046E230(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_100458B5C()
{
  v0 = sub_10048F8C8(&off_1005FDE98);
  result = swift_arrayDestroy();
  qword_100674258 = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  sub_1004DF27C(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_1004DF2AC(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  sub_1004DF26C();
  sub_1004DF27C(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_1004DF2AC(*&v2);
  return sub_1004DF2BC();
}

Swift::Int sub_100458C74()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004DF2AC(*&v2);
  return sub_1004DF2BC();
}

void sub_100458CDC()
{
  v1 = *v0;
  sub_1004DF27C(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004DF2AC(*&v2);
}

Swift::Int sub_100458D28()
{
  v1 = *v0;
  sub_1004DF26C();
  sub_1004DF27C(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004DF2AC(*&v2);
  return sub_1004DF2BC();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

uint64_t Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v729 = a3;
  v679 = a2;
  v676 = a1;
  v723 = *v3;
  v5 = sub_100004CB8(&qword_100648DA8);
  __chkstk_darwin(v5 - 8);
  v654 = v648 - v6;
  v7 = sub_100004CB8(&qword_100648D90);
  __chkstk_darwin(v7 - 8);
  v671 = v648 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v656 = v648 - v10;
  __chkstk_darwin(v11);
  v658 = v648 - v12;
  v675 = sub_100004CB8(&qword_100648DB0);
  __chkstk_darwin(v675);
  v674 = v648 - v13;
  v14 = sub_100004CB8(&qword_100648DB8);
  __chkstk_darwin(v14 - 8);
  v661 = v648 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v680 = v648 - v17;
  __chkstk_darwin(v18);
  v687 = v648 - v19;
  v20 = sub_100004CB8(&qword_100648D98);
  __chkstk_darwin(v20 - 8);
  v670 = v648 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v669 = v648 - v23;
  __chkstk_darwin(v24);
  v685 = v648 - v25;
  __chkstk_darwin(v26);
  v704 = v648 - v27;
  __chkstk_darwin(v28);
  v713 = v648 - v29;
  v30 = sub_100004CB8(&qword_10064A830);
  __chkstk_darwin(v30 - 8);
  v666 = v648 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v665 = v648 - v33;
  __chkstk_darwin(v34);
  v664 = v648 - v35;
  v743 = type metadata accessor for Lyrics.TextLine(0);
  v732 = *(v743 - 8);
  __chkstk_darwin(v743);
  v735 = v648 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v734 = v648 - v38;
  __chkstk_darwin(v39);
  v747 = (v648 - v40);
  __chkstk_darwin(v41);
  v722 = v648 - v42;
  __chkstk_darwin(v43);
  v715 = v648 - v44;
  v45 = type metadata accessor for Lyrics.Transliteration(0);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v705 = v648 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v678 = (v648 - v49);
  __chkstk_darwin(v50);
  v731 = v648 - v51;
  __chkstk_darwin(v52);
  v730 = v648 - v53;
  v54 = type metadata accessor for Lyrics.Translation(0);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v681 = v648 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v695 = v648 - v58;
  __chkstk_darwin(v59);
  v682 = (v648 - v60);
  __chkstk_darwin(v61);
  v733 = v648 - v62;
  __chkstk_darwin(v63);
  v737 = v648 - v64;
  v65 = sub_100004CB8(&qword_100648DC0);
  __chkstk_darwin(v65 - 8);
  v673 = v648 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v652 = v648 - v68;
  __chkstk_darwin(v69);
  v694 = v648 - v70;
  __chkstk_darwin(v71);
  v706 = v648 - v72;
  __chkstk_darwin(v73);
  v728 = v648 - v74;
  v744 = sub_1004D83FC();
  v740 = *(v744 - 8);
  __chkstk_darwin(v744);
  v657 = v648 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v697 = v648 - v77;
  __chkstk_darwin(v78);
  v746 = v648 - v79;
  __chkstk_darwin(v80);
  v736 = (v648 - v81);
  v748 = sub_1004D83DC();
  v683 = *(v748 - 8);
  __chkstk_darwin(v748);
  v668 = v648 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v651 = v648 - v84;
  __chkstk_darwin(v85);
  v655 = v648 - v86;
  __chkstk_darwin(v87);
  v712 = v648 - v88;
  __chkstk_darwin(v89);
  v711 = v648 - v90;
  __chkstk_darwin(v91);
  v741 = v648 - v92;
  __chkstk_darwin(v93);
  v696 = v648 - v94;
  __chkstk_darwin(v95);
  v742 = v648 - v96;
  __chkstk_darwin(v97);
  v725 = v648 - v98;
  __chkstk_darwin(v99);
  v686 = v648 - v100;
  __chkstk_darwin(v101);
  v724 = v648 - v102;
  __chkstk_darwin(v103);
  v727 = v648 - v104;
  v105 = sub_100004CB8(&qword_100648D88);
  __chkstk_darwin(v105 - 8);
  v107 = v648 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __chkstk_darwin(v108);
  v111 = v648 - v110;
  v709 = v55;
  v112 = *(v55 + 56);
  v677 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v112(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v54, v109);
  v710 = v46;
  v113 = *(v46 + 56);
  v650 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v45);
  v702 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v114 = v54;
  v115 = v748;
  v707 = v114;
  v662 = v112;
  v663 = v55 + 56;
  (v112)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v653 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v45);
  v667 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v45);
  v690 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v738 = v45;
  v714 = v46 + 56;
  v708 = v113;
  v113(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v45);
  v116 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v116 = 0;
  v116[1] = 0;
  v672 = v116;
  v117 = v679;
  *(v4 + 16) = v676;
  *(v4 + 24) = v117;
  v118 = *(v683 + 7);
  v118(v111, 1, 1, v115);

  v119 = [v729 language];
  if (v119)
  {
    v120 = v119;
    sub_1004DD43C();

    sub_1004D839C();
    v118(v107, 0, 1, v115);
    sub_1000107AC(v107, v111, &qword_100648D88);
  }

  else
  {
    sub_10001074C(v111, &qword_100648D88);
    v118(v111, 1, 1, v115);
  }

  v121 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v689 = v111;
  sub_1000108DC(v111, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_100648D88);
  v122 = v729;
  [v729 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v123;
  v124 = [v122 songwriters];
  v125 = sub_100006F10(0, &qword_100648DD8);
  v126 = sub_1004DD87C();

  if (v126 >> 62)
  {
    v127 = sub_1004DED5C();
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v128 = _swiftEmptyArrayStorage;
  v745 = v4;
  v659 = v125;
  v649 = v121;
  if (v127)
  {
    v129 = v126;
    *&v749 = _swiftEmptyArrayStorage;
    sub_100463968(0, v127 & ~(v127 >> 63), 0);
    if (v127 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v130 = 0;
    v131 = v749;
    v132 = v129;
    v739 = (v129 & 0xC000000000000001);
    v133 = v127;
    do
    {
      if (v739)
      {
        v134 = sub_1004DEB2C();
      }

      else
      {
        v134 = *(v132 + 8 * v130 + 32);
      }

      v135 = v134;
      v136 = [v134 name];
      v137 = sub_1004DD43C();
      v139 = v138;

      *&v749 = v131;
      v141 = v131[2];
      v140 = v131[3];
      if (v141 >= v140 >> 1)
      {
        sub_100463968((v140 > 1), v141 + 1, 1);
        v131 = v749;
      }

      ++v130;
      v131[2] = v141 + 1;
      v142 = &v131[2 * v141];
      v142[4] = v137;
      v142[5] = v139;
      v4 = v745;
      v132 = v129;
    }

    while (v133 != v130);

    v128 = _swiftEmptyArrayStorage;
  }

  else
  {

    v131 = _swiftEmptyArrayStorage;
  }

  v143 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v131;
  v127 = v729;
  v144 = [v729 audioAttributes];
  v129 = v736;
  v648[2] = v143;
  if (v144)
  {
    v145 = v144;
    if ([v144 isSpatialRole])
    {
      [v145 lyricsOffset];
      v147 = v146;

      sub_100004CB8(&qword_100648E40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100511DA0;
      *(inited + 32) = v147;
      v149 = sub_100469E90(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v149 = &_swiftEmptySetSingleton;
LABEL_22:
  v150 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v149;
  v151 = [v127 type];
  v152 = v151 == 1;
  if (v151 == 2)
  {
    v152 = 2;
  }

  *(v4 + 56) = v152;
  v772 = _swiftEmptyArrayStorage;
  v703 = swift_allocObject();
  swift_weakInit();
  v699 = swift_allocObject();
  *(v699 + 16) = 0;
  v698 = swift_allocObject();
  *(v698 + 16) = 0;
  v153 = [v127 language];
  if (v153)
  {
    v154 = v153;
    sub_1004DD43C();

    v155 = v727;
    sub_1004D839C();
    v156 = sub_1004D83BC();
    (*(v683 + 1))(v155, v748);
    v726 = v156 == 2;
  }

  else
  {
    v726 = 0;
  }

  v157 = [v127 language];
  if (v157)
  {
    v158 = v157;
    v159 = sub_1004DD43C();
    v161 = v160;
  }

  else
  {
    v159 = 0;
    v161 = 0;
  }

  v701 = sub_100469FE4(v159, v161);

  v648[3] = v150;
  if (_swiftEmptyArrayStorage >> 62 && sub_1004DED5C())
  {
    sub_10046A468(_swiftEmptyArrayStorage);
    v162 = v181;
  }

  else
  {
    v162 = &_swiftEmptySetSingleton;
  }

  v163 = swift_allocObject();
  v700 = v163;
  *(v163 + 16) = v162;
  v660 = v163 + 16;
  v164 = [v127 lyricsSections];
  sub_100006F10(0, &qword_100648DE0);
  v165 = sub_1004DD87C();

  if (v165 >> 62)
  {
    v166 = sub_1004DED5C();
  }

  else
  {
    v166 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = v728;
  if (v166 >= 1)
  {
    v125 = [v127 lyricsSections];
    v4 = sub_1004DD87C();

    if (!(v4 >> 62))
    {
      v168 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v168)
      {
LABEL_37:
        if (v168 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v169 = 0;
        v739 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v170 = sub_1004DEB2C();
          }

          else
          {
            v170 = *(v4 + 8 * v169 + 32);
          }

          v171 = v170;
          v172 = [v170 lines];
          sub_100006F10(0, &qword_100648DE8);
          v173 = sub_1004DD87C();

          v125 = sub_10046BC98(v173, v700, v698, v699, v729, v726, v701, v703);

          sub_10045FB50(v174);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v739 = sub_100462EFC(0, v739[2] + 1, 1, v739);
          }

          v176 = v739[2];
          v175 = v739[3];
          if (v176 >= v175 >> 1)
          {
            v739 = sub_100462EFC((v175 > 1), v176 + 1, 1, v739);
          }

          ++v169;

          v177 = v739;
          v739[2] = v176 + 1;
          v177[v176 + 4] = v125;
        }

        while (v168 != v169);

        v167 = v728;
        v129 = v736;
        v127 = v729;
        v128 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v168 = sub_1004DED5C();
    if (v168)
    {
      goto LABEL_37;
    }

LABEL_55:

    v739 = _swiftEmptyArrayStorage;
    v167 = v728;
    goto LABEL_56;
  }

  v178 = [v127 lyricsLines];
  sub_100006F10(0, &qword_100648DE8);
  v125 = sub_1004DD87C();

  v179 = sub_10046BC98(v125, v700, v698, v699, v127, v726, v701, v703);

  v772 = v179;
  sub_100004CB8(&qword_100648DF0);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_100511DA0;
  v739 = v180;
  *(v180 + 32) = v179;

LABEL_56:
  v182 = swift_allocObject();
  v727 = v182;
  v183 = v723;
  *(v182 + 16) = v127;
  *(v182 + 24) = v183;
  v184 = swift_allocObject();
  v184[2] = 0;
  v693 = v184 + 2;
  v729 = v184;
  v184[3] = _swiftEmptyArrayStorage;
  v185 = swift_allocObject();
  *(v185 + 16) = 0;
  v688 = v185 + 16;
  v723 = v185;
  *(v185 + 24) = _swiftEmptyArrayStorage;
  v684 = v127;
  v186 = sub_1004D830C();
  v187 = v186;
  v721 = *(v186 + 16);
  if (!v721)
  {

    v189 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v188 = 0;
  v719 = v186 + 32;
  v128 = (v683 + 8);
  v718 = (v740 + 16);
  v717 = (v740 + 8);
  v716 = (v740 + 32);
  v189 = _swiftEmptyArrayStorage;
  v720 = v186;
  do
  {
    if (v188 >= v187[2])
    {
      goto LABEL_395;
    }

    v190 = v189;

    sub_1004D82BC();
    v191 = v724;
    sub_1004D83EC();
    sub_1004D83CC();
    v192 = *v128;
    (*v128)(v191, v748);
    v193 = sub_1004D836C();
    v194 = *(v193 - 8);
    if ((*(v194 + 48))(v167, 1, v193) == 1)
    {
      sub_10001074C(v167, &qword_100648DC0);
      v189 = v190;
      goto LABEL_97;
    }

    v195 = sub_1004D835C();
    v196 = v167;
    v198 = v197;
    (*(v194 + 8))(v196, v193);
    if (qword_100648BA0 != -1)
    {
      swift_once();
    }

    v199 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v200 = sub_100028F80(v195, v198);
      if (v201)
      {
        v202 = (*(v199 + 56) + 16 * v200);
        v195 = *v202;
        v203 = v202[1];

        v198 = v203;
      }
    }

    v204 = *(v723 + 16);
    v205 = *(v723 + 24);
    v206 = *(v205 + 16);
    if (v204)
    {

      sub_100467DBC(v195, v198, v205 + 32, v206, (v204 + 16));
      v208 = v207;

      if ((v208 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      sub_10046827C(v195, v198);
      goto LABEL_78;
    }

    if (!v206)
    {
      goto LABEL_77;
    }

    v209 = (v205 + 40);
    while (1)
    {
      v210 = *(v209 - 1) == v195 && *v209 == v198;
      if (v210 || (sub_1004DF08C() & 1) != 0)
      {
        break;
      }

      v209 += 2;
      if (!--v206)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v195 == 1853120844 && v198 == 0xE400000000000000)
    {

      v189 = v190;
      v129 = v736;
      goto LABEL_97;
    }

    v211 = sub_1004DF08C();

    v189 = v190;
    v129 = v736;
    if ((v211 & 1) == 0)
    {
      if (qword_100648BC8 != -1)
      {
        swift_once();
      }

      v212 = v686;
      sub_1004D83EC();
      v213 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v212);
      v192(v212, v748);
      if (v213)
      {
        v214 = *(v723 + 16);
        v215 = *(v723 + 24);
        v216 = *(v215 + 16);
        if (v214)
        {

          sub_100467DBC(1853120844, 0xE400000000000000, v215 + 32, v216, (v214 + 16));
          v218 = v217;

          if (v218)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v216)
          {
LABEL_96:
            sub_10046827C(1853120844, 0xE400000000000000);
            goto LABEL_97;
          }

          v219 = (v215 + 40);
          while (1)
          {
            v220 = *(v219 - 1) == 1853120844 && *v219 == 0xE400000000000000;
            if (v220 || (sub_1004DF08C() & 1) != 0)
            {
              break;
            }

            v219 += 2;
            if (!--v216)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v221 = v725;
    sub_1004D83EC();
    v222 = sub_10045FF74();
    v224 = v223;
    v192(v221, v748);
    v225 = v744;
    if (!v224)
    {
      goto LABEL_111;
    }

    v226 = *(v729 + 2);
    v227 = *(v729 + 3);
    v228 = *(v227 + 16);
    if (v226)
    {

      sub_100467DBC(v222, v224, v227 + 32, v228, (v226 + 16));
      v230 = v229;

      if ((v230 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v228)
    {
      v231 = (v227 + 40);
      do
      {
        v232 = *(v231 - 1) == v222 && v224 == *v231;
        if (v232 || (sub_1004DF08C() & 1) != 0)
        {
          goto LABEL_110;
        }

        v231 += 2;
      }

      while (--v228);
    }

    sub_10046827C(v222, v224);
LABEL_110:

    v189 = v190;
    v129 = v736;
LABEL_111:
    (*v718)(v746, v129, v225);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_100462D20(0, *(v189 + 16) + 1, 1, v189, &qword_1006494D0, &unk_1005389B8, &type metadata accessor for Locale);
    }

    v187 = v720;
    v125 = *(v189 + 16);
    v233 = *(v189 + 24);
    if (v125 >= v233 >> 1)
    {
      v189 = sub_100462D20(v233 > 1, v125 + 1, 1, v189, &qword_1006494D0, &unk_1005389B8, &type metadata accessor for Locale);
    }

    ++v188;
    v234 = v740;
    (*(v740 + 8))(v129, v225);
    *(v189 + 16) = v125 + 1;
    (*(v234 + 32))(v189 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v125, v746, v225);
    v167 = v728;
  }

  while (v188 != v721);

LABEL_118:
  v125 = sub_100468BEC(_swiftEmptyArrayStorage);
  v235 = [v684 translations];
  sub_100006F10(0, &qword_100648DF8);
  v188 = sub_1004DD87C();

  if (v188 >> 62)
  {
    goto LABEL_404;
  }

  v236 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v725 = v125;
    v648[1] = type metadata accessor for Lyrics(0);
    v724 = v189;
    if (v236)
    {
      v237 = 0;
      v125 = 0;
      v721 = (v188 & 0xC000000000000001);
      v691 = v188 + 32;
      v692 = v188 & 0xFFFFFFFFFFFFFF8;
      v718 = (v683 + 16);
      v717 = (v683 + 32);
      v716 = (v683 + 8);
      v736 = _swiftEmptyArrayStorage;
      v189 = v706;
      v720 = v188;
      v719 = v236;
      while (1)
      {
        while (1)
        {
          if (v721)
          {
            v238 = sub_1004DEB2C();
          }

          else
          {
            if (v237 >= *(v692 + 16))
            {
              goto LABEL_402;
            }

            v238 = *(v691 + 8 * v237);
          }

          v239 = v238;
          v240 = __OFADD__(v237++, 1);
          if (v240)
          {
            goto LABEL_396;
          }

          v241 = [v238 linesMap];
          *&v749 = 0;
          sub_100006F10(0, &qword_100648DE8);
          sub_1004DD20C();

          v242 = v749;
          if (v749)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_151;
          }
        }

        v728 = v237;
        v243 = v727;

        v128 = v239;
        v244 = sub_10046D0F8(v242, sub_10046D090, v243, v128);
        v746 = v125;
        if (v125)
        {
          goto LABEL_430;
        }

        v245 = v244;

        v246 = [v128 language];
        sub_1004DD43C();

        v247 = v742;
        sub_1004D839C();
        v248 = v696;
        v249 = v748;
        (*v718)(v696, v247, v748);
        v250 = [v128 language];
        v251 = sub_1004DD43C();
        v253 = v252;

        v254 = [v128 type] == 1;
        LOBYTE(v250) = [v128 isAutomaticallyCreated];
        v255 = v737;
        (*v717)(v737, v248, v249);
        v256 = v707;
        v257 = (v255 + v707[5]);
        *v257 = v251;
        v257[1] = v253;
        *(v255 + v256[6]) = v254;
        *(v255 + v256[7]) = v250;
        *(v255 + v256[8]) = v245;
        sub_10046DD7C(v255, v733, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v736 = sub_100462D20(0, v736[2] + 1, 1, v736, &qword_100649480, &unk_100538970, type metadata accessor for Lyrics.Translation);
        }

        v259 = v736[2];
        v258 = v736[3];
        v125 = v746;
        v260 = v742;
        v188 = v720;
        if (v259 >= v258 >> 1)
        {
          v736 = sub_100462D20(v258 > 1, v259 + 1, 1, v736, &qword_100649480, &unk_100538970, type metadata accessor for Lyrics.Translation);
        }

        v261 = v736;
        v736[2] = v259 + 1;
        sub_10046E230(v733, v261 + ((*(v709 + 80) + 32) & ~*(v709 + 80)) + *(v709 + 72) * v259, type metadata accessor for Lyrics.Translation);
        v262 = sub_10045FF74();
        if (v263)
        {
          v264 = v262;
          v265 = v263;
          v267 = *(v729 + 2);
          v266 = *(v729 + 3);
          v268 = *(v266 + 16);
          if (v267)
          {

            sub_100467DBC(v264, v265, v266 + 32, v268, (v267 + 16));
            v270 = v269;

            if (v270)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v268)
            {
LABEL_147:

              sub_10046DDE4(v737, type metadata accessor for Lyrics.Translation);
              (*v716)(v742, v748);
              goto LABEL_148;
            }

            v275 = (v266 + 40);
            while (1)
            {
              v276 = *(v275 - 1) == v264 && v265 == *v275;
              if (v276 || (sub_1004DF08C() & 1) != 0)
              {
                break;
              }

              v275 += 2;
              if (!--v268)
              {
                goto LABEL_147;
              }
            }
          }

          v271 = v737;
          v272 = v682;
          sub_10046DD7C(v737, v682, type metadata accessor for Lyrics.Translation);
          v273 = v725;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v749 = v273;
          sub_100466548(v272, v264, v265, isUniquelyReferenced_nonNull_native);

          sub_10046DDE4(v271, type metadata accessor for Lyrics.Translation);
          (*v716)(v742, v748);
          v725 = v749;
        }

        else
        {

          sub_10046DDE4(v737, type metadata accessor for Lyrics.Translation);
          (*v716)(v260, v748);
        }

LABEL_148:
        v189 = v706;
        v236 = v719;
        v237 = v728;
        if (v728 == v719)
        {
          goto LABEL_151;
        }
      }
    }

    v125 = 0;
    v736 = _swiftEmptyArrayStorage;
    v189 = v706;
LABEL_151:

    v277 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v745 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v736;

    v716 = sub_100468DD4(_swiftEmptyArrayStorage);
    v278 = [v684 transliterations];
    sub_100006F10(0, &qword_100648E08);
    v279 = sub_1004DD87C();

    if (v279 >> 62)
    {
      v280 = sub_1004DED5C();
    }

    else
    {
      v280 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v188 = v702;
    v746 = v125;
    if (v280)
    {
      v717 = v277;
      v281 = 0;
      v742 = v279 & 0xC000000000000001;
      v719 = v279 & 0xFFFFFFFFFFFFFF8;
      v718 = (v279 + 32);
      v721 = (v683 + 16);
      v720 = (v683 + 8);
      v728 = _swiftEmptyArrayStorage;
      v737 = v279;
      v733 = v280;
      while (1)
      {
        while (1)
        {
          if (v742)
          {
            v282 = sub_1004DEB2C();
          }

          else
          {
            if (v281 >= *(v719 + 16))
            {
              goto LABEL_403;
            }

            v282 = v718[v281];
          }

          v283 = v282;
          v240 = __OFADD__(v281++, 1);
          if (v240)
          {
            goto LABEL_397;
          }

          v125 = [v282 linesMap];
          *&v749 = 0;
          sub_100006F10(0, &qword_100648DE8);
          sub_1004DD20C();

          v284 = v749;
          if (v749)
          {
            break;
          }

          if (v281 == v280)
          {
            goto LABEL_184;
          }
        }

        v285 = v727;

        v128 = v283;
        v286 = v746;
        v287 = sub_10046D0F8(v284, sub_10046D090, v285, v128);
        v746 = v286;
        if (v286)
        {

          v647 = v745;

          sub_10001074C(v647 + v649, &qword_100648D88);

          sub_10001074C(v647 + v677, &qword_10064A830);
          sub_10001074C(v647 + v650, &qword_100648D98);
          sub_10001074C(v647 + v188, &qword_10064A830);
          sub_10001074C(v653 + v647, &qword_100648D98);
          sub_10001074C(v647 + v667, &qword_100648D98);
          sub_10001074C(v647 + v690, &qword_100648D98);

          goto LABEL_432;
        }

        v288 = v287;

        v289 = [v128 language];
        sub_1004DD43C();

        v290 = v741;
        sub_1004D839C();
        v291 = v730;
        (*v721)(v730, v290, v748);
        v292 = [v128 language];
        v293 = sub_1004DD43C();
        v295 = v294;

        v296 = [v128 isAutomaticallyCreated];
        v297 = v738;
        v298 = &v291[v738[5]];
        *v298 = v293;
        v298[1] = v295;
        v291[v297[6]] = v296;
        *&v291[v297[7]] = v288;
        sub_10046DD7C(v291, v731, type metadata accessor for Lyrics.Transliteration);
        v299 = v728;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v299 = sub_100462D20(0, *(v299 + 2) + 1, 1, v299, &qword_100649498, &unk_100538988, type metadata accessor for Lyrics.Transliteration);
        }

        v301 = *(v299 + 2);
        v300 = *(v299 + 3);
        v302 = v741;
        if (v301 >= v300 >> 1)
        {
          v299 = sub_100462D20(v300 > 1, v301 + 1, 1, v299, &qword_100649498, &unk_100538988, type metadata accessor for Lyrics.Transliteration);
        }

        *(v299 + 2) = v301 + 1;
        v303 = (*(v710 + 80) + 32) & ~*(v710 + 80);
        v728 = v299;
        sub_10046E230(v731, &v299[v303 + *(v710 + 72) * v301], type metadata accessor for Lyrics.Transliteration);
        sub_1004D83CC();
        v125 = sub_1004D836C();
        v304 = *(v125 - 8);
        if ((*(v304 + 48))(v189, 1, v125) == 1)
        {

          sub_10046DDE4(v730, type metadata accessor for Lyrics.Transliteration);
          (*v720)(v302, v748);
          sub_10001074C(v189, &qword_100648DC0);
        }

        else
        {
          v305 = sub_1004D835C();
          v307 = v306;
          (*(v304 + 8))(v189, v125);
          v125 = *(v723 + 16);
          v308 = *(v723 + 24);
          v309 = *(v308 + 16);
          if (v125)
          {

            sub_100467DBC(v305, v307, v308 + 32, v309, (v125 + 16));
            v311 = v310;

            if (v311)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v309)
            {
LABEL_180:

              sub_10046DDE4(v730, type metadata accessor for Lyrics.Transliteration);
              (*v720)(v741, v748);
              goto LABEL_181;
            }

            v125 = v308 + 40;
            while (1)
            {
              v317 = *(v125 - 8) == v305 && *v125 == v307;
              if (v317 || (sub_1004DF08C() & 1) != 0)
              {
                break;
              }

              v125 += 16;
              if (!--v309)
              {
                goto LABEL_180;
              }
            }
          }

          v125 = type metadata accessor for Lyrics.Transliteration;
          v312 = v730;
          v313 = v678;
          sub_10046DD7C(v730, v678, type metadata accessor for Lyrics.Transliteration);
          v314 = v716;
          v315 = swift_isUniquelyReferenced_nonNull_native();
          *&v749 = v314;
          sub_1004663B4(v313, v305, v307, v315);

          v316 = v312;
          v189 = v706;
          sub_10046DDE4(v316, type metadata accessor for Lyrics.Transliteration);
          (*v720)(v741, v748);
          v716 = v749;
        }

LABEL_181:
        v188 = v702;
        v280 = v733;
        if (v281 == v733)
        {
          goto LABEL_184;
        }
      }
    }

    v728 = _swiftEmptyArrayStorage;
LABEL_184:

    v318 = v745;
    *(v745 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v728;
    v717 = *(v724 + 2);
    if (v717)
    {
      v319 = v740;
      v719 = &v724[(*(v740 + 80) + 32) & ~*(v740 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v320 = 0;
      v720 = (v319 + 16);
      v737 = v683 + 8;
      v696 = v683 + 48;
      v672 = (v683 + 16);
      v706 = (v710 + 48);
      v718 = (v319 + 8);
      v692 = v319 + 56;
      v678 = (v319 + 48);
      v653 = (v319 + 32);
      v682 = (v709 + 48);
      v683 = (v683 + 32);
      v188 = v694;
      v125 = v744;
      v321 = v697;
      v322 = v748;
LABEL_189:
      if (v320 >= *(v724 + 2))
      {
        goto LABEL_399;
      }

      v323 = *(v740 + 72);
      v733 = v320;
      v742 = *(v740 + 16);
      (v742)(v321, v719 + v323 * v320, v125);
      v324 = v711;
      sub_1004D83EC();
      v325 = sub_10045FF74();
      v327 = v326;
      v189 = *v737;
      (*v737)(v324, v322);
      if (!v327)
      {
        goto LABEL_228;
      }

      if (!*(v725 + 2))
      {

        goto LABEL_228;
      }

      v328 = sub_100028F80(v325, v327);
      v330 = v329;

      if ((v330 & 1) == 0)
      {
        goto LABEL_228;
      }

      v331 = *(v725 + 7) + *(v709 + 72) * v328;
      v332 = v681;
      sub_10046DD7C(v331, v681, type metadata accessor for Lyrics.Translation);
      sub_10046E230(v332, v695, type metadata accessor for Lyrics.Translation);
      v333 = *v696;
      v334 = v689;
      if ((*v696)(v689, 1, v322))
      {
        v335 = *(v729 + 3);
        if (v335[2])
        {
          v336 = v189;
          v337 = 0;
          v338 = 0;
LABEL_199:
          v342 = v335[4];
          v341 = v335[5];

          if (v337)
          {
            if (!v341)
            {
              v189 = v336;
LABEL_208:

LABEL_215:
              v721 = v189;
              v348 = v707;
              if (*(v695 + v707[6]))
              {
                v349 = v702;
                v350 = v745;
                v351 = v666;
                sub_1000108DC(v745 + v702, v666, &qword_10064A830);
                if ((*v682)(v351, 1, v348) == 1)
                {
                  sub_10001074C(v351, &qword_10064A830);
                  v352 = v665;
                  sub_10046E230(v695, v665, type metadata accessor for Lyrics.Translation);
                  v662(v352, 0, 1, v348);
                  swift_beginAccess();
                  v353 = v350 + v349;
                  v354 = v352;
                  goto LABEL_220;
                }

LABEL_226:
                sub_10046DDE4(v695, type metadata accessor for Lyrics.Translation);
                sub_10001074C(v351, &qword_10064A830);
              }

              else
              {
                v355 = v745;
                v351 = v664;
                sub_1000108DC(v745 + v677, v664, &qword_10064A830);
                if ((*v682)(v351, 1, v348) != 1)
                {
                  goto LABEL_226;
                }

                sub_10001074C(v351, &qword_10064A830);
                v356 = v665;
                sub_10046E230(v695, v665, type metadata accessor for Lyrics.Translation);
                v662(v356, 0, 1, v348);
                v357 = v677;
                swift_beginAccess();
                v353 = v355 + v357;
                v354 = v356;
LABEL_220:
                sub_1000107AC(v354, v353, &qword_10064A830);
                swift_endAccess();
              }

              v189 = v721;
              goto LABEL_228;
            }

            if (v338 == v342 && v337 == v341)
            {

              v189 = v336;
            }

            else
            {
              v343 = sub_1004DF08C();

              v189 = v336;
              if ((v343 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v189 = v336;
            if (v341)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v339 = v686;
        (*v672)(v686, v334, v322);
        v338 = sub_10045FF74();
        v337 = v340;
        (v189)(v339, v322);
        v335 = *(v729 + 3);
        if (v335[2])
        {
          v336 = v189;
          goto LABEL_199;
        }

        if (v337)
        {
          goto LABEL_208;
        }
      }

      v344 = v689;
      if (v333(v689, 1, v322))
      {
        sub_10045FF74();
        v346 = v345;
LABEL_212:
        if (!v346)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v358 = v686;
      (*v672)(v686, v344, v322);
      v359 = sub_10045FF74();
      v361 = v360;
      (v189)(v358, v322);
      v362 = sub_10045FF74();
      v346 = v363;
      if (!v361)
      {
        goto LABEL_212;
      }

      if (v363)
      {
        if (v359 == v362 && v361 == v363)
        {

          goto LABEL_208;
        }

        v489 = sub_1004DF08C();

        if (v489)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v749) = 15;
      v347 = sub_10046E31C();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v347))
      {
        goto LABEL_215;
      }

      sub_10046DDE4(v695, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v364 = v712;
      sub_1004D83EC();
      sub_1004D83CC();
      (v189)(v364, v322);
      v365 = v321;
      v366 = sub_1004D836C();
      v367 = *(v366 - 8);
      v128 = (v367 + 48);
      v368 = *(v367 + 48);
      if (v368(v188, 1, v366) == 1)
      {
        v125 = v744;
        (*v718)(v365, v744);
        sub_10001074C(v188, &qword_100648DC0);
        v321 = v365;
        goto LABEL_187;
      }

      v741 = v368;
      v369 = sub_1004D835C();
      v371 = v370;
      v373 = *(v367 + 8);
      v372 = v367 + 8;
      v730 = v373;
      (v373)(v188, v366);
      if (qword_100648BA0 != -1)
      {
        swift_once();
      }

      v374 = static Lyrics.scriptMap;
      v375 = v716;
      if (*(static Lyrics.scriptMap + 16))
      {
        v376 = sub_100028F80(v369, v371);
        if (v377)
        {
          v378 = (*(v374 + 56) + 16 * v376);
          v369 = *v378;
          v379 = v378[1];

          v371 = v379;
        }
      }

      v731 = v372;
      if (!v375[2])
      {

LABEL_238:
        v390 = 1;
        v708(v704, 1, 1, v738);
        if (v375[2])
        {
          v391 = sub_100028F80(1853120844, 0xE400000000000000);
          if (v392)
          {
            v393 = v713;
            sub_10046DD7C(v375[7] + *(v710 + 72) * v391, v713, type metadata accessor for Lyrics.Transliteration);
            v394 = v393;
            v390 = 0;
            goto LABEL_243;
          }

          v390 = 1;
        }

        v394 = v713;
LABEL_243:
        v395 = v738;
        v708(v394, v390, 1, v738);
        v389 = *v706;
        v396 = v704;
        if ((*v706)(v704, 1, v395) != 1)
        {
          sub_10001074C(v396, &qword_100648D98);
        }

        goto LABEL_245;
      }

      v380 = sub_100028F80(v369, v371);
      v382 = v381;

      if ((v382 & 1) == 0)
      {
        goto LABEL_238;
      }

      v383 = v710;
      v384 = v704;
      sub_10046DD7C(v375[7] + *(v710 + 72) * v380, v704, type metadata accessor for Lyrics.Transliteration);
      v385 = v738;
      v386 = v708;
      v708(v384, 0, 1, v738);
      v387 = v384;
      v388 = v713;
      sub_10046E230(v387, v713, type metadata accessor for Lyrics.Transliteration);
      v386(v388, 0, 1, v385);
      v389 = *(v383 + 48);
LABEL_245:
      v397 = v713;
      v398 = v738;
      if (v389(v713, 1, v738) == 1)
      {
        v321 = v697;
        v125 = v744;
        (*v718)(v697, v744);
        v399 = v397;
      }

      else
      {
        v400 = v705;
        sub_10046E230(v397, v705, type metadata accessor for Lyrics.Transliteration);
        v401 = v685;
        sub_1000108DC(v745 + v690, v685, &qword_100648D98);
        if (v389(v401, 1, v398) == 1)
        {
          v691 = v366;
          v721 = v189;
          sub_10001074C(v401, &qword_100648D98);
          v402 = v687;
          v188 = v744;
          v403 = v742;
          (v742)(v687, v697, v744);
          v404 = *v692;
          v405 = 1;
          (*v692)(v402, 0, 1, v188);
          v406 = v674;
          if (*(v724 + 2))
          {
            v407 = v680;
            v403(v680, v719, v188);
            v408 = v407;
            v405 = 0;
          }

          else
          {
            v408 = v680;
          }

          v404(v408, v405, 1, v188);
          v409 = *(v675 + 48);
          v410 = v687;
          sub_1000108DC(v687, v406, &qword_100648DB8);
          sub_1000108DC(v408, v406 + v409, &qword_100648DB8);
          v411 = *v678;
          if ((*v678)(v406, 1, v188) == 1)
          {
            sub_10001074C(v408, &qword_100648DB8);
            sub_10001074C(v410, &qword_100648DB8);
            v412 = v411(v406 + v409, 1, v188);
            v413 = v741;
            if (v412 == 1)
            {
              sub_10001074C(v406, &qword_100648DB8);
              v414 = v691;
              goto LABEL_261;
            }

LABEL_258:
            sub_10001074C(v406, &qword_100648DB0);
            v414 = v691;
            goto LABEL_269;
          }

          v415 = v661;
          sub_1000108DC(v406, v661, &qword_100648DB8);
          if (v411(v406 + v409, 1, v188) == 1)
          {
            sub_10001074C(v680, &qword_100648DB8);
            sub_10001074C(v687, &qword_100648DB8);
            (*v718)(v415, v188);
            v413 = v741;
            goto LABEL_258;
          }

          v416 = v415;
          v417 = v657;
          (*v653)(v657, v406 + v409, v188);
          sub_10046E4C0(&qword_100648E30, &type metadata accessor for Locale);
          LODWORD(v742) = sub_1004DD35C();
          v418 = *v718;
          (*v718)(v417, v188);
          sub_10001074C(v680, &qword_100648DB8);
          sub_10001074C(v687, &qword_100648DB8);
          (v418)(v416, v188);
          sub_10001074C(v406, &qword_100648DB8);
          v414 = v691;
          v413 = v741;
          if (v742)
          {
LABEL_261:
            v419 = v658;
            sub_1004D83AC();
            v420 = sub_1004D82FC();
            v421 = *(v420 - 8);
            v422 = *(v421 + 48);
            if (v422(v419, 1, v420) == 1)
            {
              v423 = v419;
              v424 = &qword_100648D90;
LABEL_263:
              sub_10001074C(v423, v424);
              goto LABEL_269;
            }

            sub_1004D82DC();
            v742 = *(v421 + 8);
            (v742)(v419, v420);
            v650 = sub_1004DD4FC();
            v426 = v425;

            v188 = v655;
            sub_1004D83EC();
            v427 = v656;
            sub_1004D83AC();
            v721(v188, v748);
            if (v422(v427, 1, v420) == 1)
            {

              sub_10001074C(v427, &qword_100648D90);
              v413 = v741;
              v414 = v691;
              goto LABEL_269;
            }

            v649 = v426;
            sub_1004D82DC();
            (v742)(v427, v420);
            v428 = sub_1004DD4FC();
            v188 = v429;

            v430 = v654;
            sub_1004D837C();
            v431 = sub_1004D834C();
            v432 = *(v431 - 8);
            v433 = (*(v432 + 48))(v430, 1, v431);
            v414 = v691;
            if (v433 == 1)
            {

              sub_10001074C(v430, &qword_100648DA8);
LABEL_268:
              v413 = v741;
              goto LABEL_269;
            }

            v742 = v428;
            sub_1004D833C();
            (*(v432 + 8))(v430, v431);
            v490 = sub_1004DD4FC();
            v492 = v491;

            v493 = v651;
            sub_1004D83EC();
            v494 = v652;
            sub_1004D83CC();
            v721(v493, v748);
            v413 = v741;
            if ((v741)(v494, 1, v414) == 1)
            {

              v423 = v494;
              v424 = &qword_100648DC0;
              goto LABEL_263;
            }

            v721 = v490;
            v495 = v188;
            sub_1004D835C();
            (v730)(v494, v414);
            v496 = sub_1004DD4FC();
            v498 = v497;

            if (qword_100648B98 != -1)
            {
              swift_once();
            }

            v499 = static Lyrics.chineseLanguages;
            v188 = sub_1001206A4(v650, v649, static Lyrics.chineseLanguages);

            if ((v188 & 1) == 0)
            {

              goto LABEL_268;
            }

            v500 = sub_1001206A4(v742, v495, v499);
            v413 = v741;
            if ((v500 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v496 == 1953390952 && v498 == 0xE400000000000000)
            {

              v322 = v748;
              v189 = v742;
LABEL_337:
              v502 = v705;
              if (v721 == 27496 && v492 == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v503 = sub_1004DF08C();

              if (v503)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v501 = sub_1004DF08C();

              v322 = v748;
              v189 = v742;
              if (v501)
              {
                goto LABEL_337;
              }

              v502 = v705;
            }

            if (v189 == 6649209 && v495 == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v508 = sub_1004DF08C();

            if (v508)
            {
LABEL_346:
              v504 = (v502 + v738[5]);
              v506 = *v504;
              v505 = v504[1];
              *&v749 = v506;
              *(&v749 + 1) = v505;
              *&v755 = 0x6E69796E6970;
              v507 = 0xE600000000000000;
            }

            else
            {
              v509 = (v502 + v738[5]);
              v511 = *v509;
              v510 = v509[1];
              *&v749 = v511;
              *(&v749 + 1) = v510;
              *&v755 = 0x676E69707475796ALL;
              v507 = 0xE800000000000000;
            }

            *(&v755 + 1) = v507;
            sub_10046E2C8();
            if (sub_1004DE8BC())
            {
              goto LABEL_297;
            }

LABEL_321:
            sub_10046DDE4(v705, type metadata accessor for Lyrics.Transliteration);
            v321 = v697;
            v125 = v744;
            (*v718)(v697, v744);
            v188 = v694;
            goto LABEL_188;
          }

LABEL_269:
          v434 = sub_10045FF74();
          v436 = v435;
          v437 = *(v729 + 3);
          if (!v437[2])
          {
            if (!v435)
            {
              v441 = 1;
              v442 = v673;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v438 = v434;
          v439 = v437[4];
          v440 = v437[5];

          if (v436)
          {
            if (v440)
            {
              if (v438 == v439 && v436 == v440)
              {

                v441 = 1;
              }

              else
              {
                v441 = sub_1004DF08C();
              }

LABEL_281:
              v442 = v673;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v441 = 0;
            goto LABEL_281;
          }

          v442 = v673;
          if (v440)
          {
            v441 = 0;
            goto LABEL_282;
          }

          v441 = 1;
LABEL_283:
          sub_1004D83CC();
          if (v413(v442, 1, v414) == 1)
          {
            sub_10001074C(v442, &qword_100648DC0);
            v443 = *(v723 + 24);
            v322 = v748;
            if (!v443[2])
            {
              goto LABEL_297;
            }

            v444 = 0;
            v189 = 0;
            goto LABEL_288;
          }

          v189 = sub_1004D835C();
          v444 = v445;
          (v730)(v442, v414);
          v443 = *(v723 + 24);
          if (v443[2])
          {
            v322 = v748;
LABEL_288:
            v447 = v443[4];
            v446 = v443[5];

            if (v444)
            {
              if (v446)
              {
                if (v189 == v447 && v444 == v446)
                {

LABEL_297:
                  v448 = sub_100468FBC(_swiftEmptyArrayStorage);
                  v449 = v772;
                  v731 = v772[2];
                  if (!v731)
                  {
LABEL_315:
                    v473 = v671;
                    sub_1004D83AC();
                    v474 = sub_1004D82FC();
                    v475 = *(v474 - 8);
                    if ((*(v475 + 48))(v473, 1, v474) == 1)
                    {
                      sub_10001074C(v473, &qword_100648D90);
                    }

                    else
                    {
                      sub_1004D82DC();
                      (*(v475 + 8))(v473, v474);
                    }

                    v189 = v745;
                    v476 = v668;
                    sub_1004D839C();
                    v477 = v697;
                    v478 = v744;
                    (*v718)(v697, v744);
                    v479 = v738;
                    v480 = (v705 + v738[5]);
                    v482 = *v480;
                    v481 = v480[1];
                    v483 = v669;
                    v484 = v476;
                    v322 = v748;
                    (*v683)(v669, v484, v748);
                    v485 = (v483 + v479[5]);
                    *v485 = v482;
                    v485[1] = v481;
                    *(v483 + v479[6]) = 0;
                    *(v483 + v479[7]) = v448;
                    v321 = v477;
                    v125 = v478;
                    v128 = v708;
                    v708(v483, 0, 1, v479);
                    v486 = v667;
                    swift_beginAccess();

                    sub_1000107AC(v483, v189 + v486, &qword_100648D98);
                    swift_endAccess();
                    v487 = v670;
                    sub_10046E230(v705, v670, type metadata accessor for Lyrics.Transliteration);
                    (v128)(v487, 0, 1, v479);
                    v488 = v690;
                    swift_beginAccess();
                    sub_1000107AC(v487, v189 + v488, &qword_100648D98);
                    swift_endAccess();
                    v188 = v694;
                    goto LABEL_188;
                  }

                  v450 = 0;
                  v730 = v772 + ((*(v732 + 80) + 32) & ~*(v732 + 80));
                  v125 = v743;
                  v189 = v722;
                  v721 = v772;
LABEL_302:
                  if (v450 >= v449[2])
                  {
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
                    v236 = sub_1004DED5C();
                    continue;
                  }

                  v457 = sub_10046DD7C(&v730[*(v732 + 72) * v450], v189, type metadata accessor for Lyrics.TextLine);
                  v458 = v189 + *(v125 + 52);
                  v459 = *(v458 + 8);
                  if (!v459)
                  {
                    goto LABEL_301;
                  }

                  v128 = *v458;
                  v741 = (*(v189 + *(v125 + 64)))(v457);
                  v742 = v460;
                  v188 = (*(v189 + *(v125 + 68)))();
                  (*(v189 + *(v125 + 72)))(&v755);
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  v770 = v448;
                  v189 = sub_100028F80(v128, v459);
                  v462 = v448[2];
                  v463 = (v461 & 1) == 0;
                  v464 = v462 + v463;
                  if (__OFADD__(v462, v463))
                  {
                    goto LABEL_394;
                  }

                  v465 = v461;
                  if (v448[3] >= v464)
                  {
                    if (v125)
                    {
                      v125 = v743;
                      if ((v461 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      sub_100466E0C();
                      v125 = v743;
                      if ((v465 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    sub_100464640(v464, v125);
                    v466 = sub_100028F80(v128, v459);
                    if ((v465 & 1) != (v467 & 1))
                    {
                      goto LABEL_433;
                    }

                    v189 = v466;
                    v125 = v743;
                    if ((v465 & 1) == 0)
                    {
LABEL_311:
                      v448 = v770;
                      v770[(v189 >> 6) + 8] |= 1 << v189;
                      v468 = (v448[6] + 16 * v189);
                      *v468 = v128;
                      v468[1] = v459;
                      v469 = v448[7] + 88 * v189;
                      v470 = v742;
                      *v469 = v741;
                      *(v469 + 8) = v470;
                      *(v469 + 16) = v188;
                      *(v469 + 24) = v755;
                      *(v469 + 40) = v756;
                      *(v469 + 56) = v757;
                      *(v469 + 72) = v758;
                      v471 = v448[2];
                      v240 = __OFADD__(v471, 1);
                      v472 = v471 + 1;
                      if (v240)
                      {
                        goto LABEL_400;
                      }

                      v448[2] = v472;

LABEL_300:
                      v189 = v722;
                      v449 = v721;
LABEL_301:
                      ++v450;
                      sub_10046DDE4(v189, type metadata accessor for Lyrics.TextLine);
                      if (v731 == v450)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v448 = v770;
                  v451 = v770[7] + 88 * v189;
                  v452 = *(v451 + 16);
                  v749 = *v451;
                  v750 = v452;
                  v454 = *(v451 + 48);
                  v453 = *(v451 + 64);
                  v455 = *(v451 + 32);
                  v754 = *(v451 + 80);
                  v752 = v454;
                  v753 = v453;
                  v751 = v455;
                  v456 = v742;
                  *v451 = v741;
                  *(v451 + 8) = v456;
                  *(v451 + 16) = v188;
                  *(v451 + 24) = v755;
                  *(v451 + 40) = v756;
                  *(v451 + 56) = v757;
                  *(v451 + 72) = v758;
                  sub_10046E298(&v749);
                  goto LABEL_300;
                }

                v189 = sub_1004DF08C();

                if (v441 & v189 & 1) != 0 || ((v441 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v446)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v322 = v748;
            if (!v444)
            {
              goto LABEL_297;
            }
          }

          if ((v441 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        sub_10046DDE4(v400, type metadata accessor for Lyrics.Transliteration);
        v321 = v697;
        v125 = v744;
        (*v718)(v697, v744);
        v399 = v401;
      }

      sub_10001074C(v399, &qword_100648D98);
      v188 = v694;
LABEL_187:
      v322 = v748;
LABEL_188:
      v320 = v733 + 1;
      if ((v733 + 1) == v717)
      {

        v318 = v745;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v189 = v715;

  swift_beginAccess();

  v513 = sub_10046D308(v512);

  *(v318 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v513;
  v514 = v772;
  v318[6] = v772;
  v515 = *(v514 + 2);
  v746 = v514;
  if (v515)
  {
    v516 = v732;
    v517 = &v514[(*(v732 + 80) + 32) & ~*(v732 + 80)];
    sub_10046DD7C(v517, v189, type metadata accessor for Lyrics.TextLine);
    v748 = *(v516 + 72);

    v518 = 0;
    v125 = _swiftEmptyArrayStorage;
    v128 = v735;
    do
    {
      sub_10046DD7C(v517, v747, type metadata accessor for Lyrics.TextLine);
      if (v518 || (v519 = *v189, *v189 <= 7.0))
      {
        v523 = *v747;
        v524 = *(v189 + 8);
        if (*v747 - v524 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100462BD8(0, *(v125 + 16) + 1, 1, v125);
          }

          v189 = *(v125 + 16);
          v525 = *(v125 + 24);
          if (v189 >= v525 >> 1)
          {
            v125 = sub_100462BD8((v525 > 1), v189 + 1, 1, v125);
          }

          *(&v750 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v751 = &protocol witness table for Lyrics.InstrumentalLine;
          v526 = swift_allocObject();
          *&v749 = v526;
          *(v526 + 16) = v518;
          *(v526 + 24) = v524 + 0.1;
          *(v526 + 32) = v523;
          *(v526 + 40) = v726;
          *(v125 + 16) = v189 + 1;
          sub_100035850(&v749, v125 + 40 * v189 + 32);
          v240 = __OFADD__(v518++, 1);
          if (v240)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_100462BD8(0, *(v125 + 16) + 1, 1, v125);
        }

        v521 = *(v125 + 16);
        v520 = *(v125 + 24);
        if (v521 >= v520 >> 1)
        {
          v125 = sub_100462BD8((v520 > 1), v521 + 1, 1, v125);
        }

        *(&v750 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v751 = &protocol witness table for Lyrics.InstrumentalLine;
        v522 = swift_allocObject();
        *&v749 = v522;
        *(v522 + 16) = 0;
        *(v522 + 24) = 0;
        *(v522 + 32) = v519;
        *(v522 + 40) = v726;
        *(v125 + 16) = v521 + 1;
        sub_100035850(&v749, v125 + 40 * v521 + 32);
        v518 = 1;
      }

      v527 = v734;
      sub_10046DD7C(v747, v734, type metadata accessor for Lyrics.TextLine);
      *(v527 + 16) = v518;
      sub_10046DD7C(v527, v735, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_100462BD8(0, *(v125 + 16) + 1, 1, v125);
      }

      v529 = *(v125 + 16);
      v528 = *(v125 + 24);
      if (v529 >= v528 >> 1)
      {
        v125 = sub_100462BD8((v528 > 1), v529 + 1, 1, v125);
      }

      v188 = type metadata accessor for Lyrics.TextLine;
      sub_10046DDE4(v747, type metadata accessor for Lyrics.TextLine);
      v189 = v715;
      sub_10046DDE4(v715, type metadata accessor for Lyrics.TextLine);
      *(&v750 + 1) = v743;
      *&v751 = &protocol witness table for Lyrics.TextLine;
      v530 = sub_1000357EC(&v749);
      sub_10046DD7C(v128, v530, type metadata accessor for Lyrics.TextLine);
      *(v125 + 16) = v529 + 1;
      sub_100035850(&v749, v125 + 40 * v529 + 32);
      sub_10046DDE4(v128, type metadata accessor for Lyrics.TextLine);
      v240 = __OFADD__(v518++, 1);
      if (v240)
      {
        goto LABEL_398;
      }

      sub_10046E230(v734, v189, type metadata accessor for Lyrics.TextLine);
      v517 += v748;
      --v515;
    }

    while (v515);
    v531 = *(v189 + 8);
    sub_10046DDE4(v189, type metadata accessor for Lyrics.TextLine);
    v318 = v745;
  }

  else
  {

    v518 = 0;
    v125 = _swiftEmptyArrayStorage;
    v531 = 0;
  }

  v532 = [v684 songwriters];
  v533 = sub_1004DD87C();

  if (v533 >> 62)
  {
    v534 = sub_1004DED5C();
  }

  else
  {
    v534 = *((v533 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v535 = v676;
  if (!v534)
  {

LABEL_414:
    v318[4] = v739;
    v318[5] = v125;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v555 = v679;
    if (qword_100648BC0 != -1)
    {
      swift_once();
    }

    v556 = sub_1004D966C();
    sub_100035430(v556, static Logger.lyrics);
    v557 = swift_allocObject();
    *(v557 + 16) = v535;
    *(v557 + 24) = v555;
    v558 = swift_allocObject();
    v559 = v729;
    *(v558 + 16) = sub_10046DF64;
    *(v558 + 24) = v559;
    v560 = swift_allocObject();
    v746 = v560;
    v561 = v723;
    *(v560 + 16) = sub_10047047C;
    *(v560 + 24) = v561;
    swift_retain_n();

    v748 = sub_1004D964C();
    LODWORD(v747) = sub_1004DDF9C();
    v744 = swift_allocObject();
    *(v744 + 16) = 34;
    v743 = swift_allocObject();
    *(v743 + 16) = 8;
    v562 = swift_allocObject();
    *(v562 + 16) = sub_10046DE7C;
    *(v562 + 24) = v557;
    v563 = swift_allocObject();
    v742 = v563;
    *(v563 + 16) = sub_10046DF9C;
    *(v563 + 24) = v562;
    v741 = swift_allocObject();
    v741[16] = 34;
    v740 = swift_allocObject();
    *(v740 + 16) = 8;
    v564 = swift_allocObject();
    *(v564 + 16) = sub_10046DE84;
    *(v564 + 24) = v318;
    v565 = swift_allocObject();
    v739 = v565;
    v565[2] = sub_100470474;
    v565[3] = v564;
    v737 = swift_allocObject();
    *(v737 + 16) = 34;
    v736 = swift_allocObject();
    *(v736 + 16) = 8;
    v566 = swift_allocObject();
    *(v566 + 16) = sub_10046DEBC;
    *(v566 + 24) = v318;
    v567 = swift_allocObject();
    *(v567 + 16) = sub_100470474;
    *(v567 + 24) = v566;
    v735 = swift_allocObject();
    *(v735 + 16) = 34;
    v734 = swift_allocObject();
    *(v734 + 16) = 8;
    v568 = swift_allocObject();
    *(v568 + 16) = sub_10046DEF4;
    *(v568 + 24) = v318;
    v569 = swift_allocObject();
    *(v569 + 16) = sub_100470474;
    *(v569 + 24) = v568;
    v733 = swift_allocObject();
    *(v733 + 16) = 34;
    v732 = swift_allocObject();
    *(v732 + 16) = 8;
    v570 = swift_allocObject();
    *(v570 + 16) = sub_10046DF2C;
    *(v570 + 24) = v318;
    v571 = swift_allocObject();
    *(v571 + 16) = sub_100470474;
    *(v571 + 24) = v570;
    v731 = swift_allocObject();
    *(v731 + 16) = 34;
    v572 = swift_allocObject();
    *(v572 + 16) = 8;
    v573 = swift_allocObject();
    *(v573 + 16) = sub_10046DF80;
    *(v573 + 24) = v558;
    v574 = swift_allocObject();
    *(v574 + 16) = sub_100470474;
    *(v574 + 24) = v573;
    v575 = swift_allocObject();
    *(v575 + 16) = 34;
    v576 = swift_allocObject();
    *(v576 + 16) = 8;
    v577 = swift_allocObject();
    v578 = v746;
    *(v577 + 16) = sub_100470470;
    *(v577 + 24) = v578;
    v579 = swift_allocObject();
    *(v579 + 16) = sub_100470474;
    *(v579 + 24) = v577;
    sub_100004CB8(&qword_100648E18);
    v580 = swift_allocObject();
    *(v580 + 16) = xmmword_100537970;
    v581 = v744;
    *(v580 + 32) = sub_10046DF88;
    *(v580 + 40) = v581;
    v582 = v743;
    *(v580 + 48) = sub_1004703BC;
    *(v580 + 56) = v582;
    v583 = v742;
    *(v580 + 64) = sub_10046DFC4;
    *(v580 + 72) = v583;
    v584 = v741;
    *(v580 + 80) = sub_1004703BC;
    *(v580 + 88) = v584;
    v585 = v740;
    *(v580 + 96) = sub_1004703BC;
    *(v580 + 104) = v585;
    v586 = v739;
    *(v580 + 112) = sub_100470414;
    *(v580 + 120) = v586;
    v587 = v737;
    *(v580 + 128) = sub_1004703BC;
    *(v580 + 136) = v587;
    v588 = v736;
    *(v580 + 144) = sub_1004703BC;
    *(v580 + 152) = v588;
    *(v580 + 160) = sub_100470414;
    *(v580 + 168) = v567;
    v589 = v735;
    *(v580 + 176) = sub_1004703BC;
    *(v580 + 184) = v589;
    v590 = v734;
    *(v580 + 192) = sub_1004703BC;
    *(v580 + 200) = v590;
    *(v580 + 208) = sub_100470414;
    *(v580 + 216) = v569;
    v591 = v733;
    *(v580 + 224) = sub_1004703BC;
    *(v580 + 232) = v591;
    v592 = v732;
    *(v580 + 240) = sub_1004703BC;
    *(v580 + 248) = v592;
    *(v580 + 256) = sub_100470414;
    *(v580 + 264) = v571;
    v593 = v731;
    *(v580 + 272) = sub_1004703BC;
    *(v580 + 280) = v593;
    *(v580 + 288) = sub_1004703BC;
    *(v580 + 296) = v572;
    *(v580 + 304) = sub_100470414;
    *(v580 + 312) = v574;
    *(v580 + 320) = sub_1004703BC;
    *(v580 + 328) = v575;
    *(v580 + 336) = sub_1004703BC;
    *(v580 + 344) = v576;
    *(v580 + 352) = sub_100470414;
    *(v580 + 360) = v579;
    swift_setDeallocating();
    sub_1004622AC();
    v594 = v748;
    if (os_log_type_enabled(v748, v747))
    {
      v595 = swift_slowAlloc();
      v746 = swift_slowAlloc();
      v769 = v746;
      *v595 = 136447746;
      v767 = v676;
      v768 = v679;
      sub_100004CB8(&qword_100648E20);
      v596 = sub_1004DD4DC();
      v598 = sub_1004633D0(v596, v597, &v769);

      *(v595 + 4) = v598;
      *(v595 + 12) = 2082;
      v599 = v745;
      v600 = v745 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v601 = *(v709 + 48);
      v709 += 48;
      v744 = v601;
      v602 = v601(v600, 1, v707);
      v603 = 0;
      v604 = 0;
      if (!v602)
      {
        v603 = *&v600[v707[5]];
      }

      v765 = v603;
      v766 = v604;
      v605 = sub_1004DD4DC();
      v607 = sub_1004633D0(v605, v606, &v769);

      *(v595 + 14) = v607;
      *(v595 + 22) = 2082;
      v608 = v599 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v609 = *(v710 + 48);
      v610 = v738;
      v611 = v609(v608, 1, v738);
      v612 = 0;
      v613 = 0;
      if (!v611)
      {
        v612 = *(v608 + v610[5]);
      }

      v763 = v612;
      v764 = v613;
      v614 = sub_1004DD4DC();
      v616 = sub_1004633D0(v614, v615, &v769);

      *(v595 + 24) = v616;
      *(v595 + 32) = 2082;
      v617 = v599 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v618 = v609(v617, 1, v610);
      v619 = 0;
      v620 = 0;
      if (!v618)
      {
        v619 = *(v617 + v610[5]);
      }

      v761 = v619;
      v762 = v620;
      v621 = sub_1004DD4DC();
      v623 = sub_1004633D0(v621, v622, &v769);

      *(v595 + 34) = v623;
      *(v595 + 42) = 2082;
      v624 = v599 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v625 = v707;
      v626 = (v744)(v624, 1, v707);
      v627 = 0;
      v628 = 0;
      v629 = v599;
      if (!v626)
      {
        v627 = *(v624 + v625[5]);
      }

      v759 = v627;
      v760 = v628;
      v630 = sub_1004DD4DC();
      v632 = sub_1004633D0(v630, v631, &v769);

      *(v595 + 44) = v632;
      *(v595 + 52) = 2082;
      swift_beginAccess();

      v634 = sub_10046E06C(v633);
      v636 = v635;

      v637 = sub_1004633D0(v634, v636, &v769);

      *(v595 + 54) = v637;
      *(v595 + 62) = 2082;
      swift_beginAccess();

      v639 = sub_10046E06C(v638);
      v641 = v640;

      v642 = sub_1004633D0(v639, v641, &v769);

      *(v595 + 64) = v642;
      v643 = v748;
      _os_log_impl(&_mh_execute_header, v748, v747, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v595, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v629 = v745;
    }

    sub_10001074C(v689, &qword_100648D88);
    return v629;
  }

  v536 = [v684 songwriters];
  v537 = sub_1004DD87C();

  if (!(v537 >> 62))
  {
    v538 = *((v537 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v538)
    {
      goto LABEL_381;
    }

LABEL_408:

    v548 = _swiftEmptyArrayStorage;
LABEL_409:
    v552 = swift_isUniquelyReferenced_nonNull_native();
    v771 = v125;
    if ((v552 & 1) == 0)
    {
      v125 = sub_100462BD8(0, *(v125 + 16) + 1, 1, v125);
      v771 = v125;
    }

    v553 = *(v125 + 16);
    v554 = *(v125 + 24);
    if (v553 >= v554 >> 1)
    {
      v645 = *(v125 + 16);
      v125 = sub_100462BD8((v554 > 1), v553 + 1, 1, v125);
      v553 = v645;
      v535 = v676;
      v771 = v125;
    }

    *&v749 = v518;
    *(&v749 + 1) = v531;
    *&v750 = 0x7FF0000000000000;
    BYTE8(v750) = v726;
    *&v751 = v548;
    sub_100468A18(v553, &v749, &v771);
    v771 = v125;
    goto LABEL_414;
  }

  v538 = sub_1004DED5C();
  if (!v538)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v749 = _swiftEmptyArrayStorage;
  sub_100462234(v538);
  if ((v538 & 0x8000000000000000) == 0)
  {
    v539 = 0;
    v540 = v537;
    v747 = (v537 & 0xC000000000000001);
    v748 = v537;
    v541 = v538;
    do
    {
      if (v747)
      {
        v542 = sub_1004DEB2C();
      }

      else
      {
        v542 = *(v540 + 8 * v539 + 32);
      }

      v543 = v542;
      v544 = [v542 name];
      v545 = sub_1004DD43C();
      v547 = v546;

      v548 = v749;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100463968(0, v548[2] + 1, 1);
        v548 = v749;
      }

      v550 = v548[2];
      v549 = v548[3];
      if (v550 >= v549 >> 1)
      {
        sub_100463968((v549 > 1), v550 + 1, 1);
        v548 = v749;
      }

      ++v539;
      v548[2] = v550 + 1;
      v551 = &v548[2 * v550];
      v551[4] = v545;
      v551[5] = v547;
      v318 = v745;
      v540 = v748;
    }

    while (v541 != v539);

    v535 = v676;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v646 = v745;

  sub_10001074C(v646 + v649, &qword_100648D88);

  sub_10001074C(v646 + v677, &qword_10064A830);
  sub_10001074C(v646 + v650, &qword_100648D98);
  sub_10001074C(v646 + v702, &qword_10064A830);
  sub_10001074C(v653 + v646, &qword_100648D98);
  sub_10001074C(v646 + v667, &qword_100648D98);
  sub_10001074C(v646 + v690, &qword_100648D98);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

uint64_t sub_10045E730(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1004DED5C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_10045E754(uint64_t a1, BOOL a2)
{
  v3 = sub_100004CB8(&qword_10064A830);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for Lyrics.Translation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100648D98);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Lyrics.Transliteration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v18 = Strong;
  v25 = v7;
  v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v18 + v19, v12, &qword_100648D98);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_10046E230(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v21 = sub_1004D83BC();

    v22 = type metadata accessor for Lyrics.Transliteration;
    v23 = v16;
LABEL_8:
    sub_10046DDE4(v23, v22);
    return v21 == 2;
  }

  sub_10001074C(v12, &qword_100648D98);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v18 + v20, v5, &qword_10064A830);
  if ((*(v25 + 48))(v5, 1, v6) != 1)
  {
    sub_10046E230(v5, v9, type metadata accessor for Lyrics.Translation);
    v21 = sub_1004D83BC();

    v22 = type metadata accessor for Lyrics.Translation;
    v23 = v9;
    goto LABEL_8;
  }

  sub_10001074C(v5, &qword_10064A830);
  return a2;
}

uint64_t sub_10045EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v36 = a2;
  v7 = sub_100004CB8(&qword_10064A830);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004CB8(&qword_100648D98);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Lyrics.Transliteration(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v21 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v34 = a3;
  v35 = a4;
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v21 + v22, v15, &qword_100648D98);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_10046E230(v15, v19, type metadata accessor for Lyrics.Transliteration);
    v25 = *&v19[*(v16 + 28)];
    a4 = v35;
    if (*(v25 + 16) && (v26 = sub_100028F80(v36, v34), (v27 & 1) != 0))
    {
      a4 = *(*(v25 + 56) + 88 * v26);
    }

    else
    {
    }

    v28 = type metadata accessor for Lyrics.Transliteration;
    v29 = v19;
    goto LABEL_18;
  }

  sub_10001074C(v15, &qword_100648D98);
  v23 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v21 + v23, v9, &qword_10064A830);
  v24 = (*(v37 + 48))(v9, 1, v10);
  a4 = v35;
  if (v24 != 1)
  {
    sub_10046E230(v9, v12, type metadata accessor for Lyrics.Translation);
    v30 = *&v12[*(v10 + 32)];
    if (*(v30 + 16) && (v31 = sub_100028F80(v36, v34), (v32 & 1) != 0))
    {
      a4 = *(*(v30 + 56) + 88 * v31);
    }

    else
    {
    }

    v28 = type metadata accessor for Lyrics.Translation;
    v29 = v12;
LABEL_18:
    sub_10046DDE4(v29, v28);
    return a4;
  }

  sub_10001074C(v9, &qword_10064A830);
LABEL_7:

  return a4;
}

uint64_t sub_10045EF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v6 = sub_100004CB8(&qword_10064A830);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100648D98);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v20 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v35 = a3;
  v36 = a4;
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v20 + v21, v14, &qword_100648D98);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_10046E230(v14, v18, type metadata accessor for Lyrics.Transliteration);
    v24 = *&v18[*(v15 + 28)];
    v25 = v36;
    if (*(v24 + 16) && (v26 = sub_100028F80(v37, v35), (v27 & 1) != 0))
    {
      v23 = *(*(v24 + 56) + 88 * v26 + 16);
    }

    else
    {

      swift_beginAccess();
      v23 = *(v25 + 16);
    }

    v28 = type metadata accessor for Lyrics.Transliteration;
    v29 = v18;
    goto LABEL_18;
  }

  sub_10001074C(v14, &qword_100648D98);
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v20 + v22, v8, &qword_10064A830);
  if ((*(v38 + 48))(v8, 1, v9) != 1)
  {
    sub_10046E230(v8, v11, type metadata accessor for Lyrics.Translation);
    v30 = *&v11[*(v9 + 32)];
    v31 = v36;
    if (*(v30 + 16) && (v32 = sub_100028F80(v37, v35), (v33 & 1) != 0))
    {
      v23 = *(*(v30 + 56) + 88 * v32 + 16);
    }

    else
    {

      swift_beginAccess();
      v23 = *(v31 + 16);
    }

    v28 = type metadata accessor for Lyrics.Translation;
    v29 = v11;
LABEL_18:
    sub_10046DDE4(v29, v28);
    return v23;
  }

  sub_10001074C(v8, &qword_10064A830);
  a4 = v36;
LABEL_7:
  swift_beginAccess();
  v23 = *(a4 + 16);

  return v23;
}

double sub_10045F3E4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X3>, _OWORD *a4@<X8>)
{
  v56 = a1;
  v7 = sub_100004CB8(&qword_10064A830);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v57 = *(v10 - 8);
  v58 = v10;
  __chkstk_darwin(v10);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004CB8(&qword_100648D98);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v20 = Strong;
  if (!a2)
  {

LABEL_7:
    swift_beginAccess();
    v25 = a3[1];
    v26 = a3[2];
    goto LABEL_8;
  }

  v53 = a2;
  v54 = a4;
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v20 + v21, v14, &qword_100648D98);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_10046E230(v14, v18, type metadata accessor for Lyrics.Transliteration);
    v28 = *&v18[*(v15 + 28)];
    if (*(v28 + 16) && (v29 = sub_100028F80(v56, v53), (v30 & 1) != 0))
    {
      v31 = *(v28 + 56) + 88 * v29;
      v32 = *(v31 + 72);
      v33 = *(v31 + 40);
      v34 = *(v31 + 56);
      v64 = *(v31 + 24);
      v65 = v33;
      v66 = v34;
      v67 = v32;
      sub_1000108DC(&v64, &v68, &qword_100648D80);

      a4 = v54;
      if (*(&v65 + 1))
      {
LABEL_15:
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v63 = v67;
        v37 = type metadata accessor for Lyrics.Transliteration;
        v38 = v18;
LABEL_23:
        sub_10046DDE4(v38, v37);
        goto LABEL_24;
      }

      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
    }

    else
    {

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      a4 = v54;
    }

    swift_beginAccess();
    v35 = a3[2];
    v64 = a3[1];
    v65 = v35;
    v36 = a3[4];
    v66 = a3[3];
    v67 = v36;
    sub_1000108DC(&v64, v59, &qword_100648D80);
    sub_10001074C(&v68, &qword_100648D80);
    goto LABEL_15;
  }

  sub_10001074C(v14, &qword_100648D98);
  v22 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000108DC(v20 + v22, v9, &qword_10064A830);
  v23 = v58;
  v24 = (*(v57 + 48))(v9, 1, v58);
  a4 = v54;
  if (v24 != 1)
  {
    v39 = v55;
    sub_10046E230(v9, v55, type metadata accessor for Lyrics.Translation);
    v40 = *(v39 + *(v23 + 32));
    if (*(v40 + 16) && (v41 = sub_100028F80(v56, v53), (v42 & 1) != 0))
    {
      v43 = *(v40 + 56) + 88 * v41;
      v44 = *(v43 + 72);
      v45 = *(v43 + 40);
      v46 = *(v43 + 56);
      v64 = *(v43 + 24);
      v65 = v45;
      v66 = v46;
      v67 = v44;
      sub_1000108DC(&v64, &v68, &qword_100648D80);

      if (*(&v65 + 1))
      {
LABEL_22:
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v63 = v67;
        v37 = type metadata accessor for Lyrics.Translation;
        v38 = v39;
        goto LABEL_23;
      }

      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
    }

    else
    {

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
    }

    swift_beginAccess();
    v47 = a3[2];
    v64 = a3[1];
    v65 = v47;
    v48 = a3[4];
    v66 = a3[3];
    v67 = v48;
    sub_1000108DC(&v64, v59, &qword_100648D80);
    sub_10001074C(&v68, &qword_100648D80);
    goto LABEL_22;
  }

  sub_10001074C(v9, &qword_10064A830);
  swift_beginAccess();
  v25 = a3[1];
  v26 = a3[2];
LABEL_8:
  v68 = v25;
  v69 = v26;
  v27 = a3[4];
  v70 = a3[3];
  v71 = v27;
  sub_1000108DC(&v68, &v64, &qword_100648D80);
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
LABEL_24:
  v49 = v61;
  *a4 = v60;
  a4[1] = v49;
  result = *&v62;
  v51 = v63;
  a4[2] = v62;
  a4[3] = v51;
  return result;
}

uint64_t sub_10045FA18(uint64_t result)
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

  v3 = sub_10046230C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = sub_100004CB8(&qword_100648D28);
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

uint64_t sub_10045FB50(uint64_t result)
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

  v3 = sub_100462D20(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_100649470, &unk_100538960, type metadata accessor for Lyrics.TextLine);
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
  result = type metadata accessor for Lyrics.TextLine(0);
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

void *sub_10045FCA0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100463240(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004CB8(&qword_100649420);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10045FDA4(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = sub_1004DD43C();
    v15 = v14;

    v16 = sub_10046B44C(a2, a3, a4);
    v17 = [a2 backgroundVocals];
    if (!v17)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_8;
    }

    v18 = v17;

    sub_10046B800(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = sub_1004DD43C();
    v15 = v21;
    v19 = 0uLL;
    v29 = 0u;
    v16 = _swiftEmptyArrayStorage;
    v27 = 0u;
    v28 = 0u;
  }

  v26 = v19;

  v23 = v28;
  v22 = v29;
  v25 = v26;
  v24 = v27;
LABEL_8:
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v22;
  *(a5 + 40) = v23;
  *(a5 + 56) = v24;
  *(a5 + 72) = v25;
}

uint64_t sub_10045FF74()
{
  v0 = sub_100004CB8(&qword_100648DC0);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = sub_100004CB8(&qword_100648D90);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  sub_1004D83AC();
  v6 = sub_1004D82FC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001074C(v5, &qword_100648D90);
    return 0;
  }

  else
  {
    v8 = sub_1004D82DC();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    v11 = v8 == 26746 && v10 == 0xE200000000000000;
    if (v11 || (sub_1004DF08C() & 1) != 0)
    {
      sub_1004D83CC();
      v12 = sub_1004D836C();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v2, 1, v12) == 1)
      {
        sub_10001074C(v2, &qword_100648DC0);
      }

      else
      {

        v14 = sub_1004D835C();
        v16 = v15;
        (*(v13 + 8))(v2, v12);
        v18[0] = 2975866;
        v18[1] = 0xE300000000000000;
        v19._countAndFlagsBits = v14;
        v19._object = v16;
        sub_1004DD5FC(v19);

        return v18[0];
      }
    }
  }

  return v8;
}

BOOL sub_100460214(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1004DF26C();
  v4 = qword_100538A58[a1];
  sub_1004DF27C(v4);
  v5 = sub_1004DF2BC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100538A58[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1004602F4()
{

  sub_100004CB8(&qword_100648E20);
  return sub_1004DD4DC();
}

uint64_t sub_10046033C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = a3(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  sub_100004CB8(&qword_100648E20);
  return sub_1004DD4DC();
}

uint64_t sub_100460410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  v1 = sub_100004CB8(&qword_100648D98);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  if (qword_100648BC8 != -1)
  {
    swift_once();
  }

  if (sub_100460214(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    sub_1000108DC(v0 + v4, v3, &qword_100648D98);
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_1000107AC(v3, v0 + v5, &qword_100648D98);
    swift_endAccess();
    v6 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000108DC(v0 + v6, v3, &qword_100648D98);
  }

  else
  {
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000108DC(v0 + v8, v3, &qword_100648D98);
    v9 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_1000107AC(v3, v0 + v9, &qword_100648D98);
    swift_endAccess();
    v10 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  v7 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000107AC(v3, v0 + v7, &qword_100648D98);
  swift_endAccess();
}

uint64_t Lyrics.line(before:useOriginalLines:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = sub_100455668(*(v3 + 48));
    if (!v6[2])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + 40);

    if (!v6[2])
    {
LABEL_6:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  sub_100035868((v6 + 4), &v35);
  v8 = *(&v36 + 1);
  v7 = v37;
  sub_100008C70(&v35, *(&v36 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  sub_100008D24(&v35);
  if (v9 > a3)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  v28 = a2;
  if (!v10)
  {
    goto LABEL_13;
  }

  sub_100035868(&v6[5 * v10 - 1], &v35);
  sub_100004CB8(&qword_100648E48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v6[2])
  {
    goto LABEL_34;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v12 = v6[2];
    if (v12)
    {
LABEL_12:
      v13 = v12 - 1;
      sub_100008D24(&v6[5 * v12 - 1]);
      v6[2] = v13;
LABEL_13:
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v14 = v6[2];
      if (!v14)
      {
LABEL_27:
        v27 = v36;
        *v28 = v35;
        *(v28 + 16) = v27;
        *(v28 + 32) = v37;
      }

      v15 = 0;
      v16 = v14 - 1;
      v17 = v6 + 4;
      v18 = v14 - 1;
      while (1)
      {
        if (__OFSUB__(v18, v15))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v19 = v15 + (v18 - v15) / 2;
        if (__OFADD__(v15, (v18 - v15) / 2))
        {
          goto LABEL_30;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v19 >= v6[2])
        {
          goto LABEL_32;
        }

        sub_100035868(&v17[5 * v19], v32);
        v21 = v33;
        v20 = v34;
        sub_100008C70(v32, v33);
        v22 = (*(*(v20 + 8) + 8))(v21);
        v23 = v22;
        if (v19 >= v16)
        {
          break;
        }

        if (v19 + 1 >= v6[2])
        {
          goto LABEL_33;
        }

        sub_100035868(&v17[5 * v19 + 5], v29);
        v25 = v30;
        v24 = v31;
        sub_100008C70(v29, v30);
        v26 = (*(*(v24 + 8) + 8))(v25);
        sub_100008D24(v29);
        if (v23 > a3)
        {
          goto LABEL_16;
        }

        v15 = v19 + 1;
        if (v26 >= a3)
        {
LABEL_26:
          sub_10001074C(&v35, &qword_100648E50);
          sub_100035868(v32, &v35);
          sub_100008D24(v32);
          goto LABEL_27;
        }

LABEL_17:
        sub_100008D24(v32);
        if (v18 < v15)
        {
          goto LABEL_27;
        }
      }

      if (v22 <= a3)
      {
        goto LABEL_26;
      }

LABEL_16:
      v18 = v19 - 1;
      goto LABEL_17;
    }
  }

  else
  {
LABEL_35:
    result = sub_100468AAC(v6);
    v6 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t Lyrics.line(after:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_100008C70(a1, v5);
  result = (*(v6 + 16))(v5, v6);
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = *(v3 + 40);
  if (v8 >= *(v9 + 16))
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_11;
  }

  v10 = v9 + 40 * v8;
  sub_100035868(v10 + 32, v11);
  sub_100004CB8(&qword_100648E48);
  result = swift_dynamicCast();
  if (result)
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  return sub_100035868(v10 + 32, a2);
}

id sub_100460B20()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  qword_100648D70 = result;
  return result;
}

uint64_t sub_100460B58()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_100648D78 = result;
  return result;
}

void sub_100460B98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
{

  v70._countAndFlagsBits = a3;
  v70._object = a4;
  v12 = _NSRange.init(range:in:)();
  v13 = 0;
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  v68 = a6;
  while (1)
  {
LABEL_4:
    v18 = v13;
    __chkstk_darwin(v12);
    swift_beginAccess();
    v19 = sub_100004CB8(&qword_1006494E0);
    Array.extractFirst(where:)(v19, &v71);
    swift_endAccess();
    v13 = v71;
    if (!v71)
    {
      if (*(v15 + 2))
      {
        v25 = 0.0;
        v27 = 0.0;
        if (v14)
        {
          [v14 startTime];
          v27 = v49;
        }

        if (v18)
        {
          [v18 endTime];
          v25 = v50;
        }

        v51 = *(v15 + 2);
        if (v51)
        {

          sub_100463968(0, v51, 0);
          v52 = v15;
          v53 = (v15 + 56);
          do
          {
            v55 = *(v53 - 1);
            v54 = *v53;
            v57 = _swiftEmptyArrayStorage[2];
            v56 = _swiftEmptyArrayStorage[3];

            if (v57 >= v56 >> 1)
            {
              sub_100463968((v56 > 1), v57 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v57 + 1;
            v58 = &_swiftEmptyArrayStorage[2 * v57];
            v58[4] = v55;
            v58[5] = v54;
            v53 += 7;
            --v51;
          }

          while (v51);
          v15 = v52;
        }

        else
        {
        }

        sub_100004CB8(&qword_100649518);
        sub_100042B08(&qword_100649520, &qword_100649518);
        v29 = sub_1004DD30C();
        v33 = v59;

        swift_beginAccess();
        v32 = *a8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v32;
        a7 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_37:

      return;
    }

    if (!v14)
    {
      v20 = v13;
      v14 = v13;
    }

    v21 = v13;
    v22 = [v21 lyricsText];
    v23 = [v22 string];
    if (!v23)
    {
      break;
    }

    v17 = v23;

    v18 = v21;
    [v18 endTime];
    v25 = v24;
    [v18 startTime];
    v27 = v26;
    [v18 characterRange];
    v29 = v28;
    [v18 characterRange];
    v30._countAndFlagsBits = a6;
    v30._object = a7;
    location = _NSRange.convert(from:to:preserveLength:)(v30, v70, 0).location;
    if (v32)
    {

      v16 = v17;
      v17 = v18;
      goto LABEL_3;
    }

    v33 = location;
    v34 = [v17 length];
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v35 = v34;
    if (v34)
    {
      v64 = v14;
      v36 = 0;
      v37 = (v25 - v27) / v29;
      v66 = v33;
      v67 = a7;
      while (1)
      {
        v38 = __OFADD__(v33, v36);
        v33 += v36;
        if (v38)
        {
          break;
        }

        [v18 startTime];
        v25 = v39;
        [v18 startTime];
        v27 = v40;
        v41 = v15;
        v42 = [v17 substringWithRange:{v36, 1}];
        v43 = sub_1004DD43C();
        v69 = v44;

        v45 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100462620(0, *(v41 + 2) + 1, 1, v41);
        }

        v29 = *(v45 + 2);
        v46 = *(v45 + 3);
        v47 = v45;
        if (v29 >= v46 >> 1)
        {
          v47 = sub_100462620((v46 > 1), v29 + 1, 1, v45);
        }

        *(v47 + 2) = v29 + 1;
        v15 = v47;
        v48 = &v47[56 * v29];
        *(v48 + 4) = v37 * v36 + v25;
        *(v48 + 5) = v37 * (v36 + 1) + v27;
        *(v48 + 6) = v43;
        *(v48 + 7) = v69;
        *(v48 + 8) = v33;
        *(v48 + 72) = vdupq_n_s64(1uLL);
        ++v36;
        v33 = v66;
        a7 = v67;
        if (v36 == v35)
        {

          v14 = v64;
          a6 = v68;
          goto LABEL_4;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v32 = sub_1004624FC(0, *(v32 + 2) + 1, 1, v32);
      *a8 = v32;
LABEL_34:
      v62 = *(v32 + 2);
      v61 = *(v32 + 3);
      if (v62 >= v61 >> 1)
      {
        v32 = sub_1004624FC((v61 > 1), v62 + 1, 1, v32);
        *a8 = v32;
      }

      *(v32 + 2) = v62 + 1;
      v63 = &v32[56 * v62];
      *(v63 + 4) = v27;
      *(v63 + 5) = v25;
      *(v63 + 6) = v29;
      *(v63 + 7) = v33;
      *(v63 + 8) = v15;
      *(v63 + 9) = 0;
      v63[80] = 1;
      swift_endAccess();
      v14 = a7;
      goto LABEL_37;
    }

    v16 = v18;
    a6 = v68;
LABEL_3:
  }

  __break(1u);
}

uint64_t sub_100461198(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_100648BB0 != -1)
  {
    swift_once();
  }

  v4 = qword_100648D70;
  v5 = sub_1004DD3FC();
  [v4 setString:v5];

  *a3 = sub_1004DDE8C();
}

BOOL sub_100461280(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  [*a1 characterRange];
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  v12 = _NSRange.convert(from:to:preserveLength:)(v10, v11, 0);
  if (!v13)
  {
    return _NSRange.intersects(_:)(v12);
  }

  if (qword_100648BC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1004D966C();
  sub_100035430(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = sub_1004D964C();
  v17 = sub_1004DDF7C();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = sub_1004DE72C();
    v21 = sub_1004633D0(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1004633D0(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_1004633D0(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    sub_10001074C(v24, &qword_100649510);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void sub_10046155C(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v39 = a1[4];
  v8 = *(v7 + 16);
  v9 = 0;
  if (!v8)
  {
    v11 = 0.0;
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  [*(v7 - 8 + 40 * v8) endTime];
  v11 = v10;
  if (!*(v7 + 16) || ([*(v7 + 32) startTime], v11 = v11 - v12, !*(v7 + 16)))
  {
    v14 = 0;
    goto LABEL_14;
  }

  [*(v7 + 32) startTime];
  v14 = v13;
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  [*(v7 - 8 + 40 * v15) endTime];
  v9 = v16;
  v17 = *(v7 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v36 = a2;
  v37 = v5;
  v38 = a3;

  sub_1004639C8(0, v17, 0);
  v18 = (v7 + 64);
  do
  {
    v19 = *(v18 - 3);
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);
    v40 = *v18;
    v22 = *(v18 - 4);

    [v22 startTime];
    v24 = v23;
    [v22 endTime];
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      sub_1004639C8((v27 > 1), v28 + 1, 1);
    }

    v18 += 5;
    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[7 * v28];
    v29[4] = v24;
    v29[5] = v26;
    v29[6] = v19;
    v29[7] = v20;
    v29[8] = v21;
    v29[9] = v40;
    v29[10] = v39;
    --v17;
  }

  while (v17);
  a3 = v38;
  v5 = v37;
  a2 = v36;
LABEL_15:
  v30 = 1;
  v31 = 0.0;
  if ((a2 & 1) != 0 && v11 > 1.0 && v39 <= 7)
  {
    v33 = 2.0;
    if (v11 <= 2.0)
    {
      v33 = v11;
    }

    v34 = v33 + -1.0;
    v31 = 0.0;
    if (v11 < 1.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34;
    }

    if (v35 > 0.0)
    {
      v30 = 0;
      v31 = v35;
    }
  }

  *a3 = v14;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = _swiftEmptyArrayStorage;
  *(a3 + 40) = v31;
  *(a3 + 48) = v30;
}

uint64_t sub_1004617E4(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = sub_1004DD43C();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_1004DF08C();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_100648D88);

  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &qword_10064A830);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &qword_100648D98);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &qword_10064A830);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &qword_100648D98);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &qword_100648D98);
  sub_10001074C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &qword_100648D98);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = sub_10046917C(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    sub_1004DEA4C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_1004666DC(v6, 0xD000000000000017, 0x80000001004FAC20, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    sub_1004DEA4C();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_1004666DC(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  sub_1000108DC(a1, v48, &qword_10064ACD0);
  if (v49)
  {
    sub_100006F10(0, &qword_100648E58);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = sub_1004DD43C();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v47 type];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1004DD43C();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = sub_1004DF08C();

            if ((v12 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_45;
        }
      }

      else if (v6)
      {
        goto LABEL_42;
      }

      v13 = [v1 name];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1004DD43C();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v47 name];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1004DD43C();
        v22 = v21;

        if (v17)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          if (v15 == v20 && v17 == v22)
          {
          }

          else
          {
            v23 = sub_1004DF08C();

            if ((v23 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v22)
        {
          goto LABEL_45;
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

      v24 = [v1 artistID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1004DD43C();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v47 artistID];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v30 = v29;
      v31 = sub_1004DD43C();
      v33 = v32;

      if (v28)
      {
        if (!v33)
        {
          goto LABEL_42;
        }

        if (v26 == v31 && v28 == v33)
        {

          goto LABEL_47;
        }

        v34 = sub_1004DF08C();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = sub_1004DD43C();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          v42 = [v47 identifier];
          if (v42)
          {
            v43 = v42;
            v44 = sub_1004DD43C();
            v46 = v45;

            if (!v39)
            {

              if (!v46)
              {
                v40 = 1;
                return v40 & 1;
              }

              goto LABEL_43;
            }

            if (v46)
            {
              if (v37 != v44 || v39 != v46)
              {
                v40 = sub_1004DF08C();

                return v40 & 1;
              }

              goto LABEL_61;
            }
          }

          else if (!v39)
          {
LABEL_61:

            v40 = 1;
            return v40 & 1;
          }

LABEL_42:

LABEL_43:

          goto LABEL_50;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (!v33)
      {
        goto LABEL_47;
      }

LABEL_45:
    }
  }

  else
  {
    sub_10001074C(v48, &qword_10064ACD0);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1004620B0()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.lyrics);
  sub_100035430(v0, static Logger.lyrics);
  return sub_1004D965C();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100648BC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1004621CC(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = sub_10046E06C(v3[1]);

  return v1;
}

char *sub_100462234(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_100463968(result, v5, 0);
  }

  return result;
}

uint64_t sub_1004622AC()
{
  sub_100004CB8(&qword_100649420);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

size_t sub_10046230C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100648D30);
  v10 = *(sub_100004CB8(&qword_100648D28) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100648D28) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1004624FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100462620(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006494E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100462748(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_1006494F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_1006494F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100462890(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100649500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100649508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004629D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649438);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100462AE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_100462BD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100649450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100648E48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100462D20(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(a5);
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

void *sub_100462EFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100648DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100649468);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100463030(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493E8);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100463134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493D8);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100463240(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100649418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100649420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100463374(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1004633D0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1004633D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10046349C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D24(v11);
  return v7;
}

unint64_t sub_10046349C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1004635A8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1004DEB6C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1004635A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1004635F4(a1, a2);
  sub_100463724(&off_1005FDE70);
  return v3;
}

void *sub_1004635F4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100472448(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004DEB6C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004DD61C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100472448(v10, 0);
        result = sub_1004DEA9C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100463724(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100463810(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100463810(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006494B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100463904(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100463924(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_100463948(size_t a1, int64_t a2, char a3)
{
  result = sub_100463A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463968(char *a1, int64_t a2, char a3)
{
  result = sub_100463C38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463988(char *a1, int64_t a2, char a3)
{
  result = sub_100463D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004639A8(void *a1, int64_t a2, char a3)
{
  result = sub_100463E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004639C8(char *a1, int64_t a2, char a3)
{
  result = sub_100463FB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004639E8(char *a1, int64_t a2, char a3)
{
  result = sub_1004640D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463A08(char *a1, int64_t a2, char a3)
{
  result = sub_1004641DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100463A28(char *a1, int64_t a2, char a3)
{
  result = sub_1004642E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100463A48(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_100648D30);
  v10 = *(sub_100004CB8(&qword_100648D28) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_100648D28) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100463C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649438);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100463D44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100463E68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004CB8(&qword_100649450);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004CB8(&qword_100648E48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100463FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006494E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004640D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004641DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100649410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004642E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_1006493B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_1004643E4(double *a1)
{
  sub_1004DF26C();
  Lyrics.Word.hash(into:)(v4);
  v2 = sub_1004DF2BC();

  return sub_100464450(a1, v2);
}

uint64_t sub_100464450(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v9 = *(v2 + 48);
  v30 = v2 + 64;
  v28 = v9;
  v29 = ~v4;
  while (1)
  {
    v10 = v9 + 56 * v5;
    if (*v10 != v8 || *(v10 + 8) != v6[1])
    {
      goto LABEL_4;
    }

    result = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v27 = *(v10 + 48);
    if (result != *(v6 + 2) || *(v10 + 24) != *(v6 + 3))
    {
      result = sub_1004DF08C();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v15 = *(v6 + 4);
    v16 = *(v12 + 16);
    if (v16 != *(v15 + 16))
    {
      goto LABEL_4;
    }

    if (v16 && v12 != v15)
    {
      break;
    }

LABEL_18:
    if (v27)
    {
      if (v6[6])
      {
        return v5;
      }
    }

    else if ((v6[6] & 1) == 0 && v13 == v6[5])
    {
      return v5;
    }

LABEL_4:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v18 = (v12 + 80);
  v19 = v15 + 40;
  while (v16)
  {
    if (*(v18 - 6) != *(v19 - 8) || *(v18 - 5) != *v19)
    {
      goto LABEL_4;
    }

    result = *(v18 - 4);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v19 + 24);
    v25 = *(v19 + 32);
    v26 = *(v19 + 40);
    if (result != *(v19 + 8) || *(v18 - 3) != *(v19 + 16))
    {
      result = sub_1004DF08C();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v21 != v24 || v22 != v25 || *&v23 != v26)
    {
      goto LABEL_4;
    }

    v18 += 7;
    v19 += 56;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100464640(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100649488);
  v45 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v24 + 88 * v23);
      if (v45)
      {
        v47 = *v28;
        v46 = *(v28 + 1);
        v29 = *(v28 + 5);
        v50 = *(v28 + 3);
        v51 = v29;
        v30 = *(v28 + 7);
        v31 = *(v28 + 9);
      }

      else
      {
        v32 = *(v28 + 1);
        *v49 = *v28;
        *&v49[16] = v32;
        v34 = *(v28 + 3);
        v33 = *(v28 + 4);
        v35 = v28[10];
        *&v49[32] = *(v28 + 2);
        *&v49[80] = v35;
        *&v49[48] = v34;
        *&v49[64] = v33;
        v47 = *v49;
        v46 = *&v49[8];

        sub_10046F9B4(v49, v48);
        v50 = *&v49[24];
        v51 = *&v49[40];
        v30 = *&v49[56];
        v31 = *&v49[72];
      }

      v52 = v30;
      v53 = v31;
      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 88 * v15;
      *(v17 + 8) = v46;
      v18 = v51;
      *(v17 + 24) = v50;
      *(v17 + 40) = v18;
      v19 = v53;
      *(v17 + 56) = v52;
      *v17 = v47;
      *(v17 + 72) = v19;
      ++*(v7 + 16);
      v5 = v44;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero(v9, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1004649A0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Lyrics.Transliteration(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100004CB8(&qword_100649490);
  v40 = a2;
  result = sub_1004DED9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10046E230(v28, v41, type metadata accessor for Lyrics.Transliteration);
      }

      else
      {
        sub_10046DD7C(v28, v41, type metadata accessor for Lyrics.Transliteration);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10046E230(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Lyrics.Transliteration);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100464D18(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100004CB8(&qword_100649478);
  v40 = a2;
  result = sub_1004DED9C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10046E230(v28, v41, type metadata accessor for Lyrics.Translation);
      }

      else
      {
        sub_10046DD7C(v28, v41, type metadata accessor for Lyrics.Translation);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10046E230(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Lyrics.Translation);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100465090(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100649440);
  v38 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_100010678(v27, &v39);
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100465360(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006493C8);
  v53 = a2;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v49 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v50 = v12;
    v51 = v6;
    v52 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v58 = (v11 - 1) & v11;
LABEL_15:
      v20 = v16 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 56 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v57 = *(v22 + 40);
      v56 = *(v22 + 48);
      v55 = *(v21 + 8 * v20);
      if ((v53 & 1) == 0)
      {
      }

      sub_1004DF26C();
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      sub_1004DF2AC(*&v28);
      if (v24 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24;
      }

      sub_1004DF2AC(*&v29);
      v54 = v25;
      sub_1004DD55C();
      v59 = v27;
      v30 = *(v27 + 16);
      sub_1004DF27C(v30);
      if (v30)
      {
        v31 = (v27 + 80);
        do
        {
          v32 = *(v31 - 6);
          v33 = *(v31 - 5);
          v34 = *(v31 - 2);
          v35 = *(v31 - 1);
          v37 = *v31;
          v31 += 7;
          v36 = *&v37;
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          sub_1004DF2AC(*&v32);
          if (v33 == 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v33;
          }

          sub_1004DF2AC(*&v38);

          sub_1004DD55C();
          sub_1004DF27C(v34);
          sub_1004DF27C(v35);
          sub_1004DF27C(v36);

          --v30;
        }

        while (v30);
      }

      if (v56)
      {
        sub_1004DF27C(0);
        v7 = v51;
        v5 = v52;
        v39 = v57;
      }

      else
      {
        sub_1004DF27C(1uLL);
        v39 = v57;
        if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v57;
        }

        else
        {
          v40 = 0;
        }

        sub_1004DF2AC(v40);
        v7 = v51;
        v5 = v52;
      }

      result = sub_1004DF2BC();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v13 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v11 = v58;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v13 + 8 * v43);
          if (v47 != -1)
          {
            v14 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v42) & ~*(v13 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v11 = v58;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v23;
      *(v15 + 8) = v24;
      *(v15 + 16) = v54;
      *(v15 + 24) = v26;
      *(v15 + 32) = v59;
      *(v15 + 40) = v39;
      *(v15 + 48) = v56;
      *(*(v7 + 56) + 8 * v14) = v55;
      ++*(v7 + 16);
      v12 = v50;
    }

    v17 = v8;
    result = v49;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v49[v8];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v58 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_53;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v2;
    if (v48 >= 64)
    {
      bzero(v49, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
  return result;
}

Swift::Int sub_100465788(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006493F8);
  v55 = a2;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v50 = v2;
    v51 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v52 = v12;
    v53 = v6;
    v54 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v59 = (v11 - 1) & v11;
LABEL_15:
      v20 = v16 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 56 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v58 = *(v22 + 40);
      v57 = *(v22 + 48);
      v28 = *(v21 + 8 * v20);
      if ((v55 & 1) == 0)
      {
      }

      sub_1004DF26C();
      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      sub_1004DF2AC(*&v29);
      if (v24 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v24;
      }

      sub_1004DF2AC(*&v30);
      v56 = v25;
      sub_1004DD55C();
      v60 = v27;
      v31 = *(v27 + 16);
      sub_1004DF27C(v31);
      if (v31)
      {
        v32 = (v27 + 80);
        do
        {
          v33 = *(v32 - 6);
          v34 = *(v32 - 5);
          v35 = *(v32 - 2);
          v36 = *(v32 - 1);
          v38 = *v32;
          v32 += 7;
          v37 = *&v38;
          if (v33 == 0.0)
          {
            v33 = 0.0;
          }

          sub_1004DF2AC(*&v33);
          if (v34 == 0.0)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v34;
          }

          sub_1004DF2AC(*&v39);

          sub_1004DD55C();
          sub_1004DF27C(v35);
          sub_1004DF27C(v36);
          sub_1004DF27C(v37);

          --v31;
        }

        while (v31);
      }

      if (v57)
      {
        sub_1004DF27C(0);
        v7 = v53;
        v40 = v58;
      }

      else
      {
        sub_1004DF27C(1uLL);
        v40 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v41 = v58;
        }

        else
        {
          v41 = 0;
        }

        sub_1004DF2AC(v41);
        v7 = v53;
      }

      result = sub_1004DF2BC();
      v42 = -1 << *(v7 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      v5 = v54;
      if (((-1 << v43) & ~*(v13 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v11 = v59;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v13 + 8 * v44);
          if (v48 != -1)
          {
            v14 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v43) & ~*(v13 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v11 = v59;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v23;
      *(v15 + 8) = v24;
      *(v15 + 16) = v56;
      *(v15 + 24) = v26;
      *(v15 + 32) = v60;
      *(v15 + 40) = v40;
      *(v15 + 48) = v57;
      *(*(v7 + 56) + 8 * v14) = v28;
      ++*(v7 + 16);
      v12 = v52;
    }

    v17 = v8;
    result = v51;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v51[v8];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v59 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_53;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
  return result;
}

uint64_t sub_100465BB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100649408);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v31 = v22[1];
      v32 = *v22;
      if ((a2 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DF27C(v21);
      result = sub_1004DF2BC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v32;
      v16[1] = v31;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100465E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100649400);
  v30 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1004DF26C();
      sub_1004DF27C(v20);
      result = sub_1004DF2BC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1004660E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_1006493B8);
  v35 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100006F5C(v22, v36);
      }

      else
      {
        sub_10000904C(v22, v36);
        v23 = v21;
      }

      sub_1004DD43C();
      sub_1004DF26C();
      sub_1004DD55C();
      v24 = sub_1004DF2BC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100006F5C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1004663B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100028F80(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Transliteration(0);
      return sub_1004700A4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100466FDC();
    goto LABEL_7;
  }

  sub_1004649A0(v15, a4 & 1);
  v22 = sub_100028F80(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100466CD0(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

uint64_t sub_100466548(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100028F80(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Translation(0);
      return sub_1004700A4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100467234();
    goto LABEL_7;
  }

  sub_100464D18(v15, a4 & 1);
  v22 = sub_100028F80(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100466CD0(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

uint64_t sub_1004666DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100028F80(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100465090(v16, a4 & 1);
      v11 = sub_100028F80(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10046748C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_100381528(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

unint64_t sub_10046686C(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1004643E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100465360(v14, a3 & 1);
      result = sub_1004643E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100467640();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v21 = *a2;
  v28 = *(a2 + 1);
  v20 = v28;
  v27 = *(a2 + 4);
  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 56 * result;
  v23 = *(a2 + 2);
  *(v22 + 16) = v20;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a2 + 48);
  *v22 = v21;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  sub_100036140(&v28, v26);
  return sub_1000108DC(&v27, v26, &qword_1006493E0);
}

uint64_t sub_1004669E8(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1004643E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100465788(v14, a3 & 1);
      v9 = sub_1004643E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1004DF16C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1004677D0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v22 = *a2;
    v29 = *(a2 + 1);
    v21 = v29;
    v28 = *(a2 + 4);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v23 = v19[6] + 56 * v9;
    v24 = *(a2 + 2);
    *(v23 + 16) = v21;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(a2 + 48);
    *v23 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      sub_100036140(&v29, v27);
      return sub_1000108DC(&v28, v27, &qword_1006493E0);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_100466B90(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100028E14(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100467C3C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1004660E4(v13, a3 & 1);
    v8 = sub_100028E14(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C3KeyVMa_1(0);
      result = sub_1004DF16C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100008D24(v19);

    return sub_100006F5C(a1, v19);
  }

  else
  {
    sub_10005B4F0(v8, a2, a1, v18);

    return a2;
  }
}