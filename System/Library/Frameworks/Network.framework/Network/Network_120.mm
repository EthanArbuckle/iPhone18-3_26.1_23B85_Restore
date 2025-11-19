uint64_t sub_18226B470()
{
  sub_182AD44E8();
  sub_18226A1A4(v1);
  return sub_182AD4558();
}

uint64_t sub_18226B4B4()
{
  sub_182AD44E8();
  sub_18226A1A4(v1);
  return sub_182AD4558();
}

uint64_t sub_18226B4F4()
{
  sub_182AD44E8();
  sub_18226A1A4(v1);
  return sub_182AD4558();
}

uint64_t sub_18226B5D4()
{
  sub_182AD44E8();
  sub_18226A1A4(v1);
  return sub_182AD4558();
}

uint64_t sub_18226B650(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 96);
  v45[4] = *(*a1 + 80);
  v45[5] = v7;
  v8 = *(v2 + 112);
  v9 = *(v2 + 144);
  v45[7] = *(v2 + 128);
  v45[8] = v9;
  v10 = *a2;
  v46 = *(v2 + 160);
  v45[6] = v8;
  v45[2] = v5;
  v45[3] = v6;
  v45[0] = v3;
  v45[1] = v4;
  v11 = *(v2 + 128);
  v41 = *(v2 + 112);
  v42 = v11;
  v43 = *(v2 + 144);
  v44 = *(v2 + 160);
  v12 = *(v2 + 64);
  v37 = *(v2 + 48);
  v38 = v12;
  v13 = *(v2 + 96);
  v39 = *(v2 + 80);
  v40 = v13;
  v14 = *(v2 + 32);
  v35 = *(v2 + 16);
  v36 = v14;
  v15 = *(v10 + 128);
  v47[6] = *(v10 + 112);
  v47[7] = v15;
  v47[8] = *(v10 + 144);
  v48 = *(v10 + 160);
  v16 = *(v10 + 64);
  v47[2] = *(v10 + 48);
  v47[3] = v16;
  v17 = *(v10 + 96);
  v47[4] = *(v10 + 80);
  v47[5] = v17;
  v18 = *(v10 + 32);
  v47[0] = *(v10 + 16);
  v47[1] = v18;
  v19 = *(v10 + 128);
  v31 = *(v10 + 112);
  v32 = v19;
  v33 = *(v10 + 144);
  v34 = *(v10 + 160);
  v20 = *(v10 + 64);
  v27 = *(v10 + 48);
  v28 = v20;
  v21 = *(v10 + 96);
  v29 = *(v10 + 80);
  v30 = v21;
  v22 = *(v10 + 32);
  v25 = *(v10 + 16);
  v26 = v22;
  sub_181D09728(v45, v51);
  sub_181D09728(v47, v51);
  v23 = sub_181E2CE84(&v35, &v25);
  v49[6] = v31;
  v49[7] = v32;
  v49[8] = v33;
  v50 = v34;
  v49[2] = v27;
  v49[3] = v28;
  v49[4] = v29;
  v49[5] = v30;
  v49[0] = v25;
  v49[1] = v26;
  sub_181D09760(v49);
  v51[6] = v41;
  v51[7] = v42;
  v51[8] = v43;
  v52 = v44;
  v51[2] = v37;
  v51[3] = v38;
  v51[4] = v39;
  v51[5] = v40;
  v51[0] = v35;
  v51[1] = v36;
  sub_181D09760(v51);
  return v23 & 1;
}

uint64_t sub_18226B7D8(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  if (a1)
  {
    sub_18226A1A4(v3);
  }

  return sub_182AD4558();
}

uint64_t sub_18226B87C(uint64_t a1)
{
  if (!*v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  return sub_18226A1A4(a1);
}

uint64_t sub_18226B90C()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_182AD4518();
  if (v1)
  {
    sub_18226A1A4(v3);
  }

  return sub_182AD4558();
}

uint64_t sub_18226B9B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = 0xF000000000000007;
  v19 = *a1;
  v20 = v3;
  if ((~v3 & 0xF000000000000007) == 0)
  {
    v17 = 0xF000000000000007;
    v18 = 0;
    if ((~v5 & 0xF000000000000007) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v21[0] = *a1;
  v21[1] = v3;
  sub_181B48EF4(v22);
  v17 = v22[1];
  v18 = v22[0];
  sub_181A53008(0, 0xF000000000000007);
  if ((~v5 & 0xF000000000000007) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!(v5 >> 62))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
    swift_allocObject();
    sub_181B2C3E0(v4, v5);
    v11 = sub_181C0799C(v4);
    sub_181A52FE0(v4, v5);
    sub_181A52FE0(0, 0xF000000000000007);
    v9 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (v5 >> 62 != 1)
  {
    sub_181A52FE0(0, 0xF000000000000007);
    v9 = v5;
    v11 = v4;
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_15:
    v12 = v6;
    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  v22[0] = v4;
  (*(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 8) + 32))(v21, ObjectType);
  v11 = v21[0];
  v9 = v5 & 0x3FFFFFFFFFFFFFFFLL | 0x4000000000000000;
  sub_181A52FE0(0, 0xF000000000000007);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v7 == 1)
  {
    v12 = 0;
LABEL_16:
    v15 = v7;
    goto LABEL_17;
  }

  v13 = swift_getObjectType();
  v22[0] = v7;
  (*(*(v6 + 8) + 32))(v21, v13);
  v14 = v6;
  v15 = v21[0];
  v12 = v14;
LABEL_17:

  sub_181A53008(v19, v20);
  sub_181A52FE0(v4, v5);
  sub_181B03DAC(v7);

  *a2 = v18;
  a2[1] = v17;
  a2[2] = v11;
  a2[3] = v9;
  a2[4] = v15;
  a2[5] = v12;
  a2[6] = v8;
  return result;
}

uint64_t sub_18226BBD4(uint64_t a1)
{
  v4 = v1[1];
  v3 = v1[2];
  v6 = v1[3];
  v5 = v1[4];
  v8 = v1[5];
  v7 = v1[6];
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v9 = *v1;
    v15 = *v1;
    sub_182AD4518();
    sub_181AACFF4(v9, v4);
    ProtocolStack.TransportProtocol.hash(into:)();
    sub_181AAD03C(v15, v4);
  }

  else
  {
    sub_182AD4518();
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_182AD4518();
    if (v5 != 1)
    {
      goto LABEL_6;
    }

LABEL_17:
    sub_182AD4518();
    if (v7)
    {
      goto LABEL_7;
    }

    return sub_182AD4518();
  }

  sub_182AD4518();
  sub_181B2C3E0(v3, v6);
  ProtocolStack.InternetProtocol.hash(into:)(a1);
  sub_181AAD084(v3, v6);
  if (v5 == 1)
  {
    goto LABEL_17;
  }

LABEL_6:
  sub_182AD4518();
  sub_18226C40C(a1, v5, v8);
  if (v7)
  {
LABEL_7:
    sub_182AD4518();
    v10 = MEMORY[0x1865DB070](v7[3]);
    v11 = v7[4];
    if (v7[2] >= v7[3] + v11)
    {
      v12 = v7[3] + v11;
    }

    else
    {
      v12 = v7[2];
    }

    v16 = v7[4];
    v17 = v12;
    while (1)
    {
      if (v11 == v12)
      {
        if ((sub_181AC81FC(v10) & 1) == 0)
        {
        }

        v11 = v16;
        v12 = v17;
      }

      v13 = v11 + 1;
      v16 = v11 + 1;
      v10 = sub_182AD44F8();
      v11 = v13;
    }
  }

  return sub_182AD4518();
}

uint64_t sub_18226BDD4()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_182AD44E8();
  sub_18226BBD4(v4);
  return sub_182AD4558();
}

uint64_t sub_18226BE34()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_182AD44E8();
  sub_18226BBD4(v4);
  return sub_182AD4558();
}

uint64_t sub_18226BE90()
{
  sub_182AD44E8();
  sub_18226BBD4(v1);
  return sub_182AD4558();
}

uint64_t sub_18226BF38()
{
  sub_182AD44E8();
  sub_18226BBD4(v1);
  return sub_182AD4558();
}

uint64_t sub_18226BF94(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  v29 = *(*a1 + 16);
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v20 = v2[7];
  v21 = v2[8];
  v22 = v2[2];
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v20;
  v28 = v21;
  sub_181AC8268(v29, v3);
  sub_181B687F0(v4, v5);
  sub_181AB78DC(v6);

  sub_181AC8268(v22, v9);
  sub_181B687F0(v10, v11);
  sub_181AB78DC(v12);

  LOBYTE(v4) = sub_18226BBD0(&v29, &v22);
  v13 = v24;
  v14 = v25;
  v15 = v26;
  sub_181A53008(v22, v23);
  sub_181A52FE0(v13, v14);
  sub_181B03DAC(v15);

  v16 = v31;
  v17 = v32;
  v18 = v33;
  sub_181A53008(v29, v30);
  sub_181A52FE0(v16, v17);
  sub_181B03DAC(v18);

  return v4 & 1;
}

uint64_t sub_18226C0F0(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_182AD44E8();
  if (!a1)
  {
    goto LABEL_20;
  }

  sub_182AD4518();
  v3 = a1[3];
  v2 = a1[4];
  v5 = a1[5];
  v4 = a1[6];
  v7 = a1[7];
  v6 = a1[8];
  if ((~v3 & 0xF000000000000007) != 0)
  {
    v14 = a1[2];
    v15 = v3;
    sub_182AD4518();
    sub_181AACFF4(v14, v3);
    ProtocolStack.TransportProtocol.hash(into:)();
    sub_181AAD03C(v14, v3);
  }

  else
  {
    sub_182AD4518();
  }

  if ((~v5 & 0xF000000000000007) != 0)
  {
    v14 = v2;
    v15 = v5;
    sub_182AD4518();
    sub_181B2C3E0(v2, v5);
    ProtocolStack.InternetProtocol.hash(into:)(v13);
    sub_181AAD084(v14, v15);
  }

  else
  {
    sub_182AD4518();
  }

  if (v4 != 1)
  {
    sub_182AD4518();
    sub_18226C40C(v13, v4, v7);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_20:
    sub_182AD4518();
    return sub_182AD4558();
  }

  sub_182AD4518();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_10:
  sub_182AD4518();
  v8 = MEMORY[0x1865DB070](v6[3]);
  v9 = v6[4];
  if (v6[2] >= (v6[3] + v9))
  {
    v10 = v6[3] + v9;
  }

  else
  {
    v10 = v6[2];
  }

  v14 = v6;
  v15 = v9;
  v16 = v10;
  while (1)
  {
    if (v9 != v10)
    {
      goto LABEL_14;
    }

    if ((sub_181AC81FC(v8) & 1) == 0)
    {
      break;
    }

    v9 = v15;
    v10 = v16;
LABEL_14:
    v11 = v9 + 1;
    v15 = v9 + 1;
    v8 = sub_182AD44F8();
    v9 = v11;
  }

  return sub_182AD4558();
}

uint64_t sub_18226C310(uint64_t a1)
{
  if (!*v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  return sub_18226BBD4(a1);
}

uint64_t sub_18226C388()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_182AD4518();
  if (v1)
  {
    sub_18226BBD4(v3);
  }

  return sub_182AD4558();
}

uint64_t sub_18226C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return MEMORY[0x1865DB070](0);
  }

  ObjectType = swift_getObjectType();
  (*(a3 + 96))(v10, ObjectType, a3);
  v5 = BYTE1(v10[0]);
  v6 = v10[1];
  v7 = v10[2];
  v8 = v11;
  MEMORY[0x1865DB070](LOBYTE(v10[0]));
  MEMORY[0x1865DB070](v5);
  if (v8)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();

    return sub_181F48350(v6, v7, 1);
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v6);
    sub_182AD30E8();
    sub_181F48350(v6, v7, 0);
  }
}

uint64_t sub_18226C55C(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 96))(v10, ObjectType, a2);
    v5 = BYTE1(v10[0]);
    v6 = v10[1];
    v7 = v10[2];
    v8 = v11;
    MEMORY[0x1865DB070](LOBYTE(v10[0]));
    MEMORY[0x1865DB070](v5);
    if (v8)
    {
      MEMORY[0x1865DB070](1);
      sub_182AD30E8();
      sub_181F48350(v6, v7, 1);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v6);
      sub_182AD30E8();
      sub_181F48350(v6, v7, 0);
    }
  }

  else
  {
    MEMORY[0x1865DB070](0);
  }

  return sub_182AD4558();
}

uint64_t sub_18226C68C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v3 = a2[1];
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v8 = 0;
  v6 = (*(v4 + 24))(v2, v3, &v8, ObjectType, v4);
  return v6 & 1;
}

void sub_18226C71C(uint64_t a1)
{
  v3 = v1[12];
  v4 = v1[14];
  v22 = v1[16];
  v23 = v1[18];
  v24 = v1[19];
  v5 = v1[20];
  v25 = v1[21];
  sub_182269C0C();
  sub_182269DA0();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4518();
  sub_182AD4528();
  sub_182AD4518();
  if (v3)
  {
    sub_18226A1A4(a1);
  }

  v6 = v25;
  if (v4)
  {
    sub_182AD4518();
    sub_182AD30E8();
    v8 = v23;
    v7 = v24;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_182AD4518();
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_182AD4518();
  v8 = v23;
  v7 = v24;
  if (!v22)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_182AD4518();
  sub_182AD30E8();
  if (v8)
  {
LABEL_6:
    sub_182AD4518();
    sub_182AD30E8();
    goto LABEL_10;
  }

LABEL_9:
  sub_182AD4518();
LABEL_10:
  nw_context_get_identifier(*(v7 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  if (!v5)
  {
    goto LABEL_29;
  }

  sub_182AD4518();
  v10 = v5[3];
  v9 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v14 = v5[7];
  v13 = v5[8];
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v15 = v5[2];
    v26 = v15;
    sub_182AD4518();
    v16 = v15;
    v6 = v25;
    sub_181AACFF4(v16, v10);
    ProtocolStack.TransportProtocol.hash(into:)();
    sub_181AAD03C(v26, v10);
  }

  else
  {
    sub_182AD4518();
  }

  if ((~v11 & 0xF000000000000007) == 0)
  {
    sub_182AD4518();
    if (v12 != 1)
    {
      goto LABEL_16;
    }

LABEL_28:
    sub_182AD4518();
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  sub_182AD4518();
  sub_181B2C3E0(v9, v11);
  ProtocolStack.InternetProtocol.hash(into:)(a1);
  sub_181AAD084(v9, v11);
  if (v12 == 1)
  {
    goto LABEL_28;
  }

LABEL_16:
  sub_182AD4518();
  sub_18226C40C(a1, v12, v14);
  if (v13)
  {
LABEL_17:
    sub_182AD4518();
    v17 = MEMORY[0x1865DB070](v13[3]);
    v18 = v13[4];
    if (v13[2] >= v13[3] + v18)
    {
      v19 = v13[3] + v18;
    }

    else
    {
      v19 = v13[2];
    }

    v27 = v13[4];
    v28 = v19;
    while (1)
    {
      if (v18 == v19)
      {
        if ((sub_181AC81FC(v17) & 1) == 0)
        {

          if (!v6)
          {
            goto LABEL_26;
          }

LABEL_30:
          sub_182AD4518();
          v21 = v6;
          sub_182AD3988();

          return;
        }

        v18 = v27;
        v19 = v28;
      }

      v20 = v18 + 1;
      v27 = v18 + 1;
      v17 = sub_182AD44F8();
      v18 = v20;
    }
  }

LABEL_29:
  sub_182AD4518();
  if (v6)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_182AD4518();
}

uint64_t sub_18226CB10()
{
  sub_182AD44E8();
  sub_18226C71C(v1);
  return sub_182AD4558();
}

uint64_t sub_18226CB54()
{
  sub_182AD44E8();
  sub_18226C71C(v1);
  return sub_182AD4558();
}

unint64_t sub_18226CB98(char a1)
{
  result = 0x756C615668746170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
    case 11:
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 15:
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x49746E756F636361;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6464416C61636F6CLL;
      break;
    case 13:
    case 14:
      result = 0xD000000000000019;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18226CDA8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_18226CB98(*a1);
  v5 = v4;
  if (v3 == sub_18226CB98(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_182AD4268();
  }

  return v8 & 1;
}

uint64_t sub_18226CE30()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_18226CB98(v1);
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18226CE94()
{
  sub_18226CB98(*v0);
  sub_182AD30E8();
}

uint64_t sub_18226CEE8()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_18226CB98(v1);
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18226CF48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182271570();
  *a1 = result;
  return result;
}

unint64_t sub_18226CF78@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18226CB98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18226CFA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182271570();
  *a1 = result;
  return result;
}

uint64_t sub_18226CFD8(uint64_t a1)
{
  v2 = sub_181E76D2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18226D03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1822715C4();
  *a1 = result;
  return result;
}

void sub_18226D06C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x8000000182BD4890;
    v9 = 0x6C616E7265746E69;
    if (v2 == 6)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v8 = 0xED00007367616C46;
    }

    v10 = 0x8000000182BD4850;
    v11 = 0xD00000000000001FLL;
    if (v2 == 4)
    {
      v11 = 0xD00000000000001CLL;
    }

    else
    {
      v10 = 0x8000000182BD4870;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7367616C66;
    v5 = 0x8000000182BD4810;
    v6 = 0xD000000000000018;
    if (v2 == 2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x8000000182BD4830;
    }

    if (*v1)
    {
      v4 = 0x4363696666617274;
      v3 = 0xEC0000007373616CLL;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_18226D18C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1822715C4();
  *a1 = result;
  return result;
}

uint64_t sub_18226D1C0(uint64_t a1)
{
  v2 = sub_181E772C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18226D210()
{
  sub_182AD30E8();
}

uint64_t sub_18226D308@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182271610();
  *a1 = result;
  return result;
}

void sub_18226D338(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x55737365636F7270;
  v4 = 0x8000000182BD48E0;
  v5 = 6580592;
  if (v2 != 4)
  {
    v5 = 6580597;
  }

  if (v2 == 3)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v6 = 0x8000000182BD48B0;
  v7 = 0xD000000000000014;
  if (v2 != 1)
  {
    v7 = 0x55616E6F73726570;
    v6 = 0xEB00000000444955;
  }

  if (*v1)
  {
    v3 = v7;
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000444955;
  }

  if (*v1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_18226D3F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_182271610();
  *a1 = result;
  return result;
}

uint64_t sub_18226D420(uint64_t a1)
{
  v2 = sub_181E74980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18226D468()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18226D568()
{
  sub_182AD30E8();
}

uint64_t sub_18226D654()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18226D750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18227165C();
  *a1 = result;
  return result;
}

void sub_18226D780(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7367616C66;
  v5 = 0xEC00000065646F4DLL;
  v6 = 0x6B6361626C6C6166;
  v7 = 0x8000000182BD4920;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x6C616E7265746E69;
    v7 = 0xED00007367616C46;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7475626972747461;
    v3 = 0xEB000000006E6F69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_18226D83C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18227165C();
  *a1 = result;
  return result;
}

uint64_t sub_18226D864(uint64_t a1)
{
  v2 = sub_181E75DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18226D8A0(uint64_t a1)
{
  v2 = sub_181E75DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18226D8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 0x6E69616D6F64;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 0x6E69616D6F64;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_182AD4268();
  }

  return v8 & 1;
}

uint64_t sub_18226D978()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18226D9F0()
{
  sub_182AD30E8();
}

uint64_t sub_18226DA54()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_18226DAC8@<X0>(char *a1@<X8>)
{
  v2 = sub_182AD3F48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_18226DB28(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x6E69616D6F64;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_18226DB5C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_18226DB8C@<X0>(char *a1@<X8>)
{
  v2 = sub_182AD3F48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_18226DBF0(uint64_t a1)
{
  v2 = sub_18226DEE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18226DC2C(uint64_t a1)
{
  v2 = sub_18226DEE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkAgentType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B798);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  v11 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18226DEE0();
  sub_182AD4638();
  LOBYTE(v13) = 0;
  sub_181AA5C1C(v11, *(&v11 + 1));
  sub_182AD40E8();
  if (!v2)
  {

    v13 = v11;
    v14 = v10;
    NetworkAgentType.type.getter();
    v12 = 1;
    sub_182AD40E8();
  }

  (*(v5 + 8))(v7, v4);
}

unint64_t sub_18226DEE0()
{
  result = qword_1EA83B7A0;
  if (!qword_1EA83B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7A0);
  }

  return result;
}

uint64_t NetworkAgentType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B7A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_18226DEE0();
  sub_182AD45E8();
  if (!v2)
  {
    v26 = 0;
    v9 = sub_182AD3FC8();
    v11 = v10;
    v25 = 1;
    v12 = sub_182AD3FC8();
    v13 = v9;
    v15 = v14;
    v16 = sub_181AC47A8(v13, v11);
    v24 = v17;
    v18 = sub_181AC49BC(v12, v15);
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = v24;
    *a2 = v16;
    a2[1] = v21;
    a2[2] = v18;
    a2[3] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_18226E164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  if (*v5)
  {
    for (i = 0; i < v4; ++i)
    {
      v10 = v3[4];
      if (i + v10 >= v3[2])
      {
        v11 = v3[2];
      }

      else
      {
        v11 = 0;
      }

      *uu1 = *&v3[2 * i + 5 + 2 * (v10 - v11)];
      *uu2 = a2;
      v28 = a3;
      v12 = uuid_compare(uu1, uu2);
      v13 = i + 1;
      v4 = v3[3];
      if (!v12)
      {
        if (v13 == v4)
        {
          return i;
        }

        v15 = i + 1;
        v13 = i;
        while (v15 < v4)
        {
          v16 = v3[4];
          if ((v15 + v16) >= v3[2])
          {
            v17 = v3[2];
          }

          else
          {
            v17 = 0;
          }

          *uu1 = *&v3[2 * v15 + 5 + 2 * (v16 - v17)];
          *uu2 = a2;
          v28 = a3;
          if (uuid_compare(uu1, uu2))
          {
            if (v13 < 0)
            {
              goto LABEL_36;
            }

            if (v13 >= *v5)
            {
              goto LABEL_37;
            }

            if (v15 >= *v5)
            {
              goto LABEL_38;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1820E5F10();
            }

            v3 = *a1;
            v18 = *(*a1 + 32);
            v19 = *(*a1 + 16);
            if (v18 + v13 >= v19)
            {
              v20 = *(*a1 + 16);
            }

            else
            {
              v20 = 0;
            }

            v21 = v18 + v13 - v20;
            if ((v15 + v18) < v19)
            {
              v19 = 0;
            }

            v22 = v15 + v18 - v19;
            if (v22 != v21)
            {
              v23 = v3 + 5;
              v24 = 2 * v21;
              v25 = 2 * v22;
              v26 = *&v3[v24 + 5];
              *&v23[v24] = *&v3[v25 + 5];
              *&v23[v25] = v26;
            }

            ++v13;
          }

          ++v15;
          v5 = v3 + 3;
          v4 = v3[3];
          if (v15 == v4)
          {
            return v13;
          }
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      if (v13 == v4)
      {
        return v13;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  return 0;
}

uint64_t sub_18226E36C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    if (v11 >= v5)
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if ((a4 & 1) == 0)
    {
      v12 = v4[4];
      v13 = v11 + v12 >= v4[2] ? v4[2] : 0;
      v16 = &v4[2 * v11 + 5 + 2 * (v12 - v13)];
      v14 = *v16;
      v15 = v16[1];
      LOWORD(uu1) = *v16;
      BYTE2(uu1) = BYTE2(v14);
      BYTE3(uu1) = BYTE3(v14);
      BYTE4(uu1) = BYTE4(v14);
      BYTE5(uu1) = BYTE5(v14);
      BYTE6(uu1) = BYTE6(v14);
      HIBYTE(uu1) = HIBYTE(v14);
      v37 = v15;
      v34 = a2;
      v35 = a3;
      v17 = uuid_compare(&uu1, &v34);
      v5 = v4[3];
      if (!v17)
      {
        break;
      }
    }

    if (++v11 == v5)
    {
      return v11;
    }
  }

  for (i = v11 + 1; i != v5; ++i)
  {
    if ((i - 1) < -1)
    {
      goto LABEL_35;
    }

    if (i >= v5)
    {
      goto LABEL_36;
    }

    v19 = v4[4];
    if ((i + v19) >= v4[2])
    {
      v20 = v4[2];
    }

    else
    {
      v20 = 0;
    }

    v21 = &v4[2 * i + 2 * (v19 - v20)];
    v23 = v21[5];
    v22 = v21[6];
    uu1 = v23;
    v37 = v22;
    v34 = a2;
    v35 = a3;
    if (uuid_compare(&uu1, &v34))
    {
      if (v11 < 0)
      {
        goto LABEL_37;
      }

      if (v11 >= *v6)
      {
        goto LABEL_38;
      }

      if (i >= *v6)
      {
        goto LABEL_39;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1820E5F10();
      }

      v4 = *a1;
      v24 = *(*a1 + 32);
      v25 = *(*a1 + 16);
      if (v24 + v11 >= v25)
      {
        v26 = *(*a1 + 16);
      }

      else
      {
        v26 = 0;
      }

      v27 = v24 + v11 - v26;
      if ((i + v24) < v25)
      {
        v25 = 0;
      }

      v28 = i + v24 - v25;
      if (v28 != v27)
      {
        v29 = v4 + 5;
        v30 = 2 * v27;
        v31 = 2 * v28;
        v32 = *&v4[v30 + 5];
        *&v29[v30] = *&v4[v31 + 5];
        *&v29[v31] = v32;
      }

      ++v11;
    }

    v6 = v4 + 3;
    v5 = v4[3];
  }

  return v11;
}

unint64_t sub_18226E660(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v46 = &__src[16 * v7];
      if (v14 >= v7 && &__src[16 * v14] < &v46[16 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v47 = 16 * result;
      result = &__src[16 * v14];
      v16 = a3;
      v48 = v47;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[16 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[16 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 16 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[16 * v15];
            v29 = &__src[16 * v16];
            if (v15 != v16 || result >= &v29[16 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 16 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[16 * v16];
          if (v16 <= 0 && &v34[16 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 16 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v59 = a3;
          result = memmove(result, v34, v35);
          a3 = v59;
          goto LABEL_139;
        }

LABEL_76:
        v37 = v10 - v16;
        v38 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v38)
          {
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            return result;
          }

          if (v37 > 0)
          {
            result = &__src[16 * v15];
            v55 = &__src[16 * v16];
            if (v15 != v16 || result >= &v55[16 * v37])
            {
              v56 = a3;
              v57 = __src;
              result = memmove(result, v55, 16 * v37);
              __src = v57;
              a3 = v56;
            }

            v17 = __OFADD__(v15, v37);
            v15 += v37;
            if (v17)
            {
              goto LABEL_158;
            }

            v58 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v58)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[16 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 16 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v38)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v37 > 0)
        {
          result = &__src[16 * v15];
          v39 = &__src[16 * v16];
          if (v15 != v16 || result >= &v39[16 * v37])
          {
            v40 = a3;
            v41 = __src;
            result = memmove(result, v39, 16 * v37);
            __src = v41;
            a3 = v40;
          }

          v17 = __OFADD__(v15, v37);
          v15 += v37;
          if (v17)
          {
            goto LABEL_157;
          }

          v42 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v42)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[16 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v43 = a3;
          v44 = __src;
          result = memmove(result, __src, 16 * v6);
          __src = v44;
          a3 = v43;
        }

        v45 = v6;
        if (v6 >= *a3)
        {
          v45 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[16 * v45];
        if (v45 <= 0 && &v34[16 * v4] > __src && !v45)
        {
          goto LABEL_139;
        }

        v35 = 16 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v49 = &__src[16 * v16 + -16 * v15];
      if (v49 != __src || v49 >= &__src[16 * v15])
      {
        v16 = result;
        v50 = a3;
        v51 = __src;
        memmove(v49, __src, 16 * v15);
        result = v16;
        __src = v51;
        a3 = v50;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 16 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[16 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || v26 > 0 || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[16 * v26], 16 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v52 = a3[2];
  result = &__src[16 * v14];
  v46 = &__src[16 * v52];
  if (v14 >= v52 && result < &v46[16 * v10] && v14 == v52)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v48 = 16 * v10;
LABEL_116:
  result = memmove(result, v46, v48);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v53 = a3[1];
  v17 = __OFSUB__(v53, v6);
  v54 = v53 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[16 * v15];
    v34 = &__src[16 * v16];
    if (v15 < v16 || result >= &v34[16 * v14] || v15 != v16)
    {
      v35 = 16 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v60 = a3[1];
  v17 = __OFSUB__(v60, v6);
  v54 = v60 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v54;
  return result;
}

unint64_t sub_18226EC18(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v46 = &__src[8 * v7];
      if (v14 >= v7 && &__src[8 * v14] < &v46[8 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v47 = 8 * result;
      result = &__src[8 * v14];
      v16 = a3;
      v48 = v47;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[8 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[8 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 8 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[8 * v15];
            v29 = &__src[8 * v16];
            if (v15 != v16 || result >= &v29[8 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 8 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[8 * v16];
          if (v16 <= 0 && &v34[8 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 8 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v59 = a3;
          result = memmove(result, v34, v35);
          a3 = v59;
          goto LABEL_139;
        }

LABEL_76:
        v37 = v10 - v16;
        v38 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v38)
          {
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            return result;
          }

          if (v37 > 0)
          {
            result = &__src[8 * v15];
            v55 = &__src[8 * v16];
            if (v15 != v16 || result >= &v55[8 * v37])
            {
              v56 = a3;
              v57 = __src;
              result = memmove(result, v55, 8 * v37);
              __src = v57;
              a3 = v56;
            }

            v17 = __OFADD__(v15, v37);
            v15 += v37;
            if (v17)
            {
              goto LABEL_158;
            }

            v58 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v58)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[8 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 8 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v38)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v37 > 0)
        {
          result = &__src[8 * v15];
          v39 = &__src[8 * v16];
          if (v15 != v16 || result >= &v39[8 * v37])
          {
            v40 = a3;
            v41 = __src;
            result = memmove(result, v39, 8 * v37);
            __src = v41;
            a3 = v40;
          }

          v17 = __OFADD__(v15, v37);
          v15 += v37;
          if (v17)
          {
            goto LABEL_157;
          }

          v42 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v42)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[8 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v43 = a3;
          v44 = __src;
          result = memmove(result, __src, 8 * v6);
          __src = v44;
          a3 = v43;
        }

        v45 = v6;
        if (v6 >= *a3)
        {
          v45 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[8 * v45];
        if (v45 <= 0 && &v34[8 * v4] > __src && !v45)
        {
          goto LABEL_139;
        }

        v35 = 8 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v49 = &__src[8 * v16 + -8 * v15];
      if (v49 != __src || v49 >= &__src[8 * v15])
      {
        v16 = result;
        v50 = a3;
        v51 = __src;
        memmove(v49, __src, 8 * v15);
        result = v16;
        __src = v51;
        a3 = v50;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 8 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[8 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || v26 > 0 || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[8 * v26], 8 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v52 = a3[2];
  result = &__src[8 * v14];
  v46 = &__src[8 * v52];
  if (v14 >= v52 && result < &v46[8 * v10] && v14 == v52)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v48 = 8 * v10;
LABEL_116:
  result = memmove(result, v46, v48);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v53 = a3[1];
  v17 = __OFSUB__(v53, v6);
  v54 = v53 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[8 * v15];
    v34 = &__src[8 * v16];
    if (v15 < v16 || result >= &v34[8 * v14] || v15 != v16)
    {
      v35 = 8 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v60 = a3[1];
  v17 = __OFSUB__(v60, v6);
  v54 = v60 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v54;
  return result;
}

unint64_t sub_18226F1D0(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[24 * v7];
      if (v14 >= v7 && &__src[24 * v14] < &v49[24 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 24 * result;
      result = &__src[24 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[24 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[24 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 24 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[24 * v15];
            v30 = &__src[24 * v16];
            if (v15 != v16 || result >= &v30[24 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 24 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[24 * v16];
          if (v16 <= 0 && &v35[24 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 3 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
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
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[24 * v15];
            v59 = &__src[24 * v16];
            if (v15 != v16 || result >= &v59[24 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 24 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[24 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 24 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[24 * v15];
          v41 = &__src[24 * v16];
          if (v15 != v16 || result >= &v41[24 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 24 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[24 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 24 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[24 * v47];
        if (v47 <= 0 && &v35[24 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 3 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[24 * v16 + -24 * v15];
      if (v52 != __src || v52 >= &__src[24 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 24 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 24 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[24 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || v38 > 0 || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[24 * v38], 24 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[24 * v14];
  v49 = &__src[24 * v56];
  if (v14 >= v56 && result < &v49[24 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 24 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[24 * v15];
    v35 = &__src[24 * v16];
    if (v15 < v16 || result >= &v35[24 * v14] || v15 != v16)
    {
      v48 = 24 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

uint64_t sub_18226F7EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 128);
      v40[6] = *(a1 + 112);
      v40[7] = v2;
      v40[8] = *(a1 + 144);
      v41 = *(a1 + 160);
      v3 = *(a1 + 64);
      v40[2] = *(a1 + 48);
      v40[3] = v3;
      v4 = *(a1 + 96);
      v40[4] = *(a1 + 80);
      v40[5] = v4;
      v5 = *(a1 + 32);
      v40[0] = *(a1 + 16);
      v40[1] = v5;
      v6 = *(a1 + 128);
      v36 = *(a1 + 112);
      v37 = v6;
      v38 = *(a1 + 144);
      v39 = *(a1 + 160);
      v7 = *(a1 + 64);
      v32 = *(a1 + 48);
      v33 = v7;
      v8 = *(a1 + 96);
      v34 = *(a1 + 80);
      v35 = v8;
      v9 = *(a1 + 32);
      v30 = *(a1 + 16);
      v31 = v9;
      v10 = *(a2 + 128);
      v42[6] = *(a2 + 112);
      v42[7] = v10;
      v42[8] = *(a2 + 144);
      v43 = *(a2 + 160);
      v11 = *(a2 + 64);
      v42[2] = *(a2 + 48);
      v42[3] = v11;
      v12 = *(a2 + 96);
      v42[4] = *(a2 + 80);
      v42[5] = v12;
      v13 = *(a2 + 32);
      v42[0] = *(a2 + 16);
      v42[1] = v13;
      v14 = *(a2 + 128);
      v26 = *(a2 + 112);
      v27 = v14;
      v28 = *(a2 + 144);
      v29 = *(a2 + 160);
      v15 = *(a2 + 64);
      v22 = *(a2 + 48);
      v23 = v15;
      v16 = *(a2 + 96);
      v24 = *(a2 + 80);
      v25 = v16;
      v17 = *(a2 + 32);
      v20 = *(a2 + 16);
      v21 = v17;
      sub_181D09728(v40, v46);
      sub_181D09728(v42, v46);
      v18 = sub_181E2CE84(&v30, &v20);
      v44[6] = v26;
      v44[7] = v27;
      v44[8] = v28;
      v45 = v29;
      v44[2] = v22;
      v44[3] = v23;
      v44[4] = v24;
      v44[5] = v25;
      v44[0] = v20;
      v44[1] = v21;
      sub_181D09760(v44);
      v46[6] = v36;
      v46[7] = v37;
      v46[8] = v38;
      v47 = v39;
      v46[2] = v32;
      v46[3] = v33;
      v46[4] = v34;
      v46[5] = v35;
      v46[0] = v30;
      v46[1] = v31;
      sub_181D09760(v46);
      if (v18)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_18226F984(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a1[3];
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v6 = a1[7];
      v7 = a1[8];
      v28 = a1[2];
      v29 = v2;
      v30 = v3;
      v31 = v4;
      v32 = v5;
      v33 = v6;
      v34 = v7;
      v8 = a2[3];
      v9 = a2[4];
      v10 = a2[5];
      v11 = a2[6];
      v19 = a2[7];
      v20 = a2[8];
      v21 = a2[2];
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v19;
      v27 = v20;
      sub_181AC8268(v28, v2);
      sub_181B687F0(v3, v4);
      sub_181AB78DC(v5);

      sub_181AC8268(v21, v8);
      sub_181B687F0(v9, v10);
      sub_181AB78DC(v11);

      LOBYTE(v3) = sub_18226FAF8(&v28, &v21);
      v12 = v23;
      v13 = v24;
      v14 = v25;
      sub_181A53008(v21, v22);
      sub_181A52FE0(v12, v13);
      sub_181B03DAC(v14);

      v15 = v30;
      v16 = v31;
      v17 = v32;
      sub_181A53008(v28, v29);
      sub_181A52FE0(v15, v16);
      sub_181B03DAC(v17);

      if (v3)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

BOOL sub_18226FAF8(uint64_t *a1, uint64_t *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = v7 & 0xF000000000000007;
  if ((~v2 & 0xF000000000000007) == 0)
  {
    if (v11 == 0xF000000000000007)
    {
      v29 = a2[5];
      v30 = a1[5];
      v31 = a1[6];
      v32 = a1[4];
      v33 = a2[6];
      sub_181AC8268(v3, v2);
      sub_181AC8268(v6, v7);
      sub_181A53008(v3, v2);
      goto LABEL_7;
    }

LABEL_5:
    sub_181AC8268(*a1, v2);
    sub_181AC8268(v6, v7);
    sub_181A53008(v3, v2);
    sub_181A53008(v6, v7);
    return 0;
  }

  if (v11 == 0xF000000000000007)
  {
    goto LABEL_5;
  }

  v29 = a2[5];
  v30 = a1[5];
  v31 = a1[6];
  v32 = a1[4];
  v33 = a2[6];
  v40 = *a1;
  v41 = v2;
  v37 = v6;
  v38 = v7;
  uu1[0] = 0;
  sub_181AC8268(v3, v2);
  sub_181AC8268(v6, v7);
  v12 = sub_181B0227C(&v37, uu1);
  sub_181A53008(v6, v7);
  sub_181A53008(v3, v2);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v13 = v9 & 0xF000000000000007;
  if ((~v4 & 0xF000000000000007) == 0)
  {
    if (v13 == 0xF000000000000007)
    {
      sub_181B687F0(v5, v4);
      sub_181B687F0(v8, v9);
      sub_181A52FE0(v5, v4);
      goto LABEL_15;
    }

LABEL_11:
    sub_181B687F0(v5, v4);
    sub_181B687F0(v8, v9);
    sub_181A52FE0(v5, v4);
    sub_181A52FE0(v8, v9);
    return 0;
  }

  if (v13 == 0xF000000000000007)
  {
    goto LABEL_11;
  }

  v40 = v5;
  v41 = v4;
  v37 = v8;
  v38 = v9;
  uu1[0] = 0;
  sub_181B687F0(v5, v4);
  sub_181B687F0(v8, v9);
  v15 = sub_181B03A70(&v37, uu1);
  sub_181A52FE0(v8, v9);
  sub_181A52FE0(v5, v4);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v32 == 1)
  {
    v16 = v33;
    if (v10 != 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v33;
    if (v10 == 1)
    {
      return 0;
    }

    if (v32)
    {
      if (!v10)
      {
        return 0;
      }

      ObjectType = swift_getObjectType();
      LOBYTE(v40) = 0;
      v27 = *(v30 + 24);
      v28 = swift_unknownObjectRetain();
      LOBYTE(ObjectType) = v27(v28, v29, &v40, ObjectType, v30);
      sub_181B03DAC(v10);
      v16 = v33;
      if ((ObjectType & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }
  }

  if (!v31)
  {
    return !v16;
  }

  if (!v16)
  {
    return 0;
  }

  v17 = v31[3];
  if (v17 != v16[3])
  {
    return 0;
  }

  result = 1;
  if (!v17 || v31 == v16)
  {
    return result;
  }

  v18 = v31[4];
  v19 = v18 + v17;
  if (v31[2] < (v18 + v17))
  {
    v19 = v31[2];
  }

  v40 = v31;
  v41 = v18;
  v42 = v19;
  v20 = v16[4];
  v21 = v20 + v17;
  if (v16[2] < v21)
  {
    v21 = v16[2];
  }

  v37 = v16;
  v38 = v20;
  v39 = v21;
  swift_retain_n();

  while (1)
  {
    v23 = v41;
    if (v41 != v42)
    {
      goto LABEL_30;
    }

    v22 = sub_181AC81FC(v22);
    if (v22)
    {
      v23 = v41;
LABEL_30:
      v24 = 0;
      v41 = v23 + 1;
      v25 = *(v40 + 16 * v23 + 40);
      goto LABEL_32;
    }

    v25 = 0uLL;
    v24 = 1;
LABEL_32:
    if (v20 != v39)
    {
      goto LABEL_35;
    }

    v34 = v25;
    if ((sub_181AC81FC(v22) & 1) == 0)
    {
      break;
    }

    v20 = v38;
    v25 = v34;
LABEL_35:
    v38 = v20 + 1;
    if ((v24 & 1) == 0)
    {
      *uu2 = *&v37[2 * v20 + 5];
      *uu1 = v25;
      v22 = uuid_compare(uu1, uu2);
      ++v20;
      if (!v22)
      {
        continue;
      }
    }

LABEL_38:

    return 0;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_38;
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_7Network13ProtocolStackC09TransportB0OSg(uint64_t a1)
{
  v1 = ((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_7Network13ProtocolStackC08InternetB0OSg(uint64_t a1)
{
  v1 = ((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_7Network14PathParametersV19ChannelDemuxOptionsOSg(uint64_t *a1)
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

uint64_t sub_18226FFD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_182270030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network14PathParametersV32InterfaceOptionDetailsEnumeratorVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1822700C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_182270124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1822701F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182270238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1822702B8()
{
  result = qword_1EA83B7B0;
  if (!qword_1EA83B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7B0);
  }

  return result;
}

unint64_t sub_182270310()
{
  result = qword_1EA83B7B8;
  if (!qword_1EA83B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7B8);
  }

  return result;
}

unint64_t sub_182270368()
{
  result = qword_1EA83B7C0;
  if (!qword_1EA83B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7C0);
  }

  return result;
}

unint64_t sub_1822703C0()
{
  result = qword_1EA83B7C8;
  if (!qword_1EA83B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7C8);
  }

  return result;
}

unint64_t sub_182270418()
{
  result = qword_1EA83B7D0;
  if (!qword_1EA83B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7D0);
  }

  return result;
}

unint64_t sub_182270470()
{
  result = qword_1EA83B7D8;
  if (!qword_1EA83B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7D8);
  }

  return result;
}

unint64_t sub_182270558()
{
  result = qword_1EA83B7F0;
  if (!qword_1EA83B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7F0);
  }

  return result;
}

unint64_t sub_1822705B0()
{
  result = qword_1EA83B7F8;
  if (!qword_1EA83B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B7F8);
  }

  return result;
}

unint64_t sub_182270604()
{
  result = qword_1EA83B810;
  if (!qword_1EA83B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8385D0);
    sub_181E759F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B810);
  }

  return result;
}

unint64_t sub_182270688()
{
  result = qword_1EA83B820;
  if (!qword_1EA83B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B818);
    sub_18227070C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B820);
  }

  return result;
}

unint64_t sub_18227070C()
{
  result = qword_1EA83B828;
  if (!qword_1EA83B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B828);
  }

  return result;
}

unint64_t sub_182270760()
{
  result = qword_1EA83B838;
  if (!qword_1EA83B838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B830);
    sub_1822707E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B838);
  }

  return result;
}

unint64_t sub_1822707E4()
{
  result = qword_1EA83B840;
  if (!qword_1EA83B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B840);
  }

  return result;
}

unint64_t sub_182270838()
{
  result = qword_1EA83B850;
  if (!qword_1EA83B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B848);
    sub_1820CC8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B850);
  }

  return result;
}

unint64_t sub_1822708BC()
{
  result = qword_1EA8369F8;
  if (!qword_1EA8369F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B860);
    sub_1820CC864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8369F8);
  }

  return result;
}

unint64_t sub_182270940()
{
  result = qword_1EA836D00;
  if (!qword_1EA836D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B860);
    sub_1820CC90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836D00);
  }

  return result;
}

unint64_t sub_1822709C4()
{
  result = qword_1EA836CF0;
  if (!qword_1EA836CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B848);
    sub_1820CC960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CF0);
  }

  return result;
}

unint64_t sub_182270A48()
{
  result = qword_1EA836CE0;
  if (!qword_1EA836CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B830);
    sub_181E7EBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CE0);
  }

  return result;
}

unint64_t sub_182270ACC()
{
  result = qword_1EA836D18;
  if (!qword_1EA836D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B818);
    sub_182270B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836D18);
  }

  return result;
}

unint64_t sub_182270B50()
{
  result = qword_1EA836CD0;
  if (!qword_1EA836CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CD0);
  }

  return result;
}

unint64_t sub_182270BA4()
{
  result = qword_1EA836D08;
  if (!qword_1EA836D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8385D0);
    sub_181E7E6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836D08);
  }

  return result;
}

unint64_t sub_182270C28()
{
  result = qword_1EA836C20;
  if (!qword_1EA836C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B878);
    sub_181E7E6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C20);
  }

  return result;
}

uint64_t sub_182270CAC(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (!v2)
  {
    v3 = a1;
    type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
    v2 = swift_allocObject();
    a1 = v3;
    *(v2 + 16) = xmmword_182AE3CC0;
    *(v2 + 32) = xmmword_182AE3CC0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 48) = 1;
    *(v1 + 160) = v2;
  }

  *(v2 + 64) = a1;
}

uint64_t getEnumTagSinglePayload for PathParameters.JoinablePathValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[6])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PathParameters.JoinablePathValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PathParameters.PathValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 6);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PathParameters.PathValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 6) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_182270EA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_182270EC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 76) = v3;
  return result;
}

unint64_t sub_182270F44()
{
  result = qword_1EA83B8D0;
  if (!qword_1EA83B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B8D0);
  }

  return result;
}

unint64_t sub_182270F9C()
{
  result = qword_1EA83B8D8;
  if (!qword_1EA83B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B8D8);
  }

  return result;
}

unint64_t sub_182270FF4()
{
  result = qword_1EA83B8E0;
  if (!qword_1EA83B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B8E0);
  }

  return result;
}

unint64_t sub_18227104C()
{
  result = qword_1EA83B8E8;
  if (!qword_1EA83B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B8E8);
  }

  return result;
}

unint64_t sub_1822710A4()
{
  result = qword_1EA83B8F0;
  if (!qword_1EA83B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B8F0);
  }

  return result;
}

unint64_t sub_1822710FC()
{
  result = qword_1EA83B8F8;
  if (!qword_1EA83B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B8F8);
  }

  return result;
}

unint64_t sub_182271154()
{
  result = qword_1EA83B900;
  if (!qword_1EA83B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B900);
  }

  return result;
}

unint64_t sub_1822711AC()
{
  result = qword_1EA83B908;
  if (!qword_1EA83B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B908);
  }

  return result;
}

unint64_t sub_182271204()
{
  result = qword_1EA83B910;
  if (!qword_1EA83B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B910);
  }

  return result;
}

unint64_t sub_18227125C()
{
  result = qword_1EA83B918;
  if (!qword_1EA83B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B918);
  }

  return result;
}

unint64_t sub_1822712B4()
{
  result = qword_1EA836ED0;
  if (!qword_1EA836ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836ED0);
  }

  return result;
}

unint64_t sub_18227130C()
{
  result = qword_1EA836ED8;
  if (!qword_1EA836ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836ED8);
  }

  return result;
}

unint64_t sub_182271364()
{
  result = qword_1EA836EF0;
  if (!qword_1EA836EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EF0);
  }

  return result;
}

unint64_t sub_1822713BC()
{
  result = qword_1EA836EF8;
  if (!qword_1EA836EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EF8);
  }

  return result;
}

unint64_t sub_182271414()
{
  result = qword_1EA836EB0;
  if (!qword_1EA836EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EB0);
  }

  return result;
}

unint64_t sub_18227146C()
{
  result = qword_1EA836EB8;
  if (!qword_1EA836EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836EB8);
  }

  return result;
}

unint64_t sub_1822714C4()
{
  result = qword_1EA836E90;
  if (!qword_1EA836E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E90);
  }

  return result;
}

unint64_t sub_18227151C()
{
  result = qword_1EA836E98;
  if (!qword_1EA836E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836E98);
  }

  return result;
}

uint64_t sub_182271570()
{
  v0 = sub_182AD4398();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1822715C4()
{
  v0 = sub_182AD3F48();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_182271610()
{
  v0 = sub_182AD3F48();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18227165C()
{
  v0 = sub_182AD3F48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1822716E8()
{
  result = qword_1EA83B920;
  if (!qword_1EA83B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B920);
  }

  return result;
}

unint64_t sub_182271740()
{
  result = qword_1EA83B928;
  if (!qword_1EA83B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B928);
  }

  return result;
}

unint64_t sub_182271798()
{
  result = qword_1EA83B930;
  if (!qword_1EA83B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B930);
  }

  return result;
}

unint64_t sub_1822717F0()
{
  result = qword_1EA83B938;
  if (!qword_1EA83B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B938);
  }

  return result;
}

unint64_t sub_182271844()
{
  result = qword_1EA83B940;
  if (!qword_1EA83B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B940);
  }

  return result;
}

unint64_t sub_18227189C()
{
  result = qword_1EA83B948;
  if (!qword_1EA83B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B948);
  }

  return result;
}

unint64_t sub_1822718F4()
{
  result = qword_1EA83B950;
  if (!qword_1EA83B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B950);
  }

  return result;
}

unint64_t sub_18227194C()
{
  result = qword_1EA83B958;
  if (!qword_1EA83B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B958);
  }

  return result;
}

unint64_t sub_1822719A0()
{
  result = qword_1EA83B960;
  if (!qword_1EA83B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B960);
  }

  return result;
}

unint64_t sub_1822719F8()
{
  result = qword_1EA83B968;
  if (!qword_1EA83B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B968);
  }

  return result;
}

unint64_t sub_182271A50()
{
  result = qword_1EA83B970;
  if (!qword_1EA83B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B970);
  }

  return result;
}

unint64_t sub_182271AA8()
{
  result = qword_1EA83B978;
  if (!qword_1EA83B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B978);
  }

  return result;
}

unint64_t sub_182271AFC()
{
  result = qword_1EA83B980;
  if (!qword_1EA83B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B980);
  }

  return result;
}

unint64_t sub_182271B54()
{
  result = qword_1EA83B988;
  if (!qword_1EA83B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B988);
  }

  return result;
}

unint64_t sub_182271BAC()
{
  result = qword_1EA83B990;
  if (!qword_1EA83B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B990);
  }

  return result;
}

unint64_t sub_182271C04()
{
  result = qword_1EA83B998;
  if (!qword_1EA83B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83B998);
  }

  return result;
}

uint64_t sub_182271CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_181F5D9BC(a1, v18 - v8);
  v10 = sub_182AD3548();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &unk_1EA839850);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_182AD34A8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_182AD3538();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_182271E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_181F5D9BC(a3, v22 - v9);
  v11 = sub_182AD3548();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_181F49A88(v10, &unk_1EA839850);
  }

  else
  {
    sub_182AD3538();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_182AD34A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_182AD3048() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_181F49A88(a3, &unk_1EA839850);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_181F49A88(a3, &unk_1EA839850);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t Connection6.__allocating_init(using:with:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Connection6.init(using:with:)(a1, a2);
  return v4;
}

uint64_t sub_182272170(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  if (a4 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a4 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = a4;
  }

  if (!a5)
  {
    sub_181F49B44(a3, a4);
    sub_181D9D680(v6, v7);
LABEL_18:
    sub_181F4B3B8();
    swift_allocError();
    *v20 = 22;
    *(v20 + 4) = 0;
    return swift_willThrow();
  }

  sub_181F49B44(a3, a4);
  v12 = qword_1EA837200;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *(a5 + 16);
  v14 = nw_content_context_copy_protocol_metadata(v13, *(qword_1EA8433A0 + 32));
  if (!v14 || (v15 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v14), swift_unknownObjectRelease(), !v15))
  {
LABEL_17:
    sub_181D9D680(v6, v7);

    goto LABEL_18;
  }

  type metadata accessor for NWProtocolFramer.Message();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    goto LABEL_17;
  }

  *a1 = v6;
  a1[1] = v7;
  v17 = *(v16 + 16);
  v18 = sub_182AD3048();
  sub_181F49B58(v6, v7);
  v19 = nw_framer_message_copy_object_value(v17, (v18 + 32));

  if (v19)
  {
    sub_182AD3AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  aBlock = v31;
  v28 = v32;
  v34 = a6;
  if (!*(&v32 + 1))
  {
    sub_181F49A88(&aBlock, &unk_1EA83A4F0);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v26 = 0;
    goto LABEL_25;
  }

  v26 = v31;
LABEL_25:
  v33 = *(a5 + 64);
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  v23 = (v22 + 16);
  v29 = sub_181F25E08;
  v30 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_181F25CD0;
  *(&v28 + 1) = &block_descriptor_82_0;
  v24 = _Block_copy(&aBlock);

  nw_content_context_foreach_protocol_metadata(v13, v24);
  sub_181D9D680(v6, v7);
  _Block_release(v24);

  swift_beginAccess();
  v25 = *v23;

  *a2 = v26;
  *(a2 + 8) = 0;
  *(a2 + 16) = v34 & 1;
  *(a2 + 17) = v33;
  *(a2 + 24) = v25;
  return result;
}

uint64_t Connection6.nw.getter()
{
  sub_181F3D244();
}

uint64_t Connection6.SendOptions.hashValue.getter()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t Connection6.__allocating_init<A>(to:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for NWEndpoint();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 80);
  v19 = *(v7 + 88);
  NWParametersBuilder.init(_:)(v31, a2, a3, a4, v18, a5, v19, a6, v15);
  v20 = v31[0];
  v21 = v31[1];
  sub_181D8E1E8(a1, v17, type metadata accessor for NWEndpoint);
  v29 = v20;
  v30 = v21;
  *&v26 = a4;
  *(&v26 + 1) = v18;
  *&v27 = a5;
  *(&v27 + 1) = v19;
  v28 = a6;
  v22 = type metadata accessor for NWParametersBuilder();
  v23 = NWParametersBuilder.parameters(for:)(a1, v22);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_allocObject();
  v24 = sub_18227D7C8(v17, v23, &v26);

  sub_181FDAD5C(a1);
  return v24;
}

{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v13 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v35 = &v30 - v18;
  v36 = v6;
  v19 = *(v6 + 80);
  v31 = *(v6 + 88);
  NWParametersBuilder.init(_:)(v43, a2, a3, a4, v19, a5, v31, a6, v17);
  v20 = v43[0];
  v21 = v43[1];
  v22 = a1;
  v37 = a1;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v25 = *(v24 + 8);
  v25(v23, v24);
  v41 = v20;
  v42 = v21;
  v25(v23, v24);
  *&v38 = v32;
  *(&v38 + 1) = v19;
  *&v39 = v33;
  *(&v39 + 1) = v31;
  v40 = v34;
  v26 = type metadata accessor for NWParametersBuilder();
  v27 = NWParametersBuilder.parameters(for:)(v15, v26);
  sub_181FDAD5C(v15);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  swift_allocObject();
  v28 = sub_18227D7C8(v35, v27, &v38);

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v28;
}

uint64_t Connection6.__allocating_init<A>(to:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v15 = a2[1];
  sub_181D8E1E8(a1, v14, type metadata accessor for NWEndpoint);
  v26 = v16;
  v27 = v15;
  v17 = *(v6 + 80);
  v18 = *(v6 + 88);
  *&v23 = a3;
  *(&v23 + 1) = v17;
  *&v24 = a4;
  *(&v24 + 1) = v18;
  v25 = a5;
  v19 = type metadata accessor for NWParametersBuilder();
  v20 = NWParametersBuilder.parameters(for:)(a1, v19);

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  swift_allocObject();
  v21 = sub_18227D7C8(v14, v20, &v23);

  sub_181FDAD5C(a1);
  return v21;
}

uint64_t Connection6.__allocating_init<A>(to:using:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a3;
  v7 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(v16 + 8);
  v17(v15, v16);
  v31 = v13;
  v32 = v14;
  v17(v15, v16);
  v18 = *(v25 + 80);
  v19 = *(v25 + 88);
  *&v28 = v24;
  *(&v28 + 1) = v18;
  *&v29 = v26;
  *(&v29 + 1) = v19;
  v30 = v27;
  v20 = type metadata accessor for NWParametersBuilder();
  v21 = NWParametersBuilder.parameters(for:)(v9, v20);
  sub_181FDAD5C(v9);

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  swift_allocObject();
  v22 = sub_18227D7C8(v12, v21, &v28);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

uint64_t Connection6.init(using:with:)(uint64_t a1, uint64_t a2)
{
  locked = type metadata accessor for Connection6.LockedState();
  memset(v8, 0, sizeof(v8));
  v6 = sub_1820C6414(v8, locked);
  sub_181F49A88(a2, &qword_1EA83A290);
  *(v2 + 16) = a1;
  *(v2 + 24) = v6;
  return v2;
}

void sub_182272C80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  if (a2)
  {
    v11 = sub_182AD3548();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = a4;
    sub_181AA39C0(a2);

    v13 = sub_182271E84(0, 0, v10, &unk_182B03828, v12);

    *a1 = v13;
  }

  else if (*(a4 + 16))
  {
    NWConnection.stateUpdateHandler.setter(0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182272E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A158);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A160);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182272F60, 0, 0);
}

uint64_t sub_182272F60()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x1E69E8790], *(v0 + 40));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_18209AAE4;

  return MEMORY[0x1EEE6DE40]();
}

void sub_1822730AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A170);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  if (*(a2 + 16))
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v8, v4);
    NWConnection.stateUpdateHandler.setter(sub_18227F940, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1822731F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A178);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = *(a1 + 4);
  LODWORD(v12) = *a1;
  v7 = v12 | (v6 << 32);
  BYTE4(v12) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A170);
  sub_182AD36A8();
  result = (*(v3 + 8))(v5, v2);
  if (v6 >> 6 == 1)
  {
    sub_181F4B3B8();
    v9 = swift_allocError();
    *v10 = v7;
    *(v10 + 4) = BYTE4(v7) & 0x3F;
    v12 = v9;
    return sub_182AD36B8();
  }

  if (v6 >> 6 == 2 && v7 == 0x8000000003)
  {
    v12 = 0;
    return sub_182AD36B8();
  }

  return result;
}

uint64_t sub_182273374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A168);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18227348C, 0, 0);
}

uint64_t sub_18227348C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A160);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_18227355C;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v2, v0 + 72);
}

uint64_t sub_18227355C()
{

  if (v0)
  {
    v1 = sub_18209B58C;
  }

  else
  {
    v1 = sub_18227366C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_18227366C()
{
  if (*(v0 + 172) >> 2 < 0x3FuLL)
  {
    v3 = *(v0 + 168) | (*(v0 + 172) << 32);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v21 = *(v0 + 96);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v4, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v21;
    *(v10 + 40) = v7;
    *(v10 + 52) = BYTE4(v3);
    *(v10 + 48) = v3;
    *(v10 + 56) = v6;
    sub_181F5D9BC(v4, v5);
    LODWORD(v4) = (*(v9 + 48))(v5, 1, v8);

    v11 = *(v0 + 120);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 168;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 168;
    }

    v18 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_18227355C;
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v1 = *(v0 + 8);

    return v1();
  }
}

void sub_182273A44(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    v10 = sub_182AD3608();
  }

  if (a2)
  {
    v13 = sub_182AD3548();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    sub_181AA39C0(a2);

    v15 = sub_182271E84(0, 0, v12, &unk_182B037F8, v14);

    *(a1 + 8) = v15;
    return;
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    a2 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = 0;
    *(&v17 - 1) = 0;
    os_unfair_lock_lock(a2 + 24);
    sub_181EC7B18(&a2[4]);
    if (!v4)
    {
      os_unfair_lock_unlock(a2 + 24);
      nw_connection_set_path_changed_handler(*(v16 + 16), 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  os_unfair_lock_unlock(a2 + 24);
  __break(1u);
}

uint64_t sub_182273C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A148);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B180);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182273D84, 0, 0);
}

uint64_t sub_182273D84()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  type metadata accessor for NWPath(0);
  v9 = *(v0 + 16);
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8790], v4);
  sub_182AD3738();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v9;
  *(v6 + 40) = v5;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_18209BBF8;

  return MEMORY[0x1EEE6DE40]();
}

void sub_182273EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_18227F660;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_1820AC6CC(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18227F660;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181ECAA3C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7F17C;
    aBlock[3] = &block_descriptor_304;
    v16 = _Block_copy(aBlock);

    nw_connection_set_path_changed_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182274130(uint64_t a1)
{
  v2 = type metadata accessor for NWPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B1A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_181D8E1E8(a1, v4, type metadata accessor for NWPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150);
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_182274288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *a6;
  v7 = type metadata accessor for NWPath(0);
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839EC8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B190);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182274464, 0, 0);
}

uint64_t sub_182274464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B180);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_182274530;
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 9);
}

uint64_t sub_182274530()
{

  if (v0)
  {
    v1 = sub_18209C9B4;
  }

  else
  {
    v1 = sub_182274640;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_182274640()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  if ((*(v2 + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 120);
  v27 = *(v0 + 112);
  v28 = *(v0 + 160);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v9 = sub_182AD3548();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 1, 1, v9);
  sub_1820ABF80(v1, v7);
  v11 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v13[2] = 0;
  v14 = v13 + 2;
  v13[3] = 0;
  v13[4] = *(v8 + 80);
  v13[5] = *(v8 + 88);
  v13[6] = v25;
  v13[7] = v26;
  sub_1820ABF80(v7, v13 + v11);
  *(v13 + v12) = v27;
  sub_181F5D9BC(v5, v28);
  LODWORD(v12) = (*(v10 + 48))(v28, 1, v9);

  v15 = *(v0 + 160);
  if (v12 != 1)
  {
    sub_182AD3538();
    (*(v10 + 8))(v15, v9);
    if (*v14)
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  sub_181F49A88(*(v0 + 160), &unk_1EA839850);
  if (!*v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_182AD34A8();
  v18 = v17;
  swift_unknownObjectRelease();
LABEL_10:
  v19 = **(v0 + 80);

  if (v18 | v16)
  {
    v20 = v0 + 16;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v16;
    *(v0 + 40) = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 168);
  *(v0 + 48) = 1;
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  swift_task_create();

  sub_181F49A88(v21, &unk_1EA839850);
  v22 = swift_task_alloc();
  *(v0 + 208) = v22;
  *v22 = v0;
  v22[1] = sub_182274530;
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);

  return MEMORY[0x1EEE6DB90](v23, 0, 0, v24, v0 + 72);
}

void sub_182274A70(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    v10 = sub_182AD3608();
  }

  if (a2)
  {
    v13 = sub_182AD3548();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    sub_181AA39C0(a2);

    v15 = sub_182271E84(0, 0, v12, &unk_182B037C8, v14);

    *(a1 + 16) = v15;
    return;
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    a2 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = 0;
    *(&v17 - 1) = 0;
    os_unfair_lock_lock(a2 + 24);
    sub_181E60818(&a2[4]);
    if (!v4)
    {
      os_unfair_lock_unlock(a2 + 24);
      nw_connection_set_viability_changed_handler(*(v16 + 16), 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  os_unfair_lock_unlock(a2 + 24);
  __break(1u);
}

uint64_t sub_182274C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B150);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182274DB0, 0, 0);
}

uint64_t sub_182274DB0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x1E69E8790], *(v0 + 40));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_18209AAE4;

  return MEMORY[0x1EEE6DE40]();
}

void sub_182274EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_18227F32C;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_1820AC6B4(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18227F32C;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181F1B704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F1B6B0;
    aBlock[3] = &block_descriptor_281;
    v16 = _Block_copy(aBlock);

    nw_connection_set_viability_changed_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182275140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B160);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182275258, 0, 0);
}

uint64_t sub_182275258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_182275328;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v2, v0 + 72);
}

uint64_t sub_182275328()
{

  if (v0)
  {
    v1 = sub_18209B58C;
  }

  else
  {
    v1 = sub_182275438;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_182275438()
{
  v1 = *(v0 + 168);
  if (v1 == 2)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v21 = *(v0 + 96);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v4, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v21;
    *(v10 + 40) = v7;
    *(v10 + 48) = v1 & 1;
    *(v10 + 56) = v6;
    sub_181F5D9BC(v4, v5);
    LODWORD(v4) = (*(v9 + 48))(v5, 1, v8);

    v11 = *(v0 + 120);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 168;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 168;
    }

    v18 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_182275328;
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }
}

uint64_t sub_182275804(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 24);
  v7[2] = a1;
  v7[3] = a2;
  type metadata accessor for Connection6.LockedState();
  sub_181F50DA0(a3, v7, v5);
}

void sub_1822758A0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (*(a1 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    v10 = sub_182AD3608();
  }

  if (a2)
  {
    v13 = sub_182AD3548();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    sub_181AA39C0(a2);

    v15 = sub_182271E84(0, 0, v12, &unk_182B03798, v14);

    *(a1 + 24) = v15;
    return;
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    a2 = *(v16 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = 0;
    *(&v17 - 1) = 0;
    os_unfair_lock_lock(a2 + 24);
    sub_181E61CA4(&a2[4]);
    if (!v4)
    {
      os_unfair_lock_unlock(a2 + 24);
      nw_connection_set_better_path_available_handler(*(v16 + 16), 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  os_unfair_lock_unlock(a2 + 24);
  __break(1u);
}

uint64_t sub_182275AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B150);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182275BE0, 0, 0);
}

uint64_t sub_182275BE0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 48) + 104))(*(v0 + 56), *MEMORY[0x1E69E8790], *(v0 + 40));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_18209AAE4;

  return MEMORY[0x1EEE6DE40]();
}

void sub_182275D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v12 = (*(v5 + 32))(v11 + v10, v8, v4);
    v13 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 2) = sub_18227FA70;
    *(&v17 - 1) = v11;
    os_unfair_lock_lock(v13 + 24);
    sub_1820AC69C(&v13[4]);
    os_unfair_lock_unlock(v13 + 24);
    v14 = *(v9 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18227FA70;
    *(v15 + 24) = v11;
    aBlock[4] = sub_181F1B704;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F1B6B0;
    aBlock[3] = &block_descriptor_258_0;
    v16 = _Block_copy(aBlock);

    nw_connection_set_better_path_available_handler(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182275F70(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B170);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A140);
  sub_182AD36A8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18227606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B160);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182276184, 0, 0);
}

uint64_t sub_182276184()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A138);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_182276254;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 168, 0, 0, v2, v0 + 72);
}

uint64_t sub_182276254()
{

  if (v0)
  {
    v1 = sub_1820AC6E8;
  }

  else
  {
    v1 = sub_182276364;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_182276364()
{
  v1 = *(v0 + 168);
  if (v1 == 2)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD4248();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v21 = *(v0 + 96);
    v8 = sub_182AD3548();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v4, 1, 1, v8);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v21;
    *(v10 + 40) = v7;
    *(v10 + 48) = v1 & 1;
    *(v10 + 56) = v6;
    sub_181F5D9BC(v4, v5);
    LODWORD(v4) = (*(v9 + 48))(v5, 1, v8);

    v11 = *(v0 + 120);
    if (v4 == 1)
    {
      sub_181F49A88(*(v0 + 120), &unk_1EA839850);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v9 + 8))(v11, v8);
      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_182AD34A8();
        v13 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }

    v15 = **(v0 + 80);

    if (v13 | v12)
    {
      v16 = v0 + 168;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v12;
      *(v0 + 40) = v13;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 168;
    }

    v18 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_182276254;
    v20 = *(v0 + 136);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 72);
  }
}

uint64_t sub_182276718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 82) = a7;
  *(v8 + 81) = a6;
  *(v8 + 128) = a5;
  *(v8 + 136) = v7;
  *(v8 + 112) = a3;
  *(v8 + 120) = a4;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_182276748, 0, 0);
}

void sub_182276748()
{
  v1 = *(v0 + 112);
  v2 = (*(v0 + 120))();
  *(v0 + 88) = v2;
  if (v1)
  {

    MEMORY[0x1865D9F10](v3);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v4 = *(v0 + 88);
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 82);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  v7 = nw_content_context_create("sendContext");
  *(inited + 16) = v7;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v7, 0.5);
  *(inited + 64) = v5;
  nw_content_context_set_is_final(v7, v5);
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v7, *(v10 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v7, *(*(v4 + v11) + 16));
      v11 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_15:

  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_18209EC6C;
  v13 = *(v0 + 81);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);

  sub_182276998(v15, v14, inited, v13);
}

uint64_t sub_182276998(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1822769C0, 0, 0);
}

uint64_t sub_1822769C0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_18209EFB0;
  v6 = *(v0 + 40);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182B03730, v4, sub_18227E558, v6, 0, 0, v7);
}

uint64_t sub_182276AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_182276B04, 0, 0);
}

uint64_t sub_182276B04()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_18227ECF4, v4, v7);
}

uint64_t sub_182276C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_182276C4C, 0, 0);
}

uint64_t sub_182276C4C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_18227E9C0, v4, v7);
}

uint64_t sub_182276D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_182276D94, 0, 0);
}

uint64_t sub_182276D94()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F728;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_18227E59C, v4, v7);
}

uint64_t sub_182276EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_182276EDC, 0, 0);
}

uint64_t sub_182276EDC()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_18227E55C, v4, v7);
}

void sub_182276FF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_18227FA6C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_211;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1822772B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_18227FA6C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_181;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_182277578(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_18227FA6C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_109;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_182277838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_18227E574;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181BEBE54;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_96;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_182277AF8(uint64_t a1)
{
  v2 = *(a1 + 24);
  os_unfair_lock_lock((v2 + 48));
  sub_182277C1C((v2 + 16));
  os_unfair_lock_unlock((v2 + 48));
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 16);

    nw_connection_cancel(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_182277B68()
{
  v1 = *v0;
  v2 = v0[3];
  v4[2] = *(*v0 + 80);
  v4[3] = *(v1 + 88);
  type metadata accessor for Connection6.LockedState();
  sub_181F50DA0(sub_18227EE58, v4, v2);
  v3 = v0[2];
  if (v3)
  {
    nw_connection_cancel(*(v3 + 16));
  }

  else
  {
    __break(1u);
  }
}

void *sub_182277C1C(void *result)
{
  v1 = result;
  if (*result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  *v1 = 0;
  if (v1[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v1[1] = 0;
  if (v1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v1[2] = 0;
  if (v1[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900);
    sub_182AD3608();
  }

  v1[3] = 0;
  return result;
}

uint64_t Connection6.deinit()
{
  sub_182277B68();

  return v0;
}

uint64_t Connection6.__deallocating_deinit()
{
  Connection6.deinit();

  return swift_deallocClassInstance();
}

uint64_t Connection6.hashValue.getter()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_182277E48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_182277EC4()
{
  swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)();
}

uint64_t sub_182277F24()
{
  sub_182AD44E8();
  swift_getWitnessTable();
  ConnectionProtocol.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_182277FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_182277FD0, 0, 0);
}

uint64_t sub_182277FD0()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v3 = v0;
  v3[1] = sub_1820A1348;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001FLL, 0x8000000182BDD0B0, sub_18227E71C, v2, v4);
}

void sub_1822780E8(uint64_t a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = a3;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v13 = qword_1EA8433A8;
    v14 = *(v12 + 24);
    os_unfair_lock_lock((v14 + 96));
    v15 = *(v14 + 93);
    os_unfair_lock_unlock((v14 + 96));
    if ((v15 & 1) == 0)
    {
      NWConnection.start(queue:)(v13);
    }

    (*(v9 + 16))(v11, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v11, v8);
    v18 = *(v12 + 16);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18227E728;
    *(v19 + 24) = v17;
    aBlock[4] = sub_181D47AA0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_126_1;
    v20 = _Block_copy(aBlock);

    nw_connection_receive(v18, v22, a4, v20);
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182278354(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  if ((~a5 & 0xFF00000000) != 0)
  {
    v19 = HIDWORD(a5);
    v20 = a5;
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v22 = v20;
    *(v22 + 4) = v19;
LABEL_18:
    aBlock = v21;
    goto LABEL_19;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v21 = swift_allocError();
    *v25 = 22;
    *(v25 + 4) = 0;
    goto LABEL_18;
  }

  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = a2;
  }

  v8 = qword_1EA837040;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(a3 + 16);
  v10 = nw_content_context_copy_protocol_metadata(v9, *(off_1EA838800 + 4));
  if (v10)
  {
    v11 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v10);
    swift_unknownObjectRelease();
    if (v11)
    {
      type metadata accessor for NWProtocolWebSocket.Metadata();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v29 = *(v12 + 24);
        v13 = v12;
        swift_beginAccess();
        v26 = *(v13 + 42);
        v27 = *(a3 + 64);
        v28 = *(v13 + 40);
        v14 = swift_allocObject();
        *(v14 + 16) = MEMORY[0x1E69E7CC0];
        v15 = (v14 + 16);
        v35 = sub_181FE5010;
        v36 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v32 = 1107296256;
        v33 = sub_181F25CD0;
        v34 = &block_descriptor_131;
        v16 = _Block_copy(&aBlock);
        sub_181F49B58(v6, v7);

        nw_content_context_foreach_protocol_metadata(v9, v16);

        _Block_release(v16);

        swift_beginAccess();
        v17 = *v15;

        aBlock = v6;
        v32 = v7;
        LOBYTE(v33) = v29;
        BYTE4(v33) = v26;
        WORD1(v33) = v28;
        BYTE5(v33) = a4 & 1;
        BYTE6(v33) = v27;
        v34 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
        sub_182AD34C8();
      }
    }
  }

  sub_181F4B3B8();
  v23 = swift_allocError();
  *v24 = 22;
  *(v24 + 4) = 0;
  swift_willThrow();

  aBlock = v23;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  return sub_182AD34B8();
}

uint64_t sub_1822786BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1822786DC, 0, 0);
}

uint64_t sub_1822786DC()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE30);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_18227E9D8, v4, v2);
}

uint64_t sub_1822787C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1822787E0, 0, 0);
}

uint64_t sub_1822787E0()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_18227E750, v4, v2);
}

uint64_t sub_1822788C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1822788E4, 0, 0);
}

uint64_t sub_1822788E4()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v1 = v0;
  v1[1] = sub_1820A1C34;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_18227E460, v4, v2);
}

void sub_1822789C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A130);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18227E9E0;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_193_0;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_182278C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18227E758;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_143_0;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_182278E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18227E468;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181D47AA0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_34;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1822790D0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  if ((~a5 & 0xFF00000000) != 0)
  {
    v6 = HIDWORD(a5);
    v7 = a5;
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v9 = v7;
    *(v9 + 4) = v6;
LABEL_7:
    aBlock = v8;
    goto LABEL_16;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v8 = swift_allocError();
    *v10 = 22;
    *(v10 + 4) = 0;
    goto LABEL_7;
  }

  if (a2 >> 60 == 15)
  {
    swift_retain_n();
  }

  else
  {
    v13 = qword_1EA837040;
    swift_retain_n();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = *(a3 + 16);
    v15 = nw_content_context_copy_protocol_metadata(v14, *(off_1EA838800 + 4));
    if (v15)
    {
      v16 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v15);
      swift_unknownObjectRelease();
      if (v16)
      {
        type metadata accessor for NWProtocolWebSocket.Metadata();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v29 = *(v17 + 24);
          v18 = v17;
          swift_beginAccess();
          v26 = *(v18 + 42);
          v27 = *(a3 + 64);
          v28 = *(v18 + 40);
          v19 = swift_allocObject();
          *(v19 + 16) = MEMORY[0x1E69E7CC0];
          v20 = (v19 + 16);
          v35 = sub_181FE5010;
          v36 = v19;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_181F25CD0;
          v34 = &block_descriptor_148_1;
          v21 = _Block_copy(&aBlock);
          sub_181F49B44(a1, a2);

          nw_content_context_foreach_protocol_metadata(v14, v21);

          _Block_release(v21);

          swift_beginAccess();
          v22 = *v20;

          aBlock = a1;
          v32 = a2;
          LOBYTE(v33) = v29;
          BYTE4(v33) = v26;
          WORD1(v33) = v28;
          BYTE5(v33) = a4 & 1;
          BYTE6(v33) = v27;
          v34 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
          sub_182AD34C8();
        }
      }
    }
  }

  sub_181F4B3B8();
  v24 = swift_allocError();
  *v25 = 22;
  *(v25 + 4) = 0;
  swift_willThrow();

  aBlock = v24;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0);
  return sub_182AD34B8();
}

uint64_t Connection6<>.send(_:endOfStream:options:metadata:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 120) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 72) = *v7;
  *(v8 + 80) = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 88) = AssociatedTypeWitness;
  *(v8 + 96) = *(AssociatedTypeWitness - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 121) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_182279578, 0, 0);
}

uint64_t sub_182279578()
{
  if (*(v0 + 121))
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_1820A2EAC;
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 120);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_182276718(v6, v5, 0, v2, v3, 1, v4);
  }

  else
  {
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14 = *(v0 + 120);
    v20 = *(v0 + 32);
    v21 = *(v0 + 88);
    v19 = *(v0 + 24);
    *(v0 + 16) = *(v0 + 64);
    v15 = v13();
    (*(v12 + 40))(v14, v15, v10, v12);

    v16 = *(v12 + 24);
    WitnessTable = swift_getWitnessTable();
    v16(v0 + 16, v19, v20, v8, v11, WitnessTable, v10, v12);
    (*(v9 + 8))(v8, v21);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t Connection6<>.receive(atLeast:atMost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getAssociatedTypeWitness();
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_182279850, 0, 0);
}

uint64_t sub_182279850()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1820A31C4;
  v9 = v0[8];
  v8 = v0[9];

  return MEMORY[0x1EEE6DE18](v8, &unk_182B033C8, v5, sub_18227DAC4, v6, 0, 0, v9);
}

uint64_t sub_182279964(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1822799B4, 0, 0);
}

uint64_t sub_1822799B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_181FC1030;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000018, 0x8000000182BDD0D0, sub_18227ED24, v3, TupleTypeMetadata2);
}

void sub_182279B0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v28 = a5;
  v10 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v11 = sub_182AD34D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = a2[2];
  if (v15)
  {
    v26 = a3;
    v27 = a4;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v16 = qword_1EA8433A8;
    v17 = *(v15 + 24);
    os_unfair_lock_lock((v17 + 96));
    v18 = *(v17 + 93);
    os_unfair_lock_unlock((v17 + 96));
    if ((v18 & 1) == 0)
    {
      NWConnection.start(queue:)(v16);
    }

    (*(v12 + 16))(v14, a1, v11);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = swift_allocObject();
    v21 = v28;
    *(v20 + 16) = v10;
    *(v20 + 24) = v21;
    (*(v12 + 32))(v20 + v19, v14, v11);
    v22 = *(v15 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_18227ED30;
    *(v23 + 24) = v20;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_223_0;
    v24 = _Block_copy(aBlock);

    nw_connection_receive(v22, v26, v27, v24);
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_182279DF4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a4;
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v39 - v20;
  if (*(a5 + 4) == 255)
  {
    if (a2 >> 60 == 15)
    {
      if (a3)
      {
        v44 = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = MEMORY[0x1E69E7CC0];
        v23 = (v22 + 16);
        v43 = *(a3 + 16);
        v46 = TupleTypeMetadata2;
        v52 = sub_181FE5010;
        v53 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_181F25CD0;
        v51 = &block_descriptor_228;
        v24 = _Block_copy(&aBlock);
        v45 = a6;

        nw_content_context_foreach_protocol_metadata(v43, v24);
        _Block_release(v24);
        swift_beginAccess();
        v25 = *v23;

        (*(a8 + 40))(v47 & 1, v25, a7, a8);

        v26 = *(v46 + 48);
        *v17 = xmmword_182AE7580;
        (*(v44 + 32))(&v17[v26], v21, AssociatedTypeWitness);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
        sub_182AD34D8();
        sub_182AD34C8();
      }
    }

    else if (a3)
    {
      v44 = v19;
      v31 = swift_allocObject();
      v43 = v31;
      v45 = a6;
      v31[2].isa = MEMORY[0x1E69E7CC0];
      v40 = *(a3 + 16);
      v41 = v31 + 2;
      v52 = sub_181FE5010;
      v53 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_181F25CD0;
      v51 = &block_descriptor_233;
      v32 = _Block_copy(&aBlock);
      v42 = a3;
      v33 = v32;
      v39[1] = v53;
      v34 = v46;
      sub_181F49B44(v46, a2);
      sub_181F49B44(v34, a2);

      nw_content_context_foreach_protocol_metadata(v40, v33);
      _Block_release(v33);
      v35 = v41;
      swift_beginAccess();
      isa = v35->isa;

      (*(a8 + 40))(v47 & 1, isa, a7, a8);

      v37 = *(TupleTypeMetadata2 + 48);
      *v17 = v34;
      *(v17 + 1) = a2;
      (*(v44 + 32))(&v17[v37], v21, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
      sub_182AD34D8();
      sub_182AD34C8();
      sub_181D9D680(v34, a2);
    }

    sub_181F4B3B8();
    v29 = swift_allocError();
    *v38 = 54;
    *(v38 + 4) = 0;
  }

  else
  {
    v28 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v29 = swift_allocError();
    *v30 = v28;
    *(v30 + 4) = BYTE4(v28);
  }

  aBlock = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD34D8();
  return sub_182AD34B8();
}

uint64_t Connection6<>.receive(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(*v3 + 80);
  *(v4 + 16) = v3;
  v13 = (*(a3 + 32) + **(a3 + 32));
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v4;
  v10[1] = sub_1820A3FE4;

  return v13(a1, v4 + 16, a2, a2, v8, WitnessTable, v9, a3);
}

uint64_t Connection6.send<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18227A55C, 0, 0);
}

uint64_t sub_18227A55C()
{
  v1 = (*(v0 + 104))();
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  v3 = nw_content_context_create("sendContext");
  *(inited + 16) = v3;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v4 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v3, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v3, 0);
  v5 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v1 >> 62)
  {
    v5 = sub_182AD3EB8();
    v13 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = MEMORY[0x1865DA790](i, v1);
      nw_content_context_set_metadata_for_protocol(v3, *(v15 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v3, *(*(v1 + v16) + 16));
      v16 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_10:

  v17 = *(v0 + 120);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v20 + 32) = v18;
  *(v20 + 40) = inited;
  *(v20 + 48) = 1;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1820A43A4;
  v9 = *(v0 + 120);
  v6 = &unk_182B033E8;
  v8 = sub_18227FA2C;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v7 = v20;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t Connection6.receive<>()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18227A7C4, 0, 0);
}

{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18227C730, 0, 0);
}

{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18227CFCC, 0, 0);
}

uint64_t sub_18227A7C4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE30);
  *v1 = v0;
  v1[1] = sub_1820A46BC;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182B03400, v3, sub_18227FA2C, v3, 0, 0, v2);
}

uint64_t Connection6.send<>(_:options:metadata:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 96) = a1;
  *(v6 + 81) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_18227A8DC, 0, 0);
}

{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 96) = a1;
  *(v6 + 81) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_18227ACA4, 0, 0);
}

uint64_t sub_18227A8DC()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  v4 = sub_181F76154(v2, v3);
  v6 = v5;
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  if (v1)
  {
    v7 = *(v0 + 112);
    type metadata accessor for NWProtocolWebSocket.Metadata();
    v8 = swift_allocObject();
    *(v0 + 152) = v8;
    *(v8 + 24) = 1;
    *(v8 + 40) = 4;
    *(v8 + 42) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = nw_ws_create_metadata(nw_ws_opcode_text);
    *(v0 + 88) = v7();

    MEMORY[0x1865D9F10](v9);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v10 = *(v0 + 88);
    type metadata accessor for NWConnection.ContentContext();
    inited = swift_initStackObject();
    *(v0 + 160) = inited;
    v12 = nw_content_context_create("sendContext");
    *(inited + 16) = v12;
    *(inited + 24) = 0x746E6F43646E6573;
    *(inited + 32) = 0xEB00000000747865;
    *(inited + 40) = 0;
    v13 = swift_unknownObjectRetain();
    nw_content_context_set_expiration_milliseconds(v13, 0);
    *(inited + 48) = 0x3FE0000000000000;
    nw_content_context_set_relative_priority(v12, 0.5);
    *(inited + 64) = 0;
    nw_content_context_set_is_final(v12, 0);
    v14 = swift_unknownObjectRelease();
    *(inited + 56) = 0;
    if (v10 >> 62)
    {
      v14 = sub_182AD3EB8();
      v22 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_16;
      }
    }

    if (v22 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE18](v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        v24 = MEMORY[0x1865DA790](i, v10);
        nw_content_context_set_metadata_for_protocol(v12, *(v24 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v29 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v12, *(*(v10 + v29) + 16));
        v29 += 8;
        --v22;
      }

      while (v22);
    }

LABEL_16:

    v30 = *(v0 + 128);
    v31 = swift_task_alloc();
    *(v0 + 168) = v31;
    *(v31 + 16) = v30;
    *(v31 + 24) = v4;
    *(v31 + 32) = v6;
    *(v31 + 40) = inited;
    *(v31 + 48) = 1;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_1820A517C;
    v18 = *(v0 + 128);
    v15 = &unk_182B03418;
    v17 = sub_18227FA2C;
    v21 = MEMORY[0x1E69E7CA8] + 8;
    v16 = v31;
    v19 = 0;
    v20 = 0;

    return MEMORY[0x1EEE6DE18](v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v25 = *(v0 + 128);
  v26 = (*(v0 + 112))();
  sub_1820A5528(v25, v4, v6, 0x1FF00000001, v26);
  sub_181C1F2E4(v4, v6);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_18227ACA4()
{
  if (*(v0 + 81))
  {
    v1 = *(v0 + 112);
    type metadata accessor for NWProtocolWebSocket.Metadata();
    v2 = swift_allocObject();
    *(v0 + 136) = v2;
    *(v2 + 24) = 2;
    *(v2 + 40) = 4;
    *(v2 + 42) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
    *(v0 + 88) = v1();

    MEMORY[0x1865D9F10](v3);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v4 = *(v0 + 88);
    type metadata accessor for NWConnection.ContentContext();
    inited = swift_initStackObject();
    *(v0 + 144) = inited;
    v6 = nw_content_context_create("sendContext");
    *(inited + 16) = v6;
    *(inited + 24) = 0x746E6F43646E6573;
    *(inited + 32) = 0xEB00000000747865;
    *(inited + 40) = 0;
    v7 = swift_unknownObjectRetain();
    nw_content_context_set_expiration_milliseconds(v7, 0);
    *(inited + 48) = 0x3FE0000000000000;
    nw_content_context_set_relative_priority(v6, 0.5);
    *(inited + 64) = 0;
    nw_content_context_set_is_final(v6, 0);
    v8 = swift_unknownObjectRelease();
    *(inited + 56) = 0;
    if (v4 >> 62)
    {
      v8 = sub_182AD3EB8();
      v16 = v8;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x1865DA790](i, v4);
        nw_content_context_set_metadata_for_protocol(v6, *(v18 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v25 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v6, *(*(v4 + v25) + 16));
        v25 += 8;
        --v16;
      }

      while (v16);
    }

LABEL_16:

    v26 = *(v0 + 128);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = swift_task_alloc();
    *(v0 + 152) = v29;
    *(v29 + 16) = v26;
    *(v29 + 24) = v28;
    *(v29 + 32) = v27;
    *(v29 + 40) = inited;
    *(v29 + 48) = 1;
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1820A5A08;
    v12 = *(v0 + 128);
    v9 = &unk_182B03428;
    v11 = sub_18227FA2C;
    v15 = MEMORY[0x1E69E7CA8] + 8;
    v10 = v29;
    v13 = 0;
    v14 = 0;

    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v19 = *(v0 + 128);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  v22 = (*(v0 + 112))();
  sub_1820A5528(v19, v21, v20, 0x1FF00000002, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t Connection6.startSend<>(_:metadata:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18227B034, 0, 0);
}

{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_18227B814, 0, 0);
}

uint64_t sub_18227B034()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  *(v4 + 56) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1820A5C58;
  v7 = *(v0 + 64);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182B03440, v4, sub_18227FA2C, v7, 0, 0, v8);
}

uint64_t sub_18227B13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18227B168, 0, 0);
}

uint64_t sub_18227B168()
{
  *(v0 + 88) = (*(v0 + 96))();
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  *(v1 + 24) = 1;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_text);
  MEMORY[0x1865D9F10]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v2 = *(v0 + 88);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 152) = inited;
  v4 = nw_content_context_create("WebSocket");
  *(inited + 16) = v4;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v4, 0);
  *(inited + 56) = 0;
  if (v2 >> 62)
  {
    v5 = sub_182AD3EB8();
    v13 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = MEMORY[0x1865DA790](i, v2);
      nw_content_context_set_metadata_for_protocol(v4, *(v15 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v4, *(*(v2 + v16) + 16));
      v16 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_12:

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);

  v20 = sub_181F76154(v18, v17);
  v22 = v21;
  *(v0 + 160) = v20;
  *(v0 + 168) = v21;
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = inited;
  *(v23 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_18227B448;
  v9 = *(v0 + 112);
  v6 = &unk_182B03770;
  v8 = sub_18227FA2C;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v7 = v23;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_18227B448()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1820A6450;
  }

  else
  {

    v2 = sub_18227B564;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18227B564()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  sub_181C1F2E4(v0[20], v0[21]);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1820A6334;

  return v7(&unk_182B03780, v4);
}

uint64_t sub_18227B698(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18227B6C0, 0, 0);
}

uint64_t sub_18227B6C0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  v6 = sub_181F76154(v4, v5);
  v8 = v7;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(v9 + 40) = v1;
  *(v9 + 48) = v3;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1820A6704;
  v11 = *(v0 + 32);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v10, &unk_182B03788, v9, sub_18227FA2C, v11, 0, 0, v12);
}

uint64_t sub_18227B814()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1820A6A10;
  v5 = *(v0 + 48);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v4, &unk_182B03458, v2, sub_18227FA2C, v5, 0, 0, v6);
}

uint64_t sub_18227B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18227B930, 0, 0);
}

void sub_18227B930()
{
  *(v0 + 88) = (*(v0 + 96))();
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  *(v1 + 24) = 2;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
  MEMORY[0x1865D9F10]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v2 = *(v0 + 88);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  v4 = nw_content_context_create("WebSocket");
  *(inited + 16) = v4;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v4, 0);
  *(inited + 56) = 0;
  if (v2 >> 62)
  {
    v5 = sub_182AD3EB8();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = MEMORY[0x1865DA790](i, v2);
      nw_content_context_set_metadata_for_protocol(v4, *(v7 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v4, *(*(v2 + v8) + 16));
      v8 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_12:

  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = inited;
  v13 = (v10 + *v10);
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_1820A6E3C;

  v13(&unk_182B03760, v11);
}

uint64_t sub_18227BC18(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18227BC40, 0, 0);
}

uint64_t sub_18227BC40()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 72);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1820A7190;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182B03768, v4, sub_18227FA2C, v6, 0, 0, v7);
}

uint64_t Connection6.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18227BD80, 0, 0);
}

uint64_t sub_18227BD80()
{
  v1 = v0[14];
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 24) = 4;
  *(v2 + 40) = 4;
  *(v2 + 42) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = nw_ws_create_metadata(nw_ws_opcode_ping);
  v0[11] = v1();

  MEMORY[0x1865D9F10](v3);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v4 = v0[11];
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v0[18] = inited;
  v6 = nw_content_context_create("sendContext");
  *(inited + 16) = v6;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v7 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v6, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v6, 0);
  v8 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    v16 = v8;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v6, *(v18 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v6, *(*(v4 + v19) + 16));
      v19 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_12:

  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];
  v23 = swift_task_alloc();
  v0[19] = v23;
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *(v23 + 32) = v21;
  *(v23 + 40) = inited;
  *(v23 + 48) = 1;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1820A75B0;
  v12 = v0[16];
  v9 = &unk_182B03468;
  v11 = sub_18227FA2C;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v10 = v23;
  v13 = 0;
  v14 = 0;

  return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Connection6.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18227C084, 0, 0);
}

uint64_t sub_18227C084()
{
  v1 = v0[14];
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 24) = 5;
  *(v2 + 40) = 4;
  *(v2 + 42) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = nw_ws_create_metadata(nw_ws_opcode_pong);
  v0[11] = v1();

  MEMORY[0x1865D9F10](v3);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v4 = v0[11];
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v0[18] = inited;
  v6 = nw_content_context_create("sendContext");
  *(inited + 16) = v6;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v7 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v6, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v6, 0);
  v8 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    v16 = v8;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v6, *(v18 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v6, *(*(v4 + v19) + 16));
      v19 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_12:

  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];
  v23 = swift_task_alloc();
  v0[19] = v23;
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *(v23 + 32) = v21;
  *(v23 + 40) = inited;
  *(v23 + 48) = 1;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1820A5A08;
  v12 = v0[16];
  v9 = &unk_182B03478;
  v11 = sub_18227FA2C;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v10 = v23;
  v13 = 0;
  v14 = 0;

  return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Connection6.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = v5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 120) = a2;
  *(v6 + 82) = *a1;
  *(v6 + 81) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_18227C39C, 0, 0);
}

uint64_t sub_18227C39C()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 82);
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v3 = swift_allocObject();
  *(v0 + 160) = v3;
  *(v3 + 24) = 3;
  *(v3 + 40) = 4;
  *(v3 + 42) = 0;
  *(v3 + 32) = 0;
  metadata = nw_ws_create_metadata(nw_ws_opcode_close);
  *(v3 + 16) = metadata;
  swift_beginAccess();
  *(v3 + 40) = v2;
  *(v3 + 42) = v1;
  v5 = *(v0 + 82);
  if (!v1)
  {
    v5 = word_182B03852[v5];
  }

  v6 = *(v0 + 128);
  nw_ws_metadata_set_close_code(metadata, v5);
  if (v6)
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    v6 = sub_181F76154(v7, v8);
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  *(v0 + 168) = v6;
  *(v0 + 176) = v10;
  v11 = *(v0 + 136);

  *(v0 + 112) = v11(v12);

  MEMORY[0x1865D9F10](v13);
  if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v14 = *(v0 + 112);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 184) = inited;
  v16 = nw_content_context_create("sendContext");
  *(inited + 16) = v16;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v17 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v17, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v16, 0.5);
  *(inited + 64) = 1;
  nw_content_context_set_is_final(v16, 1);
  v18 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v14 >> 62)
  {
    v18 = sub_182AD3EB8();
    v26 = v18;
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v18, v19, v20, v21, v22, v23, v24, v25);
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v26; ++i)
    {
      v28 = MEMORY[0x1865DA790](i, v14);
      nw_content_context_set_metadata_for_protocol(v16, *(v28 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v29 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v16, *(*(v14 + v29) + 16));
      v29 += 8;
      --v26;
    }

    while (v26);
  }

LABEL_17:

  v30 = *(v0 + 152);
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v6;
  *(v31 + 32) = v10;
  *(v31 + 40) = inited;
  *(v31 + 48) = 1;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_1820A7E84;
  v22 = *(v0 + 152);
  v19 = &unk_182B03488;
  v21 = sub_18227FA2C;
  v25 = MEMORY[0x1E69E7CA8] + 8;
  v20 = v31;
  v23 = 0;
  v24 = 0;

  return MEMORY[0x1EEE6DE18](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_18227C730()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v1 = v0;
  v1[1] = sub_1820A81F0;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182B034A0, v3, sub_18227FA2C, v3, 0, 0, v2);
}

uint64_t Connection6.startReceive<>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18227C83C, 0, 0);
}

uint64_t sub_18227C83C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1820A841C;
  v4 = *(v0 + 32);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v3, &unk_182B034B8, v2, sub_18227E008, v4, 0, 0, v5);
}

uint64_t sub_18227C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18227C954, 0, 0);
}

uint64_t sub_18227C954()
{
  v4 = (v0[2] + *v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1820A865C;
  v2 = v0[4];

  return v4(&unk_182B03740, v2);
}

uint64_t sub_18227CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18227CA78, 0, 0);
}

uint64_t sub_18227CA78()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40);
  *v5 = v0;
  v5[1] = sub_1820A88DC;
  v7 = v0[9];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182B03750, v4, sub_18227FA2C, v7, 0, 0, v6);
}

uint64_t Connection6.send<>(_:type:lastMessage:options:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 81) = a4;
  *(v8 + 112) = a3;
  *(v8 + 120) = a6;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  *(v8 + 82) = *a5;
  return MEMORY[0x1EEE6DFA0](sub_18227CBBC, 0, 0);
}

uint64_t sub_18227CBBC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 104);
  v10 = v9 >> 62;
  if (*(v8 + 82))
  {
    if ((v9 >> 62) <= 1)
    {
      if (!v10)
      {
        a2 = BYTE6(v9);
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v10 != 2)
    {
      a2 = 0;
      goto LABEL_21;
    }

    v10 = *(*(v8 + 96) + 16);
    v12 = *(*(v8 + 96) + 24);
    a2 = v12 - v10;
    if (!__OFSUB__(v12, v10))
    {
LABEL_21:
      v22 = *(v8 + 120);
      *(v8 + 144) = _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(*(v8 + 112), a2);
      *(v8 + 88) = v22();

      MEMORY[0x1865D9F10](v23);
      if (*((*(v8 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_182AD3408();
      }

      v24 = *(v8 + 81);
      sub_182AD3448();
      v25 = *(v8 + 88);
      type metadata accessor for NWConnection.ContentContext();
      inited = swift_initStackObject();
      *(v8 + 152) = inited;
      v27 = nw_content_context_create("sendContext");
      *(inited + 16) = v27;
      *(inited + 24) = 0x746E6F43646E6573;
      *(inited + 32) = 0xEB00000000747865;
      *(inited + 40) = 0;
      v28 = swift_unknownObjectRetain();
      nw_content_context_set_expiration_milliseconds(v28, 0);
      *(inited + 48) = 0x3FE0000000000000;
      nw_content_context_set_relative_priority(v27, 0.5);
      *(inited + 64) = v24;
      nw_content_context_set_is_final(v27, v24);
      a1 = swift_unknownObjectRelease();
      *(inited + 56) = 0;
      if (v25 >> 62)
      {
        a1 = sub_182AD3EB8();
        v29 = a1;
        if (a1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
LABEL_25:
          if (v29 >= 1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v29; ++i)
              {
                v31 = MEMORY[0x1865DA790](i, v25);
                nw_content_context_set_metadata_for_protocol(v27, *(v31 + 16));
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v40 = 32;
              do
              {
                nw_content_context_set_metadata_for_protocol(v27, *(*(v25 + v40) + 16));
                v40 += 8;
                --v29;
              }

              while (v29);
            }

            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_39:

      v41 = *(v8 + 136);
      v43 = *(v8 + 96);
      v42 = *(v8 + 104);
      v44 = swift_task_alloc();
      *(v8 + 160) = v44;
      *(v44 + 16) = v41;
      *(v44 + 24) = v43;
      *(v44 + 32) = v42;
      *(v44 + 40) = inited;
      *(v44 + 48) = 1;
      a1 = swift_task_alloc();
      *(v8 + 168) = a1;
      *a1 = v8;
      a1[1] = sub_1820A8E68;
      a5 = *(v8 + 136);
      a2 = &unk_182B034D0;
      a4 = sub_18227FA2C;
      a8 = MEMORY[0x1E69E7CA8] + 8;
      a3 = v44;
      a6 = 0;
      a7 = 0;

      return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    __break(1u);
  }

  else if ((v9 >> 62) <= 1)
  {
    if (v10)
    {
      v19 = *(v8 + 96);
      v20 = *(v8 + 100);
      v17 = __OFSUB__(v20, v19);
      v21 = v20 - v19;
      if (v17)
      {
LABEL_46:
        __break(1u);
        return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      v11 = v21;
    }

    else
    {
      v11 = BYTE6(v9);
    }

    goto LABEL_31;
  }

  if (v10 == 2)
  {
    v13 = *(*(v8 + 96) + 16);
    v14 = *(*(v8 + 96) + 24);
    v11 = v14 - v13;
    if (__OFSUB__(v14, v13))
    {
      __break(1u);
LABEL_16:
      v15 = *(v8 + 96);
      v16 = *(v8 + 100);
      v17 = __OFSUB__(v16, v15);
      v18 = v16 - v15;
      if (v17)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      a2 = v18;
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_31:
  v32 = *(v8 + 136);
  v33 = *(v8 + 81);
  v34 = *(v8 + 112);
  v35 = *(v8 + 96);
  v36 = (*(v8 + 120))();
  if (v33)
  {
    v37 = 257;
  }

  else
  {
    v37 = 1;
  }

  sub_1820A9088(v32, v35, v9, v34, v11, v37, v36);

  v38 = *(v8 + 8);

  return v38();
}

uint64_t sub_18227CFCC()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120);
  *v1 = v0;
  v1[1] = sub_1820A939C;
  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182B034E8, v3, sub_18227FA2C, v3, 0, 0, v2);
}

uint64_t Connection6<>.messages.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x1EEE6DBA8](&unk_182B034F8, v3, TupleTypeMetadata2);
}

{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  swift_getAssociatedTypeWitness();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x1EEE6DBA8](&unk_182B03508, v3, TupleTypeMetadata2);
}