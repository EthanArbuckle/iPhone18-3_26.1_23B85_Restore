uint64_t sub_2176C99B0()
{
  v1 = v0[108];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  __swift_destroy_boxed_opaque_existential_1(v0 + 62);
  v2 = v0[110];
  OUTLINED_FUNCTION_11_77();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2176C9A44()
{
  v1 = v0[108];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  v2 = v0[112];
  OUTLINED_FUNCTION_11_77();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2176C9AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&xmmword_27CB27600, &qword_21776B040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2176C9B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for PartialMusicAsyncProperty();
    v2 = sub_217752418();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2176C9C14(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((v6 + result) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2176C9D58(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if ((((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *(v17 + 8) = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if ((((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if ((((((v9 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, (((((v9 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_11_77()
{
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[103];
}

void Playlist.artwork.getter(void *a1@<X8>)
{
  v38[3] = &type metadata for Playlist;
  v38[4] = &protocol witness table for Playlist;
  v38[0] = swift_allocObject();
  sub_2172757C0(v1, v38[0] + 16);
  v3 = __swift_project_boxed_opaque_existential_1(v38, &type metadata for Playlist);
  sub_21729C5E8((v3 + 2), v37);
  v4 = v37[3];
  v5 = v37[4];
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  (*(v5 + 24))(__src, v4, v5);
  sub_21729C644(v37);
  memcpy(__dst, __src, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v6 = __dst[28];
  sub_217751DE8();
  sub_217269F50(__dst);
  if (v6)
  {

    if (qword_280BE8118 != -1)
    {
      OUTLINED_FUNCTION_29_44();
    }

    v19 = qword_280C02440;
    sub_2176CB484(qword_280C02440, &type metadata for Playlist, v13, v14, v15, v16, v17, v18, v34, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16]);
    memcpy(__src, v38, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__src) != 1)
    {
      sub_2171F06D8(v38, &qword_27CB24400, &unk_21775E9A0);
      v32 = v19;
LABEL_16:
      sub_2176CB484(v32, &type metadata for Playlist, v26, v27, v28, v29, v30, v31, v34, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16]);
      return;
    }
  }

  if (qword_280BE91E8 != -1)
  {
    swift_once();
  }

  sub_2176CB484(qword_280C025C8, &type metadata for Playlist, v7, v8, v9, v10, v11, v12, v34, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16]);
  memcpy(__src, v38, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__src) == 1)
  {
    if (qword_280BE8118 != -1)
    {
      OUTLINED_FUNCTION_29_44();
    }

    sub_2176CB484(qword_280C02440, &type metadata for Playlist, v20, v21, v22, v23, v24, v25, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16]);
    memcpy(v37, v36, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v37) == 1)
    {
      if (qword_280BE9278 != -1)
      {
        swift_once();
      }

      v32 = qword_280C02628;
      goto LABEL_16;
    }

    v33 = v36;
  }

  else
  {
    v33 = v38;
  }

  memcpy(a1, v33, 0x221uLL);
}

void sub_2176CA244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_20_52(v28, v27, v29, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_5_101();
  v33(v32);
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  OUTLINED_FUNCTION_19_47();
  v34 = OUTLINED_FUNCTION_22_59();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CA6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_20_52(v29, v28, v30, v31, v32);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v33 = OUTLINED_FUNCTION_5_101();
  v34(v33);
  v35 = a12;
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  OUTLINED_FUNCTION_19_47();
  v36(v26, &type metadata for Genre, &type metadata for Genre, v35);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CA878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CAA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_32();
  a27 = v28;
  a28 = v29;
  OUTLINED_FUNCTION_20_52(v30, v29, v31, v32, v33);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v34 = OUTLINED_FUNCTION_5_101();
  v35(v34);
  v36 = a13;
  OUTLINED_FUNCTION_160(&a9, a12);
  v37 = *(*(v36 + 8) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C70, &unk_217775710);
  v38 = OUTLINED_FUNCTION_22_59();
  v37(v38);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_46_32();
}

void sub_2176CAC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_32();
  a27 = v28;
  a28 = v29;
  OUTLINED_FUNCTION_20_52(v30, v29, v31, v32, v33);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v34 = OUTLINED_FUNCTION_5_101();
  v35(v34);
  v36 = a13;
  OUTLINED_FUNCTION_160(&a9, a12);
  v37 = *(*(v36 + 8) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF0, &qword_21775EA20);
  v38 = OUTLINED_FUNCTION_22_59();
  v37(v38);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_46_32();
}

void sub_2176CAE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CAED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_98_1();
  a29 = v32;
  a30 = v33;
  OUTLINED_FUNCTION_13_69(v34, v35, v36, v33, v37);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  OUTLINED_FUNCTION_75_2();
  v38 = OUTLINED_FUNCTION_15();
  v39(v38);
  v40 = a13;
  OUTLINED_FUNCTION_160(&a9, a12);
  v41 = *(*(v40 + 8) + 8);
  v31(0);
  v42 = OUTLINED_FUNCTION_36_38();
  v41(v42, v30);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_96();
}

void sub_2176CB074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_98_1();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_40_36(v33, v34, v35, v36, v32);
  v37 = a17;
  v38 = a18;
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  OUTLINED_FUNCTION_75_2();
  v39(v37, v38);
  OUTLINED_FUNCTION_160(&a9, a12);
  OUTLINED_FUNCTION_48_22();
  v40 = OUTLINED_FUNCTION_41_39();
  v30(v40);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_96();
}

void sub_2176CB120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_20_52(v28, v27, v29, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_5_101();
  v33(v32);
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  OUTLINED_FUNCTION_19_47();
  v34 = OUTLINED_FUNCTION_22_59();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CB1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_20_52(v28, v27, v29, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_5_101();
  v33(v32);
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  OUTLINED_FUNCTION_19_47();
  v34 = OUTLINED_FUNCTION_22_59();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CB2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_32();
  a27 = v28;
  a28 = v29;
  OUTLINED_FUNCTION_13_69(v30, v31, v32, v29, v33);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  OUTLINED_FUNCTION_75_2();
  v34 = OUTLINED_FUNCTION_15();
  v35(v34);
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  v36 = OUTLINED_FUNCTION_7_84();
  v37(v36);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_46_32();
}

void sub_2176CB3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CB484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CB514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CB5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

void sub_2176CB65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_50_33();
  a25 = v26;
  a26 = v27;
  OUTLINED_FUNCTION_12_66(v28, v29, v27, v30, v31);
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_2_129();
  v33(v32);
  OUTLINED_FUNCTION_9_86(&a9);
  v34 = OUTLINED_FUNCTION_11_78();
  v35(v34);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  sub_21729C644(&a14);
  OUTLINED_FUNCTION_49_33();
}

uint64_t Playlist.debugDescription.getter()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_150();
  *&v133 = v5;
  *&v134 = sub_2177516D8();
  v6 = OUTLINED_FUNCTION_0_0(v134);
  v131 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v130 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v127 - v19);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v127 - v23;
  v132 = sub_2177517D8();
  v25 = OUTLINED_FUNCTION_0_0(v132);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25, v30);
  v129 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  *&v135 = &v127 - v34;
  OUTLINED_FUNCTION_56_20();
  v154 = v35;
  v155 = 0xE900000000000028;
  v150[0] = 0x22203A646920200ALL;
  v150[1] = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_25_57();
  OUTLINED_FUNCTION_39_31();

  OUTLINED_FUNCTION_24_0();
  v150[0] = v36 | 0x656D616E00000000;
  v150[1] = 0xEB0000000022203ALL;
  v37 = 0xEB0000000022203ALL;
  if (qword_280BE9208 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v38 = sub_2172A3F14();
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0xE000000000000000;
    }

    MEMORY[0x21CEA23B0](v38, v40);

    OUTLINED_FUNCTION_25_57();
    OUTLINED_FUNCTION_39_31();

    if (qword_280BE93B0 != -1)
    {
      OUTLINED_FUNCTION_32_48();
    }

    v137 = v1;
    v41 = sub_2172A3F14();
    if (v42)
    {
      v43 = v41;
      v44 = v42;
      OUTLINED_FUNCTION_23_54();
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      v150[0] = 0xD000000000000012;
      v150[1] = v45;
      MEMORY[0x21CEA23B0](v43, v44);

      OUTLINED_FUNCTION_25_57();
      OUTLINED_FUNCTION_39_31();
    }

    Playlist.isChart.getter(v41);
    OUTLINED_FUNCTION_24_0();
    v150[0] = v46 | 0x6843736900000000;
    v150[1] = 0xED0000203A747261;
    v48 = (v47 & 1) == 0;
    if (v47)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    if (v48)
    {
      v50 = 0xE500000000000000;
    }

    else
    {
      v50 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v49, v50);

    OUTLINED_FUNCTION_39_31();

    if (qword_280BE9210 != -1)
    {
      swift_once();
    }

    sub_2176CB2C0(qword_280C025D8, &type metadata for Playlist, &type metadata for Playlist.Kind, v51, v52, v53, v54, v55, v127, v128, v129, v130, v131, v132, v133, *(&v133 + 1), v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137, v138, *(&v138 + 1), v139, *(&v139 + 1), *&v140[0], *(&v140[0] + 1));
    v56 = v150[0];
    if (LOBYTE(v150[0]) != 5)
    {
      v150[0] = 0;
      v150[1] = 0xE000000000000000;
      MEMORY[0x21CEA23B0](0x646E696B20200A2CLL, v37);
      __dst[0] = v56;
      sub_217752C78();
      OUTLINED_FUNCTION_25_57();
      OUTLINED_FUNCTION_39_31();
    }

    v57 = v135;
    if (qword_280BE92C8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_6_103();
    sub_2176CAED4(v58, v59, v60, v61, v62, v63, v64, v65, v127, v128, v129, v130, v131, v132, v133, *(&v133 + 1), v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137, v138, *(&v138 + 1), v139, *(&v139 + 1), *&v140[0], *(&v140[0] + 1), *&v140[1], *(&v140[1] + 1));
    v66 = v132;
    if (__swift_getEnumTagSinglePayload(v24, 1, v132) == 1)
    {
      sub_2171F06D8(v24, &qword_27CB241C0, &qword_217759480);
      v16 = 0xD000000000000017;
    }

    else
    {
      v67 = *(v27 + 32);
      v67(v57, v24, v66);
      if (qword_280BE8910 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for CloudFormatter();
      v69 = __swift_project_value_buffer(v68, qword_280BE8918);
      (*(v27 + 16))(v20, v57, v66);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v66);
      sub_217202078(v20, v16, &qword_27CB241C0, &qword_217759480);
      if (__swift_getEnumTagSinglePayload(v16, 1, v66) == 1)
      {
        sub_2171F06D8(v20, &qword_27CB241C0, &qword_217759480);
        sub_2171F06D8(v16, &qword_27CB241C0, &qword_217759480);
        v70 = *(v27 + 8);
        v27 += 8;
        v70(v57, v66);
        v16 = 0xD000000000000017;
      }

      else
      {
        v71 = v129;
        v67(v129, v16, v66);
        v72 = *(v69 + *(v68 + 20));
        v73 = sub_2177517A8();
        v74 = [v72 stringFromDate_];

        v128 = sub_217751F48();
        v76 = v75;

        v77 = *(v27 + 8);
        v27 += 8;
        v77(v71, v66);
        sub_2171F06D8(v20, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_23_54();
        sub_217752AA8();

        OUTLINED_FUNCTION_2_4();
        v16 = 0xD000000000000017;
        v150[0] = 0xD000000000000017;
        v150[1] = v78;
        MEMORY[0x21CEA23B0](v128, v76);

        OUTLINED_FUNCTION_25_57();
        OUTLINED_FUNCTION_42_39();

        v77(v135, v66);
      }
    }

    if (qword_280BE92A8 != -1)
    {
      swift_once();
    }

    v79 = sub_2172A3F14();
    if (v80)
    {
      v81 = v79;
      v82 = v80;
      OUTLINED_FUNCTION_23_54();
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      v150[0] = 0xD000000000000017;
      v150[1] = v83;
      MEMORY[0x21CEA23B0](v81, v82);

      OUTLINED_FUNCTION_25_57();
      OUTLINED_FUNCTION_42_39();
    }

    if (qword_280BE9270 != -1)
    {
      swift_once();
    }

    v84 = sub_2172A3F14();
    if (v85)
    {
      v86 = v84;
      v87 = v85;
      OUTLINED_FUNCTION_23_54();
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      v150[0] = 0xD00000000000001ALL;
      v150[1] = v88;
      MEMORY[0x21CEA23B0](v86, v87);

      OUTLINED_FUNCTION_25_57();
      OUTLINED_FUNCTION_42_39();
    }

    if (qword_280BE9218 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_123();
    v89 = v133;
    sub_2176CAED4(v90, v91, v92, v93, v94, v95, v96, v97, v127, v128, v129, v130, v131, v132, v133, *(&v133 + 1), v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137, v138, *(&v138 + 1), v139, *(&v139 + 1), *&v140[0], *(&v140[0] + 1), *&v140[1], *(&v140[1] + 1));
    v98 = v134;
    if (__swift_getEnumTagSinglePayload(v89, 1, v134) == 1)
    {
      sub_2171F06D8(v89, &unk_27CB277C0, &qword_217758DC0);
    }

    else
    {
      v104 = v130;
      v103 = v131;
      (*(v131 + 32))(v130, v89, v98);
      OUTLINED_FUNCTION_24_0();
      v150[0] = v105 | 0x3A6C727500000000;
      v150[1] = 0xEA00000000002220;
      sub_21736C310();
      v106 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v106);

      OUTLINED_FUNCTION_25_57();
      OUTLINED_FUNCTION_42_39();

      (*(v103 + 8))(v104, v98);
    }

    if (qword_280BE91F0 != -1)
    {
      OUTLINED_FUNCTION_30_43();
    }

    sub_2176CB074(qword_280BE91F8, &qword_27CB240D0, &unk_21775D400, &type metadata for Playlist, v99, v100, v101, v102, v127, v128, v129, v130, v131, v132, v133, *(&v133 + 1), v134, *(&v134 + 1), v135, *(&v135 + 1), v136, v137, v138, *(&v138 + 1), v139, *(&v139 + 1), *&v140[0], *(&v140[0] + 1), *&v140[1], *(&v140[1] + 1));
    if (!v150[11])
    {
      break;
    }

    memcpy(__dst, v150, sizeof(__dst));
    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    sub_217202078(__dst, v147, &qword_27CB240D0, &unk_21775D400);
    sub_217202078(v147, v150, &qword_27CB240D0, &unk_21775D400);
    v107 = *&v147[0];
    v108 = BYTE8(v147[0]);
    sub_217283C5C(*&v147[0], SBYTE8(v147[0]));
    sub_2171F06D8(v147, &qword_27CB240D0, &unk_21775D400);
    sub_21725CF00(v107, v108);
    v37 = 0;
    v151 = 0;
    v24 = v150[0];
    LODWORD(v137) = LOBYTE(v150[1]);
    for (i = v150[0] + 32; ; i += 64)
    {
      v20 = &dword_27CB27E20;
      v1 = &unk_2177589C0;
      if (v137)
      {
        swift_beginAccess();
        if (v37 == *(*(v24 + 7) + 16))
        {
          goto LABEL_67;
        }

        sub_217294634();
        goto LABEL_55;
      }

      v110 = *(v24 + 2);
      if (v37 == v110)
      {
LABEL_67:
        sub_2171F06D8(v150, &qword_27CB27E10, &qword_21776BCB0);
        OUTLINED_FUNCTION_23_54();
        sub_217752AA8();

        OUTLINED_FUNCTION_24_0();
        v150[0] = v119 | 0x6361727400000000;
        v150[1] = 0xED00005B203A736BLL;
        v147[0] = v152;
        *&v138 = 10;
        *(&v138 + 1) = 0xE100000000000000;
        *&v144 = 0x202020200ALL;
        *(&v144 + 1) = 0xE500000000000000;
        sub_21733A5C8();
        v120 = sub_217752998();
        v122 = v121;

        MEMORY[0x21CEA23B0](v120, v122);

        MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
        MEMORY[0x21CEA23B0](v150[0], v150[1]);

        v123 = &qword_27CB240D0;
        v124 = &unk_21775D400;
        v125 = __dst;
        goto LABEL_69;
      }

      if ((v37 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v37 >= v110)
      {
        goto LABEL_73;
      }

      sub_217202078(i, v147, &dword_27CB27E20, &unk_2177589C0);
      sub_217202078(v147, &v138, &dword_27CB27E20, &unk_2177589C0);
      if (BYTE9(v140[1]))
      {
        v112 = *(v138 + 16);
        v111 = *(v138 + 24);
        v113 = *(v138 + 32);
        sub_217283C5C(v24, 0);
        sub_217751DE8();
        sub_21729366C(v112);

        sub_2171F06D8(v147, &dword_27CB27E20, &unk_2177589C0);
      }

      else
      {
        sub_217751DE8();
        sub_2171F06D8(v147, &dword_27CB27E20, &unk_2177589C0);
        v141 = v138;
        v142 = v139;
        v143[0] = v140[0];
        *(v143 + 9) = *(v140 + 9);
      }

      v144 = v141;
      v145 = v142;
      v146[0] = v143[0];
      *(v146 + 9) = *(v143 + 9);
LABEL_55:
      v134 = v145;
      v135 = v144;
      v133 = v146[0];
      v114 = *&v146[1];
      v16 = (v37 + 1);
      v27 = __OFADD__(v37, 1);
      v115 = BYTE8(v146[1]);
      if (v137)
      {
        v116 = sub_21725CF00(v24, 1);
        if (v27)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v116 = sub_21725CF00(v24, 0);
        if (v27)
        {
          goto LABEL_71;
        }
      }

      v151 = v37 + 1;
      v147[0] = v135;
      v147[1] = v134;
      v147[2] = v133;
      v148 = v114;
      v149 = v115;
      v117 = v152 & 0xFFFFFFFFFFFFLL;
      if ((*(&v152 + 1) & 0x2000000000000000) != 0)
      {
        v117 = HIBYTE(*(&v152 + 1)) & 0xFLL;
      }

      if (v117)
      {
        v116 = MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      *&v138 = 10;
      *(&v138 + 1) = 0xE100000000000000;
      v118 = Track.debugDescription.getter(v116);
      MEMORY[0x21CEA23B0](v118);

      MEMORY[0x21CEA23B0](v138, *(&v138 + 1));

      sub_21727576C(v147);
      ++v37;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    OUTLINED_FUNCTION_134_3();
  }

  v123 = &unk_27CB28A60;
  v124 = &qword_217770B60;
  v125 = v150;
LABEL_69:
  sub_2171F06D8(v125, v123, v124);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v154;
}

uint64_t Playlist.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void Playlist._geoLocation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE93A0 != -1)
  {
    swift_once();
  }

  v28 = qword_280C026C0;

  sub_2176CAC94(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t Playlist.name.getter()
{
  if (qword_280BE9208 != -1)
  {
    OUTLINED_FUNCTION_134_3();
  }

  result = sub_2172A3F14();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t Playlist._trackCount.getter()
{
  if (qword_280BE93C0 != -1)
  {
    swift_once();
  }

  return sub_2172A47B0();
}

uint64_t sub_2176CCAAC(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t static Playlist.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  OUTLINED_FUNCTION_160(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

void Playlist._coverArtworkRecipe.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE80E0 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02418;

  sub_2176CB1B4(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Playlist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_2176CD604(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
  return sub_2172A3F14();
}

uint64_t Playlist.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  OUTLINED_FUNCTION_160(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Playlist.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  OUTLINED_FUNCTION_160(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_2176CD974@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2172E208C();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_36_38();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2172E208C();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_36_38();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2172E208C();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_36_38();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_2176CDB58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCA8, &qword_217796EE0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025C8 = result;
  return result;
}

uint64_t sub_2176CDBCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC90, &qword_217796EB8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x4E726F7461727563, 0xEB00000000656D61, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026C8 = result;
  return result;
}

uint64_t sub_2176CDC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCC8, &qword_217796F00);
  OUTLINED_FUNCTION_31_11();
  result = sub_217729830(0xD000000000000010, 0x80000002177AB890, 0x6B726F77747241, 0xE700000000000000, &unk_282959AF8);
  qword_280C02640 = result;
  return result;
}

uint64_t sub_2176CDCC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCC0, &qword_217796EF8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02428 = result;
  return result;
}

uint64_t sub_2176CDD34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCB8, &qword_217796EF0);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C025F8 = result;
  return result;
}

uint64_t sub_2176CDDAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCB0, &qword_217796EE8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7461636F4C6F6567, 0xEB000000006E6F69, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026C0 = result;
  return result;
}

uint64_t sub_2176CDE28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x74726168437369, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025C0 = result;
  return result;
}

uint64_t sub_2176CDE9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCF0, &unk_217796F30);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7473696C79616C70, 0xEC00000065707954, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025D8 = result;
  return result;
}

uint64_t sub_2176CDF18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC68, &qword_217796E90);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(16, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02658 = result;
  return result;
}

uint64_t sub_2176CDF88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCA8, &qword_217796EE0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02668 = result;
  return result;
}

uint64_t sub_2176CE008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC90, &qword_217796EB8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025D0 = result;
  return result;
}

uint64_t sub_2176CE074()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCA0, &qword_217796ED8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02688 = result;
  return result;
}

uint64_t sub_2176CE0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC90, &qword_217796EB8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(17, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02648 = result;
  return result;
}

uint64_t sub_2176CE15C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC90, &qword_217796EB8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(20, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02620 = result;
  return result;
}

uint64_t sub_2176CE1CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7374726F70707573, 0xEC000000676E6953, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026B8 = result;
  return result;
}

uint64_t sub_2176CE248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C388, &qword_217791C20);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697948(0x756F436B63617274, 0xEA0000000000746ELL, 0, 7630409, 0xE300000000000000, &unk_282959AF8);
  qword_280C026D8 = result;
  return result;
}

uint64_t sub_2176CE2BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCA8, &qword_217796EE0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(19, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02628 = result;
  return result;
}

uint64_t sub_2176CE32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC98, &unk_217796EC8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7079546B63617274, 0xEA00000000007365, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026E0 = result;
  return result;
}

uint64_t sub_2176CE3A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCE8, &qword_217796F28);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025E0 = result;
  return result;
}

uint64_t sub_2176CE410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC90, &qword_217796EB8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x736553746964655FLL, 0xEE0044496E6F6973, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02438 = result;
  return result;
}

uint64_t sub_2176CE490()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC68, &qword_217796E90);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEE00657461446465, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C026A0 = result;
  return result;
}

uint64_t sub_2176CE504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC88, &qword_217796EB0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEF73757461745365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02678 = result;
  return result;
}

uint64_t sub_2176CE578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02698 = result;
  return result;
}

uint64_t sub_2176CE5F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC80, &qword_217796EA8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(22, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02608 = result;
  return result;
}

uint64_t sub_2176CE668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC78, &qword_217796EA0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(23, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02600 = result;
  return result;
}

uint64_t sub_2176CE6D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC70, &qword_217796E98);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(30, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C025E8 = result;
  return result;
}

uint64_t sub_2176CE748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC60, &qword_217796E88);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746E65746E6F635FLL, 0xEE00676E69746152, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026A8 = result;
  return result;
}

uint64_t sub_2176CE7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x72656E774F73695FLL, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C023E8 = result;
  return result;
}

uint64_t sub_2176CE83C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x696C62755073695FLL, 0xE900000000000063, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025B0 = result;
  return result;
}

uint64_t sub_2176CE8B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x626973695673695FLL, 0xEA0000000000656CLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C023D8 = result;
  return result;
}

uint64_t sub_2176CE92C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC50, &qword_217796E78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(20, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02408 = result;
  return result;
}

uint64_t sub_2176CE9D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC20, &qword_217796E48);
  OUTLINED_FUNCTION_60();
  result = sub_21769A084(a2, 0xE700000000000000, 0, &unk_282959AF8);
  *a3 = result;
  return result;
}

uint64_t sub_2176CEA88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, void, void *), uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_60();
  result = a4(0x736B63617274, 0xE600000000000000, 0, &unk_282959AD0);
  *a5 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.tracks.getter()
{
  return sub_21767CE84(&qword_280BE91F0, &qword_280BE91F8);
}

{
  return sub_2177286EC(&qword_280BE9448);
}

uint64_t sub_2176CEB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC28, &qword_217796E50);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3F0(0xD000000000000010, 0x80000002177AA6B0, 1);
  qword_280BE9300 = result;
  return result;
}

uint64_t sub_2176CEB98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC20, &qword_217796E48);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3EC(0x2D79622D65726F6DLL, 0xEF726F7461727563, 1);
  qword_280BE9378 = result;
  return result;
}

uint64_t sub_2176CEC24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CBF8, &qword_217796E20);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(16, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280BE9310 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.extendedStorage.getter()
{
  return sub_21767CE84(&qword_280BE9308, &qword_280BE9310);
}

{
  return sub_2176F1548(&qword_280BE6710, &qword_280BE6718);
}

uint64_t sub_2176CECB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCF8, &qword_217796F40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746E61697261765FLL, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C025B8 = result;
  return result;
}

uint64_t sub_2176CED2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC48, &qword_217796E70);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(19, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02630 = result;
  return result;
}

uint64_t sub_2176CED9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC68, &qword_217796E90);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616F6C6E776F645FLL, 0xEF65746144646564, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02680 = result;
  return result;
}

uint64_t sub_2176CEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C390, &qword_217791C28);
  OUTLINED_FUNCTION_31_11();
  result = sub_21769798C(a2, a3, 0, 0xD000000000000013, 0x80000002177B4C90, &unk_282959AF8);
  *a4 = result;
  return result;
}

uint64_t sub_2176CEEF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(20, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02618 = result;
  return result;
}

uint64_t sub_2176CEF64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(27, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C025F0 = result;
  return result;
}

uint64_t sub_2176CF0AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, void, void *), uint64_t *a5)
{
  v9 = static Array<A>.extendedLibrary.getter();
  sub_2175435D0(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_60();
  result = a4(0x726F7461727563, 0xE700000000000000, 0, &unk_28295ACC0);
  *a5 = result;
  return result;
}

uint64_t sub_2176CF170()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC68, &qword_217796E90);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02690 = result;
  return result;
}

uint64_t sub_2176CF1F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC68, &qword_217796E90);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(17, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02650 = result;
  return result;
}

uint64_t sub_2176CF260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC10, &qword_217796E38);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x6E6F73616572, 0xE600000000000000);
  qword_280C02610 = result;
  return result;
}

uint64_t sub_2176CF2B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(16, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02670 = result;
  return result;
}

uint64_t sub_2176CF324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC08, &qword_217796E30);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0xD000000000000014, 0x80000002177AA520);
  qword_280C02638 = result;
  return result;
}

uint64_t sub_2176CF380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C380, &qword_217796EC0);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697904(0x486E6F6973726576, 0xEB00000000687361, 0, 0x676E69727453, 0xE600000000000000, &unk_282959AF8);
  qword_280C02448 = result;
  return result;
}

uint64_t sub_2176CF3FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCD8, &unk_217796F10);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(19, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02418 = result;
  return result;
}

uint64_t sub_2176CF46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCA8, &qword_217796EE0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x72417265766F635FLL, 0xED00006B726F7774, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02440 = result;
  return result;
}

uint64_t sub_2176CF4EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(19, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02410 = result;
  return result;
}

uint64_t sub_2176CF55C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC18, &qword_217796E40);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x746F766970, 0xE500000000000000);
  qword_280C02430 = result;
  return result;
}

uint64_t sub_2176CF5B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC00, &qword_217796E28);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0xD000000000000018, 0x80000002177AA540);
  qword_280C023F8 = result;
  return result;
}

uint64_t sub_2176CF60C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CCD0, &qword_217796F08);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(21, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02400 = result;
  return result;
}

uint64_t sub_2176CF67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x61656C437361685FLL, 0xEF736B636172546ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02420 = result;
  return result;
}

uint64_t sub_2176CF6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_0_142(25, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C023F0 = result;
  return result;
}

uint64_t sub_2176CF76C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CC58, &qword_217796E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656E6E695073695FLL, 0xE900000000000064, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C023E0 = result;
  return result;
}

uint64_t static Playlist.catalogFilterID(for:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = sub_217751F08();

  if (v2)
  {
    *a1 = 25705;
    a1[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2176CF928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void static Playlist.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 == &type metadata for Track)
  {
    if (sub_217204DD0(a2))
    {
      v4 = 2;
    }

    else
    {
      if (!sub_217204DD0(a3))
      {
        return;
      }

      v4 = 3;
    }
  }

  else
  {
    if (a4 == &type metadata for Playlist.Entry)
    {
      return;
    }

    v4 = 1;
  }

  sub_2173546F8();
  swift_allocError();
  *v6 = v4;
  swift_willThrow();
}

uint64_t Playlist.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE020();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();

  OUTLINED_FUNCTION_56_20();
  v12 = v2;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE9208 != -1)
  {
    OUTLINED_FUNCTION_134_3();
  }

  v3 = sub_2172A3F14();
  if (v4)
  {
    v1 = v4;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEA23B0](v3, v1);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  if (qword_280BE93B0 != -1)
  {
    OUTLINED_FUNCTION_32_48();
  }

  v5 = sub_2172A3F14();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v11 = v9;
    MEMORY[0x21CEA23B0](v7, v8);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000010, v11);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_2176CFCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E6F73726570 && a2 == 0xEB0000000078694DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x79616C706572 && a2 == 0xE600000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7261685372657375 && a2 == 0xEA00000000006465)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2176CFE7C(char a1)
{
  result = 0x6169726F74696465;
  switch(a1)
  {
    case 1:
      v3 = 0x6E7265747865;
      goto LABEL_5;
    case 2:
      v3 = 0x6E6F73726570;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
      break;
    case 3:
      result = 0x79616C706572;
      break;
    case 4:
      result = 0x7261685372657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176CFF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176CFCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176CFF50(uint64_t a1)
{
  v2 = sub_2176D0F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176CFF8C(uint64_t a1)
{
  v2 = sub_2176D0F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176CFFC8(uint64_t a1)
{
  v2 = sub_2176D10D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176D0004(uint64_t a1)
{
  v2 = sub_2176D10D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176D0040(uint64_t a1)
{
  v2 = sub_2176D107C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176D007C(uint64_t a1)
{
  v2 = sub_2176D107C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176D00B8(uint64_t a1)
{
  v2 = sub_2176D1028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176D00F4(uint64_t a1)
{
  v2 = sub_2176D1028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176D0130(uint64_t a1)
{
  v2 = sub_2176D0FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176D016C(uint64_t a1)
{
  v2 = sub_2176D0FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176D01A8(uint64_t a1)
{
  v2 = sub_2176D0F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176D01E4(uint64_t a1)
{
  v2 = sub_2176D0F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Playlist.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CAF8, &qword_2177964A8);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v73 = v5;
  v74 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_150();
  v72 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB00, &qword_2177964B0);
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v70 = v13;
  v71 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_150();
  v69 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB08, &qword_2177964B8);
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v67 = v21;
  v68 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_150();
  v66 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB10, &qword_2177964C0);
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v64 = v29;
  v65 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_150();
  v63 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB18, &qword_2177964C8);
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v61 = v37;
  v62 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v60 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB20, &qword_2177964D0);
  OUTLINED_FUNCTION_0_0(v44);
  v46 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v60 - v51;
  v53 = *v1;
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176D0F2C();
  sub_2177532F8();
  v55 = (v46 + 8);
  switch(v53)
  {
    case 1:
      v76 = 1;
      sub_2176D107C();
      v56 = v63;
      OUTLINED_FUNCTION_4_12();
      v58 = v64;
      v57 = v65;
      goto LABEL_7;
    case 2:
      v77 = 2;
      sub_2176D1028();
      v56 = v66;
      OUTLINED_FUNCTION_4_12();
      v58 = v67;
      v57 = v68;
      goto LABEL_7;
    case 3:
      v78 = 3;
      sub_2176D0FD4();
      v56 = v69;
      OUTLINED_FUNCTION_4_12();
      v58 = v70;
      v57 = v71;
      goto LABEL_7;
    case 4:
      v79 = 4;
      sub_2176D0F80();
      v56 = v72;
      OUTLINED_FUNCTION_4_12();
      v58 = v73;
      v57 = v74;
LABEL_7:
      (*(v58 + 8))(v56, v57);
      break;
    default:
      v75 = 0;
      sub_2176D10D0();
      sub_217752EE8();
      (*(v61 + 8))(v43, v62);
      break;
  }

  return (*v55)(v52, v44);
}

uint64_t Playlist.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t Playlist.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB58, &qword_2177964D8);
  v87 = OUTLINED_FUNCTION_0_0(v3);
  v88 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_150();
  v93 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB60, &qword_2177964E0);
  v85 = OUTLINED_FUNCTION_0_0(v10);
  v86 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_150();
  v92 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB68, &qword_2177964E8);
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v83 = v19;
  v84 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_150();
  v89 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB70, &qword_2177964F0);
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v81 = v27;
  v82 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB78, &qword_2177964F8);
  OUTLINED_FUNCTION_0_0(v34);
  v80 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v75 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CB80, &unk_217796500);
  OUTLINED_FUNCTION_0_0(v42);
  v91 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v75 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176D0F2C();
  v51 = v94;
  sub_2177532C8();
  if (v51)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v78 = v34;
  v79 = v41;
  v94 = v33;
  v52 = v92;
  v53 = v93;
  v54 = v49;
  v55 = sub_217752EB8();
  result = sub_21733CF68(v55, 0);
  if (v58 == v59 >> 1)
  {
    v60 = v91;
LABEL_9:
    v69 = sub_217752B48();
    swift_allocError();
    v71 = v70;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v71 = &type metadata for Playlist.Kind;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D84160], v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v60 + 8))(v54, v42);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v58 >= (v59 >> 1))
  {
    __break(1u);
  }

  else
  {
    v76 = *(v57 + v58);
    v61 = sub_21733CF64(v58 + 1);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    v77 = v61;
    if (v63 != v65 >> 1)
    {
      v60 = v91;
      v54 = v49;
      goto LABEL_9;
    }

    v66 = v90;
    v67 = v91;
    switch(v76)
    {
      case 1:
        v96 = 1;
        sub_2176D107C();
        v52 = v94;
        OUTLINED_FUNCTION_1_86();
        swift_unknownObjectRelease();
        v74 = v81;
        v73 = v82;
        goto LABEL_15;
      case 2:
        v97 = 2;
        sub_2176D1028();
        v52 = v89;
        OUTLINED_FUNCTION_1_86();
        swift_unknownObjectRelease();
        v74 = v83;
        v73 = v84;
        goto LABEL_15;
      case 3:
        v98 = 3;
        sub_2176D0FD4();
        OUTLINED_FUNCTION_1_86();
        swift_unknownObjectRelease();
        v73 = v85;
        v74 = v86;
LABEL_15:
        (*(v74 + 8))(v52, v73);
        break;
      case 4:
        v99 = 4;
        sub_2176D0F80();
        v61 = v49;
        sub_217752DE8();
        swift_unknownObjectRelease();
        (*(v88 + 8))(v53, v87);
        break;
      default:
        v95 = 0;
        sub_2176D10D0();
        v68 = v79;
        OUTLINED_FUNCTION_1_86();
        swift_unknownObjectRelease();
        (*(v80 + 8))(v68, v78);
        break;
    }

    (*(v67 + 8))(v61, v42);
    *v66 = v76;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t static Playlist.typeValue.getter()
{
  if (qword_280BE84D8 != -1)
  {
    OUTLINED_FUNCTION_44_0();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE84E0);

  return sub_217751DE8();
}

uint64_t sub_2176D0E5C()
{
  if (qword_280BE84D8 != -1)
  {
    OUTLINED_FUNCTION_44_0();
  }

  xmmword_280BE6228 = xmmword_280BE84E0;
  qword_280BE6238 = qword_280BE84F0;
  unk_280BE6240 = unk_280BE84F8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.playlist.getter()
{
  if (qword_280BE6220 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6228);

  return sub_217751DE8();
}

unint64_t sub_2176D0F2C()
{
  result = qword_27CB2CB28;
  if (!qword_27CB2CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB28);
  }

  return result;
}

unint64_t sub_2176D0F80()
{
  result = qword_27CB2CB30;
  if (!qword_27CB2CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB30);
  }

  return result;
}

unint64_t sub_2176D0FD4()
{
  result = qword_27CB2CB38;
  if (!qword_27CB2CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB38);
  }

  return result;
}

unint64_t sub_2176D1028()
{
  result = qword_27CB2CB40;
  if (!qword_27CB2CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB40);
  }

  return result;
}

unint64_t sub_2176D107C()
{
  result = qword_27CB2CB48;
  if (!qword_27CB2CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB48);
  }

  return result;
}

unint64_t sub_2176D10D0()
{
  result = qword_27CB2CB50;
  if (!qword_27CB2CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB50);
  }

  return result;
}

unint64_t sub_2176D1128()
{
  result = qword_280BE2660;
  if (!qword_280BE2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2660);
  }

  return result;
}

unint64_t sub_2176D1180()
{
  result = qword_27CB2CB88;
  if (!qword_27CB2CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB88);
  }

  return result;
}

_BYTE *sub_2176D125C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2176D138C()
{
  result = qword_27CB2CB90;
  if (!qword_27CB2CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB90);
  }

  return result;
}

unint64_t sub_2176D13E4()
{
  result = qword_27CB2CB98;
  if (!qword_27CB2CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CB98);
  }

  return result;
}

unint64_t sub_2176D143C()
{
  result = qword_27CB2CBA0;
  if (!qword_27CB2CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBA0);
  }

  return result;
}

unint64_t sub_2176D1494()
{
  result = qword_27CB2CBA8;
  if (!qword_27CB2CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBA8);
  }

  return result;
}

unint64_t sub_2176D14EC()
{
  result = qword_27CB2CBB0;
  if (!qword_27CB2CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBB0);
  }

  return result;
}

unint64_t sub_2176D1544()
{
  result = qword_27CB2CBB8;
  if (!qword_27CB2CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBB8);
  }

  return result;
}

unint64_t sub_2176D159C()
{
  result = qword_27CB2CBC0;
  if (!qword_27CB2CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBC0);
  }

  return result;
}

unint64_t sub_2176D15F4()
{
  result = qword_27CB2CBC8;
  if (!qword_27CB2CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBC8);
  }

  return result;
}

unint64_t sub_2176D164C()
{
  result = qword_27CB2CBD0;
  if (!qword_27CB2CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBD0);
  }

  return result;
}

unint64_t sub_2176D16A4()
{
  result = qword_27CB2CBD8;
  if (!qword_27CB2CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBD8);
  }

  return result;
}

unint64_t sub_2176D16FC()
{
  result = qword_27CB2CBE0;
  if (!qword_27CB2CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBE0);
  }

  return result;
}

unint64_t sub_2176D1754()
{
  result = qword_27CB2CBE8;
  if (!qword_27CB2CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBE8);
  }

  return result;
}

unint64_t sub_2176D17AC()
{
  result = qword_27CB2CBF0;
  if (!qword_27CB2CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CBF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_21729C5E8(v5 + 16, va);
}

uint64_t OUTLINED_FUNCTION_29_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_21729C5E8(v5 + 16, va);
}

void OUTLINED_FUNCTION_42_39()
{
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_48_22()
{
  v4 = *(*(v2 + 8) + 8);

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

void sub_2176D198C(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217503580(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + (a1 << 6);
    v8 = *(v7 + 48);
    *a2 = *(v7 + 32);
    a2[1] = v8;
    a2[2] = *(v7 + 64);
    *(a2 + 41) = *(v7 + 73);
    v9 = v6 - 1;
    sub_21750400C((v7 + 96), v6 - 1 - a1, (v7 + 32));
    *(v5 + 16) = v9;
    *v2 = v5;
  }
}

uint64_t sub_2176D1AA4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v9 + 56 * a1;
    v13 = *(v12 + 48);
    *a4 = *(v12 + 32);
    *(a4 + 16) = v13;
    *(a4 + 32) = *(v12 + 64);
    *(a4 + 48) = *(v12 + 80);
    v14 = v11 - 1;
    result = a3(v12 + 88, v11 - 1 - a1, v12 + 32);
    *(v9 + 16) = v14;
    *v4 = v9;
  }

  return result;
}

uint64_t sub_2176D1B54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_217504020(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_217226924((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t WeakSequence.add(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9[0] = *v2;
  sub_217751DE8();
  v6 = OUTLINED_FUNCTION_16_0();
  v7 = WeakSequence.contains(_:)(v6);

  if ((v7 & 1) == 0)
  {
    sub_2171F5808();
    v9[3] = *(a2 + 16);
    v9[0] = a1;
    swift_unknownObjectRetain();
    result = sub_2171FFFB4(v9);
    if (result)
    {
      MEMORY[0x21CEA25D0](result);
      sub_217204C70(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10));

      return sub_217752378();
    }
  }

  return result;
}

uint64_t WeakSequence.contains(_:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_217752D38())
  {
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CEA2E30](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v5 weakObjectValue])
      {
        sub_2177529C8();
        swift_unknownObjectRelease();
      }

      else
      {

        v11 = 0u;
        v12 = 0u;
      }

      v13[0] = v11;
      v13[1] = v12;
      if (*(&v12 + 1))
      {
        if (OUTLINED_FUNCTION_0_143())
        {
          swift_unknownObjectRelease();
          if (v10 == a1)
          {
            return 1;
          }
        }
      }

      else
      {
        sub_217380914(v13);
      }

      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0;
}

void WeakSequence.remove(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_217204DD0(*v1);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEA2E30](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    if ([v5 weakObjectValue])
    {
      sub_2177529C8();
      swift_unknownObjectRelease();
    }

    else
    {

      v9 = 0u;
      v10 = 0u;
    }

    v11[0] = v9;
    v11[1] = v10;
    if (*(&v10 + 1))
    {
      if (OUTLINED_FUNCTION_0_143())
      {
        swift_unknownObjectRelease();
        if (v8 == a1)
        {

          return;
        }
      }
    }

    else
    {
      sub_217380914(v11);
    }
  }
}

uint64_t WeakSequence.elements.getter(uint64_t a1)
{
  v5 = *v1;
  v4 = *(a1 + 16);
  sub_217751DE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD00, &qword_217796F48);
  sub_2176D2624();
  v2 = sub_217752148();

  return v2;
}

uint64_t sub_2176D2044@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  if ([*a1 weakObjectValue])
  {
    sub_2177529C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_217380914(v8);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  *a2 = v4;
  return result;
}

Swift::Void __swiftcall WeakSequence.compact()()
{
  v2 = v0;
  v3 = *v1;
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = sub_217204DD0(v3);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      v10 = *v11;

      *v11 = v4;
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEA2E30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v7;
    v9 = *(v2 + 16);
    sub_2176D224C(&v13, &v12);

    if (v12)
    {
      MEMORY[0x21CEA25D0]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2177522F8();
      }

      sub_217752378();
      v4 = v14;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_2176D224C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 weakObjectValue])
  {
    sub_2177529C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    result = sub_217380914(v7);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  result = v3;
LABEL_9:
  *a2 = v3;
  return result;
}

uint64_t WeakSequence.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = MEMORY[0x277D84F90];
  v4 = sub_2177522A8();
  v10 = v4;
  OUTLINED_FUNCTION_16_0();
  if (v4 == sub_217752388())
  {

    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    do
    {
      OUTLINED_FUNCTION_16_0();
      v7 = sub_217752358();
      sub_2177522D8();
      if (v7)
      {
        v8 = *(a1 + 32 + 8 * v4);
        swift_unknownObjectRetain();
      }

      else
      {
        v8 = sub_217752AC8();
      }

      sub_2177523E8();
      v9 = type metadata accessor for WeakSequence();
      WeakSequence.add(_:)(v8, v9);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_16_0();
      v4 = v10;
    }

    while (v10 != sub_217752388());

    v6 = v11;
  }

  *a2 = v6;
  return result;
}

uint64_t WeakSequence.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *v2;
  v5 = WeakSequence.elements.getter(a1);
  v6 = *(a1 + 16);

  return sub_2176D24AC(v5, a2);
}

uint64_t sub_2176D24AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  sub_217751DE8();
  result = sub_2177522A8();
  a2[1] = a1;
  a2[2] = result;
  return result;
}

uint64_t sub_2176D24F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  WeakSequence.makeIterator()(a1, a2);
  v3 = *v2;
}

uint64_t WeakSequence.Iterator.next()(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  v4 = sub_217752388();
  v5 = *(v1 + 16);
  if (v5 == v4)
  {
    return 0;
  }

  v7 = sub_217752358();
  sub_2177522D8();
  if (v7)
  {
    v6 = *(v2 + 8 * v5 + 32);
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = sub_217752AC8();
  }

  sub_2177523E8();
  return v6;
}

uint64_t sub_2176D25E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = WeakSequence.Iterator.next()(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2176D2624()
{
  result = qword_280BE2310;
  if (!qword_280BE2310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2CD00, &qword_217796F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2310);
  }

  return result;
}

uint64_t sub_2176D26BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2176D26F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2176D2734(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2176D2774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void CloudResourceCollection.makeCatalogSearchIncrementalLoader<A>(for:typeValue:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v21 = *v20;
  v22 = *(v20 + 2);
  v23 = *(v20 + 3);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v24 = *(v0 + 64);
  if (v24)
  {
    v30 = v16;
    v31 = *(v0 + 56);
    v25 = v15;
    v28 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2177586E0;
    *(v26 + 32) = v28;
    *(v26 + 48) = v22;
    *(v26 + 56) = v23;
    v32 = v26;
    (*(v10 + 16))(v19, v4, v2);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2176D325C(v25, v6, v31, v24, &v32, v19, v2, v30, v28, *(&v28 + 1), v29, v30);
    v27 = swift_allocObject();
    memcpy((v27 + 16), v33, 0x50uLL);
    sub_2171F06D8(v8, &qword_27CB24188, &dword_217758930);
    *v8 = v27;
    *(v8 + 24) = &type metadata for MusicCatalogSearchIncrementalLoader;
    *(v8 + 32) = &protocol witness table for MusicCatalogSearchIncrementalLoader;
  }

  OUTLINED_FUNCTION_13();
}

void sub_2176D2980()
{
  OUTLINED_FUNCTION_12();
  sub_217751428();
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_1();
  sub_2172CA7E4();
  v5 = sub_217751DC8();
  v6 = v0[3];
  v7 = v0[4];
  static URL.resourceTypes(extractedFrom:)();
  v50 = *(v8 + 16);
  if (!v50)
  {
LABEL_23:

    OUTLINED_FUNCTION_13();
    return;
  }

  v9 = 0;
  v49 = *v0;
  v48 = v0[1];
  if (v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v44 = v10;
  v11 = 0xE000000000000000;
  v47 = v0[2];
  if (v7)
  {
    v11 = v7;
  }

  v43 = v11;
  v12 = (v8 + 48);
  v46 = v0;
  v45 = v8;
  while (v9 < *(v8 + 16))
  {
    v13 = *(v12 - 2);
    v14 = *(v12 - 1);
    v51 = *v12;
    swift_bridgeObjectRetain_n();
    sub_2177513F8();

    static URL.modifiedRelativeURLLocation(byApplying:to:)();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      sub_217751DE8();
      v17 = v44;
      v18 = v43;
    }

    sub_2172CA838((v0 + 5), v52);
    sub_217751DE8();
    v19 = v49;
    v20 = v48;
    if (!v48)
    {
      sub_217751DE8();
      OUTLINED_FUNCTION_5_102();
      static URL.valueForQueryItem(named:extractedFrom:)();
      v19 = v21;
      v20 = v22;
    }

    v54 = v52[0];
    v55 = v52[1];
    v56 = *&v52[2];
    v53[0] = v19;
    v53[1] = v20;
    v53[2] = v47;
    v53[3] = v17;
    v53[4] = v18;
    sub_2175F6F80(v53, v52);
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    v23 = OUTLINED_FUNCTION_6_104();
    v26 = sub_2176324F4(v23, v24, v25);
    if (__OFADD__(v5[2], (v27 & 1) == 0))
    {
      goto LABEL_25;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD38, &qword_2177973C0);
    if (sub_217752CB8())
    {
      v30 = OUTLINED_FUNCTION_6_104();
      v33 = sub_2176324F4(v30, v31, v32);
      v0 = v46;
      if ((v29 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
      if (v29)
      {
LABEL_21:

        sub_2176D4BA0(v52, v5[7] + 80 * v28);
        sub_2175F6FDC(v53);
        v41 = OUTLINED_FUNCTION_3_119();
        v42(v41);
        goto LABEL_22;
      }
    }

    else
    {
      v0 = v46;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    v5[(v28 >> 6) + 8] |= 1 << v28;
    v35 = v5[6] + 24 * v28;
    *v35 = v13;
    *(v35 + 8) = v14;
    *(v35 + 16) = v51;
    memcpy((v5[7] + 80 * v28), v52, 0x50uLL);
    sub_2175F6FDC(v53);
    v36 = OUTLINED_FUNCTION_3_119();
    v37(v36);
    v38 = v5[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_26;
    }

    v5[2] = v40;
LABEL_22:
    ++v9;
    v12 += 24;
    v8 = v45;
    if (v50 == v9)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_217753178();
  __break(1u);
}

uint64_t MusicCatalogSearchIncrementalLoader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD08, &unk_2177970D0);
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176D3330();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v19[0] = sub_217752E68();
  v19[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A240, &qword_21777EEC8);
  sub_217283840(&qword_27CB2A280, &qword_27CB2A240, &qword_21777EEC8);
  sub_217752EA8();
  v19[2] = v20;
  LOBYTE(v20) = 1;
  v19[3] = sub_217752E68();
  v19[4] = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  Decoder.dataRequestConfiguration.getter(v12, v13);
  v16 = OUTLINED_FUNCTION_1_132();
  v17(v16);
  sub_2175F6F80(v19, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2175F6FDC(v19);
}

uint64_t MusicCatalogSearchIncrementalLoader.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD18, &unk_2177970E0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176D3330();
  sub_2177532F8();
  v16 = *v3;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  sub_21725E964();
  OUTLINED_FUNCTION_4_124();
  if (!v2)
  {
    *&v16 = *(v3 + 2);
    v17 = 2;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A240, &qword_21777EEC8);
    sub_217283840(&qword_27CB2A248, &qword_27CB2A240, &qword_21777EEC8);
    sub_217752F88();

    v16 = *(v3 + 24);
    v17 = 1;
    OUTLINED_FUNCTION_4_124();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_2176D325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = *v26;
  if (!v20)
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_5_102();
    static URL.valueForQueryItem(named:extractedFrom:)();
    v23 = v28;
    v21 = v29;
  }

  *v25 = v23;
  v25[1] = v21;
  v25[3] = v19;
  v25[4] = v17;
  v25[2] = v27;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v15, v13, (v25 + 5));
  v30 = *(*(v15 - 8) + 8);
  OUTLINED_FUNCTION_13();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

unint64_t sub_2176D3330()
{
  result = qword_27CB2CD10;
  if (!qword_27CB2CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD10);
  }

  return result;
}

uint64_t MusicCatalogSearchIncrementalLoader.requestedTerm.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchIncrementalLoader.nextBatchLocation.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void sub_2176D33F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  static URL.valueForQueryItem(named:extractedFrom:)();
  if (v4)
  {
    v5 = v4;
    v6 = HIBYTE(v4) & 0xF;
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        sub_2175B1ECC(v3, v5, 10);
        goto LABEL_64;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v34[0] = v3;
        v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
        if (v3 == 43)
        {
          if (v6)
          {
            if (--v6)
            {
              v23 = 0;
              v24 = v34 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  break;
                }

                v26 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v26 + v25;
                if (__OFADD__(v26, v25))
                {
                  break;
                }

                ++v24;
                if (!--v6)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_72;
        }

        if (v3 != 45)
        {
          if (v6)
          {
            v30 = 0;
            v31 = v34;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                break;
              }

              v30 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v6)
        {
          if (--v6)
          {
            v15 = 0;
            v16 = v34 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v6)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = sub_217752B88();
        }

        v10 = *v9;
        if (v10 == 43)
        {
          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v19 = 0;
              if (v9)
              {
                v20 = v9 + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    goto LABEL_62;
                  }

                  v22 = 10 * v19;
                  if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v19 = v22 + v21;
                  if (__OFADD__(v22, v21))
                  {
                    goto LABEL_62;
                  }

                  ++v20;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        if (v10 != 45)
        {
          if (v7)
          {
            v27 = 0;
            if (v9)
            {
              while (1)
              {
                v28 = *v9 - 48;
                if (v28 > 9)
                {
                  goto LABEL_62;
                }

                v29 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_62;
                }

                v27 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_62;
                }

                ++v9;
                if (!--v7)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          LOBYTE(v6) = 1;
          goto LABEL_63;
        }

        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            v11 = 0;
            if (v9)
            {
              v12 = v9 + 1;
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_62;
                }

                v14 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_62;
                }

                v11 = v14 - v13;
                if (__OFSUB__(v14, v13))
                {
                  goto LABEL_62;
                }

                ++v12;
                if (!--v6)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v6) = 0;
LABEL_63:
            v35 = v6;
LABEL_64:

            return;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }
  }
}

uint64_t MusicCatalogSearchIncrementalLoader.nextItemBatch<A>(limit:)()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 1336) = v0;
  *(v1 + 1328) = v2;
  *(v1 + 1320) = v3;
  *(v1 + 1233) = v4;
  *(v1 + 1312) = v5;
  *(v1 + 1304) = v6;
  v7 = *(*(sub_217751908() - 8) + 64) + 15;
  *(v1 + 1344) = swift_task_alloc();
  v8 = sub_217751928();
  *(v1 + 1352) = v8;
  v9 = *(v8 - 8);
  *(v1 + 1360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 1368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2176D37FC, 0, 0);
}

uint64_t sub_2176D37FC()
{
  v1 = *(v0 + 1336);
  v2 = v1[4];
  if (v2)
  {
    v21 = v1[3];
    if (v1[1])
    {
      v20 = *v1;
      v3 = v1[1];
    }

    else
    {
      v20 = 0;
      v3 = 0xE000000000000000;
    }

    v12 = *(v0 + 1233);
    v13 = *(v0 + 1312);
    v14 = v1[2];
    *(v0 + 1152) = 0;
    *(v0 + 1160) = 1;
    *(v0 + 1161) = 0;
    swift_beginAccess();
    v15 = off_280BEBCD0;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    (v15)(v16);

    v17 = *(v0 + 1264);
    v18 = *(v0 + 1272);
    __swift_project_boxed_opaque_existential_1((v0 + 1240), v17);
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v17, v18, v0 + 1168);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1240));
    *(v0 + 1120) = v20;
    *(v0 + 1128) = v3;
    *(v0 + 1208) = v21;
    *(v0 + 1216) = v2;
    *(v0 + 1224) = v14;
    *(v0 + 1232) = 1;
    sub_21725EE54((v1 + 5), v0 + 1168);
    *(v0 + 1136) = v13;
    *(v0 + 1144) = v12 & 1;
    v19 = swift_task_alloc();
    *(v0 + 1376) = v19;
    *v19 = v0;
    v19[1] = sub_2176D3AA4;

    return sub_2173B2474();
  }

  else
  {
    v4 = *(v0 + 1368);
    v5 = *(v0 + 1360);
    v6 = *(v0 + 1352);
    v7 = *(v0 + 1344);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v5 + 8))(v4, v6);
    swift_willThrow();
    v8 = *(v0 + 1368);
    v9 = *(v0 + 1344);

    OUTLINED_FUNCTION_20_0();

    return v10();
  }
}

uint64_t sub_2176D3AA4()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 1376);
  v5 = *v1;
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v3 = sub_2176D3C54;
  }

  else
  {
    v3 = sub_2176D3BB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2176D3BB4()
{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1328);
  sub_2175F289C(*(v0 + 1320), *(v0 + 1304));
  sub_2173B8174(v0 + 16);
  sub_2176D4848(v0 + 1120);

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2176D3C54()
{
  OUTLINED_FUNCTION_10();
  sub_2176D4848((v0 + 140));
  v1 = v0[173];
  v2 = v0[171];
  v3 = v0[168];

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t static MusicCatalogSearchIncrementalLoader.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_217270BE0(a1[2], a2[2]))
  {
    v8 = a1[4];
    v9 = a2[4];
    if (v8)
    {
      if (v9)
      {
        v10 = a1[3] == a2[3] && v8 == v9;
        if (v10 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v9)
    {
LABEL_18:
      v11 = a1[8];
      v12 = a1[9];
      __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
      v13 = *(v12 + 112);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
      return v13(a2 + 5, v14, v11, v12) & 1;
    }
  }

  return 0;
}

uint64_t MusicCatalogSearchIncrementalLoader.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_21727D7C8(a1, v2[2]);
  if (v2[4])
  {
    v5 = v2[3];
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  v6 = v2[8];
  v7 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v6);
  return (*(v7 + 120))(a1, v6, v7);
}

uint64_t MusicCatalogSearchIncrementalLoader.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchIncrementalLoader.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176D3EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21725E0A8;

  return MusicCatalogSearchIncrementalLoader.nextItemBatch<A>(limit:)();
}

uint64_t sub_2176D3FB4()
{
  sub_2177531E8();
  MusicCatalogSearchIncrementalLoader.hash(into:)(v1);
  return sub_217753238();
}

void MusicCatalogSearchIncrementalLoader.attemptMerging<A>(with:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217751428();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0();
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_1();
  v77 = 0u;
  memset(v78, 0, sizeof(v78));
  v76 = 0u;
  (*(v24 + 16))(v23 - v22, v5, v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v74, 0, sizeof(v74));
    sub_2171F06D8(v74, &qword_27CB2ABE8, &unk_217797100);
    goto LABEL_32;
  }

  memcpy(v75, v74, sizeof(v75));
  v26 = *v1;
  v25 = v1[1];
  if (v25)
  {
    if (!v75[1])
    {
      goto LABEL_19;
    }

    if (v26 != v75[0] || v25 != v75[1])
    {
      v28 = *v1;
      v29 = v1[1];
      if ((sub_217753058() & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else if (v75[1])
  {
LABEL_19:
    sub_2175F6FDC(v75);
    goto LABEL_32;
  }

  v71 = v25;
  sub_2176D33F4();
  v31 = v30;
  sub_2176D33F4();
  if (v31 != v32)
  {
    goto LABEL_19;
  }

  v65 = v26;
  v67 = v10;
  *&v74[0] = v1[2];
  sub_217751DE8();
  v33 = sub_217751DE8();
  sub_217543D94(v33);
  sub_2173DB0E4(*&v74[0]);
  v64 = v34;

  v35 = v1[4];
  v66 = v1;
  v63 = v1[3];
  static URL.resourceTypes(extractedFrom:)();
  v37 = v36;
  static URL.resourceTypes(extractedFrom:)();
  *&v74[0] = v37;
  sub_21754365C(v38);
  sub_2173DAE08(*&v74[0], v39);
  v41 = v40;

  v42 = *(v41 + 16);
  v68 = v17;
  if (v42)
  {
    v62 = v35;
    v69 = v8;
    *&v74[0] = MEMORY[0x277D84F90];
    sub_217275C90();
    v43 = *&v74[0];
    v44 = (v41 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      *&v74[0] = v43;
      v48 = *(v43 + 16);
      v47 = *(v43 + 24);
      sub_217751DE8();
      if (v48 >= v47 >> 1)
      {
        sub_217275C90();
        v43 = *&v74[0];
      }

      *(v43 + 16) = v48 + 1;
      v49 = v43 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v44 += 3;
      --v42;
    }

    while (v42);

    v8 = v69;
    v35 = v62;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  *&v74[0] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0);
  sub_217751ED8();

  sub_2177513F8();

  static URL.modifiedRelativeURLLocation(byApplying:to:)();
  v70 = v51;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    sub_217751DE8();
    if (v35)
    {
      v53 = v63;
    }

    else
    {
      v53 = 0;
    }

    v70 = v53;
    if (v35)
    {
      v52 = v35;
    }

    else
    {
      v52 = 0xE000000000000000;
    }
  }

  v54 = v65;
  sub_2172CA838((v66 + 5), v72);
  v55 = v71;
  if (!v71)
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_5_102();
    static URL.valueForQueryItem(named:extractedFrom:)();
    v54 = v56;
    v55 = v57;
  }

  v58 = *(v67 + 8);
  sub_217751DE8();
  v58(v68, v8);
  sub_2171F06D8(&v76, &qword_27CB2ABE8, &unk_217797100);
  v74[0] = v72[0];
  v74[1] = v72[1];
  *&v74[2] = v73;
  sub_2175F6FDC(v75);
  *&v76 = v54;
  *(&v76 + 1) = v55;
  *&v77 = v64;
  *(&v77 + 1) = v70;
  v78[0] = v52;
  *&v78[1] = v74[0];
  *&v78[3] = v74[1];
  v78[5] = *&v74[2];
LABEL_32:
  sub_2174A87A0(&v76, v75, &qword_27CB2ABE8, &unk_217797100);
  if (v75[2])
  {
    v59 = swift_allocObject();
    memcpy((v59 + 16), v75, 0x50uLL);
    sub_2171F06D8(&v76, &qword_27CB2ABE8, &unk_217797100);
    v60 = &protocol witness table for MusicCatalogSearchIncrementalLoader;
    v61 = &type metadata for MusicCatalogSearchIncrementalLoader;
  }

  else
  {
    sub_2171F06D8(&v76, &qword_27CB2ABE8, &unk_217797100);
    sub_2171F06D8(v75, &qword_27CB2ABE8, &unk_217797100);
    v59 = 0;
    v61 = 0;
    v60 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *v7 = v59;
  v7[3] = v61;
  v7[4] = v60;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176D45C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21722E1EC();
  *a2 = result;
  return result;
}

uint64_t sub_2176D45F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21722E238(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2176D4624@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21722E1EC();
  *a1 = result;
  return result;
}

uint64_t sub_2176D464C(uint64_t a1)
{
  v2 = sub_2176D3330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176D4688(uint64_t a1)
{
  v2 = sub_2176D3330();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2176D46F4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AC80, &unk_2177973B0);
  v2 = sub_217752D68();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2174A87A0(v6, &v15, &qword_27CB24578, &qword_217786880);
    v7 = v15;
    v8 = v16;
    result = sub_2176D489C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2172124CC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2176D489C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2177531E8();
  sub_217751FF8();
  v6 = sub_217753238();

  return sub_217632AEC(a1, a2, v6);
}

uint64_t sub_2176D4918(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2176D4958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogSearchIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176D4A9C()
{
  result = qword_27CB2CD20;
  if (!qword_27CB2CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD20);
  }

  return result;
}

unint64_t sub_2176D4AF4()
{
  result = qword_27CB2CD28;
  if (!qword_27CB2CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD28);
  }

  return result;
}

unint64_t sub_2176D4B4C()
{
  result = qword_27CB2CD30;
  if (!qword_27CB2CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD30);
  }

  return result;
}

void *MusicPlayer.Queue.Entry.Item.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C6EC(v1, &v32);
  if (v38)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    if (qword_280BE6CA8 != -1)
    {
      swift_once();
    }

    sub_2176CAB9C(qword_280C022F8, v10, v11, v12, v13, v14, v15, v16, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, v38, __src[0], __src[1], __src[2]);
    sub_217283C08(&v25);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    sub_2176CAA38(qword_280C028C0, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, v38, __src[0], __src[1], __src[2]);
    sub_217283B58(&v25);
  }

  return memcpy(v0, __src, 0x78uLL);
}

uint64_t MusicPlayer.Queue.Entry.Item.id.getter()
{
  MusicPlayer.Queue.Entry.Item.innerItem.getter();
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

double MusicPlayer.Queue.Entry.Item.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21729C6EC(v1, v7);
  if (v10)
  {
    v2 = &type metadata for MusicVideo;
  }

  else
  {
    v2 = &type metadata for Song;
  }

  if (v10)
  {
    v3 = &protocol witness table for MusicVideo;
  }

  else
  {
    v3 = &protocol witness table for Song;
  }

  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v0[3] = v2;
  v0[4] = v3;
  *v0 = v4;
  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_21729C6EC(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v9 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v9, v10);
    return sub_217283C08(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v12 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v12, v13);
    return sub_217283B58(&v14);
  }
}

uint64_t static MusicPlayer.Queue.Entry.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21729C6EC(a1, v48);
  sub_21729C6EC(a2, &v49);
  if (v48[56])
  {
    v3 = sub_21729C6EC(v48, v46);
    if (v50 == 1)
    {
      OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
      v13 = v13 && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        v14 = v47;
        v15 = OUTLINED_FUNCTION_29(v46);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v17 = *(v14 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v18 = OUTLINED_FUNCTION_13_4();
        v19 = v17(v18);
        sub_217283C08(&v38);
        if (v19)
        {
          sub_217283C08(v46);
LABEL_21:
          sub_21729C748(v48);
          return 1;
        }
      }

      else
      {
        sub_217283C08(&v38);
      }

      sub_217283C08(v46);
LABEL_26:
      sub_21729C748(v48);
      return 0;
    }

    sub_217283C08(v46);
  }

  else
  {
    v20 = sub_21729C6EC(v48, v46);
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
      v30 = v13 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        v31 = v47;
        v32 = OUTLINED_FUNCTION_29(v46);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v34 = *(v31 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v35 = OUTLINED_FUNCTION_13_4();
        v36 = v34(v35);
        sub_217283B58(&v38);
        if (v36)
        {
          sub_217283B58(v46);
          goto LABEL_21;
        }
      }

      else
      {
        sub_217283B58(&v38);
      }

      sub_217283B58(v46);
      goto LABEL_26;
    }

    sub_217283B58(v46);
  }

  sub_2176D5B44(v48);
  return 0;
}

uint64_t MusicPlayer.Queue.Entry.Item.hash(into:)()
{
  v1 = sub_21729C6EC(v0, &v24);
  if (v29)
  {
    v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    MEMORY[0x21CEA3550](1, v9);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v18, v21);
    v10 = OUTLINED_FUNCTION_3_4();
    v11(v10);
    return sub_217283C08(&v16);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    MEMORY[0x21CEA3550](0, v13);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v18, v21);
    v14 = OUTLINED_FUNCTION_3_4();
    v15(v14);
    return sub_217283B58(&v16);
  }
}

uint64_t MusicPlayer.Queue.Entry.Item.hashValue.getter()
{
  sub_2177531E8();
  MusicPlayer.Queue.Entry.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176D51B4()
{
  sub_2177531E8();
  MusicPlayer.Queue.Entry.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176D51F0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.Entry.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_17_42(a1, a2);
  v7 = v6;
  v9 = *(v8 + 224);
  v10 = sub_2177528F8();
  v11 = OUTLINED_FUNCTION_0_39(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_14_64();
  if (v33)
  {
    OUTLINED_FUNCTION_3_0();
    v17 = *(v7 + 232);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty();
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    MusicAttributeProperty.__allocating_init(_:)();
    v21 = v20;
    sub_217751DE8();
    MusicVideo.subscript.getter(v21);
    v22 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v22);

    if (&vars0 != 208)
    {
      return result;
    }

    v24 = OUTLINED_FUNCTION_40_0();
    v26 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v27 = *(v7 + 232);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty();
    v28 = *(v2 + 16);
    v29 = *(v2 + 24);
    MusicAttributeProperty.__allocating_init(_:)();
    v31 = v30;
    sub_217751DE8();
    Song.subscript.getter(v31);
    v32 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v32);

    if (&vars0 != 208)
    {
      return result;
    }

    v24 = OUTLINED_FUNCTION_40_0();
    v26 = v5;
  }

  return v25(v24, v26, v3);
}

{
  OUTLINED_FUNCTION_17_42(a1, a2);
  v7 = v6;
  v9 = *(v8 + 264);
  v10 = sub_2177528F8();
  v11 = OUTLINED_FUNCTION_0_39(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_14_64();
  if (v31)
  {
    OUTLINED_FUNCTION_3_0();
    v17 = *(v7 + 272);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty();
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    sub_217751DE8();
    v20 = MusicExtendedAttributeProperty.__allocating_init(_:)();
    MusicVideo.subscript.getter(v20);
    v21 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v21);

    if (&vars0 != 208)
    {
      return result;
    }

    v23 = OUTLINED_FUNCTION_40_0();
    v25 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v26 = *(v7 + 272);
    OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty();
    v28 = *(v2 + 16);
    v27 = *(v2 + 24);
    sub_217751DE8();
    v29 = MusicExtendedAttributeProperty.__allocating_init(_:)();
    Song.subscript.getter(v29);
    v30 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v30);

    if (&vars0 != 208)
    {
      return result;
    }

    v23 = OUTLINED_FUNCTION_40_0();
    v25 = v5;
  }

  return v24(v23, v25, v3);
}

void *MusicPlayer.Queue.Entry.Item.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  sub_21729C6EC(v2, v14);
  if (v14[56])
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v6);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_35_28();
    MusicVideo.subscript.getter(v7);
    v8 = v3;
    sub_217283C08(v13);
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v9);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_42_2();
    OUTLINED_FUNCTION_35_28();
    Song.subscript.getter(v10);
    v8 = v3;
    sub_217283B58(v13);
  }

  if (!v8)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.cloudEndpointKind.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C6EC(v1, &v23);
  if (v28)
  {
    v10 = OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_2175AFAA4((&v14 + 7), v10);
    result = sub_217283C08(&v15);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_2175AFAA4((&v14 + 7), v12);
    result = sub_217283B58(&v15);
  }

  *v0 = HIBYTE(v14);
  return result;
}

double MusicPlayer.Queue.Entry.Item.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2171FF30C(a1, v9);
  sub_2171FF30C(v9, &v8);
  sub_2172EE918();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v6 = v14;
    v7 = v11;
    *a2 = v10;
    *(a2 + 16) = v7;
    result = *&v12;
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v6 & 1;
  }

  return result;
}

uint64_t MusicPlayer.Queue.Entry.Item.encode(to:)()
{
  sub_21729C6EC(v0, v2);
  v5[0] = v2[0];
  v5[1] = v2[1];
  v5[2] = v2[2];
  v6 = v3;
  v7 = v4;
  sub_2172EF864();
  return sub_21727576C(v5);
}

unint64_t MusicPlayer.Queue.Entry.Item.description.getter()
{
  v1 = sub_21729C6EC(v0, &v23);
  if (v28)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v9 = MusicVideo.description.getter();
    MEMORY[0x21CEA23B0](v9);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000);
    v10 = 0xD000000000000028;
    sub_217283C08(&v15);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v11 = Song.description.getter();
    MEMORY[0x21CEA23B0](v11);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000);
    v10 = 0xD000000000000022;
    sub_217283B58(&v15);
  }

  return v10;
}

unint64_t MusicPlayer.Queue.Entry.Item.debugDescription.getter()
{
  sub_21729C6EC(v0, v10);
  if (v10[56])
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    MusicVideo.debugDescription.getter();
    OUTLINED_FUNCTION_21_1();
    v1 = OUTLINED_FUNCTION_6_2();
    v3 = v2;

    MEMORY[0x21CEA23B0](v1, v3);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    v4 = 0xD00000000000002BLL;
    sub_217283C08(v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    Song.debugDescription.getter();
    OUTLINED_FUNCTION_21_1();
    v5 = OUTLINED_FUNCTION_6_2();
    v7 = v6;

    MEMORY[0x21CEA23B0](v5, v7);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    v4 = 0xD000000000000025;
    sub_217283B58(v9);
  }

  return v4;
}

uint64_t sub_2176D5B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD40, &qword_2177973C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2176D5BB0()
{
  result = qword_27CB2CD48;
  if (!qword_27CB2CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_64()
{

  return sub_21729C6EC(v0, v1 - 144);
}

uint64_t sub_2176D5C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = (a1 + 56);
  while (v8 != v7)
  {
    v10 = *(v9 - 1) == a4 && *v9 == a5;
    if (v10 || (sub_217753058() & 1) != 0)
    {
      v11 = v7;
      goto LABEL_11;
    }

    ++v7;
    v9 += 4;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t MusicLibrarySearchRequest.init(term:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v7 = a4;
  v31 = 0;
  v30 = 1;
  v8 = *(a3 + 16);
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    sub_217276E20();
    v9 = 0;
    v10 = 32;
    v11 = v29;
    while (v9 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v10)))
      {
        goto LABEL_12;
      }

      (*(v12 + 8))(&v26);
      v13 = v26;
      v15 = v27;
      v14 = v28;
      v29 = v11;
      v16 = *(v11 + 16);
      if (v16 >= *(v11 + 24) >> 1)
      {
        v22 = v26;
        sub_217276E20();
        v13 = v22;
        v11 = v29;
      }

      *(v11 + 16) = v16 + 1;
      v17 = v11 + 32 * v16;
      *(v17 + 32) = v13;
      ++v9;
      *(v17 + 48) = v15;
      *(v17 + 56) = v14;
      v10 += 16;
      if (v8 == v9)
      {

        v19 = v31;
        v20 = v30;
        v5 = a2;
        v7 = a4;
        v6 = a1;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v21 = sub_217753348();
    MEMORY[0x21CEA23B0](v21);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AADF0);
    result = OUTLINED_FUNCTION_4_0();
    __break(1u);
  }

  else
  {

    v19 = 0;
    v11 = MEMORY[0x277D84F90];
    v20 = 1;
LABEL_10:
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = v19;
    *(v7 + 24) = xmmword_217797640;
    *(v7 + 40) = v20;
    *(v7 + 48) = v11;
  }

  return result;
}

uint64_t MusicLibrarySearchRequest.term.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t MusicLibrarySearchRequest.types.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v19 = MEMORY[0x277D84F90];
  sub_217277044(0, v2, 0);
  v4 = 0;
  v3 = v19;
  v5 = (v1 + 56);
  while (v4 < *(v1 + 16))
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = dynamic_cast_existential_1_conditional(*(v5 - 3));
    if (!v8)
    {
      goto LABEL_10;
    }

    v10 = v8;
    v11 = v9;
    v13 = *(v19 + 16);
    v12 = *(v19 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_217277044(v12 > 1, v13 + 1, 1);
    }

    *(v19 + 16) = v13 + 1;
    v14 = v19 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
    ++v4;
    v5 += 4;
    if (v2 == v4)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
  sub_217751DE8();
  sub_217285954(1);
  v16 = sub_217752918();
  v18 = v17;

  MEMORY[0x21CEA23B0](v16, v18);

  sub_217751DE8();
  sub_2172857F8(1uLL);
  sub_217285A70();
  sub_217751DE8();
  sub_217752048();

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);

  MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177AAE20);
  result = OUTLINED_FUNCTION_4_0();
  __break(1u);
  return result;
}

uint64_t MusicLibrarySearchRequest._topResultsLimit.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t MusicLibrarySearchRequest._topResultsLimit.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MusicLibrarySearchRequest.response()(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *(v2 + 16) = *v1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = *(v1 + 24);
  *(v2 + 56) = v6;
  *(v2 + 64) = v7;
  v8 = swift_task_alloc();
  *(v2 + 72) = v8;
  *v8 = v2;
  v8[1] = sub_2176D6320;

  return MusicLibrarySearchRequest.response(revisionID:)(a1, 0);
}

uint64_t sub_2176D6320()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2176D6454, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t MusicLibrarySearchRequest.response(revisionID:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1632) = a2;
  *(v3 + 1624) = a1;
  v4 = *(v2 + 8);
  *(v3 + 1640) = *v2;
  *(v3 + 1648) = v4;
  *(v3 + 1712) = *(v2 + 16);
  *(v3 + 1656) = *(v2 + 24);
  *(v3 + 1713) = *(v2 + 40);
  *(v3 + 1672) = *(v2 + 48);
  return MEMORY[0x2822009F8](sub_2176D64C0, 0, 0);
}

uint64_t sub_2176D64C0()
{
  v23 = v0;
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse))
  {
    v22[0] = *(v0 + 1672);
    v2 = *(v1 + 16);
    sub_217751DE8();
    OUTLINED_FUNCTION_709();
    v2();
  }

  v22[0] = *(v0 + 1672);
  v3 = v22[0];
  sub_217751DE8();
  v4 = sub_2176D713C(v22);

  v22[0] = v3;
  sub_217751DE8();
  *(v0 + 1680) = sub_2176D7A04(v22);

  v5 = *(v4 + 16);
  if (v5)
  {
    v22[0] = MEMORY[0x277D84F90];
    sub_217752BF8();
    v6 = 32;
    do
    {
      [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibrarySearchScope) initWithModelObjectType_];
      sub_217752BC8();
      v7 = *(v22[0] + 16);
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
      ++v6;
      --v5;
    }

    while (v5);

    v8 = v22[0];
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 1712);
  *(v0 + 1552) = v8;
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = objc_opt_self();
  sub_217503F84();
  v11 = sub_217752288();
  v12 = [v10 scopeForTopResultsWithSpecificModelObjectTypeScopes_];

  sub_2176D9528(0, v8);
  v13 = sub_2171F63F0(v8);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = sub_217204DD0(v8);
  v15 = __OFADD__(v14, 1);
  v13 = v14 + 1;
  if (v15)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x282200938](v13);
  }

  sub_21721524C(v13, 1);
  sub_217503C58(0, 0, 1, v12);
  v8 = *(v0 + 1552);
LABEL_12:
  *(v0 + 1688) = v8;
  v16 = *(v0 + 1656);
  v17 = *(v0 + 1648);
  v18 = *(v0 + 1640);
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibrarySearchRequest);
  sub_217751DE8();
  sub_217751DE8();
  v19 = sub_2176D92A4(v18, v17, v8, v16);
  *(v0 + 1696) = v19;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 776;
  *(v0 + 24) = sub_2176D687C;
  v20 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD58, &qword_217797660);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2172AB494;
  *(v0 + 104) = &block_descriptor_17;
  *(v0 + 112) = v20;
  [v19 performWithCompletionHandler_];
  v13 = v0 + 16;

  return MEMORY[0x282200938](v13);
}

uint64_t sub_2176D687C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1704) = v3;
  if (v3)
  {
    v4 = *(v1 + 1688);
    v5 = *(v1 + 1680);

    v6 = sub_2176D7088;
  }

  else
  {
    v6 = sub_2176D69A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2176D69A0()
{
  v89 = v0;
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1680);
  v3 = *(v0 + 1713);
  v4 = *(v0 + 1664);
  v5 = MEMORY[0x277D84F90];
  v6 = *(v0 + 776);
  *(v0 + 1560) = MEMORY[0x277D84F90];
  *(v0 + 1568) = v5;
  *(v0 + 1576) = v5;
  *(v0 + 1584) = v5;
  *(v0 + 1592) = v5;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2CD68, &qword_217797668);
  sub_2176D9354();
  *(v0 + 1600) = sub_217751DC8();

  if (v3)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  *(v0 + 1608) = v5;
  *(v0 + 1616) = v5;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v7;
  v9[4] = v0 + 1560;
  v9[5] = v0 + 1568;
  v9[6] = v0 + 1576;
  v9[7] = v0 + 1584;
  v9[8] = v0 + 1592;
  v9[9] = v0 + 1616;
  v9[10] = v8;
  v9[11] = v0 + 1608;
  v9[12] = v0 + 1600;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2176D93A8;
  *(v10 + 24) = v9;
  *(v0 + 112) = sub_2176D93DC;
  *(v0 + 120) = v10;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2176D8D48;
  *(v0 + 104) = &block_descriptor_8;
  v81 = (v0 + 80);
  v11 = _Block_copy((v0 + 80));
  v12 = *(v0 + 120);
  v13 = v7;

  [v13 enumerateSectionLegacyObjectTypesUsingBlock_];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v78 = v13;
    v16 = *(v0 + 1672);
    v17 = *(v0 + 1648);
    v18 = *(v0 + 1640);
    v19 = *(v0 + 1608);
    v20 = *(v0 + 1560);
    v21 = *(v0 + 1568);
    v22 = *(v0 + 1576);
    v23 = *(v0 + 1584);
    v79 = *(v0 + 1592);
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    *(v0 + 808) = 0;
    v83 = v18;
    v84 = v17;
    v85 = v16;
    sub_217751DE8();
    v24 = (v0 + 1472);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA6A4();
    sub_2174AA1AC();
    sub_2174AA180();
    sub_2174AA128();
    sub_2174AA0FC();
    sub_2174AA078();
    sub_2176D9404(v0 + 776, v0 + 1472);
    if (*(v0 + 1496))
    {
      v25 = *(v0 + 1504);
      __swift_project_boxed_opaque_existential_1((v0 + 1472), *(v0 + 1496));
      OUTLINED_FUNCTION_2_130();
      sub_2171F06D8(v0 + 776, &qword_27CB2CD78, &unk_217797670);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1472));
    }

    else
    {
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v26, v27, v28);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v29, v30, v31);
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
    }

    OUTLINED_FUNCTION_0_144(*(v0 + 1632));
    memcpy(v81, v32, 0x2B8uLL);
    *(v0 + 1504) = 0;
    *v24 = 0u;
    *(v0 + 1488) = 0u;
    v80 = (v0 + 1512);
    if (dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse))
    {
      v34 = (*(v33 + 8))();
      v36 = v35;
      sub_2176D94C8(v81, v0 + 776);
      v37 = *(v0 + 1616);
      v82[0] = *(v0 + 1600);
      v82[1] = v37;
      v38 = *(v36 + 8);
      *(v0 + 1536) = v34;
      *(v0 + 1544) = v36;
      __swift_allocate_boxed_opaque_existential_0((v0 + 1512));
      sub_217751DE8();
      sub_217751DE8();
      v38(v0 + 776, v82, v34, v36);
      sub_2171F06D8(v0 + 1472, &qword_27CB2CD78, &unk_217797670);
      v39 = *(v0 + 1528);
      *v24 = *v80;
      *(v0 + 1488) = v39;
      *(v0 + 1504) = *(v0 + 1544);
    }

    v40 = *(v0 + 1672);
    v41 = *(v0 + 1648);
    v42 = *(v0 + 1640);
    v43 = *(v0 + 1608);
    v44 = *(v0 + 1560);
    v45 = *(v0 + 1568);
    v46 = *(v0 + 1576);
    v47 = *(v0 + 1584);
    v77 = *(v0 + 1592);
    sub_2176D9404(v0 + 1472, v0 + 776);
    v83 = v42;
    v84 = v41;
    v85 = v40;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA6A4();
    sub_2174AA1AC();
    sub_2174AA180();
    sub_2174AA128();
    sub_2174AA0FC();
    sub_2174AA078();
    sub_2176D9404(v0 + 776, v80);
    v48 = *(v0 + 1696);
    if (*(v0 + 1536))
    {
      v49 = *(v0 + 1544);
      __swift_project_boxed_opaque_existential_1(v80, *(v0 + 1536));
      OUTLINED_FUNCTION_2_130();

      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v50, v51, v52);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v53, v54, v55);
      sub_2176D9474(v81);
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {

      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v56, v57, v58);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v59, v60, v61);
      sub_2176D9474(v81);
      OUTLINED_FUNCTION_709();
      sub_2171F06D8(v62, v63, v64);
      v86 = 0u;
      v87 = 0u;
      v88 = 0;
    }

    v65 = *(v0 + 1624);
    OUTLINED_FUNCTION_0_144(*(v0 + 1632));
    memcpy(v66, v67, 0x2B8uLL);
    v68 = *(v0 + 1616);

    v69 = *(v0 + 1608);

    v70 = *(v0 + 1600);

    v71 = *(v0 + 1592);

    v72 = *(v0 + 1584);

    v73 = *(v0 + 1576);

    v74 = *(v0 + 1568);

    v75 = *(v0 + 1560);

    v76 = *(v0 + 8);

    return v76();
  }

  return result;
}

uint64_t sub_2176D7088()
{
  v1 = v0[213];
  v2 = v0[212];
  swift_willThrow();
  sub_21728FC9C();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2176D713C(void *a1)
{
  v1 = *a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2177643C0;
  if (qword_280BEB138 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v3 = xmmword_280BEB150;
    *(inited + 32) = xmmword_280BEB140;
    *(inited + 48) = v3;
    v4 = qword_280BE6378;
    sub_217751DE8();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = xmmword_280BE6390;
    *(inited + 64) = xmmword_280BE6380;
    *(inited + 80) = v5;
    v6 = qword_280BE62A0;
    sub_217751DE8();
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_280BE62B8;
    v7 = unk_280BE62C0;
    *(inited + 96) = xmmword_280BE62A8;
    *(inited + 112) = v8;
    *(inited + 120) = v7;
    sub_217751DE8();
    v9 = sub_217261AA8(inited);
    v10 = sub_2172C93E4(v1);
    v11 = v10[2];
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v9 + 56;
    v14 = MEMORY[0x277D84F90];
    v81 = xmmword_2177586E0;
    v87 = v9 + 56;
    v88 = v9;
    while (1)
    {
      v15 = v10[4];
      v89 = v10[5];
      v90 = v15;
      v17 = v10[6];
      v16 = v10[7];
      sub_217751DE8();
      if (!swift_isUniquelyReferenced_nonNull_native() || (v11 - 1) > v10[3] >> 1)
      {
        sub_2172B1AC0();
        v10 = v18;
      }

      sub_2176D96F0((v10 + 4));
      v19 = v10[2];
      memmove(v10 + 4, v10 + 8, 32 * v19 - 32);
      v10[2] = v19 - 1;
      v104 = v10;
      v20 = v89;
      v21 = v90;
      if (sub_2174FC700(v90, v89, v17, v16, v9))
      {
        break;
      }

      if (!dynamic_cast_existential_1_conditional(v21))
      {
        v97 = 0;
        v98 = 0xE000000000000000;
        sub_217752AA8();
        v103[0] = v97;
        v103[1] = v98;
        MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
        sub_217751DE8();
        sub_217285954(1);
        v72 = sub_217752918();
        v74 = v73;

        v97 = 46;
        v98 = 0xE100000000000000;
        MEMORY[0x21CEA23B0](v72, v74);

        v75 = v97;
        v76 = v98;
        sub_217751DE8();
        v77 = sub_2172857F8(1uLL);
        v101 = v75;
        v102 = v76;
        v97 = v77;
        v98 = v78;
        v99 = v79;
        v100 = v80;
        sub_217285A70();
        sub_217751DE8();
        sub_217752048();

        MEMORY[0x21CEA23B0](v101, v102);

        MEMORY[0x21CEA23B0](0xD00000000000003DLL, 0x80000002177B29D0);
        result = sub_217752D08();
        __break(1u);
        return result;
      }

      (*(v54 + 8))(&v97);

      v55 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B35FC(0, *(v14 + 16) + 1, 1, v14);
        v14 = v65;
      }

      v57 = *(v14 + 16);
      v56 = *(v14 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_2172B35FC(v56 > 1, v57 + 1, 1, v14);
        v14 = v66;
      }

      *(v14 + 16) = v57 + 1;
      *(v14 + v57 + 32) = v55;
LABEL_64:
      v10 = v104;
      v11 = v104[2];
      if (!v11)
      {

        goto LABEL_67;
      }
    }

    v85 = v14;
    v22 = swift_initStackObject();
    v23 = v20;
    v24 = v22;
    *(v22 + 16) = v81;
    *(v22 + 32) = v21;
    *(v22 + 40) = v23;
    v83 = v17;
    v84 = v16;
    *(v22 + 48) = v17;
    *(v22 + 56) = v16;
    sub_217751DE8();
    v103[0] = sub_217261AA8(v24);
    v25 = 1 << *(v9 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v9 + 56);
    v1 = ((v25 + 63) >> 6);
    v28 = sub_217751DE8();
    v30 = 0;
    inited = v12;
    for (i = v1; v27; v1 = i)
    {
LABEL_20:
      v96 = &v81;
      v32 = (*(v9 + 48) + ((v30 << 11) | (32 * __clz(__rbit64(v27)))));
      v33 = *v32;
      v34 = v32[1];
      v36 = v32[2];
      v35 = v32[3];
      v37 = v104;
      v97 = *v32;
      v98 = v34;
      v99 = v36;
      v100 = v35;
      MEMORY[0x28223BE20](v28, v29);
      sub_217751DE8();
      if (sub_2173DDBE4())
      {
        sub_217751DE8();
        v1 = v103;
        sub_217500C88(&v97, v33, v34, v36, v35);

        sub_217751DE8();
        v96 = v36;
        v38 = sub_2176D5C38(v37, v33, v34, v36, v35);
        if (v39)
        {
          v40 = *(v37 + 16);
          v41 = v40;
        }

        else
        {
          v40 = v38;
          v41 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_74;
          }

          v86 = inited;
          inited = 32 * v38;
          v42 = v96;
          while (1)
          {
            v43 = *(v37 + 16);
            if (v41 == v43)
            {
              break;
            }

            if (v41 >= v43)
            {
              __break(1u);
              goto LABEL_69;
            }

            v1 = (v37 + inited);
            if (*(v37 + inited + 80) != v42 || *(v37 + inited + 88) != v35)
            {
              if (sub_217753058())
              {
                v42 = v96;
              }

              else
              {
                if (v41 != v40)
                {
                  if (v40 >= v43)
                  {
                    goto LABEL_70;
                  }

                  v45 = v37 + 32 + 32 * v40;
                  v93 = *v45;
                  v46 = *(v45 + 24);
                  v92 = *(v45 + 16);
                  v95 = *(v1 + 4);
                  v47 = v1[10];
                  v1 = v1[11];
                  v94 = v47;
                  v48 = v46;
                  sub_217751DE8();
                  sub_217751DE8();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_2175036E8(v37);
                    v37 = v53;
                  }

                  if (v40 >= *(v37 + 16))
                  {
                    goto LABEL_71;
                  }

                  v49 = v37 + 32 * v40;
                  v50 = *(v49 + 56);
                  *(v49 + 32) = v95;
                  *(v49 + 48) = v94;
                  *(v49 + 56) = v1;

                  if (v41 >= *(v37 + 16))
                  {
                    goto LABEL_72;
                  }

                  v51 = v37 + inited;
                  v52 = *(v37 + inited + 88);
                  *(v51 + 64) = v93;
                  *(v51 + 80) = v92;
                  *(v51 + 88) = v48;

                  v104 = v37;
                }

                v42 = v96;
                ++v40;
              }
            }

            ++v41;
            inited += 32;
          }

          inited = v86;
          if (v41 < v40)
          {
            goto LABEL_73;
          }
        }

        sub_2175B152C(v40, v41);
      }

      v27 &= v27 - 1;

      v13 = v87;
      v9 = v88;
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v1)
      {

        v58 = *(v103[0] + 16);

        if (v58 == 1)
        {
          v59 = inited;
          v97 = v90;
          v98 = v89;
          v99 = v83;
          v100 = v84;
          MusicItemTypeValue.underlyingLegacyModelObjectType.getter();

          v60 = v101;
          v14 = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B35FC(0, *(v14 + 16) + 1, 1, v14);
            v14 = v67;
          }

          v62 = *(v14 + 16);
          v61 = *(v14 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_2172B35FC(v61 > 1, v62 + 1, 1, v14);
            v14 = v68;
          }

          *(v14 + 16) = v62 + 1;
          *(v14 + v62 + 32) = v60;
        }

        else
        {

          v14 = v85;
          v59 = inited;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B35FC(0, *(v14 + 16) + 1, 1, v14);
            v14 = v69;
          }

          v64 = *(v14 + 16);
          v63 = *(v14 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2172B35FC(v63 > 1, v64 + 1, 1, v14);
            v14 = v70;
          }

          *(v14 + 16) = v64 + 1;
          *(v14 + v64 + 32) = 28;
        }

        v12 = v59;
        goto LABEL_64;
      }

      v27 = *(v13 + 8 * v31);
      ++v30;
      if (v27)
      {
        v30 = v31;
        goto LABEL_20;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_67:

  return v14;
}

uint64_t sub_2176D7A04(uint64_t *a1)
{
  v1 = *a1;
  sub_2176D9354();
  v2 = sub_217751DC8();
  v40 = *(v1 + 16);
  sub_217751DE8();
  v3 = 0;
  v41 = v1;
  v4 = (v1 + 56);
  while (v40 != v3)
  {
    if (v3 >= *(v41 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v6 = *(v4 - 3);
    v5 = *(v4 - 2);
    v7 = *v4;
    v42 = v3;
    v43 = *(v4 - 1);
    v8 = dynamic_cast_existential_1_conditional(v6);
    if (!v8)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      swift_bridgeObjectRetain_n();
      sub_217752AA8();
      v50 = v44;
      v51 = v45;
      MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
      sub_217751DE8();
      sub_217285954(1);
      v31 = sub_217752918();
      v33 = v32;

      v44 = 46;
      v45 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v31, v33);

      v34 = v44;
      v35 = v45;
      sub_217751DE8();
      v36 = sub_2172857F8(1uLL);
      v48 = v34;
      v49 = v35;
      v44 = v36;
      v45 = v37;
      v46 = v38;
      v47 = v39;
      sub_217285A70();
      sub_217751DE8();
      sub_217752048();

      MEMORY[0x21CEA23B0](v48, v49);

      MEMORY[0x21CEA23B0](0xD00000000000003DLL, 0x80000002177B29D0);
      sub_217752D08();
      __break(1u);
LABEL_23:
      result = sub_217753178();
      __break(1u);
      return result;
    }

    v10 = v8;
    v11 = v9;
    v12 = *(v9 + 8);
    v13 = v7;
    sub_217751DE8();
    v12(&v44, v10, v11);
    v14 = v44;
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v2;
    v15 = sub_217632AB4();
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v2 = (v17 + v18);
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v15;
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F88, &unk_21775ABD0);
    if (sub_217752CB8())
    {
      v21 = sub_217632AB4();
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_23;
      }

      v19 = v21;
    }

    v2 = v44;
    if (v20)
    {
      v23 = (*(v44 + 56) + 32 * v19);
      v24 = v23[3];
      *v23 = v6;
      v23[1] = v5;
      v23[2] = v43;
      v23[3] = v13;
    }

    else
    {
      *(v44 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      *(v2[6] + v19) = v14;
      v25 = (v2[7] + 32 * v19);
      *v25 = v6;
      v25[1] = v5;
      v25[2] = v43;
      v25[3] = v13;
      v26 = v2[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v2[2] = v28;
    }

    v4 += 4;
    v3 = v42 + 1;
  }

  if (qword_280BE62A0 == -1)
  {
    goto LABEL_15;
  }

LABEL_21:
  swift_once();
LABEL_15:
  sub_217751DE8();
  swift_isUniquelyReferenced_nonNull_native();
  v44 = v2;
  sub_2172C896C();
  v29 = v44;
  if (qword_280BE6318 != -1)
  {
    swift_once();
  }

  sub_217751DE8();
  swift_isUniquelyReferenced_nonNull_native();
  v44 = v29;
  sub_2172C896C();
  return v44;
}

uint64_t sub_2176D7E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_2173AAFE8(a2, &aBlock);
  v17 = aBlock;
  if (*(a4 + 16))
  {
    v18 = sub_217632AB4();
    if (v19)
    {
      v20 = (*(a4 + 56) + 32 * v18);
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      aBlock = *v20;
      v21 = aBlock;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      sub_217751DE8();
      v25 = MusicItemTypeValue.underlyingLegacyModelObjectConvertibleType.getter();
      v27 = v26;
      v33 = [a5 results];
      v28 = swift_allocObject();
      *(v28 + 16) = a1;
      *(v28 + 24) = v21;
      *(v28 + 32) = v22;
      *(v28 + 40) = v23;
      *(v28 + 48) = v24;
      *(v28 + 56) = a5;
      *(v28 + 64) = v25;
      *(v28 + 72) = v27;
      *(v28 + 80) = v17;
      *(v28 + 88) = a6;
      *(v28 + 96) = a7;
      *(v28 + 104) = a8;
      *(v28 + 112) = a9;
      *(v28 + 120) = a10;
      *(v28 + 128) = a11;
      *(v28 + 136) = a12;
      *(v28 + 144) = a13;
      *(v28 + 152) = a14;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_2176D95E8;
      *(v29 + 24) = v28;
      v41 = sub_21728FE64;
      v42 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_2174EDE10;
      v40 = &block_descriptor_18_0;
      v30 = _Block_copy(&aBlock);
      v31 = a5;

      v17 = v33;
      [v33 enumerateItemIdentifiersInSectionAtIndex:a1 usingBlock:v30];

      _Block_release(v30);
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if ((v30 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  aBlock = 0;
  v38 = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000057, 0x80000002177B5720);
  v43 = v17;
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2176D81A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, unsigned __int8 a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t a19, uint64_t *a20, uint64_t *a21)
{
  v91 = a1;
  v92 = a4;
  v89 = a12;
  v88 = a11;
  v90 = a10;
  v86 = a9;
  v26 = sub_217751968();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v85 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_217759200;
  v37 = v91;
  *(v36 + 32) = v92;
  *(v36 + 40) = v37;
  MEMORY[0x21CEA1CB0]();
  *&v98 = a5;
  *(&v98 + 1) = a6;
  *&v99 = a7;
  *(&v99 + 1) = a8;
  *&v95 = &unk_282960118;
  LOBYTE(v93[0]) = 4;
  swift_unknownObjectRetain();
  sub_217751DE8();
  sub_2172B6904(a2, &v98, &v95, v93, &v102);
  v91 = v27;
  v92 = v26;
  v38 = *(v27 + 16);
  v87 = v35;
  v38(v31, v35, v26);
  v39 = [v86 results];
  v40 = [v39 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v40;
  *&v100[0] = 0;
  v98 = 0u;
  v99 = 0u;
  *&v95 = a5;
  *(&v95 + 1) = a6;
  *&v96 = a7;
  *(&v96 + 1) = a8;
  LOBYTE(v93[0]) = 1;
  v41 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_217751DE8();
  v44 = MEMORY[0x277D84F90];
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v103 + 1) = v41;
  *&v104[0] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  v45 = v89;
  LOBYTE(v98) = v89;
  v46 = v88;
  v47 = *(v88 + 24);
  v48 = v90;
  v101[3] = v90;
  v101[4] = v88;
  *&v102 = v49;
  __swift_allocate_boxed_opaque_existential_0(v101);

  v47(&v102, &v98, v48, v46);
  sub_2171FF30C(v101, &v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v50 = a13;
    v102 = v98;
    v103 = v99;
    v104[0] = v100[0];
    *&v104[1] = *&v100[1];
    sub_21725CF0C(&v102, &v98);
    sub_21770B6E4();
    v51 = *(*a13 + 16);
    sub_21770BA14(v51);

    sub_21725CE44(&v102);
    (*(v91 + 8))(v87, v92);
LABEL_12:
    v55 = *v50;
    *(v55 + 16) = v51 + 1;
    v56 = v55 + 56 * v51;
    v57 = v98;
    v58 = v99;
    v59 = v100[0];
    v60 = *&v100[1];
    goto LABEL_13;
  }

  v52 = v91;
  v53 = v92;
  v54 = v87;
  v99 = 0u;
  memset(v100, 0, 24);
  v98 = 0u;
  sub_2171F06D8(&v98, &unk_27CB275E0, &qword_2177589D0);
  sub_2171FF30C(v101, &v95);
  if (swift_dynamicCast())
  {
    v50 = a14;
    v102 = v98;
    v103 = v99;
    v104[0] = v100[0];
    *&v104[1] = *&v100[1];
    sub_21725CF68(&v102, &v98);
    sub_21770B6B4();
    v51 = *(*a14 + 16);
    sub_21770B9E4(v51);

    sub_217284498(&v102);
LABEL_11:
    (*(v52 + 8))(v54, v53);
    goto LABEL_12;
  }

  v50 = a15;
  v99 = 0u;
  memset(v100, 0, 24);
  v98 = 0u;
  sub_2171F06D8(&v98, &qword_27CB2CD90, &unk_21775A2C0);
  sub_2171FF30C(v101, &v95);
  if (swift_dynamicCast())
  {
    v102 = v98;
    v103 = v99;
    v104[0] = v100[0];
    *&v104[1] = *&v100[1];
    sub_217283BAC(&v102, &v98);
    sub_21770B66C();
    v51 = *(*a15 + 16);
    sub_21770B99C(v51);

    sub_217283C08(&v102);
    goto LABEL_11;
  }

  v99 = 0u;
  memset(v100, 0, 24);
  v98 = 0u;
  sub_2171F06D8(&v98, &qword_27CB24550, &qword_217758A58);
  sub_2171FF30C(v101, &v95);
  if (swift_dynamicCast())
  {
    v50 = a16;
    v102 = v98;
    v103 = v99;
    v104[0] = v100[0];
    *&v104[1] = *&v100[1];
    sub_2172757C0(&v102, &v98);
    sub_21770B63C();
    v51 = *(*a16 + 16);
    sub_21770B96C(v51);

    sub_21726B8C4(&v102);
    goto LABEL_11;
  }

  v99 = 0u;
  memset(v100, 0, 24);
  v98 = 0u;
  sub_2171F06D8(&v98, &unk_27CB28A90, &qword_217758F90);
  sub_2171FF30C(v101, &v95);
  if (swift_dynamicCast())
  {
    v102 = v98;
    v103 = v99;
    v104[0] = v100[0];
    *&v104[1] = *&v100[1];
    sub_217283AFC(&v102, &v98);
    v50 = a17;
    sub_21770B5DC();
    v51 = *(*a17 + 16);
    sub_21770B90C(v51);

    sub_217283B58(&v102);
    goto LABEL_11;
  }

  v99 = 0u;
  memset(v100, 0, 24);
  v98 = 0u;
  sub_2171F06D8(&v98, &qword_27CB277F0, &unk_21775A2B0);
  sub_2171FF30C(v101, &v95);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v99 = 0u;
    memset(v100, 0, 24);
    v98 = 0u;
    BYTE8(v100[1]) = -1;
    sub_2171F06D8(&v98, &unk_27CB28AA0, &qword_21775A020);
    sub_2171FF30C(v101, &v95);
    if (swift_dynamicCast())
    {
      v102 = v98;
      v103 = v99;
      v104[0] = v100[0];
      *(v104 + 9) = *(v100 + 9);
      if (*(*a18 + 16) < a19)
      {
        sub_21770B894();
        v64 = *(*a18 + 16);
        sub_21770BBC4(v64);
        v65 = *a18;
        *(v65 + 16) = v64 + 1;
        sub_21753DFEC(&v102, v65 + (v64 << 6) + 32);
      }

      if (*(*a20 + 16) < a19)
      {
        sub_21753DFEC(&v102, v93);
        MusicLibrarySearchResponse.TopResult.init(_:)(v93, &v95);
        if (BYTE8(v97[1]) == 255)
        {

          sub_217541740(&v102);
          (*(v52 + 8))(v54, v53);
          sub_2171F06D8(&v95, &qword_27CB2CDA0, &qword_21775A310);
          return __swift_destroy_boxed_opaque_existential_1(v101);
        }

        v98 = v95;
        v99 = v96;
        v100[0] = v97[0];
        *(v100 + 9) = *(v97 + 9);
        sub_2172843E8(&v98, &v95);
        sub_21770B87C();
        v66 = *(*a20 + 16);
        sub_21770BBAC(v66);

        sub_217284444(&v98);
        sub_217541740(&v102);
        (*(v52 + 8))(v54, v53);
        v67 = *a20;
        *(v67 + 16) = v66 + 1;
        v56 = v67 + (v66 << 6);
        v57 = v95;
        v58 = v96;
        v59 = v97[0];
        *(v56 + 73) = *(v97 + 9);
        goto LABEL_14;
      }

      sub_217541740(&v102);
    }

    else
    {
      v99 = 0u;
      memset(v100, 0, 24);
      v98 = 0u;
      BYTE8(v100[1]) = -1;
      sub_2171F06D8(&v98, &qword_27CB2CD98, &unk_217797768);
      v90 = a21;
      v69 = sub_2173ACC74(v45, *a21);
      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v70 = v44;
      }

      sub_2171FF30C(v101, &v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v98 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v82 = *(v70 + 16);
        sub_2172B2E28();
        v70 = v83;
        *&v98 = v83;
      }

      v72 = *(v70 + 16);
      if (v72 >= *(v70 + 24) >> 1)
      {
        sub_2172B2E28();
        *&v98 = v84;
      }

      v73 = *(&v103 + 1);
      v88 = *&v104[0];
      v74 = __swift_mutable_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
      v86 = &v85;
      v75 = *(*(v73 - 8) + 64);
      v76 = MEMORY[0x28223BE20](v74, v74);
      v78 = &v85 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v79 + 16))(v78, v76);
      sub_2176D9658(v72, v78, &v98, v73, v88);
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v80 = v90;
      v81 = *v90;
      swift_isUniquelyReferenced_nonNull_native();
      *&v102 = *v80;
      sub_2172C8A84();
      *v80 = v102;
    }

    (*(v52 + 8))(v54, v53);
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v102 = v98;
  v103 = v99;
  v104[0] = v100[0];
  *(v104 + 9) = *(v100 + 9);
  sub_217275710(&v102, &v98);
  v62 = (v52 + 8);
  v95 = v98;
  v96 = v99;
  v97[0] = v100[0];
  *&v97[1] = *&v100[1];
  if (BYTE8(v100[1]))
  {
    sub_217283BAC(&v95, v93);
    sub_21770B66C();
    v63 = *(*a15 + 16);
    sub_21770B99C(v63);

    sub_217283C08(&v95);
  }

  else
  {
    sub_217283AFC(&v95, v93);
    v50 = a17;
    sub_21770B5DC();
    v63 = *(*a17 + 16);
    sub_21770B90C(v63);

    sub_217283B58(&v95);
  }

  sub_21727576C(&v102);
  (*v62)(v54, v53);
  v68 = *v50;
  *(v68 + 16) = v63 + 1;
  v56 = v68 + 56 * v63;
  v57 = v93[0];
  v58 = v93[1];
  v59 = v93[2];
  v60 = v94;
LABEL_13:
  *(v56 + 80) = v60;
LABEL_14:
  *(v56 + 48) = v58;
  *(v56 + 64) = v59;
  *(v56 + 32) = v57;
  return __swift_destroy_boxed_opaque_existential_1(v101);
}

uint64_t static MusicLibrarySearchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7 || v4 != v9)
    {
      return 0;
    }
  }

  else if ((sub_217753058() & 1) == 0 || v2 != v7 || v4 != v9)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return sub_217270BE0(v6, v11);
}

void MusicLibrarySearchRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  v10 = v2[6];
  sub_217751FF8();
  sub_217753208();
  MEMORY[0x21CEA3550](v8);
  sub_217753208();
  if (v9 != 1)
  {
    MEMORY[0x21CEA3550](v7);
  }

  sub_21727D7C8(a1, v10);
}

uint64_t MusicLibrarySearchRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  sub_2177531E8();
  sub_217751FF8();
  sub_217753208();
  MEMORY[0x21CEA3550](v5);
  sub_217753208();
  if (v6 != 1)
  {
    MEMORY[0x21CEA3550](v4);
  }

  sub_21727D7C8(v9, v7);
  return sub_217753238();
}

uint64_t sub_2176D8FD8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = v2;
  v8 = *(v0 + 24);
  v9 = v3;
  v10 = v4;
  sub_2177531E8();
  MusicLibrarySearchRequest.hash(into:)(v6);
  return sub_217753238();
}

uint64_t static MusicLibrarySearchRequest.supportedTypeValues.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217775F00;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(inited + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(inited + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6278);
  *(inited + 80) = v5;
  *(inited + 88) = v4;
  v6 = qword_280BE6378;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(inited + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6380);
  *(inited + 112) = v8;
  *(inited + 120) = v7;
  v9 = qword_280BE6220;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  *(inited + 128) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(inited + 144) = v11;
  *(inited + 152) = v10;
  v12 = qword_280BEB138;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = xmmword_280BEB150;
  *(inited + 160) = xmmword_280BEB140;
  *(inited + 176) = v13;
  v14 = dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse);
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v15 + 8);
    sub_217751DE8();
    v18(v16, v17);
    v20 = (*(v19 + 32))();
    sub_217543D94(v20);
  }

  else
  {
    sub_217751DE8();
  }

  sub_2173DB0FC(inited);
  v22 = v21;

  return v22;
}

id sub_2176D92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_217751F18();

  sub_217503F84();
  v7 = sub_217752288();

  v8 = [v4 initWithSearchTerm:v6 scopes:v7 limit:a4];

  return v8;
}

unint64_t sub_2176D9354()
{
  result = qword_280BE2E90[0];
  if (!qword_280BE2E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE2E90);
  }

  return result;
}

uint64_t sub_2176D93DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2176D9404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CD78, &unk_217797670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2176D9528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_217752D38();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_2176D9584()
{
  result = qword_27CB2CD80;
  if (!qword_27CB2CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD80);
  }

  return result;
}

uint64_t block_copy_helper_16_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2176D9658(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_21726B918(&v12, v10 + 40 * a1 + 32);
}

uint64_t CodingUserInfoKey.init(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDA8, &qword_217797888);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v13 - v9;
  sub_217751DE8();
  sub_217752C98();
  v11 = sub_217752CA8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2176D98E8(v10);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177B57B0);
    MEMORY[0x21CEA23B0](a1, a2);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {

    return (*(*(v11 - 8) + 32))(a3, v10, v11);
  }

  return result;
}

uint64_t sub_2176D98E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDA8, &qword_217797888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.propertyProvider.getter()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_5_103(v5);
  v7(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v0, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 40))(v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

void static LegacyModelInternalPolymorphicMusicItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v41 - v15;
  v42 = v17;
  v18 = type metadata accessor for LegacyModelInternalPolymorphicMusicItem();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(*(TupleTypeMetadata2 - 8) + 64);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8, v21);
  v24 = (&v41 - v23);
  v26 = *(v25 + 56);
  v27 = *(*(v18 - 8) + 16);
  v27(&v41 - v23, v5, v18, v22);
  (v27)(v24 + v26, v3, v18);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v5 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21726B918(v24, v44);
      sub_21726B918((v24 + v26), v43);
      v29 = v45;
      v30 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v31 = *(v30 + 48);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB293E8, &unk_217776CE0);
      v31(v43, v32, v29, v30);
      __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v44);
      goto LABEL_10;
    }

    sub_21726B918(v24, v44);
    v35 = v7;
    (*(v7 + 32))(v16, v24 + v26, v1);
LABEL_8:
    v36 = v45;
    v37 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v37 + 48))(v16, v1, v36, v37);
    (*(v35 + 8))(v16, v1);
    goto LABEL_9;
  }

  v33 = *(v7 + 32);
  v33(v16, v24, v1);
  v34 = EnumCaseMultiPayload == 1;
  v35 = v7;
  if (v34)
  {
    sub_21726B918((v24 + v26), v44);
    goto LABEL_8;
  }

  v38 = v41;
  v33(v41, (v24 + v26), v1);
  v39 = *(*(v42 + 32) + 8);
  sub_217751F08();
  v40 = *(v35 + 8);
  v40(v38, v1);
  v40(v16, v1);
LABEL_10:
  OUTLINED_FUNCTION_13();
}

void LegacyModelInternalPolymorphicMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v32 = v8;
  v33 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  memcpy(v37, v11, 0x161uLL);
  v21 = dynamic_cast_existential_1_conditional(v3);
  if (v21)
  {
    OUTLINED_FUNCTION_4_126(v21, v22);
    v24 = v23();
    v26 = v25;
    memcpy(v35, v11, 0x161uLL);
    sub_21736C814(v7, v34);
    v27 = *(v26 + 16);
    v28 = *(v27 + 16);
    v36[3] = v24;
    v36[4] = v26;
    __swift_allocate_boxed_opaque_existential_0(v36);
    v28(v35, v32, v34, v5, v24, v27);
    sub_217638634(v7);
    sub_2171FF30C(v36, v33);
    OUTLINED_FUNCTION_113();
    type metadata accessor for LegacyModelInternalPolymorphicMusicItem();
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {

    v29 = v37[0];
    v30 = v37[1];
    v31 = *(v1 + 40);
    sub_217751DE8();
    v31(v29, v30, v3, v1);
    swift_unknownObjectRelease();
    sub_217269F50(v37);
    sub_217638634(v7);
    (*(v13 + 32))(v33, v20, v3);
    OUTLINED_FUNCTION_113();
    type metadata accessor for LegacyModelInternalPolymorphicMusicItem();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_13();
}

void LegacyModelInternalPolymorphicMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v42 = v7;
  v43 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for LegacyModelInternalPolymorphicMusicItem();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v40 - v24;
  v26 = *v5;
  v27 = dynamic_cast_existential_1_conditional(v3);
  if (v27)
  {
    OUTLINED_FUNCTION_4_126(v27, v28);
    v30 = v29();
    v32 = v31;
    sub_2171FF30C(v43, v45);
    v44 = v26;
    v33 = *(v32 + 16);
    v34 = *(v33 + 24);
    v46[3] = v30;
    v46[4] = v32;
    __swift_allocate_boxed_opaque_existential_0(v46);
    v34(v45, &v44, v30, v33);
    sub_2171FF30C(v46, v25);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v41 = v1;
    v35 = v9;
    v37 = v43[3];
    v36 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v37);
    (*(v36 + 24))(v46, v37, v36);
    v38 = v46[0];
    v39 = v46[1];
    sub_217751DE8();
    sub_217269F50(v46);
    (*(v41 + 40))(v38, v39, v3);
    (*(v35 + 32))(v25, v16, v3);
    swift_storeEnumTagMultiPayload();
  }

  (*(v19 + 32))(v42, v25, v17);
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_13();
}

uint64_t LegacyModelInternalPolymorphicMusicItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  (*(v5 + 16))(v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v12, v18 + 1);
    v14 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
    (*(*(v13 + 16) + 32))(v18, v14);
    v15 = v18[0];
    result = __swift_destroy_boxed_opaque_existential_1((v18 + 1));
  }

  else
  {
    v17 = *(a1 + 16);
    (*(*(a1 + 24) + 48))(v18 + 1);
    v15 = BYTE1(v18[0]);
    result = (*(v5 + 8))(v12, a1);
  }

  *a2 = v15;
  return result;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.convertToRawDictionary(for:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_9();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1_75();
  v11 = (v9 - v10);
  v13 = *v12;
  (*(v4 + 16))(v9 - v10, v14, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v11, v20);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v19 = v13;
    v17 = (*(*(v16 + 16) + 40))(&v19, v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v17 = sub_217751DC8();
    (*(v4 + 8))(v11, a2);
  }

  return v17;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.innerItem.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_5_103(v9);
  v11(v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v2, v18);
    v13 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(*(v12 + 8) + 8) + 8))(v13);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    a2[3] = v16;
    a2[4] = *(v15 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(*(v16 - 8) + 32))(boxed_opaque_existential_0, v2, v16);
  }
}

void LegacyModelInternalPolymorphicMusicItemStorage<>.isEqual<A>(to:)()
{
  OUTLINED_FUNCTION_12();
  v35[1] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v35 - v14;
  OUTLINED_FUNCTION_0();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_0();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  (*(v32 + 16))(v22, v6, v2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v4);
    v33 = *(v24 + 32);
    OUTLINED_FUNCTION_113();
    v34();
    sub_217751F08();
    (*(v24 + 8))(v31, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v4);
    (*(v9 + 8))(v15, v7);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t LegacyModelInternalPolymorphicMusicItem.id.getter(uint64_t a1)
{
  LegacyModelInternalPolymorphicMusicItem.innerItem.getter(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t *LegacyModelInternalPolymorphicMusicItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v19 = dynamic_cast_existential_1_conditional(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_4_126(v19, v20);
    v22 = v21();
    v24 = v23;
    sub_2171FF30C(a1, v28);
    v29[3] = v22;
    v29[4] = v24;
    __swift_allocate_boxed_opaque_existential_0(v29);
    v25 = *(v24 + 24);
    sub_217752608();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v4)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v29);
    }

    else
    {
      sub_2171FF30C(v29, a4);
      type metadata accessor for LegacyModelInternalPolymorphicMusicItem();
      swift_storeEnumTagMultiPayload();
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    sub_2171FF30C(a1, v29);
    v27 = *(a3 + 16);
    sub_217752608();
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v4)
    {
      (*(v10 + 32))(a4, v17, a2);
      type metadata accessor for LegacyModelInternalPolymorphicMusicItem();
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t LegacyModelInternalPolymorphicMusicItem.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_3_9();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_1_75();
  v12 = v10 - v11;
  OUTLINED_FUNCTION_3_9();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_1_75();
  v19 = (v17 - v18);
  (*(v20 + 16))(v17 - v18, v21, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v19, v26);
    v22 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v23 = *(v22 + 32);
    sub_217751E88();
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    (*(v5 + 32))(v12, v19, v3);
    v25 = *(*(a2 + 24) + 24);
    sub_217751E88();
    return (*(v5 + 8))(v12, v3);
  }
}

void sub_2176DAD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  static LegacyModelInternalPolymorphicMusicItem.== infix(_:_:)();
}

uint64_t LegacyModelInternalPolymorphicMusicItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_3_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1_75();
  v13 = v11 - v12;
  OUTLINED_FUNCTION_3_9();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_1_75();
  v20 = (v18 - v19);
  (*(v21 + 16))(v18 - v19, v22, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21726B918(v20, v29);
    v23 = v30;
    v24 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v24 + 56))(a1, v23, v24);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v26 = *(v6 + 32);
    OUTLINED_FUNCTION_113();
    v27();
    v28 = *(*(a2 + 24) + 32);
    sub_217751EB8();
    return (*(v6 + 8))(v13, v4);
  }
}

uint64_t LegacyModelInternalPolymorphicMusicItem.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  LegacyModelInternalPolymorphicMusicItem.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_2176DAF80(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  LegacyModelInternalPolymorphicMusicItem.hash(into:)(v4, a2);
  return sub_217753238();
}

void sub_2176DAFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  v5 = *(a5 + 24);
  LegacyModelInternalPolymorphicMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
}

void sub_2176DAFF0(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  LegacyModelInternalPolymorphicMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)();
}

unint64_t sub_2176DB0A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_2176DB404();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2176DB11C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
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

void sub_2176DB240(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
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

unint64_t sub_2176DB404()
{
  result = qword_280BE7128;
  if (!qword_280BE7128)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280BE7128);
  }

  return result;
}

uint64_t sub_2176DB460()
{
  type metadata accessor for LanguageTagCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for LanguageTagCache.Entry();
  result = sub_217751DC8();
  *(v0 + 112) = result;
  qword_280C01FD8 = v0;
  return result;
}

uint64_t sub_2176DB4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2176DB4E8, v3, 0);
}

uint64_t sub_2176DB4E8()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[5];
  v0[6] = sub_2176DB76C(v0[2], v0[3]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2176DB58C;
  v3 = v0[4];

  return sub_2176DB934();
}

uint64_t sub_2176DB58C()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v7 = v6;
  v9 = *(v8 + 56);
  v10 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v11 = v10;
  v6[8] = v0;

  if (v0)
  {
    v12 = sub_2176DB710;
  }

  else
  {
    v6[9] = v3;
    v6[10] = v5;
    v12 = sub_2176DB6AC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2176DB6AC()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[6];

  v2 = v0[1];
  v4 = v0[9];
  v3 = v0[10];

  return v2(v3, v4);
}

uint64_t sub_2176DB710()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_20_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_2176DB76C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  sub_217751DE8();
  v7 = sub_21763246C(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for LanguageTagCache.Entry();
    v9 = swift_allocObject();
    sub_217751DE8();
    sub_2176DB8F4(a1, a2);
    swift_beginAccess();

    v10 = *(v3 + 112);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 112);
    sub_2172C7D2C();
    *(v3 + 112) = v12;
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_2176DB88C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_2176DB8F4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[15] = a2;
  v2[16] = 0;
  v2[14] = a1;
  return v2;
}

uint64_t sub_2176DB934()
{
  OUTLINED_FUNCTION_10();
  v1[11] = v2;
  v1[12] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0) - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_28_7();

  return MEMORY[0x2822009F8](sub_2176DB9C4, v0, 0);
}

uint64_t sub_2176DB9C4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 96);
  v2 = *(v1 + 128);
  *(v0 + 112) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D857C8] + 4);

    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
    *v4 = v0;
    v4[1] = sub_2176DBBF8;
    v7 = MEMORY[0x277D84950];
    v8 = v0 + 72;
  }

  else
  {
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = sub_217752538();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
    sub_2171FF30C(v10, v0 + 16);
    v12 = sub_2176DD3FC();
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    sub_2171F3F0C((v0 + 16), (v13 + 5));
    swift_retain_n();
    v2 = sub_2176DC4E0(0, 0, v9, &unk_217797B60, v13);
    *(v0 + 136) = v2;
    v14 = *(v1 + 128);
    *(v1 + 128) = v2;

    v15 = *(MEMORY[0x277D857C8] + 4);
    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
    *v16 = v0;
    v16[1] = sub_2176DBD7C;
    v7 = MEMORY[0x277D84950];
    v8 = v0 + 56;
  }

  return MEMORY[0x282200430](v8, v2, v5, v6, v7);
}

uint64_t sub_2176DBBF8()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *(v2 + 120);
  *v4 = *v1;
  *(v3 + 128) = v0;

  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_2176DBF00;
  }

  else
  {
    v7 = sub_2176DBD18;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2176DBD18()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[14];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[13];

  v5 = OUTLINED_FUNCTION_6_105();

  return v6(v5);
}

uint64_t sub_2176DBD7C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *(v2 + 144);
  *v4 = *v1;
  *(v3 + 152) = v0;

  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_2176DBF64;
  }

  else
  {
    v7 = sub_2176DBE9C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2176DBE9C()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[17];

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[13];

  v5 = OUTLINED_FUNCTION_6_105();

  return v6(v5);
}

uint64_t sub_2176DBF00()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[13];

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2176DBF64()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[13];

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2176DBFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2176DBFEC, a4, 0);
}

uint64_t sub_2176DBFEC()
{
  v15 = v0;
  if (qword_280BE73E0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  v1 = v0[3];
  v2 = sub_217751AF8();
  v0[5] = __swift_project_value_buffer(v2, qword_280C023A8);

  v3 = sub_217751AD8();
  v4 = sub_217752828();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_21729C0E8(*(v5 + 112), *(v5 + 120), &v14);
    _os_log_impl(&dword_2171EE000, v3, v4, "Fetching preferred language tag for %{public}s...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v0[6] = *(v9 + 112);
  v0[7] = *(v9 + 120);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2176DC1C0;
  v12 = v0[3];

  return sub_2176DC770();
}

uint64_t sub_2176DC1C0()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v9 = v6[8];
  *v8 = *v1;
  v7[9] = v0;

  v10 = v6[3];
  if (v0)
  {
    v11 = sub_2176DC328;
  }

  else
  {
    v7[10] = v3;
    v7[11] = v5;
    v11 = sub_2176DC2F4;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2176DC2F4()
{
  *v0[1].i64[0] = vextq_s8(v0[5], v0[5], 8uLL);
  OUTLINED_FUNCTION_20_0();
  return v1();
}

uint64_t sub_2176DC328()
{
  v22 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v1;
  v5 = sub_217751AD8();
  v6 = sub_217752808();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_21729C0E8(v9, v8, &v21);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_2171EE000, v5, v6, "Unable to get preferred language tag for %{public}s: %{public}@.", v10, 0x16u);
    sub_2172CB34C(v11, &qword_27CB29E08, &qword_21777BFF8);
    OUTLINED_FUNCTION_28_4();
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  v15 = v0[9];
  v16 = v0[3];
  v17 = *(v16 + 128);
  *(v16 + 128) = 0;

  swift_willThrow();
  OUTLINED_FUNCTION_20_0();
  v19 = v0[9];

  return v18();
}

uint64_t sub_2176DC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  sub_2172B6210(a3, v24 - v11);
  v13 = sub_217752538();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2172CB34C(v12, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_217752498();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_217751FB8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2172CB34C(a3, &qword_27CB24D78, &qword_217759EA0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2172CB34C(a3, &qword_27CB24D78, &qword_217759EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2176DC770()
{
  OUTLINED_FUNCTION_10();
  v1[54] = v2;
  v1[55] = v0;
  v1[52] = v3;
  v1[53] = v4;
  v1[50] = v5;
  v1[51] = v6;
  v7 = sub_2177516D8();
  v1[56] = v7;
  v8 = *(v7 - 8);
  v1[57] = v8;
  v9 = *(v8 + 64);
  v1[58] = OUTLINED_FUNCTION_28_7();
  v10 = sub_2177512F8();
  v1[59] = v10;
  v11 = *(v10 - 8);
  v1[60] = v11;
  v12 = *(v11 + 64);
  v1[61] = OUTLINED_FUNCTION_28_7();
  v13 = type metadata accessor for MusicDataRequest();
  v1[62] = v13;
  v14 = *(*(v13 - 8) + 64);
  v1[63] = OUTLINED_FUNCTION_28_7();
  v15 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2176DC8EC, v0, 0);
}

uint64_t sub_2176DC8EC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 480);
  v18 = *(v0 + 472);
  v19 = *(v0 + 496);
  v7 = *(v0 + 456);
  v8 = *(v0 + 464);
  v9 = *(v0 + 448);
  v20 = *(v0 + 424);
  v21 = *(v0 + 432);
  v10 = *(v0 + 408);
  v22 = *(v0 + 416);
  v11 = *(v0 + 400);
  sub_2174B54B4();
  sub_2172CB230(v1, v2);
  sub_2172CB230(v2, v4);
  (*(v7 + 16))(v8, v4, v9);
  sub_2177512B8();
  sub_2172CB294(v4, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v6 + 16))(v3, v5, v18);
  v12 = *(v19 + 20);
  *(v0 + 552) = v12;
  swift_beginAccess();
  v13 = off_280BEBCD0;

  (v13)(v14);

  v15 = *(v0 + 296);
  v16 = *(v0 + 304);
  __swift_project_boxed_opaque_existential_1((v0 + 272), v15);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v15, v16, v3 + v12);
  (*(v6 + 8))(v5, v18);
  sub_2172CB294(v2, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v20, v21, v0 + 312);
  sub_2172CA894(v0 + 312, v3 + v12);

  return MEMORY[0x2822009F8](sub_2176DCB04, 0, 0);
}

uint64_t sub_2176DCB04()
{
  OUTLINED_FUNCTION_209();
  v1 = (*(v0 + 504) + *(v0 + 552));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 104);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 536) = v6;
  *v6 = v0;
  v6[1] = sub_2176DCC38;
  v7 = *(v0 + 504);

  return v9(v0 + 376, v7, v2, v3);
}

uint64_t sub_2176DCC38()
{
  OUTLINED_FUNCTION_30_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *(v2 + 536);
  *v4 = *v1;
  *(v3 + 544) = v0;

  v6 = *(v2 + 440);
  if (v0)
  {
    v7 = sub_2176DD1D8;
  }

  else
  {
    v7 = sub_2176DCD58;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2176DCD58()
{
  v65 = v0;
  v1 = *(v0 + 544);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = sub_217751348();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_217751338();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v3, v2, v64);
  JSONDecoder.dataRequestConfiguration.setter(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2CDB0, &unk_217797B48);
  sub_2176DD324();
  sub_217751308();
  if (v1)
  {
    v11 = *(v0 + 528);

    OUTLINED_FUNCTION_12_67();

    OUTLINED_FUNCTION_1_17();
    sub_2172CB294(v11, v12);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v16 = *(v0 + 504);
    v15 = *(v0 + 512);
    v17 = *(v0 + 488);
    v18 = *(v0 + 464);
    OUTLINED_FUNCTION_21();
    sub_2172CB294(v16, v19);

    OUTLINED_FUNCTION_20_0();

    return v20();
  }

  v22 = *(v0 + 32);
  if (*(v22 + 16))
  {
    v63 = v7;
    v23 = *(v22 + 32);
    v24 = *(v22 + 48);
    v25 = *(v22 + 80);
    *(v0 + 176) = *(v22 + 64);
    *(v0 + 192) = v25;
    *(v0 + 144) = v23;
    *(v0 + 160) = v24;
    v26 = objc_opt_self();
    sub_2176AD1A8(v0 + 144, v0 + 208);
    v27 = [v26 mainBundle];
    v28 = sub_2174F11C8();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = sub_2176AB3E8(v28, v30, v32, v34);
    v37 = v36;

    sub_2176AD1E0(v0 + 144);
    if (v37)
    {
      v38 = qword_280BE73E0;
      sub_217751DE8();
      if (v38 != -1)
      {
        OUTLINED_FUNCTION_4_1();
      }

      v39 = sub_217751AF8();
      __swift_project_value_buffer(v39, qword_280C023A8);
      sub_217751DE8();
      v40 = sub_217751AD8();
      v41 = sub_217752828();

      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 528);
      if (v42)
      {
        v44 = swift_slowAlloc();
        v62 = v43;
        v45 = swift_slowAlloc();
        v64[0] = v45;
        *v44 = 136446210;
        v61 = v41;
        v46 = sub_21729C0E8(v35, v37, v64);

        *(v44 + 4) = v46;
        v47 = v35;
        _os_log_impl(&dword_2171EE000, v40, v61, "Using preferred language tag: %{public}s.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_28_4();
        OUTLINED_FUNCTION_28_4();

        OUTLINED_FUNCTION_12_67();
        OUTLINED_FUNCTION_1_17();
        sub_2172CB294(v62, v48);
      }

      else
      {

        OUTLINED_FUNCTION_12_67();

        OUTLINED_FUNCTION_1_17();
        sub_2172CB294(v43, v52);
        v47 = v35;
      }

      goto LABEL_15;
    }

    v7 = v63;
    v47 = v35;
  }

  else
  {
    v47 = 0;
  }

  v49 = *(v0 + 528);
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v50, v51);

  OUTLINED_FUNCTION_12_67();

  v37 = 0;
LABEL_15:
  v53 = *(v0 + 528);
  v54 = *(v0 + 520);
  v56 = *(v0 + 504);
  v55 = *(v0 + 512);
  v57 = *(v0 + 488);
  v58 = *(v0 + 464);
  sub_2172CB34C(v0 + 16, &qword_27CB2CDB0, &unk_217797B48);
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v56, v59);

  v60 = *(v0 + 8);

  return v60(v47, v37);
}

uint64_t sub_2176DD1D8()
{
  v1 = v0[66];
  OUTLINED_FUNCTION_1_17();
  sub_2172CB294(v2, v3);
  v4 = v0[68];
  v5 = v0[66];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v9 = v0[61];
  v10 = v0[58];
  OUTLINED_FUNCTION_21();
  sub_2172CB294(v8, v11);

  OUTLINED_FUNCTION_20_0();

  return v12();
}

uint64_t sub_2176DD2A4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2176DD2D4()
{
  sub_2176DD2A4();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2176DD324()
{
  result = qword_280BE3768;
  if (!qword_280BE3768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2CDB0, &unk_217797B48);
    sub_2176DD3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3768);
  }

  return result;
}

unint64_t sub_2176DD3A8()
{
  result = qword_280BE5400;
  if (!qword_280BE5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5400);
  }

  return result;
}

unint64_t sub_2176DD3FC()
{
  result = qword_27CB2CDB8;
  if (!qword_27CB2CDB8)
  {
    type metadata accessor for LanguageTagCache.Entry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CDB8);
  }

  return result;
}

uint64_t sub_2176DD450()
{
  OUTLINED_FUNCTION_209();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21725B86C;

  return sub_2176DBFC8(v3, v4, v5, v6, (v0 + 5));
}

uint64_t sub_2176DD510(uint64_t result, uint64_t *a2)
{
  v4 = (result + 48);
  v5 = *(result + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 24;
    v7 = *v4;
    v8 = *(v4 - 1);
    v9[0] = *(v4 - 2);
    v9[1] = v8;
    v10 = v7;
    sub_217751DE8();
    sub_2176E430C(v9, a2);

    v4 = v6;
  }

  while (!v2);
  return result;
}

void sub_2176DD598()
{
  OUTLINED_FUNCTION_171();
  v2 = OUTLINED_FUNCTION_59_26();
  v3 = type metadata accessor for CloudStation(v2);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_6_106(v8, v61);
  v9 = type metadata accessor for CloudPersonalRecommendation.Item();
  v10 = OUTLINED_FUNCTION_43(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28688, &unk_217798ED0);
  OUTLINED_FUNCTION_45_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_129_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_3_120(v24, v62);
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_20_53(v27, v28, v29, v30, v31, v32, v33, v34, v63);
  OUTLINED_FUNCTION_31_45();
  while (v67 != v0)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_15_66(v35);
    v38 = v66 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v37 + 72) * v0;
    v39 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v19);
    OUTLINED_FUNCTION_0_145();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v42 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v42, v43, &unk_217798ED0);
      OUTLINED_FUNCTION_68_27();
      OUTLINED_FUNCTION_19_1();
      sub_2176E67A4();
      OUTLINED_FUNCTION_10_69();
      OUTLINED_FUNCTION_5_104();
      OUTLINED_FUNCTION_13_70();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2176E67FC(v65, type metadata accessor for CloudStation);
      v44 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v19);
    }

    else
    {
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v1, v47);
    }

    v48 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v48, v49, v19) == 1)
    {
      v50 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v50, v51, &unk_217798ED0);
      ++v0;
    }

    else
    {
      OUTLINED_FUNCTION_28_53();
      sub_2174BFD48();
      OUTLINED_FUNCTION_67_23();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = OUTLINED_FUNCTION_11_79();
        sub_2172B21E4(v53, v54, v55, v56);
      }

      OUTLINED_FUNCTION_19_48();
      v0 = v38;
      if (v52)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B21E4(v57, v58, v59, v60);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v19 = v64;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DD918()
{
  OUTLINED_FUNCTION_171();
  v2 = OUTLINED_FUNCTION_59_26();
  v3 = type metadata accessor for CloudPlaylist(v2);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_6_106(v8, v61);
  v9 = type metadata accessor for CloudPersonalRecommendation.Item();
  v10 = OUTLINED_FUNCTION_43(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B8, &qword_21775D770);
  OUTLINED_FUNCTION_45_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_129_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_3_120(v24, v62);
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_20_53(v27, v28, v29, v30, v31, v32, v33, v34, v63);
  OUTLINED_FUNCTION_31_45();
  while (v67 != v0)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_15_66(v35);
    v38 = v66 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v37 + 72) * v0;
    v39 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v19);
    OUTLINED_FUNCTION_0_145();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v42, v43, &qword_21775D770);
      OUTLINED_FUNCTION_68_27();
      OUTLINED_FUNCTION_19_1();
      sub_2176E67A4();
      OUTLINED_FUNCTION_10_69();
      OUTLINED_FUNCTION_5_104();
      OUTLINED_FUNCTION_13_70();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2176E67FC(v65, type metadata accessor for CloudPlaylist);
      v44 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v19);
    }

    else
    {
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v1, v47);
    }

    v48 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v48, v49, v19) == 1)
    {
      v50 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v50, v51, &qword_21775D770);
      ++v0;
    }

    else
    {
      OUTLINED_FUNCTION_28_53();
      sub_2174BFD48();
      OUTLINED_FUNCTION_67_23();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = OUTLINED_FUNCTION_11_79();
        sub_2172B2220(v53, v54, v55, v56);
      }

      OUTLINED_FUNCTION_19_48();
      v0 = v38;
      if (v52)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B2220(v57, v58, v59, v60);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v19 = v64;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DDC98()
{
  OUTLINED_FUNCTION_171();
  v3 = OUTLINED_FUNCTION_59_26();
  v4 = type metadata accessor for CloudAlbum(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_6_106(v9, v72);
  v10 = type metadata accessor for CloudPersonalRecommendation.Item();
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  OUTLINED_FUNCTION_45_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_129_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_3_120(v25, v73);
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_20_53(v28, v29, v30, v31, v32, v33, v34, v35, v74);
  v36 = 0;
  v75 = v1;
  v83 = *(v0 + 16);
  while (v83 != v36)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_15_66(v37);
    v85 = v36;
    v40 = v0 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v39 + 72) * v36;
    v41 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v20);
    OUTLINED_FUNCTION_0_145();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v1, v44);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v45, v46, &unk_21775D5D0);
      sub_2176E674C();
      sub_2176E67A4();
      v47 = v40 + v20[9];
      v48 = *v47;
      v78 = *(v47 + 8);
      v79 = *(v47 + 16);
      v49 = (v40 + v20[10]);
      v50 = v49[1];
      v80 = v48;
      v81 = *v49;
      v51 = v20[11];
      memcpy(v84, (v40 + v51), sizeof(v84));
      v52 = *(v40 + v20[12]);
      v53 = *(v40 + v20[14]);
      v76 = *(v40 + v20[15]);
      v77 = *(v40 + v20[13]);
      v54 = v2 + v20[9];
      *v54 = v80;
      *(v54 + 8) = v78;
      *(v54 + 16) = v79;
      v55 = (v2 + v20[10]);
      *v55 = v81;
      v55[1] = v50;
      memcpy((v2 + v20[11]), (v40 + v51), 0x180uLL);
      *(v2 + v20[12]) = v52;
      *(v2 + v20[13]) = v77;
      *(v2 + v20[14]) = v53;
      *(v2 + v20[15]) = v76;
      v1 = v75;
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2176E67FC(v82, type metadata accessor for CloudAlbum);
      v56 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v20);
    }

    v59 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v59, v60, v20) == 1)
    {
      v61 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v61, v62, &unk_21775D5D0);
      v36 = v85 + 1;
    }

    else
    {
      sub_2174BFD48();
      sub_2174BFD48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = OUTLINED_FUNCTION_11_79();
        sub_2172B225C(v64, v65, v66, v67);
      }

      OUTLINED_FUNCTION_19_48();
      if (v63)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B225C(v68, v69, v70, v71);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v36 = v85;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DE128()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_59_26();
  v2 = type metadata accessor for CloudPersonalRecommendation.Item();
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_6_106(v7, v61);
  v8 = type metadata accessor for CloudPersonalRecommendation.Content();
  v9 = OUTLINED_FUNCTION_43(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D010, &qword_217798EC8);
  OUTLINED_FUNCTION_45_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_129_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_3_120(v23, v62);
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_20_53(v26, v27, v28, v29, v30, v31, v32, v33, v63);
  OUTLINED_FUNCTION_31_45();
  while (v67 != v0)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
    OUTLINED_FUNCTION_15_66(v34);
    v37 = v66 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v36 + 72) * v0;
    v38 = OUTLINED_FUNCTION_29_45();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v18);
    OUTLINED_FUNCTION_43_32();
    OUTLINED_FUNCTION_96_16();
    OUTLINED_FUNCTION_25_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v41, v42, &qword_217798EC8);
      OUTLINED_FUNCTION_68_27();
      OUTLINED_FUNCTION_0_145();
      OUTLINED_FUNCTION_19_1();
      sub_2176E67A4();
      OUTLINED_FUNCTION_10_69();
      OUTLINED_FUNCTION_5_104();
      OUTLINED_FUNCTION_13_70();
      sub_217751DE8();
      OUTLINED_FUNCTION_89_20();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_2_131();
      sub_2176E67FC(v65, v43);
      v44 = OUTLINED_FUNCTION_55_26();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v18);
    }

    else
    {
      OUTLINED_FUNCTION_42_40();
      sub_2176E67FC(v1, v47);
    }

    v48 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v48, v49, v18) == 1)
    {
      v50 = OUTLINED_FUNCTION_63_25();
      sub_2171F0738(v50, v51, &qword_217798EC8);
      ++v0;
    }

    else
    {
      OUTLINED_FUNCTION_28_53();
      sub_2174BFD48();
      OUTLINED_FUNCTION_67_23();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = OUTLINED_FUNCTION_11_79();
        sub_2172B2298(v53, v54, v55, v56);
      }

      OUTLINED_FUNCTION_19_48();
      v0 = v37;
      if (v52)
      {
        OUTLINED_FUNCTION_46_33();
        sub_2172B2298(v57, v58, v59, v60);
      }

      OUTLINED_FUNCTION_4_127();
      sub_2174BFD48();
      v18 = v64;
    }
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_170();
}

void sub_2176DE488()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v60 = type metadata accessor for CloudPersonalRecommendation.Content();
  v2 = OUTLINED_FUNCTION_43(v60);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_1();
  v71 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v58 = v10;
  v59 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v56 = &v55 - v18;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v21 = *(v1 + 16);
  v61 = v1;
  v62 = v21;
  v57 = v15;
  while (v62 != v19)
  {
    v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210) - 8);
    v23 = v61 + ((*(*v22 + 80) + 32) & ~*(*v22 + 80));
    v24 = *(*v22 + 72);
    v69 = v19;
    v25 = v23 + v24 * v19;
    OUTLINED_FUNCTION_0_145();
    sub_2176E67A4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_43_32();
    v68 = v20;
    v26 = v56;
    sub_2176E67A4();
    v27 = v22[12];
    v28 = (v25 + v22[11]);
    v29 = *v28;
    v65 = v28[1];
    v66 = *(v28 + 16);
    v30 = *(v25 + v27 + 8);
    v67 = *(v25 + v27);
    v31 = v22[13];
    memcpy(v70, (v25 + v31), sizeof(v70));
    v32 = *(v25 + v22[14]);
    v33 = *(v25 + v22[15]);
    v34 = v22[17];
    v35 = *(v25 + v22[16]);
    v63 = *(v25 + v34);
    v64 = v33;
    v36 = v59;
    v37 = &v26[v59[9]];
    *v37 = v29;
    *(v37 + 1) = v65;
    v37[16] = v66;
    v38 = &v26[v36[10]];
    *v38 = v67;
    *(v38 + 1) = v30;
    memcpy(&v26[v36[11]], (v25 + v31), 0x180uLL);
    *&v26[v36[12]] = v32;
    v39 = v63;
    *&v26[v36[13]] = v64;
    *&v26[v36[14]] = v35;
    *&v26[v36[15]] = v39;
    sub_217751DE8();
    sub_217751DE8();
    sub_217284868();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_42_40();
    sub_2176E67FC(v71, v40);
    v20 = v68;
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = *(v20 + 16);
      OUTLINED_FUNCTION_75_19();
      sub_2172B2C14(v45, v46, v47, v48);
      v20 = v49;
    }

    v41 = *(v20 + 16);
    if (v41 >= *(v20 + 24) >> 1)
    {
      OUTLINED_FUNCTION_75_19();
      sub_2172B2C14(v50, v51, v52, v53);
      v20 = v54;
    }

    *(v20 + 16) = v41 + 1;
    v42 = v20 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v43 = *(v58 + 72);
    OUTLINED_FUNCTION_170_0();
    sub_2174BFD48();
    v19 = v69 + 1;
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176DE844(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_217751DE8();
  v3 = MEMORY[0x277D84F90];
  v4 = 32;
  if (v2)
  {
    while (dynamic_cast_existential_1_conditional(*(a1 + v4)))
    {
      v6 = (*(v5 + 8))();
      v7 = *(v6 + 16);
      v8 = *(v3 + 16);
      if (__OFADD__(v8, v7))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v9 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v8 + v7 > *(v3 + 24) >> 1)
      {
        sub_2172B199C();
        v3 = v10;
      }

      if (*(v9 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v7)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v11 = *(v3 + 16);
          v12 = __OFADD__(v11, v7);
          v13 = v11 + v7;
          if (v12)
          {
            goto LABEL_18;
          }

          *(v3 + 16) = v13;
        }
      }

      else
      {

        if (v7)
        {
          goto LABEL_16;
        }
      }

      v4 += 32;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    sub_217752AA8();

    v18 = sub_217753348();
    MEMORY[0x21CEA23B0](v18);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_2173DAE08(v3, v14);
    v16 = v15;

    return v16;
  }

  return result;
}