uint64_t sub_21BB0()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_21CD0, v3, v2);
}

uint64_t sub_21CD0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[9];

  swift_willThrow();
  (*(v3 + 8))(v1, v2);
  sub_FCF8(v4, qword_4E9D48);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21DB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_3E9A04();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_21E78, 0, 0);
}

uint64_t sub_21E78()
{
  if ((*(*(v0[2] + 24) + 16))())
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_221A0;

    return PlaybackController.togglePlayback()();
  }

  else if (sub_3E73F4())
  {
    sub_3E9914();
    v2 = sub_3E99F4();
    v3 = sub_3ED9B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Current item is already playing.", v4, 2u);
    }

    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_22088;

    return PlaybackController.play()();
  }
}

uint64_t sub_22088()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_3E9A04();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_3E7384();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_223E4, 0, 0);
}

uint64_t sub_223E4()
{
  v0[2] = v0[3];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
  if (swift_dynamicCast())
  {
    (*(v0[10] + 32))(v0[11], v0[12], v0[9]);
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_2264C;
    v2 = v0[11];
    v3 = v0[4];

    return sub_2284C(v2, v3);
  }

  else
  {

    sub_3E9914();
    swift_errorRetain();
    v5 = sub_3E99F4();
    v6 = sub_3ED9D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_0, v5, v6, "Unable to play content: %@", v7, 0xCu);
      sub_FCF8(v8, &unk_502160);
    }

    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];

    (*(v11 + 8))(v10, v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2264C()
{

  return _swift_task_switch(sub_22748, 0, 0);
}

uint64_t sub_22748()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_4E9D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_3E7384();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_3E9A04();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_3E6654();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_3EC204();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  sub_3E8CE4();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DF0);
  v3[24] = swift_task_alloc();
  v8 = sub_3ECC44();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_22AF0, 0, 0);
}

uint64_t sub_22AF0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  sub_3E7374();
  Models.AlertAction.init(from:)(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    sub_FCF8(*(v0 + 192), &qword_4E9DF0);
    sub_3E9914();
    v38 = *(v6 + 16);
    v38(v5, v8, v7);
    v9 = sub_3E99F4();
    v10 = sub_3ED9D4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    if (v11)
    {
      v36 = *(v0 + 104);
      v18 = swift_slowAlloc();
      v37 = v13;
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      sub_23F20();
      swift_allocError();
      v35 = v10;
      v38(v20, v15, v17);
      v21 = _swift_stdlib_bridgeErrorToNSError();
      (*(v16 + 8))(v15, v17);
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_0, v9, v35, "Unable to create alert action from error dialog: %@", v18, 0xCu);
      sub_FCF8(v19, &unk_502160);
      v13 = v37;

      v14 = v36;
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    (*(v12 + 8))(v13, v14);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v23 = *(v0 + 208);
    v22 = *(v0 + 216);
    v24 = *(v0 + 200);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v27 = *(v0 + 136);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    (*(v23 + 32))(v22, *(v0 + 192), v24);
    *(v0 + 280) = *(v29 + 40);
    *(v0 + 40) = v24;
    *(v0 + 48) = &protocol witness table for Models.AlertAction;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 16));
    (*(v23 + 16))(boxed_opaque_existential_0Tm, v22, v24);
    (*(v26 + 104))(v25, enum case for ActionMetricsBehavior.notProcessed(_:), v27);
    *(v0 + 224) = *(v28 + *(v29 + 36));
    sub_3ED6B4();
    *(v0 + 232) = sub_3ED6A4();
    v32 = sub_3ED684();
    *(v0 + 240) = v32;
    *(v0 + 248) = v31;

    return _swift_task_switch(sub_22ECC, v32, v31);
  }
}

uint64_t sub_22ECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v0[32] = sub_3EC4C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_22FD8;
  v4 = v0[22];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_22FD8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = v2[30];
    v4 = v2[31];
    v5 = sub_2329C;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v3 = v2[30];
    v4 = v2[31];
    v5 = sub_23128;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23128()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  return _swift_task_switch(sub_231C0, 0, 0);
}

uint64_t sub_231C0()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2329C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_2332C, 0, 0);
}

uint64_t sub_2332C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  sub_3E9914();
  swift_errorRetain();
  v1 = sub_3E99F4();
  v2 = sub_3ED9D4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to present alert action: %@", v3, 0xCu);
    sub_FCF8(v4, &unk_502160);
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];

  (*(v11 + 8))(v9, v10);
  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_2400C;

  return PlaybackActionImplementation.init(asPartOf:performing:)(a1, a2, a3, v10, v11);
}

uint64_t sub_235E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return PlaybackActionImplementation.perform()(a1, a2);
}

uint64_t sub_2368C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23794()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_3EC444();
    if (v1 <= 0x3F)
    {
      sub_23EBC(319, &qword_4E9DD0, &type metadata accessor for BaseObjectGraph, &type metadata accessor for ActionDispatcher);
      if (v2 <= 0x3F)
      {
        sub_23E58();
        if (v3 <= 0x3F)
        {
          sub_3E7404();
          if (v4 <= 0x3F)
          {
            type metadata accessor for NowPlayingLiveActivityController();
            if (v5 <= 0x3F)
            {
              sub_23EBC(319, &qword_4E9DE0, type metadata accessor for FreezableContentSubject, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_238F4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((((((((*(*(v8 - 8) + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v13 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v26 = *(v9 + 48);

      return v26((v24 + v11 + 8) & ~v11);
    }

    else
    {
      v25 = *v24;
      if (*v24 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

void sub_23B80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0) - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((((((((*(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((((*(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v25 = *(v10 + 56);

          v25((v23 + v12 + 8) & ~v12, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
        }
      }

      return;
    }
  }

  if (((((((((*(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((*(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_23E58()
{
  result = qword_4E9DD8;
  if (!qword_4E9DD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_4E9DD8);
  }

  return result;
}

void sub_23EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_23F20()
{
  result = qword_4E9DF8;
  if (!qword_4E9DF8)
  {
    sub_3E7384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9DF8);
  }

  return result;
}

unint64_t sub_23F78()
{
  result = qword_502190;
  if (!qword_502190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4E9F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502190);
  }

  return result;
}

uint64_t PlayQueueItemActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = sub_3ED6B4();
  v2[6] = sub_3ED6A4();
  v3 = sub_3E7404();
  v4 = swift_task_alloc();
  v2[7] = v4;
  *v4 = v2;
  v4[1] = sub_240E0;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_240E0()
{
  v2 = *v1;
  v2[8] = v0;

  v4 = sub_3ED684();
  v2[9] = v4;
  v2[10] = v3;
  if (v0)
  {
    v5 = sub_244DC;
  }

  else
  {
    v5 = sub_24240;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_24240()
{
  v1 = v0[4];
  v0[11] = v0[2];
  v0[12] = sub_3E7354();
  v2 = *v1;
  v5 = (&async function pointer to dispatch thunk of PlaybackController.QueueController.changeToItemAndPlay(_:) + async function pointer to dispatch thunk of PlaybackController.QueueController.changeToItemAndPlay(_:));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_24304;

  return v5(v2);
}

uint64_t sub_24304()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24540;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24420;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_24420()
{
  v1 = *(v0 + 24);

  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_3EC204();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_244DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24540()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_245BC()
{
  result = qword_4E9E00;
  if (!qword_4E9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E00);
  }

  return result;
}

uint64_t sub_24610(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return PlayQueueItemActionImplementation.perform(_:asPartOf:)(a1, a2);
}

unint64_t sub_246C4()
{
  result = qword_4E9E08;
  if (!qword_4E9E08)
  {
    type metadata accessor for PlayQueueItemAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E08);
  }

  return result;
}

uint64_t sub_2471C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24780();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_24780()
{
  result = qword_4E9E10;
  if (!qword_4E9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E10);
  }

  return result;
}

uint64_t CreateStationActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_3E6654();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_3E5FC4();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v3[29] = swift_task_alloc();
  v6 = sub_3EC1F4();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for FlowDestination();
  v3[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v3[36] = v7;
  v3[37] = *(v7 - 8);
  v8 = swift_task_alloc();
  v3[38] = v8;
  v3[39] = sub_3ED6B4();
  v3[40] = sub_3ED6A4();
  v9 = swift_task_alloc();
  v3[41] = v9;
  *v9 = v3;
  v9[1] = sub_24AA0;

  return BaseObjectGraph.inject<A>(_:)(v8, v7, v7);
}

uint64_t sub_24AA0()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {
    v4 = sub_3ED684();

    return _swift_task_switch(sub_25EC4, v4, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
    v6 = swift_task_alloc();
    *(v2 + 344) = v6;
    *v6 = v2;
    v6[1] = sub_24C5C;

    return BaseObjectGraph.inject<A>(_:)(v2 + 16, v5, v5);
  }
}

uint64_t sub_24C5C()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {
    v4 = sub_3ED684();

    return _swift_task_switch(sub_25F88, v4, v3);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E18);
    v6 = swift_task_alloc();
    *(v2 + 360) = v6;
    *v6 = v2;
    v6[1] = sub_24E18;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v5, v5);
  }
}

uint64_t sub_24E18()
{
  v2 = *v1;
  v2[46] = v0;

  v4 = sub_3ED684();
  v2[47] = v4;
  v2[48] = v3;
  if (v0)
  {
    v5 = sub_2606C;
  }

  else
  {
    v5 = sub_24F78;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_24F78()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = v1[1];
  v0[17] = *v1;
  v0[18] = v4;

  v5 = swift_task_alloc();
  v0[49] = v5;
  v6 = sub_2634C();
  *v5 = v0;
  v5[1] = sub_25070;
  v7 = v0[22];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 19, v0 + 17, v7, &type metadata for CreateStationIntent, v6, v2, v3);
}

uint64_t sub_25070()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_26158;
  }

  else
  {
    v5 = sub_251A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_251A4()
{
  v1 = v0[19];
  v0[51] = v1;
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v0[52] = v5;
  v6 = *(v3 + 16);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_252FC;

  return v9(v4, v5, v2, v3);
}

uint64_t sub_252FC(void *a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = *(v4 + 376);
    v6 = *(v4 + 384);
    v7 = sub_2624C;
  }

  else
  {

    v5 = *(v4 + 376);
    v6 = *(v4 + 384);
    v7 = sub_25448;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_25448()
{
  v1 = v0[51];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v36 = v3;
  v37 = v0[28];
  v38 = v0[26];
  v39 = v0[27];
  v33 = v0[24];
  v34 = v0[23];
  v35 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_3F5630;
  v32 = v1;
  v8 = *(v1 + 24);
  *v2 = *(v1 + 16);
  v2[1] = v8;
  swift_storeEnumTagMultiPayload();

  v9 = v4;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v10 = type metadata accessor for FlowAction(0);
  v11 = swift_allocObject();
  sub_FC38(v2, v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v12 = (v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v12 = 0;
  v12[1] = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v30 = v5[2];
  v30(v3, v9, v6);
  v28 = sub_3EC634();
  v27 = *(*(v28 - 8) + 56);
  v27(v7, 1, 1, v28);
  sub_3E5FB4();
  v13 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v15 = v14;
  v29 = *(v39 + 8);
  v29(v37, v38);
  v26 = v5[1];
  v26(v9, v6);
  sub_FC9C(v2);
  *(v11 + 16) = v13;
  *(v11 + 24) = v15;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 48;
  v25 = v5[4];
  v25(v11 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v36, v6);
  sub_14A10(v7, v11 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  *(v31 + 56) = v10;
  *(v31 + 64) = sub_26544(&qword_4F8A40, type metadata accessor for FlowAction);
  *(v31 + 32) = v11;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v16 = type metadata accessor for TabChangeAction();
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = v32;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v31;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
  v18 = v6;
  v30(v36, v9, v6);
  v27(v7, 1, 1, v28);

  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  v29(v37, v38);
  v26(v9, v18);
  *(v17 + 16) = v19;
  *(v17 + 24) = v21;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  v25(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v36, v18);
  sub_14A10(v7, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v0[15] = v16;
  v0[16] = sub_26544(&unk_501110, type metadata accessor for TabChangeAction);
  v0[12] = v17;
  (*(v33 + 104))(v35, enum case for ActionMetricsBehavior.notProcessed(_:), v34);
  v0[55] = sub_3ED6A4();
  v23 = sub_3ED684();
  v0[56] = v23;
  v0[57] = v22;

  return _swift_task_switch(sub_25954, v23, v22);
}

uint64_t sub_25954()
{
  v0[58] = sub_3EC4C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_25A3C;
  v4 = v0[20];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_25A3C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_25D30;
  }

  else
  {
    v5 = sub_25B94;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_25B94()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  v4 = v0[47];
  v5 = v0[48];

  return _swift_task_switch(sub_25C28, v4, v5);
}

uint64_t sub_25C28()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_25D30()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  (*(v2 + 8))(v1, v3);
  v4 = v0[47];
  v5 = v0[48];

  return _swift_task_switch(sub_25DBC, v4, v5);
}

uint64_t sub_25DBC()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_25EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F88()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2606C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_26158()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_2624C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

unint64_t sub_2634C()
{
  result = qword_4E9E20;
  if (!qword_4E9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E20);
  }

  return result;
}

uint64_t sub_263A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return CreateStationActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_26450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2659C();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_264A8()
{
  result = qword_4E9E30;
  if (!qword_4E9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E30);
  }

  return result;
}

uint64_t sub_26544(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2659C()
{
  result = qword_4E9E40;
  if (!qword_4E9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E40);
  }

  return result;
}

uint64_t FlowActionOpenStoreURLActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_3E6654();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_3E5FC4();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for FlowDestination();
  v3[18] = swift_task_alloc();
  v6 = sub_3EC1F4();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = sub_3EC314();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v9 = swift_task_alloc();
  v3[29] = v9;
  v3[30] = sub_3ED6B4();
  v3[31] = sub_3ED6A4();
  v10 = swift_task_alloc();
  v3[32] = v10;
  *v10 = v3;
  v10[1] = sub_26924;

  return BaseObjectGraph.inject<A>(_:)(v9, v8, v8);
}

uint64_t sub_26924()
{
  v2 = *v1;
  v2[33] = v0;

  v4 = sub_3ED684();
  v2[34] = v4;
  v2[35] = v3;
  if (v0)
  {
    v5 = sub_2747C;
  }

  else
  {
    v5 = sub_26A84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_26A84()
{
  v26 = v0[26];
  v31 = v0[25];
  v27 = v0[24];
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[18];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[15];
  v24 = v0[14];
  v25 = v0[13];
  v30 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_3F5310;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3ECC64();
  *(v5 + 56) = sub_3ECC74();
  *(v5 + 64) = &protocol witness table for Models.FlowBackAction;
  __swift_allocate_boxed_opaque_existential_0Tm((v5 + 32));
  sub_3ECC54();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9860) + 48);
  *v4 = 0;
  sub_3E6FD4();
  v7 = sub_3E5DC4();
  (*(*(v7 - 8) + 56))(&v4[v6], 0, 1, v7);
  v8 = v4;
  v19 = v4;
  swift_storeEnumTagMultiPayload();
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v20 = type metadata accessor for FlowAction(0);
  v9 = swift_allocObject();
  sub_FC38(v8, v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v10 = (v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v10 = 0;
  v10[1] = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  (*(v3 + 16))(v2, v1, v21);
  v11 = sub_3EC634();
  (*(*(v11 - 8) + 56))(v22, 1, 1, v11);
  sub_3E5FB4();
  v12 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v14 = v13;
  (*(v24 + 8))(v23, v25);
  (*(v3 + 8))(v1, v21);
  sub_FC9C(v19);
  *(v9 + 16) = v12;
  *(v9 + 24) = v14;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 48;
  (*(v3 + 32))(v9 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v2, v21);
  sub_14A10(v22, v9 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  *(v5 + 96) = v20;
  *(v5 + 104) = sub_27704(&qword_4F8A40, type metadata accessor for FlowAction);
  *(v5 + 72) = v9;
  sub_3EC304();
  v0[5] = v27;
  v0[6] = &protocol witness table for CompoundAction;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  (*(v31 + 16))(boxed_opaque_existential_0Tm, v26, v27);
  (*(v28 + 104))(v30, enum case for ActionMetricsBehavior.notProcessed(_:), v29);
  v0[36] = sub_3ED6A4();
  v17 = sub_3ED684();
  v0[37] = v17;
  v0[38] = v16;

  return _swift_task_switch(sub_26ED0, v17, v16);
}

uint64_t sub_26ED0()
{
  v0[39] = sub_3EC4C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_26FB8;
  v4 = v0[7];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_26FB8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_272C8;
  }

  else
  {
    v5 = sub_27110;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_27110()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v4 = v0[34];
  v5 = v0[35];

  return _swift_task_switch(sub_271A4, v4, v5);
}

uint64_t sub_271A4()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_272C8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  v5 = v0[35];

  return _swift_task_switch(sub_27354, v4, v5);
}

uint64_t sub_27354()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_2747C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return FlowActionOpenStoreURLActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_27610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2775C();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_27668()
{
  result = qword_4E9E48;
  if (!qword_4E9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E48);
  }

  return result;
}

uint64_t sub_27704(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2775C()
{
  result = qword_4E9E58;
  if (!qword_4E9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E58);
  }

  return result;
}

uint64_t FollowShowByURLActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v2[9] = swift_task_alloc();
  v2[10] = sub_3ED6B4();
  v2[11] = sub_3ED6A4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_278C4;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_278C4()
{
  v2 = *v1;
  v2[13] = v0;

  v4 = sub_3ED684();
  v2[14] = v4;
  v2[15] = v3;
  if (v0)
  {
    v5 = sub_27E70;
  }

  else
  {
    v5 = sub_27A24;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_27A24()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = sub_3E5DC4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = type metadata accessor for FollowShowByURLAction();
  v0[16] = (*(v4 + 40))(v1, 0, 1, 0, 0, 0, *(v2 + *(v7 + 20)), v3, v4);
  sub_27EDC(v1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E60);
  v9 = sub_27F44();
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_27BE0;

  return dispatch thunk of Future.then()(v0 + 19, v8, v9);
}

uint64_t sub_27BE0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_27DFC;
  }

  else
  {
    *(v2 + 153) = *(v2 + 152);
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_27D20;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_27D20()
{
  v1 = *(v0 + 153);
  v2 = *(v0 + 56);

  v3 = sub_3EC204();
  v4 = &enum case for ActionOutcome.performed(_:);
  if (!v1)
  {
    v4 = &enum case for ActionOutcome.unsupported(_:);
  }

  (*(*(v3 - 8) + 104))(v2, *v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_27DFC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27E70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27EDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27F44()
{
  result = qword_4E9E68;
  if (!qword_4E9E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4E9E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E68);
  }

  return result;
}

unint64_t sub_27FAC()
{
  result = qword_4E9E70;
  if (!qword_4E9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E70);
  }

  return result;
}

uint64_t sub_28000(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2368C;

  return FollowShowByURLActionImplementation.perform(_:asPartOf:)(a1, a2);
}

unint64_t sub_280B4()
{
  result = qword_4E9E78;
  if (!qword_4E9E78)
  {
    type metadata accessor for FollowShowByURLAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E78);
  }

  return result;
}

uint64_t sub_2810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_28170();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_28170()
{
  result = qword_4E9E80;
  if (!qword_4E9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E80);
  }

  return result;
}

uint64_t TabChangeActionOpenStoreURLActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_3E6654();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_3E5FC4();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v3[18] = swift_task_alloc();
  v6 = sub_3EC1F4();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = type metadata accessor for FlowDestination();
  v3[24] = swift_task_alloc();
  v3[25] = sub_3ED6B4();
  v3[26] = sub_3ED6A4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F10);
  v8 = swift_task_alloc();
  v3[27] = v8;
  *v8 = v3;
  v8[1] = sub_2842C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 7, v7, v7);
}

uint64_t sub_2842C()
{
  v2 = *v1;
  v2[28] = v0;

  v4 = sub_3ED684();
  v2[29] = v4;
  v2[30] = v3;
  if (v0)
  {
    v5 = sub_28D40;
  }

  else
  {
    v5 = sub_2858C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2858C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v40 = v2;
  v41 = v0[17];
  v42 = v0[15];
  v43 = v0[16];
  v37 = v0[12];
  v38 = v0[14];
  v36 = v0[13];
  v39 = v0[8];
  v0[31] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9E28);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_3F5630;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BB8) + 48);
  sub_3E6FD4();
  *(v1 + v7) = 1;
  swift_storeEnumTagMultiPayload();
  v8 = v3;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v29 = type metadata accessor for FlowAction(0);
  v9 = swift_allocObject();
  sub_FC38(v1, v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v10 = (v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v10 = 0;
  v10[1] = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 1;
  *(v9 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v34 = v5[2];
  v11 = v2;
  v12 = v4;
  v34(v11, v8, v4);
  v33 = sub_3EC634();
  v32 = *(*(v33 - 8) + 56);
  v32(v6, 1, 1, v33);
  sub_3E5FB4();
  v13 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v15 = v14;
  v31 = *(v43 + 8);
  v31(v41, v42);
  v30 = v5[1];
  v30(v8, v12);
  sub_FC9C(v1);
  *(v9 + 16) = v13;
  *(v9 + 24) = v15;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 48;
  v28 = v5[4];
  v28(v9 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v40, v12);
  sub_14A10(v6, v9 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  *(v35 + 56) = v29;
  *(v35 + 64) = sub_29060(&qword_4F8A40, type metadata accessor for FlowAction);
  *(v35 + 32) = v9;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v16 = type metadata accessor for TabChangeAction();
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = 13;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = v35;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
  v0[32] = v17;
  *(v17 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
  v34(v40, v8, v12);
  v32(v6, 1, 1, v33);
  sub_3E5FB4();
  v18 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v20 = v19;
  v31(v41, v42);
  v30(v8, v12);
  *(v17 + 16) = v18;
  *(v17 + 24) = v20;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  v28(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v40, v12);
  sub_14A10(v6, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  ObjectType = swift_getObjectType();
  v0[5] = v16;
  v22 = sub_29060(&unk_501110, type metadata accessor for TabChangeAction);
  v0[2] = v17;
  v0[6] = v22;
  (*(v36 + 104))(v38, enum case for ActionMetricsBehavior.notProcessed(_:), v37);

  v23 = swift_task_alloc();
  v0[33] = v23;
  *v23 = v0;
  v23[1] = sub_28AF0;
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[9];

  return ActionRunner.perform(_:withMetrics:asPartOf:)(v26, (v0 + 2), v24, v25, ObjectType, v39);
}

uint64_t sub_28AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 272) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 232);
    v7 = *(v2 + 240);
    v8 = sub_28DF0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v6 = *(v2 + 232);
    v7 = *(v2 + 240);
    v8 = sub_28C70;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_28C70()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_28D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_28DF0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_28EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return TabChangeActionOpenStoreURLActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_28F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_290B8();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_28FC4()
{
  result = qword_4E9E88;
  if (!qword_4E9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E88);
  }

  return result;
}

uint64_t sub_29060(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_290B8()
{
  result = qword_4E9E90;
  if (!qword_4E9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E90);
  }

  return result;
}

uint64_t TabChangeOpenAppLocationActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_3E6654();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = sub_3ED6B4();
  v3[16] = sub_3ED6A4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F10);
  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v3;
  v6[1] = sub_29248;

  return BaseObjectGraph.inject<A>(_:)(v3 + 7, v5, v5);
}

uint64_t sub_29248()
{
  v2 = *v1;
  v2[18] = v0;

  v4 = sub_3ED684();
  v2[19] = v4;
  v2[20] = v3;
  if (v0)
  {
    v5 = sub_296BC;
  }

  else
  {
    v5 = sub_293A8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_293A8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v0[21] = v0[7];
  ObjectType = swift_getObjectType();
  sub_297A0(v0 + 2);
  (*(v2 + 104))(v1, enum case for ActionMetricsBehavior.notProcessed(_:), v3);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_294BC;
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[9];

  return ActionRunner.perform(_:withMetrics:asPartOf:)(v9, (v0 + 2), v7, v8, ObjectType, v4);
}

uint64_t sub_294BC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v2[23] = v0;

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 2));
  v6 = v2[19];
  v7 = v2[20];
  if (v0)
  {
    v8 = sub_29728;
  }

  else
  {
    v8 = sub_29640;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_29640()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_296BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29728()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_297A0@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v39 = sub_3E5FC4();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_3EC1F4();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  sub_3E7074();
  v13 = sub_3E6D54();
  v15 = v14;
  if (v13 == sub_3E6D54() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_3EE804();

    if ((v17 & 1) == 0)
    {
      v27 = sub_3E7074();
      v28 = AppLocation.navigationTab.getter(v27);
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v38 = type metadata accessor for TabChangeAction();
      v19 = swift_allocObject();
      *(v19 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = v28;
      *(v19 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = _swiftEmptyArrayStorage;
      *(v19 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
      *(v19 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
      *(v19 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
      v29 = v40;
      (*(v4 + 16))(v6, v9, v40);
      v30 = sub_3EC634();
      (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
      sub_29EA4(v28);
      sub_3E5FB4();
      v31 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v37 = v6;
      v32 = v31;
      v34 = v33;
      sub_29EB8(v28);
      (*(v1 + 8))(v3, v39);
      (*(v4 + 8))(v9, v29);
      *(v19 + 16) = v32;
      *(v19 + 24) = v34;
      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      (*(v4 + 32))(v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v37, v29);
      sub_14A10(v12, v19 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      v24 = v41;
      v41[3] = v38;
      v25 = &unk_501110;
      v26 = type metadata accessor for TabChangeAction;
      goto LABEL_7;
    }
  }

  v18 = type metadata accessor for PresentNowPlayingAction();
  v19 = swift_allocObject();
  v20 = sub_3EC634();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v21 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v23 = v22;
  (*(v1 + 8))(v3, v39);
  *(v19 + 16) = v21;
  *(v19 + 24) = v23;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 32;
  (*(v4 + 32))(v19 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v9, v40);
  sub_14A10(v12, v19 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v24 = v41;
  v41[3] = v18;
  v25 = &unk_4E9EB0;
  v26 = type metadata accessor for PresentNowPlayingAction;
LABEL_7:
  result = sub_29ECC(v25, v26);
  v24[4] = result;
  *v24 = v19;
  return result;
}

unint64_t sub_29CA0()
{
  result = qword_4E9E98;
  if (!qword_4E9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E98);
  }

  return result;
}

uint64_t sub_29CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return TabChangeOpenAppLocationActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_29DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E50();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_29E50()
{
  result = qword_4E9EA8;
  if (!qword_4E9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9EA8);
  }

  return result;
}

uint64_t sub_29EA4(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_29EB8(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_29ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TabChangeOpenAudioActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_3E6F44();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_3E9A04();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_3E6F24();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_3E6D44();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_3E6EC4();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v9 = sub_3E6D64();
  v3[20] = v9;
  v3[21] = *(v9 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_2A1B0, 0, 0);
}

uint64_t sub_2A1B0()
{
  v59 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  sub_3E6F34();
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for AudioEntity.podcastShow(_:))
  {
    v5 = v0[23];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    (*(v0[21] + 96))(v5, v0[20]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = sub_2A91C;
    v10 = v0[16];
    v11 = v0[4];
    v12 = v0[2];

    return sub_2BC48(v12, v10, v11);
  }

  else if (v4 == enum case for AudioEntity.podcastEpisode(_:))
  {
    v14 = v0[23];
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[17];
    (*(v0[21] + 96))(v14, v0[20]);
    (*(v16 + 32))(v15, v14, v17);
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_2A730;
    v19 = v0[19];
    v20 = v0[4];
    v21 = v0[2];

    return sub_2AF7C(v21, v19, v20);
  }

  else if (v4 == enum case for AudioEntity.podcastCollection(_:))
  {
    v22 = v0[23];
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    (*(v0[21] + 96))(v22, v0[20]);
    (*(v24 + 32))(v23, v22, v25);
    v26 = swift_task_alloc();
    v0[28] = v26;
    *v26 = v0;
    v26[1] = sub_2AB08;
    v27 = v0[13];
    v28 = v0[4];
    v29 = v0[2];

    return sub_2C824(v29, v27, v28);
  }

  else
  {
    v31 = v0[6];
    v30 = v0[7];
    v32 = v0[5];
    v33 = v0[3];
    sub_3E98C4();
    (*(v31 + 16))(v30, v33, v32);
    v34 = sub_3E99F4();
    v35 = sub_3ED9E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v0[9];
      v37 = v0[7];
      v56 = v0[8];
      v57 = v0[10];
      v38 = v0[6];
      v55 = v0[5];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136315138;
      sub_3E6F34();
      v41 = sub_3ED2B4();
      v43 = v42;
      (*(v38 + 8))(v37, v55);
      v44 = sub_2EDD0(v41, v43, &v58);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_0, v34, v35, "Could not respond to unknown audio entity: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);

      (*(v36 + 8))(v57, v56);
    }

    else
    {
      v46 = v0[9];
      v45 = v0[10];
      v48 = v0[7];
      v47 = v0[8];
      v49 = v0[5];
      v50 = v0[6];

      (*(v50 + 8))(v48, v49);
      (*(v46 + 8))(v45, v47);
    }

    v51 = v0[2];
    v52 = enum case for ActionOutcome.unsupported(_:);
    v53 = sub_3EC204();
    (*(*(v53 - 8) + 104))(v51, v52, v53);
    (*(v0[21] + 8))(v0[23], v0[20]);

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_2A730()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2ACF4;
  }

  else
  {
    v2 = sub_2A844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2A844()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2A91C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2ADCC;
  }

  else
  {
    v2 = sub_2AA30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2AA30()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2AB08()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2AEA4;
  }

  else
  {
    v2 = sub_2AC1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2AC1C()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2ACF4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2ADCC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2AEA4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2AF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_3E6EC4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_3E9A04();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_3E5FC4();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v3[19] = swift_task_alloc();
  v7 = sub_3EC1F4();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for FlowDestination();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v3[26] = swift_task_alloc();
  v8 = sub_3E5DC4();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_2B25C, 0, 0);
}

uint64_t sub_2B25C()
{
  v58 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  sub_3E6EB4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27EDC(*(v0 + 208));
    v4 = sub_3E6E94();
    if (v5)
    {
      v6 = *(v0 + 200);
      v7 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      v11 = *(v0 + 144);
      v51 = *(v0 + 136);
      v53 = *(v0 + 128);
      v55 = *(v0 + 152);
      *(v0 + 272) = 1;
      *(v0 + 280) = 1;
      *v6 = v4;
      *(v6 + 8) = v5;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      *(v6 + 40) = *(v0 + 272);
      *(v6 + 48) = 0;
      *(v6 + 56) = *(v0 + 280);
      swift_storeEnumTagMultiPayload();
      v50 = v8;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v12 = type metadata accessor for FlowAction(0);
      v13 = swift_allocObject();
      sub_FC38(v6, v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
      type metadata accessor for FlowAction.DestinationType(0);
      swift_storeEnumTagMultiPayload();
      v14 = (v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
      *v14 = 0;
      v14[1] = 0;
      *(v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
      *(v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
      *(v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
      (*(v9 + 16))(v7, v8, v10);
      v15 = sub_3EC634();
      (*(*(v15 - 8) + 56))(v55, 1, 1, v15);
      sub_3E5FB4();
      v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v18 = v17;
      (*(v51 + 8))(v11, v53);
      (*(v9 + 8))(v50, v10);
      sub_FC9C(v6);
      *(v13 + 16) = v16;
      *(v13 + 24) = v18;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 48;
      (*(v9 + 32))(v13 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v10);
      sub_14A10(v55, v13 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      *(v0 + 40) = v12;
      *(v0 + 48) = sub_2EFFC(&qword_4F8A40, type metadata accessor for FlowAction);
      *(v0 + 16) = v13;
      v19 = swift_task_alloc();
      *(v0 + 256) = v19;
      *v19 = v0;
      v19[1] = sub_2B9A8;
      v20 = *(v0 + 72);
      v21 = *(v0 + 56);

      return sub_2E5BC(v21, v0 + 16, v20);
    }

    else
    {
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);
      v29 = *(v0 + 80);
      v30 = *(v0 + 64);
      sub_3E98C4();
      (*(v28 + 16))(v27, v30, v29);
      v31 = sub_3E99F4();
      v32 = sub_3ED9E4();
      v33 = os_log_type_enabled(v31, v32);
      v35 = *(v0 + 112);
      v34 = *(v0 + 120);
      v36 = *(v0 + 96);
      v37 = *(v0 + 104);
      v39 = *(v0 + 80);
      v38 = *(v0 + 88);
      if (v33)
      {
        v56 = *(v0 + 104);
        v40 = swift_slowAlloc();
        v52 = v32;
        v41 = swift_slowAlloc();
        v57 = v41;
        *v40 = 136315138;
        v42 = sub_3E6E74();
        v54 = v34;
        v44 = v43;
        (*(v38 + 8))(v36, v39);
        v45 = sub_2EDD0(v42, v44, &v57);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_0, v31, v52, "Could not open episode, no share URL and no UUID: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);

        (*(v35 + 8))(v54, v56);
      }

      else
      {

        (*(v38 + 8))(v36, v39);
        (*(v35 + 8))(v34, v37);
      }

      v46 = *(v0 + 56);
      v47 = enum case for ActionOutcome.unsupported(_:);
      v48 = sub_3EC204();
      (*(*(v48 - 8) + 104))(v46, v47, v48);

      v49 = *(v0 + 8);

      return v49();
    }
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_2B894;
    v24 = *(v0 + 232);
    v25 = *(v0 + 72);
    v26 = *(v0 + 56);

    return sub_2DB80(v26, v24, v25);
  }
}

uint64_t sub_2B894()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2F510;
  }

  else
  {
    v2 = sub_2F50C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2B9A8()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2BB68, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2BB68()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2BC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_3E6D44();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_3E9A04();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_3E5FC4();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v3[19] = swift_task_alloc();
  v7 = sub_3EC1F4();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for FlowDestination();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v3[26] = swift_task_alloc();
  v8 = sub_3E5DC4();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_2BF28, 0, 0);
}

uint64_t sub_2BF28()
{
  v58 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_3E6D34();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27EDC(v0[26]);
    v4 = sub_3E6D04();
    if (v5)
    {
      v6 = v0[25];
      v7 = v0[22];
      v8 = v0[23];
      v10 = v0[20];
      v9 = v0[21];
      v11 = v0[18];
      v51 = v0[17];
      v53 = v0[16];
      v55 = v0[19];
      *v6 = v4;
      v6[1] = v5;
      swift_storeEnumTagMultiPayload();
      v50 = v8;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v12 = type metadata accessor for FlowAction(0);
      v13 = swift_allocObject();
      sub_FC38(v6, v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
      type metadata accessor for FlowAction.DestinationType(0);
      swift_storeEnumTagMultiPayload();
      v14 = (v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
      *v14 = 0;
      v14[1] = 0;
      *(v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
      *(v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
      *(v13 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
      (*(v9 + 16))(v7, v8, v10);
      v15 = sub_3EC634();
      (*(*(v15 - 8) + 56))(v55, 1, 1, v15);
      sub_3E5FB4();
      v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v18 = v17;
      (*(v51 + 8))(v11, v53);
      (*(v9 + 8))(v50, v10);
      sub_FC9C(v6);
      *(v13 + 16) = v16;
      *(v13 + 24) = v18;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 48;
      (*(v9 + 32))(v13 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v10);
      sub_14A10(v55, v13 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      v0[5] = v12;
      v0[6] = sub_2EFFC(&qword_4F8A40, type metadata accessor for FlowAction);
      v0[2] = v13;
      v19 = swift_task_alloc();
      v0[32] = v19;
      *v19 = v0;
      v19[1] = sub_2B9A8;
      v20 = v0[9];
      v21 = v0[7];

      return sub_2E5BC(v21, (v0 + 2), v20);
    }

    else
    {
      v28 = v0[11];
      v27 = v0[12];
      v29 = v0[10];
      v30 = v0[8];
      sub_3E98C4();
      (*(v28 + 16))(v27, v30, v29);
      v31 = sub_3E99F4();
      v32 = sub_3ED9E4();
      v33 = os_log_type_enabled(v31, v32);
      v35 = v0[14];
      v34 = v0[15];
      v36 = v0[12];
      v37 = v0[13];
      v39 = v0[10];
      v38 = v0[11];
      if (v33)
      {
        v56 = v0[13];
        v40 = swift_slowAlloc();
        v52 = v32;
        v41 = swift_slowAlloc();
        v57 = v41;
        *v40 = 136315138;
        v42 = sub_3E6CE4();
        v54 = v34;
        v44 = v43;
        (*(v38 + 8))(v36, v39);
        v45 = sub_2EDD0(v42, v44, &v57);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_0, v31, v52, "Could not open show, no share URL and no UUID: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);

        (*(v35 + 8))(v54, v56);
      }

      else
      {

        (*(v38 + 8))(v36, v39);
        (*(v35 + 8))(v34, v37);
      }

      v46 = v0[7];
      v47 = enum case for ActionOutcome.unsupported(_:);
      v48 = sub_3EC204();
      (*(*(v48 - 8) + 104))(v46, v47, v48);

      v49 = v0[1];

      return v49();
    }
  }

  else
  {
    (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
    v23 = swift_task_alloc();
    v0[30] = v23;
    *v23 = v0;
    v23[1] = sub_2C538;
    v24 = v0[29];
    v25 = v0[9];
    v26 = v0[7];

    return sub_2DB80(v26, v24, v25);
  }
}

uint64_t sub_2C538()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2C734;
  }

  else
  {
    v2 = sub_2C64C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2C64C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2C734()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2C824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_3E6F24();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_3E9A04();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_3E5FC4();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  v3[21] = swift_task_alloc();
  v7 = sub_3EC1F4();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = sub_3EDD94();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  v9 = sub_3ED6F4();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_2CAF8, 0, 0);
}

uint64_t sub_2CAF8()
{
  v32 = v0;
  v1 = sub_3E6F14();
  v0[32] = v1;
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
    v3 = swift_task_alloc();
    v0[33] = v3;
    *v3 = v0;
    v3[1] = sub_2CE3C;

    return BaseObjectGraph.inject<A>(_:)(v0 + 7, v2, v2);
  }

  else
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];
    v7 = v0[10];
    sub_3E98C4();
    (*(v5 + 16))(v4, v7, v6);
    v8 = sub_3E99F4();
    v9 = sub_3ED9E4();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[14];
    v14 = v0[15];
    v16 = v0[12];
    v15 = v0[13];
    if (v10)
    {
      v30 = v0[15];
      v17 = swift_slowAlloc();
      v28 = v9;
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      v19 = sub_3E6ED4();
      v29 = v11;
      v21 = v20;
      (*(v15 + 8))(v13, v16);
      v22 = sub_2EDD0(v19, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_0, v8, v28, "Could not open station, station does not have a MOID: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      (*(v12 + 8))(v29, v30);
    }

    else
    {

      (*(v15 + 8))(v13, v16);
      (*(v12 + 8))(v11, v14);
    }

    v23 = v0[9];
    v24 = enum case for ActionOutcome.unsupported(_:);
    v25 = sub_3EC204();
    (*(*(v25 - 8) + 104))(v23, v24, v25);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_2CE3C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2D8EC;
  }

  else
  {
    v2 = sub_2CF50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2CF50()
{
  v1 = v0[34];
  swift_getObjectType();
  sub_F3D9C();
  v2 = sub_3EDDF4();
  v0[35] = v2;
  if (v1)
  {
    v3 = v0[32];
    (*(v0[30] + 8))(v0[31], v0[29]);
    swift_unknownObjectRelease();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v0[32];
    v9 = v0[27];
    v8 = v0[28];
    v10 = v0[26];
    (*(v0[30] + 8))(v0[31], v0[29]);
    swift_unknownObjectRelease();
    v11 = swift_allocObject();
    v0[36] = v11;
    *(v11 + 16) = v6;
    *(v11 + 24) = v7;
    (*(v9 + 104))(v8, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
    v6;
    v12 = v7;
    v13 = swift_task_alloc();
    v0[37] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F20);
    *v13 = v0;
    v13[1] = sub_2D1B4;
    v15 = v0[28];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v15, sub_2EFE0, v11, v14);
  }
}

uint64_t sub_2D1B4()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v3 = sub_2D9BC;
  }

  else
  {
    v3 = sub_2D338;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2D338()
{
  v1 = v0[8];
  v0[39] = v1;
  if (v1)
  {
    v3 = v0[24];
    v2 = v0[25];
    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[20];
    v27 = v0[21];
    v7 = v0[19];
    v25 = v3;
    v26 = v0[18];
    swift_retain_n();
    v24 = v2;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v8 = type metadata accessor for TabChangeAction();
    v9 = swift_allocObject();
    *(v9 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_navigationTab) = v1;
    *(v9 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_actions) = _swiftEmptyArrayStorage;
    *(v9 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_popToRoot) = 0;
    *(v9 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_userInitiated) = 0;
    *(v9 + OBJC_IVAR____TtC8ShelfKit15TabChangeAction_suppressMetrics) = 0;
    (*(v4 + 16))(v3, v2, v5);
    v10 = sub_3EC634();
    (*(*(v10 - 8) + 56))(v27, 1, 1, v10);

    sub_3E5FB4();
    v11 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v13 = v12;

    (*(v7 + 8))(v6, v26);
    (*(v4 + 8))(v24, v5);
    *(v9 + 16) = v11;
    *(v9 + 24) = v13;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    (*(v4 + 32))(v9 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v25, v5);
    sub_14A10(v27, v9 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v0[5] = v8;
    v0[6] = sub_2EFFC(&unk_501110, type metadata accessor for TabChangeAction);
    v0[2] = v9;
    v14 = swift_task_alloc();
    v0[40] = v14;
    *v14 = v0;
    v14[1] = sub_2D6E0;
    v15 = v0[11];
    v16 = v0[9];

    return sub_2E5BC(v16, (v0 + 2), v15);
  }

  else
  {
    v18 = v0[35];
    v19 = v0[32];
    v20 = v0[9];
    v21 = enum case for ActionOutcome.unsupported(_:);
    v22 = sub_3EC204();
    (*(*(v22 - 8) + 104))(v20, v21, v22);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2D6E0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {

    v3 = sub_2DA94;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v3 = sub_2D804;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2D804()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2D8EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2D9BC()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DA94()
{
  v1 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_3E6654();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  sub_3EC1F4();
  v3[13] = swift_task_alloc();
  v5 = sub_3E5DC4();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EF0);
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[19] = v7;
  v3[20] = sub_3ED6B4();
  v3[21] = sub_3ED6A4();
  v8 = swift_task_alloc();
  v3[22] = v8;
  *v8 = v3;
  v8[1] = sub_2DDA8;

  return BaseObjectGraph.inject<A>(_:)(v7, v6, v6);
}

uint64_t sub_2DDA8()
{
  v2 = *v1;
  v2[23] = v0;

  v4 = sub_3ED684();
  v2[24] = v4;
  v2[25] = v3;
  if (v0)
  {
    v5 = sub_2E528;
  }

  else
  {
    v5 = sub_2DF08;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2DF08()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[15] + 16))(v0[16], v0[8], v0[14]);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v0[5] = sub_3E6FE4();
  v0[6] = sub_2EFFC(&qword_4E9E50, &type metadata accessor for OpenStoreURLAction);
  __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  sub_3E6FC4();
  (*(v2 + 104))(v1, enum case for ActionMetricsBehavior.notProcessed(_:), v3);
  v0[26] = sub_3ED6A4();
  v5 = sub_3ED684();
  v0[27] = v5;
  v0[28] = v4;

  return _swift_task_switch(sub_2E054, v5, v4);
}

uint64_t sub_2E054()
{
  v0[29] = sub_3EC4C4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v2 = sub_23F78();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_2E13C;
  v4 = v0[7];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_2E13C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_2E3E0;
  }

  else
  {
    v5 = sub_2E294;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2E294()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v4 = v0[24];
  v5 = v0[25];

  return _swift_task_switch(sub_2E328, v4, v5);
}

uint64_t sub_2E328()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2E3E0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  v4 = v0[24];
  v5 = v0[25];

  return _swift_task_switch(sub_2E46C, v4, v5);
}

uint64_t sub_2E46C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_2E528()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_3E6654();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = sub_3ED6B4();
  v3[11] = sub_3ED6A4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F10);
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2E6F8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v5, v5);
}

uint64_t sub_2E6F8()
{
  v2 = *v1;
  v2[13] = v0;

  v4 = sub_3ED684();
  v2[14] = v4;
  v2[15] = v3;
  if (v0)
  {
    v5 = sub_27E70;
  }

  else
  {
    v5 = sub_2E858;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2E858()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[3];
  v0[16] = v0[2];
  ObjectType = swift_getObjectType();
  (*(v2 + 104))(v1, enum case for ActionMetricsBehavior.notProcessed(_:), v4);
  v0[17] = ActionRunner.perform(_:withMetrics:asPartOf:)(v5, v1, v3, ObjectType, v6);
  (*(v2 + 8))(v1, v4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_2E98C;
  v9 = v0[4];

  return Promise.then()(v9);
}

uint64_t sub_2E98C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_2EB24;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_2EAA8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2EAA8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2EB24()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_2EBA4@<X0>(void *a1@<X8>)
{
  result = sub_3EDD84();
  if (!v1)
  {
    if (result)
    {
      result = sub_26E354(result, 0, 0, 0);
    }

    *a1 = result;
  }

  return result;
}

uint64_t sub_2EBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2368C;

  return TabChangeOpenAudioActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_2ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF4C();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

_BYTE **sub_2ED64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2ED74(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2EDD0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2EDD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2F044(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2F4AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2EEA0()
{
  result = qword_4E9EC0;
  if (!qword_4E9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9EC0);
  }

  return result;
}

unint64_t sub_2EF4C()
{
  result = qword_4E9ED0;
  if (!qword_4E9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9ED0);
  }

  return result;
}

uint64_t sub_2EFA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2EFFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2F044(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2F150(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_3EE484();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2F150(uint64_t a1, unint64_t a2)
{
  v3 = sub_2F19C(a1, a2);
  sub_2F2CC(&off_4AF938);
  return v3;
}

void *sub_2F19C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_37A144(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_3EE484();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_3ED3F4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_37A144(v10, 0);
        result = sub_3EE3A4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2F2CC(uint64_t result)
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

  result = sub_2F3B8(result, v11, 1, v3);
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

char *sub_2F3B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2F4AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LibraryCategoryPlayAction.init(adamID:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for LibraryCategoryPlayAction() + 20);
  v6 = sub_3EC1F4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for LibraryCategoryPlayAction()
{
  result = qword_4E9F98;
  if (!qword_4E9F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryCategoryPlayAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryCategoryPlayAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2F6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_3EC1F4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_3EC1F4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2F7F8()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LibraryPlayAction.episodeUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);

  return v1;
}

uint64_t sub_2F8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryPlayAction.__allocating_init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:title:timestamp:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v41 = a6;
  v40 = a5;
  v39 = a4;
  v48 = a9;
  v49 = a10;
  v44 = a12;
  v45 = a8;
  v42 = a11;
  v43 = a7;
  v16 = sub_3E5FC4();
  v46 = *(v16 - 8);
  v47 = v16;
  __chkstk_darwin(v16);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v19 - 8);
  v21 = &v38[-v20];
  v22 = sub_3EC1F4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v38[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = swift_allocObject();
  v27 = (v26 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  *v27 = a1;
  v27[1] = a2;
  v28 = v26 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId;
  *v28 = a3;
  *(v28 + 8) = v39 & 1;
  v29 = v26 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId;
  *v29 = v40;
  *(v29 + 8) = v41 & 1;
  v30 = v43;
  sub_2F8C4(v43, v26 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings);
  *(v26 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_showPlayerIfPlaying) = v45;
  v31 = v26 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp;
  *v31 = v42;
  *(v31 + 8) = v44 & 1;
  (*(v23 + 16))(v25, a13, v22);
  v32 = sub_3EC634();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  sub_3E5FB4();
  v33 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v35 = v34;
  (*(v23 + 8))(a13, v22);
  sub_FCF8(v30, &qword_4E9FD0);
  (*(v46 + 8))(v18, v47);
  *(v26 + 16) = v33;
  *(v26 + 24) = v35;
  v36 = v49;
  *(v26 + 32) = v48;
  *(v26 + 40) = v36;
  *(v26 + 48) = 32;
  (*(v23 + 32))(v26 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v25, v22);
  sub_14A10(v21, v26 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v26;
}

uint64_t LibraryPlayAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:title:timestamp:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v14 = v13;
  v42 = a6;
  v41 = a5;
  v40 = a4;
  v49 = a9;
  v50 = a10;
  v45 = a12;
  v46 = a8;
  v43 = a11;
  v44 = a7;
  v18 = sub_3E5FC4();
  v47 = *(v18 - 8);
  v48 = v18;
  __chkstk_darwin(v18);
  v20 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v21 - 8);
  v23 = &v39[-v22];
  v24 = sub_3EC1F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v39[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = (v14 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  *v28 = a1;
  v28[1] = a2;
  v29 = v14 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId;
  *v29 = a3;
  *(v29 + 8) = v40 & 1;
  v30 = v14 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId;
  *v30 = v41;
  *(v30 + 8) = v42 & 1;
  v31 = v44;
  sub_2F8C4(v44, v14 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings);
  *(v14 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_showPlayerIfPlaying) = v46;
  v32 = v14 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp;
  *v32 = v43;
  *(v32 + 8) = v45 & 1;
  (*(v25 + 16))(v27, a13, v24);
  v33 = sub_3EC634();
  (*(*(v33 - 8) + 56))(v23, 1, 1, v33);
  sub_3E5FB4();
  v34 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v36 = v35;
  (*(v25 + 8))(a13, v24);
  sub_FCF8(v31, &qword_4E9FD0);
  (*(v47 + 8))(v20, v48);
  *(v14 + 16) = v34;
  *(v14 + 24) = v36;
  v37 = v50;
  *(v14 + 32) = v49;
  *(v14 + 40) = v37;
  *(v14 + 48) = 32;
  (*(v25 + 32))(v14 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v27, v24);
  sub_14A10(v23, v14 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v14;
}

uint64_t LibraryPlayAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, &qword_4E9FD0);
  return v0;
}

uint64_t LibraryPlayAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, &qword_4E9FD0);

  return swift_deallocClassInstance();
}

uint64_t LibraryPlayAction.pendingPlaybackMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId);
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId + 8);
  v3 = v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid;
  v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  v5 = *(v3 + 8);

  return PendingPlaybackMetadata.init(adamId:uuid:)(v1, v2, v4, v5);
}

uint64_t LibraryPlayAction.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE0);
  __chkstk_darwin(v1 - 8);
  v44 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v3 - 8);
  v43 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE8);
  __chkstk_darwin(v5 - 8);
  v42 = &v33 - v6;
  v7 = sub_3E7DB4();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E7DD4();
  __chkstk_darwin(v9 - 8);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E7FE4();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v36 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_3E7DA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v33 = xmmword_3F5630;
  *(v21 + 16) = xmmword_3F5630;
  v22 = *(v14 + 104);
  v22(v21 + v20, enum case for PlaybackIntent.Option.startPlayback(_:), v13);
  v23 = sub_34BF8(v21);
  swift_setDeallocating();
  v24 = *(v14 + 8);
  v24(v21 + v20, v13);
  swift_deallocClassInstance();
  v46 = v23;
  v25 = v37;
  if ((*(v37 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp + 8) & 1) == 0)
  {
    *v16 = *(v37 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp);
    v22(v16, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v13);
    sub_30B94(v19, v16);
    v24(v19, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v26 = swift_allocObject();
  *(v26 + 16) = v33;
  v27 = *(v25 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid + 8);
  *(v26 + 32) = *(v25 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  *(v26 + 40) = v27;
  v28 = v35;
  v29 = v36;
  *v36 = v26;
  v30 = v34;
  (*(v34 + 104))(v29, enum case for MediaIdentifier.localEpisodes(_:), v28);
  (*(v38 + 104))(v40, enum case for PlaybackIntent.Origin.default(_:), v39);
  (*(v30 + 56))(v42, 1, 1, v28);
  sub_2F8C4(v25 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, v43);

  sub_3E7DC4();
  v31 = sub_3E7454();
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  return sub_3E7D84();
}

uint64_t sub_308E4()
{
  v1 = *v0;
  v2 = *v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = (v1 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  v6 = *v5;
  v7 = v5[1];

  return PendingPlaybackMetadata.init(adamId:uuid:)(v3, v4, v6, v7);
}

uint64_t LibraryPlayAction.playPauseAction.getter()
{

  v1 = sub_3AF88(v0);

  return v1;
}

uint64_t LibraryPlayAction.episodeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);

  return v1;
}

uint64_t sub_30A1C()
{

  v1 = sub_3AF88(v0);

  return v1;
}

uint64_t sub_30A74()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);

  return v1;
}

uint64_t LibraryPlayAction.metricsId(sender:)()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId + 8))
  {
    return 0;
  }

  sub_17A28();
  return sub_3EE1F4();
}

uint64_t sub_30B2C()
{
  if (*(*v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId + 8))
  {
    return 0;
  }

  sub_17A28();
  return sub_3EE1F4();
}

uint64_t sub_30B94(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_3E7DA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_364DC(&unk_503E40, &type metadata accessor for PlaybackIntent.Option);
  v33 = a2;
  v11 = sub_3ED114();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_364DC(&qword_4EA190, &type metadata accessor for PlaybackIntent.Option);
      v21 = sub_3ED174();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_32230(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_30E74(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_3EE954();
  sub_3ED394();
  v8 = sub_3EE9A4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_3EE804() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_324F8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_30FC4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_3EE2E4();

    if (v9)
    {

      sub_36174(0, &qword_4EA188);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_3EE2D4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_31C18(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_37A774(v20 + 1);
    }

    v18 = v8;
    sub_37D9B0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_36174(0, &qword_4EA188);
  v11 = sub_3EDEB4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_32678(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_3EDEC4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_311FC(Swift::UInt64 *a1, Swift::UInt64 a2)
{
  v5 = *v2;
  sub_3EE954();
  sub_3EE994(a2);
  v6 = sub_3EE9A4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_32808(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_312F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_3EE2E4();

    if (v9)
    {

      sub_36174(0, &qword_4F1C20);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_3EE2D4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_31E08(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_37A9D8(v20 + 1);
    }

    v18 = v8;
    sub_37D9B0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_36174(0, &qword_4F1C20);
  v11 = sub_3EDEB4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_32954(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_3EDEC4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_3152C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_3EC9F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_364DC(&unk_4F8A50, &type metadata accessor for MetricsFieldInclusionRequest);
  v33 = a2;
  v11 = sub_3ED114();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_364DC(&qword_4EA160, &type metadata accessor for MetricsFieldInclusionRequest);
      v21 = sub_3ED174();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_32AE4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_3180C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_3EE944();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_32DAC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_318EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_3EE2E4();

    if (v8)
    {

      type metadata accessor for Highlight();
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
    }

    else
    {
      result = sub_3EE2D4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_31FF8(v7, result + 1);
        if (*(v27 + 24) <= *(v27 + 16))
        {
          sub_37B18C();
        }

        sub_37B4A4(v28, v27);

        *v3 = v27;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v29 = v2;
    sub_3EE954();
    v10 = [*(a2 + 32) identifier];
    sub_3ED244();

    sub_3ED394();

    v11 = sub_3EE9A4();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v31 = ~v12;
      while (1)
      {
        v14 = *(*(*(v6 + 48) + 8 * v13) + 32);

        v15 = [v14 identifier];
        v16 = sub_3ED244();
        v18 = v17;

        v19 = [*(a2 + 32) identifier];
        v20 = sub_3ED244();
        v22 = v21;

        if (v16 == v20 && v18 == v22)
        {

          goto LABEL_22;
        }

        v24 = sub_3EE804();

        if (v24)
        {
          break;
        }

        v13 = (v13 + 1) & v31;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v29;

      sub_32ECC(v26, v13, isUniquelyReferenced_nonNull_native);
      *v29 = v33;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_31C18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503E30);
    v2 = sub_3EE384();
    v15 = v2;
    sub_3EE294();
    if (sub_3EE304())
    {
      sub_36174(0, &qword_4EA188);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_37A774(v9 + 1);
        }

        v2 = v15;
        result = sub_3EDEB4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_3EE304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_31E08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA180);
    v2 = sub_3EE384();
    v15 = v2;
    sub_3EE294();
    if (sub_3EE304())
    {
      sub_36174(0, &qword_4F1C20);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_37A9D8(v9 + 1);
        }

        v2 = v15;
        result = sub_3EDEB4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_3EE304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_31FF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D30);
    v2 = sub_3EE384();
    v15 = v2;
    sub_3EE294();
    if (sub_3EE304())
    {
      type metadata accessor for Highlight();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_37B18C();
        }

        v2 = v15;
        sub_3EE954();
        v3 = [*(v14 + 32) identifier];
        sub_3ED244();

        sub_3ED394();

        result = sub_3EE9A4();
        v5 = v15 + 56;
        v6 = -1 << *(v15 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *(v5 + 8 * v8);
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v15 + 48) + 8 * v9) = v14;
        ++*(v15 + 16);
      }

      while (sub_3EE304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_32230(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_3E7DA4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_37A1B8();
  }

  else
  {
    if (v12 > v11)
    {
      sub_334FC(&type metadata accessor for PlaybackIntent.Option, &qword_4EA198);
      goto LABEL_12;
    }

    sub_339C4();
  }

  v13 = *v3;
  sub_364DC(&unk_503E40, &type metadata accessor for PlaybackIntent.Option);
  v14 = sub_3ED114();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_364DC(&qword_4EA190, &type metadata accessor for PlaybackIntent.Option);
      v22 = sub_3ED174();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_3EE884();
  __break(1u);
  return result;
}

Swift::Int sub_324F8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_37A514();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_33120();
      goto LABEL_16;
    }

    sub_33CE0();
  }

  v10 = *v4;
  sub_3EE954();
  sub_3ED394();
  result = sub_3EE9A4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_3EE804();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_3EE884();
  __break(1u);
  return result;
}

void sub_32678(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_37A774(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_333BC(&unk_503E30);
      goto LABEL_12;
    }

    sub_34138(v6 + 1, &unk_503E30);
  }

  v8 = *v3;
  v9 = sub_3EDEB4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_36174(0, &qword_4EA188);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_3EDEC4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_3EE884();
  __break(1u);
}

Swift::Int sub_32808(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_37A788();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_3327C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_33F18();
  }

  v8 = *v3;
  sub_3EE954();
  sub_3EE994(v4);
  result = sub_3EE9A4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_3EE884();
  __break(1u);
  return result;
}

void sub_32954(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_37A9D8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_333BC(&qword_4EA180);
      goto LABEL_12;
    }

    sub_34138(v6 + 1, &qword_4EA180);
  }

  v8 = *v3;
  v9 = sub_3EDEB4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_36174(0, &qword_4F1C20);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_3EDEC4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_3EE884();
  __break(1u);
}

uint64_t sub_32AE4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_3EC9F4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_37AC0C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_334FC(&type metadata accessor for MetricsFieldInclusionRequest, &unk_4F8A60);
      goto LABEL_12;
    }

    sub_34344();
  }

  v13 = *v3;
  sub_364DC(&unk_4F8A50, &type metadata accessor for MetricsFieldInclusionRequest);
  v14 = sub_3ED114();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_364DC(&qword_4EA160, &type metadata accessor for MetricsFieldInclusionRequest);
      v22 = sub_3ED174();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_3EE884();
  __break(1u);
  return result;
}

uint64_t sub_32DAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_37AF68();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_33734();
      a2 = v7;
      goto LABEL_12;
    }

    sub_34660();
  }

  v8 = *v3;
  result = sub_3EE944();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_3EE884();
  __break(1u);
  return result;
}

Swift::Int sub_32ECC(Swift::Int result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_37B18C();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_33874();
      goto LABEL_16;
    }

    sub_34850();
  }

  v7 = *v3;
  sub_3EE954();
  v8 = [*(v27 + 32) identifier];
  sub_3ED244();

  sub_3ED394();

  result = sub_3EE9A4();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for Highlight();
    do
    {
      v11 = *(*(*(v7 + 48) + 8 * a2) + 32);

      v12 = [v11 identifier];
      v13 = sub_3ED244();
      v15 = v14;

      v16 = [*(v27 + 32) identifier];
      v17 = sub_3ED244();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
        goto LABEL_19;
      }

      v21 = sub_3EE804();

      if (v21)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_3EE884();
  __break(1u);
  return result;
}

void *sub_33120()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA138);
  v2 = *v0;
  v3 = sub_3EE364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_3327C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA140);
  v2 = *v0;
  v3 = sub_3EE364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_333BC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_3EE364();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_334FC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_3EE364();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_33734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503E10);
  v2 = *v0;
  v3 = sub_3EE364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_33874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D30);
  v2 = *v0;
  v3 = sub_3EE364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_339C4()
{
  v1 = v0;
  v32 = sub_3E7DA4();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA198);
  v6 = sub_3EE374();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_364DC(&unk_503E40, &type metadata accessor for PlaybackIntent.Option);
      result = sub_3ED114();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_33CE0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA138);
  result = sub_3EE374();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_3EE954();

      sub_3ED394();
      result = sub_3EE9A4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_33F18()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA140);
  result = sub_3EE374();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_3EE954();
      sub_3EE994(v15);
      result = sub_3EE9A4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_34138(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_3EE374();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_3EDEB4(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_34344()
{
  v1 = v0;
  v32 = sub_3EC9F4();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A60);
  v6 = sub_3EE374();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_364DC(&unk_4F8A50, &type metadata accessor for MetricsFieldInclusionRequest);
      result = sub_3ED114();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_34660()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503E10);
  result = sub_3EE374();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_3EE944();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_34850()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503D30);
  result = sub_3EE374();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_3EE954();
      v17 = *(v16 + 32);

      v18 = [v17 identifier];
      sub_3ED244();

      sub_3ED394();

      result = sub_3EE9A4();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

Swift::Int sub_34ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA118);
    v3 = sub_3EE394();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_3EE954();
      sub_3EE964(v10);
      result = sub_3EE9A4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_34BF8(uint64_t a1)
{
  v2 = sub_3E7DA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA198);
    v9 = sub_3EE394();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_364DC(&unk_503E40, &type metadata accessor for PlaybackIntent.Option);
      v16 = sub_3ED114();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_364DC(&qword_4EA190, &type metadata accessor for PlaybackIntent.Option);
          v23 = sub_3ED174();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_34F18(uint64_t a1)
{
  result = sub_364DC(&qword_4E9FF8, type metadata accessor for LibraryPlayAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibraryPlayAction()
{
  result = qword_4EA028;
  if (!qword_4EA028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_34FC4()
{
  sub_350D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_350D0()
{
  if (!qword_4EA038)
  {
    sub_3E8944();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EA038);
    }
  }
}

void sub_35128(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_3EE5A4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503E30);
      v3 = sub_3EE394();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_3EE5A4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_3EE3F4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_3EDEB4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_36174(0, &qword_4EA188);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_3EDEC4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_3EDEB4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_36174(0, &qword_4EA188);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_3EDEC4();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_35418(uint64_t a1)
{
  v2 = sub_3EC9A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA168);
    v9 = sub_3EE394();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_364DC(&qword_4EA170, &type metadata accessor for MetricsFieldExclusionRequest);
      v16 = sub_3ED114();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_364DC(&qword_4EA178, &type metadata accessor for MetricsFieldExclusionRequest);
          v23 = sub_3ED174();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_35738(uint64_t a1)
{
  v2 = sub_3EC9F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A60);
    v9 = sub_3EE394();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_364DC(&unk_4F8A50, &type metadata accessor for MetricsFieldInclusionRequest);
      v16 = sub_3ED114();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_364DC(&qword_4EA160, &type metadata accessor for MetricsFieldInclusionRequest);
          v23 = sub_3ED174();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_35A58(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_3EE5A4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA120);
      result = sub_3EE394();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_3EE5A4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_3EE3F4();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_3E9CB4();
    sub_364DC(&qword_4EA128, &type metadata accessor for AnyCancellable);
    result = sub_3ED114();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_364DC(&qword_4EA130, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_3ED174();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_35CEC(uint64_t a1)
{
  v2 = sub_3E8994();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA148);
    v9 = sub_3EE394();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_364DC(&qword_4EA150, &type metadata accessor for InMemoryStateDomain);
      v16 = sub_3ED114();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_364DC(&qword_4EA158, &type metadata accessor for InMemoryStateDomain);
          v23 = sub_3ED174();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_3600C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA138);
    v3 = sub_3EE394();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_3EE954();

      sub_3ED394();
      result = sub_3EE9A4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_3EE804();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_36174(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_361BC(uint64_t a1)
{
  v2 = sub_3E5F24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1A0);
    v9 = sub_3EE394();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_364DC(&qword_4EA1A8, &type metadata accessor for Date.ComponentsFormatStyle.Field);
      v16 = sub_3ED114();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_364DC(&qword_4EA1B0, &type metadata accessor for Date.ComponentsFormatStyle.Field);
          v23 = sub_3ED174();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_364DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_365B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v1 - 8);
  v3 = v8 - v2;
  v8[1] = &_swiftEmptyDictionarySingleton;
  v4 = sub_3E78B4();
  sub_36C8C(*(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId), *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId + 8), v4, v5);
  if ((*(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId + 8) & 1) == 0)
  {
    *&v9 = *(v0 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId);
    sub_17A28();
    sub_3EE1F4();
  }

  sub_3E8594();
  sub_3E8474();
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_3E67A4();
  sub_3EBFC4();
  v15 = v9;
  sub_FCF8(&v15, &unk_4F8A10);
  v14 = v10;
  sub_FCF8(&v14, &qword_4E94E0);
  v13 = v11;
  sub_FCF8(&v13, &unk_4F8A20);
  sub_16AC0(v12);

  return sub_FCF8(v3, &unk_4E9EE0);
}

uint64_t sub_36810()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8[-v2];
  v9 = &_swiftEmptyDictionarySingleton;
  v4 = sub_3E78B4();
  sub_36C8C(*(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId), *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId + 8), v4, v5);
  if ((*(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8) & 1) == 0)
  {
    *&v10 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId);
    sub_17A28();
    sub_3EE1F4();
  }

  sub_3E8594();
  swift_beginAccess();
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  sub_3E67A4();
  sub_3EBFC4();
  v16 = v10;
  sub_FCF8(&v16, &unk_4F8A10);
  v15 = v11;
  sub_FCF8(&v15, &qword_4E94E0);
  v14 = v12;
  sub_FCF8(&v14, &unk_4F8A20);
  sub_16AC0(v13);

  return sub_FCF8(v3, &unk_4E9EE0);
}

double sub_36AB0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId + 8))
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    sub_17A28();
    v5 = sub_3EE1F4();
    v6 = v7;
  }

  v8 = sub_3E7A14();
  v10 = v9;
  v11 = sub_3E8594();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = a1;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *&result = 2036427856;
  *(a2 + 56) = xmmword_3F6700;
  return result;
}

uint64_t sub_36B64@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8))
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    sub_17A28();
    v6 = sub_3EE1F4();
    v7 = v8;
  }

  v9 = sub_3E7A14();
  v11 = v10;
  result = sub_3E8594();
  if (*(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton))
  {
    v14 = 0xE600000000000000;
    v15 = 0x746567646957;
  }

  else
  {
    v15 = 2036427856;
    if (*(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton))
    {
      v15 = 0x616C507472616D53;
    }

    v14 = 0xE400000000000000;
    if (*(v3 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton))
    {
      v14 = 0xEF6E6F7474754279;
    }
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = a1;
  a2[5] = result;
  a2[6] = v13;
  a2[7] = v15;
  a2[8] = v14;
  return result;
}

uint64_t sub_36C8C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_B4118(a3, a4);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v14 = *v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_36FA0();
        v12 = v14;
      }

      sub_1FB90((*(v12 + 56) + 32 * v10), v15);
      sub_36DF0(v10, v12);
      *v5 = v12;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_FCF8(v15, &unk_501090);
  }

  else
  {

    sub_3E9114();
    sub_39AB8(v15, a3, a4);
  }
}

uint64_t sub_36DF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_3EE264() + 1) & ~v5;
    do
    {
      sub_3EE954();

      sub_3ED394();
      v10 = sub_3EE9A4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_36FA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
  v2 = *v0;
  v3 = sub_3EE5D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2F4AC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1FB90(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t LibraryPlayPauseAction.__allocating_init(libraryPlayAction:)(uint64_t a1)
{
  v1 = sub_3AF88(a1);

  return v1;
}

uint64_t LibraryPlayPauseAction.episodeUuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);

  return v1;
}

uint64_t LibraryPlayPauseAction.settings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  swift_beginAccess();
  return sub_2F8C4(v1 + v3, a1);
}

uint64_t LibraryPlayPauseAction.settings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  swift_beginAccess();
  sub_3B4B0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t LibraryPlayPauseAction.playState.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LibraryPlayPauseAction.playState.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t LibraryPlayPauseAction.__allocating_init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:isSmartPlayButton:isWidgetPlayButton:timestamp:waitForEngine:shouldPreventQueueing:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15)
{
  v48 = a7;
  v47 = a6;
  v46 = a5;
  v45 = a4;
  v44 = a3;
  v54 = a12;
  v55 = a14;
  v53 = a11;
  v52 = a13;
  v50 = a8;
  v51 = a10;
  v49 = a9;
  v17 = sub_3E5FC4();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v20 - 8);
  v22 = &v44 - v21;
  v23 = sub_3EC1F4();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v29 = sub_3E8944();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  v30 = (v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  *v30 = a1;
  v30[1] = a2;
  v31 = v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  *v31 = v44;
  *(v31 + 8) = v45 & 1;
  v32 = v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
  *v32 = v46;
  *(v32 + 8) = v47 & 1;
  swift_beginAccess();
  v33 = v48;
  sub_3B520(v48, v27 + v28);
  swift_endAccess();
  *(v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = v50;
  v34 = sub_3E8474();
  v35 = (v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  *v35 = v34;
  v35[1] = v36;
  *(v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = v49;
  v37 = v52;
  *(v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = v51;
  *(v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = v37;
  v38 = v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
  *v38 = v53;
  *(v38 + 8) = v54 & 1;
  *(v27 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = v55;
  (*(v24 + 16))(v26, a15, v23);
  v39 = sub_3EC634();
  (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
  sub_3E5FB4();
  v40 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v42 = v41;
  (*(v24 + 8))(a15, v23);
  sub_FCF8(v33, &qword_4E9FD0);
  (*(v56 + 8))(v19, v57);
  *(v27 + 16) = v40;
  *(v27 + 24) = v42;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 48) = 32;
  (*(v24 + 32))(v27 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v26, v23);
  sub_14A10(v22, v27 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v27;
}

uint64_t LibraryPlayPauseAction.init(episodeUuid:episodeAdamId:channelAdamId:settings:showPlayerIfPlaying:isSmartPlayButton:isWidgetPlayButton:timestamp:waitForEngine:shouldPreventQueueing:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15)
{
  v16 = v15;
  v49 = a7;
  v48 = a6;
  v47 = a5;
  v46 = a4;
  v45 = a3;
  v55 = a12;
  v56 = a14;
  v54 = a11;
  v53 = a13;
  v51 = a8;
  v52 = a10;
  v50 = a9;
  v19 = sub_3E5FC4();
  v57 = *(v19 - 8);
  v58 = v19;
  __chkstk_darwin(v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v25 = sub_3EC1F4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v30 = sub_3E8944();
  (*(*(v30 - 8) + 56))(v16 + v29, 1, 1, v30);
  v31 = (v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  *v31 = a1;
  v31[1] = a2;
  v32 = v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  *v32 = v45;
  *(v32 + 8) = v46 & 1;
  v33 = v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
  *v33 = v47;
  *(v33 + 8) = v48 & 1;
  swift_beginAccess();
  v34 = v49;
  sub_3B520(v49, v16 + v29);
  swift_endAccess();
  *(v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = v51;
  v35 = sub_3E8474();
  v36 = (v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  *v36 = v35;
  v36[1] = v37;
  *(v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = v50;
  v38 = v53;
  *(v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = v52;
  *(v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = v38;
  v39 = v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
  *v39 = v54;
  *(v39 + 8) = v55 & 1;
  *(v16 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = v56;
  (*(v26 + 16))(v28, a15, v25);
  v40 = sub_3EC634();
  (*(*(v40 - 8) + 56))(v24, 1, 1, v40);
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;
  (*(v26 + 8))(a15, v25);
  sub_FCF8(v34, &qword_4E9FD0);
  (*(v57 + 8))(v21, v58);
  *(v16 + 16) = v41;
  *(v16 + 24) = v43;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 32;
  (*(v26 + 32))(v16 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v28, v25);
  sub_14A10(v24, v16 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v16;
}

void LibraryPlayPauseAction.init(deserializing:using:)()
{
  v1 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v2 = sub_3E8944();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_3EE574();
  __break(1u);
}

uint64_t sub_37DDC()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings, &qword_4E9FD0);
}

uint64_t LibraryPlayPauseAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings, &qword_4E9FD0);

  return v0;
}

uint64_t LibraryPlayPauseAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings, &qword_4E9FD0);

  return swift_deallocClassInstance();
}

uint64_t LibraryPlayPauseAction.pendingPlaybackMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId);
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8);
  v3 = v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid;
  v4 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  v5 = *(v3 + 8);

  return PendingPlaybackMetadata.init(adamId:uuid:)(v1, v2, v4, v5);
}

uint64_t LibraryPlayPauseAction.playbackIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE0);
  __chkstk_darwin(v1 - 8);
  v44 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v3 - 8);
  v43 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FE8);
  __chkstk_darwin(v5 - 8);
  v42 = &v33 - v6;
  v39 = sub_3E7DB4();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E7DD4();
  __chkstk_darwin(v8 - 8);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E7FE4();
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v38 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_3E7DA4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  v33 = xmmword_3F5630;
  *(v20 + 16) = xmmword_3F5630;
  v21 = *(v13 + 104);
  v21(v20 + v19, enum case for PlaybackIntent.Option.startPlayback(_:), v12);
  v22 = sub_34BF8(v20);
  swift_setDeallocating();
  v23 = *(v13 + 8);
  v23(v20 + v19, v12);
  swift_deallocClassInstance();
  v46 = v22;
  v24 = v36;
  if ((*(v36 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp + 8) & 1) == 0)
  {
    *v15 = *(v36 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp);
    v21(v15, enum case for PlaybackIntent.Option.initialItemPlayheadOverride(_:), v12);
    sub_30B94(v18, v15);
    v23(v18, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  v26 = *(v24 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid + 8);
  *(v25 + 32) = *(v24 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  *(v25 + 40) = v26;
  v27 = v38;
  *v38 = v25;
  v29 = v34;
  v28 = v35;
  (*(v34 + 104))(v27, enum case for MediaIdentifier.localEpisodes(_:), v35);
  (*(v37 + 104))(v40, enum case for PlaybackIntent.Origin.default(_:), v39);
  (*(v29 + 56))(v42, 1, 1, v28);
  v30 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  swift_beginAccess();
  sub_2F8C4(v24 + v30, v43);

  sub_3E7DC4();
  v31 = sub_3E7454();
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  return sub_3E7D84();
}

uint64_t sub_3866C()
{
  v1 = *v0;
  v2 = *v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = (v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  v6 = *v5;
  v7 = v5[1];

  return PendingPlaybackMetadata.init(adamId:uuid:)(v3, v4, v6, v7);
}

uint64_t LibraryPlayPauseAction.episodeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);

  return v1;
}

uint64_t sub_38798()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);

  return v1;
}

uint64_t LibraryPlayPauseAction.metricsName(sender:)()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton))
  {
    return 0x746567646957;
  }

  if (*(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton))
  {
    return 0x616C507472616D53;
  }

  return 2036427856;
}

uint64_t LibraryPlayPauseAction.metricsId(sender:)()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8))
  {
    return 0;
  }

  sub_17A28();
  return sub_3EE1F4();
}

uint64_t sub_388AC()
{
  if (*(*v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton))
  {
    return 0x746567646957;
  }

  if (*(*v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton))
  {
    return 0x616C507472616D53;
  }

  return 2036427856;
}

uint64_t sub_3891C()
{
  if (*(*v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8))
  {
    return 0;
  }

  sub_17A28();
  return sub_3EE1F4();
}

uint64_t LibraryPlayPauseAction.generateItemLevelImpressionFields(interactionView:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3EC544();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3EC5F4();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v7 = sub_3EC634();
  v43 = *(v7 - 8);
  if ((*(v43 + 48))(v1 + v6, 1, v7) != 1)
  {
    sub_3ED9D4();
    sub_3B590();
    v8 = sub_3EE0C4();
    sub_3E9754();
  }

  if (*(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8))
  {
    v9 = *(v43 + 56);

    return v9(a1, 1, 1, v7);
  }

  else
  {
    v42 = a1;
    *&v45 = *(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId);
    sub_17A28();
    sub_3EE1F4();
    v47 = &_swiftEmptyDictionarySingleton;
    if (*(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId + 8))
    {
      sub_39FFC(0x416C656E6E616863, 0xED000064496D6164, &v45);
      sub_FCF8(&v45, &unk_501090);
      v11 = v47;
    }

    else
    {
      v46 = &type metadata for String;
      *&v45 = sub_3EE1F4();
      *(&v45 + 1) = v12;
      sub_1FB90(&v45, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_3A0A0(v44, 0x416C656E6E616863, 0xED000064496D6164, isUniquelyReferenced_nonNull_native);
      v11 = &_swiftEmptyDictionarySingleton;
      v47 = &_swiftEmptyDictionarySingleton;
    }

    v14 = sub_3E7844();
    v16 = v15;
    v17 = sub_3E8594();
    v46 = &type metadata for String;
    *&v45 = v17;
    *(&v45 + 1) = v18;
    sub_1FB90(&v45, v44);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v44, v14, v16, v19);

    v47 = v11;
    v20 = sub_3E7924();
    v22 = v21;
    if (*(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton))
    {
      v23 = 0xE600000000000000;
      v24 = 0x746567646957;
    }

    else
    {
      v24 = 2036427856;
      if (*(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton))
      {
        v24 = 0x616C507472616D53;
      }

      v23 = 0xE400000000000000;
      if (*(v2 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton))
      {
        v23 = 0xEF6E6F7474754279;
      }
    }

    v46 = &type metadata for String;
    *&v45 = v24;
    *(&v45 + 1) = v23;
    sub_1FB90(&v45, v44);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v44, v20, v22, v25);

    v26 = sub_3E7874();
    v28 = v27;
    v29 = sub_3E7A14();
    v46 = &type metadata for String;
    *&v45 = v29;
    *(&v45 + 1) = v30;
    sub_1FB90(&v45, v44);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v44, v26, v28, v31);

    v32 = sub_3E7924();
    v34 = v33;
    v46 = &type metadata for String;
    *&v45 = 0x616C507472616D53;
    *(&v45 + 1) = 0xEF6E6F7474754279;
    sub_1FB90(&v45, v44);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v44, v32, v34, v35);

    v36 = sub_3E7854();
    v38 = v37;
    v39 = sub_3E8594();
    v46 = &type metadata for String;
    *&v45 = v39;
    *(&v45 + 1) = v40;
    sub_1FB90(&v45, v44);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_39B88(v44, v36, v38, v41);

    sub_3EC5D4();
    sub_3EC534();
    sub_3EC604();
    return (*(v43 + 56))(v42, 0, 1, v7);
  }
}

uint64_t sub_38EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1FB90(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_3A0A0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_FCF8(a1, &unk_501090);
    sub_39FFC(a2, a3, v9);

    return sub_FCF8(v9, &unk_501090);
  }

  return result;
}

uint64_t LibraryPlayPauseAction.withTimestamp(_:)(double a1)
{
  v3 = sub_3E5FC4();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v55 = &v43[-v6];
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v43[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v43[-v14];
  v16 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  v17 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid + 8);
  v47 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId);
  v48 = v16;
  v46 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8);
  v45 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId);
  v44 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId + 8);
  v18 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  swift_beginAccess();
  sub_2F8C4(v1 + v18, v15);
  v19 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying);
  v20 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton);
  v51 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton);
  v52 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine);
  v49 = v19;
  v50 = v21;
  v53 = *(v1 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing);
  v22 = *(v8 + 16);
  v22(v12, v1 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v25 = sub_3E8944();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  v26 = (v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  v27 = v47;
  *v26 = v48;
  v26[1] = v17;
  v28 = v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  *v28 = v27;
  *(v28 + 8) = v46;
  v29 = v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
  *v29 = v45;
  *(v29 + 8) = v44;
  swift_beginAccess();

  sub_3B520(v15, v23 + v24);
  swift_endAccess();
  *(v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = v49;
  v30 = sub_3E8474();
  v31 = (v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  *v31 = v30;
  v31[1] = v32;
  v33 = v51;
  *(v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = v52;
  *(v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = v33;
  *(v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = v50;
  v34 = v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
  *v34 = a1;
  *(v34 + 8) = 0;
  *(v23 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = v53;
  v35 = v54;
  v22(v54, v12, v7);
  v36 = sub_3EC634();
  v37 = v55;
  (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
  v38 = v56;
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;
  (*(v57 + 8))(v38, v58);
  (*(v8 + 8))(v12, v7);
  sub_FCF8(v15, &qword_4E9FD0);
  *(v23 + 16) = v39;
  *(v23 + 24) = v41;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = 32;
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v35, v7);
  sub_14A10(v37, v23 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v23;
}

uint64_t LibraryPlayPauseAction.withoutTimestamp()()
{
  v1 = sub_3E5FC4();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v54 = &v41[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v53 = &v41[-v4];
  v5 = sub_3EC1F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v41[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v41[-v12];
  v14 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  v15 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid + 8);
  v45 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId);
  v46 = v14;
  v44 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId + 8);
  v43 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId);
  v42 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId + 8);
  v16 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  swift_beginAccess();
  sub_2F8C4(v0 + v16, v13);
  v17 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying);
  v18 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton);
  v49 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton);
  v50 = v18;
  v19 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine);
  v47 = v17;
  v48 = v19;
  v51 = *(v0 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing);
  v20 = *(v6 + 16);
  v20(v10, v0 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v5);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_settings;
  v23 = sub_3E8944();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = (v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeUuid);
  v25 = v45;
  *v24 = v46;
  v24[1] = v15;
  v26 = v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_episodeAdamId;
  *v26 = v25;
  *(v26 + 8) = v44;
  v27 = v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_channelAdamId;
  *v27 = v43;
  *(v27 + 8) = v42;
  swift_beginAccess();

  sub_3B520(v13, v21 + v22);
  swift_endAccess();
  *(v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_showPlayerIfPlaying) = v47;
  v28 = sub_3E8474();
  v29 = (v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_playState);
  *v29 = v28;
  v29[1] = v30;
  v31 = v49;
  *(v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isSmartPlayButton) = v50;
  *(v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_isWidgetPlayButton) = v31;
  *(v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_waitForEngine) = v48;
  v32 = v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_timestamp;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v21 + OBJC_IVAR____TtC8ShelfKit22LibraryPlayPauseAction_shouldPreventQueueing) = v51;
  v33 = v52;
  v20(v52, v10, v5);
  v34 = sub_3EC634();
  v35 = v53;
  (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
  v36 = v54;
  sub_3E5FB4();
  v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v39 = v38;
  (*(v55 + 8))(v36, v56);
  (*(v6 + 8))(v10, v5);
  sub_FCF8(v13, &qword_4E9FD0);
  *(v21 + 16) = v37;
  *(v21 + 24) = v39;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 32;
  (*(v6 + 32))(v21 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v33, v5);
  sub_14A10(v35, v21 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v21;
}

uint64_t sub_39AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1FB90(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_39B88(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_FCF8(a1, &unk_501090);
    sub_13A5BC(a2, a3, v9);

    return sub_FCF8(v9, &unk_501090);
  }

  return result;
}

_OWORD *sub_39B88(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_B4118(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_36FA0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_39D44(v16, a4 & 1);
    v11 = sub_B4118(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1FB90(a1, v22);
  }

  else
  {
    sub_39CD8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_39CD8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1FB90(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_39D44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
  v33 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1FB90(v24, v34);
      }

      else
      {
        sub_2F4AC(v24, v34);
      }

      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1FB90(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

double sub_39FFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_552A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_36FA0();
      v10 = v12;
    }

    sub_1FB90((*(v10 + 56) + 32 * v8), a3);
    sub_36DF0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *sub_3A0A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_552A8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_36FA0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_39D44(v16, a4 & 1);
    v11 = sub_552A8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1FB90(a1, v22);
  }

  else
  {
    sub_39CD8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_3A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_552A8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_58CC4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_55E4C(v18, a5 & 1);
    v13 = sub_552A8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_68E18(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_3A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_552A8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_58F98();
      v13 = v21;
      goto LABEL_8;
    }

    sub_5637C(v18, a5 & 1);
    v13 = sub_552A8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_3EE894();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_68E18(v13, a3, a4, a1, a2, v23);
  }
}