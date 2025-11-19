uint64_t OUTLINED_FUNCTION_11_80()
{

  return swift_once();
}

void OUTLINED_FUNCTION_21_50()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_22_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21729C7F8(&a9);
}

uint64_t MusicFeatureFlag.isEnabled.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v9[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  v9[4] = sub_2171FEF88();
  v7 = swift_allocObject();
  v9[0] = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  LOBYTE(v1) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1 & 1;
}

uint64_t MusicFeatureFlag.init(domain:feature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t MusicFeatureFlag.domain.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t MusicFeatureFlag.feature.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t static MusicFeatureFlag.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[4];
  v26 = a2[3];
  v10 = *(a2 + 40);
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v13 = sub_217752AB8();
  v15 = v14;
  if (v13 == sub_217752AB8() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_217753058();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  v20 = sub_217752AB8();
  v22 = v21;
  if (v20 == sub_217752AB8() && v22 == v23)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_217753058();
  }

  return v19 & 1;
}

uint64_t MusicFeatureFlag.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  sub_217752AB8();
  sub_217751FF8();

  sub_217752AB8();
  sub_217751FF8();
}

uint64_t MusicFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  sub_2177531E8();
  sub_217752AB8();
  OUTLINED_FUNCTION_1_110();

  sub_217752AB8();
  OUTLINED_FUNCTION_1_110();

  return sub_217753238();
}

uint64_t sub_2176F2F48()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  sub_2177531E8();
  sub_217752AB8();
  sub_217751FF8();

  sub_217752AB8();
  sub_217751FF8();

  return sub_217753238();
}

void sub_2176F2FFC()
{
  qword_27CB2D298 = "MusicKit";
  unk_27CB2D2A0 = 8;
  byte_27CB2D2A8 = 2;
  qword_27CB2D2B0 = "music_picker_suggested_songs";
  unk_27CB2D2B8 = 28;
  byte_27CB2D2C0 = 2;
}

double static MusicFeatureFlag.musicPickerSuggestedSongs.getter()
{
  if (qword_27CB23E88 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D298).n128_u64[0];
  return result;
}

void sub_2176F3090()
{
  qword_27CB2D2C8 = "MusicKit";
  unk_27CB2D2D0 = 8;
  byte_27CB2D2D8 = 2;
  qword_27CB2D2E0 = "maestro";
  unk_27CB2D2E8 = 7;
  byte_27CB2D2F0 = 2;
}

double static MusicFeatureFlag.maestro.getter()
{
  if (qword_27CB23E90 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D2C8).n128_u64[0];
  return result;
}

void sub_2176F3124()
{
  qword_27CB2D2F8 = "MusicKit";
  unk_27CB2D300 = 8;
  byte_27CB2D308 = 2;
  qword_27CB2D310 = "library_pins";
  unk_27CB2D318 = 12;
  byte_27CB2D320 = 2;
}

double static MusicFeatureFlag.libraryPins.getter()
{
  if (qword_27CB23E98 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D2F8).n128_u64[0];
  return result;
}

void sub_2176F31B8()
{
  qword_27CB2D328 = "MusicKit";
  unk_27CB2D330 = 8;
  byte_27CB2D338 = 2;
  qword_27CB2D340 = "modern_upsell";
  unk_27CB2D348 = 13;
  byte_27CB2D350 = 2;
}

double static MusicFeatureFlag.modernUpsell.getter()
{
  if (qword_27CB23EA8 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D328).n128_u64[0];
  return result;
}

void sub_2176F324C()
{
  qword_280BE8048 = "MediaPlayer";
  unk_280BE8050 = 11;
  byte_280BE8058 = 2;
  OUTLINED_FUNCTION_1_135(&qword_280BE8048);
}

double static MusicFeatureFlag.favoriting.getter()
{
  if (qword_280BE8040 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_280BE8048).n128_u64[0];
  return result;
}

void sub_2176F32D4()
{
  qword_27CB2D358 = "MediaPlayer";
  unk_27CB2D360 = 11;
  byte_27CB2D368 = 2;
  qword_27CB2D370 = "UpgradeOnPlay";
  unk_27CB2D378 = 13;
  byte_27CB2D380 = 2;
}

double static MusicFeatureFlag.upgradeOnPlay.getter()
{
  if (qword_27CB23EB8 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D358).n128_u64[0];
  return result;
}

void sub_2176F3368()
{
  qword_27CB2D388 = "AppleAccount";
  unk_27CB2D390 = 12;
  byte_27CB2D398 = 2;
  OUTLINED_FUNCTION_1_135(&qword_27CB2D388);
}

double static MusicFeatureFlag.appleAccountRebranding.getter()
{
  if (qword_27CB23EC0 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D388).n128_u64[0];
  return result;
}

void sub_2176F33F0()
{
  qword_27CB2D3B8 = "SwiftUI";
  unk_27CB2D3C0 = 7;
  byte_27CB2D3C8 = 2;
  qword_27CB2D3D0 = "Solarium";
  unk_27CB2D3D8 = 8;
  byte_27CB2D3E0 = 2;
}

double static MusicFeatureFlag.solarium.getter()
{
  if (qword_27CB23EC8 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D3B8).n128_u64[0];
  return result;
}

unint64_t sub_2176F3488()
{
  result = qword_27CB2D3E8;
  if (!qword_27CB2D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D3E8);
  }

  return result;
}

uint64_t sub_2176F3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  if (v23)
  {
    OUTLINED_FUNCTION_2_134();
    type metadata accessor for RelatedItem.SharedStorage();

    sub_217751DE8();
    *a7 = sub_2176F3824(a1, a2, a3, a4, a5);
    OUTLINED_FUNCTION_2_134();
    type metadata accessor for RelatedItem();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    a4(a1, a2);
    (*(v15 + 32))(a7, v22, a6);
    OUTLINED_FUNCTION_2_134();
    type metadata accessor for RelatedItem();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_2176F36CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v10);
  }

  v12 = *v10;
  v13 = v12[2];
  v14 = v12[3];
  v15 = v12[4];
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  sub_217751DE8();

  sub_2174E3820(v13, v17, a2);
}

uint64_t sub_2176F3824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_122();
  v10 = swift_allocObject();
  sub_2176F4120(v8, v7, v6, v5, a5);
  return v10;
}

uint64_t sub_2176F3888(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_0();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(*v18 + 16);
    v21 = *(*v18 + 24);
    sub_217751DE8();
  }

  else
  {
    (*(v4 + 32))(v11, v18, v2);
    v20 = (*(*(a1 + 24) + 8))(v2);
    (*(v4 + 8))(v11, v2);
  }

  return v20;
}

uint64_t sub_2176F3A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2176F3888(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2176F3A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56[1] = a5;
  OUTLINED_FUNCTION_0();
  v60 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11, v12);
  v58 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v57 = v56 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v20 = v56 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v56 - v23;
  v59 = v25;
  v26 = type metadata accessor for RelatedItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(*(TupleTypeMetadata2 - 8) + 64);
  v30 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8, v29);
  v32 = (v56 - v31);
  v34 = *(v33 + 56);
  v35 = *(*(v26 - 8) + 16);
  v35(v56 - v31, a1, v26, v30);
  (v35)(v32 + v34, a2, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v32;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *(v32 + v34);
      if (*(v36 + 16) == *(v37 + 16) && *(v36 + 24) == *(v37 + 24))
      {
        v39 = 1;
      }

      else
      {
        v39 = sub_217753058();
      }
    }

    else
    {
      v45 = v60;
      v46 = v32 + v34;
      v47 = v58;
      (*(v60 + 32))(v58, v46, a3);
      v48 = *(v36 + 16);
      v49 = *(v36 + 24);
      if (v48 == (*(v59 + 8))(a3) && v49 == v50)
      {
        v39 = 1;
      }

      else
      {
        v39 = sub_217753058();
      }

      (*(v45 + 8))(v47, a3);
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *(v32 + v34);
    v41 = v60;
    v42 = v57;
    (*(v60 + 32))(v57, v32, a3);
    if ((*(v59 + 8))(a3) == *(v40 + 16) && v43 == *(v40 + 24))
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_217753058();
    }

    (*(v41 + 8))(v42, a3);
  }

  else
  {
    v52 = v60;
    v53 = *(v60 + 32);
    v53(v24, v32, a3);
    v53(v20, (v32 + v34), a3);
    v39 = sub_217751F08();
    v54 = *(v52 + 8);
    v54(v20, a3);
    v54(v24, a3);
  }

  return v39 & 1;
}

uint64_t sub_2176F3E94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v10, v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15, a2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(*v13 + 16);
    v17 = *(*v13 + 24);
    sub_217751DE8();
    sub_217751FF8();
  }

  else
  {
    (*(v4 + 32))(v7, v13, v3);
    sub_217751EB8();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2176F4064(uint64_t a1)
{
  sub_2177531E8();
  sub_2176F3E94(v3, a1);
  return sub_217753238();
}

uint64_t sub_2176F40CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  sub_2176F3E94(v6, a2);
  return sub_217753238();
}

uint64_t *sub_2176F4120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  OUTLINED_FUNCTION_3_122();
  v11 = *v9;
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  OUTLINED_FUNCTION_4_129();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_4_129();
  v18 = *(v17 + 88);
  sub_217751DE8();

  sub_2174E3B88(v8, v7, v6, a5, v16, v18);

  return v9;
}

void *sub_2176F41D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[4];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_4_129();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_4_129();
  v9 = *(v8 + 88);

  sub_217751DE8();
  sub_2174E4038();

  v10 = v1[3];

  v11 = v1[4];

  return v1;
}

uint64_t sub_2176F4278()
{
  sub_2176F41D0();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2176F42C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    v3 = type metadata accessor for RelatedItem.SharedStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2176F4350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2176F4474(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

MusicKit::Playlist::Kind_optional __swiftcall Playlist.Kind.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() playlistTypeForRawValue_];
  if ((v3 - 5) >= 4)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0x2040100u >> (8 * (v3 - 5));
  }

  *v2 = v4;
  return v3;
}

Swift::Int __swiftcall Playlist.Kind.convertToLegacyModelRawValue()()
{
  v1 = qword_21779A770[*v0];
  v2 = objc_opt_self();

  return [v2 rawValueForPlaylistType_];
}

Swift::Int sub_2176F4758@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Kind.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t static MusicCatalogSearchRequest.supportedTypeValues.getter()
{
  if (qword_27CB23D78 != -1)
  {
    swift_once();
  }

  v0 = off_27CB2ABA0;
  v1 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v2 + 8);
    sub_217751DE8();
    v5(v3, v4);
    v7 = (*(v6 + 40))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v0;
    sub_2176F7C9C(v7, sub_2176F8828, 0, isUniquelyReferenced_nonNull_native, &v15);
    v0 = v15;
  }

  else
  {
    sub_217751DE8();
  }

  v9 = v0[2];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v0[2];
  v11 = sub_2176F77F4();
  sub_2176F865C();
  v13 = v12;
  sub_2172303F0();
  if (v13 != v9)
  {
    __break(1u);
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t MusicCatalogSearchRequest.response()(uint64_t a1)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_217282D8C;

  return (sub_2173B2474)(a1, v1 + 48);
}

uint64_t MusicCatalogSearchRequest.init(term:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a4;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  OUTLINED_FUNCTION_109();
  v8 = off_280BEBCD0;

  (v8)(&v27, v9);

  v10 = v29;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(&v27, v29);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v10, v11, v7 + 48);
  __swift_destroy_boxed_opaque_existential_1(&v27);
  *v7 = a1;
  *(v7 + 8) = a2;
  v12 = *(a3 + 16);
  if (v12)
  {
    v25 = v7;
    v26 = MEMORY[0x277D84F90];
    sub_217276E20();
    v13 = 0;
    v14 = 32;
    v15 = v26;
    while (v13 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v14)))
      {
        goto LABEL_12;
      }

      (*(v16 + 8))(&v27);
      v17 = v27;
      v19 = v28;
      v18 = v29;
      v20 = *(v26 + 16);
      if (v20 >= *(v26 + 24) >> 1)
      {
        v24 = v27;
        sub_217276E20();
        v17 = v24;
      }

      *(v26 + 16) = v20 + 1;
      v21 = v26 + 32 * v20;
      *(v21 + 32) = v17;
      ++v13;
      *(v21 + 48) = v19;
      *(v21 + 56) = v18;
      v14 += 16;
      if (v12 == v13)
      {

        v7 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v23 = sub_217753348();
    MEMORY[0x21CEA23B0](v23);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177ACF10);
    result = OUTLINED_FUNCTION_4_0();
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_10:
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 88) = v15;
    *(v7 + 112) = 0;
  }

  return result;
}

uint64_t MusicCatalogSearchRequest.term.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t MusicCatalogSearchRequest.types.getter()
{
  v1 = 88;
  if (*(v0 + 112))
  {
    v1 = 104;
  }

  v2 = *(v0 + v1);
  sub_217751DE8();
  v3 = sub_2173C2FA0(0, *(v2 + 16), v2);
  if (v3)
  {
    v4 = v3;
    v21 = MEMORY[0x277D84F90];
    sub_217276E6C(0, v3 & ~(v3 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v6 = v21;
      v7 = (v2 + 56);
      while (v5 < *(v2 + 16))
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = dynamic_cast_existential_1_conditional(*(v7 - 3));
        if (!v10)
        {
          goto LABEL_16;
        }

        v12 = v10;
        v13 = v11;
        v15 = *(v21 + 16);
        v14 = *(v21 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_217276E6C(v14 > 1, v15 + 1, 1);
        }

        *(v21 + 16) = v15 + 1;
        v16 = v21 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        ++v5;
        v7 += 4;
        if (v4 == v5)
        {

          return v6;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
    sub_217751DE8();
    sub_217285954(1);
    v18 = sub_217752918();
    v20 = v19;

    MEMORY[0x21CEA23B0](v18, v20);

    sub_217751DE8();
    sub_2172857F8(1uLL);
    sub_217285A70();
    sub_217751DE8();
    sub_217752048();

    MEMORY[0x21CEA23B0](46, 0xE100000000000000);

    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177ACF40);
    result = OUTLINED_FUNCTION_4_0();
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t MusicCatalogSearchRequest.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MusicCatalogSearchRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchRequest.offset.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t MusicCatalogSearchRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_10();
  v1[347] = v0;
  v1[346] = v2;
  v3 = sub_2177516D8();
  v1[348] = v3;
  OUTLINED_FUNCTION_15_3(v3);
  v1[349] = v4;
  v6 = *(v5 + 64) + 15;
  v1[350] = swift_task_alloc();
  v7 = sub_2177512F8();
  v1[351] = v7;
  OUTLINED_FUNCTION_15_3(v7);
  v1[352] = v8;
  v10 = *(v9 + 64) + 15;
  v1[353] = swift_task_alloc();
  v11 = type metadata accessor for MusicDataRequest();
  v1[354] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[355] = swift_task_alloc();
  v13 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v1[356] = swift_task_alloc();
  v1[357] = swift_task_alloc();
  v1[358] = swift_task_alloc();
  v1[359] = swift_task_alloc();
  v1[360] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2176F517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  v17 = v14[347];
  v18 = *(v17 + 88);
  v14[361] = v18;
  v19 = *(v17 + 96);
  v14[362] = v19;
  v20 = *(v17 + 104);
  v14[363] = v20;
  v21 = *(v17 + 112);
  v22 = OUTLINED_FUNCTION_145_0();
  sub_2176F8860(v22, v23, v20, v21);
  if (v21)
  {
    v24 = v14[358];
    v25 = v14[347];
    v26 = OUTLINED_FUNCTION_145_0();
    sub_2176F6A4C(v26, v27);
    sub_2172CB2E8(v14[358], v14[360]);
    v36 = OUTLINED_FUNCTION_145_0();
    sub_2176F88A0(v36, v37, v20, 1);
    v38 = OUTLINED_FUNCTION_9_89();
    v66 = v40;
    v68 = v39;
    sub_2172CB230(v38, v18);
    sub_2172CB230(v18, v25);
    v41 = OUTLINED_FUNCTION_314();
    v42(v41);
    OUTLINED_FUNCTION_453();
    OUTLINED_FUNCTION_30_4();
    sub_2176F88E0(v25, v43);
    OUTLINED_FUNCTION_647();
    v44 = OUTLINED_FUNCTION_202();
    v45(v44);
    v46 = (v15 + *(v66 + 20));
    OUTLINED_FUNCTION_109();
    v47 = off_280BEBCD0;

    (v47)(v48);

    OUTLINED_FUNCTION_23_57();
    (*(v16 + 8))(0, v19);
    sub_2176F88E0(v18, v20);
    __swift_destroy_boxed_opaque_existential_1(v14 + 324);
    sub_21725EE54(v68 + 48, v46);
    v49 = v46[3];
    v50 = v46[4];
    v51 = OUTLINED_FUNCTION_16_24(v46);
    v52 = *(v51 + 104);
    v67 = v51 + 104;
    OUTLINED_FUNCTION_66_3();
    v69 = v53 + *v53;
    v55 = *(v54 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v14[366] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_7_87(v56);
    OUTLINED_FUNCTION_120_0();

    return v62(v58, v59, v60, v61, v62, v63, v64, v65, v67, v69, a11, a12, a13, a14);
  }

  else
  {
    v14[345] = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v14[364] = v28;
    *v28 = v29;
    v28[1] = sub_2176F54A8;
    v30 = v14[359];
    v31 = v14[347];
    OUTLINED_FUNCTION_120_0();

    return sub_2176F5D34(v32, v33);
  }
}

uint64_t sub_2176F54A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2912);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2920) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2176F55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  v19 = v14[363];
  v20 = v14[362];
  v21 = v14[361];
  sub_2172CB2E8(v14[359], v14[360]);
  sub_2176F88A0(v21, v20, v19, 0);
  v22 = OUTLINED_FUNCTION_9_89();
  v51 = v24;
  v53 = v23;
  sub_2172CB230(v22, v20);
  sub_2172CB230(v20, v19);
  v25 = OUTLINED_FUNCTION_314();
  v26(v25);
  OUTLINED_FUNCTION_453();
  OUTLINED_FUNCTION_30_4();
  sub_2176F88E0(v19, v27);
  OUTLINED_FUNCTION_647();
  v28 = OUTLINED_FUNCTION_202();
  v29(v28);
  v30 = (v17 + *(v51 + 20));
  OUTLINED_FUNCTION_109();
  v31 = off_280BEBCD0;

  (v31)(v32);

  OUTLINED_FUNCTION_23_57();
  (*(v18 + 8))(v21, v15);
  sub_2176F88E0(v20, v16);
  __swift_destroy_boxed_opaque_existential_1(v14 + 324);
  sub_21725EE54(v53 + 48, v30);
  v33 = v30[3];
  v34 = v30[4];
  v35 = OUTLINED_FUNCTION_16_24(v30);
  v36 = *(v35 + 104);
  v52 = v35 + 104;
  OUTLINED_FUNCTION_66_3();
  v54 = v37 + *v37;
  v39 = *(v38 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v14[366] = v40;
  *v40 = v41;
  OUTLINED_FUNCTION_7_87(v40);
  OUTLINED_FUNCTION_120_0();

  return v46(v42, v43, v44, v45, v46, v47, v48, v49, a9, v52, v54, a12, a13, a14);
}

uint64_t sub_2176F578C()
{
  OUTLINED_FUNCTION_182();
  sub_2176F88A0(v0[361], v0[362], v0[363], 0);
  v1 = v0[365];
  v2 = v0[360];
  v3 = v0[359];
  v4 = v0[358];
  OUTLINED_FUNCTION_6_108();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2176F5854()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2928);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2936) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2176F594C()
{
  v1 = v0[367];
  v2 = v0[347];
  v3 = v0[342];
  v4 = v0[343];
  v5 = v0[344];
  v6 = sub_217751348();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v2 + 48, (v0 + 329));
  JSONDecoder.dataRequestConfiguration.setter((v0 + 329));
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  SharedRelatedItemStore.init()();
  v9 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v9);
  sub_2176F8940();
  sub_217751308();
  if (v1)
  {
    v10 = v0[360];
    v11 = v0[355];

    v12 = OUTLINED_FUNCTION_145_0();
    sub_217275694(v12, v13);

    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v10, v14);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v11, v15);
    v16 = v0[360];
    v17 = v0[359];
    v18 = v0[358];
    OUTLINED_FUNCTION_6_108();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v40 = v5;
    v20 = v0[347];
    sub_2175A3334((v0 + 2), (v0 + 163));
    v21 = *(v20 + 8);
    v34 = *v20;
    v22 = *(v20 + 88);
    v23 = *(v20 + 96);
    v24 = *(v20 + 104);
    if (*(v20 + 112))
    {
      sub_217751DE8();
      sub_2176F8860(v22, v23, v24, 1);
    }

    else
    {
      sub_217751DE8();
      sub_2176F8860(v22, v23, v24, 0);
    }

    v25 = v0[360];
    v33 = v0[359];
    v35 = v0[358];
    v36 = v0[357];
    v26 = v0[355];
    v37 = v0[356];
    v38 = v0[353];
    v39 = v0[350];
    v27 = v0[346];
    sub_2172CA838(v0[347] + 48, (v0 + 334));
    sub_2175EB460((v0 + 163), v34);

    v28 = OUTLINED_FUNCTION_145_0();
    sub_217275694(v28, v29);

    sub_2175A336C((v0 + 2));
    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v25, v30);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v26, v31);

    OUTLINED_FUNCTION_20_0();
  }

  return v19();
}

uint64_t sub_2176F5C64()
{
  OUTLINED_FUNCTION_182();
  v1 = v0[360];
  v2 = v0[355];
  OUTLINED_FUNCTION_1_17();
  sub_2176F88E0(v3, v4);
  OUTLINED_FUNCTION_21();
  sub_2176F88E0(v2, v5);
  v6 = v0[367];
  v7 = v0[360];
  v8 = v0[359];
  v9 = v0[358];
  OUTLINED_FUNCTION_6_108();

  OUTLINED_FUNCTION_20_0();

  return v10();
}

uint64_t sub_2176F5D34(uint64_t a1, uint64_t *a2)
{
  v3[14] = a1;
  v3[15] = v2;
  v5 = sub_217751428();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  v3[24] = v8;
  v3[25] = v9;

  return MEMORY[0x2822009F8](sub_2176F5E44, 0, 0);
}

uint64_t sub_2176F5E44()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  *(v0 + 208) = *(v1 + 72);
  *(v0 + 280) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 216) = v3;
  *(v3 + 16) = xmmword_2177586E0;
  v4 = *v2;
  v5 = v2[1];
  sub_2177513F8();
  v6 = v2[9];
  v7 = v2[10];
  v8 = *(OUTLINED_FUNCTION_16_24(v2 + 6) + 40);
  OUTLINED_FUNCTION_66_3();
  v16 = v9 + *v9;
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  *(v0 + 224) = v12;
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25_59(v12);

  return v14(v13);
}

uint64_t sub_2176F5FBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  *v3 = *v1;
  v2[29] = v6;
  v2[30] = v7;
  v2[31] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2176F60C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  v15 = v14;
  if (v14[30])
  {
    v16 = v14[29];
    v17 = v14[27];
    v19 = v15[23];
    v18 = v15[24];
    v20 = v15[16];
    v21 = v15[17];
    sub_2177513F8();

    (*(v21 + 16))(v19, v18, v20);
    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    v24 = v15[27];
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_4_130(v22);
      v24 = v96;
    }

    v25 = v15[26];
    v26 = v15[23];
    v28 = v15[16];
    v27 = v15[17];
    v29 = (*(v15 + 280) + 32) & ~*(v15 + 280);
    (*(v27 + 8))(v15[24], v28);
    *(v24 + 16) = v23 + 1;
    (*(v27 + 32))(v24 + v29 + v25 * v23, v26, v28);
  }

  else
  {
    v24 = v14[27];
  }

  v30 = sub_2173B5734(v15[25]);
  v31 = *(v30 + 16);
  if (v31)
  {
    v101 = v24;
    v103 = v15;
    v105 = MEMORY[0x277D84F90];
    sub_217275C90();
    v32 = 0;
    v33 = v105;
    v34 = *(v105 + 16);
    v35 = 16 * v34;
    do
    {
      v36 = *(v30 + v32 + 32);
      v37 = *(v30 + v32 + 40);
      a11 = v33;
      v38 = *(v33 + 24);
      sub_217751DE8();
      if (v34 >= v38 >> 1)
      {
        sub_217275C90();
      }

      *(v33 + 16) = v34 + 1;
      v39 = v33 + v35;
      *(v39 + 32) = v36;
      *(v39 + 40) = v37;
      v35 += 16;
      v32 += 24;
      ++v34;
      --v31;
    }

    while (v31);
    v15 = v103;
    v40 = v103[22];

    v103[11] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    sub_217751ED8();

    sub_2177513F8();

    v24 = v101;
    OUTLINED_FUNCTION_12_68();
    if (v42)
    {
      OUTLINED_FUNCTION_4_130(v41);
      v24 = v97;
    }

    OUTLINED_FUNCTION_28_54();
    v43 = v103[22];
    v45 = OUTLINED_FUNCTION_0_151(v44);
    v46(v45);
  }

  else
  {
  }

  v47 = v15[15];
  if (*(v47 + 41) == 1)
  {
    v48 = v15[21];
    sub_2177513F8();
    OUTLINED_FUNCTION_12_68();
    if (v42)
    {
      OUTLINED_FUNCTION_4_130(v49);
      v24 = v98;
    }

    OUTLINED_FUNCTION_28_54();
    v50 = v15[21];
    v52 = OUTLINED_FUNCTION_0_151(v51);
    v53(v52);
    v47 = v15[15];
  }

  if ((*(v47 + 24) & 1) == 0)
  {
    v54 = v15[20];
    v15[13] = *(v47 + 16);
    sub_217752FC8();
    sub_2177513F8();

    OUTLINED_FUNCTION_12_68();
    if (v42)
    {
      OUTLINED_FUNCTION_4_130(v55);
      v24 = v99;
    }

    OUTLINED_FUNCTION_28_54();
    v56 = v15[20];
    v58 = OUTLINED_FUNCTION_0_151(v57);
    v59(v58);
    v47 = v15[15];
  }

  if ((*(v47 + 40) & 1) == 0)
  {
    v60 = v15[19];
    v15[12] = *(v47 + 32);
    sub_217752FC8();
    sub_2177513F8();

    OUTLINED_FUNCTION_12_68();
    if (v42)
    {
      OUTLINED_FUNCTION_4_130(v61);
      v24 = v100;
    }

    OUTLINED_FUNCTION_28_54();
    v62 = v15[19];
    v64 = OUTLINED_FUNCTION_0_151(v63);
    v65(v64);
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v67 = v15[17];
  v66 = v15[18];
  v68 = v15[16];
  v69 = __swift_project_value_buffer(v68, qword_280BE7428);
  (*(v67 + 16))(v66, v69, v68);
  v71 = *(v24 + 16);
  v70 = *(v24 + 24);
  if (v71 >= v70 >> 1)
  {
    OUTLINED_FUNCTION_4_130(v70);
    v24 = v95;
  }

  v15[32] = v24;
  OUTLINED_FUNCTION_28_54();
  v73 = v15[17];
  v72 = v15[18];
  v75 = v15[15];
  v74 = v15[16];
  *(v24 + 16) = v71 + 1;
  (*(v73 + 32))(v24 + ((v76 + 32) & ~v76) + v77 * v71, v72, v74);
  v78 = v75[9];
  v79 = v75[10];
  v80 = OUTLINED_FUNCTION_16_24(v75 + 6);
  v81 = *(v80 + 16);
  v102 = v80 + 16;
  OUTLINED_FUNCTION_66_3();
  v104 = v82 + *v82;
  v84 = *(v83 + 4);
  v85 = swift_task_alloc();
  v15[33] = v85;
  *v85 = v15;
  OUTLINED_FUNCTION_25_59(v85);
  OUTLINED_FUNCTION_120_0();

  return v88(v86, v87, v88, v89, v90, v91, v92, v93, v102, v104, a11, a12, a13, a14);
}

uint64_t sub_2176F662C()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 216);

  v2 = *(v0 + 248);
  OUTLINED_FUNCTION_40_37();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2176F66D4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v5;
  v2[10] = v0;
  v7 = *(v6 + 264);
  v8 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  *(v10 + 272) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2176F67D4()
{
  v16 = v0;
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[32];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v11 = v0[21];
  v12 = v0[20];
  v13 = v0[19];
  v14 = v0[18];
  v7 = v0[14];
  v8 = v0[15];
  sub_2177188E8(v2, v1);
  strcpy(v15, "/v1/catalog/");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  MEMORY[0x21CEA23B0](v2, v1);
  MEMORY[0x21CEA23B0](0x686372616573, 0xE600000000000000);
  MEMORY[0x21CEA23B0](47, 0xE100000000000000);

  sub_2172CA838(v8 + 48, (v0 + 2));
  sub_217751DE8();
  sub_2173B6DA4(v15[0], v15[1], v3, 1, v0 + 2, v7);

  OUTLINED_FUNCTION_20_0();

  return v9();
}

uint64_t sub_2176F69A4()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 256);

  v2 = *(v0 + 272);
  OUTLINED_FUNCTION_40_37();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2176F6A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50[6] = a1;
  v3 = sub_217751908();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_217751928();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217751428();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for MusicAPI.Endpoint();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v44 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v44 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v44 - v30;
  sub_2172CA838(v2 + 48, v50);
  sub_217751DE8();
  sub_217434F08();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_2176F8BB0(v19);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v46 + 8))(v10, v6);
    return swift_willThrow();
  }

  else
  {
    sub_2172CB2E8(v19, v31);
    sub_2172CB230(v31, v27);
    v33 = v47;
    v34 = v48;
    if ((*(v2 + 24) & 1) == 0)
    {
      v50[0] = *(v2 + 16);
      sub_217752FC8();
      v35 = v45;
      sub_2177513F8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
      v36 = *(v33 + 72);
      v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2177586E0;
      (*(v33 + 16))(v38 + v37, v35, v34);
      v39 = v44;
      MusicAPI.Endpoint.applying(_:)();
      swift_setDeallocating();
      sub_217275AFC();
      (*(v33 + 8))(v35, v34);
      sub_2176F88E0(v27, type metadata accessor for MusicAPI.Endpoint);
      sub_2172CB2E8(v39, v27);
    }

    if (qword_280BE7420 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v34, qword_280BE7428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
    v41 = *(v33 + 72);
    v42 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2177586E0;
    (*(v33 + 16))(v43 + v42, v40, v34);
    MusicAPI.Endpoint.applying(_:)();
    swift_setDeallocating();
    sub_217275AFC();
    sub_2176F88E0(v27, type metadata accessor for MusicAPI.Endpoint);
    return sub_2176F88E0(v31, type metadata accessor for MusicAPI.Endpoint);
  }
}

uint64_t sub_2176F6F8C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v12 = sub_217270BE0(*a1, *a2);
      v9 = 0;
      v5 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_14;
  }

  v10 = v2 == v6 && v3 == v7;
  if (v10 || (v11 = *a1, (sub_217753058() & 1) != 0))
  {
    v12 = sub_217270BE0(v4, v8);
  }

  else
  {
    v12 = 0;
  }

  v9 = 1;
  v5 = 1;
LABEL_14:
  sub_2176F8860(v6, v7, v8, v9);
  sub_2176F8860(v2, v3, v4, v5);
  sub_2176F88A0(v2, v3, v4, v5);
  sub_2176F88A0(v6, v7, v8, v9);
  return v12 & 1;
}

void sub_2176F70AC(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 24))
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    v3 = v5;
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  sub_21727D7C8(a1, v3);
}

uint64_t sub_2176F7134()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_2177531E8();
  if (v4)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    v1 = v3;
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  sub_21727D7C8(v6, v1);
  return sub_217753238();
}

uint64_t sub_2176F71CC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2177531E8();
  sub_2176F70AC(v4);
  return sub_217753238();
}

uint64_t sub_2176F7224()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2172849C8;

  return MusicCatalogSearchRequest.catalogResponse()();
}

uint64_t static MusicCatalogSearchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
LABEL_21:
      v18 = 0;
      return v18 & 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_21;
    }
  }

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 41) != *(a2 + 41))
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  __swift_project_boxed_opaque_existential_1((a1 + 48), v7);
  v9 = *(v8 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v9(a2 + 48, v10, v7, v8) & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  v24 = *(a1 + 88);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  sub_2176F8860(v24, v11, v12, v13);
  sub_2176F8860(v14, v15, v16, v17);
  v18 = sub_2176F6F8C(&v24, &v20);
  sub_2176F88A0(v20, v21, v22, v23);
  sub_2176F88A0(v24, v25, v26, v27);
  return v18 & 1;
}

void MusicCatalogSearchRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  if (*(v1 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v5 = v1[2];
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
  }

  if (*(v1 + 40) == 1)
  {
    sub_217753208();
  }

  else
  {
    v6 = v1[4];
    sub_217753208();
    MEMORY[0x21CEA3550](v6);
  }

  v7 = *(v1 + 41);
  sub_217753208();
  v8 = v1[9];
  v9 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v8);
  (*(v9 + 120))(a1, v8, v9);
  v10 = v1[11];
  if (v1[14])
  {
    v11 = v1[12];
    v12 = v1[13];
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    v10 = v12;
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  sub_21727D7C8(a1, v10);
}

uint64_t MusicCatalogSearchRequest.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176F75D8()
{
  sub_2177531E8();
  MusicCatalogSearchRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176F7640()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_32_51(v1, v2, v3, v4);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v5);
  OUTLINED_FUNCTION_22_62(v6 / 16);
  return v0;
}

uint64_t sub_2176F7698()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v1);
  OUTLINED_FUNCTION_22_62(v2 / 752);
  return v0;
}

uint64_t sub_2176F7758()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v1);
  OUTLINED_FUNCTION_22_62(v2 / 24);
  return v0;
}

uint64_t sub_2176F77F4()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v1);
  OUTLINED_FUNCTION_22_62(v2 / 32);
  return v0;
}

void *sub_2176F78CC()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24858, &qword_217758DE8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

uint64_t sub_2176F7A10()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

size_t sub_2176F7AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_32_51(a1, a2, a3, a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_15_3(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      OUTLINED_FUNCTION_22_62((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2176F7BB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_32_51(a1, a2, a3, a4);
  v7 = a5(0);
  OUTLINED_FUNCTION_15_3(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      OUTLINED_FUNCTION_22_62((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176F7C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v52 = a5;
  sub_217747F44(v51);
  v5 = v51[1];
  v6 = v51[3];
  v7 = v51[4];
  v41 = v51[5];
  v42 = v51[0];
  v8 = (v51[2] + 64) >> 6;
  sub_217751DE8();

  v39 = v8;
  for (i = v5; ; v5 = i)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = *(v42 + 48) + 32 * v12;
    v14 = *(*(v42 + 56) + 8 * v12);
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    v46 = *v13;
    v47 = v16;
    v48 = v15;
    v49 = v14;
    sub_217751DE8();

    v41(v50, &v46);

    v17 = v50[0];
    if (!v50[0])
    {
LABEL_19:
      sub_2172303F0();
    }

    v18 = v50[1];
    v19 = v50[3];
    v44 = v50[4];
    v20 = *v52;
    v43 = v50[2];
    v22 = sub_217632574();
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v25 = v21;
    if (*(v20 + 24) >= v23 + v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D418, &qword_21779AA40);
        sub_217752CC8();
      }
    }

    else
    {
      v26 = v52;
      sub_217746D48();
      v27 = *v26;
      v28 = sub_217632574();
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_23;
      }

      v22 = v28;
    }

    v7 = (v9 - 1) & v9;
    v30 = *v52;
    if (v25)
    {
      v31 = *(v30[7] + 8 * v22);

      v32 = v30[7];
      v33 = *(v32 + 8 * v22);
      *(v32 + 8 * v22) = v31;
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v34 = (v30[6] + 32 * v22);
      *v34 = v17;
      v34[1] = v18;
      v34[2] = v43;
      v34[3] = v19;
      *(v30[7] + 8 * v22) = v44;
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_22;
      }

      v30[2] = v37;
    }

    a4 = 1;
    v6 = v10;
    v8 = v39;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

uint64_t sub_2176F7F7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = *(a4 + 16);
    v10 = a3 - 1;
    while (1)
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_12;
      }

      if (v8 >= *(a4 + 16))
      {
        break;
      }

      v11 = *(a4 + 32 + 16 * v8);
      *(a2 + 16 * v8) = v11;
      if (v10 == v8)
      {
        sub_21726B87C(v11, *(&v11 + 1));
        goto LABEL_12;
      }

      result = sub_21726B87C(v11, *(&v11 + 1));
      ++v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176F8038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = a4;
    a1[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a4 + 32;
    while (1)
    {
      if (v10 == v9)
      {
        a3 = v10;
        goto LABEL_11;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      ++v9;
      result = sub_217275AA0(v11, a2);
      a2 += 752;
      v11 += 752;
      if (a3 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2176F80F0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217751428();
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13, v14);
  v43 = &v36 - v16;
  v18 = v1 + 56;
  v17 = *(v1 + 56);
  v42 = -1 << *(v1 + 32);
  if (-v42 < 64)
  {
    v19 = ~(-1 << -v42);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  if (!v5)
  {
    v23 = 0;
LABEL_22:
    v35 = ~v42;
    *v7 = v1;
    v7[1] = v18;
    v7[2] = v35;
    v7[3] = v23;
    v7[4] = v20;
    OUTLINED_FUNCTION_13();
    return;
  }

  v21 = v3;
  if (!v3)
  {
    v23 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v37 = v7;
    v38 = v1 + 56;
    v22 = 0;
    v23 = 0;
    v24 = (63 - v42) >> 6;
    v39 = v46 + 32;
    v40 = v46 + 16;
    v41 = v21;
    while (v22 < v21)
    {
      if (__OFADD__(v22, 1))
      {
        goto LABEL_26;
      }

      if (!v20)
      {
        v18 = v38;
        while (1)
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v25 >= v24)
          {
            v20 = 0;
            v7 = v37;
            goto LABEL_22;
          }

          v20 = *(v38 + 8 * v25);
          ++v23;
          if (v20)
          {
            v47 = v22 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v47 = v22 + 1;
      v25 = v23;
LABEL_17:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = v1;
      v28 = *(v1 + 48);
      v30 = v45;
      v29 = v46;
      v31 = *(v46 + 72);
      v32 = v44;
      (*(v46 + 16))(v44, v28 + v31 * (v26 | (v25 << 6)), v45, v15);
      v33 = *(v29 + 32);
      v34 = v43;
      v33(v43, v32, v30);
      v33(v5, v34, v30);
      v21 = v41;
      v22 = v47;
      if (v47 == v41)
      {
        v23 = v25;
        v7 = v37;
        v18 = v38;
        v1 = v27;
        goto LABEL_22;
      }

      v5 += v31;
      v23 = v25;
      v1 = v27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void sub_2176F8378()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_136(v5, v6, v7, v8);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    OUTLINED_FUNCTION_8_88(v12);
    OUTLINED_FUNCTION_13();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_106();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v17 = *(v0 + 48) + 24 * (v16 | (v15 << 6));
      v19 = *v17;
      v18 = *(v17 + 8);
      LOBYTE(v17) = *(v17 + 16);
      *v1 = v19;
      *(v1 + 8) = v18;
      *(v1 + 16) = v17;
      if (v14 == v11)
      {
        sub_217751DE8();
        v12 = v15;
        goto LABEL_17;
      }

      v1 += 24;
      sub_217751DE8();
      v13 = v14;
      v12 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2176F847C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_136(v5, v6, v7, v8);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    OUTLINED_FUNCTION_8_88(v12);
    OUTLINED_FUNCTION_13();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_106();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      v16 = (*(v0 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v3)))));
      v17 = v16[1];
      v3 &= v3 - 1;
      *v1 = *v16;
      v1[1] = v17;
      if (v14 == v11)
      {
        sub_217751DE8();
        v12 = v15;
        goto LABEL_17;
      }

      v1 += 2;
      sub_217751DE8();
      v13 = v14;
      v12 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_2176F8578(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2176F865C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_136(v5, v6, v7, v8);
  if (!v10)
  {
    v12 = 0;
LABEL_17:
    OUTLINED_FUNCTION_8_88(v12);
    OUTLINED_FUNCTION_13();
    return;
  }

  v11 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_106();
    while (v13 < v11)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v15 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v15);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v12;
LABEL_12:
      v16 = *(v0 + 48) + ((v15 << 11) | (32 * __clz(__rbit64(v3))));
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v3 &= v3 - 1;
      *v1 = *v16;
      *(v1 + 16) = v18;
      *(v1 + 24) = v17;
      if (v14 == v11)
      {
        sub_217751DE8();
        v12 = v15;
        goto LABEL_17;
      }

      v1 += 32;
      sub_217751DE8();
      v13 = v14;
      v12 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2176F8760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a3 - 1;
    while (1)
    {
      if (v10 == v9)
      {
        v6 = v10;
        goto LABEL_12;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      v12 = a2 + v8;
      v14 = *(a4 + v8 + 48);
      v13 = *(a4 + v8 + 56);
      *v12 = *(a4 + v8 + 32);
      *(v12 + 16) = v14;
      *(v12 + 24) = v13;
      if (v11 == v9)
      {
        sub_217751DE8();
        goto LABEL_12;
      }

      result = sub_217751DE8();
      v8 += 32;
      ++v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176F8828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  result = sub_217747944(a2, *a1, a1[1], a1[2], a1[3]);
  a2[4] = result;
  return result;
}

uint64_t sub_2176F8860(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_217751DE8();
    v4 = vars8;
  }

  return sub_217751DE8();
}

uint64_t sub_2176F88A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t sub_2176F88E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2176F8940()
{
  result = qword_27CB2D3F0;
  if (!qword_27CB2D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D3F0);
  }

  return result;
}

unint64_t sub_2176F89A4()
{
  result = qword_27CB2D3F8;
  if (!qword_27CB2D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D3F8);
  }

  return result;
}

uint64_t sub_2176F8A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2176F8A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2176F8AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2176F8AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_2176F8B5C()
{
  result = qword_27CB2D400;
  if (!qword_27CB2D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D400);
  }

  return result;
}

uint64_t sub_2176F8BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_40_37()
{
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
}

Swift::Int __swiftcall LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  if (*v0)
  {
    if ((v1 & 2) != 0)
    {
      v2 = 3;
      if ((v1 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 1;
    if ((v1 & 4) != 0)
    {
LABEL_11:
      v2 |= 4uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v2 = 0;
      if ((v1 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 2;
    if ((v1 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v1 & 8) != 0)
  {
    v2 |= 8uLL;
    if ((v1 & 0x10) == 0)
    {
LABEL_14:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v2 |= 0x10uLL;
  if ((v1 & 0x20) == 0)
  {
LABEL_15:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_22:
  v2 |= 0x20uLL;
  if ((v1 & 0x40) != 0)
  {
LABEL_16:
    v2 |= 0x40uLL;
  }

LABEL_17:
  v3 = objc_opt_self();

  return [v3 rawValueForKeepLocalManagedStatusReasons_];
}

MusicKit::LegacyModelKeepLocalManagedStatusReasons sub_2176F8E08@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LegacyModelKeepLocalManagedStatusReasons.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2176F8E48@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelKeepLocalManagedStatusReasons.rawValue.getter();
  *a1 = result;
  return result;
}

MusicKit::LegacyModelKeepLocalManagedStatusReasons_optional __swiftcall LegacyModelKeepLocalManagedStatusReasons.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
  *v2 = v3 & 0x7F;
  *(v2 + 8) = 0;
  result.value.rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::Int sub_2176F8EC8@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t LegacyModelKeepLocalManagedStatusReasons.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    sub_2172AFF2C();
    v2 = v3;
    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_152();
      v2 = v23;
    }

    *(v2 + 16) = v4 + 1;
    v5 = v2 + 16 * v4;
    strcpy((v5 + 32), ".lowDiskSpace");
    *(v5 + 46) = -4864;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((v1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_137();
      v2 = v24;
    }

    OUTLINED_FUNCTION_3_123();
    if (v6)
    {
      OUTLINED_FUNCTION_0_152();
      v2 = v25;
    }

    OUTLINED_FUNCTION_2_135();
    *(v8 + 32) = 0xD000000000000011;
    *(v8 + 40) = v7;
    if ((v1 & 4) == 0)
    {
LABEL_8:
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v26;
  }

  OUTLINED_FUNCTION_3_123();
  if (v6)
  {
    OUTLINED_FUNCTION_0_152();
    v2 = v27;
  }

  OUTLINED_FUNCTION_2_135();
  *(v10 + 32) = 0xD000000000000010;
  *(v10 + 40) = v9;
  if ((v1 & 8) == 0)
  {
LABEL_9:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_23:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v28;
  }

  OUTLINED_FUNCTION_3_123();
  if (v6)
  {
    OUTLINED_FUNCTION_0_152();
    v2 = v29;
  }

  OUTLINED_FUNCTION_2_135();
  *(v12 + 32) = 0xD000000000000013;
  *(v12 + 40) = v11;
  if ((v1 & 0x10) == 0)
  {
LABEL_10:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v30;
  }

  OUTLINED_FUNCTION_3_123();
  if (v6)
  {
    OUTLINED_FUNCTION_0_152();
    v2 = v31;
  }

  OUTLINED_FUNCTION_2_135();
  *(v14 + 32) = 0xD000000000000013;
  *(v14 + 40) = v13;
  if ((v1 & 0x20) == 0)
  {
LABEL_11:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v32;
  }

  OUTLINED_FUNCTION_3_123();
  if (v6)
  {
    OUTLINED_FUNCTION_0_152();
    v2 = v33;
  }

  OUTLINED_FUNCTION_2_135();
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = v15;
  if ((v1 & 0x40) != 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_137();
      v2 = v34;
    }

    v17 = *(v2 + 16);
    if (v17 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_152();
      v2 = v35;
    }

    *(v2 + 16) = v17 + 1;
    v18 = v2 + 16 * v17;
    *(v18 + 32) = 0xD000000000000010;
    *(v18 + 40) = 0x80000002177B5BE0;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_2173C2F20();
  v19 = sub_217751ED8();
  v21 = v20;

  MEMORY[0x21CEA23B0](v19, v21);

  MEMORY[0x21CEA23B0](93, 0xE100000000000000);
  return 91;
}

unint64_t sub_2176F9230()
{
  result = qword_27CB2D420;
  if (!qword_27CB2D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D420);
  }

  return result;
}

unint64_t sub_2176F9288()
{
  result = qword_27CB2D428;
  if (!qword_27CB2D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D428);
  }

  return result;
}

unint64_t sub_2176F92DC()
{
  result = qword_280BE2B60;
  if (!qword_280BE2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2B60);
  }

  return result;
}

unint64_t sub_2176F9334()
{
  result = qword_280BE2B58;
  if (!qword_280BE2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2B58);
  }

  return result;
}

Swift::Void __swiftcall RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(Swift::String label, Swift::Bool forDebugging, Swift::String *to)
{
  OUTLINED_FUNCTION_8_89(label._countAndFlagsBits, label._object, forDebugging, to);
  v8 = *(*(*(v7 + 8) + 8) + 8);
  v9 = OUTLINED_FUNCTION_14_67();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_20_54(v16, v17, v18, v19, v20, v21, v22, v23, v63);
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v26, v27);
  v28 = *(*(OUTLINED_FUNCTION_23_58() - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_12_69();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_1();
  v65 = v38 - v37;
  v39 = OUTLINED_FUNCTION_14_67();
  OUTLINED_FUNCTION_0_0(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_24_51();
  if (sub_217752698())
  {
    return;
  }

  OUTLINED_FUNCTION_19_50();
  v44(v65);
  OUTLINED_FUNCTION_27_51();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_73(AssociatedConformanceWitness);
  while (1)
  {
    OUTLINED_FUNCTION_28_55();
    if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
    {
      break;
    }

    v46 = OUTLINED_FUNCTION_11_81();
    v47(v46);
    OUTLINED_FUNCTION_4_6();
    if (v48)
    {
      v3 = &v68;
      v49 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v49);
    }

    OUTLINED_FUNCTION_25_60();
    if (v50)
    {
      v51 = OUTLINED_FUNCTION_3_124();
      (v3)(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
      if (OUTLINED_FUNCTION_5_107())
      {
        OUTLINED_FUNCTION_0_153();
        sub_217753068();
LABEL_12:
        OUTLINED_FUNCTION_26_45();
        __swift_destroy_boxed_opaque_existential_1(&v66);
        goto LABEL_14;
      }

      v52 = OUTLINED_FUNCTION_4_131();
      sub_2171F06D8(v52, &qword_27CB28B60, &qword_2177711B8);
    }

    v53 = OUTLINED_FUNCTION_3_124();
    (v3)(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
    if (OUTLINED_FUNCTION_5_107())
    {
      OUTLINED_FUNCTION_0_153();
      sub_217752FC8();
      goto LABEL_12;
    }

    v54 = OUTLINED_FUNCTION_4_131();
    sub_2171F06D8(v54, &qword_27CB28B50, &qword_2177711A8);
    v55 = OUTLINED_FUNCTION_3_124();
    (v3)(v55);
    sub_217751FA8();
    OUTLINED_FUNCTION_26_45();
LABEL_14:
    OUTLINED_FUNCTION_15_67();

    v3 = &v68;
    MEMORY[0x21CEA23B0](v66, v67);

    (*v5)(v6, v9);
  }

  v56 = OUTLINED_FUNCTION_18_58();
  v57(v56);
  OUTLINED_FUNCTION_17_63();
  if (v58)
  {
    v59 = *v64;
    v60 = v64[1];
    OUTLINED_FUNCTION_4_6();
    if (v61)
    {
      v62 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v62);
    }

    OUTLINED_FUNCTION_10_72();
    MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
    OUTLINED_FUNCTION_9_90();
    OUTLINED_FUNCTION_7_88();
    OUTLINED_FUNCTION_29_46();
    MEMORY[0x21CEA23B0](v4, v32);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
    MEMORY[0x21CEA23B0](v66, v67);
  }
}

uint64_t Optional<A>.musicKit_prettyDescription.getter(char a1)
{
  if (a1 == 2)
  {
    return 7104878;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x21CEA23B0](v3, v4);

  return 0;
}

uint64_t sub_2176F98EC(uint64_t result, unint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    sub_217751DE8();
    return a4;
  }

  v8 = result;
  v9 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v11 = sub_217752008();
      sub_217751DE8();
      if (v11 >= v10)
      {
        v12 = sub_217285954(v8);
        v14 = v13;
        v16 = v15;
        v18 = v17;
        sub_217751DE8();
        v19 = sub_21771EE94(a2, a4, a5);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        a4 = MEMORY[0x21CEA2320](v12, v14, v16, v18);

        MEMORY[0x21CEA23B0](10911970, 0xA300000000000000);
        v26 = MEMORY[0x21CEA2320](v19, v21, v23, v25);
        v28 = v27;

        MEMORY[0x21CEA23B0](v26, v28);
      }

      return a4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall String.musicKit_appendTruncatedDescription(label:prefixLength:suffixLength:forDebugging:to:)(Swift::String label, Swift::Int prefixLength, Swift::Int suffixLength, Swift::Bool forDebugging, Swift::String *to)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v10 = sub_2176F98EC(prefixLength, suffixLength, forDebugging, v5, v6);
  v12 = v11;
  v13 = to->_countAndFlagsBits;
  v14 = to->_object;
  OUTLINED_FUNCTION_4_6();
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_181_0();
    MEMORY[0x21CEA23B0](v16);
  }

  MEMORY[0x21CEA23B0](countAndFlagsBits, object);
  MEMORY[0x21CEA23B0](2236474, 0xE300000000000000);
  MEMORY[0x21CEA23B0](v10, v12);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](2105354, 0xE300000000000000);
}

Swift::Void __swiftcall Sequence.musicKit_appendDescription(label:forDebugging:to:)(Swift::String label, Swift::Bool forDebugging, Swift::String *to)
{
  OUTLINED_FUNCTION_8_89(label._countAndFlagsBits, label._object, forDebugging, to);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_20_54(v14, v15, v16, v17, v18, v19, v20, v21, v62);
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v24, v25);
  v26 = *(*(OUTLINED_FUNCTION_23_58() - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_12_69();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_1();
  v64 = v36 - v35;
  v37 = OUTLINED_FUNCTION_14_67();
  OUTLINED_FUNCTION_0_0(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40, v41);
  v42 = OUTLINED_FUNCTION_24_51();
  if (Sequence<>.isEmpty.getter(v42))
  {
    return;
  }

  OUTLINED_FUNCTION_19_50();
  v43(v64);
  OUTLINED_FUNCTION_27_51();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_73(AssociatedConformanceWitness);
  while (1)
  {
    OUTLINED_FUNCTION_28_55();
    if (__swift_getEnumTagSinglePayload(v4, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v45 = OUTLINED_FUNCTION_11_81();
    v46(v45);
    OUTLINED_FUNCTION_4_6();
    if (v47)
    {
      v3 = &v67;
      v48 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v48);
    }

    OUTLINED_FUNCTION_25_60();
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_3_124();
      v3(v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
      if (OUTLINED_FUNCTION_5_107())
      {
        OUTLINED_FUNCTION_0_153();
        sub_217753068();
LABEL_12:
        OUTLINED_FUNCTION_26_45();
        __swift_destroy_boxed_opaque_existential_1(&v65);
        goto LABEL_14;
      }

      v51 = OUTLINED_FUNCTION_4_131();
      sub_2171F06D8(v51, &qword_27CB28B60, &qword_2177711B8);
    }

    v52 = OUTLINED_FUNCTION_3_124();
    v3(v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
    if (OUTLINED_FUNCTION_5_107())
    {
      OUTLINED_FUNCTION_0_153();
      sub_217752FC8();
      goto LABEL_12;
    }

    v53 = OUTLINED_FUNCTION_4_131();
    sub_2171F06D8(v53, &qword_27CB28B50, &qword_2177711A8);
    v54 = OUTLINED_FUNCTION_3_124();
    v3(v54);
    sub_217751FA8();
    OUTLINED_FUNCTION_26_45();
LABEL_14:
    OUTLINED_FUNCTION_15_67();

    v3 = &v67;
    MEMORY[0x21CEA23B0](v65, v66);

    (*v5)(v6, AssociatedTypeWitness);
  }

  v55 = OUTLINED_FUNCTION_18_58();
  v56(v55);
  OUTLINED_FUNCTION_17_63();
  if (v57)
  {
    v58 = *v63;
    v59 = v63[1];
    OUTLINED_FUNCTION_4_6();
    if (v60)
    {
      v61 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v61);
    }

    OUTLINED_FUNCTION_10_72();
    MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
    OUTLINED_FUNCTION_9_90();
    OUTLINED_FUNCTION_7_88();
    OUTLINED_FUNCTION_29_46();
    MEMORY[0x21CEA23B0](v4, v30);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
    MEMORY[0x21CEA23B0](v65, v66);
  }
}

uint64_t OUTLINED_FUNCTION_14_67()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_15_67()
{
  *(v0 - 176) = 10;
  *(v0 - 168) = 0xE100000000000000;

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_29_46()
{
}

unint64_t Song.LegacyModelSongPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ALL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
    case 0x15:
    case 0x17:
      result = 0xD000000000000029;
      break;
    case 3:
      result = 0xD00000000000002ALL;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000020;
      break;
    case 5:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 0xD:
    case 0xE:
    case 0x1F:
    case 0x22:
    case 0x28:
      result = 0xD00000000000001DLL;
      break;
    case 7:
    case 8:
    case 0xA:
    case 0x12:
      result = 0xD00000000000001BLL;
      break;
    case 9:
    case 0x10:
    case 0x1B:
    case 0x27:
      result = 0xD000000000000025;
      break;
    case 0xB:
      result = 0xD000000000000028;
      break;
    case 0xF:
    case 0x1A:
    case 0x24:
      result = 0xD00000000000001FLL;
      break;
    case 0x11:
    case 0x14:
    case 0x26:
      result = 0xD000000000000027;
      break;
    case 0x13:
      result = 0xD000000000000032;
      break;
    case 0x16:
      result = 0xD00000000000002FLL;
      break;
    case 0x18:
      result = 0xD000000000000023;
      break;
    case 0x19:
    case 0x21:
    case 0x25:
      result = 0xD00000000000001CLL;
      break;
    case 0x1C:
      result = 0xD000000000000018;
      break;
    case 0x1E:
    case 0x29:
      result = 0xD000000000000019;
      break;
    case 0x20:
      result = 0xD000000000000017;
      break;
    case 0x23:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Song.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v271 = a4;
  v275 = a3;
  v269 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  OUTLINED_FUNCTION_6_1();
  v268 = (v10 - v11);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_99();
  v267 = v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_99();
  v266 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_99();
  v270 = v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_99();
  v272 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  v265 = &v257 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB291C8, &qword_217775A48);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v257 - v30;
  v32 = type metadata accessor for SongPropertyProvider();
  v33 = OUTLINED_FUNCTION_43(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_6_1();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v257 - v42;
  memcpy(v285, a1, 0x161uLL);
  v276 = a2;
  if (([a2 respondsToSelector_] & 1) != 0 && (v44 = objc_msgSend(v276, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v45 = v44;
    v46 = sub_217751D98();
  }

  else
  {
    v46 = sub_217751DC8();
  }

  v54 = sub_21729F5B4(v46, v47, v48, v49, v50, v51, v52, v53, v257, v258, v259, v260, v261, object, countAndFlagsBits, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, *(&v273 + 1), v274, v275, v276, *v277, *&v277[8], *&v277[16], *&v277[24], *&v277[32], *&v277[40], *&v277[48], *&v277[56], *&v277[64]);

  memcpy(v281, a1, 0x161uLL);
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  v279[0] = xmmword_280BEA1D0;
  LOBYTE(v279[1]) = byte_280BEA1E0;
  v55 = qword_280BE8B08;
  sub_217751DE8();
  if (v55 != -1)
  {
    swift_once();
  }

  v278[0] = qword_280BE8B10;
  v278[1] = *algn_280BE8B18;
  LOBYTE(v278[2]) = byte_280BE8B20;
  sub_217751DE8();
  v286.value.rawValue._countAndFlagsBits = v279;
  v286.value.rawValue._object = v278;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v280, v286, v287);

  object = v280[0].id.rawValue._object;
  countAndFlagsBits = v280[0].type.rawValue._countAndFlagsBits;
  v56 = v280[0].type.rawValue._object;
  HIDWORD(v264) = v280[0].type.isLibraryType;
  *&v273 = v280[0].href.value._countAndFlagsBits;
  v57 = v280[0].href.value._object;
  sub_2171F5110(v275, v280, &qword_27CB27590, &qword_21776ADF0);
  if (!v280[0].type.rawValue._object)
  {
    sub_2171F0738(v280, &qword_27CB27590, &qword_21776ADF0);
    memset(v281, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v281, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v281[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v281, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  v58 = v57;
  sub_2171F3F0C(v281, v282);
  v59 = v283;
  v60 = v284;
  __swift_project_boxed_opaque_existential_1(v282, v283);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
    sub_21753BA8C(v31, v39);
    sub_2176FDABC(v39, v43);
    memcpy(v281, v285, 0x161uLL);
    v61 = v32[73];
    memcpy(v278, (v39 + v61), 0x161uLL);
    memcpy(v277, (v39 + v61), sizeof(v277));
    sub_217269EF4(v278, v280);
    MusicIdentifierSet.union(_:)();
    memcpy(v279, v277, 0x161uLL);
    sub_217269F50(v279);
    sub_21753BAF0(v39);
    v62 = v32[73];
    memcpy(v281, &v43[v62], 0x161uLL);
    sub_217269F50(v281);
    memcpy(&v43[v62], v280, 0x161uLL);
    v63 = &v43[v32[74]];
    v64 = *(v63 + 1);
    sub_217751DE8();

    *v63 = countAndFlagsBits;
    *(v63 + 1) = v56;
    v63[16] = BYTE4(v264);
    v65 = &v43[v32[75]];
    v66 = *(v65 + 1);

    *v65 = v273;
    *(v65 + 1) = v58;
    __swift_destroy_boxed_opaque_existential_1(v282);
    goto LABEL_20;
  }

  __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
  sub_2171F0738(v31, &qword_27CB291C8, &qword_217775A48);
  __swift_destroy_boxed_opaque_existential_1(v282);
  v57 = v58;
LABEL_17:
  sub_217269EF4(v285, v281);
  v261 = v57;
  sub_217751DE8();
  sub_217751DE8();
  v260 = OUTLINED_FUNCTION_17_64();
  v259 = OUTLINED_FUNCTION_17_64();
  v258 = OUTLINED_FUNCTION_17_64();
  v257 = OUTLINED_FUNCTION_17_64();
  sub_2172A497C(v281);
  memcpy(v43, v281, 0x221uLL);
  sub_21733B708(v280);
  memcpy(v43 + 552, v280, 0x161uLL);
  *(v43 + 57) = 0u;
  *(v43 + 58) = 0u;
  v67 = v32[8];
  v68 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v43[v67], 1, 1, v68);
  *&v43[v32[9]] = 0;
  OUTLINED_FUNCTION_19_19(v32[10]);
  *&v43[v32[11]] = 0;
  v69 = &v43[v32[12]];
  v69[4] = 0;
  *v69 = 512;
  OUTLINED_FUNCTION_19_19(v32[13]);
  v31 = 2;
  v43[v32[14]] = 2;
  OUTLINED_FUNCTION_7_89(v32[15]);
  OUTLINED_FUNCTION_7_89(v32[16]);
  *&v43[v32[17]] = 0;
  v70 = &v43[v32[18]];
  *v70 = xmmword_2177586D0;
  *(v70 + 1) = 0u;
  *(v70 + 2) = 0u;
  *(v70 + 3) = 0u;
  *&v43[v32[19]] = 0;
  *&v43[v32[20]] = 0;
  v43[v32[21]] = 2;
  v43[v32[22]] = 2;
  OUTLINED_FUNCTION_19_19(v32[23]);
  v43[v32[24]] = 2;
  OUTLINED_FUNCTION_19_19(v32[25]);
  *(v71 + 16) = 0;
  OUTLINED_FUNCTION_19_19(v32[26]);
  *(v72 + 16) = 1;
  memcpy(&v43[v32[27]], v281, 0x221uLL);
  OUTLINED_FUNCTION_7_89(v32[28]);
  OUTLINED_FUNCTION_19_19(v32[29]);
  OUTLINED_FUNCTION_7_89(v32[30]);
  *&v43[v32[31]] = 0;
  v73 = &v43[v32[32]];
  *(v73 + 14) = 0;
  *(v73 + 5) = 0u;
  *(v73 + 6) = 0u;
  *(v73 + 3) = 0u;
  *(v73 + 4) = 0u;
  *(v73 + 1) = 0u;
  *(v73 + 2) = 0u;
  *v73 = 0u;
  *&v43[v32[33]] = 0;
  v74 = v32[34];
  v75 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v43[v74], 1, 1, v75);
  OUTLINED_FUNCTION_7_89(v32[35]);
  v43[v32[36]] = 2;
  v76 = v32[37];
  sub_21733B710(v279);
  memcpy(&v43[v76], v279, 0xB0uLL);
  v43[v32[38]] = 2;
  OUTLINED_FUNCTION_19_19(v32[39]);
  OUTLINED_FUNCTION_7_89(v32[40]);
  v77 = OUTLINED_FUNCTION_6_6(v32[41]);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v68);
  OUTLINED_FUNCTION_19_19(v32[42]);
  v80 = OUTLINED_FUNCTION_6_6(v32[43]);
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v75);
  v43[v32[44]] = 3;
  v43[v32[45]] = 2;
  v43[v32[46]] = 2;
  v43[v32[47]] = 2;
  v43[v32[48]] = 5;
  v43[v32[49]] = 7;
  OUTLINED_FUNCTION_7_89(v32[50]);
  v83 = OUTLINED_FUNCTION_6_6(v32[51]);
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v75);
  v86 = OUTLINED_FUNCTION_6_6(v32[52]);
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v75);
  OUTLINED_FUNCTION_7_89(v32[53]);
  v43[v32[54]] = 2;
  v43[v32[55]] = 10;
  OUTLINED_FUNCTION_7_89(v32[56]);
  v89 = &v43[v32[57]];
  v89[6].n128_u64[0] = 0;
  OUTLINED_FUNCTION_1_0(v89, 0);
  OUTLINED_FUNCTION_0_58(v32[58], v90);
  OUTLINED_FUNCTION_0_58(v32[59], v91);
  v92 = &v43[v32[60]];
  v92[6] = v93;
  v92[7] = v93;
  OUTLINED_FUNCTION_1_0(v92, v93);
  OUTLINED_FUNCTION_0_58(v32[61], v94);
  OUTLINED_FUNCTION_0_58(v32[62], v95);
  v96 = &v43[v32[63]];
  v96[6] = v97;
  v96[7] = v97;
  OUTLINED_FUNCTION_1_0(v96, v97);
  v98 = &v43[v32[64]];
  v98[6] = v99;
  v98[7] = v99;
  OUTLINED_FUNCTION_1_0(v98, v99);
  OUTLINED_FUNCTION_0_58(v32[65], v100);
  OUTLINED_FUNCTION_0_58(v32[66], v101);
  OUTLINED_FUNCTION_0_58(v32[67], v102);
  OUTLINED_FUNCTION_0_58(v32[68], v103);
  *&v43[v32[69]] = 0;
  v104 = &v43[v32[70]];
  *v104 = 0;
  v104[8] = 1;
  *&v43[v32[71]] = 0;
  v105 = sub_217536388();
  if (v105 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    v106 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v106 = v105;
  }

  v107 = v261;

  *&v43[v32[72]] = v106;
  v108 = &v43[v32[75]];
  memcpy(&v43[v32[73]], v285, 0x161uLL);
  v109 = &v43[v32[74]];
  *v109 = countAndFlagsBits;
  *(v109 + 1) = v56;
  v109[16] = BYTE4(v264);
  *v108 = v273;
  *(v108 + 1) = v107;
  v110 = v259;
  *&v43[v32[76]] = v260;
  *&v43[v32[77]] = v110;
  v111 = v257;
  *&v43[v32[78]] = v258;
  *&v43[v32[79]] = v111;
LABEL_20:
  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  v112 = v43;
  sub_2174AF150(v113, v114, 33);

  v115 = v265;
  if (!*(v43 + 115))
  {
    v116 = sub_2174AAC2C(33, 25, v54);
    if (v117)
    {
      *(v43 + 114) = v116;
      *(v43 + 115) = v117;
    }
  }

  if (!*(v43 + 117))
  {
    v118 = sub_2174AABEC(34, 11, v54);
    if (v119)
    {
      *(v43 + 116) = v118;
      *(v43 + 117) = v119;
    }
  }

  sub_2174AFB84(v276, v277);
  if (*&v277[24])
  {
    sub_2171F3F0C(v277, v278);
    sub_2171FF30C(v278, v281);
    v280[0].id.rawValue._countAndFlagsBits = 1;
    v280[0].id.rawValue._object = 0;
    v280[0].type.rawValue._object = 0;
    v280[0].type.rawValue._countAndFlagsBits = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v281, 0, 0, v280, v279);
    memcpy(v280, v279, 0x221uLL);
    nullsub_1(v280, v120);
    memcpy(v281, v43, 0x221uLL);
    sub_2171F0738(v281, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v43, v280, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v278);
  }

  else
  {
    sub_2171F0738(v277, &qword_27CB28308, &qword_21776C430);
  }

  v121 = v32[11];
  if (!*&v43[v121])
  {
    v122 = sub_2172A3AEC();
    if ((v123 & 1) == 0)
    {
      v124 = [objc_opt_self() audioTraitsForRawValue_];
      v43[v32[22]] = v124 & 1;
      v125 = sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      v126 = v124;
      v112 = v125;
      *&v43[v121] = sub_217659CB4(v126);
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2EC();

  OUTLINED_FUNCTION_54_26(v32[13]);
  if (!v127)
  {
    v128 = sub_2174AABAC(36, 41, v54);
    if (v129)
    {
      *v112 = v128;
      v112[1] = v129;
    }
  }

  OUTLINED_FUNCTION_54_26(v32[29]);
  if (!v130)
  {
    v131 = sub_2172A3B50(1, v54);
    if (v132)
    {
      *v112 = v131;
      v112[1] = v132;
    }
  }

  OUTLINED_FUNCTION_47_34(v32[28]);
  if (v133)
  {
    v134 = sub_2172A3AEC();
    if ((v135 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v134);
    }
  }

  OUTLINED_FUNCTION_47_34(v32[30]);
  if (v136)
  {
    v137 = sub_2172A3AEC();
    if ((v138 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v137);
    }
  }

  OUTLINED_FUNCTION_54_26(v32[42]);
  if (!v139)
  {
    v140 = sub_2172A3B50(4, v54);
    if (v141)
    {
      *v112 = v140;
      v112[1] = v141;
    }
  }

  v142 = sub_2172A3AEC();
  if ((v143 & 1) == 0)
  {
    v144 = [objc_opt_self() cloudStatusForRawValue_];
    if (v144 >= 0xA)
    {
      v145 = 0;
    }

    else
    {
      v145 = v144;
    }

    v43[v32[55]] = v145;
  }

  OUTLINED_FUNCTION_47_34(v32[15]);
  if (v146)
  {
    v147 = sub_2172A3AEC();
    if ((v148 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v147);
    }
  }

  OUTLINED_FUNCTION_47_34(v32[16]);
  if (v149)
  {
    v150 = sub_2172A3ACC();
    if ((v151 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v150);
    }
  }

  v152 = v32[14];
  if (v43[v152] == 2)
  {
    sub_2172A3B0C(8, v54);
    OUTLINED_FUNCTION_7_1();
    if (!v154)
    {
      v43[v152] = v153 & 1;
    }
  }

  sub_2172A3B24(v54, v115);
  *&v273 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v115, 1, v273) != 1)
  {
    OUTLINED_FUNCTION_34_41(v115);
    v155 = v32[43];
    OUTLINED_FUNCTION_53_30();
    sub_217260E5C(v31, &v43[v155]);
  }

  sub_2171F0738(v115, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v156 = qword_280BE8048;
  v157 = unk_280BE8050;
  v158 = byte_280BE8058;
  v159 = qword_280BE8060;
  v160 = unk_280BE8068;
  v161 = byte_280BE8070;
  *(&v281[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v281[2] = sub_2171FEF88();
  v162 = swift_allocObject();
  *&v281[0] = v162;
  *(v162 + 16) = v156;
  *(v162 + 24) = v157;
  *(v162 + 32) = v158;
  *(v162 + 40) = v159;
  *(v162 + 48) = v160;
  *(v162 + 56) = v161;
  LOBYTE(v156) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v281);
  v163 = v266;
  v164 = v270;
  if (v156)
  {
    sub_2172A3B0C(13, v54);
    OUTLINED_FUNCTION_7_1();
    if (!v154)
    {
      v166 = v165;
      sub_2172A3B0C(14, v54);
      OUTLINED_FUNCTION_7_1();
      if (!v154)
      {
        if (v166)
        {
          if (v167)
          {
            v169 = 0;
          }

          else
          {
            v169 = 2;
          }
        }

        else
        {
          v169 = v167 & 1;
        }

        goto LABEL_81;
      }
    }

    sub_2172A3B0C(14, v54);
    OUTLINED_FUNCTION_7_1();
    if (!v154 && (v168 & 1) != 0)
    {
      v169 = 1;
LABEL_81:
      v43[v32[44]] = v169;
      goto LABEL_82;
    }

    sub_2172A3B0C(13, v54);
    OUTLINED_FUNCTION_7_1();
    if (!v154 && (v170 & 1) != 0)
    {
      v169 = 2;
      goto LABEL_81;
    }
  }

LABEL_82:
  sub_2172A3B0C(9, v54);
  OUTLINED_FUNCTION_7_1();
  if (!v154)
  {
    v43[v32[54]] = v171;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2F0();

  sub_2172A3B0C(15, v54);
  OUTLINED_FUNCTION_7_1();
  if (!v154)
  {
    v43[v32[45]] = v172;
  }

  sub_2172A3B0C(16, v54);
  OUTLINED_FUNCTION_7_1();
  if (!v154)
  {
    v43[v32[46]] = v173;
  }

  sub_2172A3B0C(18, v54);
  OUTLINED_FUNCTION_7_1();
  if (!v154)
  {
    v43[v32[47]] = v174;
  }

  sub_2172A3B0C(19, v54);
  OUTLINED_FUNCTION_7_1();
  if (!v154)
  {
    v43[v32[24]] = v175;
  }

  v176 = sub_2172A3AEC();
  if ((v177 & 1) == 0)
  {
    v178 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
    if (v178 < 5)
    {
      v43[v32[48]] = v178;
    }
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AE510();

  v179 = sub_2172A3AEC();
  if ((v180 & 1) == 0)
  {
    v181 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
    v182 = &v43[v32[50]];
    *v182 = v181 & 0x7F;
    v182[8] = 0;
  }

  sub_2172A3B24(v54, v164);
  v183 = v273;
  if (__swift_getEnumTagSinglePayload(v164, 1, v273) != 1)
  {
    OUTLINED_FUNCTION_34_41(v164);
    v184 = v32[51];
    OUTLINED_FUNCTION_53_30();
    v185 = &v43[v184];
    v164 = v270;
    v183 = v273;
    sub_217260E5C(0x278228000, v185);
  }

  sub_2171F0738(v164, &qword_27CB241C0, &qword_217759480);
  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2F4();

  sub_2172A3B24(v54, v163);
  if (__swift_getEnumTagSinglePayload(v163, 1, v183) != 1)
  {
    OUTLINED_FUNCTION_34_41(v163);
    v186 = v32[52];
    OUTLINED_FUNCTION_53_30();
    v183 = v273;
    sub_217260E5C(0x278228000, &v43[v186]);
  }

  sub_2171F0738(v163, &qword_27CB241C0, &qword_217759480);
  swift_getKeyPath();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2F8();

  v187 = sub_2172A3AEC();
  if ((v188 & 1) == 0 && v187)
  {
    OUTLINED_FUNCTION_16_2(v187, v32[35]);
  }

  v189 = sub_2172A3AEC();
  if ((v190 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v189, v32[53]);
  }

  v191 = v32[34];
  v192 = &qword_27CB241C0;
  v193 = v267;
  sub_2171F5110(&v43[v191], v267, &qword_27CB241C0, &qword_217759480);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v193, 1, v183);
  sub_2171F0738(v193, &qword_27CB241C0, &qword_217759480);
  v154 = EnumTagSinglePayload == 1;
  v195 = v271;
  if (v154)
  {
    v192 = v268;
    sub_2172A3B24(v54, v268);
    if (__swift_getEnumTagSinglePayload(v192, 1, v183) != 1)
    {
      v196 = v272;
      sub_2171F5110(v268, v272, &qword_27CB241C0, &qword_217759480);
      v192 = v268;
      sub_2171F0738(&v43[v191], &qword_27CB241C0, &qword_217759480);
      sub_217260E5C(v196, &v43[v191]);
    }

    sub_2171F0738(v192, &qword_27CB241C0, &qword_217759480);
  }

  sub_2172A3B0C(27, v54);
  OUTLINED_FUNCTION_7_1();
  if (!v154)
  {
    v43[v32[36]] = v197;
  }

  OUTLINED_FUNCTION_54_26(v32[39]);
  if (!v198)
  {
    v199 = sub_2172A3B50(28, v54);
    if (v200)
    {
      *v192 = v199;
      v192[1] = v200;
    }
  }

  OUTLINED_FUNCTION_47_34(v32[40]);
  if (v201)
  {
    v202 = sub_2172A3AEC();
    if ((v203 & 1) == 0)
    {
      if (v202)
      {
        OUTLINED_FUNCTION_48_25(v202);
      }
    }
  }

  v204 = sub_2172A3ACC();
  if ((v205 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v204, v32[56]);
  }

  swift_getKeyPath();
  sub_2174AEC5C();

  v206 = sub_217269F50(v285);
  if (qword_280BE9738 != -1)
  {
    v206 = OUTLINED_FUNCTION_1_33();
  }

  *&v281[0] = qword_280BE9740;
  MEMORY[0x28223BE20](v206, v207);
  OUTLINED_FUNCTION_14_68();
  v209 = sub_2173DDC78(sub_2174A5E68, v208, v195);
  if (v209)
  {
    v209 = sub_2174AF960(v54, 33);
    if (v209)
    {
      v211 = v209;
      if (qword_280BE85B8 != -1)
      {
        swift_once();
      }

      v273 = xmmword_280BE85C0;
      v212 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      OUTLINED_FUNCTION_30_46();
      OUTLINED_FUNCTION_40_38(&unk_28295B1E0);
      sub_217751DE8();
      OUTLINED_FUNCTION_19_51();
      sub_2172B6904(v195, v213, v214, v215, v216);
      OUTLINED_FUNCTION_55_28();
      v217 = OUTLINED_FUNCTION_27_52();
      Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v217, v218, v219, v220, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F8, &qword_217758D80);
      v222 = swift_allocObject();
      *(v222 + 16) = xmmword_2177586E0;
      sub_21725CF0C(v280, v222 + 32);
      sub_2174AA1AC();
      v223 = v32[57];
      sub_2171F0738(&v43[v223], &qword_27CB25318, &qword_2177657C0);
      memcpy(&v43[v223], v281, 0x68uLL);
      swift_unknownObjectRelease();
      v209 = sub_21725CE44(v280);
      v195 = v271;
    }
  }

  if (qword_280BE9710 != -1)
  {
    v209 = OUTLINED_FUNCTION_21_51();
  }

  *&v281[0] = qword_280BE9718;
  MEMORY[0x28223BE20](v209, v210);
  OUTLINED_FUNCTION_14_68();
  v225 = sub_2173DDC78(sub_2174A6244, v224, v195);
  if (v225)
  {
    v225 = sub_2174AF960(v54, 34);
    if (v225)
    {
      v227 = v225;
      if (qword_280BE2A18 != -1)
      {
        swift_once();
      }

      v273 = xmmword_280BE2A20;
      v228 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      OUTLINED_FUNCTION_30_46();
      OUTLINED_FUNCTION_40_38(&unk_28295B220);
      sub_217751DE8();
      OUTLINED_FUNCTION_19_51();
      sub_2172B6904(v195, v229, v230, v231, v232);
      OUTLINED_FUNCTION_55_28();
      v233 = OUTLINED_FUNCTION_27_52();
      Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v233, v234, v235, v236, v237);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24758, &qword_217758CE0);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_2177586E0;
      sub_21725CF68(v280, v238 + 32);
      sub_2174AA180();
      v239 = v32[59];
      sub_2171F0738(&v43[v239], &qword_27CB25310, &unk_21775D3D0);
      memcpy(&v43[v239], v281, 0x68uLL);
      swift_unknownObjectRelease();
      v225 = sub_217284498(v280);
      v195 = v271;
    }
  }

  if (qword_280BE9720 != -1)
  {
    v225 = OUTLINED_FUNCTION_4_39();
  }

  *&v281[0] = qword_280BE9728;
  MEMORY[0x28223BE20](v225, v226);
  OUTLINED_FUNCTION_14_68();
  v241 = sub_2173DDC78(sub_2174A6244, v240, v195);

  if (v241)
  {
    v242 = sub_2174AF960(v54, 37);

    if (v242)
    {
      if (qword_280BE2A80 != -1)
      {
        swift_once();
      }

      v244 = qword_280BE2A98;
      v243 = unk_280BE2AA0;
      v273 = xmmword_280BE2A88;
      v245 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v280[0].id = v273;
      v280[0].type.rawValue._countAndFlagsBits = v244;
      v280[0].type.rawValue._object = v243;
      OUTLINED_FUNCTION_40_38(&unk_28295B260);
      sub_217751DE8();
      OUTLINED_FUNCTION_19_51();
      sub_2172B6904(v245, v246, v247, v248, v249);
      memset(v279, 0, 40);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_27_52();
      Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v250, v251, v252);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24620, &qword_217758B60);
      v253 = swift_allocObject();
      *(v253 + 16) = xmmword_2177586E0;
      sub_217284130(v280, v253 + 32);
      sub_2174AA468();
      v254 = v32[65];
      sub_2171F0738(&v43[v254], &qword_27CB25320, &unk_21776E020);
      memcpy(&v43[v254], v281, 0x68uLL);
      swift_unknownObjectRelease();
      sub_21728418C(v280);
    }
  }

  else
  {
  }

  *(&v281[1] + 1) = v32;
  *&v281[2] = &protocol witness table for SongPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v281);
  sub_2176FDABC(v43, boxed_opaque_existential_0);
  Song.init(propertyProvider:)(v281, v269);
  swift_unknownObjectRelease();
  sub_2171F0738(v275, &qword_27CB27590, &qword_21776ADF0);
  return sub_21753BAF0(v43);
}

uint64_t Song.convertToLegacyModelStorageDictionary(for:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  OUTLINED_FUNCTION_6_1();
  v364 = v7 - v8;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v363 - v11;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_99();
  v363 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v363 - v18;
  v20 = *a1;
  sub_2172A546C();
  v369 = sub_217751DC8();
  if (qword_280BE9708 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA860(v21, v22, v23, v24, v25, v26, v27, v28, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14]);
  memcpy(v370, v368, 0x221uLL);
  memcpy(v371, v368, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v371) == 1)
  {
    memset(v367, 0, 32);
  }

  else
  {
    memcpy(v366, v371, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v367);
    sub_2171F0738(v370, &qword_27CB24400, &unk_21775E9A0);
  }

  v29 = &v369;
  sub_21729D81C(v367, 0);
  if (qword_280BE98C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA86C(v30, v31, v32, v33, v34, v35, v36, v37, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14]);
  if ((v368[0] & 0xFF00) == 0x200)
  {
    v38 = OUTLINED_FUNCTION_12_70();
  }

  else
  {
    v29 = sub_2176FE84C();
    v38 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
  }

  v368[0] = v29;
  v368[3] = v38;
  v39 = OUTLINED_FUNCTION_4_55();
  sub_21729D81C(v39, 35);
  if (qword_280BE98A0 != -1)
  {
    swift_once();
  }

  v40 = sub_2172A41AC();
  if (v41)
  {
    v42 = MEMORY[0x277D837D0];
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v368[2] = 0;
  }

  v368[0] = v40;
  v368[1] = v41;
  v43 = OUTLINED_FUNCTION_1_54(v42);
  sub_21729D81C(v43, 1);
  if (qword_280BE9868 != -1)
  {
    swift_once();
  }

  v44 = sub_2172A41C0();
  if (v45)
  {
    v44 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v46 = MEMORY[0x277D83B88];
  }

  v47 = OUTLINED_FUNCTION_2_136(v44, v46);
  sub_21729D81C(v47, 2);
  if (qword_280BE9808 != -1)
  {
    swift_once();
  }

  v48 = sub_2172A41C0();
  if (v49)
  {
    v48 = OUTLINED_FUNCTION_2_57();
  }

  else
  {
    v50 = MEMORY[0x277D83B88];
  }

  v51 = OUTLINED_FUNCTION_2_136(v48, v50);
  sub_21729D81C(v51, 3);
  if (qword_280BE96C8 != -1)
  {
    swift_once();
  }

  v52 = sub_2172A41AC();
  if (v53)
  {
    v54 = MEMORY[0x277D837D0];
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v368[2] = 0;
  }

  v368[0] = v52;
  v368[1] = v53;
  v55 = OUTLINED_FUNCTION_1_54(v54);
  sub_21729D81C(v55, 4);
  if (qword_280BE9910 != -1)
  {
    swift_once();
  }

  v56 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_17_20();
  sub_2176CA8FC(v57, v58, v59, v60, v61, v62, v63, v64, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
  v65 = LOBYTE(v368[0]);
  switch(LOBYTE(v368[0]))
  {
    case 1:
      v65 = 1;
      goto LABEL_44;
    case 2:
      v65 = 2;
      goto LABEL_44;
    case 3:
      v65 = 3;
      goto LABEL_44;
    case 4:
      v65 = 4;
      goto LABEL_44;
    case 5:
      v65 = 5;
      goto LABEL_44;
    case 6:
      v65 = 6;
      goto LABEL_44;
    case 7:
      v65 = 7;
      goto LABEL_44;
    case 8:
      v65 = 8;
      goto LABEL_44;
    case 9:
      v65 = 9;
      goto LABEL_44;
    case 0xA:
      memset(v368, 0, 32);
      goto LABEL_45;
    default:
LABEL_44:
      v66 = [objc_opt_self() rawValueForCloudStatus_];
      v368[3] = v56;
      v368[0] = v66;
LABEL_45:
      v67 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v67, 5);
      if (qword_280BE9950 != -1)
      {
        swift_once();
      }

      v68 = sub_2172A41C0();
      if (v69)
      {
        v68 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v70 = MEMORY[0x277D83B88];
      }

      v71 = OUTLINED_FUNCTION_2_136(v68, v70);
      sub_21729D81C(v71, 6);
      if (qword_280BE96D8 != -1)
      {
        swift_once();
      }

      v72 = sub_2172A41F0();
      if (v73)
      {
        v72 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v74 = MEMORY[0x277D839F8];
      }

      HIDWORD(v365) = v20;
      v75 = OUTLINED_FUNCTION_2_136(v72, v74);
      sub_21729D81C(v75, 7);
      if (qword_280BE9878 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA5B8(v76, v77, v78, v79, v80, v81, v82, v83, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
      v84 = MEMORY[0x277D839B0];
      v368[3] = MEMORY[0x277D839B0];
      LOBYTE(v368[0]) &= 1u;
      v85 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v85, 8);
      if (qword_280BE9840 != -1)
      {
        swift_once();
      }

      sub_2176CA580(qword_280C028F0, v86, v87, v88, v89, v90, v91, v92, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      sub_2177517D8();
      OUTLINED_FUNCTION_9(v19);
      if (v93)
      {
        sub_2171F0738(v19, &qword_27CB241C0, &qword_217759480);
        memset(v368, 0, 32);
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v94 + 32))();
      }

      v95 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v95, 12);
      if (qword_280BE97C8 != -1)
      {
        swift_once();
      }

      v103 = (v2 + 16);
      sub_2172A43D0(qword_280C02890, v96, v97, v98, v99, v100, v101, v102, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      OUTLINED_FUNCTION_7_1();
      if (v93)
      {
        OUTLINED_FUNCTION_3_52();
      }

      else
      {
        OUTLINED_FUNCTION_18_4(v104);
        v105 = MEMORY[0x277D839B0];
      }

      v106 = OUTLINED_FUNCTION_1_54(v105);
      sub_21729D81C(v106, 9);
      v368[3] = v84;
      LOBYTE(v368[0]) = 0;
      v107 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v107, 10);
      if (qword_280BE97E8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA910(v108, v109, v110, v111, v112, v113, v114, v115, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
      if (LOBYTE(v368[0]) == 2)
      {
        v116 = OUTLINED_FUNCTION_12_70();
      }

      else
      {
        v103 = sub_2176FE78C(v368[0] & 1);
        v116 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      }

      v117 = v12;
      v368[0] = v103;
      v368[3] = v116;
      v118 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v118, 38);
      v368[3] = v84;
      LOBYTE(v368[0]) = 0;
      v119 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v119, 11);
      if (qword_280BE8040 != -1)
      {
        OUTLINED_FUNCTION_14_3();
      }

      v120 = qword_280BE8048;
      v121 = unk_280BE8050;
      v122 = byte_280BE8058;
      v123 = qword_280BE8060;
      v124 = unk_280BE8068;
      v125 = byte_280BE8070;
      v368[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
      v368[4] = sub_2171FEF88();
      v126 = swift_allocObject();
      v368[0] = v126;
      *(v126 + 16) = v120;
      *(v126 + 24) = v121;
      *(v126 + 32) = v122;
      *(v126 + 40) = v123;
      *(v126 + 48) = v124;
      *(v126 + 56) = v125;
      LOBYTE(v120) = sub_217751978();
      __swift_destroy_boxed_opaque_existential_1(v368);
      v127 = v117;
      v128 = v363;
      v129 = v364;
      if (v120)
      {
        if (qword_280BE97F8 != -1)
        {
          OUTLINED_FUNCTION_102_1();
        }

        OUTLINED_FUNCTION_17_20();
        sub_2176CA924(v130, v131, v132, v133, v134, v135, v136, v137, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
        v368[3] = MEMORY[0x277D839B0];
        LOBYTE(v368[0]) = LOBYTE(v368[0]) == 2;
        v138 = OUTLINED_FUNCTION_4_55();
        sub_21729D81C(v138, 13);
      }

      if (qword_280BE97F8 != -1)
      {
        OUTLINED_FUNCTION_102_1();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA924(v139, v140, v141, v142, v143, v144, v145, v146, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
      v147 = MEMORY[0x277D839B0];
      v368[3] = MEMORY[0x277D839B0];
      LOBYTE(v368[0]) = LOBYTE(v368[0]) == 1;
      v148 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v148, 14);
      if (qword_280BE9830 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C028E0, v149, v150, v151, v152, v153, v154, v155, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      OUTLINED_FUNCTION_7_1();
      if (v93)
      {
        OUTLINED_FUNCTION_3_52();
      }

      else
      {
        OUTLINED_FUNCTION_18_4(v156);
        v157 = MEMORY[0x277D839B0];
      }

      v158 = OUTLINED_FUNCTION_1_54(v157);
      sub_21729D81C(v158, 15);
      if (qword_280BE97A8 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02880, v159, v160, v161, v162, v163, v164, v165, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      OUTLINED_FUNCTION_7_1();
      if (v93)
      {
        OUTLINED_FUNCTION_3_52();
      }

      else
      {
        OUTLINED_FUNCTION_18_4(v166);
        v167 = MEMORY[0x277D839B0];
      }

      v168 = OUTLINED_FUNCTION_1_54(v167);
      sub_21729D81C(v168, 16);
      if (qword_280BE8248 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C024F8, v169, v170, v171, v172, v173, v174, v175, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      v368[3] = v147;
      OUTLINED_FUNCTION_18_4(v176);
      v177 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v177, 18);
      if (qword_280BE8270 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02520, v178, v179, v180, v181, v182, v183, v184, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      v368[3] = v147;
      OUTLINED_FUNCTION_18_4(v185);
      v186 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v186, 19);
      if (qword_280BE97A0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA938(v187, v188, v189, v190, v191, v192, v193, v194, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
      v195 = LOBYTE(v368[0]);
      switch(LOBYTE(v368[0]))
      {
        case 1:
          v195 = 1;
          goto LABEL_101;
        case 2:
          v195 = 2;
          goto LABEL_101;
        case 3:
          v195 = 3;
          goto LABEL_101;
        case 4:
          v195 = 4;
          goto LABEL_101;
        case 5:
          OUTLINED_FUNCTION_37_40();
          goto LABEL_102;
        default:
LABEL_101:
          v196 = [objc_opt_self() rawValueForKeepLocalEnabledState_];
          v368[3] = MEMORY[0x277D83B88];
          v368[0] = v196;
LABEL_102:
          v197 = OUTLINED_FUNCTION_4_55();
          sub_21729D81C(v197, 20);
          if (qword_280BE9798 != -1)
          {
            swift_once();
          }

          break;
      }

      break;
  }

  OUTLINED_FUNCTION_17_20();
  sub_2176CA94C(v198, v199, v200, v201, v202, v203, v204, v205, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
  v206 = LOBYTE(v368[0]);
  switch(LOBYTE(v368[0]))
  {
    case 1:
      v206 = 1;
      goto LABEL_113;
    case 2:
      v206 = 2;
      goto LABEL_113;
    case 3:
      v206 = 3;
      goto LABEL_113;
    case 4:
      v206 = 4;
      goto LABEL_113;
    case 5:
      v206 = 5;
      goto LABEL_113;
    case 6:
      v206 = 6;
      goto LABEL_113;
    case 7:
      OUTLINED_FUNCTION_37_40();
      goto LABEL_114;
    default:
LABEL_113:
      v207 = [objc_opt_self() rawValueForKeepLocalManagedStatus_];
      v368[3] = MEMORY[0x277D83B88];
      v368[0] = v207;
LABEL_114:
      v208 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v208, 21);
      if (qword_280BE9780 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA960(v209, v210, v211, v212, v213, v214, v215, v216, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
      if (v368[1])
      {
        v217 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v366[0] = v368[0];
        v217 = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
        v218 = MEMORY[0x277D83B88];
      }

      v219 = OUTLINED_FUNCTION_2_136(v217, v218);
      sub_21729D81C(v219, 22);
      if (qword_280BE9820 != -1)
      {
        swift_once();
      }

      sub_2176CA580(qword_280C028D8, v220, v221, v222, v223, v224, v225, v226, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      OUTLINED_FUNCTION_9(v128);
      if (v93)
      {
        sub_2171F0738(v128, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_37_40();
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v227 + 32))();
      }

      v228 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v228, 23);
      if (qword_280BE97D8 != -1)
      {
        swift_once();
      }

      v236 = v2;
      sub_2176CA580(qword_280C028A0, v229, v230, v231, v232, v233, v234, v235, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      OUTLINED_FUNCTION_9(v127);
      if (v93)
      {
        sub_2171F0738(v127, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_37_40();
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v237 + 32))();
      }

      v238 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v238, 24);
      if (qword_280BE9818 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA974(v239, v240, v241, v242, v243, v244, v245, v246, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16]);
      if (v368[1])
      {
        v236 = sub_2176FE688(v368[0] & 0xFF01, v368[1], v368[2] & 1);
        v247 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      }

      else
      {
        v247 = OUTLINED_FUNCTION_12_70();
      }

      v368[0] = v236;
      v368[3] = v247;
      v248 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v248, 39);
      if (qword_280BE8260 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA5A0(v249, v250, v251, v252, v253, v254, v255, v256, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14]);
      if (v368[2] == 1)
      {
        v257 = OUTLINED_FUNCTION_12_70();
      }

      else
      {
        v236 = sub_2176FE58C();
        v257 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      }

      v368[0] = v236;
      v368[3] = v257;
      v258 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v258, 40);
      if (qword_280BE9690 != -1)
      {
        swift_once();
      }

      v259 = sub_2172A41C0();
      if (v260)
      {
        v259 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v261 = MEMORY[0x277D83B88];
      }

      v262 = OUTLINED_FUNCTION_2_136(v259, v261);
      sub_21729D81C(v262, 25);
      if (qword_280BE98F0 != -1)
      {
        swift_once();
      }

      sub_2176CA580(qword_280C02950, v263, v264, v265, v266, v267, v268, v269, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      OUTLINED_FUNCTION_9(v129);
      if (v93)
      {
        sub_2171F0738(v129, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_37_40();
      }

      else
      {
        OUTLINED_FUNCTION_27_24();
        OUTLINED_FUNCTION_8_3();
        (*(v270 + 32))();
      }

      v271 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v271, 26);
      if (qword_280BE82A0 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02540, v272, v273, v274, v275, v276, v277, v278, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      v368[3] = v147;
      OUTLINED_FUNCTION_18_4(v279);
      v280 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v280, 27);
      if (qword_280BE9750 != -1)
      {
        swift_once();
      }

      v281 = sub_2172A41AC();
      if (v282)
      {
        v283 = v281;
      }

      else
      {
        v283 = 0;
      }

      v284 = 0xE000000000000000;
      v368[3] = MEMORY[0x277D837D0];
      if (v282)
      {
        v284 = v282;
      }

      v368[0] = v283;
      v368[1] = v284;
      v285 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v285, 28);
      v286 = BYTE4(v365);
      if (qword_280BE98E8 != -1)
      {
        swift_once();
      }

      v287 = sub_2172A41C0();
      if (v288)
      {
        v287 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v289 = MEMORY[0x277D83B88];
      }

      v290 = OUTLINED_FUNCTION_2_136(v287, v289);
      sub_21729D81C(v290, 29);
      sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      if (qword_280BE9880 != -1)
      {
        swift_once();
      }

      v298 = sub_2172A43DC(qword_280BE9888);
      if (qword_280BE97B8 != -1)
      {
        swift_once();
      }

      sub_2172A43D0(qword_280C02888, v291, v292, v293, v294, v295, v296, v297, v363, v364, v365, v366[0], v366[1], v366[2], SWORD2(v366[2]), SBYTE6(v366[2]), SHIBYTE(v366[2]), v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10]);
      v300 = sub_217659BD4(v298, v299);
      v302 = v301;

      if (v302)
      {
        v300 = 0;
        v303 = 0;
        v368[2] = 0;
        v368[1] = 0;
      }

      else
      {
        v303 = MEMORY[0x277D83B88];
      }

      v368[0] = v300;
      v304 = OUTLINED_FUNCTION_1_54(v303);
      sub_21729D81C(v304, 30);
      if (qword_280BE9928 != -1)
      {
        swift_once();
      }

      v305 = sub_2172A41F0();
      if (v306)
      {
        v305 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v307 = MEMORY[0x277D839F8];
      }

      v308 = OUTLINED_FUNCTION_2_136(v305, v307);
      sub_21729D81C(v308, 31);
      if (qword_280BE98D8 != -1)
      {
        swift_once();
      }

      v309 = sub_2172A41C0();
      if (v310)
      {
        v309 = OUTLINED_FUNCTION_2_57();
      }

      else
      {
        v311 = MEMORY[0x277D83B88];
      }

      v312 = OUTLINED_FUNCTION_2_136(v309, v311);
      sub_21729D81C(v312, 32);
      if (qword_280BE9738 != -1)
      {
        OUTLINED_FUNCTION_1_33();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA544(v313, v314, v315, v316, v317, v318, v319, v320, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      if (v368[11])
      {
        sub_2172CE9F8();
        sub_2171F0738(v368, &qword_27CB25388, &unk_21775D410);
        if (v366[1])
        {
          sub_21725CF0C(v366, v367);
          sub_2176FDE74();
          v322 = v321;
          sub_21725CE44(v366);
          goto LABEL_188;
        }

        v323 = &unk_27CB275E0;
        v324 = &qword_2177589D0;
        v325 = v366;
      }

      else
      {
        v323 = &qword_27CB25318;
        v324 = &qword_2177657C0;
        v325 = v368;
      }

      sub_2171F0738(v325, v323, v324);
      v322 = 0;
LABEL_188:
      v326 = sub_217215924(0, &qword_280BE22D8, off_278228D58);
      v368[3] = v326;
      if (!v322)
      {
        if (qword_280BE9960 != -1)
        {
          swift_once();
        }

        v327 = sub_2172A41AC();
        v322 = sub_2176FD620(25, v327, v328);
      }

      v368[0] = v322;
      v329 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v329, 33);
      if (qword_280BE9710 != -1)
      {
        OUTLINED_FUNCTION_21_51();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA50C(v330, v331, v332, v333, v334, v335, v336, v337, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      if (!v368[11])
      {
        v340 = &qword_27CB25310;
        v341 = &unk_21775D3D0;
        v342 = v368;
LABEL_200:
        sub_2171F0738(v342, v340, v341);
        v368[3] = v326;
        goto LABEL_201;
      }

      sub_2172CE9BC();
      sub_2171F0738(v368, &qword_27CB25398, &unk_21776C4F0);
      if (!v366[1])
      {
        v340 = &qword_27CB2CD90;
        v341 = &unk_21775A2C0;
        v342 = v366;
        goto LABEL_200;
      }

      sub_21725CF68(v366, v367);
      sub_2176FDD58();
      v339 = v338;
      sub_217284498(v366);
      v368[3] = v326;
      if (v339)
      {
        goto LABEL_210;
      }

LABEL_201:
      if (qword_280BE9958 != -1)
      {
        swift_once();
      }

      v343 = sub_2172A41AC();
      if (v344)
      {
        v345 = v343;
      }

      else
      {
        v345 = 0;
      }

      if (v344)
      {
        v346 = v344;
      }

      else
      {
        v346 = 0xE000000000000000;
      }

      v339 = sub_2176FD724(11, v345, v346);

LABEL_210:
      v368[0] = v339;
      v347 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v347, 34);
      if (qword_280BE9720 != -1)
      {
        OUTLINED_FUNCTION_4_39();
      }

      OUTLINED_FUNCTION_17_20();
      sub_2176CA528(v348, v349, v350, v351, v352, v353, v354, v355, v363, v364, v365, v366[0], v366[1], v366[2], v366[3], v366[4], v366[5], v366[6], v366[7], v366[8], v366[9], v366[10], v366[11], v366[12], v366[13], v366[14], v366[15], v366[16], v366[17], v366[18]);
      if (!v368[11])
      {
        v358 = &qword_27CB25320;
        v359 = &unk_21776E020;
        v360 = v368;
LABEL_217:
        sub_2171F0738(v360, v358, v359);
        OUTLINED_FUNCTION_37_40();
        goto LABEL_218;
      }

      sub_2172CE898();
      sub_2171F0738(v368, &qword_27CB27C80, &unk_21775D420);
      if (!v366[1])
      {
        v358 = &unk_27CB27760;
        v359 = &unk_21775A2D0;
        v360 = v366;
        goto LABEL_217;
      }

      LOBYTE(v367[0]) = v286;
      v357 = sub_2172A2B9C(v367, v356);
      sub_21728418C(v366);
      v368[3] = v326;
      v368[0] = v357;
LABEL_218:
      v361 = OUTLINED_FUNCTION_4_55();
      sub_21729D81C(v361, 37);
      return v369;
  }
}

id sub_2176FD620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  *(inited + 32) = Album.LegacyModelAlbumPropertyKey.rawValue.getter();
  *(inited + 40) = v6;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  sub_217751DE8();
  sub_217751DC8();
  v7 = [objc_opt_self() emptyIdentifierSet];
  v8 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  return sub_2175FCB20(v7, 0);
}

id sub_2176FD724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24570, &unk_217758A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177586E0;
  *(inited + 32) = Artist.LegacyModelArtistPropertyKey.rawValue.getter();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  sub_217751DE8();
  sub_217751DC8();
  v7 = [objc_opt_self() emptyIdentifierSet];
  v8 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  return sub_2175FCB20(v7, 2);
}

uint64_t Song.LegacyModelSongPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217753158();

  v4 = 0;
  v5 = 24;
  switch(v2)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v4 = 1;
      goto LABEL_39;
    case 2:
      v4 = 2;
      goto LABEL_39;
    case 3:
      v4 = 3;
      goto LABEL_39;
    case 4:
      v4 = 4;
      goto LABEL_39;
    case 5:
      v4 = 5;
      goto LABEL_39;
    case 6:
      v4 = 6;
      goto LABEL_39;
    case 7:
      v4 = 7;
      goto LABEL_39;
    case 8:
      v4 = 8;
      goto LABEL_39;
    case 9:
      v4 = 9;
      goto LABEL_39;
    case 10:
      v4 = 10;
      goto LABEL_39;
    case 11:
      v4 = 11;
      goto LABEL_39;
    case 12:
      v4 = 12;
      goto LABEL_39;
    case 13:
      v4 = 13;
      goto LABEL_39;
    case 14:
      v4 = 14;
      goto LABEL_39;
    case 15:
      v4 = 15;
      goto LABEL_39;
    case 16:
      v4 = 16;
      goto LABEL_39;
    case 17:
      v4 = 17;
      goto LABEL_39;
    case 18:
      v4 = 18;
      goto LABEL_39;
    case 19:
      v4 = 19;
      goto LABEL_39;
    case 20:
      v4 = 20;
      goto LABEL_39;
    case 21:
      v4 = 21;
      goto LABEL_39;
    case 22:
      v4 = 22;
      goto LABEL_39;
    case 23:
      v4 = 23;
LABEL_39:
      v5 = v4;
      break;
    case 24:
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    case 35:
      v5 = 35;
      break;
    case 36:
      v5 = 36;
      break;
    case 37:
      v5 = 37;
      break;
    case 38:
      v5 = 38;
      break;
    case 39:
      v5 = 39;
      break;
    case 40:
      v5 = 40;
      break;
    case 41:
      v5 = 41;
      break;
    default:
      v5 = 42;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2176FDA1C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Song.LegacyModelSongPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_2176FDA28@<X0>(unint64_t *a1@<X8>)
{
  result = Song.LegacyModelSongPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Double_optional __swiftcall Double.init(legacyModelRawValue:)(Swift::Double legacyModelRawValue)
{
  v1 = LOBYTE(legacyModelRawValue);
  result.value = legacyModelRawValue;
  result.is_nil = v1;
  return result;
}

double sub_2176FDAB0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2176FDABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2176FDB20()
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D588();
  v177[3] = &type metadata for Song;
  v177[4] = &protocol witness table for Song;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_9_91();
  v5 = sub_217283AFC(v3, v4);
  v13 = OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v173, v174, v175, v176, v177[0]);
  OUTLINED_FUNCTION_51_27(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v172);
  __swift_project_boxed_opaque_existential_1(&v172, v175);
  v21 = OUTLINED_FUNCTION_1_138();
  v22(v21);
  sub_217283B58(v0);
  sub_21729C644(&v172);
  __swift_destroy_boxed_opaque_existential_1(v177);
  OUTLINED_FUNCTION_8_90();
  v24 = sub_2172B7F78(28, v23);
  OUTLINED_FUNCTION_10_73(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v172, v173, v174, v175, v176, v177[0]);
  sub_217269F50(v177);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v32 = OUTLINED_FUNCTION_33_47();
  [v32 v33];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FDC3C()
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D5D0();
  v177[3] = &type metadata for MusicVideo;
  v177[4] = &protocol witness table for MusicVideo;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_9_91();
  v5 = sub_217283BAC(v3, v4);
  v13 = OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v173, v174, v175, v176, v177[0]);
  OUTLINED_FUNCTION_51_27(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v172);
  __swift_project_boxed_opaque_existential_1(&v172, v175);
  v21 = OUTLINED_FUNCTION_1_138();
  v22(v21);
  sub_217283C08(v0);
  sub_21729C644(&v172);
  __swift_destroy_boxed_opaque_existential_1(v177);
  OUTLINED_FUNCTION_8_90();
  v24 = sub_2172B7F78(14, v23);
  OUTLINED_FUNCTION_10_73(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v172, v173, v174, v175, v176, v177[0]);
  sub_217269F50(v177);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v32 = OUTLINED_FUNCTION_33_47();
  [v32 v33];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FDD58()
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D6A8();
  v177[3] = &type metadata for Artist;
  v177[4] = &protocol witness table for Artist;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_9_91();
  v5 = sub_21725CF68(v3, v4);
  v13 = OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v173, v174, v175, v176, v177[0]);
  OUTLINED_FUNCTION_51_27(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v172);
  __swift_project_boxed_opaque_existential_1(&v172, v175);
  v21 = OUTLINED_FUNCTION_1_138();
  v22(v21);
  sub_217284498(v0);
  sub_21729C644(&v172);
  __swift_destroy_boxed_opaque_existential_1(v177);
  OUTLINED_FUNCTION_8_90();
  v24 = sub_2172B7F78(2, v23);
  OUTLINED_FUNCTION_10_73(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v172, v173, v174, v175, v176, v177[0]);
  sub_217269F50(v177);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v32 = OUTLINED_FUNCTION_33_47();
  [v32 v33];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FDE74()
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D86C();
  v177[3] = &type metadata for Album;
  v177[4] = &protocol witness table for Album;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_9_91();
  v5 = sub_21725CF0C(v3, v4);
  v13 = OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v173, v174, v175, v176, v177[0]);
  OUTLINED_FUNCTION_51_27(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v172);
  __swift_project_boxed_opaque_existential_1(&v172, v175);
  v21 = OUTLINED_FUNCTION_1_138();
  v22(v21);
  sub_21725CE44(v0);
  sub_21729C644(&v172);
  __swift_destroy_boxed_opaque_existential_1(v177);
  OUTLINED_FUNCTION_8_90();
  v24 = sub_2172B7F78(0, v23);
  OUTLINED_FUNCTION_10_73(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v172, v173, v174, v175, v176, v177[0]);
  sub_217269F50(v177);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v32 = OUTLINED_FUNCTION_33_47();
  [v32 v33];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

uint64_t sub_2176FDF90(void *a1, char a2)
{
  LOBYTE(__dst[0]) = a2;
  Genre.convertToRawDictionary(for:)();
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v4 = *(v3 + 96);
  v5 = OUTLINED_FUNCTION_36_14();
  v6(v5, v3);
  v7 = v193;
  __swift_project_boxed_opaque_existential_1(__dst, v192);
  v8 = *(v7[1] + 6);
  v9 = OUTLINED_FUNCTION_36_14();
  v10(v9);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  if (v51 == qword_280BE4A90 && v54 == *algn_280BE4A98)
  {

    v13 = 8;
  }

  else
  {
    v12 = sub_217753058();

    if (v12)
    {
      v13 = 8;
    }

    else
    {
      v13 = 1;
    }
  }

  LOBYTE(__dst[0]) = v13;
  v14 = sub_21721478C();
  v192 = &type metadata for Genre;
  v193 = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_9_91();
  v17 = sub_217284130(v15, v16);
  v25 = OUTLINED_FUNCTION_45_36(v17, v18, v19, v20, v21, v22, v23, v24, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, v187, v188, v189, v190, __dst[0]);
  OUTLINED_FUNCTION_51_27(v25, v26, v27, v28, v29, v30, v31, v32, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181, v184, v186);
  __swift_project_boxed_opaque_existential_1(&v186, v189);
  v33 = OUTLINED_FUNCTION_39_33();
  v34(v33);
  sub_21728418C(a1);
  sub_21729C644(&v186);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  OUTLINED_FUNCTION_8_90();
  v36 = sub_2172B7F78(v14, v35);
  OUTLINED_FUNCTION_10_73(v36, v37, v38, v39, v40, v41, v42, v43, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182, v185, v186, v187, v188, v189, v190, __dst[0]);
  sub_217269F50(__dst);
  v44 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v45 = OUTLINED_FUNCTION_33_47();
  [v45 v46];

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_46();
}

id sub_2176FE1C0(uint64_t a1, char a2)
{
  sub_21753D6F0(a2);
  sub_217275710(a1, v82);
  sub_21727576C(v82);
  v4 = sub_21721478C();
  v80 = &type metadata for Track;
  v81 = &protocol witness table for Track;
  *__dst = swift_allocObject();
  v5 = sub_217275710(a1, *__dst + 16);
  OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *__dst);
  Track.propertyProvider.getter();
  __swift_project_boxed_opaque_existential_1(&v74, v77);
  v13 = OUTLINED_FUNCTION_39_33();
  v14(v13);
  sub_21727576C(a1);
  sub_21729C644(&v74);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  LOBYTE(v74) = a2;
  v15 = sub_2172B7F78(v4, &v74);
  OUTLINED_FUNCTION_10_73(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, __dst[0]);
  sub_217269F50(__dst);
  v23 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v24 = OUTLINED_FUNCTION_46_35();

  v25 = [v23 initWithIdentifierSet:&v29 modelObjectType:v4 storageDictionary:v24];

  swift_unknownObjectRelease();
  return v25;
}

void sub_2176FE354()
{
  OUTLINED_FUNCTION_217_1();
  v3 = OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D540(v3);
  v178[3] = &type metadata for Playlist.Entry;
  v178[4] = &protocol witness table for Playlist.Entry;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_9_91();
  v6 = sub_217275858(v4, v5);
  v14 = OUTLINED_FUNCTION_45_36(v6, v7, v8, v9, v10, v11, v12, v13, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v173, v174, v175, v176, v177, v178[0]);
  OUTLINED_FUNCTION_51_27(v14, v15, v16, v17, v18, v19, v20, v21, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v173);
  __swift_project_boxed_opaque_existential_1(&v173, v176);
  v22 = OUTLINED_FUNCTION_1_138();
  v23(v22);
  sub_2172758B4(v0);
  sub_21729C644(&v173);
  __swift_destroy_boxed_opaque_existential_1(v178);
  OUTLINED_FUNCTION_8_90();
  v25 = sub_2172B7F78(19, v24);
  OUTLINED_FUNCTION_10_73(v25, v26, v27, v28, v29, v30, v31, v32, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v173, v174, v175, v176, v177, v178[0]);
  sub_217269F50(v178);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v33 = OUTLINED_FUNCTION_33_47();
  [v33 v34];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

void sub_2176FE470()
{
  OUTLINED_FUNCTION_217_1();
  OUTLINED_FUNCTION_6_109(v1, v2);
  sub_21753D3A4();
  v177[3] = &type metadata for Playlist;
  v177[4] = &protocol witness table for Playlist;
  OUTLINED_FUNCTION_197();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_9_91();
  v5 = sub_2172757C0(v3, v4);
  v13 = OUTLINED_FUNCTION_45_36(v5, v6, v7, v8, v9, v10, v11, v12, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v169, v172, v173, v174, v175, v176, v177[0]);
  OUTLINED_FUNCTION_51_27(v13, v14, v15, v16, v17, v18, v19, v20, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164, v167, v170, v172);
  __swift_project_boxed_opaque_existential_1(&v172, v175);
  v21 = OUTLINED_FUNCTION_1_138();
  v22(v21);
  sub_21726B8C4(v0);
  sub_21729C644(&v172);
  __swift_destroy_boxed_opaque_existential_1(v177);
  OUTLINED_FUNCTION_8_90();
  v24 = sub_2172B7F78(17, v23);
  OUTLINED_FUNCTION_10_73(v24, v25, v26, v27, v28, v29, v30, v31, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, v168, v171, v172, v173, v174, v175, v176, v177[0]);
  sub_217269F50(v177);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  OUTLINED_FUNCTION_46_35();
  OUTLINED_FUNCTION_44_31();
  v32 = OUTLINED_FUNCTION_33_47();
  [v32 v33];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_31_46();
  OUTLINED_FUNCTION_219();
}

id sub_2176FE58C()
{
  v0 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v1 = [objc_opt_self() emptyIdentifierSet];
  v2 = MusicLyrics.convertToLegacyModelStorageDictionary(for:)();
  sub_2172A27AC();

  sub_217751D88();
  OUTLINED_FUNCTION_36_14();

  v3 = [v0 initWithIdentifierSet:v1 modelObjectType:12 storageDictionary:v2];
  swift_unknownObjectRelease();

  return v3;
}

id sub_2176FE688(__int16 a1, uint64_t a2, char a3)
{
  LOBYTE(v11) = a3;
  LOWORD(v8) = a1;
  LOBYTE(v10) = a3;
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v4 = [objc_opt_self() emptyIdentifierSet];
  v5 = FileAsset.convertToLegacyModelStorageDictionary(for:)();
  sub_2172A211C(v5);

  sub_217751D88();
  OUTLINED_FUNCTION_36_14();

  v6 = [v3 initWithIdentifierSet:v4 modelObjectType:8 storageDictionary:v5];
  swift_unknownObjectRelease();

  return v6;
}

id sub_2176FE78C(char a1)
{
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v4 = [objc_opt_self() emptyIdentifierSet];
  sub_21763E284(0, a1);
  sub_217751D88();
  OUTLINED_FUNCTION_44_31();
  v5 = [v3 initWithIdentifierSet:v4 modelObjectType:10 storageDictionary:v1];
  swift_unknownObjectRelease();

  return v5;
}

id sub_2176FE84C()
{
  v0 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  v1 = [objc_opt_self() emptyIdentifierSet];
  CatalogAsset.convertToLegacyModelStorageDictionary(for:)();
  sub_2172A25C4();

  v2 = sub_217751D88();

  v3 = [v0 initWithIdentifierSet:v1 modelObjectType:30 storageDictionary:v2];
  swift_unknownObjectRelease();

  return v3;
}

unint64_t sub_2176FE940()
{
  result = qword_280BE8610;
  if (!qword_280BE8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8610);
  }

  return result;
}

unint64_t sub_2176FE994(uint64_t a1)
{
  *(a1 + 8) = sub_2172A546C();
  result = sub_2176FE9C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2176FE9C4()
{
  result = qword_27CB2D430;
  if (!qword_27CB2D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D430);
  }

  return result;
}

uint64_t _s26LegacyModelSongPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD7)
  {
    if (a2 + 41 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 41) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 42;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2A;
  v5 = v6 - 42;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s26LegacyModelSongPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 41 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 41) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD6)
  {
    v6 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
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
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_51()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_41(uint64_t a1)
{
  v5 = *(v1 + 120);

  return sub_2171F5110(a1, v5, v2, v3);
}

void *OUTLINED_FUNCTION_45_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{

  return __swift_project_boxed_opaque_existential_1(&a60, v60);
}

uint64_t OUTLINED_FUNCTION_46_35()
{

  return sub_217751D88();
}

uint64_t OUTLINED_FUNCTION_48_25(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  v56 = a1 + 16;

  return sub_21729C5E8(v56, &a55);
}

uint64_t OUTLINED_FUNCTION_53_30()
{

  return sub_2171F0738(v3 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_55_28()
{
  *(v0 + 960) = 0;
  *v1 = 0u;
  v1[1] = 0u;

  return swift_unknownObjectRetain();
}

uint64_t MusicAPI.Error.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicAPI.Error.detail.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicAPI.Error.id.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicAPI.Error.source.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2172838F8(v2, v3);
}

uint64_t MusicAPI.Error.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  *a1 = v2;
  a1[1] = v3;
  return sub_2171FB568(v2, v3);
}

uint64_t sub_2176FED50()
{
  v0 = sub_217752DC8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2176FEDC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2176FED50();
  *a2 = result;
  return result;
}

uint64_t sub_2176FEDF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21722EBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2176FEE28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2176FED9C();
  *a1 = result;
  return result;
}

uint64_t sub_2176FEE50(uint64_t a1)
{
  v2 = sub_2176FFAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176FEE8C(uint64_t a1)
{
  v2 = sub_2176FFAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicAPI.Error.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v134 = v20;
  v24 = v23;
  v132 = v25;
  v26 = sub_217752B38();
  v27 = OUTLINED_FUNCTION_0_0(v26);
  v133 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27, v31);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D438, &qword_21779AFC8);
  OUTLINED_FUNCTION_0_0(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39, v40);
  v42 = (&v124 - v41);
  v44 = *(v24 + 24);
  v43 = *(v24 + 32);
  v150 = v24;
  OUTLINED_FUNCTION_160(v24, v44);
  v45 = sub_2176FFAF8();
  v46 = v134;
  sub_2177532C8();
  if (v46)
  {
    OUTLINED_FUNCTION_18_59();
    v47 = v24;
    goto LABEL_83;
  }

  v131 = v45;
  v48 = v133;
  v134 = v36;
  LOBYTE(v136) = 0;
  OUTLINED_FUNCTION_13_74();
  v49 = sub_217752E68();
  v50 = v49;
  v52 = v51;
  v53 = HIBYTE(v51) & 0xF;
  v54 = v49 & 0xFFFFFFFFFFFFLL;
  if ((v52 & 0x2000000000000000) != 0)
  {
    v55 = v53;
  }

  else
  {
    v55 = v49 & 0xFFFFFFFFFFFFLL;
  }

  v130 = v26;
  v26 = v48;
  v47 = v24;
  v56 = v33;
  if (!v55)
  {
    goto LABEL_72;
  }

  if ((v52 & 0x1000000000000000) != 0)
  {
    LOBYTE(v135[0]) = 0;
    v85 = v52;
    v86 = v33;
    v87 = v49;
    sub_217751DE8();
    v88 = sub_2175B1ECC(v87, v85, 10);
    v90 = v89;

    v50 = v87;
    v56 = v86;
    v26 = v133;
    v52 = v85;
    if (v90)
    {
      goto LABEL_72;
    }

    v59 = v88;
    goto LABEL_80;
  }

  if ((v52 & 0x2000000000000000) != 0)
  {
    v136 = v49;
    v137 = v52 & 0xFFFFFFFFFFFFFFLL;
    if (v49 == 43)
    {
      if (v53)
      {
        if (v53 != 1)
        {
          OUTLINED_FUNCTION_30_47();
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v61 & v60)
            {
              break;
            }

            OUTLINED_FUNCTION_2_2();
            if (!v61)
            {
              break;
            }

            v59 = v70 + v69;
            if (__OFADD__(v70, v69))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v61)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v49 != 45)
    {
      if (v53)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v61 & v60)
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (!v61)
          {
            break;
          }

          v59 = v74 + v73;
          if (__OFADD__(v74, v73))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v61)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v53)
    {
      if (v53 != 1)
      {
        OUTLINED_FUNCTION_30_47();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v61 & v60)
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (!v61)
          {
            break;
          }

          v59 = v66 - v65;
          if (__OFSUB__(v66, v65))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
          if (v61)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_109;
  }

  if ((v49 & 0x1000000000000000) != 0)
  {
    v57 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v122 = v52;
    v44 = v26;
    v123 = v49;
    v57 = sub_217752B88();
    v50 = v123;
    v56 = v33;
    v52 = v122;
  }

  v58 = *v57;
  if (v58 == 43)
  {
    if (v54 >= 1)
    {
      if (v54 != 1)
      {
        v59 = 0;
        if (v57)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v61 & v60)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_2();
            if (!v61)
            {
              goto LABEL_70;
            }

            v59 = v68 + v67;
            if (__OFADD__(v68, v67))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_5();
            if (v61)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    goto LABEL_110;
  }

  if (v58 == 45)
  {
    if (v54 >= 1)
    {
      if (v54 != 1)
      {
        v59 = 0;
        if (v57)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v61 & v60)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_2();
            if (!v61)
            {
              goto LABEL_70;
            }

            v59 = v63 - v62;
            if (__OFSUB__(v63, v62))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_2_5();
            if (v61)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v64 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v54)
  {
    v59 = 0;
    if (v57)
    {
      while (1)
      {
        v71 = *v57 - 48;
        if (v71 > 9)
        {
          goto LABEL_70;
        }

        v72 = 10 * v59;
        if ((v59 * 10) >> 64 != (10 * v59) >> 63)
        {
          goto LABEL_70;
        }

        v59 = v72 + v71;
        if (__OFADD__(v72, v71))
        {
          goto LABEL_70;
        }

        ++v57;
        if (!--v54)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  v59 = 0;
  v64 = 1;
LABEL_71:
  LOBYTE(v135[0]) = v64;
  if (v64)
  {
LABEL_72:
    v75 = v26;
    v26 = v56;
    v76 = v50;
    v77 = v52;
    v133 = v42;
    v78 = v150[4];
    OUTLINED_FUNCTION_160(v150, v150[3]);
    sub_217753298();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_27_53();
    }

    OUTLINED_FUNCTION_24_52();
    if (v60)
    {
      OUTLINED_FUNCTION_14_69(v79);
      v79 = v132;
    }

    v139 = &_s5ErrorV10CodingKeysON;
    v140 = v78;
    LOBYTE(v136) = 0;
    OUTLINED_FUNCTION_25_61(v79);
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000040, 0x80000002177B5CA0);
    MEMORY[0x21CEA23B0](v76, v77);

    OUTLINED_FUNCTION_21_52();
    sub_217752B08();
    v24 = sub_217752B48();
    swift_allocError();
    v42 = v80;
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v42 = MEMORY[0x277D83B88];
    v82 = v130;
    (*(v75 + 16))(v42 + v81, v26, v130);
    (*(*(v24 - 8) + 104))(v42, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v75 + 8))(v26, v82);
LABEL_77:
    OUTLINED_FUNCTION_10_74();
    v84 = v133;
LABEL_82:
    v83(v84, v34);
    OUTLINED_FUNCTION_18_59();
LABEL_83:
    __swift_destroy_boxed_opaque_existential_1(v47);
    if (v42)
    {

      if (v26)
      {
        goto LABEL_85;
      }
    }

    else if (v26)
    {
LABEL_85:

      if ((v24 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (!v24)
    {
      goto LABEL_90;
    }

LABEL_89:

    goto LABEL_90;
  }

LABEL_80:

  v91 = OUTLINED_FUNCTION_9_92(1);
  v24 = v92;
  v129 = v56;
  v93 = v91;
  sub_217751DE8();
  v56 = v93;
  sub_2175AFCBC();
  if (v95)
  {
    v44 = v24;
    v133 = v42;
    v42 = v150[4];
    OUTLINED_FUNCTION_160(v150, v150[3]);
    sub_217753298();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      OUTLINED_FUNCTION_24_52();
      if (v60)
      {
        OUTLINED_FUNCTION_14_69(v96);
        v96 = v132;
      }

      v139 = &_s5ErrorV10CodingKeysON;
      v140 = v42;
      LOBYTE(v136) = 1;
      OUTLINED_FUNCTION_25_61(v96);
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177B5CF0);
      MEMORY[0x21CEA23B0](v56, v44);

      OUTLINED_FUNCTION_21_52();
      v97 = v129;
      sub_217752B08();
      v24 = sub_217752B48();
      swift_allocError();
      v42 = v98;
      v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
      *v42 = MEMORY[0x277D83B88];
      v100 = v130;
      (*(v26 + 16))(v42 + v99, v97, v130);
      (*(*(v24 - 8) + 104))(v42, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      v101 = *(v26 + 8);
      LODWORD(v26) = v26 + 8;
      v101(v97, v100);
      goto LABEL_77;
    }

LABEL_112:
    OUTLINED_FUNCTION_27_53();
    goto LABEL_93;
  }

  v26 = v94;

  v102 = OUTLINED_FUNCTION_9_92(4);
  if (v93)
  {
    OUTLINED_FUNCTION_10_74();
    v84 = v42;
    goto LABEL_82;
  }

  v130 = v102;
  v133 = v103;
  v104 = OUTLINED_FUNCTION_9_92(2);
  v131 = v105;
  LOBYTE(v136) = 3;
  OUTLINED_FUNCTION_13_74();
  if (sub_217752EC8())
  {
    LOBYTE(v136) = 3;
    OUTLINED_FUNCTION_13_74();
    v128 = sub_217752E68();
    v129 = v104;
    v107 = v106;
  }

  else
  {
    v129 = v104;
    v128 = 0;
    v107 = 0;
  }

  LOBYTE(v136) = 5;
  OUTLINED_FUNCTION_13_74();
  if (sub_217752EC8())
  {
    LOBYTE(v135[0]) = 5;
    sub_21770162C();
    sub_217752EA8();
    v126 = v59;
    v108 = v34;
    v110 = v136;
    v109 = v137;
    v111 = v138;
    v112 = v139;
  }

  else
  {
    v126 = v59;
    v108 = v34;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v109 = 1;
  }

  LOBYTE(v136) = 6;
  v127 = v108;
  if (sub_217752EC8())
  {
    LOBYTE(v135[0]) = 6;
    sub_2177015D8();
    sub_217752EA8();
    v115 = OUTLINED_FUNCTION_4_132(&a11);
    v116(v115);
    v117 = v136;
    v118 = v137;
  }

  else
  {
    v113 = OUTLINED_FUNCTION_4_132(&a11);
    v114(v113);
    v117 = 0;
    v118 = 1;
  }

  v127 = v117;
  v134 = v118;
  v119 = v126;
  v135[0] = v126;
  v124 = v26;
  v135[1] = v26;
  v135[2] = v129;
  v120 = v131;
  v135[3] = v131;
  v135[4] = v128;
  v125 = v107;
  v135[5] = v107;
  v135[6] = v130;
  v121 = v133;
  v135[7] = v133;
  v135[8] = v110;
  v135[9] = v109;
  v135[10] = v111;
  v135[11] = v112;
  v135[12] = v117;
  v135[13] = v118;
  memcpy(v132, v135, 0x70uLL);
  sub_21728399C(v135, &v136);
  __swift_destroy_boxed_opaque_existential_1(v150);
  v136 = v119;
  v137 = v124;
  v138 = v129;
  v139 = v120;
  v140 = v128;
  v141 = v125;
  v142 = v130;
  v143 = v121;
  v144 = v110;
  v145 = v109;
  v146 = v111;
  v147 = v112;
  v148 = v127;
  v149 = v134;
  sub_2172839F8(&v136);
LABEL_90:
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176FFAF8()
{
  result = qword_27CB2D440;
  if (!qword_27CB2D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D440);
  }

  return result;
}

void MusicAPI.Error.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D458, &qword_21779AFD0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v21 - v11;
  v14 = *v0;
  v13 = v0[1];
  v15 = v0[3];
  v30 = v0[2];
  v31 = v13;
  v16 = v0[5];
  v25 = v0[4];
  v26 = v16;
  v27 = v15;
  v17 = v0[6];
  v28 = v0[7];
  v29 = v17;
  v18 = *(v0 + 5);
  v23 = *(v0 + 4);
  v24 = v18;
  v19 = v0[12];
  v21 = v0[13];
  v22 = v19;
  v20 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_2176FFAF8();
  sub_2177532F8();
  *&v32 = v14;
  sub_217752FC8();
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_44_2();
  sub_217752F48();
  if (v1)
  {
    (*(v6 + 8))(v12, v4);
  }

  else
  {

    *&v32 = v31;
    sub_217752FC8();
    OUTLINED_FUNCTION_29_47(1);
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();

    OUTLINED_FUNCTION_29_47(4);
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();
    OUTLINED_FUNCTION_29_47(2);
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();
    if (v26)
    {
      OUTLINED_FUNCTION_29_47(3);
      OUTLINED_FUNCTION_44_2();
      sub_217752F48();
    }

    if (*(&v23 + 1) != 1)
    {
      v32 = v23;
      v33 = v24;
      sub_2177016D4();
      OUTLINED_FUNCTION_44_2();
      sub_217752F88();
    }

    if (v21 != 1)
    {
      *&v32 = v22;
      *(&v32 + 1) = v21;
      sub_217701680();
      OUTLINED_FUNCTION_44_2();
      sub_217752F88();
    }

    (*(v6 + 8))(v12, v4);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.Error.Metadata.reason.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicAPI.Error.Metadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2176FFEB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2176FFF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176FFEB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2176FFF70(uint64_t a1)
{
  v2 = sub_217701728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176FFFAC(uint64_t a1)
{
  v2 = sub_217701728();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicAPI.Error.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D470, &qword_21779AFD8);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_131_0();
  v11 = *v0;
  v12 = v0[1];
  v13 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_217701728();
  sub_2177532F8();
  OUTLINED_FUNCTION_131_1();
  sub_217752EF8();
  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.Error.Metadata.hash(into:)()
{
  if (!v0[1])
  {
    return sub_217753208();
  }

  v1 = *v0;
  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicAPI.Error.Metadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void MusicAPI.Error.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D480, &qword_21779AFE0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_131_0();
  v10 = v2[3];
  v11 = v2[4];
  v12 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_160(v12, v13);
  sub_217701728();
  OUTLINED_FUNCTION_26_46();
  if (!v0)
  {
    v14 = sub_217752E18();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_0_129();
    v18(v17);
    *v4 = v14;
    v4[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t static MusicAPI.Error.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[9];
  v87 = a1[8];
  v88 = a1[10];
  v89 = a1[11];
  v82 = a1[13];
  v83 = a1[12];
  v10 = a2[4];
  v11 = a2[5];
  v13 = a2[6];
  v12 = a2[7];
  v86 = a2[9];
  v14 = a2[11];
  v84 = a2[8];
  v85 = a2[10];
  v15 = a1[2] == a2[2] && a1[3] == a2[3];
  v80 = a2[13];
  v81 = a2[12];
  if (!v15 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v16 = v5 == v10 && v6 == v11;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = v7 == v13 && v8 == v12;
  if (!v17 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v9 == 1)
  {
    v18 = OUTLINED_FUNCTION_73_0();
    sub_2172838F8(v18, v19);
    if (v86 == 1)
    {
      OUTLINED_FUNCTION_33_48();
      v20 = OUTLINED_FUNCTION_73_0();
      sub_217283940(v20, v21);
      goto LABEL_34;
    }

    v26 = OUTLINED_FUNCTION_7_90();
    sub_2172838F8(v26, v27);
    goto LABEL_32;
  }

  v91[0] = v87;
  v91[1] = v9;
  v91[2] = v88;
  v91[3] = v89;
  if (v86 == 1)
  {
    v22 = OUTLINED_FUNCTION_5_1();
    sub_2172838F8(v22, v23);
    OUTLINED_FUNCTION_33_48();
    v24 = OUTLINED_FUNCTION_5_1();
    sub_2172838F8(v24, v25);

LABEL_32:
    v28 = OUTLINED_FUNCTION_5_1();
    sub_217283940(v28, v29);
    v30 = OUTLINED_FUNCTION_7_90();
    sub_217283940(v30, v31);
    return 0;
  }

  v90[0] = v84;
  v90[1] = v86;
  v90[2] = v85;
  v90[3] = v14;
  v32 = static MusicAPI.Source.== infix(_:_:)(v91, v90);
  v33 = OUTLINED_FUNCTION_5_1();
  sub_2172838F8(v33, v34);
  v35 = OUTLINED_FUNCTION_7_90();
  sub_2172838F8(v35, v36);
  v37 = OUTLINED_FUNCTION_5_1();
  sub_2172838F8(v37, v38);

  v39 = OUTLINED_FUNCTION_5_1();
  sub_217283940(v39, v40);
  if (v32)
  {
LABEL_34:
    if (v82 == 1)
    {
      sub_2171FB568(v83, 1);
      if (v80 == 1)
      {
        v3 = 1;
        v41 = OUTLINED_FUNCTION_73_0();
        sub_2171FB568(v41, v42);
        sub_217283988(v83, 1);
        return v3;
      }

      v49 = OUTLINED_FUNCTION_204();
      sub_2171FB568(v49, v50);
      goto LABEL_40;
    }

    if (v80 == 1)
    {
      v43 = OUTLINED_FUNCTION_35();
      sub_2171FB568(v43, v44);
      v45 = OUTLINED_FUNCTION_73_0();
      sub_2171FB568(v45, v46);
      v47 = OUTLINED_FUNCTION_35();
      sub_2171FB568(v47, v48);

LABEL_40:
      v51 = OUTLINED_FUNCTION_35();
      sub_217283988(v51, v52);
      v53 = OUTLINED_FUNCTION_204();
LABEL_54:
      sub_217283988(v53, v54);
      return 0;
    }

    if (v82)
    {
      if (v80)
      {
        if (v83 != v81 || v82 != v80)
        {
          v56 = sub_217753058();
          v57 = OUTLINED_FUNCTION_35();
          sub_2171FB568(v57, v58);
          v59 = OUTLINED_FUNCTION_204();
          sub_2171FB568(v59, v60);
          v61 = OUTLINED_FUNCTION_35();
          sub_2171FB568(v61, v62);
          v63 = OUTLINED_FUNCTION_204();
          sub_217283988(v63, v64);
          if (v56)
          {
            goto LABEL_57;
          }

LABEL_53:

          v53 = OUTLINED_FUNCTION_35();
          goto LABEL_54;
        }

        sub_2171FB568(v83, v82);
        v74 = OUTLINED_FUNCTION_35();
        sub_2171FB568(v74, v75);
        v76 = OUTLINED_FUNCTION_35();
        sub_2171FB568(v76, v77);
        v66 = OUTLINED_FUNCTION_35();
LABEL_56:
        sub_217283988(v66, v67);
LABEL_57:

        v78 = OUTLINED_FUNCTION_35();
        sub_217283988(v78, v79);
        return 1;
      }

      v68 = OUTLINED_FUNCTION_35();
      sub_2171FB568(v68, v69);
      v65 = v82;
    }

    else
    {
      sub_2171FB568(v83, 0);
      v65 = 0;
      if (!v80)
      {
        sub_2171FB568(v81, 0);
        sub_2171FB568(v83, 0);
        v66 = v81;
        v67 = 0;
        goto LABEL_56;
      }
    }

    v70 = OUTLINED_FUNCTION_204();
    sub_2171FB568(v70, v71);
    sub_2171FB568(v83, v65);
    v72 = OUTLINED_FUNCTION_204();
    sub_217283988(v72, v73);
    goto LABEL_53;
  }

  return 0;
}

uint64_t MusicAPI.Error.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v12 = v0[10];
  v14 = v0[11];
  v10 = v0[13];
  v13 = v0[12];
  MEMORY[0x21CEA3550](*v0);
  MEMORY[0x21CEA3550](v1);
  sub_217751FF8();
  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  sub_217751FF8();
  if (v9 == 1)
  {
    goto LABEL_8;
  }

  sub_217753208();
  sub_217753208();
  if (v9)
  {
    sub_217751FF8();
  }

  if (!v14)
  {
LABEL_8:
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_217751FF8();
  }

  if (v10 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (!v10)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicAPI.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  MusicAPI.Error.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2177008F8()
{
  sub_2177531E8();
  MusicAPI.Error.hash(into:)();
  return sub_217753238();
}

uint64_t MusicAPI.Source.parameter.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicAPI.Source.pointer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicAPI.Source.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_93();
      if (sub_217753058())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_217700A30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E696F70 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_217700B00(char a1)
{
  if (a1)
  {
    return 0x7265746E696F70;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_217700B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217700A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217700B6C(uint64_t a1)
{
  v2 = sub_21770177C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217700BA8(uint64_t a1)
{
  v2 = sub_21770177C();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicAPI.Source.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D488, &qword_21779AFE8);
  OUTLINED_FUNCTION_0_0(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v16[1] = v0[3];
  v16[2] = v14;
  v15 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21770177C();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752EF8();
  if (!v1)
  {
    OUTLINED_FUNCTION_44_2();
    sub_217752EF8();
  }

  (*(v17 + 8))(v11, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.Source.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  v3 = *v0;
  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicAPI.Source.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void MusicAPI.Source.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D498, &qword_21779AFF0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - v12;
  v14 = v2[3];
  v15 = v2[4];
  v16 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_160(v16, v17);
  sub_21770177C();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v18 = sub_217752E18();
    v20 = v19;
    v21 = sub_217752E18();
    v23 = v22;
    v24 = *(v7 + 8);
    v26 = v21;
    v24(v13, v5);
    *v4 = v18;
    v4[1] = v20;
    v4[2] = v26;
    v4[3] = v23;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2177010A0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2177531E8();
  MusicAPI.Source.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2177010FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_217701188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2177010FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2177011B4(uint64_t a1)
{
  v2 = sub_2177017D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2177011F0(uint64_t a1)
{
  v2 = sub_2177017D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicAPI.ErrorResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4A0, &qword_21779AFF8);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &a9 - v32;
  v34 = *v20;
  v35 = v24[4];
  OUTLINED_FUNCTION_160(v24, v24[3]);
  sub_2177017D0();
  sub_217751DE8();
  sub_2177532F8();
  a10 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4B0, &qword_21779B000);
  sub_217701878(&qword_27CB2D4B8, sub_217701824);
  sub_217752F88();

  (*(v27 + 8))(v33, v25);
  OUTLINED_FUNCTION_170();
}

uint64_t MusicAPI.ErrorResponse.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_21727FF50(v3, v1);
  return sub_217753238();
}

void MusicAPI.ErrorResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4C8, &qword_21779B008);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_131_0();
  v20 = v12[3];
  v21 = v12[4];
  v22 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_160(v22, v23);
  sub_2177017D0();
  OUTLINED_FUNCTION_26_46();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D4B0, &qword_21779B000);
    sub_217701878(&qword_27CB2D4D0, sub_2177018F0);
    sub_217752EA8();
    v24 = OUTLINED_FUNCTION_0_129();
    v25(v24);
    *v14 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217701594()
{
  v1 = *v0;
  sub_2177531E8();
  sub_21727FF50(v3, v1);
  return sub_217753238();
}

unint64_t sub_2177015D8()
{
  result = qword_27CB2D448;
  if (!qword_27CB2D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D448);
  }

  return result;
}

unint64_t sub_21770162C()
{
  result = qword_27CB2D450;
  if (!qword_27CB2D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D450);
  }

  return result;
}

unint64_t sub_217701680()
{
  result = qword_27CB2D460;
  if (!qword_27CB2D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D460);
  }

  return result;
}

unint64_t sub_2177016D4()
{
  result = qword_27CB2D468;
  if (!qword_27CB2D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D468);
  }

  return result;
}

unint64_t sub_217701728()
{
  result = qword_27CB2D478;
  if (!qword_27CB2D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D478);
  }

  return result;
}

unint64_t sub_21770177C()
{
  result = qword_27CB2D490;
  if (!qword_27CB2D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D490);
  }

  return result;
}

unint64_t sub_2177017D0()
{
  result = qword_27CB2D4A8;
  if (!qword_27CB2D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4A8);
  }

  return result;
}

unint64_t sub_217701824()
{
  result = qword_27CB2D4C0;
  if (!qword_27CB2D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4C0);
  }

  return result;
}

uint64_t sub_217701878(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D4B0, &qword_21779B000);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2177018F0()
{
  result = qword_27CB2D4D8;
  if (!qword_27CB2D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4D8);
  }

  return result;
}

unint64_t sub_217701948()
{
  result = qword_27CB2D4E0;
  if (!qword_27CB2D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4E0);
  }

  return result;
}

unint64_t sub_2177019A0()
{
  result = qword_27CB2D4E8;
  if (!qword_27CB2D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4E8);
  }

  return result;
}

unint64_t sub_2177019F8()
{
  result = qword_27CB2D4F0;
  if (!qword_27CB2D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4F0);
  }

  return result;
}

unint64_t sub_217701A50()
{
  result = qword_27CB2D4F8;
  if (!qword_27CB2D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D4F8);
  }

  return result;
}

uint64_t sub_217701AA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_217701AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s6SourceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_217701C5C(_BYTE *result, int a2, int a3)
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

_BYTE *_s5ErrorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217701DE8()
{
  result = qword_27CB2D500;
  if (!qword_27CB2D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D500);
  }

  return result;
}

unint64_t sub_217701E40()
{
  result = qword_27CB2D508;
  if (!qword_27CB2D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D508);
  }

  return result;
}

unint64_t sub_217701E98()
{
  result = qword_27CB2D510;
  if (!qword_27CB2D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D510);
  }

  return result;
}

unint64_t sub_217701EF0()
{
  result = qword_27CB2D518;
  if (!qword_27CB2D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D518);
  }

  return result;
}

unint64_t sub_217701F48()
{
  result = qword_27CB2D520;
  if (!qword_27CB2D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D520);
  }

  return result;
}

unint64_t sub_217701FA0()
{
  result = qword_27CB2D528;
  if (!qword_27CB2D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D528);
  }

  return result;
}

unint64_t sub_217701FF8()
{
  result = qword_27CB2D530;
  if (!qword_27CB2D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D530);
  }

  return result;
}

unint64_t sub_217702050()
{
  result = qword_27CB2D538;
  if (!qword_27CB2D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D538);
  }

  return result;
}

unint64_t sub_2177020A8()
{
  result = qword_27CB2D540;
  if (!qword_27CB2D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D540);
  }

  return result;
}

unint64_t sub_217702100()
{
  result = qword_27CB2D548;
  if (!qword_27CB2D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D548);
  }

  return result;
}

unint64_t sub_217702158()
{
  result = qword_27CB2D550;
  if (!qword_27CB2D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D550);
  }

  return result;
}

unint64_t sub_2177021B0()
{
  result = qword_27CB2D558;
  if (!qword_27CB2D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D558);
  }

  return result;
}

void OUTLINED_FUNCTION_14_69(uint64_t a1@<X8>)
{
  *(v1 - 336) = a1;
  v3 = *(v1 - 336);

  sub_2172B240C();
}

void OUTLINED_FUNCTION_21_52()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_26_46()
{

  return sub_2177532C8();
}

MusicKit::LegacyModelPlaylistType_optional __swiftcall LegacyModelPlaylistType.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() playlistTypeForRawValue_];
  if ((v3 - 1) < 9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *v2 = v4;
  return v3;
}

Swift::Int __swiftcall LegacyModelPlaylistType.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForPlaylistType_];
}

uint64_t sub_217702358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7472616D73 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7375696E6567 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657469726F766166 && a2 == 0xED000073676E6F53;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7265646C6F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696445656C707061 && a2 == 0xEE006C6169726F74;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000002177B5D30 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646572616873 && a2 == 0xE600000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C616E6F73726570 && a2 == 0xEB0000000078694DLL;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x64656B6E6172 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_217753058();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217702668(char a1)
{
  result = 0x72616C75676572;
  switch(a1)
  {
    case 1:
      result = 0x7472616D73;
      break;
    case 2:
      result = 0x7375696E6567;
      break;
    case 3:
      result = 0x657469726F766166;
      break;
    case 4:
      result = 0x7265646C6F66;
      break;
    case 5:
      result = 0x696445656C707061;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x646572616873;
      break;
    case 8:
      result = 0x6C616E6F73726570;
      break;
    case 9:
      result = 0x64656B6E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21770278C(uint64_t a1)
{
  v2 = sub_217703678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2177027C8(uint64_t a1)
{
  v2 = sub_217703678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21770280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217702358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217702834(uint64_t a1)
{
  v2 = sub_2177034D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702870(uint64_t a1)
{
  v2 = sub_2177034D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2177028AC(uint64_t a1)
{
  v2 = sub_217703624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2177028E8(uint64_t a1)
{
  v2 = sub_217703624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702924(uint64_t a1)
{
  v2 = sub_217703720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702960(uint64_t a1)
{
  v2 = sub_217703720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21770299C(uint64_t a1)
{
  v2 = sub_2177036CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2177029D8(uint64_t a1)
{
  v2 = sub_2177036CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702A14(uint64_t a1)
{
  v2 = sub_217703774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702A50(uint64_t a1)
{
  v2 = sub_217703774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702A8C(uint64_t a1)
{
  v2 = sub_21770357C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702AC8(uint64_t a1)
{
  v2 = sub_21770357C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702B04(uint64_t a1)
{
  v2 = sub_217703528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702B40(uint64_t a1)
{
  v2 = sub_217703528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702B7C(uint64_t a1)
{
  v2 = sub_21770381C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702BB8(uint64_t a1)
{
  v2 = sub_21770381C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702BF4(uint64_t a1)
{
  v2 = sub_2177035D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702C30(uint64_t a1)
{
  v2 = sub_2177035D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217702C6C(uint64_t a1)
{
  v2 = sub_2177037C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217702CA8(uint64_t a1)
{
  v2 = sub_2177037C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyModelPlaylistType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D560, &qword_21779B8B0);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v123 = v6;
  v124 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_150();
  v122 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D568, &qword_21779B8B8);
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v120 = v14;
  v121 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_150();
  v119 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D570, &qword_21779B8C0);
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v117 = v22;
  v118 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_150();
  v116 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D578, &qword_21779B8C8);
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v114 = v30;
  v115 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_150();
  v113 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D580, &qword_21779B8D0);
  v37 = OUTLINED_FUNCTION_0_0(v36);
  v111 = v38;
  v112 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_150();
  v110 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D588, &qword_21779B8D8);
  v45 = OUTLINED_FUNCTION_0_0(v44);
  v108 = v46;
  v109 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_150();
  v107 = v51;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D590, &qword_21779B8E0);
  OUTLINED_FUNCTION_0_0(v106);
  v105 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55, v56);
  OUTLINED_FUNCTION_150();
  v104 = v57;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D598, &qword_21779B8E8);
  OUTLINED_FUNCTION_0_0(v103);
  v102 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_150();
  v101 = v63;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D5A0, &qword_21779B8F0);
  OUTLINED_FUNCTION_0_0(v100);
  v99[2] = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v67, v68);
  v70 = v99 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D5A8, &qword_21779B8F8);
  OUTLINED_FUNCTION_0_0(v71);
  v99[1] = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v75, v76);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D5B0, &qword_21779B900);
  OUTLINED_FUNCTION_0_0(v125);
  v78 = v77;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v81, v82);
  v84 = v99 - v83;
  v85 = *v2;
  v86 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177034D4();
  sub_2177532F8();
  v87 = (v78 + 8);
  switch(v85)
  {
    case 1:
      v127 = 1;
      sub_2177037C8();
      v96 = v125;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1(&v129);
      v97(v70, v100);
      return (*v87)(v84, v96);
    case 2:
      v128[0] = 2;
      sub_217703774();
      v93 = v101;
      OUTLINED_FUNCTION_1_85();
      OUTLINED_FUNCTION_12_1(&v130);
      v88 = v93;
      v94 = &v131;
      goto LABEL_7;
    case 3:
      v128[1] = 3;
      sub_217703720();
      v95 = v104;
      OUTLINED_FUNCTION_1_85();
      OUTLINED_FUNCTION_12_1(&v132);
      v88 = v95;
      v94 = &v133;
LABEL_7:
      v90 = *(v94 - 32);
      break;
    case 4:
      v128[2] = 4;
      sub_2177036CC();
      v91 = v107;
      OUTLINED_FUNCTION_1_85();
      v92 = v108;
      v90 = v109;
      goto LABEL_13;
    case 5:
      v128[3] = 5;
      sub_217703678();
      v91 = v110;
      OUTLINED_FUNCTION_1_85();
      v92 = v111;
      v90 = v112;
      goto LABEL_13;
    case 6:
      v128[4] = 6;
      sub_217703624();
      v91 = v113;
      OUTLINED_FUNCTION_1_85();
      v92 = v114;
      v90 = v115;
      goto LABEL_13;
    case 7:
      v128[5] = 7;
      sub_2177035D0();
      v91 = v116;
      OUTLINED_FUNCTION_1_85();
      v92 = v117;
      v90 = v118;
      goto LABEL_13;
    case 8:
      v128[6] = 8;
      sub_21770357C();
      v91 = v119;
      OUTLINED_FUNCTION_1_85();
      v92 = v120;
      v90 = v121;
      goto LABEL_13;
    case 9:
      v128[7] = 9;
      sub_217703528();
      v91 = v122;
      OUTLINED_FUNCTION_1_85();
      v92 = v123;
      v90 = v124;
LABEL_13:
      v89 = *(v92 + 8);
      v88 = v91;
      break;
    default:
      v126 = 0;
      sub_21770381C();
      v70 = v125;
      sub_217752EE8();
      v88 = OUTLINED_FUNCTION_4_77(v128);
      v90 = v71;
      break;
  }

  v89(v88, v90);
  return (*v87)(v84, v70);
}

unint64_t sub_2177034D4()
{
  result = qword_27CB2D5B8;
  if (!qword_27CB2D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5B8);
  }

  return result;
}

unint64_t sub_217703528()
{
  result = qword_27CB2D5C0;
  if (!qword_27CB2D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5C0);
  }

  return result;
}

unint64_t sub_21770357C()
{
  result = qword_27CB2D5C8;
  if (!qword_27CB2D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D5C8);
  }

  return result;
}