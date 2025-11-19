uint64_t sub_1DF7878C4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1701869940;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_36_0();
  }

  return v8 & 1;
}

uint64_t sub_1DF78794C(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007372;
  v3 = 0x6574656D61726170;
  v4 = a1;
  v5 = 0x6574656D61726170;
  v6 = 0xEA00000000007372;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1852139639;
      break;
    case 2:
      v5 = 0x736977726568746FLL;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0xD000000000000012;
      v6 = 0x80000001DF7B9CE0;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v5 = 0x65756C6176;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1852139639;
      break;
    case 2:
      v3 = 0x736977726568746FLL;
      v2 = 0xE900000000000065;
      break;
    case 3:
      OUTLINED_FUNCTION_38_0();
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x65756C6176;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_55_0();
  }

  return v8 & 1;
}

uint64_t sub_1DF787AC4(char a1, char a2)
{
  if (*&a010_0[8 * a1] == *&a010_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DF7AD934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DF787B2C(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69616D6F64;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E69616D6F64;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F69737265765FLL;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x73616D656863735FLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_30_0();
      v3 = 0xEB00000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6E6F69737265765FLL;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x73616D656863735FLL;
      break;
    case 3:
      OUTLINED_FUNCTION_28_0();
      v6 = 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_36_0();
  }

  return v8 & 1;
}

uint64_t sub_1DF787C50()
{
  OUTLINED_FUNCTION_62_0();
  v2 = 0x704F65676E616863;
  v4 = v3;
  v5 = 0x704F65676E616863;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v7 = "or";
      goto LABEL_6;
    case 2:
      v7 = "favoriteOperation";
      goto LABEL_6;
    case 3:
      v7 = "movementDirection";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000011;
      break;
    case 4:
      v6 = 0x80000001DF7B9D70;
      v5 = 0xD00000000000001DLL;
      break;
    case 5:
      v5 = 0x7265704F6F646E75;
      v6 = 0xED00006E6F697461;
      break;
    case 6:
      v5 = 0x6542657A69736572;
      v6 = 0xEE00726F69766168;
      break;
    case 7:
      v5 = 0x616865426D6F6F7ALL;
      v6 = 0xEC000000726F6976;
      break;
    case 8:
      v6 = 0x80000001DF7B9DC0;
      v5 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v8 = "or";
      goto LABEL_16;
    case 2:
      v8 = "favoriteOperation";
      goto LABEL_16;
    case 3:
      v8 = "movementDirection";
LABEL_16:
      v0 = v8 | 0x8000000000000000;
      v2 = 0xD000000000000011;
      break;
    case 4:
      v0 = 0x80000001DF7B9D70;
      v2 = 0xD00000000000001DLL;
      break;
    case 5:
      OUTLINED_FUNCTION_71_0();
      break;
    case 6:
      OUTLINED_FUNCTION_70_0();
      break;
    case 7:
      v2 = 0x616865426D6F6F7ALL;
      v0 = 0xEC000000726F6976;
      break;
    case 8:
      v0 = 0x80000001DF7B9DC0;
      v2 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_55_0();
  }

  return v10 & 1;
}

uint64_t sub_1DF787E74(unsigned __int8 a1, char a2)
{
  v2 = 1701667182;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667182;
  switch(v4)
  {
    case 1:
      v5 = 1701869940;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x656C746974;
      break;
    case 3:
      v5 = 0x676E697865646E69;
      v6 = 7955787;
      goto LABEL_6;
    case 4:
      v5 = 0x6174616470557369;
      v6 = 6646882;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1701869940;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v2 = 0x656C746974;
      break;
    case 3:
      v2 = 0x676E697865646E69;
      v8 = 7955787;
      goto LABEL_12;
    case 4:
      v2 = 0x6174616470557369;
      v8 = 6646882;
LABEL_12:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_36_0();
  }

  return v10 & 1;
}

uint64_t sub_1DF787FD8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 1702060386;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 1702060386;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_36_0();
  }

  return v8 & 1;
}

uint64_t sub_1DF788064(unsigned __int8 a1, char a2)
{
  v3 = 0xD000000000000010;
  v4 = 0xE200000000000000;
  v5 = 25705;
  v6 = a1;
  v7 = "_requiredEntitlements";
  v8 = "_systemProtocols";
  v9 = "_displayRepresentation";
  v10 = "domainIdentifier";
  switch(v6)
  {
    case 1:
      v11 = "datable";
      goto LABEL_4;
    case 2:
      v4 = 0x80000001DF7B9C60;
      v5 = 0xD000000000000016;
      break;
    case 3:
      v5 = 0x747265706F72705FLL;
      v4 = 7562601;
      goto LABEL_8;
    case 4:
      v11 = "ments";
LABEL_4:
      v4 = v11 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_30_0();
LABEL_8:
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v4 = 0x80000001DF7B9C80;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v12 = 0xE200000000000000;
  v13 = 25705;
  switch(a2)
  {
    case 1:
      v14 = v10 - 32;
      goto LABEL_13;
    case 2:
      v12 = (v9 - 32) | 0x8000000000000000;
      v13 = v3 + 6;
      break;
    case 3:
      v13 = 0x747265706F72705FLL;
      v12 = 7562601;
      goto LABEL_17;
    case 4:
      v14 = v8 - 32;
LABEL_13:
      v12 = v14 | 0x8000000000000000;
      v13 = 0xD000000000000010;
      break;
    case 5:
      OUTLINED_FUNCTION_28_0();
LABEL_17:
      v12 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 6:
      v12 = (v7 - 32) | 0x8000000000000000;
      v13 = v3 + 5;
      break;
    default:
      break;
  }

  if (v5 == v13 && v4 == v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_36_0();
  }

  return v16 & 1;
}

uint64_t sub_1DF7881FC(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69616D6F64;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x616D726F666E6F63;
    }

    else
    {
      v4 = 0x696C696269736976;
    }

    if (v3 == 1)
    {
      v5 = 0xEF6570795465636ELL;
    }

    else
    {
      v5 = 0xEA00000000007974;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6E69616D6F64;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x616D726F666E6F63;
    }

    else
    {
      v2 = 0x696C696269736976;
    }

    if (a2 == 1)
    {
      v6 = 0xEF6570795465636ELL;
    }

    else
    {
      v6 = 0xEA00000000007974;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_36_0();
  }

  return v8 & 1;
}

uint64_t sub_1DF788308(unsigned __int8 a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = a1;
  v6 = "_requiredEntitlements";
  v7 = "_displayRepresentation";
  v8 = "domainIdentifier";
  switch(v5)
  {
    case 1:
      v4 = 0xD000000000000010;
      v3 = 0x80000001DF7B9C40;
      break;
    case 2:
      v3 = 0x80000001DF7B9C60;
      v4 = 0xD000000000000016;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x73657361635FLL;
      break;
    case 4:
      v3 = 0x80000001DF7B9C80;
      v4 = 0xD000000000000015;
      break;
    case 5:
      v4 = OUTLINED_FUNCTION_30_0();
      v3 = 0xEB00000000000000;
      break;
    default:
      break;
  }

  v9 = 0xE200000000000000;
  v10 = 25705;
  switch(a2)
  {
    case 1:
      v10 = 0xD000000000000010;
      v9 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v9 = (v7 - 32) | 0x8000000000000000;
      v10 = 0xD000000000000016;
      break;
    case 3:
      v9 = 0xE600000000000000;
      v10 = 0x73657361635FLL;
      break;
    case 4:
      v9 = (v6 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_50_0();
      v10 = v12 | v11;
      break;
    case 5:
      OUTLINED_FUNCTION_28_0();
      v9 = 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v4 == v10 && v3 == v9)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_36_0();
  }

  return v14 & 1;
}

uint64_t sub_1DF78849C(char a1, char a2)
{
  v3 = sub_1DF7A33F4(a1);
  v5 = v4;
  if (v3 == sub_1DF7A33F4(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_36_0();
  }

  return v8 & 1;
}

uint64_t sub_1DF788514()
{
  sub_1DF7AD404();
}

uint64_t sub_1DF788574(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_38_0();
      break;
    default:
      break;
  }

  sub_1DF7AD404();
}

uint64_t sub_1DF78866C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8;
  }

  return MEMORY[0x1E12DEC80](v2);
}

uint64_t sub_1DF7886F0(uint64_t a1, char a2)
{
  v2 = *&a010_0[8 * a2];
  sub_1DF7AD404();
}

uint64_t sub_1DF788730()
{
  OUTLINED_FUNCTION_64_0();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_19_0();
      break;
    default:
      break;
  }

  sub_1DF7AD404();
}

uint64_t sub_1DF7887C8()
{
  OUTLINED_FUNCTION_62_0();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
      OUTLINED_FUNCTION_38_0();
      break;
    case 5:
      OUTLINED_FUNCTION_71_0();
      break;
    case 6:
      OUTLINED_FUNCTION_70_0();
      break;
    default:
      break;
  }

  sub_1DF7AD404();
}

uint64_t sub_1DF788900()
{
  sub_1DF7AD404();
}

uint64_t sub_1DF7889C8()
{
  OUTLINED_FUNCTION_67_0();
  switch(v0)
  {
    case 1:
    case 2:
    case 4:
      OUTLINED_FUNCTION_38_0();
      break;
    case 5:
      OUTLINED_FUNCTION_19_0();
      break;
    case 6:
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_50_0();
      break;
    default:
      break;
  }

  sub_1DF7AD404();
}

uint64_t sub_1DF788AA8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_64_0();
  }

  sub_1DF7AD404();
}

uint64_t sub_1DF788B34()
{
  OUTLINED_FUNCTION_67_0();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_38_0();
      break;
    case 4:
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_50_0();
      break;
    case 5:
      OUTLINED_FUNCTION_19_0();
      break;
    default:
      break;
  }

  sub_1DF7AD404();
}

uint64_t sub_1DF788BF4(uint64_t a1, char a2)
{
  sub_1DF7A33F4(a2);
  sub_1DF7AD404();
}

uint64_t sub_1DF788C70(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_34_0(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_57_0();
      do
      {
        sub_1DF76CAA8(v2, v11);
        sub_1DF76CAA8(v3, v10);
        v8 = sub_1DF798EB8(v11, v10);
        sub_1DF76CA4C(v10);
        sub_1DF76CA4C(v11);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v2 += 40;
        v3 += 40;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1DF788D24()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DF7AD354();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *(v3 + 16);
  if (v15 == *(v1 + 16) && v15 && v3 != v1)
  {
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = v3 + v16;
    v18 = v1 + v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v21 = (v19 - 8);
    v28 = *(v19 + 56);
    v29 = v20;
    while (1)
    {
      v22 = v29;
      v29(v14, v17, v4);
      if (!v15)
      {
        break;
      }

      v23 = v19;
      v22(v12, v18, v4);
      sub_1DF790798(&qword_1ECE54190, MEMORY[0x1E69E8450]);
      v24 = sub_1DF7AD3A4();
      v25 = *v21;
      v26 = OUTLINED_FUNCTION_13_0();
      v25(v26);
      (v25)(v14, v4);
      if (v24)
      {
        v18 += v28;
        v17 += v28;
        v27 = v15-- == 1;
        v19 = v23;
        if (!v27)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_14();
  }
}

uint64_t sub_1DF788F18(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_34_0(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_57_0();
      do
      {
        sub_1DF76A114(v2, v11);
        sub_1DF76A114(v3, v10);
        v8 = static IntentSchema.== infix(_:_:)(v11, v10);
        sub_1DF76A0C0(v10);
        sub_1DF76A0C0(v11);
        if ((v8 & 1) == 0)
        {
          break;
        }

        v2 += 272;
        v3 += 272;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1DF788FD4()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = v1 + 32;
    v30 = v1 + 32;
    v31 = v0 + 32;
    do
    {
      memcpy(__dst, (v4 + 88 * v3), sizeof(__dst));
      memcpy(v40, (v5 + 88 * v3), 0x58uLL);
      v6 = __dst[0] == v40[0] && __dst[1] == v40[1];
      if (!v6 && (sub_1DF7AD934() & 1) == 0)
      {
        break;
      }

      v7 = __dst[8] == v40[8] && __dst[9] == v40[9];
      if (!v7 && (sub_1DF7AD934() & 1) == 0)
      {
        break;
      }

      v8 = __dst[2] == v40[2] && __dst[3] == v40[3];
      if (!v8 && (sub_1DF7AD934() & 1) == 0)
      {
        break;
      }

      v9 = __dst[4];
      v10 = v40[4];
      v11 = *(__dst[4] + 16);
      if (v11 != *(v40[4] + 16))
      {
        break;
      }

      if (v11 && __dst[4] != v40[4])
      {
        v12 = (__dst[4] + 32);
        v13 = (v40[4] + 32);
        sub_1DF783BD0(__dst, v38);
        sub_1DF783BD0(v40, v38);
        v14 = 0;
        while (v14 < *(v9 + 16))
        {
          memcpy(v37, v12, sizeof(v37));
          if (v14 >= *(v10 + 16))
          {
            goto LABEL_75;
          }

          memcpy(v38, v13, sizeof(v38));
          v15 = v37[0] == v38[0] && v37[1] == v38[1];
          if (!v15 && (sub_1DF7AD934() & 1) == 0)
          {
            goto LABEL_72;
          }

          memcpy(v34, &v37[2], 0x59uLL);
          memcpy(__src, &v38[2], 0x59uLL);
          sub_1DF77B7A0(v37, v32);
          sub_1DF77B7A0(v38, v32);
          sub_1DF770608(&v37[2], v32);
          sub_1DF770608(&v38[2], v32);
          v16 = static ValueType.== infix(_:_:)(v34, __src);
          memcpy(v35, __src, 0x59uLL);
          sub_1DF77A414(v35);
          memcpy(v36, v34, 0x59uLL);
          sub_1DF77A414(v36);
          if (!v16 || (v37[14] == v38[14] ? (v17 = v37[15] == v38[15]) : (v17 = 0), !v17 && (sub_1DF7AD934() & 1) == 0 || LOBYTE(v37[17]) != LOBYTE(v38[17])))
          {
LABEL_71:
            sub_1DF7862E4(v38);
            sub_1DF7862E4(v37);
            goto LABEL_72;
          }

          v18 = v38[16];
          if (v37[16])
          {
            v32[0] = v37[16];
            if (!v38[16])
            {
              goto LABEL_71;
            }

            v34[0] = v38[16];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A80, &qword_1DF7ADF50);

            v19 = sub_1DF7AD3A4();

            sub_1DF7862E4(v38);
            sub_1DF7862E4(v37);
            if ((v19 & 1) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_1DF7862E4(v38);
            sub_1DF7862E4(v37);
            if (v18)
            {
              goto LABEL_72;
            }
          }

          ++v14;
          v12 += 328;
          v13 += 328;
          if (v11 == v14)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_75:
        __break(1u);
        return;
      }

      sub_1DF783BD0(__dst, v38);
      sub_1DF783BD0(v40, v38);
LABEL_46:
      v20 = *(__dst[5] + 16);
      if (v20 != *(v40[5] + 16))
      {
        goto LABEL_72;
      }

      if (v20 && __dst[5] != v40[5])
      {
        v21 = (__dst[5] + 32);
        v22 = (v40[5] + 32);
        while (*v21 == *v22)
        {
          ++v21;
          ++v22;
          if (!--v20)
          {
            goto LABEL_52;
          }
        }

LABEL_72:
        sub_1DF78E0A4(v40);
        sub_1DF78E0A4(__dst);
        break;
      }

LABEL_52:
      v23 = LOBYTE(__dst[7]);
      if (LOBYTE(__dst[7]) == 3)
      {
        v23 = 1;
      }

      if (LOBYTE(v40[7]) == 3)
      {
        if (v23 != 1)
        {
          goto LABEL_72;
        }
      }

      else if (v23 != LOBYTE(v40[7]))
      {
        goto LABEL_72;
      }

      v24 = v40[6];
      if (__dst[6])
      {
        if (!v40[6])
        {
          goto LABEL_72;
        }

        v26 = sub_1DF78DB44(v25, v24);

        if ((v26 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      else if (v40[6])
      {
        goto LABEL_72;
      }

      v27 = __dst[10];
      v28 = v40[10];
      if (__dst[10])
      {
        if (!v40[10])
        {
          goto LABEL_72;
        }

        v29 = static IntentSchema.== infix(_:_:)(v27 + 16, v28 + 16);

        sub_1DF78E0A4(v40);
        sub_1DF78E0A4(__dst);
        if ((v29 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        sub_1DF78E0A4(v40);
        sub_1DF78E0A4(__dst);
        if (v28)
        {
          break;
        }
      }

      ++v3;
      v5 = v30;
      v4 = v31;
    }

    while (v3 != v2);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t sub_1DF78948C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v24 = a2 + 32;
  v25 = result + 32;
  while (v3 != v2)
  {
    v4 = v25 + 72 * v3;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    v9 = *(v4 + 48);
    v28 = *(v4 + 64);
    v29 = *(v4 + 56);
    v10 = v24 + 72 * v3;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);
    v14 = *(v10 + 48);
    v26 = *(v10 + 64);
    v27 = *(v10 + 56);
    if (result != *v10 || v5 != *(v10 + 8))
    {
      result = sub_1DF7AD934();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != v11 || v7 != v12)
    {
      result = sub_1DF7AD934();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v17 = *(v8 + 16);
    if (v17 != *(v13 + 16))
    {
      return 0;
    }

    if (v17)
    {
      v18 = v8 == v13;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = (v8 + 40);
      v20 = (v13 + 40);
      while (v17)
      {
        result = *(v19 - 1);
        if (result != *(v20 - 1) || *v19 != *v20)
        {
          result = sub_1DF7AD934();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v19 += 2;
        v20 += 2;
        if (!--v17)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      break;
    }

LABEL_29:
    if (v9 == 3)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9;
    }

    if (v14 == 3)
    {
      if (v22 != 1)
      {
        return 0;
      }
    }

    else if (v22 != v14)
    {
      return 0;
    }

    v23 = v29 == v27 && v28 == v26;
    if (!v23 && (sub_1DF7AD934() & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF78964C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v5 = 0;
      do
      {
        v6 = *(a1 + v5 + 40);
        v7 = *(a1 + v5 + 48);
        v8 = *(a1 + v5 + 56);
        v9 = *(a1 + v5 + 64);
        v20[0] = *(a1 + v5 + 32);
        v20[1] = v6;
        v21 = v7;
        v22 = v8;
        v23 = v9;
        v10 = *(a2 + v5 + 40);
        v11 = *(a2 + v5 + 48);
        v12 = *(a2 + v5 + 56);
        v13 = *(a2 + v5 + 64);
        v16[0] = *(a2 + v5 + 32);
        v16[1] = v10;
        v17 = v11;
        v18 = v12;
        v19 = v13;

        v14 = static VersionedSchema.== infix(_:_:)(v20, v16);

        if ((v14 & 1) == 0)
        {
          break;
        }

        v5 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DF789780(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DF7AD934() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DF78980C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 32);
    v4 = (v1 + 32);
    do
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v16, v4, 0x148uLL);
      v5 = __dst[0] == v16[0] && __dst[1] == v16[1];
      if (!v5 && (sub_1DF7AD934() & 1) == 0)
      {
        break;
      }

      memcpy(v12, &__dst[2], 0x59uLL);
      memcpy(__src, &v16[2], 0x59uLL);
      sub_1DF77B7A0(__dst, v10);
      sub_1DF77B7A0(v16, v10);
      sub_1DF770608(&__dst[2], v10);
      sub_1DF770608(&v16[2], v10);
      v6 = static ValueType.== infix(_:_:)(v12, __src);
      memcpy(v13, __src, 0x59uLL);
      sub_1DF77A414(v13);
      memcpy(v14, v12, 0x59uLL);
      sub_1DF77A414(v14);
      if (!v6 || (__dst[14] == v16[14] ? (v7 = __dst[15] == v16[15]) : (v7 = 0), !v7 && (sub_1DF7AD934() & 1) == 0 || LOBYTE(__dst[17]) != LOBYTE(v16[17])))
      {
LABEL_24:
        sub_1DF7862E4(v16);
        sub_1DF7862E4(__dst);
        break;
      }

      v8 = v16[16];
      if (__dst[16])
      {
        v10[0] = __dst[16];
        if (!v16[16])
        {
          goto LABEL_24;
        }

        v12[0] = v16[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53A80, &qword_1DF7ADF50);

        v9 = sub_1DF7AD3A4();

        sub_1DF7862E4(v16);
        sub_1DF7862E4(__dst);
        if ((v9 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        sub_1DF7862E4(v16);
        sub_1DF7862E4(__dst);
        if (v8)
        {
          break;
        }
      }

      v3 += 328;
      v4 += 328;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_14();
}

uint64_t sub_1DF789A44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF789AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 96)
    {
      memcpy(__dst, v3, 0x59uLL);
      memcpy(v9, v3, 0x59uLL);
      memcpy(v11, i, 0x59uLL);
      memcpy(__src, i, 0x59uLL);
      sub_1DF770608(__dst, v7);
      sub_1DF770608(v11, v7);
      v5 = static ValueType.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, 0x59uLL);
      sub_1DF77A414(v12);
      memcpy(v13, v9, 0x59uLL);
      sub_1DF77A414(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 96;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DF789BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 144)
    {
      sub_1DF7727D4(v3, v17);
      sub_1DF7727D4(i, v15);
      memcpy(__dst, v18, 0x59uLL);
      memcpy(v14, v18, 0x59uLL);
      memcpy(v20, v16, 0x59uLL);
      memcpy(__src, v16, 0x59uLL);
      sub_1DF770608(__dst, v11);
      sub_1DF770608(v20, v11);
      v5 = static ValueType.== infix(_:_:)(v14, __src);
      memcpy(v21, __src, 0x59uLL);
      sub_1DF77A414(v21);
      memcpy(v22, v14, 0x59uLL);
      sub_1DF77A414(v22);
      if ((v5 & 1) == 0)
      {
        break;
      }

      sub_1DF774138(v17, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54180, &unk_1DF7B4B00);
      if (!swift_dynamicCast())
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_1DF773CFC(v11, &qword_1ECE54188, &unk_1DF7B4AB0);
        break;
      }

      sub_1DF7663E4(v11, __src);
      sub_1DF774138(v15, v14);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        sub_1DF773CFC(v9, &qword_1ECE54188, &unk_1DF7B4AB0);
        __swift_destroy_boxed_opaque_existential_1(__src);
        break;
      }

      sub_1DF7663E4(v9, v11);
      v6 = __src[3];
      v7 = __src[4];
      __swift_project_boxed_opaque_existential_1(__src, __src[3]);
      LOBYTE(v6) = sub_1DF7911D0(v11, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v11);
      __swift_destroy_boxed_opaque_existential_1(__src);
      sub_1DF772884(v15);
      sub_1DF772884(v17);
      if ((v6 & 1) == 0)
      {
        return 0;
      }

      v3 += 144;
      if (!--v2)
      {
        return 1;
      }
    }

    sub_1DF772884(v15);
    sub_1DF772884(v17);
  }

  return 0;
}

uint64_t sub_1DF789E48(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_34_0(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      return 1;
    }

    OUTLINED_FUNCTION_57_0();
    while (1)
    {
      memcpy(__dst, v2, sizeof(__dst));
      memcpy(v13, v2, sizeof(v13));
      memcpy(v15, v3, sizeof(v15));
      memcpy(__src, v3, sizeof(__src));
      sub_1DF767124(__dst, v11);
      sub_1DF767124(v15, v11);
      static ParameterSchema.== infix(_:_:)();
      v9 = v8;
      memcpy(v16, __src, sizeof(v16));
      sub_1DF767908(v16);
      memcpy(v17, v13, sizeof(v17));
      sub_1DF767908(v17);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v2 += 184;
      v3 += 184;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1DF789F4C()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_34_0(v1, v2);
  if (v10 && v0 && v3 != v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    v24 = v3 + 32;
    v25 = v4 + 32;
    while (1)
    {
      sub_1DF790734(v6 + 48 * v5, &v40, &qword_1ECE54178, &unk_1DF7B4AA0);
      if (v5 == v0)
      {
        break;
      }

      sub_1DF790734(v25 + 48 * v5, &v38, &qword_1ECE54178, &unk_1DF7B4AA0);
      v7 = v40;
      v8 = v38;
      v9 = *(v40 + 16);
      if (v9 != *(v38 + 16))
      {
LABEL_28:
        sub_1DF773CFC(&v38, &qword_1ECE54178, &unk_1DF7B4AA0);
        sub_1DF773CFC(&v40, &qword_1ECE54178, &unk_1DF7B4AA0);
        goto LABEL_29;
      }

      if (v9)
      {
        v10 = v40 == v38;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v18 = 0;
        v19 = v40 + 32;
        v20 = v38 + 32;
        while (v18 < *(v7 + 16))
        {
          sub_1DF7727D4(v19, v33);
          if (v18 >= *(v8 + 16))
          {
            goto LABEL_31;
          }

          sub_1DF7727D4(v20, v32);
          OUTLINED_FUNCTION_78_0(v34);
          OUTLINED_FUNCTION_78_0(v31);
          OUTLINED_FUNCTION_78_0(v35);
          OUTLINED_FUNCTION_78_0(__src);
          sub_1DF770608(v34, v28);
          sub_1DF770608(v35, v28);
          v21 = static ValueType.== infix(_:_:)(v31, __src);
          memcpy(__dst, __src, 0x59uLL);
          sub_1DF77A414(__dst);
          memcpy(v37, v31, 0x59uLL);
          sub_1DF77A414(v37);
          if (!v21)
          {
            sub_1DF772884(v32);
            sub_1DF772884(v33);
            goto LABEL_28;
          }

          sub_1DF774138(v33, v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54180, &unk_1DF7B4B00);
          if ((OUTLINED_FUNCTION_73_0() & 1) == 0)
          {
            sub_1DF772884(v32);
            sub_1DF772884(v33);
            memset(v28, 0, sizeof(v28));
            v29 = 0;
            sub_1DF773CFC(v28, &qword_1ECE54188, &unk_1DF7B4AB0);
            goto LABEL_28;
          }

          sub_1DF7663E4(v28, __src);
          sub_1DF774138(v32, v31);
          if ((OUTLINED_FUNCTION_73_0() & 1) == 0)
          {
            sub_1DF772884(v32);
            sub_1DF772884(v33);
            memset(v26, 0, sizeof(v26));
            v27 = 0;
            sub_1DF773CFC(v26, &qword_1ECE54188, &unk_1DF7B4AB0);
            __swift_destroy_boxed_opaque_existential_1(__src);
            goto LABEL_28;
          }

          sub_1DF7663E4(v26, v28);
          v22 = __src[3];
          v23 = __src[4];
          __swift_project_boxed_opaque_existential_1(__src, __src[3]);
          LOBYTE(v22) = sub_1DF7911D0(v28, v22, v23);
          __swift_destroy_boxed_opaque_existential_1(v28);
          sub_1DF772884(v32);
          sub_1DF772884(v33);
          __swift_destroy_boxed_opaque_existential_1(__src);
          if ((v22 & 1) == 0)
          {
            goto LABEL_28;
          }

          ++v18;
          v20 += 144;
          v19 += 144;
          if (v9 == v18)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

LABEL_13:
      __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      v11 = OUTLINED_FUNCTION_69_0();
      sub_1DF7863C4(v11, v12, v13);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      v14 = OUTLINED_FUNCTION_69_0();
      sub_1DF7863C4(v14, v15, v16);
      v17 = sub_1DF786A9C(v33, v32);
      sub_1DF766F98(v32);
      sub_1DF766F98(v33);
      sub_1DF773CFC(&v38, &qword_1ECE54178, &unk_1DF7B4AA0);
      sub_1DF773CFC(&v40, &qword_1ECE54178, &unk_1DF7B4AA0);
      if (v17)
      {
        ++v5;
        v6 = v24;
        if (v5 != v0)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_14();
  }
}

uint64_t sub_1DF78A340(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_34_0(a1, a2);
  if (!v7)
  {
    return 0;
  }

  if (!v4 || v5 == v6)
  {
    return 1;
  }

  OUTLINED_FUNCTION_57_0();
  while (2)
  {
    sub_1DF7729F4(v2, v20);
    sub_1DF7729F4(v3, v19);
    sub_1DF7729F4(v20, v15);
    sub_1DF7729F4(v19, &v17);
    switch(v16)
    {
      case 0:
        if (!v18)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      case 1:
        if (v18 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      case 2:
        if (v18 != 2)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      case 3:
        if (v18 != 3)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      case 4:
        if (v18 != 4)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      case 5:
        if (v18 != 5)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      case 6:
        if (v18 != 6)
        {
          goto LABEL_27;
        }

LABEL_23:
        sub_1DF773158(v15);
        sub_1DF773158(v19);
        sub_1DF773158(v20);
        goto LABEL_24;
      default:
        sub_1DF7729F4(v15, v14);
        if (v18 >= 7)
        {
          sub_1DF7663E4(v14, v13);
          sub_1DF7663E4(&v17, v12);
          sub_1DF766CC8(v13, v11);
          sub_1DF766CC8(v12, v10);
          v8 = sub_1DF798EB8(v11, v10);
          sub_1DF76CA4C(v10);
          sub_1DF76CA4C(v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          __swift_destroy_boxed_opaque_existential_1(v13);
          sub_1DF773158(v15);
          sub_1DF773158(v19);
          sub_1DF773158(v20);
          if ((v8 & 1) == 0)
          {
            return 0;
          }

LABEL_24:
          v2 += 40;
          v3 += 40;
          if (!--v4)
          {
            return 1;
          }

          continue;
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_27:
        sub_1DF773CFC(v15, &qword_1ECE54170, &unk_1DF7B4A80);
        sub_1DF773158(v19);
        sub_1DF773158(v20);
        return 0;
    }
  }
}

uint64_t sub_1DF78A554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v16 = *(v3 - 1);
      v9 = i[1];
      v8 = i[2];
      v11 = i[3];
      v10 = i[4];
      v12 = *(v3 - 5) == *(i - 1) && *(v3 - 4) == *i;
      if (!v12 && (sub_1DF7AD934() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v8)
        {
          return 0;
        }

        v13 = v5 == v9 && v6 == v8;
        if (!v13 && (sub_1DF7AD934() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10)
        {
          goto LABEL_31;
        }

        v14 = v16 == v11 && v7 == v10;
        if (!v14 && (sub_1DF7AD934() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v10)
        {
LABEL_31:

          return 0;
        }

        swift_bridgeObjectRelease_n();
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *sub_1DF78A698@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_79_0(v9);
  if (v10 == 12)
  {
    v4 = memcpy(__dst, (v9[0] + 16), 0x59uLL);
    sub_1DF78A698(__src, v4);
  }

  else
  {
    if (v10 == 11 || v10 == 10)
    {
      memcpy(__dst, (v9[0] + 16), 0x59uLL);
      memcpy(__src, (v9[0] + 16), 0x59uLL);
      v2 = __dst;
      v3 = &v6;
    }

    else
    {
      OUTLINED_FUNCTION_79_0(__src);
      v2 = v9;
      v3 = __dst;
    }

    sub_1DF770608(v2, v3);
  }

  return memcpy(a1, __src, 0x59uLL);
}

uint64_t sub_1DF78A760()
{
  v1 = v0[88];
  if ((v1 - 10) >= 2)
  {
    if (v1 == 12)
    {
      v3 = memcpy(v5, (*v0 + 16), sizeof(v5));
      v2 = sub_1DF78A760(v3);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1DF78A7CC()
{
  v0 = sub_1DF7AD5D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return v0;
}

uint64_t sub_1DF78A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5(0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return v5;
}

uint64_t sub_1DF78A908(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DF7AD934();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DF78A980(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_55_0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == OUTLINED_FUNCTION_61_0() && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_55_0();

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

uint64_t sub_1DF78AA24()
{
  v0 = OUTLINED_FUNCTION_61_0();
  if (v2 == v0 && v1 == 0xE700000000000000)
  {

    v5 = 0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_55_0();

    v5 = v4 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1DF78AA88(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_55_0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DF78AAF4(uint64_t a1)
{
  v2 = sub_1DF76CDCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AB30(uint64_t a1)
{
  v2 = sub_1DF76CDCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AB6C(uint64_t a1)
{
  v2 = sub_1DF7704EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78ABA8(uint64_t a1)
{
  v2 = sub_1DF7704EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78ABFC(uint64_t a1)
{
  v2 = sub_1DF7680D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AC38(uint64_t a1)
{
  v2 = sub_1DF7680D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AC74(uint64_t a1)
{
  v2 = sub_1DF76A6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78ACB0(uint64_t a1)
{
  v2 = sub_1DF76A6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78ACEC(uint64_t a1)
{
  v2 = sub_1DF768024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AD28(uint64_t a1)
{
  v2 = sub_1DF768024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AD64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF78A900();
  *a1 = result;
  return result;
}

uint64_t sub_1DF78AD8C(uint64_t a1)
{
  v2 = sub_1DF76464C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78ADC8(uint64_t a1)
{
  v2 = sub_1DF76464C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AE04(uint64_t a1)
{
  v2 = sub_1DF772674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AE40(uint64_t a1)
{
  v2 = sub_1DF772674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AE7C(uint64_t a1)
{
  v2 = sub_1DF768128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AEB8(uint64_t a1)
{
  v2 = sub_1DF768128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AEF4(uint64_t a1)
{
  v2 = sub_1DF76CCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AF30(uint64_t a1)
{
  v2 = sub_1DF76CCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AF6C(uint64_t a1)
{
  v2 = sub_1DF78E620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78AFA8(uint64_t a1)
{
  v2 = sub_1DF78E620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78AFE4(uint64_t a1)
{
  v2 = sub_1DF767D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B020(uint64_t a1)
{
  v2 = sub_1DF767D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B05C(uint64_t a1)
{
  v2 = sub_1DF78E5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B098(uint64_t a1)
{
  v2 = sub_1DF78E5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B0D4(uint64_t a1)
{
  v2 = sub_1DF766A64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B110(uint64_t a1)
{
  v2 = sub_1DF766A64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B14C(uint64_t a1)
{
  v2 = sub_1DF766A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B188(uint64_t a1)
{
  v2 = sub_1DF766A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B1C4(uint64_t a1)
{
  v2 = sub_1DF77293C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B200(uint64_t a1)
{
  v2 = sub_1DF77293C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B23C(uint64_t a1)
{
  v2 = sub_1DF76A4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B278(uint64_t a1)
{
  v2 = sub_1DF76A4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B2B4(uint64_t a1)
{
  v2 = sub_1DF767BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B2F0(uint64_t a1)
{
  v2 = sub_1DF767BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B32C(uint64_t a1)
{
  v2 = sub_1DF767FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B368(uint64_t a1)
{
  v2 = sub_1DF767FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B3A4(uint64_t a1)
{
  v2 = sub_1DF7669BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B3E0(uint64_t a1)
{
  v2 = sub_1DF7669BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF78A908(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DF78B448(uint64_t a1)
{
  v2 = sub_1DF76A6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B484(uint64_t a1)
{
  v2 = sub_1DF76A6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B4C0(uint64_t a1)
{
  v2 = sub_1DF78E524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B4FC(uint64_t a1)
{
  v2 = sub_1DF78E524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B538(uint64_t a1)
{
  v2 = sub_1DF770684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B574(uint64_t a1)
{
  v2 = sub_1DF770684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B5B0(uint64_t a1)
{
  v2 = sub_1DF76CD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B5EC(uint64_t a1)
{
  v2 = sub_1DF76CD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B628(uint64_t a1)
{
  v2 = sub_1DF76CD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B664(uint64_t a1)
{
  v2 = sub_1DF76CD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B6A0(uint64_t a1)
{
  v2 = sub_1DF7726C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B6DC(uint64_t a1)
{
  v2 = sub_1DF7726C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B718(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1DF7AD9E4();
  a4(v8, v6);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF78B764(uint64_t a1)
{
  v2 = sub_1DF76835C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B7A0(uint64_t a1)
{
  v2 = sub_1DF76835C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B7DC(uint64_t a1)
{
  v2 = sub_1DF766968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B818(uint64_t a1)
{
  v2 = sub_1DF766968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B854(uint64_t a1)
{
  v2 = sub_1DF76C7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B890(uint64_t a1)
{
  v2 = sub_1DF76C7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B8CC(uint64_t a1)
{
  v2 = sub_1DF76BB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B908(uint64_t a1)
{
  v2 = sub_1DF76BB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF78B944(uint64_t a1)
{
  v2 = sub_1DF76943C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF78B980(uint64_t a1)
{
  v2 = sub_1DF76943C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ValueType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53E98, &qword_1DF7B2A10);
  OUTLINED_FUNCTION_0_10(v4, v335);
  v310[1] = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EA0, &qword_1DF7B2A18);
  OUTLINED_FUNCTION_0_10(v10, v337);
  v312[0] = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EA8, &qword_1DF7B2A20);
  OUTLINED_FUNCTION_0_10(v16, &v333);
  v307[1] = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EB0, &qword_1DF7B2A28);
  OUTLINED_FUNCTION_0_10(v22, v331);
  v305 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EB8, &qword_1DF7B2A30);
  OUTLINED_FUNCTION_0_10(v28, v329);
  v302 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EC0, &qword_1DF7B2A38);
  OUTLINED_FUNCTION_0_10(v34, v327);
  v299 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EC8, &qword_1DF7B2A40);
  OUTLINED_FUNCTION_0_10(v40, &v325);
  v296 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53ED0, &qword_1DF7B2A48);
  OUTLINED_FUNCTION_0_10(v46, v323);
  v293 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53ED8, &qword_1DF7B2A50);
  OUTLINED_FUNCTION_0_10(v52, &v271);
  v267[4] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EE0, &qword_1DF7B2A58);
  OUTLINED_FUNCTION_0_10(v58, &v269);
  v267[1] = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EE8, &qword_1DF7B2A60);
  OUTLINED_FUNCTION_0_10(v64, &v273);
  v267[7] = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EF0, &qword_1DF7B2A68);
  OUTLINED_FUNCTION_0_10(v70, &v275);
  v267[10] = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53EF8, &qword_1DF7B2A70);
  OUTLINED_FUNCTION_0_10(v76, &v277);
  v267[13] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F00, &qword_1DF7B2A78);
  OUTLINED_FUNCTION_0_10(v82, &v280);
  v267[16] = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F08, &qword_1DF7B2A80);
  OUTLINED_FUNCTION_0_10(v88, &v283);
  v267[19] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F10, &qword_1DF7B2A88);
  OUTLINED_FUNCTION_0_10(v94, &v286);
  v267[22] = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F18, &qword_1DF7B2A90);
  OUTLINED_FUNCTION_0_10(v100, &v320);
  v290 = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F20, &qword_1DF7B2A98);
  OUTLINED_FUNCTION_0_10(v106, &v289);
  v267[25] = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F28, &qword_1DF7B2AA0);
  OUTLINED_FUNCTION_0_10(v112, &v292);
  v267[28] = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F30, &qword_1DF7B2AA8);
  OUTLINED_FUNCTION_0_10(v118, &v295);
  v267[31] = v119;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F38, &qword_1DF7B2AB0);
  OUTLINED_FUNCTION_0_10(v124, &v298);
  v269 = v125;
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F40, &qword_1DF7B2AB8);
  OUTLINED_FUNCTION_0_10(v130, &v301);
  v271 = v131;
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F48, &qword_1DF7B2AC0);
  OUTLINED_FUNCTION_0_10(v136, &v304);
  v273 = v137;
  v139 = *(v138 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F50, &qword_1DF7B2AC8);
  OUTLINED_FUNCTION_0_10(v142, v307);
  v275 = v143;
  v145 = *(v144 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F58, &qword_1DF7B2AD0);
  OUTLINED_FUNCTION_0_10(v148, &v309);
  v277 = v149;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F60, &qword_1DF7B2AD8);
  OUTLINED_FUNCTION_0_10(v154, &v317);
  v287 = v155;
  v157 = *(v156 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v159);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F68, &qword_1DF7B2AE0);
  OUTLINED_FUNCTION_0_10(v160, &v314);
  v284 = v161;
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v165);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F70, &qword_1DF7B2AE8);
  OUTLINED_FUNCTION_0_10(v166, v312);
  v281 = v167;
  v169 = *(v168 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_23_0(v171);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F78, &qword_1DF7B2AF0);
  OUTLINED_FUNCTION_4(v172);
  v279 = v173;
  v175 = *(v174 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v176);
  v178 = v267 - v177;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F80, &qword_1DF7B2AF8);
  OUTLINED_FUNCTION_0_10(v179, &v343);
  v322 = v180;
  v182 = *(v181 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v183);
  v185 = v267 - v184;
  v323[0] = *v1;
  v186 = *(v1 + 8);
  OUTLINED_FUNCTION_68_0();
  v189 = v188 | (v187 << 32);
  v190 = *(v1 + 24);
  v316 = *(v1 + 16);
  v315 = v190;
  v191 = *(v1 + 40);
  v317 = *(v1 + 32);
  v318 = v191;
  v192 = *(v1 + 56);
  v319 = *(v1 + 48);
  v320 = v192;
  v193 = *(v1 + 72);
  v321 = *(v1 + 64);
  v314 = v193;
  v313 = *(v1 + 80);
  v194 = *(v1 + 88);
  v195 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF76464C();
  v323[1] = v185;
  sub_1DF7ADA64();
  v196 = v186 | (v189 << 8);
  switch(v194)
  {
    case 1:
      LOBYTE(v333) = 1;
      sub_1DF767D04();
      v228 = v280;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_65_0();
      v185 = v282;
      OUTLINED_FUNCTION_29_0();
      sub_1DF7AD8A4();
      v229 = &v311;
      goto LABEL_19;
    case 2:
      LOBYTE(v333) = 2;
      sub_1DF768024();
      v211 = v283;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_14_2(&v314);
      sub_1DF7AD894();
      v213 = &v313;
      goto LABEL_26;
    case 3:
      LOBYTE(v333) = 3;
      sub_1DF766968();
      v222 = v286;
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_65_0();
      v223 = v288;
      sub_1DF7AD884();
      OUTLINED_FUNCTION_18_0(&v316);
      v225 = v222;
      v226 = v223;
      goto LABEL_24;
    case 4:
      LOBYTE(v333) = 12;
      sub_1DF76A6F4();
      v211 = v289;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_43_0();
      LOBYTE(v333) = v212;
      sub_1DF78E578();
      OUTLINED_FUNCTION_14_2(&v320);
      sub_1DF7AD8C4();
      v213 = &v319;
      goto LABEL_26;
    case 5:
      LOBYTE(v333) = 21;
      sub_1DF766A10();
      v228 = v292;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_31_0();
      v338 = *(v230 - 256);
      sub_1DF78E4D0();
      v185 = v294;
      OUTLINED_FUNCTION_29_0();
      sub_1DF7AD904();
      v229 = &v322;
      goto LABEL_19;
    case 6:
      LOBYTE(v333) = 22;
      sub_1DF766A64();
      v228 = v295;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_31_0();
      v338 = *(v235 - 256);
      v339 = v314;
      v340 = v313;
      sub_1DF78E47C();
      v185 = v298;
      OUTLINED_FUNCTION_29_0();
      sub_1DF7AD8C4();
      v229 = &v324;
LABEL_19:
      OUTLINED_FUNCTION_18_0(v229);
      v237 = v228;
      goto LABEL_27;
    case 7:
      LOBYTE(v333) = 23;
      sub_1DF76BB98();
      v208 = v297;
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_43_0();
      v333 = v227;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53FC0, &qword_1DF7B2B10);
      sub_1DF78E3F8();
      v209 = v300;
      OUTLINED_FUNCTION_29_0();
      sub_1DF7AD904();
      v210 = &v326;
      goto LABEL_23;
    case 8:
      LOBYTE(v333) = 24;
      sub_1DF767FD0();
      v211 = v301;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_43_0();
      LOBYTE(v333) = v244;
      sub_1DF78E3A4();
      OUTLINED_FUNCTION_14_2(v329);
      sub_1DF7AD904();
      v213 = &v328;
      goto LABEL_26;
    case 9:
      LOBYTE(v333) = 25;
      sub_1DF77293C();
      v211 = v304;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_43_0();
      LOBYTE(v333) = v221;
      sub_1DF78E350();
      OUTLINED_FUNCTION_14_2(v331);
      sub_1DF7AD904();
      v213 = &v330;
LABEL_26:
      OUTLINED_FUNCTION_18_0(v213);
      v237 = v211;
LABEL_27:
      v236(v237, v185);
      v202 = OUTLINED_FUNCTION_10_1(&v342);
      goto LABEL_28;
    case 10:
      v238 = v323[0];
      OUTLINED_FUNCTION_48_0();
      memcpy(v239, v240, v241);
      v242 = *(v238 + 112);
      LOBYTE(v325) = 26;
      sub_1DF7680D4();
      v208 = v307[0];
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_54_0();
      v341 = 0;
      sub_1DF77AF8C();
      v209 = v309;
      OUTLINED_FUNCTION_29_0();
      sub_1DF7AD904();
      if (!v2)
      {
        v325 = v242;
        OUTLINED_FUNCTION_60();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53FA0, &qword_1DF7B2B08);
        sub_1DF78E2CC();
        OUTLINED_FUNCTION_47_0();
      }

      v210 = &v332;
      goto LABEL_23;
    case 11:
      v203 = v323[0];
      OUTLINED_FUNCTION_48_0();
      memcpy(v204, v205, v206);
      v207 = *(v203 + 112);
      LOBYTE(v325) = 27;
      sub_1DF76835C();
      v208 = v310[0];
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_54_0();
      v341 = 0;
      sub_1DF77AF8C();
      v209 = v312[1];
      OUTLINED_FUNCTION_29_0();
      sub_1DF7AD904();
      if (!v2)
      {
        v325 = v207;
        OUTLINED_FUNCTION_60();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53F88, &qword_1DF7B2B00);
        sub_1DF78E1F4();
        OUTLINED_FUNCTION_47_0();
      }

      v210 = &v336;
LABEL_23:
      OUTLINED_FUNCTION_18_0(v210);
      v225 = v208;
      v226 = v209;
LABEL_24:
      v224(v225, v226);
      OUTLINED_FUNCTION_18_0(&v342);
      v202 = v185;
      v243 = v178;
      return v201(v202, v243);
    case 12:
      OUTLINED_FUNCTION_43_0();
      memcpy(v215, (v214 + 16), 0x59uLL);
      v341 = 28;
      sub_1DF770608(&v333, &v325);
      sub_1DF7669BC();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_51_0();
      OUTLINED_FUNCTION_54_0();
      sub_1DF77AF8C();
      OUTLINED_FUNCTION_14_2(v335);
      sub_1DF7AD904();
      OUTLINED_FUNCTION_18_0(v334);
      v216 = OUTLINED_FUNCTION_37_0();
      v217(v216);
      v218 = OUTLINED_FUNCTION_10_1(&v342);
      v219(v218, v196);
      return sub_1DF77A414(&v333);
    case 13:
      if (v316 | v323[0] | v315 | v317 | v318 | v319 | v320 | v196 | v321 | v314 | v313)
      {
        v231 = v315 | v316 | v317 | v318 | v319 | v320 | v321 | v196 | v314 | v313;
        v196 = v324;
        if (v323[0] != 1 || v231)
        {
          if (v323[0] != 2 || v231)
          {
            if (v323[0] != 3 || v231)
            {
              if (v323[0] != 4 || v231)
              {
                if (v323[0] != 5 || v231)
                {
                  if (v323[0] != 6 || v231)
                  {
                    if (v323[0] != 7 || v231)
                    {
                      if (v323[0] != 8 || v231)
                      {
                        if (v323[0] != 9 || v231)
                        {
                          if (v323[0] != 10 || v231)
                          {
                            if (v323[0] != 11 || v231)
                            {
                              if (v323[0] != 12 || v231)
                              {
                                if (v323[0] != 13 || v231)
                                {
                                  if (v323[0] != 14 || v231)
                                  {
                                    LOBYTE(v333) = 20;
                                    sub_1DF7726C8();
                                    v262 = v267[3];
                                    OUTLINED_FUNCTION_3_6();
                                    v264 = *(v263 - 256);
                                    sub_1DF7AD874();
                                    OUTLINED_FUNCTION_18_0(v270);
                                    v251 = v262;
                                    v252 = &v271;
                                  }

                                  else
                                  {
                                    LOBYTE(v333) = 19;
                                    sub_1DF770684();
                                    v259 = v267[0];
                                    OUTLINED_FUNCTION_3_6();
                                    v261 = *(v260 - 256);
                                    sub_1DF7AD874();
                                    OUTLINED_FUNCTION_18_0(v268);
                                    v251 = v259;
                                    v252 = &v269;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v333) = 18;
                                  sub_1DF76CDCC();
                                  v256 = v267[6];
                                  OUTLINED_FUNCTION_3_6();
                                  v258 = *(v257 - 256);
                                  sub_1DF7AD874();
                                  OUTLINED_FUNCTION_18_0(v272);
                                  v251 = v256;
                                  v252 = &v273;
                                }
                              }

                              else
                              {
                                LOBYTE(v333) = 17;
                                sub_1DF76CD70();
                                v253 = v267[9];
                                OUTLINED_FUNCTION_3_6();
                                v255 = *(v254 - 256);
                                sub_1DF7AD874();
                                OUTLINED_FUNCTION_18_0(v274);
                                v251 = v253;
                                v252 = &v275;
                              }
                            }

                            else
                            {
                              LOBYTE(v333) = 16;
                              sub_1DF7704EC();
                              v247 = v267[12];
                              OUTLINED_FUNCTION_3_6();
                              v249 = *(v248 - 256);
                              sub_1DF7AD874();
                              OUTLINED_FUNCTION_18_0(v276);
                              v251 = v247;
                              v252 = &v277;
                            }

                            v250(v251, *(v252 - 32));
                            v265 = OUTLINED_FUNCTION_11_2(&v342);
                            return v266(v265, v196);
                          }

                          LOBYTE(v333) = 15;
                          sub_1DF772674();
                          OUTLINED_FUNCTION_17_0(v278);
                          v232 = OUTLINED_FUNCTION_10_1(&v279);
                          v234 = &v280;
                        }

                        else
                        {
                          LOBYTE(v333) = 14;
                          sub_1DF76CD1C();
                          OUTLINED_FUNCTION_17_0(&v281);
                          v232 = OUTLINED_FUNCTION_10_1(&v282);
                          v234 = &v283;
                        }
                      }

                      else
                      {
                        LOBYTE(v333) = 13;
                        sub_1DF78E524();
                        OUTLINED_FUNCTION_17_0(&v284);
                        v232 = OUTLINED_FUNCTION_10_1(v285);
                        v234 = &v286;
                      }
                    }

                    else
                    {
                      LOBYTE(v333) = 11;
                      sub_1DF76A4AC();
                      OUTLINED_FUNCTION_17_0(&v287);
                      v232 = OUTLINED_FUNCTION_10_1(&v288);
                      v234 = &v289;
                    }
                  }

                  else
                  {
                    LOBYTE(v333) = 10;
                    sub_1DF76943C();
                    OUTLINED_FUNCTION_17_0(&v290);
                    v232 = OUTLINED_FUNCTION_10_1(v291);
                    v234 = &v292;
                  }
                }

                else
                {
                  LOBYTE(v333) = 9;
                  sub_1DF78E5CC();
                  OUTLINED_FUNCTION_17_0(&v293);
                  v232 = OUTLINED_FUNCTION_10_1(&v294);
                  v234 = &v295;
                }
              }

              else
              {
                LOBYTE(v333) = 8;
                sub_1DF78E620();
                OUTLINED_FUNCTION_17_0(&v296);
                v232 = OUTLINED_FUNCTION_10_1(&v297);
                v234 = &v298;
              }
            }

            else
            {
              LOBYTE(v333) = 7;
              sub_1DF76CCC8();
              OUTLINED_FUNCTION_17_0(&v299);
              v232 = OUTLINED_FUNCTION_10_1(&v300);
              v234 = &v301;
            }
          }

          else
          {
            LOBYTE(v333) = 6;
            sub_1DF768128();
            OUTLINED_FUNCTION_17_0(&v302);
            v232 = OUTLINED_FUNCTION_10_1(v303);
            v234 = &v304;
          }
        }

        else
        {
          LOBYTE(v333) = 5;
          sub_1DF76A6A0();
          OUTLINED_FUNCTION_17_0(&v305);
          v232 = OUTLINED_FUNCTION_10_1(v306);
          v234 = v307;
        }
      }

      else
      {
        LOBYTE(v333) = 4;
        sub_1DF76C7FC();
        OUTLINED_FUNCTION_3_6();
        v246 = *(v245 - 256);
        sub_1DF7AD874();
        v232 = OUTLINED_FUNCTION_10_1(v308);
        v234 = &v309;
      }

      v233(v232, *(v234 - 32));
      v202 = OUTLINED_FUNCTION_11_2(&v342);
LABEL_28:
      v243 = v196;
      return v201(v202, v243);
    default:
      LOBYTE(v333) = 0;
      sub_1DF767BD0();
      OUTLINED_FUNCTION_3_6();
      v198 = *(v197 - 256);
      sub_1DF7AD874();
      OUTLINED_FUNCTION_65_0();
      sub_1DF7AD8B4();
      v199 = OUTLINED_FUNCTION_10_1(v310);
      v200(v199, v172);
      OUTLINED_FUNCTION_18_0(&v342);
      v202 = v198;
      goto LABEL_28;
  }
}

void ValueType.hash(into:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_68_0();
  v7 = v6 | (v5 << 32);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v3 | (v7 << 8);
  v14 = v10;
  switch(*(v1 + 88))
  {
    case 1:
      v25 = v4;
      MEMORY[0x1E12DEC80](1);
      if (v3)
      {
        goto LABEL_49;
      }

      sub_1DF7ADA04();
      if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v41 = v25;
      }

      else
      {
        v41 = 0;
      }

      MEMORY[0x1E12DECA0](v41);
      goto LABEL_50;
    case 2:
      OUTLINED_FUNCTION_56_0();
      if (v10 != 2)
      {
        sub_1DF7ADA04();
      }

      goto LABEL_49;
    case 3:
      MEMORY[0x1E12DEC80](3);
      if (!v13)
      {
        goto LABEL_49;
      }

      sub_1DF7ADA04();
LABEL_44:
      OUTLINED_FUNCTION_42_0();

      sub_1DF7AD404();
      return;
    case 4:
      OUTLINED_FUNCTION_56_0();
      if (v10 == 4)
      {
        goto LABEL_49;
      }

      sub_1DF7ADA04();
LABEL_36:
      v16 = v10;
      goto LABEL_48;
    case 5:
      v26 = v1[7];
      v27 = v1[8];
      v28 = v1[5];
      v29 = v1[4];
      MEMORY[0x1E12DEC80](21);
      sub_1DF7AD404();
      OUTLINED_FUNCTION_69_0();
      sub_1DF7AD404();
      sub_1DF785D9C(a1, v29);
      sub_1DF7ADA04();
      if (v28)
      {
        sub_1DF78E894(a1, v28);
      }

      sub_1DF7ADA04();
      if (v14 != 3)
      {
        MEMORY[0x1E12DEC80](v14);
      }

      goto LABEL_44;
    case 6:
      v45 = v1[4];
      v46 = v1[5];
      v43 = v1[7];
      v44 = v1[8];
      v36 = v4;
      MEMORY[0x1E12DEC80](22);
      if (!v13)
      {
        goto LABEL_49;
      }

      __src[0] = v36;
      LOBYTE(__src[1]) = v3;
      HIBYTE(__src[1]) = BYTE6(v7);
      *(&__src[1] + 5) = WORD2(v7);
      *(&__src[1] + 1) = v7;
      __src[2] = v8;
      __src[3] = v9;
      __src[4] = v45;
      __src[5] = v46;
      __src[6] = v10;
      __src[7] = v43;
      __src[8] = v44;
      __src[9] = v11;
      __src[10] = v12;
      sub_1DF7ADA04();
      __dst[0] = v36;
      LOBYTE(__dst[1]) = v3;
      HIBYTE(__dst[1]) = BYTE6(v7);
      *(&__dst[1] + 5) = WORD2(v7);
      *(&__dst[1] + 1) = v7;
      __dst[2] = v8;
      __dst[3] = v9;
      __dst[4] = v45;
      __dst[5] = v46;
      __dst[6] = v10;
      __dst[7] = v43;
      __dst[8] = v44;
      __dst[9] = v11;
      __dst[10] = v12;
      LOBYTE(__dst[11]) = 6;
      sub_1DF790734(__dst, v49, &qword_1ECE53BF8, &qword_1DF7B1A88);
      EntitySchema.hash(into:)(a1);
      memcpy(v49, __src, sizeof(v49));
      sub_1DF78E0A4(v49);
      goto LABEL_50;
    case 7:
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_42_0();

      sub_1DF7858C0(v22, v23);
      return;
    case 8:
      OUTLINED_FUNCTION_56_0();
      goto LABEL_36;
    case 9:
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_42_0();

      sub_1DF7887C8();
      return;
    case 0xA:
      OUTLINED_FUNCTION_74_0();
      v37 = *(v10 + 0x70);
      MEMORY[0x1E12DEC80](26);
      ValueType.hash(into:)(a1);
      if (!v37)
      {
        goto LABEL_49;
      }

      sub_1DF7ADA04();
      OUTLINED_FUNCTION_42_0();

      sub_1DF785798(v38, v39);
      return;
    case 0xB:
      OUTLINED_FUNCTION_74_0();
      v17 = *(v10 + 0x70);
      MEMORY[0x1E12DEC80](27);
      ValueType.hash(into:)(a1);
      if (!v17)
      {
        goto LABEL_49;
      }

      sub_1DF7ADA04();
      OUTLINED_FUNCTION_42_0();

      sub_1DF78E674(v18, v19);
      return;
    case 0xC:
      memcpy(__dst, (v4 + 16), 0x59uLL);
      MEMORY[0x1E12DEC80](28);
      ValueType.hash(into:)(a1);
      goto LABEL_50;
    case 0xD:
      OUTLINED_FUNCTION_72_0();
      if (v30 | v13 | v31 | v11 | v12)
      {
        OUTLINED_FUNCTION_72_0();
        v35 = v33 | v34 | v13 | v11 | v12;
        if (v32 != 1 || v35)
        {
          if (v32 != 2 || v35)
          {
            if (v32 != 3 || v35)
            {
              if (v32 != 4 || v35)
              {
                if (v32 != 5 || v35)
                {
                  if (v32 != 6 || v35)
                  {
                    if (v32 != 7 || v35)
                    {
                      if (v32 != 8 || v35)
                      {
                        if (v32 != 9 || v35)
                        {
                          if (v32 != 10 || v35)
                          {
                            if (v32 != 11 || v35)
                            {
                              if (v32 != 12 || v35)
                              {
                                if (v32 != 13 || v35)
                                {
                                  if (v32 != 14 || v35)
                                  {
                                    v16 = 20;
                                  }

                                  else
                                  {
                                    v16 = 19;
                                  }
                                }

                                else
                                {
                                  v16 = 18;
                                }
                              }

                              else
                              {
                                v16 = 17;
                              }
                            }

                            else
                            {
                              v16 = 16;
                            }
                          }

                          else
                          {
                            v16 = 15;
                          }
                        }

                        else
                        {
                          v16 = 14;
                        }
                      }

                      else
                      {
                        v16 = 13;
                      }
                    }

                    else
                    {
                      v16 = 11;
                    }
                  }

                  else
                  {
                    v16 = 10;
                  }
                }

                else
                {
                  v16 = 9;
                }
              }

              else
              {
                v16 = 8;
              }
            }

            else
            {
              v16 = 7;
            }
          }

          else
          {
            v16 = 6;
          }
        }

        else
        {
          v16 = 5;
        }
      }

      else
      {
        v16 = 4;
      }

      goto LABEL_48;
    default:
      v15 = v4;
      MEMORY[0x1E12DEC80](0);
      if (v3)
      {
LABEL_49:
        sub_1DF7ADA04();
      }

      else
      {
        sub_1DF7ADA04();
        v16 = v15;
LABEL_48:
        MEMORY[0x1E12DEC80](v16);
      }

LABEL_50:
      OUTLINED_FUNCTION_42_0();
      return;
  }
}

uint64_t ValueType.hashValue.getter()
{
  sub_1DF7AD9E4();
  ValueType.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF78DB08()
{
  sub_1DF7AD9E4();
  ValueType.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF78DB44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1DF7AD9E4();

      sub_1DF7AD404();
      v16 = sub_1DF7ADA24();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_1DF7AD934();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
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

uint64_t sub_1DF78DCEC(uint64_t result, uint64_t a2)
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
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v23 = (v8 - 1) & v8;
    v24 = v9;
LABEL_13:
    sub_1DF7727D4(*(v3 + 48) + 144 * (v11 | (v4 << 6)), __src);
    memcpy(__dst, __src, 0x89uLL);
    v14 = *(a2 + 40);
    sub_1DF7AD9E4();
    Value.hash(into:)();
    v15 = sub_1DF7ADA24();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_28:
      sub_1DF772884(__dst);
      return 0;
    }

    v22 = v3;
    v18 = ~v16;
    memcpy(v36, &__dst[48], 0x59uLL);
    while (1)
    {
      sub_1DF7727D4(*(a2 + 48) + 144 * v17, v31);
      memcpy(v33, v32, 0x59uLL);
      memcpy(v30, v32, 0x59uLL);
      memcpy(v29, v36, 0x59uLL);
      sub_1DF770608(v33, v27);
      sub_1DF770608(v36, v27);
      v19 = static ValueType.== infix(_:_:)(v30, v29);
      memcpy(v34, v29, 0x59uLL);
      sub_1DF77A414(v34);
      memcpy(v35, v30, 0x59uLL);
      sub_1DF77A414(v35);
      if ((v19 & 1) == 0)
      {
        sub_1DF772884(v31);
        goto LABEL_23;
      }

      sub_1DF774138(v31, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54180, &unk_1DF7B4B00);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1DF772884(v31);
        memset(v27, 0, sizeof(v27));
        v28 = 0;
        sub_1DF773CFC(v27, &qword_1ECE54188, &unk_1DF7B4AB0);
        goto LABEL_23;
      }

      sub_1DF7663E4(v27, v29);
      sub_1DF774138(__dst, v30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1DF772884(v31);
        memset(v25, 0, sizeof(v25));
        v26 = 0;
        sub_1DF773CFC(v25, &qword_1ECE54188, &unk_1DF7B4AB0);
        __swift_destroy_boxed_opaque_existential_1(v29);
        goto LABEL_23;
      }

      sub_1DF7663E4(v25, v27);
      v20 = v29[3];
      v21 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      LOBYTE(v20) = sub_1DF7911D0(v27, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v27);
      sub_1DF772884(v31);
      __swift_destroy_boxed_opaque_existential_1(v29);
      if (v20)
      {
        break;
      }

LABEL_23:
      v17 = (v17 + 1) & v18;
      if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    result = sub_1DF772884(__dst);
    v3 = v22;
    v8 = v23;
    v9 = v24;
  }

  while (v23);
LABEL_8:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v24 = v9;
      v11 = __clz(__rbit64(v13));
      v23 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_3_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        return a1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF78E1A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53E20, &qword_1DF7B2A08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF78E1F4()
{
  result = qword_1ECE53F90;
  if (!qword_1ECE53F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53F88, &qword_1DF7B2B00);
    sub_1DF78E278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53F90);
  }

  return result;
}

unint64_t sub_1DF78E278()
{
  result = qword_1ECE53F98;
  if (!qword_1ECE53F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53F98);
  }

  return result;
}

unint64_t sub_1DF78E2CC()
{
  result = qword_1ECE53FA8;
  if (!qword_1ECE53FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53FA0, &qword_1DF7B2B08);
    sub_1DF78E278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FA8);
  }

  return result;
}

unint64_t sub_1DF78E350()
{
  result = qword_1ECE53FB0;
  if (!qword_1ECE53FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FB0);
  }

  return result;
}

unint64_t sub_1DF78E3A4()
{
  result = qword_1ECE53FB8;
  if (!qword_1ECE53FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FB8);
  }

  return result;
}

unint64_t sub_1DF78E3F8()
{
  result = qword_1ECE53FC8;
  if (!qword_1ECE53FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53FC0, &qword_1DF7B2B10);
    sub_1DF77AF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FC8);
  }

  return result;
}

unint64_t sub_1DF78E47C()
{
  result = qword_1ECE53FD0;
  if (!qword_1ECE53FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FD0);
  }

  return result;
}

unint64_t sub_1DF78E4D0()
{
  result = qword_1ECE53FD8;
  if (!qword_1ECE53FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FD8);
  }

  return result;
}

unint64_t sub_1DF78E524()
{
  result = qword_1ECE53FE0;
  if (!qword_1ECE53FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FE0);
  }

  return result;
}

unint64_t sub_1DF78E578()
{
  result = qword_1ECE53FE8;
  if (!qword_1ECE53FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FE8);
  }

  return result;
}

unint64_t sub_1DF78E5CC()
{
  result = qword_1ECE53FF0;
  if (!qword_1ECE53FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FF0);
  }

  return result;
}

unint64_t sub_1DF78E620()
{
  result = qword_1ECE53FF8;
  if (!qword_1ECE53FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE53FF8);
  }

  return result;
}

uint64_t sub_1DF78E674(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DF7ADA24();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E12DEC80](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_8:
        sub_1DF7727D4(*(a2 + 48) + 144 * (__clz(__rbit64(v5)) | (v9 << 6)), __srca);
        memcpy(v16, __srca, 0x89uLL);
        sub_1DF7AD9E4();
        sub_1DF774138(v16, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D98, &unk_1DF7B4A90);
        if (swift_dynamicCast())
        {
          sub_1DF7663E4(v12, v15);
          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          sub_1DF7AD394();
          __swift_destroy_boxed_opaque_existential_1(v15);
        }

        else
        {
          v13 = 0;
          memset(v12, 0, sizeof(v12));
          sub_1DF773CFC(v12, &qword_1ECE53DA0, &unk_1DF7B2360);
        }

        v5 &= v5 - 1;
        v11 = sub_1DF7ADA24();
        result = sub_1DF772884(v16);
        v8 ^= v11;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF78E894(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DF7ADA24();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1DF7AD9E4();

    sub_1DF7AD404();
    v15 = sub_1DF7ADA24();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E12DEC80](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF78E9E8()
{
  result = qword_1EE1733F0;
  if (!qword_1EE1733F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53F88, &qword_1DF7B2B00);
    sub_1DF772BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733F0);
  }

  return result;
}

unint64_t sub_1DF78EA6C()
{
  result = qword_1EE173408;
  if (!qword_1EE173408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53FA0, &qword_1DF7B2B08);
    sub_1DF772BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173408);
  }

  return result;
}

unint64_t sub_1DF78EAF0()
{
  result = qword_1EE173400;
  if (!qword_1EE173400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE53FC0, &qword_1DF7B2B10);
    sub_1DF763F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173400);
  }

  return result;
}

unint64_t sub_1DF78EB78()
{
  result = qword_1ECE540F8;
  if (!qword_1ECE540F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE540F8);
  }

  return result;
}

unint64_t sub_1DF78EDC8()
{
  result = qword_1ECE54100;
  if (!qword_1ECE54100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54100);
  }

  return result;
}

unint64_t sub_1DF78EE20()
{
  result = qword_1ECE54108;
  if (!qword_1ECE54108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54108);
  }

  return result;
}

unint64_t sub_1DF78EE78()
{
  result = qword_1ECE54110;
  if (!qword_1ECE54110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54110);
  }

  return result;
}

unint64_t sub_1DF78EED0()
{
  result = qword_1ECE54118;
  if (!qword_1ECE54118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54118);
  }

  return result;
}

unint64_t sub_1DF78EF28()
{
  result = qword_1ECE54120;
  if (!qword_1ECE54120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54120);
  }

  return result;
}

unint64_t sub_1DF78EF80()
{
  result = qword_1ECE54128;
  if (!qword_1ECE54128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54128);
  }

  return result;
}

unint64_t sub_1DF78EFD8()
{
  result = qword_1ECE54130;
  if (!qword_1ECE54130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54130);
  }

  return result;
}

unint64_t sub_1DF78F030()
{
  result = qword_1ECE54138;
  if (!qword_1ECE54138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54138);
  }

  return result;
}

unint64_t sub_1DF78F088()
{
  result = qword_1ECE54140;
  if (!qword_1ECE54140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54140);
  }

  return result;
}

unint64_t sub_1DF78F0E0()
{
  result = qword_1ECE54148;
  if (!qword_1ECE54148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54148);
  }

  return result;
}

unint64_t sub_1DF78F138()
{
  result = qword_1ECE54150;
  if (!qword_1ECE54150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54150);
  }

  return result;
}

unint64_t sub_1DF78F190()
{
  result = qword_1ECE54158;
  if (!qword_1ECE54158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54158);
  }

  return result;
}

unint64_t sub_1DF78F1E8()
{
  result = qword_1ECE54160;
  if (!qword_1ECE54160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54160);
  }

  return result;
}

unint64_t sub_1DF78F240()
{
  result = qword_1ECE54168;
  if (!qword_1ECE54168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54168);
  }

  return result;
}

unint64_t sub_1DF78F298()
{
  result = qword_1EE1736C0;
  if (!qword_1EE1736C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736C0);
  }

  return result;
}

unint64_t sub_1DF78F2F0()
{
  result = qword_1EE1736C8;
  if (!qword_1EE1736C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736C8);
  }

  return result;
}

unint64_t sub_1DF78F348()
{
  result = qword_1EE1735E8;
  if (!qword_1EE1735E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735E8);
  }

  return result;
}

unint64_t sub_1DF78F3A0()
{
  result = qword_1EE1735F0;
  if (!qword_1EE1735F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735F0);
  }

  return result;
}

unint64_t sub_1DF78F3F8()
{
  result = qword_1EE173678;
  if (!qword_1EE173678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173678);
  }

  return result;
}

unint64_t sub_1DF78F450()
{
  result = qword_1EE173680;
  if (!qword_1EE173680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173680);
  }

  return result;
}

unint64_t sub_1DF78F4A8()
{
  result = qword_1EE1735B0;
  if (!qword_1EE1735B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735B0);
  }

  return result;
}

unint64_t sub_1DF78F500()
{
  result = qword_1EE1735A8;
  if (!qword_1EE1735A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735A8);
  }

  return result;
}

unint64_t sub_1DF78F558()
{
  result = qword_1EE173470;
  if (!qword_1EE173470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173470);
  }

  return result;
}

unint64_t sub_1DF78F5B0()
{
  result = qword_1EE173468;
  if (!qword_1EE173468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173468);
  }

  return result;
}

unint64_t sub_1DF78F608()
{
  result = qword_1EE173488;
  if (!qword_1EE173488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173488);
  }

  return result;
}

unint64_t sub_1DF78F660()
{
  result = qword_1EE173480;
  if (!qword_1EE173480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173480);
  }

  return result;
}

unint64_t sub_1DF78F6B8()
{
  result = qword_1EE173660;
  if (!qword_1EE173660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173660);
  }

  return result;
}

unint64_t sub_1DF78F710()
{
  result = qword_1EE173668;
  if (!qword_1EE173668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173668);
  }

  return result;
}

unint64_t sub_1DF78F768()
{
  result = qword_1EE1734D8;
  if (!qword_1EE1734D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734D8);
  }

  return result;
}

unint64_t sub_1DF78F7C0()
{
  result = qword_1EE1734E0;
  if (!qword_1EE1734E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734E0);
  }

  return result;
}

unint64_t sub_1DF78F818()
{
  result = qword_1EE173508;
  if (!qword_1EE173508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173508);
  }

  return result;
}

unint64_t sub_1DF78F870()
{
  result = qword_1EE173510;
  if (!qword_1EE173510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173510);
  }

  return result;
}

unint64_t sub_1DF78F8C8()
{
  result = qword_1EE173590;
  if (!qword_1EE173590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173590);
  }

  return result;
}

unint64_t sub_1DF78F920()
{
  result = qword_1EE173598;
  if (!qword_1EE173598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173598);
  }

  return result;
}

unint64_t sub_1DF78F978()
{
  result = qword_1EE173690;
  if (!qword_1EE173690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173690);
  }

  return result;
}

unint64_t sub_1DF78F9D0()
{
  result = qword_1EE173698;
  if (!qword_1EE173698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173698);
  }

  return result;
}

unint64_t sub_1DF78FA28()
{
  result = qword_1EE173630;
  if (!qword_1EE173630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173630);
  }

  return result;
}

unint64_t sub_1DF78FA80()
{
  result = qword_1EE173638;
  if (!qword_1EE173638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173638);
  }

  return result;
}

unint64_t sub_1DF78FAD8()
{
  result = qword_1EE1735B8;
  if (!qword_1EE1735B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735B8);
  }

  return result;
}

unint64_t sub_1DF78FB30()
{
  result = qword_1EE1735C0;
  if (!qword_1EE1735C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735C0);
  }

  return result;
}

unint64_t sub_1DF78FB88()
{
  result = qword_1EE173268;
  if (!qword_1EE173268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173268);
  }

  return result;
}

unint64_t sub_1DF78FBE0()
{
  result = qword_1EE173270;
  if (!qword_1EE173270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173270);
  }

  return result;
}

unint64_t sub_1DF78FC38()
{
  result = qword_1EE173560;
  if (!qword_1EE173560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173560);
  }

  return result;
}

unint64_t sub_1DF78FC90()
{
  result = qword_1EE173568;
  if (!qword_1EE173568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173568);
  }

  return result;
}

unint64_t sub_1DF78FCE8()
{
  result = qword_1EE1734F0;
  if (!qword_1EE1734F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734F0);
  }

  return result;
}

unint64_t sub_1DF78FD40()
{
  result = qword_1EE1734F8;
  if (!qword_1EE1734F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734F8);
  }

  return result;
}

unint64_t sub_1DF78FD98()
{
  result = qword_1EE173548;
  if (!qword_1EE173548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173548);
  }

  return result;
}

unint64_t sub_1DF78FDF0()
{
  result = qword_1EE173550;
  if (!qword_1EE173550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173550);
  }

  return result;
}

unint64_t sub_1DF78FE48()
{
  result = qword_1EE1734C0;
  if (!qword_1EE1734C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734C0);
  }

  return result;
}

unint64_t sub_1DF78FEA0()
{
  result = qword_1EE1734C8;
  if (!qword_1EE1734C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734C8);
  }

  return result;
}

unint64_t sub_1DF78FEF8()
{
  result = qword_1EE1736F0;
  if (!qword_1EE1736F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736F0);
  }

  return result;
}

unint64_t sub_1DF78FF50()
{
  result = qword_1EE1736F8;
  if (!qword_1EE1736F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736F8);
  }

  return result;
}

unint64_t sub_1DF78FFA8()
{
  result = qword_1EE1734A8;
  if (!qword_1EE1734A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734A8);
  }

  return result;
}

unint64_t sub_1DF790000()
{
  result = qword_1EE1734B0;
  if (!qword_1EE1734B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1734B0);
  }

  return result;
}

unint64_t sub_1DF790058()
{
  result = qword_1EE173490;
  if (!qword_1EE173490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173490);
  }

  return result;
}

unint64_t sub_1DF7900B0()
{
  result = qword_1EE173498;
  if (!qword_1EE173498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173498);
  }

  return result;
}

unint64_t sub_1DF790108()
{
  result = qword_1EE173648;
  if (!qword_1EE173648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173648);
  }

  return result;
}

unint64_t sub_1DF790160()
{
  result = qword_1EE173650;
  if (!qword_1EE173650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173650);
  }

  return result;
}

unint64_t sub_1DF7901B8()
{
  result = qword_1EE1735D0;
  if (!qword_1EE1735D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735D0);
  }

  return result;
}

unint64_t sub_1DF790210()
{
  result = qword_1EE1735D8;
  if (!qword_1EE1735D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1735D8);
  }

  return result;
}

unint64_t sub_1DF790268()
{
  result = qword_1EE173600;
  if (!qword_1EE173600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173600);
  }

  return result;
}

unint64_t sub_1DF7902C0()
{
  result = qword_1EE173608;
  if (!qword_1EE173608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173608);
  }

  return result;
}

unint64_t sub_1DF790318()
{
  result = qword_1EE173518;
  if (!qword_1EE173518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173518);
  }

  return result;
}

unint64_t sub_1DF790370()
{
  result = qword_1EE173520;
  if (!qword_1EE173520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173520);
  }

  return result;
}

unint64_t sub_1DF7903C8()
{
  result = qword_1EE173530;
  if (!qword_1EE173530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173530);
  }

  return result;
}

unint64_t sub_1DF790420()
{
  result = qword_1EE173538;
  if (!qword_1EE173538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173538);
  }

  return result;
}

unint64_t sub_1DF790478()
{
  result = qword_1EE173618;
  if (!qword_1EE173618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173618);
  }

  return result;
}

unint64_t sub_1DF7904D0()
{
  result = qword_1EE173620;
  if (!qword_1EE173620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173620);
  }

  return result;
}

unint64_t sub_1DF790528()
{
  result = qword_1EE1736A8;
  if (!qword_1EE1736A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736A8);
  }

  return result;
}

unint64_t sub_1DF790580()
{
  result = qword_1EE1736B0;
  if (!qword_1EE1736B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736B0);
  }

  return result;
}

unint64_t sub_1DF7905D8()
{
  result = qword_1EE173578;
  if (!qword_1EE173578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173578);
  }

  return result;
}

unint64_t sub_1DF790630()
{
  result = qword_1EE173580;
  if (!qword_1EE173580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173580);
  }

  return result;
}

unint64_t sub_1DF790688()
{
  result = qword_1EE1736D8;
  if (!qword_1EE1736D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736D8);
  }

  return result;
}

unint64_t sub_1DF7906E0()
{
  result = qword_1EE1736E0;
  if (!qword_1EE1736E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1736E0);
  }

  return result;
}

uint64_t sub_1DF790734(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return a2;
}

uint64_t sub_1DF790798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_36_0()
{

  return sub_1DF7AD934();
}

uint64_t OUTLINED_FUNCTION_41_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v13 = *(v0 + 104);
  v12 = *(v0 + 96);
  v11 = *(v0 + 80);

  return sub_1DF773DF4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, v13);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_1DF7AD8C4();
}

uint64_t OUTLINED_FUNCTION_51_0()
{
  v2 = *(v0 - 256);

  return sub_1DF7AD874();
}

void OUTLINED_FUNCTION_59_0(uint64_t a1@<X8>)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 40);
  v3 = STACK[0x318];
  v4 = STACK[0x310];
}

void Value.init<A>(_:type:)(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  OUTLINED_FUNCTION_0_11();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, v19, 0x59uLL);
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v21 = *(v13 + 16);
  v21(boxed_opaque_existential_1, a1, a3);
  memcpy(a6 + 6, a2, 0x59uLL);
  memcpy(v41, a2, 0x59uLL);
  v22 = sub_1DF770608(__dst, v40);
  ValueType.codableType.getter(v22, v23, v24, v25, v26, v27, v28, v29);
  if (swift_dynamicCastMetatype())
  {
    sub_1DF77A414(__dst);
    (*(v13 + 8))(a1, a3);
  }

  else
  {
    v21(v18, a1, a3);
    sub_1DF790C38();
    if (swift_dynamicCast())
    {
      sub_1DF77A414(__dst);
      (*(v13 + 8))(a1, a3);
    }

    else
    {
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      sub_1DF7AD6B4();

      v40[0] = 0x6574656D61726150;
      v40[1] = 0xEF20657079742072;
      v30 = memcpy(v41, __dst, 0x59uLL);
      ValueType.codableType.getter(v30, v31, v32, v33, v34, v35, v36, v37);
      v38 = sub_1DF7ADA94();
      MEMORY[0x1E12DE6C0](v38);

      MEMORY[0x1E12DE6C0](0xD000000000000016, 0x80000001DF7BA1F0);
      v39 = sub_1DF7ADA94();
      MEMORY[0x1E12DE6C0](v39);

      sub_1DF7AD784();
      __break(1u);
    }
  }
}

unint64_t sub_1DF790C38()
{
  result = qword_1ECE54198;
  if (!qword_1ECE54198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE54198);
  }

  return result;
}

uint64_t Value.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE541B0, &qword_1DF7B4AF8);
  OUTLINED_FUNCTION_0_11();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7718C8();
  sub_1DF7ADA64();
  memcpy(__dst, v3 + 6, 0x59uLL);
  memcpy(v18, v3 + 6, sizeof(v18));
  __dst[119] = 1;
  sub_1DF770608(__dst, v17);
  sub_1DF77AF8C();
  sub_1DF7AD904();
  memcpy(v17, v18, 0x59uLL);
  sub_1DF77A414(v17);
  if (!v2)
  {
    v14 = v3[5];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    __dst[118] = 0;
    sub_1DF7AD904();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DF790E60()
{
  v0 = sub_1DF7AD794();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF790ED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF790E60();
  *a2 = result;
  return result;
}

uint64_t sub_1DF790F08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF771950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DF790F34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF790E60();
  *a1 = result;
  return result;
}

uint64_t sub_1DF790F5C(uint64_t a1)
{
  v2 = sub_1DF7718C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF790F98(uint64_t a1)
{
  v2 = sub_1DF7718C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 48), 0x59uLL);
  memcpy(v14, (a1 + 48), 0x59uLL);
  memcpy(v16, (a2 + 48), 0x59uLL);
  memcpy(__src, (a2 + 48), 0x59uLL);
  sub_1DF770608(__dst, v18);
  sub_1DF770608(v16, v18);
  v4 = static ValueType.== infix(_:_:)(v14, __src);
  memcpy(v17, __src, 0x59uLL);
  sub_1DF77A414(v17);
  memcpy(v18, v14, 0x59uLL);
  sub_1DF77A414(v18);
  if (!v4)
  {
    goto LABEL_7;
  }

  sub_1DF774138(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54180, &unk_1DF7B4B00);
  if ((OUTLINED_FUNCTION_2_7() & 1) == 0)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_1DF773CFC(v11, &qword_1ECE54188, &unk_1DF7B4AB0);
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  sub_1DF7663E4(v11, __src);
  sub_1DF774138(a2, v14);
  if ((OUTLINED_FUNCTION_2_7() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1DF773CFC(v9, &qword_1ECE54188, &unk_1DF7B4AB0);
    __swift_destroy_boxed_opaque_existential_1(__src);
    goto LABEL_7;
  }

  sub_1DF7663E4(v9, v11);
  v5 = __src[3];
  v6 = __src[4];
  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  v7 = sub_1DF7911D0(v11, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(__src);
  return v7 & 1;
}

uint64_t sub_1DF7911D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[1] = a3;
  OUTLINED_FUNCTION_0_11();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43[0] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF7AD624();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_11();
  v44 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  OUTLINED_FUNCTION_0_11();
  v20 = v19;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v48 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v43 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v43 - v29;
  sub_1DF766CC8(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54180, &unk_1DF7B4B00);
  v31 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v30, v31 ^ 1u, 1, a2);
  v45 = v6;
  (*(v6 + 16))(v28, v47, a2);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, a2);
  v46 = TupleTypeMetadata2;
  v47 = v20;
  v32 = *(TupleTypeMetadata2 + 48);
  v34 = (v20 + 16);
  v33 = *(v20 + 16);
  v33(v18, v30, v11);
  v33(&v18[v32], v28, v11);
  OUTLINED_FUNCTION_3_7(v18);
  if (!v37)
  {
    v33(v48, v18, v11);
    OUTLINED_FUNCTION_3_7(&v18[v32]);
    if (!v37)
    {
      v39 = v45;
      v34 = v43[0];
      (*(v45 + 32))(v43[0], &v18[v32], a2);
      v36 = sub_1DF7AD3A4();
      v40 = *(v39 + 8);
      v40(v34, a2);
      v41 = OUTLINED_FUNCTION_1_9();
      v34(v41);
      v40(v48, a2);
      (v34)(v18, v11);
      goto LABEL_10;
    }

    v38 = OUTLINED_FUNCTION_1_9();
    v34(v38);
    (*(v45 + 8))(v48, a2);
LABEL_9:
    (*(v44 + 8))(v18, v46);
    v36 = 0;
    goto LABEL_10;
  }

  v35 = OUTLINED_FUNCTION_1_9();
  v34(v35);
  OUTLINED_FUNCTION_3_7(&v18[v32]);
  if (!v37)
  {
    goto LABEL_9;
  }

  (v34)(v18, v11);
  v36 = 1;
LABEL_10:
  (v34)(v30, v11);
  return v36 & 1;
}

uint64_t Value.hash(into:)()
{
  sub_1DF774138(v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D90, &unk_1DF7B2350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53D98, &unk_1DF7B4A90);
  if (swift_dynamicCast())
  {
    sub_1DF7663E4(v2, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1DF7AD394();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
    return sub_1DF773CFC(v2, &qword_1ECE53DA0, &unk_1DF7B2360);
  }
}

uint64_t Value.hashValue.getter()
{
  sub_1DF7AD9E4();
  Value.hash(into:)();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF791718()
{
  sub_1DF7AD9E4();
  Value.hash(into:)();
  return sub_1DF7ADA24();
}

unint64_t sub_1DF791758()
{
  result = qword_1EE173770;
  if (!qword_1EE173770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173770);
  }

  return result;
}

unint64_t sub_1DF7917D8()
{
  result = qword_1ECE541B8;
  if (!qword_1ECE541B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE541B8);
  }

  return result;
}

unint64_t sub_1DF791830()
{
  result = qword_1EE173778;
  if (!qword_1EE173778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173778);
  }

  return result;
}

unint64_t sub_1DF791888()
{
  result = qword_1EE173780;
  if (!qword_1EE173780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173780);
  }

  return result;
}

uint64_t static ValueDisplayName.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF7AD934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF7AD934();
    }
  }

  return result;
}

uint64_t sub_1DF791980(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DF7AD934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DF7AD934();

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

uint64_t sub_1DF791A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF791980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF791A6C(uint64_t a1)
{
  v2 = sub_1DF769BC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF791AA8(uint64_t a1)
{
  v2 = sub_1DF769BC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF791AE4(uint64_t a1)
{
  v2 = sub_1DF769C1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF791B20(uint64_t a1)
{
  v2 = sub_1DF769C1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ValueDisplayName.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE541C0, &qword_1DF7B4F00);
  OUTLINED_FUNCTION_4(v3);
  v25 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE541C8, &qword_1DF7B4F08);
  OUTLINED_FUNCTION_4(v10);
  v24 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[3];
  v23[1] = v1[2];
  v23[2] = v17;
  v23[0] = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF769C1C();
  sub_1DF7ADA64();
  sub_1DF769BC8();
  sub_1DF7AD874();
  v27 = 0;
  v21 = v23[3];
  sub_1DF7AD8D4();
  if (!v21)
  {
    v26 = 1;
    sub_1DF7AD8D4();
  }

  (*(v25 + 8))(v9, v3);
  return (*(v24 + 8))(v16, v10);
}

uint64_t ValueDisplayName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1E12DEC80](0);
  sub_1DF7AD404();

  return sub_1DF7AD404();
}

uint64_t ValueDisplayName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](0);
  sub_1DF7AD404();
  sub_1DF7AD404();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF791E8C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1DF7AD9E4();
  ValueDisplayName.hash(into:)();
  return sub_1DF7ADA24();
}

unint64_t sub_1DF791EE0()
{
  result = qword_1ECE541E0;
  if (!qword_1ECE541E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE541E0);
  }

  return result;
}

unint64_t sub_1DF791F68()
{
  result = qword_1ECE541E8;
  if (!qword_1ECE541E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE541E8);
  }

  return result;
}

unint64_t sub_1DF791FC0()
{
  result = qword_1ECE541F0;
  if (!qword_1ECE541F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE541F0);
  }

  return result;
}

unint64_t sub_1DF792018()
{
  result = qword_1EE173820;
  if (!qword_1EE173820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173820);
  }

  return result;
}

unint64_t sub_1DF792070()
{
  result = qword_1EE173828;
  if (!qword_1EE173828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173828);
  }

  return result;
}

unint64_t sub_1DF7920C8()
{
  result = qword_1EE173838;
  if (!qword_1EE173838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173838);
  }

  return result;
}

unint64_t sub_1DF792120()
{
  result = qword_1EE173840;
  if (!qword_1EE173840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173840);
  }

  return result;
}

uint64_t MeasurementType.codableType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = &unk_1ECE54298;
      v2 = 0x1E696AFE0;
      break;
    case 2:
      v1 = &unk_1ECE54290;
      v2 = 0x1E696AFE8;
      break;
    case 3:
      v1 = &unk_1ECE54288;
      v2 = 0x1E696AFF0;
      break;
    case 4:
      v1 = &unk_1ECE54280;
      v2 = 0x1E696B000;
      break;
    case 5:
      v1 = &unk_1ECE54278;
      v2 = 0x1E696B008;
      break;
    case 6:
      v1 = &unk_1ECE54270;
      v2 = 0x1E696B010;
      break;
    case 7:
      v1 = &unk_1ECE54268;
      v2 = 0x1E696B018;
      break;
    case 8:
      v1 = &unk_1ECE54260;
      v2 = 0x1E696B020;
      break;
    case 9:
      v1 = &unk_1ECE54258;
      v2 = 0x1E696B028;
      break;
    case 0xA:
      v1 = &unk_1ECE54250;
      v2 = 0x1E696B030;
      break;
    case 0xB:
      v1 = &unk_1ECE54248;
      v2 = 0x1E696B038;
      break;
    case 0xC:
      v1 = &unk_1ECE54240;
      v2 = 0x1E696B040;
      break;
    case 0xD:
      v1 = &unk_1ECE54238;
      v2 = 0x1E696B048;
      break;
    case 0xE:
      v1 = &unk_1ECE54230;
      v2 = 0x1E696B050;
      break;
    case 0xF:
      v1 = &unk_1ECE54228;
      v2 = 0x1E696B058;
      break;
    case 0x10:
      v1 = &unk_1ECE54220;
      v2 = 0x1E696B060;
      break;
    case 0x11:
      v1 = &unk_1ECE54218;
      v2 = 0x1E696B068;
      break;
    case 0x12:
      v1 = &unk_1ECE54210;
      v2 = 0x1E696B070;
      break;
    case 0x13:
      v1 = &unk_1ECE54208;
      v2 = 0x1E696B078;
      break;
    case 0x14:
      v1 = &unk_1ECE54200;
      v2 = 0x1E696B080;
      break;
    case 0x15:
      v1 = &unk_1ECE541F8;
      v2 = 0x1E696B088;
      break;
    default:
      v1 = &unk_1ECE542A0;
      v2 = 0x1E696AFD8;
      break;
  }

  return sub_1DF792368(0, v1, v2);
}

uint64_t sub_1DF792368(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DF7923B4()
{
  result = qword_1ECE542A8;
  if (!qword_1ECE542A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE542A8);
  }

  return result;
}

uint64_t sub_1DF792408@<X0>(uint64_t *a1@<X8>)
{
  result = MeasurementType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MeasurementType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

uint64_t IntentSystemProtocol.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7ADA54();
  sub_1DF792614(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DF792730();
  sub_1DF7AD954();
  sub_1DF76C850(v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1DF792614@<X0>(char *a1@<X8>)
{
  result = sub_1DF7729F4(v1, &v6);
  switch(v7)
  {
    case 0:
      v4 = 0;
      *a1 = 0;
      break;
    case 1:
      v4 = 0;
      v5 = 1;
      goto LABEL_10;
    case 2:
      v4 = 0;
      v5 = 2;
      goto LABEL_10;
    case 3:
      v4 = 0;
      v5 = 3;
      goto LABEL_10;
    case 4:
      v4 = 0;
      v5 = 4;
      goto LABEL_10;
    case 5:
      v4 = 0;
      v5 = 5;
      goto LABEL_10;
    case 6:
      v4 = 0;
      v5 = 6;
LABEL_10:
      *a1 = v5;
      break;
    default:
      result = sub_1DF7663E4(&v6, a1);
      v4 = 1;
      break;
  }

  a1[40] = v4;
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

unint64_t sub_1DF792730()
{
  result = qword_1ECE542B0;
  if (!qword_1ECE542B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE542B0);
  }

  return result;
}

uint64_t IntentSystemProtocol.hash(into:)()
{
  sub_1DF7729F4(v0, &v8);
  switch(v9)
  {
    case 0:
      v1 = 1;
      goto LABEL_10;
    case 1:
      v1 = 2;
      goto LABEL_10;
    case 2:
      v1 = 3;
      goto LABEL_10;
    case 3:
      v1 = 4;
      goto LABEL_10;
    case 4:
      v1 = 5;
      goto LABEL_10;
    case 5:
      v1 = 6;
      goto LABEL_10;
    case 6:
      v1 = 7;
LABEL_10:
      result = MEMORY[0x1E12DEC80](v1);
      break;
    default:
      sub_1DF7663E4(&v8, v5);
      v2 = v6;
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      (*(v3 + 8))(v2, v3);
      sub_1DF7AD404();

      result = __swift_destroy_boxed_opaque_existential_1(v5);
      break;
  }

  return result;
}

uint64_t IntentSystemProtocol.hashValue.getter()
{
  sub_1DF7AD9E4();
  IntentSystemProtocol.hash(into:)();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF7928E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72657070617277 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DF7AD934();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1DF792960()
{
  OUTLINED_FUNCTION_14_0();
  v33 = v0;
  v34 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE542D8, &qword_1DF7B5660);
  v6 = OUTLINED_FUNCTION_4(v5);
  v31 = v7;
  v32 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE542E0, &qword_1DF7B5668);
  OUTLINED_FUNCTION_4(v11);
  v30[1] = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE542E8, &qword_1DF7B5670);
  OUTLINED_FUNCTION_4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v30 - v22;
  v24 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DF76B918();
  sub_1DF7ADA64();
  sub_1DF76C7B8(v33, v37);
  v25 = (v18 + 8);
  if (v39)
  {
    v35[0] = v37[0];
    v35[1] = v37[1];
    v36 = v38;
    sub_1DF76CC74();
    OUTLINED_FUNCTION_12_1();
    sub_1DF7AD874();
    sub_1DF793A00();
    v26 = v32;
    sub_1DF7AD904();
    (*(v31 + 8))(v2, v26);
    sub_1DF76CA4C(v35);
  }

  else
  {
    v27 = v37[0];
    LOBYTE(v35[0]) = 0;
    sub_1DF76BB3C();
    OUTLINED_FUNCTION_12_1();
    sub_1DF7AD874();
    LOBYTE(v35[0]) = v27;
    sub_1DF793A54();
    sub_1DF7AD904();
    v28 = OUTLINED_FUNCTION_5_4();
    v29(v28);
  }

  (*v25)(v23, v16);
  OUTLINED_FUNCTION_13_2();
}

void sub_1DF792C48()
{
  OUTLINED_FUNCTION_14_0();
  v81 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54368, &qword_1DF7B5AF8);
  v6 = OUTLINED_FUNCTION_4(v5);
  v79 = v7;
  v80 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_22();
  v78 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54370, &qword_1DF7B5B00);
  v13 = OUTLINED_FUNCTION_4(v12);
  v76 = v14;
  v77 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22();
  v75 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54378, &qword_1DF7B5B08);
  v20 = OUTLINED_FUNCTION_4(v19);
  v73 = v21;
  v74 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_22();
  v72 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54380, &qword_1DF7B5B10);
  v27 = OUTLINED_FUNCTION_4(v26);
  v70 = v28;
  v71 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_22();
  v69 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54388, &qword_1DF7B5B18);
  v34 = OUTLINED_FUNCTION_4(v33);
  v67 = v35;
  v68 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_22();
  v66 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54390, &qword_1DF7B5B20);
  v41 = OUTLINED_FUNCTION_4(v40);
  v64 = v42;
  v65 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v62 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54398, &qword_1DF7B5B28);
  OUTLINED_FUNCTION_4(v48);
  v63 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_3();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE543A0, &qword_1DF7B5B30);
  OUTLINED_FUNCTION_4(v53);
  v55 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_10_2();
  v59 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DF76C198();
  sub_1DF7ADA64();
  switch(v81)
  {
    case 1:
      sub_1DF76C4F8();
      OUTLINED_FUNCTION_2_8();
      v61 = v64;
      v60 = v65;
      goto LABEL_9;
    case 2:
      sub_1DF76CBCC();
      v47 = v66;
      OUTLINED_FUNCTION_2_8();
      v61 = v67;
      v60 = v68;
      goto LABEL_9;
    case 3:
      sub_1DF76CB78();
      v47 = v69;
      OUTLINED_FUNCTION_2_8();
      v61 = v70;
      v60 = v71;
      goto LABEL_9;
    case 4:
      sub_1DF76CB24();
      v47 = v72;
      OUTLINED_FUNCTION_2_8();
      v61 = v73;
      v60 = v74;
      goto LABEL_9;
    case 5:
      sub_1DF793E54();
      v47 = v75;
      OUTLINED_FUNCTION_2_8();
      v61 = v76;
      v60 = v77;
      goto LABEL_9;
    case 6:
      sub_1DF772B58();
      v47 = v78;
      OUTLINED_FUNCTION_2_8();
      v61 = v79;
      v60 = v80;
LABEL_9:
      (*(v61 + 8))(v47, v60);
      break;
    default:
      sub_1DF76C9F8();
      sub_1DF7AD874();
      (*(v63 + 8))(v0, v48);
      break;
  }

  (*(v55 + 8))(v1, v53);
  OUTLINED_FUNCTION_13_2();
}

uint64_t sub_1DF7931B8()
{
  sub_1DF7AD9E4();
  IntentSystemProtocol.hash(into:)();
  return sub_1DF7ADA24();
}

unint64_t sub_1DF7931F8()
{
  result = qword_1ECE542B8;
  if (!qword_1ECE542B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE542B8);
  }

  return result;
}

uint64_t sub_1DF79324C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 40))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF7932A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1DF793300(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF79333C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DF793388(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1DF7933BC()
{
  v1 = *v0;
  sub_1DF7AD9E4();
  MEMORY[0x1E12DEC80](v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF793400(uint64_t a1)
{
  v2 = sub_1DF76B918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79343C(uint64_t a1)
{
  v2 = sub_1DF76B918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793478(uint64_t a1)
{
  v2 = sub_1DF76BB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7934B4(uint64_t a1)
{
  v2 = sub_1DF76BB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF7934F0(uint64_t a1)
{
  v2 = sub_1DF76CC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF79352C(uint64_t a1)
{
  v2 = sub_1DF76CC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793580(uint64_t a1)
{
  v2 = sub_1DF76CB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7935BC(uint64_t a1)
{
  v2 = sub_1DF76CB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF7935F8(uint64_t a1)
{
  v2 = sub_1DF76CB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF793634(uint64_t a1)
{
  v2 = sub_1DF76CB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF792C40();
  *a1 = result;
  return result;
}

uint64_t sub_1DF7936B0(uint64_t a1)
{
  v2 = sub_1DF76C198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7936EC(uint64_t a1)
{
  v2 = sub_1DF76C198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793728(uint64_t a1)
{
  v2 = sub_1DF76C4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF793764(uint64_t a1)
{
  v2 = sub_1DF76C4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF7937A0(uint64_t a1)
{
  v2 = sub_1DF793E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7937DC(uint64_t a1)
{
  v2 = sub_1DF793E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793818(uint64_t a1)
{
  v2 = sub_1DF76C9F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF793854(uint64_t a1)
{
  v2 = sub_1DF76C9F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793890(uint64_t a1)
{
  v2 = sub_1DF76CBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF7938CC(uint64_t a1)
{
  v2 = sub_1DF76CBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793908(uint64_t a1)
{
  v2 = sub_1DF772B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF793944(uint64_t a1)
{
  v2 = sub_1DF772B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF793998(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1DF7AD9E4();
  a4(v8, v6);
  return sub_1DF7ADA24();
}

unint64_t sub_1DF793A00()
{
  result = qword_1ECE542F0;
  if (!qword_1ECE542F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE542F0);
  }

  return result;
}

unint64_t sub_1DF793A54()
{
  result = qword_1ECE542F8;
  if (!qword_1ECE542F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE542F8);
  }

  return result;
}

unint64_t sub_1DF793AE8()
{
  result = qword_1ECE54300;
  if (!qword_1ECE54300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54300);
  }

  return result;
}

unint64_t sub_1DF793B40()
{
  result = qword_1ECE54308;
  if (!qword_1ECE54308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54308);
  }

  return result;
}

unint64_t sub_1DF793B98()
{
  result = qword_1ECE54310;
  if (!qword_1ECE54310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54310);
  }

  return result;
}

unint64_t sub_1DF793BF0()
{
  result = qword_1ECE54318;
  if (!qword_1ECE54318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54318);
  }

  return result;
}

unint64_t sub_1DF793C48()
{
  result = qword_1EE173BE8;
  if (!qword_1EE173BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BE8);
  }

  return result;
}

unint64_t sub_1DF793CA0()
{
  result = qword_1EE173BF0;
  if (!qword_1EE173BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BF0);
  }

  return result;
}

unint64_t sub_1DF793CF8()
{
  result = qword_1EE173C00;
  if (!qword_1EE173C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173C00);
  }

  return result;
}

unint64_t sub_1DF793D50()
{
  result = qword_1EE173C08;
  if (!qword_1EE173C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173C08);
  }

  return result;
}

unint64_t sub_1DF793DA8()
{
  result = qword_1EE173C18;
  if (!qword_1EE173C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173C18);
  }

  return result;
}

unint64_t sub_1DF793E00()
{
  result = qword_1EE173C20;
  if (!qword_1EE173C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173C20);
  }

  return result;
}

unint64_t sub_1DF793E54()
{
  result = qword_1ECE54360;
  if (!qword_1ECE54360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54360);
  }

  return result;
}

unint64_t sub_1DF793F2C()
{
  result = qword_1ECE543A8;
  if (!qword_1ECE543A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE543A8);
  }

  return result;
}

unint64_t sub_1DF793F84()
{
  result = qword_1EE173BB0;
  if (!qword_1EE173BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BB0);
  }

  return result;
}

unint64_t sub_1DF793FDC()
{
  result = qword_1EE173BB8;
  if (!qword_1EE173BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BB8);
  }

  return result;
}

unint64_t sub_1DF794034()
{
  result = qword_1EE173B98;
  if (!qword_1EE173B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B98);
  }

  return result;
}

unint64_t sub_1DF79408C()
{
  result = qword_1EE173BA0;
  if (!qword_1EE173BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BA0);
  }

  return result;
}

unint64_t sub_1DF7940E4()
{
  result = qword_1EE173B80;
  if (!qword_1EE173B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B80);
  }

  return result;
}

unint64_t sub_1DF79413C()
{
  result = qword_1EE173B88;
  if (!qword_1EE173B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B88);
  }

  return result;
}

unint64_t sub_1DF794194()
{
  result = qword_1EE173B58;
  if (!qword_1EE173B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B58);
  }

  return result;
}

unint64_t sub_1DF7941EC()
{
  result = qword_1EE173B60;
  if (!qword_1EE173B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B60);
  }

  return result;
}

unint64_t sub_1DF794244()
{
  result = qword_1EE173B40;
  if (!qword_1EE173B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B40);
  }

  return result;
}

unint64_t sub_1DF79429C()
{
  result = qword_1EE173B48;
  if (!qword_1EE173B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B48);
  }

  return result;
}

unint64_t sub_1DF7942F4()
{
  result = qword_1EE173B70;
  if (!qword_1EE173B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B70);
  }

  return result;
}

unint64_t sub_1DF79434C()
{
  result = qword_1EE173B78;
  if (!qword_1EE173B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B78);
  }

  return result;
}

unint64_t sub_1DF7943A4()
{
  result = qword_1EE173B28;
  if (!qword_1EE173B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B28);
  }

  return result;
}

unint64_t sub_1DF7943FC()
{
  result = qword_1EE173B30;
  if (!qword_1EE173B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173B30);
  }

  return result;
}

unint64_t sub_1DF794454()
{
  result = qword_1EE173BC8;
  if (!qword_1EE173BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BC8);
  }

  return result;
}

unint64_t sub_1DF7944AC()
{
  result = qword_1EE173BD0;
  if (!qword_1EE173BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173BD0);
  }

  return result;
}

uint64_t static EnumSchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 48);
  v17 = *(a1 + 64);
  v18 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  if (!v10 && (sub_1DF7AD934() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v6 && v4 == v7;
  if (!v13 && (sub_1DF7AD934() & 1) == 0 || (sub_1DF789780(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = v5;
  }

  if (v9 == 3)
  {
    if (v14 != 1)
    {
      return 0;
    }
  }

  else if (v14 != v9)
  {
    return 0;
  }

  if (v18 == v11 && v17 == v12)
  {
    return 1;
  }

  return sub_1DF7AD934();
}

uint64_t EnumSchema.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EnumSchema._displayRepresentation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void EnumSchema._visibility.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 48);
  if (v2 == 3)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

uint64_t EnumSchema.domainIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

unint64_t EnumSchema.subscript.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 32);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 16 * result;
      v5 = *(v4 + 40);
      *a2 = *(v4 + 32);
      a2[1] = v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnumSchema.init<A>(_:displayRepresentation:requiredEntitlements:visibility:cases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  return sub_1DF794738(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  return EnumSchema.init<A>(_:displayRepresentation:requiredEntitlements:visibility:cases:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF794738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = *a5;
  v16 = *(a9 + 16);
  v17 = sub_1DF7AD474();
  *a8 = v21;
  *(a8 + 8) = v22;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a6(v17);
  *(a8 + 48) = v15;
  swift_getDynamicType();
  *(a8 + 56) = (*(a9 + 24))(a7, a9);
  *(a8 + 64) = v18;
  *(a8 + 40) = a4;
  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t EnumSchema.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = *(v1 + 48);
  v10 = v1[7];
  v11 = v1[8];
  sub_1DF7AD404();
  sub_1DF7AD404();
  sub_1DF785D9C(a1, v8);
  sub_1DF7ADA04();
  if (v7)
  {
    sub_1DF78E894(a1, v7);
  }

  sub_1DF7ADA04();
  if (v9 != 3)
  {
    MEMORY[0x1E12DEC80](v9);
  }

  return sub_1DF7AD404();
}

uint64_t EnumSchema.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = *(v0 + 48);
  v8 = v0[7];
  v9 = v0[8];
  sub_1DF7AD9E4();
  sub_1DF7AD404();
  sub_1DF7AD404();
  sub_1DF785D9C(__src, v6);
  sub_1DF7ADA04();
  if (v5)
  {
    sub_1DF78E894(__src, v5);
  }

  sub_1DF7ADA04();
  if (v7 != 3)
  {
    MEMORY[0x1E12DEC80](v7);
  }

  sub_1DF7AD404();
  return sub_1DF7ADA24();
}

uint64_t sub_1DF794A38()
{
  sub_1DF7AD9E4();
  EnumSchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t EnumSchema.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE543C8, &qword_1DF7B6198);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v22 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v26 = v1[3];
  v27 = v13;
  v14 = v1[4];
  v24 = v1[5];
  v25 = v14;
  v23 = *(v1 + 48);
  v15 = v1[7];
  v28 = v1[8];
  v29 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7958E0();
  sub_1DF7ADA64();
  LOBYTE(v32) = 0;
  v17 = v30;
  sub_1DF7AD8D4();
  if (!v17)
  {
    v19 = v24;
    v18 = v25;
    LOBYTE(v32) = 1;
    sub_1DF7AD8D4();
    LOBYTE(v32) = 2;
    sub_1DF7AD8D4();
    v32 = v18;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE543B8, &qword_1DF7B6188);
    sub_1DF795964(&qword_1ECE543D0, sub_1DF772210);
    OUTLINED_FUNCTION_3_8();
    sub_1DF7AD904();
    v32 = v19;
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE543C0, &qword_1DF7B6190);
    sub_1DF7959DC(&qword_1ECE543D8);
    OUTLINED_FUNCTION_3_8();
    sub_1DF7AD8C4();
    if (v23 == 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = v23;
    }

    LOBYTE(v32) = v20;
    v31 = 5;
    sub_1DF795A48();
    sub_1DF7AD904();
  }

  return (*(v6 + 8))(v10, v3);
}

AppIntentSchemas::EnumSchema::CodingKeys_optional __swiftcall EnumSchema.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF7AD794();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

AppIntentSchemas::EnumSchema::CodingKeys_optional __swiftcall EnumSchema.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = EnumSchema.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1DF794DE8()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x73657361635FLL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x6C6962697369765FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF794ED8@<X0>(uint64_t *a1@<X8>)
{
  result = EnumSchema.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF794F0C(uint64_t a1)
{
  v2 = sub_1DF7958E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF794F48(uint64_t a1)
{
  v2 = sub_1DF7958E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnumSchema.visibility(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[7];
  v11 = v2[8];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 48) = v3;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
}

uint64_t sub_1DF79501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7666E8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1DF7950D0()
{
  sub_1DF795E34();

  return sub_1DF7AD224();
}

uint64_t sub_1DF795214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF78E4D0();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1DF79527C()
{
  v0 = sub_1DF7ACFD4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DF795E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54418, &unk_1DF7B65A0);
  sub_1DF795EE0();
  sub_1DF7AD664();
  sub_1DF7AD334();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_1DF7953D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54428, &unk_1DF7B6A50);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54430, &unk_1DF7B65B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54438, &qword_1DF7B6A60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  sub_1DF7AD2C4();
  v14 = sub_1DF7AD2F4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  v15 = *MEMORY[0x1E69A00C0];
  v16 = sub_1DF7AD324();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1DF7AD174();
  sub_1DF773CFC(v9, &qword_1ECE54430, &unk_1DF7B65B0);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();
  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  v17 = *MEMORY[0x1E69A00B8];
  v18 = sub_1DF7AD304();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  v19 = v22;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v18);
  sub_1DF7AD194();

  sub_1DF773CFC(v19, &qword_1ECE54428, &unk_1DF7B6A50);
  sub_1DF773CFC(v5, &qword_1ECE54428, &unk_1DF7B6A50);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  sub_1DF7AD1A4();

  return sub_1DF773CFC(v9, &qword_1ECE54430, &unk_1DF7B65B0);
}

unint64_t sub_1DF7958E0()
{
  result = qword_1EE1733B8;
  if (!qword_1EE1733B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733B8);
  }

  return result;
}

uint64_t sub_1DF795964(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE543B8, &qword_1DF7B6188);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF7959DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE543C0, &qword_1DF7B6190);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF795A48()
{
  result = qword_1ECE543E0;
  if (!qword_1ECE543E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE543E0);
  }

  return result;
}

unint64_t sub_1DF795AA0()
{
  result = qword_1ECE543E8;
  if (!qword_1ECE543E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE543E8);
  }

  return result;
}

unint64_t sub_1DF795AF8()
{
  result = qword_1ECE543F0;
  if (!qword_1ECE543F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE543F0);
  }

  return result;
}

unint64_t sub_1DF795B50()
{
  result = qword_1EE1733A8;
  if (!qword_1EE1733A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733A8);
  }

  return result;
}

unint64_t sub_1DF795BA8()
{
  result = qword_1EE1733B0;
  if (!qword_1EE1733B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1733B0);
  }

  return result;
}

unint64_t sub_1DF795C00()
{
  result = qword_1ECE543F8;
  if (!qword_1ECE543F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE543F8);
  }

  return result;
}

unint64_t sub_1DF795C58()
{
  result = qword_1ECE54400;
  if (!qword_1ECE54400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54400);
  }

  return result;
}

uint64_t sub_1DF795CB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DF795CF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for EnumSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DF795E34()
{
  result = qword_1ECE54408;
  if (!qword_1ECE54408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54408);
  }

  return result;
}

unint64_t sub_1DF795E88()
{
  result = qword_1ECE54410;
  if (!qword_1ECE54410)
  {
    sub_1DF7ACFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54410);
  }

  return result;
}

unint64_t sub_1DF795EE0()
{
  result = qword_1ECE54420;
  if (!qword_1ECE54420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54418, &unk_1DF7B65A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54420);
  }

  return result;
}

uint64_t EntitySchema._displayRepresentation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void EntitySchema._visibility.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 56);
  if (v2 == 3)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

uint64_t EntitySchema.domainIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t EntitySchema.init<A>(_:displayRepresentation:systemProtocols:requiredEntitlements:visibility:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  return sub_1DF795FEC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  return EntitySchema.init<A>(_:displayRepresentation:systemProtocols:requiredEntitlements:visibility:properties:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1DF795FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v21 = *a6;
  v14 = *(a10 + 16);
  v15 = sub_1DF7AD474();
  v16 = a7(v15);
  v17 = (*(a10 + 24))(a9, a10);
  v19 = v18;
  result = (*(*(a9 - 8) + 8))(a1, a9);
  *a8 = v25;
  *(a8 + 8) = v26;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = v16;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = v21;
  *(a8 + 64) = v17;
  *(a8 + 72) = v19;
  *(a8 + 80) = 0;
  return result;
}

uint64_t EntitySchema.init<A>(_:displayRepresentation:systemProtocols:requiredEntitlements:visibility:updateIntent:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return sub_1DF796114(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

{
  return EntitySchema.init<A>(_:displayRepresentation:systemProtocols:requiredEntitlements:visibility:updateIntent:properties:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1DF796114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a6;
  v17 = *(a12 + 16);
  v18 = sub_1DF7AD474();
  v41 = v62;
  v42 = v61;
  v19 = a8(v18);
  v20 = (*(a12 + 24))(a11, a12);
  v22 = v21;
  v40 = a7;
  sub_1DF76A114(a7, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54440, &unk_1DF7B65D0);
  OUTLINED_FUNCTION_8_5();
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x110uLL);
  sub_1DF76A114(v23 + 16, v56);
  v24 = v57 == v20 && v58 == v22;
  if (v24 || (result = sub_1DF7AD934(), (result & 1) != 0))
  {
    v36 = v23;
    v37 = v22;
    v38 = v20;
    v39 = v16;
    v26 = *(v19 + 16);
    if (v26)
    {
      v35 = a9;
      v55 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_9_4();
      v27 = v55;
      v28 = v26 - 1;
      for (i = (v19 + 176); ; i += 328)
      {
        memcpy(__dst, i - 144, sizeof(__dst));
        memcpy(v54, i, sizeof(v54));
        if (sub_1DF7981B8(v54) == 1)
        {
          memcpy(v52, __dst, sizeof(v52));
          memcpy(v51, &__dst[137], 0xBFuLL);
          sub_1DF7981DC(v48);
          memcpy(v49, v48, sizeof(v49));
          nullsub_1(v49);
          memcpy(v50, v51 + 7, sizeof(v50));
          sub_1DF77B7A0(__dst, v47);
          sub_1DF773CFC(v50, &qword_1ECE53A70, &qword_1DF7ADF40);
          memcpy(v51 + 7, v49, 0xB8uLL);
          v30 = 1;
        }

        else
        {
          memcpy(v52, __dst, sizeof(v52));
          v30 = __dst[136];
          memcpy(v51, &__dst[137], 0xBFuLL);
          sub_1DF77B7A0(__dst, v47);
        }

        memcpy(v50, v52, 0x88uLL);
        memcpy(v47, v51, 0xBFuLL);
        v55 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1DF798198(v31 > 1, v32 + 1, 1);
          v27 = v55;
        }

        *(v27 + 16) = v32 + 1;
        v33 = (v27 + 328 * v32);
        memcpy(v33 + 32, v50, 0x88uLL);
        v33[168] = v30;
        memcpy(v33 + 169, v47, 0xBFuLL);
        if (!v28)
        {
          break;
        }

        --v28;
      }

      a9 = v35;
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v51[0] = v42;
    v51[1] = v41;
    v51[2] = a2;
    v51[3] = a3;
    v51[4] = v27;
    v51[5] = a4;
    v51[6] = a5;
    LOBYTE(v51[7]) = v39;
    *(&v51[7] + 1) = *v59;
    HIDWORD(v51[7]) = *&v59[3];
    v51[8] = v20;
    v51[9] = v37;
    v51[10] = 0;
    memcpy(v54, v51, 0x58uLL);
    sub_1DF783BD0(v51, __dst);
    sub_1DF7A1300(v54, __dst);
    swift_setDeallocating();
    sub_1DF76A0C0(v36 + 16);
    OUTLINED_FUNCTION_8_5();
    swift_deallocClassInstance();
    sub_1DF76A0C0(v40);
    (*(*(a11 - 8) + 8))(a1);
    memcpy(v47, v54, 0x58uLL);
    sub_1DF78E0A4(v47);
    OUTLINED_FUNCTION_8_5();
    v34 = swift_allocObject();
    memcpy((v34 + 16), __dst, 0x110uLL);
    result = sub_1DF76A0C0(v56);
    *a9 = v42;
    *(a9 + 8) = v41;
    *(a9 + 16) = a2;
    *(a9 + 24) = a3;
    *(a9 + 32) = v27;
    *(a9 + 40) = a4;
    *(a9 + 48) = a5;
    *(a9 + 56) = v39;
    *(a9 + 57) = *v59;
    *(a9 + 60) = *&v59[3];
    *(a9 + 64) = v38;
    *(a9 + 72) = v37;
    *(a9 + 80) = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EntitySchema.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 56);
  v11 = v1[9];
  v14 = v1[8];
  v12 = v1[10];
  sub_1DF7AD404();
  sub_1DF7AD404();
  sub_1DF785C84();
  sub_1DF785C44(a1, v8);
  sub_1DF7ADA04();
  if (v9)
  {
    sub_1DF78E894(a1, v9);
  }

  sub_1DF7ADA04();
  if (v10 != 3)
  {
    MEMORY[0x1E12DEC80](v10);
  }

  sub_1DF7AD404();
  if (!v12)
  {
    return sub_1DF7ADA04();
  }

  sub_1DF7ADA04();
  return IntentSchema.hash(into:)(a1);
}

uint64_t EntitySchema.hashValue.getter()
{
  sub_1DF7AD9E4();
  EntitySchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t sub_1DF796708()
{
  sub_1DF7AD9E4();
  EntitySchema.hash(into:)(v1);
  return sub_1DF7ADA24();
}

uint64_t EntitySchema.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54460, &qword_1DF7B6600);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v22 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v26 = v1[3];
  v27 = v13;
  v14 = v1[4];
  v24 = v1[5];
  v25 = v14;
  v22 = v1[6];
  v23 = *(v1 + 56);
  v15 = v1[8];
  v28 = v1[9];
  v29 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF7988A0();
  sub_1DF7ADA64();
  LOBYTE(v32) = 0;
  v17 = v30;
  sub_1DF7AD8D4();
  if (!v17)
  {
    v19 = v24;
    v18 = v25;
    LOBYTE(v32) = 1;
    sub_1DF7AD8D4();
    LOBYTE(v32) = 2;
    sub_1DF7AD8D4();
    v32 = v18;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54450, &unk_1DF7B8BE0);
    sub_1DF798A04(&qword_1ECE54468, sub_1DF798A6C);
    OUTLINED_FUNCTION_0_13();
    sub_1DF7AD904();
    v32 = v19;
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54458, &unk_1DF7B65F0);
    sub_1DF798948(&qword_1ECE54478, sub_1DF798AC0);
    OUTLINED_FUNCTION_0_13();
    sub_1DF7AD904();
    if (v23 == 3)
    {
      v20 = 1;
    }

    else
    {
      v20 = v23;
    }

    LOBYTE(v32) = v20;
    v31 = 5;
    sub_1DF795A48();
    sub_1DF7AD904();
    v32 = v22;
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE543C0, &qword_1DF7B6190);
    sub_1DF7959DC(&qword_1ECE543D8);
    OUTLINED_FUNCTION_0_13();
    sub_1DF7AD8C4();
  }

  return (*(v6 + 8))(v10, v3);
}

AppIntentSchemas::EntitySchema::CodingKeys_optional __swiftcall EntitySchema.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF7AD794();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

AppIntentSchemas::EntitySchema::CodingKeys_optional __swiftcall EntitySchema.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = EntitySchema.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1DF796B2C()
{
  result = 25705;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x747265706F72705FLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C6962697369765FLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF796C3C@<X0>(uint64_t *a1@<X8>)
{
  result = EntitySchema.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF796C70(uint64_t a1)
{
  v2 = sub_1DF7988A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF796CAC(uint64_t a1)
{
  v2 = sub_1DF7988A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static EntitySchema.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v23 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *(&v21 + 1) = *(a1 + 80);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v26 = *(a2 + 40);
  v27 = *(a1 + 40);
  v22 = *(a2 + 48);
  v24 = *(a2 + 56);
  v25 = *(a1 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  *&v21 = *(a2 + 80);
  if (!v12 && (sub_1DF7AD934() & 1) == 0)
  {
    return 0;
  }

  v13 = v5 == v10 && v6 == v11;
  if (!v13 && (sub_1DF7AD934() & 1) == 0)
  {
    return 0;
  }

  v14 = v2 == v7 && v4 == v8;
  if (!v14 && (sub_1DF7AD934() & 1) == 0)
  {
    return 0;
  }

  sub_1DF78980C();
  if ((v15 & 1) == 0 || (sub_1DF789A44(v27, v26) & 1) == 0)
  {
    return 0;
  }

  v16 = v25;
  if (v25 == 3)
  {
    v16 = 1;
  }

  if (v24 == 3)
  {
    if (v16 != 1)
    {
      return 0;
    }
  }

  else if (v16 != v24)
  {
    return 0;
  }

  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (!v22)
  {
    return 0;
  }

  v18 = sub_1DF78DB44(v17, v22);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  result = v21 == 0;
  if (*(&v21 + 1))
  {
    if (v21)
    {

      v20 = static IntentSchema.== infix(_:_:)(*(&v21 + 1) + 16, v21 + 16);

      return v20 & 1;
    }
  }

  return result;
}

uint64_t EntitySchema.properties(properties:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  v59 = *(v2 + 16);
  v8 = *(v2 + 40);
  v7 = *(v2 + 48);
  v58 = *(v2 + 56);
  v9 = *(v2 + 72);
  v63 = *v2;
  v64 = *(v2 + 64);
  v10 = *(v2 + 80);

  v62 = v5;

  v61 = v6;
  v11 = v7;

  v60 = v8;

  v13 = a1(v12);
  if (!v10)
  {

    v43 = 0;
    v44 = v13;
    v46 = v8;
    v45 = v61;
    v47 = v59;
    v42 = v58;
    v48 = v63;
LABEL_20:
    *a2 = v48;
    *(a2 + 8) = v5;
    *(a2 + 16) = v47;
    *(a2 + 24) = v45;
    *(a2 + 32) = v44;
    *(a2 + 40) = v46;
    *(a2 + 48) = v11;
    *(a2 + 56) = v42;
    *(a2 + 57) = v77[0];
    *(a2 + 60) = *(v77 + 3);
    *(a2 + 64) = v64;
    *(a2 + 72) = v9;
    *(a2 + 80) = v43;
    return result;
  }

  sub_1DF76A114(v10 + 16, v74);
  v14 = v64;
  v15 = v75 == v64 && v76 == v9;
  if (v15 || (result = sub_1DF7AD934(), (result & 1) != 0))
  {
    v56 = v10;
    v57 = v7;
    v17 = *(v13 + 16);
    if (v17)
    {
      v73 = MEMORY[0x1E69E7CC0];
      v55 = v9;

      OUTLINED_FUNCTION_9_4();
      v18 = v73;
      v19 = v17 - 1;
      v54 = v13;
      for (i = (v13 + 176); ; i += 328)
      {
        memcpy(__dst, i - 144, sizeof(__dst));
        memcpy(v72, i, sizeof(v72));
        if (sub_1DF7981B8(v72) == 1)
        {
          OUTLINED_FUNCTION_6_6();
          OUTLINED_FUNCTION_13_3();
          sub_1DF7981DC(__src);
          memcpy(v67, __src, sizeof(v67));
          nullsub_1(v67);
          v21 = memcpy(v68, v69 + 7, sizeof(v68));
          OUTLINED_FUNCTION_14_3(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, v56);
          sub_1DF773CFC(v68, &qword_1ECE53A70, &qword_1DF7ADF40);
          memcpy(v69 + 7, v67, 0xB8uLL);
          v29 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_6_6();
          v29 = __dst[136];
          v30 = OUTLINED_FUNCTION_13_3();
          OUTLINED_FUNCTION_14_3(v30, v31, v32, v33, v34, v35, v36, v37, v53, v54, v55, v56);
        }

        memcpy(v68, v70, 0x88uLL);
        memcpy(v65, v69, 0xBFuLL);
        v73 = v18;
        v39 = *(v18 + 16);
        v38 = *(v18 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1DF798198(v38 > 1, v39 + 1, 1);
          v18 = v73;
        }

        *(v18 + 16) = v39 + 1;
        v40 = (v18 + 328 * v39);
        memcpy(v40 + 32, v68, 0x88uLL);
        v40[168] = v29;
        memcpy(v40 + 169, v65, 0xBFuLL);
        if (!v19)
        {
          break;
        }

        --v19;
      }

      v5 = v62;
      v41 = v63;
      v14 = v64;
      v9 = v55;
      v42 = v58;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
      v42 = v58;
      v41 = v63;
    }

    v69[0] = v41;
    v69[1] = v5;
    v47 = v59;
    v46 = v60;
    v69[2] = v59;
    v45 = v61;
    v69[3] = v61;
    v69[4] = v18;
    v69[5] = v60;
    v69[6] = v57;
    LOBYTE(v69[7]) = v42;
    *(&v69[7] + 1) = v77[0];
    HIDWORD(v69[7]) = *(v77 + 3);
    v69[8] = v14;
    OUTLINED_FUNCTION_7_5();
    memcpy(v49, v50, v51);
    sub_1DF783BD0(v69, __dst);
    v43 = v74;
    sub_1DF7A1300(v72, __dst);

    memcpy(v65, v72, 0x58uLL);
    sub_1DF78E0A4(v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54440, &unk_1DF7B65D0);
    OUTLINED_FUNCTION_8_5();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_11_3(v52);
    result = sub_1DF76A0C0(v74);
    v48 = v63;
    v44 = v18;
    v11 = v57;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t EntitySchema.visibility(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v63[0] = *a1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v62 = v2[2];
  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[6];
  v11 = v2[8];
  v10 = v2[9];
  v12 = v2[10];
  if (!v12)
  {

    v46 = v63[0];
    v47 = v10;
    v17 = v4;
    v48 = v62;
LABEL_20:
    *a2 = v17;
    *(a2 + 8) = v5;
    *(a2 + 16) = v48;
    *(a2 + 24) = v6;
    *(a2 + 32) = v8;
    *(a2 + 40) = v7;
    *(a2 + 48) = v9;
    *(a2 + 56) = v46;
    *(a2 + 57) = v75[0];
    *(a2 + 60) = *(v75 + 3);
    *(a2 + 64) = v11;
    *(a2 + 72) = v47;
    *(a2 + 80) = v12;
    return result;
  }

  v61 = v8;
  sub_1DF76A114((v12 + 16), v72);
  v13 = v73 == v11 && v74 == v10;
  v14 = v11;
  if (v13 || (result = sub_1DF7AD934(), (result & 1) != 0))
  {
    v16 = v10;
    v17 = v4;
    v18 = *(v61 + 16);
    v60 = v6;
    v59 = v9;
    if (v18)
    {
      v55 = v17;
      v57 = v14;
      v58 = a2;
      v71 = MEMORY[0x1E69E7CC0];
      v54 = v5;

      v56 = v16;

      v53 = v12;

      OUTLINED_FUNCTION_9_4();
      v19 = v71;
      v20 = v18 - 1;
      for (i = (v61 + 176); ; i += 328)
      {
        memcpy(__dst, i - 144, sizeof(__dst));
        memcpy(v70, i, sizeof(v70));
        if (sub_1DF7981B8(v70) == 1)
        {
          OUTLINED_FUNCTION_6_6();
          memcpy(v67, &__dst[137], 0xBFuLL);
          sub_1DF7981DC(__src);
          memcpy(v65, __src, sizeof(v65));
          nullsub_1(v65);
          v22 = memcpy(v66, v67 + 7, sizeof(v66));
          OUTLINED_FUNCTION_14_3(v22, v23, v24, v25, v26, v27, v28, v29, v53, v54, v55, v56);
          sub_1DF773CFC(v66, &qword_1ECE53A70, &qword_1DF7ADF40);
          memcpy(v67 + 7, v65, 0xB8uLL);
          v30 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_6_6();
          v30 = __dst[136];
          v31 = memcpy(v67, &__dst[137], 0xBFuLL);
          OUTLINED_FUNCTION_14_3(v31, v32, v33, v34, v35, v36, v37, v38, v53, v54, v55, v56);
        }

        memcpy(v66, v68, 0x88uLL);
        memcpy(&v63[4], v67, 0xBFuLL);
        v71 = v19;
        v40 = *(v19 + 16);
        v39 = *(v19 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1DF798198(v39 > 1, v40 + 1, 1);
          v19 = v71;
        }

        *(v19 + 16) = v40 + 1;
        v41 = (v19 + 328 * v40);
        memcpy(v41 + 32, v66, 0x88uLL);
        v41[168] = v30;
        memcpy(v41 + 169, &v63[4], 0xBFuLL);
        if (!v20)
        {
          break;
        }

        --v20;
      }

      v14 = v57;
      a2 = v58;
      v42 = v63[0];
      v17 = v55;
      v16 = v56;
      v5 = v54;
      v43 = v7;
      v44 = v60;
      v45 = v59;
    }

    else
    {

      v45 = v9;
      v43 = v7;
      v44 = v6;
      v19 = MEMORY[0x1E69E7CC0];
      v42 = v63[0];
    }

    v67[0] = v17;
    v67[1] = v5;
    v67[2] = v62;
    v67[3] = v44;
    v67[4] = v19;
    v67[5] = v43;
    v67[6] = v45;
    LOBYTE(v67[7]) = v42;
    *(&v67[7] + 1) = v75[0];
    HIDWORD(v67[7]) = *(v75 + 3);
    v67[8] = v14;
    OUTLINED_FUNCTION_7_5();
    memcpy(v49, v50, v51);
    sub_1DF783BD0(v67, __dst);
    v12 = v72;
    sub_1DF7A1300(v70, __dst);

    memcpy(&v63[4], v70, 0x58uLL);
    sub_1DF78E0A4(&v63[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54440, &unk_1DF7B65D0);
    OUTLINED_FUNCTION_8_5();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_11_3(v52);
    result = sub_1DF76A0C0(v72);
    v46 = v63[0];
    v48 = v62;
    v47 = v16;
    v11 = v14;
    v8 = v19;
    v6 = v60;
    v9 = v59;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF797720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF7668B8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1DF797784()
{
  sub_1DF798E1C();

  return sub_1DF7AD224();
}

uint64_t sub_1DF797878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF78E47C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1DF7978CC()
{
  v0 = sub_1DF7ACFD4();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DF795E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54418, &unk_1DF7B65A0);
  sub_1DF795EE0();
  sub_1DF7AD664();
  sub_1DF7AD334();
  return (*(v3 + 8))(v7, v0);
}

uint64_t sub_1DF797A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54428, &unk_1DF7B6A50);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54430, &unk_1DF7B65B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE54438, &qword_1DF7B6A60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  sub_1DF7AD2C4();
  v14 = sub_1DF7AD2F4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  v15 = *MEMORY[0x1E69A00C0];
  v16 = sub_1DF7AD324();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1DF7AD174();
  sub_1DF773CFC(v9, &qword_1ECE54430, &unk_1DF7B65B0);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2E4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2B4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();

  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  sub_1DF7AD2C4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1DF7AD184();
  sub_1DF773CFC(v13, &qword_1ECE54438, &qword_1DF7B6A60);
  v17 = *MEMORY[0x1E69A00B8];
  v18 = sub_1DF7AD304();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
  v19 = v22;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v18);
  sub_1DF7AD194();

  sub_1DF773CFC(v19, &qword_1ECE54428, &unk_1DF7B6A50);
  sub_1DF773CFC(v5, &qword_1ECE54428, &unk_1DF7B6A50);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  sub_1DF7AD1A4();

  return sub_1DF773CFC(v9, &qword_1ECE54430, &unk_1DF7B65B0);
}

uint64_t EntitySchema.init<A>(_:displayRepresentation:systemProtocols:properties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v12 = *(a6 + 16);
  v13 = sub_1DF7AD474();
  v14 = a4(v13);
  OUTLINED_FUNCTION_10_3();
  swift_getDynamicType();
  v15 = (*(a6 + 24))(a5, a6);
  *a7 = v24;
  a7[1] = v25;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = v14;
  a7[5] = a3;
  a7[6] = 0;
  OUTLINED_FUNCTION_4_7(v15, v16);
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_10_3();
  return v20(v19);
}

uint64_t EntitySchema.init<A>(_:displayRepresentation:systemProtocols:requiredEntitlements:properties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v12 = *(a8 + 16);
  v13 = sub_1DF7AD474();
  v14 = a5(v13);
  OUTLINED_FUNCTION_10_3();
  swift_getDynamicType();
  v15 = (*(a8 + 24))(a6, a8);
  *a7 = v25;
  a7[1] = v26;
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = v14;
  a7[5] = a3;
  a7[6] = a4;
  OUTLINED_FUNCTION_4_7(v15, v16);
  v18 = *(v17 + 8);
  v19 = OUTLINED_FUNCTION_10_3();
  return v20(v19);
}

uint64_t sub_1DF798178(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DF798270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF798198(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DF798378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF7981B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF7981F0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DF798480(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF798210(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DF798588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF798230(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DF798690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF798250(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1DF798798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF798270(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE544B8, &unk_1DF7B6A68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1DF77BFF4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF798378(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AB8, &unk_1DF7AE860);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 328);
      if (v5)
      {
LABEL_13:
        sub_1DF77C01C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF798480(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE544B0, &unk_1DF7B6A40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1DF77C044((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF798588(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AD8, &unk_1DF7AE8A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_1DF77C094((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF798690(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AE0, &unk_1DF7B6A30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 272);
      if (v5)
      {
LABEL_13:
        sub_1DF77C06C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF798798(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AE8, &qword_1DF7AE8B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_1DF77C0BC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF7988A0()
{
  result = qword_1EE173380;
  if (!qword_1EE173380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173380);
  }

  return result;
}

unint64_t sub_1DF7988F4()
{
  result = qword_1EE173908;
  if (!qword_1EE173908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173908);
  }

  return result;
}

uint64_t sub_1DF798948(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54458, &unk_1DF7B65F0);
    a2();
    result = OUTLINED_FUNCTION_12_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF7989B0()
{
  result = qword_1EE173800;
  if (!qword_1EE173800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173800);
  }

  return result;
}

uint64_t sub_1DF798A04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE54450, &unk_1DF7B8BE0);
    a2();
    result = OUTLINED_FUNCTION_12_2();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF798A6C()
{
  result = qword_1ECE54470;
  if (!qword_1ECE54470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54470);
  }

  return result;
}

unint64_t sub_1DF798AC0()
{
  result = qword_1ECE54480;
  if (!qword_1ECE54480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54480);
  }

  return result;
}

unint64_t sub_1DF798B18()
{
  result = qword_1ECE54488;
  if (!qword_1ECE54488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54488);
  }

  return result;
}

unint64_t sub_1DF798B70()
{
  result = qword_1ECE54490;
  if (!qword_1ECE54490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54490);
  }

  return result;
}

unint64_t sub_1DF798BC8()
{
  result = qword_1EE173370;
  if (!qword_1EE173370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173370);
  }

  return result;
}

unint64_t sub_1DF798C20()
{
  result = qword_1EE173378;
  if (!qword_1EE173378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE173378);
  }

  return result;
}

unint64_t sub_1DF798C78()
{
  result = qword_1ECE54498;
  if (!qword_1ECE54498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE54498);
  }

  return result;
}

unint64_t sub_1DF798CD0()
{
  result = qword_1ECE544A0;
  if (!qword_1ECE544A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF798E1C()
{
  result = qword_1ECE544A8;
  if (!qword_1ECE544A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE544A8);
  }

  return result;
}

uint64_t sub_1DF798EB8(uint64_t a1, uint64_t a2)
{
  sub_1DF766CC8(a1, v17);
  sub_1DF766CC8(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE53AF8, &qword_1DF7AE8C0);
  if (!OUTLINED_FUNCTION_3_9())
  {
LABEL_5:
    if (OUTLINED_FUNCTION_3_9())
    {
      memcpy(__dst, __src, 0x58uLL);
      if (OUTLINED_FUNCTION_7_6())
      {
        memcpy(v13, v14, 0x58uLL);
        memcpy(v12, __dst, sizeof(v12));
        memcpy(v11, v14, sizeof(v11));
        v3 = static EntitySchema.== infix(_:_:)(v12, v11);
        sub_1DF78E0A4(v13);
        sub_1DF78E0A4(__dst);
        goto LABEL_16;
      }

      sub_1DF78E0A4(__dst);
    }

    if (OUTLINED_FUNCTION_3_9())
    {
      if (OUTLINED_FUNCTION_7_6())
      {
        memcpy(v14, __src, sizeof(v14));
        memcpy(v13, __dst, sizeof(v13));
        v3 = static IntentSchema.== infix(_:_:)(v14, v13);
        sub_1DF76A0C0(v13);
        sub_1DF76A0C0(v14);
        goto LABEL_16;
      }

      sub_1DF76A0C0(__src);
    }

    if (OUTLINED_FUNCTION_3_9())
    {
      v4 = __src[0];
      v5 = __src[1];
      v6 = __src[2];
      v7 = __src[3];
      v8 = __src[4];
      v9 = BYTE1(__src[4]);
      if (OUTLINED_FUNCTION_7_6())
      {
        v14[0] = v4;
        v14[1] = v5;
        LOBYTE(v14[2]) = v6;
        v14[3] = v7;
        LOBYTE(v14[4]) = v8;
        BYTE1(v14[4]) = v9;
        v13[0] = __dst[0];
        v13[1] = __dst[1];
        LOBYTE(v13[2]) = __dst[2];
        v13[3] = __dst[3];
        LOWORD(v13[4]) = __dst[4];
        v3 = static VersionedSchema.== infix(_:_:)(v14, v13);

        goto LABEL_16;
      }
    }

    sub_1DF799924(v17);
    v3 = 0;
    return v3 & 1;
  }

  memcpy(__dst, __src, 0x48uLL);
  if (!OUTLINED_FUNCTION_7_6())
  {
    sub_1DF795934(__dst);
    goto LABEL_5;
  }

  memcpy(v13, v14, 0x48uLL);
  memcpy(v12, __dst, 0x48uLL);
  memcpy(v11, v14, 0x48uLL);
  v3 = static EnumSchema.== infix(_:_:)(v12, v11);
  sub_1DF795934(v13);
  sub_1DF795934(__dst);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v3 & 1;
}

uint64_t sub_1DF799198()
{
  v0 = sub_1DF7AD794();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}