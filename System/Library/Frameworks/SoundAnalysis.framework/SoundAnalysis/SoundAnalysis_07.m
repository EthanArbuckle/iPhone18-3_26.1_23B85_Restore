void sub_1C98207D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1C982061C(a4, &v17);
  if (!v4)
  {
    v16 = v17;
    type metadata accessor for SNTimeUtils();
    sub_1C97CCDD0(&v17.start.value, a1, a2, a3, v8, v9, v10, v11);
    range = v16;
    CMTimeRangeGetEnd(&rhs, &range);
    epoch = rhs.epoch;
    rhs.epoch = a3;
    range.start.value = rhs.value;
    *&range.start.timescale = *&rhs.timescale;
    range.start.epoch = epoch;
    rhs.value = a1;
    *&rhs.timescale = a2;
    CMTimeSubtract(&v13, &range.start, &rhs);
    range.start = v13;
    CMTimeConvertScale(&rhs, &range.start, v17.start.timescale, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    if (rhs.value < 0)
    {
      goto LABEL_7;
    }

    if (HIDWORD(rhs.value))
    {
      __break(1u);
LABEL_7:
      __break(1u);
    }
  }
}

id sub_1C9820900@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{

  return sub_1C9929478(0xD000000000000017, a1, 1, 0, a2, a3 | 0x8000000000000000);
}

void sub_1C9820924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v12 = sub_1C9823438(a1);
  if (v12)
  {
    v14 = v12;
    v43 = a4;
    v44 = v13;
    v45 = a3;
    sub_1C9823DF8();
    swift_beginAccess();
    v46 = v5;
    v15 = *(v5 + 48);
    v47 = MEMORY[0x1E69E7CC0];
    v16 = sub_1C97BDEE0(v15);
    swift_unknownObjectRetain();

    for (i = 0; v16 != i; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCA912B0](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v15 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      if (v18 == v14)
      {
        sub_1C9A93678();
        sub_1C9A936A8();
        sub_1C9A936B8();
        sub_1C9A93688();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v19 = sub_1C97BDEE0(v47);
    for (j = 0; v19 != j; ++j)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1CCA912B0](j, v47);
      }

      else
      {
        if (j >= *(v47 + 16))
        {
          goto LABEL_28;
        }

        v21 = *(v47 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_27;
      }

      sub_1C9820EAC(v21);
      swift_unknownObjectRelease();
    }

    sub_1C9823DD8();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v14;
    v23[4] = v44;
    v23[5] = a2;
    v23[6] = v45;
    sub_1C9823DD8();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v14;
    v25[4] = v44;
    v25[5] = v43;
    v25[6] = a5;
    swift_unknownObjectRetain_n();

    v26 = sub_1C9821E04(v14, v44, sub_1C9823C18, v23, sub_1C9823C78, v25);
    if (v6)
    {

      type metadata accessor for SNError();
      v27 = sub_1C9823DB4();
      sub_1C9929478(v27, v28, v29, v30, 0xD000000000000017, v31);
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = v26;

      v39 = *(v46 + 40);

      sub_1C9822814(v40, v39);

      sub_1C97A2CEC(&unk_1EC3C6E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C9A9DF30;
      *(inited + 32) = v14;
      sub_1C9823E14();
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1C98CFF8C(inited);
      swift_endAccess();
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_1C9A9DF30;
      *(v42 + 32) = v38;
      sub_1C9823E14();
      swift_beginAccess();

      sub_1C98CFF60(v42);
      swift_endAccess();
      swift_unknownObjectRelease();

      *(v46 + 64) = 1;
    }
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    swift_getObjectType();
    v32 = sub_1C9A93E18();
    MEMORY[0x1CCA90230](v32);

    v33 = sub_1C9823DB4();
    sub_1C9929478(v33, v34, v35, v36, v37, 0x80000001C9AD5E60);

    swift_willThrow();
  }
}

uint64_t sub_1C9820EAC(uint64_t a1)
{
  swift_getObjectType();
  result = sub_1C9823438(a1);
  if (result)
  {
    v4 = result;
    sub_1C9823E14();
    swift_beginAccess();
    swift_unknownObjectRetain_n();
    v5 = sub_1C98239D4((v1 + 48), v4);
    v6 = sub_1C97BDEE0(*(v1 + 48));
    if (v6 < v5)
    {
      __break(1u);
      result = swift_endAccess();
      __break(1u);
    }

    else
    {
      sub_1C97EFA1C(v5, v6);
      swift_endAccess();
      sub_1C9821F30();
      result = swift_unknownObjectRelease();
      *(v1 + 64) = 1;
    }
  }

  return result;
}

void sub_1C9820F98(void *a1, uint64_t a2)
{
  v3 = v2;
  v73[3] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v71 = a1;
    if (![v7 frameLength])
    {
      sub_1C9823E20();

      return;
    }

    v8 = v71;
    v9 = sub_1C9823E40();
    v10 = *(v3 + 40);
    v11 = [v9 isEqual_];

    if (v11)
    {
      v12 = sub_1C9823E40();
      [v12 sampleRate];
      v14 = v13;
      v15 = v13;

      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_37;
      }

      if (v14 <= -2147483650.0)
      {
LABEL_38:
        __break(1u);
      }

      else if (v14 < 2147483650.0)
      {
        v16 = sub_1C9A93168();
        v18 = v17;
        v20 = v19;
        v21 = sub_1C9823E40();

        [v21 sampleRate];
        v23 = v22;
        v24 = v22;

        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v23 > -2147483650.0)
          {
            v70 = v20;
            v72 = v8;
            if (v23 < 2147483650.0)
            {
              v25 = sub_1C9A93168();
              v27 = v26;
              v29 = v28;
              v30 = HIDWORD(v26);
              *(v3 + 68) = sub_1C9A93118();
              *(v3 + 76) = v31;
              *(v3 + 80) = v32;
              *(v3 + 84) = v33;
              *(v3 + 92) = v16;
              *(v3 + 100) = v18;
              *(v3 + 108) = v70;
              *(v3 + 116) = v25;
              *(v3 + 124) = v27;
              *(v3 + 128) = v30;
              *(v3 + 132) = v29;
              if (*(v3 + 64) == 1)
              {
                sub_1C98230D8();
                *(v3 + 64) = 0;
              }

              v46 = *(v3 + 32);
              v73[0] = 0;
              v47 = [v46 maxFramesPerSliceWithError_];
              v48 = v73[0];
              if (v47)
              {
                v49 = v47;
                type metadata accessor for SNUtils();
                v50 = v48;
                v51 = [v49 unsignedIntValue];

                sub_1C9A16AA0(v7, v51);
                v53 = v52;
                v54 = sub_1C97BDEE0(v52);
                v55 = 0;
                while (1)
                {
                  if (v54 == v55)
                  {

                    goto LABEL_33;
                  }

                  if ((v53 & 0xC000000000000001) != 0)
                  {
                    v56 = MEMORY[0x1CCA912B0](v55, v53);
                  }

                  else
                  {
                    if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_35;
                    }

                    v56 = *(v53 + 8 * v55 + 32);
                  }

                  v57 = v56;
                  if (__OFADD__(v55, 1))
                  {
                    __break(1u);
LABEL_35:
                    __break(1u);
LABEL_36:
                    __break(1u);
LABEL_37:
                    __break(1u);
                    goto LABEL_38;
                  }

                  v73[0] = 0;
                  if (![v46 processBuffer:v56 framePosition:a2 error:v73])
                  {
                    break;
                  }

                  v58 = v73[0];
                  v59 = [v57 frameLength];

                  v60 = __OFADD__(a2, v59);
                  a2 += v59;
                  ++v55;
                  if (v60)
                  {
                    goto LABEL_36;
                  }
                }

                v62 = v73[0];

                v63 = sub_1C9A913C8();

                swift_willThrow();
                type metadata accessor for SNError();
                sub_1C9823DE8();
                v64 = sub_1C9823DB4();
                v34 = sub_1C9929478(v64, v65, v66, v67, v68, v69);
                swift_willThrow();
              }

              else
              {
                v61 = v73[0];
                v34 = sub_1C9A913C8();

                swift_willThrow();
              }

              goto LABEL_32;
            }

LABEL_42:
            __break(1u);
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_40;
    }

    type metadata accessor for SNError();
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000025, 0x80000001C9AD5EC0);
    v37 = [v10 description];
    v38 = sub_1C9A924A8();
    v40 = v39;

    MEMORY[0x1CCA90230](v38, v40);

    MEMORY[0x1CCA90230](544175136, 0xE400000000000000);
    v41 = sub_1C9823E40();

    v42 = [v41 description];
    v43 = sub_1C9A924A8();
    v45 = v44;

    MEMORY[0x1CCA90230](v43, v45);

    MEMORY[0x1CCA90230](0xD00000000000003FLL, 0x80000001C9AD5EF0);
    v34 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 3, 0, 0, 0xE000000000000000);

    swift_willThrow();
  }

  else
  {
    sub_1C98066EC();
    v34 = swift_allocError();
    swift_willThrow();
  }

LABEL_32:
  sub_1C98218A4();

LABEL_33:
  sub_1C9823E20();
}

void sub_1C98215BC()
{
  v1 = v0;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);

  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412802;
    v7 = *(v1 + 68);
    v8 = *(v1 + 84);
    v9 = *(v1 + 76);
    v10 = objc_opt_self();
    *&v20 = v7;
    *(&v20 + 1) = v9;
    *&v21 = v8;
    v11 = [v10 valueWithCMTime_];
    *(v5 + 4) = v11;
    *v6 = v11;
    *(v5 + 12) = 2112;
    v12 = *(v1 + 108);
    v20 = *(v1 + 92);
    v21 = v12;
    v22 = *(v1 + 124);
    v13 = [v10 valueWithCMTimeRange_];
    *(v5 + 14) = v13;
    v6[1] = v13;
    *(v5 + 22) = 2112;
    v14 = *(v1 + 156);
    v20 = *(v1 + 140);
    *&v21 = v14;
    v15 = [v10 valueWithCMTime_];
    *(v5 + 24) = v15;
    v6[2] = v15;
    _os_log_impl(&dword_1C9788000, v3, v4, "analysis completed for analyzer; total received frames %@; most recent analyzed time range %@; latest produced result time %@", v5, 0x20u);
    sub_1C97A2CEC(&unk_1EC3C86A0);
    swift_arrayDestroy();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  sub_1C9823DF8();
  swift_beginAccess();
  v16 = *(v1 + 56);
  v17 = sub_1C97BDEE0(v16);
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  if (v17 >= 1)
  {

    v19 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA912B0](v19, v16);
      }

      else
      {
      }

      ++v19;

      sub_1C994A644();
    }

    while (v18 != v19);

LABEL_13:
    sub_1C9823E20();
    return;
  }

  __break(1u);
}

uint64_t sub_1C982184C()
{
  v1 = [*(v0 + 32) description];
  v2 = sub_1C9A924A8();

  return v2;
}

uint64_t sub_1C98218A4()
{
  sub_1C9823E04();
  sub_1C9823DF8();
  result = swift_beginAccess();
  v2 = *(v0 + 56);
  if (v2 >> 62)
  {
    result = sub_1C9A934C8();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA912B0](v4, v2);
      }

      else
      {
      }

      ++v4;

      sub_1C994A680();
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_1C982199C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C98219D4()
{
  sub_1C982199C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9821A2C(void *a1)
{
  v3 = v1;
  sub_1C99CCED8(a1);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    objc_opt_self();
    sub_1C9A766D8();
    type metadata accessor for SNAudioProcessorCache();
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E7CC0];
    *(v5 + 16) = MEMORY[0x1E69E7CC0];
    *(v3 + 48) = v6;
    *(v3 + 56) = v6;
    *(v3 + 64) = 1;
    *(v3 + 40) = a1;
    *(v3 + 16) = v5;
    *(v3 + 24) = v6;
    objc_allocWithZone(SNProcessingTree);
    v7 = a1;
    v8 = sub_1C9823634();
    v10 = MEMORY[0x1E6960CC0];
    *(v3 + 76) = *(MEMORY[0x1E6960CC0] + 8);
    v11 = MEMORY[0x1E6960CA8];
    v12 = *(MEMORY[0x1E6960CA8] + 16);
    *(v3 + 92) = *MEMORY[0x1E6960CA8];
    *(v3 + 32) = v8;
    v13 = *v10;
    v14 = v10[2];
    *(v3 + 68) = v13;
    *(v3 + 84) = v14;
    *(v3 + 108) = v12;
    *(v3 + 124) = *(v11 + 32);
    v15 = MEMORY[0x1E6960C70];
    v16 = *(MEMORY[0x1E6960C70] + 16);
    *(v3 + 140) = *MEMORY[0x1E6960C70];
    *(v3 + 148) = *(v15 + 8);
    *(v3 + 156) = v16;
    sub_1C9821BDC(v7);
  }

  return v3;
}

void sub_1C9821BDC(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [a1 streamDescription];
  v16 = v2[4];
  v3 = *(v2 + 1);
  v14 = *v2;
  v15 = v3;
  v4 = *(v1 + 32);
  v13 = 0;
  v17[0] = v14;
  v17[1] = v3;
  v18 = v16;
  v19 = 1;
  if ([v4 setFormat:v17 error:&v13])
  {
    v5 = v13;
  }

  else
  {
    v6 = v13;
    v7 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError();
    v8 = sub_1C9A913B8();
    sub_1C9823DE8();
    v9 = sub_1C9823DC8();
    sub_1C9929478(v9, v10, 1, v8, v11, v12);

    swift_willThrow();
  }
}

uint64_t sub_1C9821D14()
{
  sub_1C9823E04();
  sub_1C9823DF8();
  swift_beginAccess();
  v2 = *(v1 + 56);
  v3 = sub_1C97BDEE0(v2);

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA912B0](i, v2);
      v6 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v6 + 16) == v0)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C9821E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  swift_getObjectType();
  result = (*(a2 + 8))();
  if (!v7)
  {
    v15 = result;
    v16 = v14;
    v17 = *(v8 + 32);
    type metadata accessor for SNAnalyzerHost();
    swift_allocObject();
    sub_1C994A738(v15, v16, a3, a4, a5, a6, v17);
    type metadata accessor for SNAnalyzerInfo();
    sub_1C9823DF8();
    v22 = sub_1C9823CA8(v18, v19, v20, v21, 0, 0);
    v23 = v17;

    swift_unknownObjectRetain();
    return v22;
  }

  return result;
}

uint64_t sub_1C9821F30()
{
  result = sub_1C9821D14();
  if (result)
  {
    sub_1C9823E04();
    sub_1C9823E14();
    swift_beginAccess();

    v3 = sub_1C98237B8((v1 + 56), v0);
    v4 = sub_1C97BDEE0(*(v1 + 56));
    if (v4 < v3)
    {
      __break(1u);
      result = swift_endAccess();
      __break(1u);
    }

    else
    {
      sub_1C97EF9DC(v3, v4);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1C9821FD0(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  swift_retain_n();
  v5 = swift_unknownObjectRetain_n();
  sub_1C9820924(v5, sub_1C9823D0C, v3, sub_1C97EFFC4, v4);
}

void sub_1C98220D4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      if ([Strong respondsToSelector_])
      {
        v7 = a1;
        v8 = sub_1C9A913B8();
        [v6 request:a3 didFailWithError:v8];

        swift_unknownObjectRelease();
        return;
      }
    }

    else if ([Strong respondsToSelector_])
    {
      [v6 requestDidComplete_];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C98221C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    if (sub_1C9823438(a1))
    {
      v11 = v10;
      swift_unknownObjectRetain();
      v12 = sub_1C9A93178();
      ObjectType = swift_getObjectType();
      v14 = *(v11 + 8);
      if (v12)
      {
        v14(v50, ObjectType, v11);
        v15 = sub_1C9A92F08();
        LODWORD(v11) = v16;
        v45 = v17;
        v46 = HIDWORD(v16);
        v18 = *(v9 + 140);
        v47 = a3;
        v20 = *(v9 + 148);
        v19 = *(v9 + 152);
        v21 = *(v9 + 156);
        v22 = a5;
        v23 = sub_1C9A93138();
        swift_unknownObjectRelease();
        v24 = (v23 & 1) == 0;
        a5 = v22;
        if (!v24)
        {
          v15 = v18;
          LODWORD(v11) = v20;
        }

        a3 = v47;
        if (v24)
        {
          LODWORD(v25) = v46;
        }

        else
        {
          LODWORD(v25) = v19;
        }

        if (v24)
        {
          v26 = v45;
        }

        else
        {
          v26 = v21;
        }
      }

      else
      {
        v14(v50, ObjectType, v11);
        v15 = sub_1C9A92F08();
        v11 = v27;
        v26 = v28;
        swift_unknownObjectRelease();
        v25 = HIDWORD(v11);
      }

      *(v9 + 140) = v15;
      *(v9 + 148) = v11;
      *(v9 + 152) = v25;
      *(v9 + 156) = v26;
    }

    if (qword_1EC3C57B0 != -1)
    {
      swift_once();
    }

    if (byte_1EC3D3480 == 1)
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v29 = sub_1C9A91B58();
      sub_1C97BFF6C(v29, qword_1EC3D3108);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v30 = sub_1C9A91B38();
      v31 = sub_1C9A92F98();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49 = v33;
        *v32 = 136315394;
        v48 = a5;
        v34 = [a1 description];
        v35 = sub_1C9A924A8();
        v37 = v36;

        v38 = sub_1C9849140(v35, v37, &v49);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2080;
        v39 = [a3 description];
        v40 = sub_1C9A924A8();
        v42 = v41;

        v43 = sub_1C9849140(v40, v42, &v49);

        *(v32 + 14) = v43;
        a5 = v48;
        _os_log_impl(&dword_1C9788000, v30, v31, "for handler: result (%s) produced by request %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA93280](v33, -1, -1);
        MEMORY[0x1CCA93280](v32, -1, -1);
      }
    }

    else
    {
    }
  }

  return a5(a1);
}

uint64_t sub_1C9822598(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void *))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (qword_1EC3C57B0 != -1)
    {
      swift_once();
    }

    if (byte_1EC3D3480 == 1)
    {
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v8 = sub_1C9A91B58();
      sub_1C97BFF6C(v8, qword_1EC3D3108);
      v9 = a1;
      swift_unknownObjectRetain();
      v10 = sub_1C9A91B38();
      v11 = sub_1C9A92F98();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v12 = 138412546;
        if (a1)
        {
          v14 = a1;
          v15 = _swift_stdlib_bridgeErrorToNSError();
          v16 = v15;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        *(v12 + 4) = v15;
        *v13 = v16;
        *(v12 + 12) = 2080;
        v17 = [a3 description];
        v18 = sub_1C9A924A8();
        v20 = v19;

        v21 = sub_1C9849140(v18, v20, &v24);

        *(v12 + 14) = v21;
        _os_log_impl(&dword_1C9788000, v10, v11, "for handler: termination (%@) received from request %s", v12, 0x16u);
        sub_1C97BFFA4(v13);
        MEMORY[0x1CCA93280](v13, -1, -1);
        sub_1C97A592C(v23);
        MEMORY[0x1CCA93280](v23, -1, -1);
        MEMORY[0x1CCA93280](v12, -1, -1);
      }
    }
  }

  return a5(a1);
}

void sub_1C9822814(uint64_t a1, id a2)
{
  [a2 sampleRate];
  v6 = v5;
  v7 = [a2 channelCount];

  sub_1C994A328(v7, v6);
  if (v2)
  {

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    swift_unknownObjectRelease();
    *(a1 + 48) = 0;
    v16 = *(a1 + 56);
    *(a1 + 56) = v2;
    v17 = v2;

    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v18 = sub_1C9A91B58();
    sub_1C97BFF6C(v18, qword_1EC3D3108);
    v19 = v2;
    v20 = sub_1C9A91B38();
    v21 = sub_1C9A92FA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v22 = 136315394;
      v25 = sub_1C9A924F8();
      v27 = sub_1C9849140(v25, v26, &v37);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      v28 = v2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      *v23 = v29;
      _os_log_impl(&dword_1C9788000, v20, v21, "request failed to adapt to system configuration %s with error %@", v22, 0x16u);
      sub_1C97BFFA4(v23);
      sub_1C98135FC();
      MEMORY[0x1CCA93280](v30, v31);
      sub_1C97A592C(v24);
      sub_1C98135FC();
      MEMORY[0x1CCA93280](v32, v33);
      sub_1C98135FC();
      MEMORY[0x1CCA93280](v34, v35);
    }

    swift_willThrow();
  }

  else
  {

    v8 = *(*(a1 + 24) + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(ObjectType, v8);
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v11 = v10;
      v12 = sub_1C9A158E0(v10);
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 8))(v7, v15, v14, v6);
      sub_1C97F9C90(v11);
      *(a1 + 32) = v12;
      *(a1 + 40) = v14;
      swift_unknownObjectRelease();
      *(a1 + 48) = 1;
      v36 = *(a1 + 56);
      *(a1 + 56) = 0;
    }
  }
}

uint64_t sub_1C9822B18()
{
  sub_1C9823DF8();
  result = swift_beginAccess();
  v2 = *(v0 + 48);
  if (v2 >> 62)
  {
    result = sub_1C9A934C8();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1CCA912B0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      sub_1C9820EAC(v5);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1C9822BF8()
{
  v41[14] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v0[3] = MEMORY[0x1E69E7CC0];

  sub_1C9823DF8();
  swift_beginAccess();
  v1 = v0[7];
  v36 = v1 & 0xC000000000000001;
  v37 = sub_1C97BDEE0(v1);
  v35 = v1 & 0xFFFFFFFFFFFFFF8;
  v38 = v1;

  for (i = 0; v37 != i; i = v39 + 1)
  {
    if (v36)
    {
      v3 = MEMORY[0x1CCA912B0](i, v38);
    }

    else
    {
      if (i >= *(v35 + 16))
      {
        goto LABEL_31;
      }

      v3 = *(v38 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v39 = i;
    sub_1C97A2CEC(&unk_1EC3C6E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9DF30;
    v5 = *(v3[3] + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = *(v7 + 16);

    v9 = v8(ObjectType, v7);
    v10 = v40;
    if (v40)
    {

      *(inited + 16) = 0;
      swift_setDeallocating();
      sub_1C985D6E8();
      goto LABEL_28;
    }

    v11 = v9;

    if (v3[4])
    {
      v12 = v3[5];
      v13 = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain_n();
      v15 = v14(v13, v12);
      swift_unknownObjectRelease_n();
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(SNProcessingContext);
    *(inited + 32) = sub_1C98236E4(v11, v15);
    sub_1C9823E14();
    swift_beginAccess();
    v17 = v0[3];
    v18 = v17 >> 62;
    if (v17 >> 62)
    {
      v19 = sub_1C9A934C8();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v0[3] = v17;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v18)
      {
        v22 = v17 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1C9A934C8();
      goto LABEL_20;
    }

    if (v18)
    {
      goto LABEL_19;
    }

LABEL_20:
    v17 = sub_1C9A93618();
    v0[3] = v17;
    v22 = v17 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    if (*(v22 + 16) >= *(v22 + 24) >> 1)
    {
      goto LABEL_33;
    }

    v40 = 0;
    sub_1C9823D70();
    swift_arrayInitWithCopy();

    ++*(v22 + 16);
    v0[3] = v17;
    swift_endAccess();
  }

  v23 = v0[4];
  sub_1C9823D70();

  v24 = sub_1C9A92768();

  v41[0] = 0;
  v25 = [v23 setProcessingContexts:v24 error:v41];

  if (v25)
  {
    v26 = v41[0];
    return;
  }

  v33 = v41[0];
  v34 = sub_1C9A913C8();

  v10 = v34;
  swift_willThrow();
LABEL_28:
  type metadata accessor for SNError();
  v27 = v10;
  v28 = sub_1C9A913B8();
  sub_1C9823DE8();
  v29 = sub_1C9823DC8();
  sub_1C9929478(v29, v30, 1, v28, v31, v32);

  swift_willThrow();
}

void sub_1C98230D8()
{
  sub_1C9822BF8();
  if (v0)
  {
    type metadata accessor for SNError();
    v1 = sub_1C9823DB4();
    sub_1C9929478(v1, v2, v3, v4, 0xD00000000000001FLL, v5);
    swift_willThrow();
  }

  else
  {

    sub_1C97C1FF0();
  }
}

uint64_t sub_1C98231C0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 56);
  v10 = sub_1C97BDEE0(v3);

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA912B0](i, v3);
      v6 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = *(*(v6 + 24) + 24);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);

    v9(ObjectType, v7);
    if (v1)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C982332C()
{

  return v0;
}

uint64_t sub_1C9823374()
{
  sub_1C982332C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9823438(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C982347C(uint64_t a1, uint64_t a2)
{
  result = sub_1C97BDEE0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1CCA912B0](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C9823554(uint64_t a1, uint64_t a2)
{
  result = sub_1C97BDEE0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
LABEL_13:
      swift_unknownObjectRelease();
      return v9;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x1CCA912B0](v6, a1);
LABEL_6:
    result = swift_unknownObjectRelease();
    if (v7 == a2)
    {
      v9 = v6;
      goto LABEL_13;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_15;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_1C9823634()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [v0 initWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v1;
}

id sub_1C98236E4(void *a1, void *a2)
{
  v3 = v2;
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v6 = [v3 initWithGraph:a1 sharedProcessingGraph:a2 error:v10];
  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1C98237B8(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_1C982347C(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_1C97BDEE0(v5);
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_1C9A934C8();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA912B0](v9, v5);
        result = swift_unknownObjectRelease();
        if (v16 != a2)
        {
          if (v8 != v9)
          {
            v12 = MEMORY[0x1CCA912B0](v8, v5);
            v11 = MEMORY[0x1CCA912B0](v9, v5);
            goto LABEL_16;
          }

LABEL_26:
          v15 = __OFADD__(v8++, 1);
          if (v15)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1C97E8450(v5);
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_1C97E8450(v5);
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            *(v14 + 8 * v9 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98239D4(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_1C9823554(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    v8 = sub_1C97BDEE0(v5);
LABEL_38:
    swift_unknownObjectRelease();
    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v5 >> 62 ? sub_1C9A934C8() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == result)
      {
        goto LABEL_38;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1CCA912B0](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      result = swift_unknownObjectRelease();
      if (v10 != a2)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1CCA912B0](v8, v5);
            v12 = MEMORY[0x1CCA912B0](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v13)
            {
              goto LABEL_45;
            }

            if (v9 >= v13)
            {
              goto LABEL_46;
            }

            v11 = *(v5 + 32 + 8 * v8);
            v12 = *(v5 + 32 + 8 * v9);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1C97E8450(v5);
            v14 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v14) = 0;
          }

          v15 = v5 & 0xFFFFFFFFFFFFFF8;
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v12;
          result = swift_unknownObjectRelease();
          if ((v5 & 0x8000000000000000) != 0 || v14)
          {
            result = sub_1C97E8450(v5);
            v5 = result;
            v15 = result & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v15 + 16))
          {
            goto LABEL_43;
          }

          *(v15 + 8 * v9 + 32) = v11;
          result = swift_unknownObjectRelease();
          *a1 = v5;
        }

        v16 = __OFADD__(v8++, 1);
        if (v16)
        {
          goto LABEL_42;
        }
      }

      v16 = __OFADD__(v9++, 1);
      if (v16)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9823C30()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C9823CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t sub_1C9823D14()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1C9823D70()
{
  result = qword_1EC3C56A0;
  if (!qword_1EC3C56A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C56A0);
  }

  return result;
}

id sub_1C9823E40()
{

  return [v0 (v1 + 2040)];
}

uint64_t sub_1C9823E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C9823E74()
{
  MEMORY[0x1CCA91980](0);

  return sub_1C9A92528();
}

uint64_t sub_1C9823EC8()
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C9823F3C()
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](0);
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C9823FF8()
{
  v1 = *(v0 + OBJC_IVAR___SNFileDeletionResult_impl);

  return v1;
}

uint64_t sub_1C982408C()
{
  v1 = *(v0 + OBJC_IVAR___SNFileDeletionResult_impl + 24);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___SNFileDeletionResult_impl + 16);
    sub_1C98242BC();
    v3 = swift_allocError();
    *v4 = v2;
    v4[1] = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SNFileDeletionResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileDeletionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileDeletionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C982422C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C982426C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C98242BC()
{
  result = qword_1EC3C86C0;
  if (!qword_1EC3C86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C86C0);
  }

  return result;
}

unint64_t sub_1C9824324()
{
  result = qword_1EC3C86C8;
  if (!qword_1EC3C86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C86C8);
  }

  return result;
}

uint64_t sub_1C9824378()
{
  sub_1C97A2CEC(qword_1EC3C86D8);
  swift_allocObject();
  result = sub_1C9A37FC8(MEMORY[0x1E69E7CC8]);
  qword_1EC3D3168 = result;
  return result;
}

uint64_t sub_1C98243CC()
{
  sub_1C9824408(*(v0 + 16));

  return v0;
}

uint64_t sub_1C9824408(uint64_t a1)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92FC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1C9788000, v3, v4, "Unregister from System Power Updates, id: %ld", v5, 0xCu);
    MEMORY[0x1CCA93280](v5, -1, -1);
  }

  if (qword_1EC3C5D78 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC3D3168;
  v7 = *(*(qword_1EC3D3168 + 24) + 16);
  os_unfair_lock_lock(v7);
  sub_1C99D6FE8(v6, a1, v9);
  os_unfair_lock_unlock(v7);
  return sub_1C982467C(v9);
}

uint64_t sub_1C9824564()
{
  sub_1C98243CC();

  return swift_deallocClassInstance();
}

__n128 sub_1C98245CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C98245E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 44))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9824620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C982467C(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C86D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9824708()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1C9824764(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_1C97ABF20(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C98248DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_1C97ACC50(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C9824B14(uint64_t a1, uint64_t a2)
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

  v52 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B7B48(0, v6, 0);
  v31 = v5;
  v32 = v4;
  v38 = v6;
  v40 = a1;
  if (v6)
  {
    v8 = (a2 + 56);
    v9 = (a1 + 56);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_31;
      }

      if (*v9 & 1) != 0 || (*v8)
      {
LABEL_28:
        sub_1C97A8E8C();
        swift_allocError();
        *v30 = 0;
        swift_willThrow();

        return v52;
      }

      v42 = v6;
      result = sub_1C9A93158();
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      if (result)
      {
        v33 = result;
        sub_1C9A92F18();
        result = v33;
        v10 = v49;
        v11 = v50;
        v12 = v51;
      }

      v14 = *(v52 + 16);
      v13 = *(v52 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = result;
        v44 = v12;
        v34 = v11;
        v36 = v10;
        sub_1C97B7B48(v13 > 1, v14 + 1, 1);
        v11 = v34;
        v10 = v36;
        v12 = v44;
        result = v16;
      }

      *(v52 + 16) = v14 + 1;
      v15 = v52 + 52 * v14;
      *(v15 + 32) = v10;
      *(v15 + 48) = v11;
      --v5;
      *(v15 + 64) = v12;
      *(v15 + 80) = (result ^ 1) & 1;
      --v4;
      v8 += 28;
      v9 += 28;
      --v6;
      if (v42 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_15:
    v18 = v38;
    v17 = v40;
    v19 = 28 * v38;
    v21 = a2;
    v20 = v31;
    v22 = v32;
    v45 = 28 * v38;
    while (v22 != v18)
    {
      if (v18 >= v22)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_33;
      }

      if (v20 == v18)
      {
        return v52;
      }

      if (v18 >= v20)
      {
        goto LABEL_34;
      }

      if (*(v17 + v19 + 56) & 1) != 0 || (*(v21 + v19 + 56))
      {
        goto LABEL_28;
      }

      v39 = v18;
      v41 = v17;
      result = sub_1C9A93158();
      v23 = result;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      if (result)
      {
        result = sub_1C9A92F18();
        v24 = v46;
        v25 = v47;
        v26 = v48;
      }

      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      v20 = v31;
      if (v28 >= v27 >> 1)
      {
        v43 = v24;
        v35 = v26;
        v37 = v25;
        result = sub_1C97B7B48(v27 > 1, v28 + 1, 1);
        v26 = v35;
        v25 = v37;
        v24 = v43;
      }

      *(v52 + 16) = v28 + 1;
      v29 = v52 + 52 * v28;
      *(v29 + 32) = v24;
      *(v29 + 48) = v25;
      *(v29 + 64) = v26;
      *(v29 + 80) = (v23 ^ 1) & 1;
      v18 = v39 + 1;
      v21 += 28;
      v17 = v41 + 28;
      v22 = v32;
      v19 = v45;
    }

    return v52;
  }

  return result;
}

uint64_t sub_1C9824E6C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1C9A922E8();
  sub_1C9A928B8();
  sub_1C9A926B8();

  return v1;
}

uint64_t sub_1C9824F58(uint64_t a1)
{
  v2 = sub_1C9825870(a1, 1);
  v3 = sub_1C97E8BB0(v2);

  sub_1C9825048(1, a1);
  v5 = sub_1C97E8BB0(v4);

  v10 = *(v5 + 16);
  v11 = *(v3 + 16);
  if (v10 <= v11)
  {
    v12 = *(v3 + 16);
  }

  else
  {
    v12 = *(v5 + 16);
  }

  v13 = sub_1C9825C64(v6, v7, v8, v9, v10 - v12);
  sub_1C98CF464(v13);
  v18 = sub_1C9825C64(v14, v15, v16, v17, v11 - v12);
  sub_1C98CF464(v18);
  v19 = sub_1C9824B14(v5, v3);

  return v19;
}

void sub_1C9825048(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    goto LABEL_29;
  }

  v2 = a1;
  if (a1)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
LABEL_25:

      return;
    }

    v4 = 0;
    v5 = v3 - 1;
    v6 = (a2 + 48);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v8 + 16);
      v27 = v5;
      v28 = *(v6 - 2);
      v29 = *(v6 - 2);
      if (v11 < v2)
      {
        break;
      }

      if (v4 >= v11)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v26 = *v6;
      v15 = (v8 + 24 * v4);
      v16 = v15[4];
      v17 = v15[5];
      v18 = v15[6];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97B7A1C(0, *(v7 + 16) + 1, 1);
      }

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C97B7A1C(v19 > 1, v20 + 1, 1);
      }

      *(v7 + 16) = v20 + 1;
      v21 = (v7 + 24 * v20);
      v21[4] = v16;
      v21[5] = v17;
      v21[6] = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C98254AC(v8);
        v8 = v22;
      }

      v2 = a1;
      if (v4 >= *(v8 + 16))
      {
        goto LABEL_28;
      }

      v23 = v8 + 24 * v4;
      *(v23 + 32) = v28;
      *(v23 + 40) = v29;
      *(v23 + 44) = v9;
      *(v23 + 48) = v26;
      if (++v4 < a1)
      {
        goto LABEL_20;
      }

      v24 = v27;
      if (!v27)
      {
        goto LABEL_25;
      }

      v4 = 0;
LABEL_24:
      v6 += 3;
      v5 = v24 - 1;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C97B7A1C(0, v11 + 1, 1);
    }

    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1C97B7A1C(v12 > 1, v13 + 1, 1);
    }

    *(v8 + 16) = v13 + 1;
    v14 = v8 + 24 * v13;
    *(v14 + 32) = v28;
    *(v14 + 40) = v29;
    *(v14 + 44) = v9;
    *(v14 + 48) = v10;
LABEL_20:
    v24 = v27;
    if (!v27)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

uint64_t sub_1C98252B0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1C9A928B8();
  swift_checkMetadataState();
  swift_getWitnessTable();
  return sub_1C9A92E18();
}

void sub_1C98253C8(uint64_t a1, int64_t a2, int64_t a3)
{
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
LABEL_8:
    sub_1C97E72E0();
    v6 = v8;
    goto LABEL_4;
  }

  v5 = a1;
  if (*(a1 + 16) != a2 * a3)
  {
    sub_1C97E78C8();
    swift_allocError();
    *v7 = 10;
    swift_willThrow();
    return;
  }

  v4 = a3;
  v3 = a2;

  v6 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (((v4 | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    vDSP_mtrans((v5 + 32), 1, (v6 + 32), 1, v4, v3);
  }
}

void *sub_1C98254FC(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3)
{
  v34[2] = *MEMORY[0x1E69E9840];

  v6 = a1(v5);
  v33 = 0;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {

    v10 = objc_autoreleasePoolPush();
    v11 = *(v6 + 16);
    if (!v11)
    {
      sub_1C97A2CEC(&unk_1EC3D2870);
      sub_1C9825A44();
      goto LABEL_30;
    }

    v12 = [*(v6 + 16) framePosition];
    if (v12 >= [v11 length])
    {
      goto LABEL_10;
    }

    v13 = [v11 processingFormat];
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if (HIDWORD(a3))
    {
      goto LABEL_39;
    }

    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v13 frameCapacity:a3];

    if (!v15)
    {
      break;
    }

    v34[0] = 0;
    if (([v11 readIntoBuffer:v15 error:v34] & 1) == 0)
    {
      v28 = v34[0];
      v27 = sub_1C9A913C8();

      swift_willThrow();
      goto LABEL_32;
    }

    v16 = v34[0];
    if (![v15 frameLength])
    {

LABEL_10:
      v15 = 0;
    }

    objc_autoreleasePoolPop(v10);

    if (!v15)
    {
      goto LABEL_33;
    }

    if (!v7)
    {
      v17 = v8[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      sub_1C97A2CEC(&unk_1EC3C6E20);
      v20 = swift_allocObject();
      v21 = (j__malloc_size(v20) - 32) / 8;
      v20[2] = v19;
      v20[3] = (2 * v21) | 1;
      v22 = (v20 + 4);
      v23 = v8[3];
      v24 = v23 >> 1;
      if (v8[2])
      {
        if (v20 != v8 || v22 >= &v8[v24 + 4])
        {
          memmove(v20 + 4, v8 + 4, 8 * v24);
        }

        v8[2] = 0;
      }

      i = (v22 + 8 * v24);
      v7 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - (v23 >> 1);

      v8 = v20;
    }

    v26 = __OFSUB__(v7--, 1);
    if (v26)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    *i = v15;
  }

  sub_1C9812B64();
LABEL_30:
  v27 = swift_allocError();
  swift_willThrow();
LABEL_32:
  objc_autoreleasePoolPop(v10);

LABEL_33:
  sub_1C99C9F50();

  v29 = v8[3];
  if (v29 >= 2)
  {
    v30 = v29 >> 1;
    v26 = __OFSUB__(v30, v7);
    v31 = v30 - v7;
    if (!v26)
    {
      v8[2] = v31;
      return v8;
    }

LABEL_41:
    __break(1u);
  }

  return v8;
}

uint64_t sub_1C9825870(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = a2 & ~(a2 >> 63);
  v4 = *(result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    if (v4 == v2)
    {
      goto LABEL_8;
    }

    v21 = v2++ >= v4;
    if (v21)
    {
      __break(1u);
      break;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = v4 - v3;
  if (v4 == v3)
  {
LABEL_8:
    v7 = 0;
LABEL_27:
    v23 = v5[3];
    if (v23 < 2)
    {
      return v5;
    }

    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v7);
    v25 = v24 - v7;
    if (!v22)
    {
      v5[2] = v25;
      return v5;
    }

    goto LABEL_33;
  }

  if (v4 > v3)
  {
    v7 = 0;
    v8 = (result + 24 * v3 + 48);
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      if (!v7)
      {
        v13 = v5[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_32;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_1C97A2CEC(&unk_1EC3C69D0);
        v16 = swift_allocObject();
        v17 = (j__malloc_size(v16) - 32) / 24;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v5[3];
        v20 = v19 >> 1;
        if (v5[2])
        {
          v21 = v16 != v5 || v18 >= &v5[3 * v20 + 4];
          if (v21)
          {
            memmove(v16 + 4, v5 + 4, 24 * v20);
          }

          v5[2] = 0;
        }

        v9 = (v18 + 24 * v20);
        v7 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v5 = v16;
      }

      v22 = __OFSUB__(v7--, 1);
      if (v22)
      {
        break;
      }

      v8 += 3;
      *v9 = v10;
      v9[1] = v11;
      v9[2] = v12;
      v9 += 3;
      if (!--v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C9825A44()
{
  result = qword_1EC3C8400;
  if (!qword_1EC3C8400)
  {
    sub_1C97AA4F0(&unk_1EC3D2870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionUtils.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CollectionUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9825C10()
{
  result = qword_1EC3C8760[0];
  if (!qword_1EC3C8760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C8760);
  }

  return result;
}

uint64_t sub_1C9825C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C97DD888(0, 0, 0, 1, a5);
}

uint64_t RawRepresentableWrapper.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1C9A93258();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  (*(v8 + 16))(v11, v3, AssociatedTypeWitness);
  sub_1C9A92708();
  result = sub_1C97ABF20(v14, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v14, v5);
  }

  __break(1u);
  return result;
}

uint64_t RawRepresentableWrapper.init(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C9A926F8();
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

uint64_t RawRepresentableWrapper.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t sub_1C9825EEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9825F9C()
{
  sub_1C9A93CC8();
  sub_1C979AFAC();
  return sub_1C9A93D18();
}

uint64_t sub_1C9825FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9825EEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9826044@<X0>(_BYTE *a1@<X8>)
{
  result = _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C9826078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98260CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t RawRepresentableWrapper<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1C9A92398();
}

uint64_t RawRepresentableWrapper<>.hashValue.getter()
{
  sub_1C9A93CC8();
  RawRepresentableWrapper<>.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t sub_1C982626C()
{
  sub_1C9A93CC8();
  RawRepresentableWrapper<>.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t RawRepresentableWrapper<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v11[3] = a3;
  v11[1] = *(a2 + 16);
  type metadata accessor for RawRepresentableWrapper.CodingKeys();
  sub_1C9826CC8();
  swift_getWitnessTable();
  v4 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DD8();
  swift_getAssociatedTypeWitness();
  sub_1C9A93A18();
  return (*(v6 + 8))(v9, v4);
}

uint64_t RawRepresentableWrapper<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v28 = a2;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v27 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v23 - v6;
  type metadata accessor for RawRepresentableWrapper.CodingKeys();
  sub_1C9826CC8();
  swift_getWitnessTable();
  sub_1C9A93978();
  sub_1C97AE9C8();
  v25 = v8;
  v26 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for RawRepresentableWrapper();
  sub_1C97AE9C8();
  v23 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1C97A5A8C(a1, a1[3]);
  v17 = v31;
  sub_1C9A93DB8();
  if (!v17)
  {
    v31 = v12;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = AssociatedTypeWitness;
    sub_1C9A938F8();
    (*(v18 + 8))(v11, v19);
    (*(v20 + 32))(v16, v30, v21);
    (*(v23 + 32))(v24, v16, v31);
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C98267A0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C9826820(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 84);
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_20:

    return sub_1C97ABF20(a1, v5, AssociatedTypeWitness);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1C98269B0(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = 8 * v8;
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7 >= a2)
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v7, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v11 = ~v7 + a2;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v8)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C9826BD8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9826CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v13[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = static TimeRange.== infix(_:_:)(v14, v13);
  result = 0;
  if (v10 && v3 == v7)
  {
    if (v4 == v8 && v5 == v9)
    {
      return 1;
    }

    else
    {

      return sub_1C9A93B18();
    }
  }

  return result;
}

uint64_t sub_1C9826DB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9826ED0(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0x6E656469666E6F63;
  }

  return 1701667182;
}

uint64_t sub_1C9826F28(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3C8898);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v13 = *(v3 + 7);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9828370();
  sub_1C9A93DD8();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = v3[2];
  v14 = 0;
  sub_1C97BD12C();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1C9A939E8();
    LOBYTE(v15) = 2;
    sub_1C9A939C8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C98270EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x1CCA919B0](*&v5);

  return sub_1C9A92528();
}

uint64_t sub_1C98271C0()
{
  sub_1C9A93CC8();
  sub_1C98270EC();
  return sub_1C9A93D18();
}

uint64_t sub_1C9827200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C8880);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9828370();
  sub_1C9A93DB8();
  if (!v2)
  {
    v18[15] = 0;
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v22 = v19;
    v23 = v20;
    v24 = v21;
    sub_1C98021D4(1);
    sub_1C9A938C8();
    v12 = v11;
    sub_1C98021D4(2);
    v14 = sub_1C9A938A8();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    v17 = v23;
    *a2 = v22;
    *(a2 + 16) = v17;
    *(a2 + 32) = v24;
    *(a2 + 48) = v12;
    *(a2 + 56) = v14;
    *(a2 + 64) = v16;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C98273EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9826DB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9827414(uint64_t a1)
{
  v2 = sub_1C9828370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9827450(uint64_t a1)
{
  v2 = sub_1C9828370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9827494()
{
  sub_1C9A93CC8();
  sub_1C98270EC();
  return sub_1C9A93D18();
}

double SNSoundActionsResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNSoundActionsResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNSoundActionsResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNSoundActionsResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double SNSoundActionsResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNSoundActionsResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

double sub_1C9827628@<D0>(_OWORD *a1@<X8>)
{
  SNSoundActionsResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNSoundActionsResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNSoundActionsResult.timeRange.getter((v3 + 1));
  return sub_1C98276D0;
}

void sub_1C98276D0(void **a1)
{
  v1 = *a1;
  SNSoundActionsResult.timeRange.setter(*a1 + 8);

  free(v1);
}

double (*SNSoundActionsResult.confidence.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSoundActionsResult_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C98277B8;
}

double sub_1C98277B8(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16) + 48) = *a1;
  return result;
}

uint64_t SNSoundActionsResult.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNSoundActionsResult_impl + 56);

  return v1;
}

uint64_t SNSoundActionsResult.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___SNSoundActionsResult_impl;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
}

uint64_t sub_1C98278E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SNSoundActionsResult.name.setter(v1, v2);
}

uint64_t (*SNSoundActionsResult.name.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR___SNSoundActionsResult_impl;
  a1[2] = v1;
  a1[3] = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 64);
  *a1 = *(v4 + 56);
  a1[1] = v5;

  return sub_1C982797C;
}

uint64_t sub_1C982797C(void *a1)
{
  v1 = a1[2] + a1[3];
  v2 = a1[1];
  *(v1 + 56) = *a1;
  *(v1 + 64) = v2;
}

id sub_1C9827994()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNSoundActionsResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0xE000000000000000;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNSoundActionsResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNSoundActionsResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNSoundActionsResult_impl], __dst, 0x48uLL);
  sub_1C97A6948(__dst, v7);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNSoundActionsResult.hash.getter()
{
  memcpy(__dst, (v0 + OBJC_IVAR___SNSoundActionsResult_impl), sizeof(__dst));
  memcpy(v4, (v0 + OBJC_IVAR___SNSoundActionsResult_impl), sizeof(v4));
  sub_1C9A93CC8();
  sub_1C97A6948(__dst, &v3);
  sub_1C98270EC();
  v1 = sub_1C9A93D18();
  sub_1C9827BF4(__dst);
  return v1;
}

uint64_t SNSoundActionsResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v7);
  if (v8)
  {
    sub_1C97A2D34(&v7, v6);
    sub_1C97BD360(v6, v5);
    if (swift_dynamicCast() && v4)
    {
      v2 = sub_1C9859F80();
    }

    else
    {
      v2 = 0;
    }

    sub_1C97A592C(v6);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id SNSoundActionsResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1774();
  v3 = objc_allocWithZone(ObjectType);
  memcpy(&v3[OBJC_IVAR___SNSoundActionsResult_impl], __src, 0x48uLL);
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  swift_getObjectType();
  sub_1C98285C4();
  return v4;
}

Swift::Void __swiftcall SNSoundActionsResult.encode(with:)(NSCoder with)
{
  memcpy(__dst, (v1 + OBJC_IVAR___SNSoundActionsResult_impl), sizeof(__dst));
  sub_1C97A6948(__dst, v3);
  sub_1C979F224(__dst, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C9827BF4(__dst);
}

uint64_t SNSoundActionsResult.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v9 = v10[0];
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, sel_description);
  sub_1C9A924A8();

  sub_1C98285A8();

  sub_1C98285E4();

  sub_1C98285A8();

  MEMORY[0x1CCA90230](0x6469666E6F43203BLL, 0xEE00203A65636E65);
  sub_1C9A92AF8();
  sub_1C98285E4();
  SNSoundActionsResult.timeRange.getter(v10);
  v3 = objc_opt_self();
  v7[0] = v10[0];
  v7[1] = v10[1];
  v7[2] = v10[2];
  v4 = [v3 valueWithCMTimeRange_];
  v5 = [v4 description];
  sub_1C9A924A8();

  sub_1C98285A8();

  return v9;
}

id SNSoundActionsResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C98281F0@<D0>(_OWORD *a1@<X8>)
{
  SNSoundActionsResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C9828278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98282B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C982831C()
{
  result = qword_1EC3C8878;
  if (!qword_1EC3C8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8878);
  }

  return result;
}

unint64_t sub_1C9828370()
{
  result = qword_1EC3C8888;
  if (!qword_1EC3C8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8888);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SoundActionsResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98284A4()
{
  result = qword_1EC3C88A8;
  if (!qword_1EC3C88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C88A8);
  }

  return result;
}

unint64_t sub_1C98284FC()
{
  result = qword_1EC3C88B0;
  if (!qword_1EC3C88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C88B0);
  }

  return result;
}

unint64_t sub_1C9828554()
{
  result = qword_1EC3C88B8;
  if (!qword_1EC3C88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C88B8);
  }

  return result;
}

void sub_1C98285A8()
{

  JUMPOUT(0x1CCA90230);
}

uint64_t sub_1C98285C4()
{

  return swift_deallocPartialClassInstance();
}

void sub_1C98285E4()
{

  JUMPOUT(0x1CCA90230);
}

_BYTE *storeEnumTagSinglePayload for RuntimeFeatureFlags.SoundAnalysis(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98286E4()
{
  result = qword_1EC3C88C0[0];
  if (!qword_1EC3C88C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C88C0);
  }

  return result;
}

const char *sub_1C9828738(char a1)
{
  if (a1)
  {
    return "useRoomEstimationNN";
  }

  else
  {
    return "systemCombinePipes";
  }
}

uint64_t sub_1C98287E4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C9828824(a1);
  return v2;
}

uint64_t sub_1C9828824(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  sub_1C9828C08();
  sub_1C9828C08();
  swift_unknownObjectRetain();
  sub_1C99D0430();
  sub_1C9A91C78();
  swift_getWitnessTable();
  type metadata accessor for SubscriptionSerializer();
  swift_getWitnessTable();
  v3 = sub_1C9A91F28();

  swift_unknownObjectRelease();
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_1C9828994()
{
  sub_1C9828C08();
  sub_1C9828C08();
  return sub_1C9A91EC8();
}

uint64_t sub_1C98289E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  sub_1C9828C08();
  sub_1C9828C08();
  v8 = sub_1C9828C14();
  v9 = sub_1C9828C14();

  return MEMORY[0x1EEDB5BC8](a1, v7, v8, v9, a2, a3);
}

uint64_t sub_1C9828A98()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C9828AC0()
{
  sub_1C9828A98();

  return swift_deallocClassInstance();
}

uint64_t sub_1C9828BC8()
{
  type metadata accessor for SharedSubject();
  v0 = swift_unknownObjectRetain();
  return sub_1C98287E4(v0);
}

uint64_t sub_1C9828C14()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1C9828C38(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  v12 = sub_1C97DACE4(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = v5 + OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted;
  v16 = *(v5 + OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted);
  v17 = *(v5 + OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted + 24);
  v18 = sub_1C9A92988();
  v21 = *(v15 + 8);
  sub_1C97ACC50(v14, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a3;
  *(v19 + 40) = v16;
  *(v19 + 48) = v21;
  *(v19 + 64) = v17;
  *(v19 + 72) = a1;
  *(v19 + 80) = a2;
  *(v19 + 88) = a4;
  *(v19 + 96) = a5;
  swift_unknownObjectRetain();

  sub_1C97DA2E8(a1, a2);

  sub_1C99A9128();
}

void sub_1C9828EA8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_3:
      v11 = sub_1C9A913B8();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = sub_1C9A915F8();
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = v11;
  (*(a6 + 16))(a6, a1 & 1, v10, a4);
}

id sub_1C9829024()
{
  v0 = objc_opt_self();
  v1 = &unk_1F49684C0;
  v2 = [v0 interfaceWithProtocol_];

  v3 = sub_1C982F9EC();
  [v3 v4];
  v5 = sub_1C982F9EC();
  result = [v5 v6];
  qword_1EC3D3170 = v2;
  return result;
}

uint64_t sub_1C98290C0()
{
  sub_1C97AA95C();
  v2 = v1;
  v4 = v3;
  *(v0 + 64) = v5;
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_1C9802410;
  sub_1C982F954();

  return sub_1C9829170(v8, v9, v10, v4, v2);
}

uint64_t sub_1C9829170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_1C982F8C0();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98291A0()
{
  receiver = v0[9].receiver;
  sub_1C97A2CEC(&qword_1EC3C8950);
  swift_allocObject();
  v2 = sub_1C982CAE4();
  v0[10].super_class = v2;
  if (receiver[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1C9A915F8();
  }

  v4 = v0[9].receiver;
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = *(v4 + 5);
    v7 = type metadata accessor for XPCProxyXPCHost();
    v21 = *(v4 + 24);
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted];
    *v9 = v5;
    *(v9 + 8) = v21;
    *(v9 + 3) = v6;
    v0[7].receiver = v8;
    v0[7].super_class = v7;

    v10 = objc_msgSendSuper2(v0 + 7, sel_init);
  }

  else
  {
    v10 = 0;
  }

  super_class = v0[9].super_class;
  v11 = v0[10].receiver;
  v13 = v0[8].super_class;
  sub_1C97DAA28();
  v14 = swift_allocObject();
  *(v14 + 2) = super_class;
  *(v14 + 3) = v11;
  *(v14 + 4) = v2;
  v0[3].receiver = sub_1C982CB90;
  v0[3].super_class = v14;
  v0[1].receiver = MEMORY[0x1E69E9820];
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_1C9829BA0;
  v0[2].super_class = &unk_1F4932DD0;
  v15 = _Block_copy(&v0[1]);

  [(objc_class *)v13 xpcUnsafeSendMessageWithData:v3 proxy:v10 completionHandler:v15];

  _Block_release(v15);
  swift_unknownObjectRelease();

  swift_task_alloc();
  sub_1C97DA928();
  v0[11].receiver = v16;
  *v16 = v17;
  v16[1] = sub_1C9829424;
  v18 = v0[9].super_class;
  v19 = v0[10].receiver;

  return sub_1C982A914(&v0[4], v18, v19, &unk_1C9AA4770, v2);
}

uint64_t sub_1C9829424()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9829524()
{
  if ((*(v0 + 80) - 1) >= 2)
  {
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 128);

    *v4 = v7;
    *(v4 + 16) = v6;
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    sub_1C97DA8DC();
  }

  else
  {
    sub_1C982CC44();
    swift_allocError();
    swift_willThrow();

    sub_1C97DA91C();
  }

  return v1();
}

uint64_t sub_1C9829600()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

void sub_1C9829660(char a1, uint64_t a2, unint64_t a3, uint64_t a4, id a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a4)
    {
      v12 = swift_allocObject();
      v12[2] = a4;
      v12[3] = a6;
      v12[4] = a7;
      swift_retain_n();
      v13 = &unk_1C9A9F640;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      a6 = 0;
      a7 = 0;
    }

    v18 = a2;
    *&v19 = a3;
    *(&v19 + 1) = v13;
    *&v20 = v12;
    *(&v20 + 1) = a6;
    v21 = a7;
    v22 = 0;
    swift_unknownObjectRetain();
    sub_1C97DA2E8(a2, a3);
    sub_1C97DA2E8(a2, a3);
    sub_1C97A8F30(v13);
    sub_1C98298A8(&v18);
    sub_1C97AA780(a2, a3);
    sub_1C97AA074(v13);
    sub_1C97AA780(a2, a3);

    sub_1C97AA074(v13);
  }

  else
  {
    if (a5)
    {
      v15 = a5;
    }

    else
    {
      type metadata accessor for SNError();
      v15 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0x206E776F6E6B6E75, 0xED0000726F727265);
    }

    v18 = v15;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v22 = 1;
    v16 = a5;
    v17 = v15;
    sub_1C98298A8(&v18);
  }
}

void sub_1C98298A8(uint64_t a1)
{
  v21 = *a1;
  v22 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v7);
  v8 = sub_1C982D11C(v1, a1);
  os_unfair_lock_unlock(v7);
  if (!v2)
  {
    v19 = v5;
    v20 = v4;
    v9 = 0;
    v28 = v8;
    v10 = 1 << v8[32];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 8);
    v13 = (v10 + 63) >> 6;
    v18 = v6 & 1;
    while (v12)
    {
      v14 = v9;
      v16 = v21;
      v15 = v22;
LABEL_11:
      v17 = *(*(v28 + 7) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
      v12 &= v12 - 1;
      v24[0] = v16;
      v24[1] = v15;
      v25 = v20;
      v26 = v19;
      v27 = v18;

      sub_1C97E82EC(a1, v23, &qword_1EC3C89B8);
      v17(v24);

      sub_1C97DA1E0(a1, &qword_1EC3C89B8);
    }

    v16 = v21;
    v15 = v22;
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        return;
      }

      v12 = *&v8[8 * v14 + 64];
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1C9829A5C(void *a1)
{
  v4 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v4);
  v5 = sub_1C982D27C(v1, a1);
  os_unfair_lock_unlock(v4);
  if (!v2)
  {
    v6 = 0;
    v7 = 1 << v5[32];
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 8);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = v6;
LABEL_10:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(*(v5 + 7) + ((v11 << 10) | (16 * v12)));
      v15 = a1;

      v14 = a1;
      v13(&v15);
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        return;
      }

      v9 = *&v5[8 * v11 + 64];
      ++v6;
      if (v9)
      {
        v6 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C9829BA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {

    v10 = v7;
    v7 = sub_1C9A91618();
    v12 = v11;
  }

  else
  {

    v12 = 0xF000000000000000;
  }

  swift_unknownObjectRetain();
  v13 = a5;
  v9(a2, v7, v12, a4, a5);

  swift_unknownObjectRelease();
  sub_1C97AA780(v7, v12);
}

uint64_t sub_1C9829C74(uint64_t a1)
{
  *(v1 + 80) = a1;
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1C9829D24;

  return sub_1C9829ED0(v1 + 16);
}

uint64_t sub_1C9829D24()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9829E08()
{
  sub_1C97AA884();
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  if (v2 == 255)
  {
    v4 = *(v0 + 80);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 1;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  else
  {
    if (v2)
    {
      *(v0 + 72) = v1;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();
      goto LABEL_7;
    }

    v5 = *(v0 + 32);
    v6 = *(v0 + 48);
    v7 = *(v0 + 80);
    *v7 = v1;
    v7[1] = v5;
    v7[2] = v6;
  }

  sub_1C97DA8DC();
LABEL_7:

  return v3();
}

uint64_t sub_1C9829ED0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1C9A91748();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9829F90, 0, 0);
}

uint64_t sub_1C9829F90()
{
  sub_1C97AA95C();
  v1 = v0[13];
  v2 = v0[10];
  sub_1C9A91738();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[16] = v5;
  sub_1C97A2CEC(&qword_1EC3C8998);
  sub_1C982F93C();
  *v5 = v6;
  v5[1] = sub_1C982A0A0;
  sub_1C982F900();

  return MEMORY[0x1EEE6DE18]();
}

void sub_1C982A0A0()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_1C97DA7BC();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C982A1C4()
{
  sub_1C97AA884();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  *v4 = *(v0 + 16);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *(v4 + 48) = v5;
  (*(v1 + 8))(v2, v3);

  sub_1C97DA91C();

  return v8();
}

uint64_t sub_1C982A254()
{
  sub_1C97AA884();
  v1[2] = v0;
  v2 = sub_1C9A91748();
  v1[3] = v2;
  sub_1C97BE2AC(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C982A300()
{
  sub_1C97AA95C();
  v1 = v0[5];
  v2 = v0[2];
  sub_1C9A91738();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  sub_1C97A2CEC(&qword_1EC3C89F8);
  sub_1C982F93C();
  *v5 = v6;
  v5[1] = sub_1C982A410;
  sub_1C982F900();

  return MEMORY[0x1EEE6DE18]();
}

void sub_1C982A410()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_1C97DA7BC();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C982A534()
{
  sub_1C97AA884();
  v1 = *(v0 + 72);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C982A5B4()
{
  sub_1C97AA884();
  v1[3] = v0;
  v2 = sub_1C9A91748();
  v1[4] = v2;
  sub_1C97BE2AC(v2);
  v1[5] = v3;
  v1[6] = swift_task_alloc();
  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C982A660()
{
  sub_1C97AA95C();
  v1 = v0[6];
  v2 = v0[3];
  sub_1C9A91738();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[9] = v5;
  sub_1C97A2CEC(&qword_1EC3C89D0);
  sub_1C982F93C();
  *v5 = v6;
  v5[1] = sub_1C982A770;
  sub_1C982F900();

  return MEMORY[0x1EEE6DE18]();
}

void sub_1C982A770()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_1C97DA7BC();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C982A894()
{
  sub_1C97AA884();
  v1 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1C982A914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C982A93C, 0, 0);
}

uint64_t sub_1C982A93C()
{
  v17 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_1C97A2CEC(&qword_1EC3C8960);
  v5 = swift_allocObject();
  *(v0 + 136) = v5;
  *(v5 + 16) = xmmword_1C9AA3B60;
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v5 + 32) = &unk_1C9AA4790;
  *(v5 + 40) = v6;
  sub_1C97AA878();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *(v5 + 48) = &unk_1C9AA47A0;
  *(v5 + 56) = v7;

  v8 = sub_1C982B58C(v16, v5);
  v9 = v16[0];
  v10 = v16[1];
  *(v0 + 144) = v8;
  *(v0 + 152) = v10;
  v9();
  v11 = *(v0 + 72);
  *(v0 + 160) = v11;
  v15 = (v11 + *v11);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 176) = v12;
  *v12 = v13;
  sub_1C982F918(v12);

  return v15(v0 + 16);
}

uint64_t sub_1C982AAE4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C982ABDC()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  if (v5 == 255)
  {
    sub_1C982CDB8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), 255);
    swift_task_alloc();
    sub_1C97DA928();
    *(v0 + 176) = v7;
    *v7 = v8;
    sub_1C982F918();
    sub_1C981E288();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 16);

  sub_1C9A92A28();

  if (v5 == 254)
  {
    v6 = *(v0 + 96);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 2;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
  }

  else
  {
    if (v5)
    {
      *(v0 + 88) = v15;
      sub_1C97A2CEC(&unk_1EC3CA040);
      swift_willThrowTypedImpl();
      sub_1C97DA91C();
      goto LABEL_11;
    }

    v11 = *(v0 + 96);
    *v11 = v15;
    v11[1] = v1;
    v11[2] = v3;
    v11[3] = v2;
    v11[4] = v4;
    v11[5] = v14;
  }

  sub_1C97DA8DC();
LABEL_11:
  sub_1C981E288();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C982ADE8()
{
  sub_1C97AA884();

  return swift_unexpectedError();
}

uint64_t sub_1C982AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v11;
  *(v8 + 192) = v12;
  *(v8 + 168) = v10;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C982AE8C, 0, 0);
}

uint64_t sub_1C982AE8C()
{
  v1 = v0[16];
  if (v1)
  {
    v3 = v0[19];
    v2 = v0[20];
    sub_1C97DAA28();
    v4 = swift_allocObject();
    v4[2] = v1;
    v4[3] = v3;
    v4[4] = v2;
    swift_retain_n();
    v5 = &unk_1C9AA4918;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  v0[27] = v3;
  v0[28] = v2;
  v0[25] = v5;
  v0[26] = v4;
  v7 = v0[21];
  v6 = v0[22];
  v0[2] = v7;
  v8 = v0[17];
  v0[3] = v6;
  v0[4] = v5;
  v0[5] = v4;
  v0[6] = v3;
  v0[7] = v2;
  swift_unknownObjectRetain();
  v9 = sub_1C982F964();
  sub_1C97A8F30(v9);
  sub_1C97DA2E8(v7, v6);
  v13 = (v8 + *v8);
  swift_task_alloc();
  sub_1C97DA928();
  v0[29] = v10;
  *v10 = v11;
  v10[1] = sub_1C982B03C;

  return (v13)(v0 + 8, v0 + 2);
}

uint64_t sub_1C982B03C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    sub_1C97AA074(*(v3 + 200));
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C982B140()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = type metadata accessor for XPCProxyXPCHost();
    v12 = *(v0 + 88);
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC13SoundAnalysis15XPCProxyXPCHost_hosted];
    *v5 = v1;
    *(v5 + 8) = v12;
    *(v5 + 3) = v2;
    *(v0 + 112) = v4;
    *(v0 + 120) = v3;

    v6 = objc_msgSendSuper2((v0 + 112), sel_init);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 200);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  (*(v0 + 184))(1, *(v0 + 64), *(v0 + 72), v6, 0);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97AA780(v9, v8);
  sub_1C97AA074(v7);
  swift_unknownObjectRelease();
  sub_1C97DA91C();
  sub_1C981E288();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C982B27C()
{
  v1 = v0[30];
  v2 = v0[23];
  sub_1C97AA780(v0[21], v0[22]);
  v3 = sub_1C982F964();
  sub_1C97AA074(v3);
  v4 = sub_1C982F964();
  sub_1C97AA074(v4);
  v5 = v1;
  v2(0, 0, 0xF000000000000000, 0, v1);

  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C982B34C(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1C982B440;

  return v5(v2 + 16);
}

uint64_t sub_1C982B440()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C982B538()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88) != 0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  return sub_1C982F8AC();
}

uint64_t sub_1C982B560()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *v2 = v1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 48) = v1 != 0;
  return sub_1C982F8AC();
}

uint64_t sub_1C982B58C(void (**a1)(), uint64_t a2)
{
  v50 = a2;
  v51 = a1;
  v2 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v40 - v3;
  v4 = sub_1C97A2CEC(&qword_1EC3C8968);
  v40 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3C8970);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CC2C0);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v44 = v15;
  v45 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = sub_1C97A2CEC(&qword_1EC3C8978);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  sub_1C97ACC50(&v40 - v22, 1, 1, v4);
  v52 = v23;
  sub_1C97A2CEC(&qword_1EC3C8980);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8650], v9);
  v42 = v17;
  sub_1C9A92A18();
  v43 = v23;
  sub_1C97E82EC(v23, v21, &qword_1EC3C8978);
  if (sub_1C97ABF20(v21, 1, v4) == 1)
  {
    sub_1C97DA1E0(v21, &qword_1EC3C8978);
    result = sub_1C9A93778();
    __break(1u);
  }

  else
  {
    v24 = v40;
    v25 = *(v40 + 32);
    v25(v8, v21, v4);
    v26 = sub_1C9A92988();
    sub_1C97ACC50(v47, 1, 1, v26);
    v27 = v41;
    (*(v24 + 16))(v41, v8, v4);
    v28 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v50;
    v25(&v29[v28], v27, v4);

    sub_1C99A9128();
    v31 = v30;
    (*(v24 + 8))(v8, v4);
    v32 = v49;
    v34 = v48 + 32;
    v33 = *(v48 + 32);
    v35 = v45;
    v33(v45, v42, v49);
    v36 = (*(v34 + 48) + 16) & ~*(v34 + 48);
    v37 = swift_allocObject();
    v33((v37 + v36), v35, v32);
    v38 = v51;
    *v51 = sub_1C982CF4C;
    v38[1] = v37;
    sub_1C97DA1E0(v43, &qword_1EC3C8978);
    return v31;
  }

  return result;
}

uint64_t sub_1C982BB2C(uint64_t a1, uint64_t a2)
{
  sub_1C97DA1E0(a2, &qword_1EC3C8978);
  v4 = sub_1C97A2CEC(&qword_1EC3C8968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_1C97ACC50(a2, 0, 1, v4);
}

uint64_t sub_1C982BBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C982BBFC, 0, 0);
}

uint64_t sub_1C982BBFC()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  sub_1C982F9B0(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1C982BCD0;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C982BCD0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C982BDD0()
{
  sub_1C97AA884();
  sub_1C97A2CEC(&qword_1EC3C8968);
  sub_1C9A929C8();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C982BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = sub_1C97A2CEC(&qword_1EC3C8968);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();
  sub_1C97A2CEC(&qword_1EC3CA8D0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C982BF58, 0, 0);
}

uint64_t sub_1C982BF58()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v23 = **(v0 + 72);
    v24 = *(v0 + 104);
    v22 = *(v0 + 112) + 7;
    v4 = sub_1C9A92988();
    do
    {
      v26 = v2;
      v5 = *(v0 + 136);
      v25 = *(v0 + 128);
      v6 = *(v0 + 120);
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      v27 = *v3;
      sub_1C97ACC50(v5, 1, 1, v4);
      (*(v24 + 16))(v6, v7, v8);
      v9 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      (*(v24 + 32))(v10 + v9, v6, v8);
      *(v10 + ((v22 + v9) & 0xFFFFFFFFFFFFFFF8)) = v27;
      sub_1C97E82EC(v5, v25, &qword_1EC3CA8D0);
      v11 = sub_1C97ABF20(v25, 1, v4);
      swift_retain_n();

      v12 = *(v0 + 128);
      if (v11 == 1)
      {
        sub_1C97DA1E0(*(v0 + 128), &qword_1EC3CA8D0);
      }

      else
      {
        sub_1C9A92978();
        (*(*(v4 - 8) + 8))(v12, v4);
      }

      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v13 = sub_1C9A92928();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      sub_1C97AA878();
      v16 = swift_allocObject();
      *(v16 + 16) = &unk_1C9AA4808;
      *(v16 + 24) = v10;
      v17 = v15 | v13;
      if (v15 | v13)
      {
        v17 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v15;
      }

      v18 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v17;
      *(v0 + 64) = v23;
      swift_task_create();

      sub_1C97DA1E0(v18, &qword_1EC3CA8D0);
      ++v3;
      v2 = v26 - 1;
    }

    while (v26 != 1);
  }

  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v20 = sub_1C97A2CEC(&qword_1EC3C8988);
  *v19 = v0;
  v19[1] = sub_1C982C30C;

  return MEMORY[0x1EEE6D898](0, 0, v20);
}

uint64_t sub_1C982C30C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C982C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[9] = a4;
  v7 = sub_1C97A2CEC(&qword_1EC3C8990);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v5[13] = v8;
  *v8 = v5;
  v8[1] = sub_1C982C5AC;

  return v10(v5 + 2);
}

uint64_t sub_1C982C5AC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C982C690()
{
  sub_1C97AA95C();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1C97A2CEC(&qword_1EC3C8968);
  sub_1C9A929B8();
  (*(v2 + 8))(v1, v3);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C982C734(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C982C820;

  return v5();
}

uint64_t sub_1C982C820()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C982C908()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  *v2 = v1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 48) = v3;
  return sub_1C982F8AC();
}

uint64_t sub_1C982C938(uint64_t a1, int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C982C9FC;

  return sub_1C982B34C(a1, a2);
}

uint64_t sub_1C982C9FC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C982CAE4()
{
  type metadata accessor for SafeLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1;
  sub_1C9A91748();
  sub_1C97A2CEC(&qword_1EC3C89A8);
  sub_1C982EDD8();
  *(v0 + 24) = sub_1C9A92348();
  *(v0 + 73) = 0;
  return v0;
}

uint64_t sub_1C982CB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C982CBB4()
{
  sub_1C97AA884();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97D9C3C;

  return sub_1C9829C74(v1);
}

unint64_t sub_1C982CC44()
{
  result = qword_1EC3C8958;
  if (!qword_1EC3C8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8958);
  }

  return result;
}

uint64_t sub_1C982CC98()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA934();

  return sub_1C982C734(v3, v4);
}

uint64_t sub_1C982CD28()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA934();

  return sub_1C982C938(v3, v4);
}

void sub_1C982CDB8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 254)
  {
    sub_1C982CDCC(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1C982CDCC(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_1C982CDE4(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

void sub_1C982CDE4(id a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    sub_1C982CDF0(a1, a2, a3);
  }
}

uint64_t sub_1C982CDF0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_1C97AA780(result, a2);

    return sub_1C97AA074(a3);
  }

  return result;
}

uint64_t sub_1C982CE5C()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C8968);
  sub_1C97DACE4(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v4[1] = sub_1C97D9C3C;
  sub_1C982F954();

  return sub_1C982BBDC(v6, v7, v8, v2, v9);
}

void sub_1C982CF4C()
{
  v0 = sub_1C97A2CEC(&qword_1EC3CC2C0);
  sub_1C97DACE4(v0);

  sub_1C98F8F94();
}

uint64_t sub_1C982CFC4()
{
  sub_1C97AA95C();
  sub_1C981E1EC();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C982F8E8(v3);

  return sub_1C982BE3C(v5, v6, v7, v1);
}

uint64_t sub_1C982D080()
{
  sub_1C981E1EC();
  type metadata accessor for SafeLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *(v0 + 16) = v2;
  sub_1C9A91748();
  sub_1C97A2CEC(v1);
  sub_1C982EDD8();
  *(v0 + 24) = sub_1C9A92348();
  *(v0 + 32) = 0;
  return v0;
}

void *sub_1C982D11C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v16 = *(a1 + 72);
  v6 = *(a1 + 40);
  v15[0] = *(a1 + 24);
  v15[1] = v6;
  v15[2] = *(a1 + 56);
  if ((v16 & 0x100) != 0)
  {
    v7 = &unk_1C9AA4878;
    sub_1C97A2CEC(&qword_1EC3C89C0);
    sub_1C982F35C(&qword_1EC3C89C8, &qword_1EC3C89C0);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v7 = *&v15[0];
    v9 = v5 & 1;
    v17 = v9;
    v18 = 1;
    v10 = *(a1 + 40);
    v13[0] = *(a1 + 24);
    v13[1] = v10;
    v13[2] = *(a1 + 56);
    v14 = *(a1 + 72);
    *(a1 + 24) = v2;
    *(a1 + 40) = v3;
    *(a1 + 56) = v4;
    *(a1 + 72) = v9;
    *(a1 + 73) = 1;
    sub_1C97E82EC(v15, v12, &qword_1EC3C89A0);
    sub_1C97E82EC(a2, v12, &qword_1EC3C89B8);
    sub_1C97DA1E0(v13, &qword_1EC3C89A0);
  }

  return v7;
}

void *sub_1C982D27C(uint64_t a1, id a2)
{
  if (*(a1 + 32))
  {
    v2 = &unk_1C9AA48C0;
    sub_1C97A2CEC(&qword_1EC3C89E8);
    sub_1C982F35C(&qword_1EC3C89F0, &qword_1EC3C89E8);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v2 = *(a1 + 24);
    *(a1 + 24) = a2;
    *(a1 + 32) = 1;
    v3 = a2;
  }

  return v2;
}

void sub_1C982D324(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_1C982D53C(v1, a1);
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    memset(v5, 0, sizeof(v5));
    v6 = -1;

    v4(v5);
    sub_1C979AFD4(v4);
    sub_1C979AFD4(v4);
  }
}

void sub_1C982D3E0(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_1C982D76C(v1, a1);
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v5[0] = 1;

    (v4)(v5);
    sub_1C979AFD4(v4);
    sub_1C979AFD4(v4);
  }
}

void sub_1C982D490(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_1C982D978(v1, a1);
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v5 = 0;

    (v4)(&v5);
    sub_1C979AFD4(v4);
    sub_1C979AFD4(v4);
  }
}

uint64_t (*sub_1C982D53C(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(a1 + 73))
  {
    return 0;
  }

  v7 = sub_1C987B2F8(a2, v2);
  if (v7)
  {
    v8 = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_1C982EE30;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = sub_1C9A32468();
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    *&v20[0] = v2;
    sub_1C97A2CEC(&qword_1EC3C7B58);
    sub_1C9A93748();
    v19 = v10;
    v14 = *(v2 + 48);
    v15 = sub_1C9A91748();
    (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v13, v15);
    sub_1C97A2CEC(&qword_1EC3C89A8);
    sub_1C982EDD8();
    v10 = v19;
    sub_1C9A93768();
  }

  v22 = 0;
  v16 = *(v3 + 16);
  v20[0] = *v3;
  v20[1] = v16;
  v20[2] = *(v3 + 32);
  v21 = *(v3 + 48);
  *(a1 + 24) = v2;
  *(a1 + 73) = 0;

  sub_1C97DA1E0(v20, &qword_1EC3C89A0);

  if (!v7)
  {
    return 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  *(v17 + 24) = v9;
  return sub_1C982EDD0;
}

uint64_t (*sub_1C982D76C(uint64_t a1, uint64_t a2))()
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 24);

  v6 = sub_1C987B2F8(a2, v4);
  if (v6)
  {
    v7 = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1C982F4A4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = sub_1C9A32468();
  if (v11)
  {
    v12 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C97A2CEC(&qword_1EC3C7BB8);
    sub_1C9A93748();
    v13 = *(v4 + 48);
    v14 = sub_1C9A91748();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v12, v14);
    sub_1C97A2CEC(&qword_1EC3C8A00);
    sub_1C982EDD8();
    sub_1C9A93768();
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;

  sub_1C979B1DC(v15, v16);

  if (!v6)
  {
    return 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v8;
  return sub_1C982F474;
}

uint64_t (*sub_1C982D978(uint64_t a1, uint64_t a2))()
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 24);

  v6 = sub_1C987B2F8(a2, v4);
  if (v6)
  {
    v7 = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1C982F2A4;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = sub_1C9A32468();
  if (v11)
  {
    v12 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C97A2CEC(&qword_1EC3C7B60);
    sub_1C9A93748();
    v13 = *(v4 + 48);
    v14 = sub_1C9A91748();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v12, v14);
    sub_1C97A2CEC(&qword_1EC3C89D8);
    sub_1C982EDD8();
    sub_1C9A93768();
  }

  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;

  sub_1C982F268(v15, v16);

  if (!v6)
  {
    return 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v8;
  return sub_1C982F274;
}

uint64_t sub_1C982DB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C982DBA8, 0, 0);
}

uint64_t sub_1C982DBA8()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  sub_1C982F99C(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  sub_1C97A2CEC(&qword_1EC3C8998);
  sub_1C982F93C();
  *v2 = v3;
  v2[1] = sub_1C982DC7C;
  sub_1C982F974();
  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C982DC7C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA8DC();

  return v3();
}

uint64_t sub_1C982DD78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C982DD98, 0, 0);
}

uint64_t sub_1C982DD98()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  sub_1C982F9B0(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  sub_1C97A2CEC(&qword_1EC3C89F8);
  sub_1C982F93C();
  *v2 = v3;
  v2[1] = sub_1C982DE6C;
  sub_1C982F974();
  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C982DE6C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = v1;
  sub_1C97DA70C();
  *v3 = v2;
  v4 = *v0;
  sub_1C97AA83C();
  *v5 = v4;

  v6 = *(v2 + 48);
  v7 = *(v4 + 8);

  return v7(v6);
}

uint64_t sub_1C982DF6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C982DF8C, 0, 0);
}

uint64_t sub_1C982DF8C()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  sub_1C982F99C(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  sub_1C97A2CEC(&qword_1EC3C89D0);
  sub_1C982F93C();
  *v2 = v3;
  v2[1] = sub_1C982E060;
  sub_1C982F974();
  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1C982E060()
{
  sub_1C97AA95C();
  v1 = *v0;
  v2 = *v0;
  sub_1C97AA83C();
  *v3 = v2;

  v4 = *(v1 + 16);
  v5 = *(v2 + 8);

  return v5(v4);
}

void sub_1C982E188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 16) + 16);
  os_unfair_lock_lock(v6);
  sub_1C982E410(a2, a3, a1, &v12);
  v10 = v12;
  v11 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  os_unfair_lock_unlock(v6);
  if (v9 == 255)
  {
    if (sub_1C9A92A48())
    {
      sub_1C982D324(a3);
    }
  }

  else
  {
    v12 = v10;
    v13 = v11;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    sub_1C97A2CEC(&qword_1EC3C89B0);
    sub_1C9A92938();
  }
}

void sub_1C982E280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 16) + 16);
  os_unfair_lock_lock(v6);
  v7 = sub_1C982E638(a2, a3, a1);
  os_unfair_lock_unlock(v6);
  if (v7)
  {
    if (sub_1C9A92A48())
    {
      sub_1C982D3E0(a3);
    }
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C8A08);
    sub_1C9A92938();
  }
}

void sub_1C982E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 + 16) + 16);
  os_unfair_lock_lock(v6);
  v7 = sub_1C982E7E0(a2, a3, a1);
  os_unfair_lock_unlock(v6);
  if (v7)
  {
    sub_1C97A2CEC(&qword_1EC3C89E0);
    sub_1C9A92938();
  }

  else if (sub_1C9A92A48())
  {
    sub_1C982D490(a3);
  }
}

uint64_t sub_1C982E410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v7 = sub_1C97A2CEC(&qword_1EC3C89B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 24);
  if (*(a1 + 73))
  {
    v13 = *(a1 + 56);
    v12 = *(a1 + 64);
    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 72) & 1;
    result = sub_1C982EEF4(*(a1 + 24), v16, v15, v14, v13, v12, v17);
  }

  else
  {
    (*(v8 + 16))(v10, a3, v7);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = swift_allocObject();
    (*(v8 + 32))(v20 + v19, v10, v7);

    swift_isUniquelyReferenced_nonNull_native();
    *&v24[0] = v11;
    sub_1C97EEC10();
    v21 = *&v24[0];
    v26 = 0;
    v22 = *(a1 + 40);
    v24[0] = *(a1 + 24);
    v24[1] = v22;
    v24[2] = *(a1 + 56);
    v25 = *(a1 + 72);
    *(a1 + 24) = v21;
    *(a1 + 73) = 0;
    result = sub_1C97DA1E0(v24, &qword_1EC3C89A0);
    v11 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v17 = -1;
  }

  *a4 = v11;
  *(a4 + 8) = v16;
  *(a4 + 16) = v15;
  *(a4 + 24) = v14;
  *(a4 + 32) = v13;
  *(a4 + 40) = v12;
  *(a4 + 48) = v17;
  return result;
}

uint64_t sub_1C982E638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C97A2CEC(&qword_1EC3C8A08);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = *(a1 + 32);
  if ((v11 & 1) == 0)
  {
    v18[0] = a2;
    v12 = *(a1 + 24);
    (*(v8 + 16))(v10, a3, v7);
    v13 = *(v8 + 80);
    v18[1] = v3;
    v14 = swift_allocObject() + ((v13 + 16) & ~v13);
    (*(v8 + 32))(v14, v10, v7);

    swift_isUniquelyReferenced_nonNull_native();
    v19 = v12;
    sub_1C97EED44();
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    *(a1 + 24) = v19;
    *(a1 + 32) = 0;
    sub_1C979B1DC(v15, v16);
  }

  return v11 ^ 1u;
}

void *sub_1C982E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C97A2CEC(&qword_1EC3C89E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
    v11 = v10;
  }

  else
  {
    (*(v7 + 16))(v9, a3, v6);
    v12 = *(v7 + 80);
    v18[1] = v3;
    v13 = (v12 + 16) & ~v12;
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v9, v6);

    swift_isUniquelyReferenced_nonNull_native();
    v19 = v10;
    sub_1C97EEEDC();
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    *(a1 + 24) = v19;
    *(a1 + 32) = 0;
    sub_1C982F268(v15, v16);
    return 0;
  }

  return v10;
}

uint64_t sub_1C982E99C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = *a1;
  v5 = v1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  sub_1C97E82EC(a1, v3, &qword_1EC3C8998);
  sub_1C97A2CEC(&qword_1EC3C89B0);
  return sub_1C9A92938();
}

uint64_t sub_1C982EA64(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C89E0);
  return sub_1C9A92938();
}

uint64_t sub_1C982EAB4()
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8968);
  sub_1C97BE2AC(v2);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C97DA5D0;
  sub_1C982F954();

  return sub_1C982C448(v7, v8, v9, v10, v5);
}

uint64_t sub_1C982EBE4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA934();

  return v4(v3);
}

uint64_t sub_1C982EC80()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA934();

  return sub_1C982DB84(v3, v4, v5);
}

uint64_t sub_1C982ED38(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = v2;
  return a2(v5);
}

uint64_t sub_1C982ED84(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = v2;
  return a2(v5);
}

unint64_t sub_1C982EDD8()
{
  result = qword_1EC3CD290;
  if (!qword_1EC3CD290)
  {
    sub_1C9A91748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD290);
  }

  return result;
}

uint64_t sub_1C982EE40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  return sub_1C982E99C(v3);
}

uint64_t sub_1C982EE7C()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C89B0);
  sub_1C97DACE4(v0);
  v1 = sub_1C982F8D0();

  return sub_1C982EE40(v1);
}

id sub_1C982EEF4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
    sub_1C97DA2E8(a1, a2);

    return sub_1C97A8F30(a3);
  }
}

uint64_t sub_1C982EF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1C982F000;

  return sub_1C982DD78(a2, a3);
}

uint64_t sub_1C982F000()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C982F104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1C981CF6C;

  return sub_1C982DF6C(a2, a3);
}

uint64_t sub_1C982F1A4()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA934();

  return v4(v3);
}

void sub_1C982F268(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C982F2E4()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C89E0);
  sub_1C97DACE4(v0);
  v1 = sub_1C982F8D0();

  return sub_1C982F2DC(v1);
}

uint64_t sub_1C982F35C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C982F3B0()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  v3 = sub_1C97AA934();

  return v4(v3);
}

uint64_t sub_1C982F4DC(uint64_t *a1)
{
  sub_1C97A2CEC(a1);
  sub_1C97DA940();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C982F558()
{
  v0 = sub_1C97A2CEC(&qword_1EC3C8A08);
  sub_1C97DACE4(v0);
  sub_1C982F8D0();

  return sub_1C982F0FC();
}

uint64_t sub_1C982F5D8()
{
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C981E288();

  return sub_1C982AE50(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C982F6C8()
{
  swift_unknownObjectRelease();

  sub_1C97DAA28();

  return swift_deallocObject();
}

uint64_t sub_1C982F704()
{
  sub_1C981E1EC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C982F8E8(v1);

  return sub_1C98290C0();
}

_BYTE *sub_1C982F7AC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C982F858()
{
  result = qword_1EC3C8A10;
  if (!qword_1EC3C8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8A10);
  }

  return result;
}

__n128 sub_1C982F99C(__n128 *a1)
{
  *(v1 + 40) = a1;
  result = *(v1 + 24);
  a1[1] = result;
  return result;
}

__n128 sub_1C982F9B0(__n128 *a1)
{
  v1[2].n128_u64[0] = a1;
  result = v1[1];
  a1[1] = result;
  return result;
}

uint64_t sub_1C982FA00()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1C982FAB4(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  sub_1C982FB04(a1, a2);
  return v4;
}

uint64_t *sub_1C982FB04(uint64_t a1, const void *a2)
{
  v5 = *v2;
  *(v2 + 2) = 0u;
  v2[6] = 0;
  *(v2 + 1) = 0u;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  swift_beginAccess();
  sub_1C9830DE8(v13, (v2 + 2));
  swift_endAccess();
  sub_1C9831528();
  v7 = *(v5 + 88);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + *(v6 + 128), a1, v7);
  type metadata accessor for SafeLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  (*(v8 + 8))(a1, v7);
  v2[7] = v9;
  sub_1C9831528();
  memcpy(v2 + *(v11 + 136), a2, 0xA0uLL);
  return v2;
}

uint64_t sub_1C982FC64(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[7][2];
  os_unfair_lock_lock(v5);
  sub_1C982FDDC(v2, a1);
  os_unfair_lock_unlock(v5);
  v6 = (*v2)[17];
  v7 = *(v2 + v6);
  v8 = *(v2 + v6 + 16);
  v9 = sub_1C982FE44(v2 + (*v2)[16], v4[10], v4[11], v4[12], v4[13]);
  v11[3] = v4;
  v11[4] = swift_getWitnessTable();
  v11[0] = v2;

  if (v7)
  {
    v7(v11);
  }

  (v9)(v11);
  if (v8)
  {
    v8(v11);
  }

  sub_1C97A592C(v11);
}

uint64_t sub_1C982FDDC(uint64_t a1, uint64_t a2)
{
  sub_1C97D9AF8(a2, v4);
  swift_beginAccess();
  sub_1C9830DE8(v4, a1 + 16);
  return swift_endAccess();
}

uint64_t (*sub_1C982FE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a3);
  return sub_1C9830F58;
}

uint64_t sub_1C982FF74(uint64_t a1)
{
  sub_1C9828C08();
  v4 = (v1 + *(v3 + 136));
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  sub_1C9828C08();
  v10 = *(v9 + 80);
  sub_1C9828C08();
  v12 = *(v11 + 88);
  sub_1C9828C08();
  v14 = *(v13 + 96);
  v16 = *(v15 + 104);
  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  v25 = sub_1C98300CC(v1 + v17, v10, v12, v14, v16);
  v26 = v18;
  swift_getAssociatedTypeWitness();
  sub_1C985DB78(v6, v5, v7, v8, sub_1C9830E58, v20, a1);

  return v27;
}

uint64_t (*sub_1C98300CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a3);
  return sub_1C9830E88;
}

uint64_t sub_1C98301FC(uint64_t a1)
{
  sub_1C9828C08();
  v4 = (v1 + *(v3 + 136));
  v5 = v4[8];
  v6 = v4[9];
  v7 = v4[10];
  v8 = v4[11];
  sub_1C9828C08();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C9A91D48();
  return sub_1C985DB78(v5, v6, v7, v8, sub_1C9830BDC, v1, a1);
}

uint64_t sub_1C9830320(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 56) + 16);
  os_unfair_lock_lock(v3);
  sub_1C98303E8(a2);
  os_unfair_lock_unlock(v3);
  return sub_1C9A91D08();
}

uint64_t sub_1C98303E8(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  sub_1C9830DE8(v3, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1C983044C()
{
  sub_1C9831528();
  v2 = v0 + *(v1 + 136);
  v3 = *(v2 + 96);
  v4 = *(v2 + 112);
  v7 = v5;
  if (v3)
  {
    v3(&v7);
  }

  result = sub_1C98304CC(&v7, v0);
  if (v4)
  {
    return v4(&v7);
  }

  return result;
}

uint64_t sub_1C98304CC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 56) + 16);
  os_unfair_lock_lock(v3);
  sub_1C98305B0(a2, &v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  os_unfair_lock_unlock(v3);
  sub_1C9830FA8(v8, &v5);
  if (*(&v6 + 1))
  {
    sub_1C97A5A8C(&v5, *(&v6 + 1));
    sub_1C9A91DB8();
    sub_1C9831018(v8);
    return sub_1C97A592C(&v5);
  }

  else
  {
    sub_1C9831018(v8);
    return sub_1C9831018(&v5);
  }
}

uint64_t sub_1C983060C()
{
  sub_1C9831528();
  v2 = v0 + *(v1 + 136);
  v3 = *(v2 + 128);
  v4 = *(v2 + 144);
  if (v3)
  {
    v3();
  }

  result = sub_1C9830678(v0);
  if (v4)
  {
    return v4(result);
  }

  return result;
}

uint64_t sub_1C9830678(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 16);
  os_unfair_lock_lock(v2);
  sub_1C9830754(a1, &v4);
  v7[0] = v4;
  v7[1] = v5;
  v8 = v6;
  os_unfair_lock_unlock(v2);
  sub_1C9830FA8(v7, &v4);
  if (*(&v5 + 1))
  {
    sub_1C97A5A8C(&v4, *(&v5 + 1));
    sub_1C9A91D38();
    sub_1C9831018(v7);
    return sub_1C97A592C(&v4);
  }

  else
  {
    sub_1C9831018(v7);
    return sub_1C9831018(&v4);
  }
}

uint64_t sub_1C9830754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  sub_1C9830FA8(a1 + 16, a2);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  sub_1C9830DE8(v5, a1 + 16);
  return swift_endAccess();
}

char *sub_1C98307E4()
{
  v1 = *v0;
  sub_1C9831018((v0 + 16));

  sub_1C9831528();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v2 + 128)]);
  sub_1C9831528();
  memcpy(v6, &v0[*(v3 + 136)], sizeof(v6));
  sub_1C9831568();
  sub_1C9831568();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for SnoopPublisherHooks();
  (*(*(v4 - 8) + 8))(v6, v4);
  return v0;
}

uint64_t sub_1C9830950()
{
  sub_1C98307E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C98309C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C9830A04(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9830A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C9830BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v18[0] = *(v10 + 16);
  v18[1] = v12;
  v18[2] = v11;
  v18[3] = v13;
  type metadata accessor for SnoopPublisher.Instance();
  (*(v7 + 16))(v9, a1, a3);
  memcpy(v18, (v3 + *(a2 + 36)), 0xA0uLL);
  sub_1C9831548();
  sub_1C9831548();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for SnoopPublisherHooks();
  (*(*(v14 - 8) + 16))(v17, v18, v14);
  v17[0] = sub_1C982FAB4(v9, v18);
  swift_getWitnessTable();
  sub_1C9A91F08();
}

uint64_t sub_1C9830DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9830E58@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  return result;
}

uint64_t sub_1C9830ED8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C9830FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9831018(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9831080()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v0 = type metadata accessor for SnoopPublisherHooks();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

_DWORD *sub_1C9831198(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return sub_1C97ABF20(result, v5, v4);
    }

    v17 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 160;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_1C98312DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 160;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFF60)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v17 + 152) = 0;
              v18 = (a2 - 0x7FFFFFFF);
              *(v17 + 136) = 0u;
              *(v17 + 120) = 0u;
              *(v17 + 104) = 0u;
              *(v17 + 88) = 0u;
              *(v17 + 72) = 0u;
              *(v17 + 56) = 0u;
              *(v17 + 40) = 0u;
              *(v17 + 24) = 0u;
              *(v17 + 8) = 0u;
            }

            else
            {
              v18 = a2;
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFF60)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFF60)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 160);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C9831548()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1C9831568()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1C9831614()
{
  swift_getAssociatedTypeWitness();
  sub_1C9835358();
  sub_1C9835358();
  sub_1C9835358();
  sub_1C9833DA4();
}

void sub_1C98316F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C97AE9DC();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (*(v35 + 16))(v36, v35);
  (*(v30 + 16))(v34, v20, v26);
  v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  (*(v30 + 32))(v39 + v38, v34, v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_1C97AEA9C();
  v42 = sub_1C97AEA9C();
  v43 = sub_1C97AEA9C();
  v47[2] = AssociatedTypeWitness;
  v47[3] = v41;
  v47[4] = v42;
  v47[5] = v43;
  v44 = type metadata accessor for SharedSoundPrintA.Configuration();
  v45 = type metadata accessor for SharedSoundPrintA.Instance();
  WitnessTable = swift_getWitnessTable();
  sub_1C99D6B34(v28, v37, sub_1C9835020, v39, v44, v45, WitnessTable, &a10);

  sub_1C97AEB5C();
}

BOOL sub_1C983190C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C9A92438() & 1) != 0 && (v4 = type metadata accessor for SharedSoundPrintA.Configuration(), *(a1 + *(v4 + 52)) == *(a2 + *(v4 + 52))))
  {
    return *(a1 + *(v4 + 56)) == *(a2 + *(v4 + 56));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98319A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001C9AD41E0 == a2;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C9AD62B0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x80000001C9AD62D0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_1C9831AC0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000013;
}

void sub_1C9831B14()
{
  sub_1C97AEB94();
  v13 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v14 = *(v4 + 32);
  v15 = v5;
  v16 = v5;
  v17 = v14;
  type metadata accessor for SharedSoundPrintA.Configuration.CodingKeys();
  sub_1C98352A0();
  v6 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v12 - v10;
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  LOBYTE(v16) = 0;
  sub_1C9A93A18();
  if (!v1)
  {
    sub_1C98353B4(1);
    sub_1C98353B4(2);
  }

  (*(v8 + 8))(v11, v6);
  sub_1C97AEB5C();
}

uint64_t sub_1C9831C94(uint64_t a1, uint64_t a2)
{
  sub_1C9A92398();
  MEMORY[0x1CCA91980](*(v2 + *(a2 + 52)));
  return MEMORY[0x1CCA91980](*(v2 + *(a2 + 56)));
}

uint64_t sub_1C9831CEC(uint64_t a1)
{
  sub_1C9A93CC8();
  sub_1C9831C94(v3, a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9831D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SharedSoundPrintA.Configuration();
  *(a5 + *(result + 52)) = a2;
  *(a5 + *(result + 56)) = a3;
  return result;
}

void sub_1C9831DE4()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = v11;
  sub_1C97AE9DC();
  v35 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v41 = v15 - v14;
  type metadata accessor for SharedSoundPrintA.Configuration.CodingKeys();
  sub_1C98352A0();
  sub_1C9A93978();
  sub_1C97AE9C8();
  v37 = v17;
  v38 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v40 = v8;
  v42 = v8;
  v43 = v6;
  v36 = v6;
  v44 = v4;
  v45 = v2;
  v21 = type metadata accessor for SharedSoundPrintA.Configuration();
  sub_1C97AE9C8();
  v33 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  sub_1C97A5A8C(v10, v10[3]);
  v39 = v20;
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v10);
  }

  else
  {
    v26 = v25;
    v27 = v35;
    LOBYTE(v42) = 0;
    v28 = v40;
    v29 = v38;
    sub_1C9A938F8();
    (*(v27 + 32))(v26, v41, v28);
    *&v26[*(v21 + 52)] = sub_1C9835400(1);
    v30 = sub_1C9835400(2);
    (*(v37 + 8))(v39, v29);
    *&v26[*(v21 + 56)] = v30;
    v31 = v33;
    (*(v33 + 16))(v34, v26, v21);
    sub_1C97A592C(v10);
    (*(v31 + 8))(v26, v21);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C983216C()
{
  sub_1C9A93CC8();
  sub_1C978C430(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C98321C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98319A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9832224@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97B0878();
  *a1 = result;
  return result;
}

uint64_t sub_1C9832258(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98322AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C9832344(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C9831C94(v4, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C9832398()
{
  v1 = sub_1C97A2CEC(qword_1EC3C6788);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&unk_1EC3CC280);
  sub_1C97AE9EC();
  sub_1C97AE67C(v9, &unk_1EC3CC280);
  sub_1C9A91EF8();
  sub_1C97AE67C(&unk_1EC3C4A58, qword_1EC3C6788);
  v10 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v10;
}

uint64_t sub_1C9832584()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C9832604(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C9832710(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

void sub_1C98328E4(void *a1, uint64_t (*a2)(void *), void *a3)
{
  v68 = a3;
  v69 = a2;
  v65 = sub_1C97A2CEC(&qword_1EC3C6760);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v53 - v4;
  v64 = sub_1C97A2CEC(&qword_1EC3C8A20);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v53 - v5;
  v59 = sub_1C97A2CEC(&qword_1EC3C8A28);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v53 - v6;
  v61 = sub_1C97A2CEC(&qword_1EC3C7540);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v8 = &v53 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3C8A30);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = sub_1C9A91748();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  sub_1C9834E54(a1, v72);
  LODWORD(v17) = 1182400512;
  v18 = [v16 initWithFloat_];
  v19 = v74;
  sub_1C999C710();
  if (v19)
  {
    sub_1C97DA1E0(a1, &qword_1EC3C76A0);

    return;
  }

  v53 = v8;
  v54 = v11;
  v74 = v9;
  v56 = v15;
  v55 = v13;
  memcpy(__dst, a1, 0x41uLL);
  v20 = [v18 integerValue];

  __dst[9] = 1;
  __dst[10] = v20;
  v21 = v69(__dst);
  v22 = a1;
  v69 = v12;
  memcpy(v72, __dst, sizeof(v72));
  sub_1C97DA1E0(v72, &unk_1EC3C9940);
  sub_1C9A91738();
  v70 = sub_1C98BF080();
  sub_1C97A2CEC(&unk_1EC3C7390);
  v23 = sub_1C97A2CEC(&qword_1EC3C7C80);
  sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
  v24 = v66;
  sub_1C9A91F68();

  v25 = a1[9];
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = (v27 * 160) >> 64;
  v29 = 160 * v27;
  v22 = v65;
  if (v28 != v29 >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = __OFADD__(v29, 512);
  v30 = v29 + 512;
  if (v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = a1[10];
  v32 = (v31 * 160) >> 64;
  v33 = 160 * v31;
  if (v32 != v33 >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v68 = v21;
  *(v24 + *(v65 + 60)) = v30;
  *(v24 + v22[16]) = v33;
  *(v24 + v22[17]) = v23;
  sub_1C97A2CEC(&qword_1EC3C8A38);
  sub_1C97AE67C(&qword_1EC3C8A40, &qword_1EC3C6760);
  sub_1C9A91F68();
  sub_1C97DA1E0(v24, &qword_1EC3C6760);
  v21 = objc_autoreleasePoolPush();
  v22 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v34 = swift_allocObject();
  *(v34 + 16) = 33;
  LOWORD(v70) = 33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  *(&v53 - 4) = sub_1C9834EC4;
  *(&v53 - 3) = v35;
  *(&v53 - 2) = &v70;

  v36 = sub_1C97E2E88();

  objc_autoreleasePoolPop(v22);
  objc_autoreleasePoolPop(v21);
  v37 = sub_1C9834BC8(v36, &off_1F4937390);
  v39 = v38;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v39;
  sub_1C97AE67C(&qword_1EC3C8A48, &qword_1EC3C8A20);

  v41 = v57;
  v42 = v64;
  v43 = v67;
  sub_1C9A92048();

  (*(v63 + 8))(v43, v42);
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C97AE67C(&qword_1EC3C8A50, &qword_1EC3C8A28);
  v44 = v53;
  v45 = v59;
  sub_1C9A91F68();
  (*(v58 + 8))(v41, v45);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1C9A935B8();

  v70 = 0xD000000000000019;
  v71 = 0x80000001C9AD6290;
  sub_1C97AE3DC();
  v46 = v56;
  v47 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v47);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v48 = v54;
  sub_1C97DC7D4();

  (*(v60 + 8))(v44, v61);
  sub_1C97AE67C(&qword_1EC3C8A58, &qword_1EC3C8A30);
  v49 = v74;
  v50 = sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3C8A60);
  swift_allocObject();
  v51 = sub_1C98E3778(v50);
  (*(v62 + 8))(v48, v49);
  v70 = v51;
  sub_1C97AE67C(&qword_1EC3C8A68, &qword_1EC3C8A60);
  v52 = sub_1C9A91F28();

  (*(v55 + 8))(v46, v69);
  type metadata accessor for SharedSoundPrintA.Instance();
  *(swift_allocObject() + 16) = v52;
}

void sub_1C98334D0()
{
  sub_1C97AEB94();
  v85 = v1;
  v88 = v2;
  v80 = v3;
  v82 = v4;
  v81 = sub_1C97A2CEC(&qword_1EC3C6760);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v83 = v6;
  sub_1C97A2CEC(&qword_1EC3C8A20);
  sub_1C97AE9C8();
  v78 = v8;
  v79 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v84 = v10;
  sub_1C97A2CEC(&qword_1EC3C8A28);
  sub_1C97AE9C8();
  v74 = v12;
  v75 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v73 = v14;
  v15 = sub_1C97A2CEC(&qword_1EC3C7540);
  sub_1C97AE9C8();
  v76 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  v20 = sub_1C97A2CEC(&qword_1EC3C8A30);
  sub_1C97AE9C8();
  v77 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - v23;
  v25 = sub_1C9A91748();
  sub_1C97AE9C8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AEAD8();
  v31 = v30 - v29;
  v32 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v33) = 1182400512;
  v34 = [v32 initWithFloat_];
  sub_1C999C710();
  if (!v0)
  {
    v67 = v19;
    v68 = v15;
    v69 = v24;
    v70 = v20;
    v71 = v27;
    v72 = v31;
    v35 = [v34 integerValue];

    v86 = 1;
    v87 = v35;
    v36 = v88(&v86);
    v89 = v25;
    sub_1C9A91738();
    v86 = sub_1C98BF080();
    sub_1C97A2CEC(&unk_1EC3C7390);
    v37 = sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE9EC();
    sub_1C97AE67C(v38, &unk_1EC3C7390);
    sub_1C9835238();
    v39 = v83;
    sub_1C9A91F68();

    if (__OFSUB__(v82, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1C9835378();
      v41 = v80;
      v15 = v81;
      if (v42)
      {
        v43 = __OFADD__(v40, 512);
        v44 = v40 + 512;
        if (!v43)
        {
          if ((v80 * 160) >> 64 == (160 * v80) >> 63)
          {
            *&v39[*(v81 + 60)] = v44;
            *&v39[v15[16]] = 160 * v41;
            *&v39[v15[17]] = v37;
            sub_1C97A2CEC(&qword_1EC3C8A38);
            sub_1C9835288();
            sub_1C97AE67C(v45, &qword_1EC3C6760);
            sub_1C9835214();
            sub_1C9A91F68();
            sub_1C97DA1E0(v39, &qword_1EC3C6760);
            v15 = objc_autoreleasePoolPush();
            v39 = objc_autoreleasePoolPush();
            if (qword_1EC3C55D0 == -1)
            {
LABEL_9:
              v46 = swift_allocObject();
              *(v46 + 16) = 33;
              LOWORD(v86) = 33;
              v47 = MEMORY[0x1EEE9AC00](v46);
              *(&v67 - 4) = sub_1C98351CC;
              *(&v67 - 3) = v47;
              *(&v67 - 2) = &v86;

              v48 = sub_1C97E2E88();

              objc_autoreleasePoolPop(v39);
              objc_autoreleasePoolPop(v15);
              v49 = sub_1C9834BC8(v48, &off_1F4937390);
              v51 = v50;
              sub_1C97AA878();
              v52 = swift_allocObject();
              *(v52 + 16) = v49;
              *(v52 + 24) = v51;
              sub_1C9835314(&qword_1EC3C8A48, &qword_1EC3C8A20);

              v53 = v73;
              v54 = v79;
              v55 = v84;
              sub_1C9A92048();

              (*(v78 + 8))(v55, v54);
              sub_1C97A2CEC(&qword_1EC3C9AA0);
              v85 = v36;
              sub_1C98352F0(&qword_1EC3C8A50, &qword_1EC3C8A28);
              sub_1C9835254();
              v56 = v67;
              v57 = v75;
              sub_1C9A91F68();
              (*(v74 + 8))(v53, v57);
              v86 = 0;
              v87 = 0xE000000000000000;
              sub_1C9A935B8();

              sub_1C98353D8();
              v86 = v59;
              v87 = v58;
              sub_1C97AE3DC();
              v60 = v72;
              v61 = sub_1C9A93A98();
              MEMORY[0x1CCA90230](v61);

              MEMORY[0x1CCA90230](8250, 0xE200000000000000);
              v62 = v69;
              sub_1C97DC7D4();

              (*(v76 + 8))(v56, v68);
              sub_1C98352CC(&qword_1EC3C8A58, &qword_1EC3C8A30);
              v63 = v70;
              sub_1C9A92008();
              sub_1C97A2CEC(&qword_1EC3C8A60);
              sub_1C97AA878();
              swift_allocObject();
              v64 = sub_1C97C926C();
              v65 = sub_1C98E3778(v64);
              (*(v77 + 8))(v62, v63);
              v86 = v65;
              sub_1C9835270();
              sub_1C97AE67C(v66, &qword_1EC3C8A60);
              sub_1C9A91F28();
              sub_1C97C926C();

              (*(v71 + 8))(v60, v89);
              type metadata accessor for SharedSoundPrintA.Instance();
              *(swift_allocObject() + 16) = &v86;
              goto LABEL_10;
            }

LABEL_15:
            sub_1C9835338();
            goto LABEL_9;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_10:
  sub_1C97AEB5C();
}

void sub_1C9833DA4()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v108 = v10;
  v109 = v9;
  v12 = v11;
  v102 = sub_1C97A2CEC(&qword_1EC3C6760);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AC02C();
  v104 = v14;
  sub_1C97A2CEC(&qword_1EC3C8A20);
  sub_1C97AE9C8();
  v100 = v16;
  v101 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C97AC02C();
  v106 = v18;
  v93 = sub_1C97A2CEC(&qword_1EC3C8A28);
  sub_1C97AE9C8();
  v92 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  v91 = v21;
  v96 = sub_1C97A2CEC(&qword_1EC3C7540);
  sub_1C97AE9C8();
  v95 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C97AC02C();
  v94 = v24;
  sub_1C97A2CEC(&qword_1EC3C8A30);
  sub_1C97AE9C8();
  v98 = v26;
  v99 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v97 = v28;
  v105 = sub_1C9A91748();
  sub_1C97AE9C8();
  v103 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AEAD8();
  v33 = v32 - v31;
  sub_1C97AE9DC();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AEAD8();
  v39 = v38 - v37;
  v113 = v8;
  v114 = v6;
  v111 = v6;
  v112 = v4;
  v115 = v4;
  v116 = v2;
  v110 = v2;
  type metadata accessor for SharedReformattedAudioSource.Configuration();
  sub_1C97AE9C8();
  v107 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v90 - v42;
  v44 = v8;
  (*(v35 + 16))(v39, v12, v8);
  v45 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v46) = 1182400512;
  v47 = [v45 initWithFloat_];
  sub_1C999C710();
  if (v0)
  {

    (*(v35 + 8))(v39, v44);
    goto LABEL_12;
  }

  v90 = v12;
  v117 = v33;
  v48 = [v47 integerValue];

  v49 = v110;
  sub_1C98BEFD0(v39, 1, v48, v44, v43);
  v50 = v109(v43);
  v109 = 0;
  v51 = sub_1C98353EC();
  v52(v51);
  sub_1C9A91738();
  v53 = sub_1C98BF080();
  v113 = v53;
  sub_1C97A2CEC(&unk_1EC3C7390);
  v54 = sub_1C97A2CEC(&qword_1EC3C7C80);
  sub_1C97AE9EC();
  sub_1C97AE67C(v55, &unk_1EC3C7390);
  sub_1C9835238();
  v56 = v104;
  sub_1C9A91F68();

  v113 = v44;
  v114 = v111;
  v115 = v112;
  v116 = v49;
  if (__OFSUB__(*(v90 + *(type metadata accessor for SharedSoundPrintA.Configuration() + 52)), 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C9835378();
  v60 = v102;
  v49 = v103;
  if (!v61)
  {
    goto LABEL_14;
  }

  v62 = __OFADD__(v58, 512);
  v63 = v58 + 512;
  if (v62)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v64 = *(v59 + *(v57 + 56));
  v65 = (v64 * 160) >> 64;
  v66 = 160 * v64;
  if (v65 == v66 >> 63)
  {
    v112 = v50;
    *(v56 + *(v102 + 60)) = v63;
    *(v56 + *(v60 + 64)) = v66;
    *(v56 + *(v60 + 68)) = v54;
    sub_1C97A2CEC(&qword_1EC3C8A38);
    sub_1C9835288();
    sub_1C97AE67C(v67, &qword_1EC3C6760);
    sub_1C9835214();
    sub_1C9A91F68();
    sub_1C97DA1E0(v56, &qword_1EC3C6760);
    v53 = objc_autoreleasePoolPush();
    v50 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  sub_1C9835338();
LABEL_9:
  v68 = swift_allocObject();
  *(v68 + 16) = 33;
  LOWORD(v113) = 33;
  v69 = MEMORY[0x1EEE9AC00](v68);
  *(&v90 - 4) = sub_1C98351CC;
  *(&v90 - 3) = v69;
  *(&v90 - 2) = &v113;

  v70 = v109;
  v71 = sub_1C97E2E88();
  if (v70)
  {

    objc_autoreleasePoolPop(v50);
    objc_autoreleasePoolPop(v53);

    (*(v100 + 8))(v106, v101);
    (*(v49 + 8))(v117, v105);
  }

  else
  {
    v72 = v71;

    objc_autoreleasePoolPop(v50);
    objc_autoreleasePoolPop(v53);
    v73 = sub_1C9834BC8(v72, &off_1F4937390);
    v75 = v74;
    sub_1C97AA878();
    v76 = swift_allocObject();
    v109 = 0;
    *(v76 + 16) = v73;
    *(v76 + 24) = v75;
    sub_1C9835314(&qword_1EC3C8A48, &qword_1EC3C8A20);

    v77 = v91;
    v78 = v101;
    v79 = v106;
    sub_1C9A92048();

    (*(v100 + 8))(v79, v78);
    sub_1C97A2CEC(&qword_1EC3C9AA0);
    sub_1C98352F0(&qword_1EC3C8A50, &qword_1EC3C8A28);
    sub_1C9835254();
    v80 = v94;
    v81 = v93;
    sub_1C9A91F68();
    (*(v92 + 8))(v77, v81);
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C98353D8();
    v113 = v83;
    v114 = v82;
    sub_1C97AE3DC();
    v84 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v84);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v85 = v97;
    sub_1C97DC7D4();

    (*(v95 + 8))(v80, v96);
    sub_1C98352CC(&qword_1EC3C8A58, &qword_1EC3C8A30);
    v86 = v99;
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3C8A60);
    sub_1C97AA878();
    swift_allocObject();
    v87 = sub_1C97C926C();
    v88 = sub_1C98E3778(v87);
    (*(v98 + 8))(v85, v86);
    v113 = v88;
    sub_1C9835270();
    sub_1C97AE67C(v89, &qword_1EC3C8A60);
    sub_1C9A91F28();
    sub_1C97C926C();

    (*(v49 + 8))(v117, v105);
    type metadata accessor for SharedSoundPrintA.Instance();
    *(swift_allocObject() + 16) = &v113;
  }

LABEL_12:
  sub_1C97AEB5C();
}

uint64_t sub_1C983482C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_1C97A2CEC(&qword_1EC3C7C70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C9A9EE60;
  *(result + 32) = vdupq_n_s64(1uLL);
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = (v2 >> 1) - v1;
    swift_unknownObjectRetain();
    sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97AE67C(&qword_1EC3C7C88, &qword_1EC3C7C80);
    return sub_1C9A91B88();
  }

  return result;
}

uint64_t sub_1C983493C@<X0>(uint64_t *a1@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C8A38);
  sub_1C97AE67C(&qword_1EC3C8A70, &qword_1EC3C8A38);
  result = sub_1C9A91BC8();
  *a1 = result;
  return result;
}

void sub_1C98349C8()
{
  sub_1C97AEB48();
  swift_getWitnessTable();
  sub_1C9835390();
}

void sub_1C9834A0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C8A78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C9A92478();
  v8 = [a1 featureValueForName_];

  if (v8)
  {
    if ([v8 type] != 5)
    {
LABEL_5:
      sub_1C9834F94();
      swift_allocError();
      *v10 = 1;
      swift_willThrow();

      return;
    }

    sub_1C9A92FD8();
    v9 = sub_1C97A2CEC(&qword_1EC3C8A38);
    if (sub_1C97ABF20(v6, 1, v9) == 1)
    {
      sub_1C97DA1E0(v6, &qword_1EC3C8A78);
      goto LABEL_5;
    }

    (*(*(v9 - 8) + 32))(a2, v6, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1C9834BC8(uint64_t a1, uint64_t (*a2)(uint64_t a1)))(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 2);
  v7 = v6(ObjectType, a2);
  v8 = sub_1C98BBF7C(v7);
  v10 = v9;

  if (!v2)
  {
    v11 = v6(ObjectType, a2);
    v13 = sub_1C98BBF9C(v11);
    v15 = v14;

    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v10;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v15;
    v19 = swift_allocObject();
    v19[2] = sub_1C9834F54;
    v19[3] = v18;
    v19[4] = sub_1C9834F38;
    v19[5] = v17;
    v19[6] = sub_1C9834F1C;
    v19[7] = v16;
    a2 = sub_1C9834F70;
    swift_unknownObjectRetain();
  }

  return a2;
}

uint64_t sub_1C9834D64(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  result = a6();
  if (!v6)
  {
    v10 = a4();
    swift_unknownObjectRelease();
    a2(v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C9834E10()
{
  sub_1C97AEB48();
  swift_getWitnessTable();
  sub_1C9835390();
}

uint64_t sub_1C9834E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C76A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C9834F94()
{
  result = qword_1EC3C8A80[0];
  if (!qword_1EC3C8A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C8A80);
  }

  return result;
}

uint64_t sub_1C9834FE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98BFBD4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9835020@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *sub_1C98350AC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C98352A0()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C98352CC(unint64_t *a1, uint64_t *a2)
{

  return sub_1C97AE67C(a1, a2);
}

uint64_t sub_1C98352F0(unint64_t *a1, uint64_t *a2)
{

  return sub_1C97AE67C(a1, a2);
}

uint64_t sub_1C9835314(unint64_t *a1, uint64_t *a2)
{

  return sub_1C97AE67C(a1, a2);
}

uint64_t sub_1C9835338()
{

  return swift_once();
}

uint64_t sub_1C9835358()
{

  return swift_getAssociatedConformanceWitness();
}

void sub_1C9835390()
{

  sub_1C9831614();
}

uint64_t sub_1C98353B4@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_1C9A93A08();
}

uint64_t sub_1C9835400@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_1C9A938E8();
}

uint64_t sub_1C9835420(uint64_t a1)
{
  v5[2] = sub_1C983E024;
  v6 = v1;
  v7 = &v8;
  v8 = a1;

  v3 = sub_1C97E30A4(v2, sub_1C983E04C, v5);

  return v3;
}