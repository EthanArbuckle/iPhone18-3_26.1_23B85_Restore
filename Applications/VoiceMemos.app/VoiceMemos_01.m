uint64_t sub_10002AB64()
{
  sub_100014B64(v0 + 16);
  sub_100014B64(v0 + 56);
  sub_10000E274(v0 + 96);
  sub_10000E274(v0 + 112);

  return swift_deallocClassInstance();
}

id sub_10002AC38()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView);
  }

  else
  {
    v4 = *(*sub_10000AACC((v0 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_transcriptViewPresenter), *(v0 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_transcriptViewPresenter + 24)) + 96);
    *(v0 + v1) = v4;
    v3 = v4;
    v2 = 0;
  }

  v5 = v2;
  return v3;
}

uint64_t sub_10002AE8C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_contextProvider);
  v3 = *(v2 + 48);
  v12[0] = *(v2 + 32);
  v12[1] = v3;
  *&v14 = *(v2 + 48);
  v13 = v12[0];
  *(&v14 + 1) = a1;
  v15 = v12[0];
  v16 = v3;
  v17[0] = v12[0];
  v17[1] = v3;
  *(v2 + 48) = v14;

  sub_100023708(v12, v11);
  sub_100023708(&v15, v11);
  sub_100023708(&v13, v11);
  sub_100023778(v17);
  v4 = 256;
  if (!BYTE1(v16))
  {
    v4 = 0;
  }

  v5 = v4 | v16;
  v6 = 0x10000;
  if (!BYTE2(v16))
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (!BYTE3(v16))
  {
    v7 = 0;
  }

  v8 = v5 | v6 | v7;
  v9 = &_mh_execute_header;
  if (!BYTE4(v16))
  {
    v9 = 0;
  }

  sub_1000237CC(v15, *(&v15 + 1), v8 | v9, *(&v16 + 1));

  sub_100023778(&v15);
  return sub_100023778(&v13);
}

id sub_10002B04C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isDisplayingTranscriptView) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isWindowSceneInForeground);
  }

  else
  {
    v3 = 0;
  }

  result = *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController);
  if (!result || (result = [result timeControllerState]) == 0)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
LABEL_12:
    sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_transcriptViewPresenter), *(v1 + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_transcriptViewPresenter + 24));
    return sub_100172B18();
  }

  return result;
}

uint64_t sub_10002B0EC()
{
  if (*(v0 + 217))
  {

    *(v0 + 288) = 2;
    *(v0 + 296) = 0x80;

    CurrentValueSubject.send(_:)();
LABEL_4:

    v2 = *(v0 + 8);

    return v2();
  }

  *(v0 + 376) = OBJC_IVAR____TtC10VoiceMemos30TranscriptionModelAssetService__downloadStateValueSubject;

  CurrentValueSubject.value.getter();

  v1 = *(v0 + 216);
  if (v1 < 0x40)
  {
    goto LABEL_4;
  }

  sub_10010D6F8(*(v0 + 208), v1);
  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_10016F1EC;

  return sub_10001890C();
}

void sub_10002B254(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = a1[17];
  v6 = a1[18];
  v7 = a1[19];
  v8 = a1[20];
  v9 = *(a1 + 3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = v1 | (v2 << 8);
    v13 = 256;
    if ((v5 & 1) == 0)
    {
      v13 = 0;
    }

    v14 = 0x10000;
    if ((v6 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = 0x1000000;
    if ((v7 & 1) == 0)
    {
      v15 = 0;
    }

    if (v8)
    {
      v16 = &_mh_execute_header;
    }

    else
    {
      v16 = 0;
    }

    v17 = v13 | v4;
    v18 = v14 | v15;
    v19 = v17 | v18;
    sub_10002B36C(v12, v3, v17 | v18 | v16);
    sub_10002C390(v9);
    v21 = sub_10002C544(v12, v20, v19 | v16);
    v23 = sub_10002C628(v21, v22, v19 | v16);
    sub_10002C7DC(v23, v24, v19 | v16);
  }
}

void *sub_10002B36C(__int16 a1, uint64_t a2, unsigned __int8 a3)
{
  result = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider + 24));
  v8 = *(*result + 48);
  v48 = *(*result + 32);
  v49 = v8;
  if (v48 != a1 || BYTE1(v48) != (a1 & 0xFF00) >> 8)
  {
    goto LABEL_25;
  }

  if (!(a3 >> 6))
  {
    if (v49 >= 0x40u)
    {
      goto LABEL_25;
    }

    return sub_100023708(&v48, &v43);
  }

  if (a3 >> 6 != 1)
  {
    if (a2 | a3 ^ 0x80)
    {
      v9 = v49 & 0xC0;
      if (a3 != 128 || a2 != 1)
      {
        if (v9 == 128 && *(&v48 + 1) == 2)
        {
          goto LABEL_23;
        }

LABEL_25:
        if (v49 < 0 && __PAIR128__(v49 & 0x7F, *(&v48 + 1)) >= 2)
        {
          if (BYTE1(v48) > 2u)
          {
            if (BYTE1(v48) - 3 < 2)
            {
              v27 = *sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
              *(v27 + 129) = 2;
              v13 = *(v27 + 64);
              v14 = *(v27 + 72);
              sub_100023708(&v48, &v43);
              v15 = 2;
              goto LABEL_32;
            }
          }

          else
          {
            if (!BYTE1(v48))
            {
              v28 = *sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
              *(v28 + 129) = 0;
              v13 = *(v28 + 64);
              v14 = *(v28 + 72);
              sub_100023708(&v48, &v43);
              v15 = 0;
              goto LABEL_32;
            }

            if (BYTE1(v48) == 1)
            {
              v26 = *sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
              *(v26 + 129) = 1;
              v13 = *(v26 + 64);
              v14 = *(v26 + 72);
              sub_100023708(&v48, &v43);
              v15 = 1;
              goto LABEL_32;
            }
          }

          if (!v48)
          {
            v29 = *sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
            *(v29 + 129) = 4;
            v30 = *(v29 + 64);
            v31 = *(v29 + 72);
            v32 = objc_opt_self();
            sub_100023708(&v48, &v43);
            v33 = [v32 sharedStyleProvider];
            v34 = [v33 transcriptViewRecordingDefaultTextColor];

            v35 = sub_100023E44(v34);
            v36 = [v32 sharedStyleProvider];
            v37 = [v36 transcriptViewRecordingHighlightedLastWordTextColor];
            v38 = [v36 transcriptViewRecordingHighlightedSecondToLastWordTextColor];
            v39 = sub_100023E44(v37);
            v40 = sub_100023E44(v38);

            v41[0] = 0;
            *&v43 = v35;
            *(&v43 + 1) = v40;
            *&v44 = v39;
            BYTE8(v44) = 1;
            v45 = v30;
            v46 = v31;
            v47[0] = 1;
            memset(&v47[7], 0, 32);
            *&v47[39] = 255;
            v47[41] = 1;
            *&v47[47] = 0x4008000000000000;
            v47[55] = 0;
            goto LABEL_34;
          }
        }

        else if (v48 - 1 > 1 || BYTE1(v48) != 5)
        {
          v12 = *sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
          *(v12 + 129) = 3;
          v13 = *(v12 + 64);
          v14 = *(v12 + 72);
          sub_100023708(&v48, &v43);
          v15 = 3;
LABEL_32:
          sub_10002B970(v15, v41);
          v43 = *v41;
          v44 = *&v41[16];
          v45 = v13;
          v46 = v14;
          *v47 = *&v41[41];
          *&v47[16] = *&v41[57];
          *&v47[32] = *&v41[73];
          *&v47[48] = v42;
LABEL_34:
          sub_10002BD98(&v43);
          return sub_100023778(&v48);
        }

        v16 = *sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
        *(v16 + 129) = 5;
        v17 = *(v16 + 64);
        v18 = *(v16 + 72);
        v19 = objc_opt_self();
        sub_100023708(&v48, &v43);
        v20 = [v19 sharedStyleProvider];
        v21 = [v20 transcriptViewPlaybackDefaultTextColor];

        v22 = sub_100023E44(v21);
        v23 = [v19 sharedStyleProvider];
        v24 = [v23 transcriptViewPlaybackHighlightedTextColor];

        v25 = sub_100023E44(v24);
        v41[0] = 1;
        *&v43 = v22;
        *(&v43 + 1) = v25;
        *&v44 = 0;
        BYTE8(v44) = 0;
        v45 = v17;
        v46 = v18;
        v47[0] = 0;
        memset(&v47[7], 0, 32);
        *&v47[39] = 255;
        v47[41] = 1;
        *&v47[47] = 0;
        v47[55] = 1;
        goto LABEL_34;
      }

      if (v9 != 128 || *(&v48 + 1) != 1)
      {
        goto LABEL_25;
      }
    }

    else if ((v49 & 0xC0) != 0x80 || *(&v48 + 1))
    {
      goto LABEL_25;
    }

LABEL_23:
    if (v49 != 128)
    {
      goto LABEL_25;
    }

    return sub_100023708(&v48, &v43);
  }

  if ((v49 & 0xC0) != 0x40)
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_10002B970@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  LOBYTE(v2) = a1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8, v5);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8, v7);
  if (v2 <= 2u)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v2 = String.init(localized:table:bundle:locale:comment:)();
        v9 = v8;
        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      else
      {
        v2 = 0xD000000000000011;
        v9 = 0x800000010022D710;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v10 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v27;
        v12 = 1;
      }
    }

    else
    {
      v2 = v2;
      v12 = 1;
      v9 = v2;
      v10 = v2;
      v11 = v2;
    }

    goto LABEL_11;
  }

  if (v2 == 3)
  {
    sub_1000CC28C(v35);
    v2 = v35[0];
    v9 = v35[1];
    v10 = v35[2];
    v11 = v35[3];
    v12 = v36;
LABEL_11:
    result = sub_100024294(_swiftEmptyArrayStorage);
    v19 = 0;
    v21 = 0;
    v25 = 0;
    v24 = 0;
    v26 = 1;
    v23 = 2;
    v22 = -1;
    goto LABEL_12;
  }

  if (v2 == 5)
  {
    v13 = objc_opt_self();
    v14 = [v13 sharedStyleProvider];
    v15 = [v14 transcriptViewPlaybackDefaultTextColor];

    v16 = sub_100023E44(v15);
    v17 = [v13 sharedStyleProvider];
    v18 = [v17 transcriptViewPlaybackHighlightedTextColor];

    v19 = sub_100023E44(v18);
    result = v16;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v2 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v24 = 0;
    v25 = 1;
    v12 = -1;
    v26 = 1;
  }

  else
  {
    v28 = objc_opt_self();
    v29 = [v28 sharedStyleProvider];
    v30 = [v29 transcriptViewRecordingDefaultTextColor];

    v31 = sub_100023E44(v30);
    v32 = [v28 sharedStyleProvider];
    v33 = [v32 transcriptViewRecordingHighlightedLastWordTextColor];
    v34 = [v32 transcriptViewRecordingHighlightedSecondToLastWordTextColor];
    v21 = sub_100023E44(v33);
    v19 = sub_100023E44(v34);

    result = v31;
    v2 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v26 = 0;
    v24 = 0x4008000000000000;
    v22 = 1;
    v12 = -1;
    v23 = 1;
    v25 = 1;
  }

LABEL_12:
  *a2 = result;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = v23;
  *(a2 + 48) = v2;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 81) = 0;
  *(a2 + 82) = v25;
  *(a2 + 88) = v24;
  *(a2 + 96) = v26;
  return result;
}

uint64_t sub_10002BD98(uint64_t a1)
{
  v2 = *(v1 + 112);
  v17 = *(v1 + 96);
  v18 = v2;
  v19 = *(v1 + 128);
  v3 = *(v1 + 48);
  v14[0] = *(v1 + 32);
  v14[1] = v3;
  v4 = *(v1 + 80);
  v15 = *(v1 + 64);
  v16 = v4;
  v22[0] = v14[0];
  v22[1] = v3;
  v22[2] = v15;
  v22[3] = v4;
  v22[4] = v17;
  v22[5] = v2;
  v23 = v19;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  v6 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v6;
  v7 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v7;
  *(v1 + 128) = *(a1 + 96);
  sub_10002BE9C(v14, v20);
  sub_10002BF18(v22);
  v8 = *(v1 + 112);
  v20[4] = *(v1 + 96);
  v20[5] = v8;
  v21 = *(v1 + 128);
  v9 = *(v1 + 48);
  v20[0] = *(v1 + 32);
  v20[1] = v9;
  v10 = *(v1 + 80);
  v20[2] = *(v1 + 64);
  v20[3] = v10;
  sub_10002BE9C(v20, v13);
  v11 = sub_10002BF8C(v14, v20);
  sub_10002BF18(v14);
  result = sub_10002BF18(v20);
  if (!v11)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10002B04C(2);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10002BF04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BF6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10002BF8C(uint64_t a1, uint64_t a2)
{
  if ((sub_10002C20C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *(a1 + 8);
    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v4)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }

      v9 = *(a1 + 16);

      if ((sub_10002C20C(v6, v8) & 1) == 0)
      {
        sub_100173C8C(v8, v7, v5);
        return 0;
      }

      v10 = v9;
      v11 = v7;
    }

    else
    {
      if (v5)
      {
        return 0;
      }

      v10 = v6;
      v11 = v8;
    }

    v12 = sub_10002C20C(v10, v11);
    sub_100173C8C(v8, v7, v5);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 41);
  v15 = *(a2 + 41);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

LABEL_24:
    v18 = *(a1 + 48);
    v17 = *(a1 + 56);
    v20 = *(a1 + 64);
    v19 = *(a1 + 72);
    v21 = *(a1 + 80);
    v23 = *(a2 + 48);
    v22 = *(a2 + 56);
    v25 = *(a2 + 64);
    v24 = *(a2 + 72);
    v26 = *(a2 + 80);
    if (v21 == 255)
    {
      if (v26 == 255)
      {
LABEL_31:
        if ((*(a1 + 81) ^ *(a2 + 81)) & 1) != 0 || ((*(a1 + 82) ^ *(a2 + 82)))
        {
          return 0;
        }

        v31 = *(a2 + 96);
        if ((*(a1 + 96) & 1) == 0)
        {
          if (*(a1 + 88) != *(a2 + 88))
          {
            v31 = 1;
          }

          return (v31 & 1) == 0;
        }

        return (*(a2 + 96) & 1) != 0;
      }
    }

    else if (v26 != 255)
    {
      v34[0] = *(a2 + 48);
      v34[1] = v22;
      v34[2] = v25;
      v34[3] = v24;
      v35 = v26 & 1;
      v32[0] = v18;
      v32[1] = v17;
      v32[2] = v20;
      v32[3] = v19;
      v33 = v21 & 1;
      if ((sub_100184A78(v32, v34) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_31;
    }

    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    v30 = *(a1 + 72);
    sub_100184B7C(v27, v28, v29, v19, v21);
    sub_100184B7C(v23, v22, v25, v24, v26);
    sub_100184B94(v18, v17, v29, v30, v21);
    sub_100184B94(v23, v22, v25, v24, v26);
    return 0;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v14) & 1) == 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_10002C20C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    sub_1000CC230(*(v3 + 56) + 40 * v12, &v24);
    v21 = v25;
    v22 = v24;
    v14 = v26;
    v15 = v13;
    if (!v13)
    {
      return 1;
    }

    v16 = v15;
    v24 = v22;
    v25 = v21;
    v26 = v14;
    v17 = sub_10002454C(v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1000D513C(&v24);
      return 0;
    }

    sub_1000CC230(*(a2 + 56) + 40 * v17, v23);
    v20 = static AnyHashable.== infix(_:_:)();
    sub_1000D513C(v23);
    result = sub_1000D513C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_10002C390(double a1)
{
  result = sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider), *(v1 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider + 24));
  v4 = *result;
  v5 = *(*result + 56);
  if (v5 != a1)
  {
    v6 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = objc_opt_self();
    sub_100023764(v6, v7);
    v9 = [v8 sharedStyleProvider];
    if ([v9 transcriptViewShouldUseWidthMultiplier])
    {
      [v9 centerContentTranscriptViewMaxWidth];
      v11 = v10;
      [v9 centerContentTranscriptViewWidthMultiplier];
      v13 = v12;

      v14 = v5 * v13;
      if (v11 < v5 * v13)
      {
        v14 = v11;
      }

      v15 = (v5 - v14) * 0.5;
    }

    else
    {
      [v9 transcriptViewHorizontalMargins];
      v15 = v16;
    }

    v17 = sub_10000AACC((v1 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v1 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
    v18 = *v17;
    v19 = *(*v17 + 80);
    v20 = *(*v17 + 96);
    v34 = *(*v17 + 128);
    v21 = *(v18 + 112);
    v32 = v20;
    v33 = v21;
    v31 = v19;
    v22 = *(v18 + 64);
    v23 = *(v18 + 32);
    v29 = *(v18 + 48);
    v30 = v22;
    v28 = v23;
    v35[0] = *(v18 + 32);
    v35[1] = v29;
    v27[104] = 0;
    v36 = v15;
    v37 = 0;
    v24 = *(v18 + 73);
    v25 = *(v18 + 89);
    v26 = *(v18 + 105);
    v41 = *(v18 + 121);
    v40 = v26;
    v39 = v25;
    v38 = v24;
    sub_10002BE9C(&v28, v27);
    sub_10002BD98(v35);
    return sub_10010D6F8(v6, v7);
  }

  return result;
}

void *sub_10002C544(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  result = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider + 24));
  v7 = *(*result + 32);
  LODWORD(v8) = *(*result + 51);
  if ((a3 & 0x10100) != 0)
  {
    if (*(*result + 49) || *(*result + 50))
    {
      if (v7 == a1)
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v7 == a1)
    {
LABEL_13:
      if (v8)
      {
        return result;
      }
    }
  }

  else
  {
    if (((*(*result + 49) | *(*result + 50)) & 1) == 0)
    {
      if (v7 == a1 && (((a3 >> 24) & 1 ^ v8) & 1) == 0)
      {
        return result;
      }

      goto LABEL_15;
    }

    v8 = (a3 >> 24) & 1;
    if (v7 == a1)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v9 = *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_autoScrollTimer);

  return [v9 invalidate];
}

void *sub_10002C628(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider + 24));
  v6 = *(*result + 48);
  v29 = *(*result + 32);
  v30 = v6;
  if ((a3 & 0x10100) == 0)
  {
    if ((BYTE1(v6) & 1) != 0 || BYTE2(v30) == 1)
    {
      if ((a3 & 0x1000000) != 0)
      {
        return result;
      }

      if (BYTE1(v6))
      {
        goto LABEL_14;
      }
    }

    else if ((((a3 >> 24) & 1 ^ BYTE3(v30)) & 1) == 0)
    {
      return result;
    }

LABEL_12:
    if ((BYTE2(v30) & 1) == 0 && BYTE3(v30) != 1)
    {
      if ((a3 & 0x100) == 0 || v29 == 2)
      {
        if (v29 == 2)
        {
          return result;
        }

        sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
        sub_100023708(&v29, &v23);
        sub_1000CA144();
      }

      else
      {
        sub_100023708(&v29, &v23);
        sub_10010D454();
      }

      return sub_100023778(&v29);
    }

LABEL_14:
    v7 = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
    v8 = *v7;
    v9 = *(*v7 + 32);
    v10 = *(*v7 + 64);
    v11 = *(*v7 + 80);
    v12 = *(*v7 + 96);
    v13 = *(*v7 + 112);
    v22 = *(*v7 + 128);
    v21[4] = v12;
    v21[5] = v13;
    v21[2] = v10;
    v21[3] = v11;
    v15 = *(v8 + 32);
    v14 = *(v8 + 48);
    v21[0] = v9;
    v21[1] = v14;
    v16 = *(v8 + 48);
    *&v24[9] = *(v8 + 57);
    v23 = v15;
    *v24 = v16;
    v17 = *(v8 + 74);
    v18 = *(v8 + 90);
    v19 = *(v8 + 106);
    *(v28 + 15) = *(v8 + 121);
    v28[0] = v19;
    v27 = v18;
    v26 = v17;
    v25 = 2;
    sub_100023708(&v29, v20);
    sub_10002BE9C(v21, v20);
    sub_10002BD98(&v23);
    return sub_100023778(&v29);
  }

  if ((BYTE1(v6) & 1) == 0 && (BYTE2(v30) & 1) == 0 && (BYTE3(v30) & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

void *sub_10002C7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = BYTE4(a3);
  v5 = (v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider);
  result = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider + 24));
  v7 = *(*result + 48);
  v52[0] = *(*result + 32);
  v52[1] = v7;
  if ((v4 & 1) != BYTE4(v7))
  {
    if (*(*sub_10000AACC(v5, v5[3]) + 52) == 1)
    {
      v8 = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
      v9 = *v8;
      v10 = *(*v8 + 32);
      v11 = *(*v8 + 64);
      v12 = *(*v8 + 80);
      v13 = *(*v8 + 96);
      v14 = *(*v8 + 112);
      v43 = *(*v8 + 128);
      v41 = v13;
      v42 = v14;
      v39 = v11;
      v40 = v12;
      v16 = *(v9 + 32);
      v15 = *(v9 + 48);
      v37 = v10;
      v38 = v15;
      v17 = *(v9 + 48);
      v18 = *(v9 + 64);
      v44 = v16;
      v45 = v17;
      v19 = *(v9 + 80);
      v20 = *(v9 + 96);
      v49 = *(v9 + 112);
      v47 = v19;
      v48 = v20;
      v46 = v18;
      v21 = *(v9 + 114);
      *(v51 + 7) = *(v9 + 121);
      v51[0] = v21;
      v50 = 1;
    }

    else
    {
      v22 = sub_10000AACC((v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
      v23 = *v22;
      v24 = *(*v22 + 32);
      v25 = *(*v22 + 64);
      v26 = *(*v22 + 80);
      v27 = *(*v22 + 96);
      v28 = *(*v22 + 112);
      v43 = *(*v22 + 128);
      v41 = v27;
      v42 = v28;
      v39 = v25;
      v40 = v26;
      v30 = *(v23 + 32);
      v29 = *(v23 + 48);
      v37 = v24;
      v38 = v29;
      v31 = *(v23 + 48);
      v32 = *(v23 + 64);
      v44 = v30;
      v45 = v31;
      v33 = *(v23 + 80);
      v34 = *(v23 + 96);
      v49 = *(v23 + 112);
      v47 = v33;
      v48 = v34;
      v46 = v32;
      v35 = *(v23 + 114);
      *(v51 + 7) = *(v23 + 121);
      v51[0] = v35;
      v50 = 0;
    }

    sub_100023708(v52, v36);
    sub_10002BE9C(&v37, v36);
    sub_10002BD98(&v44);
    return sub_100023778(v52);
  }

  return result;
}

void *sub_10002CA70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10002CAA8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LabelConfigurationMapperKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LabelConfigurationMapperKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10002CB50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002CB70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10002CB9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002CBD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002CC0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CC44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CC84()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002CD0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002CD44()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002CD94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002CDCC()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10002CE04()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002CE5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000D4388(a1, a2);
  }

  return a1;
}

uint64_t sub_10002CE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002CED20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002CF38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C773C(&qword_1002CED20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10002CFFC()
{
  v1 = sub_1000C773C(&qword_1002CEF70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002D0EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002D13C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D174()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002D1C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D1F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D238(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002CF748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D2A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002D314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002CF9E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000C773C(&qword_1002CF9D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002D41C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C773C(&qword_1002CF9E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000C773C(&qword_1002CF9D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002D530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002D620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AttributedString();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002D728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignposter();
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

uint64_t sub_10002D7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignposter();
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

uint64_t sub_10002D8A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D8DC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D938()
{
  v1 = sub_1000C773C(&qword_1002D0030);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002D9CC()
{
  v1 = sub_1000C773C(&qword_1002D0040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002DA60()
{
  v1 = sub_1000C773C(&qword_1002D0060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002DAF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DB3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DB8C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DBC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DC00()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DC48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DC80()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DCC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DD08()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DD50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DD88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DDC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DE00()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002DEDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002DF24()
{
  v1 = sub_1000C773C(&qword_1002D0490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v12 = v3 | v8;
  v10 = (((((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v10 + 8, v12 | 7);
}

uint64_t sub_10002E0C4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002E198()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E1D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002E218()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002E264()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002E2D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E318()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E358(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10002E404(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002E4A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E4DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E514()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002E558@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002E5D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E608()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10002E710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10002E7D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E808()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E848()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E888()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E8C0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002EA6C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.appearsActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EAC8()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002EB10()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EB48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002EB90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002EBC8()
{
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    if (v1)
    {
    }

    else
    {

      if (*(v0 + 48))
      {
        sub_100014B64(v0 + 24);
      }
    }
  }

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10002EC28()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002EC78()
{
  sub_1000E78D8();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_10002ED24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002ED74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EDAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002EDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000C773C(&qword_1002D13F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002EEA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000C773C(&qword_1002D13F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002D1AB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002F044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C773C(&qword_1002D1AB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10002F13C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100126484(v1);
}

uint64_t sub_10002F22C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D1B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F328@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002F3BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F418()
{
  v1 = (type metadata accessor for TranscriptionData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F540()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F580()
{
  v1 = *(sub_1000C773C(&unk_1002D4AC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for TranscriptionData(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for Locale();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = *(v5 + 20);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002F6F8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F730()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002F778()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10002F7F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002F854()
{
  v1 = sub_1000C773C(&qword_1002D1DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002F8E8()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002F948()
{
  v1 = sub_1000C773C(&qword_1002D1DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002FA38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FA70()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002FACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000C773C(&qword_1002CFFD8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002FBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000C773C(&qword_1002CFFD8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002FCD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FD08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002CDFD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000C773C(&qword_1002CDFE0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002FE54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C773C(&qword_1002CDFD8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000C773C(&qword_1002CDFE0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002FF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002FFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000300C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CDFD8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100030138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CDFD8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000301B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100030220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100030290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002CDFD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000C773C(&qword_1002CDFE0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100030398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C773C(&qword_1002CDFD8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000C773C(&qword_1002CDFE0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000304AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100030518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100030588(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C773C(&qword_1002CDFD8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000C773C(&qword_1002CDFE8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000C773C(&qword_1002CDFF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000C773C(&qword_1002CDFF8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_1000C773C(&qword_1002CE000);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_100030794(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000C773C(&qword_1002CDFD8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000C773C(&qword_1002CDFE8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000C773C(&qword_1002CDFF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_1000C773C(&qword_1002CDFF8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_1000C773C(&qword_1002CE000);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1000309AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100030AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

__n128 sub_100030D50@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100030D9C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100030E10@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

double sub_100030E88@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_100030F00@<D0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100030F48@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100030FBC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100030FE8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100031014@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100031040()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031078()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000310B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000310F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031144()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003118C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000311CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000312D8@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

double sub_100031350@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

__n128 sub_1000313C8@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_100031418@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100031444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002D39A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000C773C(&qword_1002D39A8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100031568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C773C(&qword_1002D39A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000C773C(&qword_1002D39A8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100031688()
{
  sub_100014B64(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000316DC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000318E0()
{
  v1 = type metadata accessor for RCRecordButton();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000C773C(&qword_1002D0F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ControlSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_1000C773C(&qword_1002D0F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_100169AE8(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  sub_100014B64(v5 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100031AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100031B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttributedString();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100031C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for AttributedString();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100031CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for AttributedString();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100031D2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031D6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031DAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031DE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100031E70()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100031EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100031F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100031FB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100031FFC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032044()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10003208C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000320D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003211C()
{
  v1 = sub_1000C773C(&unk_1002D4D80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100032270()
{
  v1 = sub_1000C773C(&qword_1002D1DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100032304()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003233C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003238C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000323C4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100032414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000C773C(&qword_1002CFFD8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100032498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000C773C(&qword_1002CFFD8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100032520()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003256C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CDFD8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000326BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CDFD8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100032738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000327A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100032814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CDFD8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003288C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CDFD8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100032908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100032974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000329F4()
{

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100032A2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100032A44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032A7C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100032AB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100032AF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032B38()
{
  v1 = sub_1000C773C(&qword_1002D5EC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100032BCC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100032C10()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032C48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

unsigned __int8 *sub_100032C94@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100032CA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return swift_errorRetain();
}

uint64_t sub_100032CD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032D20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032D58()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v3;
  v11 = (v5 + v8) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);

  v9(v0 + v8, v1);

  return _swift_deallocObject(v0, v11 + 8, v3 | 7);
}

uint64_t sub_100032EA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032EDC()
{
  v1 = sub_1000C773C(&qword_1002D5F98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100033030@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 playing];
  *a2 = result;
  return result;
}

id sub_10003307C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playbackError];
  *a2 = result;
  return result;
}

id sub_1000330C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ioStarted];
  *a2 = result;
  return result;
}

id sub_100033118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recordingError];
  *a2 = result;
  return result;
}

id sub_100033174@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 recording];
  *a2 = result;
  return result;
}

uint64_t sub_1000331B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000331EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000332B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100033380()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000333B8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserDataConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DiagnosticsConsentProvider();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100033518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UserDataConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DiagnosticsConsentProvider();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100033630()
{
  v1 = sub_1000C773C(&qword_1002D67B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000336C4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100033710()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100033750()
{
  v1 = sub_1000C773C(&qword_1002D1DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000338B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_10003408C(uint64_t a1)
{
  v2 = [*(a1 + 32) _noiseSuppressionParameters];
  v3 = [*(a1 + 32) _reverbSuppressionParameters];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];
  v5 = qword_1002D6F80;
  qword_1002D6F80 = v4;

  result = [qword_1002D6F80 count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v8 = [qword_1002D6F80 objectAtIndexedSubscript:i];
      [v8 setAddress:i];

      result = [qword_1002D6F80 count];
    }
  }

  return result;
}

void sub_10003449C(id a1)
{
  v1 = +[NSBundle mainBundle];
  v15 = [v1 URLForResource:@"voiceMemo_NS_ReverbSuppressor" withExtension:@"propstrip"];

  v2 = +[NSBundle mainBundle];
  v3 = [v2 pathForResource:@"aufx-drvb-appl" ofType:@"plist"];

  v4 = [NSMutableDictionary dictionaryWithContentsOfURL:v15];
  v5 = [v4 objectForKeyedSubscript:@"Boxes"];
  v6 = [v5 mutableCopy];
  [v4 setObject:v6 forKeyedSubscript:@"Boxes"];

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 mutableCopy];
  [v6 setObject:v8 atIndexedSubscript:0];

  v9 = [v8 objectForKeyedSubscript:@"Properties"];
  v10 = [v9 mutableCopy];
  [v8 setObject:v10 forKeyedSubscript:@"Properties"];

  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 mutableCopy];
  [v10 setObject:v12 atIndexedSubscript:0];

  [v12 setObject:v3 forKeyedSubscript:@"Path"];
  v13 = [v4 copy];
  v14 = qword_1002D6F98;
  qword_1002D6F98 = v13;
}

void sub_1000346BC(id a1)
{
  v1 = +[NSBundle mainBundle];
  v4 = [v1 URLForResource:@"voiceMemo_NS_ReverbSuppressor" withExtension:@"austrip"];

  v2 = [NSDictionary dictionaryWithContentsOfURL:v4];
  v3 = qword_1002D6FA8;
  qword_1002D6FA8 = v2;
}

void sub_100035764(void *a1, double a2)
{
  v2 = (a2 * 1000000000.0);
  block = a1;
  v3 = dispatch_time(0, v2);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_100035BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100035BEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _performTest:*(a1 + 32) options:*(a1 + 40)];
}

void sub_1000362F8(uint64_t a1)
{
  [UIApp startedTest:qword_1002D6FB8];
  v2 = [*(a1 + 32) recordingViewControllerDelegate];
  [v2 performAction:3 atPosition:0 forUUID:0 sourceController:0 source:0.0];
}

void sub_10003642C(uint64_t a1)
{
  v1 = [*(a1 + 32) recordingViewControllerDelegate];
  [v1 performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];

  v2 = dispatch_time(0, 1000000000);

  dispatch_after(v2, &_dispatch_main_q, &stru_10028A3D8);
}

void sub_100036554(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 toggleFullCompact];

  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003660C;
  v4[3] = &unk_10028A420;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_100035764(v4, v3);
}

void sub_10003660C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 toggleFullCompact];

  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000366BC;
  v4[3] = &unk_10028A3B8;
  v5 = *(a1 + 32);
  sub_100035764(v4, v3);
}

void sub_1000366BC(uint64_t a1)
{
  v1 = [*(a1 + 32) recordingViewControllerDelegate];
  [v1 performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];

  sub_100035764(&stru_10028A3F8, 1.0);
}

void sub_1000367A4(uint64_t a1)
{
  v4 = [*(a1 + 32) _mainViewController];
  v1 = [v4 activeFolderViewController];
  v2 = [v1 recordingsCollectionViewController];

  v3 = [v2 uuidOfSelectedRecording];
  [UIApp startedTest:qword_1002D6FB8];
  [v4 performAction:22 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
}

void sub_1000368E8(uint64_t a1)
{
  v5 = [*(a1 + 32) _mainViewController];
  v1 = [v5 activeFolderViewController];
  v2 = [v1 recordingsCollectionViewController];

  v3 = [v2 uuidOfSelectedRecording];
  [v5 performAction:24 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
  v4 = dispatch_time(0, 1000000000);
  dispatch_after(v4, &_dispatch_main_q, &stru_10028A440);
}

void sub_100036A58(uint64_t a1)
{
  [UIApp startedTest:qword_1002D6FB8];
  v2 = [*(a1 + 32) recordingViewControllerDelegate];
  [v2 performAction:3 atPosition:0 forUUID:0 sourceController:0 source:0.0];
}

void sub_100036B88(uint64_t a1)
{
  [UIApp startedTest:qword_1002D6FB8];
  v2 = [*(a1 + 32) recordingViewControllerDelegate];
  [v2 performAction:4 atPosition:0 forUUID:0 sourceController:0 source:0.0];
}

void sub_100036D88(uint64_t a1)
{
  [UIApp startedTest:qword_1002D6FB8];
  v3 = [*(a1 + 32) cellDelegate];
  v2 = [*(a1 + 32) UUID];
  [v3 performAction:0 atPosition:v2 forCellWithUUID:0 source:0.0];
}

void sub_100036FA0(uint64_t a1)
{
  v2 = [RPTScrollViewTestParameters alloc];
  v3 = qword_1002D6FB8;
  v4 = [*(a1 + 32) _mainViewController];
  v5 = [v4 browseFoldersViewController];
  v6 = [v5 collectionView];
  v7 = [v2 initWithTestName:v3 scrollView:v6 completionHandler:&stru_10028A460];

  [RPTTestRunner runTestWithParameters:v7];
}

void sub_1000370E8(uint64_t a1)
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 hasPlaybackCard];

  v4 = *(a1 + 32);
  if (v3)
  {

    [v4 _scrollPlaybackCardWaveform];
  }

  else
  {
    [v4 _openRecordingCardForCurrentSelection];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000371C0;
    v5[3] = &unk_10028A3B8;
    v5[4] = *(a1 + 32);
    sub_100035764(v5, 3.0);
  }
}

void sub_100037FB8(uint64_t a1)
{
  v2 = OSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VMRecordingEngine _recordingStopped]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s -- Recording Stopped", &v7, 0xCu);
  }

  v3 = *(*(a1 + 32) + 192);
  if (v3)
  {
    v4 = v3;
    dispatch_group_leave(v4);
    v5 = *(a1 + 32);
    v6 = *(v5 + 192);
    *(v5 + 192) = 0;
  }
}

void sub_1000381F0(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003828C;
    v3[3] = &unk_10028A510;
    v4 = *(a1 + 48);
    [v2 finishWritingAudioFile:v3];
  }
}

void sub_100038444(uint64_t a1)
{
  v3 = +[VMAudioService sharedInstance];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [v3 stopRecordingWithController:WeakRetained error:0];
}

void sub_1000385E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (*(a1 + 136) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 168));
    v8 = [WeakRetained activityWaveformProcessor];

    v9 = objc_loadWeakRetained((a1 + 168));
    v10 = [v9 liveTranscription];

    if (!*(a1 + 176))
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[VMRecordingEngine _recordAudioBuffer:time:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s -- First audio buffer received", &buf, 0xCu);
      }

      v12 = +[AVAudioTime timeWithHostTime:sampleTime:atRate:](AVAudioTime, "timeWithHostTime:sampleTime:atRate:", [v6 hostTime], vcvtpd_s64_f64(objc_msgSend(v6, "sampleTime") / *(a1 + 56) * *(a1 + 64)), *(a1 + 64));
      v13 = *(a1 + 176);
      *(a1 + 176) = v12;

      v14 = OSLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B69F8();
      }

      v15 = [v5 format];
      [v8 prepareToProcessWithFormat:v15 audioTime:v6 punchInTime:*(a1 + 160)];

      v16 = [v5 format];
      [v10 prepareToProcessWithFormat:v16 audioTime:v6 punchInTime:*(a1 + 160)];
    }

    [v8 processAudioBuffer:v5];
    if (v10)
    {
      [v10 processAudioBuffer:v5];
    }

    if (*(a1 + 72))
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = [v5 frameLength];
      LODWORD(v19) = vcvtpd_u64_f64(v18 / v17 * v19);
      if ([*(a1 + 80) frameCapacity] < v19)
      {
        v20 = [AVAudioPCMBuffer alloc];
        v21 = [*(a1 + 72) outputFormat];
        v22 = [v20 initWithPCMFormat:v21 frameCapacity:v19];
        v23 = *(a1 + 80);
        *(a1 + 80) = v22;
      }

      if (v17 == v18)
      {
        v24 = *(a1 + 72);
        v25 = *(a1 + 80);
        v38 = 0;
        [v24 convertToBuffer:v25 fromBuffer:v5 error:&v38];
        v26 = v38;
        sub_1001B5B98(a1, *(a1 + 80), v6);
      }

      else
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v40 = 0x2020000000;
        v41 = [v5 frameLength] != 0;
        [*(a1 + 80) setFrameLength:0];
        v27 = *(a1 + 72);
        v28 = *(a1 + 80);
        v31 = _NSConcreteStackBlock;
        v32 = 3221225472;
        v33 = sub_100038B58;
        v34 = &unk_10028A5C0;
        p_buf = &buf;
        v37 = 0;
        v35 = v5;
        v29 = [v27 convertToBuffer:v28 error:&v37 withInputFromBlock:&v31];
        v26 = v37;
        if ([*(a1 + 80) frameLength])
        {
          sub_1001B5B98(a1, *(a1 + 80), v6);
        }

        else if (v29 == 3)
        {
          [a1 _handleRecordingError:v26];
          v30 = OSLogForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1001B6A78();
          }
        }

        _Block_object_dispose(&buf, 8);
      }
    }

    else
    {
      sub_1001B5B98(a1, v5, v6);
    }

    if (*(a1 + 184) != 0.0)
    {
      sub_1001B58C4(a1);
    }
  }
}

void sub_100038AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100038B58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  result = v4;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

void sub_10003923C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100039274(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    (*(WeakRetained[16] + 16))();
  }
}

void sub_100039300(uint64_t a1, AudioUnit inUnit, int a3)
{
  if (a3 == 2001)
  {
    v9 = v3;
    v10 = v4;
    ioDataSize = 4;
    outData = 0;
    Property = AudioUnitGetProperty(inUnit, 0x7D1u, 0, 0, &outData, &ioDataSize);
    if (!(Property | outData))
    {
      sub_1001B58C4(a1);
    }
  }
}

void sub_100039408(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = *(a1 + 40);
  v3 = +[VMAudioService sharedInstance];
  [v3 setRecordingError:v2];

  v4 = +[VMAudioService sharedInstance];
  v5 = [*(a1 + 32) controller];
  v9 = 0;
  v6 = [v4 stopRecordingWithController:v5 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = OSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001B6AEC();
    }
  }
}

void sub_10003979C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000397BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_100039808(WeakRetained);
    [v2 _signalOverdubPlaybackHasStarted];
    WeakRetained = v2;
  }
}

void sub_100039808(id *a1)
{
  if (a1)
  {
    v2 = a1[11];
    v3 = [a1[12] nextObject];
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      objc_initWeak(&location, a1);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100039914;
      v6[3] = &unk_10028A6A0;
      objc_copyWeak(&v7, &location);
      [v2 scheduleBuffer:v4 completionHandler:v6];
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1000398F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100039914(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100039808();
}

void sub_100039D24(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100039D40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10003AE1C(id a1, RCAVWaveformViewController *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(RCAVWaveformViewController *)a2 waveformViewController:a3];
  [v4 resetZoomScale];
}

void sub_10003AED0(uint64_t a1, void *a2)
{
  v3 = [a2 waveformViewController];
  [v3 setIsPlayback:*(a1 + 32)];
}

void sub_10003B010(uint64_t a1, void *a2)
{
  v3 = [a2 waveformViewController];
  [v3 setIsOverview:*(a1 + 32)];
}

void sub_10003B0D4(uint64_t a1, void *a2)
{
  v3 = [a2 waveformViewController];
  [v3 setIsCompactView:*(a1 + 32)];
}

void sub_10003B394(id a1, RCAVWaveformViewController *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(RCAVWaveformViewController *)a2 waveformDataSource:a3];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v6 = [v4 finished];
    v5 = v7;
    if ((v6 & 1) == 0)
    {
      [v7 cancelLoading];
      v5 = v7;
    }
  }
}

void sub_10003B404(id a1, RCAVWaveformViewController *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(RCAVWaveformViewController *)a2 waveformViewController:a3];
  [v4 stopScrolling];
}

void sub_10003B4B8(uint64_t a1, void *a2)
{
  v3 = [a2 waveformViewController];
  [v3 enableWaveformScrolling:*(a1 + 32)];
}

void sub_10003B51C(id a1, RCAVWaveformViewController *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(RCAVWaveformViewController *)a2 waveformViewController:a3];
  [v4 updateColors];
}

UIColor *__cdecl sub_10003C014(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 isUserInterfaceStyleDark])
  {
    v2 = 0.537;
    v3 = 0.514;
    v4 = 1.0;
  }

  else
  {
    v4 = 0.6;
    v2 = 0.137;
    v3 = 0.114;
  }

  v5 = [UIColor colorWithRed:v4 green:v2 blue:v3 alpha:1.0];

  return v5;
}

UIColor *__cdecl sub_10003D084(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 isUserInterfaceStyleDark])
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor systemGrayColor];
  }
  v2 = ;

  return v2;
}

void sub_10003D2C8(id a1)
{
  v1 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v2 = qword_1002D6FE8;
  qword_1002D6FE8 = v1;
}

UIColor *__cdecl sub_10003D4D0(id a1, UITraitCollection *a2)
{
  v2 = [(UITraitCollection *)a2 isUserInterfaceStyleDark];
  v3 = 0.129411765;
  if (v2)
  {
    v3 = 1.0;
  }

  return [UIColor colorWithWhite:v3 alpha:?];
}

UIColor *__cdecl sub_10003D540(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 isUserInterfaceStyleDark])
  {
    v2 = 0.898039216;
    v3 = 0.917647059;
  }

  else
  {
    v2 = 0.56;
    v3 = 0.58;
  }

  v4 = [UIColor colorWithRed:v2 green:v2 blue:v3 alpha:1.0];

  return v4;
}

UIColor *__cdecl sub_10003D5C4(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 isUserInterfaceStyleDark])
  {
    v2 = 0.180392157;
    v3 = 0.184313725;
    v4 = 1.0;
    v5 = 0.180392157;
  }

  else
  {
    v2 = 0.87;
    v4 = 1.0;
    v5 = 0.87;
    v3 = 0.87;
  }

  v6 = [UIColor colorWithRed:v2 green:v5 blue:v3 alpha:v4];

  return v6;
}

UIColor *__cdecl sub_10003D64C(id a1, UITraitCollection *a2)
{
  if ([(UITraitCollection *)a2 isUserInterfaceStyleDark])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v2 = ;

  return v2;
}

id sub_10003D72C(_BYTE *a1, void *a2)
{
  if ([a2 isUserInterfaceStyleDark])
  {
    if (a1[32])
    {
      if (a1[33])
      {
        if (a1[34])
        {
          v3 = 0.671;
          v4 = 0.655;
          v5 = 0.58;
        }

        else
        {
          v3 = 0.384;
          v4 = 0.353;
          v5 = 0.216;
        }

        goto LABEL_26;
      }

      if ((a1[34] & 1) == 0)
      {
        v3 = 0.435;
        v4 = 0.408;
        v5 = 0.282;
LABEL_26:
        v6 = 1.0;
        goto LABEL_32;
      }

LABEL_21:
      v7 = +[UIColor whiteColor];
      goto LABEL_33;
    }

    if (a1[33])
    {
      if (a1[34])
      {
        v3 = 0.588;
        v5 = 0.596;
      }

      else
      {
        v3 = 0.231;
        v5 = 0.247;
      }
    }

    else
    {
      if (a1[34])
      {
        goto LABEL_21;
      }

      v3 = 0.294;
      v5 = 0.31;
    }

LABEL_31:
    v6 = 1.0;
    v4 = v3;
    goto LABEL_32;
  }

  if (a1[32])
  {
    if (a1[33])
    {
      if (a1[34])
      {
        v3 = 0.482;
        v4 = 0.463;
        v5 = 0.384;
      }

      else
      {
        v3 = 0.898;
        v4 = 0.859;
        v5 = 0.714;
      }

      goto LABEL_26;
    }

    if ((a1[34] & 1) == 0)
    {
      v3 = 0.82;
      v4 = 0.788;
      v5 = 0.655;
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((a1[33] & 1) == 0)
  {
    if ((a1[34] & 1) == 0)
    {
      v3 = 0.765;
      v5 = 0.769;
      goto LABEL_31;
    }

LABEL_23:
    v7 = +[UIColor blackColor];
    goto LABEL_33;
  }

  if ((a1[34] & 1) == 0)
  {
    v3 = 0.859;
    v5 = 0.863;
    goto LABEL_31;
  }

  v3 = 0.478;
  v6 = 1.0;
  v4 = 0.478;
  v5 = 0.478;
LABEL_32:
  v7 = [UIColor colorWithRed:v3 green:v4 blue:v5 alpha:v6];
LABEL_33:

  return v7;
}

void sub_10003D9C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10003D9E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isIpadOrIOSMac])
  {
    v5 = [v3 isUserInterfaceStyleDark];

    if (v5)
    {
      v6 = +[UIColor tertiarySystemFillColor];
      [v6 alphaComponent];
      v8 = v7 * 0.66;

      v9 = +[UIColor tertiarySystemFillColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = +[UIColor quaternarySystemFillColor];
  [v10 alphaComponent];
  v8 = v11 * 0.33;

  v9 = +[UIColor quaternarySystemFillColor];
LABEL_6:
  v12 = v9;
  v13 = [v9 colorWithAlphaComponent:v8];

  return v13;
}

void sub_10003DBA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10003DBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isIpadOrIOSMac])
  {
    v5 = [v3 isUserInterfaceStyleDark];

    if (v5)
    {
      v6 = +[UIColor tertiarySystemFillColor];
      [v6 alphaComponent];
      v8 = v7 * 0.38;

      v9 = +[UIColor tertiarySystemFillColor];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = objc_loadWeakRetained((a1 + 32));
  if (![v10 _isCompactWidth])
  {

    goto LABEL_9;
  }

  v11 = [v3 isUserInterfaceStyleDark];

  if (!v11)
  {
LABEL_9:
    v12 = +[UIColor quaternarySystemFillColor];
    [v12 alphaComponent];
    v14 = 0.67;
    goto LABEL_10;
  }

  v12 = +[UIColor quaternarySystemFillColor];
  [v12 alphaComponent];
  v14 = 0.65;
LABEL_10:
  v8 = v13 * v14;

  v9 = +[UIColor quaternarySystemFillColor];
LABEL_11:
  v15 = v9;
  v16 = [v9 colorWithAlphaComponent:v8];

  return v16;
}

void sub_10003E77C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) playPauseButton];
  [v3 setEnabled:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) jumpBackwardButton];
  [v5 setEnabled:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) jumpForwardButton];
  [v7 setEnabled:v6];

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = &stru_100295BB8;
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v9 = [v11 localizedStringForKey:@"AX_PLAY_PAUSE_DIMMED_VALUE" value:&stru_100295BB8 table:0];
  }

  v10 = [*(a1 + 32) playPauseButton];
  [v10 setAccessibilityValue:v9];

  if ((v8 & 1) == 0)
  {
  }
}

void sub_10003F5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RCActivityWaveformProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_10003F998(uint64_t a1, int a2, int a3, void *a4)
{
  sub_10003FB5C(a1);
  v8 = (vm_page_size + 4 * a2 - 1) & -vm_page_size;
  *(a1 + 32) = v8 >> 2;
  v9 = malloc_type_calloc(3 * a3, 8uLL, 0x80040B8603338uLL);
  *a1 = &v9[8 * a3];
  *(a1 + 8) = &v9[16 * a3];
  *(a1 + 16) = v9;
  if (a3 < 1)
  {
    return 1;
  }

  **(a1 + 16) = sub_1000671C4(v8, 10, a4);
  v10 = **(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a3;
    v13 = a3 - 1;
    while (1)
    {
      *(*a1 + 8 * v11) = v10;
      *(*(a1 + 8) + 8 * v11) = *(*(a1 + 16) + 8 * v11);
      *(a1 + 36) = v11 + 1;
      if (v13 == v11)
      {
        return v11 + 1 >= v12;
      }

      *(*(a1 + 16) + 8 * v11 + 8) = sub_1000671C4(v8, 10, a4);
      v10 = *(*(a1 + 16) + 8 * v11++ + 8);
      if (!v10)
      {
        v14 = v11 >= v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
LABEL_9:
    sub_10003FB5C(a1);
  }

  return v14;
}

double sub_10003FB5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 36) >= 1)
    {
      v3 = 0;
      do
      {
        sub_1000671A8(*(*(a1 + 16) + 8 * v3++), 4 * *(a1 + 32));
      }

      while (v3 < *(a1 + 36));
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  atomic_store(0, (a1 + 40));
  return result;
}

uint64_t sub_10003FE04(uint64_t result, unsigned int a2)
{
  v2 = *(result + 36);
  v3 = (*(result + 24) + a2) % *(result + 32);
  *(result + 24) = v3;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 8 * v2;
    do
    {
      *(*(result + 8) + v4) = *(*(result + 16) + v4) + 4 * v3;
      v4 += 8;
    }

    while (v5 != v4);
  }

  atomic_fetch_add((result + 40), a2);
  v6 = atomic_load((result + 40));
  if (v6 > *(result + 32))
  {
    sub_1001B6F54();
  }

  return result;
}

id sub_10003FE7C(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  if (*&a2 != -1.0)
  {
    a2 = sub_10003FECC(*(*(a1 + 32) + 72), *&a2);
  }

  v3 = *(a1 + 32);

  return [v3 consumeRingBufferIfNecessary];
}

double sub_10003FECC(uint64_t *a1, float a2)
{
  v2 = *(a1 + 7);
  v3 = *(a1 + 6);
  if (v2 >= v3)
  {
    v4 = a1[4];
    v5 = *a1;
    v6 = *(a1 + 5) - *(*a1 + 4 * v4);
  }

  else
  {
    *(a1 + 7) = v2 + 1;
    v4 = a1[4];
    v5 = *a1;
    v6 = *(a1 + 5);
  }

  *(v5 + 4 * v4) = a2;
  result = v6 + a2;
  *(a1 + 5) = result;
  a1[4] = (v4 + 1) % v3;
  return result;
}

uint64_t sub_100040168(uint64_t result, int a2)
{
  v2 = (*(result + 28) + a2) % *(result + 32);
  *(result + 28) = v2;
  v3 = *(result + 36);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      *(*result + v4) = *(*(result + 16) + v4) + 4 * v2;
      v4 += 8;
    }

    while (v5 != v4);
  }

  atomic_fetch_add((result + 40), -a2);
  v6 = atomic_load((result + 40));
  if ((v6 & 0x80000000) != 0)
  {
    sub_1001B6F80();
  }

  return result;
}

void *sub_1000402F0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100040368(result, a2);
  }

  return result;
}

void sub_10004034C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100040368(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_1000403BC(a1, a2);
  }

  sub_1000403A4();
}

void sub_1000403BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_100040494();
}

void sub_100040404(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100040460(exception, a1);
}

std::logic_error *sub_100040460(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100040494()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_1000404C8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100042168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100042184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 dataSourceDidApplySnapshot];
}

void sub_1000423A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_1000423D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _playbackSpeedSliderCellAtIndexPath:v8];
LABEL_13:
    v24 = v13;

    goto LABEL_14;
  }

  v14 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
  v15 = [v9 isEqual:v14];

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _enhanceRecordingToggleCellAtIndexPath:v8];
    goto LABEL_13;
  }

  v16 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
  v17 = [v9 isEqual:v16];

  if (v17)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _removeSilenceToggleCellAtIndexPath:v8];
    goto LABEL_13;
  }

  v18 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
  v19 = [v9 isEqual:v18];

  if (v19)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _layerMixSliderCellAtIndexPath:v8];
    goto LABEL_13;
  }

  v20 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
  v21 = [v9 isEqual:v20];

  if (v21)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _speechIsolatorToggleAtIndexPath:v8];
    goto LABEL_13;
  }

  v22 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
  v23 = [v9 isEqual:v22];

  if (v23)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _speechIsolatorSliderAtIndexPath:v8];
    goto LABEL_13;
  }

  v26 = OSLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B6FAC();
  }

  v24 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v8];
LABEL_14:

  return v24;
}

id sub_10004263C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 isEqualToString:UICollectionElementKindSectionHeader];
  v11 = [v9 section];
  v12 = *(a1 + 32);
  v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSectionIdentifier];
  v14 = [v12 indexForSectionIdentifier:v13];

  v15 = [v9 section];
  v16 = *(a1 + 32);
  v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixSectionIdentifier];
  v18 = [v16 indexForSectionIdentifier:v17];

  v20 = v11 == v14 || v15 == v18;
  if (v10 && v20)
  {
    if (v11 == v14)
    {
      v21 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSectionHeaderCellIdentifier];
      v22 = @"PLAYBACK_SPEED";
    }

    else
    {
      if (v15 != v18)
      {
        v21 = 0;
        v26 = 0;
        goto LABEL_18;
      }

      v21 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixSectionHeaderCellIdentifier];
      v22 = @"LAYER_MIX_HEADER";
    }

    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:v22 value:&stru_100295BB8 table:0];

LABEL_18:
    v24 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v21 forIndexPath:v9];
    v27 = +[UIListContentConfiguration headerConfiguration];
    [v27 setText:v26];
    [v24 setContentConfiguration:v27];

    goto LABEL_19;
  }

  v23 = OSLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B702C();
  }

  v24 = 0;
LABEL_19:

  return v24;
}

void sub_100042ECC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100042EF0(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  v6 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:2];
  [v6 setShowsSeparators:1];
  v7 = +[UIColor clearColor];
  [v6 setBackgroundColor:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained diffableDataSource];
  v10 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSectionIdentifier];
  v11 = [v9 indexForSectionIdentifier:v10];

  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 diffableDataSource];
  v14 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixSectionIdentifier];
  v15 = [v13 indexForSectionIdentifier:v14];

  if (v11 == a2 || v15 == a2)
  {
    [v6 setHeaderMode:1];
  }

  v16 = [NSCollectionLayoutSection sectionWithListConfiguration:v6 layoutEnvironment:v5];
  [v16 contentInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v23 playbackSettingsCollectionViewContentInsetBottom];
  v25 = v24;

  [v16 setContentInsets:{v18, v20, v25, v22}];

  return v16;
}

void sub_100044B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100044B44(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v20 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained folderName];

  v8 = +[NSBundle mainBundle];
  v22 = [v8 localizedStringForKey:@"RENAME" value:&stru_100295BB8 table:0];

  v21 = [v5 renameContextMenuButtonImage];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100044E8C;
  v26[3] = &unk_10028AAA0;
  objc_copyWeak(&v28, (a1 + 32));
  v9 = v7;
  v27 = v9;
  v10 = [UIAction actionWithTitle:v22 image:v21 identifier:0 handler:v26];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];

  v13 = [v5 deleteContextMenuButtonImage];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100044EEC;
  v23[3] = &unk_10028AAA0;
  objc_copyWeak(&v25, (a1 + 32));
  v14 = v9;
  v24 = v14;
  v15 = [UIAction actionWithTitle:v12 image:v13 identifier:0 handler:v23];
  [v15 setAttributes:2];
  v29[0] = v10;
  v29[1] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:2];
  v17 = [UIMenu menuWithTitle:&stru_100295BB8 children:v16];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v28);

  return v17;
}

void sub_100044E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_100044E8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained actionHandler];
  [v2 showRenamingControllerWithFolderName:*(a1 + 32)];
}

void sub_100044EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained actionHandler];
  [v2 deleteFolderWithFolderName:*(a1 + 32)];
}

void sub_100048914(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 120))
  {
    v3 = *(a1 + 56);
    *buf = *(a1 + 40);
    *&buf[16] = v3;
    v17 = *(a1 + 72);
    v4 = *(v2 + 8);
    v5 = *(v2 + 24);
    v15 = *(v2 + 40);
    v14[0] = v4;
    v14[1] = v5;
    v6 = sub_100095B34(buf, v14);
    v7 = *(a1 + 32);
    if (v6 && v7[32] == *(a1 + 80))
    {
      return;
    }

    [v7 _unprepare];
    v2 = *(a1 + 32);
  }

  v8 = *(a1 + 80);
  v13 = 0;
  v9 = *(a1 + 56);
  *buf = *(a1 + 40);
  *&buf[16] = v9;
  v17 = *(a1 + 72);
  v10 = [v2 _prepareWithFormat:buf maxFramesPerRender:v8 error:&v13];
  v11 = v13;
  if ((v10 & 1) == 0)
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[VMProcessor prepareWithFormat:maxFramesPerRender:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s -- prepareWithFormat error %@", buf, 0x16u);
    }
  }
}

void sub_100048DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100048DF4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *&ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = 1;
  v3 = *(a1 + 64);
  *&v16.mSampleTime = *(a1 + 48);
  *&v16.mRateScalar = v3;
  v4 = *(a1 + 96);
  *&v16.mSMPTETime.mSubframes = *(a1 + 80);
  *&v16.mSMPTETime.mHours = v4;
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v8 = 0;
  LODWORD(v9) = *(a1 + 36);
  v10 = (a3 + 16);
  do
  {
    if (a2 - v8 >= *(a1 + 132))
    {
      v11 = *(a1 + 132);
    }

    else
    {
      v11 = a2 - v8;
    }

    if (v9 && !result)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        ioData.mBuffers[0].mDataByteSize = 4 * v11;
        v14 = *v13;
        v13 += 2;
        ioData.mBuffers[0].mData = (v14 + 4 * v8);
        *(a1 + 112) = &ioData;
        result = AudioUnitRender(*(*(a1 + 120) + 8 * v12++), 0, &v16, 0, v11, &ioData);
        v9 = *(a1 + 36);
      }

      while (v12 < v9 && result == 0);
    }

    v8 += v11;
    v16.mSampleTime = v16.mSampleTime + v11;
  }

  while (v8 < a2);
  return result;
}

void sub_100048F08(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state64 = 0;
  if (WeakRetained && !notify_get_state(a2, &state64))
  {
    v4 = [NSNumber numberWithUnsignedLongLong:state64];
    [WeakRetained _updateParameterForAddress:v4];
  }
}

void sub_100049114(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1002D6FF8;
  qword_1002D6FF8 = v1;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[VMDSPGraph parameters];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = qword_1002D6FF8;
        v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 address]);
        [v9 setObject:v8 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

uint64_t sub_100049460(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 176));
  (*(*(a1 + 40) + 16))();
  v2 = (*(a1 + 32) + 176);

  return pthread_mutex_unlock(v2);
}

uint64_t sub_1000494B4(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  if (*(a1 + 248) == 1 && pthread_mutex_trylock((a1 + 176)))
  {
    return 0;
  }

  v8 = 0;
  if (a4 && a2 && *(a1 + 120))
  {
    v9 = *(a1 + 249);
    v10 = *(a1 + 136);
    if (v10 == a3)
    {
      v11 = *(a1 + 152);
    }

    else
    {
      v11 = 0.0;
      if (*(a1 + 249))
      {
        v11 = 1.0;
      }

      *(a1 + 152) = v11;
    }

    if (v11 == 1.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    if (v11 == 0.0)
    {
      v8 = v9;
    }

    else
    {
      v8 = 1;
    }

    if (v9)
    {
      v13 = v11 != 1.0;
    }

    else
    {
      v13 = v11 != 0.0;
    }

    v15 = v10 != a3 || *(a1 + 144) != a3;
    if (v8 == 1 && v15)
    {
      sub_100095C2C(a4, *(a1 + 160));
      sub_100048DF4(a1, a2, *(a1 + 160));
    }

    if (v13)
    {
      sub_100095C2C(a4, *(a1 + 160));
    }

    v17 = a3 + a2;
    if (v8)
    {
      v8 = sub_100048DF4(a1, a2, a4);
      if (v15)
      {
        v18 = *(a1 + 240) >= a2 ? a2 : *(a1 + 240);
        v19 = a2 - v18 >= *(a1 + 244) ? *(a1 + 244) : a2 - v18;
        sub_100095DE4(a4, v18, 0);
        if (v19)
        {
          v20 = 1.0 / v19;
          sub_100095D80(a4, v19, v18, 0.0, v20);
        }
      }

      *(a1 + 48) = *(a1 + 48) + a2;
      *(a1 + 144) = v17;
    }

    if (v13)
    {
      v21 = *(a1 + 152);
      v22 = *(a1 + 156);
      if (!v12)
      {
        v22 = -v22;
      }

      v23 = a4[3];
      if (v23 >= 4)
      {
        v24 = 0;
        v25 = v23 >> 2;
        v28 = *a4;
        v27 = (a4 + 4);
        v26 = v28;
        v29 = *(a1 + 160) + 16;
        do
        {
          if (v26)
          {
            v30 = v27;
            v31 = v29;
            v32 = v26;
            do
            {
              v34 = *v30;
              v30 += 2;
              v33 = v34;
              v35 = *(v34 + 4 * v24);
              v36 = *v31;
              v31 += 2;
              *(v33 + 4 * v24) = ((1.0 - v21) * *(v36 + 4 * v24)) + (v35 * v21);
              --v32;
            }

            while (v32);
          }

          v21 = fminf(fmaxf(v22 + v21, 0.0), 1.0);
          ++v24;
        }

        while (v24 != v25);
      }

      *(a1 + 152) = v21;
    }

    *(a1 + 136) = v17;
  }

  if (*(a1 + 248) == 1)
  {
    pthread_mutex_unlock((a1 + 176));
  }

  return v8;
}

void sub_100049BB4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

uint64_t sub_100049C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *a6;
  if (v6)
  {
    v7 = 2;
    do
    {
      *&a6[v7] = *(*(a1 + 112) + v7 * 4);
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return 0;
}

id sub_10004A170(uint64_t a1)
{
  v2 = *(a1 + 40);
  *&v2 = v2;
  [*(*(a1 + 32) + 32) setOpacity:v2];
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v5[2] = *(a1 + 80);
  return [*(a1 + 32) setTransform:v5];
}

char *sub_10004A1D0(char *result, int a2)
{
  if (a2)
  {
    v2 = *(result + 56);
    v3[0] = *(result + 40);
    v3[1] = v2;
    v3[2] = *(result + 72);
    return [*(result + 4) setTransform:v3];
  }

  return result;
}

void sub_10004BF40(uint64_t a1, void *a2, void *a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v17 = a2;
  v18 = a3;
  if (v18)
  {
    v19 = [v17 animationForKey:v18];
    if (v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!a4)
  {
    if (*(a1 + 56) == 1 && ([v17 superlayer], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
    {
      v21 = 1;
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [v17 removeAllAnimations];
      v21 = 0;
    }

    [v17 setFrame:{a5, a6, a7, a8}];
    *&v48 = a9;
    [v17 setOpacity:v48];
    v49 = [v17 superlayer];

    if (v49)
    {
      if (v21)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v50 = [*(a1 + 32) layer];
      [v50 addSublayer:v17];

      if (v21)
      {
        goto LABEL_25;
      }
    }

    +[CATransaction commit];
    goto LABEL_25;
  }

LABEL_9:
  v22 = [v17 superlayer];

  if (!v22)
  {
    v23 = [*(a1 + 32) layer];
    [v23 addSublayer:v17];
  }

  v54 = a9;
  v24 = *(a1 + 40);
  if (v24 * 0.25 >= *(a1 + 48))
  {
    v25 = v24 * 0.25;
  }

  else
  {
    v25 = *(a1 + 48);
  }

  if (v19)
  {
    v26 = CACurrentMediaTime();
    [v19 beginTime];
    v28 = v27;
    [v19 duration];
    v30 = v26 - (v28 + v29);
    if (v30 > 0.1)
    {
      v25 = v30;
    }

    else
    {
      v25 = 0.1;
    }
  }

  v31 = v17;
  v53 = v18;
  v32 = [v31 presentationLayer];
  v33 = [v32 valueForKeyPath:@"position"];

  v34 = [v31 presentationLayer];
  v35 = [v34 valueForKeyPath:@"bounds"];

  v36 = [v31 presentationLayer];
  v37 = [v36 valueForKey:@"opacity"];

  v57.origin.x = a5;
  v57.origin.y = a6;
  v57.size.width = a7;
  v57.size.height = a8;
  MidX = CGRectGetMidX(v57);
  v58.origin.x = a5;
  v58.origin.y = a6;
  v58.size.width = a7;
  v58.size.height = a8;
  MidY = CGRectGetMidY(v58);
  v59.origin.x = a5;
  v59.origin.y = a6;
  v59.size.width = a7;
  v59.size.height = a8;
  Width = CGRectGetWidth(v59);
  v60.origin.x = a5;
  v60.origin.y = a6;
  v60.size.width = a7;
  v60.size.height = a8;
  Height = CGRectGetHeight(v60);
  [v31 setPosition:{MidX, MidY}];
  [v31 setBounds:{0.0, 0.0, Width, Height}];
  HIDWORD(v42) = HIDWORD(v54);
  *&v42 = v54;
  [v31 setOpacity:v42];
  v43 = [CABasicAnimation animationWithKeyPath:@"position"];
  v55 = v33;
  [v43 setFromValue:v33];
  v44 = [CABasicAnimation animationWithKeyPath:@"bounds"];
  v52 = v35;
  [v44 setFromValue:v35];
  v45 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v45 setFromValue:v37];
  v46 = objc_alloc_init(CAAnimationGroup);
  v56[0] = v43;
  v56[1] = v44;
  v56[2] = v45;
  v47 = [NSArray arrayWithObjects:v56 count:3];
  [v46 setAnimations:v47];

  if (v25 >= 0.0)
  {
    [v46 setDuration:v25];
  }

  [v46 setRemovedOnCompletion:{1, v18}];
  [v31 addAnimation:v46 forKey:v53];

  v18 = v51;
LABEL_25:
}

BOOL sub_10004C618(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  [v7 opacity];
  if (v8 < 1.0 || ([v7 isHidden] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [*(a1 + 32) layer];
    [v7 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v7 superlayer];
    [v10 convertRect:v19 fromLayer:{v12, v14, v16, v18}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v29.origin.x = v21 - a3;
    v29.size.width = a3 + a4 + v25;
    v29.origin.y = v23;
    v29.size.height = v27;
    v9 = CGRectContainsPoint(v29, *(a1 + 40));
  }

  return v9;
}

void sub_10004CC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 128), 8);
  _Unwind_Resume(a1);
}

double sub_10004CD00(id a1, double result, double a3, double a4, double a5, int a6)
{
  v6 = a3 - result;
  if (a6 <= 0)
  {
    v6 = result - a3;
  }

  v7 = fmax(v6, 0.0);
  v8 = -a6;
  v9 = v7 >= a4 || a4 <= 0.0;
  v10 = a3 + v8 * a4;
  if (!v9)
  {
    result = v10;
  }

  v11 = v7 <= a5 || a5 <= 0.0;
  v12 = a3 + v8 * a5;
  if (!v11)
  {
    return v12;
  }

  return result;
}

void sub_10004CD44(uint64_t a1, void *a2)
{
  v28 = a2;
  [v28 updateTrackingInfo];
  v3 = [v28 selectionBarType];
  if (v3 == 2)
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
    v21 = [v28 touch];
    v22 = [*(a1 + 32) superview];
    [v21 locationInView:v22];
    v24 = v23;

    if (([*(a1 + 32) enableTimeTrackingInView] & 1) == 0)
    {
      [v28 trackingOffset];
      v24 = v24 + v25;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
    [WeakRetained waveformSelectionOverlay:*(a1 + 32) timeForOffset:v24];
    *(*(*(a1 + 104) + 8) + 24) = v27;

    v4 = v28;
  }

  else
  {
    if (v3 == 1)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v14 = [v28 touch];
      v15 = [*(a1 + 32) superview];
      [v14 locationInView:v15];
      v17 = v16;
      [v28 trackingOffset];
      *(*(*(a1 + 88) + 8) + 24) = v17 + v18;

      v19 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v19 waveformSelectionOverlay:*(a1 + 32) timeForOffset:*(*(*(a1 + 88) + 8) + 24)];
      *(*(*(a1 + 72) + 8) + 24) = v20;

      (*(*(a1 + 40) + 16))(*(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
      v4 = v28;
      v13 = *(a1 + 72);
    }

    else
    {
      v4 = v28;
      if (v3)
      {
        goto LABEL_10;
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      v5 = [v28 touch];
      v6 = [*(a1 + 32) superview];
      [v5 locationInView:v6];
      v8 = v7;
      [v28 trackingOffset];
      *(*(*(a1 + 56) + 8) + 24) = v8 + v9;

      v10 = objc_loadWeakRetained((*(a1 + 32) + 160));
      [v10 waveformSelectionOverlay:*(a1 + 32) timeForOffset:*(*(*(a1 + 56) + 8) + 24)];
      *(*(*(a1 + 64) + 8) + 24) = v11;

      (*(*(a1 + 40) + 16))(*(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 72) + 8) + 24), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
      v4 = v28;
      v13 = *(a1 + 64);
    }

    *(*(v13 + 8) + 24) = v12;
  }

LABEL_10:
}

void sub_10004D12C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 touch];

  if (!v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

id sub_10004D60C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:{objc_msgSend(a2, "pointerValue")}];
  *a4 = result;
  return result;
}

id sub_1000503C0(uint64_t a1)
{
  v2 = objc_alloc_init(CALayer);
  [v2 setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 40) + *(a1 + 48) * -4.0}];
  [v2 setBackgroundColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
  [v2 setOpaque:1];

  return v2;
}

id sub_100050444(uint64_t a1)
{
  v2 = objc_alloc_init(CALayer);
  [v2 setBounds:{0.0, 0.0, *(a1 + 40) + *(a1 + 40), *(a1 + 40) + *(a1 + 40)}];
  [v2 setBackgroundColor:{objc_msgSend(*(a1 + 32), "CGColor")}];
  [v2 setCornerRadius:*(a1 + 40)];
  [v2 setOpaque:1];

  return v2;
}

void sub_100050FD8(uint64_t a1)
{
  v1 = [*(a1 + 32) durationLabel];
  [v1 setAlpha:0.0];
}

void sub_10005212C(uint64_t a1)
{
  [*(a1 + 32) setAxis:0];
  [*(a1 + 32) setAlignment:0];
  [*(a1 + 32) setDistribution:0];
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v20[0] = v2[13];
    v20[1] = v2[20];
    v20[2] = v2[21];
    v20[3] = v2[19];
    v20[4] = v2[14];
    v3 = v20;
    v4 = 5;
  }

  else
  {
    v19[0] = v2[13];
    v19[1] = v2[14];
    v3 = v19;
    v4 = 2;
  }

  v5 = [NSArray arrayWithObjects:v3 count:v4];
  v6 = [[NUIContainerStackView alloc] initWithArrangedSubviews:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  *(v7 + 144) = v6;

  v9 = [NUIContainerStackView alloc];
  v10 = *(a1 + 32);
  v18[0] = *(a1 + 40);
  v18[1] = *(v10 + 144);
  v11 = [NSArray arrayWithObjects:v18 count:2];
  v12 = [v9 initWithArrangedSubviews:v11];
  v13 = *(a1 + 32);
  v14 = *(v13 + 128);
  *(v13 + 128) = v12;

  [*(*(a1 + 32) + 128) setAxis:1];
  [*(a1 + 48) descriptionViewTitleToSecondaryPadding];
  [*(*(a1 + 32) + 128) setSpacing:?];
  [*(a1 + 32) _setArrangedSubviewsWithTitleDateDurationStack:*(*(a1 + 32) + 128) moreButton:*(*(a1 + 32) + 136)];
  v15 = [*(a1 + 32) style];
  if (v15 == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  if (v15 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  [*(*(a1 + 32) + 144) setDistribution:v16];
  [*(*(a1 + 32) + 128) setAlignment:v17];
  [*(a1 + 32) _updateStackIfNeeded];
}

void sub_1000567E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100056880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _doShare:v4];
}

void sub_1000568F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleFavorite];
}

void sub_100056934(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _doMoveToFolder:v3];
}

void sub_100056BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100056BEC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _doShowTranscriptionView:v3];
}

void sub_100056D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100056D24(uint64_t a1, void (**a2)(void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained showTranscriptMenuElement];
  (a2)[2](v4, v5);
}

void sub_100057D74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VMAudioOutputRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL sub_100057FF0(uint64_t a1, int a2, int a3, void *a4)
{
  v6 = sub_10003F998(a1, a2, a3, a4);
  if (v6)
  {
    v7 = (16 * a3) | 8;
    *(a1 + 48) = malloc_type_malloc(v7, 0x10800404ACF7207uLL);
    *(a1 + 56) = malloc_type_malloc(v7, 0x10800404ACF7207uLL);
  }

  return v6;
}

void sub_100058288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  v4 = [v2 outputNode];
  [v2 connect:v3 to:? format:?];
}

void sub_1000584A8(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  if (v1)
  {
    [v1 audioRendererQueueEmpty];
  }
}

void sub_100058608(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  if (v1)
  {
    [v1 audioRendererWasInterrupted];
  }
}

void sub_100058C7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained[48];
    v3 = atomic_load(WeakRetained + 20);
    v4 = v2 - v3;
    v5 = v4 & 0xFFFFF000;
    if ((v4 & 0xFFFFF000) != 0)
    {
      v6 = *(WeakRetained + 12);
      v7 = *(WeakRetained + 6);
      v8 = WeakRetained[19];
      *v6 = v8;
      if (v8)
      {
        v9 = v6 + 4;
        do
        {
          *(v9 - 2) = 1;
          *(v9 - 1) = 4 * v5;
          v10 = *v7++;
          *v9 = v10;
          v9 += 2;
          --v8;
        }

        while (v8);
      }

      v11 = (*(*(a1 + 32) + 16))();
      sub_10003FE04((WeakRetained + 10), v11);
    }

    if (*(WeakRetained + 200) == 1 && (*(WeakRetained + 201) & 1) == 0)
    {
      *(WeakRetained + 201) = 1;
      [WeakRetained sendEmptyQueueSignal];
    }
  }
}

uint64_t sub_100058DFC(uint64_t a1, _BYTE *a2, AudioTimeStamp *a3, UInt32 a4, AudioBufferList *a5)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100058F28;
  v17[3] = &unk_10028AE58;
  v17[4] = *(a1 + 32);
  v18 = objc_retainBlock(v17);
  if (*a2 == 1)
  {
    sub_100095DE4(a5, a4, 0);
    v12 = 0;
  }

  else
  {
    ioActionFlags = 0;
    v13 = *(*(a1 + 40) + 232);
    if (v13)
    {
      v14 = AudioUnitRender(v13, &ioActionFlags, a3, 0, a4, a5);
    }

    else
    {
      v14 = sub_100058FE8(*(a1 + 40), v10, &a3->mSampleTime, v11, a4, &a5->mNumberBuffers);
    }

    v12 = v14;
  }

  sub_1000593F8(&v18);
  return v12;
}

void sub_100058F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000593F8(va);
  _Unwind_Resume(a1);
}

void sub_100058F28(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 248);
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3 != -1)
  {
    *(v1 + 2) = -1;
    v4 = *(v1 + 1);
    v5 = v4;
    if (v3 && os_signpost_enabled(v4))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v3, "VMAudioOutputRenderer.audioPlayback", "", v6, 2u);
    }
  }
}

uint64_t sub_100058FE8(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, unsigned int a5, unsigned int *a6)
{
  v10 = atomic_load((a1 + 80));
  if (v10 >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 1)
  {
    sub_100059444(a1 + 40, a6, v11, 0);
  }

  v12 = a5 - v11;
  if ((a5 - v11) >= 1)
  {
    if (*(a1 + 160) == 1)
    {
      *(a1 + 208) += v12;
    }

    else
    {
      *(a1 + 200) = 1;
    }

    if (*a6)
    {
      v13 = 0;
      v14 = 4;
      do
      {
        bzero((*&a6[v14] + 4 * v11), 4 * (a5 - v11));
        ++v13;
        v14 += 4;
      }

      while (v13 < *a6);
    }
  }

  if (!*(a1 + 144))
  {
    *(a1 + 144) = a3[1];
    *(a1 + 152) = *a3;
  }

  if ((v12 > 0 || *(a1 + 184) != a3[2]) && os_unfair_lock_trylock((a1 + 196)))
  {
    *(a1 + 168) = a3[1];
    *(a1 + 176) = *a3;
    *(a1 + 184) = a3[2];
    *(a1 + 216) = *(a1 + 208);
    os_unfair_lock_unlock((a1 + 196));
  }

  result = *(a1 + 240);
  if (result)
  {
    v16 = *a3;

    return sub_1000494B4(result, a5, v16, a6);
  }

  return result;
}

void (***sub_1000593F8(void (***a1)(void)))(void)
{
  v2 = *a1;
  if (v2)
  {
    v2[2]();
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  return a1;
}

uint64_t sub_100059444(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 36) >= 1)
  {
    v6 = 0;
    v7 = *a1;
    v8 = a4;
    v9 = (a2 + 16);
    do
    {
      v10 = *v9;
      v9 += 2;
      memcpy((v10 + 4 * v8), *(v7 + 8 * v6++), 4 * a3);
    }

    while (v6 < *(a1 + 36));
  }

  return sub_100040168(a1, a3);
}

void sub_1000594DC(id a1)
{
  mach_timebase_info(&info);
  LODWORD(v1) = info.numer;
  LODWORD(v2) = info.denom;
  *&qword_1002D7018 = v1 / v2 * 0.000000001;
}

id sub_100059888(double a1)
{
  v1 = *&a1 <= 0.0;
  v2 = *&a1 + 1.0;
  if (*&a1 >= 0.0)
  {
    v2 = 1.0;
  }

  *&a1 = 1.0 - *&a1;
  if (v1)
  {
    *&a1 = 1.0;
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [NSNumber numberWithFloat:a1];
  v9[0] = v4;
  *&v5 = v3;
  v6 = [NSNumber numberWithFloat:v5];
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];

  return v7;
}

void sub_10005AA9C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001B741C();
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_10005B110(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 setMetadata:*(a1 + 32)];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005B23C;
    v11[3] = &unk_10028AF18;
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = v7;
    v11[4] = v8;
    v12 = v9;
    [v5 writeCompositionWithCompletionBlock:v11];
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001B766C();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10005B23C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v18 = 0;
    v9 = [v7 _overwriteFileAtURL:v8 withFileAtURL:v5 error:&v18];
    v10 = v18;
    if (v9)
    {
      v11 = +[NSFileManager defaultManager];
      v17 = v10;
      v12 = [v11 removeItemAtURL:v5 error:&v17];
      v13 = v17;

      if ((v12 & 1) == 0)
      {
        v14 = OSLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1001B7754();
        }
      }

      (*(a1[6] + 16))();
      v10 = v13;
    }

    else
    {
      v16 = OSLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001B76E0();
      }

      (*(a1[6] + 16))();
    }
  }

  else
  {
    v15 = OSLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1001B77C8();
    }

    (*(a1[6] + 16))();
  }
}

id sub_10005BD0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2[4] currentDuration];
  [v2 setDuration:?];
  result = [*(a1 + 32) currentTime];
  if (v4 < 0.0)
  {
    v5 = *(a1 + 32);

    return [v5 setCurrentTime:0.0];
  }

  return result;
}

id sub_10005C82C(uint64_t a1)
{
  [*(a1 + 32) setDuration:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _updateCurrentTimeForCapturedInputAtTime:v3];
}

id sub_10005C9A0(uint64_t a1)
{
  [*(a1 + 32) setCurrentTime:*(a1 + 40)];
  v2 = *(a1 + 32);
  [v2[8] duration];

  return [v2 setDuration:?];
}

id sub_10005CF18(uint64_t a1)
{
  [*(a1 + 32) setSelectionOverlayShouldUseInsertMode:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setSelectedTimeRangeEditingEnabled:1];
}

void sub_10005CF5C(uint64_t a1)
{
  v1 = [*(a1 + 32) _selectionOverlay];
  v2 = [v1 accessibilityElements];
  argument = [v2 firstObject];

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, argument);
  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, argument);
}

id sub_10005D1D0(uint64_t a1)
{
  if ([*(a1 + 32) isOverview])
  {
    [*(a1 + 32) updateVisibleTimeRangeToFullDuration];
  }

  v2 = *(a1 + 32);
  RCTimeRangeMake();

  return [v2 setSelectedTimeRange:? animationDuration:?];
}

uint64_t sub_10005D22C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005DB54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) recordingUUIDs];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isFavoriteForUUIDs:v3];
}

uint64_t sub_10005DE1C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10005DE34(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

void sub_10005DE50(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  (*(*(a1 + 56) + 16))();
  if (v5)
  {
    v6 = [v5 supportedInterfaceOrientations];
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10005DF74;
    v8[3] = &unk_10028B058;
    v9 = v5;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    [v7 rc_ensureIsInterfaceOrientationMask:v6 preferredOrientation:1 doneEnsuringBlock:v8];
  }

  else if ((a3 & 1) == 0 && (*(*(a1 + 64) + 16))())
  {
  }
}

id sub_10005DF74(uint64_t a1)
{
  [*(a1 + 32) rc_configurePopoverControllerWithSource:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 presentViewController:v3 animated:1 completion:&stru_10028B030];
}

void sub_10005E430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005E44C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateShareableContent];
    WeakRetained = v2;
  }
}

void sub_10005E758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10005E774(uint64_t a1)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005E904;
  v13[3] = &unk_10028A6A0;
  objc_copyWeak(&v14, (a1 + 40));
  v2 = objc_retainBlock(v13);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10005EA24;
  v11 = &unk_10028B0A8;
  objc_copyWeak(&v12, (a1 + 40));
  v3 = objc_retainBlock(&v8);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 32) presentedViewController];

  if (v5)
  {
    v6 = [*(a1 + 32) presentedViewController];

    v4 = v6;
  }

  v7 = [*(a1 + 32) progressOverlayPresenter];
  [v7 presentProgressOverlayOnViewController:v4 progressHandler:v3 cancelHandler:v2];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
}

void sub_10005E8E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_10005E904(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [WeakRetained shareableCompositions];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7) cancelExportOperation];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    v8 = [v2 progressOverlayPresenter];
    [v8 setCanPresentOverlay:1];
  }
}

float sub_10005EA24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [WeakRetained shareableCompositions];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v13 + 1) + 8 * i) exportProgress];
          v7 = v7 + v9;
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    v11 = [v2 shareableCompositions];
    v10 = v7 / [v11 count];
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

void sub_10005ECC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained progressOverlayPresenter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005ED8C;
  v5[3] = &unk_10028B0F8;
  v6 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = *(a1 + 40);
  v8 = v4;
  [v3 dismissWithCompletion:v5];
}

id sub_10005ED8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = RCShareMemoViewController;
  return objc_msgSendSuper2(&v4, "_prepareActivity:completion:", v1, v2);
}

void sub_100061C94(id a1)
{
  v1 = objc_alloc_init(RCNoAnimateLayerHelper);
  v2 = qword_1002D7038;
  qword_1002D7038 = v1;
}

void sub_100062BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RCWaveformRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_100062F00(uint64_t a1)
{
  *(*(a1 + 32) + 141) = 1;
  v1 = *(a1 + 32);
  [v1 _duration];

  return [v1 _renderVisibleTimeRangeWithDuration:?];
}

void *sub_1000630A0(uint64_t a1)
{
  [*(a1 + 32) _clearRenderingState];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    [v3 removeObserver:?];
    v2 = *(a1 + 32);
  }

  *(v2 + 32) = 0;
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  result = *(a1 + 32);
  if (result[19])
  {
    v5 = [result view];
    [v5 bounds];
    if (v7 == 100.0 && v6 == 100.0)
    {
    }

    else
    {
      v9 = [*(a1 + 32) view];
      [v9 bounds];
      v11 = v10;

      if (v11 >= 1.0)
      {
        [*(a1 + 32) _updateFitToWidthUnitsPerSecond];
      }
    }

    [*(*(a1 + 32) + 152) addObserver:?];
    *(*(a1 + 32) + 141) = 1;
    [*(a1 + 32) _setNeedsVisibleTimeRangeRendering];
    result = [*(*(a1 + 32) + 152) duration];
    if (v12 > 0.0)
    {
      *(*(a1 + 32) + 142) = 1;
      result = [*(a1 + 32) _renderVisibleTimeRangeWithDuration:?];
      *(*(a1 + 32) + 142) = 0;
    }
  }

  return result;
}

void sub_1000634C4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_100063A5C(uint64_t a1)
{
  if ([*(a1 + 32) displayMode] != 1 || (objc_msgSend(*(a1 + 32), "isLiveWaveform") & 1) == 0)
  {
    if (![*(a1 + 32) displayMode])
    {
      if ([*(a1 + 32) isLiveWaveform])
      {
        [*(a1 + 40) timeRange];
        v3 = v2;
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
        [WeakRetained currentTime];
        v6 = vabdd_f64(v3, v5);

        if (v6 > 0.25)
        {
          *(*(a1 + 32) + 145) = 1;
        }
      }
    }

    *(*(a1 + 32) + 141) = 1;
  }

  v7 = *(a1 + 32);

  return [v7 _setNeedsVisibleTimeRangeRendering];
}

_BYTE *sub_100063CE8(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[143] & 1) == 0 && (result[8] & 1) == 0)
  {
    return [result _startRendering];
  }

  return result;
}

id sub_100064090(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  *(v2 + 192) = 0;

  *(*(a1 + 32) + 16) = RCTimeRangeZero;
  *(*(a1 + 32) + 141) = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [*(a1 + 32) waveformSlices];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) sliceLayer];
        [v9 removeFromSuperlayer];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  [*(a1 + 32) setWaveformSlices:v10];

  v11 = objc_opt_new();
  [*(a1 + 32) setWaveformSliceIndexes:v11];

  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  [v13 setWaveformAmpSlicesForRendering:&__NSArray0__struct];
  *(*v12 + 3) = RCTimeRangeZero;
  v14 = *v12 + 64;
  *v14 = 0;
  v14[1] = 0;
  *(*v12 + 80) = 0;
  [*v12 _setNeedsVisibleTimeRangeRendering];
  return [*v12 _setNeedsRendering];
}

void sub_100064BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);

  _Unwind_Resume(a1);
}

void sub_100064C64(uint64_t a1)
{
  if ([*(a1 + 32) renderingQueueIsBusy])
  {
    return;
  }

  [*(a1 + 32) setFailedFirstRenderCalculationAttempt:0];
  [*(a1 + 32) setRenderingQueueIsBusy:1];
  v2 = [*(*(a1 + 32) + 152) waveformSegmentsIntersectingTimeRange:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) waveformSliceIndexes];
  v56 = [v3 mutableCopy];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) displayMode];
  v7 = 3;
  if (v4 > 3)
  {
    v7 = v4;
  }

  v8 = v7 - 3;
  if (v6 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v6 == 1)
  {
    v10 = v5 + 6;
  }

  else
  {
    v10 = v5;
  }

  [v56 removeIndexesInRange:{v9, v10}];
  v11 = [v2 objectEnumerator];
  v55 = v3;
  v12 = [v11 nextObject];
  v13 = [*(a1 + 32) waveformSlices];
  v54 = v2;
  v14 = *(a1 + 56);
  if (v14 >= *(a1 + 64) + v14)
  {
    goto LABEL_55;
  }

  do
  {
    v15 = v14 + 1;
    RCTimeRangeMake();
    v17 = v16;
    v19 = v18;
    v20 = [NSNumber numberWithInteger:v14];
    v21 = [v13 objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = *(a1 + 136);
      [v56 removeIndex:v14];
      if (*(a1 + 137) != 1 || (v22 & 1) != 0)
      {
        goto LABEL_25;
      }

      if ([*(a1 + 32) displayMode] && (*(a1 + 138) & 1) == 0)
      {
        v23 = *(a1 + 96);
        v24 = RCTimeRangeEqualToTimeRange();
        v25 = v17 - v23 > 0.0;
        if (v17 - v23 <= -0.5)
        {
          v25 = 1;
        }

        v22 = (v24 | v25) ^ 1;
        goto LABEL_25;
      }
    }

    else
    {
      if ([v56 count] && (v26 = objc_msgSend(v56, "firstIndex"), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v26), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", v27), v21 = objc_claimAutoreleasedReturnValue(), v27, v21))
      {
        v28 = [NSNumber numberWithUnsignedInteger:v26];
        [v13 setObject:0 forKeyedSubscript:v28];

        [v55 removeIndex:v26];
        [v56 removeIndex:v26];
        v29 = [NSNumber numberWithInteger:v14];
        [v13 setObject:v21 forKeyedSubscript:v29];

        [v55 addIndex:v14];
      }

      else
      {
        v30 = objc_opt_new();
        v31 = [NSNumber numberWithInteger:v14];
        [v13 setObject:v30 forKeyedSubscript:v31];

        v21 = v30;
        [v55 addIndex:v14];
      }

      [v21 setAmplitude:*(a1 + 80)];
      [v21 setVisualAmplitudeHeightInterpolatingFrames:0];
      [v21 setVisualAmplitudeHeight:RCOnePixelInPoints()];
      [v21 setSliceIndex:v14];
      [v21 setHasProcessedSegments:0];
    }

    v22 = 1;
LABEL_25:
    if (!v12)
    {
      [v21 setHasProcessedSegments:0];
    }

    if (v22 & 1) == 0 && ([v21 hasProcessedSegments])
    {
      goto LABEL_54;
    }

    if (!v12)
    {
      v32 = 0;
      goto LABEL_49;
    }

    v32 = v12;
    v33 = -3.40282347e38;
    while (1)
    {
      v34 = [v32 averagePowerLevelsCount];
      v35 = [v32 averagePowerLevels];
      [v32 timeRange];
      v37 = v36;
      v39 = v38;
      if (RCTimeRangeIntersectsRange())
      {
        break;
      }

      if (v39 >= v17)
      {
        if (v37 > v19)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

LABEL_44:
      v44 = [v11 nextObject];

      v32 = v44;
LABEL_46:
      if (!v32)
      {
        goto LABEL_49;
      }
    }

    if (v34 < 1)
    {
      goto LABEL_44;
    }

    v40 = 0;
    v41 = v39 - v37;
    while (1)
    {
      v42 = v37 + v41 * (v40 / v34);
      if (v42 > v19)
      {
        break;
      }

      if (v42 >= v17 && v42 <= v19)
      {
        [v21 setHasProcessedSegments:1];
        if (v33 < v35[v40])
        {
          v33 = v35[v40];
        }
      }

      if (v34 == ++v40)
      {
        goto LABEL_44;
      }
    }

LABEL_49:
    v45 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v45 minimumDecibelDisplayRange];

    RCNormalizedDecibelValue();
    if (v46 > *(a1 + 104))
    {
      v46 = *(a1 + 104);
    }

    v47 = *(a1 + 112) * sqrt(v46);
    if (v47 < *(a1 + 80))
    {
      v47 = *(a1 + 80);
    }

    [v21 setAmplitude:v47];
    v12 = v32;
LABEL_54:

    v14 = v15;
  }

  while (v15 < *(a1 + 64) + *(a1 + 56));
LABEL_55:
  if (*(a1 + 139))
  {
    v48 = [v13 allValues];
    v49 = [v48 count];

    if (!v49)
    {
      [*(a1 + 32) setFailedFirstRenderCalculationAttempt:1];
      v50 = OSLogForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        sub_1001B7958(v50);
      }
    }
  }

  v51 = [v13 allValues];
  [*(a1 + 32) setWaveformAmpSlicesForRendering:v51];

  *(*(a1 + 32) + 48) = *(a1 + 120);
  *(*(a1 + 32) + 64) = *(a1 + 56);
  if (*(a1 + 138) == 1)
  {
    *(*(a1 + 32) + 80) = 1;
  }

  v52 = [*(a1 + 32) nextRenderBlock];
  v53 = *(a1 + 32);
  if (v52)
  {
    [v53 setNextRenderBlock:0];
    dispatch_async(*(*(a1 + 32) + 88), v52);
    if (([*(a1 + 32) waitForFinalCalc] & 1) == 0)
    {
      v53 = *(a1 + 32);
      goto LABEL_65;
    }
  }

  else
  {
LABEL_65:
    [v53 setRenderReadyForDraw:1];
  }

  [*(a1 + 32) setRenderingQueueIsBusy:0];
}

void sub_1000653C8(uint64_t a1, void *a2, void *a3, double a4)
{
  v62 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v63 = v7;
  if ([WeakRetained isZooming])
  {
    v9 = (a1 + 48);
  }

  else
  {
    v9 = (*(a1 + 32) + 232);
  }

  v10 = *v9;

  v11 = *(a1 + 64);
  RCTimeRangeDelta();
  v13 = 0.0;
  if (v12 > 0.0)
  {
    v13 = v10 * (v11 / v12);
  }

  [v7 bounds];
  [v7 setBounds:v13];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v62;
  v14 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v14)
  {
    v15 = *v66;
    v16 = -v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v65 + 1) + 8 * i);
        v19 = [v18 sliceIndex];
        v20 = *(*(a1 + 32) + 64);
        v22 = v19 >= v20;
        v21 = &v19[-v20];
        v22 = !v22 || v21 >= *(*(a1 + 32) + 72);
        if (v22 || ([v18 amplitude], objc_msgSend(v18, "amplitude"), fabs(v23) == INFINITY))
        {
          [v18 setHidden:1];
          continue;
        }

        v24 = [v18 sliceLayer];
        if (!v24)
        {
          v24 = +[CALayer layer];
          v25 = +[RCNoAnimateLayerHelper sharedNoAnimationHelper];
          [v24 setDelegate:v25];

          [v24 setOpaque:1];
          [v18 setSliceLayer:v24];
        }

        v26 = 1.0;
        if ([*(a1 + 32) isCompactView])
        {
          v27 = [*(a1 + 32) view];
          v28 = [*(a1 + 32) view];
          [v28 bounds];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v37 = [*(a1 + 32) view];
          v38 = [v37 window];
          [v27 convertRect:v38 toView:{v30, v32, v34, v36}];
          v40 = v39;

          v41 = [*(a1 + 32) view];
          [v41 bounds];
          v43 = v42;

          v26 = v40 / v43;
        }

        v44 = RCRoundCoord(v26 * (*(a1 + 72) * [v18 sliceIndex]));
        v45 = [v18 hasProcessedSegments];
        v46 = 0.0;
        if (v45)
        {
          [v18 amplitude];
          v46 = fmax(v47, 0.0);
        }

        v48 = v46 * *(a1 + 80);
        if (v48 < *(a1 + 88))
        {
          v49 = v48;
        }

        else
        {
          v49 = *(a1 + 88);
        }

        [v18 setVisualAmplitudeHeight:v49];
        v50 = RCOnePixelInPoints();
        [v18 visualAmplitudeHeight];
        v52 = v44 / v26;
        if (v50 < v51)
        {
          v50 = v51;
        }

        v53 = [v18 sliceLayer];
        v54 = [v53 superlayer];
        v55 = v54 == v63;

        if (!v55)
        {
          v56 = [v18 sliceLayer];
          [v63 addSublayer:v56];
        }

        [v18 setHidden:0];
        v57 = *(a1 + 80);
        v58 = RCRoundCoord(a4);
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          [v18 setColor:0];
        }

        if ([*(a1 + 32) isLiveWaveform] && ((RCTimeRangeEqualToTimeRange() & 1) != 0 || objc_msgSend(v18, "sliceIndex") >= *(a1 + 112) && objc_msgSend(v18, "sliceIndex") <= *(a1 + 120)))
        {
          if ([*(a1 + 32) useCenteredStyleColoring])
          {
            if (v16 + [v18 sliceIndex] * *(a1 + 72) >= *(a1 + 64) * 0.5)
            {
              v59 = 1;
            }

            else
            {
              v59 = 2;
            }

            goto LABEL_45;
          }
        }

        else if (![*(a1 + 32) isTrimMode] || objc_msgSend(v18, "sliceIndex") < *(a1 + 112) || objc_msgSend(v18, "sliceIndex") > *(a1 + 120))
        {
          v59 = 1;
          goto LABEL_45;
        }

        v59 = 2;
LABEL_45:
        [v18 setColor:v59];
        if (([v18 hasProcessedSegments] & 1) == 0 && objc_msgSend(v18, "color") != 2)
        {
          if ([*(a1 + 32) renderDimmedUnprocessedSegments])
          {
            v60 = [v18 uiColorDimmed];
            [v18 setColor:0];
            v61 = v60;
            [v24 setBackgroundColor:{objc_msgSend(v60, "CGColor")}];
          }

          else
          {
            [v18 setHidden:1];
          }
        }

        [v18 setFrame:{v52, v57 - v50, v58 / v26, v50 + v50}];
      }

      v14 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v14);
  }
}

void sub_1000664C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100066E40(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

vm_address_t sub_1000671C4(vm_size_t a1, int a2, void *a3)
{
  if (a2 >= 1)
  {
    v6 = 0;
    v7 = a1 - 1;
    v8 = 2 * a1;
    v28 = RCVoiceMemosErrorDomain;
    v9 = 1;
    while (1)
    {
      if (((v7 + vm_page_size) & -vm_page_size) != a1)
      {
        sub_1001B79DC();
      }

      address = 0;
      v10 = vm_allocate(mach_task_self_, &address, v8, 1);
      if (v10)
      {
        break;
      }

      v13 = vm_deallocate(mach_task_self_, address + a1, a1);
      if (v13)
      {
        v14 = v13;
        vm_deallocate(mach_task_self_, address, a1);
        v12 = @"VMVMRingBuffer vm_deallocate failed";
        v11 = v14;
        goto LABEL_10;
      }

      *cur_protection = 0;
      target_address = address + a1;
      v15 = vm_remap(mach_task_self_, &target_address, a1, 0, 0, mach_task_self_, address, 0, &cur_protection[1], cur_protection, 1u);
      v16 = address;
      if (v15)
      {
        v17 = v15;
        vm_deallocate(mach_task_self_, address, a1);
        v12 = @"VMVMRingBuffer vm_remap failed";
        v11 = v17;
        goto LABEL_10;
      }

      if (target_address != address + a1)
      {
        vm_deallocate(mach_task_self_, target_address, a1);
        vm_deallocate(mach_task_self_, address, a1);
        v32 = NSLocalizedDescriptionKey;
        v33 = @"VMVMRingBuffer vm_remap failed to map to correct offset";
        [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v23 = v27 = a3;
        v18 = [NSError errorWithDomain:v28 code:0 userInfo:v23];
        v24 = v18;

        a3 = v27;
        goto LABEL_11;
      }

      v18 = 0;
LABEL_12:
      v20 = v18;

      v21 = v16 == 0;
      if (!v16)
      {
        v6 = v20;
        if (v9++ < a2)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v11 = v10;
    v12 = @"VMVMRingBuffer vm_allocate failed";
LABEL_10:
    v18 = sub_1000674FC(v12, v11);
    v19 = v18;
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v16 = 0;
  v20 = 0;
  v21 = 1;
LABEL_19:
  if (a3 && v21)
  {
    v25 = v20;
    *a3 = v20;
  }

  return v16;
}

void *sub_100067480(int a1, int a2, uint64_t a3)
{
  v5 = a2;
  result = malloc_type_malloc((a2 * a3 + 8) * a1, 0x100004077774924uLL);
  if (a1 >= 1)
  {
    v7 = &result[a1];
    v8 = result;
    v9 = a1;
    do
    {
      *v8++ = v7;
      v7 += a3 * v5;
      --v9;
    }

    while (v9);
  }

  return result;
}

id sub_1000674FC(void *a1, mach_error_t a2)
{
  v3 = a1;
  v4 = [NSString stringWithFormat:@"%@ - %s", v3, mach_error_string(a2)];

  v5 = RCVoiceMemosErrorDomain;
  v9 = NSLocalizedDescriptionKey;
  v10 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [NSError errorWithDomain:v5 code:a2 userInfo:v6];

  return v7;
}

void sub_10006860C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 recordingWithURIRepresentation:v3];

  if (v5)
  {
    [*(a1 + 32) _selectSharedRecording:v5];
  }

  else
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B7CFC();
    }
  }
}

void sub_100068A70(uint64_t a1)
{
  if ([*(a1 + 32) _cloudSyncPromptNeedsShowing])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100068B00;
    block[3] = &unk_10028A3B8;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100069114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100069130(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAction:3 atPosition:0 forUUID:0 sourceController:0 source:0.0];
}

void sub_100069274(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100069290(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained playRecordingWithUUID:*(a1 + 32)];
}

id sub_100069704(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;

  v3 = UIApp;

  return [v3 suspend];
}

void sub_10006A1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006A1E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 objectForKeyedSubscript:NSKeyValueChangeNewKey];

  [WeakRetained setValue:v8 forKeyPath:v7];
}

id sub_10006A864(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 recordingID];
  v8 = [v6 trimRecording:v7 timeRange:*(a1 + 32) controller:a3 error:{*(a1 + 40), *(a1 + 48)}];

  return v8;
}

id sub_10006A948(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 recordingID];
  v8 = [v6 cutRecording:v7 timeRange:*(a1 + 32) controller:a3 error:{*(a1 + 40), *(a1 + 48)}];

  return v8;
}

id sub_10006BD98(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10006BDCC(uint64_t a1)
{
  v2 = +[NSRunLoop mainRunLoop];
  v3 = [v2 currentMode];
  v4 = [v3 isEqualToString:@"UITrackingRunLoopMode"];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = (a1 + 32);
    v8 = v5[2];
    v16 = 0;
    v9 = [v5 _nextTransactionAfterToken:v8 context:v6 error:&v16];
    v10 = v16;
    if (v9)
    {
      [*v7 _mergeChangeIntoRelevantContexts:v9];
      v11 = [v9 token];
      v12 = 16;
    }

    else
    {
      v13 = OSLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001B8000(a1 + 32, v10, v13);
      }

      objc_storeStrong(*v7 + 2, *(*v7 + 3));
      v11 = 0;
      v12 = 48;
    }

    v14 = *(*v7 + v12);
    *(*v7 + v12) = v11;
  }

  v15 = [*(*(a1 + 32) + 48) dateByAddingTimeInterval:0.1];
  RCDispatchNoSoonerThan();
}

void sub_10006BFF0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) compareToken:*(*(a1 + 32) + 24) error:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  if (v2 == 2)
  {
    v5 = v4[2];

    v5();
  }

  else
  {
    *(v3 + 40) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;
  }
}

id sub_10006C080(void *a1)
{
  v2 = +[NSDate date];
  v3 = a1[4];
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = a1[5];
  v6 = a1[6];

  return [v5 performBlock:v6];
}

void sub_10006C31C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [NSManagedObjectContext mergeChangesFromRemoteContextSave:v1 intoContexts:v2];
}

uint64_t sub_10006D474(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = [v3 window];
  v5 = [v4 rootViewController];
  v6 = [v5 view];
  [v6 setUserInteractionEnabled:1];

  result = *(a1 + 32);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void sub_10006DD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006DDC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewController];
  [v1 rc_applicationWillEnterForeground];
}

void sub_10006DE18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewController];
  [v1 rc_applicationDidEnterBackground];
}

void sub_10006E100(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E1E0;
  block[3] = &unk_10028B488;
  v7 = a1[5];
  block[4] = a1[4];
  v13 = v5;
  v14 = v6;
  v8 = v7;
  v9 = a1[6];
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10006E1E0(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001B80A0(a1, v3);
    }

    v2 = *(a1 + 40);
  }

  return [*(a1 + 32) _handleSpotlightSearchResults:v2 forSearchString:*(a1 + 56) inScope:*(a1 + 64)];
}

double UIMainScreenScale()
{
  if (qword_1002D7080 != -1)
  {
    sub_1001B8130();
  }

  return *&qword_1002D7078;
}

void sub_10006F0C0(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_1002D7078 = v1;
}

double RCRoundCoord(double a1)
{
  if (qword_1002D7080 != -1)
  {
    sub_1001B8130();
  }

  v2 = a1 + 2.22044605e-16;
  if (a1 >= 0.0)
  {
    v2 = a1;
  }

  return round(v2 * *&qword_1002D7078) / *&qword_1002D7078;
}

double RCOnePixelInPoints()
{
  if (qword_1002D7080 != -1)
  {
    sub_1001B8130();
  }

  return 1.0 / *&qword_1002D7078;
}

id sub_10006F518(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 isEqual:UIActivityItemsConfigurationMetadataKeyTitle])
  {
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithInteger:a2];
    v7 = [v5 objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100071968(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10007214C(uint64_t a1)
{
  v2 = [*(a1 + 32) diffableDataSource];
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000721E0;
  v5[3] = &unk_10028A3B8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v2 applySnapshot:v4 animatingDifferences:v3 completion:v5];
}

void sub_1000721E0(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [*(a1 + 32) libraryActionHandler];
    [v2 selectNewRecordingForDismiss];
  }
}

id sub_100072260(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 _animateContentUnavailableUpdateWithCompletion:0];
  }

  else
  {
    return [v2 setNeedsUpdateContentUnavailableConfiguration];
  }
}

void sub_100072BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100072C14(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = [WeakRetained uuidOfSelectedItem];

    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 cellsMapTable];
    v6 = [v5 objectForKey:v10];

    v7 = [*(a1 + 32) indexPathForCell:v6];
    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      [v8 selectItemAtIndexPath:v7 animated:1 scroll:0];

      v9 = objc_loadWeakRetained((a1 + 40));
      [v9 setWillSelectRecordingAfterExitingEditMode:0];
    }
  }
}

void sub_10007483C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 isFileURL])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007493C;
    v8[3] = &unk_10028B260;
    v8[4] = *(a1 + 32);
    [RCSavedRecordingsModel importFileWithURL:v5 shouldUseMetadataTitle:0 completionHandler:v8];
  }

  else
  {
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B86A0();
    }
  }
}

void sub_10007493C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 recordingWithURIRepresentation:v3];

  if (v5)
  {
    [*(a1 + 32) _performFolderTypeUpdatesOnRecording:v5];
    v6 = *(a1 + 32);
    v7 = [v5 uuid];
    [v6 selectItemWithUUID:v7];
  }

  else
  {
    v8 = OSLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B871C();
    }
  }
}

id sub_100074E80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _supportsSwipeActionsForIndexPath:v3 swipeActionsType:0];

  v6 = 0;
  if (v5)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 dataArray];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v3, "item")}];
    v10 = [v9 uuid];

    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 libraryActionHandler];
    LODWORD(v9) = [v12 isFavoriteForUUID:v10];

    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 _favoriteSwipeAction:v9 ^ 1 forUUID:v10];

    v17 = v14;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    v6 = [UISwipeActionsConfiguration configurationWithActions:v15];
  }

  return v6;
}

id sub_100075010(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _supportsSwipeActionsForIndexPath:v3 swipeActionsType:1];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 isRecentlyDeleted];

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 dataArray];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v3, "item")}];
    v11 = [v10 uuid];

    v12 = +[RCRecorderStyleProvider sharedStyleProvider];
    v13 = [v12 expandsRecordingsCollectionViewItemOnSelection];

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = v14;
    if (v7)
    {
      v16 = [v14 _eraseSwipeActionForUUID:v11 shouldExecuteCompletionBeforeAction:v13];

      v24 = v16;
      v17 = [NSArray arrayWithObjects:&v24 count:1];
      v18 = [UISwipeActionsConfiguration configurationWithActions:v17];
    }

    else
    {
      v16 = [v14 _deleteSwipeActionForUUID:v11 shouldExecuteCompletionBeforeAction:v13];

      v19 = objc_loadWeakRetained((a1 + 32));
      v17 = [v19 _moveToFolderSwipeActionForUUID:v11 shouldExecuteCompletionBeforeAction:v13];

      v20 = objc_loadWeakRetained((a1 + 32));
      v21 = [v20 _moreOptionsSwipeActionForUUID:v11 shouldExecuteCompletionBeforeAction:v13];

      v25[0] = v16;
      v25[1] = v17;
      v25[2] = v21;
      v22 = [NSArray arrayWithObjects:v25 count:3];
      v18 = [UISwipeActionsConfiguration configurationWithActions:v22];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_100075458(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v9;
  if (isKindOfClass)
  {
    v6 = v9;
    v7 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v7 favoriteImage];
    }

    else
    {
      [v7 notFavoriteImage];
    }
    v8 = ;
    [v6 setImage:v8 forState:0];

    v5 = v9;
  }
}

void sub_100075CD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = a2;
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) shouldExecuteCompletionBeforeAction])
  {
    v9 = [*(a1 + 32) customCompletionBlock];

    if (v9)
    {
      v10 = [*(a1 + 32) customCompletionBlock];
      (v10)[2](v10, v20, v7);
    }

    v8[2](v8, 1);
  }

  v11 = [*(a1 + 32) sourceItem];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;

  v15 = [*(a1 + 32) controlsAction];
  v16 = [*(a1 + 32) uuidForAction];
  v17 = [*(a1 + 40) libraryActionHandler];
  [v17 performAction:v15 atPosition:v16 forUUID:*(a1 + 40) sourceController:v14 source:0.0];

  if (([*(a1 + 32) shouldExecuteCompletionBeforeAction] & 1) == 0)
  {
    v18 = [*(a1 + 32) customCompletionBlock];

    if (v18)
    {
      v19 = [*(a1 + 32) customCompletionBlock];
      (v19)[2](v19, v20, v7);
    }

    v8[2](v8, 1);
  }
}

id sub_1000769D0(uint64_t a1)
{
  if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 32), "count") <= 1)
  {
    v3 = [*(a1 + 40) collectionView];
    v4 = [v3 indexPathForItemAtPoint:{*(a1 + 48), *(a1 + 56)}];

    v5 = [*(*(a1 + 40) + 40) uuidAtIndexPath:v4];
    v6 = [*(a1 + 40) cellForUUID:v5];
    v7 = [[_TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator alloc] initWithRecordingUUID:v5 actionDelegate:v6 source:v6];
    [*(a1 + 40) setMoreButtonMenuCreator:v7];

    v8 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    v9 = [v8 deviceIsSupported];

    LODWORD(v8) = [v6 hasTranscription];
    v10 = [*(a1 + 40) moreButtonMenuCreator];
    v2 = [v10 createMenuWithDisplayShowTranscriptAction:v8 & v9 displayCopyTranscriptAction:v8 & v9 hasMultipleTracks:objc_msgSend(v6 isSpatialRecording:{"hasMultipleTracks"), objc_msgSend(v6, "isSpatialRecording")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100077FFC(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 cellForItemAtIndexPath:*(a1 + 40)];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 beginEditingTitle];
    }
  }
}

void sub_100078F88(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_100079874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007991C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100079934(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"RCSlowComposeDelay"];

  if (v7)
  {
    [v7 doubleValue];
    [NSThread sleepForTimeInterval:?];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v10, v5);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = +[NSFileManager defaultManager];
    [v9 removeItemAtURL:*(*(*(a1 + 40) + 8) + 40) error:0];
  }
}

void sub_100079A34(uint64_t a1, int a2)
{
  if (a2 && ([*(*(a1 + 32) + 16) rc_audioTracks], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4 < 2))
  {
    v5 = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), AVAssetExportPresetPassthrough);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), AVFileTypeQuickTimeMovie);
    v5 = [*(*(*(a1 + 64) + 8) + 40) rc_URLByReplacingPathExtensionWithExtension:RCAudioFileExtensionQT];
  }

  v6 = [[AVAssetExportSession alloc] initWithAsset:*(*(a1 + 32) + 16) presetName:*(*(*(a1 + 48) + 8) + 40)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  [*(*(a1 + 32) + 8) setOutputFileType:*(*(*(a1 + 56) + 8) + 40)];
  v9 = v5;
  if (!v5)
  {
    v9 = *(*(*(a1 + 64) + 8) + 40);
  }

  [*(*(a1 + 32) + 8) setOutputURL:v9];
  [*(*(a1 + 32) + 8) setMetadata:*(*(a1 + 32) + 24)];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  if (v11)
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = sub_10007991C;
    v23[4] = sub_10007992C;
    v24 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100079D64;
    v17[3] = &unk_10028B6F0;
    v17[4] = v10;
    v20 = v25;
    v21 = v23;
    v12 = v5;
    v13 = *(a1 + 64);
    v18 = v12;
    v22 = v13;
    v19 = *(a1 + 40);
    [v11 exportAsynchronouslyWithCompletionHandler:v17];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
  }

  else
  {
    v14 = OSLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8A60(v14);
    }

    v15 = *(a1 + 40);
    v16 = RCGenericErrorWithUnderlyingError();
    (*(v15 + 16))(v15, 0, v16);
  }
}

void sub_100079CE0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = *(v12 + 40);
    v18 = RCGenericError();
    (*(v17 + 16))(v17, 0, v18);

    objc_end_catch();
    JUMPOUT(0x100079CBCLL);
  }

  _Unwind_Resume(a1);
}

void sub_100079D64(void *a1)
{
  v2 = (a1 + 4);
  if ([*(a1[4] + 8) status] == 4)
  {
    *(*(a1[7] + 8) + 24) = 1;
    v3 = [*(a1[4] + 8) error];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8AE4(v2, (a1 + 8), v6);
    }
  }

  if ([*(*v2 + 8) status] != 3)
  {
    v15 = a1[6];
    v16 = [*(a1[4] + 8) error];
    v17 = RCGenericErrorWithUnderlyingError();
    (*(v15 + 16))(v15, 0, v17);

    return;
  }

  if (a1[5])
  {
    v7 = +[NSFileManager defaultManager];
    v8 = a1[5];
    v9 = *(*(a1[9] + 8) + 40);
    v23 = 0;
    v10 = [v7 moveItemAtURL:v8 toURL:v9 error:&v23];
    v11 = v23;

    if (!v10)
    {
      (*(a1[6] + 16))();

      return;
    }
  }

  v12 = [AVURLAsset assetWithURL:*(*(a1[9] + 8) + 40)];
  v13 = [v12 rc_audioTracks];
  v14 = [v13 count];

  if (v14)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v18 = OSLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1001B8B90(v18);
    }

    v19 = a1[6];
    v20 = RCVoiceMemosErrorDomain;
    v24 = NSLocalizedFailureReasonErrorKey;
    v25 = @"No audio tracks after export";
    v21 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [NSError errorWithDomain:v20 code:401 userInfo:v21];
    (*(v19 + 16))(v19, 0, v22);
  }
}

void sub_10007D33C(uint64_t a1)
{
  if ([*(a1 + 32) isViewLoaded])
  {
    v2 = [*(a1 + 32) view];
    v3 = [v2 didSetupSubviews];

    if (v3)
    {
      v4 = [*(a1 + 32) view];
      [v4 updateForSizeChange];
    }
  }
}

void sub_10007F1CC(unsigned __int8 *a1, void *a2)
{
  v3 = a1[32];
  v7 = a2;
  v4 = [v7 waveformViewController];
  [v4 setShowPlayBarOnly:v3];

  v5 = a1[33];
  v6 = [v7 waveformViewController];
  [v6 setIsCompactView:v5];

  [v7 setUserInteractionEnabled:a1[34]];
}

void sub_100080230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == v3)
  {
    goto LABEL_8;
  }

  v16 = v3;
  v5 = [v4 waveformViewController];
  if ([v5 isZooming])
  {
    v6 = [*(a1 + 32) waveformViewController];
    [v6 zoomScale];
    v8 = v7;
    v9 = [v16 waveformViewController];
    [v9 zoomScale];
    v11 = v10;

    if (v8 == v11)
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) waveformViewController];
    [v5 zoomScale];
    v13 = v12;
    v14 = [v16 waveformViewController];
    [v14 setZoomScale:v13];
  }

LABEL_6:
  [*(a1 + 32) selectedTimeRange];
  [v16 selectedTimeRange];
  v15 = RCTimeRangeEqualToTimeRange();
  v3 = v16;
  if ((v15 & 1) == 0)
  {
    [*(a1 + 32) selectedTimeRange];
    [v16 setSelectedTimeRange:? animationDuration:?];
    v3 = v16;
  }

LABEL_8:
}

uint64_t sub_100081BAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100082484(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 favorite];
        v9 = *(a1 + 56);
        if (v9 != v8)
        {
          v10 = *(a1 + 40);
          v11 = [v7 uuid];
          [v10 addObject:v11];

          LOBYTE(v9) = *(a1 + 56);
        }

        [*(a1 + 48) setFavorite:v9 & 1 ofRecording:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_100082858(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingsForUUIDs:*(a1 + 40)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        if (*(a1 + 56) == 1)
        {
          [v8 eraseRecording:v7];
        }

        else
        {
          [v8 deleteRecording:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100082A7C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingsForUUIDs:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 deletionDate];

        if (v8)
        {
          [*(a1 + 48) restoreDeletedRecording:v7];
          v9 = *(a1 + 56);
          v10 = [v7 uuid];
          [v9 addObject:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

BOOL sub_100082E04(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  v6 = [v5 compare:*(a1 + 32) options:*(a1 + 40)] == 0;
  return v6;
}

BOOL sub_100082E88(uint64_t a1, void *a2)
{
  v3 = +[RCFolderDisplayModel folderNameForBuiltInFolderOfType:](RCFolderDisplayModel, "folderNameForBuiltInFolderOfType:", [a2 folderType]);
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  v6 = [v5 compare:*(a1 + 32) options:*(a1 + 40)] == 0;
  return v6;
}

void sub_100083954(id *a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = a1[5];
        if (v8 || ([v7 userFolderUUID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && (objc_msgSend(v7, "userFolderUUID"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v9 = v8;
          v10 = [a1[6] existingFolderWithUUID:{v8, v13}];
          [a1[6] removeRecording:v7 fromFolder:v10];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v12 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v4 = v12;
    }

    while (v12);
  }
}

void sub_100083DE0(uint64_t a1, void *a2, void *a3)
{
  *(*(a1 + 32) + 40) = 0;
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v10 = a2;
  v7 = [v5 location];
  v8 = v7;
  if (!v7)
  {
    v8 = *(a1 + 40);
  }

  v9 = v8;

  [*(a1 + 32) _didFetchPlaceInferences:v10 location:v9 error:v6];
}

void sub_100084AB4(void *a1)
{
  v2 = a1[4];
  v3 = +[AVAudioSession sharedInstance];
  *(*(a1[5] + 8) + 24) = [v2 __activateAudioSessionOnQueue:v3 recording:0 overdubbing:0 captureSpatial:0 error:a1[6]];
}

void sub_100084BF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[13];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100084C94;
    block[3] = &unk_10028A3B8;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_100084F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100084F78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100084F90(uint64_t a1, char a2, char a3, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v7 = obj;
  *(*(*(a1 + 56) + 8) + 24) = a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100085100(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v2 = [*(a1 + 32) _userPreferenceIsSpatialCapture];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = +[AVAudioSession sharedInstance];
  v5 = *(a1 + 48);
  v6 = *(a1 + 49);
  v22 = 0;
  v7 = [v3 __activateAudioSessionOnQueue:v4 recording:v5 overdubbing:v6 captureSpatial:v2 error:&v22];
  v8 = v22;

  if (*(a1 + 40))
  {
    if ((v7 & v2) == 1)
    {
      v9 = +[AVAudioSession sharedInstance];
      v10 = [v9 currentRoute];
      v11 = [v10 inputs];
      v12 = [v11 na_any:&stru_10028B948];

      v13 = +[AVAudioSession sharedInstance];
      v14 = [v13 mode];
      v15 = AVAudioSessionModeSpatialCapture;

      if (v14 == v15)
      {
        v16 = v12;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100085314;
    v17[3] = &unk_10028B970;
    v19 = *(a1 + 40);
    v20 = v7;
    v21 = v16;
    v18 = v8;
    dispatch_async(&_dispatch_main_q, v17);
  }
}

BOOL sub_1000852D0(id a1, AVAudioSessionPortDescription *a2)
{
  v2 = [(AVAudioSessionPortDescription *)a2 portType];
  v3 = v2 == AVAudioSessionPortBuiltInMic;

  return v3;
}

BOOL sub_10008559C(id a1, AVAudioSessionPortDescription *a2)
{
  v2 = [(AVAudioSessionPortDescription *)a2 portType];
  v3 = v2 == AVAudioSessionPortCarAudio;

  return v3;
}

BOOL sub_100085A80(id a1, AVAudioSessionPortDescription *a2)
{
  v2 = [(AVAudioSessionPortDescription *)a2 portType];
  v3 = v2 == AVAudioSessionPortBuiltInMic;

  return v3;
}

BOOL sub_100085AC4(id a1, AVAudioSessionDataSourceDescription *a2)
{
  v2 = [(AVAudioSessionDataSourceDescription *)a2 supportedPolarPatterns];
  v3 = [v2 containsObject:AVAudioSessionPolarPatternStereo];

  return v3;
}

BOOL sub_100085B0C(uint64_t a1, void *a2)
{
  v3 = [a2 orientation];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void sub_100085DE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) == 1)
  {
    *(v2 + 72) = 0;
    v3 = +[AVAudioSession sharedInstance];
    [v3 setActive:0 error:0];
  }
}

id sub_100086608(uint64_t a1)
{
  v2 = [*(a1 + 40) enhanced];
  v3 = *(a1 + 32);

  return [v3 setProcessingEnabled:v2];
}

void sub_100086648(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[15];
  if (v3 == *(a1 + 40))
  {
    v2[15] = 0;

    [*(a1 + 48) replaceCurrentItemWithPlayerItem:*(a1 + 56)];
    if ([*(a1 + 40) currentState] == 2)
    {
      [*(a1 + 40) setCurrentState:4];
    }

    [*(a1 + 48) setProcessingEnabled:{objc_msgSend(*(a1 + 64), "enhanced")}];
    [*(a1 + 48) setSilenceRemoverEnabled:{objc_msgSend(*(a1 + 40), "silenceRemoverEnabled")}];
    if ([*(a1 + 40) targetState] == 4)
    {
      v4 = [*(a1 + 56) controller];
      [v4 targetTime];
      v6 = v5;

      v7 = *(a1 + 56);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10008681C;
      v20[3] = &unk_10028BA90;
      v8 = v7;
      v23 = v6;
      v9 = *(a1 + 32);
      v21 = v8;
      v22 = v9;
      [v8 seekToTime:v20 completionHandler:v6];
      v10 = v21;
    }

    else
    {
      [*(a1 + 40) targetTime];
      v12 = v11;
      v13 = *(a1 + 56);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100086884;
      v16[3] = &unk_10028BA90;
      v14 = *(a1 + 40);
      v19 = v12;
      v15 = *(a1 + 32);
      v17 = v14;
      v18 = v15;
      [v13 seekToTime:v16 completionHandler:v12];
      v10 = v17;
    }
  }

  else
  {

    [v2 stopPlaying:?];
  }
}

id sub_10008681C(id result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result + 6);
    v4 = [*(result + 4) controller];
    [v4 setCurrentTime:v3];

    v5 = *(v2[5] + 32);

    return [v5 pause];
  }

  return result;
}

id *sub_100086884(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [result[4] setCurrentTime:*(result + 6)];
    v3 = v2[5];
    [v2[4] targetRate];

    return [v3 _startPlaybackAtRate:1 immediately:?];
  }

  return result;
}

void sub_100086B04(uint64_t a1)
{
  v2 = [*(a1 + 32) recordingWithUniqueID:*(a1 + 40)];
  v8 = v2;
  if (v2)
  {
    [v2 playRate];
    v5 = *(a1 + 48);
    v4 = (a1 + 48);
    [v5 setRate:?];
    [*v4 setSilenceRemoverEnabled:{objc_msgSend(v8, "isSkipSilenceEnabled")}];
    [v8 layerMix];
    [*v4 setLayerMix:?];
    [*v4 setSpeechIsolatorEnabled:{objc_msgSend(v8, "isSpeechIsolatorEnabled")}];
    [v8 speechIsolatorValue];
  }

  else
  {
    v7 = *(a1 + 48);
    v4 = (a1 + 48);
    LODWORD(v3) = 1.0;
    [v7 setRate:v3];
    [*v4 setSilenceRemoverEnabled:0];
    [*v4 setLayerMix:0.0];
    [*v4 setSpeechIsolatorEnabled:0];
    LODWORD(v6) = kDefaultSpeechIsolatorValue;
  }

  [*v4 setSpeechIsolatorValue:v6];
}

void sub_10008715C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100087188(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    [*(result + 5) targetRate];

    return [v2 _startPlaybackAtRate:1 immediately:?];
  }

  return result;
}

void sub_1000871CC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setCurrentState:0];
  if (*(a1[4] + 15) != WeakRetained)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    if (!WeakRetained)
    {
LABEL_2:
      v8 = +[RCSSavedRecordingService sharedService];
      [v8 endAccessSessionWithToken:v5 error:0];

      goto LABEL_3;
    }

    [WeakRetained setPlaybackToken:v5];
    [a1[4] setMode:1];
    [a1[5] length];
    [WeakRetained playableRange];
    if (RCTimeRangeEqualToTimeRange())
    {
      RCTimeRangeMake();
      [WeakRetained setPlayableRange:?];
    }

    v9 = [WeakRetained playerItem];
    if (!v9)
    {
      v10 = a1[4];
      v11 = a1[5];
      v14 = 0;
      v12 = [v10 _assetForRecording:v11 error:&v14];
      v13 = v14;
      if (!v12)
      {
        [WeakRetained setPlaybackError:v13];
        [WeakRetained setCurrentState:0];

        goto LABEL_3;
      }

      v9 = [[_TtC10VoiceMemos12VMPlayerItem alloc] initWithAsset:v12];
      [(VMPlayerItem *)v9 setController:WeakRetained];
      [WeakRetained setPlayerItem:v9];
    }

    [a1[4] _schedulePlayback:WeakRetained];
  }

  else if (WeakRetained)
  {
    [WeakRetained setPlaybackError:v6];
    [WeakRetained setCurrentState:0];
  }

LABEL_3:
}

void sub_100087984(void *a1)
{
  v2 = [*(a1[4] + 8) recordingWithUniqueID:a1[5]];
  if (v2)
  {
    v3 = v2;
    (*(a1[6] + 16))();
    [*(a1[4] + 8) saveIfNecessary];
    v2 = v3;
  }
}

void sub_100087B94(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) currentItem];
    v4 = v3;
    if (v3 == *(a1 + 40))
    {
      v5 = [*(a1 + 32) playing];

      if (v5)
      {
        return;
      }
    }

    else
    {
    }

    v6 = *(a1 + 56);
    v7 = *(a1 + 48);

    [v7 setCurrentTime:v6];
  }
}

void sub_10008807C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000880AC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) _configureAudioSettingsIfNeeded];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v24 = 0;
  v6 = [v5 inputNode:&v24];
  v7 = v24;
  if (!v6)
  {
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;

    if (v7)
    {
      v25 = NSUnderlyingErrorKey;
      v26 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    }

    else
    {
      v8 = 0;
    }

    v19 = v8;
    goto LABEL_13;
  }

  v8 = [v6 inputFormatForBus:0];
  [v8 sampleRate];
  if (v9 <= 0.0 || ![v8 channelCount])
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v19 = 0;
LABEL_13:
    v22 = [NSError errorWithDomain:@"VMAudioServiceErrorDomain" code:5 userInfo:v19];
    v23 = *(*(a1 + 56) + 8);
    v16 = *(v23 + 40);
    *(v23 + 40) = v22;
    goto LABEL_14;
  }

  v10 = [*(*(a1 + 32) + 48) mutableCopy];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 32);
  [v8 sampleRate];
  v14 = [v13 _closestAllowedSampleRate:*(*(a1 + 32) + 56) allowedSampleRates:?];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:AVSampleRateKey];

  if ([v8 channelCount] <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = [NSNumber numberWithInt:v15];
  [*(*(*(a1 + 48) + 8) + 40) setObject:v16 forKeyedSubscript:AVNumberOfChannelsKey];
LABEL_14:
}

void sub_1000883D8(uint64_t a1)
{
  if ([*(a1 + 32) currentState] == 2)
  {
    v2 = *(*(a1 + 40) + 40);
    v7 = 0;
    v3 = [v2 startAndReturnError:&v7];
    v4 = v7;
    if (v3)
    {
      [*(a1 + 32) setCurrentState:2];
    }

    else
    {
      v6 = OSLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001B97E0();
      }

      [*(a1 + 40) setRecordingError:v4];
      [*(a1 + 40) stopRecording:*(a1 + 48) error:0];
    }

    [*(a1 + 40) _endStartRecordingSignPost];
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 setCurrentState:0];
  }
}

void sub_10008876C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 0;
    v8 = [v6 _startRecordingWithController:v7 shouldCaptureSpatial:a3 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) setRecordingError:v9];
    }
  }

  else
  {
    v10 = *(a1 + 40);

    [v10 setRecordingError:a4];
  }
}

void sub_100088B9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100088BF4(uint64_t a1)
{
  [*(a1 + 32) setMode:0];
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v16 = 0;
  v5 = [v2 moveItemAtURL:v3 toURL:v4 error:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = [*(a1 + 56) initialCaptureToken];
    v8 = [v7 directoryURL];
    v15 = v6;
    v9 = [v2 removeItemAtURL:v8 error:&v15];
    v10 = v15;

    if ((v9 & 1) == 0)
    {
      v11 = OSLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1001B993C();
      }
    }

    v12 = [AVURLAsset rc_preciseTimingAssetWithURL:*(a1 + 48)];
    [v12 rc_durationInSeconds];
    v14 = v13;
    [*(a1 + 56) setCurrentDuration:?];
    [*(a1 + 56) setCurrentTime:v14];
    [*(a1 + 32) _createCloudRecordingForRecordingWithController:*(a1 + 56) duration:*(a1 + 48) recordingURL:v14];
  }

  else
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001B98C8();
    }

    v10 = v6;
  }

  [*(a1 + 56) setInitialCaptureToken:0];
  [*(a1 + 56) setCurrentState:0];
  [*(a1 + 32) _deactivateAudioSessionAsync:1];
}

void sub_10008927C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 40) group];
  v5 = [*(a1 + 48) liveTranscription];
  if (v5)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[VMAudioService stopRecording:atTime:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s -- calling finalizeAndReturnTranscriptionDataWithCompletionHandler", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100089490;
    v10[3] = &unk_10028BBC0;
    v11 = *(a1 + 40);
    v12 = v4;
    [v5 finalizeAndReturnTranscriptionDataWithCompletionHandler:v10];
  }

  else
  {
    dispatch_group_leave(v4);
  }

  v7 = [*(a1 + 48) waveformDataSource];
  if (v7 && [v7 isMemberOfClass:objc_opt_class()])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000895B0;
    v8[3] = &unk_10028BBE8;
    v9 = v4;
    [v7 finishLoadingWithCompletionTimeout:-1 completionBlock:v8];
  }
}