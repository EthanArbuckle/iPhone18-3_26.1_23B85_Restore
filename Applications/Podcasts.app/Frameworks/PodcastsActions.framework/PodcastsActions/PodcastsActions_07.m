uint64_t sub_B4930()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_B4970@<X0>(char **a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_B4740(a1);
}

uint64_t sub_B4990(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return RemoveEpisodesDownloadIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t UpdateEpisodeDownloadBehaviorImplementation.intent.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t UpdateEpisodeDownloadBehaviorImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[8] = a1;
  v3[9] = a2;
  v4 = a3[1];
  v3[10] = *a3;
  v3[11] = v4;
  return _swift_task_switch(sub_B4A88, 0, 0);
}

uint64_t sub_B4A88()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_B17B0(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130930, &unk_F35B8);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v4[8] = v3;
  v4[9] = v6;
  v4[6] = v2;
  v4[7] = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_B4BAC;
  v10 = v0[9];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v7, v7);
}

uint64_t sub_B4BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_B4F58;
  }

  else
  {
    v5 = sub_B4CC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B4CC8()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 56) privateQueueContext];
  *(v0 + 120) = v2;
  swift_unknownObjectRelease();
  *v1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v4 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_B4DBC;
  v6 = *(v0 + 72);

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v3, v3);
}

uint64_t sub_B4DBC()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_B4FD8;
  }

  else
  {
    v4 = sub_B4EEC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B4EEC()
{
  sub_4524((v0 + 16), *(v0 + 64) + 8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B4F58()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_B4FD8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t UpdateEpisodeDownloadBehaviorImplementation.perform()()
{
  v1[35] = v0;
  v2 = sub_E6974();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v4 = *(v3 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_B512C, 0, 0);
}

uint64_t sub_B512C()
{
  v26 = v0;
  v1 = v0[39];
  v2 = v0[35];
  sub_E6954();
  sub_B6408(v2, (v0 + 2));
  sub_B6408(v2, (v0 + 12));
  v3 = sub_E6964();
  v4 = sub_E7494();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[37];
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v8 = 136315394;
    v0[34] = v0[9];
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    v9 = sub_E7084();
    v11 = v10;
    sub_B6440((v0 + 2));
    v12 = sub_23E64(v9, v11, &v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = v0[18];
    v14 = sub_E7204();
    v16 = v15;
    sub_B6440((v0 + 12));
    v17 = sub_23E64(v14, v16, &v25);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_0, v3, v4, "Updating episodes to new download behavior (%s: %s", v8, 0x16u);
    swift_arrayDestroy();

    v18 = *(v7 + 8);
    v18(v5, v6);
  }

  else
  {
    v19 = v0[39];
    v20 = v0[36];
    v21 = v0[37];

    sub_B6440((v0 + 12));
    sub_B6440((v0 + 2));
    v18 = *(v21 + 8);
    v18(v19, v20);
  }

  v0[40] = v18;
  v22 = swift_task_alloc();
  v0[41] = v22;
  *v22 = v0;
  v22[1] = sub_B53A4;
  v23 = v0[35];

  return sub_B5774();
}

uint64_t sub_B53A4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 304);
    v5 = *(v2 + 312);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_B54F8, 0, 0);
  }
}

uint64_t sub_B54F8()
{
  v28 = v0;
  v1 = v0[38];
  v2 = v0[35];
  sub_E6954();
  sub_B6408(v2, (v0 + 22));
  v3 = sub_E6964();
  v4 = sub_E74D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[37];
    v25 = v0[38];
    v26 = v0[40];
    v6 = v0[36];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = v0[31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130938, &qword_F35D8);
    sub_E68C4();
    v10 = v0[33];
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
    sub_B6470();
    v11 = sub_E6F84();
    v13 = v12;

    sub_B6440((v0 + 22));
    v14 = sub_23E64(v11, v13, &v27);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Mass-updated download behaviors. Prior behaviors: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    v26(v25, v6);
  }

  else
  {
    v15 = v0[40];
    v17 = v0[37];
    v16 = v0[38];
    v18 = v0[36];

    v15(v16, v18);
    sub_B6440((v0 + 22));
  }

  v19 = v0[38];
  v20 = v0[39];
  v21 = *(v0[35] + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130938, &qword_F35D8);
  sub_E68C4();
  v22 = v0[32];

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_B5774()
{
  v1[12] = v0;
  v2 = sub_E7724();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_B5834, 0, 0);
}

uint64_t sub_B5834()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *v3;
  sub_B6408(v3, v0 + 16);
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  v7 = *(v0 + 64);
  v6[3] = *(v0 + 48);
  v6[4] = v7;
  v6[5] = *(v0 + 80);
  v8 = *(v0 + 32);
  v6[1] = *(v0 + 16);
  v6[2] = v8;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_B5968;
  v11 = *(v0 + 120);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_B65EC, v6, &type metadata for () + 8);
}

uint64_t sub_B5968()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_B5B60;
  }

  else
  {
    v7 = sub_B5AFC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_B5AFC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_B5B60()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

unint64_t sub_B5BC4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 48);
  result = sub_E7714();
  if (!v1)
  {
    v5 = result;
    if (result >> 62)
    {
      v6 = sub_E7AC4();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = sub_E79B4();
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          v9 = v8;
          sub_B5D54(v8);
        }
      }
    }

    v11 = 0;
    if ([v2 save:&v11])
    {
      return v11;
    }

    else
    {
      v10 = v11;
      sub_E5904();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_B5D54(void *a1)
{
  v2 = v1;
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_E59C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 uuid];
  if (v14)
  {
    v15 = v14;
    v16 = sub_E7064();
    v18 = v17;
  }

  else
  {
    v19 = [a1 objectID];
    v20 = [v19 URIRepresentation];

    sub_E5994();
    v16 = sub_E5974();
    v18 = v21;
    (*(v10 + 8))(v13, v9);
  }

  sub_E6954();
  sub_B6408(v2, v36);

  v22 = sub_E6964();
  v23 = sub_E7494();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34[0] = v4;
    v35[0] = v25;
    *v24 = 136315394;
    v26 = sub_23E64(v16, v18, v35);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v34[1] = v37;
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    v27 = sub_E7084();
    v29 = v28;
    sub_B6440(v36);
    v30 = sub_23E64(v27, v29, v35);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_0, v22, v23, "Updating download behavior of episode (%s to %s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v34[0]);
  }

  else
  {

    sub_B6440(v36);
    (*(v5 + 8))(v8, v4);
  }

  v31 = [a1 downloadBehavior];
  v32 = *(v2 + 72);
  os_unfair_lock_lock((v32 + 24));
  sub_B610C((v32 + 16), v31, a1);
  os_unfair_lock_unlock((v32 + 24));
  return [a1 setDownloadBehavior:*(v2 + 56)];
}

uint64_t sub_B610C(char **a1, Swift::UInt64 a2, id a3)
{
  v5 = [a3 objectID];
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  v21 = *a1;
  v10 = sub_E0728(a2);
  v11 = *(v8 + 2);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  if (*(v8 + 3) >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v8;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_E359C();
      v8 = v21;
      *a1 = v21;
      if (v14)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_E3B54(v10, a2, _swiftEmptyArrayStorage, v8);
    goto LABEL_9;
  }

  sub_E28F8(v13, isUniquelyReferenced_nonNull_native);
  v8 = v21;
  v15 = sub_E0728(a2);
  if ((v14 & 1) != (v16 & 1))
  {
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    result = sub_E7C54();
    __break(1u);
    return result;
  }

  v10 = v15;
  *a1 = v21;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a1 = *(v8 + 7);
  v8 = a1[v10];
  result = swift_isUniquelyReferenced_nonNull_native();
  a1[v10] = v8;
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_239C4(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
    a1[v10] = result;
  }

  v19 = *(v8 + 2);
  v18 = *(v8 + 3);
  if (v19 >= v18 >> 1)
  {
    result = sub_239C4((v18 > 1), v19 + 1, 1, v8);
    v8 = result;
    a1[v10] = result;
  }

  *(v8 + 2) = v19 + 1;
  v20 = &v8[24 * v19];
  *(v20 + 4) = v5;
  *(v20 + 5) = 0;
  v20[48] = 1;
  return result;
}

uint64_t sub_B62C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return UpdateEpisodeDownloadBehaviorImplementation.init(asPartOf:performing:)(a1, a2, a3);
}

uint64_t sub_B6378(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D7E4;

  return UpdateEpisodeDownloadBehaviorImplementation.perform()();
}

unint64_t sub_B6470()
{
  result = qword_130948;
  if (!qword_130948)
  {
    type metadata accessor for MTEpisodeDownloadBehavior(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130948);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_B64E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B6530(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_B6594()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_B6608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for AnyJSIntentModel() + 36);
  v7 = sub_E6C34();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t AnyJSIntentModel.object.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_E6C34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t AnyJSIntentModel.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = v3 + *(a2 + 36);
  sub_E6C24();
  v7 = v17;
  if (v17)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin(v8);
    v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_E7BC4();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() valueWithObject:v13 inContext:a1];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130980, &qword_F36B0);
  result = sub_B689C();
  a3[4] = result;
  *a3 = v14;
  return result;
}

unint64_t sub_B689C()
{
  result = qword_130988[0];
  if (!qword_130988[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130980, &qword_F36B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_130988);
  }

  return result;
}

uint64_t AnyJSIntentModel.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23[0] = a3;
  v23[1] = a4;
  v24 = a2;
  v7 = sub_E6C34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6C44();
  v12 = sub_E6C14();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v11, v7);
  if (v14)
  {
    v16 = sub_E6C94();
    (*(*(v16 - 8) + 8))(v24, v16);
    return sub_B6608(v12, v14, a1, a5);
  }

  else
  {
    v18 = sub_E6F54();
    sub_B6BC4();
    swift_allocError();
    v20 = v19;
    v21 = type metadata accessor for AnyJSIntentModel();
    *v20 = 0x646E696B24;
    v20[1] = 0xE500000000000000;
    v20[2] = v21;
    v20[3] = _swiftEmptyArrayStorage;
    (*(*(v18 - 8) + 104))(v20, enum case for JSONError.malformedProperty(_:), v18);
    swift_willThrow();
    v22 = sub_E6C94();
    (*(*(v22 - 8) + 8))(v24, v22);
    return (v15)(a1, v7);
  }
}

unint64_t sub_B6BC4()
{
  result = qword_12D830;
  if (!qword_12D830)
  {
    sub_E6F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D830);
  }

  return result;
}

uint64_t sub_B6C8C()
{
  result = sub_E6C34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_E6C34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B6DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_E6C34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t EnqueueEpisodeForPlaybackIntent.init(episodeID:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for EnqueueEpisodeForPlaybackIntent() + 20);
  v8 = sub_E5D24();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t type metadata accessor for EnqueueEpisodeForPlaybackIntent()
{
  result = qword_130A68;
  if (!qword_130A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id EnqueueEpisodeForPlaybackIntent.episodeID.getter()
{
  v1 = *v0;
  sub_95FE0(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t EnqueueEpisodeForPlaybackIntent.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnqueueEpisodeForPlaybackIntent() + 20);
  v4 = sub_E5D24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_B7104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_E5D24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B71BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_E5D24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_B725C()
{
  result = sub_E5D24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PodcastsActions25RemoteQueueOperationErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t EnqueueShowForPlaybackIntent.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnqueueShowForPlaybackIntent() + 20);
  v4 = sub_E5D24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnqueueShowForPlaybackIntent()
{
  result = qword_130AF8;
  if (!qword_130AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnqueueShowForPlaybackIntent.init(showID:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for EnqueueShowForPlaybackIntent() + 20);
  v8 = sub_E5D24();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_B74A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_E5D24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B755C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_E5D24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchChannelForPodcastIntent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FetchChannelForPodcastIntent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t FetchMediaAPIRepresentableIntent.init(entityIDs:typeIncludes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FetchMediaAPIRepresentableIntent.contentType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_E6154();
  if (swift_dynamicCastMetatype())
  {
    v4 = &enum case for MediaRequest.ContentType.podcastChannel(_:);
LABEL_7:
    v5 = *v4;
    v6 = sub_E6014();
    return (*(*(v6 - 8) + 104))(a2, v5, v6);
  }

  sub_E6164();
  if (swift_dynamicCastMetatype())
  {
    v4 = &enum case for MediaRequest.ContentType.podcast(_:);
    goto LABEL_7;
  }

  sub_E6524();
  if (swift_dynamicCastMetatype())
  {
    v4 = &enum case for MediaRequest.ContentType.podcastEpisode(_:);
    goto LABEL_7;
  }

  type metadata accessor for FetchMediaAPIRepresentableIntent.FetchMediaAPIRepresentableError();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

unint64_t static FetchMediaAPIRepresentableIntent.kind.getter()
{
  sub_E7984(28);

  v1._countAndFlagsBits = sub_E7D44();
  sub_E7134(v1);

  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  sub_E7134(v2);
  return 0xD000000000000019;
}

unint64_t sub_B7874@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = static FetchMediaAPIRepresentableIntent.kind.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_B78A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FetchShowLatestEpisodesIntent.init(show:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_96004(a1, a3);
  result = type metadata accessor for FetchShowLatestEpisodesIntent();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for FetchShowLatestEpisodesIntent()
{
  result = qword_130C88;
  if (!qword_130C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B7AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B7B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B7BB0()
{
  result = type metadata accessor for ShowEntity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

int *FollowFeedIntent.init(rssFeedURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_E59C4();
  v5 = *(v4 - 8);
  (*(v5 + 32))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
  result = type metadata accessor for FollowFeedIntent();
  v7 = a2 + result[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + result[7]) = 0;
  return result;
}

int *FollowFeedIntent.init(feedURL:adamID:location:contentRating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_CF40(a1, a7);
  result = type metadata accessor for FollowFeedIntent();
  v14 = a7 + result[5];
  *v14 = a2;
  *(v14 + 8) = a3 & 1;
  v15 = (a7 + result[6]);
  *v15 = a4;
  v15[1] = a5;
  *(a7 + result[7]) = a6 & 1;
  return result;
}

uint64_t type metadata accessor for FollowFeedIntent()
{
  result = qword_130D20;
  if (!qword_130D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FollowFeedIntent.adamID.getter()
{
  v1 = (v0 + *(type metadata accessor for FollowFeedIntent() + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t FollowFeedIntent.location.getter()
{
  v1 = (v0 + *(type metadata accessor for FollowFeedIntent() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_B7F00()
{
  result = qword_130CC0;
  if (!qword_130CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130CC0);
  }

  return result;
}

uint64_t sub_B7F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_B8054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_B811C()
{
  sub_E480();
  if (v0 <= 0x3F)
  {
    sub_5041C(319, &unk_130D30);
    if (v1 <= 0x3F)
    {
      sub_5041C(319, &qword_12E680);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t PodcastDonationModel.init(librarySnapshotFollowedShow:)(uint64_t a1)
{
  sub_E6764();
  sub_E6754();
  sub_E6744();
  sub_E6494();
  v2 = sub_E6774();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_B82FC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_B8344(uint64_t a1)
{
  v2 = sub_B84D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8380(uint64_t a1)
{
  v2 = sub_B84D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibrarySnapshotIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130D68, qword_F41E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_B84D0();
  sub_E7D14();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_B84D0()
{
  result = qword_130D70;
  if (!qword_130D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D70);
  }

  return result;
}

unint64_t sub_B8550()
{
  result = qword_130D78;
  if (!qword_130D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D78);
  }

  return result;
}

unint64_t sub_B85AC()
{
  result = qword_130D80;
  if (!qword_130D80)
  {
    sub_E6274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D80);
  }

  return result;
}

unint64_t sub_B86A8()
{
  result = qword_130D88;
  if (!qword_130D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D88);
  }

  return result;
}

unint64_t sub_B8700()
{
  result = qword_130D90;
  if (!qword_130D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D90);
  }

  return result;
}

unint64_t sub_B8754()
{
  result = qword_130D98;
  if (!qword_130D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D98);
  }

  return result;
}

uint64_t LibraryStorageTipSuggestedLimitIntent.storageUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryStorageTipSuggestedLimitIntent() + 24);
  v4 = sub_E60F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LibraryStorageTipSuggestedLimitIntent()
{
  result = qword_130E60;
  if (!qword_130E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryStorageTipSuggestedLimitIntent.storageAvailable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryStorageTipSuggestedLimitIntent() + 28);
  v4 = sub_E60F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryStorageTipSuggestedLimitIntent.previousIgnoredStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryStorageTipSuggestedLimitIntent() + 32);

  return sub_B8950(v3, a1);
}

uint64_t sub_B8950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryStorageTipSuggestedLimitIntent.init(globalLimit:supportedLimits:storageUsed:storageAvailable:previousIgnoredStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
  v11 = v10[6];
  v12 = sub_E60F4();
  v13 = *(*(v12 - 8) + 32);
  v13(&a6[v11], a3, v12);
  v13(&a6[v10[7]], a4, v12);
  v14 = &a6[v10[8]];

  return sub_B8A98(a5, v14);
}

uint64_t sub_B8A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B8B20()
{
  v1 = *v0;
  v2 = 0x694C6C61626F6C67;
  v3 = 0x55656761726F7473;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574726F70707573;
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

uint64_t sub_B8BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_BA2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B8C10(uint64_t a1)
{
  v2 = sub_B99D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8C4C(uint64_t a1)
{
  v2 = sub_B99D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryStorageTipSuggestedLimitIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA8, &qword_F4480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_B99D0();
  sub_E7D14();
  v18 = *v3;
  v17 = 0;
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_BA47C(&qword_130DB8, type metadata accessor for MTPodcastEpisodeLimit);
  sub_E7B94();
  if (!v2)
  {
    v18 = v3[1];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DC0, &qword_F4488);
    sub_B9A24(&qword_130DC8, &qword_130DB8);
    sub_E7B94();
    v11 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
    v12 = v11[6];
    LOBYTE(v18) = 2;
    sub_E60F4();
    sub_BA47C(&qword_130DD0, &type metadata accessor for StorageSpace);
    sub_E7B94();
    v13 = v11[7];
    LOBYTE(v18) = 3;
    sub_E7B94();
    v14 = v11[8];
    LOBYTE(v18) = 4;
    sub_E7B74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LibraryStorageTipSuggestedLimitIntent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v47 = &v41 - v5;
  v6 = sub_E60F4();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DD8, &qword_F4490);
  v48 = *(v51 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v51);
  v15 = &v41 - v14;
  v16 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v20 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_B99D0();
  v50 = v15;
  v22 = v52;
  sub_E7D04();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v52 = v12;
  v45 = v10;
  v23 = v19;
  v24 = v48;
  v25 = v49;
  type metadata accessor for MTPodcastEpisodeLimit(0);
  v54 = 0;
  sub_BA47C(&qword_130DE0, type metadata accessor for MTPodcastEpisodeLimit);
  v26 = v50;
  sub_E7B64();
  v27 = v23;
  *v23 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DC0, &qword_F4488);
  v54 = 1;
  sub_B9A24(&qword_130DE8, &qword_130DE0);
  sub_E7B64();
  *(v23 + 1) = v55;
  LOBYTE(v55) = 2;
  v29 = sub_BA47C(&qword_130DF0, &type metadata accessor for StorageSpace);
  v30 = v52;
  sub_E7B64();
  v31 = *(v16 + 24);
  v44 = 0;
  v32 = v29;
  v33 = *(v25 + 32);
  v42 = v16;
  v43 = v27;
  v33(&v27[v31], v30, v6);
  LOBYTE(v55) = 3;
  v34 = v44;
  v35 = v45;
  v52 = v32;
  sub_E7B64();
  if (v34)
  {
    (*(v24 + 8))(v26, v51);
    v37 = v43;
    v36 = v44;
    __swift_destroy_boxed_opaque_existential_1(v53);
    v38 = *(v37 + 8);

    if (!v36)
    {
      return (*(v25 + 8))(v37 + *(v16 + 24), v6);
    }
  }

  else
  {
    v33((v43 + *(v42 + 28)), v35, v6);
    LOBYTE(v55) = 4;
    v39 = v47;
    sub_E7B54();
    (*(v24 + 8))(v26, v51);
    v40 = v43;
    sub_B8A98(v39, v43 + *(v42 + 32));
    sub_B9AC0(v40, v46);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_B9B24(v40);
  }

  return result;
}

BOOL _s15PodcastsActions37LibraryStorageTipSuggestedLimitIntentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_E60F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130ED8, &qword_F4718);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v33 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = a1[1];
  v19 = a2[1];
  v20 = *(v18 + 16);
  if (v20 != *(v19 + 16))
  {
    return 0;
  }

  if (v20 && v18 != v19)
  {
    v21 = (v18 + 32);
    v22 = (v19 + 32);
    while (*v21 == *v22)
    {
      ++v21;
      ++v22;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v23 = v15;
  v24 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
  v25 = v24[6];
  if ((sub_E60C4() & 1) == 0)
  {
    return 0;
  }

  v26 = v24[7];
  if ((sub_E60C4() & 1) == 0)
  {
    return 0;
  }

  v27 = v24[8];
  v28 = *(v23 + 48);
  sub_B8950(a1 + v27, v17);
  sub_B8950(a2 + v27, &v17[v28]);
  v29 = *(v5 + 48);
  if (v29(v17, 1, v4) != 1)
  {
    sub_B8950(v17, v12);
    if (v29(&v17[v28], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_15;
    }

    (*(v5 + 32))(v8, &v17[v28], v4);
    sub_BA47C(&qword_130EE0, &type metadata accessor for StorageSpace);
    v31 = sub_E6FB4();
    v32 = *(v5 + 8);
    v32(v8, v4);
    v32(v12, v4);
    sub_110AC(v17, &qword_130DA0, &qword_F4478);
    return (v31 & 1) != 0;
  }

  if (v29(&v17[v28], 1, v4) != 1)
  {
LABEL_15:
    sub_110AC(v17, &qword_130ED8, &qword_F4718);
    return 0;
  }

  sub_110AC(v17, &qword_130DA0, &qword_F4478);
  return 1;
}

unint64_t sub_B99D0()
{
  result = qword_130DB0;
  if (!qword_130DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130DB0);
  }

  return result;
}

uint64_t sub_B9A24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130DC0, &qword_F4488);
    sub_BA47C(a2, type metadata accessor for MTPodcastEpisodeLimit);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B9AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B9B24(uint64_t a1)
{
  v2 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B9C6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_E60F4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_B9DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_E60F4();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_B9EE0()
{
  type metadata accessor for MTPodcastEpisodeLimit(319);
  if (v0 <= 0x3F)
  {
    sub_B9FF4(319, &qword_130E70, type metadata accessor for MTPodcastEpisodeLimit, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_E60F4();
      if (v2 <= 0x3F)
      {
        sub_B9FF4(319, &unk_130E78, &type metadata accessor for StorageSpace, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_B9FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for LibraryStorageTipSuggestedLimitIntent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryStorageTipSuggestedLimitIntent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_BA1AC()
{
  result = qword_130EB8;
  if (!qword_130EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130EB8);
  }

  return result;
}

unint64_t sub_BA204()
{
  result = qword_130EC0;
  if (!qword_130EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130EC0);
  }

  return result;
}

unint64_t sub_BA25C()
{
  result = qword_130EC8;
  if (!qword_130EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130EC8);
  }

  return result;
}

uint64_t sub_BA2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C6C61626F6C67 && a2 == 0xEB0000000074696DLL;
  if (v4 || (sub_E7BD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xEF7374696D694C64 || (sub_E7BD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55656761726F7473 && a2 == 0xEB00000000646573 || (sub_E7BD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000F84E0 == a2 || (sub_E7BD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000000F8500 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_E7BD4();

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

uint64_t sub_BA47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_BA520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_BA5A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for OpenTranscriptIntent()
{
  result = qword_130F40;
  if (!qword_130F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BA65C()
{
  result = type metadata accessor for EpisodeEntity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PlayEpisodeIntent.init(episode:baseListSettings:playbackAccountDSID:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_A0760(a1, a6);
  v11 = type metadata accessor for PlayEpisodeIntent();
  sub_BA7D0(a2, a6 + v11[5]);
  v12 = (a6 + v11[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = v11[7];
  v14 = sub_E6204();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t type metadata accessor for PlayEpisodeIntent()
{
  result = qword_130FD0;
  if (!qword_130FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BA7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PlayEpisodeIntent.baseListSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlayEpisodeIntent() + 20);

  return sub_B3BE0(v3, a1);
}

uint64_t PlayEpisodeIntent.playbackAccountDSID.getter()
{
  v1 = (v0 + *(type metadata accessor for PlayEpisodeIntent() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PlayEpisodeIntent.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEpisodeIntent() + 28);
  v4 = sub_E6204();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_BA990(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_E6204();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_BAB34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EpisodeEntity(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = sub_E6204();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_BACB8()
{
  type metadata accessor for EpisodeEntity(319);
  if (v0 <= 0x3F)
  {
    sub_BAD6C();
    if (v1 <= 0x3F)
    {
      sub_5FB94();
      if (v2 <= 0x3F)
      {
        sub_E6204();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_BAD6C()
{
  if (!qword_130FE0)
  {
    sub_E63C4();
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_130FE0);
    }
  }
}

uint64_t PlayStationIntent.init(station:firstEpisode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_472D8(a1, a3);
  v5 = a3 + *(type metadata accessor for PlayStationIntent() + 20);

  return sub_BAEF8(a2, v5);
}

uint64_t type metadata accessor for PlayStationIntent()
{
  result = qword_131070;
  if (!qword_131070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BAEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PlayStationIntent.firstEpisode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlayStationIntent() + 20);

  return sub_A06F0(v3, a1);
}

uint64_t sub_BB008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StationEntity();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_BB118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StationEntity();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_BB220()
{
  type metadata accessor for StationEntity();
  if (v0 <= 0x3F)
  {
    sub_BB2A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_BB2A4()
{
  if (!qword_131080)
  {
    type metadata accessor for EpisodeEntity(255);
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_131080);
    }
  }
}

uint64_t SwitchNewsProviderIntent.init(providerAdamID:topicID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SwitchNewsProviderIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1310B0, &qword_F4B50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = v1[2];
  v13[1] = v1[1];
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BB564();
  sub_E7D14();
  v17 = v9;
  v16 = 0;
  sub_BB5B8();
  sub_E7B94();
  if (v2 || !v14)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_E7B84();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_BB564()
{
  result = qword_1310B8;
  if (!qword_1310B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310B8);
  }

  return result;
}

unint64_t sub_BB5B8()
{
  result = qword_1310C0;
  if (!qword_1310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310C0);
  }

  return result;
}

uint64_t SwitchNewsProviderIntent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1310C8, &qword_F4B58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BB564();
  sub_E7D04();
  if (!v2)
  {
    v16[15] = 0;
    sub_BB7D0();
    sub_E7B64();
    v11 = v17;
    v16[14] = 1;
    v13 = sub_E7B44();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_BB7D0()
{
  result = qword_1310D0;
  if (!qword_1310D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310D0);
  }

  return result;
}

unint64_t sub_BB8B8()
{
  result = qword_1310D8;
  if (!qword_1310D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310D8);
  }

  return result;
}

unint64_t sub_BB910()
{
  result = qword_1310E0;
  if (!qword_1310E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310E0);
  }

  return result;
}

unint64_t sub_BB968()
{
  result = qword_1310E8;
  if (!qword_1310E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310E8);
  }

  return result;
}

uint64_t sub_BB9DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_BBA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_BBAAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64496369706F74;
  }

  else
  {
    v4 = 0x72656469766F7270;
  }

  if (v3)
  {
    v5 = 0xEE0064496D616441;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64496369706F74;
  }

  else
  {
    v6 = 0x72656469766F7270;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEE0064496D616441;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_E7BD4();
  }

  return v9 & 1;
}

Swift::Int sub_BBB60()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_BBBF0()
{
  *v0;
  sub_E7124();
}

Swift::Int sub_BBC6C()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_BBCF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1204E0;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_BBD58(uint64_t *a1@<X8>)
{
  v2 = 0x72656469766F7270;
  if (*v1)
  {
    v2 = 0x64496369706F74;
  }

  v3 = 0xEE0064496D616441;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_BBDA4()
{
  if (*v0)
  {
    result = 0x64496369706F74;
  }

  else
  {
    result = 0x72656469766F7270;
  }

  *v0;
  return result;
}

uint64_t sub_BBDEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1204E0;
  v9._object = a2;
  v6 = sub_E7B34(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_BBE5C(uint64_t a1)
{
  v2 = sub_BB564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BBE98(uint64_t a1)
{
  v2 = sub_BB564();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_BBED8()
{
  result = qword_1310F0;
  if (!qword_1310F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310F0);
  }

  return result;
}

unint64_t sub_BBF30()
{
  result = qword_1310F8;
  if (!qword_1310F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310F8);
  }

  return result;
}

unint64_t sub_BBF88()
{
  result = qword_131100;
  if (!qword_131100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131100);
  }

  return result;
}

unint64_t sub_BBFDC()
{
  result = qword_131108;
  if (!qword_131108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131108);
  }

  return result;
}

uint64_t UnfollowShowIntent.init(showID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_BC0E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_BC12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t UpdateEpisodePlayStateIntent.init(episode:playState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  v4 = a3 + *(type metadata accessor for UpdateEpisodePlayStateIntent() + 20);

  return sub_A0760(a1, v4);
}

uint64_t type metadata accessor for UpdateEpisodePlayStateIntent()
{
  result = qword_131168;
  if (!qword_131168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpdateEpisodePlayStateIntent.episode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UpdateEpisodePlayStateIntent() + 20);

  return sub_6FAC8(v3, a1);
}

uint64_t sub_BC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_BC38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for EpisodeEntity(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_BC408()
{
  type metadata accessor for MTEpisodePlayState(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for EpisodeEntity(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_BC48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = swift_checkMetadataState();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = *(a4 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_BC670, 0, 0);
}

uint64_t sub_BC670()
{
  v12 = v0[6];
  v1 = v0[4];
  (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
  v2 = *(v12 + 24);

  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_BC7C0;
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return v11(v5, v9, v6);
}

uint64_t sub_BC7C0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_BCC6C;
  }

  else
  {
    v3 = sub_BC8D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_BC8D4()
{
  v1 = v0[16];
  sub_E7384();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[5]);
    v2 = v0[14];
    v3 = v0[12];
    v4 = v0[9];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v13 = (v0[6] + 32);
    v14 = (*v13 + **v13);
    v7 = (*v13)[1];
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_BCA68;
    v9 = v0[14];
    v10 = v0[9];
    v11 = v0[5];
    v12 = v0[6];

    return v14(v10, v11, v12);
  }
}

uint64_t sub_BCA68()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_BCCF0;
  }

  else
  {
    v3 = sub_BCB7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_BCB7C()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[5]);
  (*(v3 + 32))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_BCC6C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_BCCF0()
{
  (*(v0[13] + 8))(v0[14], v0[5]);
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_BCD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_588C;

  return sub_BC48C(a1, a2, a3, v10, v11);
}

uint64_t static NativeIntentDispatcher.Builder.buildExpression<A>(_:)()
{
  v0 = sub_E6EB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6EA4();
  type metadata accessor for _EphemeralIntentImplementationWrapper();
  swift_getWitnessTable();
  sub_E6E84();
  return (*(v1 + 8))(v4, v0);
}

uint64_t NativeIntentDispatcher.register<A>(_:)()
{
  v0 = type metadata accessor for _EphemeralIntentImplementationWrapper();
  WitnessTable = swift_getWitnessTable();

  return NativeIntentDispatcher.register<A>(_:)(WitnessTable, v0, WitnessTable);
}

uint64_t dispatch thunk of EphemeralIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_5E10;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of EphemeralIntentImplementation.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_588C;

  return v11(a1, a2, a3);
}

uint64_t sub_BD240(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

void *sub_BD290@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

Swift::Int sub_BD29C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_E7CC4();
  sub_E7124();
  return sub_E7CF4();
}

uint64_t sub_BD2E8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_E7124();
}

Swift::Int sub_BD2F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_E7CC4();
  sub_E7124();
  return sub_E7CF4();
}

uint64_t sub_BD338(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_E7BD4();
  }
}

uint64_t TipButton.init(id:title:action:style:clickLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = *(type metadata accessor for TipButton() + 32);
  v17 = sub_E5B94();
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  sub_4D9C(a5, (a8 + 32));
  *(a8 + 9) = a6;

  return sub_BD48C(a7, &a8[v16]);
}

uint64_t type metadata accessor for TipButton()
{
  result = qword_131290;
  if (!qword_131290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BD48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TipButton.action.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));

  return sub_4D9C(a1, v1 + 32);
}

uint64_t TipButton.clickLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TipButton() + 32);

  return sub_BD5BC(v3, a1);
}

uint64_t sub_BD5BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TipButton.clickLocation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TipButton() + 32);

  return sub_BD48C(a1, v3);
}

PodcastsActions::TipButton::ID __swiftcall TipButton.ID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_E7984(31);

  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  sub_E7134(v6);

  v3 = 0xD00000000000001DLL;
  v4 = 0x80000000000F8540;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static TipButton.close(action:clickLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  sub_48FC(a1, (a3 + 32));
  sub_BD5BC(a2, v9);
  v10 = *(type metadata accessor for TipButton() + 32);
  v11 = sub_E5B94();
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  *a3 = 0xD000000000000022;
  *(a3 + 1) = 0x80000000000F8560;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 9) = 2;
  return sub_BD48C(v9, &a3[v10]);
}

unint64_t sub_BD880()
{
  result = qword_131228;
  if (!qword_131228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131228);
  }

  return result;
}

unint64_t sub_BD8D8()
{
  result = qword_131230;
  if (!qword_131230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131230);
  }

  return result;
}

uint64_t sub_BD940(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_BDA10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_BDAC0()
{
  sub_5FB94();
  if (v0 <= 0x3F)
  {
    sub_BDB84();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AMSDialogActionStyle(319);
      if (v2 <= 0x3F)
      {
        sub_BDBE8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_BDB84()
{
  result = qword_1312A0;
  if (!qword_1312A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1312A0);
  }

  return result;
}

void sub_BDBE8()
{
  if (!qword_1312A8)
  {
    sub_E5B94();
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_1312A8);
    }
  }
}

uint64_t static Set<>.all.getter()
{
  sub_C8A0();
  v2 = sub_E73C4();
  sub_BE9F8(&v1, 0);
  sub_BE9F8(&v1, 1);
  sub_BE9F8(&v1, 2);
  sub_BE9F8(&v1, 3);
  sub_BE9F8(&v1, 4);
  sub_BE9F8(&v1, 5);
  return v2;
}

unint64_t sub_BDD1C()
{
  result = qword_1312E8;
  if (!qword_1312E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1312F0, &qword_F5318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1312E8);
  }

  return result;
}

unint64_t sub_BDD84()
{
  result = qword_1312F8;
  if (!qword_1312F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1312F8);
  }

  return result;
}

unint64_t TipKind.debugDescription.getter(uint64_t a1, void *a2)
{
  sub_E7984(23);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_E7134(v5);
  v6._countAndFlagsBits = 10530;
  v6._object = 0xE200000000000000;
  sub_E7134(v6);
  return 0xD000000000000013;
}

unint64_t sub_BDE78()
{
  v1 = *v0;
  v2 = v0[1];
  sub_E7984(23);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_E7134(v4);
  v5._countAndFlagsBits = 10530;
  v5._object = 0xE200000000000000;
  sub_E7134(v5);
  return 0xD000000000000013;
}

unint64_t sub_BDFF4()
{
  result = qword_131300;
  if (!qword_131300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131300);
  }

  return result;
}

uint64_t TipModel.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_E59C4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

Swift::Void __swiftcall TipProvider.requestRefresh()()
{
  v2 = v1;
  v3 = v0;
  sub_C8A0();
  v5 = sub_E73C4();
  sub_BE9F8(&v4, 0);
  sub_BE9F8(&v4, 1);
  sub_BE9F8(&v4, 2);
  sub_BE9F8(&v4, 3);
  sub_BE9F8(&v4, 4);
  sub_BE9F8(&v4, 5);
  (*(v2 + 16))(v5, v3, v2);
}

uint64_t TipProvider.tips(for:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131308, &qword_F5520);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  LOBYTE(a1) = *a1;
  v13[1] = (*(a3 + 8))(a2, a3);
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131310, &qword_F5A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  sub_3C2A0(&qword_131318, &qword_131310, &qword_F5A30);
  sub_E6AC4();

  sub_3C2A0(&qword_131320, &qword_131308, &qword_F5520);
  v11 = sub_E6A74();
  (*(v7 + 8))(v10, v6);
  return v11;
}

void *sub_BE4B8@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_E07B8(a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    result = _swiftEmptyArrayStorage;
  }

  *a3 = result;
  return result;
}

uint64_t TipProvider.firstTip(for:of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131328, &qword_F5528);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v24);
  v13 = &v23 - v12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131330, qword_F5530);
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = &v23 - v16;
  v26 = *a1;
  v25 = TipProvider.tips(for:)(&v26, a4, a5);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F10, &unk_F5FE0);
  sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0);
  sub_E6AC4();

  sub_3C2A0(&qword_131338, &qword_131328, &qword_F5528);
  v19 = v24;
  sub_E6AB4();
  (*(v10 + 8))(v13, v19);
  sub_3C2A0(&qword_131340, &qword_131330, qword_F5530);
  v20 = v23;
  v21 = sub_E6A74();
  (*(v14 + 8))(v17, v20);
  return v21;
}

uint64_t sub_BE824@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    v9 = 0;
    v10 = v5 + 32;
    while (v9 < *(v5 + 16))
    {
      sub_48FC(v10, &v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if (sub_BE0E4(v11, v12) == a2 && v13 == a3)
      {

        return sub_4524(&v16, a4);
      }

      v15 = sub_E7BD4();

      if (v15)
      {
        return sub_4524(&v16, a4);
      }

      ++v9;
      result = __swift_destroy_boxed_opaque_existential_1(&v16);
      v10 += 40;
      if (v6 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_BE9F8(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_E7CC4();
  sub_E7CD4(a2);
  v7 = sub_E7CF4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_C0824(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_BEB08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BEB48(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_E7CC4();
  sub_E7124();
  v9 = sub_E7CF4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_E7BD4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_C0970(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_BEC98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_E59C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_C2960(&qword_131368, &type metadata accessor for URL);
  v36 = a2;
  v13 = sub_E6FA4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_C2960(&qword_131370, &type metadata accessor for URL);
      v23 = sub_E6FB4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_C0AF0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_BEF78(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_E7CB4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_C0DB8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_BF0A0(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_E78D4();

    if (v17)
    {

      sub_4ABC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_E78C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_BF5F4(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_C0224(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_C07A0(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_4ABC(0, a3, a4);
    v19 = sub_E7784(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_E7794();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_C0ED8(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

uint64_t sub_BF314(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_E61F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option);
  v36 = a2;
  v13 = sub_E6FA4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_C2960(&unk_130910, &type metadata accessor for PlaybackIntent.Option);
      v23 = sub_E6FB4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_C1068(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

Swift::Int sub_BF5F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_E7954();
    v23 = v10;
    sub_E78B4();
    if (sub_E78E4())
    {
      sub_4ABC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_C0224(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_E7784(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_E78E4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_BF7F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
  result = sub_E7944();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_E7CC4();
      sub_E7CD4(v18);
      result = sub_E7CF4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_BFA44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  result = sub_E7944();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_E7CC4();
      sub_E7124();
      result = sub_E7CF4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_BFCA4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_E59C4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131378, &qword_F5578);
  result = sub_E7944();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_C2960(&qword_131368, &type metadata accessor for URL);
      result = sub_E6FA4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_C0000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131348, &qword_F5558);
  result = sub_E7944();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_E7CB4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_C0224(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_E7944();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = sub_E7784(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_C0444(uint64_t a1)
{
  v2 = v1;
  v41 = sub_E61F4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131350, &qword_F5560);
  result = sub_E7944();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option);
      result = sub_E6FA4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_C07A0(uint64_t a1, uint64_t a2)
{
  sub_E7784(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_E78A4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_C0824(Swift::Int result, unint64_t a2, char a3)
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
    sub_BF7F4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_C1330();
      a2 = v7;
      goto LABEL_12;
    }

    sub_C1AAC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_E7CC4();
  sub_E7CD4(v4);
  result = sub_E7CF4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

Swift::Int sub_C0970(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_BFA44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_C1470();
      goto LABEL_16;
    }

    sub_C1CCC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_E7CC4();
  sub_E7124();
  result = sub_E7CF4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_E7BD4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_C0AF0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_E59C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_BFCA4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_C1874(&type metadata accessor for URL, &qword_131378, &qword_F5578);
      goto LABEL_12;
    }

    sub_C1F04(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_C2960(&qword_131368, &type metadata accessor for URL);
  v15 = sub_E6FA4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_C2960(&qword_131370, &type metadata accessor for URL);
      v23 = sub_E6FB4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_C0DB8(uint64_t result, unint64_t a2, char a3)
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
    sub_C0000(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_C15CC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_C2220(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_E7CB4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

void sub_C0ED8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_C0224(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_C170C(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_C2410(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_E7784(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_4ABC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_E7794();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_E7C44();
  __break(1u);
}

uint64_t sub_C1068(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_E61F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C0444(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_C1874(&type metadata accessor for PlaybackIntent.Option, &qword_131350, &qword_F5560);
      goto LABEL_12;
    }

    sub_C261C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option);
  v15 = sub_E6FA4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_C2960(&unk_130910, &type metadata accessor for PlaybackIntent.Option);
      v23 = sub_E6FB4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

void *sub_C1330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
  v2 = *v0;
  v3 = sub_E7934();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_C1470()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  v2 = *v0;
  v3 = sub_E7934();
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

void *sub_C15CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131348, &qword_F5558);
  v2 = *v0;
  v3 = sub_E7934();
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

id sub_C170C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_E7934();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_C1874(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_E7934();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_C1AAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
  result = sub_E7944();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_E7CC4();
      sub_E7CD4(v17);
      result = sub_E7CF4();
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_C1CCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  result = sub_E7944();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_E7CC4();

      sub_E7124();
      result = sub_E7CF4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_C1F04(uint64_t a1)
{
  v2 = v1;
  v37 = sub_E59C4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131378, &qword_F5578);
  v10 = sub_E7944();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_C2960(&qword_131368, &type metadata accessor for URL);
      result = sub_E6FA4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_C2220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131348, &qword_F5558);
  result = sub_E7944();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_E7CB4();
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
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_C2410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_E7944();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_E7784(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_C261C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_E61F4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131350, &qword_F5560);
  v10 = sub_E7944();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option);
      result = sub_E6FA4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_C2960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AddFavoriteCategoriesButtonTip.title.getter()
{
  v1._object = 0x80000000000F8690;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t AddFavoriteCategoriesButtonTip.message.getter()
{
  v1._object = 0x80000000000F86B0;
  v1._countAndFlagsBits = 0xD000000000000020;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t AddFavoriteCategoriesButtonTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v36 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v33 = sub_E6CE4();
  v32 = *(v33 - 8);
  v9 = *(v32 + 64);
  v10 = __chkstk_darwin(v33);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v31 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v14 = type metadata accessor for TipButton();
  v15 = *(v14 - 8);
  v34 = v14 - 8;
  v16 = v15;
  v17 = *(v15 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v35 = v19;
  *(v19 + 16) = xmmword_E87F0;
  v20 = (v19 + v18);
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v21 = sub_E59C4();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_E5C24();
  sub_E6CB4();
  v45 = v39;
  sub_110AC(&v45, &qword_131388, &unk_F56C0);
  v44 = v40;
  sub_110AC(&v44, &qword_131390, &unk_F55A0);
  v43 = v41;
  sub_110AC(&v43, &qword_131398, &unk_F56D0);
  sub_C2FD4(v42);

  sub_110AC(v8, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_E9EF0;
  sub_E6CD4();
  *(v22 + 56) = sub_E6D14();
  *(v22 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  sub_E6D04();
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction();
  *(v22 + 96) = refreshed;
  *(v22 + 104) = sub_8E78();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  *boxed_opaque_existential_1 = sub_C50C(&off_120558);
  (*(v32 + 32))(boxed_opaque_existential_1 + *(refreshed + 20), v12, v33);
  v38[3] = sub_E6D64();
  v38[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v38);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v25 = v36;
  sub_E5B84();

  v26 = sub_E5B94();
  v27 = *(*(v26 - 8) + 56);
  v27(v25, 0, 1, v26);
  sub_48FC(v38, (v20 + 4));
  v28 = v37;
  sub_BD5BC(v25, v37);
  v29 = *(v34 + 40);
  v27(v20 + v29, 1, 1, v26);
  *v20 = 0xD000000000000022;
  v20[1] = 0x80000000000F8560;
  v20[2] = 0;
  v20[3] = 0;
  v20[9] = 2;
  sub_BD48C(v28, v20 + v29);
  sub_110AC(v25, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v35;
}

uint64_t sub_C2FD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_C2FE4()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_E70F4();
  v1 = sub_E7024();

  [v0 setBool:1 forKey:v1];
}

uint64_t AddFavoriteCategoriesButtonTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v6._object = 0x80000000000F8690;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_E63A4(v6, v7);
  sub_E6E54();

  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_C315C(uint64_t a1)
{
  result = sub_C3184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C3184()
{
  result = qword_1313A0;
  if (!qword_1313A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1313A0);
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTip.init(reclaimedSpace:episodesToDelete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E60F4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RemoveAbandonedDownloadsTip();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for RemoveAbandonedDownloadsTip()
{
  result = qword_131408;
  if (!qword_131408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTip.reclaimedSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E60F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoveAbandonedDownloadsTip.episodesToDelete.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoveAbandonedDownloadsTip() + 20));
}

uint64_t RemoveAbandonedDownloadsTip.title.getter()
{
  v1._object = 0x80000000000F8750;
  v2._countAndFlagsBits = 0xD000000000000057;
  v2._object = 0x80000000000F8780;
  v1._countAndFlagsBits = 0xD000000000000027;
  return sub_E63A4(v1, v2);
}

id RemoveAbandonedDownloadsTip.message.getter()
{
  v8._object = 0x80000000000F87E0;
  v9._countAndFlagsBits = 0xD0000000000000D5;
  v9._object = 0x80000000000F8810;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  sub_E63A4(v8, v9);
  v0 = sub_E60E4();
  result = [objc_opt_self() stringWithBytesize:v0];
  if (result)
  {
    v2 = result;
    v3 = sub_E7064();
    v5 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_E87F0;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1BE80();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_E7074();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTip.buttons.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v73 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v75 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v56 - v8;
  v9 = sub_E6CE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v17 = type metadata accessor for TipButton();
  v18 = *(v17 - 8);
  v59 = *(v18 + 72);
  v19 = v17 - 8;
  v70 = v17 - 8;
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v74 = v21;
  v78 = xmmword_E9EF0;
  *(v21 + 16) = xmmword_E9EF0;
  v22 = (v21 + v20);
  v58 = 0x80000000000F88F0;
  v87._countAndFlagsBits = 0xD00000000000001ALL;
  v87._object = 0x80000000000F8930;
  v88._countAndFlagsBits = 0xD000000000000074;
  v88._object = 0x80000000000F8950;
  v57 = sub_E63A4(v87, v88);
  v56 = v23;
  v77 = v16;
  sub_E6CD4();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v24 = swift_allocObject();
  *(v24 + 16) = v78;
  v25 = *(v0 + *(type metadata accessor for RemoveAbandonedDownloadsTip() + 20));
  v67 = v25;

  sub_E6CD4();
  v26 = type metadata accessor for RemoveAbandonedDownloadsAction();
  *(v24 + 56) = v26;
  *(v24 + 64) = sub_C3F70(&qword_12D090, type metadata accessor for RemoveAbandonedDownloadsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
  *boxed_opaque_existential_1 = v25;
  v28 = *(v26 + 20);
  v29 = *(v10 + 32);
  v61 = v9;
  v29(boxed_opaque_existential_1 + v28, v14, v9);
  v60 = v29;
  v62 = v10 + 32;
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction();
  *(v24 + 96) = refreshed;
  v66 = refreshed;
  v71 = sub_C3F70(&qword_12D0B8, type metadata accessor for RequestTipProviderRefreshAction);
  *(v24 + 104) = v71;
  v31 = __swift_allocate_boxed_opaque_existential_1((v24 + 72));
  *v31 = sub_C50C(&off_120580);
  v29(v31 + *(refreshed + 20), v14, v9);
  v68 = sub_E6D64();
  v22[7] = v68;
  v22[8] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v22 + 4);
  sub_E6D54();
  sub_E6394();
  v69 = 0x80000000000F71D0;
  v32 = v76;
  sub_E5B84();

  v33 = sub_E5B94();
  v63 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v64 = v35;
  v65 = v34 + 56;
  v35(v32, 0, 1, v33);
  v36 = *(v19 + 40);
  v35(v22 + v36, 1, 1, v33);
  *v22 = 0xD000000000000037;
  v37 = v57;
  v22[1] = v58;
  v22[2] = v37;
  v22[3] = v56;
  v22[9] = 0;
  sub_BD48C(v32, v22 + v36);
  v38 = v22 + v59;
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v39 = sub_E59C4();
  v40 = v73;
  (*(*(v39 - 8) + 56))(v73, 1, 1, v39);
  sub_E5C24();
  sub_E6CB4();
  v86 = v80;
  sub_110AC(&v86, &qword_131388, &unk_F56C0);
  v85 = v81;
  sub_110AC(&v85, &qword_131390, &unk_F55A0);
  v84 = v82;
  sub_110AC(&v84, &qword_131398, &unk_F56D0);
  sub_C2FD4(v83);

  sub_110AC(v40, &unk_12DFA0, &qword_E9B50);
  v41 = swift_allocObject();
  *(v41 + 16) = v78;
  v42 = v67;

  sub_E6CD4();
  v43 = type metadata accessor for IgnoreAbandonedDownloadsAction();
  *(v41 + 56) = v43;
  *(v41 + 64) = sub_C3F70(&qword_12D058, type metadata accessor for IgnoreAbandonedDownloadsAction);
  v44 = __swift_allocate_boxed_opaque_existential_1((v41 + 32));
  *v44 = v42;
  v45 = v61;
  v46 = v60;
  v60(v44 + *(v43 + 20), v14, v61);
  sub_E6CD4();
  v47 = v66;
  v48 = v71;
  *(v41 + 96) = v66;
  *(v41 + 104) = v48;
  v49 = __swift_allocate_boxed_opaque_existential_1((v41 + 72));
  *v49 = sub_C50C(&off_1205A8);
  v46(v49 + *(v47 + 20), v14, v45);
  v79[3] = v68;
  v79[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v79);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v50 = v76;
  sub_E5B84();

  v51 = v63;
  v52 = v64;
  v64(v50, 0, 1, v63);
  sub_48FC(v79, (v38 + 32));
  v53 = v75;
  sub_BD5BC(v50, v75);
  v54 = *(v70 + 40);
  v52(&v38[v54], 1, 1, v51);
  *v38 = 0xD000000000000022;
  *(v38 + 1) = 0x80000000000F8560;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 9) = 2;
  sub_BD48C(v53, &v38[v54]);
  sub_110AC(v50, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v74;
}

uint64_t RemoveAbandonedDownloadsTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E6E54();
  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_C3F18(uint64_t a1)
{
  result = sub_C3F70(&qword_1313A8, type metadata accessor for RemoveAbandonedDownloadsTip);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C3F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C3FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E60F4();
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

uint64_t sub_C409C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E60F4();
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

void sub_C4154()
{
  sub_E60F4();
  if (v0 <= 0x3F)
  {
    sub_A77C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t RemoveOlderDownloadsTip.init(recommendation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_E5C84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoveOlderDownloadsTip.title.getter()
{
  v1._object = 0x80000000000F8A00;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

id RemoveOlderDownloadsTip.message.getter()
{
  v0 = sub_E60F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E5C64();
  v5 = sub_E60E4();
  (*(v1 + 8))(v4, v0);
  v6 = sub_E5C44();
  v7 = sub_C44F4(v6, v5, 0);
  v9 = v8;
  if (!v8)
  {
    return v7;
  }

  if (!v5)
  {
    v20._countAndFlagsBits = 0xD00000000000002BLL;
    v20._object = 0x80000000000F8A20;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_E63A4(v20, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_E87F0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1BE80();
    *(v17 + 32) = v7;
    *(v17 + 40) = v9;
    goto LABEL_6;
  }

  result = [objc_opt_self() stringWithBytesize:v5];
  if (result)
  {
    v11 = result;
    v12 = sub_E7064();
    v14 = v13;

    v19._object = 0x80000000000F8A50;
    v19._countAndFlagsBits = 0xD000000000000023;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_E63A4(v19, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_E9EF0;
    *(v15 + 56) = &type metadata for String;
    v16 = sub_1BE80();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v16;
    *(v15 + 64) = v16;
    *(v15 + 72) = v7;
    *(v15 + 80) = v9;
LABEL_6:
    v7 = sub_E7034();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_C44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6974();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x455A49535F4F4E5FLL;
  }

  if (a2)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  v42._countAndFlagsBits = 0xD000000000000017;
  v42._object = 0x80000000000F8B10;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v13 = sub_E63A4(v42, v51);
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        v16 = v13;
        v15 = v14;
        sub_E7984(50);

        v41._countAndFlagsBits = 0xD000000000000030;
        v41._object = 0x80000000000F8BD0;
        v49._countAndFlagsBits = v11;
        v49._object = v12;
        sub_E7134(v49);

        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        sub_E63A4(v41, v57);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
        v17 = swift_allocObject();
        v18 = v17;
        *(v17 + 16) = xmmword_E9EF0;
        *(v17 + 56) = &type metadata for Int;
        *(v17 + 64) = &protocol witness table for Int;
        v19 = 3;
      }

      else
      {
        v16 = v13;
        v15 = v14;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        sub_E7984(50);

        v41._countAndFlagsBits = 0xD000000000000030;
        v41._object = 0x80000000000F8BD0;
        v45._countAndFlagsBits = v11;
        v45._object = v12;
        sub_E7134(v45);

        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        sub_E63A4(v41, v54);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
        v17 = swift_allocObject();
        v18 = v17;
        *(v17 + 16) = xmmword_E9EF0;
        *(v17 + 56) = &type metadata for Int;
        *(v17 + 64) = &protocol witness table for Int;
        if (a1 == 4)
        {
          v19 = 5;
        }

        else
        {
          v19 = 10;
        }
      }

      goto LABEL_41;
    }

    if (!a1)
    {

      return 0;
    }

    v16 = v13;
    v15 = v14;
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        sub_E7984(50);

        v41._countAndFlagsBits = 0xD000000000000030;
        v41._object = 0x80000000000F8BD0;
        v50._countAndFlagsBits = v11;
        v50._object = v12;
        sub_E7134(v50);

        v58._countAndFlagsBits = 0;
        v58._object = 0xE000000000000000;
        sub_E63A4(v41, v58);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
        v17 = swift_allocObject();
        v18 = v17;
        *(v17 + 16) = xmmword_E9EF0;
        *(v17 + 56) = &type metadata for Int;
        *(v17 + 64) = &protocol witness table for Int;
        v19 = 2;
        goto LABEL_41;
      }

      goto LABEL_46;
    }

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    sub_E7984(51);
    v20 = "REMOVE_DOWNLOADS_EPISODE_LIMIT_ONE_MESSAGE_FORMAT";
LABEL_25:
    v47._countAndFlagsBits = 0xD000000000000031;
    v47._object = ((v20 - 32) | 0x8000000000000000);
    sub_E7134(v47);
    v48._countAndFlagsBits = v11;
    v48._object = v12;
    sub_E7134(v48);

    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_E63A4(v41, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_E87F0;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_1BE80();
    *(v28 + 32) = v16;
    *(v28 + 40) = v15;
    goto LABEL_42;
  }

  if (a1 <= 8)
  {
    if (a1 != 6)
    {
      v21 = v13;
      v22 = v14;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      sub_E7984(48);

      v41._countAndFlagsBits = 0xD00000000000002ELL;
      v41._object = 0x80000000000F8B60;
      v44._countAndFlagsBits = v11;
      v44._object = v12;
      sub_E7134(v44);

      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      sub_E63A4(v41, v53);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
      v23 = swift_allocObject();
      v24 = v23;
      *(v23 + 16) = xmmword_E9EF0;
      *(v23 + 56) = &type metadata for Int;
      *(v23 + 64) = &protocol witness table for Int;
      if (a1 == 7)
      {
        *(v23 + 32) = 7;
      }

      else
      {
        *(v23 + 32) = 14;
      }

      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = sub_1BE80();
      *(v24 + 72) = v21;
      *(v24 + 80) = v22;
      goto LABEL_42;
    }

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v16 = v13;
    v15 = v14;
    sub_E7984(51);
    v20 = "REMOVE_DOWNLOADS_TIP_LIMIT_ONE_DAY_MESSAGE_FORMAT";
    goto LABEL_25;
  }

  if (a1 > 0xFFFFFFFFLL)
  {
    v40 = v14;
    if (a1 == 0x100000000)
    {
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v25 = v13;
      sub_E7984(36);

      v41._countAndFlagsBits = 0xD000000000000022;
      v41._object = 0x80000000000F8B30;
      v46._countAndFlagsBits = v11;
      v46._object = v12;
      sub_E7134(v46);

      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_E63A4(v41, v55);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_E87F0;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_1BE80();
      v27 = v40;
      *(v26 + 32) = v25;
      *(v26 + 40) = v27;
LABEL_42:
      v35 = sub_E7034();

      return v35;
    }

    if (a1 != 0x100000001)
    {
      goto LABEL_46;
    }

    if (!a3)
    {
      v37 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
      v38 = [v37 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

      v29 = v38;
      v30 = a2;
      v31 = 1;
      return sub_C44F4(v29, v30, v31);
    }

    sub_E6954();
    v32 = sub_E6964();
    v33 = sub_E74B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Encountered a device where the global limit has been configured to point to itself, causing infinite recursion. This is invalid, so this logic is exiting without a value -- no storage tip can be displayed.", v34, 2u);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v15 = v14;
  if (a1 == 9)
  {
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v16 = v13;
    sub_E7984(48);

    v41._countAndFlagsBits = 0xD00000000000002ELL;
    v41._object = 0x80000000000F8B60;
    v43._countAndFlagsBits = v11;
    v43._object = v12;
    sub_E7134(v43);

    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    sub_E63A4(v41, v52);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = xmmword_E9EF0;
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    v19 = 30;
LABEL_41:
    *(v17 + 32) = v19;
    *(v17 + 96) = &type metadata for String;
    v18[13] = sub_1BE80();
    v18[9] = v16;
    v18[10] = v15;
    goto LABEL_42;
  }

  if (a1 == 0xFFFFFFFFLL)
  {

    v29 = sub_E76B4();
    v30 = a2;
    v31 = 0;
    return sub_C44F4(v29, v30, v31);
  }

LABEL_46:
  type metadata accessor for MTPodcastEpisodeLimit(0);
  v41._countAndFlagsBits = a1;
  result = sub_E7C24();
  __break(1u);
  return result;
}

uint64_t RemoveOlderDownloadsTip.buttons.getter()
{
  v1 = v0;
  v2 = sub_E5C84();
  v72 = v2;
  v81 = *(v2 - 8);
  v3 = v81;
  v4 = *(v81 + 64);
  __chkstk_darwin(v2);
  v85 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v80 = &v68 - v8;
  v9 = sub_E6CE4();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  v11 = __chkstk_darwin(v9);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v89 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v68 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v20 = type metadata accessor for TipButton();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = v20 - 8;
  v83 = v20 - 8;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v82 = xmmword_E9EF0;
  v88 = v25;
  *(v25 + 16) = xmmword_E9EF0;
  v26 = (v25 + v24);
  v70 = 0x80000000000F8A80;
  v99._countAndFlagsBits = 0xD000000000000021;
  v99._object = 0x80000000000F8AC0;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v69 = sub_E63A4(v99, v100);
  v28 = v27;
  v29 = type metadata accessor for AcceptEpisodeLimitRecommendationAction();
  v26[7] = v29;
  v26[8] = sub_C59F0(&qword_12CD48, type metadata accessor for AcceptEpisodeLimitRecommendationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26 + 4);
  v73 = *(v3 + 16);
  v73(boxed_opaque_existential_1, v1, v2);
  v31 = (boxed_opaque_existential_1 + *(v29 + 20));
  refreshed = type metadata accessor for RequestTipProviderRefreshAction();
  v31[3] = refreshed;
  v33 = refreshed;
  v75 = refreshed;
  v76 = sub_C59F0(&qword_12D0B8, type metadata accessor for RequestTipProviderRefreshAction);
  v31[4] = v76;
  v34 = __swift_allocate_boxed_opaque_existential_1(v31);
  v35 = v34 + *(v33 + 20);
  sub_E6CD4();
  *v34 = sub_C50C(&off_1205D0);
  v36 = boxed_opaque_existential_1 + *(v29 + 24);
  sub_E6CD4();
  sub_E6394();
  v37 = v19;
  sub_E5B84();

  v38 = sub_E5B94();
  v77 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v78 = v40;
  v41 = v39 + 56;
  v71 = v37;
  v40(v37, 0, 1, v38);
  v79 = v41;
  v42 = *(v23 + 40);
  v40(v26 + v42, 1, 1, v38);
  *v26 = 0xD000000000000033;
  v43 = v69;
  v26[1] = v70;
  v26[2] = v43;
  v26[3] = v28;
  v26[9] = 0;
  sub_BD48C(v37, v26 + v42);
  v44 = v26 + v22;
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v45 = sub_E59C4();
  v46 = v80;
  (*(*(v45 - 8) + 56))(v80, 1, 1, v45);
  sub_E5C24();
  sub_E6CB4();
  v98 = v92;
  sub_110AC(&v98, &qword_131388, &unk_F56C0);
  v97 = v93;
  sub_110AC(&v97, &qword_131390, &unk_F55A0);
  v96 = v94;
  sub_110AC(&v96, &qword_131398, &unk_F56D0);
  sub_C2FD4(v95);

  sub_110AC(v46, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v47 = swift_allocObject();
  *(v47 + 16) = v82;
  v48 = v85;
  v49 = v72;
  v73(v85, v74, v72);
  v50 = v84;
  sub_E6CD4();
  v51 = type metadata accessor for DeclineEpisodeLimitRecommendationAction();
  *(v47 + 56) = v51;
  *(v47 + 64) = sub_C59F0(qword_12CF40, type metadata accessor for DeclineEpisodeLimitRecommendationAction);
  v52 = __swift_allocate_boxed_opaque_existential_1((v47 + 32));
  (*(v81 + 32))(v52, v48, v49);
  v53 = *(v86 + 32);
  v54 = v50;
  v55 = v50;
  v56 = v87;
  v53(v52 + *(v51 + 20), v55, v87);
  sub_E6CD4();
  v57 = v75;
  v58 = v76;
  *(v47 + 96) = v75;
  *(v47 + 104) = v58;
  v59 = __swift_allocate_boxed_opaque_existential_1((v47 + 72));
  *v59 = sub_C50C(&off_1205F8);
  v53(v59 + *(v57 + 20), v54, v56);
  v91[3] = sub_E6D64();
  v91[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v91);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v60 = v71;
  sub_E5B84();

  v61 = v60;
  v62 = v77;
  v63 = v78;
  v78(v60, 0, 1, v77);
  sub_48FC(v91, (v44 + 32));
  v64 = v60;
  v65 = v89;
  sub_BD5BC(v64, v89);
  v66 = *(v83 + 40);
  v63(&v44[v66], 1, 1, v62);
  *v44 = 0xD000000000000022;
  *(v44 + 1) = 0x80000000000F8560;
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 9) = 2;
  sub_BD48C(v65, &v44[v66]);
  sub_110AC(v61, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v91);
  return v88;
}

uint64_t RemoveOlderDownloadsTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E6E54();
  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_C5998(uint64_t a1)
{
  result = sub_C59F0(&qword_131440, type metadata accessor for RemoveOlderDownloadsTip);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C59F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RemoveOlderDownloadsTip()
{
  result = qword_1314A0;
  if (!qword_1314A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C5A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5C84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_C5B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5C84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_C5B88()
{
  result = sub_E5C84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RestorePurgedEpisodesTip.title.getter()
{
  v1._object = 0x80000000000F8CA0;
  v2._countAndFlagsBits = 0xD000000000000049;
  v2._object = 0x80000000000F8CD0;
  v1._countAndFlagsBits = 0xD000000000000027;
  return sub_E63A4(v1, v2);
}

uint64_t RestorePurgedEpisodesTip.message.getter()
{
  v1._object = 0x80000000000F8D20;
  v2._countAndFlagsBits = 0xD000000000000049;
  v2._object = 0x80000000000F8CD0;
  v1._countAndFlagsBits = 0xD000000000000026;
  return sub_E63A4(v1, v2);
}

uint64_t RestorePurgedEpisodesTip.buttons.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v73 = v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v75 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = v56 - v8;
  v9 = sub_E6CE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v56 - v15;
  v68 = *v0;
  v17 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v18 = type metadata accessor for TipButton();
  v19 = *(v18 - 8);
  v60 = *(v19 + 72);
  v20 = v18 - 8;
  v70 = v18 - 8;
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v77 = xmmword_E9EF0;
  v74 = v22;
  *(v22 + 16) = xmmword_E9EF0;
  v23 = (v22 + v21);
  v59 = 0x80000000000F8D50;
  v86._countAndFlagsBits = 0xD000000000000030;
  v86._object = 0x80000000000F8D90;
  v87._countAndFlagsBits = 0xD000000000000056;
  v87._object = 0x80000000000F8DD0;
  v58 = sub_E63A4(v86, v87);
  v57 = v24;
  v56[1] = v16;
  sub_E6CD4();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v25 = swift_allocObject();
  *(v25 + 16) = v77;

  sub_E6CD4();
  v26 = type metadata accessor for RestorePurgedEpisodesAction();
  *(v25 + 56) = v26;
  *(v25 + 64) = sub_C66BC(&qword_12D0D0, type metadata accessor for RestorePurgedEpisodesAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
  *boxed_opaque_existential_1 = v17;
  v28 = *(v26 + 20);
  v29 = *(v10 + 32);
  v62 = v9;
  v29(boxed_opaque_existential_1 + v28, v14, v9);
  v61 = v29;
  v63 = v10 + 32;
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction();
  *(v25 + 96) = refreshed;
  v67 = refreshed;
  v71 = sub_C66BC(&qword_12D0B8, type metadata accessor for RequestTipProviderRefreshAction);
  *(v25 + 104) = v71;
  v31 = __swift_allocate_boxed_opaque_existential_1((v25 + 72));
  *v31 = sub_C50C(&off_120620);
  v29(v31 + *(refreshed + 20), v14, v9);
  v69 = sub_E6D64();
  v23[7] = v69;
  v23[8] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v23 + 4);
  sub_E6D54();
  sub_E6394();
  v32 = v76;
  sub_E5B84();

  v33 = sub_E5B94();
  v64 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v65 = v35;
  v66 = v34 + 56;
  v35(v32, 0, 1, v33);
  v36 = *(v20 + 40);
  v35(v23 + v36, 1, 1, v33);
  *v23 = 0xD000000000000034;
  v37 = v58;
  v23[1] = v59;
  v23[2] = v37;
  v23[3] = v57;
  v23[9] = 0;
  sub_BD48C(v32, v23 + v36);
  v38 = v23 + v60;
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v39 = sub_E59C4();
  v40 = v73;
  (*(*(v39 - 8) + 56))(v73, 1, 1, v39);
  sub_E5C24();
  sub_E6CB4();
  v85 = v79;
  sub_110AC(&v85, &qword_131388, &unk_F56C0);
  v84 = v80;
  sub_110AC(&v84, &qword_131390, &unk_F55A0);
  v83 = v81;
  sub_110AC(&v83, &qword_131398, &unk_F56D0);
  sub_C2FD4(v82);

  sub_110AC(v40, &unk_12DFA0, &qword_E9B50);
  v41 = swift_allocObject();
  *(v41 + 16) = v77;
  v42 = v68;

  sub_E6CD4();
  v43 = type metadata accessor for IgnorePurgedEpisodesAction();
  *(v41 + 56) = v43;
  *(v41 + 64) = sub_C66BC(&qword_12D078, type metadata accessor for IgnorePurgedEpisodesAction);
  v44 = __swift_allocate_boxed_opaque_existential_1((v41 + 32));
  *v44 = v42;
  v45 = v62;
  v46 = v61;
  v61(v44 + *(v43 + 20), v14, v62);
  sub_E6CD4();
  v47 = v67;
  v48 = v71;
  *(v41 + 96) = v67;
  *(v41 + 104) = v48;
  v49 = __swift_allocate_boxed_opaque_existential_1((v41 + 72));
  *v49 = sub_C50C(&off_120648);
  v46(v49 + *(v47 + 20), v14, v45);
  v78[3] = v69;
  v78[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v78);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v50 = v76;
  sub_E5B84();

  v51 = v64;
  v52 = v65;
  v65(v50, 0, 1, v64);
  sub_48FC(v78, (v38 + 32));
  v53 = v75;
  sub_BD5BC(v50, v75);
  v54 = *(v70 + 40);
  v52(&v38[v54], 1, 1, v51);
  *v38 = 0xD000000000000022;
  *(v38 + 1) = 0x80000000000F8560;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 9) = 2;
  sub_BD48C(v53, &v38[v54]);
  sub_110AC(v50, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v74;
}

uint64_t RestorePurgedEpisodesTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E6E54();
  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_C66BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_C6704(uint64_t a1)
{
  result = sub_C672C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C672C()
{
  result = qword_1314D8;
  if (!qword_1314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1314D8);
  }

  return result;
}

uint64_t StayUpToDateTip.title.getter()
{
  v1._object = 0x80000000000F8E90;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t StayUpToDateTip.message.getter()
{
  v1._object = 0x80000000000F8EB0;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t StayUpToDateTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v36 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v33 = sub_E6CE4();
  v32 = *(v33 - 8);
  v9 = *(v32 + 64);
  v10 = __chkstk_darwin(v33);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v31 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v14 = type metadata accessor for TipButton();
  v15 = *(v14 - 8);
  v34 = v14 - 8;
  v16 = v15;
  v17 = *(v15 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v35 = v19;
  *(v19 + 16) = xmmword_E87F0;
  v20 = (v19 + v18);
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v21 = sub_E59C4();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_E5C24();
  sub_E6CB4();
  v45 = v39;
  sub_110AC(&v45, &qword_131388, &unk_F56C0);
  v44 = v40;
  sub_110AC(&v44, &qword_131390, &unk_F55A0);
  v43 = v41;
  sub_110AC(&v43, &qword_131398, &unk_F56D0);
  sub_C2FD4(v42);

  sub_110AC(v8, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_E9EF0;
  sub_E6CD4();
  *(v22 + 56) = sub_E6D14();
  *(v22 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  sub_E6D04();
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction();
  *(v22 + 96) = refreshed;
  *(v22 + 104) = sub_8E78();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  *boxed_opaque_existential_1 = sub_C50C(&off_120670);
  (*(v32 + 32))(boxed_opaque_existential_1 + *(refreshed + 20), v12, v33);
  v38[3] = sub_E6D64();
  v38[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v38);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v25 = v36;
  sub_E5B84();

  v26 = sub_E5B94();
  v27 = *(*(v26 - 8) + 56);
  v27(v25, 0, 1, v26);
  sub_48FC(v38, (v20 + 4));
  v28 = v37;
  sub_BD5BC(v25, v37);
  v29 = *(v34 + 40);
  v27(v20 + v29, 1, 1, v26);
  *v20 = 0xD000000000000022;
  v20[1] = 0x80000000000F8560;
  v20[2] = 0;
  v20[3] = 0;
  v20[9] = 2;
  sub_BD48C(v28, v20 + v29);
  sub_110AC(v25, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v35;
}

void sub_C6DBC()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_E70D4();
  v1 = sub_E7024();

  [v0 setBool:1 forKey:v1];
}

uint64_t StayUpToDateTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v6._object = 0x80000000000F8E90;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_E63A4(v6, v7);
  sub_E6E54();

  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_C6F2C(uint64_t a1)
{
  result = sub_C6F54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C6F54()
{
  result = qword_1314E0;
  if (!qword_1314E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1314E0);
  }

  return result;
}

BOOL sub_C6FB8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_E7CC4();
  sub_E7CD4(v3);
  v5 = sub_E7CF4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_C7084(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_E78F4();
  }

  else if (*(a2 + 16) && (sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr), v5 = sub_E7784(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_E7794();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AddFavoriteCategoriesButtonTipProvider.init(asPartOf:)(a1);
  return v2;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.init(asPartOf:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v51 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1314E8, "Ju");
  v57 = *(v55 - 8);
  v7 = v57[8];
  __chkstk_darwin(v55);
  v9 = &v51 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1314F0, "du");
  v64 = *(v61 - 8);
  v10 = *(v64 + 64);
  __chkstk_darwin(v61);
  v52 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1314F8, &qword_F5888);
  v13 = *(v12 - 8);
  v62 = v12;
  v63 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v58 = &v51 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131500, &qword_F5890);
  v67 = *(v65 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v65);
  v59 = &v51 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131508, &qword_F5898);
  v68 = *(v66 - 8);
  v18 = *(v68 + 64);
  __chkstk_darwin(v66);
  v60 = &v51 - v19;
  v20 = sub_E7534();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v21 + 104))(v24, enum case for NSUserDefaults.Name.shared(_:), v20);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr);
  v54 = a1;
  sub_E6DB4();
  (*(v21 + 8))(v24, v20);
  v51 = v69;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_E69D4();
  *(v1 + 16) = v28;
  sub_E66C4();

  sub_E6DA4();
  v53 = v69;
  v69 = v28;
  v73 = sub_E66B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131510, &qword_F58A8);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0);
  sub_3C2A0(&qword_131900, &qword_131510, &qword_F58A8);
  sub_E6AA4();

  v29 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v30 = sub_E7584();
  v69 = v30;
  v31 = sub_E7594();
  v32 = v6;
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  v33 = sub_3C2A0(&qword_131518, &qword_1314E8, "Ju");
  v34 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr);
  v35 = v52;
  v36 = v55;
  sub_E6A54();
  sub_110AC(v32, &qword_131D20, "Ju");

  v37 = v36;
  (v57[1])(v9, v36);
  v38 = swift_allocObject();
  v39 = v51;
  *(v38 + 16) = v51;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_C7D34;
  *(v40 + 24) = v38;
  v57 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
  v69 = v37;
  v70 = v29;
  v71 = v33;
  v72 = v34;
  swift_getOpaqueTypeConformance2();
  v41 = v58;
  v42 = v61;
  sub_E6AC4();

  (*(v64 + 8))(v35, v42);
  v43 = sub_3C2A0(&qword_131520, &qword_1314F8, &qword_F5888);
  v44 = v59;
  v45 = v62;
  sub_E6A64();
  (*(v63 + 8))(v41, v45);

  v69 = v45;
  v70 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v65;
  v47 = v60;
  sub_E6A84();

  (*(v67 + 8))(v44, v46);
  sub_3C2A0(&qword_131528, &qword_131508, &qword_F5898);
  v48 = v66;
  v49 = sub_E6A74();

  (*(v68 + 8))(v47, v48);
  result = v56;
  *(v56 + 24) = v49;
  return result;
}

uint64_t sub_C7B2C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4ABC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_C7B70(uint64_t a1, void *a2)
{
  sub_E7104();
  v4 = sub_E7024();

  v5 = [a2 BOOLForKey:v4];

  if (v5 || (sub_E70F4(), v6 = sub_E7024(), , v7 = [a2 BOOLForKey:v6], v6, v7) || a1)
  {

    return sub_B18B8(_swiftEmptyArrayStorage);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_E87F0;
    *(inited + 32) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCA8, &qword_EA4D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_E87F0;
    *(v10 + 56) = &type metadata for AddFavoriteCategoriesButtonTip;
    *(v10 + 64) = sub_C801C();
    *(inited + 40) = v10;
    v11 = sub_B18B8(inited);
    swift_setDeallocating();
    sub_110AC(inited + 32, qword_131A30, &qword_F5F80);
    return v11;
  }
}

uint64_t sub_C7CFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C7D3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C7D74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_C7DA8()
{
  v1 = *v0;
  sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);

  return sub_E6A44();
}

uint64_t AddFavoriteCategoriesButtonTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    v3 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    return sub_E6A44();
  }

  return result;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_C7F3C(uint64_t a1)
{
  v2 = *v1;
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    v4 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0);
    return sub_E6A44();
  }

  return result;
}

unint64_t sub_C801C()
{
  result = qword_1315D8;
  if (!qword_1315D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1315D8);
  }

  return result;
}

uint64_t OrderedTipProvider.init(providers:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for OrderedTipProvider();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t OrderedTipProvider.tips.getter(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_E7814();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v52 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1315E0, &unk_F5930);
  v9 = sub_3C2A0(&qword_1315E8, &qword_1315E0, &unk_F5930);
  v61 = v8;
  v62 = v4;
  v45 = v4;
  v63 = v9;
  v64 = v3;
  v10 = v9;
  v44 = v9;
  v46 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v50 = v40 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_131750, &qword_F58B0);
  v61 = v8;
  v62 = v4;
  v63 = v10;
  v64 = v3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_E69A4();
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  __chkstk_darwin(v13);
  v42 = v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1315F0, &qword_F5940);
  v17 = sub_3C2A0(&qword_1315F8, &qword_1315F0, &qword_F5940);
  WitnessTable = swift_getWitnessTable();
  v61 = v16;
  v62 = v13;
  v63 = v17;
  v64 = WitnessTable;
  v41 = sub_E6994();
  v51 = *(v41 - 8);
  v18 = *(v51 + 64);
  __chkstk_darwin(v41);
  v20 = v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131600, &qword_F5948);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v40 - v24;
  v61 = &_swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131608, &qword_F5950);
  sub_E6A04();
  sub_3C2A0(&qword_131610, &qword_131600, &qword_F5948);
  v26 = sub_E6A74();
  v40[1] = v26;
  (*(v22 + 8))(v25, v21);
  v61 = *v2;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131618, &qword_F5958);
  v28 = sub_C8C34();
  v30 = sub_1110C(sub_C88C0, 0, v27, v8, &type metadata for Never, v28, &protocol witness table for Never, v29);

  v59 = v26;
  v60 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131638, &qword_F5968);
  sub_3C2A0(&qword_131640, &qword_131638, &qword_F5968);
  sub_E7194();

  v31 = *(v56 + 36);
  v32 = v52;
  (*(*(AssociatedTypeWitness - 8) + 56))(v52, 1, 1);
  v33 = v50;
  sub_E6A54();
  (*(v57 + 8))(v32, v58);
  v34 = v42;
  v35 = OpaqueTypeMetadata2;
  sub_E6AC4();
  (*(v54 + 8))(v33, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_131648, &qword_F5970);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_E87F0;
  *(v36 + 32) = sub_B18B8(_swiftEmptyArrayStorage);
  sub_E6AF4();

  (*(v53 + 8))(v34, v13);
  v37 = v41;
  swift_getWitnessTable();
  v38 = sub_E6A74();

  (*(v51 + 8))(v20, v37);
  return v38;
}

uint64_t sub_C88C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131710, &qword_F5A20);
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131718, &qword_F5A28);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v13 = a1[4];
  v12 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v13);
  *&v25[0] = (*(v12 + 8))(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_131648, &qword_F5970);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_E87F0;
  *(v14 + 32) = sub_B18B8(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131310, &qword_F5A30);
  sub_3C2A0(&qword_131318, &qword_131310, &qword_F5A30);
  sub_E6AF4();

  sub_CA850(a1, v25);
  v15 = swift_allocObject();
  v16 = v25[1];
  v15[1] = v25[0];
  v15[2] = v16;
  v15[3] = v25[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131608, &qword_F5950);
  sub_3C2A0(&qword_131728, &qword_131710, &qword_F5A20);
  v17 = v21;
  sub_E6AC4();

  (*(v3 + 8))(v6, v17);
  sub_3C2A0(&qword_131730, &qword_131718, &qword_F5A28);
  v18 = v22;
  v19 = sub_E6A74();
  result = (*(v23 + 8))(v11, v18);
  *v24 = v19;
  return result;
}

unint64_t sub_C8C34()
{
  result = qword_131620;
  if (!qword_131620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131618, &qword_F5958);
    sub_3C2A0(&qword_131628, &qword_131630, &qword_F5960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131620);
  }

  return result;
}

uint64_t sub_C8CE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA98, &unk_E9DB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_E87F0;
  sub_CA850(a2, &v8);
  *(v6 + 32) = v8;
  *(v6 + 40) = v5;

  result = __swift_destroy_boxed_opaque_existential_1(v9);
  *a3 = v6;
  return result;
}

uint64_t sub_C8D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316D8, &qword_F5A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316E0, &qword_F5A08);
  v26 = *(v24 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v24);
  v12 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316E8, &qword_F5A10);
  v25 = *(v23 - 8);
  v13 = *(v25 + 64);
  __chkstk_darwin(v23);
  v15 = &v22 - v14;
  v16 = *a2;
  v29 = *a1;
  v28 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316F0, &qword_F5A18);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_E87F0;
  *(v17 + 32) = &_swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1315E0, &unk_F5930);
  sub_3C2A0(&qword_1315E8, &qword_1315E0, &unk_F5930);
  sub_E6AF4();

  sub_3C2A0(&qword_1316F8, &qword_1316D8, &qword_F5A00);
  sub_E6AA4();
  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131608, &qword_F5950);
  sub_3C2A0(&qword_131700, &qword_1316E0, &qword_F5A08);
  v18 = v24;
  sub_E6AC4();
  (*(v26 + 8))(v12, v18);
  sub_3C2A0(&qword_131708, &qword_1316E8, &qword_F5A10);
  v19 = v23;
  v20 = sub_E6A74();
  result = (*(v25 + 8))(v15, v19);
  *v27 = v20;
  return result;
}

uint64_t sub_C917C(uint64_t a1, void *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v29 = a1;

  v9 = 0;
  v10 = 0;
  while (v7)
  {
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v10 << 6);
    v14 = *(*(v29 + 48) + v13);
    v15 = *(*(v29 + 56) + 8 * v13);

    sub_C2FD4(v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = a2;
    v17 = sub_E07B8(v14);
    v19 = a2[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_23;
    }

    v23 = v18;
    if (a2[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v17;
        sub_E36F8();
        v17 = v27;
        a2 = v30;
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_E2B88(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_E07B8(v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_25;
      }
    }

    if (v23)
    {
      goto LABEL_4;
    }

LABEL_16:
    a2[(v17 >> 6) + 8] |= 1 << v17;
    *(a2[6] + v17) = v14;
    *(a2[7] + 8 * v17) = _swiftEmptyArrayStorage;
    v25 = a2[2];
    v21 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v21)
    {
      goto LABEL_24;
    }

    a2[2] = v26;
LABEL_4:
    v7 &= v7 - 1;
    v11 = a2[7] + 8 * v17;
    sub_22EB8(v15);
    v9 = sub_C93AC;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      sub_C2FD4(v9);
      return a2;
    }

    v7 = *(v4 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_E7C54();
  __break(1u);
  return result;
}

uint64_t sub_C93BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C917C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_C93EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130720, &unk_F59E0);
  result = sub_E7AE4();
  v4 = result;
  v5 = 0;
  v6 = *(v2 + 64);
  v35 = v2 + 64;
  v38 = result;
  v39 = v2;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v36 = v10;
  v37 = result + 64;
  if ((v8 & v6) == 0)
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_37;
      }

      if (v5 >= v10)
      {
        *a2 = v4;
        return result;
      }

      v14 = *(v35 + 8 * v5);
      ++v13;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v12 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
    v11 = __clz(__rbit64(v9));
    v12 = (v9 - 1) & v9;
LABEL_10:
    v15 = v11 | (v5 << 6);
    v16 = *(*(v39 + 48) + v15);
    v44 = *(*(v39 + 56) + 8 * v15);
    swift_bridgeObjectRetain_n();
    sub_C97C8(&v44);
    v41 = v5;
    v42 = v16;
    v43 = v15;
    v40 = v12;
    v17 = v44;
    v18 = v44[2];
    if (v18)
    {
      break;
    }

    v21 = _swiftEmptyArrayStorage;
LABEL_29:

    v4 = v38;
    *(v37 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    *(v38[6] + v43) = v42;
    *(v38[7] + 8 * v43) = v21;
    v32 = v38[2];
    v30 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v30)
    {
      goto LABEL_39;
    }

    v38[2] = v33;
    v9 = v40;
    v5 = v41;
    v10 = v36;
    if (!v40)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  v20 = v44 + 5;
  v21 = _swiftEmptyArrayStorage;
  while (v19 < v17[2])
  {
    v22 = *v20;
    v23 = *(*v20 + 16);
    v24 = v21[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_34;
    }

    v26 = *v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v25 <= v21[3] >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v21 = sub_23C14(isUniquelyReferenced_nonNull_native, v28, 1, v21);
      if (*(v22 + 16))
      {
LABEL_24:
        if ((v21[3] >> 1) - v21[2] < v23)
        {
          goto LABEL_36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCB0, &qword_EA4D8);
        swift_arrayInitWithCopy();

        if (v23)
        {
          v29 = v21[2];
          v30 = __OFADD__(v29, v23);
          v31 = v29 + v23;
          if (v30)
          {
            goto LABEL_38;
          }

          v21[2] = v31;
        }

        goto LABEL_13;
      }
    }

    if (v23)
    {
      goto LABEL_35;
    }

LABEL_13:
    ++v19;
    v20 += 2;
    if (v18 == v19)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
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

  __break(1u);
  return result;
}

uint64_t OrderedTipProvider.requestRefresh(for:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      sub_48FC(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 16))(v3, v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t OrderedTipProvider<>.init(providers:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_CA344();
  result = sub_E7574();
  *a2 = a1;
  a2[1] = result;
  return result;
}

Swift::Int sub_C97C8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_CA330(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_E7BA4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
      v7 = sub_E7264();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_C991C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_C991C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_CA134(v8);
      v8 = result;
    }

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_C9EA4((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_23350(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_23350((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_C9EA4((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_C9EA4(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_CA0A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_CA134(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}