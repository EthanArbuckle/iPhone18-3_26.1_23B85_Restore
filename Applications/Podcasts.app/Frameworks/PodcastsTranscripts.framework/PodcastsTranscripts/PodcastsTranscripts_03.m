uint64_t sub_4DC80(uint64_t a1, void *a2)
{
  sub_986A8(30);
  v5._object = 0x80000000000A3950;
  v5._countAndFlagsBits = 0xD000000000000017;
  sub_97EE8(v5);
  sub_980E8();
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  sub_97EE8(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_97EE8(v7);
  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  sub_97EE8(v8);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_97EE8(v9);
}

uint64_t TranscriptContentViewModel.ID.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 <= 1)
  {
    if (!*(v0 + 32))
    {
      return TextContent.ID.description.getter();
    }

    sub_98748();
    return 0;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v10 = 0;
      sub_98748();
      return v10;
    }

    sub_4DC80(v1, *(v0 + 8));
    return 0;
  }

  if (v1)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    sub_203C8(v4, v5, v6, v7, v8);
    sub_986A8(26);

    v10 = 0xD000000000000017;
    v11._countAndFlagsBits = TranscriptContentViewModel.ID.description.getter(v9);
    sub_97EE8(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    sub_97EE8(v12);
    sub_20438(v4, v5, v6, v7, v8);
    return v10;
  }

  return 0xD000000000000018;
}

void TranscriptContentViewModel.ID.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 32);
  if (v6 <= 1)
  {
    if (!*(v1 + 32))
    {
      v7 = 0;
      goto LABEL_7;
    }

    sub_988E8(1uLL);

    sub_97E88();
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        sub_988E8(4uLL);
        sub_97E88();
        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

LABEL_18:
        sub_98908(v9);
        return;
      }

      v7 = 3;
LABEL_7:
      sub_988E8(v7);
      sub_97E88();
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      sub_98908(v8);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_18;
    }

    sub_988E8(2uLL);
    if (v3)
    {
      sub_988E8(1uLL);
      TranscriptContentViewModel.ID.hash(into:)(a1);
    }

    else
    {
      sub_988E8(0);
    }
  }
}

Swift::Int sub_4E090()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_988D8();
  TranscriptContentViewModel.ID.hash(into:)(v4);
  return sub_98918();
}

uint64_t TranscriptContentViewModel.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_4E178(uint64_t *a1)
{
  v16 = sub_96AB8();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_98998();
  sub_989B8();
  if (sub_98988())
  {
    sub_98998();
    sub_989B8();
    return sub_98988() & 1;
  }

  else
  {
    sub_96A78();
    v10 = sub_96AA8();
    v11 = sub_981B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v6;
      v23 = v15;
      *v12 = 136315138;
      v20 = v8;
      v21 = v5;
      v17 = 0;
      v18 = 0xE000000000000000;
      v19 = v7;
      sub_98748();
      v13 = v11;
      v24._countAndFlagsBits = 3026478;
      v24._object = 0xE300000000000000;
      sub_97EE8(v24);
      sub_98748();
      v14 = sub_11FC8(v17, v18, &v23);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_0, v10, v13, "Discarded a player dynamic ad range that exceeded the max duration. %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    (*(v2 + 8))(v4, v16);
    return 0;
  }
}

uint64_t sub_4E42C(uint64_t a1)
{
  v3 = *(v1 + 16) >> 61;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v6 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_11;
    }

    v4 = &qword_C52B0;
    v5 = type metadata accessor for LinkContent;
  }

  else if (v3 == 2)
  {
    v4 = &unk_C77D0;
    v5 = type metadata accessor for SilentContent;
  }

  else if (v3 == 3)
  {
    v4 = &qword_C52A8;
    v5 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v4 = &qword_C77C0;
    v5 = type metadata accessor for ChapterTitleContent;
  }

  v6 = sub_55E48(v4, v5);
LABEL_11:
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 16);

  v8(ObjectType, v6);
  v10 = v9;

  if (v10)
  {
    return 0;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v11 = &unk_C77D0;
      v12 = type metadata accessor for SilentContent;
    }

    else if (v3 == 3)
    {
      v11 = &qword_C52A8;
      v12 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v11 = &qword_C77C0;
      v12 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_21;
  }

  if (v3)
  {
    v11 = &qword_C52B0;
    v12 = type metadata accessor for LinkContent;
LABEL_21:
    v13 = sub_55E48(v11, v12);
    goto LABEL_22;
  }

  v13 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_22:
  v14 = swift_getObjectType();

  sub_4B530(v14, v13);
  v16 = v15;

  if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  for (i = a1 + 56; ; i += 32)
  {
    sub_989B8();
    if (sub_98988())
    {
      sub_989B8();
      if (sub_98988())
      {
        break;
      }
    }

    if (!--v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_4E7CC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v86 = a1;
  v4 = COERCE_DOUBLE(&unk_C7EF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
  sub_269B8(&qword_C5768, &unk_C7EF0);
  v6 = &v86;
  if ((sub_98128() & 1) == 0)
  {

    return a2;
  }

  if (a2 >> 62)
  {
    goto LABEL_170;
  }

  v7 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_172;
  }

LABEL_4:
  v4 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
  v5 = sub_55D2C(&_swiftEmptyArrayStorage, v8);
  v6 = (v3 >> 62);
  if (v3 >> 62)
  {
LABEL_173:
    v9 = sub_98778();
  }

  else
  {
    v9 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v81 = a2;
  v85 = v7;
  if (v9)
  {
    v71 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_8:
      v10 = 0;
      v82 = v9;
      v83 = v3 & 0xC000000000000001;
      v80 = v3;
      v74 = v3 + 32;
      v75 = v3 & 0xFFFFFFFFFFFFFF8;
      v77 = a2 & 0xFFFFFFFFFFFFFF8;
      v78 = a2 & 0xC000000000000001;
      v76 = a2 + 32;
      v72 = v5 + 4;
      v73 = v5;
      v11 = &v5[v7 + 4];
      while (1)
      {
        if (v83)
        {
          v12 = sub_986C8();
          v13 = __OFADD__(v10++, 1);
          if (v13)
          {
            goto LABEL_159;
          }
        }

        else
        {
          if (v10 >= *(v75 + 16))
          {
            goto LABEL_164;
          }

          v12 = *(v74 + 8 * v10);

          v13 = __OFADD__(v10++, 1);
          if (v13)
          {
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
LABEL_170:
            v7 = sub_98778();
            v8 = v7 + 1;
            if (!__OFADD__(v7, 1))
            {
              goto LABEL_4;
            }

LABEL_172:
            __break(1u);
            goto LABEL_173;
          }
        }

        v14 = *(v12 + 16);
        v15 = v14 >> 61;
        if ((v14 >> 61) > 1)
        {
          break;
        }

        if (v15)
        {
          v3 = v14 & 0x1FFFFFFFFFFFFFFFLL;
          v16 = type metadata accessor for LinkContent;
          v17 = &qword_C52B0;
LABEL_26:
          v18 = sub_55E48(v17, v16);
          goto LABEL_27;
        }

        v18 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
        v3 = v14 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_27:
        ObjectType = swift_getObjectType();

        v4 = COERCE_DOUBLE(sub_4B3F8(ObjectType, v18));
        v6 = v20;

        if ((v6 & 1) == 0)
        {
          v21 = v4;
          v22 = sub_4FC14(a2, v4);
          if ((v23 & 1) == 0)
          {
            if (v78)
            {
              v4 = COERCE_DOUBLE(sub_986C8());
            }

            else
            {
              if ((v22 & 0x8000000000000000) != 0)
              {
                goto LABEL_166;
              }

              if (v22 >= *(v77 + 16))
              {
                goto LABEL_167;
              }

              v4 = *(v76 + 8 * v22);
            }

            v24 = *(*&v4 + 16);
            if (v24 >> 61 == 2)
            {
              v6 = (v24 & 0x1FFFFFFFFFFFFFFFLL);

              swift_beginAccess();
              v25 = v6[11];
              v26 = *(v25 + 16);
              if (!v26)
              {
LABEL_42:

                goto LABEL_10;
              }

              v27 = (v25 + 40);
              while (*(v27 - 1) > v21 || *v27 < v21)
              {
                v27 += 2;
                if (!--v26)
                {
                  goto LABEL_42;
                }
              }
            }
          }
        }

        v29 = *(v12 + 16);
        v30 = v29 >> 61;
        if ((v29 >> 61) > 1)
        {
          v3 = v29 & 0x1FFFFFFFFFFFFFFFLL;
          if (v30 == 2)
          {
            v31 = type metadata accessor for SilentContent;
            v32 = &unk_C77D0;
          }

          else if (v30 == 3)
          {
            v31 = type metadata accessor for SpeakerContent;
            v32 = &qword_C52A8;
          }

          else
          {
            v31 = type metadata accessor for ChapterTitleContent;
            v32 = &qword_C77C0;
          }

          goto LABEL_53;
        }

        if (v30)
        {
          v3 = v29 & 0x1FFFFFFFFFFFFFFFLL;
          v31 = type metadata accessor for LinkContent;
          v32 = &qword_C52B0;
LABEL_53:
          v33 = sub_55E48(v32, v31);
          goto LABEL_54;
        }

        v33 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
        v3 = v29 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_54:
        v34 = swift_getObjectType();

        v4 = COERCE_DOUBLE(sub_4B464(v34, v33));
        v6 = v35;

        if ((v6 & 1) == 0)
        {
          v36 = floor(v4);
          v37 = sub_502E4(a2, v36);
          if ((v38 & 1) == 0)
          {
            v9 = v37;
            if (v78)
            {
              v39 = sub_986C8();
            }

            else
            {
              if ((v37 & 0x8000000000000000) != 0)
              {
                goto LABEL_168;
              }

              if (v37 >= *(v77 + 16))
              {
                goto LABEL_169;
              }
            }

            v79 = v39;
            v40 = *(v39 + 16);
            v41 = v40 >> 61;
            if ((v40 >> 61) <= 1)
            {
              if (v41)
              {
                v3 = v40 & 0x1FFFFFFFFFFFFFFFLL;
                v42 = type metadata accessor for LinkContent;
                v43 = &qword_C52B0;
                goto LABEL_74;
              }

              v44 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
              v3 = v40 & 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v3 = v40 & 0x1FFFFFFFFFFFFFFFLL;
              if (v41 == 2)
              {
                v42 = type metadata accessor for SilentContent;
                v43 = &unk_C77D0;
              }

              else if (v41 == 3)
              {
                v42 = type metadata accessor for SpeakerContent;
                v43 = &qword_C52A8;
              }

              else
              {
                v42 = type metadata accessor for ChapterTitleContent;
                v43 = &qword_C77C0;
              }

LABEL_74:
              v44 = sub_55E48(v43, v42);
            }

            v45 = swift_getObjectType();

            v46 = COERCE_DOUBLE(sub_4B3F8(v45, v44));
            v48 = v47;

            if (!v41 && (v48 & 1) == 0)
            {
              swift_getKeyPath();
              v87[0] = v40;
              sub_55E48(&qword_C56A0, type metadata accessor for TextContent);

              sub_962A8();

              v49 = *(v40 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);

              v50 = v49 + v46;
              v7 = v85;
              v5 = v73;
              goto LABEL_90;
            }

            if (v41 <= 1)
            {
              v5 = v73;
              if (v41)
              {
                v51 = type metadata accessor for LinkContent;
                v52 = &qword_C52B0;
                goto LABEL_87;
              }

              v53 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
            }

            else
            {
              v5 = v73;
              if (v41 == 2)
              {
                v51 = type metadata accessor for SilentContent;
                v52 = &unk_C77D0;
              }

              else if (v41 == 3)
              {
                v51 = type metadata accessor for SpeakerContent;
                v52 = &qword_C52A8;
              }

              else
              {
                v51 = type metadata accessor for ChapterTitleContent;
                v52 = &qword_C77C0;
              }

LABEL_87:
              v53 = sub_55E48(v52, v51);
            }

            v7 = v85;
            v54 = swift_getObjectType();

            v4 = COERCE_DOUBLE(sub_4B3F8(v54, v53));
            v6 = v55;

            if ((v6 & 1) == 0)
            {
              v50 = v4;
LABEL_90:
              v56 = *(v79 + 16);
              v57 = v56 >> 61;
              if ((v56 >> 61) <= 1)
              {
                if (v57)
                {
                  v3 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                  v58 = type metadata accessor for LinkContent;
                  v59 = &qword_C52B0;
                  goto LABEL_99;
                }

                v60 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
                v3 = v56 & 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v3 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                if (v57 == 2)
                {
                  v58 = type metadata accessor for SilentContent;
                  v59 = &unk_C77D0;
                }

                else if (v57 == 3)
                {
                  v58 = type metadata accessor for SpeakerContent;
                  v59 = &qword_C52A8;
                }

                else
                {
                  v58 = type metadata accessor for ChapterTitleContent;
                  v59 = &qword_C77C0;
                }

LABEL_99:
                v60 = sub_55E48(v59, v58);
              }

              v61 = swift_getObjectType();

              v4 = COERCE_DOUBLE(sub_4B464(v61, v60));
              v6 = v62;

              if ((v6 & 1) == 0)
              {
                a2 = v81;
                if (v50 > v36 || v36 > v4)
                {

                  if (v9 < 0)
                  {
                    goto LABEL_179;
                  }

                  if (v9 >= v5[2])
                  {
                    goto LABEL_182;
                  }

                  v6 = &v72[v9];
                }

                else
                {
                  *&v4 = v9 + 1;
                  if (__OFADD__(v9, 1))
                  {
                    goto LABEL_180;
                  }

                  if ((*&v4 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_181;
                  }

                  if (*&v4 >= v5[2])
                  {
                    goto LABEL_183;
                  }

                  v6 = &v72[*&v4];
                }

                sub_97FA8();
                if (*(&dword_10 + (*v6 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v6 & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  v4 = *(&dword_10 + (*v6 & 0xFFFFFFFFFFFFFF8));
                  sub_97FD8();
                }

                sub_98008();

                goto LABEL_10;
              }
            }

            a2 = v81;
            goto LABEL_10;
          }
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_161;
        }

        if (v7 >= v5[2])
        {
          goto LABEL_162;
        }

        sub_97FA8();
        if (*(&dword_10 + (*v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v4 = *(&dword_10 + (*v11 & 0xFFFFFFFFFFFFFF8));
          sub_97FD8();
        }

        v6 = v11;
        sub_98008();

LABEL_10:
        if (v10 == v82)
        {
          v3 = v80;
          v4 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
          v6 = v71;
          goto LABEL_117;
        }
      }

      v3 = v14 & 0x1FFFFFFFFFFFFFFFLL;
      if (v15 == 2)
      {
        v16 = type metadata accessor for SilentContent;
        v17 = &unk_C77D0;
      }

      else if (v15 == 3)
      {
        v16 = type metadata accessor for SpeakerContent;
        v17 = &qword_C52A8;
      }

      else
      {
        v16 = type metadata accessor for ChapterTitleContent;
        v17 = &qword_C77C0;
      }

      goto LABEL_26;
    }

LABEL_184:
    v5 = sub_50860(v5);
    goto LABEL_8;
  }

LABEL_117:
  *v87 = v4;
  if (v6)
  {
    v63 = sub_98778();
  }

  else
  {
    v63 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v7, v63);
  v64 = v7 + v63;
  if (v13)
  {
    __break(1u);
    goto LABEL_175;
  }

  v6 = v87;
  result = sub_505A4(v64);
  if (!v5[2])
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  *&v4 = v5 + 4;
  v3 = v5[4];
  if (!(v3 >> 62))
  {
    v9 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_124;
    }

LABEL_133:
    if ((v7 & 0x8000000000000000) != 0)
    {
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
      goto LABEL_184;
    }

    if (v7)
    {
      v3 = 0;
      v67 = a2 & 0xC000000000000001;
      v84 = a2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v67)
        {
          sub_986C8();
        }

        else
        {
          if (v3 >= *(v84 + 16))
          {
            goto LABEL_165;
          }
        }

        v6 = v87;
        sub_97FA8();
        if (*(&dword_10 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_97FD8();
        }

        ++v3;
        sub_98008();
        if (v3 >= v5[2])
        {
          goto LABEL_160;
        }

        v68 = *(*&v4 + 8 * v3);
        if (v68 >> 62)
        {
          v69 = sub_98778();
          if (!v69)
          {
            continue;
          }
        }

        else
        {
          v69 = *(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8));
          if (!v69)
          {
            continue;
          }
        }

        if (v69 < 1)
        {
          goto LABEL_163;
        }

        for (i = 0; i != v69; ++i)
        {
          if ((v68 & 0xC000000000000001) != 0)
          {
            sub_986C8();
          }

          else
          {
          }

          v6 = v87;
          sub_97FA8();
          if (*(&dword_10 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_97FD8();
          }

          sub_98008();
        }

        a2 = v81;
      }

      while (v3 != v85);
    }

    return v87[0];
  }

LABEL_176:
  result = sub_98778();
  v9 = result;
  if (!result)
  {
    goto LABEL_133;
  }

LABEL_124:
  if (v9 >= 1)
  {

    for (j = 0; j != v9; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_986C8();
      }

      else
      {
      }

      v6 = v87;
      sub_97FA8();
      if (*(&dword_10 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_97FD8();
      }

      sub_98008();
    }

    a2 = v81;
    goto LABEL_133;
  }

  __break(1u);
  return result;
}

uint64_t sub_4F770(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a3;
  v49 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_96668();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (!(v17 >> 61))
  {
    v45 = &v41 - v15;
    v47 = v4;
    v46 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_speaker;
    sub_51054(v17 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_speaker, v9);
    v18 = *(v11 + 48);
    if (v18(v9, 1, v10) == 1)
    {

      sub_4C60(v9, &qword_C5848);
LABEL_15:
      sub_510C4(v17 + v46, v49);

      goto LABEL_16;
    }

    v43 = v16;
    v19 = v10;
    (*(v11 + 32))(v45, v9, v10);

    v42 = sub_96648();
    v21 = v20;
    v22 = v49;
    v23 = v18(v49, 1, v19);
    v44 = v11;
    v41 = v19;
    if (v23)
    {

      v24 = 1;
    }

    else
    {
      (*(v11 + 16))(v13, v22, v19);
      v25 = sub_96648();
      v27 = v26;
      (*(v11 + 8))(v13, v19);
      if (v42 == v25 && v21 == v27)
      {

        LODWORD(v42) = 0;
        goto LABEL_12;
      }

      v29 = sub_98838();

      v24 = v29 ^ 1;
    }

    LODWORD(v42) = v24;
LABEL_12:
    v31 = *(v17 + 16);
    v30 = *(v17 + 24);
    v32 = *(v17 + 32);
    v33 = *(v17 + 40);

    v34 = v45;
    v35 = sub_96658();
    v37 = v36;
    type metadata accessor for SpeakerContent();
    v38 = swift_allocObject();
    *(v38 + 32) = 0;
    *(v38 + 72) = 0;
    *(v38 + 80) = 1;
    *(v38 + 88) = 0;
    *(v38 + 96) = 1;
    *(v38 + 104) = 0;
    *(v38 + 112) = 1;
    *(v38 + 120) = 0;
    *(v38 + 128) = 1;
    *(v38 + 136) = xmmword_9B250;
    sub_962D8();
    *(v38 + 40) = v31;
    *(v38 + 48) = v30;
    *(v38 + 56) = v32;
    *(v38 + 64) = v33;
    *(v38 + 16) = v35;
    *(v38 + 24) = v37;
    *(v38 + 152) = v42 & 1;
    *(v38 + 160) = v48;

    sub_3E8B0();
    type metadata accessor for TranscriptContentViewModel();
    *(swift_allocObject() + 16) = v38 | 0x6000000000000000;

    sub_97FA8();
    v39 = v41;
    if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_97FD8();
    }

    sub_98008();

    (*(v44 + 8))(v34, v39);
    goto LABEL_15;
  }

LABEL_16:

  sub_97FA8();
  if (*(&dword_10 + (*a4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_97FD8();
  }

  return sub_98008();
}

uint64_t sub_4FC14(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
LABEL_65:
    result = sub_98778();
    v5 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_67;
  }

LABEL_3:
  if (v5 < 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v39 = 0;
  v40 = a1 + 32;
  v38 = 1;
  do
  {
    while (1)
    {
      v9 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v10 = v9 / 2;
      if (v7)
      {
        v11 = sub_986C8();
      }

      else
      {
        if (v9 < -1)
        {
          goto LABEL_63;
        }

        if (v10 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_64;
        }

        v11 = *(v40 + 8 * v10);
      }

      v12 = *(v11 + 16) >> 61;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v13 = type metadata accessor for SilentContent;
          v14 = &unk_C77D0;
        }

        else if (v12 == 3)
        {
          v13 = type metadata accessor for SpeakerContent;
          v14 = &qword_C52A8;
        }

        else
        {
          v13 = type metadata accessor for ChapterTitleContent;
          v14 = &qword_C77C0;
        }

        goto LABEL_22;
      }

      if (v12)
      {
        v13 = type metadata accessor for LinkContent;
        v14 = &qword_C52B0;
LABEL_22:
        v15 = sub_55E48(v14, v13);
        goto LABEL_23;
      }

      v15 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_23:
      ObjectType = swift_getObjectType();

      v17 = COERCE_DOUBLE(sub_4B3F8(ObjectType, v15));
      v19 = v18;

      v20 = *(v11 + 16);
      v21 = v20 >> 61;
      if ((v19 & 1) != 0 || v21)
      {
        break;
      }

      swift_getKeyPath();
      sub_55E48(&qword_C56A0, type metadata accessor for TextContent);

      sub_962A8();

      v8 = *(v20 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime);

      if (v8 + v17 > a2)
      {
        goto LABEL_37;
      }

LABEL_39:
      v38 = 0;
      v6 = v10 + 1;
      v39 = v10;
      if (v5 <= v10)
      {
        goto LABEL_42;
      }
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = type metadata accessor for SilentContent;
        v23 = &unk_C77D0;
      }

      else if (v21 == 3)
      {
        v22 = type metadata accessor for SpeakerContent;
        v23 = &qword_C52A8;
      }

      else
      {
        v22 = type metadata accessor for ChapterTitleContent;
        v23 = &qword_C77C0;
      }

      goto LABEL_34;
    }

    if (v21)
    {
      v22 = type metadata accessor for LinkContent;
      v23 = &qword_C52B0;
LABEL_34:
      v24 = sub_55E48(v23, v22);
      goto LABEL_35;
    }

    v24 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_35:
    v25 = swift_getObjectType();

    v26 = COERCE_DOUBLE(sub_4B3F8(v25, v24));
    v28 = v27;

    if ((v28 & 1) == 0 && v26 <= a2)
    {
      goto LABEL_39;
    }

LABEL_37:
    v5 = v10 - 1;
  }

  while (v10 > v6);
  v10 = v39;
  if (v38)
  {
    return 0;
  }

LABEL_42:
  if (v7)
  {
    v29 = sub_986C8();
    goto LABEL_47;
  }

  if (v10 < 0)
  {
    goto LABEL_68;
  }

  if (v10 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_69;
  }

  v29 = *(v40 + 8 * v10);

LABEL_47:
  v30 = *(v29 + 16) >> 61;
  if (v30 <= 1)
  {
    if (v30)
    {
      v31 = &qword_C52B0;
      v32 = type metadata accessor for LinkContent;
      goto LABEL_56;
    }

    v33 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
  }

  else
  {
    if (v30 == 2)
    {
      v31 = &unk_C77D0;
      v32 = type metadata accessor for SilentContent;
    }

    else if (v30 == 3)
    {
      v31 = &qword_C52A8;
      v32 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v31 = &qword_C77C0;
      v32 = type metadata accessor for ChapterTitleContent;
    }

LABEL_56:
    v33 = sub_55E48(v31, v32);
  }

  v34 = swift_getObjectType();
  v35 = COERCE_DOUBLE(sub_4B464(v34, v33));
  v37 = v36;

  if ((v37 & 1) != 0 || v35 < a2)
  {
    return 0;
  }

  return v10;
}

uint64_t sub_502E4(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_33;
  }

  while (2)
  {
    if (v5 < 0)
    {
      return 0;
    }

    v6 = 0;
    v18 = 0;
    while (1)
    {
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        break;
      }

      v8 = v7 / 2;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_986C8();
      }

      else
      {
        if (v7 < -1)
        {
          goto LABEL_29;
        }

        if (v8 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v9 = *(a1 + 32 + 8 * v8);
      }

      v10 = *(v9 + 16) >> 61;
      if (v10 <= 1)
      {
        if (!v10)
        {
          v13 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
          goto LABEL_22;
        }

        v11 = type metadata accessor for LinkContent;
        v12 = &qword_C52B0;
      }

      else if (v10 == 2)
      {
        v11 = type metadata accessor for SilentContent;
        v12 = &unk_C77D0;
      }

      else if (v10 == 3)
      {
        v11 = type metadata accessor for SpeakerContent;
        v12 = &qword_C52A8;
      }

      else
      {
        v11 = type metadata accessor for ChapterTitleContent;
        v12 = &qword_C77C0;
      }

      v13 = sub_55E48(v12, v11);
LABEL_22:

      ObjectType = swift_getObjectType();
      v15 = COERCE_DOUBLE(sub_4B464(ObjectType, v13));
      v17 = v16;

      if ((v17 & 1) != 0 || v15 < a2)
      {
        v6 = v8 + 1;
        if (v5 < v8 + 1)
        {
          return v18;
        }
      }

      else
      {
        v5 = v8 - 1;
        v18 = v8;
        if (v8 - 1 < v6)
        {
          return v18;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_98778();
    v5 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_505A4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_98778();
LABEL_9:
    result = sub_986D8();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_50640(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = sub_98978();
  v8 = sub_98978();
  type metadata accessor for SilentContent();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 1;
  *(v9 + 56) = 0;
  *(v9 + 64) = 1;
  *(v9 + 72) = 0;
  *(v9 + 80) = 1;
  *(v9 + 88) = &_swiftEmptyArrayStorage;
  sub_20410(v2, v3, v4, v5, v6);
  sub_96E58();
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 1;
  *(v9 + 56) = v7;
  *(v9 + 64) = 0;
  *(v9 + 72) = v8;
  *(v9 + 80) = 0;
  if (v6 == 255)
  {
    v10 = 0;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v3;
    *(v10 + 32) = v4;
    *(v10 + 40) = v5;
    *(v10 + 48) = v6;
  }

  *(v9 + 16) = v10;
  type metadata accessor for TranscriptContentViewModel();
  result = swift_allocObject();
  *(result + 16) = v9 | 0x4000000000000000;
  return result;
}

uint64_t sub_507C0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
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

  sub_98778();
LABEL_9:
  result = sub_986D8();
  *v1 = result;
  return result;
}

uint64_t _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v54[0] = v4;
  v54[1] = v3;
  v54[2] = v6;
  v54[3] = v5;
  v55 = v7;
  v56 = v8;
  v57 = v9;
  v58 = v10;
  v59 = v11;
  v60 = v12;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        if (v12 == 3)
        {
          v13 = *&v6;
          v14 = *&v5;
          v15 = *&v10;
          v16 = *&v11;
          if (v4 == v8 && v3 == v9)
          {
            sub_203C8(v4, v3, v10, v11, 3u);
            v17 = v4;
            v18 = v3;
            v19 = v6;
            v20 = v5;
            v21 = 3;
            goto LABEL_13;
          }

          v28 = v8;
          v29 = v9;
          v30 = v10;
          v31 = v11;
          v32 = sub_98838();
          sub_203C8(v28, v29, v30, v31, 3u);
          v33 = v4;
          v34 = v3;
          v35 = v6;
          v36 = v5;
          v37 = 3;
          goto LABEL_34;
        }
      }

      else if (v12 == 4)
      {
        v14 = *&v6;
        v16 = *&v10;
        if (v4 == v8 && v3 == v9)
        {
          sub_203C8(v4, v3, v10, v11, 4u);
          sub_203C8(v4, v3, v6, v5, 4u);
          sub_4C60(v54, &qword_C52C0);
          if (*&v6 != v16)
          {
            goto LABEL_27;
          }

LABEL_37:
          v26 = 1;
          return v26 & 1;
        }

        v38 = v8;
        v39 = v9;
        v40 = v10;
        v41 = v11;
        v42 = sub_98838();
        sub_203C8(v38, v39, v40, v41, 4u);
        sub_203C8(v4, v3, v6, v5, 4u);
        sub_4C60(v54, &qword_C52C0);
        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v12 != 2)
    {
      goto LABEL_26;
    }

    v52 = v8;
    v53 = v4;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v25 = v11;
    sub_203C8(v8, v9, v10, v11, 2u);
    sub_203C8(v4, v3, v6, v5, 2u);
    sub_203C8(v22, v23, v24, v25, 2u);
    sub_203C8(v4, v3, v6, v5, 2u);
    v26 = static SilentContent.ID.== infix(_:_:)(&v53, &v52);
    sub_4C60(v54, &qword_C52C0);
    sub_20438(v22, v23, v24, v25, 2u);
    sub_20438(v4, v3, v6, v5, 2u);
    return v26 & 1;
  }

  if (!v7)
  {
    if (!v12)
    {
      v13 = *&v6;
      v14 = *&v5;
      v15 = *&v10;
      v16 = *&v11;
      if (v4 == v8 && v3 == v9)
      {
        sub_203C8(v4, v3, v10, v11, 0);
        v17 = v4;
        v18 = v3;
        v19 = v6;
        v20 = v5;
        v21 = 0;
LABEL_13:
        sub_203C8(v17, v18, v19, v20, v21);
        sub_4C60(v54, &qword_C52C0);
        if (v13 != v15)
        {
          goto LABEL_27;
        }

LABEL_36:
        if (v14 == v16)
        {
          goto LABEL_37;
        }

LABEL_27:
        v26 = 0;
        return v26 & 1;
      }

      v48 = v8;
      v49 = v9;
      v50 = v10;
      v51 = v11;
      v32 = sub_98838();
      sub_203C8(v48, v49, v50, v51, 0);
      v33 = v4;
      v34 = v3;
      v35 = v6;
      v36 = v5;
      v37 = 0;
LABEL_34:
      sub_203C8(v33, v34, v35, v36, v37);
      sub_4C60(v54, &qword_C52C0);
      if ((v32 & 1) == 0 || v13 != v15)
      {
        goto LABEL_27;
      }

      goto LABEL_36;
    }

LABEL_26:
    sub_203C8(v8, v9, v10, v11, v12);
    sub_203C8(v4, v3, v6, v5, v7);
    sub_4C60(v54, &qword_C52C0);
    goto LABEL_27;
  }

  if (v12 != 1)
  {
    goto LABEL_26;
  }

  if (v4 == v8 && v3 == v9)
  {
    v26 = 1;
    sub_203C8(v4, v3, v10, v11, 1u);
    sub_203C8(v4, v3, v6, v5, 1u);
    sub_4C60(v54, &qword_C52C0);
    return v26 & 1;
  }

  v43 = v8;
  v44 = v9;
  v45 = v10;
  v46 = v11;
  v47 = sub_98838();
  sub_203C8(v43, v44, v45, v46, 1u);
  sub_203C8(v4, v3, v6, v5, 1u);
  sub_4C60(v54, &qword_C52C0);
  return v47 & 1;
}

uint64_t _s19PodcastsTranscripts26TranscriptContentViewModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (!v4)
    {
      v6 = *(v3 + 16);
      v7 = *(v3 + 32);
      v8 = *(v3 + 40);

      goto LABEL_12;
    }

    v6 = *(&dword_10 + (v3 & 0x1FFFFFFFFFFFFFFFLL));
  }

  else
  {
    v5 = (v3 & 0x1FFFFFFFFFFFFFFFLL);
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v6 = v5[5];
        v7 = v5[7];
        v8 = v5[8];

        goto LABEL_12;
      }

      v6 = v5[14];
      v7 = v5[16];

      goto LABEL_11;
    }

    v6 = v5[2];

    v9 = 0;
  }

  v7 = 0;
LABEL_11:
  v8 = 0;
LABEL_12:
  v24 = v6;
  v25 = v9;
  v26 = v7;
  v27 = v8;
  v28 = v4;
  v10 = *(a2 + 16);
  v11 = v10 >> 61;
  if ((v10 >> 61) <= 1)
  {
    if (!v11)
    {
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);

      goto LABEL_23;
    }

    v13 = *(&dword_10 + (v10 & 0x1FFFFFFFFFFFFFFFLL));

    goto LABEL_21;
  }

  v12 = (v10 & 0x1FFFFFFFFFFFFFFFLL);
  if (v11 == 2)
  {
    v13 = v12[2];

    v16 = 0;
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (v11 != 3)
  {
    v13 = v12[14];
    v14 = v12[16];

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v13 = v12[5];
  v14 = v12[7];
  v15 = v12[8];

LABEL_23:
  v19 = v13;
  v20 = v16;
  v21 = v14;
  v22 = v15;
  v23 = v11;
  v17 = _s19PodcastsTranscripts26TranscriptContentViewModelC2IDO2eeoiySbAE_AEtFZ_0(&v24, &v19);
  sub_20438(v19, v20, v21, v22, v23);
  sub_20438(v24, v25, v26, v27, v28);
  return v17 & 1;
}

unint64_t sub_50F10()
{
  result = qword_C64F0;
  if (!qword_C64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C64F0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_50FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_50FFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_51054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_510C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_51134(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16) >> 61;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = &unk_C77D0;
      v6 = type metadata accessor for SilentContent;
    }

    else if (v4 == 3)
    {
      v5 = &qword_C52A8;
      v6 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v5 = &qword_C77C0;
      v6 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = &qword_C52B0;
    v6 = type metadata accessor for LinkContent;
LABEL_10:
    v7 = sub_55E48(v5, v6);
    goto LABEL_11;
  }

  v7 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_11:
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);

  v9(ObjectType, v7);
  v11 = v10;

  if (v11)
  {
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  *&v12 = COERCE_DOUBLE(sub_967E8());
  if (v13)
  {
    goto LABEL_26;
  }

  v14 = *&v12;
  v15 = *(v3 + 16) >> 61;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = &unk_C77D0;
      v17 = type metadata accessor for SilentContent;
    }

    else if (v15 == 3)
    {
      v16 = &qword_C52A8;
      v17 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v16 = &qword_C77C0;
      v17 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    v16 = &qword_C52B0;
    v17 = type metadata accessor for LinkContent;
LABEL_22:
    v18 = sub_55E48(v16, v17);
    goto LABEL_23;
  }

  v18 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_23:
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v19 = swift_getObjectType();
  v20 = *(v18 + 40);

  v20(*&v14, 0, v19, v18);

LABEL_26:
  v21 = *(v3 + 16) >> 61;
  if (v21 <= 1)
  {
    if (!v21)
    {
      v24 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_36;
    }

    v22 = &qword_C52B0;
    v23 = type metadata accessor for LinkContent;
  }

  else if (v21 == 2)
  {
    v22 = &unk_C77D0;
    v23 = type metadata accessor for SilentContent;
  }

  else if (v21 == 3)
  {
    v22 = &qword_C52A8;
    v23 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v22 = &qword_C77C0;
    v23 = type metadata accessor for ChapterTitleContent;
  }

  v24 = sub_55E48(v22, v23);
LABEL_36:
  v25 = swift_getObjectType();
  v26 = *(v24 + 24);

  v26(v25, v24);
  v28 = v27;

  if (v28)
  {
    goto LABEL_65;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v29 = sub_967E8();
  v30 = *(v3 + 16);
  v31 = v30 >> 61;
  if ((v32 & 1) == 0)
  {
    v35 = *&v29;
    if ((v30 >> 61) <= 1)
    {
      if (!v31)
      {
        v39 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_63:
        v48 = swift_getObjectType();
        v49 = *(v39 + 64);

        v50 = v35;
        v51 = v48;
        v52 = v39;
LABEL_64:
        v49(*&v50, 0, v51, v52);

        goto LABEL_65;
      }

      v36 = &qword_C52B0;
      v37 = type metadata accessor for LinkContent;
    }

    else if (v31 == 2)
    {
      v36 = &unk_C77D0;
      v37 = type metadata accessor for SilentContent;
    }

    else if (v31 == 3)
    {
      v36 = &qword_C52A8;
      v37 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v36 = &qword_C77C0;
      v37 = type metadata accessor for ChapterTitleContent;
    }

    v39 = sub_55E48(v36, v37);
    goto LABEL_63;
  }

  if ((v30 >> 61) <= 1)
  {
    if (!v31)
    {
      v38 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_56;
    }

    v33 = &qword_C52B0;
    v34 = type metadata accessor for LinkContent;
  }

  else if (v31 == 2)
  {
    v33 = &unk_C77D0;
    v34 = type metadata accessor for SilentContent;
  }

  else if (v31 == 3)
  {
    v33 = &qword_C52A8;
    v34 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v33 = &qword_C77C0;
    v34 = type metadata accessor for ChapterTitleContent;
  }

  v38 = sub_55E48(v33, v34);
LABEL_56:
  v40 = swift_getObjectType();
  v41 = *(v38 + 32);

  v42 = COERCE_DOUBLE(v41(v40, v38));
  v44 = v43;

  if (v44)
  {
    goto LABEL_65;
  }

  v45 = *(v3 + 16) >> 61;
  if (v45 <= 1)
  {
    if (!v45)
    {
      v75 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_113;
    }

    v46 = &qword_C52B0;
    v47 = type metadata accessor for LinkContent;
  }

  else if (v45 == 2)
  {
    v46 = &unk_C77D0;
    v47 = type metadata accessor for SilentContent;
  }

  else if (v45 == 3)
  {
    v46 = &qword_C52A8;
    v47 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v46 = &qword_C77C0;
    v47 = type metadata accessor for ChapterTitleContent;
  }

  v75 = sub_55E48(v46, v47);
LABEL_113:
  v85 = swift_getObjectType();

  sub_4B530(v85, v75);
  v87 = v86;
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    v90 = *(v3 + 16) >> 61;
    if (v90 <= 1)
    {
      if (!v90)
      {
        v96 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_132:
        v97 = swift_getObjectType();
        v49 = *(v96 + 64);

        v50 = v42 + v87;
        v51 = v97;
        v52 = v96;
        goto LABEL_64;
      }

      v91 = &qword_C52B0;
      v92 = type metadata accessor for LinkContent;
    }

    else if (v90 == 2)
    {
      v91 = &unk_C77D0;
      v92 = type metadata accessor for SilentContent;
    }

    else if (v90 == 3)
    {
      v91 = &qword_C52A8;
      v92 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v91 = &qword_C77C0;
      v92 = type metadata accessor for ChapterTitleContent;
    }

    v96 = sub_55E48(v91, v92);
    goto LABEL_132;
  }

LABEL_65:
  v53 = *(v3 + 16) >> 61;
  if (v53 <= 1)
  {
    if (!v53)
    {
      v56 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_75;
    }

    v54 = &qword_C52B0;
    v55 = type metadata accessor for LinkContent;
  }

  else if (v53 == 2)
  {
    v54 = &unk_C77D0;
    v55 = type metadata accessor for SilentContent;
  }

  else if (v53 == 3)
  {
    v54 = &qword_C52A8;
    v55 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v54 = &qword_C77C0;
    v55 = type metadata accessor for ChapterTitleContent;
  }

  v56 = sub_55E48(v54, v55);
LABEL_75:
  v57 = swift_getObjectType();
  v58 = *(v56 + 32);

  v58(v57, v56);
  v60 = v59;

  if ((v60 & 1) == 0)
  {
    return result;
  }

  v62 = *(v3 + 16) >> 61;
  if (v62 <= 1)
  {
    if (!v62)
    {
      v65 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_86;
    }

    v63 = &qword_C52B0;
    v64 = type metadata accessor for LinkContent;
  }

  else if (v62 == 2)
  {
    v63 = &unk_C77D0;
    v64 = type metadata accessor for SilentContent;
  }

  else if (v62 == 3)
  {
    v63 = &qword_C52A8;
    v64 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v63 = &qword_C77C0;
    v64 = type metadata accessor for ChapterTitleContent;
  }

  v65 = sub_55E48(v63, v64);
LABEL_86:
  v66 = swift_getObjectType();
  v67 = *(v65 + 56);

  v68 = COERCE_DOUBLE(v67(v66, v65));
  v70 = v69;

  if (v70)
  {
    return result;
  }

  v71 = *(v3 + 16) >> 61;
  if (v71 <= 1)
  {
    if (!v71)
    {
      v74 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_99;
    }

    v72 = &qword_C52B0;
    v73 = type metadata accessor for LinkContent;
  }

  else if (v71 == 2)
  {
    v72 = &unk_C77D0;
    v73 = type metadata accessor for SilentContent;
  }

  else if (v71 == 3)
  {
    v72 = &qword_C52A8;
    v73 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v72 = &qword_C77C0;
    v73 = type metadata accessor for ChapterTitleContent;
  }

  v74 = sub_55E48(v72, v73);
LABEL_99:
  v76 = swift_getObjectType();

  sub_4B530(v76, v74);
  v78 = v77;
  v80 = v79;

  if (v80)
  {
    return result;
  }

  v81 = *(v3 + 16) >> 61;
  if (v81 > 1)
  {
    if (v81 == 2)
    {
      v82 = &unk_C77D0;
      v83 = type metadata accessor for SilentContent;
    }

    else if (v81 == 3)
    {
      v82 = &qword_C52A8;
      v83 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v82 = &qword_C77C0;
      v83 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_119;
  }

  if (v81)
  {
    v82 = &qword_C52B0;
    v83 = type metadata accessor for LinkContent;
LABEL_119:
    v84 = sub_55E48(v82, v83);
    goto LABEL_120;
  }

  v84 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_120:
  if (v68 - v78 < 0.0)
  {
    v93 = 0.0;
  }

  else
  {
    v93 = v68 - v78;
  }

  v94 = swift_getObjectType();
  v95 = *(v84 + 40);

  v95(*&v93, 0, v94, v84);
}

void *sub_5224C(void *result, unint64_t a2)
{
  v3 = result;
  v8 = &_swiftEmptyArrayStorage;
  if (!(a2 >> 62))
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = sub_98778();
  v4 = result;
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = sub_986C8();
      }

      else
      {
        v6 = *(a2 + 8 * i + 32);
      }

      v7 = v6;

      sub_51134(&v7, v3);
      sub_97FA8();
      if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v8 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_97FD8();
      }

      sub_98008();
    }

    return v8;
  }

  return result;
}

double sub_52394()
{
  if (sub_98978() < 720)
  {
    return 240.0;
  }

  v1 = sub_98978();
  v2 = sub_98978();
  v3 = v2;
  if (v1 > 1799)
  {
    v4 = sub_98978();
    if (v3 > 3599)
    {
      v5 = 0.2;
    }

    else
    {
      v5 = 0.27;
    }
  }

  else
  {
    v4 = v2;
    v5 = 0.33;
  }

  return v4 * v5;
}

uint64_t sub_52440(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for TranscriptContentViewModel();
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
  result = sub_98778();
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
    result = sub_98778();
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

unint64_t sub_5253C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 32 * result + 32 * a3;
  v10 = (v6 + 32 + 32 * a2);
  if (result != v10 || result >= v10 + 32 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 32 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_525E4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_15444(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_5253C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_526A4(uint64_t a1, uint64_t a2)
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
      result = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_98778();
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
    v9 = sub_98778();
  }

  else
  {
    v9 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_507C0(result);

  return sub_52440(v4, v2, 0);
}

uint64_t sub_5277C(uint64_t result, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *result;
  if (*(*result + 16))
  {
    v6 = *a2;
    v7 = *a2 >> 62;
    if (v7)
    {
      v42 = a3;
      result = sub_98778();
      a3 = v42;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_4:
        v53 = a3;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = sub_986C8();
LABEL_7:
          v55 = a4;
          v56 = v8;
          v9 = *(v8 + 16) >> 61;
          v54 = v7;
          if (v9 <= 1)
          {
            if (!v9)
            {
              v13 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
              goto LABEL_23;
            }

            v10 = &qword_C52B0;
            v11 = type metadata accessor for LinkContent;
          }

          else if (v9 == 2)
          {
            v10 = &unk_C77D0;
            v11 = type metadata accessor for SilentContent;
          }

          else if (v9 == 3)
          {
            v10 = &qword_C52A8;
            v11 = type metadata accessor for SpeakerContent;
          }

          else
          {
            v10 = &qword_C77C0;
            v11 = type metadata accessor for ChapterTitleContent;
          }

          v13 = sub_55E48(v10, v11);
LABEL_23:
          ObjectType = swift_getObjectType();
          v15 = *(v13 + 32);

          v15(ObjectType, v13);
          LOBYTE(ObjectType) = v16;

          if ((ObjectType & 1) == 0)
          {
            goto LABEL_42;
          }

          v17 = *(v56 + 16) >> 61;
          if (v17 <= 1)
          {
            if (!v17)
            {
              v20 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_34:
              v21 = swift_getObjectType();
              v22 = *(v20 + 16);

              v22(v21, v20);
              LOBYTE(v21) = v23;

              if (v21 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v53, v53[3]), sub_967E8(), (v24))
              {
                v25 = *(v56 + 16) >> 61;
                if (v25 <= 1)
                {
                  if (!v25)
                  {
                    v28 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_47:
                    v30 = swift_getObjectType();
                    v31 = *(v28 + 16);

                    v31(v30, v28);

                    v29 = v55;
LABEL_48:
                    sub_989B8();
                    result = sub_98988();
                    if (result)
                    {
                      if (*(v4 + 16))
                      {
                        v32 = sub_525E4(0, 1);
                        if (v29)
                        {
                          v33 = *(v29 + 16);
                          v34 = v33 >> 61;
                          if ((v33 >> 61) <= 1)
                          {
                            if (v34)
                            {
                              v41 = v33 & 0x1FFFFFFFFFFFFFFFLL;
                              v36 = *(v41 + 16);
                              v37 = *(v41 + 24);

                              v38 = 0;
                              v39 = 0;
                              v40 = 1;
                            }

                            else
                            {
                              v36 = *(v33 + 16);
                              v37 = *(v33 + 24);
                              v38 = *(v33 + 32);
                              v39 = *(v33 + 40);

                              v40 = 0;
                            }
                          }

                          else
                          {
                            v35 = (v33 & 0x1FFFFFFFFFFFFFFFLL);
                            if (v34 == 2)
                            {
                              v36 = v35[2];

                              v37 = 0;
                              v38 = 0;
                              v39 = 0;
                              v40 = 2;
                            }

                            else if (v34 == 3)
                            {
                              v36 = v35[5];
                              v37 = v35[6];
                              v38 = v35[7];
                              v39 = v35[8];

                              v40 = 3;
                            }

                            else
                            {
                              v36 = v35[14];
                              v37 = v35[15];
                              v38 = v35[16];

                              v39 = 0;
                              v40 = 4;
                            }
                          }
                        }

                        else
                        {
                          v36 = 0;
                          v37 = 0;
                          v38 = 0;
                          v39 = 0;
                          v40 = -1;
                        }

                        v57 = v36;
                        v58 = v37;
                        v59 = v38;
                        v60 = v39;
                        v61 = v40;
                        v12 = sub_50640(v32, &v57);

                        sub_20424(v36, v37, v38, v39, v40);
                        return v12;
                      }

                      goto LABEL_102;
                    }

                    if (!v54)
                    {
                      if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
                      {
                        goto LABEL_60;
                      }

                      __break(1u);
                    }

                    result = sub_98778();
                    if (!result)
                    {
LABEL_104:
                      __break(1u);
                      goto LABEL_105;
                    }

                    result = sub_98778();
                    if (!result)
                    {
LABEL_105:
                      __break(1u);
                      goto LABEL_106;
                    }

LABEL_60:
                    if ((v6 & 0xC000000000000001) != 0)
                    {
                      v12 = sub_986C8();
                      if (!v54)
                      {
LABEL_62:
                        result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
LABEL_67:
                        if (!result)
                        {
LABEL_106:
                          __break(1u);
                          goto LABEL_107;
                        }

                        sub_526A4(0, 1);

                        return v12;
                      }
                    }

                    else
                    {
                      if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
                      {
LABEL_107:
                        __break(1u);
                        goto LABEL_108;
                      }

                      v12 = *(v6 + 32);

                      if (!v54)
                      {
                        goto LABEL_62;
                      }
                    }

                    result = sub_98778();
                    goto LABEL_67;
                  }

                  v26 = &qword_C52B0;
                  v27 = type metadata accessor for LinkContent;
                }

                else if (v25 == 2)
                {
                  v26 = &unk_C77D0;
                  v27 = type metadata accessor for SilentContent;
                }

                else if (v25 == 3)
                {
                  v26 = &qword_C52A8;
                  v27 = type metadata accessor for SpeakerContent;
                }

                else
                {
                  v26 = &qword_C77C0;
                  v27 = type metadata accessor for ChapterTitleContent;
                }

                v28 = sub_55E48(v26, v27);
                goto LABEL_47;
              }

LABEL_42:
              v29 = v55;
              goto LABEL_48;
            }

            v18 = &qword_C52B0;
            v19 = type metadata accessor for LinkContent;
          }

          else if (v17 == 2)
          {
            v18 = &unk_C77D0;
            v19 = type metadata accessor for SilentContent;
          }

          else if (v17 == 3)
          {
            v18 = &qword_C52A8;
            v19 = type metadata accessor for SpeakerContent;
          }

          else
          {
            v18 = &qword_C77C0;
            v19 = type metadata accessor for ChapterTitleContent;
          }

          v20 = sub_55E48(v18, v19);
          goto LABEL_34;
        }

        if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {

          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_91;
      }
    }

    if (*(v4 + 16))
    {
      v43 = sub_525E4(0, 1);
      if (a4)
      {
        v44 = *(a4 + 16);
        v45 = v44 >> 61;
        if ((v44 >> 61) <= 1)
        {
          if (v45)
          {
            v52 = v44 & 0x1FFFFFFFFFFFFFFFLL;
            v47 = *(v52 + 16);
            v48 = *(v52 + 24);

            v49 = 0;
            v50 = 0;
            v51 = 1;
          }

          else
          {
            v47 = *(v44 + 16);
            v48 = *(v44 + 24);
            v49 = *(v44 + 32);
            v50 = *(v44 + 40);

            v51 = 0;
          }
        }

        else
        {
          v46 = (v44 & 0x1FFFFFFFFFFFFFFFLL);
          if (v45 == 2)
          {
            v47 = v46[2];

            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 2;
          }

          else if (v45 == 3)
          {
            v47 = v46[5];
            v48 = v46[6];
            v49 = v46[7];
            v50 = v46[8];

            v51 = 3;
          }

          else
          {
            v47 = v46[14];
            v48 = v46[15];
            v49 = v46[16];

            v50 = 0;
            v51 = 4;
          }
        }
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = -1;
      }

      v57 = v47;
      v58 = v48;
      v59 = v49;
      v60 = v50;
      v61 = v51;
      v12 = sub_50640(v43, &v57);
      sub_20424(v47, v48, v49, v50, v51);
      return v12;
    }

    goto LABEL_101;
  }

  v4 = *a2;
  v6 = *a2 >> 62;
  if (!v6)
  {
    if (!*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      v12 = sub_986C8();
      if (v6)
      {
        goto LABEL_96;
      }

      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_91:
  result = sub_98778();
  if (result)
  {
    result = sub_98778();
    if (!result)
    {
      __break(1u);
      goto LABEL_94;
    }

LABEL_13:
    if ((v4 & 0xC000000000000001) != 0)
    {
      goto LABEL_95;
    }

    if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      v12 = *(v4 + 32);

      if (v6)
      {
LABEL_96:
        result = sub_98778();
        goto LABEL_97;
      }

LABEL_16:
      result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
LABEL_97:
      if (!result)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      sub_526A4(0, 1);
      return v12;
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

LABEL_108:
  __break(1u);
  return result;
}

BOOL sub_53130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16) >> 61;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v6 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_11;
    }

    v4 = &qword_C52B0;
    v5 = type metadata accessor for LinkContent;
  }

  else if (v3 == 2)
  {
    v4 = &unk_C77D0;
    v5 = type metadata accessor for SilentContent;
  }

  else if (v3 == 3)
  {
    v4 = &qword_C52A8;
    v5 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v4 = &qword_C77C0;
    v5 = type metadata accessor for ChapterTitleContent;
  }

  v6 = sub_55E48(v4, v5);
LABEL_11:
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);

  v9 = COERCE_DOUBLE(v8(ObjectType, v6));
  v11 = v10;

  if (v11)
  {
    return 1;
  }

  if (v3 <= 1)
  {
    if (!v3)
    {
      v14 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_22;
    }

    v12 = &qword_C52B0;
    v13 = type metadata accessor for LinkContent;
  }

  else if (v3 == 2)
  {
    v12 = &unk_C77D0;
    v13 = type metadata accessor for SilentContent;
  }

  else if (v3 == 3)
  {
    v12 = &qword_C52A8;
    v13 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v12 = &qword_C77C0;
    v13 = type metadata accessor for ChapterTitleContent;
  }

  v14 = sub_55E48(v12, v13);
LABEL_22:
  v15 = swift_getObjectType();
  v16 = *(v14 + 56);

  v17 = COERCE_DOUBLE(v16(v15, v14));
  v19 = v18;

  if (v19)
  {
    return 1;
  }

  v21 = v9;
  v22 = v17;
  if (v17 < v9)
  {
    return 0;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v23 = &unk_C77D0;
      v24 = type metadata accessor for SilentContent;
    }

    else if (v3 == 3)
    {
      v23 = &qword_C52A8;
      v24 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v23 = &qword_C77C0;
      v24 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_36;
  }

  if (v3)
  {
    v23 = &qword_C52B0;
    v24 = type metadata accessor for LinkContent;
LABEL_36:
    v25 = sub_55E48(v23, v24);
    goto LABEL_37;
  }

  v25 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_37:
  v26 = swift_getObjectType();
  v27 = *(v25 + 16);

  v28 = COERCE_DOUBLE(v27(v26, v25));
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    v31 = v28 * 0.4;
    if (v28 < 1800.0)
    {
      v31 = 720.0;
    }

    if (v31 < vabdd_f64(v28, v21))
    {
      return 0;
    }
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v32 = &unk_C77D0;
      v33 = type metadata accessor for SilentContent;
    }

    else if (v3 == 3)
    {
      v32 = &qword_C52A8;
      v33 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v32 = &qword_C77C0;
      v33 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_50;
  }

  if (v3)
  {
    v32 = &qword_C52B0;
    v33 = type metadata accessor for LinkContent;
LABEL_50:
    v34 = sub_55E48(v32, v33);
    goto LABEL_51;
  }

  v34 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_51:
  v35 = swift_getObjectType();
  v36 = *(v34 + 24);

  v37 = COERCE_DOUBLE(v36(v35, v34));
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    v40 = v37 * 0.4;
    if (v37 < 1800.0)
    {
      v40 = 720.0;
    }

    if (v40 < vabdd_f64(v37, v22))
    {
      return 0;
    }
  }

  if (!a2)
  {
    return 1;
  }

  v41 = *(a2 + 16) >> 61;
  if (v41 <= 1)
  {
    if (!v41)
    {
      v44 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_66;
    }

    v42 = &qword_C52B0;
    v43 = type metadata accessor for LinkContent;
  }

  else if (v41 == 2)
  {
    v42 = &unk_C77D0;
    v43 = type metadata accessor for SilentContent;
  }

  else if (v41 == 3)
  {
    v42 = &qword_C52A8;
    v43 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v42 = &qword_C77C0;
    v43 = type metadata accessor for ChapterTitleContent;
  }

  v44 = sub_55E48(v42, v43);
LABEL_66:
  v45 = swift_getObjectType();
  v46 = *(v44 + 32);

  v47 = COERCE_DOUBLE(v46(v45, v44));
  v49 = v48;

  if (v49)
  {
    return 1;
  }

  v50 = *(a2 + 16) >> 61;
  if (v50 <= 1)
  {
    if (!v50)
    {
      v53 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
      goto LABEL_77;
    }

    v51 = &qword_C52B0;
    v52 = type metadata accessor for LinkContent;
  }

  else if (v50 == 2)
  {
    v51 = &unk_C77D0;
    v52 = type metadata accessor for SilentContent;
  }

  else if (v50 == 3)
  {
    v51 = &qword_C52A8;
    v52 = type metadata accessor for SpeakerContent;
  }

  else
  {
    v51 = &qword_C77C0;
    v52 = type metadata accessor for ChapterTitleContent;
  }

  v53 = sub_55E48(v51, v52);
LABEL_77:
  v54 = swift_getObjectType();
  v55 = *(v53 + 56);

  v56 = COERCE_DOUBLE(v55(v54, v53));
  v58 = v57;

  if (v58)
  {
    return 1;
  }

  result = 0;
  if (v21 >= v47 && v22 >= v56)
  {
    return sub_52394() >= v21 - v56;
  }

  return result;
}

uint64_t sub_53B1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2 >> 62)
  {
    v5 = sub_98778();
    if (v5)
    {
LABEL_3:
      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v4 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          v8 = *(v4 + 8 * v7 + 32);

          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_136;
      }

      v8 = sub_986C8();
LABEL_8:
      v9 = *(v8 + 16) >> 61;
      if (v9 <= 1)
      {
        if (!v9)
        {
          v12 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
          goto LABEL_18;
        }

        v10 = &qword_C52B0;
        v11 = type metadata accessor for LinkContent;
      }

      else if (v9 == 2)
      {
        v10 = &unk_C77D0;
        v11 = type metadata accessor for SilentContent;
      }

      else if (v9 == 3)
      {
        v10 = &qword_C52A8;
        v11 = type metadata accessor for SpeakerContent;
      }

      else
      {
        v10 = &qword_C77C0;
        v11 = type metadata accessor for ChapterTitleContent;
      }

      v12 = sub_55E48(v10, v11);
LABEL_18:
      ObjectType = swift_getObjectType();

      v14 = COERCE_DOUBLE(sub_4B464(ObjectType, v12));
      v16 = v15;

      if (v16)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      v18 = *(a1 + 16);
      v19 = v18 >> 61;
      v20 = *(v8 + 16);
      v21 = v20 >> 61;
      if (v18 >> 61 == 2)
      {
        if (v21 == 2)
        {
          v22 = v20 & 0x1FFFFFFFFFFFFFFFLL;
          v23 = *(&stru_20.fileoff + (v18 & 0x1FFFFFFFFFFFFFFFLL));
          if (*(&stru_20.filesize + (v18 & 0x1FFFFFFFFFFFFFFFLL)))
          {
            v23 = v17;
          }

          *(&stru_20.fileoff + (v20 & 0x1FFFFFFFFFFFFFFFLL)) = v23;
          *(&stru_20.filesize + (v20 & 0x1FFFFFFFFFFFFFFFLL)) = 0;
          v24 = *&stru_20.segname[v18 & 0x1FFFFFFFFFFFFFFFLL];
          v25 = stru_20.segname[(v18 & 0x1FFFFFFFFFFFFFFFLL) + 8];

          *(v22 + 40) = v24;
          *(v22 + 48) = v25;
          goto LABEL_129;
        }

        v29 = v18 & 0x1FFFFFFFFFFFFFFFLL;
        v30 = *(&stru_20.fileoff + (v18 & 0x1FFFFFFFFFFFFFFFLL));
        v31 = *(v29 + 80);
        if (v31)
        {
          if (*(v29 + 48))
          {
            goto LABEL_129;
          }

          v32 = *(v29 + 40);
        }

        else
        {
          v32 = v30;
        }

        if (v32 - v17 > 3.0)
        {
          v92 = *(v29 + 24);
          v91 = *(v29 + 32);
          v90 = *(v29 + 40);
          v89 = *(v29 + 48);
          v88 = *(v29 + 56);
          v87 = *(v29 + 64);
          if (v21 <= 1)
          {
            if (!v21)
            {
              v33 = *(v20 + 24);
              v94 = *(v20 + 16);
              v35 = *(v20 + 32);
              v34 = *(v20 + 40);
              goto LABEL_55;
            }

            v33 = *(&dword_18 + (v20 & 0x1FFFFFFFFFFFFFFFLL));
            v94 = *(&dword_10 + (v20 & 0x1FFFFFFFFFFFFFFFLL));
          }

          else
          {
            if (v21 != 2)
            {
              if (v21 == 3)
              {
                v33 = *&stru_20.segname[(v20 & 0x1FFFFFFFFFFFFFFFLL) + 8];
                v94 = *&stru_20.segname[v20 & 0x1FFFFFFFFFFFFFFFLL];
                v35 = *&stru_20.segname[(v20 & 0x1FFFFFFFFFFFFFFFLL) + 16];
                v34 = *(&stru_20.vmsize + (v20 & 0x1FFFFFFFFFFFFFFFLL));
LABEL_55:

                goto LABEL_63;
              }

              v33 = *&stru_68.segname[v20 & 0x1FFFFFFFFFFFFFFFLL];
              v94 = *&stru_68.segname[(v20 & 0x1FFFFFFFFFFFFFFFLL) - 8];
              v35 = *&stru_68.segname[(v20 & 0x1FFFFFFFFFFFFFFFLL) + 8];

LABEL_62:
              v34 = 0;
LABEL_63:
              type metadata accessor for SilentContent();
              v44 = swift_allocObject();
              *(v44 + 24) = 0;
              *(v44 + 32) = 1;
              *(v44 + 40) = 0;
              *(v44 + 48) = 1;
              *(v44 + 56) = 0;
              *(v44 + 64) = 1;
              *(v44 + 72) = 0;
              *(v44 + 80) = 1;
              *(v44 + 88) = &_swiftEmptyArrayStorage;
              sub_96E58();
              *(v44 + 24) = v92;
              *(v44 + 32) = v91;
              *(v44 + 40) = v90;
              *(v44 + 48) = v89;
              *(v44 + 56) = v88;
              *(v44 + 64) = v87;
              *(v44 + 72) = v30;
              *(v44 + 80) = v31;
              v45 = swift_allocObject();
              *(v45 + 16) = v94;
              *(v45 + 24) = v33;
              *(v45 + 32) = v35;
              *(v45 + 40) = v34;
              *(v45 + 48) = v21;
              *(v44 + 16) = v45;
              v46 = *(v8 + 16) >> 61;
              if (v46 <= 1)
              {
                if (!v46)
                {
                  v49 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
                  goto LABEL_73;
                }

                v47 = &qword_C52B0;
                v48 = type metadata accessor for LinkContent;
              }

              else if (v46 == 2)
              {
                v47 = &unk_C77D0;
                v48 = type metadata accessor for SilentContent;
              }

              else if (v46 == 3)
              {
                v47 = &qword_C52A8;
                v48 = type metadata accessor for SpeakerContent;
              }

              else
              {
                v47 = &qword_C77C0;
                v48 = type metadata accessor for ChapterTitleContent;
              }

              v49 = sub_55E48(v47, v48);
LABEL_73:
              v50 = swift_getObjectType();
              v51 = *(v49 + 24);

              v52 = v51(v50, v49);
              v54 = v53;

              if ((v54 & 1) == 0)
              {
                *(v44 + 24) = v52;
                *(v44 + 32) = 0;
              }

              v55 = *(v8 + 16) >> 61;
              if (v55 <= 1)
              {
                if (!v55)
                {
                  v58 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
                  goto LABEL_85;
                }

                v56 = &qword_C52B0;
                v57 = type metadata accessor for LinkContent;
              }

              else if (v55 == 2)
              {
                v56 = &unk_C77D0;
                v57 = type metadata accessor for SilentContent;
              }

              else if (v55 == 3)
              {
                v56 = &qword_C52A8;
                v57 = type metadata accessor for SpeakerContent;
              }

              else
              {
                v56 = &qword_C77C0;
                v57 = type metadata accessor for ChapterTitleContent;
              }

              v58 = sub_55E48(v56, v57);
LABEL_85:
              v59 = swift_getObjectType();
              v60 = *(v58 + 56);

              v61 = v60(v59, v58);
              v63 = v62;

              if ((v63 & 1) == 0)
              {
                *(v44 + 56) = v61;
                *(v44 + 64) = 0;
              }

              v64 = *(v8 + 16) >> 61;
              if (v64 <= 1)
              {
                if (!v64)
                {
                  v67 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
                  goto LABEL_97;
                }

                v65 = &qword_C52B0;
                v66 = type metadata accessor for LinkContent;
              }

              else if (v64 == 2)
              {
                v65 = &unk_C77D0;
                v66 = type metadata accessor for SilentContent;
              }

              else if (v64 == 3)
              {
                v65 = &qword_C52A8;
                v66 = type metadata accessor for SpeakerContent;
              }

              else
              {
                v65 = &qword_C77C0;
                v66 = type metadata accessor for ChapterTitleContent;
              }

              v67 = sub_55E48(v65, v66);
LABEL_97:
              v68 = swift_getObjectType();
              v69 = *(v67 + 56);

              v70 = COERCE_DOUBLE(v69(v68, v67));
              v72 = v71;

              if ((v72 & 1) == 0 && (*(v29 + 64) & 1) == 0 && (*(v29 + 80) & 1) == 0)
              {
                *(v44 + 72) = *(v29 + 72) - *(v29 + 56) + v70;
                *(v44 + 80) = 0;
              }

              type metadata accessor for TranscriptContentViewModel();
              *(swift_allocObject() + 16) = v44 | 0x4000000000000000;

              sub_97FA8();
              if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_97FD8();
              }

              sub_98008();
            }

            v94 = *(&dword_10 + (v20 & 0x1FFFFFFFFFFFFFFFLL));

            v33 = 0;
          }

          v35 = 0;
          goto LABEL_62;
        }

LABEL_129:
      }

      if (v21 == 2)
      {
        v26 = v20 & 0x1FFFFFFFFFFFFFFFLL;
        if (v19 <= 1)
        {
          if (!v19)
          {
            v36 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_46:
            v37 = swift_getObjectType();

            v38 = COERCE_DOUBLE(sub_4B464(v37, v36));
            v40 = v39;

            if ((v40 & 1) != 0 || v17 >= v38)
            {
LABEL_121:

              goto LABEL_127;
            }

            v95 = v26;
            if (v19 <= 1)
            {
              if (!v19)
              {
                v43 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
                goto LABEL_108;
              }

              v41 = &qword_C52B0;
              v42 = type metadata accessor for LinkContent;
            }

            else if (v19 == 2)
            {
              v41 = &unk_C77D0;
              v42 = type metadata accessor for SilentContent;
            }

            else if (v19 == 3)
            {
              v41 = &qword_C52A8;
              v42 = type metadata accessor for SpeakerContent;
            }

            else
            {
              v41 = &qword_C77C0;
              v42 = type metadata accessor for ChapterTitleContent;
            }

            v43 = sub_55E48(v41, v42);
LABEL_108:
            v74 = swift_getObjectType();
            v93 = *(v43 + 16);

            v75 = v93(v74, v43);
            v77 = v76;

            *(v95 + 40) = v75;
            *(v95 + 48) = v77 & 1;
            if (v19 <= 1)
            {
              if (!v19)
              {
                v80 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_118:
                v81 = swift_getObjectType();
                v82 = *(v80 + 32);

                v83 = v82(v81, v80);
                v85 = v84;

                v86 = v17;
                if ((v85 & 1) == 0)
                {
                  v86 = *&v83;
                }

                *(v95 + 72) = v86;
                *(v95 + 80) = 0;
                goto LABEL_121;
              }

              v78 = &qword_C52B0;
              v79 = type metadata accessor for LinkContent;
            }

            else if (v19 == 2)
            {
              v78 = &unk_C77D0;
              v79 = type metadata accessor for SilentContent;
            }

            else if (v19 == 3)
            {
              v78 = &qword_C52A8;
              v79 = type metadata accessor for SpeakerContent;
            }

            else
            {
              v78 = &qword_C77C0;
              v79 = type metadata accessor for ChapterTitleContent;
            }

            v80 = sub_55E48(v78, v79);
            goto LABEL_118;
          }

          v27 = &qword_C52B0;
          v28 = type metadata accessor for LinkContent;
        }

        else if (v19 == 2)
        {
          v27 = &unk_C77D0;
          v28 = type metadata accessor for SilentContent;
        }

        else if (v19 == 3)
        {
          v27 = &qword_C52A8;
          v28 = type metadata accessor for SpeakerContent;
        }

        else
        {
          v27 = &qword_C77C0;
          v28 = type metadata accessor for ChapterTitleContent;
        }

        v36 = sub_55E48(v27, v28);
        goto LABEL_46;
      }

LABEL_127:

      sub_97FA8();
      if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_128:
        sub_98008();
        goto LABEL_129;
      }

LABEL_136:
      sub_97FD8();
      goto LABEL_128;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 16) >> 61 != 2)
  {
    goto LABEL_127;
  }

  sub_97FA8();
  if (*(&dword_10 + (*a2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a2 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_97FD8();
  }

  return sub_98008();
}

unint64_t sub_54A68(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 >> 62;
  if (v3)
  {
    result = sub_98778();
    if (result < 2)
    {
      return result;
    }

    result = sub_98778();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (*a1 & 0xFFFFFFFFFFFFFF8));
    if (result < 2)
    {
      return result;
    }
  }

  v5 = __OFSUB__(result--, 1);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_82;
      }

      if (result >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v6 = *(v2 + 8 * result + 32);

      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  v6 = sub_986C8();
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!v3)
  {
LABEL_11:
    v8 = *(v7 + 16);
    goto LABEL_15;
  }

LABEL_14:
  v8 = sub_98778();
LABEL_15:
  v5 = __OFSUB__(v8, 2);
  result = v8 - 2;
  if (v5)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (!v1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        v9 = *(v2 + 8 * result + 32);

        goto LABEL_21;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v9 = sub_986C8();
LABEL_21:
  if (*(v6 + 16) >> 61)
  {
    goto LABEL_38;
  }

  if (*(v9 + 16) >> 61)
  {
    goto LABEL_38;
  }

  v10 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
  v11 = *(v10 + 32);
  v12 = type metadata accessor for TextContent(0);

  v13 = v11(v12, v10);
  v15 = v14;

  if (v15)
  {
    goto LABEL_38;
  }

  v16 = *(v9 + 16) >> 61;
  v46 = v10;
  v48 = v1;
  v49 = *&v13;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = &unk_C77D0;
      v18 = type metadata accessor for SilentContent;
    }

    else if (v16 == 3)
    {
      v17 = &qword_C52A8;
      v18 = type metadata accessor for SpeakerContent;
    }

    else
    {
      v17 = &qword_C77C0;
      v18 = type metadata accessor for ChapterTitleContent;
    }

    goto LABEL_32;
  }

  v19 = v10;
  if (v16)
  {
    v17 = &qword_C52B0;
    v18 = type metadata accessor for LinkContent;
LABEL_32:
    v19 = sub_55E48(v17, v18);
  }

  ObjectType = swift_getObjectType();
  v21 = *(v19 + 56);

  v22 = COERCE_DOUBLE(v21(ObjectType, v19));
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    v25 = v49 - v22;
    if (v49 - v22 > 0.0 && v25 < 3.0)
    {
      if (v3)
      {
        v26 = sub_98778();
      }

      else
      {
        v26 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      }

      v27 = v46;
      v5 = __OFSUB__(v26, 1);
      result = v26 - 1;
      if (!v5)
      {
        if (v48)
        {
          v28 = sub_986C8();
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          if (result >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v28 = *(v2 + 8 * result + 32);
        }

        v29 = *(v28 + 16) >> 61;
        if (v29 <= 1)
        {
          v32 = v46;
          if (!v29)
          {
            goto LABEL_58;
          }

          v30 = &qword_C52B0;
          v31 = type metadata accessor for LinkContent;
        }

        else if (v29 == 2)
        {
          v30 = &unk_C77D0;
          v31 = type metadata accessor for SilentContent;
        }

        else if (v29 == 3)
        {
          v30 = &qword_C52A8;
          v31 = type metadata accessor for SpeakerContent;
        }

        else
        {
          v30 = &qword_C77C0;
          v31 = type metadata accessor for ChapterTitleContent;
        }

        v32 = sub_55E48(v30, v31);
LABEL_58:

        v33 = *(v9 + 16) >> 61;
        v45 = v32;
        if (v33 <= 1)
        {
          if (!v33)
          {
            goto LABEL_67;
          }

          v34 = &qword_C52B0;
          v35 = type metadata accessor for LinkContent;
        }

        else if (v33 == 2)
        {
          v34 = &unk_C77D0;
          v35 = type metadata accessor for SilentContent;
        }

        else if (v33 == 3)
        {
          v34 = &qword_C52A8;
          v35 = type metadata accessor for SpeakerContent;
        }

        else
        {
          v34 = &qword_C77C0;
          v35 = type metadata accessor for ChapterTitleContent;
        }

        v27 = sub_55E48(v34, v35);
LABEL_67:
        v47 = swift_getObjectType();
        v36 = swift_getObjectType();
        v37 = *(v27 + 56);

        v38 = v37(v36, v27);
        LOBYTE(v36) = v39;

        (*(v45 + 40))(v38, v36 & 1, v47);

        if (v3)
        {
          v40 = sub_98778();
        }

        else
        {
          v40 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
        }

        v5 = __OFSUB__(v40, 1);
        result = v40 - 1;
        if (!v5)
        {
          if (v48)
          {
            v41 = sub_986C8();
            goto LABEL_76;
          }

          if ((result & 0x8000000000000000) == 0)
          {
            if (result < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
            {
              v41 = *(v2 + 8 * result + 32);

LABEL_76:
              v42 = *(v41 + 16);
              if (v42 >> 61)
              {
              }

              else
              {

                v43 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime;
                if (*(v42 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime) != v25)
                {
                  KeyPath = swift_getKeyPath();
                  __chkstk_darwin(KeyPath);
                  sub_55E48(&qword_C56A0, type metadata accessor for TextContent);
                  sub_96298();
                }

                *(v42 + v43) = v25;
              }

              goto LABEL_39;
            }

LABEL_91:
            __break(1u);
            return result;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        goto LABEL_87;
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }
  }

LABEL_38:

LABEL_39:
}

void *sub_55284(void *result)
{
  v1 = *result;
  v2 = *result & 0xFFFFFFFFFFFFFF8;
  if (*result >> 62)
  {
LABEL_60:
    result = sub_98778();
    v3 = result;
  }

  else
  {
    v3 = *(&dword_10 + (*result & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v3 == v4)
    {
      return result;
    }

    v6 = v1 + 8 * v4;
    if (v5)
    {
      v7 = sub_986C8();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    if (((*(v7 + 16) >> 61) | 2) == 2)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_59;
    }
  }

  if (v5)
  {
    v9 = sub_986C8();
  }

  else
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    v9 = *(v6 + 32);
  }

  v10 = *(v9 + 16);
  if (!(v10 >> 61))
  {
    swift_getKeyPath();
    sub_55E48(&qword_C56A0, type metadata accessor for TextContent);

    sub_962A8();

    v11 = *(v10 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerStartTime + 8);

    if (v11)
    {
    }

    v12 = *(v9 + 16);
    if (v12 >> 61)
    {
LABEL_45:
      v24 = *(v9 + 16) >> 61;
      if (v24 <= 1)
      {
        if (!v24)
        {
          v27 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_55:
          ObjectType = swift_getObjectType();
          v29 = *(v27 + 40);

          v29(0, 0, ObjectType, v27);
        }

        v25 = &qword_C52B0;
        v26 = type metadata accessor for LinkContent;
      }

      else if (v24 == 2)
      {
        v25 = &unk_C77D0;
        v26 = type metadata accessor for SilentContent;
      }

      else if (v24 == 3)
      {
        v25 = &qword_C52A8;
        v26 = type metadata accessor for SpeakerContent;
      }

      else
      {
        v25 = &qword_C77C0;
        v26 = type metadata accessor for ChapterTitleContent;
      }

      v27 = sub_55E48(v25, v26);
      goto LABEL_55;
    }

    if (v5)
    {

      v13 = sub_986C8();
      goto LABEL_28;
    }

    if (v4 < *(v2 + 16))
    {
      v13 = *(v6 + 32);

LABEL_28:
      v14 = *(v13 + 16) >> 61;
      if (v14 <= 1)
      {
        if (!v14)
        {
          v17 = sub_55E48(&qword_C77E0, type metadata accessor for TextContent);
LABEL_38:

          v18 = swift_getObjectType();
          v19 = COERCE_DOUBLE((*(v17 + 32))(v18, v17));
          v21 = v20;

          if (v21)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v19;
          }

          if (*(v12 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime) == v22)
          {
            *(v12 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime) = v22;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            __chkstk_darwin(KeyPath);
            sub_96298();
          }

          goto LABEL_45;
        }

        v15 = &qword_C52B0;
        v16 = type metadata accessor for LinkContent;
      }

      else if (v14 == 2)
      {
        v15 = &unk_C77D0;
        v16 = type metadata accessor for SilentContent;
      }

      else if (v14 == 3)
      {
        v15 = &qword_C52A8;
        v16 = type metadata accessor for SpeakerContent;
      }

      else
      {
        v15 = &qword_C77C0;
        v16 = type metadata accessor for ChapterTitleContent;
      }

      v17 = sub_55E48(v15, v16);
      goto LABEL_38;
    }

    goto LABEL_62;
  }
}

void *sub_55890(void *result)
{
  v2 = *result;
  v3 = *result >> 62;
  if (v3)
  {
    v28 = result;
    v4 = sub_98778();
    result = v28;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (*result & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        v7 = *(v2 + 8 * v6 + 32);

        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_48;
    }
  }

  v7 = sub_986C8();
LABEL_8:
  v8 = *(v7 + 16);
  if (v8 >> 61 != 2)
  {
    if (!(v8 >> 61))
    {
      swift_getKeyPath();
      sub_55E48(&qword_C56A0, type metadata accessor for TextContent);

      sub_962A8();

      v9 = (v8 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerEndTime);
      if (*(v8 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerEndTime + 8))
      {
        goto LABEL_40;
      }

      v10 = *v9;
      v11 = *v9;
      if (sub_98978() - v11 <= 3.0)
      {
        goto LABEL_40;
      }

      v12 = sub_98978();
      v13 = *(v7 + 16);
      v14 = v13 >> 61;
      if ((v13 >> 61) <= 1)
      {
        if (!v14)
        {
          v16 = *(v13 + 24);
          v29 = *(v13 + 16);
          v17 = *(v13 + 32);
          v18 = *(v13 + 40);
          goto LABEL_33;
        }

        v24 = v13 & 0x1FFFFFFFFFFFFFFFLL;
        v16 = *(v24 + 24);
        v29 = *(v24 + 16);
      }

      else
      {
        v15 = (v13 & 0x1FFFFFFFFFFFFFFFLL);
        if (v14 != 2)
        {
          if (v14 == 3)
          {
            v16 = v15[6];
            v29 = v15[5];
            v17 = v15[7];
            v18 = v15[8];
LABEL_33:

LABEL_39:
            v25 = v12;
            type metadata accessor for SilentContent();
            v26 = swift_allocObject();
            *(v26 + 24) = 0;
            *(v26 + 32) = 1;
            *(v26 + 40) = 0;
            *(v26 + 48) = 1;
            *(v26 + 56) = 0;
            *(v26 + 64) = 1;
            *(v26 + 72) = 0;
            *(v26 + 80) = 1;
            *(v26 + 88) = &_swiftEmptyArrayStorage;
            sub_96E58();
            *(v26 + 24) = 0;
            *(v26 + 32) = 1;
            *(v26 + 40) = 0;
            *(v26 + 48) = 1;
            *(v26 + 56) = v10;
            *(v26 + 64) = 0;
            *(v26 + 72) = v25;
            *(v26 + 80) = 0;
            v27 = swift_allocObject();
            *(v27 + 16) = v29;
            *(v27 + 24) = v16;
            *(v27 + 32) = v17;
            *(v27 + 40) = v18;
            *(v27 + 48) = v14;
            *(v26 + 16) = v27;
            type metadata accessor for TranscriptContentViewModel();
            *(swift_allocObject() + 16) = v26 | 0x4000000000000000;

            sub_97FE8();

LABEL_40:
          }

          v16 = v15[15];
          v29 = v15[14];
          v17 = v15[16];

LABEL_38:
          v18 = 0;
          goto LABEL_39;
        }

        v29 = v15[2];

        v16 = 0;
      }

      v17 = 0;
      goto LABEL_38;
    }

    goto LABEL_22;
  }

  if (v3)
  {
    result = sub_98778();
    if (result)
    {
LABEL_18:
      v19 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        if (v1)
        {

          v20 = sub_986C8();
          goto LABEL_28;
        }

        if ((v19 & 0x8000000000000000) == 0)
        {
          if (v19 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            v20 = *(v2 + 8 * v19 + 32);

LABEL_28:
            v21 = *(v20 + 16);
            if (v21 >> 61 == 2)
            {
              v22 = v21 & 0x1FFFFFFFFFFFFFFFLL;

              v23 = sub_98978();

              *(v22 + 72) = v23;
              *(v22 + 80) = 0;
            }

            else
            {
            }

            goto LABEL_22;
          }

LABEL_50:
          __break(1u);
          return result;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }
  }

  else
  {
    result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_18;
    }
  }

LABEL_22:
}

void *sub_55D2C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_C7EF0);
    v4 = sub_97FF8();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_55DF0()
{
  sub_20438(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_55E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_19PodcastsTranscripts26TranscriptContentViewStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_55ED4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_55F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_55F8C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

void sub_55FC8(uint64_t a1, char *a2, Swift::UInt64 a3)
{
  if (a2 == &dword_0 + 1)
  {
    sub_988E8(0);
  }

  else
  {
    sub_988E8(1uLL);
    if (a2)
    {
      sub_988F8(1u);
      v5 = a2;
      sub_98458();
      sub_375D8(a2);
    }

    else
    {
      sub_988F8(0);
    }

    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    sub_98908(v6);
  }
}

Swift::Int sub_56068()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_988D8();
  sub_55FC8(v4, v1, v2);
  return sub_98918();
}

Swift::Int sub_560BC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_988D8();
  sub_55FC8(v4, v1, v2);
  return sub_98918();
}

unint64_t sub_5611C()
{
  result = qword_C65B0;
  if (!qword_C65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C65B0);
  }

  return result;
}

BOOL sub_56170(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a1 == &dword_0 + 1)
  {
    return a3 == &dword_0 + 1;
  }

  if (a3 == &dword_0 + 1)
  {
    return 0;
  }

  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a2;
    type metadata accessor for StringTextRange();
    sub_3C610(a3);
    sub_3C610(a1);
    v9 = sub_98448();
    sub_375D8(a1);
    sub_375D8(a3);
    a2 = v7;
    a4 = v6;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  return *&a2 == *&a4;
}

uint64_t sub_5624C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v49 = a5;
  v50 = a6;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a1;
  v9 = sub_96788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v41 = *(v10 + 16);
  v17 = v16;
  v41(&v39 - v14, a1, v13);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v40 = v18 + v11;
  v19 = (v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v39 = *(v10 + 32);
  v22 = v15;
  v23 = v17;
  v39(v21 + v18, v22, v17);
  v24 = v50;
  v25 = v19;
  *(v21 + v19) = v49;
  *(v21 + v20) = v24;
  v26 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v44;
  *v26 = v43;
  v26[1] = v27;
  v28 = v42;
  v29 = v23;
  (v41)(v42, v48, v23);
  v30 = (v40 + 39) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v39(v31 + v18, v28, v29);
  v32 = v31 + v25;
  v33 = v46;
  *v32 = v45;
  *(v32 + 8) = v33;
  v34 = v47;
  *(v32 + 16) = v47;
  *(v32 + 24) = 0;
  v35 = (v31 + v30);
  *v35 = sub_577D0;
  v35[1] = v21;
  v36 = v34;

  v37 = v50;

  sub_24068(sub_5793C, v31);
}

unint64_t sub_564D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = a6;
  v113 = a5;
  v132 = a2;
  v9 = sub_97888();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_978A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  __chkstk_darwin(v16 - 8);
  v131 = &v101 - v17;
  v18 = sub_96778();
  KeyPath = *(v18 - 8);
  __chkstk_darwin(v18);
  v111 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v25 = &v101 - v22;
  v141 = &_swiftEmptyArrayStorage;
  v118 = *(a1 + 16);
  v117 = v12;
  v116 = v14;
  if (!v118)
  {
    v33 = &_swiftEmptyArrayStorage;
    goto LABEL_102;
  }

  v104 = a4;
  v105 = v9;
  v26 = *(KeyPath + 16);
  v112 = a1 + ((*(KeyPath + 80) + 32) & ~*(KeyPath + 80));
  v27 = v23;
  v107 = KeyPath + 16;
  v106 = v26;
  (v26)(&v101 - v22, v24);
  sub_96768();
  v28 = "ing";
  v108 = v10;
  v109 = v13;
  v110 = v27;
  if (v29 <= 3.0)
  {
    v102 = *(KeyPath + 8);
    v102(v25, v27);
    v33 = &_swiftEmptyArrayStorage;
  }

  else
  {
    sub_96768();
    v31 = v30;
    type metadata accessor for SilentContent();
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 32) = 1;
    *(v32 + 40) = 0;
    *(v32 + 48) = 1;
    *(v32 + 56) = 0;
    *(v32 + 64) = 1;
    *(v32 + 72) = 0;
    *(v32 + 80) = 1;
    *(v32 + 88) = &_swiftEmptyArrayStorage;
    aBlock = xmmword_9B250;
    sub_96E58();
    *(v32 + 32) = 0;
    *(v32 + 40) = v31;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 1;
    *(v32 + 72) = 0;
    *(v32 + 80) = 1;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    type metadata accessor for TranscriptContentViewModel();
    *(swift_allocObject() + 16) = v32 | 0x4000000000000000;

    sub_97FA8();
    if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_92:
      sub_97FD8();
    }

    sub_98008();

    v102 = *(KeyPath + 8);
    v102(v25, v110);
    v33 = v141;
  }

  v103 = KeyPath;
  v134 = *(KeyPath + 72);
  v119 = *(v28 + 37);
  v34 = v112;
  v35 = v118;
  KeyPath = v131;
  v130 = a3;
  do
  {
    sub_96678();
    v25 = sub_579F4(KeyPath, a3);
    sub_57EE0(KeyPath);
    v28 = (v33 >> 62);
    if (v33 >> 62)
    {
      v36 = sub_98778();
      if (!v36)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v36 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = __OFSUB__(v36, 1);
    v38 = v36 - 1;
    if (v37)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v39 = sub_986C8();
    }

    else
    {
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      if (v38 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_87;
      }

      v39 = *(v33 + 8 * v38 + 32);
    }

    v40 = *(v39 + 16);
    if (v40 >> 61)
    {
      goto LABEL_28;
    }

    v129 = v33 & 0xC000000000000001;
    v133 = v40;

    v41 = sub_58018(&qword_C77E0, type metadata accessor for TextContent);
    v42 = *(v41 + 32);
    v43 = type metadata accessor for TextContent(0);
    v44 = v42(v43, v41);
    if (v45)
    {
      KeyPath = v131;
      if (v25[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceStartTime + 8])
      {

        a3 = v130;
        goto LABEL_29;
      }

      v46 = *&v25[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceStartTime];
    }

    else
    {
      v46 = *&v44;
      KeyPath = v131;
    }

    v47 = v133;
    v48 = (*(v41 + 56))(v43, v41);
    if (v49)
    {
      a3 = v130;
      if (*(v47 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceEndTime + 8))
      {
        goto LABEL_28;
      }

      v50 = *(v47 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceEndTime);
    }

    else
    {
      v50 = *&v48;
      a3 = v130;
    }

    if (v46 - v50 <= 3.0)
    {
LABEL_28:

      goto LABEL_29;
    }

    v128 = *(v47 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceEndTime);
    v127 = *(v47 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceEndTime + 8);
    v126 = *&v25[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceStartTime];
    v125 = v25[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceStartTime + 8];
    swift_getKeyPath();
    *&aBlock = v47;
    sub_58018(&qword_C56A0, type metadata accessor for TextContent);
    sub_962A8();

    v51 = *(v47 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerEndTime);
    v124 = *(v47 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerEndTime + 8);
    KeyPath = swift_getKeyPath();
    *&aBlock = v25;
    sub_962A8();

    v52 = *&v25[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerStartTime];
    a3 = v25[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerStartTime + 8];
    v123 = v51;
    if (v28)
    {
      v53 = sub_98778();
    }

    else
    {
      v53 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    }

    v122 = a3;
    if (v53)
    {
      v54 = v53 - 1;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_89;
      }

      if (v129)
      {
        v55 = sub_986C8();
      }

      else
      {
        if ((v54 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        if (v54 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_91;
        }

        v55 = *(v33 + 8 * v54 + 32);
      }

      v57 = *(v55 + 16);
      v58 = v57 >> 61;
      if ((v57 >> 61) <= 1)
      {
        if (v58)
        {
          v64 = v57 & 0x1FFFFFFFFFFFFFFFLL;
          v56 = *(v64 + 24);
          v129 = *(v64 + 16);

          v121 = 0;
          v120 = 0;
          v28 = (&dword_0 + 1);
        }

        else
        {
          v56 = *(v57 + 24);
          v129 = *(v57 + 16);
          v63 = *(v57 + 32);
          v62 = *(v57 + 40);
          v121 = v63;
          v120 = v62;

          v28 = 0;
        }
      }

      else
      {
        v59 = (v57 & 0x1FFFFFFFFFFFFFFFLL);
        if (v58 == 2)
        {
          v129 = v59[2];

          v56 = 0;
          v121 = 0;
          v120 = 0;
          v28 = (&dword_0 + 2);
        }

        else if (v58 == 3)
        {
          v56 = v59[6];
          v129 = v59[5];
          v61 = v59[7];
          v60 = v59[8];
          v121 = v61;
          v120 = v60;

          v28 = (&dword_0 + 3);
        }

        else
        {
          v56 = v59[15];
          v129 = v59[14];
          v121 = v59[16];

          v120 = 0;
          v28 = &dword_4;
        }
      }
    }

    else
    {
      v129 = 0;
      v56 = 0;
      v121 = 0;
      v120 = 0;
      v28 = (&stru_B8 + 71);
    }

    type metadata accessor for SilentContent();
    KeyPath = swift_allocObject();
    *(KeyPath + 24) = 0;
    *(KeyPath + 32) = 1;
    *(KeyPath + 40) = 0;
    *(KeyPath + 48) = 1;
    *(KeyPath + 56) = 0;
    *(KeyPath + 64) = 1;
    *(KeyPath + 72) = 0;
    *(KeyPath + 80) = 1;
    *(KeyPath + 88) = &_swiftEmptyArrayStorage;
    v65 = (KeyPath + 88);
    aBlock = v119;
    sub_96E58();
    *(KeyPath + 24) = v128;
    *(KeyPath + 32) = v127;
    *(KeyPath + 40) = v126;
    *(KeyPath + 48) = v125;
    *(KeyPath + 56) = v123;
    *(KeyPath + 64) = v124;
    *(KeyPath + 72) = v52;
    *(KeyPath + 80) = v122;
    if (v53)
    {
      v66 = swift_allocObject();
      *(v66 + 16) = v129;
      *(v66 + 24) = v56;
      v67 = v120;
      *(v66 + 32) = v121;
      *(v66 + 40) = v67;
      *(v66 + 48) = v28;
    }

    else
    {
      v66 = 0;
    }

    a3 = v130;
    *(KeyPath + 16) = v66;
    if (v50 > v46)
    {
      goto LABEL_88;
    }

    swift_beginAccess();
    v68 = *v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v65 = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = sub_15AC8(0, *(v68 + 2) + 1, 1, v68);
      *v65 = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      v68 = sub_15AC8((v70 > 1), v71 + 1, 1, v68);
    }

    *(v68 + 2) = v71 + 1;
    v72 = &v68[16 * v71];
    *(v72 + 4) = v50;
    *(v72 + 5) = v46;
    *(KeyPath + 88) = v68;
    swift_endAccess();
    type metadata accessor for TranscriptContentViewModel();
    *(swift_allocObject() + 16) = KeyPath | 0x4000000000000000;

    sub_97FA8();
    if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_97FD8();
    }

    sub_98008();

    KeyPath = v131;
LABEL_29:
    type metadata accessor for TranscriptContentViewModel();
    *(swift_allocObject() + 16) = v25;

    sub_97FA8();
    if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_97FD8();
    }

    sub_98008();

    v33 = v141;
    v34 += v134;
    --v35;
  }

  while (v35);
  v73 = v111;
  v74 = v110;
  v106(v111, v112 + v134 * (v118 - 1), v110);
  sub_966F8();
  if (v75)
  {
    v102(v73, v74);
    v9 = v105;
    v10 = v108;
    v13 = v109;
    goto LABEL_102;
  }

  v76 = sub_98978();
  sub_96718();
  v10 = v108;
  v13 = v109;
  if (v76 - v77 <= 3.0)
  {
    v102(v73, v74);
    goto LABEL_101;
  }

  sub_96718();
  v79 = v78;
  v80 = sub_98978();
  if (v33 >> 62)
  {
    v81 = sub_98778();
    if (!v81)
    {
      goto LABEL_94;
    }

LABEL_70:
    result = v81 - 1;
    if (__OFSUB__(v81, 1))
    {
      __break(1u);
    }

    else if ((v33 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        v83 = *(v33 + 8 * result + 32);

        goto LABEL_75;
      }

      __break(1u);
      return result;
    }

    v83 = sub_986C8();
LABEL_75:
    v84 = *(v83 + 16);
    v85 = v84 >> 61;
    v86 = v10;
    if ((v84 >> 61) <= 1)
    {
      if (v85)
      {
        v92 = v84 & 0x1FFFFFFFFFFFFFFFLL;
        v88 = *(v92 + 24);
        v134 = *(v92 + 16);

        v89 = 0;
        v90 = 0;
        v91 = 1;
      }

      else
      {
        v88 = *(v84 + 24);
        v134 = *(v84 + 16);
        v89 = *(v84 + 32);
        v90 = *(v84 + 40);

        v91 = 0;
      }
    }

    else
    {
      v87 = (v84 & 0x1FFFFFFFFFFFFFFFLL);
      if (v85 == 2)
      {
        v134 = v87[2];

        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 2;
      }

      else if (v85 == 3)
      {
        v88 = v87[6];
        v134 = v87[5];
        v89 = v87[7];
        v90 = v87[8];

        v91 = 3;
      }

      else
      {
        v88 = v87[15];
        v134 = v87[14];
        v89 = v87[16];

        v90 = 0;
        v91 = 4;
      }
    }

    goto LABEL_95;
  }

  v81 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
  if (v81)
  {
    goto LABEL_70;
  }

LABEL_94:
  v86 = v10;
  v134 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v91 = -1;
LABEL_95:
  type metadata accessor for SilentContent();
  v93 = swift_allocObject();
  *(v93 + 24) = 0;
  *(v93 + 32) = 1;
  *(v93 + 40) = 0;
  *(v93 + 48) = 1;
  *(v93 + 56) = 0;
  *(v93 + 64) = 1;
  *(v93 + 72) = 0;
  *(v93 + 80) = 1;
  *(v93 + 88) = &_swiftEmptyArrayStorage;
  aBlock = v119;
  sub_96E58();
  *(v93 + 24) = v79;
  *(v93 + 32) = 0;
  *(v93 + 40) = v80;
  *(v93 + 48) = 0;
  *(v93 + 56) = 0;
  *(v93 + 64) = 1;
  *(v93 + 72) = 0;
  *(v93 + 80) = 1;
  if (v81)
  {
    v94 = swift_allocObject();
    *(v94 + 16) = v134;
    *(v94 + 24) = v88;
    *(v94 + 32) = v89;
    *(v94 + 40) = v90;
    *(v94 + 48) = v91;
  }

  else
  {
    v94 = 0;
  }

  v10 = v86;
  v13 = v109;
  v95 = v111;
  *(v93 + 16) = v94;
  *(swift_allocObject() + 16) = v93 | 0x4000000000000000;

  sub_97FA8();
  if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_97FD8();
  }

  sub_98008();

  v102(v95, v74);
  v33 = v141;
LABEL_101:
  v9 = v105;
LABEL_102:
  v96 = swift_allocObject();
  v97 = v114;
  v96[2] = v113;
  v96[3] = v97;
  v96[4] = v33;
  v139 = sub_57F88;
  v140 = v96;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v137 = sub_279B0;
  v138 = &block_descriptor_7;
  v98 = _Block_copy(&aBlock);

  v99 = v115;
  sub_97898();
  v135 = &_swiftEmptyArrayStorage;
  sub_58018(&unk_C7910, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C4E18);
  sub_20784();
  v100 = v117;
  sub_98618();
  sub_982F8();
  _Block_release(v98);
  (*(v10 + 8))(v100, v9);
  (*(v116 + 8))(v99, v13);
}

uint64_t sub_57708()
{
  v1 = sub_96788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

unint64_t sub_577D0(uint64_t a1)
{
  v3 = *(sub_96788() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_564D4(a1, v1 + v4, v7, v8, v10, v11);
}

uint64_t sub_57888()
{
  v1 = sub_96788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_5793C(uint64_t a1)
{
  v3 = *(sub_96788() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8));

  return sub_226C4(a1, v1 + v4, v7, v8, v9, v10, v11);
}

char *sub_579F4(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_966E8();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_96688();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_96728();
  v16 = Array<A>.content.getter(v15);
  v18 = v17;

  v19 = sub_96728();
  v43 = sub_58068(v19);

  v44 = v14;
  sub_51054(a1, v14);
  sub_96768();
  v21 = v20;
  sub_96718();
  v23 = v22;
  v24 = *(sub_96728() + 16);

  if (v24 < 2)
  {
    v25 = v7;
    v26 = sub_96728();
    if (*(v26 + 16))
    {
      v28 = v41;
      v27 = v42;
      (*(v41 + 16))(v5, v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v42);

      v29 = v40;
      sub_96698();
      (*(v28 + 8))(v5, v27);
      (*(v25 + 32))(v11, v29, v6);
    }

    else
    {

      (*(v7 + 104))(v11, enum case for TranscriptModel.Sentence.SplitStyle.full(_:), v6);
    }
  }

  else
  {
    (*(v7 + 104))(v11, enum case for TranscriptModel.Sentence.SplitStyle.full(_:), v6);
    v25 = v7;
  }

  type metadata accessor for TextContent(0);
  v30 = swift_allocObject();
  v31 = &v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerStartTime];
  v32 = &v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__playerEndTime];
  *&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__durationFromPlayerStartTimeToFirstWordTime] = 0;
  v33 = OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__translationTargetLanguage;
  v34 = sub_95FC8();
  (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
  v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected] = 0;
  *&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__activeSearchRange] = 0;
  *&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__viewState] = xmmword_9B250;
  *&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__subscriptions] = &_swiftEmptyArrayStorage;
  sub_962D8();
  *(v30 + 2) = v16;
  *(v30 + 3) = v18;
  *(v30 + 4) = v21;
  *(v30 + 5) = v23;
  *(v30 + 6) = v16;
  *(v30 + 7) = v18;
  swift_bridgeObjectRetain_n();
  v35 = v43;
  v36 = sub_41ED0(v16, v18, v43);
  type metadata accessor for TextContent.LiveText(0);
  swift_allocObject();
  *&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__liveText] = sub_45D98(v16, v18, v36);
  *(v30 + 8) = v35;
  sub_582C4(v44, &v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_speaker]);
  v37 = &v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceStartTime];
  *v37 = v21;
  v37[8] = 0;
  v38 = &v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_referenceEndTime];
  *v38 = v23;
  v38[8] = 0;
  *v31 = 0;
  v31[8] = 1;
  *v32 = 0;
  v32[8] = 1;
  (*(v25 + 32))(&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_splitStyle], v11, v6);
  *&v30[OBJC_IVAR____TtC19PodcastsTranscripts11TextContent_presentationContext] = v45;

  return v30;
}

uint64_t sub_57EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_57F48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_57FD0()
{
  sub_20438(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_58018(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_58068(uint64_t a1)
{
  v2 = sub_966E8();
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v27 = *(v8 + 56);
  v28 = v9;
  v26 = (v8 - 8);
  v11 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v2;
    v14 = v8;
    v28(v6, v10, v2, v4);
    result = sub_966A8();
    v15 = result[2];
    v16 = v11[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    v18 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v11[3] >> 1)
    {
      if (v18[2])
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v20 = v16 + v15;
      }

      else
      {
        v20 = v16;
      }

      v11 = sub_152C4(isUniquelyReferenced_nonNull_native, v20, 1, v11);
      if (v18[2])
      {
LABEL_14:
        v21 = (v11[3] >> 1) - v11[2];
        result = sub_96638();
        if (v21 < v15)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v22 = v11[2];
          v23 = __OFADD__(v22, v15);
          v24 = v22 + v15;
          if (v23)
          {
            goto LABEL_23;
          }

          v11[2] = v24;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 = v13;
    (*v26)(v6, v13);
    v10 += v27;
    --v7;
    v8 = v14;
    if (!v7)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_582C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_58384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FooterViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 40);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_584D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FooterViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 40) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_58608()
{
  type metadata accessor for FooterViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_589B8(319, &qword_C6630, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_586D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_586D4()
{
  if (!qword_C6638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_C6640);
    v0 = sub_970A8();
    if (!v1)
    {
      atomic_store(v0, &qword_C6638);
    }
  }
}

uint64_t sub_5874C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_58828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_588EC()
{
  sub_589B8(319, &qword_C66E0, &type metadata accessor for MetadataSource, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_58A1C();
    if (v1 <= 0x3F)
    {
      sub_58A6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_589B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_58A1C()
{
  if (!qword_C66E8)
  {
    v0 = sub_98578();
    if (!v1)
    {
      atomic_store(v0, &qword_C66E8);
    }
  }
}

unint64_t sub_58A6C()
{
  result = qword_C66F0;
  if (!qword_C66F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_C66F0);
  }

  return result;
}

uint64_t sub_58AD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C54E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_96548();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_4BF8(v1, v4, &qword_C54E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_4C60(v4, &qword_C54E0);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 88))(v9, v5);
  if (v13 == enum case for MetadataSource.apple(_:))
  {
    v21._object = 0x80000000000A4140;
    v21._countAndFlagsBits = 0xD000000000000017;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v14 = sub_967C8(v21, v23);
  }

  else
  {
    if (v13 != enum case for MetadataSource.provider(_:))
    {
      v19 = *(v6 + 8);
      v19(v11, v5);
      v19(v9, v5);
      return 0;
    }

    v15 = (v1 + *(type metadata accessor for FooterViewModel(0) + 20));
    v17 = *v15;
    v16 = v15[1];
    if (!v16)
    {
      (*(v6 + 8))(v11, v5);
      return v17;
    }

    v22._countAndFlagsBits = 0xD00000000000001ALL;
    v22._object = 0x80000000000A40F0;
    v24._countAndFlagsBits = 0xD000000000000022;
    v24._object = 0x80000000000A4110;
    sub_967C8(v22, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6790);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_9AF50;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_5A4AC();
    *(v18 + 32) = v17;
    *(v18 + 40) = v16;
    v14 = sub_97DD8();
  }

  (*(v6 + 8))(v11, v5);
  return v14;
}

uint64_t sub_58E54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6728);
  __chkstk_darwin(v37);
  v36 = &v36 - v3;
  v4 = sub_97368();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6730);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6738);
  __chkstk_darwin(v38);
  v15 = &v36 - v14;
  *v13 = sub_97378();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6740);
  sub_59324(v2, &v13[*(v16 + 44)]);
  if (qword_C4660 != -1)
  {
    swift_once();
  }

  v17 = qword_C65B8;
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v11 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  type metadata accessor for FooterView(0);

  sub_59EA4(v10);
  (*(v5 + 104))(v8, enum case for ColorSchemeContrast.standard(_:), v4);
  v20 = sub_97358();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v10, v4);
  if (v20)
  {
    sub_97088();
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    *(v40 + 1) = sub_973A8();
  }

  v22 = sub_97108();
  sub_216C8(v13, v15, &qword_C6730);
  *&v15[*(v38 + 36)] = v22;
  sub_5A0A4(v40 + 1);
  v23 = v41;
  v24 = v42;
  __swift_project_boxed_opaque_existential_1((v40 + 1), v41);
  (*(v24 + 8))(v40, v23, v24);
  LODWORD(v23) = LOBYTE(v40[0]);
  __swift_destroy_boxed_opaque_existential_1(v40 + 1);
  v25 = 0;
  if (v23 != 2)
  {
    sub_5A0A4(v40 + 1);
    v26 = v41;
    v27 = v42;
    __swift_project_boxed_opaque_existential_1((v40 + 1), v41);
    (*(v27 + 16))(v26, v27);
    v25 = v28;
    __swift_destroy_boxed_opaque_existential_1(v40 + 1);
  }

  sub_5A0A4(v40 + 1);
  v29 = v41;
  v30 = v42;
  __swift_project_boxed_opaque_existential_1((v40 + 1), v41);
  (*(v30 + 16))(v29, v30);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_1(v40 + 1);
  LOBYTE(v29) = sub_97418();
  v33 = v39;
  sub_216C8(v15, v39, &qword_C6738);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6748);
  v35 = v33 + *(result + 36);
  *v35 = v29;
  *(v35 + 8) = 0x402E000000000000;
  *(v35 + 16) = v25;
  *(v35 + 24) = 0x4024000000000000;
  *(v35 + 32) = v32;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_59324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v65 = type metadata accessor for ReportConcernButton(0);
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6768);
  v6 = __chkstk_darwin(v5 - 8);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6770);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  sub_97798();
  v16 = sub_97398();
  v17 = sub_97418();
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6778) + 36)];
  *v18 = v16;
  v18[4] = v17;
  LOBYTE(v16) = sub_97438();
  sub_97078();
  v19 = *(v11 + 44);
  v68 = v15;
  v20 = &v15[v19];
  *v20 = v16;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  v63 = a1;
  v25 = sub_58AD8();
  if (v26)
  {
    *&v90 = v25;
    *(&v90 + 1) = v26;
    sub_26788();
    v27 = sub_975D8();
    v61 = v28;
    v30 = v29;
    v32 = v31;
    v33 = v9;
    KeyPath = swift_getKeyPath();
    sub_977D8();
    sub_97228();
    *&v70[55] = v89[5];
    *&v70[71] = v89[6];
    *&v70[87] = v89[7];
    *&v70[103] = v89[8];
    *&v70[7] = v89[2];
    *&v70[23] = v89[3];
    v35 = v30 & 1;
    LOBYTE(v71) = v30 & 1;
    *&v70[39] = v89[4];
    v36 = sub_97438();
    sub_97078();
    *(&v87[4] + 9) = *&v70[64];
    *(&v87[5] + 9) = *&v70[80];
    *(&v87[6] + 9) = *&v70[96];
    *(v87 + 9) = *v70;
    *(&v87[1] + 9) = *&v70[16];
    *(&v87[2] + 9) = *&v70[32];
    LOBYTE(v83[0]) = 0;
    *&v85 = v27;
    *(&v85 + 1) = v61;
    LOBYTE(v86) = v35;
    *(&v86 + 1) = v32;
    *&v87[0] = KeyPath;
    v9 = v33;
    BYTE8(v87[0]) = 0;
    *(&v87[7] + 1) = *&v70[111];
    *(&v87[3] + 9) = *&v70[48];
    LOBYTE(v88) = v36;
    *(&v88 + 1) = v37;
    *&v89[0] = v38;
    *(&v89[0] + 1) = v39;
    *&v89[1] = v40;
    BYTE8(v89[1]) = 0;
    nullsub_1(&v85);
    v99 = v87[7];
    v100 = v88;
    v101[0] = v89[0];
    *(v101 + 9) = *(v89 + 9);
    v96 = v87[4];
    v97 = v87[5];
    v98 = v87[6];
    v92 = v87[0];
    v93 = v87[1];
    v94 = v87[2];
    v95 = v87[3];
    v90 = v85;
    v91 = v86;
  }

  else
  {
    sub_5A37C(&v90);
  }

  if ([objc_opt_self() isThinJetApp])
  {
    v41 = 1;
  }

  else
  {
    v42 = v62;
    sub_5A8B8(v63, v62, type metadata accessor for FooterViewModel);
    sub_5A3A0(v42, v9);
    v41 = 0;
  }

  (*(v3 + 56))(v9, v41, 1, v65);
  v43 = v9;
  v64 = v9;
  v44 = v69;
  sub_4BF8(v68, v69, &qword_C6770);
  v80 = v99;
  v81 = v100;
  v82[0] = v101[0];
  *(v82 + 9) = *(v101 + 9);
  v76 = v95;
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v72 = v91;
  v73 = v92;
  v74 = v93;
  v75 = v94;
  v71 = v90;
  v45 = v66;
  sub_4BF8(v43, v66, &qword_C6768);
  v46 = v67;
  sub_4BF8(v44, v67, &qword_C6770);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6780);
  v48 = (v46 + *(v47 + 48));
  v49 = v80;
  v50 = v79;
  v83[9] = v80;
  v83[10] = v81;
  v84[0] = v82[0];
  *(v84 + 9) = *(v82 + 9);
  v51 = v76;
  v52 = v77;
  v83[6] = v77;
  v83[7] = v78;
  v53 = v78;
  v83[8] = v79;
  v54 = v74;
  v55 = v75;
  v83[4] = v75;
  v83[5] = v76;
  v56 = v72;
  v57 = v73;
  v83[2] = v73;
  v83[3] = v74;
  v58 = v71;
  v83[0] = v71;
  v83[1] = v72;
  v59 = v82[0];
  v48[10] = v81;
  v48[11] = v59;
  *(v48 + 185) = *(v82 + 9);
  v48[6] = v52;
  v48[7] = v53;
  v48[8] = v50;
  v48[9] = v49;
  v48[2] = v57;
  v48[3] = v54;
  v48[4] = v55;
  v48[5] = v51;
  *v48 = v58;
  v48[1] = v56;
  sub_4BF8(v45, v46 + *(v47 + 64), &qword_C6768);
  sub_4BF8(v83, &v85, &qword_C6788);
  sub_4C60(v64, &qword_C6768);
  sub_4C60(v68, &qword_C6770);
  sub_4C60(v45, &qword_C6768);
  v88 = v81;
  v89[0] = v82[0];
  *(v89 + 9) = *(v82 + 9);
  v87[4] = v77;
  v87[5] = v78;
  v87[6] = v79;
  v87[7] = v80;
  v87[0] = v73;
  v87[1] = v74;
  v87[2] = v75;
  v87[3] = v76;
  v85 = v71;
  v86 = v72;
  sub_4C60(&v85, &qword_C6788);
  return sub_4C60(v69, &qword_C6770);
}

__n128 sub_599B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_97328();
  v14 = 1;
  sub_59A2C(&v9);
  v3 = v10;
  v4 = v12;
  v5 = v13;
  result = v9;
  v7 = v11;
  v8 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v7;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_59A2C@<X0>(uint64_t a1@<X8>)
{
  sub_97338();
  v2 = sub_975B8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_97718();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  sub_5AAD8(v2, v4, v6);

  sub_5AAE8(v2, v4, v6);
}

uint64_t sub_59B30(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_5A8B8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReportConcernButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_5A3A0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6878);
  sub_EA78(&qword_C6880, &qword_C6878);
  return sub_97778();
}

uint64_t sub_59CA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6760);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_974E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Font.TextStyle.body(_:), v3);
  v7 = enum case for Font.Design.default(_:);
  v8 = sub_97468();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  sub_97478();
  v10 = sub_974B8();
  sub_4C60(v2, &qword_C6760);
  result = (*(v4 + 8))(v6, v3);
  qword_C65B8 = v10;
  return result;
}

uint64_t sub_59EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_972F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_4BF8(v2, &v14 - v9, &qword_C6758);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_97368();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_981C8();
    v13 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_5A0A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_972F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BF8(v2, v10, &qword_C6750);
  if (v11 == 1)
  {
    return sub_4CC0(v10, a1);
  }

  sub_981C8();
  v9 = sub_973F8();
  sub_96A48();

  sub_972E8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_5A214(uint64_t a1, char a2)
{
  v4 = sub_972F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_981C8();
    v8 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

double sub_5A37C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_5A3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcernButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_97288();
  *a1 = result;
  return result;
}

uint64_t sub_5A430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_97288();
  *a1 = result;
  return result;
}

unint64_t sub_5A4AC()
{
  result = qword_C6798;
  if (!qword_C6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6798);
  }

  return result;
}

uint64_t sub_5A514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FooterViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_5A594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FooterViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_5A604()
{
  result = type metadata accessor for FooterViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_5A674()
{
  result = qword_C6830;
  if (!qword_C6830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6748);
    sub_5A700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6830);
  }

  return result;
}

unint64_t sub_5A700()
{
  result = qword_C6838;
  if (!qword_C6838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6738);
    sub_5A7B8();
    sub_EA78(&qword_C6868, &qword_C6870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6838);
  }

  return result;
}

unint64_t sub_5A7B8()
{
  result = qword_C6840;
  if (!qword_C6840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6730);
    sub_EA78(&qword_C6848, &qword_C6850);
    sub_EA78(&qword_C6858, &qword_C6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6840);
  }

  return result;
}

uint64_t sub_5A8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5A920()
{
  v1 = *(type metadata accessor for ReportConcernButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_96548();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  type metadata accessor for FooterViewModel(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5AA64()
{
  v1 = *(type metadata accessor for ReportConcernButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for FooterViewModel(0);
  return (*(v0 + *(v3 + 24) + v2))();
}

uint64_t sub_5AAD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5AAE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5AB48()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_9AF50;
  *(v0 + 32) = sub_96BC8();
  *(v0 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_98418();
  swift_unknownObjectRelease();
}

uint64_t sub_5AD84()
{
  v0 = sub_98488();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0);
  v32 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68D8);
  __chkstk_darwin(v2 - 8);
  v4 = v28 - v3;
  v29 = sub_95DB8();
  __chkstk_darwin(v29);
  v28[1] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C5378);
  __chkstk_darwin(v6 - 8);
  v8 = v28 - v7;
  v9 = sub_97DB8();
  __chkstk_darwin(v9 - 8);
  v31 = sub_95E48();
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = objc_opt_self();
  v13 = [v30 currentTraitCollection];
  v14 = [v13 accessibilityContrast];

  if (v14)
  {
    sub_98528();
  }

  else
  {
    sub_98538();
  }

  if (qword_C4668 != -1)
  {
    swift_once();
  }

  v15 = qword_C6898;
  v16 = [objc_opt_self() configurationWithFont:qword_C6898 scale:2];
  v17 = sub_97DC8();
  v18 = [objc_opt_self() _systemImageNamed:v17 withConfiguration:v16];

  v28[0] = v18;
  sub_984F8();
  sub_984A8();
  sub_97DA8();
  v19 = sub_95FD8();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v35 = &_swiftEmptyArrayStorage;
  sub_5B4AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68E8);
  sub_5B504();
  sub_98618();
  sub_95E38();
  v35 = v15;
  sub_5B568();
  v20 = v15;
  sub_95E68();
  v21 = v31;
  (*(v10 + 16))(v4, v12, v31);
  (*(v10 + 56))(v4, 0, 1, v21);
  sub_984C8();
  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  sub_984E8();
  v24 = [v30 currentTraitCollection];
  v25 = [v24 accessibilityContrast];

  if (v25)
  {
    v26 = [v22 secondarySystemBackgroundColor];
  }

  else
  {
    [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.12];
  }

  sub_984D8();
  (*(v33 + 104))(v32, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v34);
  sub_98498();
  sub_984B8();

  return (*(v10 + 8))(v12, v21);
}

void sub_5B39C()
{
  sub_278A0();
  v0 = UIFontTextStyleSubheadline;
  v1 = sub_983E8();

  qword_C6898 = v1;
}

uint64_t sub_5B3EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C68C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  sub_5AD84();
  v3 = sub_98548();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_98558();
}

unint64_t sub_5B4AC()
{
  result = qword_C68E0;
  if (!qword_C68E0)
  {
    sub_95DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C68E0);
  }

  return result;
}

unint64_t sub_5B504()
{
  result = qword_C68F0;
  if (!qword_C68F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C68E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C68F0);
  }

  return result;
}

unint64_t sub_5B568()
{
  result = qword_C68F8;
  if (!qword_C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C68F8);
  }

  return result;
}

unint64_t sub_5B5F0()
{
  result = qword_C6920;
  if (!qword_C6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6920);
  }

  return result;
}

unint64_t sub_5B6B4()
{
  result = qword_C6928;
  if (!qword_C6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6928);
  }

  return result;
}

unint64_t sub_5B70C()
{
  result = qword_C6930;
  if (!qword_C6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6930);
  }

  return result;
}

unint64_t sub_5B764()
{
  result = qword_C6938;
  if (!qword_C6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6938);
  }

  return result;
}

unint64_t sub_5B7BC()
{
  result = qword_C6940;
  if (!qword_C6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6940);
  }

  return result;
}

unint64_t sub_5B814()
{
  result = qword_C6948;
  if (!qword_C6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6948);
  }

  return result;
}

uint64_t sub_5B87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_97368();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_5B950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_97368();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptTextContentRenderer()
{
  result = qword_C69A8;
  if (!qword_C69A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5BA58()
{
  result = sub_97368();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptPresentationContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_5BB00()
{
  result = qword_C69E8;
  if (!qword_C69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C69E8);
  }

  return result;
}

unint64_t sub_5BB58()
{
  result = qword_C69F0;
  if (!qword_C69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C69F0);
  }

  return result;
}

uint64_t sub_5BBAC(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v62 = sub_971E8();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_97348();
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_97368();
  v54 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_97558();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v40 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A00);
  __chkstk_darwin(v49);
  v12 = &v40 - v11;
  v13 = sub_97578();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v48 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A08);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v20 = sub_97588();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  v21 = *(v17 + 44);
  v22 = sub_5D164(&qword_C6A10, &type metadata accessor for Text.Layout);
  sub_98118();
  sub_98138();
  v23 = v19;
  if (*&v19[v21] != v68[0])
  {
    v43 = (v14 + 16);
    v42 = (v14 + 8);
    v66 = (v50 + 16);
    v65 = (v50 + 32);
    v56 = enum case for ColorSchemeContrast.standard(_:);
    v55 = (v54 + 13);
    ++v54;
    v53 = enum case for RoundedCornerStyle.continuous(_:);
    v52 = (v64 + 13);
    ++v51;
    v64 = (v50 + 8);
    v47 = v19;
    v46 = v20;
    v45 = v21;
    v44 = v22;
    v41 = v6;
    do
    {
      v50 = sub_98158();
      v26 = *v43;
      v27 = v48;
      (*v43)(v48);
      (v50)(v68, 0);
      sub_98148();
      (v26)(v12, v27, v13);
      v28 = v41;
      v29 = *(v49 + 36);
      sub_5D164(&qword_C6A18, &type metadata accessor for Text.Layout.Line);
      sub_98118();
      (*v42)(v27, v13);
      while (1)
      {
        sub_98138();
        if (*&v12[v29] == v68[0])
        {
          break;
        }

        v32 = sub_98158();
        v33 = v67;
        (*v66)(v67);
        v32(v68, 0);
        sub_98148();
        (*v65)(v8, v33, v28);
        sub_4AF80();
        sub_97568();
        if ((v68[0] & 1) == 0)
        {
          type metadata accessor for TranscriptTextContentRenderer();
          v37 = v57;
          v38 = v58;
          (*v55)(v57, v56, v58);
          v39 = sub_97358();
          (*v54)(v37, v38);
          if (v39)
          {
            if (qword_C4670 != -1)
            {
              goto LABEL_18;
            }
          }

          else if (qword_C4680 != -1)
          {
LABEL_18:
            swift_once();
          }

          sub_97548();
          (*v52)(v59, v53, v60);
          sub_974F8();
          v30 = v61;
          sub_971D8();
          sub_971C8();
          v31 = &v69;
          goto LABEL_8;
        }

        sub_4AFD4();
        sub_97568();
        if (LOBYTE(v68[0]) != 1)
        {
          type metadata accessor for TranscriptTextContentRenderer();
          v34 = v57;
          v35 = v58;
          (*v55)(v57, v56, v58);
          v36 = sub_97358();
          (*v54)(v34, v35);
          if (v36)
          {
            if (qword_C4678 != -1)
            {
              goto LABEL_15;
            }
          }

          else if (qword_C4688 != -1)
          {
LABEL_15:
            swift_once();
          }

          sub_97548();
          (*v52)(v59, v53, v60);
          sub_974F8();
          v30 = v61;
          sub_971D8();
          sub_971C8();
          v31 = &v70;
LABEL_8:
          sub_5D2A0(v31);

          (*v51)(v30, v62);
        }

        (*v64)(v8, v28);
      }

      sub_4C60(v12, &qword_C6A00);
      v25 = v47;
      sub_98138();
      v23 = v25;
    }

    while (*(v25 + v45) != v68[0]);
  }

  return sub_4C60(v23, &qword_C6A08);
}

uint64_t sub_5C7AC(uint64_t a1, void *a2)
{
  v52 = a2;
  v48 = sub_97368();
  v44 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_97558();
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A00);
  __chkstk_darwin(v40);
  v11 = &v34 - v10;
  v12 = sub_97578();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A08);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v18 = sub_97588();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  v19 = *(v15 + 44);
  v20 = v18;
  v21 = sub_5D164(&qword_C6A10, &type metadata accessor for Text.Layout);
  sub_98118();
  sub_98138();
  if (*&v17[v19] != v55[0])
  {
    v36 = (v51 + 2);
    v35 = (v51 + 1);
    v23 = v50;
    v51 = (v50 + 4);
    v46 = enum case for ColorSchemeContrast.standard(_:);
    v24 = v44++;
    v45 = (v24 + 13);
    ++v50;
    v38 = v17;
    v37 = v20;
    v42 = v21;
    v43 = v19;
    v49 = (v23 + 2);
    do
    {
      v41 = sub_98158();
      v25 = *v36;
      v26 = v39;
      (*v36)(v39);
      v41(v55, 0);
      v27 = v49;
      sub_98148();
      (v25)(v11, v26, v12);
      v28 = *(v40 + 36);
      sub_5D164(&qword_C6A18, &type metadata accessor for Text.Layout.Line);
      sub_98118();
      (*v35)(v26, v12);
      while (1)
      {
        sub_98138();
        if (*&v11[v28] == v55[0])
        {
          break;
        }

        v33 = sub_98158();
        (*v27)(v9);
        v33(v55, 0);
        sub_98148();
        (*v51)(v6, v9, v4);
        v55[0] = *v52;
        if (*v53)
        {
          sub_4AF2C();

          sub_97568();
          if (v54 & 1) != 0 || (sub_4AF80(), sub_97568(), (v54) || (sub_4AFD4(), sub_97568(), v54 == 1))
          {
            type metadata accessor for TranscriptTextContentRenderer();
            v29 = v9;
            v30 = v47;
            v31 = v48;
            (*v45)(v47, v46, v48);
            sub_97358();
            v32 = v30;
            v9 = v29;
            v27 = v49;
            (*v44)(v32, v31);
          }
        }

        else
        {
          sub_4AF80();

          sub_97568();
          if (v54 == 1)
          {
            sub_4AFD4();
            sub_97568();
            if (v54 == 1)
            {
              sub_4AF2C();
              sub_97568();
            }
          }
        }

        sub_971F8();
        sub_971B8();
        (*v50)(v6, v4);
      }

      sub_4C60(v11, &qword_C6A00);
      v17 = v38;
      sub_98138();
    }

    while (*&v17[v43] != v55[0]);
  }

  return sub_4C60(v17, &qword_C6A08);
}

uint64_t sub_5CFA8(uint64_t a1, void *a2)
{
  if ((*v2 & 1) == 0)
  {
    v3 = a1;
    v4 = a2;
    sub_5BBAC(a1, a2);
    a1 = v3;
    a2 = v4;
  }

  return sub_5C7AC(a1, a2);
}

void (*sub_5D048(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_97058();
  return sub_5D0D0;
}

void sub_5D0D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_5D164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5D1AC()
{
  result = sub_976E8();
  qword_C6900 = result;
  return result;
}

uint64_t sub_5D1EC()
{
  v0 = [objc_opt_self() systemYellowColor];
  result = sub_97708();
  qword_C6910 = result;
  return result;
}

uint64_t sub_5D24C(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = sub_976F8();

  *a3 = v4;
  return result;
}

uint64_t sub_5D2FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v50 = sub_972F8();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A20);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A28);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A30);
  __chkstk_darwin(v12);
  v51 = &v47 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A38);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = &v47 - v14;
  sub_5DA44(v1, v7);
  *&v7[*(v5 + 44)] = 256;
  sub_977D8();
  sub_97228();
  sub_216C8(v7, v11, &qword_C6A20);
  v16 = &v11[*(v9 + 44)];
  v17 = v60[4];
  v18 = v60[6];
  v19 = v60[7];
  *(v16 + 4) = v60[5];
  *(v16 + 5) = v18;
  *(v16 + 6) = v19;
  v20 = v60[2];
  v21 = v60[3];
  *v16 = v60[1];
  *(v16 + 1) = v20;
  *(v16 + 2) = v21;
  *(v16 + 3) = v17;
  v60[0] = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
  sub_97758();
  v22 = v56;
  v23 = v57;
  LOBYTE(v7) = v58;
  v60[0] = *(v1 + 40);
  sub_97758();
  v24 = v56;
  v25 = v57;
  v26 = v58;
  v27 = v11;
  v28 = v51;
  sub_216C8(v27, v51, &qword_C6A28);
  v29 = v28 + *(v12 + 36);
  *v29 = v22;
  *(v29 + 8) = v23;
  *(v29 + 16) = v7;
  *(v29 + 24) = v24;
  *(v29 + 32) = v25;
  *(v29 + 40) = v26;
  v30 = v15;
  v31 = sub_5E0C0();
  swift_getKeyPath();
  v56 = v31;
  sub_5F02C(&qword_C56A0, type metadata accessor for TextContent);
  sub_962A8();

  LOBYTE(v24) = *(v31 + OBJC_IVAR____TtC19PodcastsTranscripts11TextContent__isSelected);

  LOBYTE(v60[0]) = v24;
  v32 = swift_allocObject();
  v33 = *(v2 + 80);
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = v33;
  *(v32 + 112) = *(v2 + 96);
  v34 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v34;
  v35 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v35;
  sub_5EC54(v2, &v56);
  v36 = sub_5EC8C();
  sub_976A8();

  sub_4C60(v28, &qword_C6A30);
  v37 = *(v2 + 72);
  *&v60[0] = v37;
  BYTE8(v60[0]) = *(v2 + 80);
  LOBYTE(v24) = BYTE8(v60[0]);

  if ((v24 & 1) == 0)
  {
    sub_981C8();
    v38 = sub_973F8();
    sub_96A48();

    v39 = v48;
    sub_972E8();
    swift_getAtKeyPath();
    sub_4C60(v60, &qword_C6AA8);
    (*(v49 + 8))(v39, v50);
    v37 = v56;
  }

  swift_getKeyPath();
  v56 = v37;
  sub_5F02C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v40 = *(v37 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__isActive);

  v55 = v40;
  v41 = swift_allocObject();
  v42 = *(v2 + 80);
  *(v41 + 80) = *(v2 + 64);
  *(v41 + 96) = v42;
  *(v41 + 112) = *(v2 + 96);
  v43 = *(v2 + 16);
  *(v41 + 16) = *v2;
  *(v41 + 32) = v43;
  v44 = *(v2 + 48);
  *(v41 + 48) = *(v2 + 32);
  *(v41 + 64) = v44;
  sub_5EC54(v2, &v56);
  v56 = v12;
  v57 = &type metadata for Bool;
  v58 = v36;
  v59 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v45 = v53;
  sub_976A8();

  return (*(v52 + 8))(v30, v45);
}

uint64_t sub_5DA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = _s10StaticTextVMa();
  __chkstk_darwin(v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6AC0);
  __chkstk_darwin(v34);
  v7 = &v32 - v6;
  v35 = _s8LiveTextVMa();
  __chkstk_darwin(v35);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_972F8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
  sub_97738();
  if (v37)
  {
    goto LABEL_5;
  }

  v33 = v3;
  BYTE8(v38) = *(a1 + 96);
  v14 = *(a1 + 88);
  *&v38 = v14;
  v15 = BYTE8(v38);

  if ((v15 & 1) == 0)
  {
    sub_981C8();
    v16 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();
    sub_4C60(&v38, &qword_C6AC8);
    (*(v11 + 8))(v13, v10);
    v14 = v37;
  }

  swift_getKeyPath();
  v37 = v14;
  sub_5F02C(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  sub_962A8();

  v17 = *(v14 + 17);

  v18 = v33;
  if (v17 == 1)
  {
LABEL_5:
    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
    swift_storeEnumTagMultiPayload();
    v19 = v35;
    v20 = v9 + *(v35 + 20);
    type metadata accessor for TextContent.LiveText(0);
    sub_5F02C(&qword_C7760, type metadata accessor for TextContent.LiveText);
    *v20 = sub_970B8();
    v20[8] = v21 & 1;
    v22 = v9 + *(v19 + 24);
    type metadata accessor for TranscriptPresentationContext();
    sub_5F02C(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
    *v22 = sub_970B8();
    v22[8] = v23 & 1;
    v24 = _s8LiveTextVMa;
    sub_5F268(v9, v7, _s8LiveTextVMa);
    swift_storeEnumTagMultiPayload();
    sub_5F02C(&qword_C6A90, _s8LiveTextVMa);
    sub_5F02C(&qword_C6A98, _s10StaticTextVMa);
    sub_97388();
    v25 = v9;
  }

  else
  {
    *v5 = *a1;
    v26 = v18[5];
    *(v5 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
    swift_storeEnumTagMultiPayload();
    v27 = v5 + v18[6];
    type metadata accessor for TextContent.LiveText(0);
    sub_5F02C(&qword_C7760, type metadata accessor for TextContent.LiveText);

    *v27 = sub_970B8();
    v27[8] = v28 & 1;
    v29 = v5 + v18[7];
    type metadata accessor for TranscriptPresentationContext();
    *v29 = sub_970B8();
    v29[8] = v30 & 1;
    v24 = _s10StaticTextVMa;
    sub_5F268(v5, v7, _s10StaticTextVMa);
    swift_storeEnumTagMultiPayload();
    sub_5F02C(&qword_C6A90, _s8LiveTextVMa);
    sub_5F02C(&qword_C6A98, _s10StaticTextVMa);
    sub_97388();
    v25 = v5;
  }

  return sub_5F2D0(v25, v24);
}

uint64_t sub_5E0C0()
{
  v1 = sub_972F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 64);
  v5 = *(v0 + 56);
  v10 = v5;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_981C8();
    v7 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();
    sub_4C60(&v10, &qword_C6AB8);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_5E21C()
{
  sub_97818();
  sub_97168();
}

uint64_t sub_5E284(uint64_t a1, char a2)
{
  v2 = a2 & 1;
  v5 = *(a1 + 8);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_5F188(&v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A40);
  sub_97738();
  if (v4[0] != v2)
  {
    v5 = v6;
    v4[0] = v2;
    sub_97748();
  }

  return sub_4C60(&v6, &qword_C6A40);
}

uint64_t sub_5E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6AE0);
  sub_97788();
  if ((v5 & 1) != 0 || (v6 = *(a1 + 24), sub_97788(), v5 == 1))
  {
    v6 = *(a1 + 24);
    sub_97788();
  }

  else
  {
    sub_976D8();
  }

  sub_5F4B8();
  result = sub_97388();
  *a2 = v6;
  *(a2 + 8) = BYTE8(v6);
  return result;
}

uint64_t sub_5E4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16 = *v2;
  v17[0] = v5;
  *(v17 + 9) = *(v2 + 25);
  v6 = sub_977C8();
  v8 = v7;
  sub_5E38C(&v16, &v14);
  v9 = v14;
  v10 = v15;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6AD0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6AD8);
  v13 = a2 + *(result + 36);
  *v13 = v9;
  *(v13 + 8) = v10;
  *(v13 + 16) = v6;
  *(v13 + 24) = v8;
  return result;
}

uint64_t sub_5E5A4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_97218();
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6B10);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6B18);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6B20);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = *(v2 + 28);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_97348();
  (*(*(v19 - 8) + 104))(&v4[v17], v18, v19);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  sub_976E8();
  v25 = sub_976F8();

  sub_5F620(v4, v8);
  *&v8[*(v6 + 60)] = v25;
  *&v8[*(v6 + 64)] = 256;
  v26 = *(v10 + 44);
  v27 = enum case for BlendMode.plusLighter(_:);
  v28 = sub_97848();
  (*(*(v28 - 8) + 104))(&v12[v26], v27, v28);
  sub_216C8(v8, v12, &qword_C6B10);
  LOBYTE(v27) = sub_97448();
  sub_97078();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_216C8(v12, v16, &qword_C6B18);
  v37 = &v16[*(v14 + 44)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  LOBYTE(v14) = sub_97408();
  sub_97078();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v50;
  sub_216C8(v16, v50, &qword_C6B20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6B28);
  v48 = v46 + *(result + 36);
  *v48 = v14;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  return result;
}

uint64_t sub_5E90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_97728();
  sub_97728();
  v18[0] = 0;
  sub_97728();
  type metadata accessor for TextContent.LiveText(0);
  sub_5F02C(&qword_C7760, type metadata accessor for TextContent.LiveText);
  v5 = sub_970B8();
  v7 = v6;
  type metadata accessor for TranscriptPresentationContext();
  sub_5F02C(&qword_C5DF8, type metadata accessor for TranscriptPresentationContext);
  result = sub_970B8();
  *a4 = a1;
  *(a4 + 8) = v13[0];
  *(a4 + 9) = *v13;
  *(a4 + 12) = *&v13[3];
  *(a4 + 16) = v14;
  *(a4 + 24) = v13[0];
  *(a4 + 25) = *v18;
  *(a4 + 28) = *&v18[3];
  *(a4 + 32) = v14;
  *(a4 + 40) = v13[0];
  *(a4 + 44) = *&v17[3];
  *(a4 + 41) = *v17;
  *(a4 + 48) = v14;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3 & 1;
  *(a4 + 68) = *&v16[3];
  *(a4 + 65) = *v16;
  *(a4 + 72) = v5;
  *(a4 + 80) = v7 & 1;
  *(a4 + 81) = *v15;
  *(a4 + 84) = *&v15[3];
  *(a4 + 88) = result;
  *(a4 + 96) = v9 & 1;
  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_5EB48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_5EB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5EC8C()
{
  result = qword_C6A48;
  if (!qword_C6A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A30);
    sub_5ED18();
    sub_5F074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A48);
  }

  return result;
}

unint64_t sub_5ED18()
{
  result = qword_C6A50;
  if (!qword_C6A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A28);
    sub_5EDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A50);
  }

  return result;
}

unint64_t sub_5EDA4()
{
  result = qword_C6A58;
  if (!qword_C6A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A20);
    sub_5EE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A58);
  }

  return result;
}

unint64_t sub_5EE30()
{
  result = qword_C6A60;
  if (!qword_C6A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A68);
    sub_5EEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A60);
  }

  return result;
}

unint64_t sub_5EEBC()
{
  result = qword_C6A70;
  if (!qword_C6A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A78);
    sub_5EF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A70);
  }

  return result;
}

unint64_t sub_5EF40()
{
  result = qword_C6A80;
  if (!qword_C6A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A88);
    sub_5F02C(&qword_C6A90, _s8LiveTextVMa);
    sub_5F02C(&qword_C6A98, _s10StaticTextVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6A80);
  }

  return result;
}

uint64_t sub_5F02C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5F074()
{
  result = qword_C6AA0;
  if (!qword_C6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AA0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_5F188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5F2D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_5F344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5F38C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_5F3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6A30);
  sub_5EC8C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_5F4B8()
{
  result = qword_C6AE8;
  if (!qword_C6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AE8);
  }

  return result;
}

unint64_t sub_5F520()
{
  result = qword_C6AF0;
  if (!qword_C6AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6AD8);
    sub_EA78(&qword_C6AF8, &qword_C6AD0);
    sub_EA78(&qword_C6B00, &qword_C6B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6AF0);
  }

  return result;
}

uint64_t sub_5F620(uint64_t a1, uint64_t a2)
{
  v4 = sub_97218();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_5F6A0()
{
  result = qword_C6B30;
  if (!qword_C6B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6B28);
    sub_5F72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B30);
  }

  return result;
}

unint64_t sub_5F72C()
{
  result = qword_C6B38;
  if (!qword_C6B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6B20);
    sub_5F7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B38);
  }

  return result;
}

unint64_t sub_5F7B8()
{
  result = qword_C6B40;
  if (!qword_C6B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6B18);
    sub_EA78(&qword_C6B48, &qword_C6B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B40);
  }

  return result;
}

unint64_t sub_5F874()
{
  result = qword_C6B50;
  if (!qword_C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6B50);
  }

  return result;
}

uint64_t sub_5F8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_5F9D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t _s8LiveTextVMa()
{
  result = qword_C6BB0;
  if (!qword_C6BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5FAE4()
{
  sub_5FBD4(319, &qword_C6630, &type metadata accessor for ColorSchemeContrast);
  if (v0 <= 0x3F)
  {
    sub_5FBD4(319, &qword_C6BC0, type metadata accessor for TextContent.LiveText);
    if (v1 <= 0x3F)
    {
      sub_5FBD4(319, &unk_C6BC8, type metadata accessor for TranscriptPresentationContext);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_5FBD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_970A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_5FC44@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = _s8LiveTextVMa();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v29 = sub_972F8();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_977C8();
  a1[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C00);
  sub_60014(v2, a1 + *(v10 + 44));
  if (qword_C4690 != -1)
  {
    swift_once();
  }

  v11 = qword_CD4F8;
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C08) + 36));
  *v13 = KeyPath;
  v13[1] = v11;

  v14 = sub_97828();
  v15 = v2 + *(v4 + 20);
  v16 = *v15;
  v17 = *(v15 + 8);

  if ((v17 & 1) == 0)
  {
    sub_981C8();
    v18 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v29);
    v16 = v31;
  }

  swift_getKeyPath();
  v31 = v16;
  sub_61B34(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v19 = *(v16 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange);
  v20 = *(v16 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 8);
  v21 = *(v16 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeReadRange + 16);

  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C10) + 36);
  *v22 = v14;
  *(v22 + 1) = v19;
  *(v22 + 2) = v20;
  v22[24] = v21;
  sub_61870(v2, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v24 = swift_allocObject();
  sub_61A00(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_61A64;
  *(v25 + 24) = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C18);
  v27 = (a1 + *(result + 36));
  *v27 = sub_61B00;
  v27[1] = v25;
  return result;
}

uint64_t sub_60014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C20);
  __chkstk_darwin(v125);
  v113 = &v96 - v4;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C28);
  __chkstk_darwin(v124);
  v123 = (&v96 - v5);
  v109 = sub_97368();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v96 - v8;
  v9 = sub_97848();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v106 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C30);
  __chkstk_darwin(v118);
  v110 = &v96 - v11;
  v116 = sub_95E48();
  v12 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C38);
  __chkstk_darwin(v117);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v111 = &v96 - v17;
  __chkstk_darwin(v18);
  v108 = &v96 - v19;
  __chkstk_darwin(v20);
  v112 = &v96 - v21;
  __chkstk_darwin(v22);
  v121 = &v96 - v23;
  v24 = sub_972F8();
  v127 = *(v24 - 8);
  v128 = v24;
  __chkstk_darwin(v24);
  v126 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s8LiveTextVMa();
  v27 = *(v26 + 20);
  v122 = a1;
  v28 = (a1 + v27);
  v29 = *v28;
  LOBYTE(a1) = *(v28 + 8);

  v30 = v29;
  v31 = a1;
  if ((a1 & 1) == 0)
  {
    sub_981C8();
    v32 = sub_973F8();
    sub_96A48();

    v33 = v126;
    sub_972E8();
    swift_getAtKeyPath();

    (*(v127 + 8))(v33, v128);
    v30 = v131;
  }

  swift_getKeyPath();
  v131 = v30;
  sub_61B34(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v35 = *(v30 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent);
  v34 = *(v30 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

  if (v34)
  {
    v131 = v35;
    v132 = v34;
    sub_26788();
    v36 = sub_975D8();
    v37 = v123;
    *v123 = v36;
    v37[1] = v38;
    *(v37 + 16) = v39 & 1;
    v37[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_EA78(&qword_C6C48, &qword_C6C20);
    return sub_97388();
  }

  else
  {
    v102 = v15;
    v103 = a2;

    v42 = v29;
    if ((v31 & 1) == 0)
    {
      sub_981C8();
      v43 = sub_973F8();
      sub_96A48();

      v44 = v126;
      sub_972E8();
      swift_getAtKeyPath();

      (*(v127 + 8))(v44, v128);
      v42 = v131;
    }

    swift_getKeyPath();
    v131 = v42;
    sub_962A8();

    v45 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
    swift_beginAccess();
    v46 = *(v12 + 16);
    v96 = v12 + 16;
    v47 = v46;
    v46(v115, v42 + v45, v116);

    v48 = sub_975C8();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = *(v119 + 104);
    v56 = v121;
    v57 = v121 + *(v118 + 36);
    v97 = enum case for BlendMode.normal(_:);
    v100 = v119 + 104;
    v99 = v55;
    (v55)(v57);
    *v56 = v48;
    *(v56 + 8) = v50;
    *(v56 + 16) = v52 & 1;
    *(v56 + 24) = v54;
    v58 = (v56 + *(v117 + 36));
    v114 = type metadata accessor for TranscriptTextContentRenderer();
    v59 = v122;
    sub_59EA4(&v58[*(v114 + 20)]);
    v60 = (v59 + *(v26 + 24));
    v61 = *v60;
    LODWORD(v59) = *(v60 + 8);

    v62 = v61;
    v98 = v59;
    if ((v59 & 1) == 0)
    {
      sub_981C8();
      v63 = sub_973F8();
      sub_96A48();

      v64 = v126;
      sub_972E8();
      swift_getAtKeyPath();

      (*(v127 + 8))(v64, v128);
      v62 = v130;
    }

    v101 = v61;
    *v58 = 0;
    *&v58[*(v114 + 24)] = v62;

    if ((v31 & 1) == 0)
    {
      sub_981C8();
      v65 = sub_973F8();
      sub_96A48();

      v66 = v126;
      sub_972E8();
      swift_getAtKeyPath();

      (*(v127 + 8))(v66, v128);
      v29 = v130;
    }

    swift_getKeyPath();
    v130 = v29;
    sub_962A8();

    v67 = OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__attributedContent;
    swift_beginAccess();
    v47(v115, v29 + v67, v116);

    v68 = sub_975C8();
    v70 = v69;
    v72 = v71;
    v116 = v73;
    v74 = v104;
    sub_59EA4(v104);
    v75 = v107;
    v76 = v105;
    v77 = v109;
    (*(v107 + 104))(v105, enum case for ColorSchemeContrast.standard(_:), v109);
    v78 = sub_97358();
    v79 = *(v75 + 8);
    v79(v76, v77);
    v79(v74, v77);
    if (v78)
    {
      v80 = enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v80 = v97;
    }

    v81 = v106;
    v82 = v120;
    v99(v106, v80, v120);
    v83 = v110;
    (*(v119 + 32))(&v110[*(v118 + 36)], v81, v82);
    *v83 = v68;
    *(v83 + 8) = v70;
    *(v83 + 16) = v72 & 1;
    v84 = v117;
    *(v83 + 24) = v116;
    v85 = v108;
    v86 = &v108[*(v84 + 36)];
    sub_59EA4(&v86[*(v114 + 20)]);
    v87 = v101;

    if ((v98 & 1) == 0)
    {
      sub_981C8();
      v88 = sub_973F8();
      sub_96A48();

      v89 = v126;
      sub_972E8();
      swift_getAtKeyPath();

      (*(v127 + 8))(v89, v128);
      v87 = v129;
    }

    *v86 = 1;
    *&v86[*(v114 + 24)] = v87;
    sub_216C8(v83, v85, &qword_C6C30);
    v90 = v112;
    sub_216C8(v85, v112, &qword_C6C38);
    v91 = v121;
    v92 = v111;
    sub_4BF8(v121, v111, &qword_C6C38);
    v93 = v102;
    sub_4BF8(v90, v102, &qword_C6C38);
    v94 = v113;
    sub_4BF8(v92, v113, &qword_C6C38);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6C40);
    sub_4BF8(v93, v94 + *(v95 + 48), &qword_C6C38);
    sub_4C60(v93, &qword_C6C38);
    sub_4C60(v92, &qword_C6C38);
    sub_4BF8(v94, v123, &qword_C6C20);
    swift_storeEnumTagMultiPayload();
    sub_EA78(&qword_C6C48, &qword_C6C20);
    sub_97388();
    sub_4C60(v94, &qword_C6C20);
    sub_4C60(v90, &qword_C6C38);
    return sub_4C60(v91, &qword_C6C38);
  }
}

uint64_t sub_60DB0(uint64_t a1)
{
  v62 = a1;
  v2 = sub_97558();
  v50 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = v46 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A00);
  __chkstk_darwin(v57);
  v8 = v46 - v7;
  v9 = sub_97578();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_97588();
  v53 = *(v60 - 8);
  __chkstk_darwin(v60);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6A08);
  __chkstk_darwin(v52);
  v59 = v46 - v13;
  v14 = sub_972F8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v58 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v1 + *(_s8LiveTextVMa() + 20));
  v18 = *v17;
  v19 = *(v17 + 8);

  v20 = v18;
  v54 = v19;
  if ((v19 & 1) == 0)
  {
    sub_981C8();
    v21 = sub_973F8();
    sub_96A48();

    v22 = v58;
    sub_972E8();
    swift_getAtKeyPath();

    (*(v15 + 8))(v22, v14);
    v20 = v69;
  }

  v55 = v18;
  v51 = v15;
  swift_getKeyPath();
  *&v69 = v20;
  sub_61B34(&qword_C7760, type metadata accessor for TextContent.LiveText);
  sub_962A8();

  v23 = *(v20 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__activeSearchRange + 16);

  if ((v23 & 1) == 0 && *(v62 + 16))
  {
    v46[0] = v14;
    v48 = v2;
    sub_975A8();
    sub_97598();
    v25 = v53;
    v27 = v59;
    v26 = v60;
    (*(v53 + 16))(v59, v12, v60);
    v28 = *(v52 + 36);
    v29 = sub_61B34(&qword_C6A10, &type metadata accessor for Text.Layout);
    sub_98118();
    v30 = v12;
    v31 = v29;
    (*(v25 + 8))(v30, v26);
    sub_98138();
    if (*(v27 + v28) == v69)
    {
LABEL_6:
      sub_4C60(v27, &qword_C6A08);

      if ((v54 & 1) == 0)
      {
        sub_981C8();
        v32 = sub_973F8();
        sub_96A48();

        v33 = v58;
        sub_972E8();
        swift_getAtKeyPath();

        (*(v51 + 8))(v33, v46[0]);
      }

      v69 = 0u;
      v70 = 0u;
      LOBYTE(v71) = 1;
      sub_96DF8();
    }

    else
    {
      v52 = (v49 + 2);
      ++v49;
      v34 = (v50 + 16);
      v35 = (v50 + 32);
      v62 = v50 + 8;
      v47 = v28;
      v61 = v9;
      v46[1] = v31;
      while (1)
      {
        v36 = sub_98158();
        v53 = *v52;
        v37 = v56;
        (v53)(v56);
        v36(&v69, 0);
        sub_98148();
        (v53)(v8, v37, v61);
        v38 = *(v57 + 36);
        sub_61B34(&qword_C6A18, &type metadata accessor for Text.Layout.Line);
        sub_98118();
        (*v49)(v37, v61);
        sub_98138();
        v39 = v48;
        if (*&v8[v38] != v69)
        {
          break;
        }

LABEL_10:
        sub_4C60(v8, &qword_C6A00);
        v27 = v59;
        sub_98138();
        if (*(v27 + v47) == v69)
        {
          goto LABEL_6;
        }
      }

      while (1)
      {
        v40 = sub_98158();
        v41 = v4;
        v42 = v63;
        (*v34)(v63);
        v40(&v69, 0);
        sub_98148();
        v43 = v42;
        v4 = v41;
        (*v35)(v41, v43, v39);
        sub_4AF80();
        sub_97568();
        if ((v69 & 1) == 0)
        {
          break;
        }

        (*v62)(v41, v39);
        sub_98138();
        if (*&v8[v38] == v69)
        {
          goto LABEL_10;
        }
      }

      if ((v54 & 1) == 0)
      {
        sub_981C8();
        v44 = sub_973F8();
        sub_96A48();

        v45 = v58;
        sub_972E8();
        swift_getAtKeyPath();

        (*(v51 + 8))(v45, v46[0]);
      }

      sub_97548();
      v64 = v69;
      v65 = *(&v69 + 1) - *(&v70 + 1);
      v66 = v70;
      v67 = *(&v70 + 1) + v71;
      v68 = 0;
      sub_96DF8();

      (*v62)(v41, v48);
      sub_4C60(v8, &qword_C6A00);
      return sub_4C60(v59, &qword_C6A08);
    }
  }

  return result;
}

uint64_t sub_61870(uint64_t a1, uint64_t a2)
{
  v4 = _s8LiveTextVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_618D4()
{
  v1 = *(_s8LiveTextVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6758);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_97368();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_61A00(uint64_t a1, uint64_t a2)
{
  v4 = _s8LiveTextVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_61AC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_61B34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_61B90()
{
  result = qword_C6C50;
  if (!qword_C6C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6C18);
    sub_61C48();
    sub_EA78(&qword_C6C88, &qword_C6C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6C50);
  }

  return result;
}

unint64_t sub_61C48()
{
  result = qword_C6C58;
  if (!qword_C6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6C10);
    sub_61D00();
    sub_EA78(&qword_C6C78, &qword_C6C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6C58);
  }

  return result;
}

unint64_t sub_61D00()
{
  result = qword_C6C60;
  if (!qword_C6C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C6C08);
    sub_EA78(&qword_C6C68, &qword_C6C70);
    sub_EA78(&qword_C6858, &qword_C6860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6C60);
  }

  return result;
}

uint64_t sub_61DF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_61EC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C65C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s10StaticTextVMa()
{
  result = qword_C6CF0;
  if (!qword_C6CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_61FC4()
{
  sub_620CC();
  if (v0 <= 0x3F)
  {
    sub_5FBD4(319, &qword_C6630, &type metadata accessor for ColorSchemeContrast);
    if (v1 <= 0x3F)
    {
      sub_5FBD4(319, &qword_C6BC0, type metadata accessor for TextContent.LiveText);
      if (v2 <= 0x3F)
      {
        sub_5FBD4(319, &unk_C6BC8, type metadata accessor for TranscriptPresentationContext);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_620CC()
{
  if (!qword_C6D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_C50F0);
    v0 = sub_98018();
    if (!v1)
    {
      atomic_store(v0, &qword_C6D00);
    }
  }
}

uint64_t sub_6214C@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_97848();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v62 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_97368();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v50 - v7;
  v8 = sub_95E48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v50 - v12;
  v13 = sub_972F8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s10StaticTextVMa();
  v17 = (v1 + *(v57 + 24));
  v18 = *v17;
  v19 = *(v17 + 8);

  v20 = v18;
  LODWORD(v55) = v19;
  if ((v19 & 1) == 0)
  {
    sub_981C8();
    v21 = sub_973F8();
    sub_96A48();

    sub_972E8();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    v20 = v67;
  }

  v54 = v14;
  swift_getKeyPath();
  v67 = v20;
  sub_62AC8();
  sub_962A8();

  v22 = *(v20 + OBJC_IVAR____TtCC19PodcastsTranscripts11TextContent8LiveText__translatedContent + 8);

  if (!v22)
  {

    if ((v55 & 1) == 0)
    {
      sub_981C8();
      v23 = sub_973F8();
      sub_96A48();

      sub_972E8();
      swift_getAtKeyPath();

      (*(v54 + 8))(v16, v13);
    }
  }

  v24 = v66;
  v52 = v9;
  sub_62808();

  (*(v9 + 16))(v56, v24, v8);
  v25 = sub_975C8();
  v27 = v26;
  v29 = v28;
  v51 = v8;
  if (qword_C4690 != -1)
  {
    swift_once();
  }

  v30 = sub_97538();
  v54 = v31;
  v55 = v30;
  v53 = v32;
  v56 = v33;
  sub_5AAE8(v25, v27, v29 & 1);

  v34 = v58;
  sub_59EA4(v58);
  v35 = enum case for ColorSchemeContrast.standard(_:);
  v37 = v59;
  v36 = v60;
  v38 = *(v60 + 104);
  v39 = v61;
  v38(v59, enum case for ColorSchemeContrast.standard(_:), v61);
  LODWORD(v57) = sub_97358();
  v40 = *(v36 + 8);
  v40(v37, v39);
  v40(v34, v39);
  sub_59EA4(v34);
  v38(v37, v35, v39);
  LOBYTE(v35) = sub_97358();
  v40(v37, v39);
  v40(v34, v39);
  (*(v52 + 8))(v66, v51);
  v42 = v62;
  v41 = v63;
  v43 = &enum case for BlendMode.plusLighter(_:);
  if ((v35 & 1) == 0)
  {
    v43 = &enum case for BlendMode.normal(_:);
  }

  v44 = v64;
  (*(v63 + 104))(v62, *v43, v64);
  if (v57)
  {
    v45 = 0.35;
  }

  else
  {
    v45 = 0.55;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_C6D38);
  v47 = v65;
  result = (*(v41 + 32))(v65 + *(v46 + 36), v42, v44);
  v49 = v54;
  *v47 = v55;
  *(v47 + 8) = v49;
  *(v47 + 16) = v53 & 1;
  *(v47 + 24) = v56;
  *(v47 + 32) = v45;
  return result;
}