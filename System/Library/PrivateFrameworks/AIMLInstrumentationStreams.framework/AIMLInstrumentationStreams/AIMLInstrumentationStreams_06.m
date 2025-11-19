id _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___ISEventFilter_filter);
  if (!v2)
  {
    v29 = type metadata accessor for EventFilter();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR___ISEventFilter_filter] = 0;
    v38 = v30;
    v31 = &v38;
    goto LABEL_46;
  }

  v3 = *(a2 + OBJC_IVAR___ISEventFilter_filter);
  if (!v3)
  {
    v29 = type metadata accessor for EventFilter();
    v32 = objc_allocWithZone(v29);
    *&v32[OBJC_IVAR___ISEventFilter_filter] = 0;
    v39 = v32;
    v31 = &v39;
    goto LABEL_46;
  }

  v4 = *(a1 + OBJC_IVAR___ISEventFilter_filter);
  swift_bridgeObjectRetain_n();

  v5 = sub_23C592A44(v2);

  v7 = sub_23C6322D8(v6, v5);
  v8 = v7;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v37 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_11:
    v16 = *(*(v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (*(v2 + 16) && (v17 = sub_23C5FF958(v16), (v18 & 1) != 0))
    {
      v19 = *(*(v2 + 56) + 8 * v17);
      sub_23C59A744(v19);
      if (!*(v3 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v19 = 2;
      if (!*(v3 + 16))
      {
        goto LABEL_18;
      }
    }

    v20 = sub_23C5FF958(v16);
    if ((v21 & 1) == 0)
    {
LABEL_18:
      v22 = 2;
      goto LABEL_19;
    }

    v22 = *(*(v3 + 56) + 8 * v20);
    sub_23C59A744(v22);
LABEL_19:
    v12 &= v12 - 1;
    if (v19 == 2)
    {
      if (v22 != 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v22 == 2)
      {
        v22 = v19;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3D8, &qword_23C87AC50);
        if (v19)
        {
          if (v22)
          {
            if (v22 == 1)
            {
              if (v19 == 1)
              {
                sub_23C5FF690(1uLL);
                sub_23C5FF690(1uLL);
                v22 = 1;
              }

              else
              {
                sub_23C59A744(1uLL);
                v22 = v19;
              }
            }

            else if (v19 == 1)
            {
              sub_23C59A744(1uLL);
            }

            else
            {
              v22 = sub_23C6321F8(v22, v19);
            }
          }

          else
          {
            sub_23C5FF690(0);
            sub_23C5FF6A0(v19);
          }
        }

        else
        {
          sub_23C5FF690(0);
          sub_23C5FF6A0(v22);
          v22 = 0;
        }
      }

LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_23C584B28(0, v37[2] + 1, 1, v37);
      }

      v24 = v37[2];
      v23 = v37[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v36 = v24 + 1;
        v27 = sub_23C584B28((v23 > 1), v24 + 1, 1, v37);
        v25 = v24 + 1;
        v37 = v27;
      }

      v37[2] = v25;
      v26 = &v37[2 * v24];
      v26[4] = v16;
      v26[5] = v22;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      sub_23C5FF690(0);
      sub_23C5FF690(1uLL);
      sub_23C872004();
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  if (v37[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
    v28 = sub_23C871E94();
  }

  else
  {
    v28 = MEMORY[0x277D84F98];
  }

  v41 = v28;
  sub_23C5FEA24(v37, 1, &v41);
  v33 = v41;
  v29 = type metadata accessor for EventFilter();
  v34 = objc_allocWithZone(v29);
  *&v34[OBJC_IVAR___ISEventFilter_filter] = v33;
  v40.receiver = v34;
  v31 = &v40;
LABEL_46:
  v31->super_class = v29;
  return [(objc_super *)v31 init];
}

uint64_t sub_23C5FF59C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C5FF5EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23C5FF640(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_26AIMLInstrumentationStreams11EventFilterC09InnerTypeD033_D32286BD32B295E05554CC328F282983LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_23C5FF690(unint64_t result)
{
  if (result != 2)
  {
    return sub_23C59A744(result);
  }

  return result;
}

unint64_t sub_23C5FF6A0(unint64_t result)
{
  if (result != 2)
  {
    return sub_23C5FF6B0(result);
  }

  return result;
}

unint64_t sub_23C5FF6B0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_23C5FF6E8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_23C871BB4();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_23C5A3F8C(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_23C5FF774(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23C5A3FDC(0, a1, a2);
  v7 = sub_23C601560();
  if (*(v7 + 16) && (v8 = sub_23C5FF958(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    v11 = sub_23C5FF6E8(v10);

    if (v11)
    {
      v12 = sub_23C601CF4(v11);

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_23C5FF898(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23C8720F4();
  sub_23C871804();
  v6 = sub_23C872124();

  return sub_23C5FFD58(a1, a2, v6);
}

unint64_t sub_23C5FF910(unsigned int a1)
{
  v3 = MEMORY[0x23EED79C0](*(v1 + 40), a1, 4);

  return sub_23C5FFE10(a1, v3);
}

unint64_t sub_23C5FF958(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23C8720F4();
  MEMORY[0x23EED79F0](a1);
  v4 = sub_23C872124();

  return sub_23C5FFE7C(a1, v4);
}

unint64_t sub_23C5FF9C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23C871C94();

  return sub_23C5FFEE8(a1, v5);
}

unint64_t sub_23C5FFA08(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23C871B24();

  return sub_23C5FFFB0(a1, v5);
}

unint64_t sub_23C5FFA4C(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_23C8720F4();
  MEMORY[0x23EED79F0](*a1);
  v4 = *(type metadata accessor for EventTypeIdPair() + 20);
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90);
  sub_23C8716F4();
  v5 = sub_23C872124();

  return sub_23C600074(a1, v5);
}

unint64_t sub_23C5FFB04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90);
  v5 = sub_23C8716E4();

  return sub_23C600218(a1, v5);
}

unint64_t sub_23C5FFB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_23C8720F4();
  sub_23C871804();
  sub_23C871804();
  v10 = sub_23C872124();

  return sub_23C6003C4(a1, a2, a3, a4, v10);
}

unint64_t sub_23C5FFC28(void *a1)
{
  v3 = *(v1 + 40);
  sub_23C8720F4();
  sub_23C872114();
  if (a1)
  {
    v4 = a1;
    sub_23C871B44();
  }

  v5 = sub_23C872124();

  return sub_23C6004C4(a1, v5);
}

unint64_t sub_23C5FFCB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90);
  sub_23C8716F4();
  v4 = sub_23C872124();

  return sub_23C6005A8(a1, v4);
}

unint64_t sub_23C5FFD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23C872014())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C5FFE10(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23C5FFE7C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23C5FFEE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23C59A4C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EED7590](v9, a1);
      sub_23C600810(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23C5FFFB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_23C870E34();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23C871B34();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23C600074(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for EventTypeIdPair();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_23C600748(*(v2 + 48) + v14 * v11, v9, type metadata accessor for EventTypeIdPair);
      if (*v9 == v13)
      {
        v15 = *(v5 + 20);
        v16 = sub_23C870B44();
        sub_23C6007B0(v9, type metadata accessor for EventTypeIdPair);
        if (v16)
        {
          return v11;
        }
      }

      else
      {
        sub_23C6007B0(v9, type metadata accessor for EventTypeIdPair);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_23C600218(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_23C600704(&qword_27E1FB418);
      v16 = sub_23C871754();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_23C6003C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_23C872014() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_23C872014() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_23C6004C4(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_23C870E34();
          v10 = v9;
          v11 = a1;
          v12 = sub_23C871B34();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C6005A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_23C600748(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v13 = sub_23C870B44();
      sub_23C6007B0(v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_23C600704(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23C870B74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C600748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C6007B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C6009E8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  v2 = sub_23C595644(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
LABEL_33:
    v3 = sub_23C871C34();
    if (v3)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v2;
  }

LABEL_3:
  v4 = 0;
  v33 = v1 & 0xFFFFFFFFFFFFFF8;
  v34 = v1 & 0xC000000000000001;
  v32 = v1;
  while (1)
  {
    if (v34)
    {
      v6 = MEMORY[0x23EED7610](v4, v1);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v4 >= *(v33 + 16))
      {
        goto LABEL_30;
      }

      v5 = *(v1 + 8 * v4 + 32);

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v1 = v3;
    v8 = *(v6 + 24);
    v9 = sub_23C870CA4();
    if (!v9)
    {
      break;
    }

    v10 = v9;
    ObjectType = swift_getObjectType();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_23C5FF958(ObjectType);
    v15 = v2[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_31;
    }

    v18 = v13;
    if (v2[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_23C643E00();
        if (v18)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_23C63E44C(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_23C5FF958(ObjectType);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_36;
      }

      v14 = v19;
      if (v18)
      {
        goto LABEL_17;
      }
    }

    v2[(v14 >> 6) + 8] |= 1 << v14;
    *(v2[6] + 8 * v14) = ObjectType;
    *(v2[7] + 8 * v14) = MEMORY[0x277D84F90];
    v21 = v2[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_32;
    }

    v2[2] = v23;
LABEL_17:
    v24 = v2[7];
    v25 = *(v24 + 8 * v14);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 8 * v14) = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_23C584828(0, *(v25 + 2) + 1, 1, v25);
      *(v24 + 8 * v14) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      *(v24 + 8 * v14) = sub_23C584828((v27 > 1), v28 + 1, 1, v25);
    }

    v29 = *(v24 + 8 * v14);
    *(v29 + 16) = v28 + 1;
    *(v29 + 8 * v28 + 32) = v4++;
    v3 = v1;
    v30 = v7 == v1;
    v1 = v32;
    if (v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C600CC0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_23C600D28(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  v2 = sub_23C595644(MEMORY[0x277D84F90]);
  if (v1 >> 62)
  {
LABEL_33:
    v3 = sub_23C871C34();
    if (v3)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return v2;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    for (i = v4; ; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EED7610](i, v1);
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v6 = *(v1 + 8 * i + 32);

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v7 = *(v6 + 24);
      v8 = sub_23C870CB4();
      if (v8)
      {
        break;
      }

      if (v4 == v3)
      {
        return v2;
      }
    }

    v41 = v8;
    ObjectType = swift_getObjectType();
    v10 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = ObjectType;
    v13 = sub_23C5FF958(ObjectType);
    v14 = v10[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    if (v10[3] >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v12;
        sub_23C643E00();
        v12 = v36;
      }

      v18 = v10;
      v21 = v13;
      if (v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v12;
      sub_23C63E44C(v16, isUniquelyReferenced_nonNull_native);
      v18 = v10;
      v19 = sub_23C5FF958(v40);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_37;
      }

      v21 = v19;
      if (v17)
      {
        goto LABEL_24;
      }
    }

    v18[(v21 >> 6) + 8] |= 1 << v21;
    *(v18[6] + 8 * v21) = v40;
    *(v18[7] + 8 * v21) = MEMORY[0x277D84F90];
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_36;
    }

    v18[2] = v24;
LABEL_24:
    v25 = v18[7];
    v38 = v18;
    v26 = *(v25 + 8 * v21);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v21;
    v28 = v26;
    *(v25 + 8 * v21) = v26;
    if (v27)
    {
      v29 = v38;
    }

    else
    {
      v34 = v21;
      v29 = v38;
      v28 = sub_23C584828(0, *(v28 + 2) + 1, 1, v28);
      *(v25 + 8 * v34) = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    v32 = v41;
    if (v31 >= v30 >> 1)
    {
      v35 = sub_23C584828((v30 > 1), v31 + 1, 1, v28);
      v32 = v41;
      *(v25 + 8 * v39) = v35;
    }

    v33 = *(v25 + 8 * v39);
    *(v33 + 16) = v31 + 1;
    *(v33 + 8 * v31 + 32) = i;
    v2 = v29;
    if (v4 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C601038(uint64_t *a1, uint64_t (*a2)(void), void (*a3)(uint64_t *, void *))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_23C601594(v3, a2, a3);
    v7 = *(v3 + v4);
    *(v3 + v4) = v6;
  }

  return v6;
}

void sub_23C60109C(char **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(v5 + 24);

  v7 = sub_23C870D04();
  if (v7)
  {
    v8 = v7;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v66 = *a1;
    v13 = sub_23C5FFA08(v8);
    v14 = *(v11 + 2);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      __break(1u);
      goto LABEL_40;
    }

    v17 = v12;
    if (*(v11 + 3) >= v16)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *a1 = v11;
        if (v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_23C64485C();
        v11 = v66;
        *a1 = v66;
        if (v17)
        {
LABEL_15:
          v2 = *(v11 + 7);
          v11 = *(v2 + 8 * v13);
          v38 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 8 * v13) = v11;
          if (v38)
          {
LABEL_16:
            v40 = *(v11 + 2);
            v39 = *(v11 + 3);
            if (v40 >= v39 >> 1)
            {
              *(v2 + 8 * v13) = sub_23C584828((v39 > 1), v40 + 1, 1, v11);
            }

            v41 = *(v2 + 8 * v13);
            *(v41 + 16) = v40 + 1;
            *(v41 + 8 * v40 + 32) = v4;
            return;
          }

LABEL_40:
          v11 = sub_23C584828(0, *(v11 + 2) + 1, 1, v11);
          *(v2 + 8 * v13) = v11;
          goto LABEL_16;
        }
      }

LABEL_14:
      sub_23C64BCC4(v13, v8, MEMORY[0x277D84F90], v11);
      v37 = v8;
      goto LABEL_15;
    }

    sub_23C63F7A4(v16, isUniquelyReferenced_nonNull_native);
    v11 = v66;
    v18 = sub_23C5FFA08(v8);
    if ((v17 & 1) == (v19 & 1))
    {
      v13 = v18;
      *a1 = v66;
      if (v17)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_23C870E34();
    sub_23C872064();
    __break(1u);
LABEL_50:
    sub_23C872064();
    __break(1u);
    return;
  }

  v20 = *(v5 + 24);
  v21 = OrderedEvent.linkedComponentIdentifiers()();
  v23 = v22;

  if (!v21)
  {

    return;
  }

  v64 = v23;
  v65 = v4;
  v24 = v21;
  v25 = *a1;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *a1;
  v67 = *a1;
  v28 = v24;
  v29 = sub_23C5FFA08(v24);
  v31 = v30;
  v32 = *(v27 + 2);
  v33 = (v30 & 1) == 0;
  sub_23C870E34();
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
LABEL_44:
    v27 = sub_23C584828(0, *(v27 + 2) + 1, 1, v27);
    *(v31 + 8 * v29) = v27;
    goto LABEL_25;
  }

  if (*(v27 + 3) >= v34)
  {
    v33 = v28;
    if ((v26 & 1) == 0)
    {
      sub_23C64485C();
      v27 = v67;
    }
  }

  else
  {
    sub_23C63F7A4(v34, v26);
    v27 = v67;
    v33 = v28;
    v35 = sub_23C5FFA08(v28);
    if ((v31 & 1) != (v36 & 1))
    {
      goto LABEL_50;
    }

    v29 = v35;
  }

  v28 = v65;
  *a1 = v27;
  if ((v31 & 1) == 0)
  {
    sub_23C64BCC4(v29, v33, MEMORY[0x277D84F90], v27);
    v42 = v33;
  }

  v31 = *(v27 + 7);
  v27 = *(v31 + 8 * v29);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + 8 * v29) = v27;
  if ((v43 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_25:
  v45 = *(v27 + 2);
  v44 = *(v27 + 3);
  if (v45 >= v44 >> 1)
  {
    *(v31 + 8 * v29) = sub_23C584828((v44 > 1), v45 + 1, 1, v27);
  }

  v46 = *(v31 + 8 * v29);
  *(v46 + 16) = v45 + 1;
  *(v46 + 8 * v45 + 32) = v28;
  v47 = v64;
  v48 = *a1;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *a1;
  v68 = *a1;
  v52 = sub_23C5FFA08(v47);
  v53 = *(v50 + 2);
  v54 = (v51 & 1) == 0;
  v55 = v53 + v54;
  if (__OFADD__(v53, v54))
  {
    __break(1u);
    goto LABEL_46;
  }

  v56 = v51;
  if (*(v50 + 3) >= v55)
  {
    if (v49)
    {
      *a1 = v50;
      if (v51)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_23C64485C();
      v50 = v68;
      *a1 = v68;
      if (v56)
      {
        goto LABEL_35;
      }
    }

LABEL_34:
    sub_23C64BCC4(v52, v47, MEMORY[0x277D84F90], v50);
    v59 = v47;
    goto LABEL_35;
  }

  sub_23C63F7A4(v55, v49);
  v50 = v68;
  v57 = sub_23C5FFA08(v47);
  if ((v56 & 1) != (v58 & 1))
  {
    goto LABEL_50;
  }

  v52 = v57;
  *a1 = v68;
  if ((v56 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  v49 = *(v50 + 7);
  v50 = *(v49 + 8 * v52);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  *(v49 + 8 * v52) = v50;
  if ((v60 & 1) == 0)
  {
LABEL_46:
    v50 = sub_23C584828(0, *(v50 + 2) + 1, 1, v50);
    *(v49 + 8 * v52) = v50;
  }

  v62 = *(v50 + 2);
  v61 = *(v50 + 3);
  if (v62 >= v61 >> 1)
  {
    *(v49 + 8 * v52) = sub_23C584828((v61 > 1), v62 + 1, 1, v50);
  }

  v63 = *(v49 + 8 * v52);
  *(v63 + 16) = v62 + 1;
  *(v63 + 8 * v62 + 32) = v28;
}

uint64_t sub_23C601594(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t *, void *))
{
  v4 = *(a1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  result = a2(MEMORY[0x277D84F90]);
  v12 = result;
  if (v4 >> 62)
  {
LABEL_15:
    v10 = result;
    v6 = sub_23C871C34();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EED7610](i, v4);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *(v4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        v11[0] = i;
        v11[1] = v8;
        a3(&v12, v11);

        if (v9 == v6)
        {
          return v12;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6016E0(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v63 = *a2;
  v3 = *(v2 + 24);

  v4 = sub_23C870D04();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23C874E20;
    *(v6 + 32) = v5;
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = OrderedEvent.linkedComponentIdentifiers()();
    v10 = v9;

    if (!v8)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_23C87AC80;
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
  }

  v62 = v6 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v61 = v11;
  if (!v11)
  {
    v13 = 0;
LABEL_37:
    swift_bridgeObjectRelease_n();

    sub_23C572AB4(v11);
    return sub_23C572AB4(v13);
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  v59 = v6;
  v60 = v6 & 0xC000000000000001;
  while (v60)
  {
    v14 = MEMORY[0x23EED7610](v12, v6);
LABEL_10:
    v15 = v14;
    v16 = v2;
    v17 = *(v2 + 24);
    v18 = sub_23C870CA4();
    if (!v18)
    {
      goto LABEL_44;
    }

    v19 = v18;
    ObjectType = swift_getObjectType();

    sub_23C572AB4(v11);
    v21 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    v25 = sub_23C5FF958(ObjectType);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_40;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C6449C4();
      }
    }

    else
    {
      sub_23C63FA20(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_23C5FF958(ObjectType);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_46;
      }

      v25 = v30;
    }

    *a1 = v23;
    if ((v29 & 1) == 0)
    {
      v32 = sub_23C596A1C(MEMORY[0x277D84F90]);
      v23[(v25 >> 6) + 8] |= 1 << v25;
      *(v23[6] + 8 * v25) = ObjectType;
      *(v23[7] + 8 * v25) = v32;
      v33 = v23[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_42;
      }

      v23[2] = v35;
    }

    v36 = v23[7];
    sub_23C572AB4(v13);
    v37 = *(v36 + 8 * v25);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v36 + 8 * v25);
    *(v36 + 8 * v25) = 0x8000000000000000;
    v41 = sub_23C5FFA08(v15);
    v42 = *(v39 + 16);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_41;
    }

    v45 = v40;
    if (*(v39 + 24) >= v44)
    {
      if ((v38 & 1) == 0)
      {
        sub_23C64485C();
      }
    }

    else
    {
      sub_23C63F7A4(v44, v38);
      sub_23C870E34();
      v46 = sub_23C5FFA08(v15);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_45;
      }

      v41 = v46;
    }

    v48 = *(v36 + 8 * v25);
    *(v36 + 8 * v25) = v39;

    v49 = *(v36 + 8 * v25);
    if ((v45 & 1) == 0)
    {
      v49[(v41 >> 6) + 8] |= 1 << v41;
      *(v49[6] + 8 * v41) = v15;
      *(v49[7] + 8 * v41) = MEMORY[0x277D84F90];
      v50 = v49[2];
      v34 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v34)
      {
        goto LABEL_43;
      }

      v49[2] = v51;
      v52 = v15;
    }

    v53 = v49[7];
    v54 = *(v53 + 8 * v41);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 8 * v41) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_23C584828(0, *(v54 + 2) + 1, 1, v54);
      *(v53 + 8 * v41) = v54;
    }

    v2 = v16;
    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_23C584828((v56 > 1), v57 + 1, 1, v54);
      *(v53 + 8 * v41) = v54;
    }

    v12 = (v12 + 1);
    *(v54 + 2) = v57 + 1;
    *&v54[8 * v57 + 32] = v63;

    v13 = sub_23C600C90;
    v11 = sub_23C601B98;
    v6 = v59;
    if (v61 == v12)
    {
      goto LABEL_37;
    }
  }

  if (v12 < *(v62 + 16))
  {
    v14 = *(v6 + 8 * v12 + 32);
    goto LABEL_10;
  }

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
  sub_23C872064();
  __break(1u);
LABEL_46:
  result = sub_23C872064();
  __break(1u);
  return result;
}

unint64_t sub_23C601B98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23C596A1C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void sub_23C601BC8()
{
  v0 = sub_23C601004();

  sub_23C592900(v0);
}

id EventGraph.init(timestamp:events:)(double a1)
{
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___typeIndex] = 0;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___innerTypeIndex] = 0;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___componentIdentifierIndex] = 0;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___typeAndCIDIndex] = 0;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId] = xmmword_23C87AC90;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId] = xmmword_23C87AC90;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___selfIds] = 0;
  *&v1[OBJC_IVAR___ISEventGraph____lazy_storage___requests] = 0;
  *&v1[OBJC_IVAR___ISEventGraph_timestamp] = a1;

  v5 = sub_23C5A37EC(v2);
  sub_23C59C9D0(&v5);

  *&v1[OBJC_IVAR___ISEventGraph_eventsInternal] = v5;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for EventGraph();
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_23C601CF4(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v11 = MEMORY[0x277D84F90];
  sub_23C871D84();
  v5 = *(v1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  v6 = (a1 + 32);
  while (1)
  {
    v10 = *v6++;
    result = v10;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x23EED7610](result, v5);
      goto LABEL_4;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v5 + 32 + 8 * result);

LABEL_4:
    v8 = *(v7 + 24);

    sub_23C871D54();
    v9 = *(v11 + 16);
    sub_23C871D94();
    sub_23C871DA4();
    sub_23C871D64();
    if (!--v3)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23C601E20()
{
  v1 = *(v0 + OBJC_IVAR___ISEventGraph_eventsInternal);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v13 = *(v0 + OBJC_IVAR___ISEventGraph_eventsInternal);
    }

    v2 = sub_23C871C34();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    result = sub_23C871D84();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          v6 = MEMORY[0x23EED7610]();
          swift_beginAccess();
          v7 = *(v6 + 24);
          swift_unknownObjectRelease();
          sub_23C871D54();
          v8 = *(v14 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v9 = (v1 + 32);
        do
        {
          v10 = *v9++;
          swift_beginAccess();
          v11 = *(v10 + 24);
          sub_23C871D54();
          v12 = *(v14 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
          --v2;
        }

        while (v2);
      }

      return v14;
    }
  }

  return result;
}

uint64_t sub_23C601FBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_23C5A3FDC(0, &qword_27E1FB4C0, 0x277D59868);
  v5 = sub_23C600CA0();
  if (*(v5 + 16) && (v6 = sub_23C5FF958(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_23C601CF4(v8);

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_20:

    return 0;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EED7610](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  sub_23C5A3FDC(0, &qword_27E1FB4B0, 0x277D5A918);
  v13 = sub_23C870D44();
  if (!v13)
  {
LABEL_17:

    return 0;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = [v15 trpId];
    if (v16)
    {
      v17 = v16;
      sub_23C871AB4();

      v18 = sub_23C870B74();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v3, 1, v18) != 1)
      {
        v20 = sub_23C870B04();

        (*(v19 + 8))(v3, v18);
        return v20;
      }

      sub_23C585C34(v3, &qword_27E1F92A0, &qword_23C8734E0);
      return 0;
    }

    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_23C602270(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);
  v4 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);
  v5 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_23C581AD0(v4, v5);
}

uint64_t (*sub_23C602290(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_23C601F9C();
  a1[1] = v3;
  return sub_23C6022D8;
}

uint64_t sub_23C602304(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v6 = a2(v2);
    v7 = *v3;
    v8 = v3[1];
    *v3 = v6;
    v3[1] = v9;

    sub_23C581AD0(v7, v8);
  }

  sub_23C581BD8(v4, v5);
  return v6;
}

uint64_t sub_23C602398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = sub_23C601F9C();
  if (!v9)
  {
    return 0;
  }

  v50 = v8;
  v51 = v7;
  v52 = v9;
  v10 = sub_23C5A3FDC(0, &qword_27E1FB4A8, 0x277D59858);
  v11 = sub_23C600CA0();
  if (*(v11 + 16) && (v12 = sub_23C5FF958(v10), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_23C601CF4(v14);

  if (v15 >> 62)
  {
LABEL_41:
    if (!sub_23C871C34())
    {
      goto LABEL_47;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x23EED7610](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_45:
      v22 = sub_23C871C34();
      if (v22)
      {
        goto LABEL_16;
      }

      goto LABEL_46;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  sub_23C5A3FDC(0, &qword_27E1FB4B0, 0x277D5A918);
  v18 = sub_23C870D44();
  if (!v18)
  {

LABEL_48:

    return 0;
  }

  v19 = v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    return 0;
  }

  v43 = v20;
  v21 = [v20 userTrpIds];
  if (!v21)
  {

    goto LABEL_48;
  }

  v15 = v21;
  sub_23C5A3FDC(0, &qword_27E1FB4B8, 0x277D5AC78);
  v0 = sub_23C8718A4();

  v42 = v5;
  v44 = v19;
  v45 = v17;
  if (v0 >> 62)
  {
    goto LABEL_45;
  }

  v22 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_46:

LABEL_47:

    goto LABEL_48;
  }

LABEL_16:
  v23 = 0;
  v48 = v0 & 0xFFFFFFFFFFFFFF8;
  v49 = v0 & 0xC000000000000001;
  while (1)
  {
    if (v49)
    {
      v24 = MEMORY[0x23EED7610](v23, v0);
    }

    else
    {
      if (v23 >= *(v48 + 16))
      {
        goto LABEL_40;
      }

      v24 = *(v0 + 8 * v23 + 32);
    }

    v25 = v24;
    v5 = (v23 + 1);
    v26 = v51;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_23C871AB4();
    v27 = sub_23C870B74();
    v28 = *(v27 - 8);
    v15 = *(v28 + 48);
    if ((v15)(v26, 1, v27) == 1)
    {
      sub_23C585C34(v26, &qword_27E1F92A0, &qword_23C8734E0);
      goto LABEL_18;
    }

    v47 = v15;
    v29 = sub_23C870B04();
    v30 = v26;
    v31 = v29;
    v15 = v32;
    v46 = *(v28 + 8);
    v46(v30, v27);
    if (v50 == v31 && v52 == v15)
    {
      break;
    }

    v33 = sub_23C872014();

    if (v33)
    {

      goto LABEL_34;
    }

LABEL_18:

    ++v23;
    if (v5 == v22)
    {
      goto LABEL_46;
    }
  }

LABEL_34:

  v35 = [v43 rootTrpId];
  v36 = v42;
  v38 = v44;
  v37 = v45;
  if (!v35)
  {

    return 0;
  }

  v39 = v35;
  sub_23C871AB4();

  if (v47(v36, 1, v27) == 1)
  {

    sub_23C585C34(v36, &qword_27E1F92A0, &qword_23C8734E0);
    return 0;
  }

  v40 = sub_23C870B04();

  v46(v36, v27);
  return v40;
}

uint64_t sub_23C6028B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId);
  v4 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId);
  v5 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_23C581AD0(v4, v5);
}

uint64_t (*sub_23C6028D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_23C6022E4();
  a1[1] = v3;
  return sub_23C602920;
}

uint64_t sub_23C60292C(uint64_t *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = (a1[2] + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = *a1;
  v4[1] = v3;
  if (a2)
  {

    sub_23C581AD0(v5, v6);
  }

  else
  {

    return sub_23C581AD0(v5, v6);
  }
}

char *sub_23C602A14()
{
  v0 = sub_23C601004();
  v1 = sub_23C604454(v0, sub_23C604154);

  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_10:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v13 = *(*(v7 + 56) + v12);
    v14 = *(v13 + 16);
    v15 = *(v10 + 16);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_24;
    }

    v17 = *(*(v7 + 56) + v12);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v16 > *(v10 + 24) >> 1)
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      result = sub_23C584828(result, v18, 1, v10);
      v10 = result;
    }

    v5 &= v5 - 1;
    if (*(v13 + 16))
    {
      v19 = *(v10 + 16);
      if ((*(v10 + 24) >> 1) - v19 < v14)
      {
        goto LABEL_26;
      }

      memcpy((v10 + 8 * v19 + 32), (v13 + 32), 8 * v14);

      if (v14)
      {
        v20 = *(v10 + 16);
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_27;
        }

        *(v10 + 16) = v22;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      v23 = sub_23C601CF4(v10);

      return v23;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23C602C38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = a2();
  if (*(v5 + 16) && (v6 = a3(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_23C601CF4(v8);

  return v9;
}

uint64_t sub_23C602CCC(uint64_t a1)
{
  v2 = sub_23C600CA0();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_23C601CF4(v5);

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x23EED7610](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C602DC8(uint64_t a1)
{
  v2 = sub_23C601560();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    MEMORY[0x28223BE20](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB470, &qword_23C87ACA0);
    type metadata accessor for ComponentGroup();
    sub_23C604634();
    v7 = sub_23C871844();

    return v7;
  }

  else
  {

    type metadata accessor for ComponentGroup();
    return sub_23C8718E4();
  }
}

uint64_t sub_23C602EF8(uint64_t a1)
{
  v2 = sub_23C601560();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    v6 = sub_23C5FF6E8(v5);

    if (v6)
    {
      type metadata accessor for ComponentGroup();
      v7 = sub_23C601CF4(v6);

      return ComponentGroup.__allocating_init(unchecked:)(v7);
    }
  }

  else
  {
  }

  return 0;
}

void sub_23C602FBC()
{
  v0 = sub_23C5A3FDC(0, &qword_27E1F9998, 0x277D57038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = v0;
  v2 = inited + 32;
  *(inited + 40) = 0;
  v3 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C585C34(v2, &qword_27E1F94C0, &qword_23C8739F0);
  v4 = type metadata accessor for EventFilter();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ISEventFilter_filter] = v3;
  v19.receiver = v5;
  v19.super_class = v4;
  v6 = objc_msgSendSuper2(&v19, sel_init);
  v7 = sub_23C5A3FDC(0, &qword_27E1FB480, 0x277D5A9D0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_23C873D10;
  *(v8 + 32) = v7;
  v9 = v8 + 32;
  *(v8 + 40) = 0;
  v10 = sub_23C598D8C(v8);
  swift_setDeallocating();
  sub_23C585C34(v9, &qword_27E1F94C0, &qword_23C8739F0);
  v11 = objc_allocWithZone(v4);
  *&v11[OBJC_IVAR___ISEventFilter_filter] = v10;
  v18.receiver = v11;
  v18.super_class = v4;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v6, v12);

  v14 = sub_23C5A3FDC(0, &qword_2814FABC0, 0x277D5B048);
  sub_23C604028();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_23C873D10;
  *(v15 + 32) = sub_23C5A3FDC(0, &qword_27E1FB488, 0x277D5B028);
  v16 = _s26AIMLInstrumentationStreams11EventFilterC4some2of5typesACSo25SISchemaTopLevelUnionTypeCm_SaySo0H22InstrumentationMessageCmGtFZ_0(v14, v15);
  swift_setDeallocating();
  v17 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v13, v16);

  qword_2814FB470 = v17;
}

uint64_t sub_23C6031E4()
{
  v1 = OBJC_IVAR___ISEventGraph____lazy_storage___selfIds;
  if (*(v0 + OBJC_IVAR___ISEventGraph____lazy_storage___selfIds))
  {
    v2 = *(v0 + OBJC_IVAR___ISEventGraph____lazy_storage___selfIds);
  }

  else
  {
    v3 = sub_23C601004();
    sub_23C592900(v3);
    sub_23C603530(MEMORY[0x277D84F98], v4);
    v2 = v5;

    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23C603280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;

  sub_23C870DF4();
  v12 = sub_23C871B04();
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v14 = sub_23C5FF898(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_5:
    sub_23C870DF4();
    v28 = sub_23C871B04();
    v19 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C873D10;
    sub_23C870E24();
    v31 = sub_23C870B04();
    v33 = v32;
    (*(v6 + 8))(v9, v5);
    *(inited + 32) = v31;
    *(inited + 40) = v33;
    v34 = sub_23C604184(inited);
    swift_setDeallocating();
    sub_23C604D2C(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v10;
    v26 = v34;
    v27 = v28;
    goto LABEL_6;
  }

  v17 = *(*(v10 + 56) + 8 * v14);

  sub_23C870DF4();
  v37 = sub_23C871B04();
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23C873D10;
  sub_23C870E24();
  v21 = sub_23C870B04();
  v23 = v22;
  (*(v6 + 8))(v9, v5);
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v24 = sub_23C649D60(v20, v17);
  swift_setDeallocating();
  sub_23C604D2C(v20 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v10;
  v26 = v24;
  v27 = v37;
LABEL_6:
  sub_23C594898(v26, v27, v19, isUniquelyReferenced_nonNull_native);

  *v38 = v39;
  return result;
}

void sub_23C603530(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v20 = a1;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_23C871BF4();
    sub_23C870E34();
    sub_23C604CD4();
    sub_23C871A14();
    v4 = v19[1];
    v5 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v8 = v19[5];
  }

  else
  {
    v9 = -1 << *(a2 + 32);
    v5 = a2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a2 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v19[0] = v16;
        sub_23C603280(&v20, v19, &v18);
        if (v3)
        {
          break;
        }

        v20 = v18;
        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = sub_23C871C64();
        if (v17)
        {
          v18 = v17;
          sub_23C870E34();
          swift_dynamicCast();
          v16 = v19[0];
          v14 = v7;
          v15 = v8;
          if (v19[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_23C59A774();
    }

    else
    {
LABEL_19:
      sub_23C59A774();
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23C603774(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ISEventGraph____lazy_storage___selfIds);
  *(v1 + OBJC_IVAR___ISEventGraph____lazy_storage___selfIds) = a1;
}

uint64_t (*sub_23C60378C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C6031E4();
  return sub_23C6037D4;
}

char *sub_23C603800()
{
  v0 = sub_23C5A3FDC(0, &qword_27E1FB498, 0x277D56958);
  v1 = sub_23C600CA0();
  if (*(v1 + 16) && (v2 = sub_23C5FF958(v0), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_23C601CF4(v4);

  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v7 = 0;
    v8 = 0;
    v24 = v5 & 0xFFFFFFFFFFFFFF8;
    v25 = v5 & 0xC000000000000001;
    v27 = MEMORY[0x277D84F90];
    v22 = i;
    v23 = v5;
    while (1)
    {
      if (v25)
      {
        v9 = MEMORY[0x23EED7610](v7, v5);
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v36 = v9;
      sub_23C603A5C(&v36, &v29);
      v28 = v8;

      v12 = v35;
      v13 = v29;
      v14 = v30;
      v16 = v31;
      v15 = v32;
      v17 = v33;
      if (v35)
      {
        v26 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_23C584700(0, *(v27 + 2) + 1, 1, v27);
        }

        v19 = *(v27 + 2);
        v18 = *(v27 + 3);
        if (v19 >= v18 >> 1)
        {
          v27 = sub_23C584700((v18 > 1), v19 + 1, 1, v27);
        }

        *(v27 + 2) = v19 + 1;
        v20 = &v27[56 * v19];
        *(v20 + 4) = v13;
        *(v20 + 5) = v14;
        *(v20 + 6) = v16;
        *(v20 + 7) = v15;
        *(v20 + 8) = v17;
        *(v20 + 9) = v26;
        *(v20 + 10) = v12;
      }

      else
      {
        sub_23C604C70(v29, v30, v31, v32, v33, v34, 0);
      }

      v5 = v23;
      ++v7;
      v8 = v28;
      if (v11 == v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_25:

  return v27;
}

double sub_23C603A5C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v11 = *a1;
  v12 = sub_23C870CA4();
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 intermediateUtteranceInfoTier1];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 unrepairedPostItn];
  if (!v18)
  {

    goto LABEL_12;
  }

  v45 = v17;
  v19 = v18;
  v43 = sub_23C871784();
  v21 = v20;

  v22 = [v15 eventMetadata];
  if (!v22 || (v44 = v21, v23 = v22, v24 = [v22 asrId], v23, !v24))
  {

LABEL_11:
    goto LABEL_12;
  }

  sub_23C871AB4();

  v25 = sub_23C870B74();
  v26 = *(v25 - 8);
  v41 = *(v26 + 48);
  if (v41(v10, 1, v25) == 1)
  {

    sub_23C585C34(v10, &qword_27E1F92A0, &qword_23C8734E0);
LABEL_12:
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v42 = v25;
  sub_23C870B04();

  v28 = *(v26 + 8);
  v29 = v10;
  v40[1] = v26 + 8;
  v30 = v28;
  v28(v29, v42);
  v31 = v42;
  sub_23C870CC4();
  if (v41(v8, 1, v31) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F92A0, &qword_23C8734E0);
    v41 = 0;
    v32 = 0;
  }

  else
  {
    v41 = sub_23C870B04();
    v34 = v33;
    v30(v8, v31);
    v32 = v34;
  }

  v35 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = 1954047348;
  v37 = inited + 32;
  v38 = v43;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v38;
  *(inited + 56) = v35;
  v39 = sub_23C5967FC(inited);
  swift_setDeallocating();
  sub_23C585C34(v37, &qword_27E1F9968, &unk_23C873E20);

  *a2 = v41;
  *(a2 + 8) = v32;
  *(a2 + 16) = 0xD00000000000002ALL;
  *(a2 + 24) = 0x800000023C8A8EA0;
  *&result = 1954047348;
  *(a2 + 32) = xmmword_23C873D00;
  *(a2 + 48) = v39;
  return result;
}

uint64_t sub_23C603E30(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ISEventGraph____lazy_storage___requests);
  *(v1 + OBJC_IVAR___ISEventGraph____lazy_storage___requests) = a1;
}

uint64_t (*sub_23C603E48(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C6037E0();
  return sub_23C603E90;
}

id EventGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventGraph();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C604028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3C8, &qword_23C87AB78);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27E1FB490;
    v3 = &unk_23C87ACE0;
  }

  else
  {
    v2 = &qword_27E1FB4F0;
    v3 = &qword_23C874E40;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void *sub_23C6040A0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23C6042EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23C604184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
    v3 = sub_23C871CF4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_23C8720F4();

      sub_23C871804();
      result = sub_23C872124();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_23C872014();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23C6042EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_23C647904(v19, a2, v20, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_23C647904(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C604454(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_23C6042EC(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_23C6040A0(v11, v6, v4, a2);
  result = MEMORY[0x23EED8240](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C6045D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  type metadata accessor for ComponentGroup();
  v7 = sub_23C601CF4(v6);
  result = ComponentGroup.__allocating_init(unchecked:)(v7);
  *a2 = result;
  return result;
}

unint64_t sub_23C604634()
{
  result = qword_27E1FB478;
  if (!qword_27E1FB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FB470, &qword_23C87ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB478);
  }

  return result;
}

uint64_t keypath_setTm_0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;

  return sub_23C581AD0(v8, v9);
}

uint64_t sub_23C604C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }

  return result;
}

unint64_t sub_23C604CD4()
{
  result = qword_27E1F9B00;
  if (!qword_27E1F9B00)
  {
    sub_23C870E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9B00);
  }

  return result;
}

uint64_t sub_23C604D80(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v24 = MEMORY[0x277D84F90];
    sub_23C871D84();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_23C871BB4();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v21 = v1 + 72;
    v22 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v23 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      objc_allocWithZone(type metadata accessor for ComponentGroupBridge());

      sub_23C5ADFCC(v12);
      sub_23C871D54();
      v13 = *(v24 + 16);
      sub_23C871D94();
      v1 = v22;
      sub_23C871DA4();
      result = sub_23C871D64();
      v9 = 1 << *(v22 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v14 = *(v4 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_23C606430(v6, v8, 0);
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_23C606430(v6, v8, 0);
      }

LABEL_4:
      v7 = v23 + 1;
      v6 = v9;
      if (v23 + 1 == v2)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23C604FB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    v25 = a1;
    sub_23C871D84();
    v4 = v25 + 64;
    v5 = -1 << *(v25 + 32);
    result = sub_23C871BB4();
    v6 = v25;
    v7 = result;
    v8 = 0;
    v9 = *(v25 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v26 = v8;
      v12 = v4;
      v13 = *(*(v6 + 48) + 8 * v7);
      v14 = type metadata accessor for ComponentIdentifierBridge();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = v13;
      v27.receiver = v15;
      v27.super_class = v14;
      v16 = v13;
      objc_msgSendSuper2(&v27, sel_init);
      sub_23C871D54();
      v17 = *(v28 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      result = sub_23C871D64();
      v6 = v25;
      v10 = 1 << *(v25 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v18 = *(v12 + 8 * v11);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v25 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (v25 + 72 + 8 * v11);
        while (v21 < (v10 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_23C606430(v7, v9, 0);
            v6 = v25;
            v10 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_23C606430(v7, v9, 0);
        v6 = v25;
      }

LABEL_4:
      v8 = v26 + 1;
      v7 = v10;
      if (v26 + 1 == v2)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t EventGraph.sievents()()
{
  v0 = sub_23C601E20();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_23C871C34();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      sub_23C871AE4();
      sub_23C871D54();
      v5 = *(v7 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v2 != v4);

    return v7;
  }

  return result;
}

uint64_t EventGraph.sievents(componentName:)()
{
  v0 = sub_23C602A14();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_23C871C34();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      sub_23C871AE4();
      sub_23C871D54();
      v5 = *(v7 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v2 != v4);

    return v7;
  }

  return result;
}

uint64_t EventGraph.sievents(componentIdentifier:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v2 = sub_23C601004();
  v3 = MEMORY[0x277D84F90];
  if (*(v2 + 16))
  {
    v4 = sub_23C5FFA08(v1);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_23C601CF4(v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v8 = sub_23C871C34();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_8:
  result = sub_23C871D84();
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      ++v10;
      sub_23C871AE4();
      sub_23C871D54();
      v11 = *(v3 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v8 != v10);

    return v3;
  }

  return result;
}

uint64_t sub_23C60581C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = MEMORY[0x277D84F90];
  if (*(v3 + 16))
  {
    v5 = sub_23C5FF958(a1);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_23C601CF4(v7);

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v9 = sub_23C871C34();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_8:
  result = sub_23C871D84();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v11, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      ++v11;
      sub_23C871AE4();
      sub_23C871D54();
      v12 = *(v4 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v9 != v11);

    return v4;
  }

  return result;
}

id sub_23C6059DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = a1;
  a4(ObjCClassMetadata);

  sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
  v8 = sub_23C871894();

  return v8;
}

uint64_t EventGraph.sievent(innerType:)(uint64_t a1)
{
  v2 = sub_23C600CA0();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_23C601CF4(v5);

  if (v6 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EED7610](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:

    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    return sub_23C871AE4();
  }

  __break(1u);
  return result;
}

uint64_t EventGraph.getComponentGroupBridges(type:)(uint64_t a1)
{
  v2 = sub_23C6009C8();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_23C601CF4(v5);

  v7 = sub_23C606178(v6);

  v8 = sub_23C604D80(v7);

  return v8;
}

uint64_t EventGraph.getComponentGroupBridge(type:)()
{
  v1 = [v0 getComponentGroupBridgesWithType_];
  type metadata accessor for ComponentGroupBridge();
  v2 = sub_23C8718A4();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

id sub_23C605F5C(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_23C5A3FDC(0, a3, a4);
  v5 = [a1 getComponentGroupBridgeWithType_];

  return v5;
}

id sub_23C605FD0(unint64_t *a1, uint64_t *a2)
{
  sub_23C5A3FDC(0, a1, a2);
  v3 = [v2 getComponentGroupBridgeWithType_];

  return v3;
}

uint64_t EventGraph.componentIdentifiersBridge.getter()
{
  v0 = sub_23C601004();
  v1 = sub_23C604FB0(v0);

  v2 = sub_23C59A590(v1);

  return v2;
}

uint64_t sub_23C606178(unint64_t a1)
{
  v24 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_23C871C34();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EED7610](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = sub_23C870D04();
        v11 = sub_23C5FFC28(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_23C63FCBC(v14, 1);
          v4 = v24;
          v16 = sub_23C5FFC28(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4C8, &qword_23C87AD00);
            result = sub_23C872064();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x23EED7170]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23C8718D4();
          }

          sub_23C871904();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_23C874E20;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

unint64_t sub_23C6063D8()
{
  result = qword_27E1F9BF0;
  if (!qword_27E1F9BF0)
  {
    type metadata accessor for ComponentIdentifierBridge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9BF0);
  }

  return result;
}

uint64_t sub_23C606430(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id EventGraphsPublisher.__allocating_init(events:windowLength:trackingTag:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_23C60B330(a1, a2, a3, a4);

  return v10;
}

id EventGraphsPublisher.init(events:windowLength:trackingTag:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = sub_23C60B330(a1, a2, a3, a4);

  return v5;
}

void sub_23C6064D4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_windowLength);
  v3 = v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_trackingTag;
  v4 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_trackingTag);
  v5 = *(v3 + 8);
  v6 = objc_allocWithZone(type metadata accessor for EventGraphsPublisher.ConnectedComponentGroupsSubscriber(0));

  v7 = swift_unknownObjectRetain();
  v8 = sub_23C60B588(v7, v4, v5, v2);
  swift_unknownObjectRelease();
  v9 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_inner);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_inner) = v8;
  v10 = v8;

  [*(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_upstream) subscribe_];
}

uint64_t sub_23C606780(uint64_t a1)
{
  sub_23C588DC0(a1, v14);
  type metadata accessor for TimestampedOrderedEvent();
  result = swift_dynamicCast();
  if (!result)
  {
    return BPSDemandMax();
  }

  v3 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp);
  if (v3 <= *(v13 + 16))
  {
    v3 = *(v13 + 16);
  }

  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp) = v3;
  v4 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C874E20;
    *(inited + 32) = v13;
    v8 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder);
    v9 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder);
    v10 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder);

    sub_23C667984(inited, v8, v9, v10);
    swift_setDeallocating();
    v11 = *(inited + 16);
    swift_arrayDestroy();
    sub_23C606E50();
    v12 = BPSDemandMax();

    return v12;
  }

  return result;
}

uint64_t sub_23C606954(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CoreAnalyticsTracker();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) = 1;
  sub_23C606E50();
  [*(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream) receiveCompletion_];
  v12 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v1 + v12, v6, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_23C585C34(v6, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C60C678(v6, v11, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount), 0);
  return sub_23C60C6E0(v11, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C606BE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for CoreAnalyticsTracker();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) = 1;
  [*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream) cancel];
  v10 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v0 + v10, v4, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_23C585C34(v4, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C60C678(v4, v9, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(1, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount), 0);
  return sub_23C60C6E0(v9, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C606E50()
{
  v1 = v0;
  v65 = sub_23C870B74();
  v62 = *(v65 - 8);
  v2 = *(v62 + 64);
  v3 = MEMORY[0x28223BE20](v65);
  v61 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v64 = &v47 - v5;
  v6 = type metadata accessor for EventTypeIdPair();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v47 - v11);
  v13 = MEMORY[0x23EED7AE0](v10);
  v14 = 0;
  sub_23C6073D4(v0, v66);
  objc_autoreleasePoolPop(v13);
  if (v66[0] == 1)
  {
    do
    {
      v15 = MEMORY[0x23EED7AE0]();
      sub_23C6073D4(v0, v66);
      objc_autoreleasePoolPop(v15);
    }

    while ((v66[0] & 1) != 0);
  }

  v16 = MEMORY[0x23EED7AE0]();
  sub_23C6078C4(v0, v66);
  objc_autoreleasePoolPop(v16);
  if (v66[0] != 1)
  {
    return sub_23C607DF0();
  }

  v54 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished;
  v49 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp;
  v48 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength;
  v52 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream;
  v53 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder;
  v17 = (v62 + 32);
  v50 = v12;
  v51 = v0;
  while (1)
  {
    v25 = MEMORY[0x23EED7AE0]();
    if (v1[v54] == 1)
    {
      v26 = *&v1[v53];
      v27 = sub_23C608EA8();
      if (!*(v27 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v28 = *&v1[v53];
      v27 = sub_23C6088F4(*&v1[v49] - *&v1[v48]);
      if (!*(v27 + 16))
      {
LABEL_31:

LABEL_33:
        objc_autoreleasePoolPop(v25);
        return sub_23C607DF0();
      }
    }

    v29 = v55;
    sub_23C60C5AC(v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v55);

    sub_23C60C678(v29, v12, type metadata accessor for EventTypeIdPair);
    result = sub_23C608358(v12);
    if (!v31)
    {
      sub_23C60C6E0(v12, type metadata accessor for EventTypeIdPair);
      goto LABEL_33;
    }

    v32 = v31;
    v59 = v25;
    v33 = *&v1[v52];
    v57 = *&result;
    v58 = v33;
    v34 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 >> 62)
    {
      break;
    }

    v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v14;
    if (v35)
    {
      goto LABEL_14;
    }

LABEL_5:
    v18 = MEMORY[0x277D84F90];
LABEL_6:
    v19 = v57;
    v20 = sub_23C596660(v18);

    v1 = v51;
    v21 = v51;
    v14 = v60;
    v22 = sub_23C60AEC8(v20, v21);

    *v66 = v32;
    sub_23C6360C8(v22);
    v23 = objc_allocWithZone(type metadata accessor for EventGraph());
    v24 = EventGraph.init(timestamp:events:)(v19);
    [v58 receiveInput_];

    v12 = v50;
    sub_23C60C6E0(v50, type metadata accessor for EventTypeIdPair);
    objc_autoreleasePoolPop(v59);
  }

  result = sub_23C871C34();
  v35 = result;
  v60 = v14;
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_14:
  v36 = 0;
  v63 = v32 & 0xC000000000000001;
  v18 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v63)
    {
      v37 = v32;
      result = MEMORY[0x23EED7610](v36, v32);
      v38 = result;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v36 >= *(v34 + 16))
    {
      goto LABEL_36;
    }

    v37 = v32;
    v38 = *(v32 + 8 * v36 + 32);

    v39 = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
LABEL_18:
      v40 = *(v38 + 24);
      result = sub_23C870CF4();
      if (!result)
      {
        goto LABEL_37;
      }

      v41 = result;
      v42 = v61;
      sub_23C870D94();

      v43 = *v17;
      (*v17)(v64, v42, v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23C5844B4(0, *(v18 + 2) + 1, 1, v18);
      }

      v45 = *(v18 + 2);
      v44 = *(v18 + 3);
      if (v45 >= v44 >> 1)
      {
        v18 = sub_23C5844B4(v44 > 1, v45 + 1, 1, v18);
      }

      *(v18 + 2) = v45 + 1;
      result = v43(&v18[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45], v64, v65);
      ++v36;
      v46 = v39 == v35;
      v32 = v37;
      if (v46)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_23C6073D4(void *a1@<X0>, char *a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp;
  v5 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp);
  v6 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength);
  v7 = v5 - v6;
  v8 = *&OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished;
  v9 = &unk_27E1FB000;
  if (*(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) == 1)
  {
    v2 = sub_23C871634();
    v10 = sub_23C871AC4();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23C56D000, v2, v10, "Constructing graph upstream finished", v11, 2u);
      MEMORY[0x23EED8240](v11, -1, -1);
    }

    v12 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder);
    v38 = v12;
    v13 = sub_23C608CF4();
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder);
    v38 = v12;
    v13 = sub_23C637F9C(v5 - v6);
  }

  v14 = v13;
  v15 = v13 >> 62;
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_36:

LABEL_37:
    v36 = 0;
    goto LABEL_38;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_36;
  }

LABEL_8:
  v37 = v4;
  if ((v14 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x23EED7610](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v4 = *(v14 + 32);
  }

  v9 = a1;
  v16 = sub_23C871634();
  v17 = sub_23C871AC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109632;
    *(v18 + 4) = *(a1 + *&v8);

    *(v18 + 8) = 2048;
    *(v18 + 10) = v7;
    *(v18 + 18) = 2048;
    *(v18 + 20) = *&v37[a1];
    _os_log_impl(&dword_23C56D000, v16, v17, "Constructing graph upstreamFinished: %{BOOL}d, session window expiry: %f latestTimestamp: %f", v18, 0x1Cu);
    MEMORY[0x23EED8240](v18, -1, -1);
  }

  else
  {

    v16 = v9;
  }

  v12 = sub_23C871634();
  LOBYTE(v8) = sub_23C871AC4();
  if (!os_log_type_enabled(v12, LOBYTE(v8)))
  {

    swift_bridgeObjectRelease_n();
    v20 = v38;
    goto LABEL_19;
  }

  v37 = v4;
  v2 = swift_slowAlloc();
  *v2 = 134217984;
  if (v15)
  {
    goto LABEL_43;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v20 = v38;

    *(v2 + 4) = i;

    _os_log_impl(&dword_23C56D000, v12, LOBYTE(v8), "Constructing graph %ld ids ready for construction", v2, 0xCu);
    MEMORY[0x23EED8240](v2, -1, -1);

    v4 = v37;
LABEL_19:
    isa = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder);
    if (v20[6].isa > isa)
    {
      isa = v20[6].isa;
    }

    *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder) = isa;
    v22 = sub_23C638AD4(v4);
    if (!v23)
    {

      goto LABEL_37;
    }

    v8 = *&v22;
    v14 = v23;
    v9 = v9;
    v24 = sub_23C871634();
    v25 = sub_23C871AC4();
    v26 = v14 >> 62;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v20[6];

      *(v27 + 12) = 2048;
      v28 = v26 ? sub_23C871C34() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v27 + 14) = v28;
      _os_log_impl(&dword_23C56D000, v24, v25, "Constructing graph end %ld items in graphBuilder, events in new graph %ld", v27, 0x16u);
      MEMORY[0x23EED8240](v27, -1, -1);
    }

    else
    {

      v24 = v9;
    }

    v2 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph;
    v12 = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph);
    if (v26)
    {
LABEL_41:
      v29 = sub_23C871C34();
    }

    else
    {
      v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v29 <= v12 ? v12 : v29;
    *(&v9->isa + v2) = v30;
    v31 = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount);
    v32 = __OFADD__(v31, 1);
    v33 = (v31 + 1);
    if (!v32)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount) = v33;
  v34 = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream);
  v35 = sub_23C607AE0(v14, v8);

  [v34 receiveInput_];

  v36 = 1;
LABEL_38:
  *a2 = v36;
}

uint64_t sub_23C6078C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for EventTypeIdPair();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (v21 - v10);
  if (*(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) == 1)
  {
    v12 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder);
    v13 = sub_23C608EA8();
    if (*(v13 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

LABEL_8:
    v19 = 0;
    goto LABEL_9;
  }

  v20 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder);
  v13 = sub_23C6088F4(*(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp) - *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength));
  if (!*(v13 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23C60C5AC(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v9);

  sub_23C60C678(v9, v11, type metadata accessor for EventTypeIdPair);
  v14 = sub_23C608358(v11);
  if (!v15)
  {
    result = sub_23C60C6E0(v11, type metadata accessor for EventTypeIdPair);
    goto LABEL_8;
  }

  v16 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream);
  v17 = sub_23C607AE0(v15, *&v14);

  [v16 receiveInput_];

  result = sub_23C60C6E0(v11, type metadata accessor for EventTypeIdPair);
  v19 = 1;
LABEL_9:
  *a2 = v19;
  return result;
}

id sub_23C607AE0(unint64_t a1, double a2)
{
  v4 = sub_23C870B74();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = v28 - v8;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = MEMORY[0x277D84F90];
LABEL_21:
    v24 = sub_23C596660(v12);

    v25 = v28[1];
    v26 = sub_23C60AEC8(v24, v25);

    v35 = a1;

    sub_23C6360C8(v26);
    v27 = objc_allocWithZone(type metadata accessor for EventGraph());
    return EventGraph.init(timestamp:events:)(a2);
  }

LABEL_19:
  v9 = sub_23C871C34();
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_3:
  v10 = 0;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1 & 0xC000000000000001;
  v11 = (v33 + 32);
  v12 = MEMORY[0x277D84F90];
  v29 = v4;
  while (1)
  {
    if (v31)
    {
      v13 = a1;
      v14 = MEMORY[0x23EED7610](v10, a1);
      a1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v10 >= *(v30 + 16))
      {
        goto LABEL_18;
      }

      v13 = a1;
      v14 = *(a1 + 8 * v10 + 32);

      a1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    v15 = *(v14 + 24);
    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v17 = result;
    v18 = v32;
    sub_23C870D94();

    v19 = *v11;
    (*v11)(v34, v18, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_23C5844B4(0, v12[2] + 1, 1, v12);
    }

    v21 = v12[2];
    v20 = v12[3];
    if (v21 >= v20 >> 1)
    {
      v12 = sub_23C5844B4(v20 > 1, v21 + 1, 1, v12);
    }

    v12[2] = v21 + 1;
    v22 = v12 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21;
    v4 = v29;
    v19(v22, v34, v29);
    ++v10;
    v23 = a1 == v9;
    a1 = v13;
    if (v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C607DF0()
{
  v1 = sub_23C870B74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder);
  v7 = sub_23C6084CC(*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp) + -1800.0);
  v8 = *(v7 + 16);
  if (v8)
  {
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v31 = v7;
    v32 = v10;
    v11 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v14 = v9;
      v32(v5, v11, v1);
      swift_beginAccess();
      v15 = *(v6 + 24);
      v16 = sub_23C5FFB04(v5);
      if (v17)
      {
        v18 = v16;
        v19 = *(v6 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v6 + 24);
        v33 = v21;
        *(v6 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C6439A0();
          v21 = v33;
        }

        (*v13)(*(v21 + 48) + v18 * v12, v1);
        v22 = *(*(v21 + 56) + 8 * v18);

        sub_23C6418A4(v18, v21);
        *(v6 + 24) = v21;
      }

      swift_endAccess();
      swift_beginAccess();
      v23 = *(v6 + 16);
      v24 = sub_23C5FFB04(v5);
      if (v25)
      {
        v26 = v24;
        v27 = *(v6 + 16);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v6 + 16);
        v33 = v29;
        *(v6 + 16) = 0x8000000000000000;
        if (!v28)
        {
          sub_23C64372C();
          v29 = v33;
        }

        (*v13)(*(v29 + 48) + v26 * v12, v1);
        sub_23C6418A4(v26, v29);
        *(v6 + 16) = v29;
      }

      swift_endAccess();
      (*v13)(v5, v1);
      v11 += v12;
      --v8;
      v9 = v14;
    }

    while (v8);
  }
}

id EventGraphsPublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23C608278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23C608358(uint64_t *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16))
  {

    v5 = sub_23C5FFA4C(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = *(v2 + 16);
  if (*(v8 + 16))
  {
    v9 = *(v2 + 16);

    v10 = sub_23C5FFA4C(a1);
    v12 = v11;
    if (v11)
    {
      v13 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  swift_beginAccess();
  sub_23C6329A0(a1);
  swift_endAccess();

  swift_beginAccess();
  sub_23C632A64(a1);
  swift_endAccess();
  if (v7)
  {
    result = v13;
  }

  else
  {
    result = 0;
  }

  if (v7)
  {
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23C6084CC(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5B0, qword_23C87ADE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - v6;
  v30 = sub_23C870B74();
  v35 = *(v30 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v1 + 16);
  v37 = a1;

  v12 = sub_23C60C41C(v11, sub_23C60BFE8, v36, sub_23C60C1E4, sub_23C60C1E4);

  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = sub_23C64D580(*(v12 + 16), 0);
    v16 = sub_23C652D98(v38, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v13, v12);
    v17 = v38[2];
    v32 = v38[3];
    v33 = v16;
    v31 = v38[4];

    sub_23C56EF08();
    if (v33 != v13)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v38[0] = v15;
  sub_23C609388(v38, &unk_27E1FB5B0, qword_23C87ADE0, sub_23C648EA0, sub_23C6474E4);
  v18 = v30;
  v19 = v9;

  v17 = v38[0];
  v20 = *(v38[0] + 16);
  if (v20)
  {
    v38[0] = v14;
    sub_23C592B60(0, v20, 0);
    v21 = 0;
    v22 = v38[0];
    v33 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = (v35 + 16);
    v32 = v35 + 32;
    while (v21 < v17[2])
    {
      v23 = v17;
      v24 = v4;
      v25 = *(v4 + 72);
      v26 = v34;
      sub_23C5855B0(&v33[v25 * v21], v34, &unk_27E1FB5B0, qword_23C87ADE0);
      (*v31)(v19, v26, v18);
      sub_23C585C34(v26, &unk_27E1FB5B0, qword_23C87ADE0);
      v38[0] = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_23C592B60(v27 > 1, v28 + 1, 1);
        v22 = v38[0];
      }

      ++v21;
      *(v22 + 16) = v28 + 1;
      (*(v35 + 32))(v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28, v19, v18);
      v4 = v24;
      v17 = v23;
      if (v20 == v21)
      {

        return v22;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C6088F4(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD60, &qword_23C874B60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for EventTypeIdPair();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v1 + 16);
  v33 = a1;

  v14 = sub_23C60C41C(v13, sub_23C60C740, v32, sub_23C60BFF8, sub_23C60BFF8);

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = sub_23C64D5A4(*(v14 + 16), 0);
    v18 = sub_23C65303C(v34, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v15, v14);
    v19 = v34[2];
    v29 = v34[3];
    v30 = v18;
    v28 = v34[4];

    sub_23C56EF08();
    if (v30 != v15)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v34[0] = v17;
  sub_23C609388(v34, &unk_27E1FBD60, &qword_23C874B60, sub_23C648EB4, sub_23C6474F8);

  v19 = v34[0];
  v20 = *(v34[0] + 16);
  if (v20)
  {
    v21 = v11;
    v34[0] = v16;
    v30 = v20;
    sub_23C592C84(0, v20, 0);
    v22 = 0;
    v23 = v34[0];
    v29 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v22 < v19[2])
    {
      v24 = v4;
      sub_23C5855B0(v29 + *(v4 + 72) * v22, v7, &unk_27E1FBD60, &qword_23C874B60);
      sub_23C60C5AC(v7, v21);
      sub_23C585C34(v7, &unk_27E1FBD60, &qword_23C874B60);
      v34[0] = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_23C592C84(v25 > 1, v26 + 1, 1);
        v23 = v34[0];
      }

      ++v22;
      *(v23 + 16) = v26 + 1;
      sub_23C60C678(v21, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, type metadata accessor for EventTypeIdPair);
      v4 = v24;
      if (v30 == v22)
      {

        return v23;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

void *sub_23C608CF4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_23C64D3D0(*(v1 + 16), 0);
    v4 = sub_23C6527F4(&v12, v3 + 4, v2, v1);
    swift_bridgeObjectRetain_n();
    sub_23C56EF08();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v12 = v3;
  sub_23C60922C(&v12);

  v5 = v12;
  v6 = v12[2];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_23C871D84();
    v7 = 0;
    v8 = 4;
    while (v7 < v5[2])
    {
      ++v7;
      v9 = v5[v8];
      sub_23C871D54();
      v10 = v12[2];
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
      v8 += 2;
      if (v6 == v7)
      {

        return v12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23C608EA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD60, &qword_23C874B60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for EventTypeIdPair();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_23C64D5A4(*(v10 + 16), 0);
    v13 = sub_23C65303C(v25, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v11, v10);
    v22 = v25[4];
    v23 = v25[3];
    swift_bridgeObjectRetain_n();
    sub_23C56EF08();
    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_5:
  v25[0] = v12;
  sub_23C609388(v25, &unk_27E1FBD60, &qword_23C874B60, sub_23C648EB4, sub_23C6474F8);

  v14 = v25[0];
  v15 = *(v25[0] + 16);
  if (v15)
  {
    v16 = v9;
    v25[0] = MEMORY[0x277D84F90];
    sub_23C592C84(0, v15, 0);
    v17 = 0;
    v18 = v25[0];
    v22 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v23 = v2;
    while (v17 < *(v14 + 16))
    {
      sub_23C5855B0(v22 + *(v23 + 72) * v17, v5, &unk_27E1FBD60, &qword_23C874B60);
      sub_23C60C5AC(v5, v16);
      sub_23C585C34(v5, &unk_27E1FBD60, &qword_23C874B60);
      v25[0] = v18;
      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23C592C84(v19 > 1, v20 + 1, 1);
        v18 = v25[0];
      }

      ++v17;
      *(v18 + 16) = v20 + 1;
      sub_23C60C678(v16, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for EventTypeIdPair);
      if (v15 == v17)
      {

        return v18;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23C60922C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23C648E50(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_23C871FC4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AF8, &unk_23C874B70);
      v7 = sub_23C8718F4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_23C609820(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_23C609388(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(unint64_t *, unint64_t *, unint64_t *))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = a4(v11);
  }

  v12 = *(v11 + 16);
  v14[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14[1] = v12;
  result = sub_23C609464(v14, a2, a3, a5);
  *a1 = v11;
  return result;
}

uint64_t sub_23C609464(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(unint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  result = sub_23C871FC4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = sub_23C8718F4();
        *(v12 + 16) = v11;
      }

      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_23C609DB4(v14, v15, a1, v10, a2, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_23C6095C8(0, v8, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_23C6095C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v44 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v34 - v20;
  v36 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v41 = -v23;
    v42 = v22;
    v25 = a1 - a3;
    v35 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v39 = v24;
    v40 = a3;
    v37 = v26;
    v38 = v25;
    v27 = v25;
    v28 = v44;
    while (1)
    {
      sub_23C5855B0(v26, v21, a5, a6);
      sub_23C5855B0(v24, v17, a5, a6);
      v29 = *(v28 + 48);
      v30 = *&v21[v29];
      v31 = *&v17[v29];
      sub_23C585C34(v17, a5, a6);
      result = sub_23C585C34(v21, a5, a6);
      if (v30 >= v31)
      {
LABEL_4:
        a3 = v40 + 1;
        v24 = v39 + v35;
        v25 = v38 - 1;
        v26 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      sub_23C60C610(v26, v43, a5, a6);
      v28 = v44;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23C60C610(v32, v24, a5, a6);
      v24 += v41;
      v26 += v41;
      if (__CFADD__(v27++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C609820(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23C6473A0(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_23C60A740((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_23C584338((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_23C60A740((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23C609DB4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v129 = a7;
  v9 = a6;
  v10 = a5;
  v11 = v8;
  v120 = a4;
  v121 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v130 = *(v13 - 8);
  v14 = *(v130 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v132 = &v117 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v117 - v20;
  result = MEMORY[0x28223BE20](v19);
  v134 = &v117 - v22;
  v131 = a3;
  v23 = *(a3 + 8);
  v137 = v10;
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_99:
    a3 = *v121;
    if (!*v121)
    {
      goto LABEL_139;
    }

    v7 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v7;
    }

    else
    {
LABEL_133:
      result = sub_23C6473A0(v7);
    }

    v112 = v11;
    v138 = result;
    v7 = *(result + 16);
    if (v7 >= 2)
    {
      while (*v131)
      {
        v11 = v7 - 1;
        v113 = *(result + 16 * v7);
        v114 = result;
        v115 = *(result + 16 * (v7 - 1) + 40);
        sub_23C60A944(*v131 + *(v130 + 72) * v113, *v131 + *(v130 + 72) * *(result + 16 * (v7 - 1) + 32), *v131 + *(v130 + 72) * v115, a3, v137, v9, v129);
        if (v112)
        {
        }

        if (v115 < v113)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_23C6473A0(v114);
        }

        if (v7 - 2 >= *(v114 + 2))
        {
          goto LABEL_127;
        }

        v116 = &v114[16 * v7];
        *v116 = v113;
        *(v116 + 1) = v115;
        v138 = v114;
        sub_23C647314(v11);
        result = v138;
        v7 = *(v138 + 16);
        if (v7 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v136 = result;
  while (1)
  {
    v26 = v24;
    v124 = v25;
    if (v24 + 1 >= v23)
    {
      v42 = v24 + 1;
      v43 = v120;
    }

    else
    {
      v119 = v11;
      v27 = v24;
      v28 = *v131;
      v29 = *(v130 + 72);
      a3 = *v131 + v29 * (v24 + 1);
      v30 = v134;
      sub_23C5855B0(a3, v134, v10, v9);
      v31 = v135;
      sub_23C5855B0(v28 + v29 * v27, v135, v10, v9);
      v32 = *(v136 + 48);
      v33 = *(v30 + v32);
      v34 = *(v31 + v32);
      sub_23C585C34(v31, v10, v9);
      result = sub_23C585C34(v30, v10, v9);
      v118 = v27;
      v7 = v27 + 2;
      v133 = v29;
      v35 = v28 + v29 * (v27 + 2);
      while (v23 != v7)
      {
        v36 = v134;
        v37 = v137;
        sub_23C5855B0(v35, v134, v137, v9);
        v38 = v135;
        sub_23C5855B0(a3, v135, v37, v9);
        v39 = *(v136 + 48);
        v40 = *(v36 + v39);
        v41 = *(v38 + v39);
        sub_23C585C34(v38, v37, v9);
        result = sub_23C585C34(v36, v37, v9);
        ++v7;
        v35 += v133;
        a3 += v133;
        if (v33 < v34 == v40 >= v41)
        {
          v42 = v7 - 1;
          goto LABEL_12;
        }
      }

      v42 = v23;
LABEL_12:
      v43 = v120;
      v11 = v119;
      v26 = v118;
      if (v33 < v34)
      {
        if (v42 < v118)
        {
          goto LABEL_130;
        }

        if (v118 < v42)
        {
          v7 = v133 * (v42 - 1);
          v44 = v42 * v133;
          v128 = v42;
          v45 = v42;
          v46 = v118;
          a3 = v118 * v133;
          v47 = v117;
          do
          {
            if (v46 != --v45)
            {
              v48 = *v131;
              if (!*v131)
              {
                goto LABEL_136;
              }

              sub_23C60C610(v48 + a3, v47, v137, v9);
              if (a3 < v7 || v48 + a3 >= v48 + v44)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != v7)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23C60C610(v47, v48 + v7, v137, v9);
            }

            ++v46;
            v7 -= v133;
            v44 -= v133;
            a3 += v133;
          }

          while (v46 < v45);
          v11 = v119;
          v43 = v120;
          v26 = v118;
          v42 = v128;
        }
      }
    }

    v49 = v131[1];
    if (v42 < v49)
    {
      if (__OFSUB__(v42, v26))
      {
        goto LABEL_129;
      }

      if (v42 - v26 < v43)
      {
        if (__OFADD__(v26, v43))
        {
          goto LABEL_131;
        }

        if (v26 + v43 >= v49)
        {
          v50 = v131[1];
        }

        else
        {
          v50 = v26 + v43;
        }

        if (v50 < v26)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v42 != v50)
        {
          break;
        }
      }
    }

    v24 = v42;
    if (v42 < v26)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v124;
    }

    else
    {
      result = sub_23C584338(0, *(v124 + 2) + 1, 1, v124);
      v25 = result;
    }

    v7 = *(v25 + 2);
    v51 = *(v25 + 3);
    a3 = v7 + 1;
    if (v7 >= v51 >> 1)
    {
      result = sub_23C584338((v51 > 1), v7 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = a3;
    v52 = &v25[16 * v7];
    *(v52 + 4) = v26;
    *(v52 + 5) = v24;
    v133 = *v121;
    if (!v133)
    {
      goto LABEL_138;
    }

    if (v7)
    {
      v10 = v137;
      while (1)
      {
        v53 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v54 = *(v25 + 4);
          v55 = *(v25 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_56:
          if (v57)
          {
            goto LABEL_117;
          }

          v70 = &v25[16 * a3];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_120;
          }

          v76 = &v25[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_124;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = a3 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v80 = &v25[16 * a3];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_70:
        if (v75)
        {
          goto LABEL_119;
        }

        v83 = &v25[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_77:
        v7 = v53 - 1;
        if (v53 - 1 >= a3)
        {
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

        if (!*v131)
        {
          goto LABEL_135;
        }

        v91 = v25;
        a3 = *&v25[16 * v7 + 32];
        v92 = *&v25[16 * v53 + 40];
        sub_23C60A944(*v131 + *(v130 + 72) * a3, *v131 + *(v130 + 72) * *&v25[16 * v53 + 32], *v131 + *(v130 + 72) * v92, v133, v137, v9, v129);
        if (v11)
        {
        }

        if (v92 < a3)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v93 = v91;
        }

        else
        {
          v93 = sub_23C6473A0(v91);
        }

        if (v7 >= *(v93 + 2))
        {
          goto LABEL_114;
        }

        v94 = &v93[16 * v7];
        *(v94 + 4) = a3;
        *(v94 + 5) = v92;
        v138 = v93;
        v7 = &v138;
        result = sub_23C647314(v53);
        v25 = v138;
        a3 = *(v138 + 16);
        v10 = v137;
        if (a3 <= 1)
        {
          goto LABEL_4;
        }
      }

      v58 = &v25[16 * a3 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_115;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_116;
      }

      v65 = &v25[16 * a3];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_118;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_121;
      }

      if (v69 >= v61)
      {
        v87 = &v25[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v56 < v90)
        {
          v53 = a3 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v10 = v137;
LABEL_4:
    v23 = v131[1];
    if (v24 >= v23)
    {
      goto LABEL_99;
    }
  }

  v133 = v9;
  v119 = v11;
  v95 = *v131;
  v96 = *(v130 + 72);
  v97 = *v131 + v96 * (v42 - 1);
  v98 = -v96;
  v118 = v26;
  v99 = v26 - v42;
  v122 = v96;
  v123 = v50;
  v100 = v95;
  a3 = v95 + v42 * v96;
LABEL_89:
  v127 = v97;
  v128 = v42;
  v125 = a3;
  v126 = v99;
  v101 = v97;
  v102 = v136;
  v103 = v133;
  while (1)
  {
    v104 = v134;
    sub_23C5855B0(a3, v134, v137, v103);
    v105 = v135;
    sub_23C5855B0(v101, v135, v137, v103);
    v106 = *(v102 + 48);
    v107 = *(v104 + v106);
    v108 = *(v105 + v106);
    sub_23C585C34(v105, v137, v103);
    v109 = v104;
    v7 = v137;
    result = sub_23C585C34(v109, v137, v103);
    if (v107 >= v108)
    {
LABEL_88:
      v42 = v128 + 1;
      v24 = v123;
      v97 = v127 + v122;
      v99 = v126 - 1;
      a3 = v125 + v122;
      if (v128 + 1 != v123)
      {
        goto LABEL_89;
      }

      v11 = v119;
      v26 = v118;
      v9 = v133;
      if (v123 < v118)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (!v100)
    {
      break;
    }

    v110 = v132;
    v103 = v133;
    sub_23C60C610(a3, v132, v7, v133);
    v102 = v136;
    swift_arrayInitWithTakeFrontToBack();
    sub_23C60C610(v110, v101, v7, v103);
    v101 += v98;
    a3 += v98;
    if (__CFADD__(v99++, 1))
    {
      goto LABEL_88;
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
  return result;
}

uint64_t sub_23C60A740(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_23C60A944(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v59 = a3;
  v55 = a5;
  v56 = a6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v58 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v19 = v59 - a2;
  if (v59 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v50 = a7;
  v20 = (a2 - a1) / v18;
  v62 = a1;
  v61 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v22;
    if (v22 >= 1)
    {
      v32 = -v18;
      v33 = a4 + v22;
      v52 = -v18;
      v53 = a4;
      do
      {
        v49 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v54 = v34;
        while (1)
        {
          v36 = v59;
          if (v34 <= a1)
          {
            v62 = v34;
            v60 = v49;
            goto LABEL_58;
          }

          v51 = v31;
          v59 += v32;
          v37 = v33 + v32;
          v38 = v33 + v32;
          v39 = v55;
          v40 = v56;
          sub_23C5855B0(v38, v16, v55, v56);
          v41 = v35;
          v42 = v35;
          v43 = v16;
          v44 = v57;
          sub_23C5855B0(v42, v57, v39, v40);
          v45 = *(v58 + 48);
          v46 = *(v43 + v45);
          v47 = *(v44 + v45);
          v48 = v44;
          v16 = v43;
          sub_23C585C34(v48, v39, v40);
          sub_23C585C34(v43, v39, v40);
          if (v46 < v47)
          {
            break;
          }

          v31 = v37;
          if (v36 < v33 || v59 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v41;
            v32 = v52;
          }

          else
          {
            v35 = v41;
            v32 = v52;
            if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v37;
          v34 = v54;
          if (v37 <= v53)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        if (v36 < v54 || v59 >= v54)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v51;
          v32 = v52;
        }

        else
        {
          a2 = v41;
          v31 = v51;
          v32 = v52;
          if (v36 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v53);
    }

LABEL_57:
    v62 = a2;
    v60 = v31;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v21;
    v60 = a4 + v21;
    if (v21 >= 1 && a2 < v59)
    {
      do
      {
        v26 = v55;
        v25 = v56;
        sub_23C5855B0(a2, v16, v55, v56);
        v27 = v57;
        sub_23C5855B0(a4, v57, v26, v25);
        v28 = *(v58 + 48);
        v29 = *&v16[v28];
        v30 = *(v27 + v28);
        sub_23C585C34(v27, v26, v25);
        sub_23C585C34(v16, v26, v25);
        if (v29 >= v30)
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v61 = a4 + v18;
          a4 += v18;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        a1 += v18;
        v62 = a1;
      }

      while (a4 < v23 && a2 < v59);
    }
  }

LABEL_58:
  v50(&v62, &v61, &v60);
  return 1;
}

void *sub_23C60AE28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_23C60AEC8(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_23C870B74();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v40 = (v9 + 63) >> 6;
  v47 = v5 + 16;
  v48 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder;
  v49 = v5;
  v46 = (v5 + 8);

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v44 = v7;
  v45 = v3;
  v43 = a1 + 56;
  v41 = a1;
  while (v11)
  {
LABEL_10:
    (*(v49 + 16))(v7, *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v3);
    v16 = *(v50 + v48);
    swift_beginAccess();
    v17 = *(v16 + 24);
    if (*(v17 + 16))
    {
      v18 = *(v16 + 24);

      v19 = sub_23C5FFB04(v7);
      v20 = MEMORY[0x277D84F90];
      if (v21)
      {
        v20 = *(*(v17 + 56) + 8 * v19);
      }
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    (*v46)(v7, v3);
    v22 = v20 >> 62;
    if (v20 >> 62)
    {
      v23 = sub_23C871C34();
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v14 >> 62;
    if (v14 >> 62)
    {
      result = sub_23C871C34();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v23;
    v25 = __OFADD__(result, v23);
    v26 = result + v23;
    if (v25)
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_27:
        sub_23C871C34();
      }

      else
      {
        v27 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
        v28 = *(v27 + 16);
      }

      result = sub_23C871D34();
      v51 = result;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v24)
    {
      goto LABEL_27;
    }

    v27 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v26 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

    v51 = v14;
LABEL_29:
    v29 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v22)
    {
      result = sub_23C871C34();
      v31 = result;
    }

    else
    {
      v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 &= v11 - 1;
    if (v31)
    {
      if (((v30 >> 1) - v29) < v53)
      {
        goto LABEL_48;
      }

      v32 = v27 + 8 * v29 + 32;
      v42 = v27;
      if (v22)
      {
        if (v31 < 1)
        {
          goto LABEL_50;
        }

        sub_23C5A44B0();
        for (i = 0; i != v31; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
          v34 = sub_23C594EDC(v52, i, v20);
          v36 = *v35;

          (v34)(v52, 0);
          *(v32 + 8 * i) = v36;
        }
      }

      else
      {
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
      }

      a1 = v41;
      v7 = v44;
      v3 = v45;
      v8 = v43;
      v14 = v51;
      if (v53 >= 1)
      {
        v37 = *(v42 + 16);
        v25 = __OFADD__(v37, v53);
        v38 = v37 + v53;
        if (v25)
        {
          goto LABEL_49;
        }

        *(v42 + 16) = v38;
      }
    }

    else
    {

      v7 = v44;
      v3 = v45;
      v8 = v43;
      v14 = v51;
      if (v53 > 0)
      {
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v40)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

id sub_23C60B330(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_23C871654();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_inner] = 0;
  v15 = OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_logger;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_upstream] = a1;
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_windowLength] = a4;
  v16 = &v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_trackingTag];
  *v16 = a2;
  *(v16 + 1) = a3;
  (*(v11 + 16))(v14, &v4[v15], v10);
  v17 = a1;
  v18 = sub_23C871634();
  v19 = sub_23C871AC4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a4;
    _os_log_impl(&dword_23C56D000, v18, v19, "EventGraphPublisher: Constructed with window %f", v20, 0xCu);
    MEMORY[0x23EED8240](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v21 = type metadata accessor for EventGraphsPublisher(0);
  v23.receiver = v5;
  v23.super_class = v21;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_23C60B588(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v7 = type metadata accessor for CoreAnalyticsTracker();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23C870AE4();
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v60 = &v54 - v17;
  v18 = sub_23C871654();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v8 + 56);
  v58 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker;
  v63 = v8 + 56;
  v64 = v7;
  v57(&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker], 1, 1, v7);
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount] = 0;
  v23 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5E0, &unk_23C87AE00);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84F90];
  v24[2] = sub_23C595CB8(MEMORY[0x277D84F90]);
  v24[3] = sub_23C595DA8(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9CF8, &unk_23C874DD0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_23C595DBC(v25);
  v24[4] = v26;
  v24[5] = sub_23C595DD0(v25);
  v24[6] = 0;
  *&v5[v23] = v24;
  v27 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB5F0, &qword_23C87AE10);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_23C595EC8(v25);
  *(v28 + 24) = sub_23C5960B0(v25);
  *&v5[v27] = v28;
  v29 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D00, &unk_23C874DE0);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_23C596298(v25);
  *(v30 + 24) = sub_23C59647C(v25);
  *&v5[v29] = v30;
  v31 = v18;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_dimExpiryTime] = 0x409C200000000000;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp] = 0;
  v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished] = 0;
  v32 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logger;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v33 = v55;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream] = v54;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength] = a4;
  v34 = &v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_trackingTag];
  v35 = v33;
  v36 = v56;
  *v34 = v33;
  v34[1] = v36;
  (*(v19 + 16))(v22, &v5[v32], v31);

  swift_unknownObjectRetain();
  v37 = sub_23C871634();
  v38 = sub_23C871AC4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v31;
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_23C56D000, v37, v38, "Constructed EventGraphsSubscriber", v40, 2u);
    v41 = v40;
    v31 = v39;
    MEMORY[0x23EED8240](v41, -1, -1);
  }

  (*(v19 + 8))(v22, v31);
  v42 = v59;
  sub_23C870AD4();
  v43 = v64;
  *&v11[*(v64 + 28)] = 0;
  *v11 = 0;
  *(v11 + 1) = 0xD00000000000001BLL;
  *(v11 + 2) = 0x800000023C8A72D0;
  v45 = v61;
  v44 = v62;
  (*(v61 + 16))(&v11[*(v43 + 24)], v42, v62);
  v46 = &v11[*(v43 + 32)];
  *v46 = v35;
  *(v46 + 1) = v36;
  if (qword_27E1F8308 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v31, qword_27E1FB2F8);
  v47 = sub_23C871634();
  v48 = sub_23C871AC4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = 0;
    _os_log_impl(&dword_23C56D000, v47, v48, "tracker starting for %ld", v49, 0xCu);
    MEMORY[0x23EED8240](v49, -1, -1);
  }

  (*(v45 + 8))(v42, v44);
  v50 = v60;
  sub_23C60C678(v11, v60, type metadata accessor for CoreAnalyticsTracker);
  v57(v50, 0, 1, v64);
  v51 = v58;
  swift_beginAccess();
  sub_23C5A7B70(v50, &v5[v51]);
  swift_endAccess();
  v52 = type metadata accessor for EventGraphsPublisher.ConnectedComponentGroupsSubscriber(0);
  v65.receiver = v5;
  v65.super_class = v52;
  return objc_msgSendSuper2(&v65, sel_init);
}

uint64_t _s26AIMLInstrumentationStreams20EventGraphsPublisherC9publisher4with9upstreams13bookmarkStateSo014BMBookmarkableE0_So12BPSPublisherCyyXlGXcSgSoAH_AKXc_SayAKGSo10BMBookmark_pSgtFZ_0(void *a1, unint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for EventGraphsPublisher(0);
  v5 = a1;
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_11:

    return 0;
  }

LABEL_4:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EED7610](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(a2 + 32);
  }

  v8 = v7;
  v9 = *&v11[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_windowLength];
  v10 = objc_allocWithZone(v4);
  sub_23C60B330(v8, 0, 0, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD30, &unk_23C87BE20);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C60BDE4()
{
  result = sub_23C871654();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C60BED8()
{
  sub_23C5A795C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23C871654();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_23C60BFF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double))
{
  v22 = a2;
  v26 = a4;
  v23 = a1;
  v5 = type metadata accessor for EventTypeIdPair();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_23C60C5AC(*(a3 + 48) + *(v25 + 72) * v18, v9);
    v19 = v26(v9, *(*(a3 + 56) + 8 * v18));
    result = sub_23C60C6E0(v9, type metadata accessor for EventTypeIdPair);
    if (v19)
    {
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_23C647EB8(v23, v22, v24, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_23C647EB8(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C60C1E4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, double))
{
  v26 = a2;
  v34 = a4;
  v27 = a1;
  v33 = sub_23C870B74();
  v5 = *(*(v33 - 8) + 64);
  result = MEMORY[0x28223BE20](v33);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v9 = 0;
  v35 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v30 = v7 + 16;
  v28 = 0;
  v29 = v7 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v36 = (v15 - 1) & v15;
LABEL_11:
    v37 = v17 | (v9 << 6);
    v20 = v35;
    v22 = v31;
    v21 = v32;
    v23 = v37;
    v24 = v33;
    (*(v32 + 16))(v31, v35[6] + *(v32 + 72) * v37, v33);
    LOBYTE(v20) = v34(v22, *(v20[7] + 8 * v23));
    result = (*(v21 + 8))(v22, v24);
    v15 = v36;
    if (v20)
    {
      *(v27 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_23C647B20(v27, v26, v28, v35);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_23C647B20(v27, v26, v28, v35);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C60C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_23C60AE28(v17, v11, v9, a2, a3, a5);
  result = MEMORY[0x23EED8240](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C60C5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTypeIdPair();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C60C610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23C60C678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C60C6E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for EventTypeIdPair()
{
  result = qword_27E1FB5F8;
  if (!qword_27E1FB5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C60C7B8()
{
  result = sub_23C870B74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C60C87C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  return sub_23C870B44();
}

uint64_t sub_23C60C8A4(uint64_t a1)
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](*v1);
  v3 = *(a1 + 20);
  sub_23C870B74();
  sub_23C60CA8C(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C60C950(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23EED79F0](*v2);
  v4 = *(a2 + 20);
  sub_23C870B74();
  sub_23C60CA8C(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
  return sub_23C8716F4();
}

uint64_t sub_23C60C9E4(uint64_t a1, uint64_t a2)
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](*v2);
  v4 = *(a2 + 20);
  sub_23C870B74();
  sub_23C60CA8C(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C60CA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OrderedEvent.outerType.getter()
{
  result = sub_23C870CA4();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();

    return ObjectType;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedEvent.innerType.getter()
{
  v0 = sub_23C870CB4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  ObjectType = swift_getObjectType();

  return ObjectType;
}

uint64_t sub_23C60CB50()
{
  v1 = *v0;
  result = sub_23C870CA4();
  if (result)
  {
    v3 = result;
    ObjectType = swift_getObjectType();

    return ObjectType;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C60CB90()
{
  v1 = *v0;
  v2 = sub_23C870CB4();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  ObjectType = swift_getObjectType();

  return ObjectType;
}

BOOL static GenerativeFunctionsInstrumentationEvent.< infix(_:_:)()
{
  sub_23C8715E4();
  v1 = v0;
  sub_23C8715E4();
  return v1 < v2;
}

unint64_t sub_23C60CC44()
{
  result = qword_27E1FB610;
  if (!qword_27E1FB610)
  {
    sub_23C871604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB610);
  }

  return result;
}

BOOL sub_23C60CC9C()
{
  sub_23C8715E4();
  v1 = v0;
  sub_23C8715E4();
  return v1 < v2;
}

BOOL sub_23C60CCE0()
{
  sub_23C8715E4();
  v1 = v0;
  sub_23C8715E4();
  return v1 >= v2;
}

BOOL sub_23C60CD24()
{
  sub_23C8715E4();
  v1 = v0;
  sub_23C8715E4();
  return v1 >= v2;
}

BOOL sub_23C60CD68()
{
  sub_23C8715E4();
  v1 = v0;
  sub_23C8715E4();
  return v1 < v2;
}

uint64_t sub_23C60CDAC@<X0>(char a1@<W1>, char a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  LODWORD(v57) = a6;
  v56 = a5;
  v47 = a4;
  v48 = a3;
  v54 = a7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB628, &unk_23C87AF70);
  v53 = *(v55 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  v50 = v24;
  *(v24 + 16) = MEMORY[0x277D84F90];
  v49 = v24 + 16;
  if (a1)
  {
    v25 = sub_23C870AE4();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  else
  {
    sub_23C870A54();
    v26 = sub_23C870AE4();
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  }

  if (a2)
  {
    v27 = 1;
  }

  else
  {
    sub_23C870A54();
    v27 = 0;
  }

  v28 = sub_23C870AE4();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, v27, 1, v28);
  sub_23C60D7E8(v23, v18);
  v51 = v21;
  sub_23C60D7E8(v21, v15);
  v30 = v48;
  if (v47)
  {
    v30 = 0;
  }

  v48 = v30;
  v31 = v56;
  if (v57)
  {
    v31 = 0;
  }

  v57 = v31;
  v32 = *(v29 + 48);
  v33 = 0;
  if (v32(v18, 1, v28) != 1)
  {
    v33 = sub_23C870A84();
    (*(v29 + 8))(v18, v28);
  }

  if (v32(v15, 1, v28) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_23C870A84();
    (*(v29 + 8))(v15, v28);
  }

  v35 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v36 = [v35 initWithStartDate:v33 endDate:v34 maxEvents:v48 lastN:v57 reversed:0];

  sub_23C8714D4();
  sub_23C60D858();

  v37 = v36;
  sub_23C871544();

  __swift_project_boxed_opaque_existential_0(v58, v58[3]);
  v38 = v50;

  sub_23C871684();

  __swift_destroy_boxed_opaque_existential_0(v58);
  v39 = v51;
  swift_beginAccess();
  v40 = *(v38 + 16);
  v41 = type metadata accessor for AnteroEvent();

  v42 = v52;
  sub_23C8718B4();

  sub_23C60D8B0();
  v43 = v55;
  v44 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v44, v41);

  (*(v53 + 8))(v42, v43);
  sub_23C585C34(v39, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v23, &unk_27E2054F0, &unk_23C874DF0);
}

uint64_t sub_23C60D46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A8, &qword_23C8734E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_23C871604();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_23C8715E4();
  v10 = objc_allocWithZone(type metadata accessor for AnteroEvent());
  AnteroEvent.init(gfiEvent:timestamp:)(v7);
  v11 = swift_beginAccess();
  MEMORY[0x23EED7170](v11);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23C8718D4();
  }

  sub_23C871904();
  return swift_endAccess();
}

uint64_t sub_23C60D604()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GMSStream()
{
  result = qword_27E1FB618;
  if (!qword_27E1FB618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C60D6F4()
{
  result = sub_23C871654();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23C60D7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23C60D858()
{
  result = qword_27E1FB630;
  if (!qword_27E1FB630)
  {
    sub_23C8714D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB630);
  }

  return result;
}

unint64_t sub_23C60D8B0()
{
  result = qword_27E1FB638;
  if (!qword_27E1FB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FB628, &unk_23C87AF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB638);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C60D938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23C60D980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTime:endTime:maxEvents:lastN:storageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 56) = v10;
  *(v8 + 64) = v12;
  *(v8 + 107) = v11;
  *(v8 + 106) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 105) = a6;
  *(v8 + 104) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C60DA18, 0, 0);
}

uint64_t sub_23C60DA18()
{
  type metadata accessor for UnifiedSourceStream();
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  v2 = sub_23C65E4B0();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_23C60DC64;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 108) = 1;
    *(v0 + 80) = 0;

    return MEMORY[0x2822009F8](sub_23C60DB20, 0, 0);
  }
}

uint64_t sub_23C60DB20()
{
  v1 = *(v0 + 108);
  v2 = *(v0 + 72);
  v17 = *(v0 + 107);
  v15 = *(v0 + 106);
  v3 = *(v0 + 64);
  v16 = *(v0 + 56);
  v4 = *(v0 + 40);
  v14 = *(v0 + 48);
  v5 = *(v0 + 105);
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 24) = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C60FFC8(v3, v9 + *(v10 + 56));
  *v9 = v2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6 & 1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5 & 1;
  *(v9 + 48) = v14;
  *(v9 + 56) = v15 & 1;
  *(v9 + 64) = v16;
  *(v9 + 72) = v17 & 1;
  v11 = (v9 + *(v10 + 60));
  *v11 = 0;
  v11[1] = 0;
  v18 = *(v0 + 8);
  v12 = v7;

  return v18();
}

uint64_t sub_23C60DC64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_23C60DD90;
  }

  else
  {
    *(v4 + 108) = 0;
    *(v4 + 80) = a1;
    v7 = sub_23C60DB20;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C60DD90()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 107) = v13;
  *(v8 + 106) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v12;
  *(v8 + 105) = a6;
  *(v8 + 104) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60DEB4, 0, 0);
}

uint64_t sub_23C60DEB4()
{
  v1 = *(v0 + 64);
  v2 = sub_23C8709E4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_23C60E144;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 108) = 1;
    *(v0 + 80) = 0;

    return MEMORY[0x2822009F8](sub_23C60E000, 0, 0);
  }
}

uint64_t sub_23C60E000()
{
  v1 = *(v0 + 108);
  v2 = *(v0 + 72);
  v18 = *(v0 + 107);
  v16 = *(v0 + 106);
  v3 = *(v0 + 64);
  v17 = *(v0 + 56);
  v4 = *(v0 + 40);
  v15 = *(v0 + 48);
  v5 = *(v0 + 105);
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 24) = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C6100A0(v3, v9 + *(v10 + 56));
  *v9 = v2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6 & 1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5 & 1;
  *(v9 + 48) = v15;
  *(v9 + 56) = v16 & 1;
  *(v9 + 64) = v17;
  *(v9 + 72) = v18 & 1;
  v11 = (v9 + *(v10 + 60));
  *v11 = 0;
  v11[1] = 0;
  v12 = v7;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23C60E144(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_23C60E270;
  }

  else
  {
    *(v4 + 108) = 0;
    *(v4 + 80) = a1;
    v7 = sub_23C60E000;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C60E270()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_23C610038(v2);

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60E380, 0, 0);
}

uint64_t sub_23C60E380()
{
  v1 = *(v0 + 32);
  v2 = sub_23C8709E4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_23C60E5BC;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 72) = 1;
    *(v0 + 48) = 0;

    return MEMORY[0x2822009F8](sub_23C60E4CC, 0, 0);
  }
}

uint64_t sub_23C60E4CC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 24) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C6100A0(v3, v5 + *(v6 + 56));
  *v5 = v2;
  *(v5 + 8) = v4;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  v7 = (v5 + *(v6 + 60));
  *v7 = 0;
  v7[1] = 0;
  v8 = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23C60E5BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_23C60E6E8;
  }

  else
  {
    *(v4 + 72) = 0;
    *(v4 + 48) = a1;
    v7 = sub_23C60E4CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C60E6E8()
{
  v2 = v0[4];
  v1 = v0[5];

  sub_23C610038(v2);

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTimeRelativeToNow:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60E7FC, 0, 0);
}

uint64_t sub_23C60E7FC()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v2 timeIntervalSinceReferenceDate];
  *(v0 + 48) = v3;

  v4 = sub_23C8709E4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  type metadata accessor for UnifiedSourceStream();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 256;
  v6 = sub_23C65E4B0();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = sub_23C60EA80;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 88) = 1;
    *(v0 + 64) = 0;

    return MEMORY[0x2822009F8](sub_23C60E98C, 0, 0);
  }
}

uint64_t sub_23C60E98C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 24) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C6100A0(v4, v6 + *(v7 + 56));
  *v6 = v2;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  v8 = (v6 + *(v7 + 60));
  *v8 = 0;
  v8[1] = 0;
  v9 = v5;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23C60EA80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_23C60EBAC;
  }

  else
  {
    *(v4 + 88) = 0;
    *(v4 + 64) = a1;
    v7 = sub_23C60E98C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C60EBAC()
{
  v1 = v0[7];
  v2 = v0[5];

  sub_23C610038(v2);

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTimeRelativeToNow:storageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23C60EC4C, 0, 0);
}

uint64_t sub_23C60EC4C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v1 timeIntervalSinceReferenceDate];
  *(v0 + 48) = v2;

  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_23C60EE88;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 88) = 1;
    *(v0 + 64) = 0;

    return MEMORY[0x2822009F8](sub_23C60ED8C, 0, 0);
  }
}

uint64_t sub_23C60ED8C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 24) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C60FFC8(v4, v6 + *(v7 + 56));
  *v6 = v2;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  v8 = (v6 + *(v7 + 60));
  *v8 = 0;
  v8[1] = 0;
  v11 = *(v0 + 8);
  v9 = v5;

  return v11();
}

uint64_t sub_23C60EE88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_23C60EFB4;
  }

  else
  {
    *(v4 + 88) = 0;
    *(v4 + 64) = a1;
    v7 = sub_23C60ED8C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23C60EFB4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 75) = v13;
  *(v8 + 74) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v12;
  *(v8 + 73) = a6;
  *(v8 + 72) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60F0D8, 0, 0);
}

uint64_t sub_23C60F0D8()
{
  v19 = *(v0 + 75);
  v17 = *(v0 + 74);
  v1 = *(v0 + 64);
  v18 = *(v0 + 56);
  v2 = *(v0 + 40);
  v16 = *(v0 + 48);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  type metadata accessor for SelfProcessedEventStream();
  v8 = swift_allocObject();
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB658, &qword_23C87B050);
  v7[3] = v10;
  v7[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_23C60FFC8(v1, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v5;
  boxed_opaque_existential_1[2] = v6;
  *(boxed_opaque_existential_1 + 24) = v4 & 1;
  boxed_opaque_existential_1[4] = v2;
  *(boxed_opaque_existential_1 + 40) = v3 & 1;
  boxed_opaque_existential_1[6] = v16;
  *(boxed_opaque_existential_1 + 56) = v17 & 1;
  boxed_opaque_existential_1[8] = v18;
  *(boxed_opaque_existential_1 + 72) = v19 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  v13 = v5;
  sub_23C610038(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t static InstrumentationStreamsFactory.constructRawProvider(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 99) = v13;
  *(v8 + 98) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v12;
  *(v8 + 97) = a6;
  *(v8 + 96) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60F340, 0, 0);
}

uint64_t sub_23C60F340()
{
  v1 = type metadata accessor for RawStream();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_23C60F450;

  return sub_23C629644();
}

uint64_t sub_23C60F450()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_23C60F6F4;
  }

  else
  {
    v3 = sub_23C60F564;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C60F564()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v19 = *(v0 + 99);
  v17 = *(v0 + 98);
  v18 = *(v0 + 56);
  v16 = *(v0 + 48);
  v3 = *(v0 + 97);
  v4 = *(v0 + 96);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB660, &qword_23C87B060);
  v7[3] = v10;
  v7[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_23C60FFC8(v1, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v2;
  boxed_opaque_existential_1[1] = v8;
  boxed_opaque_existential_1[2] = v6;
  *(boxed_opaque_existential_1 + 24) = v4 & 1;
  boxed_opaque_existential_1[4] = v5;
  *(boxed_opaque_existential_1 + 40) = v3 & 1;
  boxed_opaque_existential_1[6] = v16;
  *(boxed_opaque_existential_1 + 56) = v17 & 1;
  boxed_opaque_existential_1[8] = v18;
  *(boxed_opaque_existential_1 + 72) = v19 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  v13 = v8;
  sub_23C610038(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23C60F6F4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 91) = v13;
  *(v8 + 90) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v12;
  *(v8 + 89) = a6;
  *(v8 + 88) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60F828, 0, 0);
}

uint64_t sub_23C60F828()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v21 = *(v0 + 64);
  v20 = *(v0 + 91);
  v18 = *(v0 + 90);
  v19 = *(v0 + 56);
  v17 = *(v0 + 48);
  v16 = *(v0 + 89);
  v3 = *(v0 + 88);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  type metadata accessor for SelfProcessedEventStream();
  v8 = swift_allocObject();
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB658, &qword_23C87B050);
  v6[3] = v10;
  v6[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_23C60FFC8(v2, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v5;
  *(boxed_opaque_existential_1 + 24) = v3 & 1;
  boxed_opaque_existential_1[4] = v4;
  *(boxed_opaque_existential_1 + 40) = v16 & 1;
  boxed_opaque_existential_1[6] = v17;
  *(boxed_opaque_existential_1 + 56) = v18 & 1;
  boxed_opaque_existential_1[8] = v19;
  *(boxed_opaque_existential_1 + 72) = v20 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = v21;
  v12[1] = v1;

  v13 = v7;
  sub_23C610038(v2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t static InstrumentationStreamsFactory.constructRawProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v14;
  *(v8 + 72) = v15;
  *(v8 + 115) = v13;
  *(v8 + 114) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v12;
  *(v8 + 113) = a6;
  *(v8 + 112) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60FAB4, 0, 0);
}

uint64_t sub_23C60FAB4()
{
  v1 = type metadata accessor for RawStream();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_23C60FBC4;

  return sub_23C629644();
}

uint64_t sub_23C60FBC4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_23C60FE80;
  }

  else
  {
    v3 = sub_23C60FCD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C60FCD8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v21 = *(v0 + 64);
  v20 = *(v0 + 115);
  v18 = *(v0 + 114);
  v19 = *(v0 + 56);
  v16 = *(v0 + 48);
  v17 = *(v0 + 88);
  v3 = *(v0 + 113);
  v4 = *(v0 + 112);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB660, &qword_23C87B060);
  v7[3] = v10;
  v7[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_23C60FFC8(v1, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v17;
  boxed_opaque_existential_1[1] = v8;
  boxed_opaque_existential_1[2] = v6;
  *(boxed_opaque_existential_1 + 24) = v4 & 1;
  boxed_opaque_existential_1[4] = v5;
  *(boxed_opaque_existential_1 + 40) = v3 & 1;
  boxed_opaque_existential_1[6] = v16;
  *(boxed_opaque_existential_1 + 56) = v18 & 1;
  boxed_opaque_existential_1[8] = v19;
  *(boxed_opaque_existential_1 + 72) = v20 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = v21;
  v12[1] = v2;

  v13 = v8;
  sub_23C610038(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23C60FE80()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

id InstrumentationStreamsFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InstrumentationStreamsFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InstrumentationStreamsFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C60FFC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C610038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C6100A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_23C6101B8()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[1];

    return v2(0);
  }

  else if (sub_23C8719B4())
  {
    v4 = v0[3];
    *(v1 + 24) = 1;
    v5 = *(v4 + 16);
    sub_23C610574();
    sub_23C871974();
    sub_23C5886A4();
    swift_allocError();
    sub_23C871694();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[4] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6B8, &qword_23C87B138);
    *v8 = v0;
    v8[1] = sub_23C610370;
    v10 = v0[3];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_23C611B58, v10, v9);
  }
}

uint64_t sub_23C610370()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23C610484;
  }

  else
  {
    v3 = sub_23C586154;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23C61049C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x23EED7610](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_20;
  }

  if (!sub_23C871C34())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_23C871C34();
LABEL_16:
    if (v3)
    {
      sub_23C5A6A8C(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_23C610574()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v14 = *(v1 + v13);
  if (v14 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  *(v1 + v13) = 1;
  sub_23C588D5C(v14);
  [v15 cancel];
  v16 = *((*v12 & *v1) + 0x78);
  swift_beginAccess();
  sub_23C611A10(v1 + v16, v11);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6B0, &qword_23C87B130);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v9, 1, 1, v17);
  swift_beginAccess();
  sub_23C611A80(v9, v1 + v16);
  swift_endAccess();
  sub_23C611A10(v11, v6);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_23C611AF0(v6);
  }

  else
  {
    sub_23C871974();
    sub_23C5886A4();
    v19 = swift_allocError();
    sub_23C871694();
    v23[0] = v19;
    sub_23C871944();
    (*(v18 + 8))(v6, v17);
  }

  sub_23C611AF0(v11);
  v20 = *((*v12 & *v1) + 0x80);
  swift_beginAccess();
  v21 = *(v1 + v20);
  *(v1 + v20) = MEMORY[0x277D84F90];
}

void sub_23C61085C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_23C611A10(v1 + v11, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6B0, &qword_23C87B130);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  sub_23C611AF0(v9);
  if (v14 != 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = *(v1 + *((*v10 & *v1) + 0x70));
  if (!v15)
  {
    (*(v13 + 16))(v7, a1, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_23C611A80(v7, v1 + v11);
    swift_endAccess();
    return;
  }

  if (v15 == 1)
  {
    v16 = *((*v10 & *v1) + 0x80);
    swift_beginAccess();
    v17 = *(v1 + v16);
    if (!(v17 >> 62))
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        swift_beginAccess();
        sub_23C61049C();
        v19 = v18;
        swift_endAccess();
        v28 = v19;
LABEL_14:
        sub_23C871954();
        return;
      }

LABEL_13:
      v28 = 0;
      goto LABEL_14;
    }

LABEL_12:
    if (sub_23C871C34())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v20 = *((*v10 & *v1) + 0x80);
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v25 = *(v1 + v20);
    }

    if (sub_23C871C34())
    {
      goto LABEL_10;
    }

LABEL_18:
    (*(v13 + 16))(v7, a1, v12);
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    v26 = v15;
    sub_23C611A80(v7, v1 + v11);
    swift_endAccess();
    [v26 requestDemand_];
    goto LABEL_19;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_10:
  swift_beginAccess();
  v22 = v15;
  sub_23C61049C();
  v24 = v23;
  swift_endAccess();
  v28 = v24;
  sub_23C871954();
LABEL_19:
  sub_23C588D5C(v15);
}

uint64_t InstrumentationStreamsProviderProtocol.events()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB670, &qword_23C87B0B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(a2 + 128))(a1, a2);
  v15 = sub_23C870D74();
  sub_23C611604(&qword_27E1FB678, &qword_27E1FB668, &qword_23C87B0B0);
  sub_23C870BC4();
  (*(v6 + 8))(v9, v5);
  sub_23C611604(&qword_27E1FB680, &qword_27E1FB670, &qword_23C87B0B8);
  v16 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v16, v15);
  return (*(v11 + 8))(v14, v10);
}

uint64_t InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 72) = a2;
  *(v5 + 64) = a4;
  *(v5 + 56) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C610FB0, 0, 0);
}

uint64_t sub_23C610FB0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  (*(*(v0 + 80) + 136))(*(v0 + 72), *(v0 + 64));
  (*(v4 + 16))(v2, v1, v3);
  sub_23C611604(&qword_27E1FB690, &qword_27E1FB688, &qword_23C87B190);
  v6 = sub_23C870BA4();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB698, &qword_23C87B0D0);
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  v9 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A0 &qword_23C87B0D8))];
  *(inited + 16) = v9;
  *(inited + 24) = 0;
  v10 = v9;
  [v6 subscribe_];

  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_23C611198;
  v12 = *(v0 + 128);

  return sub_23C610198();
}

uint64_t sub_23C611198(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_23C6114D4;
  }

  else
  {
    v5 = sub_23C6112AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C6112AC()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 144);
  v3 = sub_23C601004();
  sub_23C592900(v3);
  v5 = v4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = *(v0 + 56);
    v7 = sub_23C871C74();

    if (v7)
    {
LABEL_4:
      v8 = *(v0 + 128);
LABEL_5:

      v10 = *(v0 + 112);
      v9 = *(v0 + 120);

      v11 = *(v0 + 8);
      v12 = *(v0 + 144);

      return v11(v12);
    }
  }

  else
  {
    if (*(v4 + 16))
    {
      v14 = *(v0 + 56);
      sub_23C870E34();
      v15 = *(v5 + 40);
      v16 = sub_23C871B24();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      if ((*(v5 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          v20 = *(v0 + 56);
          v21 = *(*(v5 + 48) + 8 * v18);
          LOBYTE(v20) = sub_23C871B34();

          if (v20)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v5 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v24 = *(v0 + 128);

        goto LABEL_5;
      }
    }

LABEL_13:
  }

  v22 = swift_task_alloc();
  *(v0 + 136) = v22;
  *v22 = v0;
  v22[1] = sub_23C611198;
  v23 = *(v0 + 128);

  return sub_23C610198();
}