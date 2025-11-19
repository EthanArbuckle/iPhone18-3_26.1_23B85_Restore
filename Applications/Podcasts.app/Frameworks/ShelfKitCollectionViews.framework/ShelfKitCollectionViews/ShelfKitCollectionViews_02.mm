uint64_t sub_40E00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = sub_305398();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(a2 + 16))
  {
    result = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
    *(a3 + *(result + 20)) = *(a2 + 16 * v5 + 32);
    v7 = (a3 + *(result + 24));
    *v7 = 0;
    v7[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_40F88(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_304F88();
  return sub_2E9BC;
}

uint64_t sub_41014(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_41058(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_410D8()
{
  result = qword_3FCFC8;
  if (!qword_3FCFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCFC0);
    sub_41190();
    sub_EC8C(&qword_3FD010, &qword_3FD018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCFC8);
  }

  return result;
}

unint64_t sub_41190()
{
  result = qword_3FCFD0;
  if (!qword_3FCFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCF98);
    sub_41248();
    sub_EC8C(&qword_3FD000, &qword_3FD008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCFD0);
  }

  return result;
}

unint64_t sub_41248()
{
  result = qword_3FCFD8;
  if (!qword_3FCFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCF90);
    sub_EC8C(&qword_3FCFE0, &qword_3FCFE8);
    sub_41300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCFD8);
  }

  return result;
}

unint64_t sub_41300()
{
  result = qword_3FCFF0;
  if (!qword_3FCFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FCFF8);
    sub_4174C(&qword_3FCFB0, type metadata accessor for CategorySelectionChip);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FCFF0);
  }

  return result;
}

unint64_t sub_413B8()
{
  result = qword_3FD020;
  if (!qword_3FD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD020);
  }

  return result;
}

unint64_t sub_41410()
{
  result = qword_3FD028;
  if (!qword_3FD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD028);
  }

  return result;
}

unint64_t sub_41468()
{
  result = qword_3FD030;
  if (!qword_3FD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD030);
  }

  return result;
}

uint64_t sub_414BC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  result = __chkstk_darwin(v11);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(*a6 + 16);
  if (v16)
  {
    v17 = *a6 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    do
    {
      sub_4168C(v17, v15);
      v20.origin.x = a1;
      v20.origin.y = a2;
      v20.size.width = a3;
      v20.size.height = a4;
      CGRectGetMinX(v20);
      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      CGRectGetMinY(v21);
      sub_306D28();
      v19[8] = 0;
      v19[0] = 0;
      sub_305288();
      result = sub_416F0(v15);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t type metadata accessor for CategorySelectionGridLayout.SubviewPlacement()
{
  result = qword_3FD0A0;
  if (!qword_3FD0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4168C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_416F0(uint64_t a1)
{
  v2 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4174C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_417C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3052B8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_41848(uint64_t a1, uint64_t a2)
{
  v4 = sub_3052B8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_418B8()
{
  sub_3052B8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CornerStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CornerStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_41AA8()
{
  result = qword_3FD0E0;
  if (!qword_3FD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD0E0);
  }

  return result;
}

uint64_t sub_41B2C()
{
  swift_getKeyPath();
  sub_43CCC();
  sub_302D98();
}

uint64_t sub_41BA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_43CCC();
  sub_302D98();

  *a2 = *(v3 + 16);
}

uint64_t sub_41C1C()
{
  swift_getKeyPath();
  sub_43CCC();
  sub_302D88();
}

uint64_t sub_41CB8()
{
  v1[5] = v0;
  v2 = _s16EpisodeViewModelVMa();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  v1[9] = swift_task_alloc();
  v3 = sub_301CB8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = sub_30CB08();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  sub_30C438();
  v1[20] = sub_30C428();
  v5 = sub_30C3F8();
  v1[21] = v5;
  v1[22] = v6;

  return _swift_task_switch(sub_41F2C, v5, v6);
}

uint64_t sub_41F2C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 privateQueueContext];
  v0[23] = v5;

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v0[24] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v5;
  v8 = swift_task_alloc();
  v0[25] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD1A8);
  *v8 = v0;
  v8[1] = sub_42100;
  v10 = v0[19];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v10, sub_43BBC, v7, v9);
}

uint64_t sub_42100()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
  }

  else
  {
    v5 = v2[18];
    v4 = v2[19];
    v6 = v2[17];

    (*(v5 + 8))(v4, v6);
    v7 = v2[21];
    v8 = v2[22];

    return _swift_task_switch(sub_422AC, v7, v8);
  }
}

uint64_t sub_422AC()
{
  v1 = v0[2];
  v0[27] = v1;
  v2 = *(v1 + 16);
  v0[28] = v2;
  if (v2)
  {
    v3 = sub_301DC8();
    v4 = 0;
    v46 = v3;
    v44 = *(v3 - 8) + 56;
    v45 = *v44;
    v5 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v0[29] = v4;
      v0[30] = v5;
      v7 = v0[15];
      v6 = v0[16];
      v8 = (v1 + 56 * v4);
      v0[31] = v8[4];
      v0[32] = v8[5];
      v0[33] = v8[6];
      v0[34] = v8[7];
      v0[35] = v8[8];
      v9 = v8[10];
      v0[36] = v9;
      v0[37] = v46;
      v0[38] = v45;
      v0[39] = v44 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v45(v6, 1, 1, v46);
      v45(v7, 1, 1, v46);

      swift_bridgeObjectRetain_n();

      if (v9)
      {
        v10 = v0[10];
        v11 = v0[11];
        v12 = v0[9];
        sub_301CA8();

        if ((*(v11 + 48))(v12, 1, v10) != 1)
        {
          (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
          v32 = objc_allocWithZone(AVURLAsset);
          sub_301C08(v33);
          v35 = v34;
          v0[40] = [v32 initWithURL:v34 options:0];

          sub_301C78(0);
          v36 = objc_allocWithZone(ICFileContentKeyStore);
          v37 = sub_30C098();

          v38 = [v36 initWithPath:v37];
          v0[41] = v38;

          v39 = [v38 filePath];
          v40 = sub_30C0D8();
          v42 = v41;

          v0[42] = v40;
          v0[43] = v42;
          v43 = swift_task_alloc();
          v0[44] = v43;
          *v43 = v0;
          v43[1] = sub_42880;

          return AVURLAsset.fairPlayIdentifier.getter();
        }

        sub_EB68(v0[9], &qword_3FB8E0);
      }

      v14 = v0[15];
      v13 = v0[16];
      v15 = v0[8];
      v16 = v0[6];
      v47 = *(v0 + 17);
      v48 = *(v0 + 16);
      v17 = sub_303D88();

      sub_43BD8(v14, v15 + *(v16 + 32));
      sub_43BD8(v13, v15 + *(v16 + 36));
      *v15 = v17;
      *(v15 + 24) = v47;
      *(v15 + 8) = v48;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v0[30];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_CA810(0, v19[2] + 1, 1, v0[30]);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_CA810(v20 > 1, v21 + 1, 1, v19);
      }

      v22 = v0[28];
      v23 = v0[16];
      v24 = v0[7];
      v25 = v0[8];
      v26 = v0[29] + 1;
      sub_EB68(v0[15], &unk_40BAB0);
      sub_EB68(v23, &unk_40BAB0);
      v5 = v19;
      v19[2] = v21 + 1;
      sub_43C48(v25, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21);
      if (v26 == v22)
      {
        goto LABEL_14;
      }

      v4 = v0[29] + 1;
      v1 = v0[27];
    }
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_14:
  v27 = v0[23];
  v28 = v0[5];

  swift_getKeyPath();
  v29 = swift_task_alloc();
  *(v29 + 16) = v28;
  *(v29 + 24) = v5;
  v0[3] = v28;
  sub_43CCC();
  sub_302D88();

  v30 = v0[1];

  return v30();
}

uint64_t sub_42880(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 360) = v2;

  if (v2)
  {

    v7 = v6[21];
    v8 = v6[22];
    v9 = sub_43184;
  }

  else
  {
    v6[46] = a2;
    v6[47] = a1;
    v7 = v6[21];
    v8 = v6[22];
    v9 = sub_429E4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_429E4()
{
  v1 = *(v0 + 328);
  v2 = sub_30C098();

  *(v0 + 32) = 0;
  v3 = [v1 loadKeyForIdentifier:v2 error:v0 + 32];

  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = v4;
    v6 = [v3 renewalDate];
    if (v6)
    {
      v7 = v6;
      sub_301DA8();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v15 = *(v0 + 304);
    v16 = *(v0 + 296);
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);
    sub_EB68(v17, &unk_40BAB0);
    v15(v18, v8, 1, v16);
    sub_43D24(v18, v17);
    v19 = [v3 expirationDate];
    if (v19)
    {
      v20 = v19;
      sub_301DA8();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v21 = *(v0 + 320);
    v22 = *(v0 + 304);
    v23 = *(v0 + 296);
    v24 = *(v0 + 120);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 80);
    v28 = *(v0 + 88);

    (*(v28 + 8))(v26, v27);
    sub_EB68(v24, &unk_40BAB0);
    v22(v25, v74, 1, v23);
    sub_43D24(v25, v24);
  }

  else
  {
    v10 = *(v0 + 320);
    v9 = *(v0 + 328);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    v14 = v4;
    sub_301B48();

    swift_willThrow();

    (*(v12 + 8))(v11, v13);
  }

  v29 = *(v0 + 336);
  v30 = *(v0 + 344);
  while (1)
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 64);
    v34 = *(v0 + 48);
    v73 = *(v0 + 272);
    v75 = *(v0 + 256);
    v35 = sub_303D88();

    sub_43BD8(v32, v33 + *(v34 + 32));
    sub_43BD8(v31, v33 + *(v34 + 36));
    *v33 = v35;
    *(v33 + 24) = v73;
    *(v33 + 8) = v75;
    *(v33 + 40) = v29;
    *(v33 + 48) = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_CA810(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    v76 = v37;
    if (v39 >= v38 >> 1)
    {
      v76 = sub_CA810(v38 > 1, v39 + 1, 1, v37);
    }

    v40 = *(v0 + 224);
    v41 = *(v0 + 128);
    v42 = *(v0 + 56);
    v43 = *(v0 + 64);
    v44 = *(v0 + 232) + 1;
    sub_EB68(*(v0 + 120), &unk_40BAB0);
    sub_EB68(v41, &unk_40BAB0);
    *(v76 + 16) = v39 + 1;
    sub_43C48(v43, v76 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39);
    if (v44 == v40)
    {
      break;
    }

    v45 = *(v0 + 232);
    *(v0 + 232) = v45 + 1;
    *(v0 + 240) = v76;
    v47 = *(v0 + 120);
    v46 = *(v0 + 128);
    v48 = (*(v0 + 216) + 56 * v45);
    *(v0 + 248) = v48[11];
    *(v0 + 256) = v48[12];
    *(v0 + 264) = v48[13];
    *(v0 + 272) = v48[14];
    *(v0 + 280) = v48[15];
    v49 = v48[17];
    *(v0 + 288) = v49;
    v50 = sub_301DC8();
    *(v0 + 296) = v50;
    v51 = *(v50 - 8);
    v52 = *(v51 + 56);
    *(v0 + 304) = v52;
    *(v0 + 312) = (v51 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v52(v46, 1, 1, v50);
    v52(v47, 1, 1, v50);

    swift_bridgeObjectRetain_n();

    v29 = 0;
    v30 = 0;
    if (v49)
    {
      v54 = *(v0 + 80);
      v53 = *(v0 + 88);
      v55 = *(v0 + 72);
      sub_301CA8();

      if ((*(v53 + 48))(v55, 1, v54) != 1)
      {
        (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
        v61 = objc_allocWithZone(AVURLAsset);
        sub_301C08(v62);
        v64 = v63;
        *(v0 + 320) = [v61 initWithURL:v63 options:0];

        sub_301C78(0);
        v65 = objc_allocWithZone(ICFileContentKeyStore);
        v66 = sub_30C098();

        v67 = [v65 initWithPath:v66];
        *(v0 + 328) = v67;

        v68 = [v67 filePath];
        v69 = sub_30C0D8();
        v71 = v70;

        *(v0 + 336) = v69;
        *(v0 + 344) = v71;
        v72 = swift_task_alloc();
        *(v0 + 352) = v72;
        *v72 = v0;
        v72[1] = sub_42880;

        return AVURLAsset.fairPlayIdentifier.getter();
      }

      sub_EB68(*(v0 + 72), &qword_3FB8E0);
      v29 = 0;
      v30 = 0;
    }
  }

  v56 = *(v0 + 184);
  v57 = *(v0 + 40);

  swift_getKeyPath();
  v58 = swift_task_alloc();
  *(v58 + 16) = v57;
  *(v58 + 24) = v76;
  *(v0 + 24) = v57;
  sub_43CCC();
  sub_302D88();

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_43184()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  while (1)
  {
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 64);
    v10 = *(v0 + 48);
    v49 = *(v0 + 272);
    v50 = *(v0 + 256);
    v11 = sub_303D88();

    sub_43BD8(v8, v9 + *(v10 + 32));
    sub_43BD8(v7, v9 + *(v10 + 36));
    *v9 = v11;
    *(v9 + 24) = v49;
    *(v9 + 8) = v50;
    *(v9 + 40) = v5;
    *(v9 + 48) = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_CA810(0, v13[2] + 1, 1, v13);
    }

    v15 = v13[2];
    v14 = v13[3];
    v51 = v13;
    if (v15 >= v14 >> 1)
    {
      v51 = sub_CA810(v14 > 1, v15 + 1, 1, v13);
    }

    v16 = *(v0 + 224);
    v17 = *(v0 + 128);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 232) + 1;
    sub_EB68(*(v0 + 120), &unk_40BAB0);
    sub_EB68(v17, &unk_40BAB0);
    *(v51 + 16) = v15 + 1;
    sub_43C48(v19, v51 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15);
    if (v20 == v16)
    {
      break;
    }

    v21 = *(v0 + 232);
    *(v0 + 232) = v21 + 1;
    *(v0 + 240) = v51;
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = (*(v0 + 216) + 56 * v21);
    *(v0 + 248) = v24[11];
    *(v0 + 256) = v24[12];
    *(v0 + 264) = v24[13];
    *(v0 + 272) = v24[14];
    *(v0 + 280) = v24[15];
    v25 = v24[17];
    *(v0 + 288) = v25;
    v26 = sub_301DC8();
    *(v0 + 296) = v26;
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    *(v0 + 304) = v28;
    *(v0 + 312) = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v28(v22, 1, 1, v26);
    v28(v23, 1, 1, v26);

    swift_bridgeObjectRetain_n();

    v5 = 0;
    v6 = 0;
    if (v25)
    {
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = *(v0 + 72);
      sub_301CA8();

      if ((*(v29 + 48))(v31, 1, v30) != 1)
      {
        (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
        v37 = objc_allocWithZone(AVURLAsset);
        sub_301C08(v38);
        v40 = v39;
        *(v0 + 320) = [v37 initWithURL:v39 options:0];

        sub_301C78(0);
        v41 = objc_allocWithZone(ICFileContentKeyStore);
        v42 = sub_30C098();

        v43 = [v41 initWithPath:v42];
        *(v0 + 328) = v43;

        v44 = [v43 filePath];
        v45 = sub_30C0D8();
        v47 = v46;

        *(v0 + 336) = v45;
        *(v0 + 344) = v47;
        v48 = swift_task_alloc();
        *(v0 + 352) = v48;
        *v48 = v0;
        v48[1] = sub_42880;

        return AVURLAsset.fairPlayIdentifier.getter();
      }

      sub_EB68(*(v0 + 72), &qword_3FB8E0);
      v5 = 0;
      v6 = 0;
    }
  }

  v32 = *(v0 + 184);
  v33 = *(v0 + 40);

  swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v33;
  *(v34 + 24) = v51;
  *(v0 + 24) = v33;
  sub_43CCC();
  sub_302D88();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_43754@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_43DD0();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  *a1 = v3;
  return result;
}

void sub_437DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v6 = objc_opt_self();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = [v6 predicateForEpisodeStoreTrackId:a1];
    [v5 setPredicate:v7];

    sub_440C4();
    v6 = sub_30CB18();
    if (v2)
    {

      *a2 = 0;
      a2[1] = 0;
      return;
    }

    if (!(v6 >> 62))
    {
      if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_6;
      }

LABEL_15:

      *a2 = 0;
      a2[1] = 0;
      return;
    }
  }

  v14 = v6;
  v15 = sub_30D668();
  v6 = v14;
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = sub_30D578();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v8 = *(v6 + 32);
  }

  v9 = v8;

  v10 = [v9 assetURL];

  if (v10)
  {
    v11 = sub_30C0D8();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  *a2 = v11;
  a2[1] = v13;
}

uint64_t sub_439AC()
{

  v1 = OBJC_IVAR____TtCV23ShelfKitCollectionViews17FairPlayDebugView19FairPlayDebugManger___observationRegistrar;
  v2 = sub_302DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s19FairPlayDebugMangerCMa()
{
  result = qword_3FD118;
  if (!qword_3FD118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_43AA4()
{
  result = sub_302DD8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_43B44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_43B7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_43BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43C48(uint64_t a1, uint64_t a2)
{
  v4 = _s16EpisodeViewModelVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_43CCC()
{
  result = qword_3FD1B0;
  if (!qword_3FD1B0)
  {
    _s19FairPlayDebugMangerCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD1B0);
  }

  return result;
}

uint64_t sub_43D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_43D94()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void *sub_43DD0()
{
  v0 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v1 = [objc_opt_self() predicateForDownloadedFairPlayEpisodes];
  [v0 setPredicate:v1];

  sub_440C4();
  v2 = sub_30CB18();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v26 = v0;
    result = sub_1752CC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v3;
    v29 = v3;
    v30 = v3 & 0xC000000000000001;
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v8 = sub_30D578();
        goto LABEL_10;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *(v27 + 16))
      {
        goto LABEL_25;
      }

      v8 = *(v7 + 8 * v6 + 32);
LABEL_10:
      v9 = v8;
      v10 = [v8 storeTrackId];
      v11 = [v9 title];
      if (v11)
      {
        v12 = v11;
        v31 = sub_30C0D8();
        v14 = v13;
      }

      else
      {
        v31 = 0;
        v14 = 0;
      }

      v15 = [v9 author];
      if (v15)
      {
        v16 = v15;
        v17 = sub_30C0D8();
        v3 = v18;
      }

      else
      {
        v17 = 0;
        v3 = 0;
      }

      v19 = [v9 assetURL];
      if (v19)
      {
        v20 = v19;
        v21 = sub_30C0D8();
        v0 = v22;
      }

      else
      {

        v21 = 0;
        v0 = 0;
      }

      v24 = *(&_swiftEmptyArrayStorage + 2);
      v23 = *(&_swiftEmptyArrayStorage + 3);
      if (v24 >= v23 >> 1)
      {
        sub_1752CC((v23 > 1), v24 + 1, 1);
      }

      ++v6;
      *(&_swiftEmptyArrayStorage + 2) = v24 + 1;
      v25 = (&_swiftEmptyArrayStorage + 56 * v24);
      v25[4] = v10;
      v25[5] = v31;
      v25[6] = v14;
      v25[7] = v17;
      v25[8] = v3;
      v25[9] = v21;
      v25[10] = v0;
      v7 = v29;
      if (v28 == v6)
      {

        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_440C4()
{
  result = qword_3FD1B8;
  if (!qword_3FD1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3FD1B8);
  }

  return result;
}

uint64_t sub_44110(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  v2[4] = swift_task_alloc();
  v3 = sub_301CB8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_30C438();
  v2[8] = sub_30C428();
  v5 = sub_30C3F8();

  return _swift_task_switch(sub_4423C, v5, v4);
}

uint64_t sub_4423C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  sub_301CA8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_EB68(v0[4], &qword_3FB8E0);
  }

  else
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    (*(v5 + 32))(v4, v0[4], v6);
    sub_301C78(0);
    v7 = objc_allocWithZone(ICFileContentKeyStore);
    v8 = sub_30C098();

    v9 = [v7 initWithPath:v8];

    v10 = [v9 removeAllKeys];
    (*(v5 + 8))(v4, v6);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_443D0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_301DC8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  v1[9] = swift_task_alloc();
  v3 = sub_301CB8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_30CB08();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  sub_30C438();
  v1[16] = sub_30C428();
  v5 = sub_30C3F8();
  v1[17] = v5;
  v1[18] = v6;

  return _swift_task_switch(sub_445E8, v5, v6);
}

uint64_t sub_445E8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[5];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];
  v0[19] = v6;

  v7 = swift_allocObject();
  v0[20] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v6;
  v8 = swift_task_alloc();
  v0[21] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
  *v8 = v0;
  v8[1] = sub_4479C;
  v10 = v0[15];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v10, sub_45248, v7, v9);
}

uint64_t sub_4479C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[14];
    v4 = v2[15];
    v6 = v2[13];

    (*(v5 + 8))(v4, v6);
    v7 = v2[17];
    v8 = v2[18];

    return _swift_task_switch(sub_44944, v7, v8);
  }
}

uint64_t sub_44944()
{
  if (!v0[3])
  {
    v7 = v0[19];

    goto LABEL_5;
  }

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_301CA8();

  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[9];
  if (v4 == 1)
  {
    v6 = v0[19];

    sub_EB68(v5, &qword_3FB8E0);
LABEL_5:

    v8 = v0[1];

    return v8();
  }

  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  v10 = objc_allocWithZone(AVURLAsset);
  sub_301C08(v11);
  v13 = v12;
  v0[22] = [v10 initWithURL:v12 options:0];

  sub_301C78(0);
  v14 = objc_allocWithZone(ICFileContentKeyStore);
  v15 = sub_30C098();

  v0[23] = [v14 initWithPath:v15];

  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_44BC8;

  return AVURLAsset.fairPlayIdentifier.getter();
}

uint64_t sub_44BC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {

    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_45110;
  }

  else
  {
    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_44D18;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_44D18()
{
  v1 = v0[23];

  v2 = sub_30C098();
  v0[4] = 0;
  v3 = [v1 loadKeyForIdentifier:v2 error:v0 + 4];

  v4 = v0[4];
  if (v3)
  {
    v5 = v4;
    v6 = [v3 keyData];
    if (v6)
    {
      v7 = v6;
      v8 = sub_301CD8();
      v10 = v9;

      v11 = [v3 accountDSID];
      if (v11)
      {
        v39 = v0[23];
        v40 = v11;
        v42 = v0[22];
        v43 = v0[19];
        v44 = v0[11];
        v45 = v0[10];
        v46 = v0[12];
        v13 = v0[7];
        v12 = v0[8];
        v41 = v8;
        v15 = v0[5];
        v14 = v0[6];

        isa = sub_301CC8().super.isa;
        v16 = sub_30C098();

        v17 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v15];
        sub_301D08();
        v18 = sub_301D98().super.isa;
        v37 = v10;
        v19 = *(v13 + 8);
        v19(v12, v14);
        sub_301D08();
        v20 = sub_301D98().super.isa;
        v19(v12, v14);
        v21 = [v39 saveKey:isa forIdentifier:v16 adamID:v17 withRenewalDate:v18 expirationDate:v20 accountDSID:v40 keyServerProtocolType:{objc_msgSend(v3, "keyServerProtocolType")}];

        sub_45264(v41, v37);
        (*(v44 + 8))(v46, v45);
      }

      else
      {
        v33 = v0[22];
        v32 = v0[23];
        v34 = v0[19];
        (*(v0[11] + 8))(v0[12], v0[10]);

        sub_45264(v8, v10);
      }
    }

    else
    {
      v30 = v0[22];
      v29 = v0[23];
      v31 = v0[19];
      (*(v0[11] + 8))(v0[12], v0[10]);
    }
  }

  else
  {
    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[19];
    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[10];
    v28 = v4;

    sub_301B48();

    swift_willThrow();

    (*(v26 + 8))(v25, v27);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_45110()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_45210()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_45264(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_452E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_453C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s16EpisodeViewModelVMa()
{
  result = qword_3FD218;
  if (!qword_3FD218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_454BC()
{
  sub_45558();
  if (v0 <= 0x3F)
  {
    sub_455A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_45558()
{
  if (!qword_3FD228)
  {
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FD228);
    }
  }
}

void sub_455A8()
{
  if (!qword_3FD230)
  {
    sub_301DC8();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FD230);
    }
  }
}

unint64_t sub_45604()
{
  result = qword_3FD270;
  if (!qword_3FD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD270);
  }

  return result;
}

uint64_t sub_45658()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_301DC8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s16EpisodeViewModelVMa();
  sub_43BD8(v0 + *(v8 + 32), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2FB8C(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = [objc_allocWithZone(NSDateFormatter) init];
    [v10 setDateStyle:1];
    [v10 setTimeStyle:2];
    isa = sub_301D98().super.isa;
    v12 = [v10 stringFromDate:isa];

    v13 = sub_30C0D8();
    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

uint64_t sub_45868()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_301DC8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s16EpisodeViewModelVMa();
  sub_43BD8(v0 + *(v8 + 36), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2FB8C(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = [objc_allocWithZone(NSDateFormatter) init];
    [v10 setDateStyle:1];
    [v10 setTimeStyle:2];
    isa = sub_301D98().super.isa;
    v12 = [v10 stringFromDate:isa];

    v13 = sub_30C0D8();
    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

uint64_t sub_45AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_47304(a3, v25 - v10);
  v12 = sub_30C468();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_47374(v11);
  }

  else
  {
    sub_30C458();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_30C3F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_30C168() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_47374(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_47374(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_45D64@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD278);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD280);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD288);
  v12 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v14 = v21 - v13;
  v21[4] = a1;
  v21[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD290);
  sub_46D6C();
  sub_3062B8();
  sub_EC8C(&qword_3FD2D0, &qword_3FD278);
  sub_306658();
  (*(v6 + 8))(v8, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = &v11[*(v9 + 36)];
  *v16 = sub_47000;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = sub_470E0();
  swift_retain_n();
  swift_retain_n();
  sub_306558();

  sub_471DC(v11);
  v22 = a1;
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2E0);
  sub_306A18();
  _s19FairPlayDebugMangerCMa();
  v22 = v9;
  v23 = v18;
  swift_getOpaqueTypeConformance2();
  sub_46F94(&qword_3FD1B0, _s19FairPlayDebugMangerCMa);
  v19 = v21[0];
  sub_306518();

  return (*(v12 + 8))(v14, v19);
}

uint64_t sub_46148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2A8);
  sub_46E04();
  return sub_306B68();
}

uint64_t sub_461F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2E0);
  sub_306A18();
  swift_getKeyPath();
  sub_46F94(&qword_3FD1B0, _s19FairPlayDebugMangerCMa);
  sub_302D98();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2B8);
  sub_EC8C(&qword_3FD2F0, &qword_3FD2E8);
  sub_46E88();
  sub_46F94(&qword_3FD2F8, _s16EpisodeViewModelVMa);
  return sub_306B48();
}

uint64_t sub_463BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4A484(a1, a2, _s16EpisodeViewModelVMa);
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2B8) + 36);
  sub_4A484(a1, v4, _s16EpisodeViewModelVMa);
  v5 = v4 + *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) + 20);
  _s19FairPlayDebugMangerCMa();
  sub_46F94(&qword_3FD1B0, _s19FairPlayDebugMangerCMa);
  result = sub_3050C8();
  *v5 = result;
  *(v5 + 8) = v7 & 1;
  return result;
}

uint64_t sub_464A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_30C468();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_30C438();

  v8 = sub_30C428();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_45AA4(0, 0, v6, &unk_319CD8, v9);
}

uint64_t sub_465D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_30C438();
  v5[7] = sub_30C428();
  v7 = sub_30C3F8();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_46668, v7, v6);
}

uint64_t sub_46668()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2E0);
  sub_306A18();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_46728;

  return sub_41CB8();
}

uint64_t sub_46728()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_4B124, v3, v2);
}

uint64_t sub_4686C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  v2[4] = swift_task_alloc();
  v2[5] = sub_30C438();
  v2[6] = sub_30C428();
  v4 = sub_30C3F8();

  return _swift_task_switch(sub_46940, v4, v3);
}

uint64_t sub_46940()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = sub_30C468();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = sub_30C428();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  v6[5] = v2;
  sub_45AA4(0, 0, v1, &unk_319CB0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_46A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_30C438();
  v5[7] = sub_30C428();
  v7 = sub_30C3F8();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_46AF8, v7, v6);
}

uint64_t sub_46AF8()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD2E0);
  sub_306A18();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_46BB8;

  return sub_41CB8();
}

uint64_t sub_46BB8()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_46CFC, v3, v2);
}

uint64_t sub_46CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_46D6C()
{
  result = qword_3FD298;
  if (!qword_3FD298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD290);
    sub_46E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD298);
  }

  return result;
}

unint64_t sub_46E04()
{
  result = qword_3FD2A0;
  if (!qword_3FD2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD2A8);
    sub_46E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD2A0);
  }

  return result;
}

unint64_t sub_46E88()
{
  result = qword_3FD2B0;
  if (!qword_3FD2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD2B8);
    sub_46F94(&qword_3FD2C0, type metadata accessor for FairPlayDebugView.Episode);
    sub_46F94(&qword_3FD2C8, type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD2B0);
  }

  return result;
}

uint64_t sub_46F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_3()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_47048()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4B120;

  return sub_4686C(v2, v3);
}

unint64_t sub_470E0()
{
  result = qword_3FD2D8;
  if (!qword_3FD2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD278);
    sub_EC8C(&qword_3FD2D0, &qword_3FD278);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD2D8);
  }

  return result;
}

uint64_t sub_471DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_47244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_4B120;

  return sub_46A60(a1, v4, v5, v7, v6);
}

uint64_t sub_47304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_473DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD490);
  v9 = __chkstk_darwin(a1);
  v12 = &v21 - v11;
  v13 = *(v9 + 48);
  if (v13)
  {
    v14 = *(v9 + 40);
    v22 = v10;
    sub_4A484(v9, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    sub_4A690(v7, v17 + v15);
    v18 = (v17 + v16);
    *v18 = v14;
    v18[1] = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
    sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
    sub_306A68();
    (*(v22 + 32))(a2, v12, v8);
    return (*(v22 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v20 = *(v10 + 56);

    return v20(a2, 1, 1, v8);
  }
}

uint64_t sub_476AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_30C468();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_4A484(a1, v9, type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier);
  sub_30C438();

  v14 = sub_30C428();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_4A690(v9, v17 + v15);
  v18 = (v17 + v16);
  *v18 = a2;
  v18[1] = a3;
  sub_45AA4(0, 0, v12, &unk_319E80, v17);
}

uint64_t sub_478A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_305A08();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  sub_30C438();
  v6[10] = sub_30C428();
  v9 = sub_30C3F8();
  v6[11] = v9;
  v6[12] = v8;

  return _swift_task_switch(sub_4799C, v9, v8);
}

uint64_t sub_4799C()
{
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) + 20));
  v3 = *v2;
  *(v0 + 104) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 144) = v4;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 16);
  }

  *(v0 + 112) = v3;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_47B10;
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  return sub_44110(v11, v10);
}

uint64_t sub_47B10()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_47C54, v3, v2);
}

uint64_t sub_47C54()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);
    sub_30C7A8();
    v6 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 24);
  }

  *(v0 + 128) = v2;
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_47D8C;

  return sub_41CB8();
}

uint64_t sub_47D8C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_47ED0, v3, v2);
}

uint64_t sub_47ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_47F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B0);
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v7 - 8);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD490);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v13 = __chkstk_darwin(v12);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v19 = &v36 - v18;
  v20 = a1;
  v21 = *(a1 + 48);
  if (v21)
  {
    v40 = a2;
    v22 = *(v20 + 40);
    v38 = v16;
    v36 = v17;
    v23 = swift_allocObject();
    v37 = v6;
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    v39 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
    sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
    sub_306A68();
    v24 = v42;
    sub_4A484(v20, v42, type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier);
    v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v26 = swift_allocObject();
    sub_4A690(v24, v26 + v25);
    sub_306A68();
    v27 = *(v10 + 16);
    v28 = v36;
    v27(v36, v19, v9);
    v29 = v38;
    v27(v38, v15, v9);
    v30 = v37;
    v27(v37, v28, v9);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4C8);
    v27(v30 + *(v31 + 48), v29, v9);
    v32 = *(v10 + 8);
    v32(v15, v9);
    v32(v19, v9);
    v32(v29, v9);
    v32(v28, v9);
    v33 = v40;
    sub_4A754(v30, v40);
    return (*(v43 + 56))(v33, 0, 1, v39);
  }

  else
  {
    v35 = *(v43 + 56);

    return v35(a2, 1, 1, v4);
  }
}

void sub_48458()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_30C098();
  [v0 setString:v1];
}

uint64_t sub_484EC()
{
  v0 = sub_305B28();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_48560(uint64_t a1)
{
  v2 = type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD48);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_30C468();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_4A484(a1, v5, type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier);
  sub_30C438();
  v10 = sub_30C428();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_4A690(v5, v12 + v11);
  sub_45AA4(0, 0, v8, &unk_319E70, v12);
}

uint64_t sub_4872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_305A08();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_30C438();
  v4[8] = sub_30C428();
  v7 = sub_30C3F8();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_48820, v7, v6);
}

uint64_t sub_48820()
{
  v1 = *(v0 + 32);
  v2 = v1 + *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) + 20);
  v3 = *v2;
  *(v0 + 88) = *v2;
  v4 = v2[8];
  *(v0 + 128) = v4;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    sub_30C7A8();
    v8 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 16);
    v1 = *(v0 + 32);
  }

  *(v0 + 96) = v3;
  v9 = *v1;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_48998;

  return sub_443D0(v9);
}

uint64_t sub_48998()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_48ADC, v3, v2);
}

uint64_t sub_48ADC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    sub_30C7A8();
    v6 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 24);
  }

  *(v0 + 112) = v2;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_48C14;

  return sub_41CB8();
}

uint64_t sub_48C14()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_48D58, v3, v2);
}

uint64_t sub_48D58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_48DF4()
{
  v0 = sub_305B28();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_48E50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD460);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v12 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD468);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD470);
  v7 = sub_EC8C(&qword_3FD478, &qword_3FD468);
  v8 = sub_4A2DC();
  sub_3065A8();
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD498);
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  swift_getOpaqueTypeConformance2();
  sub_4A394();
  sub_3065A8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_49068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v3 = sub_305FB8();
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v81 = &v72[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD430);
  v80 = *(v86 - 8);
  v5 = __chkstk_darwin(v86);
  v85 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v88 = &v72[-v7];
  if (!a1[4])
  {
    v78 = 0;
    v87 = 0;
    v84 = 0;
    v77 = 0;
    v25 = a1[2];
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = 0xED0000656C746974;
    v26 = 0x20676E697373694DLL;
    goto LABEL_6;
  }

  v89[0] = sub_30C158();
  v89[1] = v8;
  sub_E504();
  v9 = sub_3063C8();
  v11 = v10;
  v13 = v12;
  sub_306258();
  v14 = sub_306388();
  v16 = v15;
  v18 = v17;

  sub_EBC8(v9, v11, v13 & 1);

  LODWORD(v89[0]) = sub_305E88();
  v19 = sub_306348();
  v21 = v20;
  LOBYTE(v9) = v22;
  v24 = v23;
  sub_EBC8(v14, v16, v18 & 1);

  v78 = v19;
  v87 = v21;
  v84 = v9 & 1;
  sub_EBD8(v19, v21, v9 & 1);
  v77 = v24;

  v25 = a1[2];
  if (!v25)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = a1[1];
  v27 = v25;
LABEL_6:
  v89[0] = v26;
  v89[1] = v27;
  sub_E504();

  v28 = sub_3063C8();
  v30 = v29;
  v32 = v31;
  sub_306268();
  v33 = sub_306388();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_EBC8(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v89[0] = v33;
  v89[1] = v35;
  v90 = v37 & 1;
  v91 = v39;
  v92 = KeyPath;
  v93 = 3;
  v94 = 0;
  v41 = v81;
  sub_305FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD438);
  sub_4A194();
  v42 = v83;
  sub_3065C8();
  (*(v82 + 8))(v41, v42);
  sub_EBC8(v33, v35, v37 & 1);

  strcpy(v89, "Expiry Date: ");
  HIWORD(v89[1]) = -4864;
  v95._countAndFlagsBits = sub_45658();
  sub_30C238(v95);

  sub_306168();
  v81 = sub_306388();
  v82 = v43;
  LOBYTE(v35) = v44;
  v83 = v45;

  v89[0] = 0;
  v89[1] = 0xE000000000000000;
  sub_30D558(16);

  strcpy(v89, "Renewal Date: ");
  HIBYTE(v89[1]) = -18;
  v96._countAndFlagsBits = sub_45868();
  sub_30C238(v96);

  sub_306168();
  v75 = sub_306388();
  v74 = v46;
  v73 = v47;
  v76 = v48;

  v49 = v80;
  v50 = *(v80 + 16);
  v52 = v85;
  v51 = v86;
  v50(v85, v88, v86);
  v53 = v35 & 1;
  LOBYTE(v89[0]) = v35 & 1;
  v54 = v79;
  v55 = v78;
  v56 = v87;
  *v79 = v78;
  v54[1] = v56;
  v57 = v77;
  v54[2] = v84;
  v54[3] = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD458);
  v50(v54 + v58[12], v52, v51);
  v59 = v54 + v58[16];
  *v59 = 0;
  v59[8] = 1;
  v60 = v54 + v58[20];
  v61 = v81;
  v62 = v82;
  *v60 = v81;
  *(v60 + 1) = v62;
  v60[16] = v53;
  *(v60 + 3) = v83;
  v63 = v54 + v58[24];
  v64 = v87;
  LOBYTE(v54) = v84;
  sub_4A24C(v55, v87, v84, v57);
  sub_EBD8(v61, v62, v53);

  v65 = v73 & 1;
  v66 = v75;
  v67 = v74;
  sub_EBD8(v75, v74, v73 & 1);
  v68 = v76;

  sub_4A290(v55, v64, v54, v57);
  *v63 = v66;
  *(v63 + 1) = v67;
  v63[16] = v65;
  *(v63 + 3) = v68;
  v69 = *(v49 + 8);
  v70 = v86;
  v69(v88, v86);
  sub_EBC8(v66, v67, v65);

  sub_EBC8(v81, v82, v89[0]);

  v69(v85, v70);
  return sub_4A290(v55, v87, v54, v57);
}

uint64_t sub_49770@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305BE8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD428);
  return sub_49068(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_497C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_498BC;

  return v6(a1);
}

uint64_t sub_498BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_499B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_499EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4B120;

  return sub_497C4(a1, v4);
}

uint64_t sub_49AA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_F4FC;

  return sub_497C4(a1, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_49BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_4B120;

  return sub_465D0(a1, v4, v5, v7, v6);
}

uint64_t sub_49C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s16EpisodeViewModelVMa();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_49D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s16EpisodeViewModelVMa();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_49E18()
{
  _s16EpisodeViewModelVMa();
  if (v0 <= 0x3F)
  {
    sub_49E9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_49E9C()
{
  if (!qword_3FD368)
  {
    _s19FairPlayDebugMangerCMa();
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FD368);
    }
  }
}

uint64_t sub_49F08(uint64_t a1, uint64_t a2)
{
  v4 = _s16EpisodeViewModelVMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_49F88(uint64_t a1, uint64_t a2)
{
  v4 = _s16EpisodeViewModelVMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_49FF8()
{
  result = _s16EpisodeViewModelVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4A064()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD288);
  _s19FairPlayDebugMangerCMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD280);
  sub_470E0();
  swift_getOpaqueTypeConformance2();
  sub_46F94(&qword_3FD1B0, _s19FairPlayDebugMangerCMa);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_4A194()
{
  result = qword_3FD440;
  if (!qword_3FD440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD438);
    sub_EC8C(&qword_3FD448, &qword_3FD450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD440);
  }

  return result;
}

uint64_t sub_4A24C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_EBD8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_4A290(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_EBC8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_4A2DC()
{
  result = qword_3FD480;
  if (!qword_3FD480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD470);
    sub_EC8C(&qword_3FD488, &qword_3FD490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD480);
  }

  return result;
}

unint64_t sub_4A394()
{
  result = qword_3FD4A0;
  if (!qword_3FD4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD498);
    sub_EC8C(&qword_3FD4A8, &qword_3FD4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD4A0);
  }

  return result;
}

uint64_t sub_4A444()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4A484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4A4EC()
{
  v1 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(v1 + 64);
  v13 = v0;
  v4 = v0 + v3;

  v5 = _s16EpisodeViewModelVMa();
  v6 = *(v5 + 32);
  v7 = sub_301DC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v5 + 36);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  return _swift_deallocObject(v13, v3 + v12, v2 | 7);
}

uint64_t sub_4A690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A6F4()
{
  v1 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_48560(v2);
}

uint64_t sub_4A754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A7C4()
{
  v1 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v12 = *(v1 + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = _s16EpisodeViewModelVMa();
  v6 = *(v5 + 32);
  v7 = sub_301DC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v5 + 36);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  return _swift_deallocObject(v0, v3 + v12, v2 | 7);
}

uint64_t sub_4A978(uint64_t a1)
{
  v4 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_F4FC;

  return sub_4872C(a1, v6, v7, v1 + v5);
}

uint64_t sub_4AA68()
{
  v1 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(v1 + 64);
  v4 = v0 + v3;

  v5 = _s16EpisodeViewModelVMa();
  v6 = *(v5 + 32);
  v7 = sub_301DC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v5 + 36);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_4AC2C()
{
  v1 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_476AC(v0 + v2, v4, v5);
}

uint64_t sub_4ACBC()
{
  v1 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v12 = *(v1 + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = _s16EpisodeViewModelVMa();
  v6 = *(v5 + 32);
  v7 = sub_301DC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = *(v5 + 36);
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  return _swift_deallocObject(v0, ((v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_4AE88(uint64_t a1)
{
  v4 = *(type metadata accessor for FairPlayDebugView.KeySwipeActionsModifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_4B120;

  return sub_478A4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_4AFFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD470);
  sub_EC8C(&qword_3FD478, &qword_3FD468);
  sub_4A2DC();
  swift_getOpaqueTypeConformance2();
  sub_4A394();
  return swift_getOpaqueTypeConformance2();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_4B13C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_4B184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_4B1F4@<X0>(int a1@<W1>, char *a2@<X8>)
{
  LODWORD(v38) = a1;
  v41 = a2;
  OrderSection = type metadata accessor for JetPackLoadOrderSection(0);
  v3 = __chkstk_darwin(OrderSection);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v35 - v6);
  v8 = sub_305A08();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD500);
  v43 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v40 = &v35 - v14;
  KeyPath = swift_getKeyPath();
  sub_302658();
  sub_56BF8(&qword_3FD508, &type metadata accessor for JSPackageLoadingTracker);
  v16 = sub_3050C8();
  v39 = KeyPath;
  v44 = KeyPath;
  v45 = 0;
  v37 = v16;
  v46 = v16;
  v47 = v17 & 1;

  if ((v38 & 1) == 0)
  {
    sub_30C7A8();
    v18 = sub_306088();
    v38 = v8;
    v19 = OrderSection;
    v20 = v7;
    v21 = v11;
    v22 = v5;
    v23 = v18;
    sub_304108();

    v5 = v22;
    v11 = v21;
    v7 = v20;
    OrderSection = v19;
    v24 = v36;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v9 + 8))(v24, v38);
  }

  sub_30B8E8();

  sub_4B8E4();
  v25 = v40;
  sub_306518();

  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  swift_storeEnumTagMultiPayload();
  v26 = (v7 + *(OrderSection + 20));
  sub_302158();
  v44 = sub_302148();
  sub_3036B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD520);
  sub_56B44();
  *v26 = sub_3022F8();
  v26[1] = v27;
  v29 = v42;
  v28 = v43;
  v30 = *(v43 + 16);
  v30(v42, v25, v11);
  sub_577C0(v7, v5, type metadata accessor for JetPackLoadOrderSection);
  v31 = v41;
  v30(v41, v29, v11);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD538);
  sub_577C0(v5, &v31[*(v32 + 48)], type metadata accessor for JetPackLoadOrderSection);
  sub_57470(v7, type metadata accessor for JetPackLoadOrderSection);
  v33 = *(v28 + 8);
  v33(v25, v11);
  sub_57470(v5, type metadata accessor for JetPackLoadOrderSection);
  return (v33)(v29, v11);
}

uint64_t sub_4B6E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = *(v0 + 8);
  v8 = *v0;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4E8);
  sub_EC8C(&qword_3FD4F0, &qword_3FD4E8);
  sub_306298();
  sub_EC8C(&qword_3FD4F8, &qword_3FD4E0);
  sub_306658();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_4B8E4()
{
  result = qword_3FD510;
  if (!qword_3FD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD510);
  }

  return result;
}

uint64_t sub_4B938@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v41 = a5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD5F0);
  v38 = *(v40 - 8);
  v9 = __chkstk_darwin(v40);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD5F8);
  v36 = *(v37 - 8);
  v13 = v36;
  v14 = __chkstk_darwin(v37);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v46 = a1;
  v47 = a2 & 1;
  v48 = a3;
  v19 = a3;
  LOBYTE(a3) = a4 & 1;
  v49 = a4 & 1;
  v50 = xmmword_319E90;
  v51 = 0;
  v52 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD600);
  sub_570C8();
  v20 = v18;
  v35 = v18;
  sub_306B68();
  v42 = a1;
  v43 = a2 & 1;
  v44 = v19;
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD660);
  sub_57358();
  v21 = v12;
  v34 = v12;
  sub_306B88();
  v22 = *(v13 + 16);
  v23 = v37;
  v22(v16, v20, v37);
  v25 = v38;
  v24 = v39;
  v26 = *(v38 + 16);
  v27 = v21;
  v28 = v40;
  v26(v39, v27, v40);
  v29 = v41;
  v22(v41, v16, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD670);
  v26(&v29[*(v30 + 48)], v24, v28);
  v31 = *(v25 + 8);
  v31(v34, v28);
  v32 = *(v36 + 8);
  v32(v35, v23);
  v31(v24, v28);
  return (v32)(v16, v23);
}

uint64_t sub_4BCF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v49 = a2;
  v51 = a1;
  v68 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD680);
  __chkstk_darwin(v63);
  v65 = &v48 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD648);
  __chkstk_darwin(v67);
  v66 = &v48 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD658);
  __chkstk_darwin(v64);
  v55 = &v48 - v7;
  v56 = sub_302BA8();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD638);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v57 = &v48 - v11;
  v12 = sub_3021D8();
  __chkstk_darwin(v12 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD688);
  __chkstk_darwin(v70);
  v72 = &v48 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD690);
  __chkstk_darwin(v58);
  v60 = &v48 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD618);
  __chkstk_darwin(v71);
  v61 = &v48 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD628);
  v62 = *(v69 - 8);
  __chkstk_darwin(v69);
  v59 = &v48 - v17;
  v18 = sub_302568();
  __chkstk_darwin(v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_305A08();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);

  v50 = a3;
  if ((a3 & 1) == 0)
  {
    sub_30C7A8();
    v25 = v9;
    v26 = v10;
    v27 = sub_306088();
    sub_304108();

    v10 = v26;
    v9 = v25;
    sub_3059F8();
    swift_getAtKeyPath();

    (*(v22 + 8))(v24, v21);
  }

  sub_302648();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD698);
      v34 = sub_57470(v20, &type metadata accessor for JSPackageLocation);
      __chkstk_darwin(v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6A0);
      sub_EC8C(&qword_3FD6A8, &qword_3FD6A0);
      v35 = v59;
      sub_305E58();
      v36 = v62;
      v37 = v69;
      (*(v62 + 16))(v65, v35, v69);
      swift_storeEnumTagMultiPayload();
      sub_EC8C(&qword_3FD650, &qword_3FD658);
      sub_EC8C(&qword_3FD620, &qword_3FD628);
      v38 = v66;
      sub_305D48();
      sub_EB00(v38, v72, &qword_3FD648);
      swift_storeEnumTagMultiPayload();
      sub_57154();
      sub_57234();
      sub_305D48();

      sub_EB68(v38, &qword_3FD648);
      return (*(v36 + 8))(v35, v37);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6A0);
      sub_EC8C(&qword_3FD6A8, &qword_3FD6A0);
      v44 = v59;
      sub_305E58();
      v45 = v62;
      v46 = v69;
      (*(v62 + 16))(v60, v44, v69);
      swift_storeEnumTagMultiPayload();
      sub_EC8C(&qword_3FD620, &qword_3FD628);
      sub_EC8C(&qword_3FD630, &qword_3FD638);
      v47 = v61;
      sub_305D48();
      sub_EB00(v47, v72, &qword_3FD618);
      swift_storeEnumTagMultiPayload();
      sub_57154();
      sub_57234();
      sub_305D48();
      sub_EB68(v47, &qword_3FD618);
      return (*(v45 + 8))(v44, v46);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = v53;
    v40 = v52;
    v41 = v56;
    (*(v53 + 32))(v52, v20, v56);
    v74 = v49 & 1;
    v73 = v50 & 1;
    v42 = v55;
    sub_4CBAC(v40, v55);
    sub_EB00(v42, v65, &qword_3FD658);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_3FD650, &qword_3FD658);
    sub_EC8C(&qword_3FD620, &qword_3FD628);
    v43 = v66;
    sub_305D48();
    sub_EB00(v43, v72, &qword_3FD648);
    swift_storeEnumTagMultiPayload();
    sub_57154();
    sub_57234();
    sub_305D48();
    sub_EB68(v43, &qword_3FD648);
    sub_EB68(v42, &qword_3FD658);
    return (*(v39 + 8))(v40, v41);
  }

  else
  {
    v29 = v54;
    v30 = sub_57EB0(v20, v54, &type metadata accessor for JSPackageLocation);
    __chkstk_darwin(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6B0);
    sub_EC8C(&qword_3FD6A8, &qword_3FD6A0);
    sub_574E0();
    v31 = v57;
    sub_305E58();
    (*(v10 + 16))(v60, v31, v9);
    swift_storeEnumTagMultiPayload();
    sub_EC8C(&qword_3FD620, &qword_3FD628);
    sub_EC8C(&qword_3FD630, &qword_3FD638);
    v32 = v61;
    sub_305D48();
    sub_EB00(v32, v72, &qword_3FD618);
    swift_storeEnumTagMultiPayload();
    sub_57154();
    sub_57234();
    sub_305D48();
    sub_EB68(v32, &qword_3FD618);
    (*(v10 + 8))(v31, v9);
    return sub_57470(v29, &type metadata accessor for JSPackageLocation);
  }
}

uint64_t sub_4CBAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for JSPackageSourceLocationView(0);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v47 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD730);
  __chkstk_darwin(v54);
  v55 = &v47 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD738);
  v50 = *(v56 - 8);
  __chkstk_darwin(v56);
  v49 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40BAB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_301DC8();
  v52 = *(v12 - 8);
  __chkstk_darwin(v12);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD740);
  v15 = __chkstk_darwin(v14 - 8);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD748);
  v57 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v62 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v61 = &v47 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v47 - v24;
  __chkstk_darwin(v23);
  v27 = &v47 - v26;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
  sub_57858(&qword_3FD6C0, &qword_3FD6C8);
  v60 = v27;
  sub_305378();
  v65 = a1;
  v28 = v25;
  v29 = v52;
  sub_305378();
  sub_302B88();
  if ((*(v29 + 48))(v11, 1, v12) == 1)
  {
    sub_EB68(v11, &unk_40BAB0);
    swift_storeEnumTagMultiPayload();
    sub_57858(&qword_3FD750, &qword_3FD738);
    sub_305D48();
  }

  else
  {
    v30 = v48;
    v31 = (*(v29 + 32))(v48, v11, v12);
    __chkstk_darwin(v31);
    *(&v47 - 2) = v30;
    v32 = v49;
    sub_305378();
    v33 = v50;
    v34 = v56;
    (*(v50 + 16))(v55, v32, v56);
    swift_storeEnumTagMultiPayload();
    sub_57858(&qword_3FD750, &qword_3FD738);
    sub_305D48();
    (*(v33 + 8))(v32, v34);
    (*(v29 + 8))(v30, v12);
  }

  v35 = v63;
  sub_302B78();
  v36 = v57;
  v37 = *(v57 + 16);
  v38 = v61;
  v37(v61, v60, v18);
  v51 = v28;
  v37(v62, v28, v18);
  v39 = v53;
  sub_EB00(v64, v53, &qword_3FD740);
  v40 = v58;
  sub_577C0(v35, v58, type metadata accessor for JSPackageSourceLocationView);
  v41 = v39;
  v42 = v59;
  v37(v59, v38, v18);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD758);
  v44 = v62;
  v37(&v42[v43[12]], v62, v18);
  sub_EB00(v41, &v42[v43[16]], &qword_3FD740);
  sub_577C0(v40, &v42[v43[20]], type metadata accessor for JSPackageSourceLocationView);
  sub_57470(v63, type metadata accessor for JSPackageSourceLocationView);
  sub_EB68(v64, &qword_3FD740);
  v45 = *(v36 + 8);
  v45(v51, v18);
  v45(v60, v18);
  sub_57470(v40, type metadata accessor for JSPackageSourceLocationView);
  sub_EB68(v41, &qword_3FD740);
  v45(v44, v18);
  return (v45)(v61, v18);
}

__n128 sub_4D458@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB808);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  sub_304FA8();
  v16 = sub_304FC8();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2 & 1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4 & 1;

  sub_306A58();
  sub_306C58();
  sub_305638();
  v18 = v24;
  (*(v13 + 32))(v24, v15, v12);
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD660) + 36);
  v20 = v30;
  *(v19 + 64) = v29;
  *(v19 + 80) = v20;
  *(v19 + 96) = v31;
  v21 = v26;
  *v19 = v25;
  *(v19 + 16) = v21;
  result = v28;
  *(v19 + 32) = v27;
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_4D6F8(uint64_t a1, char a2)
{
  v3 = sub_30C468();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_305A08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_30C7A8();
    v11 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  sub_301FA8();
  sub_30B8E8();

  sub_30C448();
  sub_301F98();

  return (*(v4 + 8))(v6, v3);
}

double sub_4D918@<D0>(uint64_t a1@<X8>)
{
  result = 1.19785491e49;
  *a1 = xmmword_319EA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_4D964@<D0>(uint64_t a1@<X8>)
{
  result = 4.23273567e175;
  *a1 = xmmword_319EB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_4D984@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v2 = sub_306E48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306DE8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v22 = sub_306928();
  sub_306DD8();
  sub_306DC8();
  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_306DF8();
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD708) + 36);
  v15 = sub_306078();
  (*(v3 + 16))(&v14[*(v15 + 20)], v5, v2);
  sub_56BF8(&qword_3FD728, &type metadata accessor for RotateSymbolEffect);
  sub_306D68();
  (*(v3 + 8))(v5, v2);
  v13(v10, v6);
  v14[*(v15 + 24)] = 1;
  v16 = v21;
  *v21 = v22;
  v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6F0) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720) + 28);
  sub_305C08();
  v19 = sub_305C28();
  (*(*(v19 - 8) + 56))(v17 + v18, 0, 1, v19);
  result = swift_getKeyPath();
  *v17 = result;
  return result;
}

void sub_4DC90(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000074;
  *(a1 + 8) = 0x8000000000336E70;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_4DCEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6F0);
  sub_57644();

  return sub_306988();
}

double sub_4DD74@<D0>(uint64_t a1@<X8>)
{
  result = 1.04272727e-306;
  *a1 = xmmword_319EC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_4DD94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306E18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306E48();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_306DE8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_306928();
  sub_306DD8();
  sub_306E08();
  sub_306E28();
  (*(v3 + 8))(v5, v2);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD708) + 36);
  v15 = sub_306078();
  (*(v7 + 16))(&v14[*(v15 + 20)], v9, v6);
  sub_56BF8(&qword_3FD728, &type metadata accessor for RotateSymbolEffect);
  sub_306D68();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v14[*(v15 + 24)] = 1;
  *a1 = v21;
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6F0) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720) + 28);
  sub_305C08();
  v18 = sub_305C28();
  (*(*(v18 - 8) + 56))(v16 + v17, 0, 1, v18);
  result = swift_getKeyPath();
  *v16 = result;
  return result;
}

__n128 sub_4E0F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_301CB8();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_304CA8();
  v53 = *(v50 - 8);
  v6 = __chkstk_darwin(v50);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v48 - v10;
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = sub_3021D8();
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_577C0(a1, v16, &type metadata accessor for JSPackageLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *&v54 = 0xD00000000000003ALL;
      *(&v54 + 1) = 0x8000000000336FC0;
      v55.n128_u64[0] = 0;
      v55.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v56) = 0;
    }

    else
    {
      *&v54 = 0xD00000000000004DLL;
      *(&v54 + 1) = 0x8000000000336F70;
      v55.n128_u64[0] = 0;
      v55.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v56) = 1;
    }

    sub_305D48();
    LOBYTE(v63) = v71;
    v68 = 0;
    v54 = v69;
    v55 = v70;
    LOBYTE(v56) = v71;
    HIBYTE(v58) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6D8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_57594();
    sub_305D48();
  }

  else
  {
    v49 = a2;
    if (EnumCaseMultiPayload)
    {
      (*(v52 + 32))();
      v50 = 0x8000000000336F10;
      v53 = v4;
      sub_301BD8();
      sub_306238();
      v33 = sub_306388();
      v35 = v34;
      v37 = v36;

      *&v69 = sub_306848();
      v38 = sub_306348();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_EBC8(v33, v35, v37 & 1);

      v59 = 0;
      v61 = 0;
      v60 = v42 & 1;
      sub_EBD8(v38, v40, v42 & 1);

      v45 = v50;
      sub_EBD8(0xD000000000000025, v50, 0);

      sub_EBD8(v38, v40, v42 & 1);

      sub_EBC8(v38, v40, v42 & 1);

      sub_EBC8(0xD000000000000025, v45, v59);

      v62 = 1;
      *&v69 = 0xD000000000000025;
      *(&v69 + 1) = v45;
      v70.n128_u8[0] = v61;
      v70.n128_u64[1] = _swiftEmptyArrayStorage;
      *&v71 = v38;
      *(&v71 + 1) = v40;
      LOBYTE(v72) = v60;
      *(&v72 + 1) = v44;
      LOBYTE(v73) = 1;
      sub_EBD8(0xD000000000000025, v45, 0);

      sub_EBD8(v38, v40, v42 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6E8);
      sub_EC8C(&qword_3FD6E0, &qword_3FD6E8);
      sub_305D48();
      v71 = v65;
      v72 = v66;
      LOBYTE(v73) = v67;
      v69 = v63;
      v70 = v64;
      v68 = 1;
      HIBYTE(v73) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6D8);
      sub_57858(&qword_3FD6C0, &qword_3FD6C8);
      sub_57594();
      sub_305D48();
      sub_EBC8(0xD000000000000025, v45, 0);

      sub_EBC8(v38, v40, v42 & 1);

      sub_EBC8(v38, v40, v42 & 1);

      (*(v52 + 8))(v51, v53);
    }

    else
    {
      v18 = v53;
      v19 = *(v53 + 32);
      v48 = v13;
      v20 = v50;
      v19(v13, v16, v50);
      v51 = 0x8000000000336F40;
      (*(v18 + 16))(v8, v13, v20);
      sub_304C88();
      sub_304C98();
      v52 = *(v18 + 8);
      v53 = v18 + 8;
      (v52)(v11, v20);
      sub_306238();
      v21 = sub_306388();
      v23 = v22;
      LOBYTE(v20) = v24;

      *&v69 = sub_306848();
      v25 = sub_306348();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      sub_EBC8(v21, v23, v20 & 1);

      v59 = 0;
      v61 = 0;
      v60 = v29 & 1;
      sub_EBD8(v25, v27, v29 & 1);

      v32 = v51;
      sub_EBD8(0xD000000000000025, v51, 0);

      sub_EBD8(v25, v27, v29 & 1);

      sub_EBC8(v25, v27, v29 & 1);

      sub_EBC8(0xD000000000000025, v32, v59);

      v62 = 0;
      *&v69 = 0xD000000000000025;
      *(&v69 + 1) = v32;
      v70.n128_u8[0] = v61;
      v70.n128_u64[1] = _swiftEmptyArrayStorage;
      *&v71 = v25;
      *(&v71 + 1) = v27;
      LOBYTE(v72) = v60;
      *(&v72 + 1) = v31;
      LOBYTE(v73) = 0;
      sub_EBD8(0xD000000000000025, v32, 0);

      sub_EBD8(v25, v27, v29 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6E8);
      sub_EC8C(&qword_3FD6E0, &qword_3FD6E8);
      sub_305D48();
      v71 = v65;
      v72 = v66;
      LOBYTE(v73) = v67;
      v69 = v63;
      v70 = v64;
      v68 = 1;
      HIBYTE(v73) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6D8);
      sub_57858(&qword_3FD6C0, &qword_3FD6C8);
      sub_57594();
      sub_305D48();
      sub_EBC8(0xD000000000000025, v32, 0);

      sub_EBC8(v25, v27, v29 & 1);

      sub_EBC8(v25, v27, v29 & 1);

      (v52)(v48, v50);
    }

    v71 = v56;
    v72 = v57;
    v73 = v58;
    v69 = v54;
    v70 = v55;
    a2 = v49;
  }

  v46 = v72;
  *(a2 + 32) = v71;
  *(a2 + 48) = v46;
  *(a2 + 64) = v73;
  result = v70;
  *a2 = v69;
  *(a2 + 16) = result;
  return result;
}

double sub_4EB78@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD770);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_302188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_302B68();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_EB68(v4, &qword_3FD770);
    v13 = xmmword_319ED0;
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v16 = 1;
    sub_305D48();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    *&v13 = sub_302178();
    *(&v13 + 1) = v9;
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v16 = 0;
    sub_305D48();
    (*(v6 + 8))(v8, v5);
  }

  result = *&v17;
  v11 = v18;
  v12 = v19;
  *a1 = v17;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

double sub_4ED90@<D0>(uint64_t a1@<X8>)
{
  result = 1.35441148e-306;
  *a1 = xmmword_319EE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_4EDB0@<D0>(uint64_t a1@<X8>)
{
  if (sub_302B98() != 3)
  {
    *&v4 = sub_302278();
    *(&v4 + 1) = v2;
    sub_E504();
    sub_30D3C8();
  }

  sub_305D48();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_4EE94@<D0>(uint64_t a1@<X8>)
{
  result = 2.7873082e276;
  *a1 = xmmword_319EF0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_4EEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_301CF8();
  __chkstk_darwin(v4);
  v5 = sub_301DC8();
  __chkstk_darwin(v5);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_301998();
  sub_56BF8(&qword_3FD760, &type metadata accessor for Date.FormatStyle);
  sub_56BF8(&qword_3FD768, &type metadata accessor for Date);
  result = sub_306398();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

double sub_4F064@<D0>(uint64_t a1@<X8>)
{
  result = 3.53701305e160;
  *a1 = xmmword_319F00;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

double sub_4F0B0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x64656C696146;
  *a1 = xmmword_319F10;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_4F0D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306E48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306DB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_306928();
  sub_306DA8();
  sub_306DF8();
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD708) + 36);
  v12 = sub_306078();
  (*(v3 + 16))(&v11[*(v12 + 20)], v5, v2);
  sub_56BF8(&qword_3FD778, &type metadata accessor for BounceSymbolEffect);
  sub_306D68();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v11[*(v12 + 24)] = 1;
  *a1 = v10;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6F0) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD720) + 28);
  sub_305C08();
  v15 = sub_305C28();
  (*(*(v15 - 8) + 56))(v13 + v14, 0, 1, v15);
  result = swift_getKeyPath();
  *v13 = result;
  return result;
}

uint64_t sub_4F390@<X0>(uint64_t a1@<X8>)
{
  swift_getErrorValue();
  result = sub_30D788();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_4F404@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v39 = sub_305FB8();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD9D0);
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = __chkstk_darwin(v5);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD9D8);
  v46 = *(v38 - 8);
  v10 = __chkstk_darwin(v38);
  v37 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = v34 - v12;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD9E0);
  sub_58A44();
  sub_305378();
  sub_4F8B4(&v48);
  v13 = v48;
  v14 = v49;
  v15 = v50;
  v16 = v52;
  v35 = v52;
  v17 = v51;
  v18 = sub_306238();
  v34[1] = v18;
  KeyPath = swift_getKeyPath();
  v36 = KeyPath;
  v56 = v16;
  v20 = sub_306848();
  v48 = v13;
  v49 = v14;
  v50 = v15;
  v51 = v17;
  v52 = v56;
  v53 = KeyPath;
  v54 = v18;
  v55 = v20;
  sub_305FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD9F0);
  sub_58AE8();
  v34[0] = v9;
  v21 = v39;
  sub_3065C8();
  (*(v41 + 8))(v4, v21);
  sub_58C58(v13, *(&v13 + 1), v14);

  v22 = *(v46 + 16);
  v23 = v37;
  v24 = v38;
  v22(v37, v45, v38);
  v26 = v42;
  v25 = v43;
  v27 = *(v42 + 16);
  v28 = v40;
  v27(v40, v9, v43);
  v29 = v44;
  v22(v44, v23, v24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA10);
  v27(&v29[*(v30 + 48)], v28, v25);
  v31 = *(v26 + 8);
  v31(v34[0], v25);
  v32 = *(v46 + 8);
  v32(v45, v24);
  v31(v28, v25);
  return (v32)(v23, v24);
}

double sub_4F8B4@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_304CA8();
  v3 = *(v38 - 8);
  v4 = __chkstk_darwin(v38);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - v8;
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_301CB8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_302668();
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_577C0(v2, v18, &type metadata accessor for JSPackageSourceLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v13 + 32))(v15, v18, v12);
      *&v40 = sub_301BD8();
      *(&v40 + 1) = v32;
      *&v41 = 0;
      *(&v41 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v42) = 1;

      sub_305D48();
      v40 = v43;
      v41 = v44;
      LOBYTE(v42) = v45;
      HIBYTE(v42) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
      sub_57858(&qword_3FD6C0, &qword_3FD6C8);
      sub_305D48();

      (*(v13 + 8))(v15, v12);
      goto LABEL_9;
    }

    v21 = v11;
    v22 = v11;
    v23 = v38;
    (*(v3 + 32))(v22, v18, v38);
    (*(v3 + 16))(v6, v21, v23);
    sub_304C88();
    v24 = sub_304C98();
    v26 = v25;
    v27 = *(v3 + 8);
    v27(v9, v23);
    *&v40 = v24;
    *(&v40 + 1) = v26;
    *&v41 = 0;
    *(&v41 + 1) = _swiftEmptyArrayStorage;
    LOBYTE(v42) = 0;

    sub_305D48();
    v40 = v43;
    v41 = v44;
    LOBYTE(v42) = v45;
    HIBYTE(v42) = 1;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    v21 = v11;
    v28 = v11;
    v23 = v38;
    (*(v3 + 32))(v28, v18, v38);
    (*(v3 + 16))(v6, v21, v23);
    sub_304C88();
    v29 = sub_304C98();
    v31 = v30;
    v27 = *(v3 + 8);
    v27(v9, v23);
    *&v40 = v29;
    *(&v40 + 1) = v31;
    *&v41 = 0;
    *(&v41 + 1) = _swiftEmptyArrayStorage;
    LOBYTE(v42) = 1;

    sub_305D48();
    v40 = v43;
    v41 = v44;
    v42 = v45;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_305D48();

    v27(v21, v23);
    goto LABEL_9;
  }

  (*(v13 + 32))(v15, v18, v12);
  *&v40 = sub_301BD8();
  *(&v40 + 1) = v20;
  *&v41 = 0;
  *(&v41 + 1) = _swiftEmptyArrayStorage;
  LOBYTE(v42) = 0;

  sub_305D48();
  v40 = v43;
  v41 = v44;
  v42 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
  sub_57858(&qword_3FD6C0, &qword_3FD6C8);
  sub_305D48();

  (*(v13 + 8))(v15, v12);
LABEL_9:
  result = *&v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v37 = v39;
  *v39 = v43;
  v37[1] = v34;
  *(v37 + 32) = v35;
  *(v37 + 33) = v36;
  return result;
}

__n128 sub_4FF0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_302668();
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_577C0(a1, v6, &type metadata accessor for JSPackageSourceLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = xmmword_319F30;
      v14.n128_u64[0] = 0;
      v14.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v15) = 0;
    }

    else
    {
      v13 = xmmword_319F20;
      v14.n128_u64[0] = 0;
      v14.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v15) = 1;
    }

    sub_305D48();
    v13 = v16;
    v14 = v17;
    LOBYTE(v15) = v18;
    HIBYTE(v15) = 1;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v13 = xmmword_319F40;
      v14.n128_u64[0] = 0;
      v14.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v15) = 1;
    }

    else
    {
      v13 = xmmword_319F50;
      v14.n128_u64[0] = 0;
      v14.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v15) = 0;
    }

    sub_305D48();
    v13 = v16;
    v14 = v17;
    v15 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
  sub_57858(&qword_3FD6C0, &qword_3FD6C8);
  sub_305D48();
  v11 = v17;
  v12 = v16;
  v8 = v18;
  v9 = v19;
  sub_57470(v6, &type metadata accessor for JSPackageSourceLocation);
  result = v11;
  *a2 = v12;
  *(a2 + 16) = result;
  *(a2 + 32) = v8;
  *(a2 + 33) = v9;
  return result;
}

double sub_501A4@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x656372756F53;
  *a1 = xmmword_319F60;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_501C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_305BE8();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD9C8);
  return sub_4F404(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_50218()
{
  v1 = v0;
  v2 = sub_306BB8();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_305A08();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD540);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  sub_EB00(v1, v11, &qword_3FD518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_34804(v11, v14, &qword_3FD540);
  }

  else
  {
    sub_30C7A8();
    v15 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7D0);
  if ((*(*(v16 - 8) + 48))(v14, 1, v16) == 1)
  {
    sub_EB68(v14, &qword_3FD540);
    v17 = 0;
  }

  else
  {
    sub_306B18();
    sub_EB68(v14, &qword_3FD7D0);
    v17 = sub_306BA8();
    (*(v19 + 8))(v4, v20);
  }

  return v17 & 1;
}

uint64_t sub_5057C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  OrderSection = type metadata accessor for JetPackLoadOrderSection(0);
  v4 = OrderSection - 8;
  v5 = *(OrderSection - 8);
  __chkstk_darwin(OrderSection);
  v44[4] = v6;
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7C8) - 8;
  v8 = __chkstk_darwin(v47);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = v44 - v10;
  v11 = (a1 + *(v4 + 28));
  v46 = a1;
  v12 = *v11;
  v13 = v11[1];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD520);
  sub_302308();
  v15 = *(v52 + 16);

  v44[2] = v13;
  v44[3] = v12;
  v44[1] = v14;
  sub_302308();
  v16 = sub_578D8(0, v15, v52);

  v52 = v16;
  v44[5] = swift_getKeyPath();
  v45 = type metadata accessor for JetPackLoadOrderSection;
  sub_577C0(a1, v7, type metadata accessor for JetPackLoadOrderSection);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_57EB0(v7, v18 + v17, type metadata accessor for JetPackLoadOrderSection);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_57F18;
  *(v19 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7E0);
  sub_EC8C(&qword_3FD7E8, &qword_3FD7D8);
  sub_56BF8(&qword_3FD7F0, &type metadata accessor for JSPackageLocation);
  sub_58040();
  v20 = v50;
  sub_306B38();
  v22 = v45;
  v21 = v46;
  sub_577C0(v46, v7, v45);
  v23 = swift_allocObject();
  sub_57EB0(v7, v23 + v17, type metadata accessor for JetPackLoadOrderSection);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_58374;
  *(v24 + 24) = v23;
  v25 = v20;
  v26 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD840) + 36));
  *v26 = sub_583E4;
  v26[1] = v24;
  sub_577C0(v21, v7, v22);
  v27 = swift_allocObject();
  sub_57EB0(v7, v27 + v17, type metadata accessor for JetPackLoadOrderSection);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_5840C;
  *(v28 + 24) = v27;
  v29 = (v25 + *(v47 + 44));
  *v29 = sub_5848C;
  v29[1] = v28;
  v30 = sub_50218();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (v30)
  {
    sub_302328();
    v31 = v52;
    v32 = v53;
    v33 = v54;
    v51 = 0;
    sub_306A08();
    v34 = v52;
    v35 = v53;
    v51 = 0;
    sub_306A08();
    v36 = v52;
    v37 = v53;
  }

  v38 = v25;
  v39 = v48;
  v40 = v37;
  sub_EB00(v38, v48, &qword_3FD7C8);
  v41 = v49;
  sub_EB00(v39, v49, &qword_3FD7C8);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD848) + 48));
  *v42 = v31;
  v42[1] = v32;
  v42[2] = v33;
  v42[3] = v34;
  v42[4] = v35;
  v42[5] = v36;
  v42[6] = v40;
  sub_584B8(v31, v32);
  sub_EB68(v50, &qword_3FD7C8);
  sub_58528(v31, v32);
  return sub_EB68(v39, &qword_3FD7C8);
}

uint64_t sub_50B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_305A88();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD868);
  sub_51094(a1, a2, (a3 + *(v6 + 44)));
  type metadata accessor for JetPackLoadOrderSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD520);
  sub_302308();
  v7 = *(v10 + 16);

  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD808) + 36)) = v7 < 2;
  v8 = sub_50218();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7E0);
  *(a3 + *(result + 36)) = (v8 & 1) == 0;
  return result;
}

uint64_t sub_50C60()
{
  type metadata accessor for JetPackLoadOrderSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD520);
  sub_302308();
  sub_EC8C(&qword_3FD850, &qword_3FD520);
  sub_EC8C(&qword_3FD858, &qword_3FD520);
  sub_30C608();
  return sub_302318();
}

uint64_t sub_50D74()
{
  type metadata accessor for JetPackLoadOrderSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD520);
  sub_302308();
  sub_EC8C(&qword_3FD850, &qword_3FD520);
  sub_30C008();
  return sub_302318();
}

uint64_t sub_50E60@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7A8);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  sub_304FE8();
  v9 = sub_306228();
  KeyPath = swift_getKeyPath();
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7B0) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  v12 = &v8[*(v3 + 44)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7B8) + 28);
  v14 = sub_306358();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *v12 = swift_getKeyPath();
  sub_EB00(v8, v6, &qword_3FD7A8);
  *a1 = xmmword_319F70;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7C0);
  sub_EB00(v6, a1 + *(v15 + 64), &qword_3FD7A8);
  sub_EBD8(0x64724F2064616F4CLL, 0xEA00000000007265, 0);

  sub_EB68(v8, &qword_3FD7A8);
  sub_EB68(v6, &qword_3FD7A8);
  sub_EBC8(0x64724F2064616F4CLL, 0xEA00000000007265, 0);
}

uint64_t sub_51094@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for JSPackageLocationView(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  result = sub_50218();
  if (result)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_5:
    sub_577C0(a2, v11, &type metadata accessor for JSPackageLocation);
    sub_577C0(v11, v9, type metadata accessor for JSPackageLocationView);
    *&v34 = v13;
    *(&v34 + 1) = v14;
    *&v35 = v17;
    *(&v35 + 1) = v15;
    *&v36 = v16;
    *(&v36 + 1) = v18;
    *v37 = v19;
    *&v37[8] = v20;
    *&v37[16] = v21;
    v37[24] = 0;
    v31 = *v37;
    a3[2] = v36;
    a3[3] = v31;
    *(a3 + 57) = *&v37[9];
    v32 = v35;
    *a3 = v34;
    a3[1] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD870);
    sub_577C0(v9, a3 + *(v33 + 48), type metadata accessor for JSPackageLocationView);
    sub_EB00(&v34, v38, &qword_3FD878);
    sub_57470(v11, type metadata accessor for JSPackageLocationView);
    sub_57470(v9, type metadata accessor for JSPackageLocationView);
    v38[0] = v13;
    v38[1] = v14;
    v38[2] = v17;
    v38[3] = v15;
    v38[4] = v16;
    v38[5] = v18;
    v38[6] = v19;
    v38[7] = v20;
    v38[8] = v21;
    v39 = 0;
    return sub_EB68(v38, &qword_3FD878);
  }

  if (!__OFADD__(a1, 1))
  {
    v38[0] = a1 + 1;
    sub_30D6D8();
    v38[0] = sub_306848();
    v13 = sub_306348();
    v14 = v22;
    v24 = v23;
    v15 = v25;

    v26 = sub_306118();
    sub_304FD8();
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    LOBYTE(v38[0]) = v24 & 1;
    LOBYTE(v34) = 0;
    v17 = v24 & 1;
    v16 = v26;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_51384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD780);
  __chkstk_darwin(v1);
  v3 = &v6[-v2];
  v7 = v0;
  *v3 = sub_305AA8();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD788);
  sub_50E60(&v3[*(v4 + 44)]);
  v8 = 0xD0000000000000A8;
  v9 = 0x8000000000337020;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD790);
  sub_EC8C(&qword_3FD798, &qword_3FD780);
  sub_EC8C(&qword_3FD7A0, &qword_3FD790);
  return sub_306B78();
}

uint64_t sub_51540@<X0>(uint64_t a1@<X8>)
{
  sub_5170C(&v31);
  v20 = *(&v31 + 1);
  v21 = v31;
  v18 = v33;
  v19 = v32;
  v2 = v35;
  v17 = v34;
  sub_51A14(&v31);
  v3 = v31;
  v4 = v32;
  v5 = v33;
  v6 = v34;
  v7 = v35;
  v8 = sub_306238();
  KeyPath = swift_getKeyPath();
  v25 = v7;
  v10 = sub_306848();
  v11 = swift_getKeyPath();
  v12 = v25;
  v24 = v2;
  v26 = v3;
  *&v27 = v4;
  *(&v27 + 1) = v5;
  LOBYTE(v28) = v6;
  BYTE1(v28) = v25;
  *(&v28 + 1) = KeyPath;
  *&v29 = v8;
  *(&v29 + 1) = v11;
  v30 = v10;
  *&v23[70] = v10;
  *&v23[22] = v27;
  *&v23[54] = v29;
  *&v23[6] = v3;
  *&v23[38] = v28;
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 33) = v2;
  v13 = *&v23[16];
  *(a1 + 34) = *v23;
  v14 = *&v23[32];
  v15 = *&v23[48];
  *(a1 + 96) = *&v23[62];
  *(a1 + 82) = v15;
  *(a1 + 66) = v14;
  *(a1 + 50) = v13;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v12;
  v36 = KeyPath;
  v37 = v8;
  v38 = v11;
  v39 = v10;
  sub_590B0(v21, v20, v19);
  sub_EB00(&v26, v22, &qword_3FDAB8);
  sub_EB68(&v31, &qword_3FDAB8);
  return sub_58C58(v21, v20, v19);
}

uint64_t sub_5170C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3021D8();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_577C0(v2, v6, &type metadata accessor for JSPackageLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = xmmword_319F50;
      *&v16 = 0;
      *(&v16 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v17) = 0;
    }

    else
    {
      v15 = xmmword_319F40;
      *&v16 = 0;
      *(&v16 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v17) = 1;
    }

    sub_305D48();
    v15 = v18;
    v16 = v19;
    v17 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    result = sub_305D48();
    v12 = v18;
    v11 = v19;
    v8 = v20;
    v9 = v21;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v15 = xmmword_319F20;
      *&v16 = 0;
      *(&v16 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v17) = 1;
    }

    else
    {
      v15 = xmmword_319F30;
      *&v16 = 0;
      *(&v16 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v17) = 0;
    }

    sub_305D48();
    v15 = v18;
    v16 = v19;
    LOBYTE(v17) = v20;
    HIBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_305D48();
    v13 = v18;
    v14 = v19;
    v8 = v20;
    v9 = v21;
    result = sub_57470(v6, &type metadata accessor for JSPackageLocation);
    v12 = v13;
    v11 = v14;
  }

  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v8;
  *(a1 + 33) = v9;
  return result;
}

double sub_51A14@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_301CB8();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_304CA8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = sub_3021D8();
  __chkstk_darwin(v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_577C0(v2, v18, &type metadata accessor for JSPackageLocation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *&v33 = 0xD00000000000002CLL;
      *(&v33 + 1) = 0x8000000000337150;
      *&v34 = 0;
      *(&v34 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v35) = 0;
    }

    else
    {
      *&v33 = 0xD00000000000003FLL;
      *(&v33 + 1) = 0x8000000000337110;
      *&v34 = 0;
      *(&v34 + 1) = _swiftEmptyArrayStorage;
      LOBYTE(v35) = 1;
    }

    sub_305D48();
    v33 = v36;
    v34 = v37;
    v35 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_305D48();
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v31;
    (*(v31 + 32))(v5, v18, v3);
    *&v33 = sub_301BD8();
    *(&v33 + 1) = v25;
    *&v34 = 0;
    *(&v34 + 1) = _swiftEmptyArrayStorage;
    LOBYTE(v35) = 1;

    sub_305D48();
    v33 = v36;
    v34 = v37;
    LOBYTE(v35) = v38;
    HIBYTE(v35) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_305D48();

    (*(v24 + 8))(v5, v3);
  }

  else
  {
    (*(v7 + 32))(v15, v18, v6);
    (*(v7 + 16))(v10, v15, v6);
    sub_304C88();
    v20 = sub_304C98();
    v22 = v21;
    v23 = *(v7 + 8);
    v23(v13, v6);
    *&v33 = v20;
    *(&v33 + 1) = v22;
    *&v34 = 0;
    *(&v34 + 1) = _swiftEmptyArrayStorage;
    LOBYTE(v35) = 0;

    sub_305D48();
    v33 = v36;
    v34 = v37;
    LOBYTE(v35) = v38;
    HIBYTE(v35) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD6C8);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_305D48();

    v23(v15, v6);
  }

  result = *&v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v32;
  *v32 = v36;
  v30[1] = v27;
  *(v30 + 32) = v28;
  *(v30 + 33) = v29;
  return result;
}

double sub_51F98@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_305BE8();
  v17 = 0;
  sub_51540(&v9);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v11;
  v25[3] = v12;
  v25[4] = v13;
  v25[5] = v14;
  v25[6] = v15;
  sub_EB00(&v18, &v8, &qword_3FDAB0);
  sub_EB68(v25, &qword_3FDAB0);
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  *&v16[39] = v20;
  v3 = *&v16[80];
  *(a1 + 81) = *&v16[64];
  *(a1 + 97) = v3;
  *(a1 + 113) = *&v16[96];
  v4 = *&v16[16];
  *(a1 + 17) = *v16;
  *(a1 + 33) = v4;
  result = *&v16[32];
  v6 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  v7 = v17;
  *a1 = v2;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v7;
  *(a1 + 128) = *&v16[111];
  *(a1 + 65) = v6;
  return result;
}

uint64_t sub_520C4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA18);
  __chkstk_darwin(v20);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA20);
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  __chkstk_darwin(v4);
  v18 = &v17 - v6;
  *v3 = sub_305AA8();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA28);
  sub_52518(v1, &v3[*(v7 + 44)]);
  v25 = *(v1 + 24);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA30);
  sub_306A38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA38);
  sub_3040F8();
  *(swift_allocObject() + 16) = xmmword_315420;
  sub_3040B8();
  sub_3040D8();
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = *(v1 + 48);
  sub_58CA4(v1, v24);
  v10 = sub_EC8C(&qword_3FDA40, &qword_3FDA18);
  v11 = v20;
  sub_306568();

  sub_EB68(v3, &qword_3FDA18);
  v25 = *(v1 + 40);
  sub_306A38();
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  sub_58CA4(v1, v24);
  type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v24[0] = v11;
  v24[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_56BF8(&qword_3FDA48, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v14 = v21;
  v15 = v18;
  sub_3067A8();

  return (*(v22 + 8))(v15, v14);
}

uint64_t sub_52518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA68);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA78);
  sub_58DE4();
  sub_EC8C(&qword_3FDA98, &qword_3FDA78);
  sub_3062C8();
  v11 = *(v5 + 16);
  v11(v8, v10, v4);
  *a2 = xmmword_319F80;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAA0);
  v11((a2 + *(v12 + 64)), v8, v4);
  sub_EBD8(0x61636F4C20646441, 0xEC0000006E6F6974, 0);
  v13 = *(v5 + 8);

  v13(v10, v4);
  v13(v8, v4);
  sub_EBC8(0x61636F4C20646441, 0xEC0000006E6F6974, 0);
}

uint64_t sub_527A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD490);
  v3 = *(v73 - 8);
  v4 = __chkstk_darwin(v73);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = &v64 - v7;
  v8 = __chkstk_darwin(v6);
  v66 = &v64 - v9;
  __chkstk_darwin(v8);
  v74 = &v64 - v10;
  v11 = sub_3021D8();
  v12 = __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD470);
  v18 = __chkstk_darwin(v17 - 8);
  v65 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v72 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v71 = &v64 - v23;
  __chkstk_darwin(v22);
  v75 = &v64 - v24;
  v79 = *a1;
  v80 = *(a1 + 16);
  v76 = *a1;
  v77 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA50);
  sub_306B18();
  v25 = v78;
  swift_storeEnumTagMultiPayload();
  v26 = 0;
  v27 = *(v25 + 16);
  while (v27 != v26)
  {
    v28 = v26 + 1;
    v29 = sub_3021C8();
    v26 = v28;
    if (v29)
    {

      sub_57470(v16, &type metadata accessor for JSPackageLocation);
      v30 = 1;
      v31 = v73;
      v32 = v75;
      goto LABEL_6;
    }
  }

  sub_57470(v16, &type metadata accessor for JSPackageLocation);
  v33 = swift_allocObject();
  v34 = *(a1 + 16);
  *(v33 + 16) = *a1;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(a1 + 32);
  *(v33 + 64) = *(a1 + 48);
  sub_58CA4(a1, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
  sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
  v35 = v74;
  sub_306A68();
  v32 = v75;
  v31 = v73;
  (*(v3 + 32))(v75, v35, v73);
  v30 = 0;
LABEL_6:
  v70 = v3;
  v64 = *(v3 + 56);
  v64(v32, v30, 1, v31);
  v76 = v79;
  v77 = v80;
  sub_306B18();
  v36 = v78;
  swift_storeEnumTagMultiPayload();
  v37 = 0;
  v38 = *(v36 + 16);
  v39 = v74;
  v40 = v71;
  while (v38 != v37)
  {
    v41 = v37 + 1;
    v42 = sub_3021C8();
    v37 = v41;
    if (v42)
    {

      sub_57470(v14, &type metadata accessor for JSPackageLocation);
      v43 = 1;
      v44 = v70;
      v45 = v73;
      goto LABEL_11;
    }
  }

  sub_57470(v14, &type metadata accessor for JSPackageLocation);
  v46 = swift_allocObject();
  v47 = *(a1 + 16);
  *(v46 + 16) = *a1;
  *(v46 + 32) = v47;
  *(v46 + 48) = *(a1 + 32);
  *(v46 + 64) = *(a1 + 48);
  sub_58CA4(a1, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
  sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
  sub_306A68();
  v44 = v70;
  v45 = v73;
  (*(v70 + 32))(v40, v39, v73);
  v43 = 0;
LABEL_11:
  v64(v40, v43, 1, v45);
  v48 = swift_allocObject();
  v49 = *(a1 + 16);
  *(v48 + 16) = *a1;
  *(v48 + 32) = v49;
  *(v48 + 48) = *(a1 + 32);
  *(v48 + 64) = *(a1 + 48);
  sub_58CA4(a1, &v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD4B8);
  sub_EC8C(&qword_3FD4C0, &qword_3FD4B8);
  v50 = v39;
  sub_306A68();
  v51 = swift_allocObject();
  v52 = *(a1 + 16);
  *(v51 + 16) = *a1;
  *(v51 + 32) = v52;
  *(v51 + 48) = *(a1 + 32);
  *(v51 + 64) = *(a1 + 48);
  sub_58CA4(a1, &v76);
  v53 = v40;
  v54 = v66;
  sub_306A68();
  v55 = v72;
  sub_EB00(v75, v72, &qword_3FD470);
  v56 = v65;
  sub_EB00(v53, v65, &qword_3FD470);
  v57 = *(v44 + 16);
  v58 = v68;
  v57(v68, v50, v45);
  v59 = v69;
  v57(v69, v54, v45);
  v60 = v67;
  sub_EB00(v55, v67, &qword_3FD470);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAA8);
  sub_EB00(v56, v60 + v61[12], &qword_3FD470);
  v57((v60 + v61[16]), v58, v45);
  v57((v60 + v61[20]), v59, v45);
  v62 = *(v44 + 8);
  v62(v54, v45);
  v62(v74, v45);
  sub_EB68(v71, &qword_3FD470);
  sub_EB68(v75, &qword_3FD470);
  v62(v59, v45);
  v62(v58, v45);
  sub_EB68(v56, &qword_3FD470);
  return sub_EB68(v72, &qword_3FD470);
}

uint64_t sub_5313C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_306928();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA90) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC798) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = sub_306958();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA70);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_53238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  v3 = sub_301CB8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA58);
  sub_30D878();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_EB68(v2, &qword_3FB8E0);
  }

  (*(v4 + 32))(v6, v2, v3);
  if (sub_301C48())
  {
    sub_53400(v6);
    sub_301C28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_53400(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406680);
  __chkstk_darwin(v2 - 8);
  v65 = &v65 - v3;
  v66 = sub_3021D8();
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA60);
  __chkstk_darwin(v5 - 8);
  v70 = &v65 - v6;
  v7 = sub_304CA8();
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_301DF8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_301CB8();
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  v15 = __chkstk_darwin(v13);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v74 = a1;
  sub_301C08(v24);
  v26 = v25;
  v82 = 0;
  v27 = [v23 URLForDirectory:99 inDomain:1 appropriateForURL:v25 create:1 error:&v82];

  v28 = v82;
  if (v27)
  {
    sub_301C38();
    v29 = v28;

    sub_301DE8();
    sub_301DD8();
    (*(v10 + 8))(v12, v9);
    sub_301C18();

    v30 = [v22 defaultManager];
    sub_301C08(v31);
    v33 = v32;
    sub_301C08(v34);
    v36 = v35;
    v82 = 0;
    v37 = [v30 copyItemAtURL:v33 toURL:v35 error:&v82];

    v38 = v82;
    if (v37)
    {
      v40 = v75;
      v39 = v76;
      (*(v76 + 16))(v69, v19, v75);
      v41 = v38;
      v42 = v70;
      sub_304C78();
      v43 = v72;
      v44 = v73;
      if ((*(v72 + 48))(v42, 1, v73) == 1)
      {
        v45 = *(v39 + 8);
        v45(v19, v40);
        v45(v21, v40);
        return sub_EB68(v42, &qword_3FDA60);
      }

      else
      {
        v69 = v19;
        v74 = v21;
        v51 = v71;
        (*(v43 + 32))(v71, v42, v44);
        (*(v43 + 16))(v77, v51, v44);
        swift_storeEnumTagMultiPayload();
        v53 = *v67;
        v52 = *(v67 + 8);
        v54 = *(v67 + 16);
        v84 = v54;
        v85 = v53;
        v80 = v54;
        v82 = v53;
        v83 = v52;
        sub_58D2C(&v85, v81);

        sub_EB00(&v80, v81, &qword_3FD520);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA50);
        sub_306B18();
        v55 = 0;
        v56 = *(v81[0] + 16);
        while (v56 != v55)
        {
          v57 = v55 + 1;
          v58 = sub_3021C8();
          v55 = v57;
          if (v58)
          {

            sub_58D88(&v85);

            sub_EB68(&v80, &qword_3FD520);
            sub_57470(v77, &type metadata accessor for JSPackageLocation);
            (*(v72 + 8))(v71, v73);
            v59 = *(v76 + 8);
            v59(v69, v40);
            return (v59)(v74, v40);
          }
        }

        v82 = v53;
        v83 = v52;
        v84 = v54;
        sub_306B18();
        v60 = v65;
        sub_577C0(v77, v65, &type metadata accessor for JSPackageLocation);
        v61 = v79;
        v62 = v79[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v61;
        if (!isUniquelyReferenced_nonNull_native || v62 >= v61[3] >> 1)
        {
          v61 = sub_CA838(isUniquelyReferenced_nonNull_native, v62 + 1, 1, v61);
          v79 = v61;
        }

        sub_17F02C(0, 0, 1, v60);
        v81[0] = v53;
        v81[1] = v52;
        v81[2] = v54;
        v78 = v61;
        sub_306B28();
        sub_58D88(&v85);

        sub_EB68(&v80, &qword_3FD520);
        sub_57470(v77, &type metadata accessor for JSPackageLocation);
        (*(v72 + 8))(v71, v73);
        v64 = *(v76 + 8);
        v64(v69, v40);
        return (v64)(v74, v40);
      }
    }

    else
    {
      v48 = v82;
      sub_301B48();

      swift_willThrow();
      v49 = v75;
      v50 = *(v76 + 8);
      v50(v19, v75);
      return (v50)(v21, v49);
    }
  }

  else
  {
    v47 = v82;
    sub_301B48();

    return swift_willThrow();
  }
}

double sub_53CC4@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  v6 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v7 = v6[5];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v6[6];
  sub_58CA4(a1, &v14);
  *v8 = sub_305028() & 1;
  *(v8 + 1) = v9;
  v8[16] = v10 & 1;
  v11 = a2 + v6[7];
  sub_306A08();
  result = *&v14;
  v13 = v15;
  *v11 = v14;
  *(v11 + 2) = v13;
  *a2 = sub_58D04;
  a2[1] = v4;
  return result;
}

uint64_t sub_53DE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406680);
  __chkstk_darwin(v1 - 8);
  v3 = &v19[-1] - v2;
  v4 = sub_3021D8();
  __chkstk_darwin(v4);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301BC8();
  swift_storeEnumTagMultiPayload();
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v24 = v9;
  v25 = v8;
  v21 = v8;
  v22 = v7;
  v23 = v9;
  sub_58D2C(&v25, v19);

  sub_EB00(&v24, v19, &qword_3FD520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA50);
  sub_306B18();
  v10 = 0;
  v11 = *(v19[0] + 16);
  while (v11 != v10)
  {
    v12 = v10 + 1;
    v13 = sub_3021C8();
    v10 = v12;
    if (v13)
    {

      goto LABEL_9;
    }
  }

  v21 = v8;
  v22 = v7;
  v23 = v9;
  sub_306B18();
  sub_577C0(v6, v3, &type metadata accessor for JSPackageLocation);
  v14 = v20;
  v15 = v20[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v14;
  if (!isUniquelyReferenced_nonNull_native || v15 >= v14[3] >> 1)
  {
    v14 = sub_CA838(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v14);
    v20 = v14;
  }

  sub_17F02C(0, 0, 1, v3);
  v19[0] = v8;
  v19[1] = v7;
  v19[2] = v9;
  v18 = v14;
  sub_306B28();
LABEL_9:
  sub_58D88(&v25);

  sub_EB68(&v24, &qword_3FD520);
  return sub_57470(v6, &type metadata accessor for JSPackageLocation);
}

double sub_5410C@<D0>(uint64_t a1@<X8>)
{
  *&result = 6775106;
  *a1 = xmmword_319F50;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_5412C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_306928();
  *a1 = result;
  return result;
}

uint64_t sub_54160(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406680);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = sub_3021D8();
  __chkstk_darwin(v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v18 = v10;
  v19 = v9;
  v16[3] = v9;
  v16[4] = v8;
  v16[5] = v10;
  sub_58D2C(&v19, v16);

  sub_EB00(&v18, v16, &qword_3FD520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDA50);
  sub_306B18();
  sub_57EB0(v7, v4, &type metadata accessor for JSPackageLocation);
  v11 = v17;
  v12 = v17[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v11;
  if (!isUniquelyReferenced_nonNull_native || v12 >= v11[3] >> 1)
  {
    v11 = sub_CA838(isUniquelyReferenced_nonNull_native, v12 + 1, 1, v11);
    v17 = v11;
  }

  sub_17F02C(0, 0, 1, v4);
  v16[0] = v9;
  v16[1] = v8;
  v16[2] = v10;
  v15 = v11;
  sub_306B28();
  sub_58D88(&v19);

  return sub_EB68(&v18, &qword_3FD520);
}

double sub_543BC@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x656C646E7542;
  *a1 = xmmword_319F40;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_543DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_306928();
  *a1 = result;
  return result;
}

double sub_54470@<D0>(uint64_t a1@<X8>)
{
  result = 1.32319208e199;
  *a1 = xmmword_319F30;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_54490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_306928();
  *a1 = result;
  return result;
}

double sub_54518@<D0>(uint64_t a1@<X8>)
{
  result = 1.14761076e102;
  *a1 = xmmword_319F20;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_54538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_306928();
  *a1 = result;
  return result;
}

uint64_t sub_545B0()
{
  v1 = sub_305228();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-v6];
  v8 = sub_301CB8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v0 + *(type metadata accessor for AddRemoteURLJSPackageLocationSheet(0) + 28);
  v13 = *v12;
  v14 = *(v12 + 2);
  *&v16[24] = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC40);
  sub_306A18();
  sub_301CA8();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_EB68(v7, &qword_3FB8E0);
  }

  (*(v9 + 32))(v11, v7, v8);
  (*v0)(v11);
  sub_33AA8(v4);
  sub_305218();
  (*(v2 + 8))(v4, v1);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_5484C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v52 = *(v3 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v3 - 8);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBA0);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBA8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBB0);
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBB8);
  v15 = *(v47 - 8);
  __chkstk_darwin(v47);
  v17 = v46 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBC0);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v19 = v46 - v18;
  *v7 = sub_305BD8();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBC8);
  sub_54EAC(v2, &v7[*(v20 + 44)]);
  sub_306C58();
  sub_305638();
  sub_34804(v7, v11, &qword_3FDBA0);
  v21 = &v11[*(v9 + 44)];
  v22 = v61;
  *(v21 + 4) = v60;
  *(v21 + 5) = v22;
  *(v21 + 6) = v62;
  v23 = v57;
  *v21 = v56;
  *(v21 + 1) = v23;
  v24 = v59;
  *(v21 + 2) = v58;
  *(v21 + 3) = v24;
  LOBYTE(v7) = sub_3060C8();
  sub_304FD8();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_34804(v11, v14, &qword_3FDBA8);
  v33 = &v14[*(v12 + 36)];
  *v33 = v7;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBD0);
  v34 = sub_305B58();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_315430;
  sub_305B48();
  sub_1769DC(v37);
  swift_setDeallocating();
  (*(v35 + 8))(v37 + v36, v34);
  swift_deallocClassInstance();
  v38 = sub_59654();
  sub_306708();

  sub_EB68(v14, &qword_3FDBB0);
  v54 = v12;
  v55 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v47;
  sub_306778();
  (*(v15 + 8))(v17, v39);
  v40 = v50;
  sub_577C0(v46[1], v50, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v41 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v42 = swift_allocObject();
  sub_57EB0(v40, v42 + v41, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v43 = v53;
  (*(v48 + 32))(v53, v19, v49);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBF0);
  v45 = (v43 + *(result + 36));
  *v45 = sub_5979C;
  v45[1] = v42;
  v45[2] = 0;
  v45[3] = 0;
  return result;
}

uint64_t sub_54EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC00);
  v4 = __chkstk_darwin(v3 - 8);
  v99 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v103 = (&v75 - v6);
  v98 = sub_3053F8();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v9 = v8 - 8;
  v95 = *(v8 - 8);
  v94 = *(v95 + 64);
  __chkstk_darwin(v8);
  v93 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_306038();
  v81 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC08);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC10);
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC18);
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v21 = &v75 - v20;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC20);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = &v75 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC28);
  v83 = *(v86 - 8);
  __chkstk_darwin(v86);
  v76 = &v75 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC30);
  __chkstk_darwin(v79);
  v77 = &v75 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC38);
  v102 = *(v92 - 8);
  v25 = __chkstk_darwin(v92);
  v91 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v101 = &v75 - v27;
  sub_306208();
  v88 = sub_306388();
  v87 = v28;
  v89 = v29;
  v90 = v30;

  v31 = a1 + *(v9 + 36);
  v32 = *v31;
  v33 = *(v31 + 16);
  v104 = v32;
  v105 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC40);
  sub_306A38();
  sub_306CF8();
  sub_306C58();
  sub_305638();
  (*(v14 + 32))(v19, v16, v13);
  v34 = &v19[*(v17 + 36)];
  v35 = v112;
  *(v34 + 4) = v111;
  *(v34 + 5) = v35;
  *(v34 + 6) = v113;
  v36 = v108;
  *v34 = v107;
  *(v34 + 1) = v36;
  v37 = v110;
  *(v34 + 2) = v109;
  *(v34 + 3) = v37;
  sub_306028();
  v38 = sub_597B4();
  v39 = sub_56BF8(&qword_3FDC58, &type metadata accessor for RoundedBorderTextFieldStyle);
  v40 = v21;
  v41 = v78;
  sub_3065F8();
  (*(v81 + 8))(v12, v41);
  sub_EB68(v19, &qword_3FDC10);
  v42 = a1 + *(v9 + 32);
  v43 = *v42;
  v44 = *(v42 + 8);
  LOBYTE(v42) = *(v42 + 16);
  LOBYTE(v104) = v43;
  *(&v104 + 1) = v44;
  LOBYTE(v105) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBF8);
  sub_305018();
  *&v104 = v17;
  *(&v104 + 1) = v41;
  v105 = v38;
  v106 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v75;
  v47 = v80;
  sub_3067B8();

  (*(v82 + 8))(v40, v47);
  *&v104 = v47;
  *(&v104 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v76;
  v49 = v84;
  sub_306578();
  (*(v85 + 8))(v46, v49);
  KeyPath = swift_getKeyPath();
  v51 = sub_30C0D8();
  v53 = v52;
  v54 = v77;
  (*(v83 + 32))(v77, v48, v86);
  v55 = (v54 + *(v79 + 36));
  *v55 = KeyPath;
  v55[1] = v51;
  v55[2] = v53;
  v56 = v93;
  sub_577C0(a1, v93, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v57 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v58 = swift_allocObject();
  sub_57EB0(v56, v58 + v57, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v59 = v96;
  sub_3053E8();
  sub_59A2C();
  v60 = v101;
  sub_3067F8();

  (*(v97 + 8))(v59, v98);
  sub_EB68(v54, &qword_3FDC30);
  v61 = sub_305AA8();
  v62 = v103;
  *v103 = v61;
  v62[1] = 0;
  *(v62 + 16) = 1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC78);
  sub_55B80(a1, v62 + *(v63 + 44));
  v64 = *(v102 + 16);
  v65 = v91;
  v66 = v92;
  v64(v91, v60, v92);
  v67 = v99;
  sub_EB00(v62, v99, &qword_3FDC00);
  v68 = v100;
  v69 = v88;
  v70 = v87;
  *v100 = v88;
  v68[1] = v70;
  LODWORD(v98) = v89 & 1;
  *(v68 + 16) = v89 & 1;
  v68[3] = v90;
  v71 = v68;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC80);
  v64(v71 + *(v72 + 48), v65, v66);
  sub_EB00(v67, v71 + *(v72 + 64), &qword_3FDC00);
  LOBYTE(v53) = v98;
  sub_EBD8(v69, v70, v98);

  sub_EB68(v103, &qword_3FDC00);
  v73 = *(v102 + 8);
  v73(v101, v66);
  sub_EB68(v67, &qword_3FDC00);
  v73(v65, v66);
  sub_EBC8(v69, v70, v53);
}

uint64_t sub_55B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[1] = a1;
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC88);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = v39 - v6;
  v7 = sub_305BC8();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v39[0] = *(v11 - 8);
  v12 = *(v39[0] + 64);
  __chkstk_darwin(v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD678);
  __chkstk_darwin(v13 - 8);
  v15 = v39 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC90);
  v16 = *(v40 - 8);
  __chkstk_darwin(v40);
  v18 = v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC98);
  v20 = v19 - 8;
  v21 = __chkstk_darwin(v19);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v39 - v24;
  sub_304FB8();
  v26 = sub_304FC8();
  (*(*(v26 - 8) + 56))(v15, 0, 1, v26);
  sub_577C0(a1, v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v27 = (*(v39[0] + 80) + 16) & ~*(v39[0] + 80);
  v28 = swift_allocObject();
  sub_57EB0(v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC818);
  sub_351A4();
  sub_306A58();
  sub_305BB8();
  sub_EC8C(&qword_3FDCA0, &qword_3FDC90);
  sub_56BF8(&qword_3FDCA8, &type metadata accessor for BorderedButtonStyle);
  v30 = v40;
  v29 = v41;
  sub_3064E8();
  (*(v42 + 8))(v10, v29);
  (*(v16 + 8))(v18, v30);
  v31 = sub_306828();
  KeyPath = swift_getKeyPath();
  v33 = &v25[*(v20 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = v43;
  sub_56140(v43);
  sub_EB00(v25, v23, &qword_3FDC98);
  v35 = v44;
  sub_EB00(v34, v44, &qword_3FDC88);
  v36 = v45;
  sub_EB00(v23, v45, &qword_3FDC98);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCB0);
  sub_EB00(v35, v36 + *(v37 + 48), &qword_3FDC88);
  sub_EB68(v34, &qword_3FDC88);
  sub_EB68(v25, &qword_3FDC98);
  sub_EB68(v35, &qword_3FDC88);
  return sub_EB68(v23, &qword_3FDC98);
}

uint64_t sub_56140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v3 - 8);
  v42 = &v37 - v4;
  v5 = sub_306058();
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC90);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCB8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v38 = &v37 - v19;
  sub_577C0(v2, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_57EB0(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC818);
  sub_351A4();
  sub_306A68();
  sub_306048();
  sub_EC8C(&qword_3FDCA0, &qword_3FDC90);
  sub_56BF8(&qword_3FDCC0, &type metadata accessor for BorderedProminentButtonStyle);
  v22 = v38;
  v23 = v40;
  sub_3064E8();
  (*(v41 + 8))(v8, v23);
  (*(v14 + 8))(v16, v13);
  v24 = sub_306828();
  KeyPath = swift_getKeyPath();
  v26 = (v22 + *(v18 + 44));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = (v39 + *(v10 + 36));
  v28 = *v27;
  v29 = *(v27 + 2);
  v44 = v28;
  v45 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC40);
  sub_306A18();
  v30 = v42;
  sub_301CA8();

  v31 = sub_301CB8();
  LOBYTE(v10) = (*(*(v31 - 8) + 48))(v30, 1, v31) == 1;
  sub_EB68(v30, &qword_3FB8E0);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v10;
  v34 = v43;
  sub_34804(v22, v43, &qword_3FDCB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDC88);
  v36 = (v34 + *(result + 36));
  *v36 = v32;
  v36[1] = sub_3CEE8;
  v36[2] = v33;
  return result;
}

uint64_t sub_56678()
{
  type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDBF8);
  return sub_305008();
}

uint64_t sub_566F4(uint64_t a1)
{
  v16 = sub_305A08();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_305228();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  sub_EB00(a1 + *(v12 + 20), v7, &qword_3FC6A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_30C7A8();
    v13 = sub_306088();
    sub_304108();

    sub_3059F8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_305218();
  return (*(v9 + 8))(v11, v8);
}

__n128 sub_56994@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  sub_306C58();
  sub_305638();
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  result = v8;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  return result;
}

uint64_t sub_56A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD540);
  __chkstk_darwin(v2 - 8);
  sub_EB00(a1, &v5 - v3, &qword_3FD540);
  return sub_305968();
}

unint64_t sub_56B44()
{
  result = qword_3FD528;
  if (!qword_3FD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD520);
    sub_56BF8(&qword_3FD530, &type metadata accessor for JSPackageLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD528);
  }

  return result;
}

uint64_t sub_56BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_56C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD548);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_56D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD548);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_56DF4()
{
  sub_56ED0(319, &qword_3FD5B8, &qword_3FD540, &unk_31B390, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_56ED0(319, &unk_3FD5C0, &qword_3FD520, &unk_31A128, &type metadata accessor for UserDefaultsStorage);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_56ED0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_56F40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_56F88(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_56FE0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD4E0);
  sub_EC8C(&qword_3FD4F8, &qword_3FD4E0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_570C8()
{
  result = qword_3FD608;
  if (!qword_3FD608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD600);
    sub_57154();
    sub_57234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD608);
  }

  return result;
}

unint64_t sub_57154()
{
  result = qword_3FD610;
  if (!qword_3FD610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD618);
    sub_EC8C(&qword_3FD620, &qword_3FD628);
    sub_EC8C(&qword_3FD630, &qword_3FD638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD610);
  }

  return result;
}

unint64_t sub_57234()
{
  result = qword_3FD640;
  if (!qword_3FD640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD648);
    sub_EC8C(&qword_3FD650, &qword_3FD658);
    sub_EC8C(&qword_3FD620, &qword_3FD628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD640);
  }

  return result;
}

unint64_t sub_57358()
{
  result = qword_3FD668;
  if (!qword_3FD668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD660);
    sub_EC8C(&qword_3FB838, &qword_3FB808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD668);
  }

  return result;
}

uint64_t sub_57410()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_57470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_574E0()
{
  result = qword_3FD6B8;
  if (!qword_3FD6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD6B0);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    sub_57594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD6B8);
  }

  return result;
}

unint64_t sub_57594()
{
  result = qword_3FD6D0;
  if (!qword_3FD6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD6D8);
    sub_EC8C(&qword_3FD6E0, &qword_3FD6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD6D0);
  }

  return result;
}

unint64_t sub_57644()
{
  result = qword_3FD6F8;
  if (!qword_3FD6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD6F0);
    sub_576FC();
    sub_EC8C(&qword_3FD718, &qword_3FD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD6F8);
  }

  return result;
}

unint64_t sub_576FC()
{
  result = qword_3FD700;
  if (!qword_3FD700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD708);
    sub_56BF8(&qword_3FD710, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD700);
  }

  return result;
}

uint64_t sub_577C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_57858(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_578D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD860);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (&v66 - v12);
  result = __chkstk_darwin(v11);
  v72 = &v66 - v15;
  v16 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v17 = *(a3 + 16);
  if (v17 >= v16)
  {
    v18 = a2 - a1;
  }

  else
  {
    v18 = *(a3 + 16);
  }

  v74 = a1;
  v69 = v13;
  if (!v18)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  if (v18 <= 0)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_15:

LABEL_16:
    v23 = *(v77 + 80);
    v24 = v21[3];

    if ((v16 & 0x8000000000000000) == 0)
    {
      v67 = (v23 + 32) & ~v23;
      v68 = v23;
      v25 = v21 + v67;
      v26 = v24 >> 1;
      v71 = a3;
      v73 = a2;
      v75 = v17;
      if (!v18)
      {
        v38 = a2;
        v39 = v74;
        v40 = v74;
        if (v74 != a2)
        {
          goto LABEL_32;
        }

LABEL_27:
        v41 = v21;
LABEL_28:
        v42 = v41[3];
        if (v42 >= 2)
        {
          v43 = v42 >> 1;
          v44 = __OFSUB__(v43, v26);
          v45 = v43 - v26;
          if (v44)
          {
LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          v41[2] = v45;
        }

        return v41;
      }

      v27 = v74;
      if (a2 >= v74)
      {
        v28 = sub_3021D8();
        v29 = 0;
        v30 = *(v28 - 8);
        result = v28 - 8;
        v31 = v30;
        v32 = a3 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
        v26 -= v18;
        v33 = v27 - a2;
        do
        {
          if (!(v33 + v29))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
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
            goto LABEL_74;
          }

          v34 = v74 + v29;
          if (v74 + v29 >= v73)
          {
            goto LABEL_65;
          }

          if (v75 == v29)
          {
            goto LABEL_66;
          }

          v35 = v29 + 1;
          v36 = v32 + *(v31 + 72) * v29;
          v37 = *(v76 + 48);
          *v10 = v34;
          sub_577C0(v36, v10 + v37, &type metadata accessor for JSPackageLocation);
          result = sub_34804(v10, v25, &qword_3FD860);
          v25 += *(v77 + 72);
          v29 = v35;
        }

        while (v18 != v35);
        v38 = v73;
        v39 = v74;
        v40 = v74 + v35;
        v13 = v69;
        if (v74 + v35 == v73)
        {
          goto LABEL_27;
        }

LABEL_32:
        if (v38 >= v39)
        {
          v46 = v38;
          if (v40 > v38)
          {
            v38 = v40;
          }

          v70 = v38;
          v47 = v40;
          while (1)
          {
            if (v40 < v39)
            {
              goto LABEL_67;
            }

            if (v70 == v47)
            {
              goto LABEL_68;
            }

            if (v75 == v18)
            {
              goto LABEL_27;
            }

            if (v18 >= v75)
            {
              goto LABEL_69;
            }

            v48 = sub_3021D8();
            v50 = *(v48 - 8);
            result = v48 - 8;
            v49 = v50;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_70;
            }

            v51 = v71 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v18;
            v52 = *(v76 + 48);
            *v13 = v47;
            sub_577C0(v51, v13 + v52, &type metadata accessor for JSPackageLocation);
            result = sub_34804(v13, v72, &qword_3FD860);
            if (v26)
            {
              v41 = v21;
              v44 = __OFSUB__(v26--, 1);
              if (v44)
              {
                goto LABEL_63;
              }

              goto LABEL_37;
            }

            v53 = v21[3];
            if (((v53 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_71;
            }

            v54 = v53 & 0xFFFFFFFFFFFFFFFELL;
            if (v54 <= 1)
            {
              v55 = 1;
            }

            else
            {
              v55 = v54;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD880);
            v56 = *(v77 + 72);
            v57 = v67;
            v41 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v41);
            if (!v56)
            {
              goto LABEL_72;
            }

            v58 = result - v57;
            if (result - v57 == 0x8000000000000000 && v56 == -1)
            {
              goto LABEL_73;
            }

            v60 = v58 / v56;
            v41[2] = v55;
            v41[3] = 2 * (v58 / v56);
            v61 = v41 + v57;
            v62 = v21[3] >> 1;
            v63 = v62 * v56;
            v13 = v69;
            if (v21[2])
            {
              break;
            }

LABEL_61:
            v25 = &v61[v63];
            v65 = (v60 & 0x7FFFFFFFFFFFFFFFLL) - v62;

            v46 = v73;
            v39 = v74;
            v44 = __OFSUB__(v65, 1);
            v26 = v65 - 1;
            if (v44)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_37:
            ++v47;
            result = sub_34804(v72, v25, &qword_3FD860);
            v25 += *(v77 + 72);
            ++v18;
            v21 = v41;
            if (v46 == v47)
            {
              goto LABEL_28;
            }
          }

          if (v41 < v21 || v61 >= v21 + v57 + v63)
          {
            v64 = v63;
            swift_arrayInitWithTakeFrontToBack();
LABEL_59:
            v63 = v64;
          }

          else if (v41 != v21)
          {
            v64 = v63;
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_59;
          }

          v21[2] = 0;
          goto LABEL_61;
        }

        goto LABEL_77;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD880);
  v19 = *(v77 + 72);
  v20 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (v19)
  {
    if (result - v20 == 0x8000000000000000 && v19 == -1)
    {
      goto LABEL_80;
    }

    v21[2] = v18;
    v21[3] = 2 * ((result - v20) / v19);
    v13 = v69;
    goto LABEL_15;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_57EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_57F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for JetPackLoadOrderSection(0);

  return sub_50B4C(a1, a2, a3);
}

uint64_t sub_57FA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_57FD8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD860);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_58040()
{
  result = qword_3FD7F8;
  if (!qword_3FD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD7E0);
    sub_580F8();
    sub_EC8C(&qword_3FD830, &qword_3FD838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD7F8);
  }

  return result;
}

unint64_t sub_580F8()
{
  result = qword_3FD800;
  if (!qword_3FD800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD808);
    sub_EC8C(&qword_3FD810, &qword_3FD818);
    sub_EC8C(&qword_3FD820, &qword_3FD828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD800);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(type metadata accessor for JetPackLoadOrderSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FD7D0);
    if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
    {

      v6 = *(v5 + 32);
      v7 = sub_306BB8();
      (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_58374()
{
  type metadata accessor for JetPackLoadOrderSection(0);

  return sub_50C60();
}

uint64_t sub_5840C()
{
  type metadata accessor for JetPackLoadOrderSection(0);

  return sub_50D74();
}

uint64_t sub_584B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_58528(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_58648(uint64_t a1, int a2)
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

uint64_t sub_58690(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_58840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_588F8()
{
  result = qword_3FD9B8;
  if (!qword_3FD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD9C0);
    sub_EC8C(&qword_3FD798, &qword_3FD780);
    sub_EC8C(&qword_3FD7A0, &qword_3FD790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD9B8);
  }

  return result;
}

unint64_t sub_58A44()
{
  result = qword_3FD9E8;
  if (!qword_3FD9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD9E0);
    sub_57858(&qword_3FD6C0, &qword_3FD6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD9E8);
  }

  return result;
}

unint64_t sub_58AE8()
{
  result = qword_3FD9F8;
  if (!qword_3FD9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD9F0);
    sub_58BA0();
    sub_EC8C(&qword_3FC820, &qword_3FC828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FD9F8);
  }

  return result;
}

unint64_t sub_58BA0()
{
  result = qword_3FDA00;
  if (!qword_3FDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDA08);
    sub_58A44();
    sub_EC8C(&qword_3FC778, &qword_3FC780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDA00);
  }

  return result;
}

uint64_t sub_58C60(uint64_t a1, uint64_t a2, char a3)
{
  sub_EBC8(a1, a2, a3 & 1);
}

unint64_t sub_58DE4()
{
  result = qword_3FDA80;
  if (!qword_3FDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDA70);
    sub_58E9C();
    sub_EC8C(&qword_3FD000, &qword_3FD008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDA80);
  }

  return result;
}

unint64_t sub_58E9C()
{
  result = qword_3FDA88;
  if (!qword_3FDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDA90);
    sub_EC8C(&qword_3FC7B8, &qword_3FC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDA88);
  }

  return result;
}

uint64_t objectdestroy_77Tm()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_590B8(uint64_t a1, uint64_t a2, char a3)
{
  sub_EBD8(a1, a2, a3 & 1);
}

uint64_t sub_59108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_591D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDAC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_59288()
{
  sub_5933C();
  if (v0 <= 0x3F)
  {
    sub_5938C();
    if (v1 <= 0x3F)
    {
      sub_593E4();
      if (v2 <= 0x3F)
      {
        sub_5943C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_5933C()
{
  result = qword_3FDB30;
  if (!qword_3FDB30)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_3FDB30);
  }

  return result;
}

void sub_5938C()
{
  if (!qword_3FDB38)
  {
    sub_305228();
    v0 = sub_3050B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3FDB38);
    }
  }
}

void sub_593E4()
{
  if (!qword_3FDB40)
  {
    v0 = sub_305038();
    if (!v1)
    {
      atomic_store(v0, &qword_3FDB40);
    }
  }
}

void sub_5943C()
{
  if (!qword_3FDB48)
  {
    v0 = sub_306A48();
    if (!v1)
    {
      atomic_store(v0, &qword_3FDB48);
    }
  }
}

uint64_t sub_594D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDA20);
  type metadata accessor for AddRemoteURLJSPackageLocationSheet(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDA18);
  sub_EC8C(&qword_3FDA40, &qword_3FDA18);
  swift_getOpaqueTypeConformance2();
  sub_56BF8(&qword_3FDA48, type metadata accessor for AddRemoteURLJSPackageLocationSheet);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_59654()
{
  result = qword_3FDBD8;
  if (!qword_3FDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDBB0);
    sub_596E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDBD8);
  }

  return result;
}

unint64_t sub_596E0()
{
  result = qword_3FDBE0;
  if (!qword_3FDBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDBA8);
    sub_EC8C(&qword_3FDBE8, &qword_3FDBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDBE0);
  }

  return result;
}

unint64_t sub_597B4()
{
  result = qword_3FDC48;
  if (!qword_3FDC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDC10);
    sub_EC8C(&qword_3FDC50, &qword_3FDC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDC48);
  }

  return result;
}

uint64_t sub_5986C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3057A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t objectdestroy_124Tm()
{
  v1 = type metadata accessor for AddRemoteURLJSPackageLocationSheet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC6A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_305228();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_59A2C()
{
  result = qword_3FDC60;
  if (!qword_3FDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDC20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDC18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDC10);
    sub_306038();
    sub_597B4();
    sub_56BF8(&qword_3FDC58, &type metadata accessor for RoundedBorderTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_EC8C(&qword_3FDC68, &qword_3FDC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDC60);
  }

  return result;
}

uint64_t sub_59C08(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddRemoteURLJSPackageLocationSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_59CFC()
{
  result = qword_3FDCC8;
  if (!qword_3FDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDBF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDBB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDBB0);
    sub_59654();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDCC8);
  }

  return result;
}

uint64_t sub_59E74()
{
  v0 = sub_301DF8();
  v41 = *(v0 - 8);
  v42 = v0;
  __chkstk_darwin(v0);
  v40 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_30B898();
  __chkstk_darwin(v2 - 8);
  v3 = sub_30BE68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_30A078();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD28);
  v11 = (type metadata accessor for DebugEmptyState(0) - 8);
  v12 = *v11;
  v43 = *(*v11 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_31AA60;
  v15 = (v14 + v13);
  v38 = 0x80000000003371A0;
  v39 = v14;
  sub_30BE58();
  sub_30B868();
  v44[3] = sub_30B738();
  v44[4] = &protocol witness table for EmptyAction;
  __swift_allocate_boxed_opaque_existential_0Tm(v44);
  sub_30B728();
  sub_309FE8();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v44);
  *v15 = 0xD000000000000011;
  *(v15 + 1) = 0x8000000000337180;
  v16 = v38;
  *(v15 + 2) = 0xD000000000000046;
  *(v15 + 3) = v16;
  v17 = *(v8 + 32);
  v17(&v15[v11[8]], v10, v7);
  v18 = v43;
  v19 = &v15[v43];
  sub_309F68();
  *v19 = 0x7972617262694CLL;
  *(v19 + 1) = 0xE700000000000000;
  *(v19 + 2) = 0xD00000000000002ELL;
  *(v19 + 3) = 0x80000000003371F0;
  v17(&v19[v11[8]], v10, v7);
  v20 = &v15[2 * v18];
  sub_309FF8();
  *v20 = 0x69726F6765746143;
  *(v20 + 1) = 0xEA00000000007365;
  *(v20 + 2) = 0xD00000000000003ALL;
  *(v20 + 3) = 0x8000000000337220;
  v17(&v20[v11[8]], v10, v7);
  v21 = &v15[3 * v18];
  sub_309FD8();
  *v21 = 0x736C656E6E616843;
  *(v21 + 1) = 0xE800000000000000;
  *(v21 + 2) = 0xD000000000000038;
  *(v21 + 3) = 0x8000000000337260;
  v17(&v21[v11[8]], v10, v7);
  v22 = &v15[4 * v18];
  sub_30A008();
  *v22 = 0x64616F6C6E776F44;
  *(v22 + 1) = 0xEA00000000006465;
  *(v22 + 2) = 0xD000000000000032;
  *(v22 + 3) = 0x80000000003372A0;
  v17(&v22[v11[8]], v10, v7);
  v23 = &v15[5 * v18];
  sub_30A058();
  *v23 = 0xD000000000000015;
  *(v23 + 1) = 0x80000000003372E0;
  *(v23 + 2) = 0xD000000000000047;
  *(v23 + 3) = 0x8000000000337300;
  v17(&v23[v11[8]], v10, v7);
  v24 = &v15[6 * v18];
  sub_30A038();
  *v24 = 0x452074736574614CLL;
  *(v24 + 1) = 0xEF7365646F736970;
  *(v24 + 2) = 0xD00000000000002ELL;
  *(v24 + 3) = 0x8000000000337350;
  v17(&v24[v11[8]], v10, v7);
  v25 = 8 * v18;
  v26 = &v15[7 * v18];
  sub_30A068();
  *v26 = 0xD00000000000001ALL;
  *(v26 + 1) = 0x8000000000337380;
  *(v26 + 2) = 0xD000000000000043;
  *(v26 + 3) = 0x80000000003373A0;
  v17(&v26[v11[8]], v10, v7);
  v27 = &v15[8 * v18];
  sub_309FA8();
  *v27 = 0x6465766153;
  *(v27 + 1) = 0xE500000000000000;
  *(v27 + 2) = 0xD00000000000002DLL;
  *(v27 + 3) = 0x80000000003373F0;
  v17(&v27[v11[8]], v10, v7);
  v28 = v43;
  v29 = &v15[v25 + v43];
  sub_30A028();
  *v29 = 0xD000000000000010;
  *(v29 + 1) = 0x8000000000337420;
  *(v29 + 2) = 0xD000000000000042;
  *(v29 + 3) = 0x8000000000337440;
  v17(&v29[v11[8]], v10, v7);
  v30 = &v15[10 * v28];
  sub_309FB8();
  *v30 = 0x73776F6853;
  *(v30 + 1) = 0xE500000000000000;
  *(v30 + 2) = 0xD000000000000035;
  *(v30 + 3) = 0x8000000000337490;
  v17(&v30[v11[8]], v10, v7);
  v31 = &v15[11 * v28];
  sub_309F78();
  *v31 = 0x6E6F6974617453;
  *(v31 + 1) = 0xE700000000000000;
  *(v31 + 2) = 0xD000000000000021;
  *(v31 + 3) = 0x80000000003374D0;
  v17(&v31[v11[8]], v10, v7);
  v32 = &v15[12 * v28];
  v43 = 0x8000000000337500;
  v38 = 0x8000000000337520;
  v33 = v40;
  sub_301DE8();
  sub_301DD8();
  (*(v41 + 8))(v33, v42);
  sub_30A018();

  v34 = v43;
  *v32 = 0xD000000000000016;
  *(v32 + 1) = v34;
  v35 = v38;
  *(v32 + 2) = 0xD00000000000002ALL;
  *(v32 + 3) = v35;
  result = (v17)(&v32[v11[8]], v10, v7);
  qword_3FDCD0 = v39;
  return result;
}

uint64_t sub_5A6F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCF8);
  sub_5AB30();
  return sub_306B68();
}

uint64_t sub_5A794()
{
  if (qword_3FA960 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD10);
  type metadata accessor for DebugEmptyStateNavigationLink(0);
  sub_EC8C(&qword_3FDD18, &qword_3FDD10);
  sub_5ABE4(&qword_3FDD00, type metadata accessor for DebugEmptyStateNavigationLink);
  sub_5ABE4(&qword_3FDD20, type metadata accessor for DebugEmptyState);
  return sub_306B48();
}

uint64_t sub_5A918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCE0);
  sub_5AA98();
  sub_306298();
  sub_EC8C(&qword_3FDD08, &qword_3FDCD8);
  sub_306658();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_5AA98()
{
  result = qword_3FDCE8;
  if (!qword_3FDCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDCE0);
    sub_5AB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDCE8);
  }

  return result;
}

unint64_t sub_5AB30()
{
  result = qword_3FDCF0;
  if (!qword_3FDCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDCF8);
    sub_5ABE4(&qword_3FDD00, type metadata accessor for DebugEmptyStateNavigationLink);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDCF0);
  }

  return result;
}

uint64_t sub_5ABE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5AC2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugEmptyState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5AC90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDCD8);
  sub_EC8C(&qword_3FDD08, &qword_3FDCD8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5AD54()
{
  v0 = sub_303748();
  v1 = __chkstk_darwin(v0);
  v65 = (&v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __chkstk_darwin(v1);
  v63 = (&v58 - v4);
  v5 = __chkstk_darwin(v3);
  v62 = (&v58 - v6);
  v7 = __chkstk_darwin(v5);
  v61 = (&v58 - v8);
  v9 = __chkstk_darwin(v7);
  v60 = (&v58 - v10);
  __chkstk_darwin(v9);
  v12 = &v58 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDE00);
  v13 = (type metadata accessor for ButtonConfig(0) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = *(*v13 + 72);
  v16 = swift_allocObject();
  v64 = v16;
  *(v16 + 16) = xmmword_31AB30;
  v17 = v16 + v14;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v17 = 0x6369736142;
  *(v17 + 8) = 0xE500000000000000;
  *(v17 + 16) = 0;
  *(v17 + v13[9]) = 0;
  sub_5E004(v12, v17 + v13[8], &type metadata accessor for EpisodePlayState);
  v18 = v17;
  *(v17 + v13[10]) = 0;
  v19 = v17 + v15;
  v20 = v18;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v19 = 0x6C41206369736142;
  *(v19 + 8) = 0xE900000000000074;
  *(v19 + 16) = 0;
  *(v19 + v13[9]) = 0x409A900000000000;
  v21 = v19 + v13[8];
  v59 = &type metadata accessor for EpisodePlayState;
  sub_5E004(v12, v21, &type metadata accessor for EpisodePlayState);
  *(v19 + v13[10]) = 0;
  v66 = v20;
  v67 = v15;
  v22 = v20 + 2 * v15;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v22 = 0x746E656D75636F44;
  *(v22 + 8) = 0xE800000000000000;
  *(v22 + 16) = 2;
  *(v22 + v13[9]) = 0;
  sub_5E004(v12, v22 + v13[8], &type metadata accessor for EpisodePlayState);
  *(v22 + v13[10]) = 0;
  v23 = v20 + 3 * v15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDE08);
  v25 = *(v24 + 48);
  v26 = sub_301DC8();
  v27 = *(*(v26 - 8) + 56);
  v27(v12, 1, 1, v26);
  v12[v25] = 0;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v23 = 0x646579616C50;
  *(v23 + 8) = 0xE600000000000000;
  *(v23 + 16) = 0;
  *(v23 + v13[9]) = 0;
  v28 = v59;
  sub_5E004(v12, v23 + v13[8], v59);
  *(v23 + v13[10]) = 0;
  v58 = 4 * v67;
  v29 = v66 + 4 * v67;
  v30 = *(v24 + 48);
  v27(v12, 1, 1, v26);
  v12[v30] = 0;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v29 = 0x4120646579616C50;
  *(v29 + 8) = 0xEA0000000000746CLL;
  *(v29 + 16) = 0;
  *(v29 + v13[9]) = 0x40A4500000000000;
  v31 = v12;
  v32 = v28;
  sub_5E004(v31, v29 + v13[8], v28);
  *(v29 + v13[10]) = 0;
  v33 = sub_5D6CC(0x20000000000001uLL);
  v34 = vcvtd_n_f64_u64(v33, 0x35uLL) * 800.0 + 400.0;
  if (v33 == 0x20000000000000)
  {
    v34 = 1200.0;
  }

  v36 = v66;
  v35 = v67;
  v37 = v66 + v58 + v67;
  v38 = v60;
  *v60 = v34;
  *(v38 + 8) = 0x409C200000000000;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v37 = 0x6C616974726150;
  *(v37 + 8) = 0xE700000000000000;
  *(v37 + 16) = 0;
  *(v37 + v13[9]) = 0;
  sub_5E004(v38, v37 + v13[8], v32);
  *(v37 + v13[10]) = 0;
  v39 = sub_5D6CC(0x20000000000001uLL);
  v40 = vcvtd_n_f64_u64(v39, 0x35uLL) * 800.0 + 400.0;
  if (v39 == 0x20000000000000)
  {
    v40 = 1200.0;
  }

  v41 = v61;
  *v61 = v40;
  *(v41 + 8) = 0x409C200000000000;
  v42 = v36 + 6 * v35;
  v43 = v35;
  *(v41 + 16) = 1;
  *(v41 + 18) = 1;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v42 = 0x646573756150;
  *(v42 + 8) = 0xE600000000000000;
  *(v42 + 16) = 0;
  *(v42 + v13[9]) = 0;
  sub_5E004(v41, v42 + v13[8], v32);
  *(v42 + v13[10]) = 0;
  v44 = sub_5D6CC(0x20000000000001uLL);
  v45 = vcvtd_n_f64_u64(v44, 0x35uLL) * 800.0 + 400.0;
  if (v44 == 0x20000000000000)
  {
    v45 = 1200.0;
  }

  v46 = 8 * v35;
  v47 = v36 + v46 - v43;
  v48 = v62;
  *v62 = v45;
  *(v48 + 8) = 0x40B2C00000000000;
  *(v48 + 16) = 257;
  *(v48 + 18) = 1;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v47 = 0x6E69726566667542;
  *(v47 + 8) = 0xE900000000000067;
  *(v47 + 16) = 0;
  *(v47 + v13[9]) = 0;
  sub_5E004(v48, v47 + v13[8], v32);
  *(v47 + v13[10]) = 0;
  v49 = sub_5D6CC(0x20000000000001uLL);
  v50 = vcvtd_n_f64_u64(v49, 0x35uLL) * 800.0 + 400.0;
  if (v49 == 0x20000000000000)
  {
    v50 = 1200.0;
  }

  v51 = v63;
  *v63 = v50;
  *(v51 + 8) = 0x40A5E00000000000;
  v52 = v36 + v46;
  *(v51 + 16) = 0;
  *(v51 + 18) = 0;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v52 = 0x676E6979616C50;
  *(v52 + 8) = 0xE700000000000000;
  *(v52 + 16) = 0;
  *(v52 + v13[9]) = 0;
  sub_5E004(v51, v36 + v46 + v13[8], v32);
  *(v52 + v13[10]) = 0;
  v53 = sub_5D6CC(0x20000000000001uLL);
  v54 = vcvtd_n_f64_u64(v53, 0x35uLL) * 800.0 + 400.0;
  if (v53 == 0x20000000000000)
  {
    v54 = 1200.0;
  }

  v55 = v36 + v46 + v43;
  v56 = v65;
  *v65 = v54;
  *(v56 + 8) = 0x409C200000000000;
  *(v56 + 16) = 0;
  *(v56 + 18) = 1;
  swift_storeEnumTagMultiPayload();
  sub_301DE8();
  *v55 = 0xD000000000000010;
  *(v55 + 8) = 0x8000000000337550;
  *(v55 + 16) = 0;
  *(v55 + v13[9]) = 0;
  result = sub_5E004(v56, v55 + v13[8], v32);
  *(v55 + v13[10]) = 0;
  qword_429070 = v64;
  return result;
}

uint64_t sub_5B578@<X0>(uint64_t a1@<X8>)
{
  sub_306A08();
  sub_306A08();
  sub_306A08();
  *a1 = 0x72616C75676552;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 40) = 0x656772614CLL;
  *(a1 + 48) = 0xE500000000000000;
  *(a1 + 56) = 1;
  *(a1 + 64) = v3;
  *(a1 + 80) = 0x614C206172747845;
  *(a1 + 88) = 0xEB00000000656772;
  *(a1 + 96) = 2;
  *(a1 + 104) = v3;
}

uint64_t sub_5B678()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD30);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD38);
  sub_EC8C(&qword_3FDD40, &qword_3FDD38);
  sub_306298();
  sub_EC8C(&qword_3FDD48, &qword_3FDD30);
  sub_306658();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_5B844()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDD30);
  sub_EC8C(&qword_3FDD48, &qword_3FDD30);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5B8F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_3FA968 != -1)
  {
    swift_once();
  }

  v2 = qword_429070;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD78);
  result = sub_306A18();
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v7 % v4;
    if (((v7 % v4) & 0x8000000000000000) == 0)
    {
      v6 = *(type metadata accessor for ButtonConfig(0) - 8);
      return sub_5C86C(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a1, type metadata accessor for ButtonConfig);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_5BA20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD60);
  __chkstk_darwin(v36);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD68);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = __chkstk_darwin(v5);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD70);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = __chkstk_darwin(v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v34 - v12;
  if (qword_3FA968 != -1)
  {
    swift_once();
  }

  v46 = qword_429070;
  v13 = *a1;
  v47 = *(a1 + 24);
  v48 = v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);

  sub_5C668(&v48, v45);
  sub_EB00(&v47, v45, &qword_3FDD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD80);
  sub_301DF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD88);
  sub_EC8C(&qword_3FDD90, &qword_3FDD80);
  sub_EC8C(&qword_3FDD98, &qword_3FDD88);
  sub_5DD7C(&qword_3FDDA0, type metadata accessor for ButtonConfig);
  v16 = v43;
  sub_306B48();
  *v4 = sub_305AA8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDA8);
  sub_5C250(a1, &v4[*(v17 + 44)]);
  v4[*(v36 + 36)] = 0;
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  sub_5C668(&v48, v45);
  sub_EB00(&v47, v45, &qword_3FDD78);
  sub_5C72C();
  v20 = v44;
  sub_306588();

  sub_EB68(v4, &qword_3FDD60);
  v22 = v37;
  v21 = v38;
  v23 = *(v37 + 16);
  v24 = v35;
  v23(v35, v16, v38);
  v26 = v39;
  v25 = v40;
  v36 = *(v40 + 16);
  v27 = v20;
  v28 = v41;
  (v36)(v39, v27, v41);
  v29 = v42;
  v23(v42, v24, v21);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDC8);
  (v36)(&v29[*(v30 + 48)], v26, v28);
  v31 = *(v25 + 8);
  v31(v44, v28);
  v32 = *(v22 + 8);
  v32(v43, v21);
  v31(v26, v28);
  return (v32)(v24, v21);
}

uint64_t sub_5BFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_305AA8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDE8);
  return sub_5C018(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_5C018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDF0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = a1[1];
  v31 = *a1;
  v14 = v31;
  v32 = v13;
  sub_E504();
  swift_bridgeObjectRetain_n();
  v15 = sub_3063C8();
  v27 = v16;
  v28 = v15;
  v29 = v17;
  v30 = v18;
  v19 = *(a2 + 16);
  v20 = *(a1 + 16);
  v21 = type metadata accessor for ButtonConfig(0);
  v22 = *(a1 + v21[7]);
  sub_5C86C(a1 + v21[6], &v12[v21[6]], &type metadata accessor for EpisodePlayState);
  sub_301DE8();
  *v12 = v14;
  *(v12 + 1) = v13;
  v12[16] = v20;
  *&v12[v21[7]] = v22;
  v12[v21[8]] = v19;
  *&v12[*(v7 + 44)] = 257;
  sub_EB00(v12, v10, &qword_3FDDF0);
  v24 = v27;
  v23 = v28;
  *a3 = v28;
  *(a3 + 8) = v24;
  LOBYTE(v21) = v29 & 1;
  *(a3 + 16) = v29 & 1;
  *(a3 + 24) = v30;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDF8);
  sub_EB00(v10, a3 + *(v25 + 64), &qword_3FDDF0);
  sub_EBD8(v23, v24, v21);

  sub_EB68(v12, &qword_3FDDF0);
  sub_EB68(v10, &qword_3FDDF0);
  sub_EBC8(v23, v24, v21);
}

uint64_t sub_5C250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ButtonConfig(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDD8);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  sub_5B8F8(v7);
  v22 = *(a1 + 16);
  v15 = *v7;
  v16 = *(v7 + 1);
  v17 = v7[16];
  v18 = *&v7[v5[9]];
  sub_5C86C(&v7[v5[8]], &v14[v5[8]], &type metadata accessor for EpisodePlayState);

  sub_301DE8();
  sub_5C810(v7);
  *v14 = v15;
  *(v14 + 1) = v16;
  v14[16] = v17;
  *&v14[v5[9]] = v18;
  v14[v5[10]] = v22;
  v14[*(v9 + 44)] = 0;
  sub_EB00(v14, v12, &qword_3FDDD8);
  *a2 = xmmword_31AB40;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDDE0);
  sub_EB00(v12, a2 + *(v19 + 48), &qword_3FDDD8);
  sub_EBD8(0x63696D616E7944, 0xE700000000000000, 0);

  sub_EB68(v14, &qword_3FDDD8);
  sub_EB68(v12, &qword_3FDDD8);
  sub_EBC8(0x63696D616E7944, 0xE700000000000000, 0);
}

uint64_t sub_5C4AC(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2[1] = *(a1 + 24);
  v5 = *(&v4 + 1);
  sub_EB00(&v5, v2, &qword_3FDDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD78);
  result = sub_306A18();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v2[0] = v4;
    sub_306A28();
    return sub_EB68(&v4, &qword_3FDD78);
  }

  return result;
}

uint64_t sub_5C56C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD50);
  sub_EC8C(&qword_3FDD58, &qword_3FDD50);
  return sub_306B68();
}

uint64_t objectdestroyTm_4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_5C72C()
{
  result = qword_3FDDB0;
  if (!qword_3FDDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDD60);
    sub_EC8C(&qword_3FDDB8, &qword_3FDDC0);
    sub_EC8C(&qword_3FD000, &qword_3FD008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDDB0);
  }

  return result;
}

uint64_t sub_5C810(uint64_t a1)
{
  v2 = type metadata accessor for ButtonConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5C86C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5C8D4()
{
  v1 = sub_309778();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_309858();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v0 + *(type metadata accessor for ButtonConfig(0) + 32));
  v17 = 0;
  v18 = 1;
  v13 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(&v17, v12, 0);
  v15 = v14;
  sub_309768();
  sub_309838();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 16))(v9, v11, v5);
  sub_2A73C0(v9);
  (*(v6 + 8))(v11, v5);
  return v15;
}

uint64_t sub_5CB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5DD7C(&qword_3FE008, type metadata accessor for PlayButtonUIKit);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_5CBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5DD7C(&qword_3FE008, type metadata accessor for PlayButtonUIKit);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_5CC50()
{
  sub_5DD7C(&qword_3FE008, type metadata accessor for PlayButtonUIKit);
  sub_305D08();
  __break(1u);
}

id sub_5CCA8()
{
  v1 = sub_309778();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_309858();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = *(v0 + *(type metadata accessor for ButtonConfig(0) + 32));
  v18 = 0;
  v19 = 1;
  v13 = objc_allocWithZone(type metadata accessor for PlayButton(0));
  sub_2A76A0(&v18, v12, 0);
  v15 = v14;
  sub_309768();
  sub_309838();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 16))(v9, v11, v5);
  sub_2A73C0(v9);
  (*(v6 + 8))(v11, v5);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDFF8));
  return sub_2AF1E4(v15);
}

uint64_t sub_5CEF8(void *a1)
{
  v3 = sub_306E68();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_306E88();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicPlayButtonUIKit(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_3EFB4();
  v12 = sub_30C8F8();
  sub_5C86C(v1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DynamicPlayButtonUIKit);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_5E004(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DynamicPlayButtonUIKit);
  aBlock[4] = sub_5E06C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_914CC;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_306E78();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5DD7C(&qword_40D760, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_408860);
  sub_EC8C(&qword_40D770, &qword_408860);
  sub_30D488();
  sub_30C908();
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  return (*(v19 + 8))(v8, v20);
}

uint64_t sub_5D29C()
{
  v12 = sub_309778();
  v0 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_309858();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  type metadata accessor for ButtonConfig(0);
  sub_309768();
  sub_309838();
  (*(v0 + 8))(v2, v12);
  (*(v4 + 16))(v7, v9, v3);
  sub_2A73C0(v7);
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_5D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5DD7C(&qword_3FE000, type metadata accessor for DynamicPlayButtonUIKit);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_5D56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5DD7C(&qword_3FE000, type metadata accessor for DynamicPlayButtonUIKit);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_5D600()
{
  sub_5DD7C(&qword_3FE000, type metadata accessor for DynamicPlayButtonUIKit);
  sub_305D08();
  __break(1u);
}

uint64_t sub_5D658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_301DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_5D6CC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfig(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_5D8D0()
{
  result = type metadata accessor for ButtonConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_5D950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_303748();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_301DF8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_5DA88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_303748();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_301DF8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_5DBAC()
{
  result = sub_303748();
  if (v1 <= 0x3F)
  {
    result = sub_301DF8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_5DC64()
{
  result = qword_3FDFD0;
  if (!qword_3FDFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDFD8);
    sub_EC8C(&qword_3FDD58, &qword_3FDD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FDFD0);
  }

  return result;
}

uint64_t sub_5DD7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5DE54()
{
  v1 = *(type metadata accessor for DynamicPlayButtonUIKit(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;

  v6 = type metadata accessor for ButtonConfig(0);
  v7 = *(v6 + 24);
  sub_303748();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = sub_301DC8();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  v10 = *(v6 + 36);
  v11 = sub_301DF8();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5E004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_5E06C()
{
  type metadata accessor for DynamicPlayButtonUIKit(0);

  return sub_5D29C();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5E148()
{
  v0 = sub_30B858();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_30BE68();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_30A078();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD28);
  v9 = (type metadata accessor for DebugEmptyState(0) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_315420;
  v13 = (v12 + v11);
  sub_30BE58();
  sub_30B848();
  sub_309FC8();
  (*(v22 + 8))(v2, v23);
  (*(v20 + 8))(v5, v21);
  *v13 = 0xD000000000000011;
  *(v13 + 1) = 0x8000000000337570;
  *(v13 + 2) = 0xD000000000000038;
  *(v13 + 3) = 0x8000000000337590;
  v14 = *(v6 + 32);
  v15 = v19;
  v14(&v13[v9[8]], v8, v19);
  v16 = &v13[v10];
  sub_309F98();
  *v16 = 0xD000000000000015;
  *(v16 + 1) = 0x80000000003375D0;
  *(v16 + 2) = 0xD00000000000003CLL;
  *(v16 + 3) = 0x80000000003375F0;
  result = (v14)(&v16[v9[8]], v8, v15);
  qword_3FE010 = v12;
  return result;
}

uint64_t sub_5E4AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCF8);
  sub_5AB30();
  return sub_306B68();
}

uint64_t sub_5E548()
{
  if (qword_3FA970 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDD10);
  type metadata accessor for DebugEmptyStateNavigationLink(0);
  sub_EC8C(&qword_3FDD18, &qword_3FDD10);
  sub_5ABE4(&qword_3FDD00, type metadata accessor for DebugEmptyStateNavigationLink);
  sub_5ABE4(&qword_3FDD20, type metadata accessor for DebugEmptyState);
  return sub_306B48();
}

uint64_t sub_5E6C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FDCE0);
  sub_5AA98();
  sub_306298();
  sub_EC8C(&qword_3FDD08, &qword_3FDCD8);
  sub_306658();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_5E840()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FDCD8);
  sub_EC8C(&qword_3FDD08, &qword_3FDCD8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5E904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE038);
  sub_EC8C(&qword_3FE030, &qword_3FE038);
  return sub_306B68();
}

void sub_5EA48(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x8000000000337630;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_5EA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE018);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v5 = v0[1];
  v8 = *v0;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE020);
  sub_5EC00();
  sub_306298();
  sub_EC8C(&qword_3FE040, &qword_3FE018);
  sub_306658();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_5EC00()
{
  result = qword_3FE028;
  if (!qword_3FE028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE020);
    sub_EC8C(&qword_3FE030, &qword_3FE038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE028);
  }

  return result;
}

uint64_t sub_5ECCC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE018);
  sub_EC8C(&qword_3FE040, &qword_3FE018);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5ED78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_301DC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_303248();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_301CB8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_5EEE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_301DC8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_303248();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_301CB8();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TTMLFileReference()
{
  result = qword_3FE0A0;
  if (!qword_3FE0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5F084()
{
  result = sub_301DC8();
  if (v1 <= 0x3F)
  {
    result = sub_303248();
    if (v2 <= 0x3F)
    {
      result = sub_301CB8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5F130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

Swift::Int sub_5F144()
{
  sub_30D7F8();
  sub_30C1F8();
  return sub_30D858();
}

Swift::Int sub_5F1A4()
{
  sub_30D7F8();
  sub_30C1F8();
  return sub_30D858();
}

uint64_t sub_5F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_30D728();
  }
}

uint64_t sub_5F294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TTMLFileReference() + 28);
  v5 = sub_301CB8();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_5F310(uint64_t a1, uint64_t a2)
{
  v4 = sub_301CB8();
  v5 = sub_5F3BC(&qword_3FE0F0, &type metadata accessor for URL);

  return ProxyRepresentation.init(exporting:)(sub_5F294, 0, a1, v4, a2, v5);
}

uint64_t sub_5F3BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5F408()
{
  result = qword_3FE0F8;
  if (!qword_3FE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FE100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3FE0F8);
  }

  return result;
}

uint64_t sub_5F46C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v6 = sub_64B38(v5, a2);

  if (v6)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
    sub_302D88();
  }
}

uint64_t sub_5F5E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE2C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_318FC0;
  *(inited + 32) = NSURLCreationDateKey;
  *(inited + 40) = NSURLFileSizeKey;
  *(inited + 48) = NSURLIsRegularFileKey;
  v1 = NSURLCreationDateKey;
  v2 = NSURLFileSizeKey;
  v3 = NSURLIsRegularFileKey;
  v4 = sub_176CFC(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  result = swift_arrayDestroy();
  off_3FE108 = v4;
  return result;
}

uint64_t sub_5F6AC()
{
  v0 = sub_301CB8();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_3FE110);
  v5 = __swift_project_value_buffer(v0, qword_3FE110);
  v6 = [objc_opt_self() ttmlAssetURL];
  sub_301C38();

  return (*(v1 + 32))(v5, v4, v0);
}

uint64_t sub_5F7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE220);
  __swift_allocate_value_buffer(v0, qword_3FE128);
  __swift_project_value_buffer(v0, qword_3FE128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE228);
  sub_EC8C(&qword_3FE230, &qword_3FE220);
  return sub_303038();
}

uint64_t sub_5F898@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE220);
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v71 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE238);
  __chkstk_darwin(v2 - 8);
  v79 = &v71 - v3;
  v83 = sub_302EC8();
  v86 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE240);
  v88 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v80 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v82 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE248);
  __chkstk_darwin(v8 - 8);
  v85 = &v71 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE250);
  v111 = *(v103 - 8);
  v10 = __chkstk_darwin(v103);
  v84 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE258);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE260);
  v89 = *(v104 - 8);
  v19 = __chkstk_darwin(v104);
  v102 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v71 - v21;
  v98 = sub_302FF8();
  v23 = *(v98 - 8);
  v24 = __chkstk_darwin(v98);
  v73 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE268);
  v107 = *(v28 - 8);
  v108 = v28;
  v29 = __chkstk_darwin(v28);
  v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v100 = &v71 - v32;
  sub_302EB8();
  v72 = v18;
  sub_6067C(v18);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE270);
  v101 = &protocol conformance descriptor for Regex<A>;
  v106 = sub_EC8C(&qword_3FE278, &qword_3FE258);
  v105 = v13;
  v99 = v22;
  v77 = v33;
  sub_302FD8();
  v97 = *(v14 + 8);
  v109 = v14 + 8;
  v97(v18, v13);
  v94 = *(v23 + 8);
  v94(v27, v98);
  v96 = v23 + 8;
  sub_302ED8();
  v74 = &protocol conformance descriptor for Capture<A>;
  v75 = sub_EC8C(&qword_3FE280, &qword_3FE268);
  v34 = v108;
  sub_302E98();
  v35 = *(v107 + 8);
  v107 += 8;
  v81 = v35;
  v35(v31, v34);
  v114 = 45;
  v115 = 0xE100000000000000;
  v95 = sub_64AE4();
  sub_302E98();
  sub_302EB8();
  v36 = v78;
  sub_303018();
  v37 = sub_303028();
  v38 = v79;
  (*(*(v37 - 8) + 56))(v79, 1, 1, v37);
  v39 = v73;
  sub_302EB8();
  sub_65244(&qword_3FE290, &type metadata accessor for CharacterClass);
  v40 = v83;
  sub_302FE8();
  v41 = v39;
  v42 = v98;
  v43 = v94;
  v94(v41, v98);
  sub_EB68(v38, &qword_3FE238);
  (*(v86 + 8))(v36, v40);
  v44 = v80;
  sub_302EE8();
  sub_EC8C(&qword_3FE298, &qword_3FE240);
  v45 = v82;
  v46 = v44;
  v47 = v87;
  sub_302E98();
  v48 = *(v88 + 1);
  v48(v46, v47);
  v49 = v72;
  sub_302EA8();
  v48(v45, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE2A0);
  v50 = v105;
  v51 = v27;
  sub_302FD8();
  v52 = v49;
  v53 = v97;
  v97(v49, v50);
  v54 = v51;
  v43(v51, v42);
  v55 = v84;
  sub_302ED8();
  v87 = sub_EC8C(&qword_3FE2A8, &qword_3FE250);
  v56 = v103;
  sub_302E98();
  v57 = *(v111 + 8);
  v111 += 8;
  v88 = v57;
  v57(v55, v56);
  v112 = 0x6C6D74742ELL;
  v113 = 0xE500000000000000;
  sub_302E98();
  sub_302EA8();
  v58 = v116;
  v59 = v117;
  sub_302EB8();
  v112 = v58;
  v113 = v59;
  sub_302FC8();

  sub_EC8C(&qword_3FE2B0, &qword_3FE260);
  v60 = v105;
  sub_302FB8();
  v53(v52, v60);
  v61 = v94;
  v94(v54, v42);
  sub_302EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE228);
  v62 = v90;
  v63 = v103;
  sub_302FB8();
  v61(v54, v42);
  v65 = v114;
  v64 = v115;
  sub_302EB8();
  v112 = v65;
  v113 = v64;
  sub_302FC8();

  sub_EC8C(&qword_3FE230, &qword_3FE220);
  v66 = v91;
  v67 = v105;
  sub_302FB8();
  v97(v52, v67);
  v61(v54, v42);
  (*(v93 + 8))(v62, v66);
  v68 = *(v89 + 8);
  v69 = v104;
  v68(v102, v104);
  v68(v99, v69);
  v88(v110, v63);
  return v81(v100, v108);
}

uint64_t sub_6067C@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE258);
  v60 = *(v58 - 8);
  v1 = __chkstk_darwin(v58);
  v61 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v59 = &v51 - v4;
  v5 = __chkstk_darwin(v3);
  v74 = &v51 - v6;
  v7 = __chkstk_darwin(v5);
  v65 = &v51 - v8;
  __chkstk_darwin(v7);
  v67 = &v51 - v9;
  v10 = sub_302FF8();
  v75 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE238);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_302EC8();
  v66 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FE240);
  v71 = *(v68 - 8);
  v20 = __chkstk_darwin(v68);
  v56 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v72 = &v51 - v23;
  __chkstk_darwin(v22);
  v73 = &v51 - v24;
  sub_303008();
  v25 = sub_303028();
  v26 = *(v25 - 8);
  v54 = *(v26 + 56);
  v55 = v26 + 56;
  v54(v16, 1, 1, v25);
  sub_302EB8();
  v53 = sub_65244(&qword_3FE290, &type metadata accessor for CharacterClass);
  v51 = v17;
  sub_302FE8();
  v69 = *(v11 + 8);
  v70 = v11 + 8;
  v69(v13, v10);
  sub_EB68(v16, &qword_3FE238);
  v27 = *(v66 + 8);
  v66 += 8;
  v52 = v27;
  v27(v19, v17);
  v28 = v72;
  sub_302EE8();
  v63 = sub_EC8C(&qword_3FE298, &qword_3FE240);
  v29 = v68;
  sub_302E98();
  v30 = v71 + 8;
  v31 = *(v71 + 8);
  v31(v28, v29);
  v57 = v31;
  v71 = v30;
  v78 = 0x697263736E617274;
  v79 = 0xEB000000005F7470;
  v64 = sub_64AE4();
  sub_302E98();
  sub_303018();
  v54(v16, 1, 1, v25);
  sub_302EB8();
  v32 = v51;
  sub_302FE8();
  v69(v13, v75);
  sub_EB68(v16, &qword_3FE238);
  v52(v19, v32);
  v33 = v56;
  sub_302EE8();
  sub_302E98();
  v31(v33, v29);
  v76 = 0x6C6D74742ELL;
  v77 = 0xE500000000000000;
  sub_302E98();
  sub_302EA8();
  v34 = v80;
  v35 = v81;
  sub_302EB8();
  v76 = v34;
  v77 = v35;
  sub_EC8C(&qword_3FE278, &qword_3FE258);
  v36 = v74;
  v37 = v58;
  sub_302FC8();
  v38 = v59;
  sub_302FC8();

  v39 = v36;
  v40 = v38;
  sub_302FB8();
  v41 = *(v60 + 8);
  v41(v40, v37);
  v41(v39, v37);
  v42 = v69;
  v69(v13, v75);
  sub_302EB8();
  sub_302FC8();
  v43 = v61;
  sub_302FC8();
  sub_302FB8();
  v44 = v43;
  v41(v43, v37);
  v41(v40, v37);
  v42(v13, v75);
  v46 = v78;
  v45 = v79;
  sub_302EB8();
  v76 = v46;
  v77 = v45;
  v47 = v74;
  sub_302FC8();
  sub_302FC8();

  sub_302FB8();
  v41(v44, v37);
  v41(v40, v37);
  v69(v13, v75);
  v41(v47, v37);
  v41(v65, v37);
  v41(v67, v37);
  v48 = v68;
  v49 = v57;
  v57(v72, v68);
  return v49(v73, v48);
}

uint64_t sub_61000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_30C178();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_6103C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if ((v4 ^ *a1) >= 0x4000)
  {
    v6 = a1[2];
    v5 = a1[3];
    sub_64C98(*a1, v4, v6, v5, 10);
    if ((v7 & 0x100) != 0)
    {

      sub_63240(v3, v4, v6, v5, 10);
      v9 = v8;

      if ((v9 & 1) == 0)
      {
LABEL_7:
        result = sub_303D88();
        goto LABEL_8;
      }
    }

    else if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = sub_303D58();
LABEL_8:
  *a2 = result;
  return result;
}

uint64_t sub_610FC()
{
  swift_getKeyPath();
  sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
  sub_302D98();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_611C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
  sub_302D98();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_61290(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_5F46C(v1, v2);
}

uint64_t sub_612D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_6135C(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for TTMLFileReference();
  v33 = *(v31 - 8);
  v4 = __chkstk_darwin(v31);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = v28 - v6;
  swift_getKeyPath();
  v35 = v1;
  sub_65244(&qword_3FE200, type metadata accessor for TTMLFileReferenceCache);
  sub_302D98();

  swift_beginAccess();
  v7 = *(v1 + 24);
  v8 = *(v7 + 16);
  v28[1] = *(v2 + 16);

  v32 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = a1 + 56;
    v30 = _swiftEmptyArrayStorage;
    while (v10 < *(v7 + 16))
    {
      v12 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v13 = *(v33 + 72);
      v14 = v7;
      sub_649C0(v7 + v12 + v13 * v10, v34);
      if (*(a1 + 16) && (v15 = (v34 + *(v31 + 32)), v17 = *v15, v16 = v15[1], sub_30D7F8(), sub_30C1F8(), v18 = sub_30D858(), v19 = -1 << *(a1 + 32), v20 = v18 & ~v19, ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a1 + 48) + 16 * v20);
          v23 = *v22 == v17 && v22[1] == v16;
          if (v23 || (sub_30D728() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_64A80(v34, v29);
        v24 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1752EC(0, v24[2] + 1, 1);
          v24 = v36;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_1752EC(v26 > 1, v27 + 1, 1);
          v24 = v36;
        }

        v24[2] = v27 + 1;
        v30 = v24;
        result = sub_64A80(v29, v24 + v12 + v27 * v13);
      }

      else
      {
LABEL_3:
        result = sub_64A24(v34);
      }

      ++v10;
      v7 = v14;
      if (v10 == v32)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_22:

    return v30;
  }

  return result;
}