void MinuteForecastStringBuilder.buildShortString(from:referenceDate:)()
{
  OUTLINED_FUNCTION_21();
  v40 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CF0, &unk_23B514EB0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v41 = type metadata accessor for MinuteCondition();
  v13 = OUTLINED_FUNCTION_6(v41);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_18_7();
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27();
  v28 = v27 - v26;
  sub_23B4299F4(v4, v2, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_51(v2, 1, v20);
  if (v29)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_51(v2, 1, v20);
    if (!v29)
    {
      sub_23B398890(v2, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v23 + 32))(v28, v2, v20);
  }

  if (!OUTLINED_FUNCTION_10_10())
  {
    goto LABEL_10;
  }

  Forecast<>.conditions.getter();
  OUTLINED_FUNCTION_15_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_18();
  *(v31 - 16) = v28;
  OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_19_6(v32);
  sub_23B429B18(&v42);
  if (!v6)
  {

    v33 = v42;
    OUTLINED_FUNCTION_0_22();
    sub_23B422298(v33, v34, type metadata accessor for MinuteCondition, v12);

    v35 = v41;
    OUTLINED_FUNCTION_51(v12, 1, v41);
    if (v29)
    {
      sub_23B398890(v12, &qword_27E132CF0, &unk_23B514EB0);
    }

    else
    {
      OUTLINED_FUNCTION_4_15();
      sub_23B429C98(v12, v1, v36);
      sub_23B426518(v1 + *(v35 + 32));
      sub_23B429CF8(v1, v33);
    }

LABEL_10:
    v37 = *(v23 + 8);
    v38 = OUTLINED_FUNCTION_27_5();
    v39(v38);
    OUTLINED_FUNCTION_20();
    return;
  }

  __break(1u);
}

uint64_t sub_23B426518(uint64_t a1)
{
  v2 = *(type metadata accessor for PrecipitationShift() + 24);
  result = 0;
  switch(*(a1 + v2))
  {
    case 5:
    case 6:
    case 8:
      if (qword_280B43260 != -1)
      {
        goto LABEL_50;
      }

      return sub_23B50AAD4();
    case 7:
    case 0xC:
    case 0x11:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 9:
    case 0xE:
    case 0x12:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0xA:
    case 0xB:
    case 0xD:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0xF:
    case 0x10:
    case 0x13:
    case 0x16:
    case 0x17:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x14:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x15:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x2D:
    case 0x2E:
    case 0x30:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x2F:
    case 0x34:
    case 0x39:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x31:
    case 0x36:
    case 0x3A:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x32:
    case 0x33:
    case 0x35:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x37:
    case 0x38:
    case 0x3B:
    case 0x3E:
    case 0x3F:
    case 0x43:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x3C:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x3D:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x55:
    case 0x56:
    case 0x58:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x57:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x59:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x5A:
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x5F:
    case 0x60:
    case 0x62:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x61:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x63:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

      goto LABEL_50;
    case 0x64:
      return result;
    default:
      if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

LABEL_50:
      swift_once();
      return sub_23B50AAD4();
  }
}

void MinuteForecastStringBuilder.buildIntensityString(from:referenceDate:)()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132CF8, &unk_23B514ED0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_5();
  v11 = type metadata accessor for MinuteSummary();
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v34 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31_4();
  v21 = sub_23B50AD24();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  sub_23B4299F4(v4, v2, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_51(v2, 1, v21);
  if (v27)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_51(v2, 1, v21);
    if (!v27)
    {
      sub_23B398890(v2, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v24 + 32))(v1, v2, v21);
  }

  if (!OUTLINED_FUNCTION_10_10())
  {
    goto LABEL_13;
  }

  v28 = Forecast<>.summaries.getter();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_18();
  *(v29 - 16) = v1;
  OUTLINED_FUNCTION_22_5();
  v35[0] = v30;

  sub_23B429BF0(v35);
  if (!v6)
  {

    v31 = v35[0];
    OUTLINED_FUNCTION_5_12();
    sub_23B422298(v31, v32, type metadata accessor for MinuteSummary, v0);

    OUTLINED_FUNCTION_51(v0, 1, v11);
    if (v27)
    {
      sub_23B398890(v0, &qword_27E132CF8, &unk_23B514ED0);
    }

    else
    {
      sub_23B429C98(v0, v34, type metadata accessor for MinuteSummary);
      if (*(v34 + *(v11 + 36) + 8) != 3)
      {
        LOBYTE(v35[0]) = *(v34 + *(v11 + 36) + 8);
        static MinuteForecastStringBuilder.buildIntensityString(for:)(v35);
      }

      OUTLINED_FUNCTION_5_12();
      sub_23B429CF8(v34, v33);
    }

LABEL_13:
    (*(v24 + 8))(v1, v21);
    OUTLINED_FUNCTION_20();
    return;
  }

  __break(1u);
}

void sub_23B42728C()
{
  OUTLINED_FUNCTION_107();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_106_0();
  v10 = sub_23B50AD24();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v16 = OUTLINED_FUNCTION_11_5();
  v17 = v3(v16);
  sub_23B4299F4(v5 + *(v17 + 20), v1, &qword_27E131E18, &unk_23B50F710);
  if (OUTLINED_FUNCTION_14_10() == 1)
  {
    v18 = OUTLINED_FUNCTION_29_5(v13);
    v19(v18);
    if (OUTLINED_FUNCTION_14_10() != 1)
    {
      sub_23B398890(v1, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_24_5(v13);
    v21(v20);
  }

  sub_23B42B228();
  sub_23B50D124();
  (*(v13 + 8))(v0, v10);
  OUTLINED_FUNCTION_105();
}

uint64_t static MinuteForecastStringBuilder.buildIntensityString(for:)(_BYTE *a1)
{
  if (!*a1)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_280B43260 != -1)
  {
LABEL_9:
    OUTLINED_FUNCTION_0_11();
  }

LABEL_8:
  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

uint64_t sub_23B427554(uint64_t a1, uint64_t a2, char *a3)
{
  v89 = a3;
  v92 = sub_23B50AAC4();
  v94 = *(v92 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  v87 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = sub_23B50AD24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  v22 = sub_23B50AE84();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50ADF4();
  v93 = a1;
  sub_23B4299F4(a1, v14, &qword_27E131E18, &unk_23B50F710);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B398890(v14, &qword_27E131E18, &unk_23B50F710);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v93;
    v32 = v26;
  }

  else
  {
    v84 = v22;
    v85 = v23;
    v80 = *(v16 + 32);
    v81 = v15;
    v72 = v16 + 32;
    v80(v21, v14, v15);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D08, &unk_23B514F20);
    v34 = sub_23B50AE64();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v77 = *(v35 + 72);
    v78 = v33;
    v37 = swift_allocObject();
    v86 = xmmword_23B50ED30;
    *(v37 + 16) = xmmword_23B50ED30;
    v38 = *MEMORY[0x277CC99A0];
    v39 = *(v35 + 104);
    v73 = v36;
    v76 = v38;
    v79 = v34;
    v75 = v39;
    v39(v37 + v36);
    sub_23B4E74B0(v37);
    v88 = v21;
    v89 = v26;
    sub_23B50AE14();

    v40 = sub_23B50AAB4();
    v42 = v41;
    v43 = v94 + 8;
    v74 = *(v94 + 8);
    v74(v8, v92);
    if (v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = v40;
    }

    v45 = MEMORY[0x277D83B88];
    v94 = v43;
    if (v44 < 1)
    {
      v82 = 0;
      v83 = 0;
    }

    else
    {
      if (qword_280B43260 != -1)
      {
        swift_once();
      }

      sub_23B50AAD4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
      v46 = swift_allocObject();
      *(v46 + 16) = v86;
      *(v46 + 56) = v45;
      *(v46 + 64) = MEMORY[0x277D83C10];
      *(v46 + 32) = v44;
      v82 = sub_23B50D154();
      v83 = v47;
    }

    v48 = v81;
    v49 = type metadata accessor for PrecipitationShift();
    v31 = v93;
    v50 = v90;
    sub_23B4299F4(v93 + *(v49 + 20), v90, &qword_27E131E18, &unk_23B50F710);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v48);
    v22 = v84;
    if (EnumTagSinglePayload == 1)
    {
      (*(v16 + 8))(v88, v48);
      sub_23B398890(v50, &qword_27E131E18, &unk_23B50F710);
      v27 = 0;
      v28 = 0;
      v23 = v85;
      v32 = v89;
      v29 = v82;
      v30 = v83;
    }

    else
    {
      v81 = v16;
      v80(v91, v50, v48);
      v52 = v73;
      v53 = swift_allocObject();
      *(v53 + 16) = v86;
      v75(v53 + v52, v76, v79);
      sub_23B4E74B0(v53);
      v54 = v87;
      v32 = v89;
      sub_23B50AE14();

      v55 = sub_23B50AAB4();
      v57 = v56;
      v74(v54, v92);
      if (v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = v55;
      }

      if (v58 < 1)
      {
        v60 = 0;
        v28 = 0;
        v23 = v85;
        v62 = v83;
      }

      else
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }

        sub_23B50AAD4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
        v59 = swift_allocObject();
        *(v59 + 16) = v86;
        *(v59 + 56) = MEMORY[0x277D83B88];
        *(v59 + 64) = MEMORY[0x277D83C10];
        *(v59 + 32) = v58;
        v60 = sub_23B50D154();
        v28 = v61;

        v23 = v85;
        v62 = v83;
        v31 = v93;
      }

      v63 = *(v81 + 8);
      v63(v91, v48);
      v63(v88, v48);
      v29 = v82;
      v27 = v60;
      v30 = v62;
    }
  }

  switch(*(v31 + *(type metadata accessor for PrecipitationShift() + 24)))
  {
    case 1:
    case 2:
    case 3:
    case 4:

      if (qword_280B43260 != -1)
      {
        goto LABEL_211;
      }

      goto LABEL_171;
    case 5:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 6:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 7:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 8:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 9:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0xA:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0xB:
    case 0x1B:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0xC:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0xD:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0xE:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0xF:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x10:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x11:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x12:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x13:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x14:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x15:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x16:
    case 0x17:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x18:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x19:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x1A:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x2D:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x2E:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x2F:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x30:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x31:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x32:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x33:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x34:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x35:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x36:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x37:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x38:
    case 0x43:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x39:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x3A:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x3B:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x3C:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x3D:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x3E:
    case 0x3F:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x40:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x41:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x42:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x50:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x55:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x56:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x57:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x58:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x59:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x5A:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x5F:

      if (qword_280B43260 == -1)
      {
        goto LABEL_171;
      }

      goto LABEL_211;
    case 0x60:

      if (!v30)
      {
        goto LABEL_208;
      }

      v64 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_207;
      }

      goto LABEL_233;
    case 0x61:

      if (!v30)
      {
LABEL_208:
        (*(v23 + 8))(v32, v22);
        goto LABEL_209;
      }

      v64 = v32;
      if (qword_280B43260 != -1)
      {
LABEL_233:
        swift_once();
      }

LABEL_207:
      sub_23B50AAD4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_23B50ED30;
      *(v70 + 56) = MEMORY[0x277D837D0];
      *(v70 + 64) = sub_23B3FD2D0();
      *(v70 + 32) = v29;
      *(v70 + 40) = v30;
      v66 = sub_23B50D154();

      (*(v23 + 8))(v64, v22);
      break;
    case 0x62:
      if (!v30 || !v28)
      {
        goto LABEL_203;
      }

      v65 = v27;
      v89 = v32;
      if (qword_280B43260 == -1)
      {
        goto LABEL_202;
      }

      goto LABEL_217;
    case 0x63:
      if (v30 && v28)
      {
        v65 = v27;
        v89 = v32;
        if (qword_280B43260 != -1)
        {
LABEL_217:
          swift_once();
        }

LABEL_202:
        sub_23B50AAD4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_23B510080;
        v68 = MEMORY[0x277D837D0];
        *(v67 + 56) = MEMORY[0x277D837D0];
        v69 = sub_23B3FD2D0();
        *(v67 + 32) = v29;
        *(v67 + 40) = v30;
        *(v67 + 96) = v68;
        *(v67 + 104) = v69;
        *(v67 + 64) = v69;
        *(v67 + 72) = v65;
        *(v67 + 80) = v28;
        v66 = sub_23B50D154();

        (*(v23 + 8))(v89, v22);
      }

      else
      {
LABEL_203:
        (*(v23 + 8))(v32, v22);
LABEL_204:

LABEL_209:
        v66 = 0;
      }

      break;
    case 0x64:
      (*(v23 + 8))(v32, v22);

      goto LABEL_204;
    default:

      if (qword_280B43260 != -1)
      {
LABEL_211:
        swift_once();
      }

LABEL_171:
      v66 = sub_23B50AAD4();
      (*(v23 + 8))(v32, v22);
      return v66;
  }

  return v66;
}

uint64_t sub_23B4299F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B429A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B429AC4()
{
  v1 = *(v0 + 16);
  sub_23B423BA8();
  return v2 & 1;
}

uint64_t sub_23B429AE4()
{
  v1 = *(v0 + 16);
  sub_23B42728C();
  return v2 & 1;
}

uint64_t sub_23B429B18(uint64_t *a1)
{
  v2 = type metadata accessor for MinuteCondition();
  OUTLINED_FUNCTION_3(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23B42B200(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  result = sub_23B429DA0(v9);
  *a1 = v5;
  return result;
}

uint64_t sub_23B429BBC()
{
  v1 = *(v0 + 16);
  sub_23B42728C();
  return v2 & 1;
}

uint64_t sub_23B429BF0(uint64_t *a1)
{
  v2 = *(type metadata accessor for MinuteSummary() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23B42B214(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_23B429F6C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_23B429C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B429CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_23B42A13C()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v39 = v11(0);
  v12 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v31[-v16];
  MEMORY[0x28223BE20](v18);
  v21 = &v31[-v20];
  v33 = v8;
  if (v6 != v8)
  {
    v22 = *v4;
    v23 = *(v19 + 72);
    v24 = *v4 + v23 * (v6 - 1);
    v25 = -v23;
    v26 = v10 - v6;
    v38 = v22;
    v32 = v23;
    v27 = v22 + v23 * v6;
    while (2)
    {
      v36 = v24;
      v37 = v6;
      v34 = v27;
      v35 = v26;
      v28 = v26;
      do
      {
        sub_23B42B280(v27, v21, v40);
        sub_23B42B280(v24, v17, v40);
        v29 = sub_23B50ACB4();
        sub_23B429CF8(v17, v1);
        sub_23B429CF8(v21, v1);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v38)
        {
          __break(1u);
          return;
        }

        sub_23B429C98(v27, v14, v1);
        swift_arrayInitWithTakeFrontToBack();
        sub_23B429C98(v14, v24, v1);
        v24 += v25;
        v27 += v25;
      }

      while (!__CFADD__(v28++, 1));
      v6 = v37 + 1;
      v24 = v36 + v32;
      v26 = v35 - 1;
      v27 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_105();
}

void sub_23B42A34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_107();
  v23 = v22;
  v156 = v24;
  v153 = v21;
  v26 = v25;
  v28 = v27;
  v139 = v29;
  v148 = a21;
  v149 = v30;
  v155 = v31(0);
  v32 = OUTLINED_FUNCTION_5(v155);
  v150 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12();
  v142 = v36;
  MEMORY[0x28223BE20](v37);
  v154 = &v135 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v135 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v135 - v43;
  v152 = v28;
  v45 = v28[1];
  if (v45 < 1)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_98:
    v155 = *v139;
    if (!v155)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v127 = (v47 + 16);
      v128 = *(v47 + 16);
      while (v128 >= 2)
      {
        if (!*v152)
        {
          goto LABEL_136;
        }

        v129 = v47;
        v130 = (v47 + 16 * v128);
        v131 = *v130;
        v132 = &v127[2 * v128];
        v47 = v132[1];
        v133 = v153;
        sub_23B42AB84(*v152 + *(v150 + 72) * *v130, *v152 + *(v150 + 72) * *v132, *v152 + *(v150 + 72) * v47, v155, v149, v148, v156, v23, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
        v153 = v133;
        if (v133)
        {
          break;
        }

        if (v47 < v131)
        {
          goto LABEL_124;
        }

        if (v128 - 2 >= *v127)
        {
          goto LABEL_125;
        }

        *v130 = v131;
        v130[1] = v47;
        v134 = *v127 - v128;
        if (*v127 < v128)
        {
          goto LABEL_126;
        }

        v128 = *v127 - 1;
        memmove(v132, v132 + 2, 16 * v134);
        *v127 = v128;
        v47 = v129;
      }

LABEL_108:

      OUTLINED_FUNCTION_105();
      return;
    }

LABEL_133:
    v47 = sub_23B42B010(v47);
    goto LABEL_100;
  }

  v137 = v26;
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  v143 = v41;
  v144 = &v135 - v43;
  while (1)
  {
    v48 = v46;
    v49 = v46 + 1;
    if (v46 + 1 < v45)
    {
      v50 = *v152;
      v151 = *(v150 + 72);
      v51 = v46;
      v52 = v50 + v151 * v49;
      v147 = v45;
      sub_23B42B280(v52, v44, v156);
      sub_23B42B280(v50 + v151 * v51, v41, v156);
      OUTLINED_FUNCTION_27_5();
      LODWORD(v146) = sub_23B50ACB4();
      sub_23B429CF8(v41, v23);
      sub_23B429CF8(v44, v23);
      v53 = v147;
      v138 = v51;
      v54 = v51 + 2;
      v55 = v50 + v151 * (v51 + 2);
      while (1)
      {
        v56 = v54;
        if (++v49 >= v53)
        {
          break;
        }

        sub_23B42B280(v55, v44, v156);
        sub_23B42B280(v52, v41, v156);
        OUTLINED_FUNCTION_27_5();
        v57 = sub_23B50ACB4() & 1;
        sub_23B429CF8(v41, v23);
        sub_23B429CF8(v44, v23);
        v55 += v151;
        v52 += v151;
        v54 = v56 + 1;
        v53 = v147;
        if ((v146 & 1) != v57)
        {
          goto LABEL_9;
        }
      }

      v49 = v53;
LABEL_9:
      if ((v146 & 1) == 0)
      {
        goto LABEL_29;
      }

      v48 = v138;
      if (v49 < v138)
      {
        goto LABEL_130;
      }

      if (v138 < v49)
      {
        v136 = v47;
        if (v53 >= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = v53;
        }

        v59 = v151 * (v58 - 1);
        v60 = v151 * v58;
        v61 = v138 * v151;
        v147 = v49;
        v62 = v49;
        v63 = v138;
        do
        {
          if (v63 != --v62)
          {
            v146 = v62;
            v64 = *v152;
            if (!*v152)
            {
              goto LABEL_137;
            }

            sub_23B429C98(v64 + v61, v142, v23);
            v65 = v61 < v59 || v64 + v61 >= (v64 + v60);
            if (v65)
            {
              OUTLINED_FUNCTION_23_6();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v59)
            {
              OUTLINED_FUNCTION_23_6();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_23B429C98(v142, v64 + v59, v23);
            v62 = v146;
          }

          ++v63;
          v59 -= v151;
          v60 -= v151;
          v61 += v151;
        }

        while (v63 < v62);
        v47 = v136;
        v49 = v147;
LABEL_29:
        v48 = v138;
      }
    }

    v66 = v152[1];
    if (v49 < v66)
    {
      if (__OFSUB__(v49, v48))
      {
        goto LABEL_129;
      }

      if (v49 - v48 < v137)
      {
        break;
      }
    }

LABEL_46:
    if (v49 < v48)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v49;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B4F57DC(0, *(v47 + 16) + 1, 1, v47);
      v47 = v125;
    }

    v79 = *(v47 + 16);
    v78 = *(v47 + 24);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      sub_23B4F57DC(v78 > 1, v79 + 1, 1, v47);
      v47 = v126;
    }

    *(v47 + 16) = v80;
    v81 = v47 + 32;
    v82 = (v47 + 32 + 16 * v79);
    v83 = v147;
    *v82 = v48;
    v82[1] = v83;
    v151 = *v139;
    if (!v151)
    {
      goto LABEL_138;
    }

    if (v79)
    {
      while (1)
      {
        v84 = v80 - 1;
        v85 = (v81 + 16 * (v80 - 1));
        v86 = (v47 + 16 * v80);
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v87 = *(v47 + 32);
          v88 = *(v47 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_66:
          if (v90)
          {
            goto LABEL_115;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_118;
          }

          v106 = v85[1];
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_123;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v80 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v80 < 2)
        {
          goto LABEL_117;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_81:
        if (v105)
        {
          goto LABEL_120;
        }

        v111 = *v85;
        v110 = v85[1];
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_122;
        }

        if (v112 < v104)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v84 - 1 >= v80)
        {
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

        if (!*v152)
        {
          goto LABEL_135;
        }

        v116 = (v81 + 16 * (v84 - 1));
        v117 = *v116;
        v118 = v81;
        v119 = v84;
        v120 = (v81 + 16 * v84);
        v121 = v120[1];
        v122 = v153;
        sub_23B42AB84(*v152 + *(v150 + 72) * *v116, *v152 + *(v150 + 72) * *v120, *v152 + *(v150 + 72) * v121, v151, v149, v148, v156, v23, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
        v153 = v122;
        if (v122)
        {
          goto LABEL_108;
        }

        if (v121 < v117)
        {
          goto LABEL_110;
        }

        v123 = v47;
        v47 = *(v47 + 16);
        if (v119 > v47)
        {
          goto LABEL_111;
        }

        *v116 = v117;
        v116[1] = v121;
        if (v119 >= v47)
        {
          goto LABEL_112;
        }

        v80 = v47 - 1;
        memmove(v120, v120 + 2, 16 * (v47 - 1 - v119));
        *(v123 + 16) = v47 - 1;
        v124 = v47 > 2;
        v47 = v123;
        v81 = v118;
        v41 = v143;
        v44 = v144;
        if (!v124)
        {
          goto LABEL_95;
        }
      }

      v91 = v81 + 16 * v80;
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_113;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_114;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_116;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = v85[1];
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_127;
        }

        if (v89 < v115)
        {
          v84 = v80 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v45 = v152[1];
    v46 = v147;
    if (v147 >= v45)
    {
      goto LABEL_98;
    }
  }

  v67 = v48 + v137;
  if (__OFADD__(v48, v137))
  {
    goto LABEL_131;
  }

  if (v67 >= v66)
  {
    v67 = v152[1];
  }

  if (v67 < v48)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v49 == v67)
  {
    goto LABEL_46;
  }

  v136 = v47;
  v68 = *v152;
  v69 = *(v150 + 72);
  v70 = *v152 + v69 * (v49 - 1);
  v71 = -v69;
  v138 = v48;
  v72 = v48 - v49;
  v140 = v69;
  v141 = v67;
  v73 = v68 + v49 * v69;
LABEL_39:
  v146 = v72;
  v147 = v49;
  v145 = v73;
  v151 = v70;
  v74 = v70;
  while (1)
  {
    sub_23B42B280(v73, v44, v156);
    sub_23B42B280(v74, v41, v156);
    OUTLINED_FUNCTION_27_5();
    v75 = sub_23B50ACB4();
    sub_23B429CF8(v41, v23);
    sub_23B429CF8(v44, v23);
    if ((v75 & 1) == 0)
    {
LABEL_44:
      v49 = v147 + 1;
      v70 = v151 + v140;
      v72 = v146 - 1;
      v73 = v145 + v140;
      if (v147 + 1 == v141)
      {
        v49 = v141;
        v47 = v136;
        v48 = v138;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v68)
    {
      break;
    }

    v76 = v154;
    sub_23B429C98(v73, v154, v23);
    swift_arrayInitWithTakeFrontToBack();
    sub_23B429C98(v76, v74, v23);
    v74 += v71;
    v73 += v71;
    v65 = __CFADD__(v72++, 1);
    if (v65)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_23B42AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_107();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v96 = v28;
  v97 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v98 = v35(0);
  v36 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v38 = v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = v88 - v41;
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v45 = v32 - v34;
  v46 = v32 - v34 == 0x8000000000000000 && v44 == -1;
  if (v46)
  {
    goto LABEL_64;
  }

  v47 = v32;
  v48 = v97 - v32;
  if (v97 - v32 == 0x8000000000000000 && v44 == -1)
  {
    goto LABEL_65;
  }

  v50 = v34;
  v88[1] = v20;
  v51 = v45 / v44;
  a10 = v34;
  v100 = v30;
  v52 = v48 / v44;
  v95 = v50;
  if (v45 / v44 < v48 / v44)
  {
    v53 = v47;
    v96(v40);
    v54 = v95;
    v55 = v53;
    v96 = (v30 + v51 * v44);
    v99 = v96;
    while (1)
    {
      if (v30 >= v96 || v55 >= v97)
      {
        goto LABEL_62;
      }

      v57 = v54;
      v58 = v55;
      sub_23B42B280(v55, v42, v26);
      sub_23B42B280(v30, v38, v26);
      v59 = sub_23B50ACB4();
      sub_23B429CF8(v38, v24);
      sub_23B429CF8(v42, v24);
      if (v59)
      {
        v60 = v57;
        if (v57 >= v58 && v57 < v58 + v44)
        {
          if (v57 != v58)
          {
            OUTLINED_FUNCTION_12_7();
            swift_arrayInitWithTakeBackToFront();
LABEL_31:
            v60 = v57;
          }

          v55 = v58 + v44;
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_12_7();
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_31;
      }

      v60 = v57;
      if (v57 < v30 || v57 >= v30 + v44)
      {
        break;
      }

      if (v57 != v30)
      {
        OUTLINED_FUNCTION_12_7();
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_35;
      }

LABEL_36:
      v100 = v30 + v44;
      v30 += v44;
      v55 = v58;
LABEL_37:
      v54 = v60 + v44;
      a10 = v54;
    }

    OUTLINED_FUNCTION_12_7();
    swift_arrayInitWithTakeFrontToBack();
LABEL_35:
    v60 = v57;
    goto LABEL_36;
  }

  v63 = v26;
  v94 = v24;
  v64 = v47;
  (v96)(v47, v48 / v44, v30, v40);
  v65 = v64;
  v66 = v30 + v52 * v44;
  v67 = -v44;
  v68 = v66;
  v69 = v97;
  v91 = v67;
  v92 = v30;
  v90 = v26;
LABEL_39:
  v70 = v65 + v67;
  v71 = v69;
  v72 = v68;
  v93 = v65 + v67;
  v96 = v68;
  v97 = v65;
  while (1)
  {
    if (v66 <= v30)
    {
      a10 = v65;
      v99 = v72;
      goto LABEL_61;
    }

    if (v65 <= v95)
    {
      break;
    }

    v89 = v72;
    v69 = v71 + v67;
    v73 = v66 + v67;
    v74 = v63;
    v75 = v63;
    v76 = v66;
    sub_23B42B280(v66 + v67, v42, v75);
    sub_23B42B280(v70, v38, v74);
    v77 = sub_23B50ACB4();
    v78 = v38;
    v79 = v38;
    v80 = v94;
    sub_23B429CF8(v79, v94);
    sub_23B429CF8(v42, v80);
    if (v77)
    {
      v82 = v76;
      if (v71 < v97 || v69 >= v97)
      {
        v84 = v93;
        OUTLINED_FUNCTION_12_7();
        swift_arrayInitWithTakeFrontToBack();
        v65 = v84;
        v68 = v89;
        v63 = v90;
        v38 = v78;
        v67 = v91;
        v30 = v92;
        v66 = v82;
      }

      else
      {
        v63 = v90;
        v68 = v89;
        v46 = v71 == v97;
        v85 = v93;
        v65 = v93;
        v38 = v78;
        v67 = v91;
        v30 = v92;
        v66 = v82;
        if (!v46)
        {
          OUTLINED_FUNCTION_12_7();
          v87 = v86;
          swift_arrayInitWithTakeBackToFront();
          v66 = v82;
          v65 = v85;
          v68 = v87;
        }
      }

      goto LABEL_39;
    }

    if (v71 < v76 || v69 >= v76)
    {
      OUTLINED_FUNCTION_12_7();
      swift_arrayInitWithTakeFrontToBack();
      v71 = v69;
      v66 = v73;
      v72 = v73;
      v63 = v90;
      v67 = v91;
      v38 = v78;
      v68 = v96;
      v65 = v97;
      v30 = v92;
      v70 = v93;
    }

    else
    {
      v72 = v73;
      v46 = v76 == v71;
      v71 = v69;
      v66 = v73;
      v63 = v90;
      v67 = v91;
      v38 = v78;
      v68 = v96;
      v65 = v97;
      v30 = v92;
      v70 = v93;
      if (!v46)
      {
        OUTLINED_FUNCTION_12_7();
        swift_arrayInitWithTakeBackToFront();
        v68 = v96;
        v65 = v97;
        v71 = v69;
        v66 = v73;
        v72 = v73;
      }
    }
  }

  a10 = v65;
  v99 = v68;
LABEL_61:
  v24 = v94;
LABEL_62:
  sub_23B42B024(&a10, &v100, &v99, v24);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B42B024(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_6(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_23B42B100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D00, &unk_23B514F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_23B42B228()
{
  result = qword_280B43110;
  if (!qword_280B43110)
  {
    sub_23B50AD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43110);
  }

  return result;
}

uint64_t sub_23B42B280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t WeatherCondition.accessibilityDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_103;
      }

      goto LABEL_80;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_47;
      }

      goto LABEL_93;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_98;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_47;
      }

LABEL_93:
      OUTLINED_FUNCTION_0_11();
LABEL_47:
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_17_5();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_12_8(0x7264u);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_16_4(0x6C66u);
      break;
    case 8:
      if (qword_280B43260 == -1)
      {
        goto LABEL_61;
      }

      goto LABEL_97;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0xA:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_18_8();
      break;
    case 0xB:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0xC:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0xD:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0xE:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_19_7(25960);
      break;
    case 0xF:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_19_7(25960);
      break;
    case 0x10:
      if (qword_280B43260 == -1)
      {
        goto LABEL_61;
      }

LABEL_97:
      OUTLINED_FUNCTION_0_11();
LABEL_61:
      OUTLINED_FUNCTION_3_20();
      break;
    case 0x11:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_10_11(0x7568u);
      break;
    case 0x12:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0x13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x14:
      if (qword_280B43260 == -1)
      {
        goto LABEL_49;
      }

      goto LABEL_94;
    case 0x15:
      if (qword_280B43260 == -1)
      {
        goto LABEL_49;
      }

LABEL_94:
      OUTLINED_FUNCTION_0_11();
LABEL_49:
      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_11_6();
      break;
    case 0x16:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

      goto LABEL_103;
    case 0x17:
      if (qword_280B43260 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    case 0x18:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x19:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x1A:
      if (qword_280B43260 == -1)
      {
        goto LABEL_80;
      }

LABEL_103:
      OUTLINED_FUNCTION_0_11();
LABEL_80:
      OUTLINED_FUNCTION_5_0();
      break;
    case 0x1B:
      if (qword_280B43260 != -1)
      {
LABEL_86:
        OUTLINED_FUNCTION_0_11();
      }

LABEL_22:
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_8();
      break;
    case 0x1C:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_87;
    case 0x1D:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_13_6(0x6873206E7573);
      break;
    case 0x1E:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_9_10(0x6874u);
      break;
    case 0x1F:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

LABEL_87:
      OUTLINED_FUNCTION_0_11();
LABEL_26:
      OUTLINED_FUNCTION_1_14();
      break;
    case 0x20:
      if (qword_280B43260 != -1)
      {
LABEL_98:
        OUTLINED_FUNCTION_0_11();
      }

LABEL_66:
      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_14_11();
      break;
    case 0x21:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_3_20();
      OUTLINED_FUNCTION_7_19();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11();
      }

      OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_15_6(0x6C62u);
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::WeatherCondition_optional __swiftcall WeatherCondition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D844();

  v5 = 0;
  v6 = 16;
  switch(v3)
  {
    case 0:
      goto LABEL_26;
    case 1:
      v5 = 1;
      goto LABEL_26;
    case 2:
      v5 = 2;
      goto LABEL_26;
    case 3:
      v5 = 3;
      goto LABEL_26;
    case 4:
      v5 = 4;
      goto LABEL_26;
    case 5:
      v5 = 5;
      goto LABEL_26;
    case 6:
      v5 = 6;
      goto LABEL_26;
    case 7:
      v5 = 7;
      goto LABEL_26;
    case 8:
      v5 = 8;
      goto LABEL_26;
    case 9:
      v5 = 9;
      goto LABEL_26;
    case 10:
      v5 = 10;
      goto LABEL_26;
    case 11:
      v5 = 11;
      goto LABEL_26;
    case 12:
      v5 = 12;
      goto LABEL_26;
    case 13:
      v5 = 13;
      goto LABEL_26;
    case 14:
      v5 = 14;
      goto LABEL_26;
    case 15:
      v5 = 15;
LABEL_26:
      v6 = v5;
      break;
    case 16:
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    default:
      v6 = 34;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_23B42BFB4()
{
  result = qword_27E132D10;
  if (!qword_27E132D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132D18, &qword_23B514F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132D10);
  }

  return result;
}

unint64_t sub_23B42C01C()
{
  result = qword_280B42690;
  if (!qword_280B42690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42690);
  }

  return result;
}

unint64_t sub_23B42C070()
{
  result = qword_280B42EA8;
  if (!qword_280B42EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42EA8);
  }

  return result;
}

void sub_23B42C0C4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t **), uint64_t a6)
{
  v7 = v6;
  v71 = a6;
  v72 = a5;
  v11 = sub_23B50AD24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *a1;
  sub_23B50AD14();
  sub_23B50ABD4();
  v17 = v16;
  (*(v12 + 8))(v15, v11);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v18 = sub_23B50CDF4();
  v19 = __swift_project_value_buffer(v18, qword_280B4E9D8);
  v20 = a3;
  v21 = sub_23B50CDD4();
  v22 = sub_23B50D4C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v69 = v19;
    v25 = v24;
    v77 = v20;
    v78 = v24;
    *v23 = 141558531;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_23B3A3BC8();
    v26 = v20;
    v27 = sub_23B50D1A4();
    v29 = sub_23B391F1C(v27, v28, &v78);

    *(v23 + 14) = v29;
    v7 = v6;
    *(v23 + 22) = 2050;
    *(v23 + 24) = v17;
    _os_log_impl(&dword_23B38D000, v21, v22, "Got response for fetch of available data sets; location=%{private,mask.hash}s, duration=%{public}f", v23, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x23EE9E260](v25, -1, -1);
    MEMORY[0x23EE9E260](v23, -1, -1);
  }

  v30 = *(a4 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
  v31 = v7;
  sub_23B3F486C(v70, v32, v33, v34, v35, v36, v37, v38, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  if (v7)
  {
    v39 = v20;
    v40 = v7;
    v41 = sub_23B50CDD4();
    v42 = sub_23B50D4B4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v39;
      v78 = v44;
      *v43 = 141558531;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      sub_23B3A3BC8();
      v45 = v39;
      v46 = sub_23B50D1A4();
      v48 = sub_23B391F1C(v46, v47, &v78);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      v50 = *(*(v74 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v52 + 16))(&v68 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
      v53 = sub_23B50D184();
      v55 = sub_23B391F1C(v53, v54, &v78);

      *(v43 + 24) = v55;
      _os_log_impl(&dword_23B38D000, v41, v42, "Unexpected error when attempting to parse the available data sets object; location=%{private,mask.hash}s, error=%{public}s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EE9E260](v44, -1, -1);
      MEMORY[0x23EE9E260](v43, -1, -1);
    }

    sub_23B3E3D54();
    v56 = swift_allocError();
    *v57 = 1;
    v78 = v56;
    LOBYTE(v79) = 1;
    v72(&v78);

    sub_23B42DBFC(v78, v79);
  }

  else
  {
    v58 = v78;
    v59 = v20;
    v60 = sub_23B50CDD4();
    v61 = sub_23B50D4C4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v77 = v59;
      v78 = v63;
      *v62 = 141558275;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      sub_23B3A3BC8();
      v64 = v59;
      v65 = sub_23B50D1A4();
      v67 = sub_23B391F1C(v65, v66, &v78);

      *(v62 + 14) = v67;
      _os_log_impl(&dword_23B38D000, v60, v61, "Successfully parsed available data sets; location=%{private,mask.hash}s", v62, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x23EE9E260](v63, -1, -1);
      MEMORY[0x23EE9E260](v62, -1, -1);
    }

    v78 = v58;
    LOBYTE(v79) = 0;
    v72(&v78);
  }
}

void sub_23B42C6C8(void *a1, void *a2, void (*a3)(id *))
{
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = sub_23B50CDF4();
  __swift_project_value_buffer(v6, qword_280B4E9D8);
  v7 = a1;
  v8 = a2;
  v9 = sub_23B50CDD4();
  v10 = sub_23B50D4B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 141558787;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_23B3A3BC8();
    v14 = v8;
    v15 = sub_23B50D1A4();
    v17 = sub_23B391F1C(v15, v16, &v24);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v18 = sub_23B50D874();
    v20 = sub_23B391F1C(v18, v19, &v24);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2112;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v22;
    *v12 = v22;
    _os_log_impl(&dword_23B38D000, v9, v10, "Encountered an error when fetching available data sets; location=%{private,mask.hash}s, error=%{public}s %@", v11, 0x2Au);
    sub_23B398890(v12, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v13, -1, -1);
    MEMORY[0x23EE9E260](v11, -1, -1);
  }

  v24 = a1;
  v25 = 1;
  v23 = a1;
  a3(&v24);
  sub_23B42DBFC(v24, v25);
}

uint64_t sub_23B42C948(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v45 = a5;
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v11 = (v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v42 - v14;
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v16 = sub_23B50CDF4();
  __swift_project_value_buffer(v16, qword_280B4E9D8);

  v17 = a4;
  v18 = a1;
  v19 = sub_23B50CDD4();
  v20 = sub_23B50D4B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42[1] = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v48 = v23;
    *v22 = 136446979;
    *(v22 + 4) = sub_23B391F1C(v43, a3, &v48);
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v47 = v17;
    sub_23B3A3BC8();
    v24 = v17;
    v25 = sub_23B50D1A4();
    v27 = sub_23B391F1C(v25, v26, &v48);

    *(v22 + 24) = v27;
    *(v22 + 32) = 2082;
    ErrorValue = swift_getErrorValue();
    v29 = *(*(v46 - 8) + 64);
    v30 = MEMORY[0x28223BE20](ErrorValue);
    (*(v32 + 16))(v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
    v33 = sub_23B50D184();
    v35 = sub_23B391F1C(v33, v34, &v48);

    *(v22 + 34) = v35;
    _os_log_impl(&dword_23B38D000, v19, v20, "Error while trying to fetch air quality scale; scaleName=%{public}s, location=%{private,mask.hash}s, error=%{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v23, -1, -1);
    MEMORY[0x23EE9E260](v22, -1, -1);
  }

  v36 = sub_23B50C3C4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v36);
  v37 = *(v44 + 48);
  *v11 = v45;
  sub_23B3AEA68(v15, v11 + v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  return sub_23B50B094();
}

uint64_t sub_23B42CD1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v182 = a3;
  v192 = a2;
  v193 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v183 = v9;
  OUTLINED_FUNCTION_24_0();
  v194 = sub_23B50C3C4();
  v10 = OUTLINED_FUNCTION_5(v194);
  v187 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v184 = v15 - v14;
  OUTLINED_FUNCTION_24_0();
  v189 = sub_23B50AD24();
  v16 = OUTLINED_FUNCTION_5(v189);
  v185 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  v180 = v20 - v21;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  v186 = v23;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_76();
  v188 = v25;
  OUTLINED_FUNCTION_24_0();
  v26 = sub_23B50BAE4();
  v27 = OUTLINED_FUNCTION_5(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v179 = (v32 - v33);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v34);
  v36 = (&v178 - v35);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_1();
  v200 = v38;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_76();
  v190 = v40;
  OUTLINED_FUNCTION_24_0();
  v41 = sub_23B50B654();
  v42 = OUTLINED_FUNCTION_5(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_0();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v178 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D68, &qword_23B515158);
  v54 = OUTLINED_FUNCTION_3(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12_0();
  v191 = v57 - v58;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_76();
  v195 = v60;
  v61 = *(a1 + 16);
  v197 = v26;
  v198 = v29;
  if (v61)
  {
    v62 = *(v44 + 80);
    OUTLINED_FUNCTION_52_0();
    v64 = a1 + v63;
    v65 = *(v44 + 72);
    v199 = (v29 + 32);
    v66 = MEMORY[0x277D84F90];
    v196 = v36;
    do
    {
      sub_23B3A52DC(v64, v52);
      sub_23B3A39AC(v52, v49);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_23B3A582C(v49);
      }

      else if (__swift_getEnumTagSinglePayload(v49, 1, v26) == 1)
      {
        sub_23B398890(v49, &qword_27E132D68, &qword_23B515158);
      }

      else
      {
        v67 = *v199;
        (*v199)(v200, v49, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3A5A20(0, *(v66 + 16) + 1, 1, v66);
          v66 = v73;
        }

        v69 = *(v66 + 16);
        v68 = *(v66 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_23B3A5A20(v68 > 1, v69 + 1, 1, v66);
          v66 = v74;
        }

        *(v66 + 16) = v69 + 1;
        v26 = v197;
        v70 = *(v198 + 80);
        OUTLINED_FUNCTION_52_0();
        v67(v66 + v71 + *(v72 + 72) * v69, v200, v26);
        v36 = v196;
      }

      v64 += v65;
      --v61;
    }

    while (v61);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v75 = v195;
  sub_23B3A60F0(v66, v195);

  v76 = v191;
  sub_23B3A61A0(v75, v191);
  if (__swift_getEnumTagSinglePayload(v76, 1, v26) == 1)
  {
    sub_23B398890(v76, &qword_27E132D68, &qword_23B515158);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v77 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v77, qword_280B4E9D8);
    v78 = v192;
    v79 = sub_23B50CDD4();
    sub_23B50D4C4();

    if (OUTLINED_FUNCTION_20_7())
    {
      v80 = swift_slowAlloc();
      v81 = OUTLINED_FUNCTION_42_0();
      v201 = v78;
      v202[0] = v81;
      OUTLINED_FUNCTION_5_13(7.2225e-34);
      OUTLINED_FUNCTION_24_6();
      v82 = v78;
      v83 = sub_23B50D1A4();
      v85 = sub_23B391F1C(v83, v84, v202);

      *(v80 + 14) = v85;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();
    }

LABEL_21:
    sub_23B398890(v75, &qword_27E132D68, &qword_23B515158);
    v91 = 1;
    v92 = v193;
    v93 = v194;
    return __swift_storeEnumTagSinglePayload(v92, v91, 1, v93);
  }

  v95 = v198;
  v96 = v190;
  (*(v198 + 32))(v190, v76, v26);
  v97 = v96;
  v200 = sub_23B50BAC4();
  if (!v98)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v122 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v122, qword_280B4E9D8);
    v123 = *(v95 + 16);
    v123(v36, v96, v26);
    v124 = v192;
    v125 = sub_23B50CDD4();
    v126 = sub_23B50D4B4();

    if (OUTLINED_FUNCTION_20_7())
    {
      OUTLINED_FUNCTION_42_0();
      LODWORD(v199) = v126;
      v200 = OUTLINED_FUNCTION_23_7();
      v202[0] = v200;
      *v36 = 136315651;
      v197 = v125;
      v123(v179, v36, v26);
      v127 = sub_23B50D184();
      v129 = v128;
      v130 = *(v95 + 8);
      v130(v36, v26);
      v131 = sub_23B391F1C(v127, v129, v202);

      *(v36 + 4) = v131;
      OUTLINED_FUNCTION_3_21();
      v201 = v124;
      v132 = sub_23B3A3BC8();
      v133 = v124;
      v134 = sub_23B50D1A4();
      sub_23B391F1C(v134, v135, v202);
      OUTLINED_FUNCTION_25_5();
      v36[3] = v132;
      v136 = v197;
      _os_log_impl(&dword_23B38D000, v197, v199, "Missing scale name for air quality data; data will be unavailable; airQuality=%s, location=%{private,mask.hash}s", v36, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();

      v130(v190, v26);
    }

    else
    {

      v173 = *(v95 + 8);
      v173(v36, v26);
      v173(v96, v26);
    }

    goto LABEL_21;
  }

  v191 = v98;
  v99 = v188;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v100 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v100, qword_280B4E9D8);
  v102 = v185;
  v101 = v186;
  v103 = *(v185 + 16);
  v104 = v189;
  v103(v186, v99, v189);
  v105 = v192;
  v199 = v97;
  v106 = sub_23B50CDD4();
  v107 = sub_23B50D4C4();

  v108 = OUTLINED_FUNCTION_20_7();
  v196 = v105;
  if (v108)
  {
    v109 = OUTLINED_FUNCTION_42_0();
    v192 = swift_slowAlloc();
    v201 = v105;
    v202[0] = v192;
    *v109 = 141558531;
    *(v109 + 4) = 1752392040;
    *(v109 + 12) = 2081;
    sub_23B3A3BC8();
    v110 = v105;
    v111 = sub_23B50D1A4();
    v113 = sub_23B391F1C(v111, v112, v202);

    *(v109 + 14) = v113;
    *(v109 + 22) = 2082;
    v114 = v186;
    v103(v180, v186, v104);
    v115 = sub_23B50D1A4();
    v117 = v116;
    v118 = v104;
    v119 = *(v102 + 8);
    (v119)(v114, v118);
    v120 = sub_23B391F1C(v115, v117, v202);
    v121 = v195;

    *(v109 + 24) = v120;
    _os_log_impl(&dword_23B38D000, v106, v107, "About to fetch AQI Scale from cache; location=%{private,mask.hash}s, startTime=%{public}s", v109, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v137 = v104;
    v119 = *(v102 + 8);
    (v119)(v101, v137);
    v121 = v195;
  }

  v138 = *(v181 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService);
  v139 = v183;
  v140 = v200;
  v141 = v191;
  sub_23B4FF508(v200, v191, v183);
  v93 = v194;
  if (__swift_getEnumTagSinglePayload(v139, 1, v194) == 1)
  {
    sub_23B398890(v139, &qword_27E131EA8, &qword_23B5194F0);
    v142 = v196;

    v143 = sub_23B50CDD4();
    sub_23B50D4B4();

    if (OUTLINED_FUNCTION_20_7())
    {
      OUTLINED_FUNCTION_42_0();
      v199 = v119;
      v202[0] = OUTLINED_FUNCTION_23_7();
      *v119 = 136446723;
      v144 = sub_23B391F1C(v140, v141, v202);

      *(v119 + 4) = v144;
      OUTLINED_FUNCTION_3_21();
      v201 = v142;
      sub_23B3A3BC8();
      v145 = v142;
      v146 = sub_23B50D1A4();
      v148 = sub_23B391F1C(v146, v147, v202);

      *(v119 + 24) = v148;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v149, v150, v151, v152, v153, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();

      v199(v188, v189);
    }

    else
    {

      (v119)(v188, v189);
    }

    v174 = OUTLINED_FUNCTION_26_7();
    v175(v174);
    sub_23B398890(v121, &qword_27E132D68, &qword_23B515158);
    v91 = 1;
    v92 = v193;
  }

  else
  {

    v154 = *(v187 + 32);
    v187 += 32;
    v200 = v154;
    v154(v184, v139, v93);
    v155 = v180;
    sub_23B50AD14();
    v156 = v188;
    sub_23B50ABD4();
    v158 = v157;
    v159 = v189;
    (v119)(v155, v189);
    v160 = v196;
    v161 = sub_23B50CDD4();
    sub_23B50D4C4();

    if (OUTLINED_FUNCTION_20_7())
    {
      v162 = OUTLINED_FUNCTION_42_0();
      v199 = v119;
      v163 = v162;
      v164 = OUTLINED_FUNCTION_42_0();
      v201 = v160;
      v202[0] = v164;
      OUTLINED_FUNCTION_5_13(7.2226e-34);
      OUTLINED_FUNCTION_24_6();
      v165 = v160;
      v166 = sub_23B50D1A4();
      sub_23B391F1C(v166, v167, v202);
      OUTLINED_FUNCTION_25_5();
      *(v163 + 14) = v160;
      *(v163 + 22) = 2050;
      *(v163 + 24) = v158;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v168, v169, v170, v171, v172, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v164);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();

      v199(v156, v189);
    }

    else
    {

      (v119)(v156, v159);
    }

    v176 = OUTLINED_FUNCTION_26_7();
    v177(v176);
    sub_23B398890(v121, &qword_27E132D68, &qword_23B515158);
    v92 = v193;
    v93 = v194;
    v200(v193, v184, v194);
    v91 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v92, v91, 1, v93);
}

void sub_23B42DB1C(uint64_t *a1)
{
  v3 = *(sub_23B50AD24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  OUTLINED_FUNCTION_21_5();
  sub_23B42C0C4(a1, v1 + v8, *(v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_23B42DBFC(id a1, char a2)
{
  if (a2)
  {
  }
}

Swift::Double __swiftcall Double.init(_:)(Swift::Int_optional a1)
{
  result = a1.value;
  if (a1.is_nil)
  {
    return 0.0;
  }

  return result;
}

void WeatherAttribution.init(deprecatedName:deprecatedSourceURL:deprecatedLogoURL:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_49();
  sub_23B3C4528(v4, v0);
  sub_23B3C4528(v2, v11);
  v13 = type metadata accessor for WeatherAttribution.Storage();
  OUTLINED_FUNCTION_45(v13);
  sub_23B3C4BA8();
  sub_23B398890(v2, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v4, &qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

void sub_23B42DD28()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = sub_23B50AB34();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_30_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DE0, &qword_23B515490);
  v23 = OUTLINED_FUNCTION_6(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v51 - v30;
  v32 = *(v4 + 16) == *(v2 + 16) && *(v4 + 24) == *(v2 + 24);
  if (!v32 && (sub_23B50D834() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0 || (OUTLINED_FUNCTION_44_2() & 1) == 0)
  {
    goto LABEL_30;
  }

  v52 = v8;
  v33 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL;
  v34 = v4 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL;
  v35 = *(v22 + 48);
  sub_23B3C4528(v34, v31);
  sub_23B3C4528(v2 + v33, &v31[v35]);
  OUTLINED_FUNCTION_46(v31);
  if (!v32)
  {
    sub_23B3C4528(v31, v0);
    OUTLINED_FUNCTION_46(&v31[v35]);
    v37 = v52;
    if (!v36)
    {
      (*(v52 + 32))(v13, &v31[v35], v5);
      OUTLINED_FUNCTION_3_22();
      sub_23B431684(v39, v40);
      HIDWORD(v51) = sub_23B50D134();
      v41 = *(v37 + 8);
      v42 = OUTLINED_FUNCTION_65();
      v41(v42);
      (v41)(v0, v5);
      sub_23B398890(v31, &qword_27E131FC0, &qword_23B515170);
      if ((v51 & 0x100000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    (*(v52 + 8))(v0, v5);
LABEL_18:
    v38 = v31;
LABEL_29:
    sub_23B398890(v38, &qword_27E132DE0, &qword_23B515490);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_46(&v31[v35]);
  if (!v32)
  {
    goto LABEL_18;
  }

  sub_23B398890(v31, &qword_27E131FC0, &qword_23B515170);
LABEL_20:
  v43 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL;
  v44 = *(v22 + 48);
  sub_23B3C4528(v2 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL, v28);
  sub_23B3C4528(v2 + v43, v28 + v44);
  OUTLINED_FUNCTION_46(v28);
  if (!v32)
  {
    sub_23B3C4528(v28, v20);
    OUTLINED_FUNCTION_46(v28 + v44);
    if (!v45)
    {
      v46 = v52;
      (*(v52 + 32))(v13, v28 + v44, v5);
      OUTLINED_FUNCTION_3_22();
      sub_23B431684(v47, v48);
      sub_23B50D134();
      v49 = *(v46 + 8);
      v50 = OUTLINED_FUNCTION_65();
      v49(v50);
      (v49)(v20, v5);
      sub_23B398890(v28, &qword_27E131FC0, &qword_23B515170);
      goto LABEL_30;
    }

    (*(v52 + 8))(v20, v5);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_46(v28 + v44);
  if (!v32)
  {
LABEL_28:
    v38 = v28;
    goto LABEL_29;
  }

  sub_23B398890(v28, &qword_27E131FC0, &qword_23B515170);
LABEL_30:
  OUTLINED_FUNCTION_20();
}

void sub_23B42E190()
{
  OUTLINED_FUNCTION_21();
  v3 = sub_23B50AB34();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_4();
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  sub_23B50D1C4();
  OUTLINED_FUNCTION_3_22();
  sub_23B431684(v19, v20);
  sub_23B50D0E4();
  OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_27_6();
  OUTLINED_FUNCTION_27_6();
  sub_23B3C4528(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL, v2);
  OUTLINED_FUNCTION_51(v2, 1, v3);
  if (v21)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v6 + 32))(v11, v2, v3);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_42_4();
    v22 = *(v6 + 8);
    v23 = OUTLINED_FUNCTION_36();
    v24(v23);
  }

  sub_23B3C4528(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL, v1);
  v25 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_51(v25, v26, v3);
  if (v21)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v6 + 32))(v11, v1, v3);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_42_4();
    v27 = *(v6 + 8);
    v28 = OUTLINED_FUNCTION_36();
    v29(v28);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B42E3E8()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  v11 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL;
  v12 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v12);
  v14 = *(v13 + 32);
  v14(v0 + v11, v8, v12);
  v14(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v6, v12);
  v14(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v4, v12);
  v14(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v2, v12);
  OUTLINED_FUNCTION_43_4(OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL);
  OUTLINED_FUNCTION_43_4(OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL);
  OUTLINED_FUNCTION_20();
}

void sub_23B42E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a4;
  v41 = a5;
  v47 = a1;
  v10 = *v7;
  v45 = a6;
  v46 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = sub_23B50AB34();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v44 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v43 = &v39 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v39 - v32;
  MEMORY[0x28223BE20](v31);
  v48 = &v39 - v34;
  if (a2)
  {
    v42 = a2;
  }

  else
  {
    v35 = v7[3];
    v47 = v7[2];
    v42 = v35;
  }

  sub_23B3C4528(a3, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    (*(v25 + 16))(v48, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL, v24);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);

    if (EnumTagSinglePayload != 1)
    {
      sub_23B398890(v23, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v25 + 32))(v48, v23, v24);
  }

  sub_23B3C4528(v40, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
  {
    (*(v25 + 16))(v33, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v24);
    if (__swift_getEnumTagSinglePayload(v21, 1, v24) != 1)
    {
      sub_23B398890(v21, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v25 + 32))(v33, v21, v24);
  }

  sub_23B3C4528(v41, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    (*(v25 + 16))(v43, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v24);
    if (__swift_getEnumTagSinglePayload(v18, 1, v24) != 1)
    {
      sub_23B398890(v18, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v25 + 32))(v43, v18, v24);
  }

  sub_23B3C4528(v45, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v24) == 1)
  {
    (*(v25 + 16))(v44, v7 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v24);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) != 1)
    {
      sub_23B398890(v15, &qword_27E131FC0, &qword_23B515170);
    }
  }

  else
  {
    (*(v25 + 32))(v44, v15, v24);
  }

  v37 = *(v46 + 48);
  v38 = *(v46 + 52);
  swift_allocObject();
  sub_23B42E3E8();
}

uint64_t sub_23B42E9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6761506C6167656CLL && a2 == 0xEC0000004C525565;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614D657261757173 && a2 == 0xED00004C52556B72;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000023B531900 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000023B531920 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_23B50D834();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_23B42EC3C(char a1)
{
  result = 0x4E65636976726573;
  switch(a1)
  {
    case 1:
      result = 0x6761506C6167656CLL;
      break;
    case 2:
      result = 0x614D657261757173;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x5255656372756F73;
      break;
    case 6:
      result = 0x4C52556F676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B42ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B42E9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B42ED64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B42EC34();
  *a1 = result;
  return result;
}

uint64_t sub_23B42ED8C(uint64_t a1)
{
  v2 = sub_23B431630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B42EDC8(uint64_t a1)
{
  v2 = sub_23B431630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B42EE04()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL;
  v3 = sub_23B50AB34();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v3);
  v4(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v3);
  v4(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v3);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL, &qword_27E131FC0, &qword_23B515170);
  return v0;
}

uint64_t sub_23B42EF14()
{
  v0 = sub_23B42EE04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B42EF68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DC0, &qword_23B515480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431630();
  sub_23B50D974();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v14[15] = 0;
  sub_23B50D7A4();
  if (!v2)
  {
    v14[14] = 1;
    sub_23B50AB34();
    sub_23B431684(&qword_280B42B68, MEMORY[0x277CC9260]);
    sub_23B50D7F4();
    v14[13] = 2;
    sub_23B50D7F4();
    v14[12] = 3;
    sub_23B50D7F4();
    v14[11] = 4;
    sub_23B50D7F4();
    v14[10] = 5;
    sub_23B50D794();
    v14[9] = 6;
    sub_23B50D794();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23B42F238()
{
  sub_23B50D8C4();
  sub_23B42E190();
  return sub_23B50D914();
}

void *sub_23B42F278(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_23B42F2C4(a1);
}

void *sub_23B42F2C4(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v56 = v2;
  v57 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v42 - v10;
  v11 = sub_23B50AB34();
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DD0, &qword_23B515488);
  v53 = *(v55 - 8);
  v24 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v26 = &v42 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431630();
  v54 = v26;
  v28 = v56;
  sub_23B50D964();
  if (v28)
  {
    v36 = *(*v1 + 48);
    v37 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v47 = v20;
    v29 = v52;
    v56 = a1;
    v64 = 0;
    v30 = v1;
    v1[2] = sub_23B50D6E4();
    v1[3] = v31;
    v63 = 1;
    v32 = sub_23B431684(&qword_27E132DD8, MEMORY[0x277CC9260]);
    v33 = v50;
    sub_23B50D734();
    v43 = *(v51 + 32);
    v44 = v51 + 32;
    v43(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_legalPageURL, v23, v33);
    v62 = 2;
    v34 = v47;
    v45 = v32;
    v46 = 0;
    sub_23B50D734();
    v35 = v33;
    v43(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_squareMarkURL, v34, v33);
    v61 = 3;
    sub_23B50D734();
    a1 = v56;
    v3 = v1;
    v43(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkDarkURL, v17, v35);
    v60 = 4;
    sub_23B50D734();
    v43(v1 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_combinedMarkLightURL, v29, v35);
    v59 = 5;
    v39 = v49;
    v40 = v54;
    sub_23B50D6D4();
    sub_23B3C4E78(v39, v30 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_sourceURL);
    v58 = 6;
    v41 = v48;
    sub_23B50D6D4();
    (*(v53 + 8))(v40, v55);
    sub_23B3C4E78(v41, v30 + OBJC_IVAR____TtCV10WeatherKit18WeatherAttributionP33_58EC53A9C2B4F8A1CC73F192127C76C07Storage_logoURL);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_23B42FA60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23B42DD28();
}

void *sub_23B42FA6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_23B42F278(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WeatherAttribution.serviceName.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return OUTLINED_FUNCTION_65();
}

uint64_t sub_23B42FB34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = WeatherAttribution.serviceName.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_23B42FB70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  WeatherAttribution.serviceName.setter();
}

void WeatherAttribution.serviceName.setter()
{
  OUTLINED_FUNCTION_21();
  v6 = v5;
  v16 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_9_12(v4, 1);
  OUTLINED_FUNCTION_11_7(v1);
  sub_23B42E4E4(v16, v6, v4, v3, v2, v1);

  OUTLINED_FUNCTION_26_8(v1);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();
  v15 = *v0;

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

void (*WeatherAttribution.serviceName.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v3;

  return sub_23B42FD24;
}

void sub_23B42FD24(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    WeatherAttribution.serviceName.setter();
  }

  else
  {
    v6 = *a1;
    WeatherAttribution.serviceName.setter();
  }
}

void WeatherAttribution.legalPageURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49();
  v10 = *(*(OUTLINED_FUNCTION_33_3() - 8) + 16);
  OUTLINED_FUNCTION_39_4();
  v11();
  OUTLINED_FUNCTION_9_12(v2, 0);
  v12 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_7_21(v12, v13);
  v14 = OUTLINED_FUNCTION_10_12();
  v15(v14);
  OUTLINED_FUNCTION_26_8(v1);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();
  v16 = *v0;

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.legalPageURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_15_7(v2);
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_36_3(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17_6(v8);
  OUTLINED_FUNCTION_4_16();
  v9();
  return OUTLINED_FUNCTION_35_6();
}

void WeatherAttribution.squareMarkURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49();
  v12 = OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_11_7(v4);
  v13 = *(*(v12 - 8) + 16);
  OUTLINED_FUNCTION_39_4();
  v14();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
  OUTLINED_FUNCTION_11_7(v2);
  v15 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_7_21(v15, v16);
  v17 = OUTLINED_FUNCTION_10_12();
  v18(v17);
  OUTLINED_FUNCTION_26_8(v1);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();
  v19 = *v0;

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.squareMarkURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_15_7(v2);
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_36_3(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17_6(v8);
  OUTLINED_FUNCTION_4_16();
  v9();
  return OUTLINED_FUNCTION_35_6();
}

void WeatherAttribution.combinedMarkDarkURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49();
  v12 = OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_11_7(v4);
  OUTLINED_FUNCTION_11_7(v3);
  v13 = *(*(v12 - 8) + 16);
  OUTLINED_FUNCTION_39_4();
  v14();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v12);
  v15 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_7_21(v15, v16);
  v17 = OUTLINED_FUNCTION_10_12();
  v18(v17);
  OUTLINED_FUNCTION_26_8(v1);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();
  v19 = *v0;

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.combinedMarkDarkURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_15_7(v2);
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_36_3(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17_6(v8);
  OUTLINED_FUNCTION_4_16();
  v9();
  return OUTLINED_FUNCTION_35_6();
}

uint64_t sub_23B43050C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_23B50AB34();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 16);

  return v9(a2, v4 + v5, v7);
}

uint64_t sub_23B4305B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_23B50AB34();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_36();
  v16(v15);
  return a5(v12);
}

void WeatherAttribution.combinedMarkLightURL.setter()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_34_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_49();
  v10 = OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_9_12(v2, 1);
  v11 = *(*(v10 - 8) + 16);
  OUTLINED_FUNCTION_39_4();
  v12();
  OUTLINED_FUNCTION_7_21(v1, 0);
  v13 = OUTLINED_FUNCTION_10_12();
  v14(v13);
  OUTLINED_FUNCTION_26_8(v1);
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_21_6();
  v15 = *v0;

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherAttribution.combinedMarkLightURL.modify()
{
  v1 = OUTLINED_FUNCTION_37_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_15_7(v2);
  *(v0 + 8) = v3;
  OUTLINED_FUNCTION_5(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_36_3(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_17_6(v8);
  OUTLINED_FUNCTION_4_16();
  v9();
  return OUTLINED_FUNCTION_35_6();
}

void sub_23B430894(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v6 = v4[5];
    v5 = v4[6];
    v8 = v4[3];
    v7 = v4[4];
    v9 = v4[1];
    v10 = v4[2];
    v11 = *v4;
    v12 = OUTLINED_FUNCTION_36();
    v13(v12);
    a3(v8);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v4[3];
    v7 = v4[4];
    v14 = *v4;
    a3(v7);
  }

  free(v7);
  free(v8);

  free(v4);
}

uint64_t sub_23B430998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(a2, v4 + v5, v6);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
}

void WeatherAttribution.init(serviceName:legalPageURL:squareMarkURL:combinedMarkDarkURL:combinedMarkLightURL:)()
{
  OUTLINED_FUNCTION_32_4();
  v1 = v0;
  v2 = type metadata accessor for WeatherAttribution.Storage();
  OUTLINED_FUNCTION_45(v2);
  OUTLINED_FUNCTION_28_4();
  sub_23B42E3E8();
  *v1 = v3;
}

void WeatherAttribution.init(serviceName:legalPageURL:squareMarkURL:combinedMarkDarkURL:combinedMarkLightURL:name:sourceURL:logoURL:logo:)(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_32_4();

  sub_23B398890(a4, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(a3, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(a2, &qword_27E131FC0, &qword_23B515170);
  v4 = type metadata accessor for WeatherAttribution.Storage();
  OUTLINED_FUNCTION_45(v4);
  OUTLINED_FUNCTION_28_4();
  sub_23B42E3E8();
  *a1 = v5;
}

void WeatherAttribution.init(name:sourceURL:logoURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v30 = OUTLINED_FUNCTION_3(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_0();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_38_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_30_4();
  sub_23B50AB04();
  v41 = sub_23B50AB34();
  OUTLINED_FUNCTION_51(v20, 1, v41);
  if (v42)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_23B50AB04();
  v43 = OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_51(v43, v44, v41);
  if (v42)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_23B50AB04();
  OUTLINED_FUNCTION_51(v38, 1, v41);
  if (v42)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_23B50AB04();
  OUTLINED_FUNCTION_51(v35, 1, v41);
  if (!v42)
  {

    sub_23B398890(v24, &qword_27E131FC0, &qword_23B515170);
    sub_23B398890(v26, &qword_27E131FC0, &qword_23B515170);
    v45 = type metadata accessor for WeatherAttribution.Storage();
    OUTLINED_FUNCTION_45(v45);
    sub_23B42E3E8();
    *v28 = v46;
    OUTLINED_FUNCTION_20();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_23B430D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B430E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B430D78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B430E38(uint64_t a1)
{
  v2 = sub_23B431070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B430E74(uint64_t a1)
{
  v2 = sub_23B431070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WeatherAttribution.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for WeatherAttribution.Storage();
  OUTLINED_FUNCTION_65();
  sub_23B42DD28();
  return v4 & 1;
}

uint64_t WeatherAttribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D88, &qword_23B515178);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431070();

  sub_23B50D974();
  v16[1] = v11;
  type metadata accessor for WeatherAttribution.Storage();
  OUTLINED_FUNCTION_14_12();
  sub_23B431684(v13, v14);
  sub_23B50D7F4();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B431070()
{
  result = qword_280B428B8;
  if (!qword_280B428B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428B8);
  }

  return result;
}

uint64_t WeatherAttribution.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D98, &qword_23B515180);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431070();
  sub_23B50D964();
  if (!v2)
  {
    type metadata accessor for WeatherAttribution.Storage();
    OUTLINED_FUNCTION_14_12();
    sub_23B431684(v14, v15);
    sub_23B50D734();
    (*(v8 + 8))(v12, v5);
    *a2 = v17[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WeatherAttribution.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  sub_23B42E190();
  return sub_23B50D914();
}

uint64_t sub_23B4312EC()
{
  v1 = *v0;
  sub_23B50D8C4();
  sub_23B42E190();
  return sub_23B50D914();
}

unint64_t sub_23B431330()
{
  result = qword_27E132DA8;
  if (!qword_27E132DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DA8);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherAttribution.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B4314E4()
{
  result = qword_27E132DB0;
  if (!qword_27E132DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DB0);
  }

  return result;
}

unint64_t sub_23B431584()
{
  result = qword_280B428A8;
  if (!qword_280B428A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428A8);
  }

  return result;
}

unint64_t sub_23B4315DC()
{
  result = qword_280B428B0;
  if (!qword_280B428B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428B0);
  }

  return result;
}

unint64_t sub_23B431630()
{
  result = qword_27E132DC8;
  if (!qword_27E132DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DC8);
  }

  return result;
}

uint64_t sub_23B431684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for WeatherAttribution.Storage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherAttribution.Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B431834()
{
  result = qword_27E132DE8;
  if (!qword_27E132DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DE8);
  }

  return result;
}

unint64_t sub_23B43188C()
{
  result = qword_27E132DF0;
  if (!qword_27E132DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DF0);
  }

  return result;
}

unint64_t sub_23B4318E4()
{
  result = qword_27E132DF8;
  if (!qword_27E132DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132DF8);
  }

  return result;
}

WeatherKit::CloudCoverByAltitude __swiftcall CloudCoverByAltitude.init(low:medium:high:)(Swift::Double low, Swift::Double medium, Swift::Double high)
{
  *v3 = low;
  v3[1] = medium;
  v3[2] = high;
  result.high = high;
  result.medium = medium;
  result.low = low;
  return result;
}

uint64_t sub_23B4319E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1751607656 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B431AEC(char a1)
{
  if (!a1)
  {
    return 7827308;
  }

  if (a1 == 1)
  {
    return 0x6D756964656DLL;
  }

  return 1751607656;
}

uint64_t sub_23B431B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4319E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B431B60(uint64_t a1)
{
  v2 = sub_23B431D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B431B9C(uint64_t a1)
{
  v2 = sub_23B431D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudCoverByAltitude.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E00, &qword_23B5155A0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431D78();
  sub_23B50D974();
  v20 = 0;
  OUTLINED_FUNCTION_0_24();
  if (!v2)
  {
    v19 = 1;
    OUTLINED_FUNCTION_0_24();
    v18 = 2;
    OUTLINED_FUNCTION_0_24();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B431D78()
{
  result = qword_27E132E08;
  if (!qword_27E132E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E08);
  }

  return result;
}

uint64_t CloudCoverByAltitude.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E10, &qword_23B5155A8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B431D78();
  sub_23B50D964();
  if (!v2)
  {
    v21[15] = 0;
    OUTLINED_FUNCTION_1_15();
    v15 = v14;
    v21[14] = 1;
    OUTLINED_FUNCTION_1_15();
    v18 = v17;
    v21[13] = 2;
    OUTLINED_FUNCTION_1_15();
    v20 = v19;
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
    a2[1] = v18;
    a2[2] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudCoverByAltitude.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x23EE9DB70](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x23EE9DB70](*&v5);
}

uint64_t CloudCoverByAltitude.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_23B50D8C4();
  CloudCoverByAltitude.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B432078()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_23B50D8C4();
  CloudCoverByAltitude.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B4320CC()
{
  result = qword_27E132E18;
  if (!qword_27E132E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudCoverByAltitude(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CloudCoverByAltitude(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCoverByAltitude.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B43225C()
{
  result = qword_27E132E20;
  if (!qword_27E132E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E20);
  }

  return result;
}

unint64_t sub_23B4322B4()
{
  result = qword_27E132E28;
  if (!qword_27E132E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E28);
  }

  return result;
}

unint64_t sub_23B43230C()
{
  result = qword_27E132E30;
  if (!qword_27E132E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132E30);
  }

  return result;
}

uint64_t sub_23B432448()
{
  v1 = sub_23B50C7D4();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  return sub_23B50D474();
}

void static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v35[1] = a1;
  v36 = a3;
  v38 = a2;
  v39 = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_4_12();
  v9 = OUTLINED_FUNCTION_5(v8);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0);
  OUTLINED_FUNCTION_6(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_1_16();
  v24(v23);
  sub_23B3C7DF4(v36, v4);
  OUTLINED_FUNCTION_2_20();
  if (v25)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_2_20();
    if (!v25)
    {
      sub_23B3CF54C(v4);
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_5_15();
    v27(v26);
  }

  v28 = OUTLINED_FUNCTION_9_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_7_22();
  v31(v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  v33 = OUTLINED_FUNCTION_3_23(v32);
  v34(v33);
  sub_23B3E3DA8(v5, v18, &qword_27E132228, &unk_23B511AB0);
  OUTLINED_FUNCTION_10_13();
}

{
  v35[1] = a1;
  v36 = a3;
  v38 = a2;
  v39 = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_4_12();
  v9 = OUTLINED_FUNCTION_5(v8);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_8();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890);
  OUTLINED_FUNCTION_6(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_1_16();
  v24(v23);
  sub_23B3C7DF4(v36, v4);
  OUTLINED_FUNCTION_2_20();
  if (v25)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_2_20();
    if (!v25)
    {
      sub_23B3CF54C(v4);
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_5_15();
    v27(v26);
  }

  v28 = OUTLINED_FUNCTION_9_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_7_22();
  v31(v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  v33 = OUTLINED_FUNCTION_3_23(v32);
  v34(v33);
  sub_23B3E3DA8(v5, v18, &qword_27E132218, &qword_23B515890);
  OUTLINED_FUNCTION_10_13();
}

uint64_t sub_23B432AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_7_0();
  v5 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = OUTLINED_FUNCTION_2_21(v9);
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  OUTLINED_FUNCTION_7_23(v9[8]);
  *(v13 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v9[9]);
  OUTLINED_FUNCTION_5_16(v9[10]);
  v14 = v9[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = v9[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v20 = OUTLINED_FUNCTION_0_25();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

void static WeatherQuery<A>.daily(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0();
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_14_13();
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v21 = v20 - v19;
  v22 = *(v9 + 16);
  v22(v4, a1, v6);
  v22(v3, a2, v6);
  sub_23B50AA04();
  (*(v16 + 32))(v2, v21, v13);
  OUTLINED_FUNCTION_12_9(v2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v24 = OUTLINED_FUNCTION_2_21(v23);
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v13);
  v27 = v23[11];
  type metadata accessor for InstantWeatherQueryOptions();
  v28 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v23[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v33 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_7_23(v23[8]);
  *(v37 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v23[9]);
  OUTLINED_FUNCTION_5_16(v23[10]);
}

void static WeatherQuery<A>.hourly(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_0();
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_5(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_23();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_14_13();
  v14 = OUTLINED_FUNCTION_5(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v21 = v20 - v19;
  v22 = *(v9 + 16);
  v22(v4, a1, v6);
  v22(v3, a2, v6);
  sub_23B50AA04();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  v27 = v26[7];
  (*(v16 + 32))(v2 + v27, v21, v13);
  OUTLINED_FUNCTION_12_9(v2 + v27);
  v28 = v26[11];
  type metadata accessor for InstantWeatherQueryOptions();
  v29 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v26[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v34 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_7_23(v26[8]);
  *(v38 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v26[9]);
  OUTLINED_FUNCTION_5_16(v26[10]);
}

void static WeatherQuery<A>.instants(spanning:stride:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_7_0();
  Options = type metadata accessor for InstantWeatherQueryOptions();
  v6 = OUTLINED_FUNCTION_6(Options);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = v10 - v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F18, &qword_23B515838) + 48);
  v15 = sub_23B50AA24();
  OUTLINED_FUNCTION_6(v15);
  (*(v16 + 16))(v11, a1, v15);
  *v14 = v12;
  *(v14 + 8) = v13;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F20, &qword_23B515840);
  v21 = OUTLINED_FUNCTION_2_21(v20);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v15);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_12_9(v2 + v15);
  v24 = v20[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v25 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_7_23(v20[8]);
  *(v29 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v20[9]);
  OUTLINED_FUNCTION_5_16(v20[10]);
}

void static WeatherQuery<A>.instant(at:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0();
  Options = type metadata accessor for InstantWeatherQueryOptions();
  v4 = OUTLINED_FUNCTION_6(Options);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 16))(v9, a1);
  swift_storeEnumTagMultiPayload();
  v12 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F28, &qword_23B515848);
  v17 = OUTLINED_FUNCTION_2_21(v16);
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_12_9(v1 + v12);
  v20 = v16[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v21 = OUTLINED_FUNCTION_0_25();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_7_23(v16[8]);
  *(v25 + 16) = 1;
  OUTLINED_FUNCTION_1_17(v16[9]);
  OUTLINED_FUNCTION_5_16(v16[10]);
}

void static WeatherQuery<A>.daily(relativeTo:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0();
  v6 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v11 = OUTLINED_FUNCTION_2_21(v10);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  v14 = v10[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = v10[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = v3 + v10[8];
  *v24 = a2;
  *(v24 + 8) = a3;
  *(v24 + 16) = 0;
  OUTLINED_FUNCTION_1_17(v10[9]);
  OUTLINED_FUNCTION_5_16(v10[10]);
}

void static WeatherQuery<A>.hourly(relativeTo:start:end:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  v13 = OUTLINED_FUNCTION_2_21(v12);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  v16 = v12[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v12[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_7_23(v12[8]);
  *(v26 + 16) = 1;
  v27 = a4 + v12[9];
  *v27 = a2;
  *(v27 + 8) = a3;
  *(v27 + 16) = v7;
  OUTLINED_FUNCTION_1_17(v12[10]);
}

uint64_t sub_23B4333F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v17 = v16[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v12);
  v21 = v16[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v16[12];
  type metadata accessor for WeatherQueryPeriodicRelativeRange();
  OUTLINED_FUNCTION_1();
  result = __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v32 = a6 + v16[8];
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  v33 = a6 + v16[9];
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 2;
  v34 = a6 + v16[10];
  *v34 = a2;
  *(v34 + 8) = a3;
  *(v34 + 16) = v11;
  return result;
}

uint64_t static WeatherQuery<A>.periodic(periodStart:periodEnd:periodLengths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v9 = OUTLINED_FUNCTION_6(PeriodicRelativeRange);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v14 = v13 - v12;
  v15 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v15);
  v17 = *(v16 + 16);
  v17(v14, a1, v15);
  v17(v14 + *(PeriodicRelativeRange + 20), a2, v15);
  *(v14 + *(PeriodicRelativeRange + 24)) = a3;
  v18 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
  v23 = v22[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v18);
  v27 = v22[11];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v22[12];
  sub_23B3B0A38(v14, a4 + v32, type metadata accessor for WeatherQueryPeriodicRelativeRange);
  __swift_storeEnumTagSinglePayload(a4 + v32, 0, 1, PeriodicRelativeRange);
  v33 = a4 + v22[8];
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = a4 + v22[9];
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = 2;
  v35 = a4 + v22[10];
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = 2;
}

BOOL HistoricalComparison.isDeviatingFromTrend.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for HistoricalComparison();
  v15 = OUTLINED_FUNCTION_6(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v20 = v19 - v18;
  sub_23B433890(v1, v19 - v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 3u:
      sub_23B4338F4(v20, v7, &qword_27E132230, &qword_23B510210);
      v21 = v7[*(v2 + 32)];
      OUTLINED_FUNCTION_24_7();
      break;
    default:
      sub_23B4338F4(v20, v13, &qword_27E132220, &unk_23B510200);
      v21 = v13[*(v8 + 32)];
      v22 = v13;
      v23 = &qword_27E132220;
      v24 = &unk_23B510200;
      break;
  }

  sub_23B398890(v22, v23, v24);
  return v21 != 2;
}

uint64_t sub_23B433890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalComparison();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4338F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

uint64_t static HistoricalComparison.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  v5 = OUTLINED_FUNCTION_6(v84);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  v86 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v85 = &v81 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  v12 = OUTLINED_FUNCTION_6(v82);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v83 = &v81 - v19;
  v20 = type metadata accessor for HistoricalComparison();
  v21 = OUTLINED_FUNCTION_6(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v81 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_125();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F30, &unk_23B515880) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v81 - v36;
  v39 = *(v38 + 56);
  sub_23B433890(a1, &v81 - v36);
  sub_23B433890(a2, &v37[v39]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23B433890(v37, v32);
      if (OUTLINED_FUNCTION_27_7() != 1)
      {
        v40 = &qword_27E132220;
        v41 = &unk_23B510200;
        v42 = v32;
        goto LABEL_25;
      }

      sub_23B4338F4(&v37[v39], v17, &qword_27E132220, &unk_23B510200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_4_1();
      sub_23B3F1C50(v64, &qword_27E131E30, &qword_23B511AC0);
      if (sub_23B50D134() & 1) != 0 && (v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890) + 32), (sub_23B50ACD4()) && (v66 = *(v82 + 28), (sub_23B50D134()))
      {
        v67 = *(v82 + 32);
        v68 = v32[v67];
        v69 = *(v17 + v67);
        sub_23B398890(v17, &qword_27E132220, &unk_23B510200);
        if (v68 == v69)
        {
          v52 = &qword_27E132220;
          v53 = &unk_23B510200;
          v54 = v32;
          goto LABEL_37;
        }
      }

      else
      {
        sub_23B398890(v17, &qword_27E132220, &unk_23B510200);
      }

      v70 = &qword_27E132220;
      v71 = &unk_23B510200;
      v72 = v32;
      goto LABEL_40;
    case 2u:
      sub_23B433890(v37, v29);
      if (OUTLINED_FUNCTION_27_7() != 2)
      {
        v40 = &qword_27E132230;
        v41 = &qword_23B510210;
        v42 = v29;
        goto LABEL_25;
      }

      v43 = v85;
      sub_23B4338F4(&v37[v39], v85, &qword_27E132230, &qword_23B510210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_24_7();
      sub_23B3F1C50(v44, v45, v46);
      if (OUTLINED_FUNCTION_20_9() & 1) != 0 && (v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0) + 32), (sub_23B50ACD4()) && (v48 = *(v84 + 28), (OUTLINED_FUNCTION_20_9()))
      {
        v49 = *(v84 + 32);
        v50 = v29[v49];
        v51 = *(v43 + v49);
        sub_23B398890(v43, &qword_27E132230, &qword_23B510210);
        if (v50 == v51)
        {
          v52 = &qword_27E132230;
          v53 = &qword_23B510210;
          v54 = v29;
          goto LABEL_37;
        }
      }

      else
      {
        sub_23B398890(v43, &qword_27E132230, &qword_23B510210);
      }

      v70 = &qword_27E132230;
      v71 = &qword_23B510210;
      v72 = v29;
      goto LABEL_40;
    case 3u:
      sub_23B433890(v37, v26);
      if (OUTLINED_FUNCTION_27_7() != 3)
      {
        v40 = &qword_27E132230;
        v41 = &qword_23B510210;
        v42 = v26;
        goto LABEL_25;
      }

      v55 = v86;
      sub_23B4338F4(&v37[v39], v86, &qword_27E132230, &qword_23B510210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_24_7();
      sub_23B3F1C50(v56, v57, v58);
      if (OUTLINED_FUNCTION_20_9() & 1) != 0 && (v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0) + 32), (sub_23B50ACD4()) && (v60 = *(v84 + 28), (OUTLINED_FUNCTION_20_9()))
      {
        v61 = *(v84 + 32);
        v62 = *(v26 + v61);
        v63 = *(v55 + v61);
        sub_23B398890(v55, &qword_27E132230, &qword_23B510210);
        if (v62 == v63)
        {
          v52 = &qword_27E132230;
          v53 = &qword_23B510210;
          v54 = v26;
          goto LABEL_37;
        }
      }

      else
      {
        sub_23B398890(v55, &qword_27E132230, &qword_23B510210);
      }

      v70 = &qword_27E132230;
      v71 = &qword_23B510210;
      v72 = v26;
      goto LABEL_40;
    default:
      sub_23B433890(v37, v2);
      if (OUTLINED_FUNCTION_27_7())
      {
        v40 = &qword_27E132220;
        v41 = &unk_23B510200;
        v42 = v2;
LABEL_25:
        sub_23B398890(v42, v40, v41);
        sub_23B398890(v37, &qword_27E132F30, &unk_23B515880);
        return 0;
      }

      v73 = v83;
      sub_23B4338F4(&v37[v39], v83, &qword_27E132220, &unk_23B510200);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_4_1();
      sub_23B3F1C50(v74, &qword_27E131E30, &qword_23B511AC0);
      if ((OUTLINED_FUNCTION_20_9() & 1) == 0 || (v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890) + 32), (sub_23B50ACD4() & 1) == 0) || (v76 = *(v82 + 28), (OUTLINED_FUNCTION_20_9() & 1) == 0))
      {
        sub_23B398890(v73, &qword_27E132220, &unk_23B510200);
LABEL_39:
        v70 = &qword_27E132220;
        v71 = &unk_23B510200;
        v72 = v2;
LABEL_40:
        sub_23B398890(v72, v70, v71);
        sub_23B434128(v37);
        return 0;
      }

      v77 = *(v82 + 32);
      v78 = *(v2 + v77);
      v79 = *(v73 + v77);
      sub_23B398890(v73, &qword_27E132220, &unk_23B510200);
      if (v78 != v79)
      {
        goto LABEL_39;
      }

      v52 = &qword_27E132220;
      v53 = &unk_23B510200;
      v54 = v2;
LABEL_37:
      sub_23B398890(v54, v52, v53);
      sub_23B434128(v37);
      return 1;
  }
}

uint64_t sub_23B434128(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalComparison();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B434184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_23B4342FC(char a1)
{
  result = 0x706D655468676968;
  switch(a1)
  {
    case 1:
      result = 0x65706D6554776F6CLL;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6C6C6166776F6E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4343B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B43442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B434184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B434454(uint64_t a1)
{
  v2 = sub_23B435AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B434490(uint64_t a1)
{
  v2 = sub_23B435AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4344D0(uint64_t a1)
{
  v2 = sub_23B435C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B43450C(uint64_t a1)
{
  v2 = sub_23B435C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B434548(uint64_t a1)
{
  v2 = sub_23B435BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B434584(uint64_t a1)
{
  v2 = sub_23B435BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4345C0(uint64_t a1)
{
  v2 = sub_23B435BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4345FC(uint64_t a1)
{
  v2 = sub_23B435BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B434638(uint64_t a1)
{
  v2 = sub_23B435B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B434674(uint64_t a1)
{
  v2 = sub_23B435B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalComparison.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F38, &qword_23B515898);
  v4 = OUTLINED_FUNCTION_5(v3);
  v108 = v5;
  v109 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v107 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F40, &qword_23B5158A0);
  v11 = OUTLINED_FUNCTION_5(v10);
  v105 = v12;
  v106 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v104 = v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  v17 = OUTLINED_FUNCTION_6(v111);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  v103 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v102 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F48, &qword_23B5158A8);
  v25 = OUTLINED_FUNCTION_5(v24);
  v100 = v26;
  v101 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  v99 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F50, &qword_23B5158B0);
  v32 = OUTLINED_FUNCTION_5(v31);
  v97 = v33;
  v98 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v96 - v37;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  v39 = OUTLINED_FUNCTION_6(v110);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_125();
  v43 = type metadata accessor for HistoricalComparison();
  v44 = OUTLINED_FUNCTION_6(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F58, &qword_23B5158B8);
  v51 = OUTLINED_FUNCTION_5(v50);
  v113 = v52;
  v114 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  v57 = &v96 - v56;
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B435AFC();
  sub_23B50D974();
  sub_23B433890(v112, v49);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_218();
      sub_23B4338F4(v85, v86, v87, v88);
      v116 = 1;
      sub_23B435BF8();
      OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_151();
      sub_23B3F1C50(v89, v90, v91);
      v92 = v101;
      sub_23B50D7F4();
      v93 = OUTLINED_FUNCTION_18_9();
      v94(v93, v92);
      goto LABEL_6;
    case 2u:
      OUTLINED_FUNCTION_218();
      sub_23B4338F4(v66, v67, v68, v69);
      v117 = 2;
      sub_23B435BA4();
      v70 = v104;
      OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_151();
      sub_23B3F1C50(v71, v72, v73);
      v74 = v106;
      sub_23B50D7F4();
      (*(v105 + 8))(v70, v74);
LABEL_6:
      OUTLINED_FUNCTION_151();
      break;
    case 3u:
      v75 = v103;
      OUTLINED_FUNCTION_218();
      sub_23B4338F4(v76, v77, v78, v79);
      v118 = 3;
      sub_23B435B50();
      v80 = v107;
      OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_151();
      sub_23B3F1C50(v81, v82, v83);
      v84 = v109;
      sub_23B50D7F4();
      (*(v108 + 8))(v80, v84);
      v64 = &qword_27E132230;
      v65 = &qword_23B510210;
      v63 = v75;
      break;
    default:
      sub_23B4338F4(v49, v1, &qword_27E132220, &unk_23B510200);
      v115 = 0;
      sub_23B435C4C();
      OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_13_8();
      sub_23B3F1C50(v59, v60, v61);
      v62 = v98;
      sub_23B50D7F4();
      (*(v97 + 8))(v38, v62);
      OUTLINED_FUNCTION_13_8();
      break;
  }

  sub_23B398890(v63, v64, v65);
  return (*(v113 + 8))(v57, v49);
}

uint64_t HistoricalComparison.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F98, &qword_23B5158C0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v121 = v6;
  v122 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v127 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FA0, &qword_23B5158C8);
  v12 = OUTLINED_FUNCTION_5(v11);
  v119 = v13;
  v120 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  v126 = v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FA8, &qword_23B5158D0);
  OUTLINED_FUNCTION_5(v118);
  v128 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v125 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FB0, &qword_23B5158D8);
  v24 = OUTLINED_FUNCTION_5(v23);
  v116 = v25;
  v117 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_52();
  v124 = v29;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132FB8, &unk_23B5158E0);
  OUTLINED_FUNCTION_5(v131);
  v129 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  v35 = &v111 - v34;
  v130 = type metadata accessor for HistoricalComparison();
  v36 = OUTLINED_FUNCTION_6(v130);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_0();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v111 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v111 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v111 - v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_125();
  v53 = a1[3];
  v52 = a1[4];
  v132 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_23B435AFC();
  v54 = v133;
  sub_23B50D964();
  if (v54)
  {
    goto LABEL_10;
  }

  v112 = v47;
  v113 = v44;
  v114 = v50;
  v111 = v41;
  v133 = v2;
  v56 = v130;
  v55 = v131;
  v57 = sub_23B50D744();
  result = sub_23B40D8C8(v57, 0);
  if (v60 == v61 >> 1)
  {
    v62 = v56;
LABEL_9:
    v75 = sub_23B50D5F4();
    swift_allocError();
    v77 = v76;
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v77 = v62;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D84160], v75);
    swift_willThrow();
    swift_unknownObjectRelease();
    v79 = OUTLINED_FUNCTION_14_14();
    v80(v79, v55);
LABEL_10:
    v81 = v132;
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v115 = v35;
  if (v60 < (v61 >> 1))
  {
    v63 = v55;
    v62 = v56;
    v64 = *(v59 + v60);
    v65 = sub_23B40D8C4(v60 + 1);
    v67 = v66;
    v69 = v68;
    swift_unknownObjectRelease();
    v70 = v128;
    if (v67 == v69 >> 1)
    {
      v71 = v133;
      switch(v64)
      {
        case 1:
          v135 = 1;
          sub_23B435BF8();
          v84 = v125;
          OUTLINED_FUNCTION_9_15();
          v89 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC8);
          v91 = v118;
          sub_23B50D734();
          swift_unknownObjectRelease();
          (*(v70 + 8))(v84, v91);
          v108 = OUTLINED_FUNCTION_11_8();
          v109(v108, v63);
          v110 = v112;
          swift_storeEnumTagMultiPayload();
          v107 = v110;
          v106 = v132;
          v71 = v133;
          break;
        case 2:
          v136 = 2;
          sub_23B435BA4();
          OUTLINED_FUNCTION_9_15();
          v128 = v65;
          v82 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC0);
          sub_23B50D734();
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_23_8();
          v93(v92);
          v94 = OUTLINED_FUNCTION_17_7();
          v95(v94);
          v96 = v113;
          swift_storeEnumTagMultiPayload();
          v107 = v96;
          goto LABEL_15;
        case 3:
          v137 = 3;
          sub_23B435B50();
          OUTLINED_FUNCTION_9_15();
          v128 = v65;
          v85 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v85, v86);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC0);
          v87 = v111;
          v88 = v122;
          OUTLINED_FUNCTION_218();
          sub_23B50D734();
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_18_9();
          v98(v97, v88);
          v99 = OUTLINED_FUNCTION_11_8();
          v100(v99, v63);
          swift_storeEnumTagMultiPayload();
          v107 = v87;
LABEL_15:
          v106 = v132;
          break;
        default:
          v134 = 0;
          sub_23B435C4C();
          OUTLINED_FUNCTION_9_15();
          v128 = v65;
          v72 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
          OUTLINED_FUNCTION_3_24(&qword_27E132FC8);
          v74 = v117;
          sub_23B50D734();
          swift_unknownObjectRelease();
          v101 = OUTLINED_FUNCTION_18_9();
          v102(v101, v74);
          v103 = OUTLINED_FUNCTION_17_7();
          v104(v103);
          v105 = v114;
          swift_storeEnumTagMultiPayload();
          v106 = v132;
          v107 = v105;
          break;
      }

      sub_23B435CA0(v107, v71);
      sub_23B435CA0(v71, v123);
      v81 = v106;
      return __swift_destroy_boxed_opaque_existential_1(v81);
    }

    v55 = v63;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t HistoricalComparison.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for HistoricalComparison();
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  sub_23B433890(v0, v18 - v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_26_9();
      v19 = 1;
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_25_7();
      v20 = 2;
      goto LABEL_5;
    case 3u:
      OUTLINED_FUNCTION_25_7();
      v20 = 3;
LABEL_5:
      MEMORY[0x23EE9DB40](v20);
      MEMORY[0x23EE9DB40](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
      OUTLINED_FUNCTION_8_9(&qword_280B42BC8);
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0) + 32);
      sub_23B50AD24();
      OUTLINED_FUNCTION_7_24();
      sub_23B435D4C(v22, v23);
      sub_23B50D0E4();
      v24 = &v6[*(v1 + 28)];
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      MEMORY[0x23EE9DB40](v6[*(v1 + 32)]);
      v25 = v6;
      v26 = &qword_27E132230;
      v27 = &qword_23B510210;
      break;
    default:
      OUTLINED_FUNCTION_26_9();
      v19 = 0;
LABEL_7:
      MEMORY[0x23EE9DB40](v19);
      MEMORY[0x23EE9DB40](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      OUTLINED_FUNCTION_8_9(&qword_280B42B80);
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890) + 32);
      sub_23B50AD24();
      OUTLINED_FUNCTION_7_24();
      sub_23B435D4C(v29, v30);
      sub_23B50D0E4();
      v31 = &v12[*(v7 + 28)];
      OUTLINED_FUNCTION_13_8();
      sub_23B50D0E4();
      MEMORY[0x23EE9DB40](v12[*(v7 + 32)]);
      OUTLINED_FUNCTION_24_7();
      break;
  }

  return sub_23B398890(v25, v26, v27);
}

uint64_t HistoricalComparison.hashValue.getter()
{
  sub_23B50D8C4();
  HistoricalComparison.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B435AC0()
{
  sub_23B50D8C4();
  HistoricalComparison.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B435AFC()
{
  result = qword_27E132F60;
  if (!qword_27E132F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F60);
  }

  return result;
}

unint64_t sub_23B435B50()
{
  result = qword_27E132F68;
  if (!qword_27E132F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F68);
  }

  return result;
}

unint64_t sub_23B435BA4()
{
  result = qword_27E132F78;
  if (!qword_27E132F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F78);
  }

  return result;
}

unint64_t sub_23B435BF8()
{
  result = qword_27E132F80;
  if (!qword_27E132F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F80);
  }

  return result;
}

unint64_t sub_23B435C4C()
{
  result = qword_27E132F90;
  if (!qword_27E132F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132F90);
  }

  return result;
}

uint64_t sub_23B435CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalComparison();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B435D4C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for HistoricalComparison.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_23B435EA0(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B435F50()
{
  result = qword_27E132FD8;
  if (!qword_27E132FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FD8);
  }

  return result;
}

unint64_t sub_23B435FA8()
{
  result = qword_27E132FE0;
  if (!qword_27E132FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FE0);
  }

  return result;
}

unint64_t sub_23B436000()
{
  result = qword_27E132FE8;
  if (!qword_27E132FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FE8);
  }

  return result;
}

unint64_t sub_23B436058()
{
  result = qword_27E132FF0;
  if (!qword_27E132FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FF0);
  }

  return result;
}

unint64_t sub_23B4360B0()
{
  result = qword_27E132FF8;
  if (!qword_27E132FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132FF8);
  }

  return result;
}

unint64_t sub_23B436108()
{
  result = qword_27E133000;
  if (!qword_27E133000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133000);
  }

  return result;
}

unint64_t sub_23B436160()
{
  result = qword_27E133008;
  if (!qword_27E133008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133008);
  }

  return result;
}

unint64_t sub_23B4361B8()
{
  result = qword_27E133010;
  if (!qword_27E133010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133010);
  }

  return result;
}

unint64_t sub_23B436210()
{
  result = qword_27E133018;
  if (!qword_27E133018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133018);
  }

  return result;
}

unint64_t sub_23B436268()
{
  result = qword_27E133020;
  if (!qword_27E133020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133020);
  }

  return result;
}

unint64_t sub_23B4362C0()
{
  result = qword_27E133028;
  if (!qword_27E133028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133028);
  }

  return result;
}

unint64_t sub_23B436318()
{
  result = qword_27E133030;
  if (!qword_27E133030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133030);
  }

  return result;
}

unint64_t sub_23B436370()
{
  result = qword_27E133038;
  if (!qword_27E133038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133038);
  }

  return result;
}

unint64_t sub_23B4363C8()
{
  result = qword_27E133040;
  if (!qword_27E133040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133040);
  }

  return result;
}

unint64_t sub_23B436420()
{
  result = qword_27E133048;
  if (!qword_27E133048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133048);
  }

  return result;
}

uint64_t sub_23B4364B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133058, &qword_23B515FA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ReverseGeocodeResult();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_23B3988E8(a1, &qword_27E133058, &qword_23B515FA8);
    sub_23B4378C8(a2, a3, v11);

    return sub_23B3988E8(v11, &qword_27E133058, &qword_23B515FA8);
  }

  else
  {
    sub_23B437AC8(a1, v15);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_23B47E608(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

double sub_23B436644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23B3A7084(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_23B3923E8(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_23B4366A8()
{
  v1 = *(v0 + 24);
  sub_23B50B014();
  return v3;
}

uint64_t GeocodeManager.__allocating_init(service:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GeocodeManager.init(service:store:)(a1, a2, a3);
  return v6;
}

void sub_23B436734(uint64_t a1)
{
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v3 = sub_23B50CDF4();
  __swift_project_value_buffer(v3, qword_280B4E9F0);
  v4 = sub_23B50CDD4();
  v5 = sub_23B50D4C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B38D000, v4, v5, "Handling country code configuration change", v6, 2u);
    MEMORY[0x23EE9E260](v6, -1, -1);
  }

  sub_23B3923E8(a1, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133078, &unk_23B516010);
  if (swift_dynamicCast())
  {
    v7 = v22;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v24 = 0u;
    v25 = 0u;
    goto LABEL_13;
  }

  v8 = *MEMORY[0x277D0E7D0];
  v9 = sub_23B50D164();
  v11 = v10;

  sub_23B436644(v9, v11, v7, &v24);

  if (!*(&v25 + 1))
  {
LABEL_13:
    sub_23B3988E8(&v24, &qword_27E133080, &unk_23B519370);
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {

    v12 = v22;
    v13 = v23;
LABEL_17:
    os_unfair_lock_lock((v1 + 48));
    v18 = *(v1 + 64);

    *(v1 + 56) = v12;
    *(v1 + 64) = v13;
    os_unfair_lock_unlock((v1 + 48));
    return;
  }

LABEL_14:
  v14 = [objc_opt_self() sharedConfiguration];
  if (v14)
  {
    v15 = v14;

    v16 = sub_23B391C9C(v15);
    if (v17)
    {
      v12 = v16;
      v13 = v17;
      goto LABEL_17;
    }

    v19 = sub_23B50CDD4();
    v20 = sub_23B50D4B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B38D000, v19, v20, "Could not retrieve countryCode from GEOCountryConfiguration.shared - aborting", v21, 2u);
      MEMORY[0x23EE9E260](v21, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t GeocodeManager.reverseGeocode(location:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for ReverseGeocodeResult();
  v3[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133058, &qword_23B515FA8) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B436B70, 0, 0);
}

uint64_t sub_23B436B70()
{
  v89 = v0;
  v2 = v0[11];
  v1 = v0[12];
  os_unfair_lock_lock((v1 + 48));
  v3 = *(v1 + 56);
  v0[23] = v3;
  v4 = *(v1 + 64);
  v0[24] = v4;

  os_unfair_lock_unlock((v1 + 48));
  [v2 coordinate];
  v5 = sub_23B50D4E4();
  v7 = v6;
  v87 = v5;
  v0[25] = v5;
  v0[26] = v6;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v8 = v0[11];
  v9 = sub_23B50CDF4();
  v0[27] = __swift_project_value_buffer(v9, qword_280B4E9F0);
  v10 = v8;
  v11 = sub_23B50CDD4();
  v12 = sub_23B50D4C4();

  if (os_log_type_enabled(v11, v12))
  {
    v85 = v7;
    v13 = v0[11];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v88[0] = v15;
    *v14 = 141558275;
    OUTLINED_FUNCTION_2_22();
    *(v14 + 4) = v16;
    *(v14 + 12) = 2081;
    [v13 coordinate];
    v0[8] = v17;
    v0[9] = v18;
    type metadata accessor for CLLocationCoordinate2D();
    v19 = sub_23B50D184();
    v21 = sub_23B391F1C(v19, v20, v88);
    v7 = v85;

    *(v14 + 14) = v21;
    _os_log_impl(&dword_23B38D000, v11, v12, "About to reverse geocode a location. location=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v22 = v0[22];
  v23 = v0[12];
  os_unfair_lock_lock((v23 + 32));
  sub_23B437790((v23 + 40), v87, v7, v22);
  os_unfair_lock_unlock((v23 + 32));
  v24 = v0[21];
  v25 = v0[13];
  sub_23B4379FC(v0[22], v24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v27 = v0[21];
  if (EnumTagSinglePayload != 1)
  {
    v47 = v0 + 18;
    v46 = v0[18];
    v48 = v0[11];

    sub_23B437AC8(v27, v46);
    v49 = v48;
    v50 = sub_23B50CDD4();
    v51 = sub_23B50D4C4();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[22];
    if (v52)
    {
      v54 = v0[11];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v88[0] = v56;
      *v55 = 141558275;
      OUTLINED_FUNCTION_2_22();
      *(v55 + 4) = v57;
      *(v55 + 12) = 2081;
      [v54 coordinate];
      v0[6] = v58;
      v0[7] = v59;
      type metadata accessor for CLLocationCoordinate2D();
      v60 = sub_23B50D184();
      v62 = sub_23B391F1C(v60, v61, v88);

      *(v55 + 14) = v62;
      _os_log_impl(&dword_23B38D000, v50, v51, "Found a rev geo result in the in memory cache. location=%{private,mask.hash}s", v55, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

LABEL_20:
    sub_23B3988E8(v53, &qword_27E133058, &qword_23B515FA8);
    v80 = *v47;
    OUTLINED_FUNCTION_1_18();
    sub_23B437AC8(v81, v0[10]);

    v82 = v0[1];
    OUTLINED_FUNCTION_3_25();

    __asm { BRAA            X1, X16 }
  }

  v28 = v0[12];
  sub_23B3988E8(v0[21], &qword_27E133058, &qword_23B515FA8);
  if (!sub_23B4366A8())
  {
    goto LABEL_9;
  }

  v29 = v0[20];
  v30 = v7;
  v31 = v0[13];
  v86 = v30;
  GeocodeStore.queryReverseGeocodeResult(for:configuredCountryCode:)(v87, v30, v3, v4, v29);
  v32 = __swift_getEnumTagSinglePayload(v29, 1, v31);
  v33 = v0[20];
  if (v32 != 1)
  {
    v47 = v0 + 17;
    v63 = v0[17];
    v64 = v0[11];

    sub_23B437AC8(v33, v63);
    v65 = v64;
    v66 = sub_23B50CDD4();
    v67 = sub_23B50D4C4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v0[11];
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v88[0] = v70;
      *v69 = 141558275;
      OUTLINED_FUNCTION_2_22();
      *(v69 + 4) = v71;
      *(v69 + 12) = 2081;
      [v68 coordinate];
      v0[4] = v72;
      v0[5] = v73;
      type metadata accessor for CLLocationCoordinate2D();
      v74 = sub_23B50D184();
      v76 = sub_23B391F1C(v74, v75, v88);

      *(v69 + 14) = v76;
      _os_log_impl(&dword_23B38D000, v66, v67, "Found a rev geo result in the database. location=%{private,mask.hash}s", v69, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v70);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v53 = v0[22];
    v77 = v0[19];
    v78 = v0[17];
    v79 = v0[13];
    os_unfair_lock_lock((v23 + 32));
    sub_23B3FE9CC(v78, v77);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v79);
    sub_23B4364B8(v77, v87, v86);
    os_unfair_lock_unlock((v23 + 32));

    goto LABEL_20;
  }

  sub_23B3988E8(v33, &qword_27E133058, &qword_23B515FA8);
LABEL_9:
  v34 = sub_23B50CDD4();
  v35 = sub_23B50D4C4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23B38D000, v34, v35, "About to perform reverseGeocode through service", v36, 2u);
    OUTLINED_FUNCTION_38();
  }

  v37 = v0[12];

  v38 = *(v37 + 16);
  v39 = swift_task_alloc();
  v0[28] = v39;
  *v39 = v0;
  v39[1] = sub_23B437270;
  v40 = v0[16];
  v41 = v0[11];
  OUTLINED_FUNCTION_3_25();

  return sub_23B4F30D4(v42, v43);
}

uint64_t sub_23B437270()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    v5 = *(v2 + 192);

    v6 = sub_23B4376B0;
  }

  else
  {
    v6 = sub_23B437398;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23B437398()
{
  v43 = v0;
  v1 = v0[27];
  v2 = v0[11];
  sub_23B3FE9CC(v0[16], v0[15]);
  v3 = v2;
  v4 = sub_23B50CDD4();
  v5 = sub_23B50D4C4();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[14];
    v6 = v0[15];
    v41 = v0[13];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v9 = 141558787;
    OUTLINED_FUNCTION_2_22();
    *(v9 + 4) = v10;
    *(v9 + 12) = 2081;
    [v8 coordinate];
    v0[2] = v11;
    v0[3] = v12;
    type metadata accessor for CLLocationCoordinate2D();
    v13 = sub_23B50D184();
    v15 = sub_23B391F1C(v13, v14, &v42);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2160;
    OUTLINED_FUNCTION_2_22();
    *(v9 + 24) = v16;
    *(v9 + 32) = 2081;
    sub_23B3FE9CC(v6, v7);
    v17 = sub_23B50D184();
    v19 = v18;
    sub_23B437A6C(v6);
    v20 = sub_23B391F1C(v17, v19, &v42);

    *(v9 + 34) = v20;
    _os_log_impl(&dword_23B38D000, v4, v5, "Successfully reverse geocoded the location. location=%{private,mask.hash}s, result=%{private,mask.hash}s", v9, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v21 = v0[15];

    sub_23B437A6C(v21);
  }

  v22 = v0[12];
  if (sub_23B4366A8())
  {
    GeocodeStore.saveReverseGeocodeResult(_:for:configuredCountryCode:)(v0[16], v0[25], v0[26], v0[23], v0[24]);
  }

  v24 = v0[25];
  v23 = v0[26];
  v25 = v0[24];
  v26 = v0[22];
  v27 = v0[19];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];

  os_unfair_lock_lock(v30 + 8);
  sub_23B3FE9CC(v28, v27);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v29);
  sub_23B4364B8(v27, v24, v23);
  os_unfair_lock_unlock(v30 + 8);
  sub_23B3988E8(v26, &qword_27E133058, &qword_23B515FA8);
  v31 = v0[21];
  v32 = v0[22];
  v34 = v0[19];
  v33 = v0[20];
  v36 = v0[17];
  v35 = v0[18];
  v37 = v0[15];
  v38 = v0[14];
  sub_23B437AC8(v0[16], v0[10]);

  v39 = v0[1];

  return v39();
}

uint64_t sub_23B4376B0()
{
  OUTLINED_FUNCTION_1_18();
  sub_23B3988E8(v0, &qword_27E133058, &qword_23B515FA8);

  v2 = *(v1 + 8);
  v3 = *(v1 + 232);

  return v2();
}

uint64_t sub_23B437790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_23B3A7084(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for ReverseGeocodeResult();
    sub_23B3FE9CC(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for ReverseGeocodeResult();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t GeocodeManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_23B3988E8(v0 + 40, &qword_27E133060, &qword_23B515FB0);
  sub_23B437B2C(v0 + 56);
  return v0;
}

uint64_t GeocodeManager.__deallocating_deinit()
{
  GeocodeManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_23B4378C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23B3A7084(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133088, &qword_23B519FA0);
    sub_23B50D624();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = type metadata accessor for ReverseGeocodeResult();
    sub_23B437AC8(v13 + *(*(v14 - 8) + 72) * v9, a3);
    sub_23B50D634();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for ReverseGeocodeResult();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_23B4379FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133058, &qword_23B515FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B437A6C(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodeResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B437AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodeResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MoonEvents.mock()@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_27(v8);
  OUTLINED_FUNCTION_0_27(v5);
  v9 = type metadata accessor for MoonEvents();
  v10 = *(v9 + 20);
  OUTLINED_FUNCTION_0_27(&a1[v10]);
  v11 = *(v9 + 24);
  OUTLINED_FUNCTION_0_27(&a1[v11]);
  *a1 = 2;
  sub_23B3CF890(v8, &a1[v10]);
  return sub_23B3CF890(v5, &a1[v11]);
}

uint64_t ProviderAttribution.init(name:logoURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for ProviderAttribution() + 20);
  v9 = sub_23B50AB34();
  __swift_storeEnumTagSinglePayload(a4 + v8, 1, 1, v9);
  *a4 = a1;
  a4[1] = a2;

  return sub_23B437D30(a3, a4 + v8);
}

uint64_t sub_23B437D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProviderAttribution.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProviderAttribution.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProviderAttribution.logoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProviderAttribution() + 20);

  return sub_23B437D30(a1, v3);
}

uint64_t sub_23B437EB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B437F7C(char a1)
{
  if (a1)
  {
    return 0x4C52556F676F6CLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23B437FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B437EB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B437FDC(uint64_t a1)
{
  v2 = sub_23B4384AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B438018(uint64_t a1)
{
  v2 = sub_23B4384AC();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static ProviderAttribution.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_23B50AB34();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DE0, &qword_23B515490);
  v20 = *(*(v19 - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v24 = *a1 == *a2 && a1[1] == a2[1];
  if (v24 || (v25 = sub_23B50D834(), result = 0, (v25 & 1) != 0))
  {
    v27 = *(type metadata accessor for ProviderAttribution() + 20);
    v28 = *(v19 + 48);
    sub_23B3C4528(a1 + v27, v23);
    sub_23B3C4528(a2 + v27, &v23[v28]);
    OUTLINED_FUNCTION_46(v23);
    if (v24)
    {
      OUTLINED_FUNCTION_46(&v23[v28]);
      if (v24)
      {
        sub_23B3988E8(v23, &qword_27E131FC0, &qword_23B515170);
        return 1;
      }
    }

    else
    {
      sub_23B3C4528(v23, v18);
      OUTLINED_FUNCTION_46(&v23[v28]);
      if (!v29)
      {
        (*(v7 + 32))(v12, &v23[v28], v4);
        OUTLINED_FUNCTION_0_28();
        sub_23B438B20(v30, v31);
        v32 = sub_23B50D134();
        v33 = *(v7 + 8);
        v33(v12, v4);
        v33(v18, v4);
        sub_23B3988E8(v23, &qword_27E131FC0, &qword_23B515170);
        return (v32 & 1) != 0;
      }

      (*(v7 + 8))(v18, v4);
    }

    sub_23B3988E8(v23, &qword_27E132DE0, &qword_23B515490);
    return 0;
  }

  return result;
}

uint64_t ProviderAttribution.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133090, &qword_23B516020);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4384AC();
  sub_23B50D974();
  v14 = *v3;
  v15 = v3[1];
  v20[15] = 0;
  sub_23B50D7A4();
  if (!v2)
  {
    v16 = *(type metadata accessor for ProviderAttribution() + 20);
    v20[14] = 1;
    sub_23B50AB34();
    OUTLINED_FUNCTION_0_28();
    sub_23B438B20(v17, v18);
    sub_23B50D794();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B4384AC()
{
  result = qword_280B42390;
  if (!qword_280B42390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42390);
  }

  return result;
}

uint64_t ProviderAttribution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133098, &qword_23B516028);
  v11 = OUTLINED_FUNCTION_5(v10);
  v33[1] = v12;
  v33[2] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v16 = type metadata accessor for ProviderAttribution();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  v22 = (v21 - v20);
  v24 = *(v23 + 28);
  v25 = sub_23B50AB34();
  v34 = v24;
  __swift_storeEnumTagSinglePayload(v22 + v24, 1, 1, v25);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4384AC();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23B3988E8(v22 + v34, &qword_27E131FC0, &qword_23B515170);
  }

  else
  {
    v36 = 0;
    *v22 = sub_23B50D6E4();
    v22[1] = v27;
    v35 = 1;
    OUTLINED_FUNCTION_0_28();
    sub_23B438B20(v28, v29);
    sub_23B50D6D4();
    v30 = OUTLINED_FUNCTION_3_26();
    v31(v30);
    sub_23B437D30(v9, v22 + v34);
    sub_23B4387C0(v22, v33[0]);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23B438824(v22);
  }
}

uint64_t sub_23B4387C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProviderAttribution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B438824(uint64_t a1)
{
  v2 = type metadata accessor for ProviderAttribution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProviderAttribution.hash(into:)()
{
  v1 = sub_23B50AB34();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = *v0;
  v17 = v0[1];
  sub_23B50D1C4();
  v18 = type metadata accessor for ProviderAttribution();
  sub_23B3C4528(v0 + *(v18 + 20), v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    return sub_23B50D8E4();
  }

  (*(v4 + 32))(v9, v15, v1);
  sub_23B50D8E4();
  OUTLINED_FUNCTION_0_28();
  sub_23B438B20(v20, v21);
  sub_23B50D0E4();
  return (*(v4 + 8))(v9, v1);
}

uint64_t ProviderAttribution.hashValue.getter()
{
  sub_23B50D8C4();
  ProviderAttribution.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B438A9C()
{
  sub_23B50D8C4();
  ProviderAttribution.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B438B20(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ProviderAttribution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B438C48()
{
  result = qword_27E1330A8;
  if (!qword_27E1330A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1330A8);
  }

  return result;
}

unint64_t sub_23B438CA0()
{
  result = qword_280B42380;
  if (!qword_280B42380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42380);
  }

  return result;
}

unint64_t sub_23B438CF8()
{
  result = qword_280B42388;
  if (!qword_280B42388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42388);
  }

  return result;
}

Swift::String __swiftcall WeatherCondition.accessibilityDescription(isDaylight:)(Swift::Bool isDaylight)
{
  v2 = *v1;
  if (v2 == 19)
  {
    if (isDaylight)
    {
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }
    }

    else if (qword_280B43260 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_19_9(28525);
    goto LABEL_18;
  }

  if (v2 == 4)
  {
    if (isDaylight)
    {
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }
    }

    else if (qword_280B43260 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    OUTLINED_FUNCTION_5_0();
LABEL_18:
    OUTLINED_FUNCTION_2_12();
    v3 = sub_23B50AAD4();
    goto LABEL_19;
  }

  v6 = *v1;
  v3 = WeatherCondition.accessibilityDescription.getter();
LABEL_19:
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t WeatherCondition.Intensity.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23B438FC4@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherCondition.Intensity.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherCondition.ConditionGeneralCategory.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

Swift::String __swiftcall WeatherCondition.descriptionCategoryExpectedPhrase(isDaylight:isLeading:)(Swift::Bool isDaylight, Swift::Bool isLeading)
{
  v13[1] = *v2;
  WeatherCondition.category.getter(v13);
  switch(v13[0])
  {
    case 1:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_26;
    case 2:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_16_5();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_157:
        OUTLINED_FUNCTION_5_0();
      }

      goto LABEL_158;
    case 3:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_157;
    case 4:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_157;
    case 5:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        v6 = &unk_280B4E000;
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_6_8();
      if (!v5)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      goto LABEL_142;
    case 6:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        if (v8 != -1)
        {
          OUTLINED_FUNCTION_1_19();
          swift_once();
          OUTLINED_FUNCTION_13_9();
        }
      }

      else if (v8 != -1)
      {
        OUTLINED_FUNCTION_1_19();
        swift_once();
        OUTLINED_FUNCTION_13_9();
      }

      goto LABEL_157;
    case 7:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_148;
    case 8:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_148;
    case 9:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_157;
    case 0xA:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        if (v9 != -1)
        {
          OUTLINED_FUNCTION_1_19();
          swift_once();
          OUTLINED_FUNCTION_13_9();
        }
      }

      else if (v9 != -1)
      {
        OUTLINED_FUNCTION_1_19();
        swift_once();
        OUTLINED_FUNCTION_13_9();
      }

      goto LABEL_157;
    case 0xB:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_148;
    case 0xC:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_26:
        OUTLINED_FUNCTION_3_27();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_15_8();
      }

      goto LABEL_158;
    case 0xD:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_142;
    case 0xE:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        v6 = &unk_280B4E000;
LABEL_63:
        v7 = v6[314];
        OUTLINED_FUNCTION_15_8();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_142:
        OUTLINED_FUNCTION_3_27();
        OUTLINED_FUNCTION_8();
      }

LABEL_158:
      OUTLINED_FUNCTION_2_12();
      v10 = sub_23B50AAD4();
      result._object = v11;
      result._countAndFlagsBits = v10;
      return result;
    case 0xF:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_148;
    case 0x10:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_142;
    case 0x11:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_142;
    case 0x12:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_142;
    case 0x13:
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_142;
    case 0x14:
      OUTLINED_FUNCTION_10_15();
      if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_148:
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_8();
      }

      goto LABEL_158;
    default:
      OUTLINED_FUNCTION_10_15();
      if (isDaylight)
      {
        if (isLeading)
        {
          OUTLINED_FUNCTION_6_8();
          if (!v5)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_8();
          if (!v5)
          {
            OUTLINED_FUNCTION_0_15();
            swift_once();
          }
        }
      }

      else if (isLeading)
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_8();
        if (!v5)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }
      }

      goto LABEL_157;
  }
}

Swift::String __swiftcall WeatherCondition.exactDescriptionPhrase(isDaylight:isLeading:)(Swift::Bool isDaylight, Swift::Bool isLeading)
{
  v3 = sub_23B439D84(*v2, isLeading, isDaylight);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_23B439D84(char a1, char a2, char a3)
{
  switch(a1)
  {
    case 1:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 2:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 3:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 4:
      if (a3)
      {
        if (a2)
        {
          if (qword_280B43260 != -1)
          {
            goto LABEL_206;
          }
        }

        else if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 5:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 6:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 7:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 8:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 9:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 10:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 11:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 12:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 13:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 14:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 15:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 16:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 17:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 18:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 19:
      if (a3)
      {
        if (a2)
        {
          if (qword_280B43260 != -1)
          {
            goto LABEL_206;
          }
        }

        else if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 20:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 21:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 22:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 23:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 24:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 25:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 26:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 27:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 28:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
    case 29:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 30:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 31:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 32:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          goto LABEL_206;
        }
      }

      else if (qword_280B43260 != -1)
      {
        goto LABEL_206;
      }

      break;
    case 33:
      if (a2)
      {
        if (qword_280B43260 == -1)
        {
          return sub_23B50AAD4();
        }
      }

      else if (qword_280B43260 == -1)
      {
        return sub_23B50AAD4();
      }

LABEL_206:
      swift_once();
      break;
    default:
      if (a2)
      {
        if (qword_280B43260 != -1)
        {
          swift_once();
        }
      }

      else if (qword_280B43260 != -1)
      {
        swift_once();
      }

      break;
  }

  return sub_23B50AAD4();
}