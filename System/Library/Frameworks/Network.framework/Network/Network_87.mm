char *sub_181FF27F8@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if ((v2 - 127) >= 0xA2u || v2 <= -1)
  {
    v4 = *result;
  }

  else
  {
    v4 = 32;
  }

  if (v2 == 32)
  {
    v4 = 32;
  }

  if (v2 != 9)
  {
    LOBYTE(v2) = v4;
  }

  *a2 = v2;
  return result;
}

unsigned __int8 *sub_181FF2830@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 10 || v2 == 13)
  {
    LOBYTE(v2) = 32;
  }

  *a2 = v2;
  return result;
}

uint64_t HTTPField.hash(into:)()
{
  sub_182AD30E8();
  sub_182AD4518();

  return sub_182AD30E8();
}

uint64_t HTTPField.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181FF293C()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181FF29BC()
{
  sub_182AD30E8();
  sub_182AD4518();

  return sub_182AD30E8();
}

uint64_t sub_181FF2A1C()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t HTTPField.description.getter()
{
  v2 = v0[5];
  v1 = v0[6];
  v5 = *v0;

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v2, v1))
  {
  }

  else
  {
    v2 = sub_182287700(v2, v1);
    v1 = v3;
  }

  MEMORY[0x1865D9CA0](v2, v1);

  return v5;
}

uint64_t sub_181FF2B38()
{
  v2 = v0[5];
  v1 = v0[6];
  v5 = *v0;

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v2, v1))
  {
  }

  else
  {
    v2 = sub_182287700(v2, v1);
    v1 = v3;
  }

  MEMORY[0x1865D9CA0](v2, v1);

  return v5;
}

uint64_t HTTPField.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v7 = *v1;
  v8 = v1[1];

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v4, v3))
  {
  }

  else
  {
    v4 = sub_182287700(v4, v3);
    v3 = v5;
  }

  MEMORY[0x1865D9CA0](v4, v3);

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_181FF2C8C@<X0>(void *a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v7 = *v1;
  v8 = v1[1];

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v4, v3))
  {
  }

  else
  {
    v4 = sub_182287700(v4, v3);
    v3 = v5;
  }

  MEMORY[0x1865D9CA0](v4, v3);

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_181FF2D44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  v5 = 0x8000000182BD4570;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000182BD4570;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701667182;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x65756C6176;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_182AD4268();
  }

  return v11 & 1;
}

uint64_t sub_181FF2E30()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FF2ECC()
{
  sub_182AD30E8();
}

uint64_t sub_181FF2F54()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FF2FEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181FF3B88();
  *a1 = result;
  return result;
}

void sub_181FF301C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000182BD4570;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_181FF3074()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181FF30C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181FF3B88();
  *a1 = result;
  return result;
}

uint64_t sub_181FF30F0(uint64_t a1)
{
  v2 = sub_181FF3810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FF312C(uint64_t a1)
{
  v2 = sub_181FF3810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HTTPField.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B20);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v23 = *(v1 + 32);
  v10 = v1[6];
  v15[2] = v1[5];
  v16 = v8;
  v15[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF3810();

  sub_182AD4638();
  v19 = v6;
  v20 = v7;
  v21 = v16;
  v22 = v9;
  v24 = 0;
  sub_181FF3864();
  v11 = v17;
  sub_182AD4118();

  if (v11)
  {
    return (*(v18 + 8))(v5, v3);
  }

  v13 = v23;
  v14 = v18;
  LOBYTE(v19) = 1;
  sub_182AD40E8();
  if (v13)
  {
    LOBYTE(v19) = 2;
    sub_182AD4158();
  }

  return (*(v14 + 8))(v5, v3);
}

uint64_t HTTPField.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF3810();
  sub_182AD45E8();
  if (!v2)
  {
    v31 = 0;
    sub_181FF38B8();
    sub_182AD3FF8();
    v9 = v28;
    v10 = v30;
    v25 = v29;
    v26 = v27;
    LOBYTE(v27) = 1;
    v11 = sub_182AD3FC8();
    v23 = v10;
    v24 = v9;
    v22 = v11;
    v14 = v12;
    if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v11, v12))
    {
      LOBYTE(v27) = 2;
      v15 = sub_182AD3FB8();
      v16 = v23;
      v17 = v15;
      (*(v6 + 8))(v8, v5);
      if ((v17 & 0x1FC) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v20 = v24;
      v19 = v25;
      *a2 = v26;
      *(a2 + 8) = v20;
      *(a2 + 16) = v19;
      *(a2 + 24) = v16;
      *(a2 + 32) = v18;
      *(a2 + 40) = v22;
      *(a2 + 48) = v14;
    }

    else
    {

      v31 = 1;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_182AD3BA8();

      v27 = 0xD000000000000012;
      v28 = 0x8000000182BD79D0;
      MEMORY[0x1865D9CA0](v22, v14);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD79F0);
      sub_182AD3C98();
      swift_allocError();
      sub_181AB3DCC(&qword_1EA839B48, &qword_1EA839B38);
      sub_182AD3C78();

      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s7Network9HTTPFieldV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_182AD4268();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_182AD4268();
}

unint64_t sub_181FF3810()
{
  result = qword_1EA839B28;
  if (!qword_1EA839B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B28);
  }

  return result;
}

unint64_t sub_181FF3864()
{
  result = qword_1EA839B30;
  if (!qword_1EA839B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B30);
  }

  return result;
}

unint64_t sub_181FF38B8()
{
  result = qword_1EA839B40;
  if (!qword_1EA839B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B40);
  }

  return result;
}

unint64_t sub_181FF3910()
{
  result = qword_1EA839B50;
  if (!qword_1EA839B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B50);
  }

  return result;
}

unint64_t sub_181FF3968()
{
  result = qword_1EA839B58;
  if (!qword_1EA839B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B58);
  }

  return result;
}

uint64_t sub_181FF39BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_181FF3A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181FF3A84()
{
  result = qword_1EA839B60;
  if (!qword_1EA839B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B60);
  }

  return result;
}

unint64_t sub_181FF3ADC()
{
  result = qword_1EA839B68;
  if (!qword_1EA839B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B68);
  }

  return result;
}

unint64_t sub_181FF3B34()
{
  result = qword_1EA839B70;
  if (!qword_1EA839B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B70);
  }

  return result;
}

uint64_t sub_181FF3B88()
{
  v0 = sub_182AD3F48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_181FF3BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181FF3C94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_18225BD68(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_181FF3D0C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181FF3D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18201D068();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_181FF3DD0(uint64_t a1)
{
  v3 = *(v1 + 144);
  swift_beginAccess();
  if (*(*(v3 + 16) + 16))
  {
    return sub_181FF3C94(a1);
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);
    v6 = swift_allocObject();
    *(v6 + 16) = "findSentPacketEntry(packetNumber:)";
    *(v6 + 24) = 34;
    *(v6 + 32) = 2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_181F8C724;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = 1564427099;
    *(v8 + 24) = 0xE400000000000000;
    v9 = swift_allocObject();
    *(v9 + 16) = 0xD000000000000020;
    *(v9 + 24) = 0x8000000182BD8430;
    v10 = sub_182AD2678();
    v11 = sub_182AD38A8();
    v12 = swift_allocObject();
    *(v12 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C71C;
    *(v13 + 24) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C718;
    *(v14 + 24) = v13;
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C720;
    *(v15 + 24) = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v26 = swift_allocObject();
    *(v26 + 16) = 32;
    v27 = swift_allocObject();
    *(v27 + 16) = 8;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C720;
    *(v17 + 24) = v9;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C718;
    *(v18 + 24) = v17;
    v19 = v11;
    v20 = v10;
    if (os_log_type_enabled(v10, v11))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      v31 = 0;
      *v21 = 770;
      v32 = v21 + 2;
      v28 = sub_181F8C728;
      v29 = v12;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v23;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C714;
      v29 = v14;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v24;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v25;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C714;
      v29 = v16;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v26;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C728;
      v29 = v27;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      v28 = sub_181F8C714;
      v29 = v18;
      sub_181F73AE0(&v28, &v32, &v31, &v30);

      _os_log_impl(&dword_181A37000, v20, v19, "%s %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v21, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

int64x2_t sub_181FF44FC()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();

  *(v1 + 24) = *sub_182AD2388();
  swift_endAccess();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = -1;
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;

  v2 = sub_182AD3428();
  *(v2 + 16) = 64;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0u;

  *(v0 + 48) = 0;
  *(v0 + 56) = v2;
  v3 = sub_182AD3428();
  *(v3 + 16) = 64;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0u;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 512) = 0u;
  *(v3 + 528) = 0u;

  *(v0 + 64) = 0;
  *(v0 + 72) = v3;
  *(v0 + 80) = xmmword_182AEFBC0;
  *(v0 + 96) = xmmword_182AEFBC0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  result = vdupq_n_s64(3uLL);
  *(v0 + 128) = result;
  return result;
}

uint64_t sub_181FF468C(uint64_t a1, __int16 a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  sub_182016DA8(v28);
  v6 = v28[7];
  *(v3 + 120) = v28[6];
  *(v3 + 136) = v6;
  *(v3 + 152) = v28[8];
  v7 = v28[3];
  *(v3 + 56) = v28[2];
  *(v3 + 72) = v7;
  v8 = v28[5];
  *(v3 + 88) = v28[4];
  *(v3 + 104) = v8;
  v9 = v28[1];
  *(v3 + 24) = v28[0];
  *(v3 + 168) = v29;
  *(v3 + 40) = v9;
  sub_182016DA8(v30);
  v10 = v30[7];
  *(v3 + 272) = v30[6];
  *(v3 + 288) = v10;
  *(v3 + 304) = v30[8];
  *(v3 + 320) = v31;
  v11 = v30[3];
  *(v3 + 208) = v30[2];
  *(v3 + 224) = v11;
  v12 = v30[5];
  *(v3 + 240) = v30[4];
  *(v3 + 256) = v12;
  v13 = v30[1];
  *(v3 + 176) = v30[0];
  *(v3 + 192) = v13;
  sub_182016DA8(v32);
  v14 = v32[7];
  *(v3 + 424) = v32[6];
  *(v3 + 440) = v14;
  *(v3 + 456) = v32[8];
  *(v3 + 472) = v33;
  v15 = v32[3];
  *(v3 + 360) = v32[2];
  *(v3 + 376) = v15;
  v16 = v32[5];
  *(v3 + 392) = v32[4];
  *(v3 + 408) = v16;
  v17 = v32[1];
  *(v3 + 328) = v32[0];
  *(v3 + 344) = v17;
  *(v3 + 480) = 256;
  *(v3 + 484) = 0;
  *(v3 + 16) = a1;

  *(v3 + 480) = a2;
  *(v3 + 481) = HIBYTE(a2) & 1;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843418);
    v19 = sub_182AD2678();
    v20 = sub_182AD38A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315650;
      v23 = sub_182AD3BF8();
      v25 = sub_181C64FFC(v23, v24, &v27);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v27);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_181C64FFC(0xD000000000000015, 0x8000000182BD87F0, &v27);
      _os_log_impl(&dword_181A37000, v19, v20, "%s %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v21, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_181FF499C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v262 = *a1;
  v4 = *(a1 + 16);
  *&v263[8] = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *&v264[8] = *(a1 + 56);
  *&v264[24] = *(a1 + 72);
  *&v264[40] = *(a1 + 88);
  v7 = *(a1 + 104);
  *&v264[57] = *(a1 + 105);
  *&v264[60] = *(a1 + 108);
  v9 = *(a1 + 112);
  v8 = *(a1 + 120);
  v10 = *(a1 + 128);
  v281 = *(a1 + 136);
  v280 = *(a1 + 137);
  *&v266[10] = *(a1 + 138);
  *&v266[26] = *(a1 + 154);
  *&v266[42] = *(a1 + 170);
  *v263 = v4;
  *&v263[24] = v5;
  *v264 = v6;
  v264[56] = v7;
  *&v265 = v9;
  *(&v265 + 1) = v8;
  *v266 = v10;
  v266[8] = v281;
  v266[9] = v280;
  if (!v10)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);
    v16 = sub_182AD2678();
    v17 = sub_182AD38C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v249 = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, &v249);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v249);
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_181C64FFC(0xD00000000000001FLL, 0x8000000182BD8540, &v249);
      _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    v257 = *v266;
    *v258 = *&v266[16];
    *&v258[12] = *&v266[28];
    v253 = *&v264[16];
    v254 = *&v264[32];
    v256 = v265;
    v255 = *&v264[48];
    v249 = v262;
    v250 = *v263;
    v252 = *v264;
    v251 = *&v263[16];
    return sub_181F843A0(&v249);
  }

  v11 = v3;
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    swift_once();
  }

  v160 = byte_1EA843430;
  v162 = a3;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v249 = 0;
    *(&v249 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD85B0);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    *&v235 = v9;
    v24 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v24);

    v25 = v249;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA843418);
    v27 = swift_allocObject();
    *(v27 + 16) = "sentPacket(_:time:connection:)";
    *(v27 + 24) = 30;
    *(v27 + 32) = 2;
    v154 = swift_allocObject();
    *(v154 + 16) = sub_181F8C724;
    *(v154 + 24) = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = 1564427099;
    *(v28 + 24) = 0xE400000000000000;
    v143 = swift_allocObject();
    *(v143 + 16) = v25;

    oslog = sub_182AD2678();
    v29 = sub_182AD38A8();
    v144 = swift_allocObject();
    *(v144 + 16) = 32;
    v145 = swift_allocObject();
    *(v145 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C71C;
    *(v30 + 24) = v154;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C718;
    *(v31 + 24) = v30;
    v146 = v31;
    v147 = swift_allocObject();
    *(v147 + 16) = 32;
    v148 = swift_allocObject();
    *(v148 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_181F8C720;
    *(v32 + 24) = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C718;
    *(v33 + 24) = v32;
    v150 = v33;
    v153 = swift_allocObject();
    *(v153 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C720;
    *(v35 + 24) = v143;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C718;
    *(v36 + 24) = v35;
    v37 = v36;
    if (os_log_type_enabled(oslog, v29))
    {
      v141 = v37;
      v38 = swift_slowAlloc();
      *&v221 = 0;
      v142 = swift_slowAlloc();
      *v38 = 770;
      *&v219[0] = v142;
      *&v235 = v38 + 2;
      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v144;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v145;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v146;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v147;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v148;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v150;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v153;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v34;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v141;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      _os_log_impl(&dword_181A37000, oslog, v29, "%s %s %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v142, -1, -1);
      MEMORY[0x1865DF520](v38, -1, -1);

      if (v7)
      {
LABEL_7:
        if (v7 == 1)
        {
          swift_beginAccess();
          v14 = *(v11 + 192);
          if (v14 != -1 && v9 < v14)
          {
            goto LABEL_71;
          }

          *(v11 + 192) = v9;
        }

        else
        {
          swift_beginAccess();
          v14 = *(v11 + 344);
          if (v14 != -1 && v9 < v14)
          {
            goto LABEL_71;
          }

          *(v11 + 344) = v9;
        }

        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_23:
  swift_beginAccess();
  v14 = *(v11 + 40);
  if (v14 != -1 && v9 < v14)
  {
    goto LABEL_71;
  }

  *(v11 + 40) = v9;
  while (1)
  {
LABEL_26:
    swift_endAccess();
    v39 = v4 + v6;
    if (__OFADD__(v4, v6))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v14 = v39 + v5;
    if (__OFADD__(v39, v5))
    {
      goto LABEL_69;
    }

    *&v264[8] = v39 + v5;
    v40 = *(v10 + 984);
    v9 = a2;
    if (!v40)
    {
      goto LABEL_33;
    }

    v41 = *(v40 + 40);
    v42 = __OFSUB__(1280, v41);
    v43 = 1280 - v41;
    if (!v42)
    {
      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    *&v235 = 0;
    *(&v235 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD8590);
    *&v221 = v9;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0x7020726574666120, 0xEE002074656B6361);
    *&v221 = v14;
    sub_182AD3E18();
    oslog = *(&v235 + 1);
    v153 = v235;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_81;
    }

LABEL_72:
    v134 = sub_182AD2698();
    __swift_project_value_buffer(v134, qword_1EA843418);
    v9 = oslog;

    v135 = sub_182AD2678();
    v14 = sub_182AD38C8();

    v152 = v14;
    loga = v135;
    if (os_log_type_enabled(v135, v14))
    {
      v136 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&v235 = v149;
      *v136 = 136315650;
      v137 = sub_182AD3BF8();
      v139 = sub_181C64FFC(v137, v138, &v235);

      *(v136 + 4) = v139;
      *(v136 + 12) = 2080;
      *(v136 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v235);
      *(v136 + 22) = 2080;
      v140 = sub_181C64FFC(v153, oslog, &v235);

      *(v136 + 24) = v140;
      v14 = loga;
      _os_log_impl(&dword_181A37000, loga, v152, "%s %s %s", v136, 0x20u);
      v9 = v149;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v149, -1, -1);
      MEMORY[0x1865DF520](v136, -1, -1);
    }

    else
    {
    }
  }

  if (v43 < v14 && *(v10 + 1072) >= v14)
  {
    v264[16] = 1;
  }

LABEL_33:
  v4 = v281;
  v5 = v280;
  sub_181FF6728(v10, &v262, a2);
  if (!v7)
  {
    goto LABEL_42;
  }

  if (v7 == 1)
  {
    swift_beginAccess();
    if (!v5)
    {
      goto LABEL_59;
    }

    if (v4)
    {
      *(v11 + 184) = a2;
      v44 = *(v11 + 176);
      v42 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v42)
      {
        *(v11 + 176) = v45;
        goto LABEL_39;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
      goto LABEL_72;
    }

LABEL_39:
    v46 = *(v10 + 912);
    *&v258[16] = *(v10 + 896);
    v259 = v46;
    v260 = *(v10 + 928);
    v261 = *(v10 + 944);
    v47 = *(v10 + 848);
    v255 = *(v10 + 832);
    v256 = v47;
    v48 = *(v10 + 880);
    v257 = *(v10 + 864);
    *v258 = v48;
    v49 = *(v10 + 784);
    v251 = *(v10 + 768);
    v252 = v49;
    v50 = *(v10 + 816);
    v253 = *(v10 + 800);
    v254 = v50;
    v51 = *(v10 + 752);
    v249 = *(v10 + 736);
    v250 = v51;
    if (sub_182015D6C(&v249) == 1)
    {
      goto LABEL_59;
    }

    v52 = *(v10 + 912);
    v53 = *(v10 + 880);
    v231 = *(v10 + 896);
    v232 = v52;
    v54 = *(v10 + 912);
    v233 = *(v10 + 928);
    v55 = *(v10 + 848);
    v56 = *(v10 + 816);
    v227 = *(v10 + 832);
    v228 = v55;
    v57 = *(v10 + 848);
    v58 = *(v10 + 880);
    v229 = *(v10 + 864);
    v230 = v58;
    v59 = *(v10 + 784);
    v60 = *(v10 + 752);
    v223 = *(v10 + 768);
    v224 = v59;
    v61 = *(v10 + 784);
    v62 = *(v10 + 816);
    v225 = *(v10 + 800);
    v226 = v62;
    v63 = *(v10 + 752);
    v221 = *(v10 + 736);
    v222 = v63;
    v245 = v231;
    v246 = v54;
    v247 = *(v10 + 928);
    v241 = v227;
    v242 = v57;
    v243 = v229;
    v244 = v53;
    v237 = v223;
    v238 = v61;
    v239 = v225;
    v240 = v56;
    v234 = *(v10 + 944);
    v248 = *(v10 + 944);
    v235 = v221;
    v236 = v60;
    if (sub_182015D6C(&v235) != 1)
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_42:
    swift_beginAccess();
    if (!v5)
    {
      goto LABEL_59;
    }

    if (v4)
    {
      *(v11 + 32) = a2;
      v64 = *(v11 + 24);
      v42 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v42)
      {
        goto LABEL_79;
      }

      *(v11 + 24) = v65;
    }

    v66 = *(v10 + 912);
    *&v258[16] = *(v10 + 896);
    v259 = v66;
    v260 = *(v10 + 928);
    v261 = *(v10 + 944);
    v67 = *(v10 + 848);
    v255 = *(v10 + 832);
    v256 = v67;
    v68 = *(v10 + 880);
    v257 = *(v10 + 864);
    *v258 = v68;
    v69 = *(v10 + 784);
    v251 = *(v10 + 768);
    v252 = v69;
    v70 = *(v10 + 816);
    v253 = *(v10 + 800);
    v254 = v70;
    v71 = *(v10 + 752);
    v249 = *(v10 + 736);
    v250 = v71;
    if (sub_182015D6C(&v249) == 1)
    {
      goto LABEL_59;
    }

    v72 = *(v10 + 912);
    v73 = *(v10 + 880);
    v231 = *(v10 + 896);
    v232 = v72;
    v74 = *(v10 + 912);
    v233 = *(v10 + 928);
    v75 = *(v10 + 848);
    v76 = *(v10 + 816);
    v227 = *(v10 + 832);
    v228 = v75;
    v77 = *(v10 + 848);
    v78 = *(v10 + 880);
    v229 = *(v10 + 864);
    v230 = v78;
    v79 = *(v10 + 784);
    v80 = *(v10 + 752);
    v223 = *(v10 + 768);
    v224 = v79;
    v81 = *(v10 + 784);
    v82 = *(v10 + 816);
    v225 = *(v10 + 800);
    v226 = v82;
    v83 = *(v10 + 752);
    v221 = *(v10 + 736);
    v222 = v83;
    v245 = v231;
    v246 = v74;
    v247 = *(v10 + 928);
    v241 = v227;
    v242 = v77;
    v243 = v229;
    v244 = v73;
    v237 = v223;
    v238 = v81;
    v239 = v225;
    v240 = v76;
    v234 = *(v10 + 944);
    v248 = *(v10 + 944);
    v235 = v221;
    v236 = v80;
    if (sub_182015D6C(&v235) != 1)
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  swift_beginAccess();
  if (!v5)
  {
    goto LABEL_59;
  }

  if (!v4)
  {
    goto LABEL_53;
  }

  *(v11 + 336) = a2;
  v84 = *(v11 + 328);
  v42 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (v42)
  {
    goto LABEL_80;
  }

  *(v11 + 328) = v85;
LABEL_53:
  v86 = *(v10 + 912);
  *&v258[16] = *(v10 + 896);
  v259 = v86;
  v260 = *(v10 + 928);
  v261 = *(v10 + 944);
  v87 = *(v10 + 848);
  v255 = *(v10 + 832);
  v256 = v87;
  v88 = *(v10 + 880);
  v257 = *(v10 + 864);
  *v258 = v88;
  v89 = *(v10 + 784);
  v251 = *(v10 + 768);
  v252 = v89;
  v90 = *(v10 + 816);
  v253 = *(v10 + 800);
  v254 = v90;
  v91 = *(v10 + 752);
  v249 = *(v10 + 736);
  v250 = v91;
  if (sub_182015D6C(&v249) != 1)
  {
    v92 = *(v10 + 912);
    v93 = *(v10 + 880);
    v231 = *(v10 + 896);
    v232 = v92;
    v94 = *(v10 + 912);
    v233 = *(v10 + 928);
    v95 = *(v10 + 848);
    v96 = *(v10 + 816);
    v227 = *(v10 + 832);
    v228 = v95;
    v97 = *(v10 + 848);
    v98 = *(v10 + 880);
    v229 = *(v10 + 864);
    v230 = v98;
    v99 = *(v10 + 784);
    v100 = *(v10 + 752);
    v223 = *(v10 + 768);
    v224 = v99;
    v101 = *(v10 + 784);
    v102 = *(v10 + 816);
    v225 = *(v10 + 800);
    v226 = v102;
    v103 = *(v10 + 752);
    v221 = *(v10 + 736);
    v222 = v103;
    v245 = v231;
    v246 = v94;
    v247 = *(v10 + 928);
    v241 = v227;
    v242 = v97;
    v243 = v229;
    v244 = v93;
    v237 = v223;
    v238 = v101;
    v239 = v225;
    v240 = v96;
    v234 = *(v10 + 944);
    v248 = *(v10 + 944);
    v235 = v221;
    v236 = v100;
    if (sub_182015D6C(&v235) != 1)
    {
LABEL_55:
      v219[10] = v245;
      v219[11] = v246;
      v219[12] = v247;
      v220 = v248;
      v219[6] = v241;
      v219[7] = v242;
      v219[8] = v243;
      v219[9] = v244;
      v219[2] = v237;
      v219[3] = v238;
      v219[4] = v239;
      v219[5] = v240;
      v219[0] = v235;
      v219[1] = v236;
      if (sub_182015D80(v219) == 1)
      {
        v104 = nullsub_41(v219);
        v178 = v104[6];
        v180 = v104[7];
        v182 = v104[8];
        v184 = v104[9];
        v170 = v104[2];
        v172 = v104[3];
        v174 = v104[4];
        v176 = v104[5];
        v166 = *v104;
        v168 = v104[1];
        v189 = v221;
        v190 = v222;
        v193 = v225;
        v194 = v226;
        v191 = v223;
        v192 = v224;
        v197 = v229;
        v198 = v230;
        v195 = v227;
        v196 = v228;
        v202 = v234;
        v200 = v232;
        v201 = v233;
        v199 = v231;
        sub_18201A394(&v221, v217);
        sub_182015D94(&v189, v217);
        sub_182013B20(v14);
        v273 = v178;
        v274 = v180;
        v275 = v182;
        v276 = v184;
        v269 = v170;
        v270 = v172;
        v271 = v174;
        v272 = v176;
        v267 = v166;
        v268 = v168;
        sub_182016600();
        sub_182015DF0(&v221);
        v209 = v178;
        v210 = v180;
        v211 = v182;
        v212 = v184;
        v205 = v170;
        v206 = v172;
        v207 = v174;
        v208 = v176;
        v203 = v166;
        v204 = v168;
        sub_182015D88(&v203);
      }

      else
      {
        v105 = nullsub_41(v219);
        v186 = v105[10];
        v187 = v105[11];
        v188 = v105[12];
        v179 = v105[6];
        v181 = v105[7];
        v183 = v105[8];
        v185 = v105[9];
        v171 = v105[2];
        v173 = v105[3];
        v175 = v105[4];
        v177 = v105[5];
        v167 = *v105;
        v169 = v105[1];
        v189 = v221;
        v190 = v222;
        v193 = v225;
        v194 = v226;
        v191 = v223;
        v192 = v224;
        v197 = v229;
        v198 = v230;
        v195 = v227;
        v196 = v228;
        v202 = v234;
        v200 = v232;
        v201 = v233;
        v199 = v231;
        sub_18201A394(&v221, v217);
        sub_182015D94(&v189, v217);
        sub_182014334(v14);
        v277 = v186;
        v278 = v187;
        v279 = v188;
        v273 = v179;
        v274 = v181;
        v276 = v185;
        v275 = v183;
        v269 = v171;
        v270 = v173;
        v272 = v177;
        v271 = v175;
        v268 = v169;
        v267 = v167;
        sub_182015E58();
        sub_182015DF0(&v221);
        v213 = v186;
        v214 = v187;
        v215 = v188;
        v209 = v179;
        v210 = v181;
        v211 = v183;
        v212 = v185;
        v205 = v171;
        v206 = v173;
        v207 = v175;
        v208 = v177;
        v203 = v167;
        v204 = v169;
        sub_18201A508(&v203);
      }

      v217[10] = v213;
      v217[11] = v214;
      v217[12] = v215;
      v218 = v216;
      v217[6] = v209;
      v217[7] = v210;
      v217[8] = v211;
      v217[9] = v212;
      v217[2] = v205;
      v217[3] = v206;
      v217[4] = v207;
      v217[5] = v208;
      v217[0] = v203;
      v217[1] = v204;
      v199 = v213;
      v200 = v214;
      v201 = v215;
      v202 = v216;
      v195 = v209;
      v196 = v210;
      v197 = v211;
      v198 = v212;
      v191 = v205;
      v192 = v206;
      v193 = v207;
      v194 = v208;
      v189 = v203;
      v190 = v204;
      nullsub_41(&v189);
      v106 = *(v10 + 912);
      v213 = *(v10 + 896);
      v214 = v106;
      v215 = *(v10 + 928);
      v216 = *(v10 + 944);
      v107 = *(v10 + 848);
      v209 = *(v10 + 832);
      v210 = v107;
      v108 = *(v10 + 880);
      v211 = *(v10 + 864);
      v212 = v108;
      v109 = *(v10 + 784);
      v205 = *(v10 + 768);
      v206 = v109;
      v110 = *(v10 + 816);
      v207 = *(v10 + 800);
      v208 = v110;
      v111 = *(v10 + 752);
      v203 = *(v10 + 736);
      v204 = v111;
      v112 = v200;
      *(v10 + 896) = v199;
      *(v10 + 912) = v112;
      *(v10 + 928) = v201;
      *(v10 + 944) = v202;
      v113 = v196;
      *(v10 + 832) = v195;
      *(v10 + 848) = v113;
      v114 = v198;
      *(v10 + 864) = v197;
      *(v10 + 880) = v114;
      v115 = v192;
      *(v10 + 768) = v191;
      *(v10 + 784) = v115;
      v116 = v194;
      *(v10 + 800) = v193;
      *(v10 + 816) = v116;
      v117 = v190;
      *(v10 + 736) = v189;
      *(v10 + 752) = v117;
      sub_182015DF0(&v203);
      goto LABEL_59;
    }

    __break(1u);
LABEL_83:
    swift_once();
LABEL_63:
    v118 = sub_182AD2698();
    __swift_project_value_buffer(v118, qword_1EA843418);
    v119 = swift_allocObject();
    *(v119 + 16) = "sentPacket(_:time:connection:)";
    *(v119 + 24) = 30;
    *(v119 + 32) = 2;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_181F8C724;
    *(v120 + 24) = v119;
    v121 = swift_allocObject();
    *(v121 + 16) = 1564427099;
    *(v121 + 24) = 0xE400000000000000;
    v122 = swift_allocObject();
    *(v122 + 16) = 0xD000000000000023;
    *(v122 + 24) = v4;
    v123 = sub_182AD2678();
    v124 = sub_182AD38A8();
    log = swift_allocObject();
    LOBYTE(log[2].isa) = 32;
    osloga = swift_allocObject();
    LOBYTE(osloga[2].isa) = 8;
    v125 = swift_allocObject();
    *(v125 + 16) = sub_181F8C71C;
    *(v125 + 24) = v120;
    v126 = swift_allocObject();
    *(v126 + 16) = sub_181F8C718;
    *(v126 + 24) = v125;
    v161 = swift_allocObject();
    *(v161 + 16) = 32;
    v163 = swift_allocObject();
    *(v163 + 16) = 8;
    v127 = swift_allocObject();
    *(v127 + 16) = sub_181F8C720;
    *(v127 + 24) = v121;
    v128 = swift_allocObject();
    *(v128 + 16) = sub_181F8C718;
    *(v128 + 24) = v127;
    v155 = swift_allocObject();
    *(v155 + 16) = 32;
    v165 = swift_allocObject();
    *(v165 + 16) = 8;
    v129 = swift_allocObject();
    *(v129 + 16) = sub_181F8C720;
    *(v129 + 24) = v122;
    v130 = swift_allocObject();
    *(v130 + 16) = sub_181F8C718;
    *(v130 + 24) = v129;
    v131 = v124;
    if (os_log_type_enabled(v123, v124))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v221 = 0;
      *v132 = 770;
      v151 = v133;
      *&v219[0] = v133;
      *&v235 = v132 + 2;
      *&v249 = sub_181F8C728;
      *(&v249 + 1) = log;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = osloga;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v126;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v161;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v163;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v128;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v155;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v165;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v130;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      _os_log_impl(&dword_181A37000, v123, v131, "%s %s %s", v132, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v151, -1, -1);
      MEMORY[0x1865DF520](v132, -1, -1);
    }

    else
    {
    }
  }

LABEL_59:
  swift_endAccess();
  if ((*(v11 + 482) & 1) == 0)
  {
    sub_181FF7470(v162);
  }

  if ((v160 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
  {
    v4 = 0x8000000182BD8560;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_83;
    }

    goto LABEL_63;
  }
}

uint64_t sub_181FF6728(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[2];
  v82 = a2[3];
  v7 = a2[5];
  v83 = a2[4];
  v84 = v7;
  v8 = a2[1];
  v79 = *a2;
  v85 = *(a2 + 12);
  v80 = v8;
  v81 = v6;
  v9 = *(a2 + 104);
  v10 = *(a2 + 105);
  *(v78 + 3) = *(a2 + 27);
  v78[0] = v10;
  v11 = *(a2 + 14);
  v12 = *(a2 + 15);
  v13 = *(a2 + 16);
  v77 = *(a2 + 42);
  v14 = *(a2 + 152);
  v75 = *(a2 + 136);
  v76 = v14;
  if (!v13)
  {
    goto LABEL_34;
  }

  if (*(v13 + 16) == *(a1 + 16))
  {
    v5 = a3;
    if (qword_1EA837250 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v66 = v3;
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x7020676E69646441, 0xEA0000000000206ELL);
    v72[0] = v11;
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    MEMORY[0x1865D9CA0](0x63617073206E6920, 0xEA00000000002065);
    LOBYTE(v72[0]) = v9;
    sub_182AD3E18();
    v4 = 0;
    v68 = 0xE000000000000000;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  v4 = 0;
  while (1)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    if (v9 != 1)
    {
      goto LABEL_19;
    }

    swift_beginAccess();
    v15 = v3[40];
    type metadata accessor for PacketContainerEntry();
    v16 = swift_allocObject();
    *(v16 + 200) = 0;
    *(v16 + 208) = 0;
    swift_beginAccess();
    v17 = v82;
    v18 = v84;
    *(v16 + 80) = v83;
    *(v16 + 96) = v18;
    v19 = v80;
    *(v16 + 16) = v79;
    *(v16 + 32) = v19;
    *(v16 + 48) = v81;
    *(v16 + 64) = v17;
    v20 = v76;
    *(v16 + 152) = v75;
    *(v16 + 112) = v85;
    *(v16 + 120) = 1;
    *(v16 + 124) = *(v78 + 3);
    *(v16 + 121) = v78[0];
    *(v16 + 128) = v11;
    *(v16 + 136) = v12;
    *(v16 + 144) = v13;
    *(v16 + 168) = v20;
    *(v16 + 184) = v77;
    *(v16 + 192) = v5;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_18225BD68(v11);
      if (v21)
      {
        goto LABEL_26;
      }
    }

    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    v3 = &v70;
    sub_1822598E0(v16, v11, isUniquelyReferenced_nonNull_native);
    *(v15 + 16) = v70;
    swift_endAccess();
    swift_beginAccess();
    v23 = *(*(v15 + 24) + 24);
    v5 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_beginAccess();
    v15 = v3[21];
    type metadata accessor for PacketContainerEntry();
    v24 = swift_allocObject();
    *(v24 + 200) = 0;
    *(v24 + 208) = 0;
    swift_beginAccess();
    v25 = v82;
    v26 = v84;
    *(v24 + 80) = v83;
    *(v24 + 96) = v26;
    v27 = v80;
    *(v24 + 16) = v79;
    *(v24 + 32) = v27;
    *(v24 + 48) = v81;
    *(v24 + 64) = v25;
    v28 = v76;
    *(v24 + 152) = v75;
    *(v24 + 112) = v85;
    *(v24 + 120) = 0;
    *(v24 + 124) = *(v78 + 3);
    *(v24 + 121) = v78[0];
    *(v24 + 128) = v11;
    *(v24 + 136) = v12;
    *(v24 + 144) = v13;
    *(v24 + 168) = v28;
    *(v24 + 184) = v77;
    *(v24 + 192) = v5;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_18225BD68(v11);
      if (v29)
      {
        goto LABEL_26;
      }
    }

    swift_endAccess();
    swift_beginAccess();

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    v3 = &v70;
    sub_1822598E0(v24, v11, v30);
    *(v15 + 16) = v70;
    swift_endAccess();
    swift_beginAccess();
    v31 = *(*(v15 + 24) + 24);
    v5 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_beginAccess();
    v15 = v3[59];
    type metadata accessor for PacketContainerEntry();
    v32 = swift_allocObject();
    *(v32 + 200) = 0;
    *(v32 + 208) = 0;
    swift_beginAccess();
    v33 = v82;
    v34 = v84;
    *(v32 + 80) = v83;
    *(v32 + 96) = v34;
    v35 = v80;
    *(v32 + 16) = v79;
    *(v32 + 32) = v35;
    *(v32 + 48) = v81;
    *(v32 + 64) = v33;
    v36 = v76;
    *(v32 + 152) = v75;
    *(v32 + 112) = v85;
    *(v32 + 120) = 2;
    *(v32 + 124) = *(v78 + 3);
    *(v32 + 121) = v78[0];
    *(v32 + 128) = v11;
    *(v32 + 136) = v12;
    *(v32 + 144) = v13;
    *(v32 + 168) = v36;
    *(v32 + 184) = v77;
    *(v32 + 192) = v5;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_18225BD68(v11);
      if (v37)
      {
        goto LABEL_26;
      }
    }

    swift_endAccess();
    swift_beginAccess();

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    sub_1822598E0(v32, v11, v38);
    *(v15 + 16) = v70;
    swift_endAccess();
    swift_beginAccess();
    v39 = *(*(v15 + 24) + 24);
    v5 = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
      break;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
LABEL_30:
    v44 = sub_182AD2698();
    __swift_project_value_buffer(v44, qword_1EA843418);
    v45 = swift_allocObject();
    *(v45 + 16) = "insertSentPacket(path:sentPacket:sentTime:)";
    *(v45 + 24) = 43;
    *(v45 + 32) = 2;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C724;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = 1564427099;
    *(v47 + 24) = 0xE400000000000000;
    v58 = swift_allocObject();
    *(v58 + 16) = v4;
    *(v58 + 24) = v68;

    oslog = sub_182AD2678();
    v67 = sub_182AD38A8();
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C71C;
    *(v48 + 24) = v46;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C718;
    *(v49 + 24) = v48;
    v62 = v49;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C720;
    *(v50 + 24) = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C718;
    *(v51 + 24) = v50;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_181F8C720;
    *(v53 + 24) = v58;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_181F8C718;
    *(v54 + 24) = v53;
    if (os_log_type_enabled(oslog, v67))
    {
      v59 = v54;
      v55 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71[0] = 0;
      v56 = v70;
      buf = v55;
      *v55 = 770;
      v72[0] = v55 + 2;
      v73 = sub_181F8C728;
      v74 = v60;
      v4 = 0;
      sub_181F73AE0(&v73, v72, v71, &v70);
      v3 = v66;

      v73 = sub_181F8C728;
      v74 = v61;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C714;
      v74 = v62;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v63;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v64;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C714;
      v74 = v51;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v65;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v52;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C714;
      v74 = v59;
      sub_181F73AE0(&v73, v72, v71, &v70);

      _os_log_impl(&dword_181A37000, oslog, v67, "%s %s %s", buf, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v56, -1, -1);
      MEMORY[0x1865DF520](buf, -1, -1);
    }

    else
    {

      v4 = 0;
      v3 = v66;
    }
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v15 + 24);
  if (*(v41 + 16) < v5 || (v40 & 1) == 0)
  {
    sub_181F46758(v40, v5);
    v41 = *(v15 + 24);
  }

  sub_181F46C5C((v41 + 16), v41 + 40, v11);
LABEL_26:
  swift_endAccess();

  return swift_endAccess();
}

void sub_181FF7470(unint64_t a1)
{
  v5 = v1;
  swift_beginAccess();
  v7 = *(v1 + 24);
  v8 = swift_beginAccess();
  v9 = *(v5 + 176);
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_77;
  }

  v8 = swift_beginAccess();
  v12 = *(v5 + 328);
  v10 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v10)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (!v13 && ((*(a1 + 1024) & 1) != 0 || (*(a1 + 1125) & 1) != 0 || (*(v5 + 483) & 1) != 0 || *(v5 + 484) == 1))
  {
    if (qword_1EA837250 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_84;
  }

  v4 = 0;
  while (1)
  {
    v8 = mach_continuous_time();
    if (qword_1EA837030 != -1)
    {
LABEL_78:
      v59 = v8;
      swift_once();
      v8 = v59;
    }

    v32 = qword_1EA8387E8;
    if (is_mul_ok(v8, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    v60 = v8;
    swift_once();
    v8 = v60;
LABEL_27:
    v33 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    v61 = v8;
    swift_once();
    v8 = v61;
LABEL_29:
    if (qword_1EA8431F0)
    {
      break;
    }

    __break(1u);
LABEL_84:
    swift_once();
LABEL_10:
    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_12;
    }

    v2 = 0x8000000182BD80F0;
    if (qword_1EA837248 != -1)
    {
LABEL_118:
      swift_once();
    }

    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);
    v63 = swift_allocObject();
    *(v63 + 16) = "resetTimer(connection:)";
    *(v63 + 24) = 23;
    *(v63 + 32) = 2;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C724;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = 1564427099;
    *(v65 + 24) = 0xE400000000000000;
    v66 = swift_allocObject();
    *(v66 + 16) = 0xD000000000000034;
    *(v66 + 24) = v2;
    v67 = sub_182AD2678();
    v68 = sub_182AD38A8();
    v113 = swift_allocObject();
    *(v113 + 16) = 32;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_181F8C71C;
    *(v69 + 24) = v64;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_181F8C718;
    *(v3 + 24) = v69;
    v119 = swift_allocObject();
    *(v119 + 16) = 32;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C720;
    *(v70 + 24) = v65;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C718;
    *(v71 + 24) = v70;
    v125 = swift_allocObject();
    *(v125 + 16) = 32;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C720;
    *(v72 + 24) = v66;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C718;
    *(v73 + 24) = v72;
    v2 = v67;
    if (!os_log_type_enabled(v67, v68))
    {

LABEL_12:
      v4 = 0;
      goto LABEL_13;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v148 = v75;
    v149 = 0;
    *v74 = 770;
    v110 = v75;
    *&v131[0] = v74 + 2;
    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v113;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v116;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C714;
    *(&v133 + 1) = v3;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v119;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v122;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C714;
    *(&v133 + 1) = v71;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v125;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v129;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C714;
    *(&v133 + 1) = v73;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    _os_log_impl(&dword_181A37000, v2, v68, "%s %s %s", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v110, -1, -1);
    MEMORY[0x1865DF520](v74, -1, -1);

    v4 = 0;
LABEL_13:
    sub_182016F14(0);
    v14 = *(a1 + 952);
    if (!v14)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v15 = *(v14 + 912);
    v142 = *(v14 + 896);
    v143 = v15;
    v144 = *(v14 + 928);
    v145 = *(v14 + 944);
    v16 = *(v14 + 848);
    *&v138[16] = *(v14 + 832);
    v139 = v16;
    v17 = *(v14 + 880);
    v140 = *(v14 + 864);
    v141 = v17;
    v18 = *(v14 + 784);
    v135 = *(v14 + 768);
    v136 = v18;
    v19 = *(v14 + 816);
    v137 = *(v14 + 800);
    *v138 = v19;
    v20 = *(v14 + 752);
    v133 = *(v14 + 736);
    v134 = v20;
    if (sub_182015D6C(&v133) == 1)
    {
      goto LABEL_115;
    }

    v131[10] = v142;
    v131[11] = v143;
    v131[12] = v144;
    v132 = v145;
    v131[6] = *&v138[16];
    v131[7] = v139;
    v131[8] = v140;
    v131[9] = v141;
    v131[2] = v135;
    v131[3] = v136;
    v131[4] = v137;
    v131[5] = *v138;
    v131[0] = v133;
    v131[1] = v134;
    sub_182015D80(v131);
    v21 = nullsub_41(v131);
    if (*(v14 + 33) == 8 && (*(a1 + 1124) & 1) == 0)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v149 = 0;
        v150 = 0xE000000000000000;

        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD00000000000003CLL, 0x8000000182BD80B0);
        v148 = v14;
        type metadata accessor for QUICPath();
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](544434464, 0xE400000000000000);
        v148 = v22;
        v23 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v23);

        MEMORY[0x1865D9CA0](0x6F6E20646E61202CLL, 0xEB00000000302074);
        v24 = v149;
        v2 = v150;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v25 = sub_182AD2698();
        __swift_project_value_buffer(v25, qword_1EA843418);

        v26 = sub_182AD2678();
        v27 = sub_182AD38C8();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v149 = v128;
          *v28 = 136315650;
          v29 = sub_182AD3BF8();
          v31 = sub_181C64FFC(v29, v30, &v149);

          *(v28 + 4) = v31;
          v4 = 0;
          *(v28 + 12) = 2080;
          *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v149);
          *(v28 + 22) = 2080;
          v3 = sub_181C64FFC(v24, v2, &v149);

          *(v28 + 24) = v3;
          _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v128, -1, -1);
          MEMORY[0x1865DF520](v28, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  v34 = v8 * v32 / v33 / qword_1EA8431F0;
  v35 = sub_182005A28(0, a1);
  if (!v35)
  {
    v37 = sub_182005A28(1, a1);
    v39 = *(a1 + 952);
    if (!v39)
    {
      return;
    }

    v2 = v37;
    if (v38 == 2 && (*(a1 + 1125) & 1) == 0)
    {
      v58 = qword_1EA837250;

      if (v58 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v94 = sub_182AD2698();
        __swift_project_value_buffer(v94, qword_1EA843418);
        v95 = swift_allocObject();
        *(v95 + 16) = "resetTimer(connection:)";
        *(v95 + 24) = 23;
        *(v95 + 32) = 2;
        v96 = swift_allocObject();
        *(v96 + 16) = sub_181F8C724;
        *(v96 + 24) = v95;
        v97 = swift_allocObject();
        *(v97 + 16) = 1564427099;
        *(v97 + 24) = 0xE400000000000000;
        v98 = swift_allocObject();
        *(v98 + 16) = 0xD000000000000029;
        *(v98 + 24) = 0x8000000182BD8080;
        v2 = sub_182AD2678();
        v99 = sub_182AD38A8();
        v118 = swift_allocObject();
        *(v118 + 16) = 32;
        v121 = swift_allocObject();
        *(v121 + 16) = 8;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_181F8C71C;
        *(v100 + 24) = v96;
        v101 = swift_allocObject();
        *(v101 + 16) = sub_181F8C718;
        *(v101 + 24) = v100;
        v115 = swift_allocObject();
        *(v115 + 16) = 32;
        v124 = swift_allocObject();
        *(v124 + 16) = 8;
        v102 = swift_allocObject();
        *(v102 + 16) = sub_181F8C720;
        *(v102 + 24) = v97;
        v103 = swift_allocObject();
        *(v103 + 16) = sub_181F8C718;
        *(v103 + 24) = v102;
        v127 = swift_allocObject();
        *(v127 + 16) = 32;
        v130 = swift_allocObject();
        *(v130 + 16) = 8;
        v104 = swift_allocObject();
        *(v104 + 16) = sub_181F8C720;
        *(v104 + 24) = v98;
        a1 = swift_allocObject();
        *(a1 + 16) = sub_181F8C718;
        *(a1 + 24) = v104;
        v112 = v99;
        v105 = v2;
        if (os_log_type_enabled(v2, v99))
        {
          v2 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v148 = v106;
          v149 = 0;
          LOWORD(v2->isa) = 770;
          *&v131[0] = &v2->isa + 2;
          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v118;
          sub_181F73AE0(&v133, v131, &v149, &v148);
          if (v4)
          {

            while (1)
            {

              __break(1u);
            }
          }

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v121;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C714;
          *(&v133 + 1) = v101;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v115;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v124;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C714;
          *(&v133 + 1) = v103;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v127;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v130;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C714;
          *(&v133 + 1) = a1;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          _os_log_impl(&dword_181A37000, v105, v112, "%s %s %s", v2, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v106, -1, -1);
          MEMORY[0x1865DF520](v2, -1, -1);
        }

        else
        {
        }
      }

      sub_182016F14(0);
      if (*(v39 + 1016))
      {
        goto LABEL_117;
      }

      *(v39 + 1000) = 0;
      goto LABEL_74;
    }

    v40 = &v133;
    swift_beginAccess();
    if (*(v39 + 256) != 1)
    {
      goto LABEL_48;
    }

    v41 = *(v39 + 168);
    v42 = *(v39 + 232);
    v43 = *(v39 + 200);
    v137 = *(v39 + 216);
    *v138 = v42;
    *&v138[9] = *(v39 + 241);
    v133 = *(v39 + 152);
    v134 = v41;
    v135 = *(v39 + 184);
    v136 = v43;
    a1 = *(&v41 + 1);
    if (*(&v41 + 1) >> 62)
    {
      __break(1u);
      goto LABEL_92;
    }

    v3 = v134;
    v40 = *v138;

    sub_18201A404(&v133, v131);
    if (qword_1EA837020 != -1)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v44 = qword_1EA843200;
      sub_18201A460(&v133);
      if (v44 < 0)
      {
        __break(1u);
        goto LABEL_95;
      }

      v45 = 4 * a1;
      v46 = 2 * v44;
      if (2 * v44 > 4 * a1)
      {
        v45 = 2 * v44;
      }

      v47 = __CFADD__(v3, v45);
      v48 = v3 + v45;
      if (v47)
      {
        goto LABEL_97;
      }

      v47 = __CFADD__(v48, v40);
      v48 += v40;
      if (!v47)
      {
        goto LABEL_54;
      }

      __break(1u);
LABEL_48:
      v49 = *(v39 + 200);
      v50 = *(v39 + 232);
      v137 = *(v39 + 216);
      *v138 = v50;
      *(v40 + 89) = *(v39 + 241);
      v51 = *(v39 + 168);
      v133 = *(v39 + 152);
      v134 = v51;
      v135 = *(v39 + 184);
      v136 = v49;

      sub_18201A404(&v133, v131);
      v40 = sub_182163B40();
      a1 = v52;
      sub_18201A460(&v133);
      if (!(a1 >> 62))
      {
        break;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      swift_once();
    }

    if (qword_1EA837020 == -1)
    {
      goto LABEL_50;
    }

LABEL_95:
    swift_once();
LABEL_50:
    v48 = qword_1EA843200;
    if (qword_1EA843200 < 0)
    {
      __break(1u);
LABEL_97:
      __break(1u);
    }

    else
    {
      v46 = 4 * a1;
      v53 = 2 * qword_1EA843200;
      if (2 * qword_1EA843200 <= 4 * a1)
      {
        v53 = 4 * a1;
      }

      v47 = __CFADD__(v40, v53);
      v48 = v40 + v53;
      if (!v47)
      {
LABEL_54:
        if (*(v39 + 1016))
        {
          goto LABEL_116;
        }

        v46 = *(v39 + 992);
        if (v46 - 65 < 0xFFFFFFFFFFFFFF7FLL)
        {
          goto LABEL_56;
        }

        if ((v46 & 0x8000000000000000) == 0)
        {
          v54 = v48 >> v46;
          if (v46 >= 0x40)
          {
            v54 = 0;
          }

          goto LABEL_60;
        }

LABEL_99:
        if (v46 <= 0xFFFFFFFFFFFFFFC0)
        {
LABEL_56:
          v54 = 0;
          goto LABEL_60;
        }

        v54 = v48 << -v46;
LABEL_60:
        *(v39 + 1000) = v54;
        v55 = v2 + v54;
        if (__CFADD__(v2, v54))
        {
          __break(1u);
        }

        else
        {
          v56 = v55 > v34;
          v57 = &v55[-v34];
          if (v56)
          {
            a1 = v57;
          }

          else
          {
            a1 = v54;
          }

          if (qword_1EA837250 == -1)
          {
            goto LABEL_65;
          }
        }

        swift_once();
LABEL_65:
        if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
        {
          v108 = v4;
          *&v131[0] = 0;
          *(&v131[0] + 1) = 0xE000000000000000;
          sub_182AD3BA8();

          *&v131[0] = 0xD00000000000001CLL;
          *(&v131[0] + 1) = 0x8000000182BD8060;
          v148 = a1;
          v76 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v76);

          MEMORY[0x1865D9CA0](7566624, 0xE300000000000000);
          v77 = v131[0];
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v78 = sub_182AD2698();
          __swift_project_value_buffer(v78, qword_1EA843418);
          v79 = swift_allocObject();
          *(v79 + 16) = "resetTimer(connection:)";
          *(v79 + 24) = 23;
          *(v79 + 32) = 2;
          v80 = swift_allocObject();
          *(v80 + 16) = sub_181F8C724;
          *(v80 + 24) = v79;
          v81 = swift_allocObject();
          *(v81 + 16) = 1564427099;
          *(v81 + 24) = 0xE400000000000000;
          v82 = swift_allocObject();
          *(v82 + 16) = v77;

          v83 = sub_182AD2678();
          v84 = sub_182AD38A8();
          v111 = swift_allocObject();
          *(v111 + 16) = 32;
          v114 = swift_allocObject();
          *(v114 + 16) = 8;
          v85 = swift_allocObject();
          *(v85 + 16) = sub_181F8C71C;
          *(v85 + 24) = v80;
          v86 = swift_allocObject();
          *(v86 + 16) = sub_181F8C718;
          *(v86 + 24) = v85;
          v109 = swift_allocObject();
          *(v109 + 16) = 32;
          v117 = swift_allocObject();
          *(v117 + 16) = 8;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_181F8C720;
          *(v87 + 24) = v81;
          v88 = swift_allocObject();
          *(v88 + 16) = sub_181F8C718;
          *(v88 + 24) = v87;
          v120 = swift_allocObject();
          *(v120 + 16) = 32;
          v126 = swift_allocObject();
          *(v126 + 16) = 8;
          v89 = swift_allocObject();
          *(v89 + 16) = sub_181F8C720;
          *(v89 + 24) = v82;
          v90 = swift_allocObject();
          *(v90 + 16) = sub_181F8C718;
          *(v90 + 24) = v89;
          v123 = v90;
          v107 = v84;
          v91 = v83;
          if (os_log_type_enabled(v83, v84))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v146 = v93;
            v147 = 0;
            *v92 = 770;
            v148 = v92 + 2;
            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v111;
            sub_181F73AE0(v131, &v148, &v147, &v146);
            if (v108)
            {

              while (1)
              {

                __break(1u);
              }
            }

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v114;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C714;
            *(&v131[0] + 1) = v86;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v109;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v117;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C714;
            *(&v131[0] + 1) = v88;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v120;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v126;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C714;
            *(&v131[0] + 1) = v123;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            _os_log_impl(&dword_181A37000, v91, v107, "%s %s %s", v92, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v93, -1, -1);
            MEMORY[0x1865DF520](v92, -1, -1);
          }

          else
          {
          }
        }

        sub_182016F14(a1);
LABEL_74:

        return;
      }
    }

    __break(1u);
    goto LABEL_99;
  }

  if (v35 <= v34)
  {
    v36 = 1000;
  }

  else
  {
    v36 = v35 - v34;
  }

  sub_182016F14(v36);
}

uint64_t sub_181FF912C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a2;
  if (*(a2 + 200))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  if (*(v5 + 153) != 1)
  {
    goto LABEL_20;
  }

  if (*(v5 + 152) == 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      v7 = (v3 + 176);
      swift_beginAccess();
      v8 = *(v3 + 176);
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (!v9)
      {
LABEL_13:
        *v7 = v10;
        goto LABEL_14;
      }

      __break(1u);
    }

    v7 = (v3 + 24);
    swift_beginAccess();
    v11 = *(v3 + 24);
    v9 = __OFSUB__(v11, 1);
    v10 = v11 - 1;
    if (!v9)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v7 = (v3 + 328);
    result = swift_beginAccess();
    v13 = *(v3 + 328);
    v9 = __OFSUB__(v13, 1);
    v10 = v13 - 1;
    if (v9)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_13;
  }

LABEL_14:
  v14 = *(a1 + 912);
  v171 = *(a1 + 896);
  v172 = v14;
  v173 = *(a1 + 928);
  v15 = *(a1 + 848);
  v167 = *(a1 + 832);
  v168 = v15;
  v16 = *(a1 + 880);
  v169 = *(a1 + 864);
  v170 = v16;
  v17 = *(a1 + 784);
  v163 = *(a1 + 768);
  v164 = v17;
  v18 = *(a1 + 816);
  v165 = *(a1 + 800);
  v166 = v18;
  v19 = *(a1 + 752);
  v161 = *(a1 + 736);
  v174 = *(a1 + 944);
  v162 = v19;
  if (sub_182015D6C(&v161) != 1)
  {
    v20 = *(a1 + 880);
    v143 = *(a1 + 896);
    v21 = *(a1 + 896);
    v144 = *(a1 + 912);
    v22 = *(a1 + 912);
    v145 = *(a1 + 928);
    v23 = *(a1 + 816);
    v139 = *(a1 + 832);
    v24 = *(a1 + 832);
    v140 = *(a1 + 848);
    v25 = *(a1 + 848);
    v141 = *(a1 + 864);
    v26 = *(a1 + 864);
    v142 = *(a1 + 880);
    v27 = *(a1 + 752);
    v135 = *(a1 + 768);
    v28 = *(a1 + 768);
    v136 = *(a1 + 784);
    v29 = *(a1 + 784);
    v137 = *(a1 + 800);
    v30 = *(a1 + 800);
    v138 = *(a1 + 816);
    v133 = *(a1 + 736);
    v31 = *(a1 + 736);
    v134 = *(a1 + 752);
    v157 = v21;
    v158 = v22;
    v159 = *(a1 + 928);
    v153 = v24;
    v154 = v25;
    v155 = v26;
    v156 = v20;
    v149 = v28;
    v150 = v29;
    v151 = v30;
    v152 = v23;
    v147 = v31;
    v146 = *(a1 + 944);
    v160 = *(a1 + 944);
    v148 = v27;
    result = sub_182015D6C(&v147);
    if (result == 1)
    {
LABEL_90:
      __break(1u);
      return result;
    }

    v32 = *(v5 + 72);
    v33 = *(v5 + 192);
    v131[10] = v157;
    v131[11] = v158;
    v131[12] = v159;
    v132 = v160;
    v131[6] = v153;
    v131[7] = v154;
    v131[8] = v155;
    v131[9] = v156;
    v131[2] = v149;
    v131[3] = v150;
    v131[4] = v151;
    v131[5] = v152;
    v131[0] = v147;
    v131[1] = v148;
    if (sub_182015D80(v131) == 1)
    {
      v34 = nullsub_41(v131);
      v92 = v34[7];
      v94 = v34[8];
      v96 = v34[9];
      v82 = v34[2];
      v84 = v34[3];
      v86 = v34[4];
      v88 = v34[5];
      v90 = v34[6];
      v78 = *v34;
      v80 = v34[1];
      v101 = v133;
      v102 = v134;
      v105 = v137;
      v106 = v138;
      v103 = v135;
      v104 = v136;
      v109 = v141;
      v110 = v142;
      v107 = v139;
      v108 = v140;
      v114 = v146;
      v112 = v144;
      v113 = v145;
      v111 = v143;
      sub_182015D94(&v101, v129);
      sub_18201158C(v32, v33);
      v121 = v90;
      v122 = v92;
      v123 = v94;
      v124 = v96;
      v117 = v82;
      v118 = v84;
      v119 = v86;
      v120 = v88;
      v115 = v78;
      v116 = v80;
      sub_182015D88(&v115);
    }

    else
    {
      v35 = nullsub_41(v131);
      v97 = v35[9];
      v98 = v35[10];
      v99 = v35[11];
      v100 = v35[12];
      v93 = v35[7];
      v95 = v35[8];
      v83 = v35[2];
      v85 = v35[3];
      v89 = v35[5];
      v91 = v35[6];
      v87 = v35[4];
      v79 = *v35;
      v81 = v35[1];
      v101 = v133;
      v102 = v134;
      v105 = v137;
      v106 = v138;
      v103 = v135;
      v104 = v136;
      v109 = v141;
      v110 = v142;
      v107 = v139;
      v108 = v140;
      v114 = v146;
      v112 = v144;
      v113 = v145;
      v111 = v143;
      sub_182015D94(&v101, v129);
      sub_182010E38(v32, v33);
      v125 = v98;
      v126 = v99;
      v127 = v100;
      v121 = v91;
      v122 = v93;
      v123 = v95;
      v124 = v97;
      v117 = v83;
      v118 = v85;
      v119 = v87;
      v120 = v89;
      v115 = v79;
      v116 = v81;
      sub_18201A508(&v115);
    }

    v129[10] = v125;
    v129[11] = v126;
    v129[12] = v127;
    v130 = v128;
    v129[6] = v121;
    v129[7] = v122;
    v129[8] = v123;
    v129[9] = v124;
    v129[2] = v117;
    v129[3] = v118;
    v129[4] = v119;
    v129[5] = v120;
    v129[0] = v115;
    v129[1] = v116;
    v111 = v125;
    v112 = v126;
    v113 = v127;
    v114 = v128;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v110 = v124;
    v103 = v117;
    v104 = v118;
    v105 = v119;
    v106 = v120;
    v101 = v115;
    v102 = v116;
    nullsub_41(&v101);
    v36 = *(a1 + 912);
    v125 = *(a1 + 896);
    v126 = v36;
    v127 = *(a1 + 928);
    v128 = *(a1 + 944);
    v37 = *(a1 + 848);
    v121 = *(a1 + 832);
    v122 = v37;
    v38 = *(a1 + 880);
    v123 = *(a1 + 864);
    v124 = v38;
    v39 = *(a1 + 784);
    v117 = *(a1 + 768);
    v118 = v39;
    v40 = *(a1 + 816);
    v119 = *(a1 + 800);
    v120 = v40;
    v41 = *(a1 + 752);
    v115 = *(a1 + 736);
    v116 = v41;
    v42 = v112;
    *(a1 + 896) = v111;
    *(a1 + 912) = v42;
    *(a1 + 928) = v113;
    *(a1 + 944) = v114;
    v43 = v108;
    *(a1 + 832) = v107;
    *(a1 + 848) = v43;
    v44 = v110;
    *(a1 + 864) = v109;
    *(a1 + 880) = v44;
    v45 = v104;
    *(a1 + 768) = v103;
    *(a1 + 784) = v45;
    v46 = v106;
    *(a1 + 800) = v105;
    *(a1 + 816) = v46;
    v47 = v102;
    *(a1 + 736) = v101;
    *(a1 + 752) = v47;
    sub_182015DF0(&v115);
  }

LABEL_20:
  if (!a3)
  {
LABEL_38:
    swift_beginAccess();
    v56 = *(v3 + 168);
    swift_beginAccess();
    v57 = *(v5 + 128);
    swift_beginAccess();
    if (!*(*(v56 + 16) + 16))
    {
      goto LABEL_70;
    }

    sub_18225BD68(v57);
    if ((v58 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = v5;
    swift_endAccess();
    swift_beginAccess();

    sub_1822501BC(v57);
    swift_endAccess();

    result = swift_beginAccess();
    v59 = *(v56 + 24);
    v60 = v59[4];
    v61 = v59[3] + v60;
    if (v59[2] < v61)
    {
      v61 = v59[2];
    }

    *&v147 = *(v56 + 24);
    *(&v147 + 1) = v60;
    *&v148 = v61;
    v54 = -1;
    do
    {
      if (v60 == v148)
      {
        result = sub_181AC81FC(result);
        if ((result & 1) == 0)
        {
          goto LABEL_71;
        }

        v60 = *(&v147 + 1);
      }

      *(&v147 + 1) = v60 + 1;
      v5 = v54 + 2;
      if (__OFADD__(v54 + 1, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      v62 = *(v147 + 8 * v60 + 40);
      ++v54;
      ++v60;
    }

    while (v62 != v57);
    result = swift_beginAccess();
    if (v54 >= *(*(v56 + 24) + 24))
    {
      goto LABEL_82;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1820E6310();
    }

    v3 = *(v56 + 24);
    if (v54 >= *(v3 + 24))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v5 >= v54)
    {
      goto LABEL_69;
    }

    __break(1u);
LABEL_54:
    swift_beginAccess();
    v63 = *(v3 + 472);
    swift_beginAccess();
    v64 = *(v5 + 128);
    swift_beginAccess();
    if (!*(*(v63 + 16) + 16))
    {
      goto LABEL_70;
    }

    sub_18225BD68(v64);
    if ((v65 & 1) == 0)
    {
      goto LABEL_70;
    }

    v77 = v5;
    swift_endAccess();
    swift_beginAccess();

    sub_1822501BC(v64);
    swift_endAccess();

    result = swift_beginAccess();
    v66 = *(v63 + 24);
    v67 = v66[4];
    v68 = v66[3] + v67;
    if (v66[2] < v68)
    {
      v68 = v66[2];
    }

    *&v147 = *(v63 + 24);
    *(&v147 + 1) = v67;
    *&v148 = v68;
    v54 = -1;
    while (1)
    {
      if (v67 == v148)
      {
        result = sub_181AC81FC(result);
        if ((result & 1) == 0)
        {
          goto LABEL_71;
        }

        v67 = *(&v147 + 1);
      }

      *(&v147 + 1) = v67 + 1;
      v5 = v54 + 2;
      if (__OFADD__(v54 + 1, 1))
      {
        break;
      }

      v69 = *(v147 + 8 * v67 + 40);
      ++v54;
      ++v67;
      if (v69 == v64)
      {
        result = swift_beginAccess();
        if (v54 >= *(*(v63 + 24) + 24))
        {
          goto LABEL_84;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1820E6310();
        }

        v3 = *(v63 + 24);
        if (v54 >= *(v3 + 24))
        {
          goto LABEL_87;
        }

        if (v5 < v54)
        {
          goto LABEL_88;
        }

        goto LABEL_69;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (a3 != 1)
  {
    goto LABEL_54;
  }

  swift_beginAccess();
  v48 = *(v3 + 320);
  swift_beginAccess();
  v49 = *(v5 + 128);
  swift_beginAccess();
  if (*(*(v48 + 16) + 16))
  {
    sub_18225BD68(v49);
    if (v50)
    {
      v77 = v5;
      swift_endAccess();
      swift_beginAccess();

      sub_1822501BC(v49);
      swift_endAccess();

      result = swift_beginAccess();
      v51 = *(v48 + 24);
      v52 = v51[4];
      v53 = v51[3] + v52;
      if (v51[2] < v53)
      {
        v53 = v51[2];
      }

      *&v147 = *(v48 + 24);
      *(&v147 + 1) = v52;
      *&v148 = v53;
      v54 = -1;
      do
      {
        if (v52 == v148)
        {
          result = sub_181AC81FC(result);
          if ((result & 1) == 0)
          {
LABEL_71:

LABEL_72:
            v5 = v77;

            goto LABEL_73;
          }

          v52 = *(&v147 + 1);
        }

        *(&v147 + 1) = v52 + 1;
        v5 = v54 + 2;
        if (__OFADD__(v54 + 1, 1))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v55 = *(v147 + 8 * v52 + 40);
        ++v54;
        ++v52;
      }

      while (v55 != v49);
      result = swift_beginAccess();
      if (v54 >= *(*(v48 + 24) + 24))
      {
        goto LABEL_83;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1820E6310();
      }

      v3 = *(v48 + 24);
      if (v54 < *(v3 + 24))
      {
        if (v5 < v54)
        {
          __break(1u);
          goto LABEL_38;
        }

LABEL_69:
        sub_181D8977C(v54, v5, (v3 + 16), v3 + 40, v131);

        sub_18226EC18(v54, v5, (v3 + 16), (v3 + 40));
        swift_endAccess();

        goto LABEL_72;
      }

      goto LABEL_86;
    }
  }

LABEL_70:
  swift_endAccess();
LABEL_73:
  swift_endAccess();
  result = swift_beginAccess();
  v70 = *(v5 + 136);
  v71 = *(v70 + 16);
  if (v71)
  {

    v72 = v71 - 1;
    for (i = 32; ; i += 80)
    {
      v161 = *(v70 + i);
      v74 = *(v70 + i + 16);
      v75 = *(v70 + i + 32);
      v76 = *(v70 + i + 48);
      v165 = *(v70 + i + 64);
      v164 = v76;
      v163 = v75;
      v162 = v74;
      v148 = *(v70 + i + 16);
      v149 = *(v70 + i + 32);
      v150 = *(v70 + i + 48);
      v151 = *(v70 + i + 64);
      v147 = *(v70 + i);
      sub_181F842F0(&v161, &v133);
      sub_182065D0C(&v147, a3);
      sub_181F8434C(&v161);
      if (!v72)
      {
        break;
      }

      --v72;
    }
  }

  return result;
}

void sub_181FF9CF0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = *(a1 + 144);
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = v9[3];
  if (!v10)
  {
LABEL_16:
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_27:
    *&v82[0] = 0;
    *(&v82[0] + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000028, 0x8000000182BD8390);
    LOBYTE(v79[0]) = *(a2 + 9);
    sub_182AD3E18();
    v28 = v82[0];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v29 = sub_182AD2698();
    __swift_project_value_buffer(v29, qword_1EA843418);
    v30 = swift_allocObject();
    *(v30 + 16) = "buildNewlyAckedPacketsArray(ackFrame:path:)";
    *(v30 + 24) = 43;
    *(v30 + 32) = 2;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C724;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = 1564427099;
    *(v32 + 24) = 0xE400000000000000;
    v33 = swift_allocObject();
    *(v33 + 16) = v28;

    v34 = sub_182AD2678();
    v35 = sub_182AD38A8();
    v68 = swift_allocObject();
    *(v68 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C71C;
    *(v36 + 24) = v31;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C718;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v72 = swift_allocObject();
    *(v72 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C720;
    *(v39 + 24) = v32;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C718;
    *(v40 + 24) = v39;
    v74 = swift_allocObject();
    *(v74 + 16) = 32;
    v76 = swift_allocObject();
    *(v76 + 16) = 8;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_181F8C720;
    *(v41 + 24) = v33;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C718;
    *(v42 + 24) = v41;
    v66 = v35;
    v43 = v34;
    if (os_log_type_enabled(v34, v35))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80[0] = 0;
      *v44 = 770;
      v81 = v45;
      v79[0] = v44 + 2;
      *&v82[0] = sub_181F8C728;
      *(&v82[0] + 1) = v68;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C728;
      *(&v82[0] + 1) = v70;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C714;
      *(&v82[0] + 1) = v37;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C728;
      *(&v82[0] + 1) = v38;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C728;
      *(&v82[0] + 1) = v72;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C714;
      *(&v82[0] + 1) = v40;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C728;
      *(&v82[0] + 1) = v74;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C728;
      *(&v82[0] + 1) = v76;
      sub_181F73AE0(v82, v79, v80, &v81);

      *&v82[0] = sub_181F8C714;
      *(&v82[0] + 1) = v42;
      sub_181F73AE0(v82, v79, v80, &v81);

      _os_log_impl(&dword_181A37000, v43, v66, "%s %s %s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v45, -1, -1);
      MEMORY[0x1865DF520](v44, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v11 = v9[4];
  v12 = v9[2];
  if (v11 < v12)
  {
    v12 = 0;
  }

  v13 = v9[v11 - v12 + 5];
  swift_beginAccess();
  v14 = *(v8 + 16);
  if (!*(v14 + 16) || (v15 = sub_18225BD68(v13), (v16 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_16;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(v17 + 128);
  v19 = *(a2 + 32);
  if (v18 >= 1 && v19 < v18)
  {
    v27 = qword_1EA837250;

    if (v27 == -1)
    {
LABEL_23:
      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {
LABEL_25:

LABEL_20:
        v26 = 0;
        goto LABEL_21;
      }

LABEL_35:
      *&v82[0] = 0;
      *(&v82[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD83C0);
      v79[0] = *(v17 + 128);
      v46 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v46);

      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD83E0);
      v79[0] = v19;
      v47 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v47);

      MEMORY[0x1865D9CA0](0x6970706F7473202CLL, 0xEA0000000000676ELL);
      v48 = v82[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v49 = sub_182AD2698();
      __swift_project_value_buffer(v49, qword_1EA843418);
      v50 = swift_allocObject();
      *(v50 + 16) = "buildNewlyAckedPacketsArray(ackFrame:path:)";
      *(v50 + 24) = 43;
      *(v50 + 32) = 2;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_181F8C724;
      *(v51 + 24) = v50;
      v52 = swift_allocObject();
      *(v52 + 16) = 1564427099;
      *(v52 + 24) = 0xE400000000000000;
      v53 = swift_allocObject();
      *(v53 + 16) = v48;

      v54 = sub_182AD2678();
      v55 = sub_182AD38A8();
      v69 = swift_allocObject();
      *(v69 + 16) = 32;
      v71 = swift_allocObject();
      *(v71 + 16) = 8;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_181F8C71C;
      *(v56 + 24) = v51;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_181F8C718;
      *(v57 + 24) = v56;
      v67 = swift_allocObject();
      *(v67 + 16) = 32;
      v73 = swift_allocObject();
      *(v73 + 16) = 8;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_181F8C720;
      *(v58 + 24) = v52;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_181F8C718;
      *(v59 + 24) = v58;
      v75 = swift_allocObject();
      *(v75 + 16) = 32;
      v77 = swift_allocObject();
      *(v77 + 16) = 8;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_181F8C720;
      *(v60 + 24) = v53;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_181F8C718;
      *(v61 + 24) = v60;
      v65 = v55;
      v62 = v54;
      if (os_log_type_enabled(v54, v55))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v81 = 0;
        *v63 = 770;
        v78 = v64;
        v79[0] = v63 + 2;
        *&v82[0] = sub_181F8C728;
        *(&v82[0] + 1) = v69;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C728;
        *(&v82[0] + 1) = v71;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C714;
        *(&v82[0] + 1) = v57;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C728;
        *(&v82[0] + 1) = v67;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C728;
        *(&v82[0] + 1) = v73;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C714;
        *(&v82[0] + 1) = v59;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C728;
        *(&v82[0] + 1) = v75;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C728;
        *(&v82[0] + 1) = v77;
        sub_181F73AE0(v82, v79, &v81, &v78);

        *&v82[0] = sub_181F8C714;
        *(&v82[0] + 1) = v61;
        sub_181F73AE0(v82, v79, &v81, &v78);

        _os_log_impl(&dword_181A37000, v62, v65, "%s %s %s", v63, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v64, -1, -1);
        MEMORY[0x1865DF520](v63, -1, -1);
      }

      else
      {
      }

      goto LABEL_25;
    }

LABEL_33:
    swift_once();
    goto LABEL_23;
  }

  if (v18 >> 62)
  {
    __break(1u);
    goto LABEL_33;
  }

  v21 = *(a1 + 112);
  v82[6] = *(a1 + 96);
  v82[7] = v21;
  v82[8] = *(a1 + 128);
  v83 = *(a1 + 144);
  v22 = *(a1 + 48);
  v82[2] = *(a1 + 32);
  v82[3] = v22;
  v23 = *(a1 + 80);
  v82[4] = *(a1 + 64);
  v82[5] = v23;
  v24 = *(a1 + 16);
  v82[0] = *a1;
  v82[1] = v24;

  sub_18201C7A8(v82, v79);
  sub_18229FEEC(a2, v18);
  v25 = *(v17 + 128);
  if (v25 >> 62)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_18201C7A8(v82, v79);
  sub_18229FFD0((a1 + 48), v25, v19, (a1 + 64), v82, a3);
  sub_182010E08(v82);

  sub_182010E08(v82);
  v26 = 1;
LABEL_21:
  *a4 = v26;
}

uint64_t sub_181FFAD8C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a1 + 9);
  v9 = sub_182017920(a1);
  v10 = v9;
  if (v9 >> 62)
  {
LABEL_20:
    v11 = sub_182AD3EB8();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v62 = v10 & 0xC000000000000001;
      v55 = v10 & 0xFFFFFFFFFFFFFF8;
      v56 = v11;
      v59 = v8;
      v57 = v10;
      v58 = a4;
      do
      {
        if (v62)
        {
          v13 = MEMORY[0x1865DA790](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v12 >= *(v55 + 16))
          {
            goto LABEL_19;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        v63 = v14;
        if (*(v13 + 200))
        {
          swift_beginAccess();
          if (*(v13 + 144))
          {
            v61 = v12;
            v15 = *(v13 + 144);
            swift_beginAccess();
            v16 = *(v15 + 168);
            v17 = *(v15 + 152);
            v18 = v5;
            v19 = *(v13 + 128);
            v20 = *(v13 + 192);
            v21 = *(v13 + 120);

            v22 = v19;
            v5 = v18;
            sub_1820179D8(v22, v21, v20, a3, v16, v17);
            if (*(v13 + 208) == 1)
            {
              v23 = *(a2 + 912);
              v24 = *(a2 + 880);
              v91 = *(a2 + 896);
              v92 = v23;
              v25 = *(a2 + 912);
              v93 = *(a2 + 928);
              v26 = *(a2 + 848);
              v27 = *(a2 + 816);
              v87 = *(a2 + 832);
              v88 = v26;
              v28 = *(a2 + 848);
              v29 = *(a2 + 880);
              v89 = *(a2 + 864);
              v90 = v29;
              v30 = *(a2 + 784);
              v31 = *(a2 + 752);
              v83 = *(a2 + 768);
              v84 = v30;
              v32 = *(a2 + 784);
              v33 = *(a2 + 816);
              v85 = *(a2 + 800);
              v86 = v33;
              v34 = *(a2 + 752);
              v82[0] = *(a2 + 736);
              v82[1] = v34;
              v105 = v91;
              v106 = v25;
              v107 = *(a2 + 928);
              v101 = v87;
              v102 = v28;
              v103 = v89;
              v104 = v24;
              v97 = v83;
              v98 = v32;
              v99 = v85;
              v100 = v27;
              v94 = *(a2 + 944);
              v108 = *(a2 + 944);
              v95 = v82[0];
              v96 = v31;
              result = sub_182015D6C(&v95);
              if (result == 1)
              {
                __break(1u);
                return result;
              }

              v119 = v105;
              v120 = v106;
              v121 = v107;
              v122 = v108;
              v115 = v101;
              v116 = v102;
              v117 = v103;
              v118 = v104;
              v111 = v97;
              v112 = v98;
              v113 = v99;
              v114 = v100;
              v109 = v95;
              v110 = v96;
              sub_18201A394(v82, v80);
              sub_182285284(v64);

              sub_182015DF0(v82);
              v76 = v64[10];
              v77 = v64[11];
              v78 = v64[12];
              v79 = v65;
              v72 = v64[6];
              v73 = v64[7];
              v74 = v64[8];
              v75 = v64[9];
              v68 = v64[2];
              v69 = v64[3];
              v70 = v64[4];
              v71 = v64[5];
              v66 = v64[0];
              v67 = v64[1];
              nullsub_41(&v66);
              v36 = *(a2 + 912);
              v80[10] = *(a2 + 896);
              v80[11] = v36;
              v80[12] = *(a2 + 928);
              v81 = *(a2 + 944);
              v37 = *(a2 + 848);
              v80[6] = *(a2 + 832);
              v80[7] = v37;
              v38 = *(a2 + 880);
              v80[8] = *(a2 + 864);
              v80[9] = v38;
              v39 = *(a2 + 784);
              v80[2] = *(a2 + 768);
              v80[3] = v39;
              v40 = *(a2 + 816);
              v80[4] = *(a2 + 800);
              v80[5] = v40;
              v41 = *(a2 + 752);
              v80[0] = *(a2 + 736);
              v80[1] = v41;
              v42 = v77;
              *(a2 + 896) = v76;
              *(a2 + 912) = v42;
              *(a2 + 928) = v78;
              *(a2 + 944) = v79;
              v43 = v73;
              *(a2 + 832) = v72;
              *(a2 + 848) = v43;
              v44 = v75;
              *(a2 + 864) = v74;
              *(a2 + 880) = v44;
              v45 = v69;
              *(a2 + 768) = v68;
              *(a2 + 784) = v45;
              v46 = v71;
              *(a2 + 800) = v70;
              *(a2 + 816) = v46;
              v47 = v67;
              *(a2 + 736) = v66;
              *(a2 + 752) = v47;
              sub_182015DF0(v80);
            }

            else
            {
            }

            v8 = v59;
            v10 = v57;
            a4 = v58;
            v11 = v56;
            v12 = v61;
          }
        }

        sub_181FF912C(a2, v13, v8);

        ++v12;
      }

      while (v63 != v11);
    }
  }

  if (v8)
  {
    swift_beginAccess();
    if (v8 == 1)
    {
      v48 = 232;
      v49 = 248;
      v50 = 224;
      v51 = 240;
    }

    else
    {
      v48 = 384;
      v49 = 400;
      v50 = 376;
      v51 = 392;
    }
  }

  else
  {
    swift_beginAccess();
    v48 = 80;
    v49 = 96;
    v50 = 72;
    v51 = 88;
  }

  v52 = *(v5 + v51);
  v53 = *(v5 + v49);
  v54 = *(v5 + v48);
  *(v5 + v51) = *(v5 + v50);
  *(v5 + v49) = v54;
  *(v5 + v50) = v52;
  *(v5 + v48) = v53;
  return 1;
}

uint64_t sub_181FFB210(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(a2 + 168) <= *(a2 + 152))
  {
    v9 = *(a2 + 152);
  }

  else
  {
    v9 = *(a2 + 168);
  }

  if (!a1)
  {
    swift_beginAccess();
    v20 = *(v4 + 136);
    v73 = *(v4 + 120);
    v74 = v20;
    v75 = *(v4 + 152);
    v76 = *(v4 + 168);
    v21 = *(v4 + 72);
    v69 = *(v4 + 56);
    v70 = v21;
    v22 = *(v4 + 104);
    v71 = *(v4 + 88);
    v72 = v22;
    v23 = *(v4 + 40);
    v67 = *(v4 + 24);
    v68 = v23;

    sub_18201C7A8(&v67, v66);
    if (qword_1EA837020 != -1)
    {
      goto LABEL_70;
    }

    goto LABEL_23;
  }

  if (a1 != 1)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v10 = *(v4 + 288);
  v73 = *(v4 + 272);
  v74 = v10;
  v75 = *(v4 + 304);
  v76 = *(v4 + 320);
  v11 = *(v4 + 224);
  v69 = *(v4 + 208);
  v70 = v11;
  v12 = *(v4 + 256);
  v71 = *(v4 + 240);
  v72 = v12;
  v13 = *(v4 + 192);
  v67 = *(v4 + 176);
  v68 = v13;

  sub_18201C7A8(&v67, v66);
  if (qword_1EA837020 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v14 = qword_1EA843200;
    sub_182010E08(&v67);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v9 >> SBYTE8(v75);
      if (*(&v75 + 1) >= 0x40uLL)
      {
        v15 = 0;
      }

      v16 = v9 << -BYTE8(v75);
      if (*(&v75 + 1) <= 0xFFFFFFFFFFFFFFC0)
      {
        v16 = 0;
      }

      if (v75 < 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if ((*(&v75 + 1) - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v17 = 0;
      }

      v18 = __CFADD__(v9, v17);
      v19 = v9 + v17;
      if (v18)
      {
        __break(1u);
        return 0;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_70:
    swift_once();
LABEL_23:
    v14 = qword_1EA843200;
    sub_182010E08(&v67);
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = v9 >> SBYTE8(v75);
      if (*(&v75 + 1) >= 0x40uLL)
      {
        v24 = 0;
      }

      v25 = v9 << -BYTE8(v75);
      if (*(&v75 + 1) <= 0xFFFFFFFFFFFFFFC0)
      {
        v25 = 0;
      }

      if (v75 < 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if ((*(&v75 + 1) - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v26 = 0;
      }

      v18 = __CFADD__(v9, v26);
      v19 = v9 + v26;
      if (!v18)
      {
        goto LABEL_48;
      }

      __break(1u);
LABEL_36:
      swift_beginAccess();
      v27 = *(v4 + 440);
      v73 = *(v4 + 424);
      v74 = v27;
      v75 = *(v4 + 456);
      v76 = *(v4 + 472);
      v28 = *(v4 + 376);
      v69 = *(v4 + 360);
      v70 = v28;
      v29 = *(v4 + 408);
      v71 = *(v4 + 392);
      v72 = v29;
      v30 = *(v4 + 344);
      v67 = *(v4 + 328);
      v68 = v30;

      sub_18201C7A8(&v67, v66);
      if (qword_1EA837020 == -1)
      {
        goto LABEL_37;
      }
    }

    swift_once();
LABEL_37:
    v14 = qword_1EA843200;
    sub_182010E08(&v67);
    if (v14 < 0)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v67 = 0x20646E756F46;
      *(&v67 + 1) = 0xE600000000000000;
      v65 = *(v9 + 16);
      v38 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v38);

      MEMORY[0x1865D9CA0](0x61702074736F6C20, 0xED00007374656B63);
      v39 = *(&v67 + 1);
      v61 = v67;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v40 = sub_182AD2698();
      __swift_project_value_buffer(v40, qword_1EA843418);
      v41 = swift_allocObject();
      *(v41 + 16) = "findLostPacketInner(pnSpace:path:timeNow:connection:)";
      *(v41 + 24) = 53;
      *(v41 + 32) = 2;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_181F8C724;
      *(v42 + 24) = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = 1564427099;
      *(v43 + 24) = 0xE400000000000000;
      v44 = swift_allocObject();
      *(v44 + 16) = v61;
      *(v44 + 24) = v39;

      oslog = sub_182AD2678();
      v59 = sub_182AD38A8();
      v54 = swift_allocObject();
      *(v54 + 16) = 32;
      v55 = swift_allocObject();
      *(v55 + 16) = 8;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_181F8C71C;
      *(v45 + 24) = v42;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_181F8C718;
      *(v46 + 24) = v45;
      v56 = swift_allocObject();
      *(v56 + 16) = 32;
      v57 = swift_allocObject();
      *(v57 + 16) = 8;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_181F8C720;
      *(v47 + 24) = v43;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_181F8C718;
      *(v48 + 24) = v47;
      v58 = swift_allocObject();
      *(v58 + 16) = 32;
      v60 = swift_allocObject();
      *(v60 + 16) = 8;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_181F8C720;
      *(v49 + 24) = v44;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_181F8C718;
      *(v50 + 24) = v49;
      v62 = v50;
      if (os_log_type_enabled(oslog, v59))
      {
        v51 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = 0;
        v52 = v63;
        *v51 = 770;
        v65 = v51 + 2;
        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v54;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v55;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C714;
        *(&v67 + 1) = v46;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v56;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v57;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C714;
        *(&v67 + 1) = v48;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v58;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v60;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C714;
        *(&v67 + 1) = v62;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        _os_log_impl(&dword_181A37000, oslog, v59, "%s %s %s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v52, -1, -1);
        MEMORY[0x1865DF520](v51, -1, -1);
      }

      else
      {
      }

LABEL_64:
      sub_18201AEC0(v9, a1, a4);
      goto LABEL_65;
    }

    v31 = v9 >> SBYTE8(v75);
    if (*(&v75 + 1) >= 0x40uLL)
    {
      v31 = 0;
    }

    v32 = v9 << -BYTE8(v75);
    if (*(&v75 + 1) <= 0xFFFFFFFFFFFFFFC0)
    {
      v32 = 0;
    }

    if (v75 < 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    if ((*(&v75 + 1) - 65) <= 0xFFFFFFFFFFFFFF7ELL)
    {
      v33 = 0;
    }

    v18 = __CFADD__(v9, v33);
    v19 = v9 + v33;
    if (v18)
    {
      goto LABEL_74;
    }

LABEL_48:
    if (v19 <= 2 * v14)
    {
      v34 = 2 * v14;
    }

    else
    {
      v34 = v19;
    }

    if (*(a2 + 1016))
    {
      goto LABEL_54;
    }

    if ((v34 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_68:
    swift_once();
  }

  *(a2 + 1008) = v34;
LABEL_54:
  v66[0] = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    swift_beginAccess();
    if (a1 == 1)
    {
      v35 = (v4 + 176);
    }

    else
    {
      v35 = (v4 + 328);
    }
  }

  else
  {
    swift_beginAccess();
    v35 = (v4 + 24);
  }

  sub_181FFBDA8(v35, a3, v34, v66);
  swift_endAccess();
  v9 = v66[0];
  v36 = *(v66[0] + 2);
  v14 = v36 != 0;
  if (v36)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_64;
    }

    goto LABEL_75;
  }

LABEL_65:

  return v14;
}

uint64_t sub_181FFBDA8(void *a1, unint64_t a2, unint64_t a3, char **a4)
{
  a1[5] = 0;
  v8 = a1[18];
  swift_beginAccess();
  v9 = *(v8 + 16);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v8 + 16) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v113 = a2 - a3;
  v114 = a2;
  v111 = a2 < a3;

  v18 = a1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v16)
          {
          }

          v15 = *(v11 + 8 * v22);
          ++v19;
          if (v15)
          {
            v19 = v22;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

LABEL_9:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = (v19 << 9) | (8 * v23);
      v25 = *(*(v17 + 56) + v24);
      if (!*(v25 + 200))
      {
        v26 = *(*(v17 + 48) + v24);
        v27 = v18[3];
        if (v27 >= v26)
        {
          v28 = *(v25 + 192);
          if (v28 <= v114)
          {
            break;
          }
        }
      }
    }

    v107 = v21;
    v109 = v17;
    v110 = v20;
    v112 = v18;
    swift_beginAccess();
    v108 = a3;
    if (!*(v25 + 144))
    {
      a3 = -1;
LABEL_26:
      v33 = qword_1EA837250;

      if (v33 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        v105 = a4;
        v118 = 0;
        v119 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7FE0);
        v117 = v26;
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](544106784, 0xE400000000000000);
        LOBYTE(v117) = *(v25 + 120);
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0x7420746E6573202CLL, 0xEC00000020656D69);
        v117 = *(v25 + 192);
        v42 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v42);

        MEMORY[0x1865D9CA0](540884000, 0xE400000000000000);
        v117 = a3;
        v43 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v43);

        MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD8000);
        v117 = v27;
        a3 = &type metadata for PacketNumber;
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](540884512, 0xE400000000000000);
        v44 = v112[16];
        v30 = __OFADD__(v26, v44);
        v45 = &v26[v44];
        if (v30)
        {
          goto LABEL_59;
        }

        v117 = v45;
        sub_182AD3E18();
        v46 = v118;
        v47 = v119;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v48 = sub_182AD2698();
        __swift_project_value_buffer(v48, qword_1EA843418);
        v49 = swift_allocObject();
        *(v49 + 16) = "findLostPacketInner(pnSpace:path:timeNow:connection:)";
        *(v49 + 24) = 53;
        *(v49 + 32) = 2;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_181F8C724;
        *(v50 + 24) = v49;
        v101 = swift_allocObject();
        *(v101 + 16) = 1564427099;
        *(v101 + 24) = 0xE400000000000000;
        v82 = swift_allocObject();
        *(v82 + 16) = v46;
        *(v82 + 24) = v47;

        a3 = sub_182AD2678();
        v51 = sub_182AD38A8();
        v86 = swift_allocObject();
        *(v86 + 16) = 32;
        v88 = swift_allocObject();
        *(v88 + 16) = 8;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_181F8C71C;
        *(v52 + 24) = v50;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_181F8C718;
        *(v53 + 24) = v52;
        v90 = v53;
        v92 = swift_allocObject();
        *(v92 + 16) = 32;
        v94 = swift_allocObject();
        *(v94 + 16) = 8;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_181F8C720;
        *(v54 + 24) = v101;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_181F8C718;
        *(v55 + 24) = v54;
        v96 = v55;
        v98 = swift_allocObject();
        *(v98 + 16) = 32;
        v102 = swift_allocObject();
        *(v102 + 16) = 8;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_181F8C720;
        *(v56 + 24) = v82;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_181F8C718;
        *(v57 + 24) = v56;
        v83 = v51;
        v58 = v51;
        v59 = a3;
        if (os_log_type_enabled(a3, v58))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v115 = v61;
          v116 = 0;
          *v60 = 770;
          v62 = v61;
          v117 = v60 + 2;
          v118 = sub_181F8C728;
          v119 = v86;
          a3 = v107;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v88;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C714;
          v119 = v90;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v92;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v94;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C714;
          v119 = v96;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v98;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v102;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C714;
          v119 = v57;
          sub_181F73AE0(&v118, &v117, &v116, &v115);
          v107 = 0;

          _os_log_impl(&dword_181A37000, v59, v83, "%s %s %s", v60, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v62, -1, -1);
          MEMORY[0x1865DF520](v60, -1, -1);
        }

        else
        {
        }

        a4 = v105;
      }

      *(v25 + 200) = v114;
      if (*(v25 + 152) == 1)
      {
        if (__OFSUB__(*v112, 1))
        {
          goto LABEL_56;
        }

        --*v112;
      }

      v104 = *(v25 + 120);
      v34 = *(v25 + 128);
      v35 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v35;
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = a4;
      }

      else
      {
        v35 = sub_181F5A588(0, *(v35 + 2) + 1, 1, v35);
        v37 = a4;
        *a4 = v35;
      }

      v39 = *(v35 + 2);
      v38 = *(v35 + 3);
      if (v39 >= v38 >> 1)
      {
        *v37 = sub_181F5A588((v38 > 1), v39 + 1, 1, v35);
      }

      v40 = *v37;
      *(v40 + 2) = v39 + 1;
      v41 = &v40[16 * v39];
      a4 = v37;
      v41[32] = v104;
      *(v41 + 5) = v34;
      goto LABEL_38;
    }

    if (v111)
    {
      goto LABEL_55;
    }

    a3 = v113;
    if (v113 >= v28)
    {
      goto LABEL_26;
    }

    if (v27 != -1)
    {
      v29 = v112[16];
      v30 = __OFADD__(v26, v29);
      v31 = &v26[v29];
      if (v30)
      {
        goto LABEL_58;
      }

      a3 = v113;
      if (v27 >= v31)
      {
        goto LABEL_26;
      }
    }

    a3 = v108;
    if (v110)
    {
    }

    if (__CFADD__(v28, v108))
    {
      goto LABEL_57;
    }

    v110 = (v28 + v108);
    v112[5] = v28 + v108;
    v32 = qword_1EA837250;

    if (v32 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {

      goto LABEL_39;
    }

    v106 = a4;
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_182AD3BA8();

    v118 = 0xD000000000000012;
    v119 = 0x8000000182BD8020;
    v117 = v110;
    v63 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v63);

    v64 = v118;
    v103 = v119;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v65 = sub_182AD2698();
    __swift_project_value_buffer(v65, qword_1EA843418);
    v66 = swift_allocObject();
    *(v66 + 16) = "findLostPacketInner(pnSpace:path:timeNow:connection:)";
    *(v66 + 24) = 53;
    *(v66 + 32) = 2;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_181F8C724;
    *(v67 + 24) = v66;
    v68 = swift_allocObject();
    *(v68 + 16) = 1564427099;
    *(v68 + 24) = 0xE400000000000000;
    v99 = swift_allocObject();
    *(v99 + 16) = v64;
    *(v99 + 24) = v103;

    v69 = sub_182AD2678();
    v70 = sub_182AD38A8();
    v84 = swift_allocObject();
    *(v84 + 16) = 32;
    v85 = swift_allocObject();
    *(v85 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C71C;
    *(v71 + 24) = v67;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C718;
    *(v72 + 24) = v71;
    v87 = v72;
    v89 = swift_allocObject();
    *(v89 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C720;
    *(v73 + 24) = v68;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C718;
    *(v74 + 24) = v73;
    v93 = v74;
    v95 = swift_allocObject();
    *(v95 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_181F8C720;
    *(v75 + 24) = v99;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_181F8C718;
    *(v76 + 24) = v75;
    v100 = v76;
    v77 = v69;
    if (os_log_type_enabled(v69, v70))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v115 = v79;
      v116 = 0;
      *v78 = 770;
      v80 = v79;
      v117 = v78 + 2;
      v118 = sub_181F8C728;
      v119 = v84;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v85;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C714;
      v119 = v87;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v89;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v91;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C714;
      v119 = v93;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v95;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v97;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C714;
      v119 = v100;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      _os_log_impl(&dword_181A37000, v77, v70, "%s %s %s", v78, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v80, -1, -1);
      MEMORY[0x1865DF520](v78, -1, -1);

      a4 = v106;
      a3 = v108;
      v17 = v109;
      v18 = v112;
      v20 = v110;
      v21 = 0;
    }

    else
    {

      a4 = v106;
LABEL_38:
      a3 = v108;
LABEL_39:
      v18 = v112;
      v17 = v109;
      v20 = v110;
      v21 = v107;
    }
  }
}

uint64_t sub_181FFD0CC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (!a4)
  {
    swift_beginAccess();
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    v9 = byte_1EA843430;
    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v711 = 0;
      *(&v711 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7DC0);
      *&v697 = a2;
      type metadata accessor for QUICPath();
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7DF0);
      *&v697 = v4[14];
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0x6E65732073617720, 0xED00002074612074);
      *&v697 = v4[15];
      v260 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v260);

      v261 = v711;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v262 = sub_182AD2698();
      __swift_project_value_buffer(v262, qword_1EA843418);
      v263 = swift_allocObject();
      *(v263 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v263 + 24) = 54;
      *(v263 + 32) = 2;
      v264 = swift_allocObject();
      *(v264 + 16) = sub_181F8C258;
      *(v264 + 24) = v263;
      v265 = swift_allocObject();
      *(v265 + 16) = 1564427099;
      *(v265 + 24) = 0xE400000000000000;
      v411 = swift_allocObject();
      *(v411 + 16) = v261;

      v425 = sub_182AD2678();
      v506 = sub_182AD38A8();
      v437 = swift_allocObject();
      *(v437 + 16) = 32;
      v449 = swift_allocObject();
      *(v449 + 16) = 8;
      v266 = swift_allocObject();
      *(v266 + 16) = sub_181F8C264;
      *(v266 + 24) = v264;
      v267 = swift_allocObject();
      *(v267 + 16) = sub_181F8C718;
      *(v267 + 24) = v266;
      v461 = swift_allocObject();
      *(v461 + 16) = 32;
      v5 = 32;
      v473 = swift_allocObject();
      *(v473 + 16) = 8;
      v268 = swift_allocObject();
      *(v268 + 16) = sub_181F8C26C;
      *(v268 + 24) = v265;
      v269 = swift_allocObject();
      *(v269 + 16) = sub_181F8C718;
      *(v269 + 24) = v268;
      v485 = v269;
      v497 = swift_allocObject();
      *(v497 + 16) = 32;
      v514 = swift_allocObject();
      *(v514 + 16) = 8;
      v270 = swift_allocObject();
      *(v270 + 16) = sub_181F8C26C;
      *(v270 + 24) = v411;
      v271 = swift_allocObject();
      *(v271 + 16) = sub_181F8C718;
      *(v271 + 24) = v270;
      if (os_log_type_enabled(v425, v506))
      {
        v5 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        *&v683 = 0;
        *v5 = 770;
        v412 = v272;
        *&v669 = v272;
        *&v697 = v5 + 2;
        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v437;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v449;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v267;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v461;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v473;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v485;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v497;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v514;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v271;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        _os_log_impl(&dword_181A37000, v425, v506, "%s %s %s", v5, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v412, -1, -1);
        MEMORY[0x1865DF520](v5, -1, -1);
      }

      else
      {
      }

      v4 = v515;
    }

    v27 = *(a2 + 912);
    v28 = *(a2 + 880);
    v693 = *(a2 + 896);
    v694 = v27;
    v29 = *(a2 + 912);
    v695 = *(a2 + 928);
    v30 = *(a2 + 848);
    v31 = *(a2 + 816);
    v689 = *(a2 + 832);
    v690 = v30;
    v32 = *(a2 + 848);
    v33 = *(a2 + 880);
    v691 = *(a2 + 864);
    v692 = v33;
    v34 = *(a2 + 784);
    v35 = *(a2 + 752);
    v685 = *(a2 + 768);
    v686 = v34;
    v36 = *(a2 + 784);
    v37 = *(a2 + 816);
    v687 = *(a2 + 800);
    v688 = v37;
    v38 = *(a2 + 752);
    v683 = *(a2 + 736);
    v684 = v38;
    v707 = v693;
    v708 = v29;
    v709 = *(a2 + 928);
    v703 = v689;
    v704 = v32;
    v705 = v691;
    v706 = v28;
    v699 = v685;
    v700 = v36;
    v701 = v687;
    v702 = v31;
    v696 = *(a2 + 944);
    v710 = *(a2 + 944);
    v697 = v683;
    v698 = v35;
    if (sub_182015D6C(&v697) == 1)
    {
      goto LABEL_212;
    }

    isa = v4[15].isa;
    v39 = *(a2 + 1072);
    v679 = v707;
    v680 = v708;
    v681 = v709;
    v682 = v710;
    v675 = v703;
    v676 = v704;
    v677 = v705;
    v678 = v706;
    v671 = v699;
    v672 = v700;
    v673 = v701;
    v674 = v702;
    v669 = v697;
    v670 = v698;
    if (sub_182015D80(&v669) == 1)
    {
      v40 = nullsub_41(&v669);
      v41 = *(v40 + 64);
      v633 = *(v40 + 96);
      v634 = *(v40 + 112);
      v635 = *(v40 + 128);
      v636 = *(v40 + 144);
      v629 = *(v40 + 32);
      v630 = *(v40 + 48);
      v631 = *(v40 + 64);
      v632 = *(v40 + 80);
      v627 = *v40;
      v628 = *(v40 + 16);
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      v721 = v693;
      v722 = v694;
      v723 = v695;
      v724 = v696;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v720 = v692;
      v713 = v685;
      v714 = v686;
      v715 = v687;
      v716 = v688;
      v711 = v683;
      v712 = v684;
      sub_18201A394(&v683, &v655);
      sub_182015D94(&v711, &v655);
      v4 = &v627;
      sub_182014B48(a3);
      v26 = v41 >= isa;
      v5 = v41 < isa;
      if (!v26)
      {
        v4 = &v627;
        sub_182177F1C(v39);
      }

      sub_182015DF0(&v683);
      v647 = v633;
      v648 = v634;
      v649 = v635;
      v650 = v636;
      v643 = v629;
      v644 = v630;
      v645 = v631;
      v646 = v632;
      v641 = v627;
      v642 = v628;
      sub_182015D88(&v641);
    }

    else
    {
      v96 = nullsub_41(&v669);
      v97 = *(v96 + 64);
      v636 = *(v96 + 144);
      v637 = *(v96 + 160);
      v638 = *(v96 + 176);
      v639 = *(v96 + 192);
      v632 = *(v96 + 80);
      v633 = *(v96 + 96);
      v634 = *(v96 + 112);
      v635 = *(v96 + 128);
      v628 = *(v96 + 16);
      v629 = *(v96 + 32);
      v630 = *(v96 + 48);
      v631 = *(v96 + 64);
      v627 = *v96;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_154;
      }

      v721 = v693;
      v722 = v694;
      v723 = v695;
      v724 = v696;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v720 = v692;
      v713 = v685;
      v714 = v686;
      v715 = v687;
      v716 = v688;
      v711 = v683;
      v712 = v684;
      sub_18201A394(&v683, &v655);
      sub_182015D94(&v711, &v655);
      v4 = &v627;
      sub_1820152EC(a3);
      v26 = v97 >= isa;
      v5 = v97 < isa;
      if (!v26)
      {
        v4 = &v627;
        sub_18228418C(v39);
      }

      sub_182015DF0(&v683);
      v651 = v637;
      v652 = v638;
      v653 = v639;
      v647 = v633;
      v648 = v634;
      v650 = v636;
      v649 = v635;
      v643 = v629;
      v644 = v630;
      v646 = v632;
      v645 = v631;
      v642 = v628;
      v641 = v627;
      sub_18201A508(&v641);
    }

    v665 = v651;
    v666 = v652;
    v667 = v653;
    v668 = v654;
    v661 = v647;
    v662 = v648;
    v663 = v649;
    v664 = v650;
    v657 = v643;
    v658 = v644;
    v659 = v645;
    v660 = v646;
    v655 = v641;
    v656 = v642;
    v637 = v651;
    v638 = v652;
    v639 = v653;
    v640 = v654;
    v633 = v647;
    v634 = v648;
    v635 = v649;
    v636 = v650;
    v629 = v643;
    v630 = v644;
    v631 = v645;
    v632 = v646;
    v627 = v641;
    v628 = v642;
    nullsub_41(&v627);
    v98 = *(a2 + 912);
    v651 = *(a2 + 896);
    v652 = v98;
    v653 = *(a2 + 928);
    v654 = *(a2 + 944);
    v99 = *(a2 + 848);
    v647 = *(a2 + 832);
    v648 = v99;
    v100 = *(a2 + 880);
    v649 = *(a2 + 864);
    v650 = v100;
    v101 = *(a2 + 784);
    v643 = *(a2 + 768);
    v644 = v101;
    v102 = *(a2 + 816);
    v645 = *(a2 + 800);
    v646 = v102;
    v103 = *(a2 + 752);
    v641 = *(a2 + 736);
    v642 = v103;
    v104 = v638;
    *(a2 + 896) = v637;
    *(a2 + 912) = v104;
    *(a2 + 928) = v639;
    *(a2 + 944) = v640;
    v105 = v634;
    *(a2 + 832) = v633;
    *(a2 + 848) = v105;
    v106 = v636;
    *(a2 + 864) = v635;
    *(a2 + 880) = v106;
    v107 = v630;
    *(a2 + 768) = v629;
    *(a2 + 784) = v107;
    v108 = v632;
    *(a2 + 800) = v631;
    *(a2 + 816) = v108;
    v109 = v628;
    *(a2 + 736) = v627;
    *(a2 + 752) = v109;
    sub_182015DF0(&v641);
    LODWORD(v514) = v5;
    if ((v9 & v5) == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v711 = 0;
      *(&v711 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x2074656B636170, 0xE700000000000000);
      *&v607 = a1;
      v301 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v301);

      MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD7D70);
      *&v607 = *(a2 + 16);
      v302 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v302);

      MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D90);
      v303 = v711;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v304 = sub_182AD2698();
      __swift_project_value_buffer(v304, qword_1EA843418);
      v305 = swift_allocObject();
      *(v305 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v305 + 24) = 54;
      *(v305 + 32) = 2;
      v306 = swift_allocObject();
      *(v306 + 16) = sub_181F8C724;
      *(v306 + 24) = v305;
      v307 = swift_allocObject();
      *(v307 + 16) = 1564427099;
      *(v307 + 24) = 0xE400000000000000;
      v417 = swift_allocObject();
      *(v417 + 16) = v303;

      v428 = sub_182AD2678();
      v308 = sub_182AD38A8();
      v440 = swift_allocObject();
      *(v440 + 16) = 32;
      v452 = swift_allocObject();
      *(v452 + 16) = 8;
      v309 = swift_allocObject();
      *(v309 + 16) = sub_181F8C71C;
      *(v309 + 24) = v306;
      v310 = swift_allocObject();
      *(v310 + 16) = sub_181F8C718;
      *(v310 + 24) = v309;
      v464 = swift_allocObject();
      *(v464 + 16) = 32;
      v476 = swift_allocObject();
      *(v476 + 16) = 8;
      v311 = swift_allocObject();
      *(v311 + 16) = sub_181F8C720;
      *(v311 + 24) = v307;
      v312 = swift_allocObject();
      *(v312 + 16) = sub_181F8C27C;
      *(v312 + 24) = v311;
      v488 = v312;
      v500 = swift_allocObject();
      *(v500 + 16) = 32;
      v509 = swift_allocObject();
      *(v509 + 16) = 8;
      v313 = swift_allocObject();
      *(v313 + 16) = sub_181F8C720;
      *(v313 + 24) = v417;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_181F8C718;
      *(a1 + 24) = v313;
      v418 = v308;
      v4 = v428;
      if (os_log_type_enabled(v428, v308))
      {
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v593 = 0;
        *v314 = 770;
        *&v579 = v315;
        *&v607 = v314 + 2;
        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v440;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v452;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v310;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v464;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v476;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C284;
        *(&v711 + 1) = v488;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v500;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v509;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = a1;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        _os_log_impl(&dword_181A37000, v428, v418, "%s %s %s", v314, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v315, -1, -1);
        MEMORY[0x1865DF520](v314, -1, -1);
      }

      else
      {
      }

      v5 = v514;
    }

    swift_beginAccess();
    *&v626[9] = *(a2 + 241);
    v110 = *(a2 + 200);
    v111 = *(a2 + 232);
    v625 = *(a2 + 216);
    *v626 = v111;
    v112 = *(a2 + 168);
    v621 = *(a2 + 152);
    v622 = v112;
    v113 = *(a2 + 184);
    v624 = v110;
    v623 = v113;
    if (v626[24] == 1)
    {
      v75 = *(&v622 + 1);
      if (*(&v622 + 1) >> 62)
      {
        goto LABEL_120;
      }

      v4 = v515[16].isa;
      v5 = v622;
      a1 = *v626;
      sub_18201A404(&v621, &v711);
      if (qword_1EA837020 != -1)
      {
        goto LABEL_124;
      }

      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (a4 != 1)
  {
    swift_beginAccess();
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    v9 = byte_1EA843430;
    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v711 = 0;
      *(&v711 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7DC0);
      *&v697 = a2;
      type metadata accessor for QUICPath();
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7DF0);
      *&v697 = v4[52];
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0x6E65732073617720, 0xED00002074612074);
      *&v697 = v4[53];
      v273 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v273);

      v274 = v711;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v275 = sub_182AD2698();
      __swift_project_value_buffer(v275, qword_1EA843418);
      v276 = swift_allocObject();
      *(v276 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v276 + 24) = 54;
      *(v276 + 32) = 2;
      v277 = swift_allocObject();
      *(v277 + 16) = sub_181F8C724;
      *(v277 + 24) = v276;
      v278 = swift_allocObject();
      *(v278 + 16) = 1564427099;
      *(v278 + 24) = 0xE400000000000000;
      v413 = swift_allocObject();
      *(v413 + 16) = v274;

      v426 = sub_182AD2678();
      v507 = sub_182AD38A8();
      v438 = swift_allocObject();
      *(v438 + 16) = 32;
      v450 = swift_allocObject();
      *(v450 + 16) = 8;
      v279 = swift_allocObject();
      *(v279 + 16) = sub_181F8C71C;
      *(v279 + 24) = v277;
      v280 = swift_allocObject();
      *(v280 + 16) = sub_181F8C718;
      *(v280 + 24) = v279;
      v462 = swift_allocObject();
      *(v462 + 16) = 32;
      v5 = 32;
      v474 = swift_allocObject();
      *(v474 + 16) = 8;
      v281 = swift_allocObject();
      *(v281 + 16) = sub_181F8C720;
      *(v281 + 24) = v278;
      v282 = swift_allocObject();
      *(v282 + 16) = sub_181F8C718;
      *(v282 + 24) = v281;
      v486 = v282;
      v498 = swift_allocObject();
      *(v498 + 16) = 32;
      v514 = swift_allocObject();
      *(v514 + 16) = 8;
      v283 = swift_allocObject();
      *(v283 + 16) = sub_181F8C720;
      *(v283 + 24) = v413;
      v284 = swift_allocObject();
      *(v284 + 16) = sub_181F8C718;
      *(v284 + 24) = v283;
      if (os_log_type_enabled(v426, v507))
      {
        v5 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *&v683 = 0;
        *v5 = 770;
        v414 = v285;
        *&v669 = v285;
        *&v697 = v5 + 2;
        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v438;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v450;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v280;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v462;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v474;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v486;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v498;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v514;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v284;
        sub_181F73AE0(&v711, &v697, &v683, &v669);

        _os_log_impl(&dword_181A37000, v426, v507, "%s %s %s", v5, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v414, -1, -1);
        MEMORY[0x1865DF520](v5, -1, -1);
      }

      else
      {
      }

      v4 = v515;
    }

    v42 = *(a2 + 912);
    v43 = *(a2 + 880);
    v693 = *(a2 + 896);
    v694 = v42;
    v44 = *(a2 + 912);
    v695 = *(a2 + 928);
    v45 = *(a2 + 848);
    v46 = *(a2 + 816);
    v689 = *(a2 + 832);
    v690 = v45;
    v47 = *(a2 + 848);
    v48 = *(a2 + 880);
    v691 = *(a2 + 864);
    v692 = v48;
    v49 = *(a2 + 784);
    v50 = *(a2 + 752);
    v685 = *(a2 + 768);
    v686 = v49;
    v51 = *(a2 + 784);
    v52 = *(a2 + 816);
    v687 = *(a2 + 800);
    v688 = v52;
    v53 = *(a2 + 752);
    v683 = *(a2 + 736);
    v684 = v53;
    v707 = v693;
    v708 = v44;
    v709 = *(a2 + 928);
    v703 = v689;
    v704 = v47;
    v705 = v691;
    v706 = v43;
    v699 = v685;
    v700 = v51;
    v701 = v687;
    v702 = v46;
    v696 = *(a2 + 944);
    v710 = *(a2 + 944);
    v697 = v683;
    v698 = v50;
    if (sub_182015D6C(&v697) == 1)
    {
      goto LABEL_213;
    }

    isa = v4[53].isa;
    v54 = *(a2 + 1072);
    v679 = v707;
    v680 = v708;
    v681 = v709;
    v682 = v710;
    v675 = v703;
    v676 = v704;
    v677 = v705;
    v678 = v706;
    v671 = v699;
    v672 = v700;
    v673 = v701;
    v674 = v702;
    v669 = v697;
    v670 = v698;
    if (sub_182015D80(&v669) == 1)
    {
      v55 = nullsub_41(&v669);
      v56 = *(v55 + 64);
      v633 = *(v55 + 96);
      v634 = *(v55 + 112);
      v635 = *(v55 + 128);
      v636 = *(v55 + 144);
      v629 = *(v55 + 32);
      v630 = *(v55 + 48);
      v631 = *(v55 + 64);
      v632 = *(v55 + 80);
      v627 = *v55;
      v628 = *(v55 + 16);
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_155;
      }

      v721 = v693;
      v722 = v694;
      v723 = v695;
      v724 = v696;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v720 = v692;
      v713 = v685;
      v714 = v686;
      v715 = v687;
      v716 = v688;
      v711 = v683;
      v712 = v684;
      sub_18201A394(&v683, &v655);
      sub_182015D94(&v711, &v655);
      v4 = &v627;
      sub_182014B48(a3);
      v26 = v56 >= isa;
      v5 = v56 < isa;
      if (!v26)
      {
        v4 = &v627;
        sub_182177F1C(v54);
      }

      sub_182015DF0(&v683);
      v647 = v633;
      v648 = v634;
      v649 = v635;
      v650 = v636;
      v643 = v629;
      v644 = v630;
      v645 = v631;
      v646 = v632;
      v641 = v627;
      v642 = v628;
      sub_182015D88(&v641);
    }

    else
    {
      v134 = nullsub_41(&v669);
      v135 = *(v134 + 64);
      v636 = *(v134 + 144);
      v637 = *(v134 + 160);
      v638 = *(v134 + 176);
      v639 = *(v134 + 192);
      v632 = *(v134 + 80);
      v633 = *(v134 + 96);
      v634 = *(v134 + 112);
      v635 = *(v134 + 128);
      v628 = *(v134 + 16);
      v629 = *(v134 + 32);
      v630 = *(v134 + 48);
      v631 = *(v134 + 64);
      v627 = *v134;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_156;
      }

      v721 = v693;
      v722 = v694;
      v723 = v695;
      v724 = v696;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v720 = v692;
      v713 = v685;
      v714 = v686;
      v715 = v687;
      v716 = v688;
      v711 = v683;
      v712 = v684;
      sub_18201A394(&v683, &v655);
      sub_182015D94(&v711, &v655);
      v4 = &v627;
      sub_1820152EC(a3);
      v26 = v135 >= isa;
      v5 = v135 < isa;
      if (!v26)
      {
        v4 = &v627;
        sub_18228418C(v54);
      }

      sub_182015DF0(&v683);
      v651 = v637;
      v652 = v638;
      v653 = v639;
      v647 = v633;
      v648 = v634;
      v650 = v636;
      v649 = v635;
      v643 = v629;
      v644 = v630;
      v646 = v632;
      v645 = v631;
      v642 = v628;
      v641 = v627;
      sub_18201A508(&v641);
    }

    v665 = v651;
    v666 = v652;
    v667 = v653;
    v668 = v654;
    v661 = v647;
    v662 = v648;
    v663 = v649;
    v664 = v650;
    v657 = v643;
    v658 = v644;
    v659 = v645;
    v660 = v646;
    v655 = v641;
    v656 = v642;
    v637 = v651;
    v638 = v652;
    v639 = v653;
    v640 = v654;
    v633 = v647;
    v634 = v648;
    v635 = v649;
    v636 = v650;
    v629 = v643;
    v630 = v644;
    v631 = v645;
    v632 = v646;
    v627 = v641;
    v628 = v642;
    nullsub_41(&v627);
    v136 = *(a2 + 912);
    v651 = *(a2 + 896);
    v652 = v136;
    v653 = *(a2 + 928);
    v654 = *(a2 + 944);
    v137 = *(a2 + 848);
    v647 = *(a2 + 832);
    v648 = v137;
    v138 = *(a2 + 880);
    v649 = *(a2 + 864);
    v650 = v138;
    v139 = *(a2 + 784);
    v643 = *(a2 + 768);
    v644 = v139;
    v140 = *(a2 + 816);
    v645 = *(a2 + 800);
    v646 = v140;
    v141 = *(a2 + 752);
    v641 = *(a2 + 736);
    v642 = v141;
    v142 = v638;
    *(a2 + 896) = v637;
    *(a2 + 912) = v142;
    *(a2 + 928) = v639;
    *(a2 + 944) = v640;
    v143 = v634;
    *(a2 + 832) = v633;
    *(a2 + 848) = v143;
    v144 = v636;
    *(a2 + 864) = v635;
    *(a2 + 880) = v144;
    v145 = v630;
    *(a2 + 768) = v629;
    *(a2 + 784) = v145;
    v146 = v632;
    *(a2 + 800) = v631;
    *(a2 + 816) = v146;
    v147 = v628;
    *(a2 + 736) = v627;
    *(a2 + 752) = v147;
    sub_182015DF0(&v641);
    LODWORD(v514) = v5;
    if ((v9 & v5) == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v711 = 0;
      *(&v711 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x2074656B636170, 0xE700000000000000);
      *&v607 = a1;
      v316 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v316);

      MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD7D70);
      *&v607 = *(a2 + 16);
      v317 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v317);

      MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D90);
      v318 = v711;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v319 = sub_182AD2698();
      __swift_project_value_buffer(v319, qword_1EA843418);
      v320 = swift_allocObject();
      *(v320 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v320 + 24) = 54;
      *(v320 + 32) = 2;
      v321 = swift_allocObject();
      *(v321 + 16) = sub_181F8C724;
      *(v321 + 24) = v320;
      v322 = swift_allocObject();
      *(v322 + 16) = 1564427099;
      *(v322 + 24) = 0xE400000000000000;
      v419 = swift_allocObject();
      *(v419 + 16) = v318;

      v429 = sub_182AD2678();
      v323 = sub_182AD38A8();
      v441 = swift_allocObject();
      *(v441 + 16) = 32;
      v453 = swift_allocObject();
      *(v453 + 16) = 8;
      v324 = swift_allocObject();
      *(v324 + 16) = sub_181F8C71C;
      *(v324 + 24) = v321;
      v325 = swift_allocObject();
      *(v325 + 16) = sub_181F8C718;
      *(v325 + 24) = v324;
      v465 = swift_allocObject();
      *(v465 + 16) = 32;
      v477 = swift_allocObject();
      *(v477 + 16) = 8;
      v326 = swift_allocObject();
      *(v326 + 16) = sub_181F8C720;
      *(v326 + 24) = v322;
      v327 = swift_allocObject();
      *(v327 + 16) = sub_181F8C718;
      *(v327 + 24) = v326;
      v489 = v327;
      v501 = swift_allocObject();
      *(v501 + 16) = 32;
      v510 = swift_allocObject();
      *(v510 + 16) = 8;
      v328 = swift_allocObject();
      *(v328 + 16) = sub_181F8C720;
      *(v328 + 24) = v419;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_181F8C718;
      *(a1 + 24) = v328;
      v420 = v323;
      v4 = v429;
      if (os_log_type_enabled(v429, v323))
      {
        v329 = swift_slowAlloc();
        v330 = swift_slowAlloc();
        *&v593 = 0;
        *v329 = 770;
        *&v579 = v330;
        *&v607 = v329 + 2;
        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v441;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v453;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v325;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v465;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v477;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v489;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v501;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v510;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = a1;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        _os_log_impl(&dword_181A37000, v429, v420, "%s %s %s", v329, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v330, -1, -1);
        MEMORY[0x1865DF520](v329, -1, -1);
      }

      else
      {
      }

      v5 = v514;
    }

    swift_beginAccess();
    *&v626[9] = *(a2 + 241);
    v148 = *(a2 + 200);
    v149 = *(a2 + 232);
    v625 = *(a2 + 216);
    *v626 = v149;
    v150 = *(a2 + 168);
    v621 = *(a2 + 152);
    v622 = v150;
    v151 = *(a2 + 184);
    v624 = v148;
    v623 = v151;
    if (v626[24] == 1)
    {
      v75 = *(&v622 + 1);
      if (*(&v622 + 1) >> 62)
      {
        goto LABEL_121;
      }

      v4 = v515[54].isa;
      v5 = v622;
      a1 = *v626;
      sub_18201A404(&v621, &v711);
      if (qword_1EA837020 != -1)
      {
        goto LABEL_126;
      }

      goto LABEL_88;
    }

    goto LABEL_118;
  }

  swift_beginAccess();
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v9 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_140;
  }

  while (1)
  {
    v10 = *(a2 + 912);
    v11 = *(a2 + 880);
    v693 = *(a2 + 896);
    v694 = v10;
    v12 = *(a2 + 912);
    v695 = *(a2 + 928);
    v13 = *(a2 + 848);
    v14 = *(a2 + 816);
    v689 = *(a2 + 832);
    v690 = v13;
    v15 = *(a2 + 848);
    v16 = *(a2 + 880);
    v691 = *(a2 + 864);
    v692 = v16;
    v17 = *(a2 + 784);
    v18 = *(a2 + 752);
    v685 = *(a2 + 768);
    v686 = v17;
    v19 = *(a2 + 784);
    v20 = *(a2 + 816);
    v687 = *(a2 + 800);
    v688 = v20;
    v21 = *(a2 + 752);
    v683 = *(a2 + 736);
    v684 = v21;
    v707 = v693;
    v708 = v12;
    v709 = *(a2 + 928);
    v703 = v689;
    v704 = v15;
    v705 = v691;
    v706 = v11;
    v699 = v685;
    v700 = v19;
    v701 = v687;
    v702 = v14;
    v696 = *(a2 + 944);
    v710 = *(a2 + 944);
    v697 = v683;
    v698 = v18;
    if (sub_182015D6C(&v697) == 1)
    {
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_141;
    }

    isa = v4[34].isa;
    v23 = *(a2 + 1072);
    v679 = v707;
    v680 = v708;
    v681 = v709;
    v682 = v710;
    v675 = v703;
    v676 = v704;
    v677 = v705;
    v678 = v706;
    v671 = v699;
    v672 = v700;
    v673 = v701;
    v674 = v702;
    v669 = v697;
    v670 = v698;
    if (sub_182015D80(&v669) == 1)
    {
      v24 = nullsub_41(&v669);
      v25 = *(v24 + 64);
      v633 = *(v24 + 96);
      v634 = *(v24 + 112);
      v635 = *(v24 + 128);
      v636 = *(v24 + 144);
      v629 = *(v24 + 32);
      v630 = *(v24 + 48);
      v631 = *(v24 + 64);
      v632 = *(v24 + 80);
      v627 = *v24;
      v628 = *(v24 + 16);
      if ((a3 & 0x8000000000000000) == 0)
      {
        v721 = v693;
        v722 = v694;
        v723 = v695;
        v724 = v696;
        v717 = v689;
        v718 = v690;
        v719 = v691;
        v720 = v692;
        v713 = v685;
        v714 = v686;
        v715 = v687;
        v716 = v688;
        v711 = v683;
        v712 = v684;
        sub_18201A394(&v683, &v655);
        sub_182015D94(&v711, &v655);
        v4 = &v627;
        sub_182014B48(a3);
        v26 = v25 >= isa;
        v5 = v25 < isa;
        if (!v26)
        {
          v4 = &v627;
          sub_182177F1C(v23);
        }

        sub_182015DF0(&v683);
        v647 = v633;
        v648 = v634;
        v649 = v635;
        v650 = v636;
        v643 = v629;
        v644 = v630;
        v645 = v631;
        v646 = v632;
        v641 = v627;
        v642 = v628;
        sub_182015D88(&v641);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
      v57 = nullsub_41(&v669);
      v58 = *(v57 + 64);
      v636 = *(v57 + 144);
      v637 = *(v57 + 160);
      v638 = *(v57 + 176);
      v639 = *(v57 + 192);
      v632 = *(v57 + 80);
      v633 = *(v57 + 96);
      v634 = *(v57 + 112);
      v635 = *(v57 + 128);
      v628 = *(v57 + 16);
      v629 = *(v57 + 32);
      v630 = *(v57 + 48);
      v631 = *(v57 + 64);
      v627 = *v57;
      if ((a3 & 0x8000000000000000) == 0)
      {
        v721 = v693;
        v722 = v694;
        v723 = v695;
        v724 = v696;
        v717 = v689;
        v718 = v690;
        v719 = v691;
        v720 = v692;
        v713 = v685;
        v714 = v686;
        v715 = v687;
        v716 = v688;
        v711 = v683;
        v712 = v684;
        sub_18201A394(&v683, &v655);
        sub_182015D94(&v711, &v655);
        v4 = &v627;
        sub_1820152EC(a3);
        v26 = v58 >= isa;
        v5 = v58 < isa;
        if (!v26)
        {
          v4 = &v627;
          sub_18228418C(v23);
        }

        sub_182015DF0(&v683);
        v651 = v637;
        v652 = v638;
        v653 = v639;
        v647 = v633;
        v648 = v634;
        v650 = v636;
        v649 = v635;
        v643 = v629;
        v644 = v630;
        v646 = v632;
        v645 = v631;
        v642 = v628;
        v641 = v627;
        sub_18201A508(&v641);
LABEL_37:
        v665 = v651;
        v666 = v652;
        v667 = v653;
        v668 = v654;
        v661 = v647;
        v662 = v648;
        v663 = v649;
        v664 = v650;
        v657 = v643;
        v658 = v644;
        v659 = v645;
        v660 = v646;
        v655 = v641;
        v656 = v642;
        v637 = v651;
        v638 = v652;
        v639 = v653;
        v640 = v654;
        v633 = v647;
        v634 = v648;
        v635 = v649;
        v636 = v650;
        v629 = v643;
        v630 = v644;
        v631 = v645;
        v632 = v646;
        v627 = v641;
        v628 = v642;
        nullsub_41(&v627);
        v59 = *(a2 + 912);
        v651 = *(a2 + 896);
        v652 = v59;
        v653 = *(a2 + 928);
        v654 = *(a2 + 944);
        v60 = *(a2 + 848);
        v647 = *(a2 + 832);
        v648 = v60;
        v61 = *(a2 + 880);
        v649 = *(a2 + 864);
        v650 = v61;
        v62 = *(a2 + 784);
        v643 = *(a2 + 768);
        v644 = v62;
        v63 = *(a2 + 816);
        v645 = *(a2 + 800);
        v646 = v63;
        v64 = *(a2 + 752);
        v641 = *(a2 + 736);
        v642 = v64;
        v65 = v638;
        *(a2 + 896) = v637;
        *(a2 + 912) = v65;
        *(a2 + 928) = v639;
        *(a2 + 944) = v640;
        v66 = v634;
        *(a2 + 832) = v633;
        *(a2 + 848) = v66;
        v67 = v636;
        *(a2 + 864) = v635;
        *(a2 + 880) = v67;
        v68 = v630;
        *(a2 + 768) = v629;
        *(a2 + 784) = v68;
        v69 = v632;
        *(a2 + 800) = v631;
        *(a2 + 816) = v69;
        v70 = v628;
        *(a2 + 736) = v627;
        *(a2 + 752) = v70;
        sub_182015DF0(&v641);
        LODWORD(v514) = v5;
        if ((v9 & v5) != 1 || !__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_39;
        }

        goto LABEL_157;
      }
    }

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
    *&v711 = 0;
    *(&v711 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x2074656B636170, 0xE700000000000000);
    *&v607 = a1;
    v286 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v286);

    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD7D70);
    *&v607 = *(a2 + 16);
    v287 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v287);

    MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D90);
    v288 = v711;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v289 = sub_182AD2698();
    __swift_project_value_buffer(v289, qword_1EA843418);
    v290 = swift_allocObject();
    *(v290 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
    *(v290 + 24) = 54;
    *(v290 + 32) = 2;
    v291 = swift_allocObject();
    *(v291 + 16) = sub_181F8C724;
    *(v291 + 24) = v290;
    v292 = swift_allocObject();
    *(v292 + 16) = 1564427099;
    *(v292 + 24) = 0xE400000000000000;
    v415 = swift_allocObject();
    *(v415 + 16) = v288;

    v427 = sub_182AD2678();
    v293 = sub_182AD38A8();
    v439 = swift_allocObject();
    *(v439 + 16) = 32;
    v451 = swift_allocObject();
    *(v451 + 16) = 8;
    v294 = swift_allocObject();
    *(v294 + 16) = sub_181F8C71C;
    *(v294 + 24) = v291;
    v295 = swift_allocObject();
    *(v295 + 16) = sub_181F8C718;
    *(v295 + 24) = v294;
    v463 = swift_allocObject();
    *(v463 + 16) = 32;
    v475 = swift_allocObject();
    *(v475 + 16) = 8;
    v296 = swift_allocObject();
    *(v296 + 16) = sub_181F8C720;
    *(v296 + 24) = v292;
    v297 = swift_allocObject();
    *(v297 + 16) = sub_181F8C718;
    *(v297 + 24) = v296;
    v487 = v297;
    v499 = swift_allocObject();
    *(v499 + 16) = 32;
    v508 = swift_allocObject();
    *(v508 + 16) = 8;
    v298 = swift_allocObject();
    *(v298 + 16) = sub_181F8C720;
    *(v298 + 24) = v415;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_181F8C718;
    *(a1 + 24) = v298;
    v416 = v293;
    v4 = v427;
    if (os_log_type_enabled(v427, v293))
    {
      v299 = swift_slowAlloc();
      v300 = swift_slowAlloc();
      *&v593 = 0;
      *v299 = 770;
      *&v579 = v300;
      *&v607 = v299 + 2;
      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v439;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v451;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C714;
      *(&v711 + 1) = v295;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v463;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v475;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C714;
      *(&v711 + 1) = v487;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v499;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v508;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      *&v711 = sub_181F8C714;
      *(&v711 + 1) = a1;
      sub_181F73AE0(&v711, &v607, &v593, &v579);

      _os_log_impl(&dword_181A37000, v427, v416, "%s %s %s", v299, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v300, -1, -1);
      MEMORY[0x1865DF520](v299, -1, -1);
    }

    else
    {
    }

    v5 = v514;
LABEL_39:
    swift_beginAccess();
    *&v626[9] = *(a2 + 241);
    v71 = *(a2 + 200);
    v72 = *(a2 + 232);
    v625 = *(a2 + 216);
    *v626 = v72;
    v73 = *(a2 + 168);
    v621 = *(a2 + 152);
    v622 = v73;
    v74 = *(a2 + 184);
    v624 = v71;
    v623 = v74;
    if (v626[24] != 1)
    {
      goto LABEL_118;
    }

    v75 = *(&v622 + 1);
    if (*(&v622 + 1) >> 62)
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
    }

    else
    {
      v4 = v515[35].isa;
      v5 = v622;
      a1 = *v626;
      sub_18201A404(&v621, &v711);
      if (qword_1EA837020 == -1)
      {
        goto LABEL_42;
      }
    }

    swift_once();
LABEL_42:
    a3 = qword_1EA843200;
    sub_18201A460(&v621);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v76 = 4 * v75;
      if (2 * a3 > 4 * v75)
      {
        v76 = 2 * a3;
      }

      v26 = __CFADD__(v5, v76);
      v77 = v5 + v76;
      if (!v26)
      {
        v26 = __CFADD__(v77, a1);
        v78 = v77 + a1;
        if (!v26)
        {
          if (is_mul_ok(v78, 3uLL))
          {
            v79 = 3 * v78;
            v26 = __CFADD__(v4, v79);
            v80 = (v4 + v79);
            if (!v26)
            {
              v5 = v514;
              if (isa < v80)
              {
                goto LABEL_118;
              }

              if (v9)
              {
                a3 = v515;
                if (__nwlog_is_datapath_logging_enabled())
                {
                  *&v711 = 0;
                  *(&v711 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();
                  MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D10);
                  *&v607 = *(a2 + 16);
                  v81 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v81);

                  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7D40);
                  v82 = v711;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v83 = sub_182AD2698();
                  __swift_project_value_buffer(v83, qword_1EA843418);
                  v84 = swift_allocObject();
                  *(v84 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v84 + 24) = 54;
                  *(v84 + 32) = 2;
                  v85 = swift_allocObject();
                  *(v85 + 16) = sub_181F8C724;
                  *(v85 + 24) = v84;
                  v86 = swift_allocObject();
                  *(v86 + 16) = 1564427099;
                  *(v86 + 24) = 0xE400000000000000;
                  v87 = swift_allocObject();
                  *(v87 + 16) = v82;

                  oslog = sub_182AD2678();
                  v88 = sub_182AD38A8();
                  v433 = swift_allocObject();
                  *(v433 + 16) = 32;
                  v445 = swift_allocObject();
                  *(v445 + 16) = 8;
                  v89 = swift_allocObject();
                  *(v89 + 16) = sub_181F8C71C;
                  *(v89 + 24) = v85;
                  v90 = swift_allocObject();
                  *(v90 + 16) = sub_181F8C718;
                  *(v90 + 24) = v89;
                  v457 = swift_allocObject();
                  *(v457 + 16) = 32;
                  v469 = swift_allocObject();
                  *(v469 + 16) = 8;
                  v91 = swift_allocObject();
                  *(v91 + 16) = sub_181F8C720;
                  *(v91 + 24) = v86;
                  v92 = swift_allocObject();
                  *(v92 + 16) = sub_181F8C718;
                  *(v92 + 24) = v91;
                  v481 = swift_allocObject();
                  *(v481 + 16) = 32;
                  v493 = swift_allocObject();
                  *(v493 + 16) = 8;
                  v93 = swift_allocObject();
                  *(v93 + 16) = sub_181F8C720;
                  *(v93 + 24) = v87;
                  a1 = swift_allocObject();
                  *(a1 + 16) = sub_181F8C718;
                  *(a1 + 24) = v93;
                  v421 = v88;
                  if (os_log_type_enabled(oslog, v88))
                  {
                    v94 = swift_slowAlloc();
                    v95 = swift_slowAlloc();
                    *&v593 = 0;
                    *v94 = 770;
                    *&v579 = v95;
                    *&v607 = v94 + 2;
                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v433;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v445;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C714;
                    *(&v711 + 1) = v90;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v457;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v469;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C714;
                    *(&v711 + 1) = v92;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v481;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v493;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C714;
                    *(&v711 + 1) = a1;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    _os_log_impl(&dword_181A37000, oslog, v421, "%s %s %s", v94, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v95, -1, -1);
                    MEMORY[0x1865DF520](v94, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v515;
                  v5 = v514;
                }
              }

              else
              {
                a3 = v515;
              }

              v172 = *(a2 + 912);
              v173 = *(a2 + 880);
              v603 = *(a2 + 896);
              v604 = v172;
              v174 = *(a2 + 912);
              v605 = *(a2 + 928);
              v175 = *(a2 + 848);
              v176 = *(a2 + 816);
              v599 = *(a2 + 832);
              v600 = v175;
              v177 = *(a2 + 848);
              v178 = *(a2 + 880);
              v601 = *(a2 + 864);
              v602 = v178;
              v179 = *(a2 + 784);
              v180 = *(a2 + 752);
              v595 = *(a2 + 768);
              v596 = v179;
              v181 = *(a2 + 784);
              v182 = *(a2 + 816);
              v597 = *(a2 + 800);
              v598 = v182;
              v183 = *(a2 + 752);
              v593 = *(a2 + 736);
              v594 = v183;
              v617 = v603;
              v618 = v174;
              v619 = *(a2 + 928);
              v613 = v599;
              v614 = v177;
              v615 = v601;
              v616 = v173;
              v609 = v595;
              v610 = v181;
              v611 = v597;
              v612 = v176;
              v606 = *(a2 + 944);
              v620 = *(a2 + 944);
              v607 = v593;
              v608 = v180;
              if (sub_182015D6C(&v607) != 1)
              {
                v721 = v617;
                v722 = v618;
                v723 = v619;
                v724 = v620;
                v717 = v613;
                v718 = v614;
                v719 = v615;
                v720 = v616;
                v713 = v609;
                v714 = v610;
                v715 = v611;
                v716 = v612;
                v711 = v607;
                v712 = v608;
                v184 = *(a2 + 1072);
                sub_18201A394(&v593, &v579);
                sub_18228578C(v184, &v551);
                sub_182015DF0(&v593);
                v575 = v561;
                v576 = v562;
                v577 = v563;
                v578 = v564;
                v571 = v557;
                v572 = v558;
                v573 = v559;
                v574 = v560;
                v567 = v553;
                v568 = v554;
                v569 = v555;
                v570 = v556;
                v565 = v551;
                v566 = v552;
                nullsub_41(&v565);
                v185 = *(a2 + 912);
                v589 = *(a2 + 896);
                v590 = v185;
                v591 = *(a2 + 928);
                v592 = *(a2 + 944);
                v186 = *(a2 + 848);
                v585 = *(a2 + 832);
                v586 = v186;
                v187 = *(a2 + 880);
                v587 = *(a2 + 864);
                v588 = v187;
                v188 = *(a2 + 784);
                v581 = *(a2 + 768);
                v582 = v188;
                v189 = *(a2 + 816);
                v583 = *(a2 + 800);
                v584 = v189;
                v190 = *(a2 + 752);
                v579 = *(a2 + 736);
                v580 = v190;
                v191 = v576;
                *(a2 + 896) = v575;
                *(a2 + 912) = v191;
                *(a2 + 928) = v577;
                *(a2 + 944) = v578;
                v192 = v572;
                *(a2 + 832) = v571;
                *(a2 + 848) = v192;
                v193 = v574;
                *(a2 + 864) = v573;
                *(a2 + 880) = v193;
                v194 = v568;
                *(a2 + 768) = v567;
                *(a2 + 784) = v194;
                v195 = v570;
                *(a2 + 800) = v569;
                *(a2 + 816) = v195;
                v196 = v566;
                *(a2 + 736) = v565;
                *(a2 + 752) = v196;
                sub_182015DF0(&v579);
                if (!v9 || !__nwlog_is_datapath_logging_enabled())
                {
LABEL_106:
                  *(a3 + 280) = -1;
                  goto LABEL_117;
                }

                *&v521 = 0;
                *(&v521 + 1) = 0xE000000000000000;
                sub_182AD3BA8();

                v535 = 0xD00000000000001ALL;
                v536 = 0x8000000182BD7CF0;
                *&v521 = *(a2 + 16);
                v331 = sub_182AD41B8();
                MEMORY[0x1865D9CA0](v331);

                MEMORY[0x1865D9CA0](0x20776F6E20736920, 0xE800000000000000);
                v332 = *(a2 + 912);
                v547 = *(a2 + 896);
                v548 = v332;
                v549 = *(a2 + 928);
                v550 = *(a2 + 944);
                v333 = *(a2 + 848);
                v543 = *(a2 + 832);
                v544 = v333;
                v334 = *(a2 + 880);
                v545 = *(a2 + 864);
                v546 = v334;
                v335 = *(a2 + 784);
                v539 = *(a2 + 768);
                v540 = v335;
                v336 = *(a2 + 816);
                v541 = *(a2 + 800);
                v542 = v336;
                v337 = *(a2 + 752);
                v537 = *(a2 + 736);
                v538 = v337;
                if (sub_182015D6C(&v537) != 1)
                {
                  v531 = v547;
                  v532 = v548;
                  v533 = v549;
                  v534 = v550;
                  v527 = v543;
                  v528 = v544;
                  v529 = v545;
                  v530 = v546;
                  v523 = v539;
                  v524 = v540;
                  v525 = v541;
                  v526 = v542;
                  v521 = v537;
                  v522 = v538;
                  sub_182015D80(&v521);
                  v516 = *nullsub_41(&v521);
                  v352 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v352);

                  v353 = v535;
                  v511 = v536;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v354 = sub_182AD2698();
                  __swift_project_value_buffer(v354, qword_1EA843418);
                  v355 = swift_allocObject();
                  *(v355 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v355 + 24) = 54;
                  *(v355 + 32) = 2;
                  v356 = swift_allocObject();
                  *(v356 + 16) = sub_181F8C724;
                  *(v356 + 24) = v355;
                  v357 = swift_allocObject();
                  *(v357 + 16) = 1564427099;
                  *(v357 + 24) = 0xE400000000000000;
                  v358 = swift_allocObject();
                  *(v358 + 16) = v353;
                  *(v358 + 24) = v511;

                  v359 = sub_182AD2678();
                  v360 = sub_182AD38A8();
                  v442 = swift_allocObject();
                  *(v442 + 16) = 32;
                  v454 = swift_allocObject();
                  *(v454 + 16) = 8;
                  v361 = swift_allocObject();
                  *(v361 + 16) = sub_181F8C71C;
                  *(v361 + 24) = v356;
                  v362 = swift_allocObject();
                  *(v362 + 16) = sub_181F8C718;
                  *(v362 + 24) = v361;
                  v466 = swift_allocObject();
                  *(v466 + 16) = 32;
                  v478 = swift_allocObject();
                  *(v478 + 16) = 8;
                  v363 = swift_allocObject();
                  *(v363 + 16) = sub_181F8C720;
                  *(v363 + 24) = v357;
                  v364 = swift_allocObject();
                  *(v364 + 16) = sub_181F8C718;
                  *(v364 + 24) = v363;
                  v490 = swift_allocObject();
                  *(v490 + 16) = 32;
                  v502 = swift_allocObject();
                  *(v502 + 16) = 8;
                  v365 = swift_allocObject();
                  *(v365 + 16) = sub_181F8C720;
                  *(v365 + 24) = v358;
                  v366 = swift_allocObject();
                  *(v366 + 16) = sub_181F8C718;
                  *(v366 + 24) = v365;
                  v367 = v360;
                  v368 = v359;
                  if (os_log_type_enabled(v359, v360))
                  {
                    v369 = swift_slowAlloc();
                    v370 = swift_slowAlloc();
                    v518 = v370;
                    v519 = 0;
                    *v369 = 770;
                    v520 = v369 + 2;
                    v516 = sub_181F8C728;
                    v517 = v442;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v454;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C714;
                    v517 = v362;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v466;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v478;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C714;
                    v517 = v364;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v490;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v502;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C714;
                    v517 = v366;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    _os_log_impl(&dword_181A37000, v368, v367, "%s %s %s", v369, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v370, -1, -1);
                    MEMORY[0x1865DF520](v369, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v515;
                  v5 = v514;
                  goto LABEL_106;
                }

                __break(1u);
                goto LABEL_219;
              }

              goto LABEL_214;
            }

LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          goto LABEL_134;
        }

        goto LABEL_131;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_124:
    swift_once();
LABEL_65:
    a3 = qword_1EA843200;
    sub_18201A460(&v621);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v114 = 4 * v75;
      if (2 * a3 > 4 * v75)
      {
        v114 = 2 * a3;
      }

      v26 = __CFADD__(v5, v114);
      v115 = v5 + v114;
      if (!v26)
      {
        v26 = __CFADD__(v115, a1);
        v116 = v115 + a1;
        if (!v26)
        {
          if (is_mul_ok(v116, 3uLL))
          {
            v117 = 3 * v116;
            v26 = __CFADD__(v4, v117);
            v118 = (v4 + v117);
            if (!v26)
            {
              v5 = v514;
              if (isa < v118)
              {
                goto LABEL_118;
              }

              if (v9)
              {
                a3 = v515;
                if (__nwlog_is_datapath_logging_enabled())
                {
                  *&v711 = 0;
                  *(&v711 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();
                  MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D10);
                  *&v607 = *(a2 + 16);
                  v119 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v119);

                  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7D40);
                  v120 = v711;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v121 = sub_182AD2698();
                  __swift_project_value_buffer(v121, qword_1EA843418);
                  v122 = swift_allocObject();
                  *(v122 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v122 + 24) = 54;
                  *(v122 + 32) = 2;
                  v123 = swift_allocObject();
                  *(v123 + 16) = sub_181F8C724;
                  *(v123 + 24) = v122;
                  v124 = swift_allocObject();
                  *(v124 + 16) = 1564427099;
                  *(v124 + 24) = 0xE400000000000000;
                  v125 = swift_allocObject();
                  *(v125 + 16) = v120;

                  osloga = sub_182AD2678();
                  v126 = sub_182AD38A8();
                  v434 = swift_allocObject();
                  *(v434 + 16) = 32;
                  v446 = swift_allocObject();
                  *(v446 + 16) = 8;
                  v127 = swift_allocObject();
                  *(v127 + 16) = sub_181F8C71C;
                  *(v127 + 24) = v123;
                  v128 = swift_allocObject();
                  *(v128 + 16) = sub_181F8C718;
                  *(v128 + 24) = v127;
                  v458 = swift_allocObject();
                  *(v458 + 16) = 32;
                  v470 = swift_allocObject();
                  *(v470 + 16) = 8;
                  v129 = swift_allocObject();
                  *(v129 + 16) = sub_181F8C720;
                  *(v129 + 24) = v124;
                  v130 = swift_allocObject();
                  *(v130 + 16) = sub_181F8C718;
                  *(v130 + 24) = v129;
                  v482 = swift_allocObject();
                  *(v482 + 16) = 32;
                  v494 = swift_allocObject();
                  *(v494 + 16) = 8;
                  v131 = swift_allocObject();
                  *(v131 + 16) = sub_181F8C720;
                  *(v131 + 24) = v125;
                  a1 = swift_allocObject();
                  *(a1 + 16) = sub_181F8C718;
                  *(a1 + 24) = v131;
                  v422 = v126;
                  if (os_log_type_enabled(osloga, v126))
                  {
                    v132 = swift_slowAlloc();
                    v133 = swift_slowAlloc();
                    *&v593 = 0;
                    *v132 = 770;
                    *&v579 = v133;
                    *&v607 = v132 + 2;
                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v434;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v446;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C714;
                    *(&v711 + 1) = v128;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v458;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v470;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C714;
                    *(&v711 + 1) = v130;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v482;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C728;
                    *(&v711 + 1) = v494;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    *&v711 = sub_181F8C714;
                    *(&v711 + 1) = a1;
                    sub_181F73AE0(&v711, &v607, &v593, &v579);

                    _os_log_impl(&dword_181A37000, osloga, v422, "%s %s %s", v132, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v133, -1, -1);
                    MEMORY[0x1865DF520](v132, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v515;
                  v5 = v514;
                }
              }

              else
              {
                a3 = v515;
              }

              v197 = *(a2 + 912);
              v198 = *(a2 + 880);
              v603 = *(a2 + 896);
              v604 = v197;
              v199 = *(a2 + 912);
              v605 = *(a2 + 928);
              v200 = *(a2 + 848);
              v201 = *(a2 + 816);
              v599 = *(a2 + 832);
              v600 = v200;
              v202 = *(a2 + 848);
              v203 = *(a2 + 880);
              v601 = *(a2 + 864);
              v602 = v203;
              v204 = *(a2 + 784);
              v205 = *(a2 + 752);
              v595 = *(a2 + 768);
              v596 = v204;
              v206 = *(a2 + 784);
              v207 = *(a2 + 816);
              v597 = *(a2 + 800);
              v598 = v207;
              v208 = *(a2 + 752);
              v593 = *(a2 + 736);
              v594 = v208;
              v617 = v603;
              v618 = v199;
              v619 = *(a2 + 928);
              v613 = v599;
              v614 = v202;
              v615 = v601;
              v616 = v198;
              v609 = v595;
              v610 = v206;
              v611 = v597;
              v612 = v201;
              v606 = *(a2 + 944);
              v620 = *(a2 + 944);
              v607 = v593;
              v608 = v205;
              if (sub_182015D6C(&v607) != 1)
              {
                v721 = v617;
                v722 = v618;
                v723 = v619;
                v724 = v620;
                v717 = v613;
                v718 = v614;
                v719 = v615;
                v720 = v616;
                v713 = v609;
                v714 = v610;
                v715 = v611;
                v716 = v612;
                v711 = v607;
                v712 = v608;
                v209 = *(a2 + 1072);
                sub_18201A394(&v593, &v579);
                sub_18228578C(v209, &v551);
                sub_182015DF0(&v593);
                v575 = v561;
                v576 = v562;
                v577 = v563;
                v578 = v564;
                v571 = v557;
                v572 = v558;
                v573 = v559;
                v574 = v560;
                v567 = v553;
                v568 = v554;
                v569 = v555;
                v570 = v556;
                v565 = v551;
                v566 = v552;
                nullsub_41(&v565);
                v210 = *(a2 + 912);
                v589 = *(a2 + 896);
                v590 = v210;
                v591 = *(a2 + 928);
                v592 = *(a2 + 944);
                v211 = *(a2 + 848);
                v585 = *(a2 + 832);
                v586 = v211;
                v212 = *(a2 + 880);
                v587 = *(a2 + 864);
                v588 = v212;
                v213 = *(a2 + 784);
                v581 = *(a2 + 768);
                v582 = v213;
                v214 = *(a2 + 816);
                v583 = *(a2 + 800);
                v584 = v214;
                v215 = *(a2 + 752);
                v579 = *(a2 + 736);
                v580 = v215;
                v216 = v576;
                *(a2 + 896) = v575;
                *(a2 + 912) = v216;
                *(a2 + 928) = v577;
                *(a2 + 944) = v578;
                v217 = v572;
                *(a2 + 832) = v571;
                *(a2 + 848) = v217;
                v218 = v574;
                *(a2 + 864) = v573;
                *(a2 + 880) = v218;
                v219 = v568;
                *(a2 + 768) = v567;
                *(a2 + 784) = v219;
                v220 = v570;
                *(a2 + 800) = v569;
                *(a2 + 816) = v220;
                v221 = v566;
                *(a2 + 736) = v565;
                *(a2 + 752) = v221;
                sub_182015DF0(&v579);
                if (v9 && __nwlog_is_datapath_logging_enabled())
                {
                  *&v521 = 0;
                  *(&v521 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();

                  v535 = 0xD00000000000001ALL;
                  v536 = 0x8000000182BD7CF0;
                  *&v521 = *(a2 + 16);
                  v338 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v338);

                  MEMORY[0x1865D9CA0](0x20776F6E20736920, 0xE800000000000000);
                  v339 = *(a2 + 912);
                  v547 = *(a2 + 896);
                  v548 = v339;
                  v549 = *(a2 + 928);
                  v550 = *(a2 + 944);
                  v340 = *(a2 + 848);
                  v543 = *(a2 + 832);
                  v544 = v340;
                  v341 = *(a2 + 880);
                  v545 = *(a2 + 864);
                  v546 = v341;
                  v342 = *(a2 + 784);
                  v539 = *(a2 + 768);
                  v540 = v342;
                  v343 = *(a2 + 816);
                  v541 = *(a2 + 800);
                  v542 = v343;
                  v344 = *(a2 + 752);
                  v537 = *(a2 + 736);
                  v538 = v344;
                  if (sub_182015D6C(&v537) == 1)
                  {
LABEL_219:
                    __break(1u);
                    goto LABEL_220;
                  }

                  v531 = v547;
                  v532 = v548;
                  v533 = v549;
                  v534 = v550;
                  v527 = v543;
                  v528 = v544;
                  v529 = v545;
                  v530 = v546;
                  v523 = v539;
                  v524 = v540;
                  v525 = v541;
                  v526 = v542;
                  v521 = v537;
                  v522 = v538;
                  sub_182015D80(&v521);
                  v516 = *nullsub_41(&v521);
                  v371 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v371);

                  v372 = v535;
                  v512 = v536;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v373 = sub_182AD2698();
                  __swift_project_value_buffer(v373, qword_1EA843418);
                  v374 = swift_allocObject();
                  *(v374 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v374 + 24) = 54;
                  *(v374 + 32) = 2;
                  v375 = swift_allocObject();
                  *(v375 + 16) = sub_181F8C724;
                  *(v375 + 24) = v374;
                  v376 = swift_allocObject();
                  *(v376 + 16) = 1564427099;
                  *(v376 + 24) = 0xE400000000000000;
                  v377 = swift_allocObject();
                  *(v377 + 16) = v372;
                  *(v377 + 24) = v512;

                  v378 = sub_182AD2678();
                  v379 = sub_182AD38A8();
                  v443 = swift_allocObject();
                  *(v443 + 16) = 32;
                  v455 = swift_allocObject();
                  *(v455 + 16) = 8;
                  v380 = swift_allocObject();
                  *(v380 + 16) = sub_181F8C71C;
                  *(v380 + 24) = v375;
                  v381 = swift_allocObject();
                  *(v381 + 16) = sub_181F8C718;
                  *(v381 + 24) = v380;
                  v467 = swift_allocObject();
                  *(v467 + 16) = 32;
                  v479 = swift_allocObject();
                  *(v479 + 16) = 8;
                  v382 = swift_allocObject();
                  *(v382 + 16) = sub_181F8C720;
                  *(v382 + 24) = v376;
                  v383 = swift_allocObject();
                  *(v383 + 16) = sub_181F8C718;
                  *(v383 + 24) = v382;
                  v491 = swift_allocObject();
                  *(v491 + 16) = 32;
                  v503 = swift_allocObject();
                  *(v503 + 16) = 8;
                  v384 = swift_allocObject();
                  *(v384 + 16) = sub_181F8C720;
                  *(v384 + 24) = v377;
                  v385 = swift_allocObject();
                  *(v385 + 16) = sub_181F8C718;
                  *(v385 + 24) = v384;
                  v386 = v379;
                  v387 = v378;
                  if (os_log_type_enabled(v378, v379))
                  {
                    v388 = swift_slowAlloc();
                    v389 = swift_slowAlloc();
                    v518 = v389;
                    v519 = 0;
                    *v388 = 770;
                    v520 = v388 + 2;
                    v516 = sub_181F8C728;
                    v517 = v443;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v455;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C714;
                    v517 = v381;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v467;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v479;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C714;
                    v517 = v383;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v491;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C728;
                    v517 = v503;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    v516 = sub_181F8C714;
                    v517 = v385;
                    sub_181F73AE0(&v516, &v520, &v519, &v518);

                    _os_log_impl(&dword_181A37000, v387, v386, "%s %s %s", v388, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v389, -1, -1);
                    MEMORY[0x1865DF520](v388, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v515;
                  v5 = v514;
                }

                *(a3 + 128) = -1;
                goto LABEL_117;
              }

              goto LABEL_215;
            }

            goto LABEL_138;
          }

          goto LABEL_135;
        }

        goto LABEL_132;
      }

      goto LABEL_129;
    }

    __break(1u);
LABEL_126:
    swift_once();
LABEL_88:
    a3 = qword_1EA843200;
    sub_18201A460(&v621);
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v152 = 4 * v75;
    if (2 * a3 > 4 * v75)
    {
      v152 = 2 * a3;
    }

    v26 = __CFADD__(v5, v152);
    v153 = v5 + v152;
    if (v26)
    {
      goto LABEL_130;
    }

    v26 = __CFADD__(v153, a1);
    v154 = v153 + a1;
    if (v26)
    {
      goto LABEL_133;
    }

    if (!is_mul_ok(v154, 3uLL))
    {
      goto LABEL_136;
    }

    v155 = 3 * v154;
    v26 = __CFADD__(v4, v155);
    v156 = (v4 + v155);
    if (!v26)
    {
      break;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    *&v711 = 0;
    *(&v711 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7DC0);
    *&v697 = a2;
    type metadata accessor for QUICPath();
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7DF0);
    *&v697 = v4[33];
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0x6E65732073617720, 0xED00002074612074);
    *&v697 = v4[34];
    v248 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v248);

    v5 = *(&v711 + 1);
    v514 = v711;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_217;
    }

LABEL_141:
    v249 = sub_182AD2698();
    __swift_project_value_buffer(v249, qword_1EA843418);
    v250 = swift_allocObject();
    *(v250 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
    *(v250 + 24) = 54;
    *(v250 + 32) = 2;
    v251 = swift_allocObject();
    *(v251 + 16) = sub_181F8C724;
    *(v251 + 24) = v250;
    v252 = swift_allocObject();
    *(v252 + 16) = 1564427099;
    *(v252 + 24) = 0xE400000000000000;
    v409 = swift_allocObject();
    *(v409 + 16) = v514;
    *(v409 + 24) = v5;

    v424 = sub_182AD2678();
    v505 = sub_182AD38A8();
    v436 = swift_allocObject();
    *(v436 + 16) = 32;
    v448 = swift_allocObject();
    *(v448 + 16) = 8;
    v253 = swift_allocObject();
    *(v253 + 16) = sub_181F8C71C;
    *(v253 + 24) = v251;
    v254 = swift_allocObject();
    *(v254 + 16) = sub_181F8C718;
    *(v254 + 24) = v253;
    v460 = swift_allocObject();
    *(v460 + 16) = 32;
    v5 = 32;
    v472 = swift_allocObject();
    *(v472 + 16) = 8;
    v255 = swift_allocObject();
    *(v255 + 16) = sub_181F8C720;
    *(v255 + 24) = v252;
    v256 = swift_allocObject();
    *(v256 + 16) = sub_181F8C718;
    *(v256 + 24) = v255;
    v484 = v256;
    v496 = swift_allocObject();
    *(v496 + 16) = 32;
    v514 = swift_allocObject();
    *(v514 + 16) = 8;
    v257 = swift_allocObject();
    *(v257 + 16) = sub_181F8C720;
    *(v257 + 24) = v409;
    v258 = swift_allocObject();
    *(v258 + 16) = sub_181F8C718;
    *(v258 + 24) = v257;
    if (os_log_type_enabled(v424, v505))
    {
      v5 = swift_slowAlloc();
      v259 = swift_slowAlloc();
      *&v683 = 0;
      *v5 = 770;
      v410 = v259;
      *&v669 = v259;
      *&v697 = v5 + 2;
      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v436;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v448;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C714;
      *(&v711 + 1) = v254;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v460;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v472;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C714;
      *(&v711 + 1) = v484;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v496;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C728;
      *(&v711 + 1) = v514;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      *&v711 = sub_181F8C714;
      *(&v711 + 1) = v258;
      sub_181F73AE0(&v711, &v697, &v683, &v669);

      _os_log_impl(&dword_181A37000, v424, v505, "%s %s %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v410, -1, -1);
      MEMORY[0x1865DF520](v5, -1, -1);
    }

    else
    {
    }

    v4 = v515;
  }

  v5 = v514;
  if (isa < v156)
  {
    goto LABEL_118;
  }

  if (v9)
  {
    a3 = v515;
    if (__nwlog_is_datapath_logging_enabled())
    {
      *&v711 = 0;
      *(&v711 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D10);
      *&v607 = *(a2 + 16);
      v157 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v157);

      MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7D40);
      v158 = v711;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v159 = sub_182AD2698();
      __swift_project_value_buffer(v159, qword_1EA843418);
      v160 = swift_allocObject();
      *(v160 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v160 + 24) = 54;
      *(v160 + 32) = 2;
      v161 = swift_allocObject();
      *(v161 + 16) = sub_181F8C724;
      *(v161 + 24) = v160;
      v162 = swift_allocObject();
      *(v162 + 16) = 1564427099;
      *(v162 + 24) = 0xE400000000000000;
      v163 = swift_allocObject();
      *(v163 + 16) = v158;

      oslogb = sub_182AD2678();
      v164 = sub_182AD38A8();
      v435 = swift_allocObject();
      *(v435 + 16) = 32;
      v447 = swift_allocObject();
      *(v447 + 16) = 8;
      v165 = swift_allocObject();
      *(v165 + 16) = sub_181F8C71C;
      *(v165 + 24) = v161;
      v166 = swift_allocObject();
      *(v166 + 16) = sub_181F8C718;
      *(v166 + 24) = v165;
      v459 = swift_allocObject();
      *(v459 + 16) = 32;
      v471 = swift_allocObject();
      *(v471 + 16) = 8;
      v167 = swift_allocObject();
      *(v167 + 16) = sub_181F8C720;
      *(v167 + 24) = v162;
      v168 = swift_allocObject();
      *(v168 + 16) = sub_181F8C718;
      *(v168 + 24) = v167;
      v483 = swift_allocObject();
      *(v483 + 16) = 32;
      v495 = swift_allocObject();
      *(v495 + 16) = 8;
      v169 = swift_allocObject();
      *(v169 + 16) = sub_181F8C720;
      *(v169 + 24) = v163;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_181F8C718;
      *(a1 + 24) = v169;
      v423 = v164;
      if (os_log_type_enabled(oslogb, v164))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        *&v593 = 0;
        *v170 = 770;
        *&v579 = v171;
        *&v607 = v170 + 2;
        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v435;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v447;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v166;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v459;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v471;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = v168;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v483;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C728;
        *(&v711 + 1) = v495;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        *&v711 = sub_181F8C714;
        *(&v711 + 1) = a1;
        sub_181F73AE0(&v711, &v607, &v593, &v579);

        _os_log_impl(&dword_181A37000, oslogb, v423, "%s %s %s", v170, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v171, -1, -1);
        MEMORY[0x1865DF520](v170, -1, -1);
      }

      else
      {
      }

      a3 = v515;
      v5 = v514;
    }
  }

  else
  {
    a3 = v515;
  }

  v222 = *(a2 + 912);
  v223 = *(a2 + 880);
  v603 = *(a2 + 896);
  v604 = v222;
  v224 = *(a2 + 912);
  v605 = *(a2 + 928);
  v225 = *(a2 + 848);
  v226 = *(a2 + 816);
  v599 = *(a2 + 832);
  v600 = v225;
  v227 = *(a2 + 848);
  v228 = *(a2 + 880);
  v601 = *(a2 + 864);
  v602 = v228;
  v229 = *(a2 + 784);
  v230 = *(a2 + 752);
  v595 = *(a2 + 768);
  v596 = v229;
  v231 = *(a2 + 784);
  v232 = *(a2 + 816);
  v597 = *(a2 + 800);
  v598 = v232;
  v233 = *(a2 + 752);
  v593 = *(a2 + 736);
  v594 = v233;
  v617 = v603;
  v618 = v224;
  v619 = *(a2 + 928);
  v613 = v599;
  v614 = v227;
  v615 = v601;
  v616 = v223;
  v609 = v595;
  v610 = v231;
  v611 = v597;
  v612 = v226;
  v606 = *(a2 + 944);
  v620 = *(a2 + 944);
  v607 = v593;
  v608 = v230;
  if (sub_182015D6C(&v607) == 1)
  {
    goto LABEL_216;
  }

  v721 = v617;
  v722 = v618;
  v723 = v619;
  v724 = v620;
  v717 = v613;
  v718 = v614;
  v719 = v615;
  v720 = v616;
  v713 = v609;
  v714 = v610;
  v715 = v611;
  v716 = v612;
  v711 = v607;
  v712 = v608;
  v234 = *(a2 + 1072);
  sub_18201A394(&v593, &v579);
  sub_18228578C(v234, &v551);
  sub_182015DF0(&v593);
  v575 = v561;
  v576 = v562;
  v577 = v563;
  v578 = v564;
  v571 = v557;
  v572 = v558;
  v573 = v559;
  v574 = v560;
  v567 = v553;
  v568 = v554;
  v569 = v555;
  v570 = v556;
  v565 = v551;
  v566 = v552;
  nullsub_41(&v565);
  v235 = *(a2 + 912);
  v589 = *(a2 + 896);
  v590 = v235;
  v591 = *(a2 + 928);
  v592 = *(a2 + 944);
  v236 = *(a2 + 848);
  v585 = *(a2 + 832);
  v586 = v236;
  v237 = *(a2 + 880);
  v587 = *(a2 + 864);
  v588 = v237;
  v238 = *(a2 + 784);
  v581 = *(a2 + 768);
  v582 = v238;
  v239 = *(a2 + 816);
  v583 = *(a2 + 800);
  v584 = v239;
  v240 = *(a2 + 752);
  v579 = *(a2 + 736);
  v580 = v240;
  v241 = v576;
  *(a2 + 896) = v575;
  *(a2 + 912) = v241;
  *(a2 + 928) = v577;
  *(a2 + 944) = v578;
  v242 = v572;
  *(a2 + 832) = v571;
  *(a2 + 848) = v242;
  v243 = v574;
  *(a2 + 864) = v573;
  *(a2 + 880) = v243;
  v244 = v568;
  *(a2 + 768) = v567;
  *(a2 + 784) = v244;
  v245 = v570;
  *(a2 + 800) = v569;
  *(a2 + 816) = v245;
  v246 = v566;
  *(a2 + 736) = v565;
  *(a2 + 752) = v246;
  sub_182015DF0(&v579);
  if (!v9 || !__nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_116;
  }

  *&v521 = 0;
  *(&v521 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  v535 = 0xD00000000000001ALL;
  v536 = 0x8000000182BD7CF0;
  *&v521 = *(a2 + 16);
  v345 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v345);

  MEMORY[0x1865D9CA0](0x20776F6E20736920, 0xE800000000000000);
  v346 = *(a2 + 912);
  v547 = *(a2 + 896);
  v548 = v346;
  v549 = *(a2 + 928);
  v550 = *(a2 + 944);
  v347 = *(a2 + 848);
  v543 = *(a2 + 832);
  v544 = v347;
  v348 = *(a2 + 880);
  v545 = *(a2 + 864);
  v546 = v348;
  v349 = *(a2 + 784);
  v539 = *(a2 + 768);
  v540 = v349;
  v350 = *(a2 + 816);
  v541 = *(a2 + 800);
  v542 = v350;
  v351 = *(a2 + 752);
  v537 = *(a2 + 736);
  v538 = v351;
  if (sub_182015D6C(&v537) == 1)
  {
LABEL_220:
    __break(1u);

    while (1)
    {

      __break(1u);
    }
  }

  v531 = v547;
  v532 = v548;
  v533 = v549;
  v534 = v550;
  v527 = v543;
  v528 = v544;
  v529 = v545;
  v530 = v546;
  v523 = v539;
  v524 = v540;
  v525 = v541;
  v526 = v542;
  v521 = v537;
  v522 = v538;
  sub_182015D80(&v521);
  v516 = *nullsub_41(&v521);
  v390 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v390);

  v391 = v535;
  v513 = v536;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v392 = sub_182AD2698();
  __swift_project_value_buffer(v392, qword_1EA843418);
  v393 = swift_allocObject();
  *(v393 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
  *(v393 + 24) = 54;
  *(v393 + 32) = 2;
  v394 = swift_allocObject();
  *(v394 + 16) = sub_181F8C724;
  *(v394 + 24) = v393;
  v395 = swift_allocObject();
  *(v395 + 16) = 1564427099;
  *(v395 + 24) = 0xE400000000000000;
  v396 = swift_allocObject();
  *(v396 + 16) = v391;
  *(v396 + 24) = v513;

  v397 = sub_182AD2678();
  v398 = sub_182AD38A8();
  v444 = swift_allocObject();
  *(v444 + 16) = 32;
  v456 = swift_allocObject();
  *(v456 + 16) = 8;
  v399 = swift_allocObject();
  *(v399 + 16) = sub_181F8C71C;
  *(v399 + 24) = v394;
  v400 = swift_allocObject();
  *(v400 + 16) = sub_181F8C718;
  *(v400 + 24) = v399;
  v468 = swift_allocObject();
  *(v468 + 16) = 32;
  v480 = swift_allocObject();
  *(v480 + 16) = 8;
  v401 = swift_allocObject();
  *(v401 + 16) = sub_181F8C720;
  *(v401 + 24) = v395;
  v402 = swift_allocObject();
  *(v402 + 16) = sub_181F8C718;
  *(v402 + 24) = v401;
  v492 = swift_allocObject();
  *(v492 + 16) = 32;
  v504 = swift_allocObject();
  *(v504 + 16) = 8;
  v403 = swift_allocObject();
  *(v403 + 16) = sub_181F8C720;
  *(v403 + 24) = v396;
  v404 = swift_allocObject();
  *(v404 + 16) = sub_181F8C718;
  *(v404 + 24) = v403;
  v405 = v398;
  v406 = v397;
  if (os_log_type_enabled(v397, v398))
  {
    v407 = swift_slowAlloc();
    v408 = swift_slowAlloc();
    v518 = v408;
    v519 = 0;
    *v407 = 770;
    v520 = v407 + 2;
    v516 = sub_181F8C728;
    v517 = v444;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C728;
    v517 = v456;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C714;
    v517 = v400;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C728;
    v517 = v468;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C728;
    v517 = v480;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C714;
    v517 = v402;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C728;
    v517 = v492;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C728;
    v517 = v504;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    v516 = sub_181F8C714;
    v517 = v404;
    sub_181F73AE0(&v516, &v520, &v519, &v518);

    _os_log_impl(&dword_181A37000, v406, v405, "%s %s %s", v407, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v408, -1, -1);
    MEMORY[0x1865DF520](v407, -1, -1);
  }

  else
  {
  }

  a3 = v515;
  v5 = v514;
LABEL_116:
  *(a3 + 432) = -1;
LABEL_117:
  *(a2 + 184) = *(a2 + 152);
LABEL_118:
  swift_endAccess();
  return v5;
}

uint64_t sub_18200463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 144);
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = sub_18225BD68(a3);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  swift_beginAccess();

  sub_1822501BC(a3);
  swift_endAccess();

  result = swift_beginAccess();
  v13 = *(v7 + 24);
  v14 = v13[4];
  v15 = v13[3] + v14;
  if (v13[2] < v15)
  {
    v15 = v13[2];
  }

  v20 = *(v7 + 24);
  v21 = v13[4];
  v22 = v15;
  v16 = -1;
  do
  {
    if (v14 == v22)
    {
      result = sub_181AC81FC(result);
      if ((result & 1) == 0)
      {

        goto LABEL_19;
      }

      v14 = v21;
    }

    v21 = v14 + 1;
    v17 = v16 + 2;
    if (__OFADD__(v16 + 1, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    v18 = *(v20 + 8 * v14 + 40);
    ++v16;
    ++v14;
  }

  while (v18 != a3);
  result = swift_beginAccess();
  if (v16 >= *(*(v7 + 24) + 24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1820E6310();
  }

  v19 = *(v7 + 24);
  if (v16 >= *(v19 + 24))
  {
    goto LABEL_23;
  }

  if (v17 >= v16)
  {
    sub_181D8977C(v16, v17, (v19 + 16), v19 + 40, v23);

    sub_18226EC18(v16, v17, (v19 + 16), (v19 + 40));
    swift_endAccess();

LABEL_19:

    swift_beginAccess();
    sub_18201A510(v11 + 16, a5);
    swift_endAccess();
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_182004888(unsigned __int8 a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  if (a4)
  {
    goto LABEL_10;
  }

  v11 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v34 = v11;
    swift_once();
    v11 = v34;
  }

  v12 = qword_1EA8387E8;
  if (is_mul_ok(v11, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v35 = v11;
  swift_once();
  v11 = v35;
LABEL_6:
  v13 = qword_1EA8387F0;
  if (!qword_1EA8387F0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (qword_1EA837010 != -1)
  {
LABEL_47:
    v36 = v11;
    swift_once();
    v11 = v36;
  }

  if (!qword_1EA8431F0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v7 = v11 * v12 / v13 / qword_1EA8431F0;
  v6 = a5;
LABEL_10:
  v5 = 0;
  v14 = 0;
  v13 = 0;
  do
  {
    v17 = byte_1EEF96CC0[v14 + 32];
    if ((a2 & 1) != 0 || v17 == a1)
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        v78 = 0;
        v79 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000030, 0x8000000182BD7BA0);
        LOBYTE(v82[0]) = v17;
        sub_182AD3E18();
        v18 = v79;
        oslog = v78;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v19 = sub_182AD2698();
        __swift_project_value_buffer(v19, qword_1EA843418);
        v20 = swift_allocObject();
        *(v20 + 16) = "findLostPacket(pnSpace:allPNSpaces:path:timeNow:connection:)";
        *(v20 + 24) = 60;
        *(v20 + 32) = 2;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_181F8C724;
        *(v64 + 24) = v20;
        v67 = swift_allocObject();
        *(v67 + 16) = 1564427099;
        *(v67 + 24) = 0xE400000000000000;
        v53 = swift_allocObject();
        *(v53 + 16) = oslog;
        *(v53 + 24) = v18;

        osloga = sub_182AD2678();
        v70 = sub_182AD38A8();
        v55 = swift_allocObject();
        *(v55 + 16) = 32;
        v56 = swift_allocObject();
        *(v56 + 16) = 8;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_181F8C71C;
        *(v21 + 24) = v64;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_181F8C718;
        *(v22 + 24) = v21;
        v58 = v22;
        v62 = swift_allocObject();
        *(v62 + 16) = 32;
        v60 = swift_allocObject();
        *(v60 + 16) = 8;
        v23 = swift_allocObject();
        *(v23 + 16) = sub_181F8C720;
        *(v23 + 24) = v67;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_181F8C718;
        *(v24 + 24) = v23;
        v65 = v24;
        v68 = swift_allocObject();
        *(v68 + 16) = 32;
        v25 = swift_allocObject();
        *(v25 + 16) = 8;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_181F8C720;
        *(v26 + 24) = v53;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_181F8C718;
        *(v27 + 24) = v26;
        if (os_log_type_enabled(osloga, v70))
        {
          v54 = v27;
          v28 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v81 = 0;
          v52 = v80;
          *v28 = 770;
          v82[0] = v28 + 2;
          v78 = sub_181F8C728;
          v79 = v55;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          v78 = sub_181F8C728;
          v79 = v56;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          v78 = sub_181F8C714;
          v79 = v58;
          sub_181F73AE0(&v78, v82, &v81, &v80);
          v57 = v25;

          v78 = sub_181F8C728;
          v79 = v62;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          v78 = sub_181F8C728;
          v79 = v60;
          sub_181F73AE0(&v78, v82, &v81, &v80);
          v6 = a5;

          v78 = sub_181F8C714;
          v79 = v65;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          v78 = sub_181F8C728;
          v79 = v68;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          v78 = sub_181F8C728;
          v79 = v57;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          v78 = sub_181F8C714;
          v79 = v54;
          sub_181F73AE0(&v78, v82, &v81, &v80);

          _os_log_impl(&dword_181A37000, osloga, v70, "%s %s %s", v28, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v52, -1, -1);
          MEMORY[0x1865DF520](v28, -1, -1);
        }

        else
        {

          v6 = a5;
        }
      }

      v15 = a3;
      if (!a3)
      {
        v15 = *(v6 + 952);
      }

      v16 = sub_181FFB210(v17, v15, v7, v6);
      v6 = a5;
      v5 = v16;
    }

    ++v14;
  }

  while (v14 != 3);
  v29 = v5;
  if (v5)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      if (!*(v6 + 952))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_49:
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v37 = sub_182AD2698();
    __swift_project_value_buffer(v37, qword_1EA843418);
    v38 = swift_allocObject();
    *(v38 + 16) = "findLostPacket(pnSpace:allPNSpaces:path:timeNow:connection:)";
    *(v38 + 24) = 60;
    *(v38 + 32) = 2;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C724;
    *(v39 + 24) = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = 1564427099;
    *(v40 + 24) = 0xE400000000000000;
    v41 = swift_allocObject();
    *(v41 + 16) = 0xD00000000000001BLL;
    *(v41 + 24) = 0x8000000182BD7B80;
    v63 = sub_182AD2678();
    v42 = sub_182AD38A8();
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v69 = swift_allocObject();
    *(v69 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C71C;
    *(v43 + 24) = v39;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C718;
    *(v44 + 24) = v43;
    v71 = swift_allocObject();
    *(v71 + 16) = 32;
    oslogb = swift_allocObject();
    LOBYTE(oslogb[2].isa) = 8;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_181F8C720;
    *(v45 + 24) = v40;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C718;
    *(v46 + 24) = v45;
    v75 = v46;
    v76 = swift_allocObject();
    *(v76 + 16) = 32;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C720;
    *(v48 + 24) = v41;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C718;
    *(v49 + 24) = v48;
    if (os_log_type_enabled(v63, v42))
    {
      v59 = v47;
      v61 = v49;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80 = v51;
      v81 = 0;
      *v50 = 770;
      v82[0] = v50 + 2;
      v78 = sub_181F8C728;
      v79 = v66;
      sub_181F73AE0(&v78, v82, &v81, &v80);
      if (v13)
      {

        while (1)
        {

          __break(1u);
        }
      }

      v78 = sub_181F8C728;
      v79 = v69;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C714;
      v79 = v44;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C728;
      v79 = v71;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C728;
      v79 = oslogb;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C714;
      v79 = v75;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C728;
      v79 = v76;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C728;
      v79 = v59;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      v78 = sub_181F8C714;
      v79 = v61;
      sub_181F73AE0(&v78, v82, &v81, &v80);

      _os_log_impl(&dword_181A37000, v63, v42, "%s %s %s", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v51, -1, -1);
      MEMORY[0x1865DF520](v50, -1, -1);
    }

    else
    {
    }

    v6 = a5;
    v29 = v5;
    if (!*(a5 + 952))
    {
LABEL_33:
      if (a3)
      {
        v31 = *(a3 + 984);
        if (!v31)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v32 = *(v6 + 952);
        if (!v32)
        {
LABEL_42:
          sub_182170B00();
          return v29 & 1;
        }

        v31 = *(v32 + 984);
        if (!v31)
        {
          goto LABEL_39;
        }
      }

      if ((*(v31 + 128) & 0x20) != 0)
      {
        *(v31 + 128) &= ~0x20u;

        sub_1822BBC3C();

        goto LABEL_41;
      }

LABEL_39:

LABEL_41:

      goto LABEL_42;
    }

LABEL_32:

    sub_182047340(v30, 0, 0);
    v6 = a5;

    goto LABEL_33;
  }

  return v29 & 1;
}

unint64_t sub_182005A28(char a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a2 + 139);
  swift_beginAccess();
  v6 = v2 + 4;
  if ((a1 & 1) == 0)
  {
    v6 = v2 + 8;
  }

  v7 = *v6;
  if (a1)
  {
    v8 = v2 + 23;
  }

  else
  {
    v8 = v2 + 27;
  }

  swift_beginAccess();
  if (*v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v8;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = *v8;
  }

  if (*v8)
  {
    v7 = v10;
  }

  swift_beginAccess();
  v11 = v2 + 42;
  if ((a1 & 1) == 0)
  {
    v11 = v2 + 46;
  }

  v12 = *v11;
  if (v12 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = v7;
  }

  if (v5 == 9)
  {
    return v15;
  }

  else
  {
    return v7;
  }
}

void sub_182005B4C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(a2 + 992);
  v7 = *(a2 + 1016);
  v410 = 0;
  swift_beginAccess();
  v8 = *(v2 + 136);
  v429[6] = *(v2 + 120);
  v429[7] = v8;
  v429[8] = *(v2 + 152);
  v430 = *(v2 + 168);
  v9 = *(v2 + 72);
  v429[2] = *(v2 + 56);
  v429[3] = v9;
  v10 = *(v2 + 104);
  v429[4] = *(v2 + 88);
  v429[5] = v10;
  v11 = *(v2 + 40);
  v429[0] = *(v2 + 24);
  v429[1] = v11;
  v12 = *&v429[0];
  sub_18201C7A8(v429, v427);
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v13 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_130;
  }

  v403 = 0;
  while (1)
  {
    sub_182005A28(1, a1);
    if ((sub_181F83128(v14) & 1) == 0)
    {
      if (v12 <= 0)
      {
        LODWORD(log) = v7;
        if ((*(a1 + 1024) & 1) == 0 && (*(a1 + 1125) & 1) == 0 && (*(v3 + 483) & 1) == 0 && *(v3 + 484) != 1)
        {
          v168 = *(a1 + 1034);
          v410 = 1;
          if (v168)
          {
            v169 = 0x800000000000002;
          }

          else
          {
            v169 = 0x800000000000202;
          }

          *&v427[0] = 1;
          *(&v427[0] + 1) = v169;

          sub_181F82F10(2u, v427);

          if ((sub_182047340(v4, 1, 0) & 1) != 0 || (v13 & 1) == 0 || !__nwlog_is_datapath_logging_enabled())
          {
            goto LABEL_29;
          }

          v401 = v6;
          LODWORD(v400) = v13;
          v387 = a1;
          v399 = v4;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v170 = sub_182AD2698();
          __swift_project_value_buffer(v170, qword_1EA843418);
          v171 = swift_allocObject();
          *(v171 + 16) = "sendPTO(connection:path:)";
          *(v171 + 24) = 25;
          *(v171 + 32) = 2;
          v172 = swift_allocObject();
          *(v172 + 16) = sub_181F8C724;
          *(v172 + 24) = v171;
          v173 = swift_allocObject();
          *(v173 + 16) = 1564427099;
          *(v173 + 24) = 0xE400000000000000;
          v174 = swift_allocObject();
          *(v174 + 16) = 0xD000000000000040;
          *(v174 + 24) = 0x8000000182BD86D0;
          v175 = sub_182AD2678();
          v176 = sub_182AD38A8();
          v22 = swift_allocObject();
          *(v22 + 16) = 32;
          v337 = swift_allocObject();
          *(v337 + 16) = 8;
          v177 = swift_allocObject();
          *(v177 + 16) = sub_181F8C71C;
          *(v177 + 24) = v172;
          v24 = swift_allocObject();
          *(v24 + 16) = sub_181F8C718;
          *(v24 + 24) = v177;
          v345 = swift_allocObject();
          *(v345 + 16) = 32;
          v353 = swift_allocObject();
          LOBYTE(v353[2].isa) = 8;
          v178 = swift_allocObject();
          *(v178 + 16) = sub_181F8C720;
          *(v178 + 24) = v173;
          v26 = swift_allocObject();
          *(v26 + 16) = sub_181F8C718;
          *(v26 + 24) = v178;
          v364 = swift_allocObject();
          *(v364 + 16) = 32;
          oslog = swift_allocObject();
          LOBYTE(oslog[2].isa) = 8;
          v179 = swift_allocObject();
          *(v179 + 16) = sub_181F8C720;
          *(v179 + 24) = v174;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_181F8C718;
          *(v28 + 24) = v179;
          v29 = v176;
          v30 = v175;
          if (!os_log_type_enabled(v175, v176))
          {
            goto LABEL_172;
          }

          goto LABEL_14;
        }

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v45 = sub_182AD2698();
        __swift_project_value_buffer(v45, qword_1EA843418);
        v46 = sub_182AD2678();
        v47 = sub_182AD38C8();
        if (os_log_type_enabled(v46, v47))
        {
          LODWORD(v400) = v13;
          v401 = "d or unavailable";
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v427[0] = v49;
          *v48 = 136315650;
          v50 = sub_182AD3BF8();
          v52 = sub_181C64FFC(v50, v51, v427);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2080;
          *(v48 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v427);
          *(v48 + 22) = 2080;
          v13 = v13;
          *(v48 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BD8720, v427);
          _os_log_impl(&dword_181A37000, v46, v47, "%s %s %s", v48, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v49, -1, -1);
          MEMORY[0x1865DF520](v48, -1, -1);
        }

        v7 = log;
        sub_182016F14(0);
      }

      else
      {
        if (v13 && __nwlog_is_datapath_logging_enabled())
        {
          LODWORD(log) = v7;
          v401 = v6;
          LODWORD(v400) = v13;
          v396 = a1;
          v399 = v4;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v268 = sub_182AD2698();
          __swift_project_value_buffer(v268, qword_1EA843418);
          v269 = swift_allocObject();
          *(v269 + 16) = "sendPTO(connection:path:)";
          *(v269 + 24) = 25;
          *(v269 + 32) = 2;
          v270 = swift_allocObject();
          *(v270 + 16) = sub_181F8C724;
          *(v270 + 24) = v269;
          v271 = swift_allocObject();
          *(v271 + 16) = 1564427099;
          *(v271 + 24) = 0xE400000000000000;
          v272 = swift_allocObject();
          *(v272 + 16) = 0xD000000000000023;
          *(v272 + 24) = 0x8000000182BD8740;
          v273 = sub_182AD2678();
          v274 = sub_182AD38A8();
          v275 = swift_allocObject();
          *(v275 + 16) = 32;
          v343 = swift_allocObject();
          *(v343 + 16) = 8;
          v276 = swift_allocObject();
          *(v276 + 16) = sub_181F8C71C;
          *(v276 + 24) = v270;
          v277 = swift_allocObject();
          *(v277 + 16) = sub_181F8C718;
          *(v277 + 24) = v276;
          v350 = swift_allocObject();
          *(v350 + 16) = 32;
          v361 = swift_allocObject();
          LOBYTE(v361[2].isa) = 8;
          v278 = swift_allocObject();
          *(v278 + 16) = sub_181F8C720;
          *(v278 + 24) = v271;
          v279 = swift_allocObject();
          *(v279 + 16) = sub_181F8C718;
          *(v279 + 24) = v278;
          v372 = swift_allocObject();
          *(v372 + 16) = 32;
          oslogh = swift_allocObject();
          LOBYTE(oslogh[2].isa) = 8;
          v280 = swift_allocObject();
          *(v280 + 16) = sub_181F8C720;
          *(v280 + 24) = v272;
          v281 = swift_allocObject();
          *(v281 + 16) = sub_181F8C718;
          *(v281 + 24) = v280;
          v282 = v274;
          if (os_log_type_enabled(v273, v274))
          {
            v283 = swift_slowAlloc();
            v284 = swift_slowAlloc();
            *&v423[0] = 0;
            *v283 = 770;
            v335 = v284;
            *&v421[0] = v284;
            *&v425[0] = v283 + 2;
            *&v427[0] = sub_181F8C728;
            *(&v427[0] + 1) = v275;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C728;
            *(&v427[0] + 1) = v343;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C714;
            *(&v427[0] + 1) = v277;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C728;
            *(&v427[0] + 1) = v350;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C728;
            *(&v427[0] + 1) = v361;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C714;
            *(&v427[0] + 1) = v279;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C728;
            *(&v427[0] + 1) = v372;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C728;
            *(&v427[0] + 1) = oslogh;
            sub_181F73AE0(v427, v425, v423, v421);

            *&v427[0] = sub_181F8C714;
            *(&v427[0] + 1) = v281;
            sub_181F73AE0(v427, v425, v423, v421);
            v403 = 0;

            _os_log_impl(&dword_181A37000, v273, v282, "%s %s %s", v283, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v335, -1, -1);
            MEMORY[0x1865DF520](v283, -1, -1);
          }

          else
          {
          }

          a1 = v396;
          v4 = v399;
          v13 = v400;
          v7 = log;
        }

        v33 = *(v3 + 136);
        v427[6] = *(v3 + 120);
        v427[7] = v33;
        v427[8] = *(v3 + 152);
        v428 = *(v3 + 168);
        v34 = *(v3 + 72);
        v427[2] = *(v3 + 56);
        v427[3] = v34;
        v35 = *(v3 + 104);
        v427[4] = *(v3 + 88);
        v427[5] = v35;
        v36 = *(v3 + 40);
        v427[0] = *(v3 + 24);
        v427[1] = v36;
        sub_18201C7A8(v427, v425);
        sub_18201C7E0(v427, a1, &v410, v4);
        sub_182010E08(v427);
        swift_beginAccess();
        v37 = *(v3 + 288);
        v425[6] = *(v3 + 272);
        v425[7] = v37;
        v425[8] = *(v3 + 304);
        v426 = *(v3 + 320);
        v38 = *(v3 + 224);
        v425[2] = *(v3 + 208);
        v425[3] = v38;
        v39 = *(v3 + 256);
        v425[4] = *(v3 + 240);
        v425[5] = v39;
        v40 = *(v3 + 192);
        v425[0] = *(v3 + 176);
        v425[1] = v40;
        sub_18201C7A8(v425, v423);
        sub_18201C7E0(v425, a1, &v410, v4);
        sub_182010E08(v425);
        swift_beginAccess();
        v41 = *(v3 + 440);
        v423[6] = *(v3 + 424);
        v423[7] = v41;
        v423[8] = *(v3 + 456);
        v424 = *(v3 + 472);
        v42 = *(v3 + 376);
        v423[2] = *(v3 + 360);
        v423[3] = v42;
        v43 = *(v3 + 408);
        v423[4] = *(v3 + 392);
        v423[5] = v43;
        v44 = *(v3 + 344);
        v423[0] = *(v3 + 328);
        v423[1] = v44;
        sub_18201C7A8(v423, v421);
        sub_18201C7E0(v423, a1, &v410, v4);
        sub_182010E08(v423);
      }

LABEL_29:
      sub_182010E08(v429);
      goto LABEL_30;
    }

    if (!v13)
    {
      v410 = 1;
      sub_182047340(v4, 1, 0);
      goto LABEL_29;
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      LODWORD(log) = v7;
      v401 = v6;
      v399 = v4;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v221 = sub_182AD2698();
      __swift_project_value_buffer(v221, qword_1EA843418);
      v222 = swift_allocObject();
      *(v222 + 16) = "sendPTO(connection:path:)";
      *(v222 + 24) = 25;
      *(v222 + 32) = 2;
      v223 = swift_allocObject();
      *(v223 + 16) = sub_181F8C724;
      *(v223 + 24) = v222;
      v224 = swift_allocObject();
      *(v224 + 16) = 1564427099;
      *(v224 + 24) = 0xE400000000000000;
      v225 = swift_allocObject();
      *(v225 + 16) = 0xD000000000000029;
      *(v225 + 24) = 0x8000000182BD8770;
      v226 = sub_182AD2678();
      v227 = sub_182AD38A8();
      v333 = swift_allocObject();
      *(v333 + 16) = 32;
      v341 = swift_allocObject();
      *(v341 + 16) = 8;
      v228 = swift_allocObject();
      *(v228 + 16) = sub_181F8C71C;
      *(v228 + 24) = v223;
      v229 = swift_allocObject();
      *(v229 + 16) = sub_181F8C718;
      *(v229 + 24) = v228;
      v348 = swift_allocObject();
      *(v348 + 16) = 32;
      v358 = swift_allocObject();
      LOBYTE(v358[2].isa) = 8;
      v230 = swift_allocObject();
      *(v230 + 16) = sub_181F8C720;
      *(v230 + 24) = v224;
      v231 = swift_allocObject();
      *(v231 + 16) = sub_181F8C718;
      *(v231 + 24) = v230;
      v369 = swift_allocObject();
      *(v369 + 16) = 32;
      osloge = swift_allocObject();
      LOBYTE(osloge[2].isa) = 8;
      v232 = swift_allocObject();
      *(v232 + 16) = sub_181F8C720;
      *(v232 + 24) = v225;
      v233 = swift_allocObject();
      *(v233 + 16) = sub_181F8C718;
      *(v233 + 24) = v232;
      v234 = v226;
      if (os_log_type_enabled(v226, v227))
      {
        LODWORD(v400) = v13;
        v393 = a1;
        v235 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *&v423[0] = 0;
        *v235 = 770;
        v237 = v236;
        *&v421[0] = v236;
        *&v425[0] = v235 + 2;
        *&v427[0] = sub_181F8C728;
        *(&v427[0] + 1) = v333;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C728;
        *(&v427[0] + 1) = v341;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C714;
        *(&v427[0] + 1) = v229;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C728;
        *(&v427[0] + 1) = v348;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C728;
        *(&v427[0] + 1) = v358;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C714;
        *(&v427[0] + 1) = v231;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C728;
        *(&v427[0] + 1) = v369;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C728;
        *(&v427[0] + 1) = osloge;
        sub_181F73AE0(v427, v425, v423, v421);

        *&v427[0] = sub_181F8C714;
        *(&v427[0] + 1) = v233;
        sub_181F73AE0(v427, v425, v423, v421);
        v403 = 0;

        _os_log_impl(&dword_181A37000, v234, v227, "%s %s %s", v235, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v237, -1, -1);
        MEMORY[0x1865DF520](v235, -1, -1);

        a1 = v393;
        v4 = v399;
        v13 = 0;
      }

      else
      {

        v4 = v399;
      }

      v6 = v401;
      v7 = log;
    }

    v410 = 1;
    if ((sub_182047340(v4, 1, 0) & 1) != 0 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_29;
    }

    LODWORD(log) = v7;
    v401 = v6;
    LODWORD(v400) = v13;
    v387 = a1;
    v399 = v4;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);
    v16 = swift_allocObject();
    *(v16 + 16) = "sendPTO(connection:path:)";
    *(v16 + 24) = 25;
    *(v16 + 32) = 2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C724;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 1564427099;
    *(v18 + 24) = 0xE400000000000000;
    v19 = swift_allocObject();
    *(v19 + 16) = 0xD000000000000040;
    *(v19 + 24) = 0x8000000182BD86D0;
    v20 = sub_182AD2678();
    v21 = sub_182AD38A8();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v337 = swift_allocObject();
    *(v337 + 16) = 8;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C71C;
    *(v23 + 24) = v17;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_181F8C718;
    *(v24 + 24) = v23;
    v345 = swift_allocObject();
    *(v345 + 16) = 32;
    v353 = swift_allocObject();
    LOBYTE(v353[2].isa) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C720;
    *(v25 + 24) = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v364 = swift_allocObject();
    *(v364 + 16) = 32;
    oslog = swift_allocObject();
    LOBYTE(oslog[2].isa) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C720;
    *(v27 + 24) = v19;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C718;
    *(v28 + 24) = v27;
    v29 = v21;
    v30 = v20;
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_172:
      sub_182010E08(v429);

      goto LABEL_173;
    }

LABEL_14:
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v423[0] = 0;
    *v31 = 770;
    v331 = v32;
    *&v421[0] = v32;
    *&v425[0] = v31 + 2;
    *&v427[0] = sub_181F8C728;
    *(&v427[0] + 1) = v22;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C728;
    *(&v427[0] + 1) = v337;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C714;
    *(&v427[0] + 1) = v24;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C728;
    *(&v427[0] + 1) = v345;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C728;
    *(&v427[0] + 1) = v353;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C714;
    *(&v427[0] + 1) = v26;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C728;
    *(&v427[0] + 1) = v364;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C728;
    *(&v427[0] + 1) = oslog;
    sub_181F73AE0(v427, v425, v423, v421);

    *&v427[0] = sub_181F8C714;
    *(&v427[0] + 1) = v28;
    sub_181F73AE0(v427, v425, v423, v421);
    v403 = 0;

    _os_log_impl(&dword_181A37000, v30, v29, "%s %s %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v331, -1, -1);
    MEMORY[0x1865DF520](v31, -1, -1);
    sub_182010E08(v429);
LABEL_173:

    a1 = v387;
    v4 = v399;
    v13 = v400;
    v6 = v401;
    v7 = log;
LABEL_30:
    swift_beginAccess();
    v53 = *(v3 + 288);
    v408[6] = *(v3 + 272);
    v408[7] = v53;
    v408[8] = *(v3 + 304);
    v409 = *(v3 + 320);
    v54 = *(v3 + 224);
    v408[2] = *(v3 + 208);
    v408[3] = v54;
    v55 = *(v3 + 256);
    v408[4] = *(v3 + 240);
    v408[5] = v55;
    v56 = *(v3 + 192);
    v408[0] = *(v3 + 176);
    v408[1] = v56;
    v12 = *&v408[0];
    if (v13)
    {
      sub_18201C7A8(v408, v421);
      if (__nwlog_is_datapath_logging_enabled())
      {
        *&v421[0] = 0;
        *(&v421[0] + 1) = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0x626D756E204F5450, 0xEB00000000207265);
        LODWORD(log) = v7;
        if (v7)
        {
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);

          while (1)
          {

            __break(1u);
          }
        }

        v401 = v6;
        *&v419[0] = v6;
        v57 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v57);

        MEMORY[0x1865D9CA0](0x6F20646572696620, 0xEF2068746170206ELL);
        v399 = v4;
        *&v419[0] = *(v4 + 16);
        v58 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v58);

        MEMORY[0x1865D9CA0](0x206874697720, 0xE600000000000000);
        *&v419[0] = v12;
        v59 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v59);

        MEMORY[0x1865D9CA0](0xD000000000000021, 0x8000000182BD87A0);
        v60 = v421[0];
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v61 = sub_182AD2698();
        __swift_project_value_buffer(v61, qword_1EA843418);
        v62 = swift_allocObject();
        *(v62 + 16) = "sendPTO(connection:path:)";
        *(v62 + 24) = 25;
        *(v62 + 32) = 2;
        v63 = swift_allocObject();
        *(v63 + 16) = sub_181F8C724;
        *(v63 + 24) = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = 1564427099;
        *(v64 + 24) = 0xE400000000000000;
        v65 = swift_allocObject();
        *(v65 + 16) = v60;

        osloga = sub_182AD2678();
        v388 = sub_182AD38A8();
        v338 = swift_allocObject();
        *(v338 + 16) = 32;
        v346 = swift_allocObject();
        *(v346 + 16) = 8;
        v66 = swift_allocObject();
        *(v66 + 16) = sub_181F8C71C;
        *(v66 + 24) = v63;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_181F8C718;
        *(v67 + 24) = v66;
        v354 = swift_allocObject();
        LOBYTE(v354[2].isa) = 32;
        v365 = swift_allocObject();
        *(v365 + 16) = 8;
        v68 = swift_allocObject();
        *(v68 + 16) = sub_181F8C720;
        *(v68 + 24) = v64;
        v69 = swift_allocObject();
        *(v69 + 16) = sub_181F8C718;
        *(v69 + 24) = v68;
        v70 = swift_allocObject();
        *(v70 + 16) = 32;
        v71 = swift_allocObject();
        *(v71 + 16) = 8;
        v72 = swift_allocObject();
        *(v72 + 16) = sub_181F8C720;
        *(v72 + 24) = v65;
        v73 = swift_allocObject();
        *(v73 + 16) = sub_181F8C718;
        *(v73 + 24) = v72;
        if (os_log_type_enabled(osloga, v388))
        {
          v323 = v67;
          LODWORD(v400) = v13;
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v417[0] = 0;
          v324 = v75;
          *v74 = 770;
          *&v415[0] = v75;
          *&v419[0] = v74 + 2;
          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v338;
          sub_181F73AE0(v421, v419, v417, v415);
          v7 = log;

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v346;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C714;
          *(&v421[0] + 1) = v323;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v354;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v365;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C714;
          *(&v421[0] + 1) = v69;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v70;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v71;
          sub_181F73AE0(v421, v419, v417, v415);
          v4 = v399;

          *&v421[0] = sub_181F8C714;
          *(&v421[0] + 1) = v73;
          sub_181F73AE0(v421, v419, v417, v415);
          v6 = v401;
          v403 = 0;

          _os_log_impl(&dword_181A37000, osloga, v388, "%s %s %s", v74, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v324, -1, -1);
          MEMORY[0x1865DF520](v74, -1, -1);

          v13 = 0;
        }

        else
        {

          v4 = v399;
          v6 = v401;
          v7 = log;
        }
      }
    }

    else
    {
      sub_18201C7A8(v408, v421);
    }

    sub_182005A28(1, a1);
    if (sub_181F83128(v76))
    {
      if (v13)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          LODWORD(log) = v7;
          v401 = v6;
          v399 = v4;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v238 = sub_182AD2698();
          __swift_project_value_buffer(v238, qword_1EA843418);
          v239 = swift_allocObject();
          *(v239 + 16) = "sendPTO(connection:path:)";
          *(v239 + 24) = 25;
          *(v239 + 32) = 2;
          v240 = swift_allocObject();
          *(v240 + 16) = sub_181F8C724;
          *(v240 + 24) = v239;
          v241 = swift_allocObject();
          *(v241 + 16) = 1564427099;
          *(v241 + 24) = 0xE400000000000000;
          v242 = swift_allocObject();
          *(v242 + 16) = 0xD000000000000029;
          *(v242 + 24) = 0x8000000182BD8770;
          v243 = sub_182AD2678();
          v244 = sub_182AD38A8();
          v334 = swift_allocObject();
          *(v334 + 16) = 32;
          v342 = swift_allocObject();
          *(v342 + 16) = 8;
          v245 = swift_allocObject();
          *(v245 + 16) = sub_181F8C71C;
          *(v245 + 24) = v240;
          v246 = swift_allocObject();
          *(v246 + 16) = sub_181F8C718;
          *(v246 + 24) = v245;
          v349 = swift_allocObject();
          *(v349 + 16) = 32;
          v359 = swift_allocObject();
          LOBYTE(v359[2].isa) = 8;
          v247 = swift_allocObject();
          *(v247 + 16) = sub_181F8C720;
          *(v247 + 24) = v241;
          v12 = swift_allocObject();
          *(v12 + 16) = sub_181F8C718;
          *(v12 + 24) = v247;
          v370 = swift_allocObject();
          *(v370 + 16) = 32;
          oslogf = swift_allocObject();
          LOBYTE(oslogf[2].isa) = 8;
          v248 = swift_allocObject();
          *(v248 + 16) = sub_181F8C720;
          *(v248 + 24) = v242;
          v249 = swift_allocObject();
          *(v249 + 16) = sub_181F8C718;
          *(v249 + 24) = v248;
          v250 = v243;
          if (os_log_type_enabled(v243, v244))
          {
            LODWORD(v400) = v13;
            v394 = a1;
            v251 = swift_slowAlloc();
            v252 = swift_slowAlloc();
            *&v417[0] = 0;
            *v251 = 770;
            v253 = v252;
            *&v415[0] = v252;
            *&v419[0] = v251 + 2;
            *&v421[0] = sub_181F8C728;
            *(&v421[0] + 1) = v334;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C728;
            *(&v421[0] + 1) = v342;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C714;
            *(&v421[0] + 1) = v246;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C728;
            *(&v421[0] + 1) = v349;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C728;
            *(&v421[0] + 1) = v359;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C714;
            *(&v421[0] + 1) = v12;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C728;
            *(&v421[0] + 1) = v370;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C728;
            *(&v421[0] + 1) = oslogf;
            sub_181F73AE0(v421, v419, v417, v415);

            *&v421[0] = sub_181F8C714;
            *(&v421[0] + 1) = v249;
            sub_181F73AE0(v421, v419, v417, v415);
            v403 = 0;

            _os_log_impl(&dword_181A37000, v250, v244, "%s %s %s", v251, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v253, -1, -1);
            MEMORY[0x1865DF520](v251, -1, -1);

            a1 = v394;
            v4 = v399;
            v13 = 0;
          }

          else
          {

            v4 = v399;
          }

          v6 = v401;
          v7 = log;
        }

        v410 = 1;
        if ((sub_182047340(v4, 1, 0) & 1) != 0 || !__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_52;
        }

        LODWORD(log) = v7;
        v401 = v6;
        LODWORD(v400) = v13;
        v389 = a1;
        v399 = v4;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v77 = sub_182AD2698();
        __swift_project_value_buffer(v77, qword_1EA843418);
        v78 = swift_allocObject();
        *(v78 + 16) = "sendPTO(connection:path:)";
        *(v78 + 24) = 25;
        *(v78 + 32) = 2;
        v79 = swift_allocObject();
        *(v79 + 16) = sub_181F8C724;
        *(v79 + 24) = v78;
        v80 = swift_allocObject();
        *(v80 + 16) = 1564427099;
        *(v80 + 24) = 0xE400000000000000;
        v81 = swift_allocObject();
        *(v81 + 16) = 0xD000000000000040;
        *(v81 + 24) = 0x8000000182BD86D0;
        v82 = sub_182AD2678();
        v83 = sub_182AD38A8();
        v84 = swift_allocObject();
        *(v84 + 16) = 32;
        v339 = swift_allocObject();
        *(v339 + 16) = 8;
        v85 = swift_allocObject();
        *(v85 + 16) = sub_181F8C71C;
        *(v85 + 24) = v79;
        v86 = swift_allocObject();
        *(v86 + 16) = sub_181F8C718;
        *(v86 + 24) = v85;
        v347 = swift_allocObject();
        *(v347 + 16) = 32;
        v355 = swift_allocObject();
        LOBYTE(v355[2].isa) = 8;
        v87 = swift_allocObject();
        *(v87 + 16) = sub_181F8C720;
        *(v87 + 24) = v80;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_181F8C718;
        *(v12 + 24) = v87;
        v366 = swift_allocObject();
        *(v366 + 16) = 32;
        oslogb = swift_allocObject();
        LOBYTE(oslogb[2].isa) = 8;
        v88 = swift_allocObject();
        *(v88 + 16) = sub_181F8C720;
        *(v88 + 24) = v81;
        v89 = swift_allocObject();
        *(v89 + 16) = sub_181F8C718;
        *(v89 + 24) = v88;
        v90 = v83;
        v91 = v82;
        if (!os_log_type_enabled(v82, v83))
        {
          goto LABEL_174;
        }

        goto LABEL_46;
      }

      v410 = 1;
      sub_182047340(v4, 1, 0);
LABEL_52:
      sub_182010E08(v408);
      goto LABEL_53;
    }

    if (v12 > 0)
    {
      if (v13 && __nwlog_is_datapath_logging_enabled())
      {
        LODWORD(log) = v7;
        v401 = v6;
        LODWORD(v400) = v13;
        v397 = a1;
        v399 = v4;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v285 = sub_182AD2698();
        __swift_project_value_buffer(v285, qword_1EA843418);
        v286 = swift_allocObject();
        *(v286 + 16) = "sendPTO(connection:path:)";
        *(v286 + 24) = 25;
        *(v286 + 32) = 2;
        v287 = swift_allocObject();
        *(v287 + 16) = sub_181F8C724;
        *(v287 + 24) = v286;
        v288 = swift_allocObject();
        *(v288 + 16) = 1564427099;
        *(v288 + 24) = 0xE400000000000000;
        v289 = swift_allocObject();
        *(v289 + 16) = 0xD000000000000023;
        *(v289 + 24) = 0x8000000182BD8740;
        v290 = sub_182AD2678();
        v291 = sub_182AD38A8();
        v292 = swift_allocObject();
        *(v292 + 16) = 32;
        v344 = swift_allocObject();
        *(v344 + 16) = 8;
        v293 = swift_allocObject();
        *(v293 + 16) = sub_181F8C71C;
        *(v293 + 24) = v287;
        v294 = swift_allocObject();
        *(v294 + 16) = sub_181F8C718;
        *(v294 + 24) = v293;
        v351 = swift_allocObject();
        *(v351 + 16) = 32;
        v362 = swift_allocObject();
        LOBYTE(v362[2].isa) = 8;
        v295 = swift_allocObject();
        *(v295 + 16) = sub_181F8C720;
        *(v295 + 24) = v288;
        v12 = swift_allocObject();
        *(v12 + 16) = sub_181F8C718;
        *(v12 + 24) = v295;
        v373 = swift_allocObject();
        *(v373 + 16) = 32;
        oslogi = swift_allocObject();
        LOBYTE(oslogi[2].isa) = 8;
        v296 = swift_allocObject();
        *(v296 + 16) = sub_181F8C720;
        *(v296 + 24) = v289;
        v297 = swift_allocObject();
        *(v297 + 16) = sub_181F8C718;
        *(v297 + 24) = v296;
        v298 = v291;
        if (os_log_type_enabled(v290, v291))
        {
          v299 = swift_slowAlloc();
          v300 = swift_slowAlloc();
          *&v417[0] = 0;
          *v299 = 770;
          v336 = v300;
          *&v415[0] = v300;
          *&v419[0] = v299 + 2;
          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v292;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v344;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C714;
          *(&v421[0] + 1) = v294;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v351;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v362;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C714;
          *(&v421[0] + 1) = v12;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = v373;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C728;
          *(&v421[0] + 1) = oslogi;
          sub_181F73AE0(v421, v419, v417, v415);

          *&v421[0] = sub_181F8C714;
          *(&v421[0] + 1) = v297;
          sub_181F73AE0(v421, v419, v417, v415);
          v403 = 0;

          _os_log_impl(&dword_181A37000, v290, v298, "%s %s %s", v299, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v336, -1, -1);
          MEMORY[0x1865DF520](v299, -1, -1);
        }

        else
        {
        }

        a1 = v397;
        v4 = v399;
        v13 = v400;
        v7 = log;
      }

      v94 = *(v3 + 136);
      v421[6] = *(v3 + 120);
      v421[7] = v94;
      v421[8] = *(v3 + 152);
      v422 = *(v3 + 168);
      v95 = *(v3 + 72);
      v421[2] = *(v3 + 56);
      v421[3] = v95;
      v96 = *(v3 + 104);
      v421[4] = *(v3 + 88);
      v421[5] = v96;
      v97 = *(v3 + 40);
      v421[0] = *(v3 + 24);
      v421[1] = v97;
      sub_18201C7A8(v421, v419);
      sub_18201C7E0(v421, a1, &v410, v4);
      sub_182010E08(v421);
      v98 = *(v3 + 288);
      v419[6] = *(v3 + 272);
      v419[7] = v98;
      v419[8] = *(v3 + 304);
      v420 = *(v3 + 320);
      v99 = *(v3 + 224);
      v419[2] = *(v3 + 208);
      v419[3] = v99;
      v100 = *(v3 + 256);
      v419[4] = *(v3 + 240);
      v419[5] = v100;
      v101 = *(v3 + 192);
      v419[0] = *(v3 + 176);
      v419[1] = v101;
      sub_18201C7A8(v419, v417);
      sub_18201C7E0(v419, a1, &v410, v4);
      sub_182010E08(v419);
      swift_beginAccess();
      v102 = *(v3 + 440);
      v417[6] = *(v3 + 424);
      v417[7] = v102;
      v417[8] = *(v3 + 456);
      v418 = *(v3 + 472);
      v103 = *(v3 + 376);
      v417[2] = *(v3 + 360);
      v417[3] = v103;
      v104 = *(v3 + 408);
      v417[4] = *(v3 + 392);
      v417[5] = v104;
      v105 = *(v3 + 344);
      v417[0] = *(v3 + 328);
      v417[1] = v105;
      sub_18201C7A8(v417, v415);
      sub_18201C7E0(v417, a1, &v410, v4);
      sub_182010E08(v417);
      goto LABEL_52;
    }

    LODWORD(log) = v7;
    if ((*(a1 + 1024) & 1) != 0 || (*(a1 + 1125) & 1) != 0 || (*(v3 + 483) & 1) != 0 || *(v3 + 484) == 1)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v152 = sub_182AD2698();
      __swift_project_value_buffer(v152, qword_1EA843418);
      v153 = sub_182AD2678();
      v154 = sub_182AD38C8();
      if (os_log_type_enabled(v153, v154))
      {
        v400 = "d or unavailable";
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *&v421[0] = v156;
        *v155 = 136315650;
        v157 = sub_182AD3BF8();
        v401 = v6;
        v12 = sub_181C64FFC(v157, v158, v421);

        *(v155 + 4) = v12;
        *(v155 + 12) = 2080;
        *(v155 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v421);
        *(v155 + 22) = 2080;
        *(v155 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BD8720, v421);
        _os_log_impl(&dword_181A37000, v153, v154, "%s %s %s", v155, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v156, -1, -1);
        MEMORY[0x1865DF520](v155, -1, -1);
      }

      sub_182016F14(0);
      sub_182010E08(v408);
      goto LABEL_85;
    }

    v180 = *(a1 + 1034);
    v410 = 1;
    if (v180)
    {
      v181 = 0x800000000000002;
    }

    else
    {
      v181 = 0x800000000000202;
    }

    *&v421[0] = 1;
    *(&v421[0] + 1) = v181;

    sub_181F82F10(2u, v421);

    if ((sub_182047340(v4, 1, 0) & 1) != 0 || (v13 & 1) == 0 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_52;
    }

    v401 = v6;
    LODWORD(v400) = v13;
    v389 = a1;
    v399 = v4;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v182 = sub_182AD2698();
    __swift_project_value_buffer(v182, qword_1EA843418);
    v183 = swift_allocObject();
    *(v183 + 16) = "sendPTO(connection:path:)";
    *(v183 + 24) = 25;
    *(v183 + 32) = 2;
    v184 = swift_allocObject();
    *(v184 + 16) = sub_181F8C724;
    *(v184 + 24) = v183;
    v185 = swift_allocObject();
    *(v185 + 16) = 1564427099;
    *(v185 + 24) = 0xE400000000000000;
    v186 = swift_allocObject();
    *(v186 + 16) = 0xD000000000000040;
    *(v186 + 24) = 0x8000000182BD86D0;
    v187 = sub_182AD2678();
    v188 = sub_182AD38A8();
    v84 = swift_allocObject();
    *(v84 + 16) = 32;
    v339 = swift_allocObject();
    *(v339 + 16) = 8;
    v189 = swift_allocObject();
    *(v189 + 16) = sub_181F8C71C;
    *(v189 + 24) = v184;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_181F8C718;
    *(v86 + 24) = v189;
    v347 = swift_allocObject();
    *(v347 + 16) = 32;
    v355 = swift_allocObject();
    LOBYTE(v355[2].isa) = 8;
    v190 = swift_allocObject();
    *(v190 + 16) = sub_181F8C720;
    *(v190 + 24) = v185;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C718;
    *(v12 + 24) = v190;
    v366 = swift_allocObject();
    *(v366 + 16) = 32;
    oslogb = swift_allocObject();
    LOBYTE(oslogb[2].isa) = 8;
    v191 = swift_allocObject();
    *(v191 + 16) = sub_181F8C720;
    *(v191 + 24) = v186;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_181F8C718;
    *(v89 + 24) = v191;
    v90 = v188;
    v91 = v187;
    if (!os_log_type_enabled(v187, v188))
    {
LABEL_174:
      sub_182010E08(v408);

      goto LABEL_175;
    }

LABEL_46:
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v417[0] = 0;
    *v92 = 770;
    v332 = v93;
    *&v415[0] = v93;
    *&v419[0] = v92 + 2;
    *&v421[0] = sub_181F8C728;
    *(&v421[0] + 1) = v84;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C728;
    *(&v421[0] + 1) = v339;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C714;
    *(&v421[0] + 1) = v86;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C728;
    *(&v421[0] + 1) = v347;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C728;
    *(&v421[0] + 1) = v355;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C714;
    *(&v421[0] + 1) = v12;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C728;
    *(&v421[0] + 1) = v366;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C728;
    *(&v421[0] + 1) = oslogb;
    sub_181F73AE0(v421, v419, v417, v415);

    *&v421[0] = sub_181F8C714;
    *(&v421[0] + 1) = v89;
    sub_181F73AE0(v421, v419, v417, v415);
    v403 = 0;

    _os_log_impl(&dword_181A37000, v91, v90, "%s %s %s", v92, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v332, -1, -1);
    MEMORY[0x1865DF520](v92, -1, -1);
    sub_182010E08(v408);
LABEL_175:

    a1 = v389;
    v4 = v399;
    v13 = v400;
    v6 = v401;
LABEL_85:
    v7 = log;
LABEL_53:
    swift_beginAccess();
    v106 = *(v3 + 440);
    v406[6] = *(v3 + 424);
    v406[7] = v106;
    v406[8] = *(v3 + 456);
    v407 = *(v3 + 472);
    v107 = *(v3 + 376);
    v406[2] = *(v3 + 360);
    v406[3] = v107;
    v108 = *(v3 + 408);
    v406[4] = *(v3 + 392);
    v406[5] = v108;
    v109 = *(v3 + 344);
    v406[0] = *(v3 + 328);
    v406[1] = v109;
    v110 = *&v406[0];
    if (v13)
    {
      sub_18201C7A8(v406, v415);
      if (__nwlog_is_datapath_logging_enabled())
      {
        v399 = v4;
        *&v415[0] = 0;
        *(&v415[0] + 1) = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0x626D756E204F5450, 0xEB00000000207265);
        if (v7)
        {
          goto LABEL_187;
        }

        *&v413[0] = v6;
        v111 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v111);

        MEMORY[0x1865D9CA0](0x6F20646572696620, 0xEF2068746170206ELL);
        *&v413[0] = *(v4 + 16);
        v112 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v112);

        MEMORY[0x1865D9CA0](0x206874697720, 0xE600000000000000);
        *&v413[0] = v110;
        v113 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v113);

        MEMORY[0x1865D9CA0](0xD000000000000021, 0x8000000182BD87A0);
        v114 = v415[0];
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v115 = sub_182AD2698();
        __swift_project_value_buffer(v115, qword_1EA843418);
        v116 = swift_allocObject();
        *(v116 + 16) = "sendPTO(connection:path:)";
        *(v116 + 24) = 25;
        *(v116 + 32) = 2;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_181F8C724;
        *(v117 + 24) = v116;
        v118 = swift_allocObject();
        *(v118 + 16) = 1564427099;
        *(v118 + 24) = 0xE400000000000000;
        v119 = swift_allocObject();
        *(v119 + 16) = v114;

        log = sub_182AD2678();
        LODWORD(v401) = sub_182AD38A8();
        v356 = swift_allocObject();
        LOBYTE(v356[2].isa) = 32;
        v340 = swift_allocObject();
        *(v340 + 16) = 8;
        v120 = swift_allocObject();
        *(v120 + 16) = sub_181F8C71C;
        *(v120 + 24) = v117;
        v121 = swift_allocObject();
        *(v121 + 16) = sub_181F8C718;
        *(v121 + 24) = v120;
        oslogc = v121;
        v367 = swift_allocObject();
        *(v367 + 16) = 32;
        v390 = swift_allocObject();
        LOBYTE(v390[2].isa) = 8;
        v122 = swift_allocObject();
        *(v122 + 16) = sub_181F8C720;
        *(v122 + 24) = v118;
        v123 = swift_allocObject();
        *(v123 + 16) = sub_181F8C718;
        *(v123 + 24) = v122;
        v12 = swift_allocObject();
        *(v12 + 16) = 32;
        v7 = swift_allocObject();
        *(v7 + 16) = 8;
        v124 = swift_allocObject();
        *(v124 + 16) = sub_181F8C720;
        *(v124 + 24) = v119;
        v6 = swift_allocObject();
        *(v6 + 16) = sub_181F8C718;
        *(v6 + 24) = v124;
        if (os_log_type_enabled(log, v401))
        {
          v328 = v123;
          LODWORD(v400) = v13;
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *&v411[0] = 0;
          buf = v126;
          *v125 = 770;
          v405[0] = v126;
          *&v413[0] = v125 + 1;
          *&v415[0] = sub_181F8C728;
          *(&v415[0] + 1) = v356;
          sub_181F73AE0(v415, v413, v411, v405);
          v4 = v399;

          *&v415[0] = sub_181F8C728;
          *(&v415[0] + 1) = v340;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C714;
          *(&v415[0] + 1) = oslogc;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C728;
          *(&v415[0] + 1) = v367;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C728;
          *(&v415[0] + 1) = v390;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C714;
          *(&v415[0] + 1) = v328;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C728;
          *(&v415[0] + 1) = v12;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C728;
          *(&v415[0] + 1) = v7;
          sub_181F73AE0(v415, v413, v411, v405);

          *&v415[0] = sub_181F8C714;
          v12 = v6;
          *(&v415[0] + 1) = v6;
          sub_181F73AE0(v415, v413, v411, v405);
          v403 = 0;

          v6 = log;
          _os_log_impl(&dword_181A37000, log, v401, "%s %s %s", 0, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](buf, -1, -1);
          MEMORY[0x1865DF520](0, -1, -1);

          v13 = v400;
        }

        else
        {

          v4 = v399;
        }
      }
    }

    else
    {
      sub_18201C7A8(v406, v415);
    }

    sub_182005A28(1, a1);
    if ((sub_181F83128(v127) & 1) == 0)
    {
      if (v110 <= 0)
      {
        if ((*(a1 + 1024) & 1) != 0 || (*(a1 + 1125) & 1) != 0 || (*(v3 + 483) & 1) != 0 || *(v3 + 484) == 1)
        {
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v159 = sub_182AD2698();
          __swift_project_value_buffer(v159, qword_1EA843418);
          v160 = sub_182AD2678();
          a1 = sub_182AD38C8();
          if (os_log_type_enabled(v160, a1))
          {
            v6 = "d or unavailable";
            v13 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *&v415[0] = v161;
            *v13 = 136315650;
            v162 = sub_182AD3BF8();
            v164 = sub_181C64FFC(v162, v163, v415);

            *(v13 + 4) = v164;
            v7 = 2080;
            *(v13 + 12) = 2080;
            *(v13 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v415);
            *(v13 + 22) = 2080;
            *(v13 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BD8720, v415);
            _os_log_impl(&dword_181A37000, v160, a1, "%s %s %s", v13, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v161, -1, -1);
            MEMORY[0x1865DF520](v13, -1, -1);
          }

          sub_182016F14(0);
        }

        else
        {
          v192 = *(a1 + 1034);
          v410 = 1;
          if (v192)
          {
            v193 = 0x800000000000002;
          }

          else
          {
            v193 = 0x800000000000202;
          }

          *&v415[0] = 1;
          *(&v415[0] + 1) = v193;

          sub_181F82F10(2u, v415);

          if ((sub_182047340(v4, 1, 0) & 1) == 0 && (v13 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
          {
            v399 = v4;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v194 = sub_182AD2698();
            __swift_project_value_buffer(v194, qword_1EA843418);
            v195 = swift_allocObject();
            *(v195 + 16) = "sendPTO(connection:path:)";
            *(v195 + 24) = 25;
            *(v195 + 32) = 2;
            v196 = swift_allocObject();
            *(v196 + 16) = sub_181F8C724;
            *(v196 + 24) = v195;
            v197 = swift_allocObject();
            *(v197 + 16) = 1564427099;
            *(v197 + 24) = 0xE400000000000000;
            v198 = swift_allocObject();
            *(v198 + 16) = 0xD000000000000040;
            *(v198 + 24) = 0x8000000182BD86D0;
            v13 = sub_182AD2678();
            v6 = sub_182AD38A8();
            v3 = swift_allocObject();
            *(v3 + 16) = 32;
            v133 = swift_allocObject();
            *(v133 + 16) = 8;
            v199 = swift_allocObject();
            *(v199 + 16) = sub_181F8C71C;
            *(v199 + 24) = v196;
            v135 = swift_allocObject();
            *(v135 + 16) = sub_181F8C718;
            *(v135 + 24) = v199;
            v400 = swift_allocObject();
            v400[16] = 32;
            v401 = swift_allocObject();
            v401[16] = 8;
            v200 = swift_allocObject();
            *(v200 + 16) = sub_181F8C720;
            *(v200 + 24) = v197;
            v7 = swift_allocObject();
            *(v7 + 16) = sub_181F8C718;
            *(v7 + 24) = v200;
            v391 = swift_allocObject();
            LOBYTE(v391[2].isa) = 32;
            log = swift_allocObject();
            LOBYTE(log[2].isa) = 8;
            v201 = swift_allocObject();
            *(v201 + 16) = sub_181F8C720;
            *(v201 + 24) = v198;
            a1 = swift_allocObject();
            *(a1 + 16) = sub_181F8C718;
            *(a1 + 24) = v201;
            v12 = v6;
            v138 = v13;
            if (os_log_type_enabled(v13, v6))
            {
              goto LABEL_69;
            }

            goto LABEL_176;
          }
        }
      }

      else
      {
        if (v13 && __nwlog_is_datapath_logging_enabled())
        {
          v398 = a1;
          v399 = v4;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v301 = sub_182AD2698();
          __swift_project_value_buffer(v301, qword_1EA843418);
          v302 = swift_allocObject();
          *(v302 + 16) = "sendPTO(connection:path:)";
          *(v302 + 24) = 25;
          *(v302 + 32) = 2;
          v303 = swift_allocObject();
          *(v303 + 16) = sub_181F8C724;
          *(v303 + 24) = v302;
          v304 = swift_allocObject();
          *(v304 + 16) = 1564427099;
          *(v304 + 24) = 0xE400000000000000;
          v305 = swift_allocObject();
          *(v305 + 16) = 0xD000000000000023;
          *(v305 + 24) = 0x8000000182BD8740;
          v13 = sub_182AD2678();
          v306 = sub_182AD38A8();
          v363 = swift_allocObject();
          LOBYTE(v363[2].isa) = 32;
          v374 = swift_allocObject();
          *(v374 + 16) = 8;
          v307 = swift_allocObject();
          *(v307 + 16) = sub_181F8C71C;
          *(v307 + 24) = v303;
          v12 = swift_allocObject();
          *(v12 + 16) = sub_181F8C718;
          *(v12 + 24) = v307;
          oslogj = swift_allocObject();
          LOBYTE(oslogj[2].isa) = 32;
          v6 = 32;
          v400 = swift_allocObject();
          v400[16] = 8;
          v308 = swift_allocObject();
          *(v308 + 16) = sub_181F8C720;
          *(v308 + 24) = v304;
          v309 = swift_allocObject();
          *(v309 + 16) = sub_181F8C718;
          *(v309 + 24) = v308;
          v401 = swift_allocObject();
          v401[16] = 32;
          log = swift_allocObject();
          LOBYTE(log[2].isa) = 8;
          v310 = swift_allocObject();
          *(v310 + 16) = sub_181F8C720;
          *(v310 + 24) = v305;
          v311 = swift_allocObject();
          *(v311 + 16) = sub_181F8C718;
          *(v311 + 24) = v310;
          v7 = v306;
          v312 = v13;
          if (os_log_type_enabled(v13, v306))
          {
            v313 = swift_slowAlloc();
            v314 = swift_slowAlloc();
            *&v411[0] = 0;
            *v313 = 770;
            v352 = v314;
            v405[0] = v314;
            *&v413[0] = v313 + 2;
            *&v415[0] = sub_181F8C728;
            *(&v415[0] + 1) = v363;
            v13 = 0;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C728;
            *(&v415[0] + 1) = v374;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C714;
            *(&v415[0] + 1) = v12;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C728;
            *(&v415[0] + 1) = oslogj;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C728;
            *(&v415[0] + 1) = v400;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C714;
            *(&v415[0] + 1) = v309;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C728;
            *(&v415[0] + 1) = v401;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C728;
            *(&v415[0] + 1) = log;
            sub_181F73AE0(v415, v413, v411, v405);

            *&v415[0] = sub_181F8C714;
            *(&v415[0] + 1) = v311;
            sub_181F73AE0(v415, v413, v411, v405);

            _os_log_impl(&dword_181A37000, v312, v7, "%s %s %s", v313, 0x20u);
            v6 = v352;
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v352, -1, -1);
            MEMORY[0x1865DF520](v313, -1, -1);
          }

          else
          {
          }

          a1 = v398;
          v4 = v399;
        }

        v140 = *(v3 + 136);
        v415[6] = *(v3 + 120);
        v415[7] = v140;
        v415[8] = *(v3 + 152);
        v416 = *(v3 + 168);
        v141 = *(v3 + 72);
        v415[2] = *(v3 + 56);
        v415[3] = v141;
        v142 = *(v3 + 104);
        v415[4] = *(v3 + 88);
        v415[5] = v142;
        v143 = *(v3 + 40);
        v415[0] = *(v3 + 24);
        v415[1] = v143;
        sub_18201C7A8(v415, v413);
        sub_18201C7E0(v415, a1, &v410, v4);
        sub_182010E08(v415);
        v144 = *(v3 + 272);
        v413[7] = *(v3 + 288);
        v413[8] = *(v3 + 304);
        v414 = *(v3 + 320);
        v145 = *(v3 + 224);
        v413[2] = *(v3 + 208);
        v413[3] = v145;
        v146 = *(v3 + 256);
        v413[4] = *(v3 + 240);
        v413[5] = v146;
        v413[6] = v144;
        v147 = *(v3 + 192);
        v413[0] = *(v3 + 176);
        v413[1] = v147;
        sub_18201C7A8(v413, v411);
        sub_18201C7E0(v413, a1, &v410, v4);
        sub_182010E08(v413);
        v148 = *(v3 + 440);
        v411[6] = *(v3 + 424);
        v411[7] = v148;
        v411[8] = *(v3 + 456);
        v412 = *(v3 + 472);
        v149 = *(v3 + 376);
        v411[2] = *(v3 + 360);
        v411[3] = v149;
        v150 = *(v3 + 408);
        v411[4] = *(v3 + 392);
        v411[5] = v150;
        v151 = *(v3 + 344);
        v411[0] = *(v3 + 328);
        v411[1] = v151;
        sub_18201C7A8(v411, v405);
        sub_18201C7E0(v411, a1, &v410, v4);
        sub_182010E08(v411);
      }

      goto LABEL_95;
    }

    if (!v13)
    {
      v410 = 1;
      if ((sub_182047340(v4, 1, 0) & 1) == 0)
      {
        sub_182010E08(v406);
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    if (__nwlog_is_datapath_logging_enabled())
    {
      v399 = v4;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v254 = sub_182AD2698();
      __swift_project_value_buffer(v254, qword_1EA843418);
      v255 = swift_allocObject();
      *(v255 + 16) = "sendPTO(connection:path:)";
      *(v255 + 24) = 25;
      *(v255 + 32) = 2;
      v256 = swift_allocObject();
      *(v256 + 16) = sub_181F8C724;
      *(v256 + 24) = v255;
      v257 = swift_allocObject();
      *(v257 + 16) = 1564427099;
      *(v257 + 24) = 0xE400000000000000;
      v258 = swift_allocObject();
      *(v258 + 16) = 0xD000000000000029;
      *(v258 + 24) = 0x8000000182BD8770;
      v13 = sub_182AD2678();
      v6 = sub_182AD38A8();
      v371 = swift_allocObject();
      *(v371 + 16) = 32;
      oslogg = swift_allocObject();
      LOBYTE(oslogg[2].isa) = 8;
      v259 = swift_allocObject();
      *(v259 + 16) = sub_181F8C71C;
      *(v259 + 24) = v256;
      v260 = swift_allocObject();
      *(v260 + 16) = sub_181F8C718;
      *(v260 + 24) = v259;
      v7 = swift_allocObject();
      *(v7 + 16) = 32;
      v400 = swift_allocObject();
      v400[16] = 8;
      v261 = swift_allocObject();
      *(v261 + 16) = sub_181F8C720;
      *(v261 + 24) = v257;
      v262 = swift_allocObject();
      *(v262 + 16) = sub_181F8C718;
      *(v262 + 24) = v261;
      v401 = swift_allocObject();
      v401[16] = 32;
      log = swift_allocObject();
      LOBYTE(log[2].isa) = 8;
      v263 = swift_allocObject();
      *(v263 + 16) = sub_181F8C720;
      *(v263 + 24) = v258;
      v3 = swift_allocObject();
      *(v3 + 16) = sub_181F8C718;
      *(v3 + 24) = v263;
      v12 = v6;
      if (os_log_type_enabled(v13, v6))
      {
        v360 = v13;
        v395 = a1;
        v264 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *&v411[0] = 0;
        v266 = v264;
        *v264 = 770;
        v267 = v265;
        v405[0] = v265;
        *&v413[0] = v264 + 2;
        *&v415[0] = sub_181F8C728;
        *(&v415[0] + 1) = v371;
        v13 = 0;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C728;
        *(&v415[0] + 1) = oslogg;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C714;
        *(&v415[0] + 1) = v260;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C728;
        *(&v415[0] + 1) = v7;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C728;
        *(&v415[0] + 1) = v400;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C714;
        *(&v415[0] + 1) = v262;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C728;
        *(&v415[0] + 1) = v401;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C728;
        v6 = log;
        *(&v415[0] + 1) = log;
        sub_181F73AE0(v415, v413, v411, v405);

        *&v415[0] = sub_181F8C714;
        *(&v415[0] + 1) = v3;
        sub_181F73AE0(v415, v413, v411, v405);
        v403 = 0;

        _os_log_impl(&dword_181A37000, v360, v12, "%s %s %s", v266, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v267, -1, -1);
        MEMORY[0x1865DF520](v266, -1, -1);

        a1 = v395;
        v4 = v399;
      }

      else
      {

        v4 = v399;
      }
    }

    v410 = 1;
    if ((sub_182047340(v4, 1, 0) & 1) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        break;
      }
    }

LABEL_95:
    sub_182010E08(v406);
    if ((v410 & 1) == 0)
    {
      goto LABEL_178;
    }

LABEL_96:
    if (*(v4 + 1016))
    {
      __break(1u);
LABEL_184:
      swift_once();
      goto LABEL_132;
    }

    v165 = *(v4 + 992);
    v166 = __OFADD__(v165, 1);
    v167 = v165 + 1;
    if (!v166)
    {
      *(v4 + 992) = v167;
      return;
    }

    __break(1u);
LABEL_130:
    LODWORD(v400) = v13;
    *&v427[0] = 0;
    *(&v427[0] + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x626D756E204F5450, 0xEB00000000207265);
    LODWORD(log) = v7;
    if (v7)
    {
      goto LABEL_186;
    }

    v401 = v6;
    *&v425[0] = v6;
    v202 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v202);

    MEMORY[0x1865D9CA0](0x6F20646572696620, 0xEF2068746170206ELL);
    v399 = v4;
    *&v425[0] = *(v4 + 16);
    v203 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v203);

    MEMORY[0x1865D9CA0](0x206874697720, 0xE600000000000000);
    *&v425[0] = v12;
    v204 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v204);

    MEMORY[0x1865D9CA0](0xD000000000000021, 0x8000000182BD87A0);
    v6 = *(&v427[0] + 1);
    v7 = *&v427[0];
    if (qword_1EA837248 != -1)
    {
      goto LABEL_184;
    }

LABEL_132:
    v205 = sub_182AD2698();
    __swift_project_value_buffer(v205, qword_1EA843418);
    v206 = swift_allocObject();
    *(v206 + 16) = "sendPTO(connection:path:)";
    *(v206 + 24) = 25;
    *(v206 + 32) = 2;
    v207 = swift_allocObject();
    *(v207 + 16) = sub_181F8C724;
    *(v207 + 24) = v206;
    v208 = swift_allocObject();
    *(v208 + 16) = 1564427099;
    *(v208 + 24) = 0xE400000000000000;
    v209 = swift_allocObject();
    *(v209 + 16) = v7;
    *(v209 + 24) = v6;

    v392 = sub_182AD2678();
    oslogd = sub_182AD38A8();
    v357 = swift_allocObject();
    LOBYTE(v357[2].isa) = 32;
    v368 = swift_allocObject();
    *(v368 + 16) = 8;
    v210 = swift_allocObject();
    *(v210 + 16) = sub_181F8C71C;
    *(v210 + 24) = v207;
    v211 = swift_allocObject();
    *(v211 + 16) = sub_181F8C718;
    *(v211 + 24) = v210;
    v404 = swift_allocObject();
    v404[16] = 32;
    v212 = swift_allocObject();
    *(v212 + 16) = 8;
    v213 = swift_allocObject();
    *(v213 + 16) = sub_181F8C720;
    *(v213 + 24) = v208;
    v214 = swift_allocObject();
    *(v214 + 16) = sub_181F8C718;
    *(v214 + 24) = v213;
    v215 = swift_allocObject();
    *(v215 + 16) = 32;
    v216 = swift_allocObject();
    *(v216 + 16) = 8;
    v217 = swift_allocObject();
    *(v217 + 16) = sub_181F8C720;
    *(v217 + 24) = v209;
    v218 = swift_allocObject();
    *(v218 + 16) = sub_181F8C718;
    *(v218 + 24) = v217;
    if (os_log_type_enabled(v392, oslogd))
    {
      bufa = v211;
      v330 = v212;
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      *&v423[0] = 0;
      v327 = v220;
      v329 = v219;
      *v219 = 770;
      *&v421[0] = v220;
      *&v425[0] = v219 + 2;
      *&v427[0] = sub_181F8C728;
      *(&v427[0] + 1) = v357;
      sub_181F73AE0(v427, v425, v423, v421);
      v7 = log;

      *&v427[0] = sub_181F8C728;
      *(&v427[0] + 1) = v368;
      sub_181F73AE0(v427, v425, v423, v421);

      *&v427[0] = sub_181F8C714;
      *(&v427[0] + 1) = bufa;
      sub_181F73AE0(v427, v425, v423, v421);

      *&v427[0] = sub_181F8C728;
      *(&v427[0] + 1) = v404;
      sub_181F73AE0(v427, v425, v423, v421);

      *&v427[0] = sub_181F8C728;
      *(&v427[0] + 1) = v330;
      sub_181F73AE0(v427, v425, v423, v421);

      *&v427[0] = sub_181F8C714;
      *(&v427[0] + 1) = v214;
      sub_181F73AE0(v427, v425, v423, v421);

      *&v427[0] = sub_181F8C728;
      *(&v427[0] + 1) = v215;
      sub_181F73AE0(v427, v425, v423, v421);

      *&v427[0] = sub_181F8C728;
      *(&v427[0] + 1) = v216;
      sub_181F73AE0(v427, v425, v423, v421);
      v4 = v399;

      *&v427[0] = sub_181F8C714;
      *(&v427[0] + 1) = v218;
      sub_181F73AE0(v427, v425, v423, v421);
      v6 = v401;
      v403 = 0;

      _os_log_impl(&dword_181A37000, v392, oslogd, "%s %s %s", v329, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v327, -1, -1);
      MEMORY[0x1865DF520](v329, -1, -1);

      v13 = v400;
    }

    else
    {

      v403 = 0;
      v4 = v399;
      v13 = v400;
      v6 = v401;
      v7 = log;
    }
  }

  v399 = v4;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v128 = sub_182AD2698();
  __swift_project_value_buffer(v128, qword_1EA843418);
  v129 = swift_allocObject();
  *(v129 + 16) = "sendPTO(connection:path:)";
  *(v129 + 24) = 25;
  *(v129 + 32) = 2;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_181F8C724;
  *(v130 + 24) = v129;
  v131 = swift_allocObject();
  *(v131 + 16) = 1564427099;
  *(v131 + 24) = 0xE400000000000000;
  v132 = swift_allocObject();
  *(v132 + 16) = 0xD000000000000040;
  *(v132 + 24) = 0x8000000182BD86D0;
  v13 = sub_182AD2678();
  v6 = sub_182AD38A8();
  v3 = swift_allocObject();
  *(v3 + 16) = 32;
  v133 = swift_allocObject();
  *(v133 + 16) = 8;
  v134 = swift_allocObject();
  *(v134 + 16) = sub_181F8C71C;
  *(v134 + 24) = v130;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_181F8C718;
  *(v135 + 24) = v134;
  v400 = swift_allocObject();
  v400[16] = 32;
  v401 = swift_allocObject();
  v401[16] = 8;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_181F8C720;
  *(v136 + 24) = v131;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_181F8C718;
  *(v7 + 24) = v136;
  v391 = swift_allocObject();
  LOBYTE(v391[2].isa) = 32;
  log = swift_allocObject();
  LOBYTE(log[2].isa) = 8;
  v137 = swift_allocObject();
  *(v137 + 16) = sub_181F8C720;
  *(v137 + 24) = v132;
  a1 = swift_allocObject();
  *(a1 + 16) = sub_181F8C718;
  *(a1 + 24) = v137;
  v12 = v6;
  v138 = v13;
  if (os_log_type_enabled(v13, v6))
  {
LABEL_69:
    v6 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v411[0] = 0;
    *v6 = 770;
    oslogk = v139;
    v405[0] = v139;
    *&v413[0] = v6 + 2;
    *&v415[0] = sub_181F8C728;
    *(&v415[0] + 1) = v3;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C728;
    *(&v415[0] + 1) = v133;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C714;
    *(&v415[0] + 1) = v135;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C728;
    *(&v415[0] + 1) = v400;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C728;
    *(&v415[0] + 1) = v401;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C714;
    *(&v415[0] + 1) = v7;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C728;
    *(&v415[0] + 1) = v391;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C728;
    *(&v415[0] + 1) = log;
    sub_181F73AE0(v415, v413, v411, v405);

    *&v415[0] = sub_181F8C714;
    *(&v415[0] + 1) = a1;
    sub_181F73AE0(v415, v413, v411, v405);

    _os_log_impl(&dword_181A37000, v138, v12, "%s %s %s", v6, 0x20u);
    v13 = oslogk;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](oslogk, -1, -1);
    MEMORY[0x1865DF520](v6, -1, -1);
    sub_182010E08(v406);

    goto LABEL_177;
  }

LABEL_176:
  sub_182010E08(v406);

LABEL_177:
  v4 = v399;
  if (v410)
  {
    goto LABEL_96;
  }

LABEL_178:
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v315 = sub_182AD2698();
  __swift_project_value_buffer(v315, qword_1EA843418);
  v316 = sub_182AD2678();
  v317 = sub_182AD38B8();
  if (os_log_type_enabled(v316, v317))
  {
    v318 = swift_slowAlloc();
    v319 = swift_slowAlloc();
    v405[0] = v319;
    *v318 = 136315650;
    v320 = sub_182AD3BF8();
    v322 = sub_181C64FFC(v320, v321, v405);

    *(v318 + 4) = v322;
    *(v318 + 12) = 2080;
    *(v318 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v405);
    *(v318 + 22) = 2080;
    *(v318 + 24) = sub_181C64FFC(0xD000000000000012, 0x8000000182BD86B0, v405);
    _os_log_impl(&dword_181A37000, v316, v317, "%s %s %s", v318, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v319, -1, -1);
    MEMORY[0x1865DF520](v318, -1, -1);
  }
}