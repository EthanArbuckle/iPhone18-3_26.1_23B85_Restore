uint64_t (*NetworkListener.newConnectionLimit.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = nw_listener_get_new_connection_limit(*(*(v1 + 16) + 24));
  return sub_1820BE750;
}

uint64_t NetworkListener.service.setter(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 91);
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181FF1D1C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  return sub_181F49A88(v7, &qword_1EA83A230);
}

void (*NetworkListener.service.modify(void *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C8uLL);
  }

  *a1 = v3;
  v3[56] = v1;
  NetworkListener.service.getter(v3);
  return sub_1820BE884;
}

uint64_t NetworkListener.port.getter@<X0>(uint64_t a1@<X8>)
{
  result = nw_listener_get_port(*(*(v1 + 16) + 24));
  *a1 = result;
  *(a1 + 2) = 0;
  return result;
}

void sub_1820BE8D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[3];
  v5[2] = *(*v2 + 80);
  v5[3] = *(v3 + 88);
  v5[4] = a1;
  v5[5] = a2;
  type metadata accessor for NetworkListener.LockedState();
  sub_181F50DA0(sub_1820C7E7C, v5, v4);
}

uint64_t sub_1820BE978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 32);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_181F5974C(0, v7[2] + 1, 1, v7);
    v7 = result;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    result = sub_181F5974C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1820C7E9C;
  v11[5] = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1820BEA5C()
{
  v1 = *v0;
  v2 = v0[3];
  v8[2] = *(*v0 + 80);
  v8[3] = *(v1 + 88);
  type metadata accessor for NetworkListener.LockedState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A238);
  sub_181F50DA0(sub_1820C7EC4, v8, v2);
  v3 = *(v9 + 16);
  if (v3)
  {
    v4 = v9 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t NetworkListener.deinit()
{
  nw_listener_cancel(*(*(v0 + 16) + 24));

  return v0;
}

uint64_t NetworkListener.__deallocating_deinit()
{
  NetworkListener.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s7Network0A8ListenerCA2A05OneToC8ProtocolRzrlE3runyyyAA0A10ConnectionCyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820BEC08, 0, 0);
}

uint64_t sub_1820BEC08()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1820BED18;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF3E70, v3, sub_1820C694C, v5, 0, 0, v7);
}

uint64_t sub_1820BED18()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1820BEE3C;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820BEE3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820BEEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD3698();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_182AD3728();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A250);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for NetworkListener.State();
  v10 = sub_182AD3698();
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v5[22] = swift_task_alloc();
  v11 = sub_182AD3728();
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820BF1F8, 0, 0);
}

uint64_t sub_1820BF1F8()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v2 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *MEMORY[0x1E69E8790];
  (*(*(v0 + 168) + 104))(*(v0 + 176), v5, *(v0 + 160));
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_182AD3738();

  type metadata accessor for NWListener.ServiceRegistrationChange();
  (*(v1 + 104))(v17, v5, v18);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  sub_182AD3738();

  (*(v2 + 104))(v19, v5, v20);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_182AD3738();

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 144);
  v11 = *(v0 + 96);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v21 = *(v0 + 24);
  NWListener.start(queue:)(qword_1EA8433A8);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v9;
  *(v14 + 32) = v13;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v21;
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_1820BF4C4;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820BF4C4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1820BF6EC;
  }

  else
  {

    v2 = sub_1820BF5E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820BF5E0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1820BF6EC()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1820BF808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v30 = a2;

  v29 = a1;
  sub_182AD3688();
  v13 = *(a2 + 16);
  v28 = *(v7 + 16);
  v25 = v6;
  v28(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v26 = *(v7 + 32);
  v26(v15 + v14, v11, v6);
  v16 = *(v13 + 16);
  v32 = sub_1820C8B8C;
  v33 = v15;
  os_unfair_lock_lock(v16 + 52);
  sub_1820AC69C(&v16[4]);
  os_unfair_lock_unlock(v16 + 52);
  v17 = *(v13 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1820C8B8C;
  *(v18 + 24) = v15;
  aBlock[4] = sub_1820CA9C0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FEE4AC;
  aBlock[3] = &block_descriptor_244;
  v19 = _Block_copy(aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v17, v19);
  _Block_release(v19);

  v20 = v31;
  v21 = v25;
  v28(v31, v29, v25);
  v22 = swift_allocObject();
  v26(v22 + v14, v20, v21);
  sub_1820BE8D0(sub_1820C8C94, v22);
}

uint64_t sub_1820BFB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *(*a2 + 80);
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD36C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a2;
  v18 = a3;
  v21 = a2;

  v20 = a1;
  sub_182AD3688();
  v19 = *(v7 + 16);
  v19(v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v22;
  *(v12 + 24) = a3;
  v13 = *(v7 + 32);
  v13(v12 + v11, v9, v6);
  NWListener.newConnectionHandler.setter(sub_1820C8930, v12);
  v19(v9, v20, v6);
  v14 = swift_allocObject();
  v15 = v18;
  *(v14 + 16) = v22;
  *(v14 + 24) = v15;
  v13(v14 + v11, v9, v6);
  sub_1820BE8D0(sub_1820C8AE0, v14);
}

uint64_t sub_1820BFDA4()
{
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v0 = sub_182AD3678();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  swift_checkMetadataState();

  v6[1] = sub_1821878FC(v4);
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1820BFF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v17;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a2;
  v8[3] = a3;
  v8[10] = *(*a4 + 80);
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v9 = sub_182AD3728();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v8[13] = *(v10 + 64);
  v8[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  v8[15] = v11;
  v12 = *(v11 - 8);
  v8[16] = v12;
  v8[17] = *(v12 + 64);
  v8[18] = swift_task_alloc();
  type metadata accessor for NetworkListener.State();
  v13 = sub_182AD3728();
  v8[19] = v13;
  v14 = *(v13 - 8);
  v8[20] = v14;
  v8[21] = *(v14 + 64);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C0174, 0, 0);
}

uint64_t sub_1820C0174()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v17 = v0[21];
  v4 = v0[19];
  v29 = v0[18];
  v5 = v0[16];
  v19 = v0[15];
  v20 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v22 = v0[12];
  v6 = v0[10];
  v23 = v0[11];
  v32 = v0[9];
  v26 = v0[7];
  v27 = v0[8];
  v21 = v0[6];
  v28 = v0[4];
  v7 = v0[3];
  v18 = v0[5];
  v31 = sub_182AD3548();
  v30 = *(*(v31 - 8) + 56);
  v30(v1, 1, 1, v31);
  (*(v3 + 16))(v2, v7, v4);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v6;
  *(v9 + 5) = v32;
  (*(v3 + 32))(&v9[v8], v2, v4);
  *&v9[(v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4800, v9);
  sub_181F49A88(v1, &unk_1EA839850);
  v30(v1, 1, 1, v31);
  (*(v5 + 16))(v29, v18, v19);
  v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v6;
  *(v11 + 5) = v32;
  (*(v5 + 32))(&v11[v10], v29, v19);
  *&v11[(v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4810, v11);
  sub_181F49A88(v1, &unk_1EA839850);
  v30(v1, 1, 1, v31);
  (*(v22 + 16))(v24, v21, v23);
  v12 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v6;
  *(v13 + 5) = v32;
  (*(v22 + 32))(&v13[v12], v24, v23);
  v14 = &v13[(v25 + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v14 = v26;
  *(v14 + 1) = v27;

  sub_182271CA4(v1, &unk_182AF4820, v13);
  sub_181F49A88(v1, &unk_1EA839850);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1820C055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v5[11] = *(*a4 + 80);
  v5[12] = *(a5 + 8);
  v5[13] = type metadata accessor for NetworkListener.State();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD3708();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C06A0, 0, 0);
}

uint64_t sub_1820C06A0()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C0770;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

uint64_t sub_1820C0770()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181F571FC;
  }

  else
  {
    v2 = sub_1820C0884;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C0884()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 196);
  if (v2 >> 2 < 0x3FuLL)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v22 = *(*(v0 + 64) + 24);
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    type metadata accessor for NetworkListener.LockedState();
    *(v0 + 32) = v6;
    *(v0 + 40) = v5;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C8914, v9, v22);

    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    *(v0 + 160) = v10;
    *(v0 + 168) = v11;
    if (v10)
    {
      v12 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
      v13 = *(v0 + 72);
      v14 = *(v11 + 16);
      *(v0 + 176) = v14;
      v15 = *(v11 + 24);
      v16 = swift_allocObject();
      *(v0 + 184) = v16;
      v16[2] = v14;
      v16[3] = v15;
      v16[4] = v13;
      v16[5] = v10;
      v16[6] = v11;
      *(v0 + 204) = BYTE4(v12);
      *(v0 + 200) = v12;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v10);
      if (v14)
      {
        swift_getObjectType();
        v17 = sub_182AD34A8();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C0B60, v17, v19);
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 144) = v20;
      *v20 = v0;
      v20[1] = sub_1820C0770;
      v21 = *(v0 + 120);

      return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v21, v0 + 48);
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1820C0B60()
{
  v4 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v1(&v3, v0 + 200);
  swift_unknownObjectRelease();
  sub_181A554F4(v1);

  return MEMORY[0x1EEE6DFA0](sub_1820C0BFC, 0, 0);
}

uint64_t sub_1820C0BFC()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C0770;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

uint64_t sub_1820C0CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return sub_181AA39C0(v5);
}

uint64_t sub_1820C0D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v5[11] = *(*a4 + 80);
  v5[12] = *(a5 + 8);
  v6 = type metadata accessor for NetworkListener.ServiceRegistrationChange();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for NWListener.ServiceRegistrationChange();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A268);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A270);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C0F70, 0, 0);
}

uint64_t sub_1820C0F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1820C103C;
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 6);
}

uint64_t sub_1820C103C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1820C162C;
  }

  else
  {
    v2 = sub_1820C1150;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C1150()
{
  v1 = v0[20];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    sub_1820C7DE0(v1, v0[19], type metadata accessor for NWListener.ServiceRegistrationChange);
    v9 = *(v7 + 24);
    v10 = swift_task_alloc();
    *(v10 + 16) = v5;
    *(v10 + 24) = v8;
    type metadata accessor for NetworkListener.LockedState();
    v0[4] = v6;
    v0[5] = v4;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C88F8, v10, v9);

    v12 = v0[2];
    v11 = v0[3];
    v0[26] = v12;
    v0[27] = v11;
    if (v12)
    {
      v14 = v0[18];
      v13 = v0[19];
      v26 = v0[15];
      v15 = v0[9];
      v16 = *(v11 + 16);
      v0[28] = v16;
      v17 = *(v11 + 24);
      v18 = swift_allocObject();
      v0[29] = v18;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = v15;
      v18[5] = v12;
      v18[6] = v11;
      sub_1820C7D7C(v13, v14);
      sub_1820BD5EC(v14, v26);
      v19 = v18[2];
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v12);
      if (v19)
      {
        swift_getObjectType();
        v20 = sub_182AD34A8();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C14A4, v20, v22);
    }

    else
    {
      sub_1820C7D20(v0[19]);
      v23 = swift_task_alloc();
      v0[24] = v23;
      *v23 = v0;
      v23[1] = sub_1820C103C;
      v24 = v0[20];
      v25 = v0[21];

      return MEMORY[0x1EEE6DB90](v24, 0, 0, v25, v0 + 6);
    }
  }
}

uint64_t sub_1820C14A4()
{
  v7 = v0;
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v1(&v6, v2);
  swift_unknownObjectRelease();
  sub_181A554F4(v1);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1820C1570, 0, 0);
}

uint64_t sub_1820C1570()
{
  v1 = v0[19];

  sub_1820C7D20(v1);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1820C103C;
  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v4, v0 + 6);
}

uint64_t sub_1820C162C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820C16E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_181F5E000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return sub_181AA39C0(v5);
}

uint64_t sub_1820C1790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1820C17B8, 0, 0);
}

uint64_t sub_1820C17B8()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1820C189C;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820C189C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_18209F864;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C19B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a5;
  v7[15] = a7;
  v7[12] = a3;
  v7[13] = a4;
  v7[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for NetworkConnection();
  v7[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD3708();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C1B14, 0, 0);
}

uint64_t sub_1820C1B14()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1820C1BE4;
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_1820C1BE4()
{

  if (v0)
  {
    v1 = sub_1820C20A0;
  }

  else
  {
    v1 = sub_1820C1CF4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820C1CF4()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v21 = *(v0 + 120);
    v5 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v2, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = v21;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = v1;
    sub_181AB5D28(v2, v3, &unk_1EA839850);
    LODWORD(v2) = (*(v7 + 48))(v3, 1, v6);

    v9 = *(v0 + 128);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 128), &unk_1EA839850);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 136);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_1820C1BE4;
    v20 = *(v0 + 160);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1820C20A0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820C213C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1820C2234;

  return v9(a5);
}

uint64_t sub_1820C2234()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820C2368, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1820C2368()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s7Network0A8ListenerCA2A17MultiplexProtocolRzrlE3runyyyAA0A10ConnectionCyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820C23F0, 0, 0);
}

uint64_t sub_1820C23F0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1820B9114;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF3E88, v3, sub_1820CAA08, v5, 0, 0, v7);
}

uint64_t sub_1820C2500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD3698();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_182AD3728();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A250);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for NetworkListener.State();
  v10 = sub_182AD3698();
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v5[22] = swift_task_alloc();
  v11 = sub_182AD3728();
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C2850, 0, 0);
}

uint64_t sub_1820C2850()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);
  v2 = *(v0 + 64);
  v19 = *(v0 + 72);
  v20 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *MEMORY[0x1E69E8790];
  (*(*(v0 + 168) + 104))(*(v0 + 176), v5, *(v0 + 160));
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  sub_182AD3738();

  type metadata accessor for NWListener.ServiceRegistrationChange();
  (*(v1 + 104))(v17, v5, v18);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  sub_182AD3738();

  (*(v2 + 104))(v19, v5, v20);
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  sub_182AD3738();

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 144);
  v11 = *(v0 + 96);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);
  v21 = *(v0 + 24);
  NWListener.start(queue:)(qword_1EA8433A8);
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v9;
  *(v14 + 32) = v13;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v21;
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_1820C2B1C;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820C2B1C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1820CA9DC;
  }

  else
  {

    v2 = sub_1820CA9E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1820C2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v10 = *(*a2 + 80);
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v11 = sub_182AD36C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a2;

  sub_182AD3688();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = a3;
  (*(v12 + 32))(v18 + v17, v15, v11);
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  NWListener.stateUpdateHandler.setter(v20, v18);
}

uint64_t sub_1820C2E14(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v4 = sub_182AD3678();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *a1 | (*(a1 + 4) << 32);
  v9 = *(a1 + 4) >> 6;
  v10 = *a1 | (*(a1 + 4) << 32) & 0x3FFFFFFFFFLL | 0x4000000000;
  if (v9 != 1)
  {
    v10 = *a1 | (*(a1 + 4) << 32);
  }

  LODWORD(v15) = v10;
  BYTE4(v15) = BYTE4(v10);
  sub_182AD36C8();
  sub_182AD36A8();
  result = (*(v5 + 8))(v7, v4);
  if (v9 == 1)
  {
    sub_181F4B3B8();
    v12 = swift_allocError();
    *v13 = v8;
    *(v13 + 4) = BYTE4(v8) & 0x3F;
    v15 = v12;
    goto LABEL_8;
  }

  if (v9 == 2 && v8 == 0x8000000002)
  {
    v15 = 0;
LABEL_8:
    sub_182AD36B8();
    return sub_1820BEA5C();
  }

  return result;
}

uint64_t sub_1820C2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v30 = a2;

  v29 = a1;
  sub_182AD3688();
  v13 = *(a2 + 16);
  v28 = *(v7 + 16);
  v25 = v6;
  v28(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v26 = *(v7 + 32);
  v26(v15 + v14, v11, v6);
  v16 = *(v13 + 16);
  v32 = sub_1820CAAA4;
  v33 = v15;
  os_unfair_lock_lock(v16 + 52);
  sub_181E61CA4(&v16[4]);
  os_unfair_lock_unlock(v16 + 52);
  v17 = *(v13 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1820CAAA4;
  *(v18 + 24) = v15;
  aBlock[4] = sub_181FF0DA8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FEE4AC;
  aBlock[3] = &block_descriptor_171;
  v19 = _Block_copy(aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v17, v19);
  _Block_release(v19);

  v20 = v31;
  v21 = v25;
  v28(v31, v29, v25);
  v22 = swift_allocObject();
  v26(v22 + v14, v20, v21);
  sub_1820BE8D0(sub_1820CA9F0, v22);
}

uint64_t sub_1820C3328(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.ServiceRegistrationChange();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A280);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1820C7D7C(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278);
  sub_182AD36A8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1820C346C(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *(*a2 + 80);
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD36C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v30 = a3;
  v34 = a2;

  v33 = a1;
  sub_182AD3688();
  v13 = a2[2];
  v32 = *(v7 + 16);
  v28 = v6;
  v32(v11, a1, v6);
  v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = v29;
  v15 = swift_allocObject();
  *(v15 + 16) = v36;
  *(v15 + 24) = a3;
  v16 = *(v7 + 32);
  v16(v15 + v14, v11, v6);
  v17 = *(v13 + 16);
  v37 = sub_1820C7E64;
  v38 = v15;
  os_unfair_lock_lock(v17 + 52);
  sub_181EC7B18(&v17[4]);
  os_unfair_lock_unlock(v17 + 52);
  v18 = *(v13 + 24);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1820C7E64;
  *(v19 + 24) = v15;
  aBlock[4] = sub_181FF0D14;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181D8BD0C;
  aBlock[3] = &block_descriptor_19;
  v20 = _Block_copy(aBlock);

  nw_listener_set_new_connection_group_handler(v18, v20);
  _Block_release(v20);

  v21 = v35;
  v22 = v28;
  v32(v35, v33, v28);
  v23 = v29;
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v36;
  *(v24 + 24) = v25;
  v16(v24 + v23, v21, v22);
  sub_1820BE8D0(sub_1820CA9EC, v24);
}

uint64_t sub_1820C37F8()
{
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v0 = sub_182AD3678();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - v2;
  swift_checkMetadataState();

  v5 = sub_1821DEAB8(v4);

  v7[1] = v5;
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1820C3968()
{
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();
  return sub_182AD36B8();
}

uint64_t sub_1820C39DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v17;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a2;
  v8[3] = a3;
  v8[10] = *(*a4 + 80);
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v9 = sub_182AD3728();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v8[13] = *(v10 + 64);
  v8[14] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  v8[15] = v11;
  v12 = *(v11 - 8);
  v8[16] = v12;
  v8[17] = *(v12 + 64);
  v8[18] = swift_task_alloc();
  type metadata accessor for NetworkListener.State();
  v13 = sub_182AD3728();
  v8[19] = v13;
  v14 = *(v13 - 8);
  v8[20] = v14;
  v8[21] = *(v14 + 64);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v8[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C3C4C, 0, 0);
}

uint64_t sub_1820C3C4C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v17 = v0[21];
  v4 = v0[19];
  v29 = v0[18];
  v5 = v0[16];
  v19 = v0[15];
  v20 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v22 = v0[12];
  v6 = v0[10];
  v23 = v0[11];
  v32 = v0[9];
  v26 = v0[7];
  v27 = v0[8];
  v21 = v0[6];
  v28 = v0[4];
  v7 = v0[3];
  v18 = v0[5];
  v31 = sub_182AD3548();
  v30 = *(*(v31 - 8) + 56);
  v30(v1, 1, 1, v31);
  (*(v3 + 16))(v2, v7, v4);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v6;
  *(v9 + 5) = v32;
  (*(v3 + 32))(&v9[v8], v2, v4);
  *&v9[(v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4780, v9);
  sub_181F49A88(v1, &unk_1EA839850);
  v30(v1, 1, 1, v31);
  (*(v5 + 16))(v29, v18, v19);
  v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v6;
  *(v11 + 5) = v32;
  (*(v5 + 32))(&v11[v10], v29, v19);
  *&v11[(v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;

  sub_182271CA4(v1, &unk_182AF4790, v11);
  sub_181F49A88(v1, &unk_1EA839850);
  v30(v1, 1, 1, v31);
  (*(v22 + 16))(v24, v21, v23);
  v12 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v6;
  *(v13 + 5) = v32;
  (*(v22 + 32))(&v13[v12], v24, v23);
  v14 = &v13[(v25 + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v14 = v26;
  *(v14 + 1) = v27;

  sub_182271CA4(v1, &unk_182AF47A0, v13);
  sub_181F49A88(v1, &unk_1EA839850);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1820C4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v5[11] = *(*a4 + 80);
  v5[12] = *(a5 + 8);
  v5[13] = type metadata accessor for NetworkListener.State();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = sub_182AD3708();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C4178, 0, 0);
}

uint64_t sub_1820C4178()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C4248;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

uint64_t sub_1820C4248()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1820CAA04;
  }

  else
  {
    v2 = sub_1820C435C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C435C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 196);
  if (v2 >> 2 < 0x3FuLL)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v22 = *(*(v0 + 64) + 24);
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    type metadata accessor for NetworkListener.LockedState();
    *(v0 + 32) = v6;
    *(v0 + 40) = v5;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C7E48, v9, v22);

    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    *(v0 + 160) = v10;
    *(v0 + 168) = v11;
    if (v10)
    {
      v12 = v1 & 0xFFFFFF00FFFFFFFFLL | (v2 << 32);
      v13 = *(v0 + 72);
      v14 = *(v11 + 16);
      *(v0 + 176) = v14;
      v15 = *(v11 + 24);
      v16 = swift_allocObject();
      *(v0 + 184) = v16;
      v16[2] = v14;
      v16[3] = v15;
      v16[4] = v13;
      v16[5] = v10;
      v16[6] = v11;
      *(v0 + 204) = BYTE4(v12);
      *(v0 + 200) = v12;
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v10);
      if (v14)
      {
        swift_getObjectType();
        v17 = sub_182AD34A8();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C4638, v17, v19);
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 144) = v20;
      *v20 = v0;
      v20[1] = sub_1820C4248;
      v21 = *(v0 + 120);

      return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v21, v0 + 48);
    }
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1820C4638()
{
  v4 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v1(&v3, v0 + 200);
  swift_unknownObjectRelease();
  sub_181A554F4(v1);

  return MEMORY[0x1EEE6DFA0](sub_1820C46D4, 0, 0);
}

uint64_t sub_1820C46D4()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1820C4248;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DB90](v0 + 192, 0, 0, v2, v0 + 48);
}

uint64_t sub_1820C4788@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return sub_181AA39C0(v5);
}

uint64_t sub_1820C4834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a3;
  v5[10] = *a4;
  v5[11] = *(*a4 + 80);
  v5[12] = *(a5 + 8);
  v6 = type metadata accessor for NetworkListener.ServiceRegistrationChange();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for NWListener.ServiceRegistrationChange();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A268);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A270);
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C4A48, 0, 0);
}

uint64_t sub_1820C4A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_1820C4B14;
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 6);
}

uint64_t sub_1820C4B14()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1820CAA00;
  }

  else
  {
    v2 = sub_1820C4C28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820C4C28()
{
  v1 = v0[20];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    sub_1820C7DE0(v1, v0[19], type metadata accessor for NWListener.ServiceRegistrationChange);
    v9 = *(v7 + 24);
    v10 = swift_task_alloc();
    *(v10 + 16) = v5;
    *(v10 + 24) = v8;
    type metadata accessor for NetworkListener.LockedState();
    v0[4] = v6;
    v0[5] = v4;
    swift_getExtendedFunctionTypeMetadata();
    sub_182AD39B8();
    sub_181F50DA0(sub_1820C7D04, v10, v9);

    v12 = v0[2];
    v11 = v0[3];
    v0[26] = v12;
    v0[27] = v11;
    if (v12)
    {
      v14 = v0[18];
      v13 = v0[19];
      v26 = v0[15];
      v15 = v0[9];
      v16 = *(v11 + 16);
      v0[28] = v16;
      v17 = *(v11 + 24);
      v18 = swift_allocObject();
      v0[29] = v18;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = v15;
      v18[5] = v12;
      v18[6] = v11;
      sub_1820C7D7C(v13, v14);
      sub_1820BD5EC(v14, v26);
      v19 = v18[2];
      swift_unknownObjectRetain_n();
      sub_181AA39C0(v12);
      if (v19)
      {
        swift_getObjectType();
        v20 = sub_182AD34A8();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      return MEMORY[0x1EEE6DFA0](sub_1820C4F7C, v20, v22);
    }

    else
    {
      sub_1820C7D20(v0[19]);
      v23 = swift_task_alloc();
      v0[24] = v23;
      *v23 = v0;
      v23[1] = sub_1820C4B14;
      v24 = v0[20];
      v25 = v0[21];

      return MEMORY[0x1EEE6DB90](v24, 0, 0, v25, v0 + 6);
    }
  }
}

uint64_t sub_1820C4F7C()
{
  v7 = v0;
  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v1(&v6, v2);
  swift_unknownObjectRelease();
  sub_181A554F4(v1);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1820C5048, 0, 0);
}

uint64_t sub_1820C5048()
{
  v1 = v0[19];

  sub_1820C7D20(v1);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1820C4B14;
  v3 = v0[20];
  v4 = v0[21];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v4, v0 + 6);
}

uint64_t sub_1820C5104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  return sub_181AA39C0(v5);
}

uint64_t sub_1820C51B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1820C51D8, 0, 0);
}

uint64_t sub_1820C51D8()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1820A6A10;

  return MEMORY[0x1EEE6DE40]();
}

uint64_t sub_1820C52BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a5;
  v7[15] = a7;
  v7[12] = a3;
  v7[13] = a4;
  v7[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for NetworkConnection();
  v7[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = sub_182AD3708();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820C5418, 0, 0);
}

uint64_t sub_1820C5418()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1820C54E8;
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DB90](v0 + 72, 0, 0, v2, v0 + 80);
}

uint64_t sub_1820C54E8()
{

  if (v0)
  {
    v1 = sub_1820CAAE4;
  }

  else
  {
    v1 = sub_1820C55F8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820C55F8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 112);
    v21 = *(v0 + 120);
    v5 = *(v0 + 104);
    v6 = sub_182AD3548();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v2, 1, 1, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = v21;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = v1;
    sub_181AB5D28(v2, v3, &unk_1EA839850);
    LODWORD(v2) = (*(v7 + 48))(v3, 1, v6);

    v9 = *(v0 + 128);
    if (v2 == 1)
    {
      sub_181F49A88(*(v0 + 128), &unk_1EA839850);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_182AD3538();
      (*(v7 + 8))(v9, v6);
      if (*(v8 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_182AD34A8();
        v11 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    v15 = **(v0 + 88);

    if (v11 | v10)
    {
      v16 = v0 + 72;
      v17 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
    }

    else
    {
      v17 = 0;
      v16 = v0 + 72;
    }

    v18 = *(v0 + 136);
    *(v0 + 48) = 1;
    *(v0 + 56) = v17;
    *(v0 + 64) = v15;
    swift_task_create();

    sub_181F49A88(v18, &unk_1EA839850);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_1820C54E8;
    v20 = *(v0 + 160);

    return MEMORY[0x1EEE6DB90](v16, 0, 0, v20, v0 + 80);
  }

  else
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    sub_182AD4248();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1820C59A4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1820C5A9C;

  return v9(a5);
}

uint64_t sub_1820C5A9C()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820CAAF0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

__n128 BonjourListenerProvider.init(name:type:domain:txtRecord:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X6>, __n128 *a8@<X8>)
{
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  a8[2].n128_u64[0] = a5;
  a8[2].n128_u64[1] = a6;
  result = *a7;
  a8[3] = *a7;
  return result;
}

double BonjourListenerProvider.service.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];

  sub_181E6550C(v9);
  sub_181AB612C(0);
  if (v9)
  {
    sub_181AB612C(0);
  }

  else
  {
    v10 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  result = 0.0;
  *(a1 + 72) = xmmword_182AE8230;
  *(a1 + 88) = xmmword_182AE8230;
  *(a1 + 104) = 0;
  *(a1 + 105) = 3;
  return result;
}

__n128 ApplicationServiceListenerProvider.init(name:metadata:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

double ApplicationServiceListenerProvider.service.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  sub_181E6550C(v6);
  sub_181AB612C(0);
  if (v6)
  {
    sub_181AB612C(0);
  }

  else
  {
    v5 = 0;
  }

  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v6;
  *(a1 + 64) = v5;
  result = 0.0;
  *(a1 + 72) = xmmword_182AE8230;
  *(a1 + 88) = xmmword_182AE8230;
  *(a1 + 104) = 0;
  *(a1 + 105) = 3;
  return result;
}

uint64_t static ListenerProvider<>.bonjour(name:type:domain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = 0;
  a7[7] = 0;
}

uint64_t static ListenerProvider<>.bonjour(name:type:domain:txtRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v10 = *a7;
  v9 = a7[1];
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = v10;
  a8[7] = v9;
  sub_181E6550C(v10);
}

uint64_t static ListenerProvider<>.applicationService(name:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v5 = a3[1];
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v6;
  a4[3] = v5;
  sub_181E6550C(v6);
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

uint64_t sub_1820C62AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 != 255)
  {
    return sub_1820C62C8(result, a2, a3, a4, a5, a6, a7, a8, a9 & 1);
  }

  return result;
}

uint64_t sub_1820C62C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {

    v10 = a3;
  }

  else
  {

    v10 = a7;
  }

  return sub_181AB612C(v10);
}

uint64_t sub_1820C6398()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_182AD3CD8();
  return sub_182AD3CC8();
}

uint64_t sub_1820C64B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1820B5A08(a1, v4, v5, v6);
}

uint64_t sub_1820C6588(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v8 = *a1;
  v9 = a1[1];
  a2(v7, v6);
  result = a3(v8, v9);
  *a1 = v7;
  a1[1] = v6;
  return result;
}

uint64_t sub_1820C65FC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  a2(v7, v6);
  result = a3(v8, v9);
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1820C6670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820B9238(a1, v5, v7, v6, v4);
}

uint64_t sub_1820C6730(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820BB278(a1, v5, v7, v6, v4);
}

uint64_t sub_1820C6834(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(a1 + 16);

  result = sub_181A554F4(v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1820C688C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F54964;

  return sub_1820BEEA8(a1, v5, v7, v6, v4);
}

uint64_t sub_1820C695C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820C2500(a1, v5, v7, v6, v4);
}

uint64_t keypath_set_36Tm(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v7 = a1[5];
  v12[4] = a1[4];
  v13[0] = v7;
  *(v13 + 11) = *(a1 + 91);
  v8 = a1[1];
  v12[0] = *a1;
  v12[1] = v8;
  v9 = a1[3];
  v12[2] = a1[2];
  v12[3] = v9;
  sub_181AB5D28(v12, &v11, &qword_1EA83A230);
  return a5(a1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1820C6ACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1820C6B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

void sub_1820C6C08()
{
  if (!qword_1EA83A248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A1D8);
    v0 = sub_182AD39B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA83A248);
    }
  }
}

void sub_1820C6D6C()
{
  sub_1820C6C08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Connection1();
    sub_182AD35A8();
    sub_182AD39B8();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of Listener5.__allocating_init(for:using:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

uint64_t dispatch thunk of Listener6.__allocating_init(for:using:where:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

uint64_t sub_1820C7388()
{
  result = type metadata accessor for NWEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1820C743C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820C7484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820C74F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1820C7530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820C7578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1820C75C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1820C75FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1820C769C(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_181F5EB68;

  return sub_1820C39DC(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1820C778C()
{
  v2 = v0[5];
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = *(sub_182AD3728() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_1820C4034(v5, v6, v0 + v4, v7, v2);
}

uint64_t sub_1820C78DC()
{
  v2 = v0[5];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_1820C4834(v5, v6, v0 + v4, v7, v2);
}

uint64_t sub_1820C7A04()
{
  v3 = v0[4];
  v2 = v0[5];
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v4 = *(sub_182AD3728() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_181F5EB68;

  return sub_1820C51B0(v6, v7, v0 + v5, v9, v10, v3, v2);
}

uint64_t sub_1820C7B6C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820C52BC(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1820C7C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_181F5EB68;

  return sub_1820C59A4(v2, v3, v4, v6, v5);
}

uint64_t sub_1820C7D20(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.ServiceRegistrationChange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1820C7D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWListener.ServiceRegistrationChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820C7DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1820C7EC4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = MEMORY[0x1E69E7CC0];
  *a2 = v2;
  return result;
}

uint64_t sub_1820C7F40(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_181F5EB68;

  return sub_1820BFF04(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_108Tm()
{
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD3728();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8140()
{
  v2 = v0[5];
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = *(sub_182AD3728() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_1820C055C(v5, v6, v0 + v4, v7, v2);
}

uint64_t objectdestroy_112Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8374()
{
  v2 = v0[5];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A258) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_1820C0D5C(v5, v6, v0 + v4, v7, v2);
}

uint64_t objectdestroy_116Tm()
{
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD3728();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1820C85B0()
{
  v3 = v0[4];
  v2 = v0[5];
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v4 = *(sub_182AD3728() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_181F5EB68;

  return sub_1820C1790(v6, v7, v0 + v5, v9, v10, v3, v2);
}

uint64_t sub_1820C8718(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820C19B8(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t objectdestroy_125Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1820C8838()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_181F5EB68;

  return sub_1820C213C(v2, v3, v4, v6, v5);
}

uint64_t sub_1820C8948(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v6 = *(sub_182AD36C8() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t objectdestroy_149Tm()
{
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8AE4()
{
  type metadata accessor for NetworkConnection();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  sub_182AD36C8();
  return sub_1820C3968();
}

uint64_t objectdestroy_164Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A278);
  return sub_182AD36B8();
}

uint64_t objectdestroy_179Tm()
{
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v1 = sub_182AD36C8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1820C8E08(unsigned int *a1)
{
  type metadata accessor for NetworkListener.State();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = *(sub_182AD36C8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return sub_1820C2E14(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1820C8EFC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820BC180(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1820C8FD4()
{
  v2 = v0[5];
  v3 = *(_s26MultiplexedConnectionEventOMa() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = (v0 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v6);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_181F5EB68;

  return sub_1820BC9A0(v7, v8, v0 + v4, v10, v11, v12, v2);
}

uint64_t sub_1820C91F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_181F5EB68;

  return sub_1820B9D9C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1820C92C8()
{
  v2 = v0[5];
  v3 = *(_s15ConnectionEventOMa() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = (v0 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v6);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_181F5EB68;

  return sub_1820BA5BC(v7, v8, v0 + v4, v10, v11, v12, v2);
}

uint64_t objectdestroy_132Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1820C94AC(unsigned int *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  a2(255, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = *(sub_182AD36C8() - 8);
  return sub_1820BBC20(a1, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a3);
}

uint64_t sub_1820C95A0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  a2(255, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v8 = *(sub_182AD36C8() - 8);
  return sub_1820BBE28(a1, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a3);
}

uint64_t sub_1820C9694(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  a2(255, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v7 = *(sub_182AD36C8() - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

uint64_t sub_1820C9794(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_1820B640C(a1, a2, v6, v7, v9, v8);
}

uint64_t objectdestroy_261Tm(uint64_t (*a1)(void, void, void))
{
  v2 = *(a1(0, *(v1 + 32), *(v1 + 40)) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  type metadata accessor for NWListener.ServiceRegistrationChange();
  swift_getEnumCaseMultiPayload();
  type metadata accessor for NWEndpoint();
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {

LABEL_3:
      }
    }

    else
    {
      sub_181E605C8(*(v1 + v3), *(v1 + v3 + 8), *(v1 + v3 + 16), *(v1 + v3 + 24));
    }
  }

  else
  {
    switch(v6)
    {
      case 2:

        break;
      case 3:
        v7 = sub_182AD2058();
        (*(*(v7 - 8) + 8))(v1 + v3, v7);
        break;
      case 4:
        swift_unknownObjectRelease();
        break;
    }
  }

LABEL_4:

  return swift_deallocObject();
}

uint64_t sub_1820C9A44()
{
  v2 = *(type metadata accessor for Listener8.Event() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v0 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v5);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_181F5EB68;

  return sub_1820B6CF8(v6, v7, v0 + v3, v9, v10, v11);
}

uint64_t objectdestroy_359Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_282Tm(void (*a1)(uint64_t, void, void))
{
  a1(255, *(v1 + 16), *(v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v2 = sub_182AD36C8();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1820C9D10(uint64_t a1)
{
  type metadata accessor for Listener8.Event();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = *(sub_182AD36C8() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1820B6160(a1, v4);
}

uint64_t sub_1820C9E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

unsigned int *sub_1820C9FB8(unsigned int *a1, void (*a2)(uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t *), uint64_t (*a4)(void, uint64_t))
{
  v11 = *(v4 + 16);
  v8 = *(v4 + 40);
  v12 = *(v4 + 24);
  v13 = v8;
  a2(255, &v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v9 = *(sub_182AD36C8() - 8);
  return sub_1820B477C(a1, *(v4 + 56), *(v4 + 64), v4 + ((*(v9 + 80) + 72) & ~*(v9 + 80)), a3, a4);
}

uint64_t sub_1820CA0D8(uint64_t a1, void (*a2)(uint64_t, void *), void (*a3)(uint64_t, void *), uint64_t (*a4)(uint64_t))
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = v4[6];
  v15[0] = v4[2];
  v8 = v15[0];
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  a2(255, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v13 = *(sub_182AD36C8() - 8);
  return sub_1820B4968(a1, v4 + ((*(v13 + 80) + 56) & ~*(v13 + 80)), v8, v9, v10, v11, v12, a3, a4);
}

uint64_t objectdestroy_393Tm(void (*a1)(uint64_t, uint64_t *))
{
  v7 = *(v1 + 16);
  v2 = *(v1 + 40);
  v8 = *(v1 + 24);
  v9 = v2;
  a1(255, &v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = sub_182AD36C8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);

  (*(v4 + 8))(v1 + v5, v3);
  return swift_deallocObject();
}

uint64_t objectdestroy_396Tm(void (*a1)(uint64_t, uint64_t *))
{
  v5 = *(v1 + 16);
  v2 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7 = v2;
  a1(255, &v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900);
  v3 = sub_182AD36C8();
  (*(*(v3 - 8) + 8))(v1 + ((*(*(v3 - 8) + 80) + 56) & ~*(*(v3 - 8) + 80)), v3);
  return swift_deallocObject();
}

uint64_t sub_1820CA468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820CA504(uint64_t a1)
{
  type metadata accessor for Connection1();
  v3 = *(sub_182AD35A8() - 8);
  return sub_1820B0C54(*(v1 + 56), v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80)), a1);
}

uint64_t objectdestroy_420Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_426Tm()
{
  type metadata accessor for Connection1();
  v1 = sub_182AD35A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  return swift_deallocObject();
}

uint64_t sub_1820CA87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for NWListener.ServiceRegistrationChange();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820CA900()
{
  result = type metadata accessor for NetworkConnection();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NWListener.ServiceRegistrationChange();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Interface.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = *(v1 + 184);
  v3 = *(v1 + 185);
  MEMORY[0x1865DB070](*(v1 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

__n128 _s7Network9InterfaceV5indexACSi_tAA0A5ErrorOYKcfC@<Q0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  result.n128_u64[0] = sub_181E378A4(a1, &v12, v13).n128_u64[0];
  if (v3)
  {
    *a2 = v12;
  }

  else
  {
    type metadata accessor for Interface.BackingClass();
    v7 = swift_allocObject();
    v8 = v14[0];
    *(v7 + 144) = v13[8];
    *(v7 + 160) = v8;
    *(v7 + 170) = *(v14 + 10);
    v9 = v13[5];
    *(v7 + 80) = v13[4];
    *(v7 + 96) = v9;
    v10 = v13[7];
    *(v7 + 112) = v13[6];
    *(v7 + 128) = v10;
    v11 = v13[1];
    *(v7 + 16) = v13[0];
    *(v7 + 32) = v11;
    result = v13[3];
    *(v7 + 48) = v13[2];
    *(v7 + 64) = result;
    *a3 = v7;
  }

  return result;
}

__n128 _s7Network9InterfaceV4nameACSS_tAA0A5ErrorOYKcfC@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_181C8DF10(a1, a2, &v13, v14);
  if (v4)
  {
    *a3 = v13;
  }

  else
  {
    type metadata accessor for Interface.BackingClass();
    v8 = swift_allocObject();
    v9 = v15[0];
    *(v8 + 144) = v14[8];
    *(v8 + 160) = v9;
    *(v8 + 170) = *(v15 + 10);
    v10 = v14[5];
    *(v8 + 80) = v14[4];
    *(v8 + 96) = v10;
    v11 = v14[7];
    *(v8 + 112) = v14[6];
    *(v8 + 128) = v11;
    v12 = v14[1];
    *(v8 + 16) = v14[0];
    *(v8 + 32) = v12;
    result = v14[3];
    *(v8 + 48) = v14[2];
    *(v8 + 64) = result;
    *a4 = v8;
  }

  return result;
}

uint64_t Interface.description.getter()
{
  v1 = *(*v0 + 40);

  return v1;
}

__n128 _s7Network9InterfaceV5index4nameACSi_SStAA0A5ErrorOYKcfC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, uint64_t *a5@<X8>)
{
  result.n128_f64[0] = sub_181C8E1E0(a1, a2, a3, &v14, v15);
  if (v5)
  {
    *a4 = v14;
  }

  else
  {
    type metadata accessor for Interface.BackingClass();
    v9 = swift_allocObject();
    v10 = v16[0];
    *(v9 + 144) = v15[8];
    *(v9 + 160) = v10;
    *(v9 + 170) = *(v16 + 10);
    v11 = v15[5];
    *(v9 + 80) = v15[4];
    *(v9 + 96) = v11;
    v12 = v15[7];
    *(v9 + 112) = v15[6];
    *(v9 + 128) = v12;
    v13 = v15[1];
    *(v9 + 16) = v15[0];
    *(v9 + 32) = v13;
    result = v15[3];
    *(v9 + 48) = v15[2];
    *(v9 + 64) = result;
    *a5 = v9;
  }

  return result;
}

Network::InterfaceType_optional __swiftcall InterfaceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010400uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1820CAE48()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5518[v1]);
  return sub_182AD4558();
}

uint64_t sub_1820CAED0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5518[v1]);
  return sub_182AD4558();
}

Network::InterfaceSubtype_optional __swiftcall InterfaceSubtype.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x403050201050500uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1820CAFB0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5540[v1]);
  return sub_182AD4558();
}

uint64_t sub_1820CB038()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](qword_182AF5540[v1]);
  return sub_182AD4558();
}

uint64_t sub_1820CB0E0()
{
  v1 = *v0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 169);
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

uint64_t sub_1820CB17C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 169);
  MEMORY[0x1865DB070](*v0);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v1]);
  return MEMORY[0x1865DB070](qword_182AF5540[v2]);
}

uint64_t sub_1820CB1F4()
{
  v1 = *v0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 169);
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v2]);
  MEMORY[0x1865DB070](qword_182AF5540[v3]);
  return sub_182AD4558();
}

BOOL sub_1820CB290(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 96);
  v49[4] = *(*a1 + 80);
  v49[5] = v7;
  v8 = v2[7];
  v9 = v2[8];
  v10 = v2[10];
  v11 = *(v2 + 170);
  v49[8] = v2[9];
  v50[0] = v10;
  *(v50 + 10) = v11;
  v12 = *a2;
  v49[6] = v8;
  v49[7] = v9;
  v49[2] = v5;
  v49[3] = v6;
  v49[0] = v3;
  v49[1] = v4;
  v13 = v2[10];
  v47 = v2[9];
  v48[0] = v13;
  *(v48 + 10) = *(v2 + 170);
  v14 = v2[6];
  v43 = v2[5];
  v44 = v14;
  v15 = v2[8];
  v45 = v2[7];
  v46 = v15;
  v16 = v2[2];
  v39 = v2[1];
  v40 = v16;
  v17 = v2[4];
  v41 = v2[3];
  v42 = v17;
  v18 = v12[9];
  v51[7] = v12[8];
  v51[8] = v18;
  v52[0] = v12[10];
  *(v52 + 10) = *(v12 + 170);
  v19 = v12[5];
  v51[3] = v12[4];
  v51[4] = v19;
  v20 = v12[7];
  v51[5] = v12[6];
  v51[6] = v20;
  v21 = v12[2];
  v51[0] = v12[1];
  v51[1] = v21;
  v51[2] = v12[3];
  v22 = v12[10];
  v37 = v12[9];
  v38[0] = v22;
  *(v38 + 10) = *(v12 + 170);
  v23 = v12[6];
  v33 = v12[5];
  v34 = v23;
  v24 = v12[8];
  v35 = v12[7];
  v36 = v24;
  v25 = v12[2];
  v29 = v12[1];
  v30 = v25;
  v26 = v12[4];
  v31 = v12[3];
  v32 = v26;
  sub_1820CD0E4(v49, v55);
  sub_1820CD0E4(v51, v55);
  v27 = sub_1820CC5DC(&v39, &v29);
  v53[8] = v37;
  v54[0] = v38[0];
  *(v54 + 10) = *(v38 + 10);
  v53[4] = v33;
  v53[5] = v34;
  v53[6] = v35;
  v53[7] = v36;
  v53[0] = v29;
  v53[1] = v30;
  v53[2] = v31;
  v53[3] = v32;
  sub_181C8F3A4(v53);
  v55[8] = v47;
  v56[0] = v48[0];
  *(v56 + 10) = *(v48 + 10);
  v55[4] = v43;
  v55[5] = v44;
  v55[6] = v45;
  v55[7] = v46;
  v55[0] = v39;
  v55[1] = v40;
  v55[2] = v41;
  v55[3] = v42;
  sub_181C8F3A4(v55);
  return v27;
}

uint64_t Interface.hash(into:)()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 185);
  MEMORY[0x1865DB070](*(*v0 + 16));
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AF5518[v1]);
  return MEMORY[0x1865DB070](qword_182AF5540[v2]);
}

uint64_t sub_1820CB4CC()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1820CB5A0()
{
  sub_182AD30E8();
}

uint64_t sub_1820CB660()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_1820CB730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1820CD098();
  *a1 = result;
  return result;
}

void sub_1820CB760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xE700000000000000;
  v8 = 0x65707974627573;
  if (v2 != 3)
  {
    v8 = 0x69746172656E6567;
    v7 = 0xEA00000000006E6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7865646E69;
    v3 = 0xE500000000000000;
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

uint64_t sub_1820CB7F0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1701869940;
  v4 = 0x65707974627573;
  if (v1 != 3)
  {
    v4 = 0x69746172656E6567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1820CB87C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1820CD098();
  *a1 = result;
  return result;
}

uint64_t sub_1820CB8A4(uint64_t a1)
{
  v2 = sub_1820CC810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820CB8E0(uint64_t a1)
{
  v2 = sub_1820CC810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Interface.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC810();
  sub_182AD4638();
  v17 = 0;

  sub_182AD40E8();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v16 = 1;
    sub_182AD4108();
    v15 = *(v8 + 184);
    v14 = 2;
    sub_1820CC864();
    sub_182AD4118();
    v13 = *(v8 + 185);
    v12 = 3;
    sub_1820CC8B8();
    sub_182AD4118();
    v11 = 4;
    sub_182AD4108();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t Interface.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC810();
  sub_182AD45E8();
  if (!v2)
  {
    v29 = 0;
    v9 = sub_182AD3FC8();
    v11 = v10;
    v12 = v9;
    v28 = 1;
    v20 = sub_182AD3FE8();
    v26 = 2;
    sub_1820CC90C();
    sub_182AD3FF8();
    v19 = v27;
    v24 = 3;
    sub_1820CC960();
    sub_182AD3FF8();
    v18 = v25;
    v23 = 4;
    v14 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    v22 = 1;
    v21 = 1;
    type metadata accessor for Interface.BackingClass();
    v15 = swift_allocObject();
    *(v15 + 16) = v20;
    *(v15 + 24) = 0;
    *(v15 + 32) = v14;
    *(v15 + 40) = v12;
    *(v15 + 48) = v11;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = xmmword_182AE69F0;
    *(v15 + 104) = 1;
    *(v15 + 112) = 0u;
    *(v15 + 128) = 0u;
    *(v15 + 144) = 0u;
    *(v15 + 160) = 256;
    *(v15 + 170) = 0;
    *(v15 + 162) = 0;
    *(v15 + 175) = 0;
    *(v15 + 183) = 1;
    v16 = v18;
    *(v15 + 184) = v19;
    *(v15 + 185) = v16;
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1820CBE98@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1820CBEF0(uint64_t a1)
{
  v2 = sub_181EBD8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820CBF2C(uint64_t a1)
{
  v2 = sub_181EBD8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterfaceType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181EBD8F0();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1820CC0B4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1820CC104@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1820CC15C(uint64_t a1)
{
  v2 = sub_1820CC9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820CC198(uint64_t a1)
{
  v2 = sub_1820CC9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InterfaceSubtype.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC9B4();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

uint64_t InterfaceSubtype.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC9B4();
  sub_182AD45E8();
  if (!v2)
  {
    v9 = sub_182AD3FE8();
    (*(v6 + 8))(v8, v5);
    v10 = 0x403000201000000uLL >> (8 * v9);
    if (v9 >= 8)
    {
      LOBYTE(v10) = 0;
    }

    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1820CC49C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A2D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820CC9B4();
  sub_182AD4638();
  sub_182AD4108();
  return (*(v3 + 8))(v5, v2);
}

BOOL sub_1820CC5DC(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 15);
  v58[4] = *(a1 + 13);
  v58[5] = v8;
  v9 = *(a1 + 19);
  v58[6] = *(a1 + 17);
  v58[7] = v9;
  v10 = *(a1 + 7);
  v58[0] = *(a1 + 5);
  v58[1] = v10;
  v11 = *(a1 + 11);
  v58[2] = *(a1 + 9);
  v58[3] = v11;
  v12 = *(a1 + 168);
  v13 = *(a1 + 169);
  v15 = *a2;
  v14 = a2[1];
  v17 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v19 = *(a2 + 19);
  v59[6] = *(a2 + 17);
  v59[7] = v19;
  v20 = *(a2 + 15);
  v59[4] = *(a2 + 13);
  v59[5] = v20;
  v21 = *(a2 + 11);
  v59[2] = *(a2 + 9);
  v59[3] = v21;
  v22 = *(a2 + 7);
  v59[0] = *(a2 + 5);
  v59[1] = v22;
  if (v4 == v15 && v3 == v14 && v6 == v17)
  {
    if (v23 = *(a2 + 168), v24 = *(a2 + 169), v5 == v16) && v7 == v18 || (v25 = a1, v26 = a2, v27 = sub_182AD4268(), a2 = v26, v28 = v27, a1 = v25, v2 = 0, (v28))
    {
      v29 = *(a1 + 15);
      v52 = *(a1 + 13);
      v53 = v29;
      v30 = *(a1 + 19);
      v54 = *(a1 + 17);
      v55 = v30;
      v31 = *(a1 + 7);
      v48 = *(a1 + 5);
      v49 = v31;
      v32 = *(a1 + 11);
      v50 = *(a1 + 9);
      v51 = v32;
      v33 = *(a2 + 15);
      v44 = *(a2 + 13);
      v45 = v33;
      v34 = *(a2 + 19);
      v46 = *(a2 + 17);
      v47 = v34;
      v35 = *(a2 + 7);
      v40 = *(a2 + 5);
      v41 = v35;
      v36 = *(a2 + 11);
      v42 = *(a2 + 9);
      v43 = v36;
      sub_181B9D0C4(v58, v39);
      sub_181B9D0C4(v59, v39);
      v37 = sub_181B9D150(&v48, &v40);
      v56[4] = v44;
      v56[5] = v45;
      v56[6] = v46;
      v56[7] = v47;
      v56[0] = v40;
      v56[1] = v41;
      v56[2] = v42;
      v56[3] = v43;
      sub_181B9D120(v56);
      v57[4] = v52;
      v57[5] = v53;
      v57[6] = v54;
      v57[7] = v55;
      v57[0] = v48;
      v57[1] = v49;
      v57[2] = v50;
      v57[3] = v51;
      sub_181B9D120(v57);
      return v37 && qword_182AF5518[v12] == qword_182AF5518[v23] && qword_182AF5540[v13] == qword_182AF5540[v24];
    }
  }

  return v2;
}

unint64_t sub_1820CC810()
{
  result = qword_1EA83A2A8;
  if (!qword_1EA83A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2A8);
  }

  return result;
}

unint64_t sub_1820CC864()
{
  result = qword_1EA8369C0;
  if (!qword_1EA8369C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8369C0);
  }

  return result;
}

unint64_t sub_1820CC8B8()
{
  result = qword_1EA83A2B0;
  if (!qword_1EA83A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2B0);
  }

  return result;
}

unint64_t sub_1820CC90C()
{
  result = qword_1EA836CA0;
  if (!qword_1EA836CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836CA0);
  }

  return result;
}

unint64_t sub_1820CC960()
{
  result = qword_1EA836C70;
  if (!qword_1EA836C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C70);
  }

  return result;
}

unint64_t sub_1820CC9B4()
{
  result = qword_1EA83A2D8;
  if (!qword_1EA83A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2D8);
  }

  return result;
}

unint64_t sub_1820CCA0C()
{
  result = qword_1EA83A2E8;
  if (!qword_1EA83A2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A2E8);
  }

  return result;
}

unint64_t sub_1820CCA94()
{
  result = qword_1EA83A300;
  if (!qword_1EA83A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A300);
  }

  return result;
}

unint64_t sub_1820CCB1C()
{
  result = qword_1EA83A318;
  if (!qword_1EA83A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A318);
  }

  return result;
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1820CCBDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 170))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1820CCC24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 170) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 170) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1820CCCD4()
{
  result = qword_1EA83A320;
  if (!qword_1EA83A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A320);
  }

  return result;
}

unint64_t sub_1820CCD2C()
{
  result = qword_1EA83A328;
  if (!qword_1EA83A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A328);
  }

  return result;
}

unint64_t sub_1820CCD84()
{
  result = qword_1EA83A330;
  if (!qword_1EA83A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A330);
  }

  return result;
}

unint64_t sub_1820CCDDC()
{
  result = qword_1EA83A338;
  if (!qword_1EA83A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A338);
  }

  return result;
}

unint64_t sub_1820CCE34()
{
  result = qword_1EA83A340;
  if (!qword_1EA83A340)
  {
    type metadata accessor for Interface.BackingClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A340);
  }

  return result;
}

unint64_t sub_1820CCE8C()
{
  result = qword_1EA83A348;
  if (!qword_1EA83A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A348);
  }

  return result;
}

unint64_t sub_1820CCEE4()
{
  result = qword_1EA83A350;
  if (!qword_1EA83A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A350);
  }

  return result;
}

unint64_t sub_1820CCF3C()
{
  result = qword_1EA836BB0;
  if (!qword_1EA836BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BB0);
  }

  return result;
}

unint64_t sub_1820CCF94()
{
  result = qword_1EA836BB8;
  if (!qword_1EA836BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836BB8);
  }

  return result;
}

unint64_t sub_1820CCFEC()
{
  result = qword_1EA83A358;
  if (!qword_1EA83A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A358);
  }

  return result;
}

unint64_t sub_1820CD044()
{
  result = qword_1EA83A360;
  if (!qword_1EA83A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A360);
  }

  return result;
}

uint64_t sub_1820CD098()
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

unint64_t sub_1820CD11C()
{
  result = qword_1EA83A368;
  if (!qword_1EA83A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A368);
  }

  return result;
}

uint64_t sub_1820CD170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1820CD1D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 128))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1820CD240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1820CD2E4()
{
  result = qword_1EA83A370;
  if (!qword_1EA83A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A370);
  }

  return result;
}

unint64_t sub_1820CD33C()
{
  result = qword_1EA83A378;
  if (!qword_1EA83A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A378);
  }

  return result;
}

unint64_t sub_1820CD394()
{
  result = qword_1EA83A380;
  if (!qword_1EA83A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A380);
  }

  return result;
}

unint64_t sub_1820CD3EC()
{
  result = qword_1EA83A388;
  if (!qword_1EA83A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A388);
  }

  return result;
}

unint64_t sub_1820CD460(unint64_t a1, uint64_t a2, size_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      __src[0] = a1;
      __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = a3;
      v6 = swift_slowAlloc();
      v7 = v6;
      v8 = __src;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = a3;
      v6 = swift_slowAlloc();
      v7 = v6;
      v8 = (v4 + 32);
LABEL_6:
      memcpy(v6, v8, v5);
      return v7;
    }
  }

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B780);
  sub_182AD3B78();
  if (!v3)
  {
    return __src[2];
  }

  return v7;
}

uint64_t sub_1820CD570(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  swift_beginAccess();
  v4 = *(v3 + 64);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {

    return 0;
  }

  v6 = qword_1ED4100E8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = word_1ED411CB0;
  v8 = qword_1ED411CB8;
  v9 = qword_1ED411CC0;
  v10 = byte_1ED411CC8;
  sub_181F49A24(qword_1ED411CB8, qword_1ED411CC0, byte_1ED411CC8);

  v11 = sub_181ADC1F8();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 57) = 0;
  *(v14 + 64) = 0;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 41) = v11;
  *(v14 + 49) = v13;
  swift_beginAccess();
  result = v14;
  *(v14 + 64) = v5;
  return result;
}

uint64_t _nw_quic_create_connection_options()
{
  if (qword_1ED40FF40 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411BF0 + 1);
  v1 = unk_1ED411C00;
  v2 = byte_1ED411C08;
  v3 = xmmword_1ED411BF0;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  sub_181F49A24(v0, v1, v2);
  v4 = sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  swift_allocObject();
  return sub_181AA94EC(v3, v0, v1, v2, v4);
}

void _nw_quic_connection_set_server_raw_public_keys(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_181E0C630(a1, a2);
}

void _nw_quic_connection_set_client_identity_reference(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  sub_1820CD8AC(a1, a2, a3);
}

uint64_t sub_1820CD8AC(uint64_t a1, id a2, void *a3)
{
  v103[27] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v8 = *(*result + 128);
    v9 = result;
    swift_beginAccess();
    v10 = *(v9 + v8);

    if (v10)
    {
      v11 = v10[14];
      if (!v11)
      {
      }

      v88 = v10[15];
      v12 = v10[17];
      v10[17] = 0;
      swift_unknownObjectRetain();

      v13 = v10[18];
      v10[18] = 0;

      v14 = MEMORY[0x1E69E7CC0];
      v96 = MEMORY[0x1E69E7CC0];
      v15 = MEMORY[0x1E697AFF8];
      v16 = MEMORY[0x1E697B3C8];
      v89 = v10;
      if (a3)
      {
        v17 = v10[18];
        v10[18] = a3;
        v18 = a3;

        v95 = v18;
        Count = CFArrayGetCount(v18);
        if (Count < 0)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v86 = a2;
        v87 = v11;
        if (Count)
        {
          v20 = 0;
          v21 = *MEMORY[0x1E697B328];
          v93 = *v15;
          v94 = v21;
          v92 = *MEMORY[0x1E697B000];
          v22 = *v16;
          v90 = MEMORY[0x1E69E7CC0];
          v91 = v22;
          while (1)
          {
            v23 = Count;
            ValueAtIndex = CFArrayGetValueAtIndex(v95, v20);
            if (!ValueAtIndex)
            {
              __break(1u);
            }

            v25 = ValueAtIndex;
            v99 = v94;
            v100 = 1;
            v101 = MEMORY[0x1E69E6370];
            v102[0] = v93;
            type metadata accessor for CFString(0);
            v102[1] = v92;
            v102[4] = v26;
            v103[0] = v91;
            type metadata accessor for CFData(0);
            v103[4] = v27;
            v103[1] = v25;
            v28 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3C0);
            v29 = sub_182AD3EE8();
            v30 = v94;
            v31 = v93;
            v32 = v92;
            v33 = v91;
            a2 = v28;
            sub_181AB5D28(&v99, &v97, &unk_1EA83A3B0);
            v34 = v97;
            v35 = sub_18224F430(v97);
            v3 = &v97;
            if (v36)
            {
              goto LABEL_44;
            }

            v37 = v29 + 8;
            *(v29 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
            *(v29[6] + 8 * v35) = v34;
            sub_181E7BFC4(v98, (v29[7] + 32 * v35));
            v38 = v29[2];
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_45;
            }

            v29[2] = v40;
            sub_181AB5D28(v102, &v97, &unk_1EA83A3B0);
            v41 = v97;
            v42 = sub_18224F430(v97);
            if (v43)
            {
              goto LABEL_44;
            }

            *(v37 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
            *(v29[6] + 8 * v42) = v41;
            sub_181E7BFC4(v98, (v29[7] + 32 * v42));
            v44 = v29[2];
            v39 = __OFADD__(v44, 1);
            v45 = v44 + 1;
            if (v39)
            {
              goto LABEL_45;
            }

            v29[2] = v45;
            sub_181AB5D28(v103, &v97, &unk_1EA83A3B0);
            v46 = v97;
            v47 = sub_18224F430(v97);
            if (v48)
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            *(v37 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
            *(v29[6] + 8 * v47) = v46;
            sub_181E7BFC4(v98, (v29[7] + 32 * v47));
            v49 = v29[2];
            v39 = __OFADD__(v49, 1);
            v50 = v49 + 1;
            if (v39)
            {
              goto LABEL_45;
            }

            v29[2] = v50;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3B0);
            swift_arrayDestroy();
            sub_1820D22C0();
            v51 = sub_182AD2E48();

            v97 = 0;
            v52 = SecItemCopyMatching(v51, &v97);
            if (v52)
            {
              if (v52 == -25300)
              {

                if (qword_1EA837248 != -1)
                {
                  swift_once();
                }

                v54 = sub_182AD2698();
                __swift_project_value_buffer(v54, qword_1EA843418);
                v55 = sub_182AD2678();
                v56 = sub_182AD38A8();
                v57 = os_log_type_enabled(v55, v56);
                v58 = v90;
                v16 = MEMORY[0x1E697B3C8];
                if (v57)
                {
                  v59 = swift_slowAlloc();
                  *v59 = 67109120;
                  *(v59 + 4) = -25300;
                  _os_log_impl(&dword_181A37000, v55, v56, "Failed to retrieve certificate (%d", v59, 8u);
                  MEMORY[0x1865DF520](v59, -1, -1);
                }

                swift_unknownObjectRelease();
                v10 = v89;
                v14 = v58;
                a2 = v86;
                goto LABEL_31;
              }
            }

            else if (v97)
            {
              v53 = swift_unknownObjectRetain_n();
              MEMORY[0x1865D9F10](v53);
              if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_182AD3408();
              }

              sub_182AD3448();
              swift_unknownObjectRelease();

              v90 = v96;
              goto LABEL_10;
            }

LABEL_10:
            ++v20;
            swift_unknownObjectRelease();
            Count = v23;
            if (v23 == v20)
            {
              goto LABEL_25;
            }
          }
        }

        v90 = MEMORY[0x1E69E7CC0];
LABEL_25:

        a2 = v86;
        v10 = v89;
        v14 = v90;
        v16 = MEMORY[0x1E697B3C8];
LABEL_31:
        v15 = MEMORY[0x1E697AFF8];
      }

      if (!a2)
      {

        return swift_unknownObjectRelease();
      }

      v90 = v14;
      v60 = v10[17];
      v10[17] = a2;
      v61 = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_182AE8B90;
      v63 = *MEMORY[0x1E697B328];
      *(inited + 32) = *MEMORY[0x1E697B328];
      *(inited + 40) = 1;
      v64 = *v15;
      *(inited + 64) = MEMORY[0x1E69E6370];
      *(inited + 72) = v64;
      v65 = *MEMORY[0x1E697B010];
      type metadata accessor for CFString(0);
      *(inited + 80) = v65;
      v66 = *v16;
      *(inited + 104) = v67;
      *(inited + 112) = v66;
      type metadata accessor for CFData(0);
      *(inited + 144) = v68;
      *(inited + 120) = v61;
      v95 = v61;
      v69 = v63;
      v70 = v64;
      v71 = v65;
      v72 = v66;
      sub_18225B244(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3B0);
      swift_arrayDestroy();
      sub_1820D22C0();
      a2 = sub_182AD2E48();

      v97 = 0;
      v73 = SecItemCopyMatching(a2, &v97);
      if (!v73)
      {
LABEL_38:
        if (!v97)
        {
LABEL_51:

          swift_unknownObjectRelease();

          goto LABEL_52;
        }

        type metadata accessor for SecIdentity(0);
        swift_unknownObjectRetain();
        v78 = swift_dynamicCastUnknownClassUnconditional();
        if (v90 >> 62)
        {
          if (sub_182AD3EB8())
          {
LABEL_41:
            v79 = sub_182AD33B8();
            v80 = sec_identity_create_with_certificates(v78, v79);

            if (v80)
            {
LABEL_42:
              ObjectType = swift_getObjectType();
              v94 = &v85;
              MEMORY[0x1EEE9AC00](ObjectType);
              v84[2] = v80;
              v82 = v88;
              v93 = a2;
              v83 = *(v88 + 344);
              swift_unknownObjectRetain();
              v83(sub_1820D24C0, v84, MEMORY[0x1E69E7CA8] + 8, ObjectType, v82);

              swift_unknownObjectRelease_n();

              swift_unknownObjectRelease();

LABEL_52:
              v97 = 0;

              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            goto LABEL_50;
          }
        }

        else if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v80 = sec_identity_create(v78);
        if (v80)
        {
          goto LABEL_42;
        }

LABEL_50:

        goto LABEL_51;
      }

      LODWORD(v3) = v73;
      if (qword_1EA837248 == -1)
      {
LABEL_35:
        v74 = sub_182AD2698();
        __swift_project_value_buffer(v74, qword_1EA843418);
        v75 = sub_182AD2678();
        v76 = sub_182AD38A8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 67109120;
          *(v77 + 4) = v3;
          _os_log_impl(&dword_181A37000, v75, v76, "Failed to retrieve identity %d", v77, 8u);
          MEMORY[0x1865DF520](v77, -1, -1);
        }

        goto LABEL_38;
      }

LABEL_47:
      swift_once();
      goto LABEL_35;
    }
  }

  return result;
}

void sub_1820CE278(int a1, uint64_t a2, SecIdentityRef identityRef)
{
  certificateRef[1] = *MEMORY[0x1E69E9840];
  certificateRef[0] = 0;
  if (SecIdentityCopyCertificate(identityRef, certificateRef) || !certificateRef[0])
  {
    goto LABEL_7;
  }

  v4 = certificateRef[0];
  v5 = SecCertificateCopyKey(v4);
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = v5;
  v7 = SecKeyCopySubjectPublicKeyInfo();
  if (v7)
  {
    v8 = v7;
    v9 = sub_182AD2158();
    v11 = v10;

    ObjectType = swift_getObjectType();
    v13 = MEMORY[0x1EEE9AC00](ObjectType);
    (*(a2 + 344))(sub_1820D24B0, v13);

    sub_181C1F2E4(v9, v11);
LABEL_7:
    v14 = certificateRef[0];
    certificateRef[0] = 0;

    return;
  }

  __break(1u);
}

void sub_1820CE3D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A3E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_182AE9730;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  swift_unknownObjectRetain();
  sub_181F49B58(a2, a3);
  v6 = sub_182AD33B8();

  sec_protocol_options_set_client_raw_public_key_certificates();
  swift_unknownObjectRelease();
}

uint64_t _nw_quic_connection_get_selected_key_index(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 255;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 255;
  }

  v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex);

  return v6;
}

uint64_t _nw_quic_connection_set_local_identity(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  sub_1820CE59C(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_1820CE59C(uint64_t a1, void *a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
    swift_unknownObjectRetain();
    v4 = sub_181AA8420(a1);
    if (v4)
    {
      v5 = *(*v4 + 128);
      v6 = v4;
      swift_beginAccess();
      v7 = *(v6 + v5);

      if (v7)
      {
        if (v7[14])
        {
          v8 = v7[15];
          ObjectType = swift_getObjectType();
          MEMORY[0x1EEE9AC00](ObjectType);
          v17[2] = a2;
          v10 = *(v8 + 344);
          swift_unknownObjectRetain();
          v10(sub_1820D2318, v17, MEMORY[0x1E69E7CA8] + 8, ObjectType, v8);
          v11 = nw_utilities_public_key_info_for_sec_identity(a2);
          v12 = sub_182AD2158();
          v14 = v13;

          v15 = sub_182AD2138();
          swift_unknownObjectRelease();
          sub_181C1F2E4(v12, v14);
          swift_unknownObjectRelease();
          v16 = v7[19];
          v7[19] = v15;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }
}

id _nw_quic_connection_copy_local_public_key(uint64_t a1)
{
  v1 = sub_1820CE7C4(a1);

  return v1;
}

void *sub_1820CE7C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 128);
  v4 = v2;
  swift_beginAccess();
  v5 = *(v4 + v3);

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 152);
  v7 = v6;

  return v6;
}

uint64_t _nw_quic_connection_set_trusted_peer_keys(uint64_t a1, uint64_t a2, void *a3)
{
  sub_182AD33C8();
  v5 = a3;
  sub_1820CE8E4(a1);
}

void sub_1820CE8E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v2 = sub_181AA8420(a1);
  if (v2)
  {
    v3 = *(*v2 + 128);
    v4 = v2;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      if (v5[19])
      {
        swift_allocObject();
        swift_weakInit();
        if (v5[14])
        {
          v6 = v5[15];
          v7 = v5[19];
          v5[19] = 0;
          swift_unknownObjectRetain();

          ObjectType = swift_getObjectType();
          v9 = MEMORY[0x1EEE9AC00](ObjectType);
          (*(v6 + 344))(sub_1820D2320, v9);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v10 = sub_182AD2698();
  __swift_project_value_buffer(v10, qword_1EA843418);
  v11 = sub_182AD2678();
  v12 = sub_182AD38B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_181A37000, v11, v12, "Not setting verify block, local_public_key is NULL", v13, 2u);
    MEMORY[0x1865DF520](v13, -1, -1);
  }
}

uint64_t sub_1820CEB44(NSObject *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v11[4] = sub_1820D24A8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_18218793C;
  v11[3] = &block_descriptor_21_0;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  sec_protocol_options_set_verify_block(a1, v9, a4);
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1820CEC48(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = -1;
  v5 = sub_182AD33B8();
  v6 = nw_utilities_trust_ref_matches_public_key(a2, v5, &v9);

  result = a3(v6);
  v8 = v9;
  if (v9 != 255)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__keyIndex) = v8;
    }
  }

  return result;
}

uint64_t sub_1820CED50(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x2000) == 0)
        {
          v9 = v8 | 0x2000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x2000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFDFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820CEE28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      if (*(v5 + 112))
      {
        v6 = *(v5 + 120);
        ObjectType = swift_getObjectType();
        v8 = *(v6 + 344);
        swift_unknownObjectRetain();
        v8(j__sec_protocol_options_clear_tls_application_protocols, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v6);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1820CEF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  result = sub_181CB38E8(a1);
  if (result)
  {
    v7 = *(*result + 128);
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 48);
      if (*(v10 + 112))
      {
        v11 = *(v10 + 120);
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 344);
        swift_unknownObjectRetain();
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3C8);
        v13(v21, sub_1820CF244, 0, v14, ObjectType, v11);
        v15 = v21[0];
        if (v21[0])
        {
          Class = object_getClass(v21[0]);
          if (Class == sub_182AD26C8())
          {
            v17 = swift_allocObject();
            *(v17 + 16) = a2;
            *(v17 + 24) = a3;
            v18 = swift_allocObject();
            v18[2] = sub_1820D23B8;
            v18[3] = v17;
            v21[4] = sub_181F7CCCC;
            v21[5] = v18;
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 1107296256;
            v21[2] = sub_181F79D48;
            v21[3] = &block_descriptor_20;
            v19 = _Block_copy(v21);

            xpc_array_apply(v15, v19);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            _Block_release(v19);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              __break(1u);
            }
          }

          else
          {

            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {

          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1820CF244@<X0>(uint64_t *a1@<X8>)
{
  result = sec_protocol_options_copy_transport_specific_application_protocol();
  *a1 = result;
  return result;
}

uint64_t sub_1820CF270(int a1, id a2, uint64_t (*a3)(void))
{
  Class = object_getClass(a2);
  if (Class == sub_182AD26D8() && xpc_string_get_string_ptr(a2))
  {
    return a3() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _nw_quic_connection_set_initial_max_data(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 16) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_streams_unidirectional(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 56) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_stream_data_bidirectional_local(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 24) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 32) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_initial_max_stream_data_unidirectional(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1820CF638(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = a2 == 1;
      if (a2 == 2)
      {
        v8 = 2;
      }

      *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_streamPathAffinity) = v8;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_source_connection_id(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  if (a2)
  {
    sub_182AD2818();
    v7 = sub_182AD2868();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_182AD2868();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v9 = sub_181AA8420(a1);
  if (v9)
  {
    v10 = *(*v9 + 128);
    v11 = v9;
    swift_beginAccess();
    v12 = *(v11 + v10);

    if (v12)
    {
      v13 = OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_sourceConnectionID;
      swift_beginAccess();
      sub_1820D23C0(v6, v12 + v13);
      swift_endAccess();
    }
  }

  return sub_181F49A88(v6, &unk_1EA8394B0);
}

uint64_t _nw_quic_connection_set_ack_delay_sizeTm(uint64_t a1, char a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v7 = *(*result + 128);
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      *(v9 + *a3) = a2;
    }
  }

  return result;
}

uint64_t sub_1820CF9B8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 1) == 0)
        {
          v9 = v8 | 1;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if (v8)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820CFA90(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 2) == 0)
        {
          v9 = v8 | 2;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 2) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFFDLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820CFB68(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 4) == 0)
        {
          v9 = v8 | 4;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 4) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_pmtud_update_interval(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateInterval) = a2;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_execute_pmtud_update_block(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      sub_18227FBA4(a2);
    }
  }

  return result;
}

void _nw_quic_connection_set_pmtud_update_blockTm(uint64_t a1, void *aBlock, void *a3)
{
  v5 = _Block_copy(aBlock);
  v6 = a3;
  sub_1820CFE10(a1, v5, v6);

  _Block_release(v5);
}

void sub_1820CFE10(uint64_t a1, void *aBlock, void *a3)
{
  v5 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v6 = sub_181AA8420(a1);
  if (v6)
  {
    v7 = *(*v6 + 128);
    v8 = v6;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock);
      *(v9 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateBlock) = v5;
      _Block_release(v10);
      v11 = *(v9 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue);
      *(v9 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_pmtudUpdateQueue) = a3;

      v12 = a3;

      return;
    }
  }

  _Block_release(v5);
}

uint64_t _nw_quic_connection_get_setup_placeholderTm(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 23) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D0014(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x800000) == 0)
        {
          v9 = v8 | 0x800000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x800000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFF7FFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_migration_for_non_transport(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 15) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D01A0(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x8000) == 0)
        {
          v9 = v8 | 0x8000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x8000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFF7FFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_retry(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 3) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D032C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 8) == 0)
        {
          v9 = v8 | 8;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 8) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFF7;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0404(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x10) == 0)
        {
          v9 = v8 | 0x10;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFEFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D04DC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x20) == 0)
        {
          v9 = v8 | 0x20;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFDFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D05B4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x40) == 0)
        {
          v9 = v8 | 0x40;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFFBFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D068C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x80) == 0)
        {
          v9 = v8 | 0x80;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFF7FLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0764(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x100) == 0)
        {
          v9 = v8 | 0x100;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x100) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFEFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D083C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x200) == 0)
        {
          v9 = v8 | 0x200;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x200) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFFFDFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0914(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      if (a2 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      if (!a2)
      {
        v8 = 0;
      }

      *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_enableL4S) = v8;
    }
  }

  return result;
}

uint64_t sub_1820D09E4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x10000) == 0)
        {
          v9 = v8 | 0x10000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x10000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFEFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0ABC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x20000) == 0)
        {
          v9 = v8 | 0x20000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x20000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFDFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0B94(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x40000) == 0)
        {
          v9 = v8 | 0x40000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x40000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFFBFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_spin_bit_value(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v3 = *(*result + 128);
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + v3);

    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);

      return (v6 >> 18) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D0D20(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x100000) == 0)
        {
          v9 = v8 | 0x100000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x100000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFEFFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0DF8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x200000) == 0)
        {
          v9 = v8 | 0x200000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x200000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFDFFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0ECC(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v5 = *(*result + 128);
    v6 = result;
    swift_beginAccess();
    v7 = *(v6 + v5);

    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if (a2)
      {
        if ((v8 & 0x400000) == 0)
        {
          v9 = v8 | 0x400000;
LABEL_8:
          *(v7 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v9;
        }
      }

      else if ((v8 & 0x400000) != 0)
      {
        v9 = v8 & 0xFFFFFFFFFFBFFFFFLL;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t sub_1820D0FBC(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v7 = *(*result + 128);
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + v7);

    if (v9)
    {
      if (a2 == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = a2 == 2;
      }

      sub_18227FF0C(v10, a3);
    }
  }

  return result;
}

uint64_t sub_1820D1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  result = sub_181AA8420(a1);
  if (result)
  {
    v15 = *(*result + 128);
    v16 = result;
    swift_beginAccess();
    v17 = *(v16 + v15);

    if (v17)
    {
      v17[8] = a2;
      v17[9] = a3;
      v17[10] = a4;
      v17[11] = a5;
      v17[12] = a6;
      v17[13] = a7;
      v18 = *(v17 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
      if ((v18 & 0x80000) == 0)
      {
        *(v17 + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) = v18 | 0x80000;
      }
    }
  }

  return result;
}

uint64_t sub_1820D1180(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 72);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1248(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 80);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1328(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 96);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D13F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 104);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D14B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 112);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1580(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 144);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D1644(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 136);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D170C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      v7 = *(v6 + 224);
      if (v7)
      {
        (*(v7 + 16))(v7, a2 & 1);
      }

      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D17D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 256) + 16));
      v7 = *(v6 + 168);
      if (v7)
      {
        (*(v7 + 16))(v7, a2);
      }

      os_unfair_lock_unlock((*(v6 + 256) + 16));
    }
  }

  return result;
}

uint64_t sub_1820D189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + 64);

    if (v8)
    {
      os_unfair_lock_lock((*(v8 + 248) + 16));
      if (a2)
      {
        v9 = *(v8 + 200);
        if (v9)
        {
          (*(v9 + 16))(v9, a2, a3);
        }
      }

      os_unfair_lock_unlock((*(v8 + 248) + 16));
    }
  }

  return result;
}

uint64_t _nw_quic_iterate_tls_application_protocolsTm(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  a5(a1, a4, v9);
}

uint64_t sub_1820D1A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + 64);

    if (v8)
    {
      os_unfair_lock_lock((*(v8 + 248) + 16));
      v9 = *(v8 + 216);
      if (v9)
      {
        aBlock[4] = a2;
        aBlock[5] = a3;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1820D2260;
        aBlock[3] = &block_descriptor_15_0;
        v10 = _Block_copy(aBlock);
        v11 = *(v9 + 16);

        v11(v9, v10);
        _Block_release(v10);
      }

      os_unfair_lock_unlock((*(v8 + 248) + 16));
    }
  }

  return result;
}

uint64_t _nw_quic_connection_set_application_error_internal(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      *(v6 + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1820D1C04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      os_unfair_lock_lock((*(v4 + 248) + 16));
      v5 = *(v4 + 128);
      if (v5)
      {
        v6 = (*(v5 + 16))();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock((*(v4 + 248) + 16));

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1CD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      os_unfair_lock_lock((*(v4 + 248) + 16));
      v5 = *(v4 + 120);
      if (v5)
      {
        v6 = (*(v5 + 16))();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock((*(v4 + 248) + 16));

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1D9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      os_unfair_lock_lock((*(v4 + 248) + 16));
      v5 = *(v4 + 160);
      if (v5)
      {
        v6 = (*(v5 + 16))();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock((*(v4 + 248) + 16));

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1E68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      os_unfair_lock_lock((*(v4 + 248) + 16));
      v5 = *(v4 + 152);
      if (v5)
      {
        v6 = (*(v5 + 16))();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock((*(v4 + 248) + 16));

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1820D1F4C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      os_unfair_lock_lock((*(v4 + 248) + 16));
      v5 = *(v4 + 192);
      if (v5)
      {
        v6 = (*(v5 + 16))();
      }

      else
      {
        v6 = 0;
      }

      os_unfair_lock_unlock((*(v4 + 248) + 16));

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _nw_quic_connection_get_is_early_data_accepted(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  v2 = sub_181A93260(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 64);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 232);

  return v5;
}

uint64_t _nw_quic_connection_set_application_error_reason(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (v4)
    {
      *(v4 + 24) = sub_182AD3158();
      *(v4 + 32) = v5;
    }
  }

  return result;
}

uint64_t sub_1820D2158(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (!result)
  {
    return result;
  }

  v3 = result;
  swift_beginAccess();
  v4 = *(v3 + 64);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  if (!v5)
  {

    return 0;
  }

  v6 = *(v4 + 24);
  if ((v5 & 0x1000000000000000) != 0)
  {
    result = sub_182AD3168();
    v7 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_9:

      v8 = sub_1820CD460(v6, v5, v7);

      return v8;
    }
  }

  else
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(v5) & 0xF;
    }

    else
    {
      result = v6 & 0xFFFFFFFFFFFFLL;
    }

    v7 = result + 1;
    if (!__OFADD__(result, 1))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1820D2260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

unint64_t sub_1820D22C0()
{
  result = qword_1EA838418;
  if (!qword_1EA838418)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838418);
  }

  return result;
}

unint64_t sub_1820D232C()
{
  result = qword_1ED40FD40;
  if (!qword_1ED40FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83A3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40FD40);
  }

  return result;
}

uint64_t sub_1820D23C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1820D2448@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = swift_slowAlloc();
  result = memcpy(v6, a1, v5);
  *a2 = v6;
  return result;
}

void static HTTPField.Name.cookie.getter(void *a1@<X8>)
{
  *a1 = 0x65696B6F6F43;
  a1[1] = 0xE600000000000000;
  a1[2] = 0x65696B6F6F63;
  a1[3] = 0xE600000000000000;
}

uint64_t static HTTPField.Name.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

unint64_t sub_1820D252C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1 >> 14;
  v5 = a2 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    return 0;
  }

  v9 = a1;
  v10 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v17 = a4 & 0xFFFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v13 = v9 & 0xC;
    result = v9;
    if (v13 == v11)
    {
      result = sub_18208A330(v9, a3, a4);
    }

    if (result >> 14 < v4 || result >> 14 >= v5)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_182AD31C8();
      v15 = result;
      if (v13 != v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v18[0] = a3;
        v18[1] = v17;
        v15 = *(v18 + v14);
        if (v13 != v11)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v16;
        if ((a3 & 0x1000000000000000) == 0)
        {
          result = sub_182AD3CF8();
        }

        v15 = *(result + v14);
        if (v13 != v11)
        {
LABEL_23:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_24;
        }
      }
    }

    result = sub_18208A330(v9, a3, a4);
    v9 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_24:
    if (v12 <= v9 >> 16)
    {
      goto LABEL_37;
    }

    v9 = sub_182AD3178();
LABEL_9:
    if ((v15 - 33 > 0x3F || ((1 << (v15 - 33)) & 0xE00000000000367DLL) == 0) && v15 != 124 && v15 != 126 && (v15 - 58) <= 0xF5u && (v15 - 91) <= 0xE5u && (v15 - 123) < 0xE6u)
    {
      return 0;
    }

    if (v5 == v9 >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t HTTPField.Name.rawName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HTTPField.Name.canonicalName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double HTTPField.Name.init(_:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 && (sub_181CA3274(a1, a2) & 1) != 0)
  {
    v7 = sub_182AD3028();
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v7;
    a3[3] = v9;
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t HTTPField.Name.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820D2870()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820D28C4()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_1820D290C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_182AD4268();
  }
}

uint64_t HTTPField.Name.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1820D2958@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

uint64_t HTTPField.Name.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4618();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_182AD42B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t HTTPField.Name.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD45C8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v5 = sub_182AD4288();
    v7 = v5;
    v8 = v6;
    if ((sub_181CBD984(v5, v6) & 0x1FF) == 0x3A)
    {
      if (sub_182AD3028() == v7 && v9 == v8)
      {
      }

      else
      {
        v11 = sub_182AD4268();

        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v16 = sub_181DDDBAC(1uLL, v7, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;

      LOBYTE(v16) = sub_1820D252C(v16, v18, v20, v22);

      if ((v16 & 1) == 0)
      {
LABEL_20:
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BDD400);
LABEL_21:
        MEMORY[0x1865D9CA0](v7, v8);

        MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD79F0);
        sub_182AD3C98();
        swift_allocError();
        sub_182AD3C58();

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v24);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v13 = v7;
      v15 = v8;
    }

    else
    {
      v12 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v12 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (sub_181CA3274(v7, v8) & 1) == 0)
      {
        sub_182AD3BA8();

        goto LABEL_21;
      }

      v13 = sub_182AD3028();
      v15 = v14;
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v13;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1820D2CF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_182AD4618();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_182AD42B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void static HTTPField.Name.accept.getter(void *a1@<X8>)
{
  *a1 = 0x747065636341;
  a1[1] = 0xE600000000000000;
  a1[2] = 0x747065636361;
  a1[3] = 0xE600000000000000;
}

void static HTTPField.Name.acceptEncoding.getter(void *a1@<X8>)
{
  *a1 = 0x452D747065636341;
  a1[1] = 0xEF676E69646F636ELL;
  a1[2] = 0x652D747065636361;
  a1[3] = 0xEF676E69646F636ELL;
}

void static HTTPField.Name.acceptLanguage.getter(void *a1@<X8>)
{
  *a1 = 0x4C2D747065636341;
  a1[1] = 0xEF65676175676E61;
  a1[2] = 0x6C2D747065636361;
  a1[3] = 0xEF65676175676E61;
}

void static HTTPField.Name.acceptRanges.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Accept-Ranges");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "accept-ranges");
  *(a1 + 30) = -4864;
}

void static HTTPField.Name.accessControlAllowCredentials.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000020;
  a1[1] = 0x8000000182BDD420;
  a1[2] = 0xD000000000000020;
  a1[3] = 0x8000000182BDD450;
}

void static HTTPField.Name.accessControlAllowHeaders.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000182BDD480;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x8000000182BDD4A0;
}

void static HTTPField.Name.accessControlAllowMethods.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000182BDD4C0;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x8000000182BDD4E0;
}

void static HTTPField.Name.accessControlAllowOrigin.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x8000000182BDD500;
  a1[2] = 0xD00000000000001BLL;
  a1[3] = 0x8000000182BDD520;
}

void static HTTPField.Name.accessControlExposeHeaders.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001DLL;
  a1[1] = 0x8000000182BDD540;
  a1[2] = 0xD00000000000001DLL;
  a1[3] = 0x8000000182BDD560;
}

void static HTTPField.Name.accessControlMaxAge.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000182BDD580;
  a1[2] = 0xD000000000000016;
  a1[3] = 0x8000000182BDD5A0;
}

void static HTTPField.Name.accessControlRequestHeaders.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001ELL;
  a1[1] = 0x8000000182BDD5C0;
  a1[2] = 0xD00000000000001ELL;
  a1[3] = 0x8000000182BDD5E0;
}

void static HTTPField.Name.accessControlRequestMethod.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001DLL;
  a1[1] = 0x8000000182BDD600;
  a1[2] = 0xD00000000000001DLL;
  a1[3] = 0x8000000182BDD620;
}

void static HTTPField.Name.age.getter(void *a1@<X8>)
{
  *a1 = 6645569;
  a1[1] = 0xE300000000000000;
  a1[2] = 6645601;
  a1[3] = 0xE300000000000000;
}

void static HTTPField.Name.allow.getter(void *a1@<X8>)
{
  *a1 = 0x776F6C6C41;
  a1[1] = 0xE500000000000000;
  a1[2] = 0x776F6C6C61;
  a1[3] = 0xE500000000000000;
}

void static HTTPField.Name.authenticationInfo.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000182BDD640;
  a1[2] = 0xD000000000000013;
  a1[3] = 0x8000000182BDD660;
}

void static HTTPField.Name.authorization.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Authorization");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "authorization");
  *(a1 + 30) = -4864;
}

void static HTTPField.Name.cacheControl.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Cache-Control");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "cache-control");
  *(a1 + 30) = -4864;
}

void static HTTPField.Name.connection.getter(void *a1@<X8>)
{
  *a1 = 0x697463656E6E6F43;
  a1[1] = 0xEA00000000006E6FLL;
  a1[2] = 0x697463656E6E6F63;
  a1[3] = 0xEA00000000006E6FLL;
}

void static HTTPField.Name.contentDisposition.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000182BDD680;
  a1[2] = 0xD000000000000013;
  a1[3] = 0x8000000182BDD6A0;
}

void static HTTPField.Name.contentEncoding.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000182BDD6C0;
  a1[2] = 0xD000000000000010;
  a1[3] = 0x8000000182BDD6E0;
}

void static HTTPField.Name.contentLanguage.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000182BDD700;
  a1[2] = 0xD000000000000010;
  a1[3] = 0x8000000182BDD720;
}

void static HTTPField.Name.contentLength.getter(char *a1@<X8>)
{
  strcpy(a1, "Content-Length");
  a1[15] = -18;
  strcpy(a1 + 16, "content-length");
  a1[31] = -18;
}

void static HTTPField.Name.contentLocation.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000182BDD740;
  a1[2] = 0xD000000000000010;
  a1[3] = 0x8000000182BDD760;
}

void static HTTPField.Name.contentRange.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Content-Range");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "content-range");
  *(a1 + 30) = -4864;
}

void static HTTPField.Name.contentSecurityPolicy.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000017;
  a1[1] = 0x8000000182BDD780;
  a1[2] = 0xD000000000000017;
  a1[3] = 0x8000000182BDD7A0;
}

void static HTTPField.Name.contentSecurityPolicyReportOnly.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000023;
  a1[1] = 0x8000000182BDD7C0;
  a1[2] = 0xD000000000000023;
  a1[3] = 0x8000000182BDD7F0;
}

void static HTTPField.Name.contentType.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Content-Type");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  strcpy((a1 + 16), "content-type");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
}

void static HTTPField.Name.crossOriginResourcePolicy.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000182BDD820;
  a1[2] = 0xD00000000000001CLL;
  a1[3] = 0x8000000182BDD840;
}

void static HTTPField.Name.date.getter(void *a1@<X8>)
{
  *a1 = 1702125892;
  a1[1] = 0xE400000000000000;
  a1[2] = 1702125924;
  a1[3] = 0xE400000000000000;
}

void static HTTPField.Name.earlyData.getter(void *a1@<X8>)
{
  *a1 = 0x61442D796C726145;
  a1[1] = 0xEA00000000006174;
  a1[2] = 0x61642D796C726165;
  a1[3] = 0xEA00000000006174;
}

void static HTTPField.Name.eTag.getter(void *a1@<X8>)
{
  *a1 = 1734431813;
  a1[1] = 0xE400000000000000;
  a1[2] = 1734440037;
  a1[3] = 0xE400000000000000;
}

void static HTTPField.Name.expect.getter(void *a1@<X8>)
{
  *a1 = 0x746365707845;
  a1[1] = 0xE600000000000000;
  a1[2] = 0x746365707865;
  a1[3] = 0xE600000000000000;
}

void static HTTPField.Name.expires.getter(void *a1@<X8>)
{
  *a1 = 0x73657269707845;
  a1[1] = 0xE700000000000000;
  a1[2] = 0x73657269707865;
  a1[3] = 0xE700000000000000;
}

void static HTTPField.Name.from.getter(void *a1@<X8>)
{
  *a1 = 1836020294;
  a1[1] = 0xE400000000000000;
  a1[2] = 1836020326;
  a1[3] = 0xE400000000000000;
}

void static HTTPField.Name.host.getter(void *a1@<X8>)
{
  *a1 = 1953722184;
  a1[1] = 0xE400000000000000;
  a1[2] = 1953722216;
  a1[3] = 0xE400000000000000;
}

void static HTTPField.Name.ifMatch.getter(void *a1@<X8>)
{
  *a1 = 0x686374614D2D6649;
  a1[1] = 0xE800000000000000;
  a1[2] = 0x686374616D2D6669;
  a1[3] = 0xE800000000000000;
}

void static HTTPField.Name.ifModifiedSince.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000182BDD860;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x8000000182BDD880;
}

void static HTTPField.Name.ifNoneMatch.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "If-None-Match");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "if-none-match");
  *(a1 + 30) = -4864;
}

void static HTTPField.Name.ifRange.getter(void *a1@<X8>)
{
  *a1 = 0x65676E61522D6649;
  a1[1] = 0xE800000000000000;
  a1[2] = 0x65676E61722D6669;
  a1[3] = 0xE800000000000000;
}

void static HTTPField.Name.ifUnmodifiedSince.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000182BDD8A0;
  a1[2] = 0xD000000000000013;
  a1[3] = 0x8000000182BDD8C0;
}

void static HTTPField.Name.lastModified.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Last-Modified");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "last-modified");
  *(a1 + 30) = -4864;
}

void static HTTPField.Name.location.getter(void *a1@<X8>)
{
  *a1 = 0x6E6F697461636F4CLL;
  a1[1] = 0xE800000000000000;
  a1[2] = 0x6E6F697461636F6CLL;
  a1[3] = 0xE800000000000000;
}

void static HTTPField.Name.maxForwards.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Max-Forwards");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  strcpy((a1 + 16), "max-forwards");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
}

void static HTTPField.Name.origin.getter(void *a1@<X8>)
{
  *a1 = 0x6E696769724FLL;
  a1[1] = 0xE600000000000000;
  a1[2] = 0x6E696769726FLL;
  a1[3] = 0xE600000000000000;
}

void static HTTPField.Name.priority.getter(void *a1@<X8>)
{
  *a1 = 0x797469726F697250;
  a1[1] = 0xE800000000000000;
  a1[2] = 0x797469726F697270;
  a1[3] = 0xE800000000000000;
}

void static HTTPField.Name.proxyAuthenticate.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000012;
  a1[1] = 0x8000000182BDD8E0;
  a1[2] = 0xD000000000000012;
  a1[3] = 0x8000000182BDD900;
}

void static HTTPField.Name.proxyAuthenticationInfo.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000019;
  a1[1] = 0x8000000182BDD920;
  a1[2] = 0xD000000000000019;
  a1[3] = 0x8000000182BDD940;
}

void static HTTPField.Name.proxyAuthorization.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000182BDD960;
  a1[2] = 0xD000000000000013;
  a1[3] = 0x8000000182BDD980;
}

void static HTTPField.Name.proxyStatus.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Proxy-Status");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  strcpy((a1 + 16), "proxy-status");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
}

void static HTTPField.Name.range.getter(void *a1@<X8>)
{
  *a1 = 0x65676E6152;
  a1[1] = 0xE500000000000000;
  a1[2] = 0x65676E6172;
  a1[3] = 0xE500000000000000;
}

void static HTTPField.Name.referer.getter(void *a1@<X8>)
{
  *a1 = 0x72657265666552;
  a1[1] = 0xE700000000000000;
  a1[2] = 0x72657265666572;
  a1[3] = 0xE700000000000000;
}

void static HTTPField.Name.retryAfter.getter(void *a1@<X8>)
{
  *a1 = 0x66412D7972746552;
  a1[1] = 0xEB00000000726574;
  a1[2] = 0x66612D7972746572;
  a1[3] = 0xEB00000000726574;
}

void static HTTPField.Name.secPurpose.getter(void *a1@<X8>)
{
  *a1 = 0x707275502D636553;
  a1[1] = 0xEB0000000065736FLL;
  a1[2] = 0x707275702D636573;
  a1[3] = 0xEB0000000065736FLL;
}

void static HTTPField.Name.secWebSocketAccept.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000014;
  a1[1] = 0x8000000182BDD9A0;
  a1[2] = 0xD000000000000014;
  a1[3] = 0x8000000182BDD9C0;
}

void static HTTPField.Name.secWebSocketExtensions.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000182BDD9E0;
  a1[2] = 0xD000000000000018;
  a1[3] = 0x8000000182BDDA00;
}

void static HTTPField.Name.secWebSocketKey.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000182BDDA20;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x8000000182BDDA40;
}

void static HTTPField.Name.secWebSocketProtocol.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000182BDDA60;
  a1[2] = 0xD000000000000016;
  a1[3] = 0x8000000182BDDA80;
}

void static HTTPField.Name.secWebSocketVersion.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000015;
  a1[1] = 0x8000000182BDDAA0;
  a1[2] = 0xD000000000000015;
  a1[3] = 0x8000000182BDDAC0;
}

void static HTTPField.Name.server.getter(void *a1@<X8>)
{
  *a1 = 0x726576726553;
  a1[1] = 0xE600000000000000;
  a1[2] = 0x726576726573;
  a1[3] = 0xE600000000000000;
}

void static HTTPField.Name.setCookie.getter(void *a1@<X8>)
{
  *a1 = 0x6B6F6F432D746553;
  a1[1] = 0xEA00000000006569;
  a1[2] = 0x6B6F6F632D746573;
  a1[3] = 0xEA00000000006569;
}

void static HTTPField.Name.strictTransportSecurity.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000019;
  a1[1] = 0x8000000182BDDAE0;
  a1[2] = 0xD000000000000019;
  a1[3] = 0x8000000182BDDB00;
}

void static HTTPField.Name.te.getter(void *a1@<X8>)
{
  *a1 = 17748;
  a1[1] = 0xE200000000000000;
  a1[2] = 25972;
  a1[3] = 0xE200000000000000;
}

void static HTTPField.Name.trailer.getter(void *a1@<X8>)
{
  *a1 = 0x72656C69617254;
  a1[1] = 0xE700000000000000;
  a1[2] = 0x72656C69617274;
  a1[3] = 0xE700000000000000;
}

void static HTTPField.Name.transferEncoding.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000182BDDB20;
  a1[2] = 0xD000000000000011;
  a1[3] = 0x8000000182BDDB40;
}

void static HTTPField.Name.upgrade.getter(void *a1@<X8>)
{
  *a1 = 0x65646172677055;
  a1[1] = 0xE700000000000000;
  a1[2] = 0x65646172677075;
  a1[3] = 0xE700000000000000;
}

void static HTTPField.Name.userAgent.getter(void *a1@<X8>)
{
  *a1 = 0x6567412D72657355;
  a1[1] = 0xEA0000000000746ELL;
  a1[2] = 0x6567612D72657375;
  a1[3] = 0xEA0000000000746ELL;
}

void static HTTPField.Name.vary.getter(void *a1@<X8>)
{
  *a1 = 2037539158;
  a1[1] = 0xE400000000000000;
  a1[2] = 2037539190;
  a1[3] = 0xE400000000000000;
}

void static HTTPField.Name.via.getter(void *a1@<X8>)
{
  *a1 = 6383958;
  a1[1] = 0xE300000000000000;
  a1[2] = 6383990;
  a1[3] = 0xE300000000000000;
}

void static HTTPField.Name.wwwAuthenticate.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000010;
  a1[1] = 0x8000000182BDDB60;
  a1[2] = 0xD000000000000010;
  a1[3] = 0x8000000182BDDB80;
}

void static HTTPField.Name.xContentTypeOptions.getter(void *a1@<X8>)
{
  *a1 = 0xD000000000000016;
  a1[1] = 0x8000000182BDDBA0;
  a1[2] = 0xD000000000000016;
  a1[3] = 0x8000000182BDDBC0;
}

unint64_t sub_1820D3A5C()
{
  result = qword_1EA83A3F0;
  if (!qword_1EA83A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A3F0);
  }

  return result;
}

unint64_t sub_1820D3AB4()
{
  result = qword_1EA83A3F8;
  if (!qword_1EA83A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A3F8);
  }

  return result;
}

uint64_t sub_1820D3B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v3;
  v41 = *(a1 + 64);
  v4 = *(a1 + 16);
  v37 = *a1;
  v38 = v4;
  *&v46[0] = sub_181AC9084();
  result = sub_18208A61C(sub_1820D45E0);
  v6 = *&v46[0];
  v7 = *(*&v46[0] + 24);
  if (v7 < result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v8 = result;
  if (result < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E5EE8();
    v6 = *&v46[0];
  }

  sub_18208064C(v8, v7, v6 + 16, v6 + 40);
  v2[2] = v6;

  MEMORY[0x1EEE9AC00](v9);
  *&v46[0] = sub_181A54748();
  result = sub_18208A61C(sub_1820D4578);
  v10 = *&v46[0];
  v11 = *(*&v46[0] + 24);
  if (v11 < result)
  {
    goto LABEL_25;
  }

  v12 = result;
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E5EE8();
    v10 = *&v46[0];
  }

  sub_18208064C(v12, v11, v10 + 16, v10 + 40);
  v2[3] = v10;

  ProtocolStack.transport.getter(v46);
  v13 = *(&v46[0] + 1);
  if ((~*(&v46[0] + 1) & 0xF000000000000007) != 0)
  {
    v14 = *&v46[0];
    v46[2] = v39;
    v46[3] = v40;
    v47 = v41;
    v46[0] = v37;
    v46[1] = v38;
    v15 = sub_181C2110C(v46, v14, v13);
    sub_181A53008(v14, v13);
    if (v15)
    {
      v16 = v2[4];
      v17 = v2[5];
      *(v2 + 2) = xmmword_182AE3CC0;
      sub_181A5301C(v16, v17);
    }
  }

  v18 = v2[13];
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v19 = v2[12];
    v44[2] = v39;
    v44[3] = v40;
    v45 = v41;
    v44[0] = v37;
    v44[1] = v38;
    sub_181AACFF4(v19, v18);
    v20 = sub_181C2110C(v44, v19, v18);
    sub_181A53008(v19, v18);
    if (v20)
    {
      v21 = v2[12];
      v22 = v2[13];
      *(v2 + 6) = xmmword_182AE3CC0;
      sub_181A53008(v21, v22);
    }
  }

  swift_beginAccess();
  v23 = v2[7];
  if ((~v23 & 0xF000000000000007) != 0)
  {
    v24 = v2[6];
    v42[2] = v39;
    v42[3] = v40;
    v43 = v41;
    v42[0] = v37;
    v42[1] = v38;
    sub_181B2C3E0(v24, v23);
    v25 = sub_181CDADD8(v42, v24, v23);
    sub_181A52FE0(v24, v23);
    if (v25)
    {
      v26 = v2[6];
      v27 = v2[7];
      *(v2 + 3) = xmmword_182AE3CC0;
      sub_181A52FE0(v26, v27);
    }
  }

  result = ProtocolStack.link.getter(v36);
  v28 = v36[0];
  if (v36[0] != 1)
  {
    v29 = v36[1];
    v34[2] = v39;
    v34[3] = v40;
    v35 = v41;
    v34[0] = v37;
    v34[1] = v38;
    if (v36[0])
    {
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 32);
      v32 = sub_181C15310();
      LOBYTE(ObjectType) = v31(v34, &type metadata for CProtocol, v32, ObjectType, v29);
      result = sub_181B03DAC(v28);
      if (ObjectType)
      {
        v33 = v2[8];
        *(v2 + 4) = xmmword_182AE69F0;
        return sub_181AC3890(v33);
      }
    }
  }

  return result;
}

uint64_t sub_1820D3EB4(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = a3[3];
  v32 = a3[2];
  v33 = v4;
  v34 = *(a3 + 8);
  v5 = a3[1];
  v30 = *a3;
  v31 = v5;
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 32);
      v9 = sub_181C15310();
      v10 = v8(&v30, &type metadata for CProtocol, v9, ObjectType, v6);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = v31;
    v21 = *(&v30 + 1);
    v12 = BYTE8(v31);
    swift_beginAccess();
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *v26 = v13;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    *v22 = v30;
    v23 = *(&v30 + 1);
    v24 = v31;
    v25 = BYTE8(v31);
    v10 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v26, v22);
    v17 = v23;
    v18 = v24;
    v19 = v25;
    sub_181F49A24(v14, v15, v16);
    sub_181F49A24(v21, v11, v12);
    sub_181F48350(v17, v18, v19);
    sub_181F48350(v27, v28, v29);
  }

  return v10 & 1;
}

uint64_t _nw_protocol_stack_copyTm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for ProtocolStack();
  swift_allocObject();

  return a2(v3);
}

uint64_t sub_1820D40D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *))
{

  v7 = sub_181AA847C(a2);
  v9 = v8;
  v10 = sub_181AA847C(a3);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  v13 = swift_dynamicCastClass();
  v14 = v9 | 0x4000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v7;
  }

  if (v13)
  {
    v14 = 0;
  }

  v22 = v15;
  v23 = v14;
  v16 = swift_dynamicCastClass();
  v17 = v12 | 0x4000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v10;
  }

  if (v16)
  {
    v17 = 0;
  }

  v20 = v18;
  v21 = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  a4(&v22, &v20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_181AAD084(v20, v21);
  return sub_181AAD084(v22, v23);
}

uint64_t sub_1820D41EC()
{

  ProtocolStack.link.getter(v6);
  v0 = v6[0];
  if (v6[0] == 1)
  {

    sub_181B03DAC(1);
  }

  else
  {
    v1 = v6[1];
    v2 = swift_unknownObjectRetain();
    sub_181B03DAC(v2);
    if (v0)
    {
      ObjectType = swift_getObjectType();
      v4 = (*(v1 + 336))(ObjectType, v1);

      sub_181B03DAC(v0);
      return v4;
    }
  }

  return 0;
}

uint64_t sub_1820D42B8(uint64_t a1, uint64_t a2)
{

  if (a2)
  {
    v4 = sub_181AA847C(a2);
    sub_181F61FE0(v4, v5, v11);
    v6 = v11[0];
    v7 = v11[1];
    swift_beginAccess();
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *(a1 + 48) = v6;
    *(a1 + 56) = v7;
  }

  else
  {
    swift_beginAccess();
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *(a1 + 48) = xmmword_182AE3CC0;
  }

  sub_181A52FE0(v8, v9);
}

uint64_t _nw_protocol_stack_remove_protocol(uint64_t a1, uint64_t a2)
{

  v3 = swift_unknownObjectRetain_n();
  sub_181AA82B4(v5, v3, 0, 0, 0, 255, a2);
  sub_1820D3B1C(v5);

  swift_unknownObjectRelease();
  return sub_181A93268(v5);
}

uint64_t _nw_protocol_stack_remove_protocol_identifier(uint64_t a1, uint64_t a2)
{

  sub_181AAC800(a2, &v9);
  v6 = v9;
  v7 = v10;
  v8 = v11;
  sub_181F633C8(&v6);

  v3 = v7;
  v4 = v8;

  return sub_181F48350(v3, *(&v3 + 1), v4);
}

uint64_t sub_1820D4468(uint64_t a1, uint64_t a2, unsigned int a3)
{

  if (a3 >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  v8 = v5;
  v6 = sub_181C59BE4(v4, &v8);

  return v6 & 1;
}

uint64_t _nw_protocol_stack_get_hash()
{

  sub_182AD44E8();
  ProtocolStack.hash(into:)();
  v0 = sub_182AD4558();

  return v0;
}

uint64_t _nw_protocol_stack_remove_protocols_before_handle_and_make_persistent(uint64_t a1, uint64_t a2)
{

  sub_181F65550(a2);
}

uint64_t sub_1820D4594(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v9 = *(v2 + 64);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  return sub_1820D3EB4(v4, v3, v8) & 1;
}

uint64_t static DeserializationBuilder.buildPartialBlock(accumulated:next:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(result + 8) == 1 && *result == 1)
  {
    v3 = 1;
    v4 = 1;
  }

  *a3 = v3;
  *(a3 + 8) = v4;
  return result;
}

void *static Deserializer.deserialize(_:_:)@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 32 + *(a1 + 16);
  v12 = a1 + 32;
  v13 = v4;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  result = a2(&v11, &v12);
  v6 = v15;
  v7 = v16;
  if (v16 != 1 || v15 != 0)
  {
    goto LABEL_12;
  }

  v9 = v13 - v12;
  if (!v12)
  {
    v9 = 0;
  }

  v10 = v9 - v14;
  if (__OFSUB__(v9, v14))
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      v6 = v9 - v14;
      v7 = 0;
    }

LABEL_12:
    *a3 = v6;
    *(a3 + 8) = v7;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1820D46D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_181ADBA10(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1820D47C4(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v10 = *(v7 + 24) >> 1, v10 < v9))
  {
    if (v8 <= v9)
    {
      v11 = v8 + v6;
    }

    else
    {
      v11 = v8;
    }

    result = sub_181ADBA10(result, v11, 1, v7);
    v7 = result;
    v10 = *(result + 24) >> 1;
  }

  v12 = *(v7 + 16);
  v13 = v10 - v12;
  v14 = 0;
  if (v3 && v4 && v4 > v3 && v10 != v12)
  {
    if (v5 >= v13)
    {
      v14 = v10 - v12;
    }

    else
    {
      v14 = v5;
    }

    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v12 + 32), v3, v14);
    v3 += v14;
  }

  if (v14 < v6)
  {
    goto LABEL_34;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    *(v7 + 16) = v17;
LABEL_24:
    if (v14 != v13 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v20 = *(v7 + 16);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v7 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v20;
  }

  result = sub_181ADBA10((v24 > 1), v20 + 1, 1, v7);
  v7 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_37;
  }

LABEL_40:
  v26 = v20 + 32;
  while (1)
  {
    *(v7 + v26) = v22;
    if (v21 == v4)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 32)
    {
      v20 = v25;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v26 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_1820D4974(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_182AD39C8();
  v10 = *v4;
  v11 = *(*v4 + 2);
  v12 = v11 + v9;
  if (__OFADD__(v11, v9))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v18 = v31 >> 14;
    if (v31 >> 14 == v32 >> 14)
    {
      goto LABEL_13;
    }

    v24 = *(v10 + 2);
    LOBYTE(v13) = sub_182AD39E8();
    sub_182AD39D8();
    while (1)
    {
      v25 = *(v10 + 3);
      v26 = v25 >> 1;
      if ((v25 >> 1) < v24 + 1)
      {
        v10 = sub_181ADBA10((v25 > 1), v24 + 1, 1, v10);
        v26 = *(v10 + 3) >> 1;
        if (v24 < v26)
        {
LABEL_23:
          v27 = v24 + 32;
          v29 = v26;
          v28 = -v26;
          while (1)
          {
            v10[v27] = v13;
            if (v18 == v32 >> 14)
            {
              break;
            }

            LOBYTE(v13) = sub_182AD39E8();
            sub_182AD39D8();
            ++v27;
            if (v28 + v27 == 32)
            {
              goto LABEL_19;
            }
          }

          *(v10 + 2) = v27 - 31;
          goto LABEL_13;
        }
      }

      else if (v24 < v26)
      {
        goto LABEL_23;
      }

LABEL_20:
      *(v10 + 2) = v24;
    }
  }

  v13 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v10 + 3) >> 1, v15 < v12))
  {
    if (v11 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    v10 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v16, 1, v10);
    v15 = *(v10 + 3) >> 1;
  }

  v17 = *(v10 + 2);
  v18 = v15 - v17;
  v19 = sub_1822B072C(&v30, &v10[v17 + 32], v15 - v17, a1, a2, a3, a4);
  if (v19 < v13)
  {
    goto LABEL_15;
  }

  if (v19 >= 1)
  {
    v20 = *(v10 + 2);
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
      __break(1u);
LABEL_19:
      v24 = v29;
      goto LABEL_20;
    }

    *(v10 + 2) = v22;
  }

  if (v19 == v18)
  {
    goto LABEL_16;
  }

LABEL_13:

  *v4 = v10;
  return result;
}

uint64_t sub_1820D4BB0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_182AD3168();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = sub_182AD3BB8();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

char *sub_1820D4CC0(char *result, char *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2);
  v5 = &a2[v4];
  if (__OFADD__(v4, a2))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = a2;
  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    v3 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  result = sub_181F853B4(&v3[v11 + 32], v9 - v11, v7, v6);
  if (v13 < v6)
  {
    goto LABEL_22;
  }

  if (v13 < 1)
  {
    goto LABEL_12;
  }

  v14 = *(v3 + 2);
  v15 = __OFADD__(v14, v13);
  v16 = v14 + v13;
  if (!v15)
  {
    *(v3 + 2) = v16;
LABEL_12:
    if (v13 != v12 || result == 0 || result == a2)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v19 = *(v3 + 2);
  v21 = *result++;
  v20 = v21;
  while (1)
  {
    v22 = *(v3 + 3);
    v23 = v22 >> 1;
    if ((v22 >> 1) < v19 + 1)
    {
      break;
    }

    if (v19 < v23)
    {
      goto LABEL_28;
    }

LABEL_25:
    *(v3 + 2) = v19;
  }

  v26 = result;
  v27 = a2;
  v28 = sub_181ADBA10((v22 > 1), v19 + 1, 1, v3);
  a2 = v27;
  v3 = v28;
  result = v26;
  v23 = *(v3 + 3) >> 1;
  if (v19 >= v23)
  {
    goto LABEL_25;
  }

LABEL_28:
  v24 = v19 + 32;
  while (1)
  {
    v3[v24] = v20;
    if (result == a2)
    {
      break;
    }

    v25 = *result++;
    v20 = v25;
    if (++v24 - v23 == 32)
    {
      v19 = v23;
      goto LABEL_25;
    }
  }

  *(v3 + 2) = v24 - 31;
LABEL_20:
  *v2 = v3;
  return result;
}

uint64_t sub_1820D4E4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_181F5AA14(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = v8 - v10;
  result = sub_18213F3EC(&v27, &v3[5 * v10 + 4], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v12 = v3[2];
    v13 = __OFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v3[2] = v14;
  }

  if (result != v11)
  {

LABEL_14:
    *v1 = v3;
    return result;
  }

LABEL_17:
  v5 = v3[2];
  if (!v28)
  {
LABEL_44:
    v15 = 0;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_22;
  }

  v15 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v15 < *(v27 + 16))
  {
    sub_181F75240(v27 + 40 * v15 + 32, &v24);
LABEL_22:
    sub_181AB5D28(&v24, &v22, &qword_1EA83AE50);
    while (v23)
    {
      sub_181F49A88(&v22, &qword_1EA83AE50);
      v17 = v3[3];
      v18 = v17 >> 1;
      if ((v17 >> 1) < v5 + 1)
      {
        v3 = sub_181F5AA14((v17 > 1), v5 + 1, 1, v3);
        v18 = v3[3] >> 1;
      }

      sub_181AB5D28(&v24, &v20, &qword_1EA83AE50);
      if (v21)
      {
        if (v5 <= v18)
        {
          v16 = v18;
        }

        else
        {
          v16 = v5;
        }

        v19 = &v3[5 * v5 + 4];
        while (1)
        {
          sub_181F3CF20(&v20, &v22);
          if (v16 == v5)
          {
            break;
          }

          sub_181F49A88(&v24, &qword_1EA83AE50);
          sub_181F3CF20(&v22, v19);
          if (v15)
          {
            if (--v15 >= *(v27 + 16))
            {
              goto LABEL_43;
            }

            sub_181F75240(v27 + 40 * v15 + 32, &v24);
          }

          else
          {
            v26 = 0;
            v24 = 0u;
            v25 = 0u;
          }

          sub_181AB5D28(&v24, &v20, &qword_1EA83AE50);
          v19 += 40;
          ++v5;
          if (!v21)
          {
            goto LABEL_24;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v22);
        v5 = v16;
      }

      else
      {
LABEL_24:
        sub_181F49A88(&v20, &qword_1EA83AE50);
        v16 = v5;
      }

      v3[2] = v16;
      sub_181AB5D28(&v24, &v22, &qword_1EA83AE50);
    }

    sub_181F49A88(&v24, &qword_1EA83AE50);

    result = sub_181F49A88(&v22, &qword_1EA83AE50);
    goto LABEL_14;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1820D5164(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_181F5AD7C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_182AD2DD8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1820D5290(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_181B7C3B0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1822C613C(v29, &v4[8 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      while (1)
      {
LABEL_19:
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_45;
        }

        if (v17 >= ((v3 + 64) >> 6))
        {
          break;
        }

        v16 = *(v12 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_22;
        }
      }

LABEL_13:
      result = sub_1820AD298();
      *v1 = v4;
      return result;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v2 = *(v4 + 2);
  v12 = v29[1];
  v3 = v29[2];
  v15 = v30;
  v16 = v31;
  v28 = v29[0];
  if (!v31)
  {
    goto LABEL_19;
  }

  v17 = v30;
LABEL_22:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v28 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = (v3 + 64) >> 6;
  v21 = v17;
  while (1)
  {
    v22 = *(v4 + 3);
    v23 = v22 >> 1;
    if ((v22 >> 1) >= v2 + 1)
    {
      if (v2 < v23)
      {
        break;
      }

      goto LABEL_24;
    }

    result = sub_181B7C3B0((v22 > 1), v2 + 1, 1, v4);
    v4 = result;
    v23 = *(result + 24) >> 1;
    if (v2 < v23)
    {
      break;
    }

LABEL_24:
    *(v4 + 2) = v2;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    *&v4[8 * v2++ + 32] = v19;
    if (!v18)
    {
      break;
    }

LABEL_28:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v19 = *(*(v28 + 48) + ((v21 << 9) | (8 * v24)));

    if (v19)
    {
      v25 = v2 < v23;
    }

    else
    {
      v25 = 0;
    }

    if (!v25)
    {
      goto LABEL_24;
    }
  }

  v26 = v21;
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v20)
    {
      *(v4 + 2) = v2;
      goto LABEL_13;
    }

    v18 = *(v12 + 8 * v27);
    ++v26;
    if (v18)
    {
      v21 = v27;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}