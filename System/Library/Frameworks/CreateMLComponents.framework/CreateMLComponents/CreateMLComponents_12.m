void sub_237D60330()
{
  sub_237D0A09C();
  if (v0 <= 0x3F)
  {
    sub_237D0A0EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_237D603F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Transformer.adaptedAsAnnotatedPredictionTransformer<A>(annotationType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, a1);
  return (*(v5 + 32))(a2, v7, a1);
}

uint64_t sub_237D6064C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237D606BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
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

  return v5 + (v6 | v11) + 1;
}

void sub_237D607F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
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

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D609FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v10 = a5[3];
  v5[4] = v10;
  v5[5] = *(v10 - 8);
  v5[6] = swift_task_alloc();
  v11 = a5[4];
  v5[7] = v11;
  v12 = a5[2];
  v5[8] = v12;
  v5[9] = swift_getAssociatedTypeWitness();
  v13 = swift_task_alloc();
  v5[10] = v13;
  v16 = (*(v11 + 24) + **(v11 + 24));
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_237D60BF8;

  return v16(v13, a2, a3, a4, v12, v11);
}

uint64_t sub_237D60BF8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_237D60E04;
  }

  else
  {
    v2 = sub_237D60D0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237D60D0C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for AnnotatedPrediction();
  (*(v4 + 16))(v3, v6 + *(v8 + 36), v5);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v3, v1, v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_237D60E04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237D60E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return sub_237D609FC(a1, a2, a3, a4, a5);
}

uint64_t sub_237D60F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_237D60F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_237D60FD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_237C63670();
  result = v9;
  v6 = (a1 + 32);
  if (v4)
  {
    while (a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = *v6;
      v10 = result;
      v8 = *(result + 16);
      if (v8 >= *(result + 24) >> 1)
      {
        sub_237C63670();
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8 + 32) = v7 / a2;
      ++v6;
      --v4;
      ++a2;
      if (!v4)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237D610C8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v1 = a1;
  v2 = *(a1 + 32);
  sub_237D0B340();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = v5 + 1;
  if (v5 >= *(v3 + 24) >> 1)
  {
LABEL_17:
    sub_237D0B340();
    v4 = v17;
  }

  *(v4 + 16) = v6;
  *(v4 + 8 * v5 + 32) = v2;
  sub_237EF8260();
  v1 = sub_237C60B7C(1, v1);
  v6 = v7;
  v2 = v8;
  v10 = v9 >> 1;
  while (v10 != v2)
  {
    if (v2 >= v10)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = *(v4 + 16);
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *(v6 + 8 * v2);
    v13 = *(v4 + 24 + 8 * v11);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_16;
    }

    v5 = v11 + 1;
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_237D0B340();
      v4 = v15;
    }

    *(v4 + 16) = v5;
    *(v4 + 8 * v11 + 32) = v14;
    ++v2;
  }

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_237D61218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    goto LABEL_39;
  }

  v6 = MEMORY[0x277D84F90];
  v45 = *(a1 + 16);
  if (v3)
  {
    v46 = MEMORY[0x277D84F90];
    sub_237C62DB0();
    v6 = v46;
    v7 = (a2 + 32);
    v8 = *(v46 + 16);
    v9 = v45;
    do
    {
      v10 = *v7;
      v46 = v6;
      if (v8 >= *(v6 + 24) >> 1)
      {
        sub_237C62DB0();
        v6 = v46;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + 8 * v8 + 32) = v10;
      ++v7;
      ++v8;
      --v9;
    }

    while (v9);
  }

  sub_237EF8260();
  sub_237EF8260();
  v46 = sub_237DBA688(a1, v6);
  v2 = 0;
  sub_237D64888(&v46);

  v11 = v46;
  v12 = *(v46 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v46 = MEMORY[0x277D84F90];
    sub_237C62DB0();
    v14 = v46;
    v15 = *(v46 + 16);
    v16 = (v11 + 40);
    do
    {
      v18 = *v16;
      v16 += 2;
      v17 = v18;
      v46 = v14;
      if (v15 >= *(v14 + 24) >> 1)
      {
        sub_237C62DB0();
        v14 = v46;
      }

      *(v14 + 16) = v15 + 1;
      *(v14 + 8 * v15++ + 32) = v17;
      --v12;
    }

    while (v12);
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v19 = sub_237D610C8(v14);

  v20 = sub_237ED81A4(v19);
  if ((v21 & 1) == 0)
  {
    v22 = v20;

    v23 = sub_237EF8260();
    v2 = sub_237D60FD8(v23, 1);

    v44 = v2;
    if (v22 < 1)
    {

      sub_237CDC1E8(v45, 1.0);
      v25 = v29;
      if (v45)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = *(v19 + 16);
      if (v24)
      {
        v46 = v13;
        sub_237C63670();
        v25 = v46;
        v26 = *(v46 + 16);
        v27 = 32;
        do
        {
          v28 = *(v19 + v27);
          v46 = v25;
          if (v26 >= *(v25 + 24) >> 1)
          {
            sub_237C63670();
            v25 = v46;
          }

          *(v25 + 16) = v26 + 1;
          *(v25 + 4 * v26 + 32) = v28 / v22;
          v27 += 8;
          ++v26;
          --v24;
        }

        while (v24);

        v2 = v44;
        if (!v45)
        {
          goto LABEL_33;
        }

LABEL_24:
        v46 = v13;
        sub_237C636E8(0, v45, 0);
        v30 = v45;
        if (v45 > v2[2])
        {
          __break(1u);
        }

        else if (v45 <= *(v25 + 16))
        {
          if (v45 <= *(v11 + 16))
          {
            v31 = 0;
            v32 = v46;
            v33 = v2 + 4;
            v34 = *(v46 + 16);
            v35 = 12 * v34;
            v36 = 32;
            do
            {
              v37 = *(v33 + v31);
              v38 = *(v25 + 32 + 4 * v31);
              v39 = *(v11 + v36);
              v46 = v32;
              v40 = *(v32 + 24);
              v41 = v34 + v31 + 1;
              if (v34 + v31 >= v40 >> 1)
              {
                sub_237C636E8(v40 > 1, v34 + v31 + 1, 1);
                v30 = v45;
                v32 = v46;
              }

              ++v31;
              *(v32 + 16) = v41;
              v42 = (v32 + v35);
              v42[8] = v37;
              v42[9] = v38;
              v42[10] = v39;
              v35 += 12;
              v36 += 16;
            }

            while (v30 != v31);

            return v32;
          }

          goto LABEL_37;
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v25 = MEMORY[0x277D84F90];
      if (v45)
      {
        goto LABEL_24;
      }
    }

LABEL_33:

    return MEMORY[0x277D84F90];
  }

LABEL_38:
  __break(1u);
LABEL_39:
  sub_237EF9740();
  __break(1u);

  __break(1u);
  return result;
}

void sub_237D616B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *v8;
  v16 = *(v8 + 8);
  if (sub_237EF8DD0())
  {
    sub_237C84150();
    swift_allocError();
    *v17 = 0xD00000000000002CLL;
    *(v17 + 8) = 0x8000000237EFE480;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    switch(v16)
    {
      case 2:
        v18 = sub_237EF8260();
        sub_237D623D4(v18, a3, a4);
        if (v22)
        {
          sub_237D62A40(v21, 2);
        }

        break;
      case 3:
        sub_237D618C4(a1, a2, a3, a4, a5, a6, a7, a8);
        break;
      default:
        OUTLINED_FUNCTION_12_31();
        OUTLINED_FUNCTION_22_20();
        MEMORY[0x28223BE20](v19);
        OUTLINED_FUNCTION_20_20();
        sub_237EF82A0();

        break;
    }
  }
}

void sub_237D618C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v106 = a8;
  v105 = a7;
  v104 = a6;
  v103 = a5;
  v101 = a2;
  v102 = a1;
  v10 = *(a4 + 16);
  v95 = *(v10 - 1);
  MEMORY[0x28223BE20](a1);
  v91 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = v86 - v13;
  OUTLINED_FUNCTION_12_7();
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = v86 - v15;
  v17 = *(a4 + 24);
  v115 = sub_237EF8100();
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_237EF92A0();
    sub_237EF8CC0();
    a3 = v116;
    v87 = v117;
    v18 = v118;
    v94 = v119;
    v19 = v120;
  }

  else
  {
    v20 = -1 << *(a3 + 32);
    v21 = *(a3 + 56);
    v87 = a3 + 56;
    v22 = ~v20;
    v23 = -v20;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v19 = v24 & v21;
    sub_237EF8260();
    v18 = v22;
    v94 = 0;
  }

  v98 = 0;
  v86[1] = v18;
  v25 = (v18 + 64) >> 6;
  v97 = (v95 + 16);
  v93 = v95 + 32;
  v88 = (v95 + 8);
  v89 = v25;
  v92 = a3;
  v90 = v16;
  if (a3 < 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v19)
  {
    v26 = v94;
LABEL_17:
    v96 = (v19 - 1) & v19;
    (*(v95 + 16))(v16, *(a3 + 48) + *(v95 + 72) * (__clz(__rbit64(v19)) | (v26 << 6)), v10);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v10);
      v28 = v107;
      v29 = OUTLINED_FUNCTION_31_0();
      v31 = v30(v29);
      MEMORY[0x28223BE20](v31);
      v32 = v103;
      v86[-8] = v10;
      v86[-7] = v32;
      v86[-6] = v104;
      v86[-5] = v17;
      v33 = v106;
      v86[-4] = v105;
      v86[-3] = v33;
      v86[-2] = v28;
      v34 = v98;
      sub_237C9339C();
      v36 = *(v35 + 16);
      if (!v36)
      {
        break;
      }

      v37 = *(v35 + 32);
      v38 = v36 - 1;
      if (v38)
      {
        v40 = (v35 + 36);
        v41 = (v35 + 36);
        v42 = v38;
        v39 = *(v35 + 32);
        do
        {
          v43 = *v41++;
          v44 = v43;
          if (v43 < v39)
          {
            v39 = v44;
          }

          --v42;
        }

        while (v42);
        do
        {
          v45 = *v40++;
          v46 = v45;
          if (v37 < v45)
          {
            v37 = v46;
          }

          --v38;
        }

        while (v38);
      }

      else
      {
        v39 = *(v35 + 32);
      }

      v98 = v34;

      if (v39 <= v37)
      {
        v47 = 0.0;
        v48 = v39;
        v99 = v10;
        v100 = v17;
        while (1)
        {
          v16 = v107;
          sub_237DF8EA4();
          v50 = v49;
          sub_237DF8F00();
          v110 = v51;
          v52 = *(v51 + 16);
          v53 = v50[2];
          v54 = v53 >= v52 ? *(v51 + 16) : v50[2];
          OUTLINED_FUNCTION_17_26(MEMORY[0x277D84F90]);
          v55 = OUTLINED_FUNCTION_16_27();
          v111 = v50;
          v109 = v53;
          if (v54)
          {
            break;
          }

LABEL_40:
          v10 = v111;
          v60 = v110;
          v61 = v109;
          while (v52 != v54)
          {
            if (v54 >= v52)
            {
              goto LABEL_80;
            }

            if (__OFADD__(v54, 1))
            {
              goto LABEL_81;
            }

            if (v61 == v54)
            {
              break;
            }

            if (v54 >= v61)
            {
              goto LABEL_82;
            }

            v16 = v10[v54 + 4];
            *&v112 = v55;
            v63 = *(v55 + 16);
            v62 = *(v55 + 24);
            if (v63 >= v62 >> 1)
            {
              OUTLINED_FUNCTION_11_31(v62);
              sub_237C62DB0();
              v55 = OUTLINED_FUNCTION_16_27();
            }

            *(v55 + 16) = v63 + 1;
            *(v55 + 8 * v63 + 32) = v16;
            ++v54;
          }

          v108 = sub_237CAE03C(v55);
          v64 = *(v60 + 16);
          v65 = v10[2];
          if (v65 >= v64)
          {
            v66 = *(v60 + 16);
          }

          else
          {
            v66 = v10[2];
          }

          OUTLINED_FUNCTION_17_26(MEMORY[0x277D84F90]);
          v67 = OUTLINED_FUNCTION_16_27();
          v109 = v65;
          if (v66)
          {
            v10 = (v60 + 32);
            v68 = v66;
            v69 = v64;
            while (v69)
            {
              if (!v65)
              {
                goto LABEL_79;
              }

              v70 = *v10;
              v67 = OUTLINED_FUNCTION_19_26(v67);
              if (v72)
              {
                OUTLINED_FUNCTION_11_31(v71);
                sub_237C62DB0();
                v67 = OUTLINED_FUNCTION_16_27();
              }

              *(v67 + 16) = v52;
              *(v67 + 8 * v16 + 32) = v70;
              v65 = (v65 - 1);
              --v69;
              ++v10;
              if (!--v68)
              {
                goto LABEL_59;
              }
            }

            goto LABEL_78;
          }

LABEL_59:
          v17 = v100;
          v73 = v111;
          v74 = v110;
          v75 = v109;
          while (v64 != v66)
          {
            if (v66 >= v64)
            {
              goto LABEL_83;
            }

            if (__OFADD__(v66, 1))
            {
              goto LABEL_84;
            }

            if (v75 == v66)
            {
              break;
            }

            if (v66 >= v75)
            {
              goto LABEL_85;
            }

            v10 = *(v74 + 8 * v66 + 32);
            v67 = OUTLINED_FUNCTION_19_26(v67);
            if (v72)
            {
              OUTLINED_FUNCTION_11_31(v76);
              sub_237C62DB0();
              v67 = OUTLINED_FUNCTION_16_27();
            }

            *(v67 + 16) = v52;
            *(v67 + 8 * v16 + 32) = v10;
            ++v66;
          }

          v77 = sub_237CAE474();
          sub_237CB0CC4(v74, v73, sub_237E6442C, 0, v77);
          v121[0] = v112;
          v121[1] = v113;
          v121[2] = v114;
          v78 = sub_237CA6838();
          v79 = sub_237CA60A0(1);
          v80 = v78 + v79;
          if (__OFADD__(v78, v79))
          {
            goto LABEL_88;
          }

          v81 = sub_237CA6838();
          v82 = sub_237CA6454(1);
          sub_237D657C8(v121);
          v83 = v81 + v82;
          if (__OFADD__(v81, v82))
          {
            goto LABEL_89;
          }

          v84 = (v78 / v80 * (v81 / v83) + v78 / v80 * (v81 / v83)) / (v78 / v80 + v81 / v83);
          if (v47 < v84)
          {
            v39 = v48;
            v47 = (v78 / v80 * (v81 / v83) + v78 / v80 * (v81 / v83)) / (v78 / v80 + v81 / v83);
          }

          v48 = v48 + 0.1;
          v10 = v99;
          if (v48 > v37)
          {
            goto LABEL_73;
          }
        }

        v16 = (v50 + 4);
        v10 = v54;
        v56 = v52;
        while (v56)
        {
          if (!v53)
          {
            goto LABEL_77;
          }

          v57 = *v16;
          *&v112 = v55;
          v59 = *(v55 + 16);
          v58 = *(v55 + 24);
          if (v59 >= v58 >> 1)
          {
            OUTLINED_FUNCTION_11_31(v58);
            sub_237C62DB0();
            v55 = OUTLINED_FUNCTION_16_27();
          }

          *(v55 + 16) = v59 + 1;
          *(v55 + 8 * v59 + 32) = v57;
          v53 = (v53 - 1);
          v56 = (v56 - 1);
          v16 += 8;
          v10 = (v10 - 1);
          if (!v10)
          {
            goto LABEL_40;
          }
        }

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
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_75;
      }

LABEL_73:
      v85 = v107;
      (*v97)(v91, v107, v10);
      *&v112 = v39;
      BYTE4(v112) = 0;
      OUTLINED_FUNCTION_12_7();
      sub_237EF82B0();
      sub_237EF8300();
      (*v88)(v85, v10);
      a3 = v92;
      v16 = v90;
      v19 = v96;
      v25 = v89;
      if ((v92 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_10:
      if (!sub_237EF92B0())
      {
        goto LABEL_75;
      }

      v96 = v19;
      sub_237EF9D10();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v27 = v94;
    while (1)
    {
      v26 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v26 >= v25)
      {
LABEL_75:
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
        sub_237C9FE9C();
        return;
      }

      v19 = *(v87 + 8 * v26);
      ++v27;
      if (v19)
      {
        v94 = v26;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237D6223C()
{
  sub_237EF8CF0();
  OUTLINED_FUNCTION_12_7();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_237C9339C();
  sub_237EF8A60();
  OUTLINED_FUNCTION_3_53();
  swift_getWitnessTable();
  return sub_237EF8240();
}

void sub_237D62354(uint64_t *a1@<X0>, int *a2@<X8>)
{
  sub_237D509AC(*a1);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 2143289344;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
}

void sub_237D62394(uint64_t *a1@<X0>, int *a2@<X8>)
{
  sub_237D50E04(*a1);
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 2143289344;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
}

uint64_t sub_237D623D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = v44 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_7();
  v57 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v16 = v44 - v15;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v44[1] = v5 + 16;
  v58 = (v5 + 32);
  v56 = (v13 + 32);
  v49 = v5;
  v22 = v5 + 8;
  v23 = TupleTypeMetadata2;
  v24 = v14;
  v52 = a1;
  v53 = v22;
  result = sub_237EF8260();
  v26 = 0;
  v50 = v7;
  v51 = v4;
  v46 = v24;
  v47 = v23;
  v45 = v16;
  if (v20)
  {
    while (1)
    {
      v27 = v26;
LABEL_9:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v28 | (v27 << 6);
      v4 = v51;
      v30 = v52;
      v32 = v48;
      v31 = v49;
      (*(v49 + 16))(v48, *(v52 + 48) + *(v49 + 72) * v29, v51);
      v33 = *(*(v30 + 56) + 4 * v29);
      v23 = v47;
      v34 = *(v47 + 48);
      v35 = *(v31 + 32);
      v24 = v46;
      v35(v46, v32, v4);
      v36 = 0;
      *(v24 + v34) = v33;
      v7 = v50;
      v16 = v45;
LABEL_10:
      __swift_storeEnumTagSinglePayload(v24, v36, 1, v23);
      (*v56)(v16, v24, v57);
      if (__swift_getEnumTagSinglePayload(v16, 1, v23) == 1)
      {
      }

      (*v58)(v7, v16, v4);
      if ((sub_237EF8CD0() & 1) == 0)
      {
        break;
      }

      v37 = OUTLINED_FUNCTION_23_21();
      result = v38(v37);
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v59 = 0;
    v60 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
    sub_237EF9CF0();
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
    v39 = v59;
    v40 = v60;
    sub_237C84150();
    swift_allocError();
    *v41 = 0xD00000000000002CLL;
    *(v41 + 8) = 0x8000000237EFE480;
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;
    *(v41 + 32) = 5;
    swift_willThrow();

    v42 = OUTLINED_FUNCTION_23_21();
    return v43(v42);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v21)
      {
        v20 = 0;
        v36 = 1;
        goto LABEL_10;
      }

      v20 = *(v17 + 8 * v27);
      ++v26;
      if (v20)
      {
        v26 = v27;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_237D6281C@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for ClassificationDistribution();
  result = ClassificationDistribution.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t static MultiLabelClassificationMetrics.ThresholdSelectionStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_17;
      }

      LODWORD(v6) = *a1;
      LODWORD(v7) = *a2;
      sub_237D62A40(*a1, 1);
      v8 = v4;
      v9 = 1;
      goto LABEL_14;
    case 2:
      if (v5 == 2)
      {
        sub_237D62A2C(*a2, 2);
        sub_237D62A2C(v2, 2);
        OUTLINED_FUNCTION_31_0();
        v10 = sub_237EF82E0();
        sub_237D62A40(v2, 2);
        sub_237D62A40(v4, 2);
        result = v10 & 1;
      }

      else
      {
        sub_237EF8260();
LABEL_17:
        sub_237D62A2C(v4, v5);
        sub_237D62A40(v2, v3);
        sub_237D62A40(v4, v5);
LABEL_18:
        result = 0;
      }

      break;
    case 3:
      if (v5 != 3 || v4 != 0)
      {
        goto LABEL_17;
      }

      sub_237D62A40(*a1, 3);
      sub_237D62A40(0, 3);
      return 1;
    default:
      if (*(a2 + 8))
      {
        goto LABEL_17;
      }

      LODWORD(v6) = *a1;
      LODWORD(v7) = *a2;
      sub_237D62A40(*a1, 0);
      v8 = v4;
      v9 = 0;
LABEL_14:
      sub_237D62A40(v8, v9);
      if (v6 != v7)
      {
        goto LABEL_18;
      }

      result = *(&v2 + 1) == *(&v4 + 1);
      break;
  }

  return result;
}

uint64_t sub_237D62A2C(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237D62A40(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

uint64_t sub_237D62A54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x8000000237EFE460 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6C61636572 && a2 == 0xE600000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6465786966 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

unint64_t sub_237D62BB4(char a1)
{
  result = 0x6F69736963657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C6C61636572;
      break;
    case 3:
      result = 0x6465786966;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t sub_237D62C38(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D62CB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526D756D696E696DLL && a2 == 0xED00006C6C616365)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D62D7C(char a1)
{
  if (a1)
  {
    return 0x526D756D696E696DLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_237D62DB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000237EFE440 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D62E7C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_237D62EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C55228();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D62F04@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D62F38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D62F8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D62FEC()
{
  sub_237EFA120();
  sub_237C5EDA8(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237D63040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D63094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237D630C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D63118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D6318C()
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237D631DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62C38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D63238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D6328C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D63308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62CB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D63350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D633A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D633F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_237EFA120();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_237EFA170();
}

uint64_t sub_237D63460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D62DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D634C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D63514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hash(into:)()
{
  switch(*(v0 + 8))
  {
    case 1:
      v1 = 2;
      goto LABEL_8;
    case 2:
      MEMORY[0x2383E2210](3);
      v2 = OUTLINED_FUNCTION_31_0();

      result = MEMORY[0x2821FB920](v2);
      break;
    case 3:
      result = MEMORY[0x2383E2210](0);
      break;
    default:
      v1 = 1;
LABEL_8:
      MEMORY[0x2383E2210](v1);
      sub_237EFA150();
      result = sub_237EFA150();
      break;
  }

  return result;
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hashValue.getter()
{
  sub_237EFA120();
  MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237D636AC()
{
  sub_237EFA120();
  MultiLabelClassificationMetrics.ThresholdSelectionStrategy.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237D636FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_237C9339C();
  v11 = v6;
  sub_237C9339C();
  v8 = v7;
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  result = sub_237D61218(v11, v8);
  *(a3 + v9) = result;
  return result;
}

unint64_t sub_237D63878@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for ClassificationDistribution();
  result = ClassificationDistribution.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v72 = a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  OUTLINED_FUNCTION_10_33();
  v7 = _s26ThresholdSelectionStrategyO15FixedCodingKeysOMa();
  OUTLINED_FUNCTION_7_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v65 = v7;
  v62 = v8;
  sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v70 = v10;
  v71 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v66 = v12;
  OUTLINED_FUNCTION_10_33();
  v13 = _s26ThresholdSelectionStrategyO16RecallCodingKeysOMa();
  OUTLINED_FUNCTION_5_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v60 = v13;
  v58 = v14;
  sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v63 = v16;
  v64 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v61 = v18;
  OUTLINED_FUNCTION_10_33();
  v19 = _s26ThresholdSelectionStrategyO19PrecisionCodingKeysOMa();
  OUTLINED_FUNCTION_4_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v55 = v19;
  v54 = v20;
  v59 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v57 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v56 = v23;
  OUTLINED_FUNCTION_10_33();
  _s26ThresholdSelectionStrategyO36BalancedPrecisionAndRecallCodingKeysOMa();
  OUTLINED_FUNCTION_9_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v53 = v24;
  v52 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v51[1] = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = v51 - v27;
  v67 = v6;
  v68 = v5;
  _s26ThresholdSelectionStrategyO10CodingKeysOMa();
  OUTLINED_FUNCTION_8_40();
  swift_getWitnessTable();
  sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v73 = v29;
  v74 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = (v51 - v32);
  v34 = *v4;
  v35 = *(v4 + 8);
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  v72 = v33;
  sub_237EFA1B0();
  switch(v35)
  {
    case 1:
      LOBYTE(v78) = 2;
      v46 = v61;
      v48 = v72;
      v47 = v73;
      sub_237EF99C0();
      LOBYTE(v78) = 0;
      v49 = v64;
      v50 = v75;
      sub_237EF9A40();
      if (!v50)
      {
        LOBYTE(v78) = 1;
        sub_237EF9A40();
      }

      (*(v63 + 8))(v46, v49);
      result = (*(v74 + 8))(v48, v47);
      break;
    case 2:
      LOBYTE(v78) = 3;
      v36 = v66;
      v38 = v72;
      v37 = v73;
      sub_237EF99C0();
      v78 = v34;
      sub_237EF82B0();
      v76 = v69;
      v77 = MEMORY[0x277D83AA0];
      swift_getWitnessTable();
      v39 = v71;
      sub_237EF9A70();
      v41 = v70;
      goto LABEL_6;
    case 3:
      LOBYTE(v78) = 0;
      sub_237EF99C0();
      OUTLINED_FUNCTION_18_25();
      v43(v28, v52);
      v44 = OUTLINED_FUNCTION_31_0();
      result = v45(v44);
      break;
    default:
      LOBYTE(v78) = 1;
      v36 = v56;
      v38 = v72;
      v37 = v73;
      sub_237EF99C0();
      LOBYTE(v78) = 0;
      v39 = v59;
      v40 = v75;
      sub_237EF9A40();
      if (!v40)
      {
        LOBYTE(v78) = 1;
        sub_237EF9A40();
      }

      v41 = v57;
LABEL_6:
      (*(v41 + 8))(v36, v39);
      result = (*(v74 + 8))(v38, v37);
      break;
  }

  return result;
}

uint64_t MultiLabelClassificationMetrics.ThresholdSelectionStrategy<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v89 = a4;
  v7 = _s26ThresholdSelectionStrategyO15FixedCodingKeysOMa();
  OUTLINED_FUNCTION_7_36();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v98 = v8;
  v99 = v7;
  v88 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v87 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_54(v11);
  v12 = _s26ThresholdSelectionStrategyO16RecallCodingKeysOMa();
  OUTLINED_FUNCTION_5_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v96 = v13;
  v97 = v12;
  v86 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v85 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_54(v16);
  v17 = _s26ThresholdSelectionStrategyO19PrecisionCodingKeysOMa();
  OUTLINED_FUNCTION_4_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v95 = v17;
  v94 = v18;
  v84 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v83 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_1_54(v21);
  _s26ThresholdSelectionStrategyO36BalancedPrecisionAndRecallCodingKeysOMa();
  OUTLINED_FUNCTION_9_30();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  v93 = v22;
  v82 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v81 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v78 - v25;
  _s26ThresholdSelectionStrategyO10CodingKeysOMa();
  OUTLINED_FUNCTION_8_40();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v101 = v27;
  v102 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  v32 = a1;
  v33 = a1[3];
  v103 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v34 = v110;
  sub_237EFA190();
  v110 = v34;
  if (!v34)
  {
    v79 = v26;
    v80 = a2;
    v35 = v101;
    v36 = v31;
    *&v106 = sub_237EF9980();
    sub_237EF8A60();
    OUTLINED_FUNCTION_3_53();
    swift_getWitnessTable();
    *&v108 = sub_237EF9250();
    *(&v108 + 1) = v37;
    *&v109 = v38;
    *(&v109 + 1) = v39;
    sub_237EF9240();
    swift_getWitnessTable();
    sub_237EF8E00();
    v40 = v106;
    v41 = v35;
    if (v106 == 4 || (v78 = v108, v106 = v108, v107 = v109, (sub_237EF8EC0() & 1) == 0))
    {
      v44 = sub_237EF93E0();
      v45 = swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
      *v47 = type metadata accessor for MultiLabelClassificationMetrics.ThresholdSelectionStrategy();
      sub_237EF98C0();
      sub_237EF93D0();
      (*(*(v44 - 8) + 104))(v47, *MEMORY[0x277D84160], v44);
      v110 = v45;
      swift_willThrow();
      (*(v102 + 8))(v36, v41);
LABEL_18:
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v100;
      switch(v40)
      {
        case 1:
          LOBYTE(v106) = 1;
          v55 = v90;
          OUTLINED_FUNCTION_26_15();
          v110 = 0;
          LOBYTE(v106) = 0;
          v51 = v84;
          sub_237EF9940();
          v56 = v89;
          v110 = 0;
          OUTLINED_FUNCTION_24_16();
          v67 = v110;
          sub_237EF9940();
          v110 = v67;
          if (v67)
          {
            v53 = *(v83 + 8);
            v54 = v55;
            goto LABEL_16;
          }

          v75 = v68;
          (*(v83 + 8))(v55, v51);
          v76 = OUTLINED_FUNCTION_14_30();
          v77(v76);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v61 = 0;
          v60 = v4 | (v75 << 32);
          goto LABEL_22;
        case 2:
          LOBYTE(v106) = 2;
          v48 = v91;
          OUTLINED_FUNCTION_26_15();
          v110 = 0;
          LOBYTE(v106) = 0;
          v49 = v86;
          sub_237EF9940();
          v110 = 0;
          OUTLINED_FUNCTION_24_16();
          v62 = v110;
          sub_237EF9940();
          v110 = v62;
          if (v62)
          {
            (*(v85 + 8))(v48, v49);
            goto LABEL_17;
          }

          v72 = v63;
          (*(v85 + 8))(v48, v49);
          v73 = OUTLINED_FUNCTION_14_30();
          v74(v73);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v60 = v4 | (v72 << 32);
          v61 = 1;
          goto LABEL_21;
        case 3:
          LOBYTE(v106) = 3;
          v50 = v92;
          OUTLINED_FUNCTION_26_15();
          v110 = 0;
          OUTLINED_FUNCTION_12_7();
          sub_237EF82B0();
          v104 = v42;
          v105 = MEMORY[0x277D83AC8];
          swift_getWitnessTable();
          v51 = v88;
          v52 = v110;
          sub_237EF9970();
          v110 = v52;
          if (v52)
          {
            OUTLINED_FUNCTION_18_25();
            v54 = v50;
LABEL_16:
            v53(v54, v51);
LABEL_17:
            v69 = OUTLINED_FUNCTION_14_30();
            v70(v69);
            OUTLINED_FUNCTION_2_53();
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_18_25();
          v64(v50, v51);
          v65 = OUTLINED_FUNCTION_14_30();
          v66(v65);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v60 = v106;
          v61 = 2;
LABEL_21:
          v56 = v89;
LABEL_22:
          *v56 = v60;
          *(v56 + 8) = v61;
          break;
        default:
          LOBYTE(v106) = 0;
          v43 = v79;
          OUTLINED_FUNCTION_26_15();
          v110 = 0;
          OUTLINED_FUNCTION_18_25();
          v57(v43, v82);
          v58 = OUTLINED_FUNCTION_14_30();
          v59(v58);
          OUTLINED_FUNCTION_2_53();
          swift_unknownObjectRelease();
          v60 = 0;
          v61 = 3;
          goto LABEL_21;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v103);
}

uint64_t sub_237D64888(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E64414();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_237D648F4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_237D648F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237EF9AA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEB10);
        v6 = sub_237EF89B0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237D64A70(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237D649F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237D649F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237D64A70(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 8;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 4;
          v20 = (v15 < v10) ^ (v17 >= v19);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = *(v25 + 1);
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*v34 >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B510();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_237D0B510();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_237D65084((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_237D64F58(&v87, *a1, a3);
LABEL_89:
}

uint64_t sub_237D64F58(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237D4F620(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237D65084((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237D65084(char *a1, char *a2, float *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237C5EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_237C5EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v14 = v6 - 4;
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*v14 < *(v10 - 4))
    {
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 4;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[4 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_237D652B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents31MultiLabelClassificationMetricsV26ThresholdSelectionStrategyOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_237D6530C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_237D6534C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_237D65390(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *sub_237D653A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237D65474(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237D65540(_BYTE *result, int a2, int a3)
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

uint64_t sub_237D657C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB2000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D658D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237EF8CD0();
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_31()
{

  return sub_237D6223C();
}

void OUTLINED_FUNCTION_17_26(uint64_t a1@<X8>)
{
  *(v1 - 296) = a1;

  sub_237C62DB0();
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return sub_237EF98B0();
}

uint64_t ClassificationDistribution.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  sub_237C9339C();

  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF8D00();
  v6 = sub_237EF8C70();

  result = sub_237EF8DA0();
  if (v6 == result)
  {
    MEMORY[0x28223BE20](result);
    v8 = sub_237EF8800();
    OUTLINED_FUNCTION_22_3();
    result = (*(v9 + 8))(a1, a2);
    *a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t ClassificationDistribution.subscript.getter()
{
  v1 = type metadata accessor for Classification();
  OUTLINED_FUNCTION_43_0();
  v2 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF87D0();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v1);
  if (EnumTagSinglePayload == 1)
  {
    (*(v4 + 8))(v0, v2);
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + *(v1 + 36));
    OUTLINED_FUNCTION_22_3();
    (*(v8 + 8))(v0, v1);
  }

  return v7 | ((EnumTagSinglePayload == 1) << 32);
}

uint64_t sub_237D65E6C()
{
  swift_getKeyPath();
  type metadata accessor for Classification();
  sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237C9339C();

  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  return sub_237EF8D00();
}

uint64_t ClassificationDistribution.mostLikelyLabel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Classification();
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_43();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    (*(v8 + 8))(v2, v6);
    v10 = a2;
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    (*(v12 + 16))(a2, v2, v4);
    OUTLINED_FUNCTION_22_3();
    (*(v13 + 8))(v2, v5);
    v10 = a2;
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v4);
}

uint64_t ClassificationDistribution.labelsSortedByProbability.getter()
{
  swift_getKeyPath();
  type metadata accessor for Classification();
  sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237C9339C();
  v1 = v0;

  return v1;
}

uint64_t sub_237D6622C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  v4 = type metadata accessor for Classification();

  return a2(v3, v4);
}

uint64_t ClassificationDistribution.topLabels(_:)()
{
  type metadata accessor for Classification();
  sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237EF8EB0();
  swift_getKeyPath();
  sub_237EF9240();
  swift_getWitnessTable();
  sub_237C9339C();
  v1 = v0;
  swift_unknownObjectRelease();

  return v1;
}

uint64_t ClassificationDistribution.subscript.getter()
{
  OUTLINED_FUNCTION_4_45();
  OUTLINED_FUNCTION_36();

  return sub_237EF8AC0();
}

{
  sub_237EF8260();
  swift_getWitnessTable();
  return sub_237EFA0B0();
}

uint64_t sub_237D665A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_4_45();
  v3 = OUTLINED_FUNCTION_36();

  return a3(v3);
}

uint64_t ClassificationDistribution.map<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v8 = *v1;
  type metadata accessor for Classification();
  sub_237EF8A60();
  type metadata accessor for Classification();
  sub_237EF8260();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  sub_237C9339C();
  v5 = v4;

  if (!v2)
  {
    v8 = v5;
    v7 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    return ClassificationDistribution.init<A>(_:)(&v8, v7, a1);
  }

  return result;
}

uint64_t sub_237D6675C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D66800(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_237D66844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6675C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D6689C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D668F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237D66944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClassificationDistribution.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_237D6696C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ClassificationDistribution.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_237D66994(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_237D66A08(v2);
  return sub_237C84CD0;
}

void (*sub_237D66A08(uint64_t *a1))(void *a1)
{
  v2 = type metadata accessor for Classification();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  a1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  ClassificationDistribution.subscript.getter();
  return sub_237C84DD4;
}

Swift::Int sub_237D66B00@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ClassificationDistribution.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237D66B2C(Swift::Int *a1)
{
  result = ClassificationDistribution.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237D66B58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2;
  sub_237EF8260();
  v5 = ClassificationDistribution.startIndex.getter(a1);

  a2[1] = v5;
  return result;
}

uint64_t sub_237D66BAC()
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237D66C00()
{
  swift_getWitnessTable();

  return sub_237EF8E60();
}

uint64_t static ClassificationDistribution.== infix(_:_:)()
{
  type metadata accessor for Classification();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36();

  return sub_237EF8A80();
}

uint64_t ClassificationDistribution.hash(into:)()
{
  OUTLINED_FUNCTION_4_45();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_36();

  return MEMORY[0x2821FC380](v0);
}

uint64_t ClassificationDistribution.hashValue.getter()
{
  sub_237EFA120();
  ClassificationDistribution.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237D66D9C()
{
  sub_237EFA120();
  ClassificationDistribution.hash(into:)();
  return sub_237EFA170();
}

uint64_t ClassificationDistribution<>.encode(to:)(void *a1)
{
  type metadata accessor for ClassificationDistribution.CodingKeys();
  OUTLINED_FUNCTION_3_54();
  swift_getWitnessTable();
  v3 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v7 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_43();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  type metadata accessor for Classification();
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();

  return (*(v7 + 8))(v1, v3);
}

uint64_t ClassificationDistribution<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v16 = a2;
  v17 = a3;
  v15[0] = a5;
  v15[1] = a4;
  type metadata accessor for ClassificationDistribution.CodingKeys();
  OUTLINED_FUNCTION_3_54();
  swift_getWitnessTable();
  v18 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v5)
  {
    v12 = v15[0];
    type metadata accessor for Classification();
    sub_237EF8A60();
    v20 = v16;
    v21 = v17;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v13 = v18;
    sub_237EF9970();
    (*(v8 + 8))(v11, v13);
    *v12 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D67268()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237D672BC(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_4_45()
{

  return type metadata accessor for Classification();
}

uint64_t Sequence.mapFeatures<A, B, C>(_:)()
{
  OUTLINED_FUNCTION_8_41();
  type metadata accessor for AnnotatedFeature();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return OUTLINED_FUNCTION_14_31(v0, v1, v2, v3, v0, v4, MEMORY[0x277D84950], v5, v7);
}

uint64_t sub_237D67488@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>, void *a6)
{
  v26 = a2;
  v24 = a5;
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AnnotatedFeature();
  v23 = a1;
  AnnotatedFeature.feature.getter(v20, v15);
  v21 = v27;
  v26(v15);
  result = (*(v12 + 8))(v15, a3);
  if (v21)
  {
    *a6 = v21;
  }

  else
  {
    AnnotatedFeature.annotation.getter(v20, v10);
    return AnnotatedFeature.init(feature:annotation:)(v19, v10, v25, a4, v24);
  }

  return result;
}

uint64_t Sequence.mapFeatures<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_15_27(a1, a2, a3, a4, a5, a6, a7);
  v7[11] = OUTLINED_FUNCTION_27_0();
  v8 = type metadata accessor for AnnotatedFeature();
  v7[12] = v8;
  OUTLINED_FUNCTION_18(v8);
  v7[13] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[14] = v9;
  v10 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_17(v10);
  v7[16] = v11;
  v7[17] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[19] = OUTLINED_FUNCTION_30_18(v12);
  OUTLINED_FUNCTION_1_1();
  v7[20] = v13;
  v7[21] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v14);
  v7[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[23] = v15;
  v7[24] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_18(AssociatedTypeWitness);
  v7[26] = v17;
  v7[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_237D67908()
{
  v0 = OUTLINED_FUNCTION_21_23();
  v1 = OUTLINED_FUNCTION_16_28(v0);
  v2(v1);
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_18_26();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (!v3)
  {
    v8 = OUTLINED_FUNCTION_2_54();
    v9(v8);
    v10 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.feature.getter(v10, v11);
    OUTLINED_FUNCTION_0_47();
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_37(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_55(v13);
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X2, X16 }
  }

  v4 = OUTLINED_FUNCTION_1_55();
  v5(v4);

  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_237D67AC4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v2[29] = v0;

  (*(v2[14] + 8))(v2[15], v2[6]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237D67C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v19 = v14[20];
  v20 = v14[19];
  v43 = v14[18];
  v44 = v14[21];
  OUTLINED_FUNCTION_23_22();
  v21 = v14[7];
  v22 = v14[8];
  (*(v17 + 16))(v15);
  AnnotatedFeature.annotation.getter(v20, v18);
  AnnotatedFeature.init(feature:annotation:)(v15, v18, v21, v22, v16);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v17 + 8))(v43, v21);
  (*(v19 + 8))(v44, v20);
  OUTLINED_FUNCTION_17_27();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_1_55();
    v25(v24);
    v45 = v14[2];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_2_54();
    v27(v26);
    v28 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.feature.getter(v28, v29);
    OUTLINED_FUNCTION_0_47();
    v45 = v30;
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_7_37(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_3_55(v32);
    OUTLINED_FUNCTION_18_3();
  }

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v45, a12, a13, a14);
}

uint64_t sub_237D67E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[26];
  v15 = v14[27];
  v17 = v14[25];
  v27 = v14[13];
  v28 = v14[11];
  (*(v14[20] + 8))(v14[21], v14[19]);
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t Sequence.mapAnnotations<A, B, C>(_:)()
{
  OUTLINED_FUNCTION_8_41();
  type metadata accessor for AnnotatedFeature();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return OUTLINED_FUNCTION_14_31(v0, v1, v2, v3, v0, v4, MEMORY[0x277D84950], v5, v7);
}

uint64_t sub_237D67FB4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v26 = a3;
  v27 = a2;
  v24 = a6;
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnnotatedFeature();
  AnnotatedFeature.feature.getter(v21, v20);
  AnnotatedFeature.annotation.getter(v21, v11);
  v22 = v28;
  v27(v11);
  (*(v9 + 8))(v11, a5);
  if (!v22)
  {
    return AnnotatedFeature.init(feature:annotation:)(v20, v15, a4, v25, v24);
  }

  result = (*(v17 + 8))(v20, a4);
  *a7 = v22;
  return result;
}

uint64_t Sequence.mapAnnotations<A, B, C>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_15_27(a1, a2, a3, a4, a5, a6, a7);
  v7[11] = OUTLINED_FUNCTION_27_0();
  v8 = type metadata accessor for AnnotatedFeature();
  v7[12] = v8;
  OUTLINED_FUNCTION_18(v8);
  v7[13] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[14] = v9;
  v10 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_24_17(v10);
  v7[16] = v11;
  v7[17] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[19] = OUTLINED_FUNCTION_30_18(v12);
  OUTLINED_FUNCTION_1_1();
  v7[20] = v13;
  v7[21] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v14);
  v7[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[23] = v15;
  v7[24] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_18(AssociatedTypeWitness);
  v7[26] = v17;
  v7[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_237D684A8()
{
  v0 = OUTLINED_FUNCTION_21_23();
  v1 = OUTLINED_FUNCTION_16_28(v0);
  v2(v1);
  OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_18_26();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (!v3)
  {
    v8 = OUTLINED_FUNCTION_2_54();
    v9(v8);
    v10 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.annotation.getter(v10, v11);
    OUTLINED_FUNCTION_0_47();
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_7_37(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_55(v13);
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X2, X16 }
  }

  v4 = OUTLINED_FUNCTION_1_55();
  v5(v4);

  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_237D68664()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v2[29] = v0;

  (*(v2[14] + 8))(v2[15], v2[7]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237D687A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v19 = v14[20];
  v20 = v14[18];
  v44 = v14[21];
  v45 = v14[19];
  OUTLINED_FUNCTION_23_22();
  v21 = v14[8];
  v22 = v14[6];
  AnnotatedFeature.feature.getter(v23, v18);
  (*(v17 + 16))(v15, v20, v21);
  AnnotatedFeature.init(feature:annotation:)(v18, v15, v22, v21, v16);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v17 + 8))(v20, v21);
  (*(v19 + 8))(v44, v45);
  OUTLINED_FUNCTION_17_27();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_31();
  sub_237EF91A0();
  OUTLINED_FUNCTION_42_4();
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_1_55();
    v26(v25);
    v46 = v14[2];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_2_54();
    v28(v27);
    v29 = OUTLINED_FUNCTION_9_31();
    AnnotatedFeature.annotation.getter(v29, v30);
    OUTLINED_FUNCTION_0_47();
    v46 = v31;
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_7_37(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_3_55(v33);
    OUTLINED_FUNCTION_18_3();
  }

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, v46, a12, a13, a14);
}

uint64_t LazySequence.mapFeatures<A, B, C>(_:)()
{
  OUTLINED_FUNCTION_10_34();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_11_32(v0);
  type metadata accessor for AnnotatedFeature();

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_20_21();
}

uint64_t sub_237D68A7C@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v24 = a7;
  MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AnnotatedFeature();
  AnnotatedFeature.feature.getter(v20, v16);
  v23(v16);
  (*(v13 + 8))(v16, a4);
  AnnotatedFeature.annotation.getter(v20, v11);
  return AnnotatedFeature.init(feature:annotation:)(v19, v11, a5, a6, v24);
}

uint64_t LazySequence.mapAnnotations<A, B, C>(_:)()
{
  OUTLINED_FUNCTION_10_34();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_11_32(v0);
  type metadata accessor for AnnotatedFeature();

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_20_21();
}

uint64_t sub_237D68CF0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v20 = a2;
  v21 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnnotatedFeature();
  AnnotatedFeature.feature.getter(v18, v17);
  AnnotatedFeature.annotation.getter(v18, v11);
  v20(v11);
  (*(v9 + 8))(v11, a4);
  return AnnotatedFeature.init(feature:annotation:)(v17, v14, a3, a5, v21);
}

uint64_t OUTLINED_FUNCTION_6_35()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_32(void *a1)
{
  v7 = *(v4 + 24);
  a1[2] = *(v4 + 16);
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = v1;
  a1[6] = v7;
  a1[7] = v6;
  a1[8] = v5;
  return 0;
}

uint64_t OUTLINED_FUNCTION_14_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C8FFEC(v9, &a9, v11, v12, a5, v10, a7, v13 - 40);
}

uint64_t OUTLINED_FUNCTION_15_27(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = result;
  v8[4] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_237EF9860();
}

uint64_t OUTLINED_FUNCTION_21_23()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_30_18(uint64_t a1)
{
  *(v1 + 144) = a1;

  return type metadata accessor for AnnotatedFeature();
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return sub_237EF86F0();
}

uint64_t TabularTransformer.export(to:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v2, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v20, &v22);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    (*(v15 + 8))(v14, v15);
    if (!v3)
    {
      sub_237E33BC0(a1);
      sub_237D0F8BC(v9);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_237D0F854(v20);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v18 = v17;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_237EF9CF0();
    v19 = v23;
    *v18 = v22;
    v18[1] = v19;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t TabularTransformer.export(to:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v31 = a1;
  v8 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = *(a2 + 64);
  (*(v16 + 16))(v14 - v13, v5, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v25, &v27);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    (*(v18 + 8))(v17, v18);
    if (!v4)
    {
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF7770();
      sub_237EF7800();
      sub_237EF77C0();
      sub_237EF77E0();
      v19 = sub_237EF7780();
      sub_237C9FB0C(v15, sub_237C9FE58, 0, v20);
      v19(v25, 0);
      sub_237E33BC0(v31);
      sub_237D0F8BC(v11);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_237D0F854(v25);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v23 = v22;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_237EF9CF0();
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t Augmenter.init<A>(generator:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for RandomNumberGeneratorReference();
  result = sub_237D04D78();
  a3[2] = result;
  return result;
}

uint64_t Augmenter.applied<A, B>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *v4;
  v16 = *(v4 + 16);
  (*(v17 + 16))(v13 - v12);

  v15(v18);
  return sub_237D01A64(v14, v10, v16, a3, v7, a4);
}

uint64_t Augmenter.applied<A, B>(to:upsampledBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 16);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v5;
  v17 = *(v5 + 16);
  (*(v18 + 16))(v14 - v13);

  v16(v19);
  return sub_237D1CAD8(v15, a2, v11, v17, a4, v8, a5);
}

uint64_t sub_237D699D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_237D69A58(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
    return sub_237EF8260();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_237D69B04(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_237EF8260();
  }

LABEL_10:
  __break(1u);
  return result;
}

double HumanBodyActionCounter.CumulativeSumSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X8>)
{
  sub_237D69BEC(v1, v6);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v3 = sub_237D69BEC(v6, a1);
  v7(&v5, v3);
  sub_237D69C5C(v6);
  result = *&v5;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_237D69BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D69C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D69CE0@<X0>(uint64_t a1@<X8>)
{
  HumanBodyActionCounter.CumulativeSumSequence.makeAsyncIterator()(a1);

  return sub_237D6A738(v1);
}

uint64_t HumanBodyActionCounter.CumulativeSumSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_237D69D2C, 0, 0);
}

uint64_t sub_237D69D2C()
{
  OUTLINED_FUNCTION_2_0();
  v3 = (*(*(v0 + 72) + 64) + **(*(v0 + 72) + 64));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_237D69E1C;

  return v3(v0 + 16);
}

uint64_t sub_237D69E1C()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_237D6A180;
  }

  else
  {
    v5 = sub_237D69F24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237D69F24()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[4];
    v4 = v0[7];
    v5 = v0[9];
    v6 = v5[11];
    v24 = v0[5];
    v23 = v0[6];
    if (v6 && ((v7 = v5[13], v5[10] == v2) ? (v8 = v6 == v1) : (v8 = 0), v8 || (sub_237EF9D40() & 1) != 0))
    {
      if (v3 < v7)
      {
        result = v7 - v3;
        if (__OFSUB__(v7, v3))
        {
          __break(1u);
        }

        else
        {
          v10 = *(v4 + 16);
          if (v10 >= result)
          {
            result = sub_237D69B04(result, v10, v4);
            if (v12 >> 1 == v11)
            {
LABEL_15:
              v13 = v4;
              v14 = v1;
              v15 = v2;
              swift_unknownObjectRelease();
LABEL_28:
              v17 = v0[9];
              v18 = v0[8];
              v19 = *(v17 + 128) + 0.0;
              *(v17 + 128) = v19;
              v21 = v5[11];
              v22 = v5[10];
              sub_237D6A198(v15, v14);
              sub_237D6A1DC(v22, v21);
              v5[10] = v15;
              v5[11] = v14;
              *(v17 + 96) = v3;
              v5[13] = v24;
              *(v17 + 112) = v23;
              *(v17 + 120) = v13;
              sub_237EF8260();
              sub_237D6A1DC(v15, v14);
              *v18 = v15;
              *(v18 + 8) = v14;
              *(v18 + 16) = v3;
              *(v18 + 24) = v24;
              *(v18 + 32) = v23;
              *(v18 + 40) = v19;
              goto LABEL_29;
            }

            if ((v12 >> 1) > v11)
            {
              do
              {
                OUTLINED_FUNCTION_1_56();
              }

              while (!v8);
              goto LABEL_15;
            }

LABEL_34:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v14 = v1;
      v15 = v2;
      if (*(v4 + 16))
      {
        v13 = v4;
        do
        {
          OUTLINED_FUNCTION_1_56();
        }

        while (!v8);
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v1;
      v15 = v2;
      if (*(v4 + 16))
      {
        v13 = v4;
        do
        {
          OUTLINED_FUNCTION_1_56();
        }

        while (!v8);
        goto LABEL_28;
      }
    }

    v13 = v4;
    goto LABEL_28;
  }

  v16 = v0[8];
  *(v16 + 28) = 0u;
  *v16 = 0u;
  v16[1] = 0u;
LABEL_29:
  v20 = v0[1];

  return v20();
}

uint64_t sub_237D6A198(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_237EF8260();

    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237D6A1DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_237D6A220(uint64_t a1)
{
  result = sub_237D6A248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237D6A248()
{
  result = qword_27DEB2190;
  if (!qword_27DEB2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2190);
  }

  return result;
}

unint64_t sub_237D6A2A0()
{
  result = qword_27DEB2198;
  if (!qword_27DEB2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2198);
  }

  return result;
}

uint64_t sub_237D6A2F4()
{
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_237D6A388;

  return HumanBodyActionCounter.CumulativeSumSequence.Iterator.next()(v2);
}

uint64_t sub_237D6A388()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237D6A470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237D6A53C;

  return (sub_237DB5468)(a1, a2, a3);
}

uint64_t sub_237D6A53C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents15TemporalFeatureVySaySfGGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237D6A684(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 132))
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

uint64_t sub_237D6A6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 132) = 1;
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

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D6A77C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_237EF9710();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_237D6A7A0(void *a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  OUTLINED_FUNCTION_1();
  v44 = v2;
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_1();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v47 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = sub_237EF6040();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (DynamicType == v19 || (v27 = DynamicType, DynamicType == sub_237C75918(0, &qword_280C8CD08)))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    OUTLINED_FUNCTION_21_24();
    swift_dynamicCast();
    a1 = sub_237D6C290();
    (*(v21 + 8))(v25, v19);
    return a1;
  }

  if (v27 == MEMORY[0x277CC9318] || v27 == sub_237C75918(0, &qword_280C8CD10))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    swift_dynamicCast();
    v34 = v52[0];
    v35 = v52[1];
    sub_237D6CB80();
    OUTLINED_FUNCTION_26_16();
    sub_237CBA6B8(v34, v35);
    return a1;
  }

  if (v27 == v13 || v27 == sub_237C75918(0, &qword_280C8CD18))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    OUTLINED_FUNCTION_21_24();
    swift_dynamicCast();
    sub_237EF5E20();
    (*(v50 + 8))(v18, v13);
    sub_237C75918(0, &qword_280C8CCF0);
    return sub_237D6B380();
  }

  type metadata accessor for Decimal(0);
  if (v27 == v28 || v27 == sub_237C75918(0, &qword_280C8CD20))
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    sub_237C75918(0, &qword_280C8CD20);
    OUTLINED_FUNCTION_19_27();
    swift_dynamicCast();
    return v52[0];
  }

  if (v27 == v8)
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    OUTLINED_FUNCTION_21_24();
    swift_dynamicCast();
    sub_237D6C3E8();
    OUTLINED_FUNCTION_26_16();
    (*(v47 + 8))(v12, v8);
    return a1;
  }

  v29 = v49;
  if (v27 == v49)
  {
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    OUTLINED_FUNCTION_21_24();
    v36 = v45;
    swift_dynamicCast();
    sub_237D6C550();
    OUTLINED_FUNCTION_26_16();
    v37 = v46;
LABEL_24:
    (*(v37 + 8))(v36, v29);
    return a1;
  }

  v29 = v48;
  v30 = v51;
  if (v27 == v48)
  {
    sub_237C66728(a1, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
    OUTLINED_FUNCTION_21_24();
    v36 = v43;
    swift_dynamicCast();
    sub_237D6C878();
    OUTLINED_FUNCTION_26_16();
    v37 = v44;
    goto LABEL_24;
  }

  sub_237C66728(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21A8);
  OUTLINED_FUNCTION_19_27();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_23_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21B0);
    OUTLINED_FUNCTION_19_27();
    swift_dynamicCast();
    v31 = v54;
    sub_237D6CC84(v52[0]);
    if (!v31)
    {
      a1 = v32;
    }

    return a1;
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v38 = sub_237D6A77C(*(v30 + 16));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53[3] = _s19IntermediateEncoderCMa();
  v53[4] = sub_237D6DA1C(&qword_280C8D830);
  v53[0] = v30;

  v39 = v54;
  sub_237EF8310();
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    if (v38 >= sub_237D6A77C(*(v30 + 16)))
    {
LABEL_29:
      swift_willThrow();
      return a1;
    }

    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v40 = OUTLINED_FUNCTION_0_48();
    result = sub_237D6B0B8(v40, sub_237D0D048);
    if (result)
    {
      a1 = result;
      swift_endAccess();

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    if (v38 >= sub_237D6A77C(*(v30 + 16)))
    {
      return 0;
    }

    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v41 = OUTLINED_FUNCTION_0_48();
    result = sub_237D6B0B8(v41, sub_237D0D048);
    if (result)
    {
      a1 = result;
      swift_endAccess();
      return a1;
    }
  }

  __break(1u);
  return result;
}

void sub_237D6AFB4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_237D6D9F0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_237D6B01C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_237D6D6F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

unint64_t sub_237D6B0B8(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, unint64_t))
{
  if (*v2 >> 62)
  {
    result = sub_237EF9710();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = sub_237D6D5B4(a1);
  if (!result)
  {
    v6 = sub_237D6A77C(*v2);
    v7 = __OFSUB__(v6, 1);
    result = v6 - 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      return sub_237D6D438(result, a1, a2);
    }
  }

  return result;
}

id sub_237D6B140(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v3 = a1;

    return [v2 initWithFloat_];
  }

  else
  {
    if (a1 == INFINITY)
    {
      sub_237C75918(0, &qword_280C8CCF0);
      OUTLINED_FUNCTION_17_28();
    }

    else
    {
      sub_237C75918(0, &qword_280C8CCF0);
      if (a1 == -INFINITY)
      {
        OUTLINED_FUNCTION_15_28();
      }
    }

    return sub_237D6B380();
  }
}

id sub_237D6B214(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    return [v2 initWithDouble_];
  }

  else
  {
    if (a1 == INFINITY)
    {
      sub_237C75918(0, &qword_280C8CCF0);
      OUTLINED_FUNCTION_17_28();
    }

    else
    {
      sub_237C75918(0, &qword_280C8CCF0);
      if (a1 == -INFINITY)
      {
        OUTLINED_FUNCTION_15_28();
      }
    }

    return sub_237D6B380();
  }
}

void *sub_237D6B2E8(void *a1)
{
  result = sub_237D6A7A0(a1);
  if (!v1 && !result)
  {
    return [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
  }

  return result;
}

void *sub_237D6B330(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(v3 + 3, __src, 0x58uLL);
  v3[2] = MEMORY[0x277D84F90];
  v3[14] = a2;
  v3[15] = a3;
  return v3;
}

id sub_237D6B380()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_237EF8560();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_237D6B3F4()
{
  if ((*(*v0 + 200))())
  {
    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    MEMORY[0x2383E09D0]();
    sub_237D86EEC(*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_237EF89F0();
    swift_endAccess();
    v2 = v1;
LABEL_6:
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    sub_237E31298();
    v8 = v7;
    _s14KeyedContainerVMa_0();

    sub_237EF8260();

    v9 = v8;
    sub_237EF8260();
    swift_getWitnessTable();
    sub_237EF9A90();

    return;
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v3 = sub_237EF8260();
  v4 = sub_237ED8200(v3);

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v2 = v5;
      v6 = v4;
      goto LABEL_6;
    }
  }

  sub_237EF9740();
  __break(1u);
}

void sub_237D6B64C(void *a1@<X8>)
{
  v3 = v1;
  if ((*(*v1 + 200))())
  {
    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    MEMORY[0x2383E09D0]();
    OUTLINED_FUNCTION_10_35();
    sub_237D86EEC(v2);
    OUTLINED_FUNCTION_18_14();
    sub_237EF89F0();
    swift_endAccess();
    v6 = v5;
LABEL_6:
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v11 = *(v3 + 120);
    a1[3] = &_s16UnkeyedContainerVN;
    a1[4] = sub_237D4D374();
    sub_237EF8260();

    *a1 = v3;
    a1[1] = v6;
    a1[2] = v11;
    return;
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v7 = sub_237EF8260();
  v8 = sub_237ED8200(v7);

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v6 = v9;
      v10 = v8;
      goto LABEL_6;
    }
  }

  sub_237EF9740();
  __break(1u);
}

uint64_t sub_237D6B800@<X0>(void *a1@<X8>)
{
  a1[3] = _s19IntermediateEncoderCMa();
  a1[4] = sub_237D6DA1C(&qword_280C8D828);
  *a1 = v1;
}

BOOL sub_237D6B864()
{
  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_237EF9710();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  return v2 == *(*(v0 + 120) + 16);
}

uint64_t sub_237D6B974()
{
  result = (*(*v0 + 200))();
  if ((result & 1) == 0)
  {
    result = sub_237EF9740();
    __break(1u);
  }

  return result;
}

void sub_237D6BA04()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v0 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v0);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BA78()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BAF4()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BB70()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BBEC()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BC68()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BCE4()
{
  OUTLINED_FUNCTION_29_16();
  v1 = v0;
  v3 = v2;
  sub_237D6B974();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) *v1];
  v4 = OUTLINED_FUNCTION_5_44();
  MEMORY[0x2383E09D0](v4);
  OUTLINED_FUNCTION_10_35();
  v5 = OUTLINED_FUNCTION_16_29();
  sub_237D86EEC(v5);
  OUTLINED_FUNCTION_16_29();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

void sub_237D6BD74()
{
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_11_33();
  sub_237D6B974();
  sub_237C75918(0, &qword_280C8CCF0);
  sub_237EF8260();
  OUTLINED_FUNCTION_18_14();
  sub_237D6B380();
  OUTLINED_FUNCTION_7_38();
  v0 = swift_beginAccess();
  MEMORY[0x2383E09D0](v0);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  swift_endAccess();
  OUTLINED_FUNCTION_28_14();
}

uint64_t sub_237D6BE14()
{
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  sub_237D6B140(v1);
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  return swift_endAccess();
}

uint64_t sub_237D6BE8C()
{
  OUTLINED_FUNCTION_11_33();
  v1 = v0;
  sub_237D6B974();
  sub_237D6B214(v1);
  v2 = OUTLINED_FUNCTION_2_55();
  MEMORY[0x2383E09D0](v2);
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_8_42();
  sub_237EF89F0();
  return swift_endAccess();
}

uint64_t sub_237D6BF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237D6B974();
  v10[3] = a2;
  v10[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_237D6B2E8(v10);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v3)
  {
    OUTLINED_FUNCTION_7_38();
    v9 = swift_beginAccess();
    MEMORY[0x2383E09D0](v9);
    OUTLINED_FUNCTION_10_35();
    sub_237D86EEC(a2);
    OUTLINED_FUNCTION_18_14();
    sub_237EF89F0();
    return swift_endAccess();
  }

  return result;
}

id sub_237D6C290()
{
  v0 = sub_237C75918(0, &qword_280C8CCF0);
  if (qword_27DEAD0B8 != -1)
  {
    v0 = swift_once();
  }

  MEMORY[0x28223BE20](v0);
  sub_237D6B01C();
  return sub_237D6B380();
}

void sub_237D6C364(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237EF6020();
  v5 = [a1 stringFromDate_];

  v6 = sub_237EF8590();
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_237D6C3E8()
{
  OUTLINED_FUNCTION_11_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v1 = sub_237EF7E20();
  OUTLINED_FUNCTION_24_18(v1);
  if (v0)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_6_36(&qword_27DEAD2F8, &qword_27DEAD6A0);
    sub_237EF7F50();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED80);
    v2 = OUTLINED_FUNCTION_4_46(&qword_27DEB21D0);
    OUTLINED_FUNCTION_13_22(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v12[1], v12[2], v13, v14);
    OUTLINED_FUNCTION_22_21();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_237C75918(0, &qword_280C8E1F8);
    OUTLINED_FUNCTION_14_32();
  }

  return OUTLINED_FUNCTION_25_17();
}

uint64_t sub_237D6C508(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (result + 32);
  v3 = 1;
  while (1)
  {
    v4 = *v2++;
    v5 = v3 * v4;
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
      break;
    }

    v3 = v5;
    if (!--v1)
    {
      return v5 < 5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D6C550()
{
  OUTLINED_FUNCTION_11_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  v1 = sub_237EF7E20();
  OUTLINED_FUNCTION_24_18(v1);
  if (v0)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_6_36(qword_280C8CD78, &qword_27DEAEA60);
    sub_237EF7F50();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED90);
    v2 = OUTLINED_FUNCTION_4_46(&qword_27DEB21D8);
    OUTLINED_FUNCTION_13_22(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v12[1], v12[2], v13, v14);
    OUTLINED_FUNCTION_22_21();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_237C75918(0, &qword_280C8E1F8);
    OUTLINED_FUNCTION_14_32();
  }

  return OUTLINED_FUNCTION_25_17();
}

uint64_t sub_237D6C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_237EF5F40();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (!a1)
  {
    goto LABEL_7;
  }

  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v25 = a6;
  v17 = *(a5 + 40);
  (*(v13 + 104))(v15, *MEMORY[0x277CC92A8], v12);
  sub_237EF8260();
  sub_237EF8260();
  v18 = MEMORY[0x2383DE040](a1, 8 * a2, v15);
  v20 = v19;
  swift_beginAccess();
  sub_237E6528C(v18, v20);
  swift_endAccess();
  v26[3] = &type metadata for ShapedArrayReference;
  v26[4] = sub_237D6D960();
  v21 = swift_allocObject();
  v26[0] = v21;
  *(v21 + 16) = v17;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = 1;
  v22 = v26[9];
  v23 = sub_237D6B2E8(v26);
  sub_237CBA6B8(v18, v20);
  result = __swift_destroy_boxed_opaque_existential_1(v26);
  if (!v22)
  {
    *v25 = v23;
  }

  return result;
}

uint64_t sub_237D6C878()
{
  OUTLINED_FUNCTION_11_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  v1 = sub_237EF7E20();
  OUTLINED_FUNCTION_24_18(v1);
  if (v0)
  {
    sub_237EF7E20();
    OUTLINED_FUNCTION_6_36(&qword_27DEB1968, &qword_27DEAEA50);
    sub_237EF7F50();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDA8);
    v2 = OUTLINED_FUNCTION_4_46(&qword_27DEB21E0);
    OUTLINED_FUNCTION_13_22(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v12[1], v12[2], v13, v14);
    OUTLINED_FUNCTION_22_21();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_237C75918(0, &qword_280C8E1F8);
    OUTLINED_FUNCTION_14_32();
  }

  return OUTLINED_FUNCTION_25_17();
}

uint64_t sub_237D6C998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v13 = sub_237EF5F40();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_17_8();
  result = swift_beginAccess();
  if (!a1)
  {
    goto LABEL_7;
  }

  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v26 = a7;
  v21 = *(a5 + 40);
  (*(v15 + 104))(v19, *MEMORY[0x277CC92A8], v13);
  sub_237EF8260();
  sub_237EF8260();
  v22 = MEMORY[0x2383DE040](a1, 4 * a2, v19);
  v24 = v23;
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();
  sub_237E6528C(v22, v24);
  swift_endAccess();
  v28[3] = &type metadata for ShapedArrayReference;
  v28[4] = sub_237D6D960();
  OUTLINED_FUNCTION_20_22();
  v25 = swift_allocObject();
  v28[0] = v25;
  *(v25 + 16) = v21;
  *(v25 + 24) = a3;
  *(v25 + 32) = a4;
  *(v25 + 40) = a6;
  sub_237D6B2E8(v28);
  OUTLINED_FUNCTION_22_21();
  sub_237CBA6B8(v22, v24);
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  if (!v19)
  {
    *v26 = a5;
  }

  return result;
}

uint64_t sub_237D6CB80()
{
  OUTLINED_FUNCTION_11_33();
  if (MEMORY[0x2383DE0D0]() <= 8)
  {
    v6 = OUTLINED_FUNCTION_18_14();
    sub_237CBA540(v6, v7);
    v8 = OUTLINED_FUNCTION_18_14();
    sub_237D6D714(v8, v9);
    v11 = v10;
    v14 = &type metadata for InlineData;
    v15 = sub_237D6D898();
    v13[0] = v11;
  }

  else
  {
    OUTLINED_FUNCTION_17_8();
    swift_beginAccess();
    v1 = *(v0 + 40);
    v2 = OUTLINED_FUNCTION_18_14();
    v3 = MEMORY[0x2383DE0D0](v2);
    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    v4 = OUTLINED_FUNCTION_18_14();
    sub_237E6528C(v4, v5);
    swift_endAccess();
    v14 = &type metadata for DataReference;
    v15 = sub_237D6D8EC();
    v13[0] = v1;
    v13[1] = v3;
  }

  sub_237D6B2E8(v13);
  OUTLINED_FUNCTION_22_21();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return OUTLINED_FUNCTION_25_17();
}

void sub_237D6CC84(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  OUTLINED_FUNCTION_17_8();
  swift_beginAccess();
  v40 = sub_237D6A77C(*(v1 + 16));
  OUTLINED_FUNCTION_7_38();
  swift_beginAccess();
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  MEMORY[0x2383E09D0]();
  OUTLINED_FUNCTION_10_35();
  v7 = OUTLINED_FUNCTION_16_29();
  sub_237D86EEC(v7);
  OUTLINED_FUNCTION_16_29();
  v54 = v6;
  sub_237EF89F0();
  swift_endAccess();
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v41 = a1;
  sub_237EF8260();
  v13 = 0;
  v42 = v12;
  v43 = v8;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v41 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_237C66728(*(v41 + 56) + 40 * v16, &v44);
      *&v47 = v18;
      *(&v47 + 1) = v19;
      sub_237C531B8(&v44, &v48);
      sub_237EF8260();
LABEL_10:
      v51 = v47;
      v52[0] = v48;
      v52[1] = v49;
      v53 = v50;
      v20 = *(&v47 + 1);
      if (!*(&v47 + 1))
      {

        if (v40 < sub_237D6A77C(*(v4 + 16)))
        {
          OUTLINED_FUNCTION_7_38();
          swift_beginAccess();
          v36 = OUTLINED_FUNCTION_0_48();
          if (!sub_237D6B0B8(v36, sub_237D0D048))
          {
            goto LABEL_34;
          }

          swift_endAccess();
        }

        goto LABEL_30;
      }

      v21 = v51;
      sub_237C531B8(v52, &v47);
      OUTLINED_FUNCTION_7_38();
      swift_beginAccess();
      v22 = *(v4 + 120);
      sub_237EF8260();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 120) = v22;
      v24 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237D0B6E8();
        v22 = v33;
        *(v4 + 120) = v33;
      }

      v25 = *(v22 + 16);
      if (v25 >= *(v22 + 24) >> 1)
      {
        sub_237D0B6E8();
        v22 = v34;
      }

      v45 = &type metadata for _JSONKey;
      v46 = sub_237CBA80C();
      OUTLINED_FUNCTION_20_22();
      v26 = swift_allocObject();
      *&v44 = v26;
      *(v26 + 16) = v21;
      *(v26 + 24) = v20;
      *(v26 + 32) = 0;
      *(v26 + 40) = 1;
      *(v22 + 16) = v25 + 1;
      sub_237C531B8(&v44, v22 + 40 * v25 + 32);
      *(v4 + 120) = v22;
      swift_endAccess();
      v27 = sub_237D6B2E8(&v47);
      v3 = v24;
      if (v24)
      {
        break;
      }

      v28 = v27;
      *&v44 = v21;
      *(&v44 + 1) = v20;
      [v54 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_38();
      swift_beginAccess();
      v29 = *(v4 + 120);
      if (!*(v29 + 16))
      {
        goto LABEL_32;
      }

      v30 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 120) = v29;
      if ((v30 & 1) == 0)
      {
        sub_237E641D0();
        v29 = v35;
        *(v4 + 120) = v35;
      }

      v12 = v42;
      v8 = v43;
      v31 = *(v29 + 16);
      if (!v31)
      {
        goto LABEL_33;
      }

      v32 = v31 - 1;
      __swift_destroy_boxed_opaque_existential_1(v29 + 40 * v31 - 8);
      *(v29 + 16) = v32;
      *(v4 + 120) = v29;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v47);
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_7_38();
    swift_beginAccess();
    sub_237D6D14C(&v44);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v47);
    if (v40 < sub_237D6A77C(*(v4 + 16)))
    {
      OUTLINED_FUNCTION_7_38();
      swift_beginAccess();
      v37 = OUTLINED_FUNCTION_0_48();
      v38 = sub_237D6B0B8(v37, sub_237D0D048);
      if (!v38)
      {
        goto LABEL_35;
      }

      v39 = v38;
      swift_endAccess();
    }

    swift_willThrow();
LABEL_30:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v11 = 0;
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        goto LABEL_10;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_237D6D14C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_27_19();
  if (v2)
  {
    sub_237D6D4D4(&v4);
    if (v5)
    {
      sub_237C531B8(&v4, a1);
    }

    else
    {
      sub_237C863A0(&v4, &qword_27DEB21E8);
      OUTLINED_FUNCTION_27_19();
      sub_237D6D314(v3 - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_237D6D1C8(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_27_19();
  if (v2)
  {
    sub_237D6D548(&v4);
    if (v5)
    {
      sub_237C91804(&v4, a1);
    }

    else
    {
      sub_237C863A0(&v4, &qword_27DEAED60);
      OUTLINED_FUNCTION_27_19();
      sub_237D6D3A8(v3 - 1, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_237D6D244(void *a1, void *(*a2)(uint64_t *__return_ptr, void))
{
  result = a2(&v4, *a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_237D6D2A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_237D6D314(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641D0();
    v5 = v8;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + 40 * a1;
    sub_237C531B8((v7 + 32), a2);
    sub_237D0CC78((v7 + 72), v6 - 1 - a1, (v7 + 32));
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

void sub_237D6D3A8(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641E8();
    v5 = v8;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + 32 * a1;
    sub_237C91804((v7 + 32), a2);
    sub_237D0CC58((v7 + 64), v6 - 1 - a1, (v7 + 32));
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_237D6D438(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

void sub_237D6D4D4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641D0();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    sub_237C531B8((v3 + 40 * v4 - 8), a1);
    *(v3 + 16) = v5;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_237D6D548(_OWORD *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E641E8();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    sub_237C91804((v3 + 32 * v4), a1);
    *(v3 + 16) = v5;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237D6D5B4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237D6D628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v16 = &type metadata for _JSONKey;
  v17 = sub_237CBA80C();
  OUTLINED_FUNCTION_20_22();
  v12 = swift_allocObject();
  *&v15 = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5 & 1;
  v13 = *a6;
  *(v13 + 16) = a1 + 1;
  return sub_237C531B8(&v15, v13 + 40 * a1 + 32);
}

void *sub_237D6D6CC@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, void *a3@<X8>)
{
  result = sub_237D6D244(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void sub_237D6D714(uint64_t a1, unint64_t a2)
{
  v4 = sub_237EF6010();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      sub_237D6D2A4(v8, 0);
      v11 = sub_237EF5F70();
      sub_237CBA6B8(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v11 != v8)
      {
        __break(1u);
LABEL_9:
        sub_237CBA6B8(a1, a2);
      }

      return;
  }
}

unint64_t sub_237D6D898()
{
  result = qword_27DEB21B8;
  if (!qword_27DEB21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB21B8);
  }

  return result;
}

unint64_t sub_237D6D8EC()
{
  result = qword_27DEB21C0;
  if (!qword_27DEB21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB21C0);
  }

  return result;
}

unint64_t sub_237D6D960()
{
  result = qword_280C8D288;
  if (!qword_280C8D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8D288);
  }

  return result;
}

uint64_t sub_237D6DA1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s19IntermediateEncoderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_57()
{
  v2 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_237D86EEC(v2);
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_46(unint64_t *a1)
{

  return sub_237C96710(a1, v1);
}

uint64_t OUTLINED_FUNCTION_5_44()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_36(unint64_t *a1, uint64_t *a2)
{

  return sub_237C96710(a1, a2);
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  a10 = v15;
  a11 = v14;

  return sub_237D6B2E8(&a10);
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_237EF7DF0();
}

uint64_t OUTLINED_FUNCTION_23_23()
{

  return sub_237C66728(v0, v1 - 120);
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1)
{
  sub_237D6C508(a1);
}

uint64_t sub_237D6DD08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_237D6DD48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D6DDC4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v15 = MEMORY[0x277D84F90];
  result = sub_237C6311C(0, 0, 0);
  v7 = v15;
  v8 = *(a2 + 16);
  v9 = (a2 + 40);
  while (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v8)
    {
      return v7;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    sub_237EF8260();
    a3(__src, a1, v11, v10);

    v15 = v7;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_237C6311C(v12 > 1, v13 + 1, 1);
      v7 = v15;
    }

    *(v7 + 16) = v13 + 1;
    result = memcpy((v7 + 152 * v13 + 32), __src, 0x98uLL);
    v9 += 2;
    --v8;
    ++a1;
  }

  __break(1u);
  return result;
}

void sub_237D6DEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v14 = MEMORY[0x277D84F90];
  sub_237C62DB0();
  v6 = v14;
  v7 = *(a2 + 16);
  v8 = a2 + 32;
  while (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v7)
    {
      return;
    }

    v9 = *(v8 + 16);
    v12[0] = *v8;
    v12[1] = v9;
    v13[0] = *(v8 + 32);
    *(v13 + 14) = *(v8 + 46);
    v10 = a3(a1, v12);
    v14 = v6;
    v11 = *(v6 + 16);
    if (v11 >= *(v6 + 24) >> 1)
    {
      sub_237C62DB0();
      v6 = v14;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + 8 * v11 + 32) = v10;
    v8 += 56;
    --v7;
    ++a1;
  }

  __break(1u);
}

uint64_t sub_237D6E010()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F04760;
  v4 = sub_237D6E270();
  MEMORY[0x2383E0710](v4);

  *(v3 + 32) = 0x72656E7261656C22;
  *(v3 + 40) = 0xEA00000000003A22;
  v5 = *(v0 + 192);
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v6, 0);
    v7 = v5 + 32;
    do
    {
      v7 += 8;
      sub_237EF9AB0();
      OUTLINED_FUNCTION_98_0();
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_237C62D90(v8 > 1, v9 + 1, 1);
      }

      *(v16 + 16) = v9 + 1;
      v10 = v16 + 16 * v9;
      *(v10 + 32) = v1;
      *(v10 + 40) = v2;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_35_9();
  v11 = OUTLINED_FUNCTION_92_1();
  v13 = v12;

  MEMORY[0x2383E0710](v11, v13);

  MEMORY[0x2383E0710](93, 0xE100000000000000);
  *(v3 + 48) = 0x6E6F697372657622;
  *(v3 + 56) = 0xEB000000005B3A22;
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_37_9();

  v14 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v14);

  sub_237EF8260();
  MEMORY[0x2383E0710](125, 0xE100000000000000);

  return 123;
}

uint64_t sub_237D6E270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_237F105E0;
  *(v0 + 32) = 0x7562697274746122;
  *(v0 + 40) = 0xEF7D7B3A22736574;
  OUTLINED_FUNCTION_20_5();
  *(v1 + 48) = 0xD000000000000012;
  *(v1 + 56) = v2;
  OUTLINED_FUNCTION_20_5();
  *(v3 + 64) = 0xD000000000000012;
  *(v3 + 72) = v4;
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v11[1] = v5;
  sub_237D6E9D0();
  OUTLINED_FUNCTION_101();

  *(v0 + 80) = 0xD000000000000013;
  *(v0 + 88) = v11[1];
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v11[1] = v6;
  sub_237D6EAD4();
  OUTLINED_FUNCTION_101();

  v7 = v11[1];
  *(v0 + 96) = 0xD000000000000016;
  *(v0 + 104) = v7;
  strcpy(v11, "objective:");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v8 = sub_237D6ECA8();
  MEMORY[0x2383E0710](v8);

  v9 = v11[1];
  *(v0 + 112) = v11[0];
  *(v0 + 120) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_56_8();

  return v0;
}

uint64_t sub_237D6E454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E7261656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D6E524(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x72656E7261656CLL;
  }
}

void sub_237D6E554()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB21F0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74_2();
  sub_237D6E890();
  OUTLINED_FUNCTION_85_2();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_237D6E8E4();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    memcpy(v14, v13, sizeof(v14));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    sub_237D75F00(&qword_280C8CD28, &qword_27DEAD350);
    sub_237EF9970();
    v6 = OUTLINED_FUNCTION_28_15();
    v7(v6);
    v8 = v12;
    memcpy(v9, v14, 0xC0uLL);
    v9[24] = v12;
    sub_237D6E968(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v10, v14, sizeof(v10));
    v11 = v8;
    sub_237D6E9A0(v10);
    memcpy(v4, v9, 0xC8uLL);
  }

  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6E7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6E454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D6E7CC(uint64_t a1)
{
  v2 = sub_237D6E890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6E808(uint64_t a1)
{
  v2 = sub_237D6E890();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D6E844(void *a1@<X8>)
{
  sub_237D6E554();
  if (!v1)
  {
    memcpy(a1, __src, 0xC8uLL);
  }
}

unint64_t sub_237D6E890()
{
  result = qword_27DEB21F8;
  if (!qword_27DEB21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB21F8);
  }

  return result;
}

unint64_t sub_237D6E8E4()
{
  result = qword_27DEB2200;
  if (!qword_27DEB2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2200);
  }

  return result;
}

uint64_t sub_237D6E9D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_237F04760;
  sub_237D702B0();
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_77_2(v1, v2, v3, v4, v5, v6, v7, v8, 0x3A226C65646F6D22, 0xE800000000000000);
  OUTLINED_FUNCTION_100_1();
  v19 = v9;
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v10, v11, v12, v13, v14, v15, v16, v17, v19, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_56_8();

  return v0;
}

uint64_t sub_237D6EAD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F105F0;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  MEMORY[0x2383E0710](v0[6], v0[7]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, 0x63735F6573616222, 0xEF22203A2265726FLL);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x2383E0710](v1[4], v1[5]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v25 = v19;
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  *(v2 + 64) = 0xD000000000000010;
  *(v2 + 72) = v25;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  v23 = v20 | 0x7261745F00000000;
  MEMORY[0x2383E0710](v1[2], v1[3]);
  OUTLINED_FUNCTION_36_11();
  *(v2 + 80) = v23;
  *(v2 + 88) = 0xEF22203A22746567;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_56_8();

  return v2;
}

uint64_t sub_237D6ECA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_237F03530;
  OUTLINED_FUNCTION_100_1();
  v22 = v2;
  MEMORY[0x2383E0710](*v0, v0[1]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, v22, 0xE800000000000000);
  if (v0[3])
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v23 = v11;
    sub_237D6F400();
    OUTLINED_FUNCTION_101();

    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    if (v13 >= v12 >> 1)
    {
      OUTLINED_FUNCTION_5_2(v12);
      sub_237D0B354();
      v1 = v20;
    }

    *(v1 + 16) = v13 + 1;
    v14 = v1 + 16 * v13;
    *(v14 + 32) = 0xD00000000000001BLL;
    *(v14 + 40) = v23;
  }

  if (v0[5])
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v24 = v15;
    OUTLINED_FUNCTION_5_12();
    v16 = sub_237D6F48C();
    MEMORY[0x2383E0710](v16);

    v17 = *(v1 + 16);
    if (v17 >= *(v1 + 24) >> 1)
    {
      sub_237D0B354();
      v1 = v21;
    }

    *(v1 + 16) = v17 + 1;
    v18 = v1 + 16 * v17;
    *(v18 + 32) = 0xD000000000000011;
    *(v18 + 40) = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_56_8();

  return v1;
}

uint64_t sub_237D6EEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237EFE9F0 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x76697463656A626FLL && a2 == 0xE900000000000065;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656964617267 && a2 == 0xEF726574736F6F42)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D6EFCC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x76697463656A626FLL;
  }

  return 0x746E656964617267;
}

void sub_237D6F038()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2230);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74_2();
  sub_237D75CF4();
  OUTLINED_FUNCTION_85_2();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_237D75D48();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = v21;
    LOBYTE(v14[0]) = 1;
    sub_237D75D9C();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v9 = v15[0];
    v10 = v15[2];
    v11 = v15[1];
    v12 = v15[3];
    v8 = v15[4];
    v13 = v15[5];
    sub_237D75E20();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v6 = OUTLINED_FUNCTION_28_15();
    v7(v6);
    memcpy(v22, v17, sizeof(v22));
    v14[0] = v23;
    v14[1] = v24;
    v14[2] = v25;
    v14[3] = v26;
    *&v14[4] = v9;
    *(&v14[4] + 1) = v11;
    *&v14[5] = v10;
    *(&v14[5] + 1) = v12;
    *&v14[6] = v8;
    *(&v14[6] + 1) = v13;
    memcpy(&v14[7], v17, 0x50uLL);
    sub_237D75E74(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_99_0();
    v15[8] = v9;
    v15[9] = v11;
    v15[10] = v10;
    v15[11] = v12;
    v15[12] = v8;
    v15[13] = v13;
    memcpy(v16, v22, sizeof(v16));
    sub_237D6E938(v15);
    memcpy(v4, v14, 0xC0uLL);
  }

  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6F314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6EEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D6F33C(uint64_t a1)
{
  v2 = sub_237D75CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6F378(uint64_t a1)
{
  v2 = sub_237D75CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D6F3B4(void *a1@<X8>)
{
  sub_237D6F038();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

uint64_t sub_237D6F400()
{
  OUTLINED_FUNCTION_9_22();
  sub_237EF9330();

  strcpy(v2, "{num_class:");
  v0 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E0710](v0);
  MEMORY[0x2383E0710](32034, 0xE200000000000000);
  return v2[0];
}

unint64_t sub_237D6F48C()
{
  OUTLINED_FUNCTION_9_22();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v0 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E0710](v0);
  MEMORY[0x2383E0710](32034, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_237D6F50C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000237EFEA10 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5073736F4C676572 && a2 == 0xEC0000006D617261)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D6F628(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x5073736F4C676572;
}

void sub_237D6F684()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22B8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_70_4();
  sub_237D76490();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_110_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    LOBYTE(v9) = 0;
    OUTLINED_FUNCTION_42_7();
    v4 = sub_237EF9910();
    v6 = v5;
    sub_237D764E4();
    OUTLINED_FUNCTION_60_6();
    OUTLINED_FUNCTION_42_7();
    sub_237EF9900();
    sub_237D76538();
    OUTLINED_FUNCTION_60_6();
    OUTLINED_FUNCTION_42_7();
    sub_237EF9900();
    v7 = OUTLINED_FUNCTION_26_17();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(v0);
    *v2 = v4;
    v2[1] = v6;
    v2[2] = v9;
    v2[3] = v10;
    v2[4] = v9;
    v2[5] = v10;
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6F874(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736F50656C616373 && a2 == 0xEE00746867696557)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D6F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6F50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D6F948(uint64_t a1)
{
  v2 = sub_237D76490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6F984(uint64_t a1)
{
  v2 = sub_237D76490();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D6F9C0@<D0>(_OWORD *a1@<X8>)
{
  sub_237D6F684();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_237D6FA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6F874(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D6FA34(uint64_t a1)
{
  v2 = sub_237D76FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6FA70(uint64_t a1)
{
  v2 = sub_237D76FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D6FAF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7373616C436D756ELL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_237D6FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v27);
  OUTLINED_FUNCTION_1();
  a10 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_70_4();
  v24();
  OUTLINED_FUNCTION_110_0();
  if (!v20)
  {
    sub_237EF9910();
    (*(a10 + 8))(v32, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D6FCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6FAF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D6FCE4(uint64_t a1)
{
  v2 = sub_237D76F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D6FD20(uint64_t a1)
{
  v2 = sub_237D76F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D6FDDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75746165466D756ELL && a2 == 0xEA00000000006572;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65677261546D756ELL && a2 == 0xE900000000000074;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7373616C436D756ELL && a2 == 0xE800000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237D6FF48(char a1)
{
  result = 0x75746165466D756ELL;
  switch(a1)
  {
    case 1:
      result = 0x65677261546D756ELL;
      break;
    case 2:
      result = 0x7373616C436D756ELL;
      break;
    case 3:
      result = 0x726F635365736162;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D6FFDC()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_237D76404();
  OUTLINED_FUNCTION_86_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    v3 = sub_237EF9910();
    OUTLINED_FUNCTION_63_4(v3, v4);
    v5 = OUTLINED_FUNCTION_76_3();
    v6(v5);
    v7 = OUTLINED_FUNCTION_53_7();
    sub_237D76458(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v9 = OUTLINED_FUNCTION_59_6();
    sub_237D75DF0(v9);
    OUTLINED_FUNCTION_65_4();
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D701E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D6FDDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D7020C(uint64_t a1)
{
  v2 = sub_237D76404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D70248(uint64_t a1)
{
  v2 = sub_237D76404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D702B0()
{
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237F08A50;
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  __dst[1] = v5;
  v6 = sub_237D70A64();
  MEMORY[0x2383E0710](v6);

  v7 = __dst[1];
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = v7;
  sub_237EF9330();

  strcpy(__dst, "tree_info:[");
  HIWORD(__dst[1]) = -4864;
  v8 = *(v0 + 48);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v36 = v4;
  if (v9)
  {
    v37[0] = MEMORY[0x277D84F90];
    sub_237C62D90(0, v9, 0);
    v10 = v37[0];
    v11 = (v8 + 32);
    v1 = MEMORY[0x277D83BF8];
    do
    {
      v12 = *v11++;
      v39 = v12;
      v2 = sub_237EF9AB0();
      v14 = v13;
      v37[0] = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_17_0(v15);
        sub_237C62D90(v18, v16 + 1, 1);
        v10 = v37[0];
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v2;
      *(v17 + 40) = v14;
      --v9;
    }

    while (v9);
    v3 = v0;
    v4 = v36;
  }

  v37[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_98_0();

  MEMORY[0x2383E0710](v1, v2);

  MEMORY[0x2383E0710](93, 0xE100000000000000);
  v19 = __dst[1];
  *(v4 + 48) = __dst[0];
  *(v4 + 56) = v19;
  v39 = 0x3A22736565727422;
  v40 = 0xE90000000000005BLL;
  v20 = *(v3 + 56);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v38 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v21, 0);
    v22 = v38;
    v23 = (v20 + 32);
    do
    {
      memcpy(__dst, v23, 0x98uLL);
      sub_237D74EE4(__dst, v37);
      v24 = sub_237D70BE8();
      v26 = v25;
      sub_237D74F1C(__dst);
      v38 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_237C62D90(v27 > 1, v28 + 1, 1);
        v22 = v38;
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v23 += 152;
      --v21;
    }

    while (v21);
    v4 = v36;
  }

  v37[0] = v22;
  OUTLINED_FUNCTION_35_9();
  v30 = OUTLINED_FUNCTION_92_1();
  v32 = v31;

  MEMORY[0x2383E0710](v30, v32);

  MEMORY[0x2383E0710](93, 0xE100000000000000);
  v33 = v40;
  *(v4 + 64) = v39;
  *(v4 + 72) = v33;
  v37[0] = v4;
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_37_9();

  v37[0] = 123;
  v37[1] = 0xE100000000000000;
  v34 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v34);

  sub_237EF8260();
  MEMORY[0x2383E0710](125, 0xE100000000000000);

  return v37[0];
}

uint64_t sub_237D70674(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D70738(char a1)
{
  if (a1)
  {
    return 0x6C65646F6DLL;
  }

  else
  {
    return 1701667182;
  }
}

void sub_237D70764()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22D8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74_2();
  sub_237D7658C();
  sub_237EFA190();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v11[0]) = 0;
    v5 = sub_237EF9910();
    v7 = v6;
    v16 = 1;
    sub_237D765E0();
    OUTLINED_FUNCTION_43_9();
    sub_237EF9970();
    v8 = OUTLINED_FUNCTION_73_2();
    v9(v8);
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    *&v10[0] = v5;
    *(&v10[0] + 1) = v7;
    v10[1] = v17;
    v10[2] = v18;
    v10[3] = v19;
    v10[4] = v20;
    sub_237D76634(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v11[0] = v5;
    v11[1] = v7;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v15 = v24;
    sub_237D7666C(v11);
    memcpy(v25, v10, 0x50uLL);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D70978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D70674(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D709A0(uint64_t a1)
{
  v2 = sub_237D7658C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D709DC(uint64_t a1)
{
  v2 = sub_237D7658C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D70A18(void *a1@<X8>)
{
  sub_237D70764();
  if (!v1)
  {
    memcpy(a1, v3, 0x50uLL);
  }
}

uint64_t sub_237D70A64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_237F08A50;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v23 = v2;
  MEMORY[0x2383E0710](v0[2], v0[3]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, 0xD000000000000015, v23);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  v22 = v11 | 0x6572745F00000000;
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v12, v13, v14, v15, v16, v17, v18, v19, v22, 0xED0000223A227365);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v24 = v20;
  MEMORY[0x2383E0710](v0[4], v0[5]);
  OUTLINED_FUNCTION_36_11();
  *(v1 + 64) = 0xD000000000000014;
  *(v1 + 72) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_56_8();

  return v1;
}

uint64_t sub_237D70BE8()
{
  v1 = 0xD000000000000010;
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v167 = v2;
  v164 = v0;
  v3 = *(v0 + 72);
  v4 = *(v3 + 16);
  if (v4)
  {
    v166 = MEMORY[0x277D84F90];
    v5 = OUTLINED_FUNCTION_55_6();
    sub_237C62D90(v5, v6, v7);
    v8 = v3 + 32;
    do
    {
      v9 = sub_237EF8C30();
      v11 = v10;
      v165 = v10;
      v12 = sub_237D05400();
      v17 = OUTLINED_FUNCTION_45_6(v12, v13, v14, v15, v16);
      if ((v17 & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_45_6(v17, v18, v19, v20, v21);
        if ((v22 & 1) == 0 && (OUTLINED_FUNCTION_45_6(v22, v23, v24, v25, v26) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
          v11 = v165;
        }
      }

      v28 = *(v166 + 16);
      v27 = *(v166 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = OUTLINED_FUNCTION_17_0(v27);
        sub_237C62D90(v30, v28 + 1, 1);
      }

      *(v166 + 16) = v28 + 1;
      v29 = v166 + 16 * v28;
      *(v29 + 32) = v9;
      *(v29 + 40) = v11;
      v8 += 4;
      --v4;
    }

    while (v4);
    v1 = 0xD000000000000010;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_35_9();
  sub_237EF83F0();
  OUTLINED_FUNCTION_37_9();

  v31 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v31);

  OUTLINED_FUNCTION_41_6();
  sub_237D0B354();
  v33 = v32;
  v35 = *(v32 + 16);
  v34 = *(v32 + 24);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    OUTLINED_FUNCTION_5_2(v34);
    sub_237D0B354();
    v33 = v147;
    v34 = *(v147 + 24);
    v36 = v34 >> 1;
  }

  *(v33 + 16) = v37;
  v38 = v33 + 16 * v35;
  *(v38 + 32) = 0xD000000000000010;
  *(v38 + 40) = v167;
  v39 = v35 + 2;
  if (v36 < (v35 + 2))
  {
    OUTLINED_FUNCTION_17_0(v34);
    OUTLINED_FUNCTION_64_4();
    v33 = v148;
  }

  *(v33 + 16) = v39;
  v40 = v33 + 16 * v37;
  *(v40 + 32) = 0x726F676574616322;
  *(v40 + 40) = 0xEF5D5B3A22736569;
  v41 = *(v33 + 24);
  v42 = v35 + 3;
  if ((v35 + 3) > (v41 >> 1))
  {
    OUTLINED_FUNCTION_17_0(v41);
    OUTLINED_FUNCTION_64_4();
    v33 = v149;
  }

  OUTLINED_FUNCTION_20_5();
  *(v33 + 16) = v42;
  v43 = v33 + 16 * v39;
  *(v43 + 32) = 0xD000000000000015;
  *(v43 + 40) = v44;
  v45 = *(v33 + 24);
  v46 = v35 + 4;
  if ((v35 + 4) > (v45 >> 1))
  {
    OUTLINED_FUNCTION_5_2(v45);
    sub_237D0B354();
    v33 = v150;
  }

  OUTLINED_FUNCTION_20_5();
  *(v33 + 16) = v46;
  v47 = v33 + 16 * v42;
  *(v47 + 32) = 0xD000000000000018;
  *(v47 + 40) = v48;
  v49 = *(v33 + 24);
  if ((v35 + 5) > (v49 >> 1))
  {
    OUTLINED_FUNCTION_17_0(v49);
    OUTLINED_FUNCTION_64_4();
    v33 = v151;
  }

  OUTLINED_FUNCTION_20_5();
  *(v33 + 16) = v35 + 5;
  v50 = v33 + 16 * v46;
  *(v50 + 32) = 0xD000000000000015;
  *(v50 + 40) = v51;
  OUTLINED_FUNCTION_20_5();
  if (*(*(v164 + 24) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    v1 = MEMORY[0x277D83B88];
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v53)
      {
        OUTLINED_FUNCTION_25_18(v52);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v54);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v55 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v55);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v56);
    sub_237D0B354();
    v33 = v152;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  v57 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v57);

  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v58);
    sub_237D0B354();
    v33 = v153;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v59 + 8) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    v1 = MEMORY[0x277D83B88];
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v53)
      {
        OUTLINED_FUNCTION_25_18(v60);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v54);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v61 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v61);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v62);
    sub_237D0B354();
    v33 = v154;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  v168 = v63;
  if (*(*(v164 + 40) + 16))
  {
    v163 = v33;
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_72_2();
    do
    {
      sub_237EF8C30();
      v64 = OUTLINED_FUNCTION_46_7();
      v69 = OUTLINED_FUNCTION_5_45(v64, v65, v66, v67, v68);
      if ((v69 & 1) == 0)
      {
        v74 = OUTLINED_FUNCTION_5_45(v69, v70, v71, v72, v73);
        if ((v74 & 1) == 0 && (OUTLINED_FUNCTION_5_45(v74, v75, v76, v77, v78) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
        }
      }

      OUTLINED_FUNCTION_58_5();
      if (v53)
      {
        v80 = OUTLINED_FUNCTION_17_0(v79);
        OUTLINED_FUNCTION_90_1(v80);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v54);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v81 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v81);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v82);
    sub_237D0B354();
    v33 = v155;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  if (*(*(v83 + 32) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v53)
      {
        OUTLINED_FUNCTION_25_18(v84);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v54);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v85 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v85);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v86);
    sub_237D0B354();
    v33 = v156;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v87 + 16) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v53)
      {
        OUTLINED_FUNCTION_25_18(v88);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v54);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v89 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v89);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v90);
    sub_237D0B354();
    v33 = v157;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v91 + 48) + 16))
  {
    v163 = v33;
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_72_2();
    do
    {
      sub_237EF8C30();
      v92 = OUTLINED_FUNCTION_46_7();
      v97 = OUTLINED_FUNCTION_5_45(v92, v93, v94, v95, v96);
      if ((v97 & 1) == 0)
      {
        v102 = OUTLINED_FUNCTION_5_45(v97, v98, v99, v100, v101);
        if ((v102 & 1) == 0 && (OUTLINED_FUNCTION_5_45(v102, v103, v104, v105, v106) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
        }
      }

      OUTLINED_FUNCTION_58_5();
      if (v53)
      {
        v108 = OUTLINED_FUNCTION_17_0(v107);
        OUTLINED_FUNCTION_90_1(v108);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v54);
    OUTLINED_FUNCTION_32_13();
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v109 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v109);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v110);
    sub_237D0B354();
    v33 = v158;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_105_0();
  if (*(*(v111 + 56) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v53)
      {
        OUTLINED_FUNCTION_25_18(v112);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v54);
    v33 = v163;
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v113 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v113);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v114);
    sub_237D0B354();
    v33 = v159;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  if (*(*(v115 + 64) + 16))
  {
    OUTLINED_FUNCTION_11_34();
    OUTLINED_FUNCTION_66_3();
    do
    {
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_1_58();
      if (v53)
      {
        OUTLINED_FUNCTION_25_18(v116);
      }

      OUTLINED_FUNCTION_12_32();
    }

    while (!v54);
    v33 = v163;
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v117 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v117);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v118);
    sub_237D0B354();
    v33 = v160;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  if (*(*(v119 + 80) + 16))
  {
    OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_72_2();
    do
    {
      sub_237EF8C30();
      v120 = OUTLINED_FUNCTION_46_7();
      v125 = OUTLINED_FUNCTION_5_45(v120, v121, v122, v123, v124);
      if ((v125 & 1) == 0)
      {
        v130 = OUTLINED_FUNCTION_5_45(v125, v126, v127, v128, v129);
        if ((v130 & 1) == 0 && (OUTLINED_FUNCTION_5_45(v130, v131, v132, v133, v134) & 1) == 0)
        {
          OUTLINED_FUNCTION_69_5();
        }
      }

      OUTLINED_FUNCTION_58_5();
      if (v53)
      {
        v136 = OUTLINED_FUNCTION_17_0(v135);
        OUTLINED_FUNCTION_90_1(v136);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v54);
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_37_9();

  v137 = OUTLINED_FUNCTION_5_12();
  MEMORY[0x2383E0710](v137);

  OUTLINED_FUNCTION_41_6();
  OUTLINED_FUNCTION_3_56();
  if (v53)
  {
    OUTLINED_FUNCTION_5_2(v138);
    sub_237D0B354();
    v33 = v161;
  }

  OUTLINED_FUNCTION_15_29();
  OUTLINED_FUNCTION_79_2();
  v139 = sub_237D72220();
  MEMORY[0x2383E0710](v139);

  v141 = *(v33 + 16);
  v140 = *(v33 + 24);
  if (v141 >= v140 >> 1)
  {
    OUTLINED_FUNCTION_17_0(v140);
    OUTLINED_FUNCTION_64_4();
    v33 = v162;
  }

  *(v33 + 16) = v141 + 1;
  v142 = v33 + 16 * v141;
  *(v142 + 32) = v1;
  *(v142 + 40) = v168;
  OUTLINED_FUNCTION_35_9();
  v143 = sub_237EF83F0();
  v145 = v144;

  MEMORY[0x2383E0710](v143, v145);

  sub_237EF8260();
  MEMORY[0x2383E0710](125, 0xE100000000000000);

  return 123;
}

uint64_t sub_237D717A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000237EFEA30 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F666E4965657274 && a2 == 0xE800000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7365657274 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D718BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6F666E4965657274;
  }

  return 0x7365657274;
}

void sub_237D71914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13_4();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2380);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_70_4();
  sub_237D76FF8();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_110_0();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_237D7704C();
    OUTLINED_FUNCTION_60_6();
    sub_237EF9970();
    v16 = v28;
    v17 = v29;
    v18 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    sub_237D75F00(&qword_280C8CD28, &qword_27DEAD350);
    sub_237EF9970();
    v23 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2398);
    v33 = 2;
    sub_237D770A0();
    sub_237EF9970();
    v19 = OUTLINED_FUNCTION_26_17();
    v20(v19);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    *&v27 = v28;
    *(&v27 + 1) = a10;
    sub_237D77178(&v24, &v28);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v23;
    v32 = a10;
    sub_237D771B0(&v28);
    v21 = v25;
    *v14 = v24;
    v14[1] = v21;
    v22 = v27;
    v14[2] = v26;
    v14[3] = v22;
  }

  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D71C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D717A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D71C5C(uint64_t a1)
{
  v2 = sub_237D76FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D71C98(uint64_t a1)
{
  v2 = sub_237D76FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D71CD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_237D71914(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    result = *&v16;
    a9[2] = v16;
    a9[3] = v17;
  }

  return result;
}

uint64_t sub_237D71D18@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_98_0();
  v4 = OUTLINED_FUNCTION_89_1();
  v6 = v5;
  result = OUTLINED_FUNCTION_89_1();
  *a1 = v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v6;
  a1[4] = result;
  a1[5] = v8;
  return result;
}

uint64_t sub_237D71DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656572546D756ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C617261506D756ELL && a2 == 0xEF656572546C656CLL;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6661654C657A6973 && a2 == 0xEE00726F74636556)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237D71EC8(char a1)
{
  if (!a1)
  {
    return 0x73656572546D756ELL;
  }

  if (a1 == 1)
  {
    return 0x6C617261506D756ELL;
  }

  return 0x6661654C657A6973;
}

void sub_237D71F38()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB23F8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_70_4();
  sub_237D7769C();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_110_0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v7 = sub_237EF9910();
    v17 = v8;
    v15 = sub_237EF9910();
    v16 = v9;
    v10 = sub_237EF9910();
    v11 = OUTLINED_FUNCTION_47_4();
    v13 = v12;
    v14(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v4 = v7;
    v4[1] = v17;
    v4[2] = v15;
    v4[3] = v16;
    v4[4] = v10;
    v4[5] = v13;
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D7213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D71DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D72164(uint64_t a1)
{
  v2 = sub_237D7769C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D721A0(uint64_t a1)
{
  v2 = sub_237D7769C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D721DC@<D0>(_OWORD *a1@<X8>)
{
  sub_237D71F38();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_237D72220()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F105F0;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v24 = v3;
  MEMORY[0x2383E0710](v0[4], v0[5]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_77_2(v4, v5, v6, v7, v8, v9, v10, v11, 0xD000000000000010, v24);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v25 = v12;
  MEMORY[0x2383E0710](v1[2], v1[3]);
  OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_103(v13, v14, v15, v16, v17, v18, v19, v20, 0xD000000000000010, v25);
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_36_11();
  *(v2 + 64) = v23;
  *(v2 + 72) = v26;
  OUTLINED_FUNCTION_48_7();
  sub_237EF9330();

  OUTLINED_FUNCTION_20_5();
  v27 = v21;
  MEMORY[0x2383E0710](v1[6], v1[7]);
  OUTLINED_FUNCTION_36_11();
  *(v2 + 80) = 0xD000000000000015;
  *(v2 + 88) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237D74E80();
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_18_27();

  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_56_8();

  return v2;
}

uint64_t sub_237D723D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365646F4E6D756ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x75746165466D756ELL && a2 == 0xEA00000000006572;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74656C65446D756ELL && a2 == 0xEA00000000006465;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6661654C657A6973 && a2 == 0xEE00726F74636556)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237D72544(char a1)
{
  result = 0x7365646F4E6D756ELL;
  switch(a1)
  {
    case 1:
      result = 0x75746165466D756ELL;
      break;
    case 2:
      result = 0x74656C65446D756ELL;
      break;
    case 3:
      result = 0x6661654C657A6973;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D725E0()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB22F0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_237D7669C();
  OUTLINED_FUNCTION_86_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    sub_237EF9910();
    OUTLINED_FUNCTION_30_19();
    v3 = sub_237EF9910();
    OUTLINED_FUNCTION_63_4(v3, v4);
    v5 = OUTLINED_FUNCTION_76_3();
    v6(v5);
    v7 = OUTLINED_FUNCTION_53_7();
    sub_237D766F0(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v9 = OUTLINED_FUNCTION_59_6();
    sub_237D76728(v9);
    OUTLINED_FUNCTION_65_4();
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D727E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6968437466656CLL && a2 == 0xEC0000006E657264;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6968437468676972 && a2 == 0xED00006E6572646CLL;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C746C7561666564 && a2 == 0xEB00000000746665;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73746E65726170 && a2 == 0xE700000000000000;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E61684373736F6CLL && a2 == 0xEB00000000736567;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F4374696C7073 && a2 == 0xEF736E6F69746964;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x646E4974696C7073 && a2 == 0xEC00000073656369;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x70795474696C7073 && a2 == 0xE900000000000065;
                  if (v13 || (sub_237EF9D40() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6769655765736162 && a2 == 0xEB00000000737468;
                    if (v14 || (sub_237EF9D40() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x69737365486D7573 && a2 == 0xEA00000000006E61;
                      if (v15 || (sub_237EF9D40() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6172615065657274 && a2 == 0xE90000000000006DLL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_237EF9D40();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
  }
}

uint64_t sub_237D72BAC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6968437466656CLL;
      break;
    case 2:
      result = 0x6968437468676972;
      break;
    case 3:
      result = 0x4C746C7561666564;
      break;
    case 4:
      result = 0x73746E65726170;
      break;
    case 5:
      result = 0x6E61684373736F6CLL;
      break;
    case 6:
      result = 0x6E6F4374696C7073;
      break;
    case 7:
      result = 0x646E4974696C7073;
      break;
    case 8:
      result = 0x70795474696C7073;
      break;
    case 9:
      result = 0x6769655765736162;
      break;
    case 10:
      result = 0x69737365486D7573;
      break;
    case 11:
      result = 0x6172615065657274;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237D72D38()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2258);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52_8();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237D75EAC();
  OUTLINED_FUNCTION_107_0();
  sub_237EFA190();
  if (v0)
  {
    OUTLINED_FUNCTION_13_23();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v1)
    {

      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v20)
    {
LABEL_5:
      if (v21)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v21)
    {
LABEL_6:

      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v24[0]) = 0;
  OUTLINED_FUNCTION_42_7();
  v7 = sub_237EF9950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  sub_237D75F00(&qword_280C8CD28, &qword_27DEAD350);
  OUTLINED_FUNCTION_4_47();
  v19 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v18 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v17 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v16 = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
  sub_237D75F00(&qword_27DEB2268, &qword_27DEAE3D8);
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v15 = v24[0];
  OUTLINED_FUNCTION_20_23(6);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v14 = v24[0];
  OUTLINED_FUNCTION_4_47();
  v13 = v24[0];
  LOBYTE(v23[0]) = 8;
  OUTLINED_FUNCTION_4_47();
  v12 = v24[0];
  OUTLINED_FUNCTION_20_23(9);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v11 = v24[0];
  OUTLINED_FUNCTION_20_23(10);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v10 = v24[0];
  v29 = 11;
  sub_237D75F68();
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_42_7();
  sub_237EF9970();
  v8 = OUTLINED_FUNCTION_21_25();
  v9(v8);
  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  *&v23[17] = v33;
  *&v23[13] = v31;
  *&v23[15] = v32;
  v23[0] = v7;
  v23[1] = v19;
  v23[2] = v18;
  v23[3] = v17;
  v23[4] = v16;
  v23[5] = v15;
  v23[6] = v14;
  v23[7] = v13;
  v23[8] = v12;
  v23[9] = v11;
  v23[10] = v10;
  *&v23[11] = v30;
  sub_237D74EE4(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v3);
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v24[0] = v7;
  v24[1] = v19;
  v24[2] = v18;
  v24[3] = v17;
  v24[4] = v16;
  v24[5] = v15;
  v24[6] = v14;
  v24[7] = v13;
  v24[8] = v12;
  v24[9] = v11;
  v24[10] = v10;
  v28 = v37;
  sub_237D74F1C(v24);
  memcpy(v5, v23, 0x98uLL);
LABEL_12:
  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D733D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D723D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D733F8(uint64_t a1)
{
  v2 = sub_237D7669C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D73434(uint64_t a1)
{
  v2 = sub_237D7669C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_237D7349C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_237D734EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D727E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D73514@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D72BA4();
  *a1 = result;
  return result;
}

uint64_t sub_237D7353C(uint64_t a1)
{
  v2 = sub_237D75EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D73578(uint64_t a1)
{
  v2 = sub_237D75EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D735B4(void *a1@<X8>)
{
  sub_237D72D38();
  if (!v1)
  {
    memcpy(a1, __src, 0x98uLL);
  }
}

void *sub_237D7360C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[6] <= 1)
  {
    sub_237D736DC(a1, __src);
    memcpy(v5, __src, 0xC0uLL);
    v5[24] = &unk_284ACD948;
    memcpy(__dst, v5, sizeof(__dst));
    nullsub_1(__dst, v3);
    memcpy(v7, __src, sizeof(v7));
    v8 = &unk_284ACD948;
    sub_237D6E968(v5, v10);
    sub_237D6E9A0(v7);
    memcpy(v10, __dst, sizeof(v10));
  }

  else
  {
    sub_237D74F4C(a1);
    sub_237D74FB4(v10);
  }

  return memcpy(a2, v10, 0xC8uLL);
}

__n128 sub_237D736DC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_237D74FBC(a1, v27);
  sub_237D73898(a1, v28);
  v5 = a1[3];
  v4 = a1[4];
  if (v4 <= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[4];
  }

  v27[0] = a1[2];
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83BF8];
  v9 = OUTLINED_FUNCTION_87_1();
  v25 = v10;
  v26 = v9;
  v27[0] = v5;
  v11 = OUTLINED_FUNCTION_87_1();
  v13 = v12;
  v27[0] = v6;
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_98_0();
  v14 = sub_237EF8C30();
  v16 = v15;
  sub_237D74F4C(a1);
  v17 = xmmword_237F10600;
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0xEF6369747369676FLL;
      v21 = 0x6C3A7972616E6962;
    }

    else
    {
      v27[0] = v4;
      v18 = sub_237EF9AB0();
      v17 = 0uLL;
      v20 = 0xEE00626F72707466;
      v21 = 0x6F733A69746C756DLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_5();
    v21 = 0xD000000000000010;
  }

  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v21;
  *(a2 + 72) = v20;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v17;
  *(a2 + 112) = 0x656572746267;
  *(a2 + 120) = 0xE600000000000000;
  result = v28[0];
  v23 = v28[1];
  v24 = v28[3];
  *(a2 + 160) = v28[2];
  *(a2 + 176) = v24;
  *(a2 + 128) = result;
  *(a2 + 144) = v23;
  return result;
}

double sub_237D73898@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_237D71D18(v17);
  v6 = *(v4 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    sub_237D74FBC(a1, v16);
    v16[0] = v7;
    sub_237C62DB0();
    v7 = v16[0];
    v8 = *(v16[0] + 16);
    v9 = (v4 + 40);
    do
    {
      v11 = *v9;
      v9 += 2;
      v10 = v11;
      v16[0] = v7;
      v12 = *(v7 + 24);
      if (v8 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v12);
        sub_237C62DB0();
        v7 = v16[0];
      }

      *(v7 + 16) = v8 + 1;
      *(v7 + 8 * v8++ + 32) = v10;
      --v6;
    }

    while (v6);
    v5 = sub_237D74F4C(a1);
  }

  MEMORY[0x28223BE20](v5);
  sub_237D74FBC(a1, v16);
  v13 = sub_237D6DDC4(0, v4, sub_237D7502C);
  sub_237D74F4C(a1);
  sub_237D74F4C(a1);
  v14 = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = v14;
  result = *&v18;
  *(a2 + 32) = v18;
  *(a2 + 48) = v7;
  *(a2 + 56) = v13;
  return result;
}

uint64_t sub_237D73A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[8] == 0x6C3A7972616E6962 && v1[9] == 0xEF6369747369676FLL;
  if (!v3)
  {
    result = sub_237EF9D40();
    if ((result & 1) == 0)
    {
      v45 = v1[4];
      v44 = v1[5];
      v46 = HIBYTE(v44) & 0xF;
      v47 = v45 & 0xFFFFFFFFFFFFLL;
      if ((v44 & 0x2000000000000000) != 0)
      {
        v48 = HIBYTE(v44) & 0xF;
      }

      else
      {
        v48 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (!v48)
      {
        goto LABEL_107;
      }

      if ((v44 & 0x1000000000000000) != 0)
      {
        goto LABEL_109;
      }

      if ((v44 & 0x2000000000000000) != 0)
      {
        __dst[0] = v1[4];
        __dst[1] = v44 & 0xFFFFFFFFFFFFFFLL;
        if (v45 == 43)
        {
          if (v46)
          {
            if (v46 != 1)
            {
              OUTLINED_FUNCTION_96_1();
              while (1)
              {
                OUTLINED_FUNCTION_14_33();
                if (!v3 & v50)
                {
                  break;
                }

                OUTLINED_FUNCTION_16_30();
                if (!v3)
                {
                  break;
                }

                v5 = v59 + v58;
                if (__OFADD__(v59, v58))
                {
                  break;
                }

                OUTLINED_FUNCTION_49_8();
                if (v3)
                {
                  goto LABEL_106;
                }
              }
            }

            goto LABEL_105;
          }

LABEL_115:
          __break(1u);
          return result;
        }

        if (v45 != 45)
        {
          if (v46)
          {
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v3 & v50)
              {
                break;
              }

              OUTLINED_FUNCTION_16_30();
              if (!v3)
              {
                break;
              }

              v5 = v63 + v62;
              if (__OFADD__(v63, v62))
              {
                break;
              }

              OUTLINED_FUNCTION_49_8();
              if (v3)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_105;
        }

        if (v46)
        {
          if (v46 != 1)
          {
            OUTLINED_FUNCTION_96_1();
            while (1)
            {
              OUTLINED_FUNCTION_14_33();
              if (!v3 & v50)
              {
                break;
              }

              OUTLINED_FUNCTION_16_30();
              if (!v3)
              {
                break;
              }

              v5 = v55 - v54;
              if (__OFSUB__(v55, v54))
              {
                break;
              }

              OUTLINED_FUNCTION_49_8();
              if (v3)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_105;
        }
      }

      else
      {
        if ((v45 & 0x1000000000000000) != 0)
        {
          result = (v44 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          OUTLINED_FUNCTION_11_19();
          result = sub_237EF9420();
        }

        v49 = *result;
        if (v49 == 43)
        {
          if (v47 >= 1)
          {
            if (v47 != 1)
            {
              v5 = 0;
              if (result)
              {
                OUTLINED_FUNCTION_95_1();
                while (1)
                {
                  OUTLINED_FUNCTION_14_33();
                  if (!v3 & v50)
                  {
                    goto LABEL_105;
                  }

                  OUTLINED_FUNCTION_16_30();
                  if (!v3)
                  {
                    goto LABEL_105;
                  }

                  v5 = v57 + v56;
                  if (__OFADD__(v57, v56))
                  {
                    goto LABEL_105;
                  }

                  OUTLINED_FUNCTION_49_8();
                  if (v3)
                  {
                    goto LABEL_106;
                  }
                }
              }

              goto LABEL_96;
            }

            goto LABEL_105;
          }

          goto LABEL_114;
        }

        if (v49 != 45)
        {
          if (v47)
          {
            v5 = 0;
            if (result)
            {
              while (1)
              {
                v60 = *result - 48;
                if (v60 > 9)
                {
                  goto LABEL_105;
                }

                v61 = 10 * v5;
                if ((v5 * 10) >> 64 != (10 * v5) >> 63)
                {
                  goto LABEL_105;
                }

                v5 = v61 + v60;
                if (__OFADD__(v61, v60))
                {
                  goto LABEL_105;
                }

                ++result;
                if (!--v47)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_96;
          }

LABEL_105:
          v5 = 0;
          v53 = 1;
LABEL_106:
          LOBYTE(v79[0]) = v53;
          if (v53)
          {
            goto LABEL_107;
          }

          goto LABEL_7;
        }

        if (v47 >= 1)
        {
          if (v47 != 1)
          {
            v5 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_95_1();
              while (1)
              {
                OUTLINED_FUNCTION_14_33();
                if (!v3 & v50)
                {
                  goto LABEL_105;
                }

                OUTLINED_FUNCTION_16_30();
                if (!v3)
                {
                  goto LABEL_105;
                }

                v5 = v52 - v51;
                if (__OFSUB__(v52, v51))
                {
                  goto LABEL_105;
                }

                OUTLINED_FUNCTION_49_8();
                if (v3)
                {
                  goto LABEL_106;
                }
              }
            }

LABEL_96:
            v53 = 0;
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        __break(1u);
      }

      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }
  }

  v5 = 2;
LABEL_7:
  while (1)
  {
    v71 = v1[18];
    v72 = v5;
    v70 = v1[19];
    v6 = v1[23];
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      break;
    }

    v68 = v1;
    v69 = a1;
    v9 = v1[22];
    v82 = MEMORY[0x277D84F90];
    v1 = &v82;
    sub_237C63194(0, v7, 0);
    a1 = 0;
    v10 = v82;
    v73 = v7;
    v74 = v9 + 32;
    v75 = *(v9 + 16);
    v76 = v6 + 32;
    while (1)
    {
      memcpy(__dst, (v76 + 152 * a1), 0x98uLL);
      if (a1 == v75)
      {
        break;
      }

      v11 = *(v74 + 8 * a1);
      v12 = *(__dst[5] + 16);
      if (v12)
      {
        v77 = *(v74 + 8 * a1);
        sub_237D74EE4(__dst, v79);
        v81 = v8;
        v1 = &v81;
        sub_237C631B4(0, v12, 0);
        v13 = 0;
        v14 = v81;
        while (1)
        {
          v78 = v13;
          sub_237D74BCC(&v78, __dst, v79);
          v81 = v14;
          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          if (v16 >= v15 >> 1)
          {
            v21 = OUTLINED_FUNCTION_17_0(v15);
            v1 = &v81;
            sub_237C631B4(v21, v16 + 1, 1);
            v14 = v81;
          }

          *(v14 + 16) = v16 + 1;
          v17 = v14 + 56 * v16;
          v18 = v79[0];
          v19 = v79[1];
          v20 = v80[0];
          *(v17 + 78) = *(v80 + 14);
          *(v17 + 48) = v19;
          *(v17 + 64) = v20;
          *(v17 + 32) = v18;
          if (v12 - 1 == v13)
          {
            break;
          }

          ++v13;
        }

        sub_237D74F1C(__dst);
        v8 = MEMORY[0x277D84F90];
        v7 = v73;
        v11 = v77;
      }

      else
      {
        v14 = v8;
      }

      v82 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_17_0(v22);
        v1 = &v82;
        v27 = v26;
        sub_237C63194(v25, v23 + 1, 1);
        v11 = v27;
        v10 = v82;
      }

      ++a1;
      *(v10 + 16) = v23 + 1;
      v24 = v10 + 16 * v23;
      *(v24 + 32) = v14;
      *(v24 + 40) = v11;
      if (a1 == v7)
      {
        v1 = v68;
        a1 = v69;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_109:
    sub_237EF8260();
    v64 = OUTLINED_FUNCTION_11_19();
    v5 = sub_237D7503C(v64, v65, 10);
    v67 = v66;

    if (v67)
    {
LABEL_107:
      v5 = 0;
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_23:
  v28 = *v1;
  v29 = v1[1];
  v30 = v1[2];
  v31 = v1[3];
  v33 = v1[6];
  v32 = v1[7];
  sub_237EF8260();
  v34 = sub_237D741A8(v33, v32);
  if ((v34 & 0x100000000) != 0)
  {
    v35 = 0.5;
  }

  else
  {
    v35 = *&v34;
  }

  sub_237EF8260();
  v36 = sub_237D73F48(v28, v29);
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  sub_237EF8260();
  v39 = sub_237D73F48(v30, v31);
  if (v40)
  {
    v41 = 1;
  }

  else
  {
    v41 = v39;
  }

  sub_237EF8260();
  result = sub_237D73F48(v71, v70);
  *a1 = v10;
  *(a1 + 8) = v35;
  if (v42)
  {
    v43 = 1;
  }

  else
  {
    v43 = result;
  }

  *(a1 + 16) = v38;
  *(a1 + 24) = v41;
  *(a1 + 32) = v72;
  *(a1 + 40) = v43;
  *(a1 + 48) = 1;
  return result;
}