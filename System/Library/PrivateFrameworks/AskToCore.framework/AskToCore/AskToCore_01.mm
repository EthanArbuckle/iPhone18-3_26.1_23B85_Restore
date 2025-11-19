uint64_t sub_241094FF4(uint64_t a1, CGImage *a2, double a3, double a4, double a5)
{
  *v65 = a5;
  v65[3] = &type metadata for JPEGEncoder;
  v65[4] = &protocol witness table for JPEGEncoder;
  v12 = sub_2410965FC(a2, a3, a4);
  if (v12)
  {
    v13 = v12;
    result = JPEGEncoder.encode(_:compressionQuality:)(v12, a5);
    if (v15 >> 60 == 15)
    {
      goto LABEL_21;
    }

    v5 = result;
    v6 = v15;
    v7 = v15 >> 62;
    if ((v15 >> 62) <= 1)
    {
      if (!v7)
      {
        if (BYTE6(v15) <= a1)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result <= a1)
        {
LABEL_31:
          if (qword_27E5254A8 == -1)
          {
            goto LABEL_32;
          }

          goto LABEL_119;
        }

        goto LABEL_20;
      }

LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if (v7 == 2)
    {
      v22 = *(result + 16);
      v21 = *(result + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
        __break(1u);
        goto LABEL_121;
      }

      if (v24 <= a1)
      {
        goto LABEL_31;
      }
    }

    else if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_20:
    sub_2410861E4(result, v15);
LABEL_21:
    sub_241096768(v65, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE8, &qword_2410E2A00);
    if (swift_dynamicCast())
    {
      result = JPEGEncoder.encode(_:compressionQuality:)(v13, 0.7);
      if (v25 >> 60 == 15)
      {
        goto LABEL_41;
      }

      v5 = result;
      v6 = v25;
      v26 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        if (v26 == 2)
        {
          v31 = *(result + 16);
          v30 = *(result + 24);
          v23 = __OFSUB__(v30, v31);
          v32 = v30 - v31;
          if (v23)
          {
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          if (v32 > a1)
          {
            goto LABEL_40;
          }
        }

        else if (a1 < 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v26)
        {
          goto LABEL_53;
        }

        if (BYTE6(v25) > a1)
        {
          goto LABEL_40;
        }
      }

LABEL_57:
      v40 = 0x3FE6666666666666;
      goto LABEL_94;
    }

LABEL_91:

    v5 = 0;
LABEL_112:
    __swift_destroy_boxed_opaque_existential_1(v65);
    return v5;
  }

  if (qword_27E5254A8 != -1)
  {
    swift_once();
  }

  v16 = sub_2410DEFE0();
  __swift_project_value_buffer(v16, qword_27E530418);
  v13 = sub_2410DEFC0();
  v17 = sub_2410DF3F0();
  if (!os_log_type_enabled(v13, v17))
  {
    goto LABEL_91;
  }

  v18 = swift_slowAlloc();
  *v18 = 134218240;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_114;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  *(v18 + 4) = a3;
  *(v18 + 12) = 2048;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (a4 < 9.22337204e18)
  {
    *(v18 + 14) = a4;
    v19 = v17;
    v20 = v18;
    _os_log_impl(&dword_24107E000, v13, v19, "Failed to resize image to %ld×%ld", v18, 0x16u);
    MEMORY[0x245CDA690](v20, -1, -1);
    goto LABEL_91;
  }

LABEL_118:
  __break(1u);
LABEL_119:
  swift_once();
LABEL_32:
  v27 = sub_2410DEFE0();
  __swift_project_value_buffer(v27, qword_27E530418);
  sub_241086284(v5, v6);
  v28 = sub_2410DEFC0();
  a1 = sub_2410DF3E0();
  if (!os_log_type_enabled(v28, a1))
  {
    sub_2410861E4(v5, v6);
    goto LABEL_111;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (v7 <= 1)
  {
    if (!v7)
    {
      v29 = BYTE6(v6);
LABEL_75:
      *(result + 4) = v29;
      v47 = result;
      sub_2410861E4(v5, v6);
      v48 = "Encoded at default quality: %ld bytes";
      v49 = a1;
      v50 = v28;
      v51 = v47;
      v52 = 12;
LABEL_110:
      _os_log_impl(&dword_24107E000, v50, v49, v48, v51, v52);
      MEMORY[0x245CDA690](v47, -1, -1);
      goto LABEL_111;
    }

LABEL_72:
    LODWORD(v29) = HIDWORD(v5) - v5;
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      v29 = v29;
      goto LABEL_75;
    }

    goto LABEL_131;
  }

  while (1)
  {
    if (v7 != 2)
    {
      v29 = 0;
      goto LABEL_75;
    }

    v39 = *(v5 + 16);
    v38 = *(v5 + 24);
    v23 = __OFSUB__(v38, v39);
    v29 = v38 - v39;
    if (!v23)
    {
      goto LABEL_75;
    }

    __break(1u);
LABEL_53:
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_129;
    }

    if (HIDWORD(v5) - v5 <= a1)
    {
      goto LABEL_57;
    }

LABEL_40:
    sub_2410861E4(v5, v6);
LABEL_41:
    v28 = v65;
    result = JPEGEncoder.encode(_:compressionQuality:)(v13, 0.5);
    if (v33 >> 60 == 15)
    {
      break;
    }

    v5 = result;
    v6 = v33;
    v34 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (v34)
      {
        LODWORD(v35) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_130;
        }

        v35 = v35;
      }

      else
      {
        v35 = BYTE6(v33);
      }

LABEL_60:
      v41 = 0.5;
      if (v35 <= a1)
      {
        goto LABEL_95;
      }

LABEL_63:
      sub_2410861E4(result, v33);
      break;
    }

    if (v34 != 2)
    {
      v41 = 0.5;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_63;
    }

    v37 = *(result + 16);
    v36 = *(result + 24);
    v23 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v23)
    {
      goto LABEL_60;
    }

    __break(1u);
  }

  v28 = v65;
  result = JPEGEncoder.encode(_:compressionQuality:)(v13, 0.3);
  if (v42 >> 60 == 15)
  {
LABEL_80:
    if (qword_27E5254A8 != -1)
    {
      swift_once();
    }

    v53 = sub_2410DEFE0();
    __swift_project_value_buffer(v53, qword_27E530418);
    v54 = sub_2410DEFC0();
    v55 = sub_2410DF3E0();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_90;
    }

    result = swift_slowAlloc();
    *result = 134218240;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a3 > -9.22337204e18)
      {
        if (a3 < 9.22337204e18)
        {
          *(result + 4) = a3;
          *(result + 12) = 2048;
          if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (a4 > -9.22337204e18)
            {
              if (a4 < 9.22337204e18)
              {
                *(result + 14) = a4;
                v56 = v55;
                v57 = result;
                _os_log_impl(&dword_24107E000, v54, v56, "All compression levels exceeded budget for size %ld×%ld", result, 0x16u);
                MEMORY[0x245CDA690](v57, -1, -1);
LABEL_90:

                goto LABEL_91;
              }

              goto LABEL_127;
            }

LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v5 = result;
  v6 = v42;
  v43 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    if (v43 != 2)
    {
      if (a1 < 0)
      {
        goto LABEL_79;
      }

LABEL_93:
      v40 = 0x3FD3333333333333;
LABEL_94:
      v41 = *&v40;
LABEL_95:
      if (qword_27E5254A8 != -1)
      {
        swift_once();
      }

      v58 = sub_2410DEFE0();
      __swift_project_value_buffer(v58, qword_27E530418);
      sub_241086284(v5, v6);
      v28 = sub_2410DEFC0();
      v59 = sub_2410DF3E0();
      if (os_log_type_enabled(v28, v59))
      {
        result = swift_slowAlloc();
        *result = 134218240;
        *(result + 4) = v41;
        *(result + 12) = 2048;
        v60 = v6 >> 62;
        if ((v6 >> 62) > 1)
        {
          if (v60 != 2)
          {
            v61 = 0;
            goto LABEL_109;
          }

          v63 = *(v5 + 16);
          v62 = *(v5 + 24);
          v23 = __OFSUB__(v62, v63);
          v61 = v62 - v63;
          if (!v23)
          {
            goto LABEL_109;
          }

          __break(1u);
        }

        else if (!v60)
        {
          v61 = BYTE6(v6);
          goto LABEL_109;
        }

        LODWORD(v61) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        v61 = v61;
LABEL_109:
        *(result + 14) = v61;
        v47 = result;
        sub_2410861F8(v5, v6);
        v48 = "Encoded at quality %f: %ld bytes";
        v49 = v59;
        v50 = v28;
        v51 = v47;
        v52 = 22;
        goto LABEL_110;
      }

      sub_2410861F8(v5, v6);
LABEL_111:

      goto LABEL_112;
    }

    v46 = *(result + 16);
    v45 = *(result + 24);
    v23 = __OFSUB__(v45, v46);
    v44 = v45 - v46;
    if (v23)
    {
      __break(1u);
      goto LABEL_72;
    }

LABEL_78:
    if (v44 > a1)
    {
LABEL_79:
      sub_2410861E4(result, v42);
      goto LABEL_80;
    }

    goto LABEL_93;
  }

  if (!v43)
  {
    v44 = BYTE6(v42);
    goto LABEL_78;
  }

  LODWORD(v44) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v44 = v44;
    goto LABEL_78;
  }

LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_241095840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2410DECC0();
  v11 = result;
  if (result)
  {
    result = sub_2410DECE0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2410DECD0();
  sub_2410939B0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2410958F8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_241086284(a3, a4);
          return sub_241093BE0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_241095A84()
{
  v0 = sub_2410DF660();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

void *sub_241095AD0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CF8, &qword_2410E2A10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410961E0();
  sub_2410DFA10();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v51) = 0;
    v10 = sub_2410DF740();
    LOBYTE(v51) = 1;
    v11 = sub_2410DF6B0();
    v53 = v12;
    v13 = v11;
    LOBYTE(v51) = 3;
    v15 = sub_2410DF690();
    v49 = v16;
    LOBYTE(v51) = 4;
    v17 = sub_2410DF6F0();
    v47 = v18;
    v48 = v17;
    LOBYTE(v51) = 5;
    v44 = sub_2410DF690();
    v46 = v19;
    v54 = 6;
    v45 = sub_24108BC78();
    sub_2410DF6C0();
    v42 = v51;
    v43 = v52;
    v54 = 7;
    sub_2410DF6C0();
    v41 = v51;
    v45 = v52;
    type metadata accessor for ATQuestion(0);
    v54 = 9;
    sub_2410967EC(&qword_27E526160, 255, type metadata accessor for ATQuestion);
    sub_2410DF730();
    v40 = v51;
    type metadata accessor for ATResponse();
    v54 = 10;
    sub_2410967EC(&qword_27E525D10, 255, type metadata accessor for ATResponse);
    sub_2410DF6C0();
    v39 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525C88, &qword_2410E27F8);
    v54 = 11;
    sub_241096834(&unk_27E525D18, &qword_27E525D10);
    sub_2410DF6C0();
    v38 = v51;
    v54 = 12;
    sub_241080F08();
    sub_2410DF730();
    v37 = v51;
    LOBYTE(v51) = 8;
    v20 = sub_2410DF6D0();
    v21 = v37;
    if ((v20 & 0x10000) == 0)
    {
      v21 = v20;
    }

    v37 = v21;
    v22 = type metadata accessor for ATPayload();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC9AskToCore9ATPayload_version] = v10;
    v24 = &v23[OBJC_IVAR____TtC9AskToCore9ATPayload_requesterDSID];
    *v24 = v13;
    v24[8] = v53 & 1;
    v25 = &v23[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
    v26 = v48;
    v27 = v49;
    *v25 = v15;
    v25[1] = v27;
    v28 = &v23[OBJC_IVAR____TtC9AskToCore9ATPayload_clientAdamIdentifier];
    *v28 = v26;
    v28[8] = v47 & 1;
    v29 = &v23[OBJC_IVAR____TtC9AskToCore9ATPayload_clientDisplayName];
    v30 = v46;
    *v29 = v44;
    v29[1] = v30;
    v31 = &v23[OBJC_IVAR____TtC9AskToCore9ATPayload_clientIconData];
    v32 = v43;
    *v31 = v42;
    *(v31 + 1) = v32;
    v33 = &v23[OBJC_IVAR____TtC9AskToCore9ATPayload_associatedContentIconData];
    v34 = v45;
    *v33 = v41;
    *(v33 + 1) = v34;
    *&v23[OBJC_IVAR____TtC9AskToCore9ATPayload_rawRecipientGroup] = v37;
    v35 = v39;
    *&v23[OBJC_IVAR____TtC9AskToCore9ATPayload_question] = v40;
    *&v23[OBJC_IVAR____TtC9AskToCore9ATPayload_response] = v35;
    *&v23[OBJC_IVAR____TtC9AskToCore9ATPayload_allResponses] = v38;
    v50.receiver = v23;
    v50.super_class = v22;
    v9 = objc_msgSendSuper2(&v50, sel_init);
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_2410961E0()
{
  result = qword_27E525C68;
  if (!qword_27E525C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525C68);
  }

  return result;
}

uint64_t sub_241096234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525CA0, "P?");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2410962A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATCommunicationMetadata.PersonInformation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241096308(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = sub_2410967EC(&unk_27E525C50, a2, type metadata accessor for ATPayload);
  result = sub_2410967EC(&qword_27E525830, v3, type metadata accessor for ATPayload);
  *(a1 + 24) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ATPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ATPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410964F8()
{
  result = qword_27E525CC0;
  if (!qword_27E525CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525CC0);
  }

  return result;
}

unint64_t sub_241096550()
{
  result = qword_27E525CC8;
  if (!qword_27E525CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525CC8);
  }

  return result;
}

unint64_t sub_2410965A8()
{
  result = qword_27E525CD0;
  if (!qword_27E525CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525CD0);
  }

  return result;
}

CGImageRef sub_2410965FC(CGImage *a1, double a2, double a3)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = Width / Height;
  v9 = a2 / a3 < v8;
  v10 = v8 * a3;
  v11 = a2 / v8;
  if (v9)
  {
    v10 = a2;
  }

  else
  {
    v11 = a3;
  }

  if (v10 <= Width)
  {
    v12 = v10;
  }

  else
  {
    v12 = Width;
  }

  if (v11 <= Height)
  {
    v13 = v11;
  }

  else
  {
    v13 = Height;
  }

  result = CGImageGetAlphaInfo(a1);
  if (v12 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = __CGBitmapContextCreate(v12, v13, DeviceRGB);

  if (!v16)
  {
    return 0;
  }

  sub_2410DF3C0();
  Image = CGBitmapContextCreateImage(v16);

  return Image;
}

uint64_t sub_241096768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2410967EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_241096834(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E525C88, &qword_2410E27F8);
    sub_2410967EC(a2, 255, type metadata accessor for ATResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410968D4()
{
  result = qword_27E525D28;
  if (!qword_27E525D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525D28);
  }

  return result;
}

id SendRequestPayload.__allocating_init(payload:recipientGroupInfo:requiredCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_payload] = a1;
  *&v7[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_recipientGroupInfo] = a2;
  *&v7[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_requiredCapabilities] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id SendRequestPayload.init(payload:recipientGroupInfo:requiredCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_payload] = a1;
  *&v3[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_recipientGroupInfo] = a2;
  *&v3[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_requiredCapabilities] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id SendRequestPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_241096AF8()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C796170;
  }
}

uint64_t sub_241096B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24109847C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_241096B8C(uint64_t a1)
{
  v2 = sub_241096F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241096BC8(uint64_t a1)
{
  v2 = sub_241096F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SendRequestPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525D58, &qword_2410E2A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241096F00();
  sub_2410DFA20();
  v13 = *(v3 + OBJC_IVAR____TtC9AskToCore18SendRequestPayload_payload);
  HIBYTE(v12) = 0;
  type metadata accessor for ATPayload();
  sub_241098170(&qword_27E525830, 255, type metadata accessor for ATPayload);
  sub_2410DF830();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC9AskToCore18SendRequestPayload_recipientGroupInfo);
    HIBYTE(v12) = 1;
    type metadata accessor for PrivledgedRecipientGroupInfo();
    sub_241098170(&qword_27E525D70, 255, type metadata accessor for PrivledgedRecipientGroupInfo);
    sub_2410DF830();
    v13 = *(v3 + OBJC_IVAR____TtC9AskToCore18SendRequestPayload_requiredCapabilities);
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525D78, &qword_2410E2A28);
    sub_241097324(&qword_27E525D80);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_241096F00()
{
  result = qword_27E525D60;
  if (!qword_27E525D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525D60);
  }

  return result;
}

id SendRequestPayload.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E525D88, &unk_2410E2A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241096F00();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ATPayload();
    v14 = 0;
    sub_241098170(&unk_27E525C50, 255, type metadata accessor for ATPayload);
    sub_2410DF730();
    *&v1[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_payload] = v15;
    type metadata accessor for PrivledgedRecipientGroupInfo();
    v14 = 1;
    sub_241098170(&qword_27E525D98, 255, type metadata accessor for PrivledgedRecipientGroupInfo);
    sub_2410DF730();
    *&v1[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_recipientGroupInfo] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525D78, &qword_2410E2A28);
    v14 = 2;
    sub_241097324(&qword_27E525DA0);
    sub_2410DF730();
    *&v1[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_requiredCapabilities] = v15;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_241097324(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E525D78, &qword_2410E2A28);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_241097390@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SendRequestPayload.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id SendRequestPayload.sendableSendRequestPayload.getter()
{
  swift_getObjectType();
  v2 = sub_2410DEBF0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2410DEBE0();
  v23 = v0;
  sub_241098170(&qword_27E525DA8, v5, type metadata accessor for SendRequestPayload);
  v6 = sub_2410DEBD0();
  if (v1)
  {

    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v8 = sub_2410DEFE0();
    __swift_project_value_buffer(v8, qword_27E530400);
    v9 = v1;
    v10 = sub_2410DEFC0();
    v11 = sub_2410DF3F0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24107E000, v10, v11, "Error archiving MessageComposeRequest %@", v12, 0xCu);
      sub_2410980E4(v13);
      MEMORY[0x245CDA690](v13, -1, -1);
      MEMORY[0x245CDA690](v12, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v17 = v6;
    v18 = v7;

    v19 = type metadata accessor for SendableSendRequestPayload();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data];
    *v21 = v17;
    *(v21 + 1) = v18;
    v22.receiver = v20;
    v22.super_class = v19;
    return objc_msgSendSuper2(&v22, sel_init);
  }
}

id SendRequestPayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SendRequestPayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_241098170(&qword_27E525DC0, v3, type metadata accessor for SendRequestPayload);
  sub_241098170(&qword_27E525DA8, v4, type metadata accessor for SendRequestPayload);
  sub_2410DEF50();
  v5 = sub_2410DF440();
  if (v5)
  {
    v6 = v5;
    sub_2410DEF40();

    v7 = v21;
    v8 = *&v21[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_payload];
    v9 = *&v21[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_recipientGroupInfo];
    v10 = *&v21[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_requiredCapabilities];
    v11 = objc_allocWithZone(ObjectType);
    *&v11[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_payload] = v8;
    *&v11[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_recipientGroupInfo] = v9;
    *&v11[OBJC_IVAR____TtC9AskToCore18SendRequestPayload_requiredCapabilities] = v10;
    v20.receiver = v11;
    v20.super_class = ObjectType;
    v12 = v8;
    swift_retain_n();
    v13 = v12;

    v14 = objc_msgSendSuper2(&v20, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v15 = sub_2410DEFE0();
    __swift_project_value_buffer(v15, qword_27E530400);
    v16 = sub_2410DEFC0();
    v17 = sub_2410DF3F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24107E000, v16, v17, "Not initializing SendRequestPayload (coder had nil value for key data)", v18, 2u);
      MEMORY[0x245CDA690](v18, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

Swift::Void __swiftcall SendRequestPayload.encode(with:)(NSCoder with)
{
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DC8, &qword_2410E2A40));
  v4 = v1;
  v5 = sub_2410DEF60();
  v6 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id _s9AskToCore18SendRequestPayloadCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SendableSendRequestPayload.decodedPayload.getter()
{
  v2 = sub_2410DEB90();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2410DEB80();
  type metadata accessor for SendRequestPayload();
  v5 = *(v0 + OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data);
  v6 = *(v0 + OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data + 8);
  sub_241098170(&qword_27E525DC0, v7, type metadata accessor for SendRequestPayload);
  sub_2410DEB70();
  if (v1)
  {

    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v8 = sub_2410DEFE0();
    __swift_project_value_buffer(v8, qword_27E530400);
    v9 = v1;
    v10 = sub_2410DEFC0();
    v11 = sub_2410DF3F0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24107E000, v10, v11, "Not initializing MessageComposeRequest failed to unarchiver: %@", v12, 0xCu);
      sub_2410980E4(v13);
      MEMORY[0x245CDA690](v13, -1, -1);
      MEMORY[0x245CDA690](v12, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {

    return v17;
  }
}

id SendableSendRequestPayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    sub_2410DEF40();
    v5 = v16;
    v6 = v17;
    v7 = objc_allocWithZone(ObjectType);
    v8 = &v7[OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data];
    *v8 = v16;
    v8[1] = v6;
    sub_241086284(v5, v6);
    v15.receiver = v7;
    v15.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v15, sel_init);

    sub_2410861F8(v5, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E530400);
    v11 = sub_2410DEFC0();
    v12 = sub_2410DF3F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24107E000, v11, v12, "Not initializing MessageComposeRequest (coder had nil value for key data)", v13, 2u);
      MEMORY[0x245CDA690](v13, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

Swift::Void __swiftcall SendableSendRequestPayload.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data + 8);
  v6 = *(v1 + OBJC_IVAR____TtC9AskToCore26SendableSendRequestPayload_data);
  v7 = v3;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48));
  sub_241086284(v6, v3);
  v4 = sub_2410DEF60();
  v5 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5, v6, v7];
}

uint64_t sub_2410980E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DB0, &qword_2410E3870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241098170(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _CommunicationHandle.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _CommunicationHandle.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241098378()
{
  result = qword_27E525DD8;
  if (!qword_27E525DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525DD8);
  }

  return result;
}

unint64_t sub_2410983D0()
{
  result = qword_27E525DE0;
  if (!qword_27E525DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525DE0);
  }

  return result;
}

unint64_t sub_241098428()
{
  result = qword_27E525DE8;
  if (!qword_27E525DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525DE8);
  }

  return result;
}

uint64_t sub_24109847C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E8010 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002410E8030 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2410DF8D0();

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

uint64_t sub_2410985AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000002410E67F0;
    }

    else
    {
      v3 = 0x69616E626D756874;
      v4 = 0xED0000617461446CLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0x7265566F546B7361;
    }

    if (v2)
    {
      v4 = 0x80000002410E67D0;
    }

    else
    {
      v4 = 0xEC0000006E6F6973;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002410E67F0;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xED0000617461446CLL;
      if (v3 != 0x69616E626D756874)
      {
LABEL_26:
        v7 = sub_2410DF8D0();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0x7265566F546B7361;
    }

    if (a2)
    {
      v6 = 0x80000002410E67D0;
    }

    else
    {
      v6 = 0xEC0000006E6F6973;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_241098734(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x767265536E6F6369;
    }

    else
    {
      v3 = 0x696C436E776F6E6BLL;
    }

    if (v2)
    {
      v4 = 0xEC00000073656369;
    }

    else
    {
      v4 = 0xEB00000000746E65;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000002410E6D40;
    v3 = 0xD000000000000015;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x495041616964656DLL;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (v2 == 3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x80000002410E6D60;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x767265536E6F6369;
    }

    else
    {
      v9 = 0x696C436E776F6E6BLL;
    }

    if (a2)
    {
      v8 = 0xEC00000073656369;
    }

    else
    {
      v8 = 0xEB00000000746E65;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x495041616964656DLL;
    v6 = 0x80000002410E6D60;
    if (a2 == 3)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000002410E6D40;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_2410DF8D0();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_2410988E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006369706F54;
  v3 = 0x6E6F697473657571;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6F697473657571;
    }

    else
    {
      v5 = 0x696F706B63656863;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006369706F54;
    }

    else
    {
      v6 = 0xEC0000003456746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4)
    {
      v6 = 0x80000002410E6860;
    }

    else
    {
      v6 = 0x80000002410E6960;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x696F706B63656863;
    v2 = 0xEC0000003456746ELL;
  }

  v7 = 0xD000000000000013;
  v8 = 0x80000002410E6860;
  if (a2)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x80000002410E6960;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2410DF8D0();
  }

  return v11 & 1;
}

uint64_t sub_241098A38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006369706F54;
  v3 = 0x6E6F697473657571;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6F697473657571;
    }

    else
    {
      v5 = 0x696F706B63656863;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006369706F54;
    }

    else
    {
      v6 = 0xEA0000000000746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4)
    {
      v6 = 0x80000002410E6860;
    }

    else
    {
      v6 = 0x80000002410E6960;
    }
  }

  if (a2 != 2)
  {
    v3 = 0x696F706B63656863;
    v2 = 0xEA0000000000746ELL;
  }

  v7 = 0xD000000000000013;
  v8 = 0x80000002410E6860;
  if (a2)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x80000002410E6960;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2410DF8D0();
  }

  return v11 & 1;
}

uint64_t sub_241098B84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006369706F54;
  v3 = 0x6E6F697473657571;
  v4 = a1;
  if (a1 <= 1u)
  {
    v6 = 0xD000000000000016;
    if (v4)
    {
      v5 = 0x80000002410E6860;
    }

    else
    {
      v6 = 0xD000000000000013;
      v5 = 0x80000002410E6960;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0x6E6F697473657571;
    v5 = 0xED00006369706F54;
  }

  else if (a1 == 3)
  {
    v5 = 0x80000002410E6990;
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x696F706B63656863;
    v5 = 0xEC0000003256746ELL;
  }

  v7 = 0x80000002410E6990;
  v8 = 0x696F706B63656863;
  if (a2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xEC0000003256746ELL;
  }

  if (a2 != 2)
  {
    v3 = v8;
    v2 = v7;
  }

  v9 = 0x80000002410E6860;
  v10 = 0xD000000000000016;
  if (!a2)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000002410E6960;
  }

  if (a2 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v2;
  }

  if (v6 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2410DF8D0();
  }

  return v13 & 1;
}

uint64_t sub_241098D18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000002410E6CE0;
    }

    else
    {
      v4 = 0xE400000000000000;
      v3 = 1684957547;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002410E6CE0;
      if (v3 != 0xD000000000000015)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE400000000000000;
      if (v3 != 1684957547)
      {
LABEL_26:
        v7 = sub_2410DF8D0();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x656C746974;
    }

    else
    {
      v5 = 25705;
    }

    if (a2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

unint64_t Metrics.RequestJourney.Checkpoint.description.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = 0xD000000000000022;
      break;
    case 2:
      v1 = 0xD000000000000020;
      break;
    case 3:
      v1 = 0xD000000000000016;
      break;
    case 4:
      v1 = 0xD00000000000001FLL;
      break;
    case 5:
      v1 = 0xD000000000000020;
      break;
    case 6:
      v1 = 0xD00000000000001ELL;
      break;
    case 7:
      v1 = 0xD00000000000001ELL;
      break;
    case 8:
      v1 = 0xD000000000000018;
      break;
    case 9:
      v1 = 0xD00000000000001ALL;
      break;
    case 0xA:
      v1 = 0xD000000000000018;
      break;
    case 0xB:
      v1 = 0xD00000000000001FLL;
      break;
    case 0xC:
      v1 = 0xD000000000000028;
      break;
    case 0xD:
      v1 = 0xD00000000000001BLL;
      break;
    case 0xE:
      v1 = 0xD00000000000001ELL;
      break;
    case 0xF:
      v1 = 0xD00000000000001FLL;
      break;
    case 0x10:
      v1 = 0xD00000000000002ALL;
      break;
    case 0x11:
      v1 = 0xD000000000000020;
      break;
    case 0x12:
      v1 = 0xD00000000000001BLL;
      break;
    case 0x13:
      v1 = 0xD000000000000011;
      break;
    case 0x14:
      v1 = 0xD000000000000025;
      break;
    default:
      v1 = 0x6C616974696E69;
      break;
  }

  v2 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v2);

  MEMORY[0x245CD9620](41, 0xE100000000000000);

  MEMORY[0x245CD9620](10272, 0xE200000000000000);

  return v1;
}

AskToCore::Metrics::RequestJourney::Checkpoint_optional __swiftcall Metrics.RequestJourney.Checkpoint.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue <= 0x3E7u)
  {
    if (rawValue > 0x1F3u)
    {
      if (rawValue <= 0x2BBu)
      {
        if (rawValue == 500)
        {
          *v1 = 5;
          return rawValue;
        }

        if (rawValue == 600)
        {
          *v1 = 6;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 700:
            *v1 = 7;
            return rawValue;
          case 800:
            *v1 = 8;
            return rawValue;
          case 900:
            *v1 = 9;
            return rawValue;
        }
      }

      goto LABEL_50;
    }

    if (rawValue <= 0xC7u)
    {
      if (rawValue)
      {
        if (rawValue == 100)
        {
          *v1 = 1;
          return rawValue;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (rawValue != 200)
      {
        if (rawValue == 300)
        {
          *v1 = 3;
          return rawValue;
        }

        if (rawValue == 400)
        {
          *v1 = 4;
          return rawValue;
        }

LABEL_50:
        *v1 = 21;
        return rawValue;
      }

      v2 = 2;
    }

    *v1 = v2;
    return rawValue;
  }

  if (rawValue <= 0x5DBu)
  {
    if (rawValue <= 0x4AFu)
    {
      if (rawValue == 1000)
      {
        *v1 = 10;
        return rawValue;
      }

      if (rawValue == 1100)
      {
        *v1 = 11;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 1200:
          *v1 = 12;
          return rawValue;
        case 1300:
          *v1 = 13;
          return rawValue;
        case 1400:
          *v1 = 14;
          return rawValue;
      }
    }

    goto LABEL_50;
  }

  if (rawValue > 0x707u)
  {
    switch(rawValue)
    {
      case 1800:
        *v1 = 18;
        return rawValue;
      case 1900:
        *v1 = 19;
        return rawValue;
      case 2000:
        *v1 = 20;
        return rawValue;
    }

    goto LABEL_50;
  }

  if (rawValue == 1500)
  {
    *v1 = 15;
    return rawValue;
  }

  if (rawValue == 1600)
  {
    *v1 = 16;
    return rawValue;
  }

  if (rawValue != 1700)
  {
    goto LABEL_50;
  }

  *v1 = 17;
  return rawValue;
}

uint64_t sub_24109949C()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t sub_24109951C()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t sub_241099590()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_24109968C()
{
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_241099774()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_24109986C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24109AA78();
  *a2 = result;
  return result;
}

void sub_24109989C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006369706F54;
  v4 = 0x6E6F697473657571;
  v5 = 0x80000002410E6990;
  v6 = 0x696F706B63656863;
  if (v2 == 3)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xEC0000003256746ELL;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000002410E6960;
  v8 = 0xD000000000000016;
  if (*v1)
  {
    v7 = 0x80000002410E6860;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_241099954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525E20, &qword_2410E2EE0);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2410E2C30;
  v3 = *(v0 + 32);
  v4 = MEMORY[0x277D84958];
  *(inited + 64) = MEMORY[0x277D84958];
  *(inited + 40) = v3;
  *(inited + 72) = 1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = MEMORY[0x277D837D0];
  *(inited + 104) = MEMORY[0x277D837D0];
  if (!v6)
  {
    v5 = 0x6E776F6E6B6E55;
  }

  v8 = 0xE700000000000000;
  if (v6)
  {
    v8 = v6;
  }

  *(inited + 80) = v5;
  *(inited + 88) = v8;
  *(inited + 112) = 3;
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  *(inited + 144) = v7;
  if (!v10)
  {
    v9 = 0x6F725020656E6F4ELL;
  }

  v11 = 0xED00006465646976;
  if (v10)
  {
    v11 = v10;
  }

  *(inited + 120) = v9;
  *(inited + 128) = v11;
  *(inited + 152) = 2;
  v12 = (*(v0 + 72) + OBJC_IVAR___ATQuestionTopic_rawValue);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 184) = v7;
  *(inited + 160) = v13;
  *(inited + 168) = v14;
  *(inited + 192) = 4;
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  v17 = __swift_project_boxed_opaque_existential_1((v0 + 80), v15);
  v25[1] = v25;
  v18 = *(v15 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21);
  *(v2 + 224) = v4;
  v22 = *(v16 + 16);

  sub_2410DF230();
  (*(v18 + 8))(v21, v15);
  v23 = sub_241082908(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257A8, &qword_2410E1338);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_241099BC4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_241099C1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_241099C74(uint64_t a1)
{
  v55 = a1;

  v1 = sub_2410823C4(MEMORY[0x277D84F90]);
  v2 = sub_24109AAC4();
  v3 = *(v2 + 40);
  v4 = type metadata accessor for RequestJourneyEvent();
  v5 = v3(v4, v2);
  v6 = 0;
  v8 = v5 + 64;
  v7 = *(v5 + 64);
  v47 = v5;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = ((v9 + 63) >> 6);
  if ((v10 & v7) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v6;
LABEL_14:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v15 << 6);
    v20 = *(*(v47 + 48) + v19);
    sub_2410867A4(*(v47 + 56) + 32 * v19, v49);
    LOBYTE(v50) = v20;
    sub_2410824F4(v49, (&v50 + 8));
    v17 = v15;
LABEL_15:
    v53[0] = v50;
    v53[1] = v51;
    v54 = v52;
    if (!v52)
    {
      break;
    }

    v21 = LOBYTE(v53[0]);
    sub_2410824F4((v53 + 8), &v50);
    v22 = 0x696F706B63656863;
    if (v21 == 3)
    {
      v22 = 0xD000000000000010;
    }

    v23 = 0x80000002410E6990;
    if (v21 != 3)
    {
      v23 = 0xEC0000003256746ELL;
    }

    if (v21 == 2)
    {
      v22 = 0x6E6F697473657571;
      v23 = 0xED00006369706F54;
    }

    v24 = 0xD000000000000013;
    if (v21)
    {
      v24 = 0xD000000000000016;
    }

    v25 = 0x80000002410E6860;
    if (!v21)
    {
      v25 = 0x80000002410E6960;
    }

    if (v21 <= 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    if (v21 <= 1)
    {
      v27 = v25;
    }

    else
    {
      v27 = v23;
    }

    sub_2410867A4(&v50, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v1;
    v29 = sub_2410D81D4(v26, v27);
    v31 = *(v1 + 16);
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_47;
    }

    v35 = v30;
    if (*(v1 + 24) >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v40 = v29;
      sub_2410A71D4();
      v29 = v40;
      if ((v35 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_5:
      v13 = v29;

      v1 = v48;
      v14 = (v48[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_2410824F4(v49, v14);
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v6 = v17;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_2410A6884(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_2410D81D4(v26, v27);
      if ((v35 & 1) != (v36 & 1))
      {
        sub_2410DF910();
        __break(1u);
        return;
      }

LABEL_37:
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_38:
      v1 = v48;
      v48[(v29 >> 6) + 8] |= 1 << v29;
      v37 = (v48[6] + 16 * v29);
      *v37 = v26;
      v37[1] = v27;
      sub_2410824F4(v49, (v48[7] + 32 * v29));
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v38 = v48[2];
      v33 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v33)
      {
        goto LABEL_48;
      }

      v48[2] = v39;
      v6 = v17;
      if (!v11)
      {
LABEL_7:
        if (v12 <= v6 + 1)
        {
          v16 = (v6 + 1);
        }

        else
        {
          v16 = v12;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            v11 = 0;
            v52 = 0;
            v50 = 0u;
            v51 = 0u;
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v15);
          ++v6;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }
  }

  v41 = *(a1 + 16);
  v42 = *(a1 + 24);

  sub_24109E8A8(v1);

  v43 = objc_allocWithZone(MEMORY[0x277CE44D8]);
  v44 = sub_2410DF0A0();

  v45 = sub_2410DF040();

  v12 = [v43 initWithEventName:v44 eventCategory:0 initData:v45];

  if (qword_27E5254C8 == -1)
  {
    goto LABEL_45;
  }

LABEL_49:
  swift_once();
LABEL_45:
  [qword_27E525E40 sendEvent_];
}

uint64_t sub_24109A10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v35 = a4;
  v34 = a2;
  v33 = a1;
  v7 = sub_2410DEF00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  LOBYTE(a5) = *a5;
  v32 = a3;
  sub_24109AB1C(a3, &v31 - v20);
  v41[3] = &type metadata for Metrics.RequestJourney.Checkpoint;
  v22 = sub_24109AB8C();
  v41[4] = v22;
  LOBYTE(v41[0]) = a5;
  type metadata accessor for RequestJourneyEvent();
  v23 = swift_allocObject();
  v24 = *__swift_mutable_project_boxed_opaque_existential_1(v41, &type metadata for Metrics.RequestJourney.Checkpoint);
  v40[3] = &type metadata for Metrics.RequestJourney.Checkpoint;
  v40[4] = v22;
  LOBYTE(v40[0]) = v24;
  sub_24109AB1C(v21, v19);
  sub_241096768(v40, v39);
  v25 = *__swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
  v37 = &type metadata for Metrics.RequestJourney.Checkpoint;
  v38 = v22;
  LOBYTE(v36) = v25;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 32) = 1;
  *(v23 + 16) = 0xD000000000000022;
  *(v23 + 24) = 0x80000002410E8410;
  sub_24109AB1C(v19, v16);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    sub_24109AC30(v32);
    sub_24109AC30(v19);
    sub_24109AC30(v21);
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24109AC30(v16);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v16, v7);
    v26 = sub_2410DEEB0();
    v27 = v28;
    sub_24109AC30(v32);
    (*(v8 + 8))(v11, v7);
    sub_24109AC30(v19);
    sub_24109AC30(v21);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  *(v23 + 56) = v26;
  *(v23 + 64) = v27;
  v29 = v34;
  *(v23 + 40) = v33;
  *(v23 + 48) = v29;
  *(v23 + 72) = v35;
  sub_24109AC98(&v36, v23 + 80);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v23;
}

uint64_t _s9AskToCore7MetricsO14RequestJourneyO3log22clientBundleIdentifier13questionTopic10checkpointySSSg_0aB010ATQuestionC0L0CAE10CheckpointOtFZ_0(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = *a4;
  if (qword_27E525488 != -1)
  {
    swift_once();
  }

  v13 = sub_2410DEFE0();
  __swift_project_value_buffer(v13, qword_27E5303B8);
  v14 = sub_2410DEFC0();
  v15 = sub_2410DF400();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a3;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136446210;
    v28 = v12;
    v20 = Metrics.RequestJourney.Checkpoint.description.getter();
    v22 = sub_241085208(v20, v21, &v29);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24107E000, v14, v15, "Logging request journey metric with checkpoint %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDA690](v19, -1, -1);
    v23 = v18;
    a1 = v17;
    a3 = v27;
    MEMORY[0x245CDA690](v23, -1, -1);
  }

  v24 = sub_2410DEF00();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v30 = v12;

  v25 = sub_24109A10C(a1, a2, v11, a3, &v30);
  sub_241099C74(v25);
}

unint64_t sub_24109A68C()
{
  result = qword_27E525DF0;
  if (!qword_27E525DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525DF0);
  }

  return result;
}

unint64_t sub_24109A6E0(uint64_t a1)
{
  *(a1 + 8) = sub_24109A710();
  result = sub_24109A764();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24109A710()
{
  result = qword_27E525DF8;
  if (!qword_27E525DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525DF8);
  }

  return result;
}

unint64_t sub_24109A764()
{
  result = qword_27E525E00;
  if (!qword_27E525E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Metrics.RequestJourney.Checkpoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Metrics.RequestJourney.Checkpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24109A974()
{
  result = qword_27E525E08;
  if (!qword_27E525E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E08);
  }

  return result;
}

unint64_t sub_24109A9CC()
{
  result = qword_27E525E10;
  if (!qword_27E525E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E10);
  }

  return result;
}

unint64_t sub_24109AA24()
{
  result = qword_27E525E18;
  if (!qword_27E525E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E18);
  }

  return result;
}

uint64_t sub_24109AA78()
{
  v0 = sub_2410DF660();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24109AAC4()
{
  result = qword_27E525E28;
  if (!qword_27E525E28)
  {
    type metadata accessor for RequestJourneyEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E28);
  }

  return result;
}

uint64_t sub_24109AB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24109AB8C()
{
  result = qword_27E525E30;
  if (!qword_27E525E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E30);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24109AC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FE0, &qword_2410E1900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24109AC98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for JourneyEvent.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JourneyEvent.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static Journey.log(clientBundleIdentifier:questionTopic:checkpoint:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v66 = a3;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v63 = *(a5 - 8);
  v18 = *(v63 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v67 = v11;
  v24 = *(v11 + 16);
  v65 = a4;
  v69 = v24;
  v24(v17, a4, AssociatedTypeWitness);
  v25 = *(a6 + 112);

  v26 = v66;
  v27 = v68;
  v62 = v17;
  v68 = a6;
  v25(v27, a2, v26, v17, a5, a6);
  if (qword_27E525488 != -1)
  {
    swift_once();
  }

  v28 = sub_2410DEFE0();
  __swift_project_value_buffer(v28, qword_27E5303B8);
  v29 = v63;
  v30 = v63 + 16;
  v66 = *(v63 + 16);
  (v66)(v21, v23, a5);
  v31 = v64;
  v69(v64, v65, AssociatedTypeWitness);
  v32 = sub_2410DEFC0();
  v61 = sub_2410DF400();
  v33 = v23;
  if (os_log_type_enabled(v32, v61))
  {
    v34 = swift_slowAlloc();
    v60 = v30;
    v35 = v34;
    v58 = swift_slowAlloc();
    v71[0] = v58;
    *v35 = 136446466;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v36 = sub_2410DF110();
    v57 = v32;
    v37 = v36;
    v59 = v33;
    v39 = v38;
    v65 = *(v29 + 8);
    v65(v21, a5);
    v40 = sub_241085208(v37, v39, v71);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2082;
    v41 = v62;
    v69(v62, v31, AssociatedTypeWitness);
    v42 = *(v67 + 8);
    v42(v31, AssociatedTypeWitness);
    v43 = v68;
    v44 = *(swift_getAssociatedConformanceWitness() + 8);
    v45 = sub_2410DF8A0();
    v47 = v46;
    v42(v41, AssociatedTypeWitness);
    v48 = sub_241085208(v45, v47, v71);
    v33 = v59;

    *(v35 + 14) = v48;
    v49 = v57;
    _os_log_impl(&dword_24107E000, v57, v61, "Logging %{public}s metric with checkpoint %{public}s", v35, 0x16u);
    v50 = v58;
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v50, -1, -1);
    MEMORY[0x245CDA690](v35, -1, -1);
  }

  else
  {
    (*(v67 + 8))(v31, AssociatedTypeWitness);

    v65 = *(v29 + 8);
    v65(v21, a5);
    v43 = v68;
  }

  v51 = *(v43 + 8);
  v71[3] = a5;
  v71[4] = v51;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  (v66)(boxed_opaque_existential_1, v33, a5);
  v53 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = swift_getAssociatedConformanceWitness();
  sub_24109B544(v71, v53, AssociatedConformanceWitness, v55);
  v65(v33, a5);
  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_24109B544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v4 = a2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v65 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = sub_2410DF490();
  v13 = *(v78 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v78);
  v79 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v65 - v17;
  v82 = sub_2410823C4(MEMORY[0x277D84F90]);
  v18 = a1[3];
  v19 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = v18;
  v21 = TupleTypeMetadata2;
  v22 = (*(v19 + 40))(v20, v19);
  v23 = 0;
  v24 = *(v22 + 64);
  v67 = v22 + 64;
  v72 = v22;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v66 = (v25 + 63) >> 6;
  v77 = v21 - 8;
  v69 = v6 + 16;
  v81 = (v6 + 32);
  v76 = (v13 + 32);
  v71 = v6;
  v73 = v21;
  v74 = (v6 + 8);
  v68 = v10;
  while (1)
  {
    if (!v27)
    {
      if (v66 <= v23 + 1)
      {
        v31 = v23 + 1;
      }

      else
      {
        v31 = v66;
      }

      v32 = v31 - 1;
      v30 = v79;
      v33 = v80;
      while (1)
      {
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v29 >= v66)
        {
          v40 = *(v21 - 8);
          (*(v40 + 56))(v79, 1, 1, v21);
          v27 = 0;
          goto LABEL_16;
        }

        v27 = *(v67 + 8 * v29);
        ++v23;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v29 = v23;
    v30 = v79;
LABEL_15:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v29 << 6);
    v36 = v72;
    v37 = v71;
    v38 = v70;
    (*(v71 + 16))(v70, *(v72 + 48) + *(v71 + 72) * v35, v4);
    sub_2410867A4(*(v36 + 56) + 32 * v35, v87);
    v39 = *(v21 + 48);
    (*(v37 + 32))(v30, v38, v4);
    sub_2410824F4(v87, &v30[v39]);
    v40 = *(v21 - 8);
    (*(v40 + 56))(v30, 0, 1, v21);
    v32 = v29;
    v33 = v80;
    v10 = v68;
LABEL_16:
    (*v76)(v33, v30, v78);
    if ((*(v40 + 48))(v33, 1, v21) == 1)
    {

      v60 = v65[3];
      v61 = v65[4];
      __swift_project_boxed_opaque_existential_1(v65, v60);
      (*(v61 + 32))(v60, v61);
      sub_24109E8A8(v82);

      v62 = objc_allocWithZone(MEMORY[0x277CE44D8]);
      v63 = sub_2410DF0A0();

      v64 = sub_2410DF040();

      v33 = [v62 initWithEventName:v63 eventCategory:0 initData:v64];

      if (qword_27E5254C8 == -1)
      {
LABEL_30:
        [qword_27E525E40 sendEvent_];

        return;
      }

LABEL_34:
      swift_once();
      goto LABEL_30;
    }

    v41 = *(v21 + 48);
    (*v81)(v10, v33, v4);
    sub_2410824F4(&v33[v41], v87);
    v33 = v10;
    v42 = v4;
    sub_2410DF230();
    v43 = v85;
    v44 = v86;
    sub_2410867A4(v87, v84);
    v45 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v45;
    v48 = sub_2410D81D4(v43, v44);
    v49 = *(v45 + 16);
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_32;
    }

    v52 = v47;
    if (*(v45 + 24) < v51)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v4 = v42;
      if (v47)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_2410A71D4();
      v4 = v42;
      if (v52)
      {
LABEL_4:

        v82 = v83;
        v28 = (*(v83 + 56) + 32 * v48);
        __swift_destroy_boxed_opaque_existential_1(v28);
        sub_2410824F4(v84, v28);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v10 = v33;
        (*v74)(v33, v4);
        goto LABEL_5;
      }
    }

LABEL_24:
    v55 = v83;
    *(v83 + 8 * (v48 >> 6) + 64) |= 1 << v48;
    v56 = (v55[6] + 16 * v48);
    *v56 = v43;
    v56[1] = v44;
    sub_2410824F4(v84, (v55[7] + 32 * v48));
    __swift_destroy_boxed_opaque_existential_1(v87);
    v10 = v33;
    (*v74)(v33, v4);
    v57 = v55[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_33;
    }

    v82 = v55;
    v55[2] = v59;
LABEL_5:
    v23 = v32;
    v21 = v73;
  }

  sub_2410A6884(v51, isUniquelyReferenced_nonNull_native);
  v53 = sub_2410D81D4(v43, v44);
  if ((v52 & 1) == (v54 & 1))
  {
    v48 = v53;
    v4 = v42;
    if (v52)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  sub_2410DF910();
  __break(1u);
}

id sub_24109BCDC()
{
  result = [objc_allocWithZone(MEMORY[0x277CE44F0]) init];
  qword_27E525E38 = result;
  return result;
}

void sub_24109BD10()
{
  if (qword_27E5254C0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E525E38;
  v1 = objc_allocWithZone(MEMORY[0x277CE44E8]);
  v2 = v0;
  v3 = [v1 initWithTransport_];

  qword_27E525E40 = v3;
}

uint64_t RequestJourney.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

AskToCore::RequestJourney::Field_optional __swiftcall RequestJourney.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2410DF660();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RequestJourney.Field.rawValue.getter()
{
  v1 = 0x6E6F697473657571;
  if (*v0 != 2)
  {
    v1 = 0x696F706B63656863;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24109BEC8()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_24109BFA0()
{
  *v0;
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_24109C064()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

void sub_24109C144(unint64_t *a1@<X8>)
{
  v2 = 0xED00006369706F54;
  v3 = 0x6E6F697473657571;
  if (*v1 != 2)
  {
    v3 = 0x696F706B63656863;
    v2 = 0xEA0000000000746ELL;
  }

  v4 = 0xD000000000000013;
  v5 = 0x80000002410E6960;
  if (*v1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000002410E6860;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t RequestJourney.fields.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525E48, &qword_2410E2F50);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2410E2F40;
  v8 = MEMORY[0x277D84958];
  *(inited + 64) = MEMORY[0x277D84958];
  *(inited + 40) = v1;
  *(inited + 72) = 1;
  v9 = MEMORY[0x277D837D0];
  *(inited + 104) = MEMORY[0x277D837D0];
  v10 = 0x6E776F6E6B6E55;
  if (v2)
  {
    v10 = v3;
  }

  v11 = 0xE700000000000000;
  if (v2)
  {
    v11 = v2;
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 112) = 2;
  v12 = *(v4 + OBJC_IVAR___ATQuestionTopic_rawValue);
  v13 = *(v4 + OBJC_IVAR___ATQuestionTopic_rawValue + 8);
  *(inited + 144) = v9;
  *(inited + 120) = v12;
  *(inited + 128) = v13;
  *(inited + 152) = 3;
  v14 = word_2410E31DA[v5];
  *(inited + 184) = v8;
  *(inited + 160) = v14;

  v15 = sub_241082A84(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257E0, &qword_2410E1368);
  swift_arrayDestroy();
  return v15;
}

unint64_t RequestJourney.Checkpoint.description.getter()
{
  result = 0x6863746546646964;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 0x10:
      result = 0xD000000000000021;
      break;
    case 4:
    case 7:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xC:
      return result;
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

AskToCore::RequestJourney::Checkpoint_optional __swiftcall RequestJourney.Checkpoint.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = 1;
  switch(rawValue)
  {
    case 10:
      v2 = 0;
      goto LABEL_3;
    case 20:
LABEL_3:
      *v1 = v2;
      break;
    case 30:
      *v1 = 2;
      break;
    case 40:
      *v1 = 3;
      break;
    case 41:
      *v1 = 4;
      break;
    case 42:
      *v1 = 5;
      break;
    case 43:
      *v1 = 6;
      break;
    case 44:
      *v1 = 7;
      break;
    case 45:
      *v1 = 8;
      break;
    case 50:
      *v1 = 9;
      break;
    case 51:
      *v1 = 10;
      break;
    case 52:
      *v1 = 11;
      break;
    case 53:
      *v1 = 12;
      break;
    case 60:
      *v1 = 13;
      break;
    case 61:
      *v1 = 14;
      break;
    case 70:
      *v1 = 15;
      break;
    case 80:
      *v1 = 16;
      break;
    default:
      *v1 = 17;
      break;
  }

  return rawValue;
}

uint64_t sub_24109C638()
{
  v1 = *v0;
  sub_2410DF990();
  v2 = word_2410E31DA[v1];
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t sub_24109C6C0()
{
  v1 = *v0;
  sub_2410DF990();
  v2 = word_2410E31DA[v1];
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t RequestJourney.clientBundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RequestJourney.clientBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RequestJourney.init(clientBundleIdentifier:questionTopic:checkpoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = 0xD000000000000025;
  *(a5 + 8) = 0x80000002410E8680;
  *(a5 + 16) = 2;
  *(a5 + 24) = result;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = v5;
  return result;
}

uint64_t sub_24109C88C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_24109C8BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_24109C9A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = 0xD000000000000025;
  *(a5 + 8) = 0x80000002410E8680;
  *(a5 + 16) = 2;
  *(a5 + 24) = result;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = v5;
  return result;
}

uint64_t sub_24109C9D8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_24109CA10()
{
  result = qword_27E525E50;
  if (!qword_27E525E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E50);
  }

  return result;
}

unint64_t sub_24109CA68()
{
  result = qword_27E525E58;
  if (!qword_27E525E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E58);
  }

  return result;
}

unint64_t sub_24109CABC(uint64_t a1)
{
  *(a1 + 8) = sub_24109CAEC();
  result = sub_24109CB40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24109CAEC()
{
  result = qword_27E525E60;
  if (!qword_27E525E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E60);
  }

  return result;
}

unint64_t sub_24109CB40()
{
  result = qword_27E525E68;
  if (!qword_27E525E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E68);
  }

  return result;
}

unint64_t sub_24109CB98()
{
  result = qword_27E525E70;
  if (!qword_27E525E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E70);
  }

  return result;
}

unint64_t sub_24109CBEC(uint64_t a1)
{
  result = sub_24109CC14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24109CC14()
{
  result = qword_27E525E78;
  if (!qword_27E525E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E78);
  }

  return result;
}

unint64_t sub_24109CC6C()
{
  result = qword_27E525E80;
  if (!qword_27E525E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E80);
  }

  return result;
}

unint64_t sub_24109CCC4()
{
  result = qword_27E525E88;
  if (!qword_27E525E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E88);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24109CD34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24109CD7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestJourney.Checkpoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestJourney.Checkpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ResponseJourney.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

AskToCore::ResponseJourney::Field_optional __swiftcall ResponseJourney.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2410DF660();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ResponseJourney.Field.rawValue.getter()
{
  v1 = 0x6E6F697473657571;
  if (*v0 != 2)
  {
    v1 = 0x696F706B63656863;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24109D068()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_24109D144()
{
  *v0;
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_24109D20C()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

void sub_24109D2F0(unint64_t *a1@<X8>)
{
  v2 = 0xED00006369706F54;
  v3 = 0x6E6F697473657571;
  if (*v1 != 2)
  {
    v3 = 0x696F706B63656863;
    v2 = 0xEC0000003456746ELL;
  }

  v4 = 0xD000000000000013;
  v5 = 0x80000002410E6960;
  if (*v1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000002410E6860;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t ResponseJourney.fields.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525E90, &qword_2410E3200);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2410E2F40;
  v8 = MEMORY[0x277D84958];
  *(inited + 64) = MEMORY[0x277D84958];
  *(inited + 40) = v1;
  *(inited + 72) = 1;
  v9 = MEMORY[0x277D837D0];
  *(inited + 104) = MEMORY[0x277D837D0];
  v10 = 0x6E776F6E6B6E55;
  if (v2)
  {
    v10 = v3;
  }

  v11 = 0xE700000000000000;
  if (v2)
  {
    v11 = v2;
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  *(inited + 112) = 2;
  v12 = *(v4 + OBJC_IVAR___ATQuestionTopic_rawValue);
  v13 = *(v4 + OBJC_IVAR___ATQuestionTopic_rawValue + 8);
  *(inited + 144) = v9;
  *(inited + 120) = v12;
  *(inited + 128) = v13;
  *(inited + 152) = 3;
  v14 = word_2410E346A[v5];
  *(inited + 184) = v8;
  *(inited + 160) = v14;

  v15 = sub_241082BA4(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257D0, &qword_2410E1358);
  swift_arrayDestroy();
  return v15;
}

unint64_t ResponseJourney.Checkpoint.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x4964694472657375;
    v6 = 0xD00000000000001CLL;
    if (v1 == 2)
    {
      v6 = 0xD000000000000023;
    }

    if (*v0)
    {
      v5 = 0xD000000000000021;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ELL;
    if (v1 != 7)
    {
      v2 = 0xD000000000000021;
    }

    if (v1 == 6)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD00000000000001DLL;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

AskToCore::ResponseJourney::Checkpoint_optional __swiftcall ResponseJourney.Checkpoint.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue <= 0x1Du)
  {
    if (rawValue > 0xBu)
    {
      if (rawValue == 12)
      {
        *v1 = 2;
        return rawValue;
      }

      if (rawValue == 20)
      {
        *v1 = 3;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 10)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 11)
      {
        *v1 = 1;
        return rawValue;
      }
    }

LABEL_22:
    *v1 = 9;
    return rawValue;
  }

  if (rawValue <= 0x31u)
  {
    if (rawValue == 30)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == 40)
    {
      *v1 = 5;
      return rawValue;
    }

    goto LABEL_22;
  }

  if (rawValue == 50)
  {
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == 60)
  {
    *v1 = 7;
    return rawValue;
  }

  if (rawValue != 70)
  {
    goto LABEL_22;
  }

  *v1 = 8;
  return rawValue;
}

uint64_t sub_24109D72C()
{
  v1 = *v0;
  sub_2410DF990();
  v2 = word_2410E346A[v1];
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t sub_24109D7B4()
{
  v1 = *v0;
  sub_2410DF990();
  v2 = word_2410E346A[v1];
  sub_2410DF9C0();
  return sub_2410DF9F0();
}

uint64_t ResponseJourney.clientBundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ResponseJourney.clientBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ResponseJourney.init(clientBundleIdentifier:questionTopic:checkpoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = 0xD000000000000026;
  *(a5 + 8) = 0x80000002410E87E0;
  *(a5 + 16) = 2;
  *(a5 + 24) = result;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = v5;
  return result;
}

uint64_t sub_24109D978@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = 0xD000000000000026;
  *(a5 + 8) = 0x80000002410E87E0;
  *(a5 + 16) = 2;
  *(a5 + 24) = result;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = v5;
  return result;
}

unint64_t sub_24109D9B8()
{
  result = qword_27E525E98;
  if (!qword_27E525E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525E98);
  }

  return result;
}

unint64_t sub_24109DA10()
{
  result = qword_27E525EA0;
  if (!qword_27E525EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EA0);
  }

  return result;
}

unint64_t sub_24109DA64(uint64_t a1)
{
  *(a1 + 8) = sub_24109DA94();
  result = sub_24109DAE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24109DA94()
{
  result = qword_27E525EA8;
  if (!qword_27E525EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EA8);
  }

  return result;
}

unint64_t sub_24109DAE8()
{
  result = qword_27E525EB0;
  if (!qword_27E525EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EB0);
  }

  return result;
}

unint64_t sub_24109DB40()
{
  result = qword_27E525EB8;
  if (!qword_27E525EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EB8);
  }

  return result;
}

unint64_t sub_24109DB94(uint64_t a1)
{
  result = sub_24109DBBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24109DBBC()
{
  result = qword_27E525EC0;
  if (!qword_27E525EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EC0);
  }

  return result;
}

unint64_t sub_24109DC14()
{
  result = qword_27E525EC8;
  if (!qword_27E525EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EC8);
  }

  return result;
}

unint64_t sub_24109DC6C()
{
  result = qword_27E525ED0;
  if (!qword_27E525ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseJourney.Checkpoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResponseJourney.Checkpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24109DE4C()
{
  v0 = sub_2410C4D14(&unk_2852E37C8);
  result = swift_arrayDestroy();
  qword_27E530460 = v0;
  return result;
}

uint64_t sub_24109DE98()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2410DF990();
  sub_2410DF150();
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t sub_24109DF00()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2410DF150();

  return sub_2410DF150();
}

uint64_t sub_24109DF50()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2410DF990();
  sub_2410DF150();
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t sub_24109DFB4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2410DF570();
  MEMORY[0x245CD9620](0xD000000000000025, 0x80000002410E8830);
  MEMORY[0x245CD9620](v1, v2);
  MEMORY[0x245CD9620](0x3A534F63616D202CLL, 0xE900000000000020);
  MEMORY[0x245CD9620](v3, v4);
  MEMORY[0x245CD9620](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_24109E080(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2410DF8D0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2410DF8D0();
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24109E130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24109E178(uint64_t result, int a2, int a3)
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

unint64_t sub_24109E1CC()
{
  result = qword_27E525ED8;
  if (!qword_27E525ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525ED8);
  }

  return result;
}

uint64_t sub_24109E220(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = qword_27E525488;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_2410DEFE0();
  __swift_project_value_buffer(v10, qword_27E5303B8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11 = v9;
  v12 = sub_2410DEFC0();
  v13 = sub_2410DF400();

  if (os_log_type_enabled(v12, v13))
  {
    v25 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446466;
    v26 = &type metadata for RequestJourney;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F48, &qword_2410E3888);
    v16 = sub_2410DF110();
    v18 = v17;

    v19 = sub_241085208(v16, v18, v27);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    LOBYTE(v26) = a4;
    v20 = RequestJourney.Checkpoint.description.getter();
    v22 = sub_241085208(v20, v21, v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_24107E000, v12, v13, "Logging %{public}s metric with checkpoint %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v15, -1, -1);
    v23 = v14;
    a1 = v25;
    MEMORY[0x245CDA690](v23, -1, -1);
  }

  else
  {
  }

  v27[0] = 0xD000000000000025;
  v27[1] = 0x80000002410E8680;
  v28 = 2;
  v29 = v26;
  v30 = WORD2(v26);
  v31 = a1;
  v32 = a2;
  v33 = v11;
  v34 = a4;
  sub_2410A7648(v27);
}

uint64_t sub_24109E4CC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v8 = qword_27E525488;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_2410DEFE0();
  __swift_project_value_buffer(v10, qword_27E5303B8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11 = v9;
  v12 = sub_2410DEFC0();
  v13 = sub_2410DF400();

  if (os_log_type_enabled(v12, v13))
  {
    v34 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36[0] = v15;
    *v14 = 136446466;
    v35 = &type metadata for ResponseJourney;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525EF8, &unk_2410E3828);
    v16 = sub_2410DF110();
    v18 = v17;

    v19 = sub_241085208(v16, v18, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    if (a4 <= 3u)
    {
      v28 = 0xEF6574616974696ELL;
      v29 = 0x4964694472657375;
      v30 = 0x80000002410E8780;
      v31 = 0xD000000000000023;
      if (a4 != 2)
      {
        v31 = 0xD00000000000001CLL;
        v30 = 0x80000002410E8760;
      }

      if (a4)
      {
        v29 = 0xD000000000000021;
        v28 = 0x80000002410E87B0;
      }

      if (a4 <= 1u)
      {
        v26 = v29;
      }

      else
      {
        v26 = v31;
      }

      if (a4 <= 1u)
      {
        v27 = v28;
      }

      else
      {
        v27 = v30;
      }
    }

    else
    {
      v20 = 0x80000002410E8700;
      v21 = 0xD00000000000001ALL;
      v22 = 0x80000002410E86E0;
      v23 = 0xD00000000000001ELL;
      if (a4 != 7)
      {
        v23 = 0xD000000000000021;
        v22 = 0x80000002410E86B0;
      }

      if (a4 != 6)
      {
        v21 = v23;
        v20 = v22;
      }

      v24 = 0x80000002410E8740;
      v25 = 0xD00000000000001DLL;
      if (a4 != 4)
      {
        v25 = 0xD00000000000001BLL;
        v24 = 0x80000002410E8720;
      }

      if (a4 <= 5u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v21;
      }

      if (a4 <= 5u)
      {
        v27 = v24;
      }

      else
      {
        v27 = v20;
      }
    }

    v32 = sub_241085208(v26, v27, v36);

    *(v14 + 14) = v32;
    _os_log_impl(&dword_24107E000, v12, v13, "Logging %{public}s metric with checkpoint %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v15, -1, -1);
    MEMORY[0x245CDA690](v14, -1, -1);

    a1 = v34;
  }

  else
  {
  }

  v36[0] = 0xD000000000000026;
  v36[1] = 0x80000002410E87E0;
  v37 = 2;
  v38 = v35;
  v39 = WORD2(v35);
  v40 = a1;
  v41 = a2;
  v42 = v11;
  v43 = a4;
  sub_2410A7AB0(v36);
}

uint64_t sub_24109E8A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F00, &qword_2410E3838);
    v2 = sub_2410DF650();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2410867A4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2410824F4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2410824F4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2410824F4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2410DF540();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2410824F4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24109EB94()
{
  type metadata accessor for ATDaemonConnectionManager();
  v0[7] = swift_initStackObject();
  ATDaemonConnectionManager.init()();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24109EC40;
  v2 = v0[6];

  return ATDaemonConnectionManager.markAskMessageComposeRequestAsSent(_:)(v2);
}

uint64_t sub_24109EC40()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24109EDB8;
  }

  else
  {
    v3 = sub_24109ED54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24109ED54()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24109EDB8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t ATDaemonConnectionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ATDaemonConnectionManager.init()();
  return v0;
}

uint64_t ATDaemonConnectionManager.markAskMessageComposeRequestAsSent(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24109EE98, 0, 0);
}

uint64_t sub_24109EE98()
{
  v13 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000026, 0x80000002410E8860, &v12);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[2];
  v6 = v0[3];
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_24109F0C0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24109F0C0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_24109F1F4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_24109F1DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24109F1F4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t ATThreadSafeDaemonConnectionManager.validateCurrentUserCanComposeMessage(request:group:)(uint64_t a1, __int16 a2)
{
  *(v2 + 80) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_24109F27C, 0, 0);
}

uint64_t sub_24109F27C()
{
  type metadata accessor for ATDaemonConnectionManager();
  *(v0 + 56) = swift_initStackObject();
  ATDaemonConnectionManager.init()();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24109F32C;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return ATDaemonConnectionManager.validateCurrentUserCanComposeMessage(request:group:)(v2, v3);
}

uint64_t sub_24109F32C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2410A8C88;
  }

  else
  {
    v3 = sub_2410A8C7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t ATDaemonConnectionManager.validateCurrentUserCanComposeMessage(request:group:)(uint64_t a1, __int16 a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_24109F464, 0, 0);
}

uint64_t sub_24109F464()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000034, 0x80000002410E8890, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 56);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  [*(v7 + 16) activate];
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v6;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_24109F694;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24109F694()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2410A8D14;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2410A8C84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t ATThreadSafeDaemonConnectionManager.deliverResponse(response:toClientWithBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_24109F7D4, 0, 0);
}

uint64_t sub_24109F7D4()
{
  type metadata accessor for ATDaemonConnectionManager();
  v0[9] = swift_initStackObject();
  ATDaemonConnectionManager.init()();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24109F884;
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];

  return ATDaemonConnectionManager.deliverResponse(response:toClientWithBundleIdentifier:)(v4, v2, v3);
}

uint64_t sub_24109F884()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24109F9FC;
  }

  else
  {
    v3 = sub_24109F998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24109F998()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24109F9FC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t ATDaemonConnectionManager.deliverResponse(response:toClientWithBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24109FA84, 0, 0);
}

uint64_t sub_24109FA84()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000037, 0x80000002410E88D0, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[4];
  v6 = v0[5];
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v12;
  *(v8 + 40) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_24109FCC0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24109FCC0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24109FDDC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2410A8C84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24109FDDC()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_24109FE60()
{
  type metadata accessor for ATDaemonConnectionManager();
  v0[7] = swift_initStackObject();
  ATDaemonConnectionManager.init()();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24109F32C;
  v2 = v0[6];

  return ATDaemonConnectionManager.markAskMessageComposeRequestAsSent(_:)(v2);
}

uint64_t sub_24109FF0C(uint64_t a1, __int16 a2)
{
  *(v2 + 80) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_24109F27C, 0, 0);
}

uint64_t sub_24109FF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_24109FF54, 0, 0);
}

uint64_t sub_24109FF54()
{
  type metadata accessor for ATDaemonConnectionManager();
  v0[9] = swift_initStackObject();
  ATDaemonConnectionManager.init()();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2410A0004;
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];

  return ATDaemonConnectionManager.deliverResponse(response:toClientWithBundleIdentifier:)(v4, v2, v3);
}

uint64_t sub_2410A0004()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2410A8C8C;
  }

  else
  {
    v3 = sub_2410A8C80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t ATDaemonConnectionManagerError.hashValue.getter()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](0);
  return sub_2410DF9F0();
}

uint64_t ATDaemonConnectionManager.init()()
{
  v1 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530340);
  v3 = sub_2410DEFC0();
  v4 = sub_2410DF400();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24107E000, v3, v4, "Daemon connection manager initialized", v5, 2u);
    MEMORY[0x245CDA690](v5, -1, -1);
  }

  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_2410DF0A0();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  *(v1 + 16) = v8;
  *(v1 + 24) = 0;
  sub_2410A02E0();
  return v1;
}

void sub_2410A02E0()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F50, &qword_2410E3890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2410E3570;
  v1 = sub_2410A8B24();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F60, &qword_2410E3898);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for _CommunicationHandle();
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F68, &qword_2410E38A0);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_2410DF2B0();

  [v3 initWithArray_];

  sub_2410DF380();
  __break(1u);
}

uint64_t ATDaemonConnectionManager.__allocating_init(exportedObject:)(uint64_t a1)
{
  v2 = type metadata accessor for ATDaemonConnectionManagerXPCConnectionProvider();
  v12[3] = v2;
  v12[4] = &off_2852E5028;
  v12[0] = swift_allocObject();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v12, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_2410A7F1C(*v7, a1, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

void sub_2410A07AC(const char *a1)
{
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530340);
  oslog = sub_2410DEFC0();
  v3 = sub_2410DF3F0();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24107E000, oslog, v3, a1, v4, 2u);
    MEMORY[0x245CDA690](v4, -1, -1);
  }
}

uint64_t ATDaemonConnectionManager.deinit()
{
  v1 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530340);
  v3 = sub_2410DEFC0();
  v4 = sub_2410DF400();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24107E000, v3, v4, "Daemon connection manager deinitialized", v5, 2u);
    MEMORY[0x245CDA690](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  v6 = *(v1 + 24);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t ATDaemonConnectionManager.__deallocating_deinit()
{
  ATDaemonConnectionManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void ATDaemonConnectionManager.sendMessageReceivedReceipt(messagesPayloadURL:)()
{
  v0 = sub_241085978();
  v1 = &v0[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  v2 = *&v0[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier];
  v3 = *&v0[OBJC_IVAR____TtC9AskToCore9ATPayload_clientBundleIdentifier + 8];
  v4 = OBJC_IVAR____TtC9AskToCore9ATPayload_question;
  v5 = *&v0[OBJC_IVAR____TtC9AskToCore9ATPayload_question];
  v6 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v16[0] = 20;
  v8 = v7;
  _s9AskToCore7MetricsO14RequestJourneyO3log22clientBundleIdentifier13questionTopic10checkpointySSSg_0aB010ATQuestionC0L0CAE10CheckpointOtFZ_0(v2, v3, v8, v16);

  v9 = *&v0[v4];
  v10 = OBJC_IVAR____TtC5AskTo10ATQuestion_topic;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *&v11[OBJC_IVAR___ATQuestionTopic_rawValue] == 0xD00000000000001DLL && 0x80000002410E8910 == *&v11[OBJC_IVAR___ATQuestionTopic_rawValue + 8];
  if (v12 || (sub_2410DF8D0() & 1) != 0)
  {
  }

  else
  {
    v13 = *v1;
    v14 = v1[1];
    v15 = v11;
    sub_24109E220(v13, v14, v15, 16);
  }
}

uint64_t ATDaemonConnectionManager.send(question:to:)(uint64_t a1, __int16 a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2410A0C40, 0, 0);
}

uint64_t sub_2410A0C40()
{
  v15 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000012, 0x80000002410E8930, &v14);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  [*(v7 + 16) activate];
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v6;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525EE0, &qword_2410E35B8);
  *v11 = v0;
  v11[1] = sub_2410A0E84;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x80000002410E8930, sub_2410A8070, v9, v12);
}

uint64_t sub_2410A0E84()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2410A0FA0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2410A8D1C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A0FA0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2410A1004(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a4;
  v25 = a3;
  v23 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F40, &qword_2410E3880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  v22 = *(v7 + 16);
  v22(&v21 - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v14 = *(v7 + 32);
  v14(v13 + v12, v10, v6);
  v31 = sub_2410A89F4;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2410D4CC0;
  v30 = &block_descriptor_172;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v17 = v26;
  v22(v10, v23, v6);
  v18 = swift_allocObject();
  v14(v18 + v12, v10, v6);
  v31 = sub_2410A8A08;
  v32 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2410A1390;
  v30 = &block_descriptor_178;
  v19 = _Block_copy(&aBlock);

  [v17 sendWithQuestion:v25 to:v24 reply:v19];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410A130C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F40, &qword_2410E3880);
    return sub_2410DF320();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F40, &qword_2410E3880);
    return sub_2410DF330();
  }
}

uint64_t sub_2410A1390(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2410DF2C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2410A1450, 0, 0);
}

uint64_t sub_2410A1450()
{
  v16 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000026, 0x80000002410E8950, &v15);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  [*(v6 + 16) activate];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v14;
  *(v9 + 40) = v8;
  *(v9 + 48) = v7;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2410A1690;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000026, 0x80000002410E8950, sub_2410A807C, v9, v12);
}

uint64_t sub_2410A1690()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2410A17AC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2410A8C84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A17AC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_2410A1810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v23[1] = a4;
  v28 = a3;
  v25 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = *(a2 + 16);
  v24 = *(v9 + 16);
  v24(v23 - v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v23[0] = *(v9 + 32);
  (v23[0])(v15 + v14, v12, v8);
  v34 = sub_2410A8D04;
  v35 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2410D4CC0;
  v33 = &block_descriptor_160;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v18 = v29;
  v19 = sub_2410DF2B0();
  v20 = sub_2410DF0A0();
  v24(v12, v25, v8);
  v21 = swift_allocObject();
  (v23[0])(v21 + v14, v12, v8);
  v34 = sub_2410A8D08;
  v35 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2410D4D28;
  v33 = &block_descriptor_166;
  v22 = _Block_copy(&aBlock);

  [v18 sendResponse:v28 to:v19 requestMessageGUID:v20 reply:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

uint64_t ATDaemonConnectionManager.sendResponsePayloadViaIDS(_:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2410A1B70, 0, 0);
}

id sub_2410A1B70()
{
  result = [objc_opt_self() stringGUID];
  if (result)
  {
    v2 = result;
    v3 = sub_2410DF0C0();
    v5 = v4;

    v0[5] = v5;
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_2410A1C58;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return ATDaemonConnectionManager.sendResponse(_:to:requestMessageGUID:)(v9, v7, v3, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2410A1C58()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2410A1D94, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2410A1D94()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t ATDaemonConnectionManager.screenTimeDidReceiveAnswer(_:forRequestWithID:responderDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_2410A1E20, 0, 0);
}

uint64_t sub_2410A1E20()
{
  v16 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD00000000000003DLL, 0x80000002410E8980, &v15);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[6];
  v6 = v0[7];
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v13;
  *(v8 + 40) = v14;
  *(v8 + 56) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_2410A2060;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000003DLL, 0x80000002410E8980, sub_2410A8094, v8, v11);
}

uint64_t sub_2410A2060()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2410A217C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2410A8C84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A217C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_2410A21E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v27 = a1;
  v28 = a5;
  v25 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *(a2 + 16);
  v26 = *(v10 + 16);
  v26(&v23 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v24 = *(v10 + 32);
  v24(v16 + v15, v13, v9);
  v37 = sub_2410A8D04;
  v38 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2410D4CC0;
  v36 = &block_descriptor_148;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v23 = v32;
  v19 = sub_2410DF0A0();
  v20 = sub_2410DF0A0();
  v26(v13, v27, v9);
  v21 = swift_allocObject();
  v24(v21 + v15, v13, v9);
  v37 = sub_2410A8D08;
  v38 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2410D4D28;
  v36 = &block_descriptor_154;
  v22 = _Block_copy(&aBlock);

  [v23 screenTimeDidReceiveAnswer:v31 forRequestWithID:v19 responderDSID:v20 reply:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

uint64_t ATDaemonConnectionManager.payloadForSendRequest(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2410A2540, 0, 0);
}

uint64_t sub_2410A2540()
{
  v22 = v0;
  v1 = v0[3];
  v2 = SendableMessageComposeRequest.decodedRequest.getter();
  v0[5] = v2;
  v3 = *(v2 + 24);
  v0[6] = v3;
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v0[7] = v5;
  v6 = *(v2 + 48);
  v7 = qword_27E525460;
  v8 = v3;
  v9 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = sub_2410DEFE0();
  __swift_project_value_buffer(v10, qword_27E530340);
  v11 = sub_2410DEFC0();
  v12 = sub_2410DF3E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_241085208(0xD00000000000005CLL, 0x80000002410E89C0, &v21);
    _os_log_impl(&dword_24107E000, v11, v12, "%s called", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CDA690](v14, -1, -1);
    MEMORY[0x245CDA690](v13, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  [*(v15 + 16) activate];
  v16 = swift_task_alloc();
  v0[8] = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v8;
  *(v16 + 32) = v4;
  *(v16 + 40) = v5;
  *(v16 + 48) = v6;
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[9] = v18;
  v19 = type metadata accessor for SendRequestPayload();
  *v18 = v0;
  v18[1] = sub_2410A2808;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000005CLL, 0x80000002410E89C0, sub_2410A80A4, v16, v19);
}

uint64_t sub_2410A2808()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2410A29CC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2410A2924;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A2924()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 16);
  v4 = SendRequestPayload.sendableSendRequestPayload.getter();
  v5 = *(v0 + 40);

  v7 = *(v0 + 8);
  if (!v1)
  {
    v6 = v4;
  }

  return v7(v6);
}

uint64_t sub_2410A29CC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  v5 = v0[10];
  v6 = v0[1];

  return v6();
}

uint64_t ATDaemonConnectionManager.payloadForSendRequest(question:recipientGroup:clientPayload:shouldValidateSendDestinations:)(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 74) = a4;
  *(v5 + 72) = a2;
  *(v5 + 24) = a1;
  return MEMORY[0x2822009F8](sub_2410A2A78, 0, 0);
}

uint64_t sub_2410A2A78()
{
  v17 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD00000000000005CLL, 0x80000002410E89C0, &v16);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 74);
  v9 = *(v0 + 72);
  v10 = *(v0 + 24);
  [*(v6 + 16) activate];
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  v14 = type metadata accessor for SendRequestPayload();
  *v13 = v0;
  v13[1] = sub_2410A2CC8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000005CLL, 0x80000002410E89C0, sub_2410A8D00, v11, v14);
}

uint64_t sub_2410A2CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24109FDDC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2410A2DE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A2E00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v25 = a4;
  v26 = a6;
  v27 = a3;
  v28 = a5;
  v24 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F30, &qword_2410E3878);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a2 + 16);
  v23 = *(v9 + 16);
  v23(&v23 - v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v16 = *(v9 + 32);
  v16(v15 + v14, v12, v8);
  v34 = sub_2410A8964;
  v35 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2410D4CC0;
  v33 = &block_descriptor_136;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v19 = v29;
  v23(v12, v24, v8);
  v20 = swift_allocObject();
  v16(v20 + v14, v12, v8);
  v34 = sub_2410A8978;
  v35 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2410A31B8;
  v33 = &block_descriptor_142;
  v21 = _Block_copy(&aBlock);

  [v19 payloadForSendRequestWithQuestion:v27 recipientGroup:v25 clientPayload:v28 shouldValidateSendDestinations:v26 & 1 reply:v21];
  _Block_release(v21);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410A310C(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F30, &qword_2410E3878);
    return sub_2410DF330();
  }

  else
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_2410A89A0();
      swift_allocError();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F30, &qword_2410E3878);
    return sub_2410DF320();
  }
}

void sub_2410A31B8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t ATDaemonConnectionManager.knownHandles(from:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2410A3264, 0, 0);
}

uint64_t sub_2410A3264()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000013, 0x80000002410E8A20, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[3];
  v6 = v0[4];
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D859E0] + 4);
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525EE8, &qword_2410E35F0);
  *v10 = v0;
  v10[1] = sub_2410A34A0;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000013, 0x80000002410E8A20, sub_2410A80BC, v8, v11);
}

uint64_t sub_2410A34A0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2410A35B8, 0, 0);
}

void sub_2410A35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F20, &qword_2410E3868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *(a2 + 16);
  v22 = *(v6 + 16);
  v22(&v19 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v20 = *(v6 + 32);
  v20(v12 + v11, v9, v5);
  v29 = sub_2410A884C;
  v30 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2410D4CC0;
  v28 = &block_descriptor_124;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v15 = v24;
  type metadata accessor for _CommunicationHandle();
  sub_2410A88F4();
  v16 = sub_2410DF370();
  v22(v9, v23, v5);
  v17 = swift_allocObject();
  v20(v17 + v11, v9, v5);
  v29 = sub_2410A894C;
  v30 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2410A3B54;
  v28 = &block_descriptor_130;
  v18 = _Block_copy(&aBlock);

  [v15 knownHandlesFrom:v16 reply:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_2410A38FC(void *a1)
{
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530340);
  v3 = a1;
  v4 = sub_2410DEFC0();
  v5 = sub_2410DF3F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_241085208(0xD000000000000013, 0x80000002410E8A20, &v13);
    *(v6 + 12) = 2112;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24107E000, v4, v5, "%s error obtaining daemon proxy: %@", v6, 0x16u);
    sub_2410980E4(v7);
    MEMORY[0x245CDA690](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDA690](v8, -1, -1);
    MEMORY[0x245CDA690](v6, -1, -1);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_2410DF620())
  {
    sub_2410C4F0C(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F20, &qword_2410E3868);
  return sub_2410DF330();
}

uint64_t sub_2410A3B04()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F20, &qword_2410E3868);
  return sub_2410DF330();
}

uint64_t sub_2410A3B54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for _CommunicationHandle();
  sub_2410A88F4();
  v3 = sub_2410DF390();

  v2(v3);
}

void sub_2410A3BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a3;
  v23 = a4;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  v24 = *(v8 + 16);
  v24(&v21 - v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v22 = *(v8 + 32);
  v22(v14 + v13, v11, v7);
  v33 = sub_2410A8D04;
  v34 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2410D4CC0;
  v32 = &block_descriptor_190;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v17 = v28;
  v18 = sub_2410DF0A0();
  v24(v11, v25, v7);
  v19 = swift_allocObject();
  v22(v19 + v13, v11, v7);
  v33 = sub_2410A8D08;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2410D4D28;
  v32 = &block_descriptor_196;
  v20 = _Block_copy(&aBlock);

  [v17 deliverResponseWithResponse:v27 toClientWithBundleIdentifier:v18 reply:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

uint64_t sub_2410A3EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(a2 + 16);
  v20 = *(v6 + 16);
  v20(&v20 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, v9, v5);
  v28 = sub_2410A8B70;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4CC0;
  v27 = &block_descriptor_214;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v16 = v23;
  v20(v9, v21, v5);
  v17 = swift_allocObject();
  v13(v17 + v11, v9, v5);
  v28 = sub_2410A8C08;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4D28;
  v27 = &block_descriptor_220;
  v18 = _Block_copy(&aBlock);

  [v16 markAskMessageComposeRequestAsSent:v22 reply:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410A41F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a4;
  v25 = a3;
  v23 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(a2 + 16);
  v22 = *(v7 + 16);
  v22(&v21 - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v14 = *(v7 + 32);
  v14(v13 + v12, v10, v6);
  v31 = sub_2410A8D04;
  v32 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2410D4CC0;
  v30 = &block_descriptor_202;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v17 = v26;
  v22(v10, v23, v6);
  v18 = swift_allocObject();
  v14(v18 + v12, v10, v6);
  v31 = sub_2410A8D08;
  v32 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2410D4D28;
  v30 = &block_descriptor_208;
  v19 = _Block_copy(&aBlock);

  [v17 validateCurrentUserCanComposeMessageWithRequest:v25 group:v24 reply:v19];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

uint64_t ATDaemonConnectionManager.canManageContacts(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2410A451C, 0, 0);
}

uint64_t sub_2410A451C()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000017, 0x80000002410E8A40, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[2];
  v6 = v0[3];
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_2410A4748;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000017, 0x80000002410E8A40, sub_2410A80C4, v8, v11);
}

uint64_t sub_2410A4748()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2410A4880;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2410A4864;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A4880()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2(0);
}

uint64_t sub_2410A48E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F18, &qword_2410E3860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(a2 + 16);
  v20 = *(v6 + 16);
  v20(&v20 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, v9, v5);
  v28 = sub_2410A8D0C;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4CC0;
  v27 = &block_descriptor_112;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v16 = v23;
  v20(v9, v21, v5);
  v17 = swift_allocObject();
  v13(v17 + v11, v9, v5);
  v28 = sub_2410A8D10;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410A4BE0;
  v27 = &block_descriptor_118;
  v18 = _Block_copy(&aBlock);

  [v16 canManageContactsFor:v22 reply:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

void sub_2410A4BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t ATDaemonConnectionManager.canAsk(to:requiredCapabilities:)(__int16 a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_2410A4C7C, 0, 0);
}

uint64_t sub_2410A4C7C()
{
  v15 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000020, 0x80000002410E8A60, &v14);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 56);
  [*(v6 + 16) activate];
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_2410A4EB4;
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 58, 0, 0, 0xD000000000000020, 0x80000002410E8A60, sub_2410A80CC, v9, v12);
}

uint64_t sub_2410A4EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2410A4880;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2410A4FD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2410A4FEC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F18, &qword_2410E3860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(a2 + 16);
  v22 = *(v8 + 16);
  v23 = a1;
  v22(&v20 - v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v21 = *(v8 + 32);
  v21(v14 + v13, v11, v7);
  v30 = sub_2410A87B4;
  v31 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2410D4CC0;
  v29 = &block_descriptor_100;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v17 = v25;
  if (a4)
  {
    a4 = sub_2410DF370();
  }

  v22(v11, v23, v7);
  v18 = swift_allocObject();
  v21(v18 + v13, v11, v7);
  v30 = sub_2410A87C8;
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2410A4BE0;
  v29 = &block_descriptor_106;
  v19 = _Block_copy(&aBlock);

  [v17 canAskTo:v24 requiredCapabilities:a4 reply:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t ATDaemonConnectionManager.isQuestionPendingInMessages(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2410A533C, 0, 0);
}

uint64_t sub_2410A533C()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD00000000000001FLL, 0x80000002410E8A90, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[2];
  v6 = v0[3];
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_2410A5568;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD00000000000001FLL, 0x80000002410E8A90, sub_2410A80DC, v8, v11);
}

uint64_t sub_2410A5568()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2410A8C78;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2410A8D20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A5684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F18, &qword_2410E3860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(a2 + 16);
  v20 = *(v6 + 16);
  v20(&v20 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, v9, v5);
  v28 = sub_2410A8D0C;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4CC0;
  v27 = &block_descriptor_88;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v16 = v23;
  v20(v9, v21, v5);
  v17 = swift_allocObject();
  v13(v17 + v11, v9, v5);
  v28 = sub_2410A8D10;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410A4BE0;
  v27 = &block_descriptor_94;
  v18 = _Block_copy(&aBlock);

  [v16 isQuestionPendingInMessages:v22 reply:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410A597C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F18, &qword_2410E3860);
    return sub_2410DF320();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F18, &qword_2410E3860);
    return sub_2410DF330();
  }
}

uint64_t ATDaemonConnectionManager.updateMessageBubble(_:responderHandle:answerChoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2410A5A28, 0, 0);
}

uint64_t sub_2410A5A28()
{
  v16 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000034, 0x80000002410E8AB0, &v15);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  [*(v6 + 16) activate];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;
  *(v9 + 40) = v14;
  v10 = *(MEMORY[0x277D85A40] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2410A5C68;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000034, 0x80000002410E8AB0, sub_2410A80E4, v9, v12);
}

uint64_t sub_2410A5C68()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2410A8D18;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2410A8C84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2410A5D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v27 = a6;
  v24 = a1;
  v25 = a5;
  v22[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v13 = *(a2 + 16);
  v23 = *(v9 + 16);
  v23(v22 - v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  v22[0] = *(v9 + 32);
  (v22[0])(v15 + v14, v12, v8);
  v33 = sub_2410A8D04;
  v34 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2410D4CC0;
  v32 = &block_descriptor_76;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v18 = v28;
  v19 = sub_2410DF0A0();
  v23(v12, v24, v8);
  v20 = swift_allocObject();
  (v22[0])(v20 + v14, v12, v8);
  v33 = sub_2410A8D08;
  v34 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2410D4D28;
  v32 = &block_descriptor_82;
  v21 = _Block_copy(&aBlock);

  [v18 updateMessageBubble:v26 responderHandle:v19 answerChoice:v27 reply:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t ATDaemonConnectionManager.messagesComposeDidFinish(didSend:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2410A60C8, 0, 0);
}

uint64_t sub_2410A60C8()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000022, 0x80000002410E8AF0, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  [*(v6 + 16) activate];
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_2410A62F8;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000022, 0x80000002410E8AF0, sub_2410A8114, v8, v11);
}

uint64_t sub_2410A62F8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_2410A6414;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2410A8C84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410A6414()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2410A6478(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(a2 + 16);
  v20 = *(v6 + 16);
  v20(&v20 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, v9, v5);
  v28 = sub_2410A8D04;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4CC0;
  v27 = &block_descriptor;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F10, &qword_2410E3858);
  swift_dynamicCast();
  v16 = v23;
  v20(v9, v21, v5);
  v17 = swift_allocObject();
  v13(v17 + v11, v9, v5);
  v28 = sub_2410A8D08;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4D28;
  v27 = &block_descriptor_70;
  v18 = _Block_copy(&aBlock);

  [v16 messagesComposeDidFinishWithDidSend:v22 & 1 reply:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410A6778(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_2410DF320();
}

uint64_t sub_2410A67D4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
    return sub_2410DF320();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
    return sub_2410DF330();
  }
}

uint64_t sub_2410A6884(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257F8, &qword_2410E1380);
  v36 = a2;
  result = sub_2410DF640();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2410824F4(v25, v37);
      }

      else
      {
        sub_2410867A4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2410DF990();
      sub_2410DF150();
      result = sub_2410DF9F0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2410824F4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2410A6B3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257F0, &qword_2410E1378);
  v35 = a2;
  result = sub_2410DF640();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_2410DF990();
      sub_2410DF150();

      result = sub_2410DF9F0();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2410A6E80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257C0, &qword_2410E3840);
  v38 = a2;
  result = sub_2410DF640();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2410DF990();
      sub_2410DF150();
      result = sub_2410DF9F0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

_OWORD *sub_2410A7120(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2410824F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2410A718C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_2410A71D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257F8, &qword_2410E1380);
  v2 = *v0;
  v3 = sub_2410DF630();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2410867A4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2410824F4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2410A7378()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257F0, &qword_2410E1378);
  v2 = *v0;
  v3 = sub_2410DF630();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2410A74E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5257C0, &qword_2410E3840);
  v2 = *v0;
  v3 = sub_2410DF630();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2410A7648(uint64_t a1)
{
  v1 = *(a1 + 16);
  v52 = *a1;
  v53 = v1;
  v54 = *(a1 + 32);
  v55 = *(a1 + 48);
  sub_2410A8AC8(a1, v50);
  v2 = sub_2410823C4(MEMORY[0x277D84F90]);
  v3 = RequestJourney.fields.getter();
  v4 = 0;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v44 = v3;
  if (!v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = v4;
LABEL_14:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(v44 + 48) + v16);
    sub_2410867A4(*(v44 + 56) + 32 * v16, v46);
    LOBYTE(v47) = v17;
    sub_2410824F4(v46, (&v47 + 8));
    v14 = v12;
LABEL_15:
    v50[0] = v47;
    v50[1] = v48;
    v51 = v49;
    if (!v49)
    {
      break;
    }

    v18 = LOBYTE(v50[0]);
    sub_2410824F4((v50 + 8), &v47);
    v19 = 0x6E6F697473657571;
    if (v18 != 2)
    {
      v19 = 0x696F706B63656863;
    }

    v20 = 0xED00006369706F54;
    if (v18 != 2)
    {
      v20 = 0xEA0000000000746ELL;
    }

    v21 = 0xD000000000000016;
    if (!v18)
    {
      v21 = 0xD000000000000013;
    }

    v22 = 0x80000002410E6860;
    if (!v18)
    {
      v22 = 0x80000002410E6960;
    }

    if (v18 <= 1)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    if (v18 <= 1)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    sub_2410867A4(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2;
    v26 = sub_2410D81D4(v23, v24);
    v28 = *(v2 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_45;
    }

    v32 = v27;
    if (*(v2 + 24) >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v37 = v26;
      sub_2410A71D4();
      v26 = v37;
      if ((v32 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_5:
      v10 = v26;

      v2 = v45;
      v11 = (v45[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_2410824F4(v46, v11);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v4 = v14;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_2410A6884(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_2410D81D4(v23, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        sub_2410DF910();
        __break(1u);
        return;
      }

LABEL_35:
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_36:
      v2 = v45;
      v45[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v45[6] + 16 * v26);
      *v34 = v23;
      v34[1] = v24;
      sub_2410824F4(v46, (v45[7] + 32 * v26));
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v35 = v45[2];
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v30)
      {
        goto LABEL_46;
      }

      v45[2] = v36;
      v4 = v14;
      if (!v8)
      {
LABEL_7:
        if (v9 <= (v4 + 1))
        {
          v13 = (v4 + 1);
        }

        else
        {
          v13 = v9;
        }

        v14 = (v13 - 1);
        while (1)
        {
          v12 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            v8 = 0;
            v49 = 0;
            v47 = 0u;
            v48 = 0u;
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v12);
          ++v4;
          if (v8)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }
  }

  v39 = *a1;
  v38 = *(a1 + 8);

  sub_24109E8A8(v2);

  v40 = objc_allocWithZone(MEMORY[0x277CE44D8]);
  v41 = sub_2410DF0A0();
  v42 = sub_2410DF040();

  v14 = [v40 initWithEventName:v41 eventCategory:0 initData:v42];

  if (qword_27E5254C8 == -1)
  {
    goto LABEL_43;
  }

LABEL_47:
  swift_once();
LABEL_43:
  [qword_27E525E40 sendEvent_];
}

void sub_2410A7AB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v52 = *a1;
  v53 = v1;
  v54 = *(a1 + 32);
  v55 = *(a1 + 48);
  sub_2410A8650(a1, v50);
  v2 = sub_2410823C4(MEMORY[0x277D84F90]);
  v3 = ResponseJourney.fields.getter();
  v4 = 0;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v44 = v3;
  if (!v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = v4;
LABEL_14:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v12 << 6);
    v17 = *(*(v44 + 48) + v16);
    sub_2410867A4(*(v44 + 56) + 32 * v16, v46);
    LOBYTE(v47) = v17;
    sub_2410824F4(v46, (&v47 + 8));
    v14 = v12;
LABEL_15:
    v50[0] = v47;
    v50[1] = v48;
    v51 = v49;
    if (!v49)
    {
      break;
    }

    v18 = LOBYTE(v50[0]);
    sub_2410824F4((v50 + 8), &v47);
    v19 = 0x6E6F697473657571;
    if (v18 != 2)
    {
      v19 = 0x696F706B63656863;
    }

    v20 = 0xED00006369706F54;
    if (v18 != 2)
    {
      v20 = 0xEC0000003456746ELL;
    }

    v21 = 0xD000000000000016;
    if (!v18)
    {
      v21 = 0xD000000000000013;
    }

    v22 = 0x80000002410E6860;
    if (!v18)
    {
      v22 = 0x80000002410E6960;
    }

    if (v18 <= 1)
    {
      v23 = v21;
    }

    else
    {
      v23 = v19;
    }

    if (v18 <= 1)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    sub_2410867A4(&v47, v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2;
    v26 = sub_2410D81D4(v23, v24);
    v28 = *(v2 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_45;
    }

    v32 = v27;
    if (*(v2 + 24) >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v37 = v26;
      sub_2410A71D4();
      v26 = v37;
      if ((v32 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_5:
      v10 = v26;

      v2 = v45;
      v11 = (v45[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      sub_2410824F4(v46, v11);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v4 = v14;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_2410A6884(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_2410D81D4(v23, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        sub_2410DF910();
        __break(1u);
        return;
      }

LABEL_35:
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_36:
      v2 = v45;
      v45[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v45[6] + 16 * v26);
      *v34 = v23;
      v34[1] = v24;
      sub_2410824F4(v46, (v45[7] + 32 * v26));
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v35 = v45[2];
      v30 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v30)
      {
        goto LABEL_46;
      }

      v45[2] = v36;
      v4 = v14;
      if (!v8)
      {
LABEL_7:
        if (v9 <= (v4 + 1))
        {
          v13 = (v4 + 1);
        }

        else
        {
          v13 = v9;
        }

        v14 = (v13 - 1);
        while (1)
        {
          v12 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            v8 = 0;
            v49 = 0;
            v47 = 0u;
            v48 = 0u;
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v12);
          ++v4;
          if (v8)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }
  }

  v39 = *a1;
  v38 = *(a1 + 8);

  sub_24109E8A8(v2);

  v40 = objc_allocWithZone(MEMORY[0x277CE44D8]);
  v41 = sub_2410DF0A0();
  v42 = sub_2410DF040();

  v14 = [v40 initWithEventName:v41 eventCategory:0 initData:v42];

  if (qword_27E5254C8 == -1)
  {
    goto LABEL_43;
  }

LABEL_47:
  swift_once();
LABEL_43:
  [qword_27E525E40 sendEvent_];
}

uint64_t sub_2410A7F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v5 = sub_2410DEFE0();
  __swift_project_value_buffer(v5, qword_27E530340);
  v6 = sub_2410DEFC0();
  v7 = sub_2410DF400();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24107E000, v6, v7, "Daemon connection manager initialized", v8, 2u);
    MEMORY[0x245CDA690](v8, -1, -1);
  }

  v9 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v10 = sub_2410DF0A0();
  v11 = [v9 initWithMachServiceName:v10 options:0];

  *(a3 + 16) = v11;
  *(a3 + 24) = a2;
  swift_unknownObjectRetain();
  sub_2410A02E0();
  return a3;
}

unint64_t sub_2410A8124()
{
  result = qword_27E525EF0;
  if (!qword_27E525EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E525EF0);
  }

  return result;
}

uint64_t dispatch thunk of ATDaemonConnectionManagerProtocol.markAskMessageComposeRequestAsSent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2410A82A0;

  return v11(a1, a2, a3);
}

uint64_t sub_2410A82A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ATDaemonConnectionManagerProtocol.validateCurrentUserCanComposeMessage(request:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2410A8C90;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ATDaemonConnectionManagerProtocol.deliverResponse(response:toClientWithBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2410A8C90;

  return v15(a1, a2, a3, a4, a5);
}