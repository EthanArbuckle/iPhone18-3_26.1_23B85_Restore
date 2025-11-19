uint64_t sub_2406071B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v6 = (*(v5 + 80) + 1016) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405CE450;

  return sub_240604668(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_2406072F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2406073E8;

  return v6(v2 + 32);
}

uint64_t sub_2406073E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2406074FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_2406072F4(a1, v5);
}

uint64_t sub_2406075B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_24065B538(a1, v5);
}

uint64_t sub_24060766C(uint64_t a1)
{
  v2 = type metadata accessor for RepairModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2406076C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFAu)
  {
    return sub_2405EE680(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_2406076DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240607744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2406077A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_24065B630(a1, v5);
}

uint64_t sub_240607860(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405CE450;

  return sub_24065B630(a1, v5);
}

unint64_t AISAppleIDSignInFlowType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_240607934()
{
  result = qword_27E4B8CB0;
  if (!qword_27E4B8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8CB0);
  }

  return result;
}

uint64_t *sub_240607988@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t RepairContext.Builder.MissingExpectedValue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2406079E4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *RepairContext.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 118) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 192;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 160) = 2;
  *(a1 + 168) = 0;
  AutomaticSetupModelExchange.init(queue:)(0, __src);
  *(a1 + 200) = &type metadata for AutomaticRepairModelExchange;
  *(a1 + 208) = &protocol witness table for AutomaticRepairModelExchange;
  v2 = swift_allocObject();
  *(a1 + 176) = v2;
  v2[115] = &unk_240768A90;
  v2[116] = 0;
  v2[117] = &unk_240768A98;
  v2[118] = 0;
  v2[119] = &unk_240768AA0;
  v2[120] = 0;
  v2[121] = &unk_240768AA8;
  v2[122] = 0;
  v2[123] = &unk_240768AB0;
  v2[124] = 0;
  result = memcpy(v2 + 2, __src, 0x388uLL);
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  return result;
}

__n128 RepairContext.Builder.accountID(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v22[2] = a1[2];
  v22[3] = v5;
  v22[4] = a1[4];
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = *(v2 + 48);
  v23[2] = *(v2 + 32);
  v23[3] = v7;
  v23[4] = *(v2 + 64);
  v8 = *(v2 + 16);
  v23[0] = *v2;
  v23[1] = v8;
  sub_2405AF99C(v22, &v21);
  sub_2405B8A50(v23, &qword_27E4B6420, &qword_240768F00);
  result = a1[2];
  v10 = a1[3];
  *(v2 + 32) = result;
  *(v2 + 48) = v10;
  v11 = *(v2 + 176);
  v12 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v12;
  v13 = *(v2 + 112);
  v14 = *(v2 + 144);
  v15 = *(v2 + 160);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v14;
  v16 = a1[4];
  *(v2 + 64) = v16;
  *(a2 + 160) = v15;
  *(a2 + 176) = v11;
  v17 = *(v2 + 80);
  v18 = *(v2 + 96);
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  v20 = *a1;
  v19 = a1[1];
  *v2 = *a1;
  *(v2 + 16) = v19;
  *(a2 + 224) = *(v2 + 224);
  *(a2 + 96) = v18;
  *(a2 + 112) = v13;
  *a2 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = result;
  *(a2 + 48) = v10;
  return result;
}

__n128 RepairContext.Builder._proximityRepairClient(for:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *v21 = *a1;
  *&v21[15] = *(a1 + 15);
  v18 = *&v21[8];
  v19 = *v21;
  v4 = v21[30];
  v5 = *&v21[16] & 0xFF0000FFFFLL;
  v6 = (*&v21[24] | ((*&v21[28] | (v21[30] << 16)) << 32)) & 0xFFFFFF07FFFFFFFFLL;
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  v9 = *(v2 + 104);
  v10 = *(v2 + 112) | ((*(v2 + 116) | (*(v2 + 118) << 16)) << 32);
  sub_240607D50(v21, v20);
  sub_240604AB8(v7, v8, v9, v10);
  *(v2 + 88) = v19;
  *(v2 + 96) = v18;
  *(v2 + 104) = v5;
  *(v2 + 118) = v4;
  *(v2 + 116) = WORD2(v6);
  *(v2 + 112) = v6;
  v11 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v11;
  *(a2 + 224) = *(v2 + 224);
  v12 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v12;
  v13 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v13;
  v14 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v14;
  v15 = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v15;
  result = *(v2 + 112);
  v17 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v17;
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = result;
  return result;
}

__n128 RepairContext.Builder._proximityRepairClientIntercept()@<Q0>(uint64_t a1@<X8>)
{
  sub_240604AB8(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112) | ((*(v1 + 116) | (*(v1 + 118) << 16)) << 32));
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 2;
  *(v1 + 118) = 0;
  *(v1 + 116) = 192;
  *(v1 + 112) = 0;
  v3 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = v3;
  *(a1 + 224) = *(v1 + 224);
  v4 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v4;
  v5 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v5;
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v6;
  v7 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v7;
  result = *(v1 + 112);
  v9 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v9;
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = result;
  return result;
}

__n128 RepairContext.Builder._enableProximityRepair(withTargetAuthTag:withCodeType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  sub_240604AB8(*(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112) | ((*(v4 + 116) | (*(v4 + 118) << 16)) << 32));
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 88) = 1;
  *(v4 + 118) = 0;
  *(v4 + 116) = 192;
  *(v4 + 112) = 0;
  v10 = *(v4 + 144);

  *(v4 + 136) = a1;
  *(v4 + 144) = a2;
  *(v4 + 152) = v8;
  *(v4 + 160) = v9;
  v11 = *(v4 + 208);
  *(a4 + 192) = *(v4 + 192);
  *(a4 + 208) = v11;
  *(a4 + 224) = *(v4 + 224);
  v12 = *(v4 + 112);
  v13 = *(v4 + 80);
  *(a4 + 64) = *(v4 + 64);
  *(a4 + 80) = v13;
  *(a4 + 96) = *(v4 + 96);
  *(a4 + 112) = v12;
  v14 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v14;
  v15 = *(v4 + 48);
  *(a4 + 32) = *(v4 + 32);
  *(a4 + 48) = v15;
  v16 = *(v4 + 144);
  *(a4 + 128) = *(v4 + 128);
  *(a4 + 144) = v16;
  result = *(v4 + 176);
  *(a4 + 160) = *(v4 + 160);
  *(a4 + 176) = result;
  return result;
}

__n128 RepairContext.Builder._context(_:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;

  v1[10].n128_u64[1] = v2;
  sub_2405B044C(&v1[11], v42, &qword_27E4B8CB8, &qword_240768F08);
  if (v43)
  {
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CC0, &qword_240768F10);
    if (swift_dynamicCast())
    {
      v6 = v1;
      __src[6] = v36;
      __src[7] = v37;
      __src[8] = v38;
      __src[9] = v39;
      __src[2] = v32;
      __src[3] = v33;
      __src[4] = v34;
      __src[5] = v35;
      __src[0] = v30;
      __src[1] = v31;
      v7 = v40;
      memcpy(&__src[10] + 8, v41, 0x330uLL);
      *&__src[10] = v40;
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v8 = sub_240759AE4();
      __swift_project_value_buffer(v8, qword_27E4B8518);
      v9 = sub_240759AC4();
      v10 = sub_24075A5D4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v27 = v12;
        *v11 = 136315138;
        swift_beginAccess();
        memcpy(__dst, __src, sizeof(__dst));
        v7 = __dst[20];
        memcpy(v28, __src, sizeof(v28));
        sub_240605010(__dst, v26);
        v13 = sub_24075A0E4();
        v15 = sub_2405BBA7C(v13, v14, &v27);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_240579000, v9, v10, "Applying main queue override on exchange: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x245CC76B0](v12, -1, -1);
        MEMORY[0x245CC76B0](v11, -1, -1);
      }

      sub_2406082EC();
      v16 = sub_24075A644();
      swift_beginAccess();
      *&__src[10] = v16;

      memcpy(v28, __src, sizeof(v28));
      v17 = swift_allocObject();
      memcpy((v17 + 16), __src, 0x3D8uLL);
      sub_240605010(v28, __dst);
      v1 = v6;
      sub_2405B8A50(&v6[11], &qword_27E4B8CB8, &qword_240768F08);
      v6[11].n128_u64[0] = v17;
      v6[12].n128_u64[1] = &type metadata for AutomaticRepairModelExchange;
      v6[13].n128_u64[0] = &protocol witness table for AutomaticRepairModelExchange;
      memcpy(__dst, __src, sizeof(__dst));
      sub_240608338(__dst);
    }
  }

  else
  {
    v18 = v2;
    sub_2405B8A50(v42, &qword_27E4B8CB8, &qword_240768F08);
  }

  v19 = v1[13];
  v4[12] = v1[12];
  v4[13] = v19;
  v4[14].n128_u8[0] = v1[14].n128_u8[0];
  v20 = v1[9];
  v4[8] = v1[8];
  v4[9] = v20;
  v21 = v1[11];
  v4[10] = v1[10];
  v4[11] = v21;
  v22 = v1[5];
  v4[4] = v1[4];
  v4[5] = v22;
  v23 = v1[7];
  v4[6] = v1[6];
  v4[7] = v23;
  v24 = v1[1];
  *v4 = *v1;
  v4[1] = v24;
  result = v1[3];
  v4[2] = v1[2];
  v4[3] = result;
  return result;
}

unint64_t sub_2406082EC()
{
  result = qword_280FAD6F0;
  if (!qword_280FAD6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FAD6F0);
  }

  return result;
}

id RepairContext.Builder._builderError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 216) = a1;
  *(a2 + 224) = *(v2 + 224);
  v5 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v5;
  v6 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v6;
  v7 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v7;
  v8 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v8;
  v9 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v9;
  v10 = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = v10;
  v11 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v11;

  return a1;
}

__n128 RepairContext.Builder.modelExchange<A>(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v18 + 1) = a2;
  v19 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_2405B8A50(v4 + 176, &qword_27E4B8CB8, &qword_240768F08);
  v9 = v18;
  *(v4 + 176) = v17;
  *(v4 + 192) = v9;
  *(v4 + 208) = v19;
  v10 = *(v4 + 208);
  *(a4 + 192) = *(v4 + 192);
  *(a4 + 208) = v10;
  *(a4 + 224) = *(v4 + 224);
  v11 = *(v4 + 144);
  *(a4 + 128) = *(v4 + 128);
  *(a4 + 144) = v11;
  v12 = *(v4 + 176);
  *(a4 + 160) = *(v4 + 160);
  *(a4 + 176) = v12;
  v13 = *(v4 + 80);
  *(a4 + 64) = *(v4 + 64);
  *(a4 + 80) = v13;
  v14 = *(v4 + 112);
  *(a4 + 96) = *(v4 + 96);
  *(a4 + 112) = v14;
  v15 = *(v4 + 16);
  *a4 = *v4;
  *(a4 + 16) = v15;
  result = *(v4 + 48);
  *(a4 + 32) = *(v4 + 32);
  *(a4 + 48) = result;
  return result;
}

__n128 RepairContext.Builder.shouldSkipConfirmation(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *(v2 + 224) = a1;
  *(a2 + 224) = a1;
  v3 = *(v2 + 208);
  *(a2 + 192) = *(v2 + 192);
  *(a2 + 208) = v3;
  v4 = *(v2 + 144);
  *(a2 + 128) = *(v2 + 128);
  *(a2 + 144) = v4;
  v5 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v5;
  v6 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v6;
  v7 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v7;
  v8 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v8;
  result = *(v2 + 48);
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 RepairContext.Builder._fixedPin(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 128);

  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  v8 = *(v3 + 208);
  *(a3 + 192) = *(v3 + 192);
  *(a3 + 208) = v8;
  *(a3 + 224) = *(v3 + 224);
  v9 = *(v3 + 176);
  *(a3 + 160) = *(v3 + 160);
  *(a3 + 176) = v9;
  v10 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v10;
  v11 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v11;
  v12 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v12;
  v13 = *(v3 + 112);
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = v13;
  result = *(v3 + 144);
  *(a3 + 128) = *(v3 + 128);
  *(a3 + 144) = result;
  return result;
}

uint64_t RepairContext.Builder.build()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CC8, &qword_240768F18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for RepairModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = *(v1 + 216);
  if (v17)
  {
    v18 = v17;
    sub_2406095E0(v1);
    return swift_willThrow();
  }

  v20 = *(v1 + 208);
  v35[1] = *(v1 + 192);
  v35[2] = v20;
  v36 = *(v1 + 224);
  v21 = *(v1 + 144);
  v33[8] = *(v1 + 128);
  v33[9] = v21;
  v22 = *(v1 + 176);
  v34 = *(v1 + 160);
  v35[0] = v22;
  v23 = *(v1 + 80);
  v33[4] = *(v1 + 64);
  v33[5] = v23;
  v24 = *(v1 + 112);
  v33[6] = *(v1 + 96);
  v33[7] = v24;
  v25 = *(v1 + 16);
  v33[0] = *v1;
  v33[1] = v25;
  v26 = *(v1 + 48);
  v33[2] = *(v1 + 32);
  v33[3] = v26;
  if (!*(&v34 + 1))
  {
    sub_2406095A8(v33, &v32);
    sub_240608EC0(v13);
    if (v2)
    {
      return sub_2406095E0(v33);
    }

    v7 = v13;
LABEL_9:
    sub_240609734(v7, v16, type metadata accessor for RepairModel);
    sub_240609734(v16, a1, type metadata accessor for RepairModel);
    v30 = type metadata accessor for RepairContext();
    sub_2405B044C(v35, a1 + *(v30 + 20), &qword_27E4B8CB8, &qword_240768F08);
    return sub_2406095E0(v33);
  }

  v27 = v14;
  v28 = *(&v34 + 1);
  AISRepairContext.into(relaxed:)(0, v7);
  if ((*(v9 + 48))(v7, 1, v27) != 1)
  {

    goto LABEL_9;
  }

  sub_2405B8A50(v7, &qword_27E4B8CC8, &qword_240768F18);
  sub_24060965C();
  swift_allocError();
  *v29 = 0;
  swift_willThrow();

  return sub_2406095E0(v33);
}

uint64_t AISRepairContext.into(relaxed:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CD8, &qword_240768F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v67 - v7;
  v9 = type metadata accessor for SetupModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  v15 = __swift_project_value_buffer(v14, qword_27E4B8518);
  v16 = v2;
  v72 = v15;
  v17 = sub_240759AC4();
  v18 = sub_24075A5C4();

  v19 = os_log_type_enabled(v17, v18);
  v73 = a1;
  if (v19)
  {
    v69 = v9;
    v70 = v13;
    v71 = a2;
    v20 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v74 = v68;
    *v20 = 67109634;
    *(v20 + 4) = a1 & 1;
    *(v20 + 8) = 2080;
    v21 = [v16 altDSID];
    v22 = sub_24075A0B4();
    v24 = v23;

    v25 = sub_2405BBA7C(v22, v24, &v74);

    *(v20 + 10) = v25;
    *(v20 + 18) = 2080;
    v26 = &unk_278CAD000;
    v27 = [v16 userProfileIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = sub_24075A0B4();
      v31 = v30;
    }

    else
    {
      v31 = 0xE600000000000000;
      v29 = 0x3E6C6C756E3CLL;
    }

    v32 = sub_2405BBA7C(v29, v31, &v74);

    *(v20 + 20) = v32;
    _os_log_impl(&dword_240579000, v17, v18, "Converting objc setup context with properties (relaxed: %{BOOL}d): {\n  altDSID: %s,\n  userProfileIdentifier: %s\n}", v20, 0x1Cu);
    v33 = v68;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v33, -1, -1);
    MEMORY[0x245CC76B0](v20, -1, -1);

    v13 = v70;
    a2 = v71;
    v9 = v69;
  }

  else
  {
    v26 = 0x1FBE10000;
  }

  AISSetupContext.into(relaxed:)(v73 & 1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2405B8A50(v8, &qword_27E4B8CD8, &qword_240768F20);
    v34 = sub_240759AC4();
    v35 = sub_24075A5E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_240579000, v34, v35, "Unable to convert setup model", v36, 2u);
      MEMORY[0x245CC76B0](v36, -1, -1);
    }

    v37 = type metadata accessor for RepairModel();
    return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
  }

  else
  {
    v39 = v26;
    sub_240609734(v8, v13, type metadata accessor for SetupModel);
    v13[96] = 1;
    v40 = [v16 altDSID];
    v41 = sub_24075A0B4();
    v43 = v42;

    v44 = *(v13 + 20);

    *(v13 + 19) = v41;
    *(v13 + 20) = v43;
    v45 = [v16 (v39 + 116)];
    if (v45)
    {
      v46 = v9;
      v47 = v45;
      v48 = sub_24075A0B4();
      v50 = v49;

      v51 = sub_240759AC4();
      v52 = sub_24075A5C4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_240579000, v51, v52, "Client provided a profile identifier. Setting it.", v53, 2u);
        MEMORY[0x245CC76B0](v53, -1, -1);
      }

      v54 = *(v46 + 40);
      v55 = &v13[v54 + *(type metadata accessor for SignInModel() + 64)];
      sub_240604C7C(*v55, *(v55 + 1), v55[16]);
      *v55 = v48;
      *(v55 + 1) = v50;
      v55[16] = 0;
    }

    v56 = [v16 altDSID];
    v57 = sub_24075A0B4();
    v59 = v58;

    v60 = [v16 (v39 + 116)];
    if (v60)
    {
      v61 = v60;
      v62 = sub_24075A0B4();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v65 = type metadata accessor for RepairModel();
    sub_24060979C(v13, a2 + *(v65 + 20));
    *a2 = v57;
    *(a2 + 8) = v59;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = v62;
    *(a2 + 72) = v64;
    v66 = a2 + *(v65 + 24);
    *(v66 + 32) = 0;
    *v66 = 0u;
    *(v66 + 16) = 0u;
    *(v66 + 40) = -1;
    (*(*(v65 - 8) + 56))(a2, 0, 1, v65);
    return sub_240609800(v13);
  }
}

double sub_240608EC0@<D0>(void *a1@<X8>)
{
  v82 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v62 - v5;
  v83 = type metadata accessor for SetupModel();
  v6 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v73 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 116);
  v9 = *(v1 + 112) | ((v8 | (*(v1 + 118) << 16)) << 32);
  LODWORD(v70) = (v8 >> 6) >= 2u;
  v10 = *(v1 + 88);
  v11 = *(v1 + 16);
  v93 = *v1;
  v94 = v11;
  v12 = *(v1 + 48);
  v95 = *(v1 + 32);
  v96 = v12;
  v97 = *(v1 + 64);
  if (*(&v93 + 1))
  {
    v81 = v93;
    v79 = v95;
    v80 = v94;
    v77 = v97;
    v78 = v96;
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    v77 = 0u;
    v78 = 0u;
  }

  v14 = *(v1 + 96);
  v13 = *(v1 + 104);
  v75 = *(v1 + 80);
  v15 = *(v1 + 120);
  v16 = *(v1 + 128);
  v17 = *(v2 + 144);
  v63 = *(v2 + 136);
  v67 = *(v2 + 152);
  v68 = v15;
  LODWORD(v15) = *(v2 + 160);
  v65 = *(v2 + 224);
  v66 = v15;
  *&v84 = v75 ^ 1u | 0x200;
  *(&v84 + 1) = 0;
  v85 = 0uLL;
  v86 = xmmword_240768EF0;
  LOBYTE(v87) = 0;
  sub_240609C0C(v10, v14, v13, v9);
  v64 = v17;

  v69 = v16;

  sub_2405B044C(&v93, v91, &qword_27E4B6420, &qword_240768F00);
  sub_240676624(v91);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0);
  v98 = v13;
  sub_240609C0C(v10, v14, v13, v9);
  sub_2406095E0(v2);
  v74 = v14;
  v71 = v10;
  v72 = v9;
  if ((v9 & 0xC000000000) != 0)
  {
    sub_240604AB8(v10, v14, v98, v9);
    v18 = 0;
    v19 = 0;
    v9 = 0;
    v20 = 1;
  }

  else
  {
    v19 = v98 & 0xFF0000FFFFLL;
    v21 = v10;
    v20 = v14;
    v18 = v21;
  }

  *&v90[21] = v91[6];
  *&v90[23] = v91[7];
  *&v90[25] = v91[8];
  *&v90[13] = v91[2];
  *&v90[15] = v91[3];
  *&v90[17] = v91[4];
  *&v90[19] = v91[5];
  *&v90[9] = v91[0];
  LOBYTE(v90[0]) = 1;
  BYTE1(v90[0]) = v70;
  v90[1] = v63;
  v90[2] = v64;
  v90[3] = v68;
  v90[4] = v69;
  v90[5] = v67;
  LOBYTE(v90[6]) = v66;
  BYTE1(v90[6]) = v65;
  v90[7] = 0;
  v90[8] = 0;
  LOWORD(v90[27]) = v92;
  *&v90[11] = v91[1];
  memset(&v90[28], 0, 81);
  *&v84 = v18;
  *(&v84 + 1) = v20;
  *&v85 = v19;
  BYTE14(v85) = BYTE6(v9);
  WORD6(v85) = WORD2(v9);
  DWORD2(v85) = v9;
  DiscoveryModel.update(withPeer:)(&v84);
  sub_240609C84(v18, v20);
  v22 = type metadata accessor for IdMSAccount();
  v23 = *(*(v22 - 8) + 56);
  v24 = v76;
  v23(v76, 1, 1, v22);
  v25 = v23;
  v70 = v23;
  v26 = v73;
  v27 = &v73[*(v83 + 36)];
  v28 = type metadata accessor for AuthenticationModel(0);
  v29 = v28[10];
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v25(v27, 1, 1, v22);
  v30 = (v27 + v28[5]);
  v30[3] = 0u;
  v30[4] = 0u;
  v30[1] = 0u;
  v30[2] = 0u;
  *v30 = 0u;
  v31 = v28[7];
  v69 = v28[8];
  v32 = (v27 + v31);
  v33 = v26;
  v34 = v28[9];
  v35 = (v27 + v28[11]);
  *v35 = 0;
  v35[1] = 0;
  sub_240590814(v24, v27);
  *(v27 + v28[6]) = 1;
  *v32 = 0;
  v32[1] = 0;
  *(v27 + v34) = 0;
  v36 = v70;
  *(v27 + v69) = MEMORY[0x277D84F90];
  v36(v24, 1, 1, v22);
  v37 = v33 + *(v83 + 40);
  v36(v37, 1, 1, v22);
  v38 = type metadata accessor for SignInModel();
  v39 = (v37 + v38[5]);
  v39[4] = 0u;
  v39[5] = 0u;
  v39[2] = 0u;
  v39[3] = 0u;
  *v39 = 0u;
  v39[1] = 0u;
  v40 = v37 + v38[10];
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v83 = v37 + v38[11];
  *(v37 + v38[13]) = 0;
  v41 = v38[15];
  v42 = (v37 + v38[14]);
  *(v37 + v41) = 2;
  v43 = (v37 + v38[17]);
  *v43 = 0;
  v43[1] = 0;
  *(v37 + v38[18]) = 0;
  sub_240590814(v24, v37);
  v44 = v39[3];
  v86 = v39[2];
  v87 = v44;
  v45 = v39[5];
  v88 = v39[4];
  v89 = v45;
  v46 = v39[1];
  v84 = *v39;
  v85 = v46;
  sub_2405B8A50(&v84, &qword_27E4B8D00, &qword_2407691E0);
  *v39 = 0u;
  v39[1] = 0u;
  v39[2] = 0u;
  v39[3] = 0u;
  v39[4] = 0u;
  v39[5] = 0u;
  v47 = MEMORY[0x277D84FA0];
  *(v37 + v38[6]) = MEMORY[0x277D84FA0];
  *(v37 + v38[7]) = v47;
  *(v37 + v38[8]) = 0;
  *(v37 + v38[9]) = 0;
  *v42 = 0;
  v42[1] = 0;
  *(v37 + v41) = 2;
  v48 = v37 + v38[16];
  *v48 = 0;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = v37 + v38[19];
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0xE000000000000000;
  *(v49 + 80) = 0;
  *(v49 + 88) = 0;
  *(v49 + 96) = 0;
  v50 = *(v40 + 16);
  v51 = *(v40 + 24);
  sub_240604C2C(*v40, *(v40 + 8));
  *v40 = 0u;
  *(v40 + 16) = 0u;
  v52 = v83;
  *v83 = 0;
  *(v52 + 8) = 0;
  *(v37 + v38[12]) = 0;
  *(v33 + 39) = 0;
  *v33 = v75;
  v53 = v72;
  v54 = v74;
  *(v33 + 8) = v71;
  *(v33 + 16) = v54;
  *(v33 + 24) = v98;
  *(v33 + 38) = BYTE6(v53);
  *(v33 + 36) = WORD2(v53);
  *(v33 + 32) = v53;
  *(v33 + 40) = 0u;
  *(v33 + 56) = 0u;
  *(v33 + 72) = 0u;
  *(v33 + 88) = -1;
  memcpy((v33 + 96), v90, 0x131uLL);
  v55 = v82;
  v56 = *(&v81 + 1);
  *v82 = v81;
  v55[1] = v56;
  v57 = v79;
  *(v55 + 1) = v80;
  *(v55 + 2) = v57;
  v58 = v77;
  *(v55 + 3) = v78;
  *(v55 + 4) = v58;
  v59 = type metadata accessor for RepairModel();
  sub_240609734(v33, v55 + *(v59 + 20), type metadata accessor for SetupModel);
  v60 = v55 + *(v59 + 24);
  *(v60 + 4) = 0;
  result = 0.0;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v60[40] = -1;
  return result;
}

uint64_t type metadata accessor for RepairContext()
{
  result = qword_27E4B8CE0;
  if (!qword_27E4B8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24060965C()
{
  result = qword_27E4B8CD0;
  if (!qword_27E4B8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8CD0);
  }

  return result;
}

uint64_t sub_240609704@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240609734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24060979C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetupModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240609800(uint64_t a1)
{
  v2 = type metadata accessor for SetupModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_240609890()
{
  type metadata accessor for RepairModel();
  if (v0 <= 0x3F)
  {
    sub_240609914();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240609914()
{
  if (!qword_27E4B8CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8CC0, &qword_240768F10);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B8CF0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV2IDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup10RemoteRoleO(uint64_t a1)
{
  if (*(a1 + 28) >> 6 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 28) >> 6;
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup19RepairModelExchange_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_240609A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 225))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 104) >> 24) & 0xFFFF0000 | WORD1(*(a1 + 104));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_240609A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
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
      *(result + 88) = 0;
      *(result + 96) = 0;
      *(result + 104) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
      *(result + 118) = 0;
      *(result + 116) = 0;
      *(result + 112) = 0;
      return result;
    }

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240609B10(uint64_t a1, int a2)
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

uint64_t sub_240609B58(uint64_t result, int a2, int a3)
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

unint64_t sub_240609BB8()
{
  result = qword_27E4B8CF8;
  if (!qword_27E4B8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8CF8);
  }

  return result;
}

id sub_240609C0C(id result, id a2, uint64_t a3, unint64_t a4)
{
  v4 = (a4 >> 38) & 3;
  if (((a4 >> 38) & 3) > 1)
  {
    if (v4 != 2)
    {
      return result;
    }
  }

  else if (!v4)
  {
  }

  return result;
}

uint64_t sub_240609C34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_240609C84(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

AISSafetySettingsResult __swiftcall AISSafetySettingsResult.init(isSafetySettingsApplied:)(Swift::Bool isSafetySettingsApplied)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v2 initWithIsSafetySettingsApplied_];
  result.isSafetySettingsApplied = v3;
  return result;
}

id AISSafetySettingsResult.init(isSafetySettingsApplied:)(char a1)
{
  *(v1 + OBJC_IVAR___AISSafetySettingsResult_isSafetySettingsApplied) = a1;
  v3.super_class = AISSafetySettingsResult;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t AISSafetySettingsResult.description.getter()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000033, 0x8000000240787130);
  v1 = [v0 isSafetySettingsApplied];
  v2 = v1 == 0;
  if (v1)
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

  MEMORY[0x245CC5E60](v3, v4);

  MEMORY[0x245CC5E60](125, 0xE100000000000000);
  return 0;
}

AISSafetySettingsResult __swiftcall AISSafetySettingsResult.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isSafetySettingsApplied = v1;
  return result;
}

unint64_t type metadata accessor for AISSafetySettingsResult()
{
  result = qword_27E4B8D10;
  if (!qword_27E4B8D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B8D10);
  }

  return result;
}

void IdMSAccount.init(id:name:credential:services:familyInfo:ageRange:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void **a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v12 = *a5;
  v13 = a5[1];
  v14 = type metadata accessor for IdMSAccount();
  v15 = &a7[v14[8]];
  *v15 = xmmword_24075D8C0;
  v16 = &a7[v14[9]];
  *v16 = 0;
  v16[8] = 1;
  v17 = a1[4];
  *(a7 + 3) = a1[3];
  *(a7 + 4) = v17;
  v18 = a1[2];
  *(a7 + 1) = a1[1];
  *(a7 + 2) = v18;
  *a7 = *a1;
  v19 = v14[5];
  v20 = sub_2407595A4();
  (*(*(v20 - 8) + 32))(&a7[v19], a2, v20);
  v21 = &a7[v14[6]];
  v22 = a3[7];
  *(v21 + 6) = a3[6];
  *(v21 + 7) = v22;
  v23 = a3[9];
  *(v21 + 8) = a3[8];
  *(v21 + 9) = v23;
  v24 = a3[3];
  *(v21 + 2) = a3[2];
  *(v21 + 3) = v24;
  v25 = a3[5];
  *(v21 + 4) = a3[4];
  *(v21 + 5) = v25;
  v26 = a3[1];
  *v21 = *a3;
  *(v21 + 1) = v26;
  *&a7[v14[7]] = a4;
  sub_2405AFA1C(*v15, v15[1]);
  *v15 = v12;
  v15[1] = v13;
  *v16 = a6;
  v16[8] = 0;
}

uint64_t type metadata accessor for IdMSAccount()
{
  result = qword_27E4B90E8;
  if (!qword_27E4B90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall IdMSAccount.ID.init(altDsid:username:dsid:name:deviceUserId:)(AppleIDSetup::IdMSAccount::ID *__return_ptr retstr, Swift::String altDsid, Swift::String_optional username, Swift::String_optional dsid, Swift::String_optional name, Swift::String_optional deviceUserId)
{
  retstr->altDsid = altDsid;
  retstr->username = username;
  retstr->dsid = dsid;
  retstr->name = name;
  retstr->deviceUserId = deviceUserId;
}

uint64_t IdMSAccount.id.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

__n128 IdMSAccount.id.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_240618468(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t IdMSAccount.name.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdMSAccount() + 20);
  v4 = sub_2407595A4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IdMSAccount.name.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdMSAccount() + 20);
  v4 = sub_2407595A4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IdMSAccount.credential.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IdMSAccount() + 24));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_240618498(v20, &v19);
}

__n128 IdMSAccount.credential.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IdMSAccount() + 24));
  v4 = v3[7];
  v15[6] = v3[6];
  v15[7] = v4;
  v5 = v3[9];
  v15[8] = v3[8];
  v15[9] = v5;
  v6 = v3[3];
  v15[2] = v3[2];
  v15[3] = v6;
  v7 = v3[5];
  v15[4] = v3[4];
  v15[5] = v7;
  v8 = v3[1];
  v15[0] = *v3;
  v15[1] = v8;
  sub_2406184D0(v15);
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  return result;
}

uint64_t IdMSAccount.services.getter()
{
  v1 = *(v0 + *(type metadata accessor for IdMSAccount() + 28));
}

uint64_t IdMSAccount.services.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdMSAccount() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

id IdMSAccount.familyInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IdMSAccount() + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;

  return sub_240618500(v4, v5);
}

void IdMSAccount.familyInfo.setter(void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for IdMSAccount() + 32));
  sub_2405AFA1C(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
}

uint64_t IdMSAccount.ageRange.getter()
{
  v1 = (v0 + *(type metadata accessor for IdMSAccount() + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t IdMSAccount.ageRange.setter(uint64_t a1)
{
  result = type metadata accessor for IdMSAccount();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*IdMSAccount.ageRange.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for IdMSAccount() + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_24060A720;
}

uint64_t sub_24060A720(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void sub_24060A738()
{
  v0 = sub_2407595A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdMSAccount();
  __swift_allocate_value_buffer(v5, qword_27E4B8D18);
  v6 = __swift_project_value_buffer(v5, qword_27E4B8D18);
  if (qword_27E4B5F08 != -1)
  {
    swift_once();
  }

  v25 = xmmword_27E4B8D50;
  v26 = xmmword_27E4B8D60;
  v27 = xmmword_27E4B8D70;
  v24 = xmmword_27E4B8D40;
  v23 = xmmword_27E4B8D30;
  sub_2405AF99C(&v23, v28);
  sub_240759594();
  sub_2405AF9F8(v28);
  v7 = &v6[v5[8]];
  v22 = xmmword_24075D8C0;
  *v7 = xmmword_24075D8C0;
  v8 = &v6[v5[9]];
  *v8 = 0;
  v8[8] = 1;
  *v6 = v23;
  v9 = v24;
  v10 = v25;
  v11 = v27;
  *(v6 + 3) = v26;
  *(v6 + 4) = v11;
  *(v6 + 1) = v9;
  *(v6 + 2) = v10;
  (*(v1 + 32))(&v6[v5[5]], v4, v0);
  v12 = &v6[v5[6]];
  v14 = v28[8];
  v13 = v28[9];
  v15 = v28[7];
  *(v12 + 6) = v28[6];
  *(v12 + 7) = v15;
  *(v12 + 8) = v14;
  *(v12 + 9) = v13;
  v17 = v28[4];
  v16 = v28[5];
  v18 = v28[3];
  *(v12 + 2) = v28[2];
  *(v12 + 3) = v18;
  *(v12 + 4) = v17;
  *(v12 + 5) = v16;
  v19 = v28[1];
  *v12 = v28[0];
  *(v12 + 1) = v19;
  *&v6[v5[7]] = MEMORY[0x277D84FA0];
  v20 = *v7;
  v21 = *(v7 + 1);
  *v7 = v22;
  sub_2405AFA1C(v20, v21);
  *v8 = 0;
  v8[8] = 0;
}

uint64_t static IdMSAccount.reservedNewAccount.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5F00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IdMSAccount();
  v3 = __swift_project_value_buffer(v2, qword_27E4B8D18);

  return sub_240618544(v3, a1);
}

uint64_t IdMSAccount.isReservedNewAccount.getter()
{
  if (qword_27E4B5F00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IdMSAccount();
  v2 = __swift_project_value_buffer(v1, qword_27E4B8D18);

  return _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v0, v2);
}

uint64_t IdMSAccount.description.getter()
{
  strcpy(v2, "IdMSAccount(");
  v0 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v0);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v2[0];
}

uint64_t IdMSAccount.debugDescription.getter()
{
  v1 = v0;
  sub_24075A864();
  MEMORY[0x245CC5E60](0x6F636341534D6449, 0xEB00000000746E75);
  MEMORY[0x245CC5E60](32, 0xE100000000000000);
  v14 = v0[2];
  v16 = v0[3];
  v18 = v0[4];
  v10 = *v0;
  v12 = v0[1];
  v2 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v2);

  MEMORY[0x245CC5E60](0x3A656D616E202D20, 0xE800000000000000);
  v3 = type metadata accessor for IdMSAccount();
  v4 = v0 + v3[5];
  v5 = sub_240759574();
  MEMORY[0x245CC5E60](v5);

  MEMORY[0x245CC5E60](0x6E6564657263202CLL, 0xEE00203A6C616974);
  v6 = (v1 + v3[6]);
  v21 = v6[6];
  v22 = v6[7];
  v23 = v6[8];
  v24 = v6[9];
  v15 = v6[2];
  v17 = v6[3];
  v19 = v6[4];
  v20 = v6[5];
  v11 = *v6;
  v13 = v6[1];
  sub_24075A994();
  MEMORY[0x245CC5E60](0x636976726573202CLL, 0xEB000000003A7365);
  v7 = *(v1 + v3[7]);
  type metadata accessor for AIDAServiceType(0);
  sub_24061CCEC(&qword_280FAD720, type metadata accessor for AIDAServiceType);
  v8 = sub_24075A544();
  MEMORY[0x245CC5E60](v8);

  return 0;
}

uint64_t static IdMSAccount.ID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24075ACF4();
  }
}

uint64_t sub_24060ACF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7365636976726573;
  v4 = 0x6E49796C696D6166;
  if (v1 != 4)
  {
    v4 = 0x676E61526567615FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x69746E6564657263;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24060ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406192E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24060ADD0(uint64_t a1)
{
  v2 = sub_2406185A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060AE0C(uint64_t a1)
{
  v2 = sub_2406185A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8DD0, &unk_240769210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406185A8();
  sub_24075AF74();
  v10 = v2[2];
  v11 = *v2;
  v74 = v2[1];
  v75 = v10;
  v12 = v2[2];
  v13 = v2[4];
  v76 = v2[3];
  v77 = v13;
  v14 = *v2;
  v70 = v12;
  v71 = v76;
  v72 = v2[4];
  v73 = v14;
  v68 = v11;
  v69 = v74;
  v67 = 0;
  sub_2405AF99C(&v73, &v55);
  sub_2406185FC();
  v15 = v4;
  v16 = v78;
  sub_24075ABE4();
  if (v16)
  {
    v57 = v70;
    v58 = v71;
    v59 = v72;
    v55 = v68;
    v56 = v69;
    sub_240618468(&v55);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v39 = v5;
    v66[2] = v70;
    v66[3] = v71;
    v66[4] = v72;
    v66[0] = v68;
    v66[1] = v69;
    sub_240618468(v66);
    v18 = type metadata accessor for IdMSAccount();
    v78 = v8;
    v19 = v18;
    v20 = *(v18 + 20);
    v65 = 1;
    sub_2407595A4();
    sub_24061CCEC(&qword_27E4B8DE8, MEMORY[0x277CC8E50]);
    sub_24075ABE4();
    v21 = v19;
    v22 = (v2 + v19[6]);
    v23 = v22[7];
    v24 = v22[5];
    v61 = v22[6];
    v62 = v23;
    v25 = v22[7];
    v26 = v22[9];
    v63 = v22[8];
    v64 = v26;
    v27 = v22[3];
    v28 = v22[1];
    v57 = v22[2];
    v58 = v27;
    v29 = v22[3];
    v30 = v22[5];
    v59 = v22[4];
    v60 = v30;
    v31 = v22[1];
    v55 = *v22;
    v56 = v31;
    v51 = v61;
    v52 = v25;
    v32 = v22[9];
    v53 = v63;
    v54 = v32;
    v47 = v57;
    v48 = v29;
    v49 = v59;
    v50 = v24;
    v45 = v55;
    v46 = v28;
    v44 = 2;
    sub_240618498(&v55, v43);
    sub_240618650();
    sub_24075ABE4();
    v33 = v39;
    v43[7] = v52;
    v43[8] = v53;
    v43[9] = v54;
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[6] = v51;
    v43[0] = v45;
    v43[1] = v46;
    sub_2406184D0(v43);
    v40 = *(v2 + v21[7]);
    v42 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_2406187A0(&qword_27E4B8280, &qword_27E4B6470);
    sub_24075ABE4();
    v34 = v2 + v21[8];
    v35 = *(v34 + 1);
    v40 = *v34;
    v41 = v35;
    v42 = 4;
    sub_240618500(v40, v35);
    sub_2406186A4();
    sub_24075AB94();
    sub_2405AFA1C(v40, v41);
    v36 = v2 + v21[9];
    v37 = *v36;
    LOBYTE(v36) = v36[8];
    v40 = v37;
    LOBYTE(v41) = v36;
    v42 = 5;
    type metadata accessor for AKUserAgeRange(0);
    sub_24061CCEC(&qword_27E4B8E00, type metadata accessor for AKUserAgeRange);
    v38 = v78;
    sub_24075AB94();
    return (*(v33 + 8))(v38, v15);
  }
}

uint64_t IdMSAccount.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_24075A114();
  v6 = type metadata accessor for IdMSAccount();
  v7 = v6[5];
  sub_2407595A4();
  sub_24061CCEC(&qword_27E4B84E8, MEMORY[0x277CC8E50]);
  sub_24075A004();
  v8 = (v2 + v6[6]);
  v23 = v8[6];
  v24 = v8[7];
  v25 = v8[8];
  v26 = v8[9];
  v19 = v8[2];
  v20 = v8[3];
  v21 = v8[4];
  v22 = v8[5];
  v17 = *v8;
  v18 = v8[1];
  IdMSAccount.Credential.hash(into:)();
  sub_2405F115C(a1, *(v2 + v6[7]));
  v9 = v2 + v6[8];
  v10 = *v9;
  if (*v9 != 1)
  {
    v11 = *(v9 + 1);
    sub_24075AE94();
    if (v10)
    {
      sub_24075AE94();
      v12 = v10;
      sub_24075A6E4();

      if (v11)
      {
LABEL_4:
        sub_24075AE94();
        v13 = v11;
        sub_24075A6E4();

        goto LABEL_7;
      }
    }

    else
    {
      sub_24075AE94();
      if (v11)
      {
        goto LABEL_4;
      }
    }
  }

  sub_24075AE94();
LABEL_7:
  v14 = v2 + v6[9];
  if (v14[8])
  {
    return sub_24075AE94();
  }

  v16 = *v14;
  sub_24075AE94();
  return MEMORY[0x245CC6BA0](v16);
}

uint64_t IdMSAccount.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v1);
  return sub_24075AED4();
}

void IdMSAccount.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_2407595A4();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E08, &qword_240769220);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for IdMSAccount();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &v15[*(v13 + 32)];
  *v40 = xmmword_24075D8C0;
  v16 = a1[3];
  v17 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2406185A8();
  v38 = v10;
  v18 = v39;
  sub_24075AF34();
  if (v18)
  {
    v19 = v40;
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_2405AFA1C(*v19, v19[1]);
  }

  else
  {
    v45 = 0;
    sub_2406186F8();
    sub_24075AAF4();
    v20 = v49;
    *(v15 + 2) = v48;
    *(v15 + 3) = v20;
    *(v15 + 4) = v50;
    v21 = v47;
    *v15 = v46;
    *(v15 + 1) = v21;
    LOBYTE(v51) = 1;
    sub_24061CCEC(&qword_27E4B8E18, MEMORY[0x277CC8E50]);
    sub_24075AAF4();
    v22 = v40;
    v39 = v11;
    (*(v35 + 32))(&v15[*(v11 + 20)], v6, v3);
    v44 = 2;
    sub_24061874C();
    sub_24075AAF4();
    v23 = v39;
    v24 = &v15[*(v39 + 24)];
    v25 = v58;
    *(v24 + 6) = v57;
    *(v24 + 7) = v25;
    v26 = v60;
    *(v24 + 8) = v59;
    *(v24 + 9) = v26;
    v27 = v54;
    *(v24 + 2) = v53;
    *(v24 + 3) = v27;
    v28 = v56;
    *(v24 + 4) = v55;
    *(v24 + 5) = v28;
    v29 = v52;
    *v24 = v51;
    *(v24 + 1) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    v43 = 3;
    sub_2406187A0(&qword_27E4B82F8, &qword_27E4B64A0);
    sub_24075AAF4();
    *&v15[*(v23 + 28)] = v41;
    v43 = 4;
    sub_24061883C();
    sub_24075AAA4();
    v30 = v41;
    v31 = v42;
    sub_2405AFA1C(*v22, v22[1]);
    *v22 = v30;
    v22[1] = v31;
    type metadata accessor for AKUserAgeRange(0);
    v43 = 5;
    sub_24061CCEC(&qword_27E4B8E30, type metadata accessor for AKUserAgeRange);
    sub_24075AAA4();
    v32 = &v15[*(v39 + 36)];
    (*(v36 + 8))(v38, v37);
    v33 = v42;
    *v32 = v41;
    v32[8] = v33;
    sub_240618544(v15, v34);
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_240618890(v15);
  }
}

uint64_t sub_24060BC44()
{
  strcpy(v2, "IdMSAccount(");
  v0 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v0);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_24060BCEC()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24060BD30()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v1);
  return sub_24075AED4();
}

unint64_t sub_24060BD74()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x7773736150776172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F696E61706D6F63;
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

uint64_t sub_24060BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406194EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24060BE4C(uint64_t a1)
{
  v2 = sub_2406188EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060BE88(uint64_t a1)
{
  v2 = sub_2406188EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060BEC4(uint64_t a1)
{
  v2 = sub_240618AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060BF00(uint64_t a1)
{
  v2 = sub_240618AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060BF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406196B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24060BF78(uint64_t a1)
{
  v2 = sub_240618A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060BFB4(uint64_t a1)
{
  v2 = sub_240618A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060BFF0(uint64_t a1)
{
  v2 = sub_240618B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060C02C(uint64_t a1)
{
  v2 = sub_240618B00();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24060C068()
{
  if (*v0)
  {
    result = 0x61746144736D6469;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_24060C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000240787330 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61746144736D6469 && a2 == 0xED00006E656B6F54)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24075ACF4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24060C1A4(uint64_t a1)
{
  v2 = sub_2406189B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060C1E0(uint64_t a1)
{
  v2 = sub_2406189B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060C21C(uint64_t a1)
{
  v2 = sub_24061895C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060C258(uint64_t a1)
{
  v2 = sub_24061895C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E38, &qword_240769228);
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = &v71 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E40, &qword_240769230);
  v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v71 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E48, &qword_240769238);
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E50, &qword_240769240);
  v79 = *(v10 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v71 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E58, &qword_240769248);
  v71 = *(v72 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v16 = &v71 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E60, &qword_240769250);
  v85 = *(v84 - 8);
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  v19 = &v71 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406188EC();
  v83 = v19;
  sub_24075AF74();
  v21 = v2[6];
  v22 = v2[8];
  v23 = v2[9];
  v92[7] = v2[7];
  v92[8] = v22;
  v92[9] = v23;
  v24 = v2[2];
  v25 = v2[4];
  v26 = v2[5];
  v92[3] = v2[3];
  v92[4] = v25;
  v92[5] = v26;
  v92[6] = v21;
  v27 = v2[1];
  v92[0] = *v2;
  v92[1] = v27;
  v92[2] = v24;
  v28 = sub_240618940(v92);
  if (v28 <= 1)
  {
    v36 = v13;
    v37 = v79;
    v38 = v10;
    v39 = v80;
    v40 = v81;
    v41 = v82;
    if (!v28)
    {
      v42 = sub_24057D704(v92);
      LOBYTE(v87) = 1;
      sub_240618AAC();
      v43 = v84;
      v44 = v83;
      sub_24075AB54();
      v87 = *v42;
      v45 = *(v42 + 16);
      v46 = *(v42 + 32);
      v47 = *(v42 + 48);
      v91 = *(v42 + 64);
      v90 = v47;
      v89 = v46;
      v88 = v45;
      sub_240618A58();
      sub_24075ABE4();
      (*(v37 + 8))(v36, v38);
      return (*(v85 + 8))(v44, v43);
    }

    v61 = sub_24057D704(v92);
    LOBYTE(v87) = 2;
    sub_240618A04();
    v33 = v84;
    v34 = v83;
    sub_24075AB54();
    v87 = *v61;
    v62 = *(v61 + 16);
    v63 = *(v61 + 32);
    v64 = *(v61 + 48);
    v91 = *(v61 + 64);
    v90 = v64;
    v89 = v63;
    v88 = v62;
    v86 = 0;
    sub_240618A58();
    v65 = v93;
    sub_24075ABE4();
    if (v65)
    {
      (*(v40 + 8))(v39, v41);
      return (*(v85 + 8))(v34, v33);
    }

    v66 = *(v61 + 88);
    v67 = *(v61 + 120);
    v89 = *(v61 + 104);
    v90 = v67;
    LOBYTE(v91) = *(v61 + 136);
    v68 = *(v61 + 72);
    v88 = v66;
    v87 = v68;
    v86 = 1;
    sub_240602058();
    sub_24075ABE4();
    v69 = *(v61 + 144);
    v70 = *(v61 + 152);
    LOBYTE(v87) = 2;
    sub_24075ABB4();
    (*(v40 + 8))(v39, v41);
    return (*(v85 + 8))(v34, v33);
  }

  if (v28 != 2)
  {
    if (v28 != 3)
    {
      LOBYTE(v87) = 0;
      sub_240618B00();
      v59 = v84;
      v60 = v83;
      sub_24075AB54();
      (*(v71 + 8))(v16, v72);
      return (*(v85 + 8))(v60, v59);
    }

    v29 = sub_24057D704(v92);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v87) = 4;
    sub_24061895C();
    v32 = v73;
    v33 = v84;
    v34 = v83;
    sub_24075AB54();
    v35 = v76;
    sub_24075ABB4();
    (*(v75 + 8))(v32, v35);
    return (*(v85 + 8))(v34, v33);
  }

  v49 = sub_24057D704(v92);
  v50 = *v49;
  v51 = v49[1];
  v52 = v49[2];
  v53 = v49[3];
  LOBYTE(v87) = 3;
  sub_2406189B0();
  v54 = v74;
  v55 = v84;
  v56 = v83;
  sub_24075AB54();
  LOBYTE(v87) = 0;
  v57 = v78;
  v58 = v93;
  sub_24075ABB4();
  if (!v58)
  {
    LOBYTE(v87) = 1;
    sub_24075AB64();
  }

  (*(v77 + 8))(v54, v57);
  return (*(v85 + 8))(v56, v55);
}

uint64_t IdMSAccount.Credential.hash(into:)()
{
  v1 = v0[7];
  v43[6] = v0[6];
  v43[7] = v1;
  v2 = v0[9];
  v43[8] = v0[8];
  v43[9] = v2;
  v3 = v0[3];
  v43[2] = v0[2];
  v43[3] = v3;
  v4 = v0[5];
  v43[4] = v0[4];
  v43[5] = v4;
  v5 = v0[1];
  v43[0] = *v0;
  v43[1] = v5;
  v6 = sub_240618940(v43);
  if (v6 <= 1)
  {
    if (!v6)
    {
      v10 = sub_24057D704(v43);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v15 = v10[4];
      v16 = v10[5];
      v17 = v10[6];
      v18 = v10[7];
      v36 = v10[8];
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      return MEMORY[0x245CC6BE0](v36);
    }

    v25 = sub_24057D704(v43);
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v31 = *(v25 + 32);
    v30 = *(v25 + 40);
    v32 = *(v25 + 48);
    v33 = *(v25 + 56);
    v34 = *(v25 + 64);
    v35 = *(v25 + 152);
    v37 = *(v25 + 144);
    MEMORY[0x245CC6BA0](2);
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
    MEMORY[0x245CC6BE0](v34);
    v40 = *(v25 + 104);
    v41 = *(v25 + 120);
    v42 = *(v25 + 136);
    v38 = *(v25 + 72);
    v39 = *(v25 + 88);
    IdMSAccount.DeviceInfo.hash(into:)();
  }

  else if (v6 == 2)
  {
    v20 = sub_24057D704(v43);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    MEMORY[0x245CC6BA0](3);
    sub_24075A114();
    if (!v24)
    {
      return sub_24075AE94();
    }

    sub_24075AE94();
  }

  else
  {
    if (v6 != 3)
    {
      return MEMORY[0x245CC6BA0](0);
    }

    v7 = sub_24057D704(v43);
    v8 = *v7;
    v9 = v7[1];
    MEMORY[0x245CC6BA0](4);
  }

  return sub_24075A114();
}

uint64_t IdMSAccount.Credential.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.Credential.hash(into:)();
  return sub_24075AED4();
}

uint64_t IdMSAccount.Credential.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EA0, &qword_240769258);
  v4 = *(v3 - 8);
  v82 = v3;
  v83 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EA8, &qword_240769260);
  v8 = *(v7 - 8);
  v84 = v7;
  v85 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v87 = &v77 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EB0, &qword_240769268);
  v86 = *(v81 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v81);
  v89 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EB8, &qword_240769270);
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EC0, &qword_240769278);
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EC8, &unk_240769280);
  v88 = *(v21 - 8);
  v22 = *(v88 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2406188EC();
  v27 = v145;
  sub_24075AF34();
  if (v27)
  {
    goto LABEL_12;
  }

  v28 = v20;
  v77 = v17;
  v145 = 0;
  v29 = v89;
  v30 = v90;
  v31 = v91;
  v32 = sub_24075AB34();
  v33 = (2 * *(v32 + 16)) | 1;
  v141 = v32;
  v142 = v32 + 32;
  v143 = 0;
  v144 = v33;
  v34 = sub_2405B8AFC();
  if (v34 == 5 || v143 != v144 >> 1)
  {
    v41 = sub_24075A8C4();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v43 = &type metadata for IdMSAccount.Credential;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
  }

  else
  {
    if (v34 > 1u)
    {
      if (v34 == 2)
      {
        LOBYTE(v121) = 2;
        sub_240618A04();
        v48 = v145;
        sub_24075AA54();
        v49 = v88;
        if (!v48)
        {
          v115 = 0;
          sub_240618B7C();
          v50 = v81;
          sub_24075AAF4();
          v112 = v118;
          v113 = v119;
          v114 = v120;
          v110 = v116;
          v111 = v117;
          v104 = 1;
          sub_2406020F4();
          sub_24075AAF4();
          v101 = v107;
          v102 = v108;
          v103 = v109;
          v99 = v105;
          v100 = v106;
          v98 = 2;
          v145 = sub_24075AAC4();
          v76 = v75;
          (*(v86 + 8))(v29, v50);
          (*(v49 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v95 = v112;
          v96 = v113;
          *&v97[0] = v114;
          v93 = v110;
          v94 = v111;
          *(&v97[2] + 8) = v101;
          *(&v97[1] + 8) = v100;
          *(&v97[3] + 8) = v102;
          BYTE8(v97[4]) = v103;
          *(v97 + 8) = v99;
          v123 = v112;
          v124 = v113;
          v121 = v110;
          v122 = v111;
          v128 = v97[3];
          v129 = v97[4];
          v126 = v97[1];
          v127 = v97[2];
          v125 = v97[0];
          *&v130 = v145;
          *(&v130 + 1) = v76;
          sub_240618C00(&v121);
          goto LABEL_28;
        }

        v52 = *(v88 + 8);
        v53 = v24;
        goto LABEL_27;
      }

      v35 = v31;
      v36 = v88;
      if (v34 == 3)
      {
        LOBYTE(v121) = 3;
        sub_2406189B0();
        v37 = v87;
        v38 = v24;
        v39 = v145;
        sub_24075AA54();
        if (!v39)
        {
          LOBYTE(v121) = 0;
          v40 = v84;
          v58 = v37;
          v59 = v21;
          v145 = sub_24075AAC4();
          v61 = v60;
          LOBYTE(v93) = 1;
          v71 = sub_24075AA74();
          v72 = v58;
          v74 = v73;
          (*(v85 + 8))(v72, v40);
          (*(v36 + 8))(v24, v59);
          swift_unknownObjectRelease();
          *&v121 = v145;
          *(&v121 + 1) = v61;
          *&v122 = v71;
          *(&v122 + 1) = v74;
          sub_240618B68(&v121);
LABEL_28:
          v137 = v127;
          v138 = v128;
          v139 = v129;
          v140 = v130;
          v133 = v123;
          v134 = v124;
          v135 = v125;
          v136 = v126;
          v131 = v121;
          v132 = v122;
          v35 = v91;
          v45 = v92;
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      LOBYTE(v121) = 4;
      sub_24061895C();
      v38 = v24;
      v51 = v145;
      sub_24075AA54();
      if (v51)
      {
LABEL_20:
        v52 = *(v36 + 8);
        v53 = v38;
LABEL_27:
        v52(v53, v21);
        goto LABEL_11;
      }

      v57 = v82;
      v62 = sub_24075AAC4();
      v63 = v57;
      v65 = v64;
      (*(v83 + 8))(v30, v63);
      (*(v36 + 8))(v24, v21);
      swift_unknownObjectRelease();
      *&v121 = v62;
      *(&v121 + 1) = v65;
      sub_240618B54(&v121);
      v137 = v127;
      v138 = v128;
      v139 = v129;
      v140 = v130;
      v133 = v123;
      v134 = v124;
      v135 = v125;
      v136 = v126;
      v131 = v121;
      v132 = v122;
      v45 = v92;
LABEL_25:
      v66 = v138;
      v35[6] = v137;
      v35[7] = v66;
      v67 = v140;
      v35[8] = v139;
      v35[9] = v67;
      v68 = v134;
      v35[2] = v133;
      v35[3] = v68;
      v69 = v136;
      v35[4] = v135;
      v35[5] = v69;
      v70 = v132;
      *v35 = v131;
      v35[1] = v70;
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    if (v34)
    {
      LOBYTE(v121) = 1;
      sub_240618AAC();
      v54 = v145;
      sub_24075AA54();
      if (!v54)
      {
        sub_240618B7C();
        v55 = v80;
        sub_24075AAF4();
        v56 = (v88 + 8);
        (*(v79 + 8))(v16, v55);
        (*v56)(v24, v21);
        swift_unknownObjectRelease();
        v123 = v95;
        v124 = v96;
        *&v125 = *&v97[0];
        v121 = v93;
        v122 = v94;
        sub_240618C14(&v121);
        v137 = v127;
        v138 = v128;
        v139 = v129;
        v140 = v130;
        v133 = v123;
        v134 = v124;
        v135 = v125;
        v136 = v126;
        v131 = v121;
        v132 = v122;
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v121) = 0;
      sub_240618B00();
      v47 = v145;
      sub_24075AA54();
      if (!v47)
      {
        (*(v78 + 8))(v28, v77);
        (*(v88 + 8))(v24, v21);
        swift_unknownObjectRelease();
        sub_2405AF9F8(&v131);
LABEL_24:
        v45 = v92;
        v35 = v31;
        goto LABEL_25;
      }
    }
  }

  (*(v88 + 8))(v24, v21);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v45 = v92;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_24060DA28()
{
  sub_24075AE64();
  IdMSAccount.Credential.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_24060DA6C()
{
  sub_24075AE64();
  IdMSAccount.Credential.hash(into:)();
  return sub_24075AED4();
}

uint64_t IdMSAccount.ID.altDsid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdMSAccount.ID.altDsid.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdMSAccount.ID.username.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdMSAccount.ID.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdMSAccount.ID.dsid.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t IdMSAccount.ID.dsid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IdMSAccount.ID.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t IdMSAccount.ID.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t IdMSAccount.ID.deviceUserId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t IdMSAccount.ID.deviceUserId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_24060DD50()
{
  xmmword_27E4B8D70 = 0uLL;
  *&xmmword_27E4B8D30 = 0xD00000000000001BLL;
  *(&xmmword_27E4B8D30 + 1) = 0x80000002407873D0;
  xmmword_27E4B8D40 = 0u;
  xmmword_27E4B8D50 = 0u;
  xmmword_27E4B8D60 = 0u;

  xmmword_27E4B8D70 = 0uLL;
}

uint64_t static IdMSAccount.ID.reservedNewAccountID.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27E4B5F08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = xmmword_27E4B8D60;
  v8[2] = xmmword_27E4B8D50;
  v8[3] = xmmword_27E4B8D60;
  v2 = xmmword_27E4B8D70;
  v8[4] = xmmword_27E4B8D70;
  v4 = xmmword_27E4B8D30;
  v3 = xmmword_27E4B8D40;
  v8[0] = xmmword_27E4B8D30;
  v8[1] = xmmword_27E4B8D40;
  a1[2] = xmmword_27E4B8D50;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_2405AF99C(v8, &v7);
}

uint64_t sub_24060DE54()
{
  xmmword_27E4B8DC0 = 0uLL;
  *&xmmword_27E4B8D80 = 0xD00000000000001FLL;
  *(&xmmword_27E4B8D80 + 1) = 0x80000002407873F0;
  xmmword_27E4B8D90 = 0u;
  xmmword_27E4B8DA0 = 0u;
  xmmword_27E4B8DB0 = 0u;

  xmmword_27E4B8DC0 = 0uLL;
}

uint64_t static IdMSAccount.ID.reservedUnknownAccountID.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27E4B5F10 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = xmmword_27E4B8DB0;
  v8[2] = xmmword_27E4B8DA0;
  v8[3] = xmmword_27E4B8DB0;
  v2 = xmmword_27E4B8DC0;
  v8[4] = xmmword_27E4B8DC0;
  v4 = xmmword_27E4B8D80;
  v3 = xmmword_27E4B8D90;
  v8[0] = xmmword_27E4B8D80;
  v8[1] = xmmword_27E4B8D90;
  a1[2] = xmmword_27E4B8DA0;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_2405AF99C(v8, &v7);
}

uint64_t sub_24060DFA8(void *a1, uint64_t *a2, void *a3)
{
  v6 = *v3;
  v7 = v3[1];
  if (*a1 != -1)
  {
    v11 = *v3;
    v12 = v7;
    v13 = a3;
    swift_once();
    a3 = v13;
    v7 = v12;
    v6 = v11;
  }

  if (v6 == *a2 && v7 == *a3)
  {
    return 1;
  }

  v9 = *a2;

  return sub_24075ACF4();
}

uint64_t IdMSAccount.ID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24075A114();
}

uint64_t IdMSAccount.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[9];
  if (v7)
  {
    v17 = v0[8];
    sub_24075A864();

    MEMORY[0x245CC5E60](v1, v2);
    MEMORY[0x245CC5E60](3831084, 0xE300000000000000);
    if (v3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0x296C6C756E28;
    }

    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v8, v9);

    MEMORY[0x245CC5E60](3826732, 0xE300000000000000);
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0x296C6C756E28;
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v10, v11);

    MEMORY[0x245CC5E60](0x3A646975642CLL, 0xE600000000000000);
    MEMORY[0x245CC5E60](v17, v7);
  }

  else
  {
    sub_24075A864();

    MEMORY[0x245CC5E60](v1, v2);
    MEMORY[0x245CC5E60](3831084, 0xE300000000000000);
    if (v3)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0x296C6C756E28;
    }

    if (v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v12, v13);

    MEMORY[0x245CC5E60](3826732, 0xE300000000000000);
    if (v5)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0x296C6C756E28;
    }

    if (v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v14, v15);
  }

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 3825960;
}

uint64_t sub_24060E284()
{
  v1 = *v0;
  v2 = 0x64697344746C61;
  v3 = 1684632420;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x7355656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D616E72657375;
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

uint64_t sub_24060E318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406197B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24060E340(uint64_t a1)
{
  v2 = sub_240618C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060E37C(uint64_t a1)
{
  v2 = sub_240618C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8ED8, &qword_240769290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17[7] = v1[3];
  v17[8] = v10;
  v11 = v1[4];
  v17[5] = v1[5];
  v17[6] = v11;
  v12 = v1[6];
  v17[3] = v1[7];
  v17[4] = v12;
  v13 = v1[8];
  v17[1] = v1[9];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618C24();
  sub_24075AF74();
  v22 = 0;
  v15 = v17[9];
  sub_24075ABB4();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_24075AB64();
  v20 = 2;
  sub_24075AB64();
  v19 = 3;
  sub_24075AB64();
  v18 = 4;
  sub_24075AB64();
  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t IdMSAccount.ID.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EE8, &qword_240769298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618C24();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  LOBYTE(v35[0]) = 1;
  *&v29 = sub_24075AA74();
  *(&v29 + 1) = v14;
  LOBYTE(v35[0]) = 2;
  *&v28 = sub_24075AA74();
  *(&v28 + 1) = v15;
  LOBYTE(v35[0]) = 3;
  *&v27 = sub_24075AA74();
  *(&v27 + 1) = v16;
  v41 = 4;
  v17 = sub_24075AA74();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  *&v30 = v11;
  *(&v30 + 1) = v13;
  v21 = *(&v29 + 1);
  v31 = v29;
  v32 = v28;
  v22 = *(&v27 + 1);
  v33 = v27;
  *&v34 = v17;
  *(&v34 + 1) = v20;
  v23 = v27;
  a2[2] = v28;
  a2[3] = v23;
  a2[4] = v34;
  v24 = v31;
  *a2 = v30;
  a2[1] = v24;
  sub_2405AF99C(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v11;
  v35[1] = v13;
  v35[2] = v29;
  v35[3] = v21;
  v36 = v28;
  v37 = v27;
  v38 = v22;
  v39 = v17;
  v40 = v20;
  return sub_240618468(v35);
}

uint64_t sub_24060EA1C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24075ACF4();
  }
}

uint64_t sub_24060EA4C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_24060EA98()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24075A114();
}

uint64_t sub_24060EAA0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t IdMSAccount.SRPResults.id.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

__n128 IdMSAccount.SRPResults.id.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_240618468(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t IdMSAccount.SRPResults.archivedData.getter()
{
  v1 = *(v0 + 80);
  sub_240618C78(v1, *(v0 + 88));
  return v1;
}

uint64_t IdMSAccount.SRPResults.archivedData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24058C9E4(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t IdMSAccount.SRPResults.init(id:archivedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  *(a4 + 64) = a1[4];
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = sub_24058C9E4(0, 0xF000000000000000);
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

uint64_t IdMSAccount.SRPResults.description.getter()
{
  v1 = *(v0 + 88);
  strcpy(v6, "SRPResults(id:");
  HIBYTE(v6[1]) = -18;
  v2 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v2);

  v3 = 0xE400000000000000;
  MEMORY[0x245CC5E60](979657004, 0xE400000000000000);
  if (v1 >> 60 == 15)
  {
    v4 = 0x65736C6166;
  }

  else
  {
    v4 = 1702195828;
  }

  if (v1 >> 60 == 15)
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v4, v3);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v6[0];
}

uint64_t IdMSAccount.SRPResults.debugDescription.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  strcpy(v7, "SRPResults(id:");
  HIBYTE(v7[1]) = -18;
  v3 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v3);

  v4 = 0xE400000000000000;
  MEMORY[0x245CC5E60](979657004, 0xE400000000000000);
  if (v2 >> 60 == 15)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (v2 >> 60 == 15)
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v5, v4);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  MEMORY[0x245CC5E60](0x3A646128202B20, 0xE700000000000000);
  sub_240618C78(v1, v2);
  sub_240618C8C();
  sub_24075ACD4();
  sub_24058C9E4(v1, v2);
  MEMORY[0x245CC5E60](41, 0xE100000000000000);

  MEMORY[0x245CC5E60](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_24060EEE8()
{
  if (*v0)
  {
    result = 0x6465766968637261;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_24060EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24060EFF8(uint64_t a1)
{
  v2 = sub_240618E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060F034(uint64_t a1)
{
  v2 = sub_240618E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.SRPResults.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EF8, &qword_2407692A0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[3];
  v28 = v1[2];
  v29 = v8;
  v30 = v1[4];
  v9 = v1[1];
  v26 = *v1;
  v27 = v9;
  v10 = *(v1 + 10);
  v14 = *(v1 + 11);
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AF99C(&v26, &v21);
  sub_240618E20();
  sub_24075AF74();
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v21 = v26;
  v20 = 0;
  sub_2406185FC();
  sub_24075ABE4();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_240618468(v19);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v16 = 1;
    sub_240618C78(v15, v14);
    sub_240618E74();
    sub_24075AB94();
    sub_24058C9E4(v17, v18);
  }

  return (*(v31 + 8))(v7, v4);
}

uint64_t IdMSAccount.SRPResults.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[10];
  v4 = v0[11];
  sub_24075A114();
  if (v4 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t IdMSAccount.SRPResults.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[10];
  v4 = v0[11];
  sub_24075AE64();
  sub_24075A114();
  sub_24075AE94();
  if (v4 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t IdMSAccount.SRPResults.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F08, &qword_2407692A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618E20();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24058C9E4(0, 0xF000000000000000);
  }

  else
  {
    v10 = v20;
    v39 = 0;
    sub_2406186F8();
    sub_24075AAF4();
    v35 = v30;
    v36 = v31;
    v37 = v32;
    v33 = v28;
    v34 = v29;
    v38 = 1;
    sub_240618EC8();
    sub_24075AAA4();
    (*(v5 + 8))(v8, v4);
    v11 = v26;
    v12 = v27;
    sub_24058C9E4(0, 0xF000000000000000);
    v13 = v36;
    v21[2] = v35;
    v21[3] = v36;
    v14 = v37;
    v21[4] = v37;
    v16 = v33;
    v15 = v34;
    v21[0] = v33;
    v21[1] = v34;
    *&v22 = v11;
    *(&v22 + 1) = v12;
    v10[2] = v35;
    v10[3] = v13;
    *v10 = v16;
    v10[1] = v15;
    v17 = v22;
    v10[4] = v14;
    v10[5] = v17;
    sub_240618F1C(v21, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v23[2] = v35;
    v23[3] = v36;
    v23[4] = v37;
    v23[0] = v33;
    v23[1] = v34;
    v24 = v11;
    v25 = v12;
    return sub_240618F54(v23);
  }
}

uint64_t sub_24060F6A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[10];
  v4 = v0[11];
  sub_24075AE64();
  sub_24075A114();
  sub_24075AE94();
  if (v4 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t sub_24060F734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[10];
  v4 = v0[11];
  sub_24075A114();
  if (v4 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t sub_24060F7B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[10];
  v4 = v0[11];
  sub_24075AE64();
  sub_24075A114();
  sub_24075AE94();
  if (v4 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t IdMSAccount.AnisettePackage.machineID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdMSAccount.AnisettePackage.oneTimePassword.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdMSAccount.AnisettePackage.init(machineID:oneTimePassword:routingInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t IdMSAccount.AnisettePackage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24075A864();

  MEMORY[0x245CC5E60](v1, v2);
  MEMORY[0x245CC5E60](0x3A70746F2CLL, 0xE500000000000000);
  MEMORY[0x245CC5E60](v3, v4);
  MEMORY[0x245CC5E60](979989036, 0xE400000000000000);
  v6 = sub_24075AC34();
  MEMORY[0x245CC5E60](v6);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t IdMSAccount.AnisettePackage.debugDescription.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return IdMSAccount.AnisettePackage.description.getter();
}

BOOL static IdMSAccount.AnisettePackage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_24075ACF4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24075ACF4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24060FAA4()
{
  v1 = 0x50656D6954656E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x49676E6974756F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656E696863616DLL;
  }
}

uint64_t sub_24060FB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24061996C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24060FB40(uint64_t a1)
{
  v2 = sub_240618F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060FB7C(uint64_t a1)
{
  v2 = sub_240618F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.AnisettePackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F18, &qword_2407692B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618F84();
  sub_24075AF74();
  v17 = 0;
  v12 = v14[3];
  sub_24075ABB4();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_24075ABB4();
  v15 = 2;
  sub_24075AC14();
  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.AnisettePackage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v5);
}

uint64_t IdMSAccount.AnisettePackage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v5);
  return sub_24075AED4();
}

uint64_t IdMSAccount.AnisettePackage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F28, &qword_2407692B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618F84();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_24075AAC4();
  v20 = v14;
  v22 = 2;
  v15 = sub_24075AB24();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2406100B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return IdMSAccount.AnisettePackage.description.getter();
}

BOOL sub_240610124(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_24075ACF4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24075ACF4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406101C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v5);
  return sub_24075AED4();
}

uint64_t sub_240610240()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v5);
}

uint64_t sub_240610294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v5);
  return sub_24075AED4();
}

uint64_t IdMSAccount.DeviceInfo.deviceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdMSAccount.DeviceInfo.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.serverFriendlyDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdMSAccount.DeviceInfo.serverFriendlyDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.localeInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_240618FD8(v2, v3);
}

__n128 IdMSAccount.DeviceInfo.localeInfo.setter(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  sub_240604C2C(v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v6;
  return result;
}

__n128 IdMSAccount.DeviceInfo.init(deviceIdentifier:serverFriendlyDescription:localeInfo:isLegacy:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  sub_240604C2C(0, 0);
  result = *a5;
  v11 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v11;
  *(a7 + 64) = a6;
  return result;
}

id static IdMSAccount.DeviceInfo.current.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2407597F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v8 = result;
    sub_2407597E4();
    v9 = sub_2407597C4();
    v11 = v10;
    (*(v3 + 8))(v6, v2);
    v12 = sub_2407597D4();
    v13 = sub_24075A084();
    v14 = CFPreferencesCopyValue(v13, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

    if (v14 && (v17[0] = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F30, &unk_2407692C0), swift_dynamicCast()))
    {
      v15 = v16[1];
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v17[0] = v9;
    v17[1] = v11;
    v17[2] = v12;
    v17[3] = v15;
    AKDevice.into(with:)(v17, a1);

    return sub_240604C2C(v9, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double AKDevice.into(with:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = [v3 uniqueDeviceIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24075A0B4();
    v13 = v12;

    v14 = [v3 serverFriendlyDescription];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24075A0B4();
      v18 = v17;

      sub_240618FD8(v5, v6);
      sub_240604C2C(0, 0);
      *a2 = v11;
      *(a2 + 8) = v13;
      *(a2 + 16) = v16;
      *(a2 + 24) = v18;
      *(a2 + 32) = v5;
      *(a2 + 40) = v6;
      *(a2 + 48) = v7;
      *(a2 + 56) = v8;
      *(a2 + 64) = 0;
      return result;
    }
  }

  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 64);
  sub_24075A864();

  strcpy(v9, "DeviceInfo(id:");
  HIBYTE(v9[1]) = -18;
  MEMORY[0x245CC5E60](v1, v2);
  v6 = 0xE500000000000000;
  MEMORY[0x245CC5E60](0x3A6466732CLL, 0xE500000000000000);
  MEMORY[0x245CC5E60](v3, v4);
  MEMORY[0x245CC5E60](979856428, 0xE400000000000000);
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v5)
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x245CC5E60](v7, v6);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v9[0];
}

uint64_t IdMSAccount.DeviceInfo.debugDescription.getter()
{
  v8 = *v0;
  v9 = v0[1];
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v10 = *(v0 + 64);
  v5 = IdMSAccount.DeviceInfo.description.getter();
  sub_240618FD8(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F38, &qword_24077A740);
  v6 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v6);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);

  MEMORY[0x245CC5E60](0x3A696C28202B20, 0xE700000000000000);

  return v5;
}

unint64_t sub_240610A38()
{
  v1 = 0x6E49656C61636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x79636167654C7369;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_240610AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240619A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240610AE8(uint64_t a1)
{
  v2 = sub_240619028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240610B24(uint64_t a1)
{
  v2 = sub_240619028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.DeviceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F40, &qword_2407692D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[4];
  v23 = v1[5];
  v24 = v11;
  v12 = v1[6];
  v21 = v1[7];
  v22 = v12;
  v32 = *(v1 + 64);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240619028();
  sub_24075AF74();
  LOBYTE(v28) = 0;
  v14 = v27;
  sub_24075ABB4();
  if (!v14)
  {
    v15 = v21;
    v16 = v22;
    v18 = v23;
    v17 = v24;
    LOBYTE(v28) = 1;
    sub_24075ABB4();
    v28 = v17;
    v29 = v18;
    v30 = v16;
    v31 = v15;
    v33 = 2;
    sub_240618FD8(v17, v18);
    sub_24061907C();
    sub_24075AB94();
    sub_240604C2C(v28, v29);
    LOBYTE(v28) = 3;
    sub_24075ABC4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.DeviceInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = *(v0 + 64);
  sub_24075A114();
  sub_24075A114();
  if (v6)
  {
    sub_24075AE94();
    sub_24075A114();
    MEMORY[0x245CC6BA0](*(v8 + 16));
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = (v8 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        sub_24075A114();

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    MEMORY[0x245CC6BA0](*(v7 + 16));
    v14 = *(v7 + 16);
    if (v14)
    {
      v15 = (v7 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;

        sub_24075A114();

        v15 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    sub_24075AE94();
  }

  return sub_24075AE94();
}

uint64_t IdMSAccount.DeviceInfo.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.DeviceInfo.hash(into:)();
  return sub_24075AED4();
}

uint64_t IdMSAccount.DeviceInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F58, &qword_2407692D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240619028();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_240604C2C(0, 0);
  }

  else
  {
    LOBYTE(v34) = 0;
    v11 = sub_24075AAC4();
    v13 = v12;
    v24 = v11;
    LOBYTE(v34) = 1;
    *&v23 = sub_24075AAC4();
    *(&v23 + 1) = v14;
    LOBYTE(v29) = 2;
    sub_2406190D0();
    sub_24075AAA4();
    v26 = v35;
    v27 = v34;
    v28 = *(&v36 + 1);
    v25 = v36;
    sub_240604C2C(0, 0);
    v42 = 3;
    v15 = sub_24075AAD4();
    (*(v6 + 8))(v9, v5);
    v16 = v24;
    *&v29 = v24;
    *(&v29 + 1) = v13;
    v30 = v23;
    v18 = v26;
    v17 = v27;
    *&v31 = v27;
    *(&v31 + 1) = v26;
    v19 = v25;
    *&v32 = v25;
    *(&v32 + 1) = v28;
    v15 &= 1u;
    v33 = v15;
    *(a2 + 64) = v15;
    v20 = v32;
    *(a2 + 32) = v31;
    *(a2 + 48) = v20;
    v21 = v30;
    *a2 = v29;
    *(a2 + 16) = v21;
    sub_240619124(&v29, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = v16;
    v35 = v13;
    v36 = v23;
    v37 = v17;
    v38 = v18;
    v39 = v19;
    v40 = v28;
    v41 = v15;
    return sub_240602EAC(&v34);
  }
}

uint64_t sub_2406112D8()
{
  sub_24075AE64();
  IdMSAccount.DeviceInfo.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_24061131C()
{
  sub_24075AE64();
  IdMSAccount.DeviceInfo.hash(into:)();
  return sub_24075AED4();
}

id IdMSAccount.FamilyInfo.circle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void (*IdMSAccount.FamilyInfo.circle.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405A261C;
}

void *IdMSAccount.FamilyInfo.member.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void (*IdMSAccount.FamilyInfo.member.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t IdMSAccount.FamilyInfo.init(circle:member:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static IdMSAccount.FamilyInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
    v6 = v4;
    v7 = v2;
    v8 = sub_24075A6D4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v9 = v5;
      v10 = v3;
      v11 = sub_24075A6D4();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2406115D0()
{
  if (*v0)
  {
    return 0x7265626D656DLL;
  }

  else
  {
    return 0x656C63726963;
  }
}

uint64_t sub_2406115FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C63726963 && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265626D656DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2406116D0(uint64_t a1)
{
  v2 = sub_24061915C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24061170C(uint64_t a1)
{
  v2 = sub_24061915C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.FamilyInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F78, &qword_2407692E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v14 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061915C();
  v11 = v9;
  sub_24075AF74();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F88, &qword_2407692E8);
  sub_240590128(&qword_27E4B8F90, &qword_27E4B8F88, &qword_2407692E8);
  sub_24075ABE4();

  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    v12 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
    sub_240590128(&qword_27E4B8FA0, &qword_27E4B8F98, &qword_2407692F0);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v8, v4);
}

void IdMSAccount.FamilyInfo.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*v0)
  {
    sub_24075AE94();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_24075AE94();
    return;
  }

  sub_24075AE94();
  v3 = v2;
  sub_24075A6E4();

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_24075AE94();
  v4 = v1;
  sub_24075A6E4();
}

uint64_t IdMSAccount.FamilyInfo.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_24075AE64();
  if (!v2)
  {
    sub_24075AE94();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  v3 = v2;
  sub_24075A6E4();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24075AE94();
  v4 = v1;
  sub_24075A6E4();

  return sub_24075AED4();
}

void IdMSAccount.FamilyInfo.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FA8, &qword_2407692F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061915C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F88, &qword_2407692E8);
    v16 = 0;
    sub_240590128(&qword_27E4B8FB0, &qword_27E4B8F88, &qword_2407692E8);
    sub_24075AAF4();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
    v16 = 1;
    sub_240590128(&qword_27E4B8FB8, &qword_27E4B8F98, &qword_2407692F0);
    sub_24075AAF4();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    *a2 = v11;
    a2[1] = v12;
    v13 = v12;
    v14 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_240611D98(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
    v6 = v4;
    v7 = v2;
    v8 = sub_24075A6D4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v9 = v5;
      v10 = v3;
      v11 = sub_24075A6D4();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_240611E7C()
{
  v2 = *v0;
  sub_24075AE64();
  IdMSAccount.FamilyInfo.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_240611ECC()
{
  v2 = *v0;
  sub_24075AE64();
  IdMSAccount.FamilyInfo.hash(into:)();
  return sub_24075AED4();
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.continuationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.passwordResetKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.anisettePackage.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 IdMSAccount.Credential.CompanionKeyEnvelope.init(continuationKey:passwordResetKey:anisettePackage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 32);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = result;
  *(a6 + 48) = v7;
  *(a6 + 64) = v8;
  return result;
}

unint64_t IdMSAccount.Credential.CompanionKeyEnvelope.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v8 = *(v0 + 3);
  v9 = *(v0 + 2);
  v5 = v0[8];
  sub_24075A864();

  MEMORY[0x245CC5E60](v1, v2);
  MEMORY[0x245CC5E60](0x3A6B72702CLL, 0xE500000000000000);
  MEMORY[0x245CC5E60](v3, v4);
  MEMORY[0x245CC5E60](980640044, 0xE400000000000000);
  v6 = IdMSAccount.AnisettePackage.description.getter();
  MEMORY[0x245CC5E60](v6);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_240612100()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6574746573696E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61756E69746E6F63;
  }
}

uint64_t sub_240612178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240619C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406121A0(uint64_t a1)
{
  v2 = sub_2406191B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406121DC(uint64_t a1)
{
  v2 = sub_2406191B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FC0, &qword_240769300);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v26 = v1[3];
  v27 = v10;
  v11 = v1[4];
  v24 = v1[5];
  v25 = v11;
  v12 = v1[6];
  v22 = v1[7];
  v23 = v12;
  v21 = v1[8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406191B0();
  sub_24075AF74();
  LOBYTE(v29) = 0;
  v14 = v28;
  sub_24075ABB4();
  if (!v14)
  {
    v17 = v23;
    v16 = v24;
    v18 = v25;
    v19 = v22;
    LOBYTE(v29) = 1;
    sub_24075ABB4();
    v29 = v18;
    v30 = v16;
    v31 = v17;
    v32 = v19;
    v33 = v21;
    v34 = 2;
    sub_240619204();

    sub_24075ABE4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v9);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v9);
  return sub_24075AED4();
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FD8, &unk_240769308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406191B0();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v30 = a2;
  v14 = v11;
  LOBYTE(v36[0]) = 1;
  v15 = sub_24075AAC4();
  *(&v29 + 1) = v16;
  *&v29 = v15;
  v46 = 2;
  sub_240619258();
  sub_24075AAF4();
  (*(v6 + 8))(v9, v5);
  v28 = v43;
  v17 = v44;
  v27 = *(&v43 + 1);
  v18 = *(&v44 + 1);
  v19 = v45;
  *&v31 = v14;
  *(&v31 + 1) = v13;
  v20 = v29;
  v32 = v29;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v21 = v30;
  *(v30 + 64) = v45;
  v23 = v32;
  v22 = v33;
  *v21 = v31;
  v21[1] = v23;
  v24 = v34;
  v21[2] = v22;
  v21[3] = v24;
  sub_2406192AC(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v14;
  v36[1] = v13;
  v37 = v20;
  v38 = v28;
  v39 = v27;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  return sub_240618BD0(v36);
}

uint64_t sub_2406128E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v9);
  return sub_24075AED4();
}

uint64_t sub_240612998()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v9);
}

uint64_t sub_240612A24()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v9);
  return sub_24075AED4();
}

Swift::Void __swiftcall IdMSAccount.Credential.apply(to:with:)(AKAppleIDAuthenticationContext *to, AppleIDSetup::IdMSAccount::ID *with)
{
  countAndFlagsBits = with->altDsid._countAndFlagsBits;
  object = with->altDsid._object;
  v6 = with->username.value._countAndFlagsBits;
  v7 = with->username.value._object;
  v8 = v2[7];
  v38[6] = v2[6];
  v38[7] = v8;
  v9 = v2[9];
  v38[8] = v2[8];
  v38[9] = v9;
  v10 = v2[3];
  v38[2] = v2[2];
  v38[3] = v10;
  v11 = v2[5];
  v38[4] = v2[4];
  v38[5] = v11;
  v12 = v2[1];
  v38[0] = *v2;
  v38[1] = v12;
  v13 = sub_240618940(v38);
  if (v13 <= 1)
  {
    if (v13)
    {
      sub_24057D704(v38);
    }

    else
    {
      v18 = sub_24057D704(v38);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v37 = v18[2];
      v23 = v18[4];
      v22 = v18[5];
      if (v7)
      {
        v24 = sub_24075A084();
      }

      else
      {
        v24 = 0;
      }

      v31 = objc_allocWithZone(MEMORY[0x277CF0200]);
      v32 = sub_24075A084();
      v33 = sub_24075A084();
      v34 = sub_24075A084();
      v35 = sub_24075A084();
      v36 = [v31 initWithUsername:v24 altDSID:v32 machineID:v33 continuationKey:v34 passwordResetKey:v35];

      [(AKAppleIDAuthenticationContext *)to setCompanionKeyEnvelope:v36];
    }
  }

  else
  {
    if (v13 == 2)
    {
      v25 = sub_24057D704(v38);
      v27 = *v25;
      v26 = v25[1];
      v28 = v25[2];
      v29 = v25[3];
      v30 = sub_24075A084();
      [(AKAppleIDAuthenticationContext *)to setPasswordlessToken:v30];

      if (v29)
      {
        v17 = sub_24075A084();
      }

      else
      {
        v17 = 0;
      }

      [(AKAppleIDAuthenticationContext *)to setIdmsDataToken:v17];
    }

    else
    {
      if (v13 != 3)
      {
        return;
      }

      v14 = sub_24057D704(v38);
      v16 = *v14;
      v15 = v14[1];
      v17 = sub_24075A084();
      [(AKAppleIDAuthenticationContext *)to _setPassword:v17];
    }
  }
}

id IdMSAccount.Credential.CompanionKeyEnvelope.into(with:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  if (a1[3])
  {
    v10 = a1[2];
    v11 = sub_24075A084();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CF0200]);
  v13 = sub_24075A084();
  v14 = sub_24075A084();
  v15 = sub_24075A084();
  v16 = sub_24075A084();
  v17 = [v12 initWithUsername:v11 altDSID:v13 machineID:v14 continuationKey:v15 passwordResetKey:v16];

  return v17;
}

id IdMSAccount.into(with:)(void *a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v16 = v1[2];
  v17 = v4;
  v5 = v1[3];
  v18 = v1[4];
  v6 = v1[1];
  v15[0] = *v1;
  v15[1] = v6;
  v12 = v16;
  v13 = v5;
  v14 = v1[4];
  v10 = v15[0];
  v11 = v3;
  sub_2405AF99C(v15, v9);
  v7 = sub_240619D44(&v10, a1);
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  v9[0] = v10;
  v9[1] = v11;
  sub_240618468(v9);
  return v7;
}

id IdMSAccount.intoAppleAccountACAccount(with:)()
{
  v1 = v0[1];
  v2 = v0[3];
  v16 = v0[2];
  v17 = v2;
  v3 = v0[3];
  v18 = v0[4];
  v4 = v0[1];
  v15[0] = *v0;
  v15[1] = v4;
  v12 = v16;
  v13 = v3;
  v14 = v0[4];
  v10 = v15[0];
  v11 = v1;
  v5 = objc_opt_self();
  sub_2405AF99C(v15, v9);
  result = [v5 defaultStore];
  if (result)
  {
    v7 = result;
    v8 = sub_240619ED8(&v10, 0xD00000000000001ELL, 0x8000000240787260, result);
    v9[2] = v12;
    v9[3] = v13;
    v9[4] = v14;
    v9[0] = v10;
    v9[1] = v11;
    sub_240618468(v9);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static IdMSAccount.fetch(for:with:)(_OWORD *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v10[4] = a1[4];
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = sub_240619D44(v10, a2);
  if (!v3)
  {
    v9 = v8;
    ACAccount.into(with:)(a2, a3);
  }
}

void ACAccount.into(with:)(void *a1@<X0>, char *a2@<X8>)
{
  v6 = sub_2407595A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ACAccount.id(with:)(a1, v52);
  if (v3)
  {
    return;
  }

  v42 = 0;
  v49 = v52[2];
  v50 = v52[3];
  v51 = v52[4];
  v47 = v52[0];
  v48 = v52[1];
  ACAccount.name(with:)(a1);
  v11 = [a1 servicesUsingAccount_];
  v12 = v10;
  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_23:
    v25 = type metadata accessor for IdMSAccount();
    (*(v7 + 16))(&a2[v25[5]], v12, v6);
    sub_2405AF9F8(v46);
    v26 = sub_24061A2F8(v19);

    (*(v7 + 8))(v12, v6);
    v27 = &a2[v25[8]];
    v45 = xmmword_24075D8C0;
    *v27 = xmmword_24075D8C0;
    v28 = &a2[v25[9]];
    *v28 = 0;
    v28[8] = 1;
    v29 = v50;
    *(a2 + 2) = v49;
    *(a2 + 3) = v29;
    *(a2 + 4) = v51;
    v30 = v48;
    *a2 = v47;
    *(a2 + 1) = v30;
    v31 = &a2[v25[6]];
    v32 = v46[7];
    *(v31 + 6) = v46[6];
    *(v31 + 7) = v32;
    v33 = v46[9];
    *(v31 + 8) = v46[8];
    *(v31 + 9) = v33;
    v34 = v46[3];
    *(v31 + 2) = v46[2];
    *(v31 + 3) = v34;
    v35 = v46[5];
    *(v31 + 4) = v46[4];
    *(v31 + 5) = v35;
    v36 = v46[1];
    *v31 = v46[0];
    *(v31 + 1) = v36;
    *&a2[v25[7]] = v26;
    sub_2405AFA1C(*v27, v27[1]);
    *v27 = v45;
    *v28 = 0;
    v28[8] = 0;
    return;
  }

  v37 = v10;
  v38 = v7;
  v39 = v6;
  v40 = a2;
  v13 = v11;
  v14 = sub_24075A534();

  v15 = v42;
  v16 = sub_2406149A8(v14);
  v42 = v15;

  v17 = *(v16 + 16);
  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_22:

    v6 = v39;
    a2 = v40;
    v12 = v37;
    v7 = v38;
    goto LABEL_23;
  }

  v18 = 0;
  *&v45 = *MEMORY[0x277CED1A0];
  v53 = *MEMORY[0x277CED1A8];
  v41 = *MEMORY[0x277CED1B8];
  v44 = *MEMORY[0x277CED1B0];
  v43 = *MEMORY[0x277CED1C0];
  v19 = MEMORY[0x277D84F90];
  while (v18 < *(v16 + 16))
  {
    v20 = *(v16 + 32 + 8 * v18);
    if (v20 > 4)
    {
      v21 = v53;
      if (v20 != 5)
      {
        v21 = v44;
        if (v20 != 6)
        {
          v21 = v45;
          if (v20 != 7)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v21 = v45;
      if (v20 != 1)
      {
        v21 = v43;
        if (v20 != 2)
        {
          v21 = v41;
          if (v20 != 4)
          {
            goto LABEL_26;
          }
        }
      }
    }

    v22 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_240617298(0, v19[2] + 1, 1, v19);
    }

    v24 = v19[2];
    v23 = v19[3];
    if (v24 >= v23 >> 1)
    {
      v19 = sub_240617298((v23 > 1), v24 + 1, 1, v19);
    }

    ++v18;
    v19[2] = v24 + 1;
    v19[v24 + 4] = v22;
    if (v17 == v18)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  sub_24075A9C4();
  __break(1u);
}

void static IdMSAccount.fetchPrimary(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = [a1 primaryAuthKitAccount];
  if (v9)
  {
    v10 = v9;
    ACAccount.into(with:)(a1, v8);

    if (!v2)
    {
      v11 = type metadata accessor for IdMSAccount();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
      sub_24061A408(v8, a2);
    }
  }

  else
  {
    v12 = type metadata accessor for IdMSAccount();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_2405B8A50(v8, &qword_27E4B6418, &unk_24075D910);
    sub_24061A3B4();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t IdMSAccount.companionKeyEnvelope(with:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  return MEMORY[0x2822009F8](sub_240613844, 0, 0);
}

uint64_t sub_240613844()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  *(v0 + 16) = *v1;
  v3 = v1[4];
  v5 = v1[1];
  v4 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v7 = v1[1];
  v6 = v1[2];
  v8 = v1[4];
  *(v0 + 144) = v1[3];
  *(v0 + 160) = v8;
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  *(v0 + 96) = *v1;
  sub_2405AF99C(v0 + 16, v0 + 176);
  *(v0 + 448) = sub_240619D44((v0 + 96), v2);
  v9 = *(v0 + 144);
  *(v0 + 368) = *(v0 + 128);
  *(v0 + 384) = v9;
  *(v0 + 400) = *(v0 + 160);
  v10 = *(v0 + 112);
  *(v0 + 336) = *(v0 + 96);
  *(v0 + 352) = v10;
  sub_240618468(v0 + 336);
  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  *v11 = v0;
  v11[1] = sub_2406139B8;
  v12 = *(v0 + 424);
  v13 = *(v0 + 432);
  v14 = *(v0 + 416);

  return ACAccount.companionKeyEnvelope(with:with:)(v14, v12, v13);
}

uint64_t sub_2406139B8()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_240613B30;
  }

  else
  {
    v3 = sub_240613ACC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240613ACC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240613B30()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ACAccount.companionKeyEnvelope(with:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  return MEMORY[0x2822009F8](sub_240613BB8, 0, 0);
}

uint64_t sub_240613BB8()
{
  v33 = v0;
  v1 = [*(v0 + 312) continuationTokenForAccount_];
  if (v1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = v1;
    v5 = sub_24075A0B4();
    v7 = v6;

    *(v0 + 328) = v5;
    *(v0 + 336) = v7;
    v8 = [v3 passwordResetTokenForAccount_];
    if (v8)
    {
      v9 = *(v0 + 304);
      v10 = v8;
      v11 = sub_24075A0B4();
      v13 = v12;

      *(v0 + 344) = v11;
      *(v0 + 352) = v13;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 152;
      *(v0 + 24) = sub_240613F3C;
      v14 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_240614C9C;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v14;
      [v9 anisetteDataWithCompletion_];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 320);
  v16 = sub_240759AE4();
  __swift_project_value_buffer(v16, qword_280FADA00);
  v17 = v15;
  v18 = sub_240759AC4();
  v19 = sub_24075A5E4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 320);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    v23 = v20;
    v24 = [v23 description];
    v25 = sub_24075A0B4();
    v27 = v26;

    v28 = sub_2405BBA7C(v25, v27, &v32);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_240579000, v18, v19, "Unable to generate companion key envelope for account (%s, missing CK and/or PRK.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CC76B0](v22, -1, -1);
    MEMORY[0x245CC76B0](v21, -1, -1);
  }

  sub_24061A46C();
  swift_allocError();
  *v29 = 0xD000000000000015;
  *(v29 + 8) = 0x80000002407872A0;
  *(v29 + 16) = 3;
  swift_willThrow();
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_240613F3C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  if (v3)
  {
    v4 = *(v1 + 352);
    v5 = *(v1 + 336);

    v6 = sub_240614448;
  }

  else
  {
    v6 = sub_240614060;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

id sub_240614060()
{
  v47 = v0;
  v1 = *(v0 + 152);
  if (!v1)
  {
    v32 = *(v0 + 352);
    v33 = *(v0 + 336);

    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v34 = sub_240759AE4();
    __swift_project_value_buffer(v34, qword_280FADA00);
    v35 = sub_240759AC4();
    v36 = sub_24075A5E4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_240579000, v35, v36, "Unable to generate CK envelope, no anisette data", v37, 2u);
      MEMORY[0x245CC76B0](v37, -1, -1);
    }

    sub_24061A46C();
    swift_allocError();
    *v38 = 0xD000000000000015;
    *(v38 + 8) = 0x80000002407872F0;
    *(v38 + 16) = 3;
    swift_willThrow();
    v31 = *(v0 + 8);
    goto LABEL_14;
  }

  result = [*(v0 + 152) machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v40 = sub_24075A0B4();
  v5 = v4;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = (v0 + 80);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);
  v39 = *(v0 + 328);
  v10 = sub_24075A0B4();
  v12 = v11;

  v13 = [v1 routingInfo];
  *(v0 + 80) = v39;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v40;
  *(v0 + 120) = v5;
  *(v0 + 128) = v10;
  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_280FADA00);
  sub_2406192AC(v0 + 80, v0 + 152);
  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();
  sub_240618BD0(v0 + 80);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136642819;
    v19 = *(v0 + 128);
    v44 = *(v0 + 112);
    v45 = v19;
    v46 = *(v0 + 144);
    v20 = *(v0 + 96);
    v42 = *v7;
    v43 = v20;
    sub_2406192AC(v0 + 80, v0 + 224);
    v21 = IdMSAccount.Credential.CompanionKeyEnvelope.description.getter();
    v23 = v22;
    v24 = v45;
    *(v0 + 184) = v44;
    *(v0 + 200) = v24;
    *(v0 + 216) = v46;
    v25 = v43;
    *(v0 + 152) = v42;
    *(v0 + 168) = v25;
    sub_240618BD0(v0 + 152);
    v26 = sub_2405BBA7C(v21, v23, &v41);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_240579000, v15, v16, "Built CK envelope: %{sensitive}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  v27 = *(v0 + 296);
  *v27 = *v7;
  v28 = *(v0 + 96);
  v29 = *(v0 + 112);
  v30 = *(v0 + 128);
  *(v27 + 64) = *(v0 + 144);
  *(v27 + 32) = v29;
  *(v27 + 48) = v30;
  *(v27 + 16) = v28;
  v31 = *(v0 + 8);
LABEL_14:

  return v31();
}

uint64_t sub_240614448()
{
  v1 = *(v0 + 360);
  swift_willThrow();
  v2 = *(v0 + 360);
  v3 = *(v0 + 8);

  return v3();
}

void ACAccount.id(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 accountType];
  if (!v6)
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6;
  v8 = [v6 identifier];

  if (!v8)
  {
    v17 = *MEMORY[0x277CB8C58];
    sub_24075A0B4();
    goto LABEL_11;
  }

  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = *MEMORY[0x277CB8C58];
  v13 = sub_24075A0B4();
  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v9 == v13 && v11 == v14)
  {
    goto LABEL_17;
  }

  v16 = sub_24075ACF4();

  if ((v16 & 1) == 0)
  {
LABEL_12:
    v18 = [v3 accountType];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 identifier];

      if (v20)
      {
        v21 = sub_24075A0B4();
        v23 = v22;

        v24 = *MEMORY[0x277CB8BF0];
        v25 = sub_24075A0B4();
        if (v23)
        {
          if (v21 == v25 && v23 == v26)
          {
LABEL_17:

            goto LABEL_18;
          }

          v43 = sub_24075ACF4();

          if (v43)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v38 = *MEMORY[0x277CB8BF0];
        sub_24075A0B4();
      }

LABEL_23:
      v39 = [v3 accountType];
      if (v39)
      {
        v40 = v39;
        sub_24061A46C();
        swift_allocError();
        *v41 = v40;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0;
LABEL_26:
        swift_willThrow();
        return;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_18:
  v27 = [a1 altDSIDForAccount_];
  if (!v27)
  {
    sub_24061A46C();
    swift_allocError();
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = 4;
    goto LABEL_26;
  }

  v28 = v27;
  v29 = sub_24075A0B4();
  v31 = v30;

  v32 = [a1 DSIDForAccount_];
  if (v32)
  {
    v33 = v32;
    v34 = [v33 stringValue];
    v35 = sub_24075A0B4();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v44 = [v3 username];
  if (v44)
  {
    v45 = v44;
    v46 = sub_24075A0B4();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  *a2 = v29;
  *(a2 + 8) = v31;
  *(a2 + 16) = v46;
  *(a2 + 24) = v48;
  *(a2 + 32) = v35;
  *(a2 + 40) = v37;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
}

uint64_t ACAccount.name(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9000, &qword_240769330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = [a1 givenNameForAccount_];
  if (v8)
  {
    v9 = v8;
    sub_24075A0B4();
  }

  v10 = [a1 familyNameForAccount_];
  if (v10)
  {
    v11 = v10;
    sub_24075A0B4();
  }

  v12 = sub_2407595A4();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  return sub_240759564();
}

uint64_t sub_2406149A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_2406B818C(0, v1, 0);
  v2 = v28;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_24075A7A4();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v7 + 36);
    sub_2405BE44C(*(v7 + 48) + 40 * v6, v26);
    sub_2405BE44C(v26, v25);
    swift_dynamicCast();
    result = sub_2405BD160(v26);
    v12 = v27;
    v28 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_2406B818C((v13 > 1), v14 + 1, 1);
      v2 = v28;
    }

    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v12;
    v9 = 1 << *(v7 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v11);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v23;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v19 = (a1 + 64 + 8 * v11);
      v10 = v23;
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_24061CD88(v6, v24, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_24061CD88(v6, v24, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
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
  return result;
}

__C::AIDAServiceType __swiftcall AKAppleIDServiceType.into()()
{
  v2 = v0 - 1;
  if (v0 - 1) < 7 && ((0x7Bu >> v2))
  {
    v3 = **(&unk_278CACB98 + v2);

    return v3;
  }

  else
  {
    result._rawValue = sub_24075A9C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_240614C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t ACAccount.directFromCredentialItemCompanionKeyEnvelope(with:)(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return MEMORY[0x2822009F8](sub_240614D90, 0, 0);
}

uint64_t sub_240614D90()
{
  v34 = v0;
  v1 = [*(v0 + 312) credential];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 credentialItemForKey_];

    if (v3)
    {
      v4 = *(v0 + 312);
      v5 = sub_24075A0B4();
      v7 = v6;

      *(v0 + 320) = v5;
      *(v0 + 328) = v7;
      v8 = [v4 credential];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 credentialItemForKey_];

        if (v10)
        {
          v11 = *(v0 + 304);
          v12 = sub_24075A0B4();
          v14 = v13;

          *(v0 + 336) = v12;
          *(v0 + 344) = v14;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 152;
          *(v0 + 24) = sub_240615168;
          v15 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
          *(v0 + 80) = MEMORY[0x277D85DD0];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_240614C9C;
          *(v0 + 104) = &block_descriptor_10;
          *(v0 + 112) = v15;
          [v11 anisetteDataWithCompletion_];

          return MEMORY[0x282200938](v0 + 16);
        }
      }
    }
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 312);
  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_280FADA00);
  v18 = v16;
  v19 = sub_240759AC4();
  v20 = sub_24075A5E4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 312);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    v24 = v21;
    v25 = [v24 description];
    v26 = sub_24075A0B4();
    v28 = v27;

    v29 = sub_2405BBA7C(v26, v28, &v33);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_240579000, v19, v20, "Unable to generate companion key envelope for account (%s, missing CK and/or PRK.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CC76B0](v23, -1, -1);
    MEMORY[0x245CC76B0](v22, -1, -1);
  }

  sub_24061A46C();
  swift_allocError();
  *v30 = 0xD000000000000015;
  *(v30 + 8) = 0x80000002407872A0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_240615168()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 352) = v3;
  if (v3)
  {
    v4 = *(v1 + 344);
    v5 = *(v1 + 328);

    v6 = sub_2406156D8;
  }

  else
  {
    v6 = sub_24061528C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

id sub_24061528C()
{
  v53 = v0;
  v1 = *(v0 + 152);
  if (!v1)
  {
    v37 = *(v0 + 344);
    v38 = *(v0 + 328);

    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v39 = sub_240759AE4();
    __swift_project_value_buffer(v39, qword_280FADA00);
    v40 = sub_240759AC4();
    v41 = sub_24075A5E4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_240579000, v40, v41, "Unable to generate CK envelope, no anisette data", v42, 2u);
      MEMORY[0x245CC76B0](v42, -1, -1);
    }

    sub_24061A46C();
    swift_allocError();
    *v43 = 0xD000000000000015;
    *(v43 + 8) = 0x80000002407872F0;
    *(v43 + 16) = 3;
    swift_willThrow();
    v36 = *(v0 + 8);
    goto LABEL_14;
  }

  result = [*(v0 + 152) machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v46 = sub_24075A0B4();
  v5 = v4;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = (v0 + 80);
  v8 = *(v0 + 336);
  v9 = *(v0 + 344);
  v44 = *(v0 + 320);
  v10 = sub_24075A0B4();
  v12 = v11;

  v45 = v1;
  v13 = [v1 routingInfo];
  *(v0 + 80) = v44;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v46;
  *(v0 + 120) = v5;
  *(v0 + 128) = v10;
  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 312);
  v15 = sub_240759AE4();
  __swift_project_value_buffer(v15, qword_280FADA00);
  v16 = v14;
  sub_2406192AC(v0 + 80, v0 + 152);
  v17 = sub_240759AC4();
  v18 = sub_24075A5D4();

  sub_240618BD0(v0 + 80);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 312);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v47 = v22;
    *v20 = 138412547;
    *(v20 + 4) = v19;
    *v21 = v19;
    *(v20 + 12) = 2085;
    v23 = *(v0 + 128);
    v50 = *(v0 + 112);
    v51 = v23;
    v52 = *(v0 + 144);
    v24 = *(v0 + 96);
    v48 = *v7;
    v49 = v24;
    v25 = v19;
    sub_2406192AC(v0 + 80, v0 + 224);
    v26 = IdMSAccount.Credential.CompanionKeyEnvelope.description.getter();
    v28 = v27;
    v29 = v51;
    *(v0 + 184) = v50;
    *(v0 + 200) = v29;
    *(v0 + 216) = v52;
    v30 = v49;
    *(v0 + 152) = v48;
    *(v0 + 168) = v30;
    sub_240618BD0(v0 + 152);
    v31 = sub_2405BBA7C(v26, v28, &v47);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_240579000, v17, v18, "Built CK envelope directly from %@: %{sensitive}s", v20, 0x16u);
    sub_2405B8A50(v21, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CC76B0](v22, -1, -1);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v32 = *(v0 + 296);
  *v32 = *v7;
  v33 = *(v0 + 96);
  v34 = *(v0 + 112);
  v35 = *(v0 + 128);
  *(v32 + 64) = *(v0 + 144);
  *(v32 + 32) = v34;
  *(v32 + 48) = v35;
  *(v32 + 16) = v33;
  v36 = *(v0 + 8);
LABEL_14:

  return v36();
}

uint64_t sub_2406156D8()
{
  v1 = *(v0 + 352);
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 8);

  return v3();
}

id AKAnisetteData.into()@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 machineID];
  if (result)
  {
    v4 = result;
    v5 = sub_24075A0B4();
    v7 = v6;

    result = [v1 oneTimePassword];
    if (result)
    {
      v8 = result;
      v9 = sub_24075A0B4();
      v11 = v10;

      result = [v1 routingInfo];
      *a1 = v5;
      a1[1] = v7;
      a1[2] = v9;
      a1[3] = v11;
      a1[4] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id IdMSAccount.AnisettePackage.into()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
  v7 = sub_24075A084();
  [v6 setMachineID_];

  v8 = sub_24075A084();
  [v6 setOneTimePassword_];

  [v6 setRoutingInfo_];
  return v6;
}

id IdMSAccount.DeviceInfo.into(with:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277CF0218]) init];
  [v5 setLinkType_];
  v6 = sub_24075A084();
  [v5 setUniqueDeviceIdentifier_];

  v7 = sub_24075A084();
  [v5 setServerFriendlyDescription_];

  return v5;
}

uint64_t UserProfileInfo.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserProfileInfo.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UserProfileInfo.shortName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall UserProfileInfo.init(identifier:name:shortName:)(AppleIDSetup::UserProfileInfo *__return_ptr retstr, Swift::String identifier, Swift::String_optional name, Swift::String_optional shortName)
{
  retstr->identifier = identifier;
  retstr->name = name;
  retstr->shortName = shortName;
}

uint64_t sub_240615A14()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6D614E74726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_240615A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24061CBC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240615A98(uint64_t a1)
{
  v2 = sub_24061A4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240615AD4(uint64_t a1)
{
  v2 = sub_24061A4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserProfileInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9008, &qword_240769348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A4EC();
  sub_24075AF74();
  v18 = 0;
  v13 = v15[5];
  sub_24075ABB4();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_24075AB64();
  v16 = 2;
  sub_24075AB64();
  return (*(v4 + 8))(v7, v3);
}

uint64_t UserProfileInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24075A114();
  if (!v4)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    return sub_24075AE94();
  }

LABEL_3:
  sub_24075AE94();

  return sub_24075A114();
}

uint64_t UserProfileInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24075AE64();
  sub_24075A114();
  if (!v4)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t UserProfileInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9018, &qword_240769350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A4EC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_24075AA74();
  v23 = v14;
  v25 = 2;
  v15 = sub_24075AA74();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240616108()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24075A114();
  if (!v4)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    return sub_24075AE94();
  }

LABEL_3:
  sub_24075AE94();

  return sub_24075A114();
}

uint64_t sub_2406161C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24075AE64();
  sub_24075A114();
  if (!v4)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  return sub_24075AED4();
}

void FAFamilyMember.accountID.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 altDSID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24075A0B4();
    v8 = v7;

    v9 = [v2 appleID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24075A0B4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [v2 dsid];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 stringValue];

      v17 = sub_24075A0B4();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    *(a1 + 32) = v17;
    *(a1 + 40) = v19;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    sub_24061A540();
    swift_allocError();
    swift_willThrow();
  }
}

double FAFamilyMember.into()@<D0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  v3 = v1;
  sub_24058C9E4(0, 0xF000000000000000);
  result = 0.0;
  *(a1 + 8) = xmmword_2407691F0;
  return result;
}

uint64_t IdMSAccount.FamilyMember.init(from:withImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_24058C9E4(0, 0xF000000000000000);
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void IdMSAccount.FamilyMember.accountID.getter(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = *v1;
    FAFamilyMember.accountID.getter(a1);
  }

  else
  {
    __break(1u);
  }
}

id IdMSAccount.FamilyMember.member.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t IdMSAccount.FamilyMember.imageData.getter()
{
  v1 = *(v0 + 8);
  sub_240618C78(v1, *(v0 + 16));
  return v1;
}

uint64_t IdMSAccount.FamilyMember.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24058C9E4(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

id IdMSAccount.FamilyMember.into()()
{
  result = *v0;
  if (*v0)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_240616580()
{
  if (*v0)
  {
    result = 0x7461446567616D69;
  }

  else
  {
    result = 0x7265626D656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2406165BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265626D656DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24061669C(uint64_t a1)
{
  v2 = sub_24061A594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406166D8(uint64_t a1)
{
  v2 = sub_24061A594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.FamilyMember.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9028, &qword_240769358);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A594();
  v12 = v10;
  sub_24075AF74();
  v16 = v10;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
  sub_240590128(&qword_27E4B8FA0, &qword_27E4B8F98, &qword_2407692F0);
  sub_24075ABE4();

  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    sub_240618C78(v15, v14);
    sub_240618E74();
    sub_24075AB94();
    sub_24058C9E4(v16, v17);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t IdMSAccount.FamilyMember.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0)
  {
    sub_24075AE94();
    v4 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  if (v3 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t IdMSAccount.FamilyMember.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24075AE64();
  sub_24075AE94();
  if (v2)
  {
    v4 = v2;
    sub_24075A6E4();
  }

  sub_24075AE94();
  if (v3 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t IdMSAccount.FamilyMember.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9038, &qword_240769360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A594();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
    v19 = 0;
    sub_240590128(&qword_27E4B8FB8, &qword_27E4B8F98, &qword_2407692F0);
    sub_24075AAF4();
    v12 = v18[0];
    v19 = 1;
    sub_240618EC8();
    sub_24075AAA4();
    (*(v6 + 8))(v9, v5);
    v13 = v18[0];
    v14 = v18[1];
    sub_24058C9E4(0, 0xF000000000000000);
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    v15 = v12;
    sub_240618C78(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v16 = v13;
    v17 = v14;
  }

  return sub_24058C9E4(v16, v17);
}

uint64_t sub_240616D10()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24075AE64();
  sub_24075AE94();
  if (v2)
  {
    v4 = v2;
    sub_24075A6E4();
  }

  sub_24075AE94();
  if (v3 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t sub_240616DBC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*v0)
  {
    sub_24075AE94();
    v4 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  if (v3 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t sub_240616E7C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_24075AE64();
  sub_24075AE94();
  if (v2)
  {
    v4 = v2;
    sub_24075A6E4();
  }

  sub_24075AE94();
  if (v3 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

void static IdMSAccount.fetchProto(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = [a1 protoAccount];
  if (v9)
  {
    v10 = v9;
    ACAccount.into(with:)(a1, v8);

    if (v2)
    {
    }

    else
    {
      v12 = type metadata accessor for IdMSAccount();
      (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
      sub_24061A408(v8, a2);
      v13 = [v10 proto_ageRange];

      v14 = a2 + *(v12 + 36);
      *v14 = v13;
      *(v14 + 8) = 0;
    }
  }

  else
  {
    v11 = type metadata accessor for IdMSAccount();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_2405B8A50(v8, &qword_27E4B6418, &unk_24075D910);
    sub_24061A5E8();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t static IdMSAccount.fetchUserAgeRange(with:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4];
  v6 = type metadata accessor for IdMSAccount();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IdMSAccount.fetchProto(with:)(a1, v5);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_24061A408(v5, v10);
  v11 = &v10[*(v6 + 36)];
  v12 = *v11;
  LODWORD(v6) = v11[8];
  sub_240618890(v10);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void *sub_240617298(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9280, &unk_24076B550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AIDAServiceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s12AppleIDSetup15UserProfileInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_24075ACF4() & 1) == 0)
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
    if (v8 && (v3 == v9 && v5 == v8 || (sub_24075ACF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v21 = v10;
  v22 = *(a2 + 48);
  v19 = *(a2 + 64);
  v20 = *(a1 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24075ACF4() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    v13 = v3;
    if (v11)
    {
      if (v3 == v21 && v5 == v11 || (sub_24075ACF4()) && (sub_2406E45D4(v6, v22))
      {
        v14 = sub_2406E45D4(v7, v12);
        sub_240618FD8(v3, v5);
        sub_240618FD8(v21, v11);
        sub_240618FD8(v3, v5);
        sub_240604C2C(v21, v11);

        sub_240604C2C(v3, v5);
        if (v14)
        {
          return v20 ^ v19 ^ 1u;
        }

        return 0;
      }

      sub_240618FD8(v3, v5);
      sub_240618FD8(v21, v11);
      sub_240618FD8(v3, v5);
      sub_240604C2C(v21, v11);

      v16 = v3;
      v17 = v5;
LABEL_20:
      sub_240604C2C(v16, v17);
      return 0;
    }

    sub_240618FD8(v3, v5);
    v15 = v21;
    sub_240618FD8(v21, 0);
    sub_240618FD8(v3, v5);

LABEL_19:
    sub_240604C2C(v13, v5);
    v16 = v15;
    v17 = v11;
    goto LABEL_20;
  }

  v13 = v3;
  sub_240618FD8(v3, 0);
  if (v11)
  {
    v15 = v21;
    sub_240618FD8(v21, v11);
    goto LABEL_19;
  }

  sub_240618FD8(v21, 0);
  sub_240604C2C(v3, 0);
  return v20 ^ v19 ^ 1u;
}

BOOL _s12AppleIDSetup11IdMSAccountV12FamilyMemberV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
    v8 = v6;
    v9 = v3;
    v10 = sub_24075A6D4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_240618C78(v2, v4);
      sub_240618C78(v5, v7);
      sub_24058C9E4(v2, v4);
      return 1;
    }

    goto LABEL_10;
  }

  if (v7 >> 60 == 15)
  {
LABEL_10:
    sub_240618C78(v2, v4);
    sub_240618C78(v5, v7);
    sub_24058C9E4(v2, v4);
    sub_24058C9E4(v5, v7);
    return 0;
  }

  sub_240618C78(v2, v4);
  sub_240618C78(v5, v7);
  v12 = sub_24062A208(v2, v4, v5, v7);
  sub_24058C9E4(v5, v7);
  sub_24058C9E4(v2, v4);
  return (v12 & 1) != 0;
}

BOOL _s12AppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v13 = a2[8];
  v14 = a1[8];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_24075ACF4() & 1) != 0) && (v2 == v6 && v4 == v7 || (sub_24075ACF4() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_24075ACF4() & 1) != 0) && (v15 == v11 && v16 == v10 || (sub_24075ACF4() & 1) != 0) && v14 == v13;
}

BOOL _s12AppleIDSetup11IdMSAccountV10CredentialO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v85 = a1[6];
  v86 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v87 = a1[8];
  v88 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v81 = a1[2];
  v82 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v83 = a1[4];
  v84 = v9;
  v10 = a1[1];
  v80[0] = *a1;
  v80[1] = v10;
  v11 = a2[7];
  v12 = a2[5];
  v95 = a2[6];
  v96 = v11;
  v13 = a2[7];
  v14 = a2[9];
  v97 = a2[8];
  v98 = v14;
  v15 = a2[3];
  v16 = a2[1];
  v91 = a2[2];
  v92 = v15;
  v17 = a2[3];
  v18 = a2[5];
  v93 = a2[4];
  v94 = v18;
  v19 = a2[1];
  v89 = *a2;
  v90 = v19;
  v20 = a1[7];
  v99[6] = a1[6];
  v99[7] = v20;
  v21 = a1[9];
  v99[8] = a1[8];
  v99[9] = v21;
  v22 = a1[3];
  v99[2] = a1[2];
  v99[3] = v22;
  v23 = a1[5];
  v99[4] = a1[4];
  v99[5] = v23;
  v24 = a1[1];
  v99[0] = *a1;
  v99[1] = v24;
  v99[16] = v95;
  v99[17] = v13;
  v25 = a2[9];
  v99[18] = v97;
  v99[19] = v25;
  v99[12] = v91;
  v99[13] = v17;
  v99[14] = v93;
  v99[15] = v12;
  v99[10] = v89;
  v99[11] = v16;
  v100[6] = v85;
  v100[7] = v4;
  v26 = a1[9];
  v100[8] = v87;
  v100[9] = v26;
  v100[2] = v81;
  v100[3] = v8;
  v100[4] = v83;
  v100[5] = v3;
  v100[0] = v80[0];
  v100[1] = v7;
  v27 = sub_240618940(v100);
  if (v27 > 1)
  {
    if (v27 != 2)
    {
      if (v27 == 3)
      {
        v28 = sub_24057D704(v100);
        v29 = *v28;
        v30 = v28[1];
        v76 = v95;
        v77 = v96;
        v78 = v97;
        v79 = v98;
        v72 = v91;
        v73 = v92;
        v74 = v93;
        v75 = v94;
        v70 = v89;
        v71 = v90;
        if (sub_240618940(&v70) == 3)
        {
          v31 = sub_24057D704(&v70);
          if (v29 != *v31 || v30 != v31[1])
          {
LABEL_36:
            v55 = sub_24075ACF4();
            sub_240618498(&v89, v68);
            sub_240618498(v80, v68);
LABEL_37:
            sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
            return (v55 & 1) != 0;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v76 = v95;
        v77 = v96;
        v78 = v97;
        v79 = v98;
        v72 = v91;
        v73 = v92;
        v74 = v93;
        v75 = v94;
        v70 = v89;
        v71 = v90;
        if (sub_240618940(&v70) == 4)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_28;
    }

    v39 = sub_24057D704(v100);
    v40 = *v39;
    v41 = v39[1];
    v43 = v39[2];
    v42 = v39[3];
    v76 = v95;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v72 = v91;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v70 = v89;
    v71 = v90;
    if (sub_240618940(&v70) == 2)
    {
      v44 = sub_24057D704(&v70);
      v46 = v44[2];
      v45 = v44[3];
      if (v40 == *v44 && v41 == v44[1] || (sub_24075ACF4() & 1) != 0)
      {
        if (!v42)
        {
          sub_240618498(&v89, v68);
          sub_240618498(v80, v68);

          sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
          if (!v45)
          {
            return 1;
          }

          return 0;
        }

        if (v45)
        {
          if (v43 != v46 || v42 != v45)
          {
            goto LABEL_36;
          }

LABEL_19:
          sub_240618498(&v89, v68);
          sub_240618498(v80, v68);
LABEL_21:
          sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
          return 1;
        }
      }

LABEL_33:
      sub_240618498(&v89, v68);
      v56 = v68;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v27)
  {
    v47 = sub_24057D704(v100);
    v76 = v95;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v72 = v91;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v70 = v89;
    v71 = v90;
    if (sub_240618940(&v70) == 1)
    {
      v48 = sub_24057D704(&v70);
      v68[1] = *(v47 + 16);
      v68[2] = *(v47 + 32);
      v68[3] = *(v47 + 48);
      v69 = *(v47 + 64);
      v68[0] = *v47;
      v49 = *(v48 + 48);
      v65 = *(v48 + 32);
      v66 = v49;
      v67 = *(v48 + 64);
      v50 = *(v48 + 16);
      v63 = *v48;
      v64 = v50;
      if (_s12AppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(v68, &v63))
      {
        v51 = *(v47 + 88);
        v52 = *(v47 + 120);
        v65 = *(v47 + 104);
        v66 = v52;
        LOBYTE(v67) = *(v47 + 136);
        v63 = *(v47 + 72);
        v64 = v51;
        v53 = *(v48 + 88);
        v54 = *(v48 + 120);
        v60 = *(v48 + 104);
        v61 = v54;
        LOBYTE(v62) = *(v48 + 136);
        v58 = *(v48 + 72);
        v59 = v53;
        sub_240618498(&v89, v68);
        sub_240618498(v80, v68);
        if (_s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v63, &v58))
        {
          if (*(v47 + 144) != *(v48 + 144) || *(v47 + 152) != *(v48 + 152))
          {
            v55 = sub_24075ACF4();
            goto LABEL_37;
          }

          goto LABEL_21;
        }

LABEL_30:
        sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
        return 0;
      }

      goto LABEL_33;
    }

LABEL_28:
    sub_240618498(&v89, &v70);
    v56 = &v70;
LABEL_29:
    sub_240618498(v80, v56);
    goto LABEL_30;
  }

  v32 = sub_24057D704(v100);
  v76 = v95;
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v72 = v91;
  v73 = v92;
  v74 = v93;
  v75 = v94;
  v70 = v89;
  v71 = v90;
  if (sub_240618940(&v70))
  {
    goto LABEL_28;
  }

  v33 = sub_24057D704(&v70);
  v34 = *(v32 + 48);
  v65 = *(v32 + 32);
  v66 = v34;
  v67 = *(v32 + 64);
  v35 = *(v32 + 16);
  v63 = *v32;
  v64 = v35;
  v36 = *(v33 + 48);
  v60 = *(v33 + 32);
  v61 = v36;
  v62 = *(v33 + 64);
  v37 = *(v33 + 16);
  v58 = *v33;
  v59 = v37;
  v38 = _s12AppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(&v63, &v58);
  sub_240618498(&v89, v68);
  sub_240618498(v80, v68);
  sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
  return v38;
}

uint64_t _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IdMSAccount();
  v6 = v5[5];
  if ((sub_240759584() & 1) == 0)
  {
    return 0;
  }

  v7 = (a1 + v5[6]);
  v8 = v7[5];
  v9 = v7[7];
  v78 = v7[6];
  v79 = v9;
  v10 = v7[9];
  v11 = v7[7];
  v80 = v7[8];
  v81 = v10;
  v12 = v7[1];
  v13 = v7[3];
  v74 = v7[2];
  v75 = v13;
  v14 = v7[5];
  v15 = v7[3];
  v76 = v7[4];
  v77 = v14;
  v16 = v7[1];
  v73[0] = *v7;
  v73[1] = v16;
  v67 = v76;
  v68 = v8;
  v65 = v74;
  v66 = v15;
  v17 = v7[9];
  v71 = v80;
  v72 = v17;
  v69 = v78;
  v70 = v11;
  v63 = v73[0];
  v64 = v12;
  v18 = (a2 + v5[6]);
  v19 = v18[7];
  v20 = v18[5];
  v87 = v18[6];
  v88 = v19;
  v21 = v18[7];
  v22 = v18[9];
  v89 = v18[8];
  v90 = v22;
  v23 = v18[3];
  v24 = v18[1];
  v83 = v18[2];
  v84 = v23;
  v25 = v18[3];
  v26 = v18[5];
  v85 = v18[4];
  v86 = v26;
  v27 = v18[1];
  v82[0] = *v18;
  v82[1] = v27;
  v59 = v87;
  v60 = v21;
  v28 = v18[9];
  v61 = v89;
  v62 = v28;
  v55 = v83;
  v56 = v25;
  v57 = v85;
  v58 = v20;
  v53 = v82[0];
  v54 = v24;
  sub_240618498(v73, v52);
  sub_240618498(v82, v52);
  v29 = _s12AppleIDSetup11IdMSAccountV10CredentialO2eeoiySbAE_AEtFZ_0(&v63, &v53);
  v91[6] = v59;
  v91[7] = v60;
  v91[8] = v61;
  v91[9] = v62;
  v91[2] = v55;
  v91[3] = v56;
  v91[4] = v57;
  v91[5] = v58;
  v91[0] = v53;
  v91[1] = v54;
  sub_2406184D0(v91);
  v92[6] = v69;
  v92[7] = v70;
  v92[8] = v71;
  v92[9] = v72;
  v92[2] = v65;
  v92[3] = v66;
  v92[4] = v67;
  v92[5] = v68;
  v92[0] = v63;
  v92[1] = v64;
  sub_2406184D0(v92);
  if (!v29 || (sub_240753B98(*(a1 + v5[7]), *(a2 + v5[7])) & 1) == 0)
  {
    return 0;
  }

  v30 = v5[8];
  v32 = *(a1 + v30);
  v31 = *(a1 + v30 + 8);
  v33 = a2 + v30;
  v35 = *v33;
  v34 = *(v33 + 1);
  if (v32 == 1)
  {
    sub_240618500(1, v31);
    if (v35 == 1)
    {
      v32 = 1;
      sub_240618500(1, v34);
      goto LABEL_12;
    }

    sub_240618500(v35, v34);
    goto LABEL_18;
  }

  if (v35 != 1)
  {
    if (v32)
    {
      if (!v35)
      {
        sub_240618500(v32, v31);
        sub_240618500(0, v34);
        sub_240618500(v32, v31);
        v47 = 0;
LABEL_37:
        v51 = v34;
LABEL_38:
        sub_2405AFA1C(v47, v51);
        goto LABEL_39;
      }

      sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
      sub_240618500(v32, v31);
      sub_240618500(v35, v34);
      sub_240618500(v32, v31);
      v43 = v35;
      v44 = v32;
      v45 = sub_24075A6D4();

      if ((v45 & 1) == 0)
      {
LABEL_36:
        v47 = v35;
        goto LABEL_37;
      }
    }

    else
    {
      sub_240618500(0, v31);
      if (v35)
      {
        sub_240618500(v35, v34);
        sub_240618500(0, v31);
        goto LABEL_36;
      }

      sub_240618500(0, v34);
      sub_240618500(0, v31);
    }

    if (v31)
    {
      if (!v34)
      {
        v47 = v35;
        v51 = 0;
        goto LABEL_38;
      }

      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v48 = v34;
      v49 = v31;
      v50 = sub_24075A6D4();

      sub_2405AFA1C(v35, v34);
      if ((v50 & 1) == 0)
      {
LABEL_39:

        v41 = v32;
        v42 = v31;
        goto LABEL_40;
      }
    }

    else
    {
      if (v34)
      {
        goto LABEL_36;
      }

      sub_2405AFA1C(v35, 0);
      v49 = 0;
    }

LABEL_12:
    sub_2405AFA1C(v32, v31);
    v36 = v5[9];
    v37 = (a1 + v36);
    v38 = *(a1 + v36 + 8);
    v39 = (a2 + v36);
    v40 = *(a2 + v36 + 8);
    if (v38)
    {
      if (!v40)
      {
        return 0;
      }
    }

    else
    {
      if (*v37 != *v39)
      {
        LOBYTE(v40) = 1;
      }

      if (v40)
      {
        return 0;
      }
    }

    return 1;
  }

  sub_240618500(v32, v31);
  sub_240618500(1, v34);
  sub_240618500(v32, v31);

LABEL_18:
  sub_2405AFA1C(v32, v31);
  v41 = v35;
  v42 = v34;
LABEL_40:
  sub_2405AFA1C(v41, v42);
  return 0;
}

id sub_240618500(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_240618544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2406185A8()
{
  result = qword_27E4B8DD8;
  if (!qword_27E4B8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DD8);
  }

  return result;
}

unint64_t sub_2406185FC()
{
  result = qword_27E4B8DE0;
  if (!qword_27E4B8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DE0);
  }

  return result;
}

unint64_t sub_240618650()
{
  result = qword_27E4B8DF0;
  if (!qword_27E4B8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DF0);
  }

  return result;
}

unint64_t sub_2406186A4()
{
  result = qword_27E4B8DF8;
  if (!qword_27E4B8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DF8);
  }

  return result;
}

unint64_t sub_2406186F8()
{
  result = qword_27E4B8E10;
  if (!qword_27E4B8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E10);
  }

  return result;
}

unint64_t sub_24061874C()
{
  result = qword_27E4B8E20;
  if (!qword_27E4B8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E20);
  }

  return result;
}

uint64_t sub_2406187A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_24061CCEC(a2, type metadata accessor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24061883C()
{
  result = qword_27E4B8E28;
  if (!qword_27E4B8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E28);
  }

  return result;
}

uint64_t sub_240618890(uint64_t a1)
{
  v2 = type metadata accessor for IdMSAccount();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2406188EC()
{
  result = qword_27E4B8E68;
  if (!qword_27E4B8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E68);
  }

  return result;
}

unint64_t sub_240618940(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

unint64_t sub_24061895C()
{
  result = qword_27E4B8E70;
  if (!qword_27E4B8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E70);
  }

  return result;
}

unint64_t sub_2406189B0()
{
  result = qword_27E4B8E78;
  if (!qword_27E4B8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E78);
  }

  return result;
}

unint64_t sub_240618A04()
{
  result = qword_27E4B8E80;
  if (!qword_27E4B8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E80);
  }

  return result;
}

unint64_t sub_240618A58()
{
  result = qword_27E4B8E88;
  if (!qword_27E4B8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E88);
  }

  return result;
}

unint64_t sub_240618AAC()
{
  result = qword_27E4B8E90;
  if (!qword_27E4B8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E90);
  }

  return result;
}

unint64_t sub_240618B00()
{
  result = qword_27E4B8E98;
  if (!qword_27E4B8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E98);
  }

  return result;
}

unint64_t sub_240618B7C()
{
  result = qword_27E4B8ED0;
  if (!qword_27E4B8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8ED0);
  }

  return result;
}

unint64_t sub_240618C24()
{
  result = qword_27E4B8EE0;
  if (!qword_27E4B8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8EE0);
  }

  return result;
}

uint64_t sub_240618C78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2405BB9D4(a1, a2);
  }

  return a1;
}

unint64_t sub_240618C8C()
{
  result = qword_27E4B8EF0;
  if (!qword_27E4B8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8EF0);
  }

  return result;
}

BOOL _s12AppleIDSetup11IdMSAccountV10SRPResultsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v5 = a2[10];
  v4 = a2[11];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_240618C78(v3, v2);
        sub_240618C78(v5, v4);
        sub_24058C9E4(v3, v2);
        return 1;
      }
    }

    else if (v4 >> 60 != 15)
    {
      sub_240618C78(v3, v2);
      sub_240618C78(v5, v4);
      v9 = sub_24062A208(v3, v2, v5, v4);
      sub_24058C9E4(v5, v4);
      sub_24058C9E4(v3, v2);
      return (v9 & 1) != 0;
    }

    sub_240618C78(v3, v2);
    sub_240618C78(v5, v4);
    sub_24058C9E4(v3, v2);
    sub_24058C9E4(v5, v4);
    return 0;
  }

  return result;
}

unint64_t sub_240618E20()
{
  result = qword_27E4B8F00;
  if (!qword_27E4B8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F00);
  }

  return result;
}

unint64_t sub_240618E74()
{
  result = qword_27E4BBE30;
  if (!qword_27E4BBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBE30);
  }

  return result;
}

unint64_t sub_240618EC8()
{
  result = qword_27E4B8F10;
  if (!qword_27E4B8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F10);
  }

  return result;
}

unint64_t sub_240618F84()
{
  result = qword_27E4B8F20;
  if (!qword_27E4B8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F20);
  }

  return result;
}

uint64_t sub_240618FD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_240619028()
{
  result = qword_27E4B8F48;
  if (!qword_27E4B8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F48);
  }

  return result;
}

unint64_t sub_24061907C()
{
  result = qword_27E4B8F50;
  if (!qword_27E4B8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F50);
  }

  return result;
}

unint64_t sub_2406190D0()
{
  result = qword_27E4B8F60;
  if (!qword_27E4B8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F60);
  }

  return result;
}

unint64_t sub_24061915C()
{
  result = qword_27E4B8F80;
  if (!qword_27E4B8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F80);
  }

  return result;
}

unint64_t sub_2406191B0()
{
  result = qword_27E4B8FC8;
  if (!qword_27E4B8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FC8);
  }

  return result;
}

unint64_t sub_240619204()
{
  result = qword_27E4B8FD0;
  if (!qword_27E4B8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FD0);
  }

  return result;
}

unint64_t sub_240619258()
{
  result = qword_27E4B8FE0;
  if (!qword_27E4B8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FE0);
  }

  return result;
}

uint64_t sub_2406192E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49796C696D6166 && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E61526567615FLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2406194EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F696E61706D6F63 && a2 == 0xED00007379654B6ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787310 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787330 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7773736150776172 && a2 == 0xEB0000000064726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2406196B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406197B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64697344746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEC00000064497265)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24061996C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E6974756F72 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_240619A98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000240787350 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000240787370 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49656C61636F6CLL && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636167654C7369 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_240619C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61756E69746E6F63 && a2 == 0xEF79654B6E6F6974;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240787390 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574746573696E61 && a2 == 0xEF6567616B636150)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

id sub_240619D44(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = sub_24075A084();
  v10 = [a2 authKitAccountWithAltDSID_];

  if (!v10)
  {
    if (v6 && (v12 = sub_24075A084(), v13 = [a2 authKitAccountWithAppleID_], v12, v13))
    {
      return v13;
    }

    else if (v8 && (v14 = sub_24075A084(), sub_240590794(0, &qword_27E4B8910, 0x277CCABB0), [v14 integerValue], v15 = sub_24075A6C4(), v16 = objc_msgSend(a2, sel_authKitAccountWithDSID_, v15), v15, v14, v16))
    {
      return v16;
    }

    else
    {
      sub_24061A46C();
      v10 = swift_allocError();
      *v17 = v4;
      *(v17 + 8) = v3;
      *(v17 + 16) = 1;
      swift_willThrow();
    }
  }

  return v10;
}

void *sub_240619ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v55 = *MEMORY[0x277D85DE8];
  v42 = *(a1 + 8);
  v43 = *a1;
  v41 = *(a1 + 16);
  v44 = *(a1 + 24);
  v9 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = v9;
  v54 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9288, &unk_240770AD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_240765570;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;

  v11 = sub_24075A2B4();

  v45 = 0;
  v12 = [a4 accountsWithAccountTypeIdentifiers:v11 error:&v45];

  v13 = v45;
  if (v12)
  {
    sub_240590794(0, &qword_27E4B63F8, 0x277CB8F30);
    v14 = sub_24075A2C4();
    v15 = v13;

    v38 = v4;
    v39 = a2;
    v40 = a3;
    if (v14 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24075A9D4())
    {
      v17 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x245CC65B0](v17, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v18 = *(v14 + 8 * v17 + 32);
        }

        v5 = v18;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = [v18 aa_altDSID];
        if (v20)
        {
          v21 = v20;
          v22 = sub_24075A0B4();
          v24 = v23;

          if (v22 == v43 && v24 == v42)
          {
LABEL_30:

LABEL_31:

            goto LABEL_37;
          }

          v26 = sub_24075ACF4();

          if (v26)
          {
            goto LABEL_31;
          }
        }

        v27 = [v5 username];
        if (!v27)
        {
          if (!v44)
          {
            goto LABEL_31;
          }

LABEL_6:

          goto LABEL_7;
        }

        v28 = v27;
        v29 = sub_24075A0B4();
        v31 = v30;

        if (v44)
        {
          if (v31)
          {
            if (v41 == v29 && v44 == v31)
            {
              goto LABEL_30;
            }

            v32 = sub_24075ACF4();

            if (v32)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_6;
        }

        if (!v31)
        {
          goto LABEL_31;
        }

LABEL_7:
        ++v17;
        if (v19 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_24075A864();

    v45 = v43;
    v46 = v42;
    v47 = v41;
    v48 = v44;
    v49 = v52;
    v50 = v53;
    v51 = v54;
    v34 = IdMSAccount.ID.description.getter();
    MEMORY[0x245CC5E60](v34);

    MEMORY[0x245CC5E60](0x6570797420666F20, 0xEA0000000000203ALL);
    MEMORY[0x245CC5E60](v39, v40);
    sub_24061A46C();
    swift_allocError();
    *v35 = 0xD00000000000001ELL;
    *(v35 + 8) = 0x80000002407873B0;
    *(v35 + 16) = 2;
  }

  else
  {
    v33 = v45;
    sub_2407595D4();
  }

  swift_willThrow();
LABEL_37:
  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_24061A2F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AIDAServiceType(0);
  v4 = v3;
  v5 = sub_24061CCEC(&qword_280FAD720, type metadata accessor for AIDAServiceType);
  result = MEMORY[0x245CC6270](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_240666310(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_24061A3B4()
{
  result = qword_27E4B8FE8;
  if (!qword_27E4B8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FE8);
  }

  return result;
}

uint64_t sub_24061A408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24061A46C()
{
  result = qword_27E4B8FF0;
  if (!qword_27E4B8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FF0);
  }

  return result;
}

unint64_t sub_24061A4EC()
{
  result = qword_27E4B9010;
  if (!qword_27E4B9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9010);
  }

  return result;
}

unint64_t sub_24061A540()
{
  result = qword_27E4B9020;
  if (!qword_27E4B9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9020);
  }

  return result;
}

unint64_t sub_24061A594()
{
  result = qword_27E4B9030;
  if (!qword_27E4B9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9030);
  }

  return result;
}

unint64_t sub_24061A5E8()
{
  result = qword_27E4B9040;
  if (!qword_27E4B9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9040);
  }

  return result;
}

uint64_t sub_24061A63C(void *a1)
{
  a1[1] = sub_24061CCEC(&qword_27E4B6480, type metadata accessor for IdMSAccount);
  a1[2] = sub_24061CCEC(&qword_27E4B6438, type metadata accessor for IdMSAccount);
  result = sub_24061CCEC(&qword_27E4B9048, type metadata accessor for IdMSAccount);
  a1[3] = result;
  return result;
}

uint64_t sub_24061A770(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24061A7C4()
{
  result = qword_27E4B9058;
  if (!qword_27E4B9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9058);
  }

  return result;
}

unint64_t sub_24061A81C()
{
  result = qword_27E4B9060;
  if (!qword_27E4B9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9060);
  }

  return result;
}

unint64_t sub_24061A8B0()
{
  result = qword_280FADF60;
  if (!qword_280FADF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF60);
  }

  return result;
}

unint64_t sub_24061A908()
{
  result = qword_280FADF58;
  if (!qword_280FADF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF58);
  }

  return result;
}

unint64_t sub_24061A9E0()
{
  result = qword_27E4B9068;
  if (!qword_27E4B9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9068);
  }

  return result;
}

unint64_t sub_24061AA38()
{
  result = qword_27E4B9070;
  if (!qword_27E4B9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9070);
  }

  return result;
}

unint64_t sub_24061AACC()
{
  result = qword_27E4B9078;
  if (!qword_27E4B9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9078);
  }

  return result;
}

unint64_t sub_24061AB24()
{
  result = qword_27E4B9080;
  if (!qword_27E4B9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9080);
  }

  return result;
}

unint64_t sub_24061ABB8()
{
  result = qword_27E4B9088;
  if (!qword_27E4B9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9088);
  }

  return result;
}

unint64_t sub_24061AC10()
{
  result = qword_27E4B9090;
  if (!qword_27E4B9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9090);
  }

  return result;
}

unint64_t sub_24061ACA4()
{
  result = qword_27E4B9098;
  if (!qword_27E4B9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9098);
  }

  return result;
}

unint64_t sub_24061ACFC()
{
  result = qword_27E4B90A0;
  if (!qword_27E4B90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90A0);
  }

  return result;
}

unint64_t sub_24061AD90()
{
  result = qword_27E4B90A8;
  if (!qword_27E4B90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90A8);
  }

  return result;
}

unint64_t sub_24061ADE4()
{
  result = qword_27E4B90B0;
  if (!qword_27E4B90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90B0);
  }

  return result;
}

unint64_t sub_24061AE38()
{
  result = qword_27E4B90B8;
  if (!qword_27E4B90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90B8);
  }

  return result;
}

unint64_t sub_24061AE90()
{
  result = qword_27E4B90C0;
  if (!qword_27E4B90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90C0);
  }

  return result;
}