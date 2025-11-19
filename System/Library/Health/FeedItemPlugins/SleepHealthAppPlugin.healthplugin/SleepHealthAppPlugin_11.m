void sub_29E728550()
{
  if (!qword_2A1A7BE88)
  {
    sub_29E7285E4();
    sub_29E7250A0(&qword_2A1A7BF10, sub_29E7285E4);
    v0 = sub_29E753108();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BE88);
    }
  }
}

void sub_29E7285E4()
{
  if (!qword_2A1A7BF08)
  {
    sub_29E7284FC();
    v0 = sub_29E752A18();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF08);
    }
  }
}

unint64_t sub_29E728660()
{
  result = qword_2A1A7BEE0;
  if (!qword_2A1A7BEE0)
  {
    sub_29E728404();
    sub_29E7250A0(&qword_2A1A7BEA0, sub_29E72846C);
    sub_29E7250A0(&qword_2A1A7BE90, sub_29E728550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BEE0);
  }

  return result;
}

uint64_t sub_29E7287C4(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x29EDCA190];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x29EDCA190];
  sub_29E6DBBFC(0, v4, 0);
  v5 = v16;
  v8 = *(sub_29E753EA8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_29E6DBBFC((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_29E728924(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  sub_29E6DD148();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    v25 = MEMORY[0x29EDCA190];
    sub_29E6DBE74(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v25;
    v19 = i;
    v20 = a3 & 0xC000000000000001;
    v18 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v20)
      {
        v14 = MEMORY[0x29ED976A0](v11, a3);
      }

      else
      {
        if (v11 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(a3 + 8 * v11 + 32);
      }

      i = v14;
      v24 = v14;
      v22(&v24);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v25 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_29E6DBE74(v15 > 1, v16 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v16 + 1;
      sub_29E72B028(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16);
      ++v11;
      if (v13 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_29E728B48(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A185A7A0) = 0;
  sub_29E602E20(a1, v1 + qword_2A185A798);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_29E74ED78();
  v9 = sub_29E74ED48();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x29ED96C20](v9, v11);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v12 = sub_29E750D08();
  v13 = *(v12 + qword_2A185A798 + 32);
  sub_29E601938((v12 + qword_2A185A798), *(v12 + qword_2A185A798 + 24));

  v19[0] = sub_29E74F4E8();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v3;
  sub_29E60990C();
  sub_29E72A7B4(&qword_2A18569F0, sub_29E60990C);
  v16 = sub_29E7529A8();

  sub_29E5FECBC(a1);

  v17 = *(v12 + qword_2A185A7A0);
  *(v12 + qword_2A185A7A0) = v16;

  return v12;
}

uint64_t sub_29E728E1C()
{
  v21 = sub_29E752098();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E753D78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v10 = Strong;
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v8 = sub_29E754908();
  (*(v5 + 104))(v8, *MEMORY[0x29EDCA278], v4);
  v11 = sub_29E753DA8();
  result = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    sub_29E752048();
    v13 = sub_29E752088();
    v14 = sub_29E7546C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] Responding to sleep schedule change", v15, 0xCu);
      sub_29E5FECBC(v16);
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    (*(v0 + 8))(v3, v21);
    sub_29E729180(v10 + qword_2A185A798);
    sub_29E750D18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E729180(unint64_t a1)
{
  sub_29E6DD148();
  v40 = v2;
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E750CA8();
  v42 = *(v39 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_29E601938(a1, *(a1 + 24));
  v9 = sub_29E74F528();
  v10 = MEMORY[0x29EDCA190];
  if (v9)
  {
    v36 = v9;
    v11 = [v9 occurrences];
    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v12 = sub_29E7543F8();

    v44 = v10;
    if (v12 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E754C98())
    {
      v14 = MEMORY[0x29EDCA190];
      if (i)
      {
        *&v37 = a1;
        a1 = 0;
        v15 = v12 & 0xFFFFFFFFFFFFFF8;
        v38 = v12 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x29ED976A0](a1, v12);
          }

          else
          {
            if (a1 >= *(v15 + 16))
            {
              goto LABEL_27;
            }

            v16 = *(v12 + 8 * a1 + 32);
          }

          v17 = v16;
          v18 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            break;
          }

          if ([v16 isRepeating])
          {
            sub_29E754DE8();
            v19 = *(v44 + 16);
            sub_29E754E18();
            sub_29E754E28();
            sub_29E754DF8();
            v15 = v38;
          }

          else
          {
          }

          ++a1;
          if (v18 == i)
          {
            v20 = v44;
            a1 = v37;
            v14 = MEMORY[0x29EDCA190];
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
      }

      else
      {
        v20 = MEMORY[0x29EDCA190];
LABEL_17:

        v12 = &v35;
        MEMORY[0x2A1C7C4A8](v21);
        *(&v35 - 2) = a1;
        sub_29E728924(sub_29E72AEF0, (&v35 - 4), v20);
        v23 = v22;

        v24 = *(v23 + 16);
        if (!v24)
        {

          return MEMORY[0x29EDCA190];
        }

        v46 = v14;
        sub_29E6DBE24(0, v24, 0);
        v25 = 0;
        v38 = v23 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v10 = v46;
        v37 = xmmword_29E762F40;
        while (v25 < *(v23 + 16))
        {
          sub_29E72AF10(v38 + *(v43 + 72) * v25, v5, sub_29E6DD148);
          v26 = &v5[*(v40 + 48)];
          sub_29E693C6C(0, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
          v27 = swift_allocObject();
          *(v27 + 16) = v37;
          *(v27 + 56) = _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(0);
          *(v27 + 64) = sub_29E72A7B4(&qword_2A185A7C8, _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0);
          v28 = sub_29E5FEBF4((v27 + 32));
          sub_29E72AF10(v5, v28, _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0);
          *(v27 + 96) = &type metadata for EditScheduleOccurrenceItem;
          *(v27 + 104) = sub_29E72AF78();
          v29 = swift_allocObject();
          *(v27 + 72) = v29;
          sub_29E72AE60(v26, v29 + 16);
          v44 = 0;
          v45 = 0xE000000000000000;
          sub_29E754D78();

          v44 = 0xD000000000000015;
          v45 = 0x800000029E76CCA0;
          v30 = *(v26 + 40);
          v31 = sub_29E754608();
          MEMORY[0x29ED96C20](v31);

          v32 = v41;
          sub_29E750C98();
          sub_29E72AFCC(v5);
          v46 = v10;
          a1 = *(v10 + 16);
          v33 = *(v10 + 24);
          v12 = a1 + 1;
          if (a1 >= v33 >> 1)
          {
            sub_29E6DBE24(v33 > 1, a1 + 1, 1);
            v32 = v41;
            v10 = v46;
          }

          ++v25;
          *(v10 + 16) = v12;
          (*(v42 + 32))(v10 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * a1, v32, v39);
          if (v24 == v25)
          {

            return v10;
          }
        }
      }

      __break(1u);
LABEL_29:
      ;
    }
  }

  return v10;
}

uint64_t sub_29E729768@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (sub_29E74EED8())
  {
    a1[3] = sub_29E750788();
    a1[4] = sub_29E72A7B4(&qword_2A1856D80, MEMORY[0x29EDC1EC0]);
    sub_29E5FEBF4(a1);
    return sub_29E750778();
  }

  else
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    sub_29E7521F8();
    v5 = sub_29E750458();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_29E750438();
    a1[3] = v5;
    result = sub_29E72A7B4(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
    a1[4] = result;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_29E729988()
{
  sub_29E5FECBC((v0 + qword_2A185A798));
  v1 = *(v0 + qword_2A185A7A0);
}

uint64_t sub_29E7299C8()
{
  v0 = sub_29E750D58();
  v1 = qword_2A185A798;

  sub_29E5FECBC((v2 + v1));
  v3 = *(v0 + qword_2A185A7A0);

  return swift_deallocClassInstance();
}

uint64_t sub_29E729A58(uint64_t a1)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29E750E38();
  }

  else
  {
    sub_29E750E28();
  }

  sub_29E750E58();
  v7 = sub_29E750E68();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29E729BB4()
{
  type metadata accessor for LinkCollectionViewCell();
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E72A7B4(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7547D8();
}

uint64_t sub_29E729C3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_29E6DD148();
  v7 = *(v6 + 48);
  v8 = v5;
  sub_29E729CCC(v8, a3);
  sub_29E602E20(a2, v10);
  return sub_29E729ECC(v10, [v8 weekdays], (a3 + v7));
}

uint64_t sub_29E729CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74F9B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = (a2 + *(_s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(0) + 20));
  v12 = a1;
  sub_29E74F978();
  sub_29E74F968();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC6AC8], v4);
  sub_29E609D54(0, &qword_2A1A7BCF0, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E762F40;
  sub_29E74F9D8();
  *(v13 + 32) = sub_29E754608();
  *(v13 + 40) = v14;
  *(v13 + 48) = 0xD000000000000010;
  *(v13 + 56) = 0x800000029E7582F0;
  v15 = sub_29E754258();
  v17 = v16;

  result = (*(v5 + 8))(v8, v4);
  *v11 = v15;
  v11[1] = v17;
  return result;
}

uint64_t sub_29E729ECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_29E74F698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1856240 != -1)
  {
    swift_once();
  }

  v11 = unk_2A185A790;
  a3[8] = qword_2A185A788;
  a3[9] = v11;
  sub_29E602E20(a1, a3);
  a3[5] = a2;
  (*(v7 + 104))(v10, *MEMORY[0x29EDC6AC8], v6);
  sub_29E609D54(0, &qword_2A1A7BCF0, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E762F40;

  *(v12 + 32) = sub_29E754608();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0xD000000000000010;
  *(v12 + 56) = 0x800000029E760D80;
  v14 = sub_29E754258();
  v16 = v15;

  sub_29E5FECBC(a1);
  result = (*(v7 + 8))(v10, v6);
  a3[6] = v14;
  a3[7] = v16;
  return result;
}

uint64_t sub_29E72A0B0()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E72A7B4(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell);
  return sub_29E7506A8();
}

uint64_t sub_29E72A118(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

uint64_t sub_29E72A1EC(uint64_t a1, uint64_t a2)
{
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_29E7550E8();
  }

  v5 = *v4;
  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E72A2C0(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A18569D8, MEMORY[0x29EDC6B70]);
  sub_29E7540B8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

uint64_t sub_29E72A390()
{
  sub_29E72B1F8();
  v2 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E74F9E8();
  sub_29E72A7B4(&qword_2A1856A58, MEMORY[0x29EDC6B70]);
  v0 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v0);

  return v2;
}

uint64_t sub_29E72A454(uint64_t a1)
{
  v2 = sub_29E72A7B4(&qword_2A185A7F0, _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E72A4D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_29E72A500()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_29E72A530(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_29E72A588()
{
  sub_29E72B294();
  v4 = sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  v1 = *(v0 + 40);
  v2 = sub_29E754608();
  MEMORY[0x29ED96C20](v2);

  return v4;
}

uint64_t sub_29E72A5FC(uint64_t a1)
{
  v2 = sub_29E72B240();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E72A648()
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](*(v0 + 40));
  return sub_29E755108();
}

uint64_t sub_29E72A6B8()
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](*(v0 + 40));
  return sub_29E755108();
}

unint64_t sub_29E72A718()
{
  result = qword_2A185A7B8;
  if (!qword_2A185A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A7B8);
  }

  return result;
}

uint64_t sub_29E72A7B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E72A7FC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A185A788 = result;
  unk_2A185A790 = v1;
  return result;
}

uint64_t sub_29E72A894(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = (&v51 - v11);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v51 - v13;
  sub_29E752048();
  v15 = sub_29E752088();
  v16 = sub_29E7546C8();
  v17 = os_log_type_enabled(v15, v16);
  v52 = v12;
  if (v17)
  {
    v18 = v4;
    v19 = v5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v53[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_29E6B9C90(0xD000000000000041, 0x800000029E760CC0, v53);
    _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Edit current schedule tapped", v20, 0xCu);
    sub_29E5FECBC(v21);
    MEMORY[0x29ED98410](v21, -1, -1);
    v22 = v20;
    v5 = v19;
    v4 = v18;
    MEMORY[0x29ED98410](v22, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v14, v4);
  v55 = a1;
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  sub_29E609CF8(0, &qword_2A18569E0);
  v24 = a1;
  if (swift_dynamicCast())
  {
    sub_29E60A040(v53, v56);
    v25 = v2[4];
    sub_29E601938(v2, v2[3]);
    v26 = v2[5];
    v27 = sub_29E74F558();
    if (v27)
    {
      v28 = v27;
      sub_29E601938(v56, v56[3]);
      sub_29E74F8D8();
    }

    else
    {
      v42 = v52;
      sub_29E752048();
      sub_29E72AE60(v2, v53);
      v43 = sub_29E752088();
      v44 = sub_29E7546A8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v55 = v46;
        *v45 = 136446466;
        *(v45 + 4) = sub_29E6B9C90(0xD000000000000041, 0x800000029E760CC0, &v55);
        *(v45 + 12) = 2082;
        v47 = sub_29E7545F8();
        v49 = v48;
        sub_29E72AE98(v53);
        v50 = sub_29E6B9C90(v47, v49, &v55);

        *(v45 + 14) = v50;
        _os_log_impl(&dword_29E5ED000, v43, v44, "[%{public}s] Unable to edit occurrence for identifier: %{public}s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v46, -1, -1);
        MEMORY[0x29ED98410](v45, -1, -1);
      }

      else
      {

        sub_29E72AE98(v53);
      }

      v23(v42, v4);
    }

    return sub_29E5FECBC(v56);
  }

  else
  {
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    sub_29E6093D0(v53);
    sub_29E752048();
    v29 = v24;
    v30 = sub_29E752088();
    v31 = sub_29E7546A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v52 = v23;
      v33 = v32;
      v34 = swift_slowAlloc();
      *&v53[0] = v34;
      *v33 = 136446466;
      *(v33 + 4) = sub_29E6B9C90(0xD000000000000041, 0x800000029E760CC0, v53);
      *(v33 + 12) = 2082;
      v35 = v29;
      v36 = [v35 description];
      v37 = sub_29E7541D8();
      v51 = v5;
      v39 = v38;

      v40 = sub_29E6B9C90(v37, v39, v53);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_29E5ED000, v30, v31, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v34, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);

      return (v52)(v9, v4);
    }

    else
    {

      return (v23)(v9, v4);
    }
  }
}

uint64_t sub_29E72AEC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E728E1C();
}

uint64_t sub_29E72AF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E72AF78()
{
  result = qword_2A185A7D0;
  if (!qword_2A185A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A7D0);
  }

  return result;
}

uint64_t sub_29E72AFCC(uint64_t a1)
{
  sub_29E6DD148();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E72B028(uint64_t a1, uint64_t a2)
{
  sub_29E6DD148();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E72B0B4()
{
  sub_29E74F9E8();
  if (v0 <= 0x3F)
  {
    sub_29E609D54(319, &qword_2A1A7D0C8, MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E72B1F8()
{
  result = qword_2A185A7F8;
  if (!qword_2A185A7F8)
  {
    _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A185A7F8);
  }

  return result;
}

unint64_t sub_29E72B240()
{
  result = qword_2A185A800;
  if (!qword_2A185A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A800);
  }

  return result;
}

unint64_t sub_29E72B294()
{
  result = qword_2A185A808;
  if (!qword_2A185A808)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A185A808);
  }

  return result;
}

uint64_t sub_29E72B2DC()
{
  sub_29E72E0C4(0);
  v29 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72E178(0);
  v25 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  sub_29E72E258();
  v26 = v6;
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72E340();
  v27 = v10;
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[7];
  sub_29E601938(v0 + 3, v0[6]);
  v31 = sub_29E751DC8();
  sub_29E64C52C();
  sub_29E72E45C(&qword_2A1A7BFA0, sub_29E64C52C);
  v14 = sub_29E7528E8();
  v22 = v14;

  v15 = sub_29E72C754();
  v31 = v14;
  sub_29E72E100();
  sub_29E752928();
  v31 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_29E72E3E0;
  *(v16 + 24) = 0;
  sub_29E649310();
  sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310);
  sub_29E752928();

  sub_29E72E45C(&qword_2A1A7C058, sub_29E72E178);
  sub_29E72E45C(&qword_2A1A7C028, sub_29E72E0C4);
  sub_29E752678();
  sub_29E72E45C(&qword_2A1A7BFD0, sub_29E72E258);

  v17 = v23;
  v18 = v26;
  sub_29E752928();

  (*(v28 + 8))(v9, v18);
  sub_29E72E45C(&qword_2A1A7BFF0, sub_29E72E340);
  v19 = v27;
  v20 = sub_29E7528E8();

  (*(v30 + 8))(v17, v19);
  return v20;
}

uint64_t sub_29E72B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E751D98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_29E72E100();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E72B838@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_29E72E100();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72E4A4(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
  }

  else
  {
    sub_29E72C2D0();
    sub_29E72E508(v7);
    v8 = 0;
  }

  result = sub_29E72B908();
  *a2 = (result | v8) & 1;
  return result;
}

uint64_t sub_29E72B908()
{
  v72 = *v0;
  v1 = sub_29E752098();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v71 = &v63 - v6;
  v70 = sub_29E751D68();
  v68 = *(v70 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v70);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29E751D38();
  v67 = *(v69 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v69);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC2D78];
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v63 - v14;
  v16 = sub_29E751D98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v63 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v65 = &v63 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v25 = &v63 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v63 - v26;
  v28 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
  swift_beginAccess();
  sub_29E72DF58(v0 + v28, v15, &qword_2A1A7CEF8, v11);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29E72DEFC(v15, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
    sub_29E752068();
    v29 = sub_29E752088();
    v30 = sub_29E7546A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136446210;
      v33 = sub_29E755178();
      v35 = sub_29E6B9C90(v33, v34, &v75);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29E5ED000, v29, v30, "[%{public}s]: Feature status is nil. Will assume onboarding is unavailable.", v31, 0xCu);
      sub_29E5FECBC(v32);
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v31, -1, -1);
    }

    (*(v73 + 8))(v5, v74);
  }

  else
  {
    (*(v17 + 32))(v27, v15, v16);
    v36 = *(v17 + 16);
    v36(v25, v27, v16);
    v37 = (*(v17 + 88))(v25, v16);
    if (v37 == *MEMORY[0x29EDC2D70])
    {
      v38 = *(v17 + 8);
      v38(v27, v16);
      v38(v25, v16);
    }

    else
    {
      if (v37 == *MEMORY[0x29EDC2D68])
      {
        (*(v17 + 96))(v25, v16);
        v39 = v67;
        v40 = v64;
        v41 = v69;
        (*(v67 + 32))(v64, v25, v69);
        v42 = v66;
        sub_29E751D28();
        v43 = *MEMORY[0x29EDBA578];
        v44 = sub_29E751D78();
        (*(v68 + 8))(v42, v70);
        LODWORD(v42) = [v44 areAllRequirementsSatisfied];

        (*(v39 + 8))(v40, v41);
        (*(v17 + 8))(v27, v16);
        return v42 ^ 1;
      }

      v46 = v71;
      sub_29E752068();
      v47 = v65;
      v36(v65, v27, v16);
      v48 = sub_29E752088();
      v49 = sub_29E7546A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        LODWORD(v69) = v49;
        v51 = v50;
        v70 = swift_slowAlloc();
        v75 = v70;
        *v51 = 136446466;
        v52 = sub_29E755178();
        v54 = sub_29E6B9C90(v52, v53, &v75);
        v72 = v27;
        v55 = v54;

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v36(v63, v47, v16);
        v56 = sub_29E7541F8();
        v58 = v57;
        v59 = *(v17 + 8);
        v59(v47, v16);
        v60 = sub_29E6B9C90(v56, v58, &v75);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_29E5ED000, v48, v69, "[%{public}s] Got unknown feature status: %s\nWill assume onboarding is unavailable.", v51, 0x16u);
        v61 = v70;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v61, -1, -1);
        MEMORY[0x29ED98410](v51, -1, -1);

        (*(v73 + 8))(v71, v74);
        v62 = v72;
      }

      else
      {

        v59 = *(v17 + 8);
        v59(v47, v16);
        (*(v73 + 8))(v46, v74);
        v62 = v27;
      }

      v59(v62, v16);
      v59(v25, v16);
    }
  }

  return 1;
}

uint64_t sub_29E72C150(uint64_t a1)
{
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_29E751D98();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
    swift_beginAccess();
    sub_29E689300(v5, v7 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_29E72C2D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E752098();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v16 - v10;
  v12 = v0[7];
  sub_29E601938(v0 + 3, v0[6]);
  sub_29E751DB8();
  v13 = sub_29E751D98();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  sub_29E72E044(v9, v11);
  v14 = OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status;
  swift_beginAccess();
  sub_29E72DFC4(v11, v1 + v14);
  swift_endAccess();
  return sub_29E72DEFC(v11, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
}

uint64_t sub_29E72C754()
{
  sub_29E72D9A8();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v41 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E754998();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DA94();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DB80(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DC9C(0);
  v34 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 16);
  v44 = sub_29E74FFC8();
  sub_29E72DBBC();
  sub_29E72E45C(&qword_2A1A7BF30, sub_29E72DBBC);

  sub_29E752928();

  LOBYTE(v44) = 1;
  sub_29E72E45C(&qword_2A1A7C018, sub_29E72DB80);
  sub_29E752908();
  (*(v12 + 8))(v15, v11);
  sub_29E72E45C(&qword_2A1A7C078, sub_29E72DC9C);
  v22 = v34;
  v23 = sub_29E7528E8();
  (*(v17 + 8))(v20, v22);
  v24 = [objc_opt_self() defaultCenter];
  if (qword_2A1A7BD90 != -1)
  {
    swift_once();
  }

  v25 = v35;
  sub_29E7549A8();

  sub_29E7526E8();
  sub_29E649310();
  sub_29E72E45C(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8]);
  sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310);
  v26 = v37;
  v27 = v38;
  sub_29E7529B8();

  (*(v36 + 8))(v25, v26);
  v44 = v23;
  sub_29E72E45C(&qword_2A1A7BFC0, sub_29E72DA94);
  v29 = v40;
  v28 = v41;
  sub_29E752948();
  sub_29E72E45C(&qword_2A1A7BFE0, sub_29E72D9A8);
  v30 = v43;
  v31 = sub_29E7528E8();

  (*(v42 + 8))(v28, v30);
  (*(v39 + 8))(v27, v29);
  return v31;
}

uint64_t sub_29E72CDC4@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v48 = a1;
  v47 = sub_29E74EE68();
  v44 = *(v47 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v47);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74EE78();
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDB9BC8];
  sub_29E72DC48(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v49 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v38 - v16;
  v18 = sub_29E74ED28();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v43 = &v38 - v25;
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v38 - v26;
  sub_29E72DF58(v48, v17, &qword_2A1A7CFC0, v11);
  v48 = v19[6];
  if (v48(v17, 1, v18) == 1)
  {
    result = sub_29E72DEFC(v17, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    v29 = 0;
  }

  else
  {
    v41 = v27;
    v42 = a2;
    v39 = v19[4];
    v39(v27, v17, v18);
    sub_29E74EE58();
    v30 = v44;
    v31 = v47;
    (*(v44 + 104))(v5, *MEMORY[0x29EDB9CB8], v47);
    sub_29E74ED18();
    v32 = v10;
    v33 = v49;
    sub_29E74EE48();
    v40 = v19[1];
    v40(v23, v18);
    (*(v30 + 8))(v5, v31);
    (*(v46 + 8))(v32, v45);
    if (v48(v33, 1, v18) == 1)
    {
      v40(v41, v18);
      result = sub_29E72DEFC(v49, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
      v29 = 0;
    }

    else
    {
      v34 = v43;
      v39(v43, v49, v18);
      v35 = v41;
      v29 = sub_29E74ECA8();
      v36 = v34;
      v37 = v40;
      v40(v36, v18);
      result = v37(v35, v18);
    }

    a2 = v42;
  }

  *a2 = v29 & 1;
  return result;
}

uint64_t sub_29E72D258@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = MEMORY[0x29EDB9BC8];
  sub_29E72DC48(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v25 - v6;
  sub_29E72DCE8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E72DE2C(0);
  v25 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  sub_29E74ED18();
  v20 = sub_29E74ED28();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  v21 = sub_29E74FFD8();
  sub_29E72DEFC(v7, &qword_2A1A7CFC0, v3);
  v28 = v21;
  sub_29E72DDC0();
  sub_29E72E45C(&qword_2A185A820, sub_29E72DDC0);
  sub_29E752928();

  v27 = 1;
  sub_29E72E45C(&qword_2A185A830, sub_29E72DCE8);
  sub_29E752908();
  (*(v10 + 8))(v13, v9);
  sub_29E72E45C(&qword_2A185A838, sub_29E72DE2C);
  v22 = v25;
  v23 = sub_29E7528E8();
  result = (*(v15 + 8))(v18, v22);
  *v26 = v23;
  return result;
}

uint64_t sub_29E72D5D0()
{
  v1 = v0[2];

  sub_29E5FECBC(v0 + 3);
  v2 = v0[8];

  sub_29E72DEFC(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin46SleepApneaNotificationTipDismissalStateManager_status, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepApneaNotificationTipDismissalStateManager()
{
  result = qword_2A1A7C9A0;
  if (!qword_2A1A7C9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E72D6BC()
{
  sub_29E72DC48(319, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_29E72D790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E72DC48(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v17 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:a1 healthDataSource:a2];
  result = [v10 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v12 = result;
    sub_29E72DF58(a3, v9, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v13 = sub_29E74FFA8();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_29E72DEFC(v9, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
      v15 = 0;
    }

    else
    {
      sub_29E74FF78();
      (*(v14 + 8))(v9, v13);
      v15 = sub_29E754198();
    }

    v16 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v12 healthDataSource:v10 currentCountryCode:v15];
    sub_29E751758();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E72D9A8()
{
  if (!qword_2A1A7BFD8)
  {
    sub_29E649310();
    sub_29E72DA94();
    sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310);
    sub_29E72E45C(&qword_2A1A7BFC0, sub_29E72DA94);
    v0 = sub_29E752668();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BFD8);
    }
  }
}

void sub_29E72DA94()
{
  if (!qword_2A1A7BFB8)
  {
    sub_29E649310();
    sub_29E754998();
    sub_29E72E45C(&qword_2A1A7BF80, sub_29E649310);
    sub_29E72E45C(&qword_2A1A7BD88, MEMORY[0x29EDB9DF8]);
    v0 = sub_29E7526A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BFB8);
    }
  }
}

void sub_29E72DBBC()
{
  if (!qword_2A1A7BF28)
  {
    sub_29E72DC48(255, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    sub_29E66A61C();
    v0 = sub_29E752838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BF28);
    }
  }
}

void sub_29E72DC48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E72DD24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E72E45C(a4, a5);
    v8 = sub_29E752638();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E72DDC0()
{
  if (!qword_2A185A818)
  {
    sub_29E66A61C();
    v0 = sub_29E752838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A818);
    }
  }
}

void sub_29E72DE68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E72E45C(a4, a5);
    v8 = sub_29E752618();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E72DEFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E72DC48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E72DF58(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E72DC48(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E72DFC4(uint64_t a1, uint64_t a2)
{
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E72E044(uint64_t a1, uint64_t a2)
{
  sub_29E72DC48(0, &qword_2A1A7CEF8, MEMORY[0x29EDC2D78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E72E100()
{
  if (!qword_2A1A7C140[0])
  {
    sub_29E751D98();
    v0 = type metadata accessor for Either();
    if (!v1)
    {
      atomic_store(v0, qword_2A1A7C140);
    }
  }
}

void sub_29E72E1B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E72E100();
    sub_29E72E45C(a4, a5);
    v8 = sub_29E752638();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E72E258()
{
  if (!qword_2A1A7BFC8)
  {
    sub_29E72E178(255);
    sub_29E72E0C4(255);
    sub_29E72E45C(&qword_2A1A7C058, sub_29E72E178);
    sub_29E72E45C(&qword_2A1A7C028, sub_29E72E0C4);
    v0 = sub_29E752668();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BFC8);
    }
  }
}

void sub_29E72E340()
{
  if (!qword_2A1A7BFE8)
  {
    sub_29E72E258();
    sub_29E72E45C(&qword_2A1A7BFD0, sub_29E72E258);
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BFE8);
    }
  }
}

uint64_t sub_29E72E3E0@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  sub_29E72E100();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_29E72E428(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_29E72E45C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E72E4A4(uint64_t a1, uint64_t a2)
{
  sub_29E72E100();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E72E508(uint64_t a1)
{
  sub_29E72E100();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E72E564(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E72E5E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_29E72E708(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_29E72E8D0(void *a1)
{
  v21 = a1;
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v6 = *(v2 + 8);
  v6(v5, v1);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v6(v5, v1);
  v7 = sub_29E754198();

  v8 = sub_29E754198();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v6(v5, v1);
  v10 = sub_29E754198();

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v10 style:1 handler:0];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v6(v5, v1);
  sub_29E72F480(v20, v23);
  v13 = swift_allocObject();
  v14 = v23[1];
  *(v13 + 16) = v23[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v23[2];
  v15 = v21;
  *(v13 + 64) = v21;
  v16 = v15;
  v17 = sub_29E754198();

  aBlock[4] = sub_29E72F4B8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E62452C;
  aBlock[3] = &unk_2A25033E0;
  v18 = _Block_copy(aBlock);

  v19 = [v11 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v9 addAction_];
  [v9 addAction_];
  [v16 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_29E72ED44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v60 = sub_29E74F6D8();
  v4 = *(*(v60 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v60);
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750698();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29E74F4A8();
  v61 = *(v66 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v66);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v59 = &v50 - v13;
  v65 = sub_29E74F488();
  v58 = *(v65 - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v65);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v64 = &v50 - v17;
  v18 = sub_29E752098();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v23 = sub_29E752088();
  v24 = sub_29E7546C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v68[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_29E6B9C90(0xD000000000000018, 0x800000029E76D150, v68);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29E6B9C90(0xD00000000000001DLL, 0x800000029E760F00, v68);
    _os_log_impl(&dword_29E5ED000, v23, v24, "[%{public}s.%{public}s]: Attempting to present sleep tracking onboarding...", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v26, -1, -1);
    MEMORY[0x29ED98410](v25, -1, -1);
  }

  (*(v19 + 8))(v22, v18);
  v27 = sub_29E74F4C8();
  v28 = *a2;
  v29 = *(a2 + 40);
  sub_29E601938((a2 + 8), *(a2 + 32));
  v30 = v28;
  sub_29E751528();
  v31 = v30;
  v51 = sub_29E74F4B8();
  v52 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v32 = *MEMORY[0x29EDBA750];
  v33 = objc_allocWithZone(MEMORY[0x29EDC6890]);
  v34 = v32;
  v53 = [v33 initWithFeatureIdentifier:v34 sleepStore:v31];

  sub_29E72F4DC();
  v35 = sub_29E754A78();
  v36 = v58;
  v37 = MEMORY[0x29EDC6A68];
  if ((v35 & 1) == 0)
  {
    v37 = MEMORY[0x29EDC6A60];
  }

  v38 = v64;
  v39 = v65;
  (*(v58 + 104))(v64, *v37, v65);
  v40 = *MEMORY[0x29EDC67D8];
  v41 = *(a2 + 40);
  sub_29E601938((a2 + 8), *(a2 + 32));
  sub_29E751538();
  v42 = sub_29E71237C();
  (*(v55 + 8))(v9, v56);
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v40 presentation:v42];

  (*(v36 + 16))(v54, v38, v39);
  v43 = v59;
  sub_29E74F498();
  v68[3] = v27;
  v68[4] = MEMORY[0x29EDC6A70];
  v68[0] = v51;
  v44 = v61;
  (*(v61 + 16))(v57, v43, v66);
  v67 = MEMORY[0x29EDCA190];
  sub_29E72F580(&qword_2A1859E38, MEMORY[0x29EDC6AD8]);
  sub_29E72F528();
  sub_29E72F580(&qword_2A1859E48, sub_29E72F528);

  v45 = v52;
  sub_29E754C58();
  v46 = sub_29E74F6E8();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  sub_29E74F6B8();
  sub_29E74F6A8();

  (*(v44 + 8))(v43, v66);
  return (*(v36 + 8))(v64, v65);
}

uint64_t sub_29E72F4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E72F4DC()
{
  result = qword_2A1857168;
  if (!qword_2A1857168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1857168);
  }

  return result;
}

void sub_29E72F528()
{
  if (!qword_2A1859E40)
  {
    sub_29E74F6D8();
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859E40);
    }
  }
}

uint64_t sub_29E72F580(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E72F638(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 1701736302;
    if (a1 == 8)
    {
      v4 = 0xD00000000000001ALL;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000016;
    }

    v5 = 0xD000000000000022;
    if (a1 != 5)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000023;
    if (a1 != 3)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 == 2)
    {
      v1 = 0xD00000000000001CLL;
    }

    v2 = 0xD00000000000001ELL;
    if (a1)
    {
      v2 = 0xD00000000000001FLL;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29E72F784(void *a1, int a2)
{
  v86 = a2;
  v3 = MEMORY[0x29EDC9E88];
  sub_29E735DA0(0, &qword_2A185A960, sub_29E735948, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.NoneCodingKeys, MEMORY[0x29EDC9E88]);
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v83 = &v58 - v6;
  sub_29E735DA0(0, &qword_2A185A968, sub_29E73599C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v3);
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v80 = &v58 - v9;
  sub_29E735DA0(0, &qword_2A185A970, sub_29E7359F0, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v3);
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v77 = &v58 - v12;
  sub_29E735DA0(0, &qword_2A185A978, sub_29E735A44, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v3);
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v74 = &v58 - v15;
  sub_29E735DA0(0, &qword_2A185A980, sub_29E735A98, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSleepApneaKnowledgeBaseArticleCodingKeys, v3);
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v71 = &v58 - v18;
  sub_29E735DA0(0, &qword_2A185A988, sub_29E735AEC, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSeedExpiryKnowledgeBaseArticleCodingKeys, v3);
  v70 = v19;
  v69 = *(v19 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v68 = &v58 - v21;
  sub_29E735DA0(0, &qword_2A185A990, sub_29E735B40, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenRegionGatedKnowledgeBaseArticleCodingKeys, v3);
  v67 = v22;
  v66 = *(v22 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v65 = &v58 - v24;
  sub_29E735DA0(0, &qword_2A185A998, sub_29E735B94, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchSleepSettingsCodingKeys, v3);
  v64 = v25;
  v63 = *(v25 - 8);
  v26 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v62 = &v58 - v27;
  sub_29E735DA0(0, &qword_2A185A9A0, sub_29E735BE8, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v3);
  v61 = v28;
  v60 = *(v28 - 8);
  v29 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v31 = &v58 - v30;
  sub_29E735DA0(0, &qword_2A185A9A8, sub_29E735C3C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v3);
  v33 = v32;
  v59 = *(v32 - 8);
  v34 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v36 = &v58 - v35;
  sub_29E735DA0(0, &qword_2A185A9B0, sub_29E735C90, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.CodingKeys, v3);
  v88 = v37;
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v41 = &v58 - v40;
  v42 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E735C90();
  v87 = v41;
  sub_29E755138();
  v43 = (v38 + 8);
  if (v86 > 4u)
  {
    if (v86 <= 6u)
    {
      if (v86 == 5)
      {
        v91[3] = 5;
        sub_29E735A98();
        v47 = v71;
        v45 = v87;
        v46 = v88;
        sub_29E754F78();
        v49 = v72;
        v48 = v73;
      }

      else
      {
        v91[4] = 6;
        sub_29E735A44();
        v47 = v74;
        v45 = v87;
        v46 = v88;
        sub_29E754F78();
        v49 = v75;
        v48 = v76;
      }
    }

    else if (v86 == 7)
    {
      v91[5] = 7;
      sub_29E7359F0();
      v47 = v77;
      v45 = v87;
      v46 = v88;
      sub_29E754F78();
      v49 = v78;
      v48 = v79;
    }

    else if (v86 == 8)
    {
      v91[6] = 8;
      sub_29E73599C();
      v47 = v80;
      v45 = v87;
      v46 = v88;
      sub_29E754F78();
      v49 = v81;
      v48 = v82;
    }

    else
    {
      v91[7] = 9;
      sub_29E735948();
      v47 = v83;
      v45 = v87;
      v46 = v88;
      sub_29E754F78();
      v49 = v84;
      v48 = v85;
    }

    (*(v49 + 8))(v47, v48);
    return (*v43)(v45, v46);
  }

  if (v86 <= 1u)
  {
    if (!v86)
    {
      v89 = 0;
      sub_29E735C3C();
      v50 = v87;
      v51 = v88;
      sub_29E754F78();
      (*(v59 + 8))(v36, v33);
      return (*v43)(v50, v51);
    }

    v90 = 1;
    sub_29E735BE8();
    v50 = v87;
    v51 = v88;
    sub_29E754F78();
    v53 = *(v60 + 8);
    v54 = v31;
    v55 = v91;
LABEL_19:
    v53(v54, *(v55 - 32));
    return (*v43)(v50, v51);
  }

  if (v86 == 2)
  {
    v91[0] = 2;
    sub_29E735B94();
    v52 = v62;
    v50 = v87;
    v51 = v88;
    sub_29E754F78();
    v53 = *(v63 + 8);
    v54 = v52;
    v55 = &v92;
    goto LABEL_19;
  }

  if (v86 == 3)
  {
    v91[1] = 3;
    sub_29E735B40();
    v44 = v65;
    v45 = v87;
    v46 = v88;
    sub_29E754F78();
    (*(v66 + 8))(v44, v67);
  }

  else
  {
    v91[2] = 4;
    sub_29E735AEC();
    v56 = v68;
    v45 = v87;
    v46 = v88;
    sub_29E754F78();
    (*(v69 + 8))(v56, v70);
  }

  return (*v43)(v45, v46);
}

uint64_t sub_29E730264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29E734894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29E730298(uint64_t a1)
{
  v2 = sub_29E735C90();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7302D4(uint64_t a1)
{
  v2 = sub_29E735C90();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E73031C(uint64_t a1)
{
  v2 = sub_29E735BE8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730358(uint64_t a1)
{
  v2 = sub_29E735BE8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730394(uint64_t a1)
{
  v2 = sub_29E735C3C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7303D0(uint64_t a1)
{
  v2 = sub_29E735C3C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E73040C(uint64_t a1)
{
  v2 = sub_29E735B94();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730448(uint64_t a1)
{
  v2 = sub_29E735B94();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730484(uint64_t a1)
{
  v2 = sub_29E735948();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7304C0(uint64_t a1)
{
  v2 = sub_29E735948();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7304FC(uint64_t a1)
{
  v2 = sub_29E735B40();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730538(uint64_t a1)
{
  v2 = sub_29E735B40();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730574(uint64_t a1)
{
  v2 = sub_29E735AEC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7305B0(uint64_t a1)
{
  v2 = sub_29E735AEC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7305EC(uint64_t a1)
{
  v2 = sub_29E735A98();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730628(uint64_t a1)
{
  v2 = sub_29E735A98();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730664(uint64_t a1)
{
  v2 = sub_29E7359F0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E7306A0(uint64_t a1)
{
  v2 = sub_29E7359F0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7306DC(uint64_t a1)
{
  v2 = sub_29E735A44();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730718(uint64_t a1)
{
  v2 = sub_29E735A44();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730754(uint64_t a1)
{
  v2 = sub_29E73599C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730790(uint64_t a1)
{
  v2 = sub_29E73599C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E7307CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E734BB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_29E730814(void *a1)
{
  v3 = v1;
  sub_29E735DA0(0, &qword_2A185A890, sub_29E734798, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E734798();
  sub_29E755138();
  v17 = *v3;
  v16 = 0;
  sub_29E734840();
  sub_29E754FB8();
  if (!v2)
  {
    v12 = *(type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0) + 20);
    v15 = 1;
    sub_29E74FFA8();
    sub_29E7343DC(&qword_2A1857B68, MEMORY[0x29EDC3A58]);
    sub_29E754F88();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29E730A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v25 = &v22 - v5;
  sub_29E735DA0(0, &qword_2A185A878, sub_29E734798, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.CodingKeys, MEMORY[0x29EDC9E80]);
  v26 = v6;
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 28);
  v16 = sub_29E74FFA8();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E734798();
  v18 = v27;
  sub_29E755128();
  if (v18)
  {
    sub_29E5FECBC(a1);
    return sub_29E7344F0(&v14[v15], &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  }

  else
  {
    v27 = v15;
    v19 = v24;
    v20 = v25;
    v29 = 0;
    sub_29E7347EC();
    sub_29E754F58();
    *v14 = v30;
    v28 = 1;
    sub_29E7343DC(&qword_2A1857B18, MEMORY[0x29EDC3A58]);
    sub_29E754F28();
    (*(v19 + 8))(v9, v26);
    sub_29E643D74(v20, &v14[v27]);
    sub_29E7345B0(v14, v23);
    sub_29E5FECBC(a1);
    return sub_29E734614(v14);
  }
}

uint64_t sub_29E730D84()
{
  if (*v0)
  {
    result = 0x527972746E756F63;
  }

  else
  {
    result = 0x6F69746341706174;
  }

  *v0;
  return result;
}

uint64_t sub_29E730DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_29E755028() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E755028();

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

uint64_t sub_29E730EBC(uint64_t a1)
{
  v2 = sub_29E734798();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E730EF8(uint64_t a1)
{
  v2 = sub_29E734798();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E730F64()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E7501C8();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752098();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v61 = &v54 - v8;
  v9 = sub_29E7515A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, &qword_2A185A860, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v54 - v16;
  v18 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v54 - v24;
  v58 = v0;
  sub_29E7518B8();
  sub_29E7343DC(&qword_2A185A868, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  sub_29E7343DC(&qword_2A18584E0, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  sub_29E751598();
  (*(v10 + 8))(v13, v9);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_29E73454C(v17, v25);
    v35 = v61;
    sub_29E752048();
    sub_29E7345B0(v25, v23);
    v36 = sub_29E752088();
    v37 = sub_29E7546C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = 136315650;
      v40 = sub_29E755178();
      v42 = sub_29E6B9C90(v40, v41, &v65);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_29E6B9C90(0x63656C6553646964, 0xEB00000000292874, &v65);
      *(v38 + 22) = 2080;
      v64 = *v23;
      v43 = sub_29E7541F8();
      v45 = v44;
      sub_29E734614(v23);
      v46 = sub_29E6B9C90(v43, v45, &v65);

      *(v38 + 24) = v46;
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%s.%{public}s] Did select cell with tap action %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);
    }

    else
    {

      sub_29E734614(v23);
    }

    (*(v62 + 8))(v35, v63);
    v47 = *v25;
    if (v47 <= 4)
    {
      if (*v25 <= 1u)
      {
        if (*v25)
        {
          v50 = MEMORY[0x29EDC1728];
        }

        else
        {
          v50 = MEMORY[0x29EDC1720];
        }

        v51 = v55;
        v52 = v56;
        v53 = v57;
        (*(v56 + 104))(v55, *v50, v57);
        sub_29E7501B8();
        (*(v52 + 8))(v51, v53);
      }

      else if (v47 == 2)
      {
        sub_29E7326E4();
      }

      else if (v47 == 3)
      {
        sub_29E73170C();
      }

      else
      {
        sub_29E731C54();
      }

      return sub_29E734614(v25);
    }

    if (*v25 <= 6u)
    {
      if (v47 == 5)
      {
        sub_29E73219C();
      }

      else
      {
        sub_29E732A30(&v25[*(v18 + 20)]);
      }

      return sub_29E734614(v25);
    }

    if (v47 == 7)
    {
      v48 = &v25[*(v18 + 20)];
      v49 = 0;
    }

    else
    {
      if (v47 != 8)
      {
        return sub_29E734614(v25);
      }

      v48 = &v25[*(v18 + 20)];
      v49 = 1;
    }

    sub_29E7333C4(v49, v48);
    return sub_29E734614(v25);
  }

  sub_29E7344F0(v17, &qword_2A185A860, type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData);
  v26 = v59;
  sub_29E752048();
  v27 = sub_29E752088();
  v28 = sub_29E7546B8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v65 = v30;
    *v29 = 136446466;
    v31 = sub_29E755178();
    v33 = sub_29E6B9C90(v31, v32, &v65);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_29E6B9C90(0x63656C6553646964, 0xEB00000000292874, &v65);
    _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s.%{public}s] Could not access action handler user data", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v30, -1, -1);
    MEMORY[0x29ED98410](v29, -1, -1);
  }

  return (*(v62 + 8))(v26, v63);
}

uint64_t sub_29E73170C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_29E752098();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &ObjectType - v11;
  v13 = sub_29E74EAF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  sub_29E74EAE8();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E7344F0(v12, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446466;
      v22 = sub_29E755178();
      v24 = sub_29E6B9C90(v22, v23, &v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29E6B9C90(0xD00000000000001ALL, 0x800000029E761100, &v33);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s.%{public}s] Unable to create region gated learn more url", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v31 + 8))(v3, v32);
  }

  else
  {
    v26 = v17;
    (*(v14 + 32))(v17, v12, v13);
    v27 = [objc_opt_self() sharedApplication];
    v28 = sub_29E74EAC8();
    sub_29E68B6DC(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E7343DC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey);
    v29 = sub_29E754068();

    [v27 openURL:v28 options:v29 completionHandler:0];

    return (*(v14 + 8))(v26, v13);
  }
}

uint64_t sub_29E731C54()
{
  ObjectType = swift_getObjectType();
  v0 = sub_29E752098();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &ObjectType - v11;
  v13 = sub_29E74EAF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  sub_29E74EAE8();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E7344F0(v12, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446466;
      v22 = sub_29E755178();
      v24 = sub_29E6B9C90(v22, v23, &v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29E6B9C90(0xD000000000000019, 0x800000029E7610B0, &v33);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s.%{public}s] Unable to create rescinded learn more url", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v31 + 8))(v3, v32);
  }

  else
  {
    v26 = v17;
    (*(v14 + 32))(v17, v12, v13);
    v27 = [objc_opt_self() sharedApplication];
    v28 = sub_29E74EAC8();
    sub_29E68B6DC(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E7343DC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey);
    v29 = sub_29E754068();

    [v27 openURL:v28 options:v29 completionHandler:0];

    return (*(v14 + 8))(v26, v13);
  }
}

uint64_t sub_29E73219C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_29E752098();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &ObjectType - v11;
  v13 = sub_29E74EAF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  sub_29E74EAE8();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E7344F0(v12, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446466;
      v22 = sub_29E755178();
      v24 = sub_29E6B9C90(v22, v23, &v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29E6B9C90(0xD000000000000019, 0x800000029E761050, &v33);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s.%{public}s] Unable to create generic learn more url", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v31 + 8))(v3, v32);
  }

  else
  {
    v26 = v17;
    (*(v14 + 32))(v17, v12, v13);
    v27 = [objc_opt_self() sharedApplication];
    v28 = sub_29E74EAC8();
    sub_29E68B6DC(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29E7343DC(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey);
    v29 = sub_29E754068();

    [v27 openURL:v28 options:v29 completionHandler:0];

    return (*(v14 + 8))(v26, v13);
  }
}

uint64_t sub_29E7326E4()
{
  swift_getObjectType();
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F7B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HKSPSleepWatchAppURL();
  if (v15)
  {
    v16 = v15;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_29E752048();
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446466;
      v22 = sub_29E755178();
      v24 = sub_29E6B9C90(v22, v23, &v26);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E761030, &v26);
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s.%{public}s] Unable to create sleep watch app url", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

void sub_29E732A30(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E750698();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v72 = &v67 - v7;
  sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v76 = &v67 - v10;
  v11 = sub_29E752098();
  v77 = *(v11 - 1);
  v78 = v11;
  v12 = v77[8];
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v67 - v16;
  v18 = sub_29E7515A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v67 - v24;
  sub_29E7518B8();
  sub_29E751578();
  v80 = *(v19 + 8);
  v81 = v18;
  v79 = v19 + 8;
  v80(v25, v18);
  sub_29E601938(v84, v85);
  v26 = sub_29E751528();
  v27 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v28 = sub_29E754198();
  v29 = [v27 initWithIdentifier:v28 healthStore:v26];

  sub_29E5FECBC(v84);
  v30 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA758] sleepStore:v29];
  sub_29E72F4DC();
  if (sub_29E754A78())
  {
    v68 = v30;
    sub_29E752048();
    v31 = sub_29E752088();
    v32 = sub_29E7546C8();
    v33 = os_log_type_enabled(v31, v32);
    v67 = v23;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v69 = v2;
      v36 = v35;
      v84[0] = v35;
      *v34 = 136446466;
      v37 = sub_29E755178();
      v39 = sub_29E6B9C90(v37, v38, v84);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E761000, v84);
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s.%{public}s]: Presenting sleep apnea onboarding", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v34, -1, -1);
    }

    (v77[1])(v17, v78);
    v40 = v29;
    sub_29E7518B8();
    sub_29E751578();
    v41 = v80;
    v42 = v81;
    v80(v25, v81);
    sub_29E601938(v84, v85);
    v43 = sub_29E751528();
    v44 = objc_allocWithZone(MEMORY[0x29EDC68B0]);
    v78 = v40;
    v77 = [v44 initWithSleepStore:v40 healthDataSource:v43];

    sub_29E5FECBC(v84);
    v45 = v76;
    sub_29E6F5CC4(v71, v76);
    v46 = v67;
    sub_29E7518B8();
    sub_29E751578();
    v41(v46, v42);
    sub_29E601938(v84, v85);
    v71 = sub_29E751528();
    sub_29E7518B8();
    sub_29E751578();
    v41(v25, v42);
    sub_29E601938(v83, v83[3]);
    v47 = v72;
    sub_29E751538();
    v49 = v73;
    v48 = v74;
    v50 = v75;
    (*(v74 + 104))(v73, *MEMORY[0x29EDC1D30], v75);
    LOBYTE(v46) = sub_29E750688();
    v51 = *(v48 + 8);
    v51(v49, v50);
    v51(v47, v50);
    sub_29E5FECBC(v83);
    if (v46)
    {
      v52 = 4;
    }

    else
    {
      v52 = 2;
    }

    v53 = type metadata accessor for SleepApneaOnboardingNavigationController();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
    sub_29E6F5CC4(v45, &v54[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord]);
    v55 = v77;
    *&v54[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v77;
    *&v54[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v71;
    v54[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = v52;
    v82.receiver = v54;
    v82.super_class = v53;
    v56 = v55;
    v57 = objc_msgSendSuper2(&v82, sel_initWithNibName_bundle_, 0, 0);
    sub_29E7344F0(v45, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    sub_29E5FECBC(v84);
    sub_29E718D68();
    sub_29E7195BC();

    [v57 setModalPresentationStyle_];
    sub_29E7518B8();
    v58 = sub_29E751588();
    v80(v25, v81);
    [v58 presentViewController:v57 animated:1 completion:0];
  }

  else
  {
    sub_29E752068();
    v59 = sub_29E752088();
    v60 = sub_29E7546C8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v2;
      v63 = v62;
      v84[0] = v62;
      *v61 = 136446466;
      v64 = sub_29E755178();
      v66 = sub_29E6B9C90(v64, v65, v84);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2082;
      *(v61 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E761000, v84);
      _os_log_impl(&dword_29E5ED000, v59, v60, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt.", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v63, -1, -1);
      MEMORY[0x29ED98410](v61, -1, -1);
    }

    (v77[1])(v15, v78);
    sub_29E7518B8();
    sub_29E733F0C(v29);

    v80(v25, v81);
  }
}

void sub_29E7333C4(int a1, void *a2)
{
  v3 = v2;
  v86 = a2;
  v84 = a1;
  ObjectType = swift_getObjectType();
  sub_29E734424();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E750428();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73447C(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v80 = &v74 - v13;
  v14 = sub_29E7515A8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v75 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v74 - v19;
  v21 = sub_29E752098();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v26 = sub_29E752088();
  v27 = sub_29E7546C8();
  v28 = os_log_type_enabled(v26, v27);
  v85 = v3;
  v77 = ObjectType;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v83 = v14;
    v30 = v29;
    v31 = swift_slowAlloc();
    v81 = v15;
    v32 = v31;
    v87[0] = v31;
    *v30 = 136446722;
    v33 = sub_29E755178();
    v35 = sub_29E6B9C90(v33, v34, v87);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_29E6B9C90(0xD000000000000038, 0x800000029E760FC0, v87);
    *(v30 + 22) = 2082;
    if (v84)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (v84)
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    v38 = sub_29E6B9C90(v36, v37, v87);

    *(v30 + 24) = v38;
    _os_log_impl(&dword_29E5ED000, v26, v27, "[%{public}s.%{public}s]: Presenting sleep apnea notifications settings shouldPush %{public}s", v30, 0x20u);
    swift_arrayDestroy();
    v39 = v32;
    v15 = v81;
    MEMORY[0x29ED98410](v39, -1, -1);
    v40 = v30;
    v14 = v83;
    MEMORY[0x29ED98410](v40, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  sub_29E7518B8();
  sub_29E751578();
  v41 = v15[1];
  v41(v20, v14);
  sub_29E601938(v87, v88);
  v42 = sub_29E751528();
  v43 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v44 = sub_29E754198();
  v45 = [v43 initWithIdentifier:v44 healthStore:v42];

  sub_29E5FECBC(v87);
  v46 = v45;
  sub_29E7518B8();
  sub_29E751578();
  v47 = v14;
  v83 = v41;
  v41(v20, v14);
  sub_29E601938(v87, v88);
  v48 = sub_29E751528();
  v49 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v46 healthDataSource:v48];
  v81 = v46;

  sub_29E5FECBC(v87);
  v50 = [v49 featureAvailabilityProvidingForFeatureIdentifier_];
  if (v50)
  {
    v51 = v50;
    v52 = v80;
    sub_29E6F5CC4(v86, v80);
    v53 = sub_29E74FFA8();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 48))(v52, 1, v53);
    v56 = v84;
    v86 = v49;
    if (v55 == 1)
    {
      sub_29E7344F0(v52, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
      v57 = v49;
      v58 = 0;
    }

    else
    {
      sub_29E74FF78();
      (*(v54 + 8))(v52, v53);
      v59 = v86;
      v58 = sub_29E754198();
      v49 = v86;
    }

    v60 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v51 healthDataSource:v49 currentCountryCode:v58];
    sub_29E751758();

    v61 = v60;
    sub_29E7518B8();
    v62 = v82;
    sub_29E750238();
    v63 = v83;
    v83(v20, v47);
    v64 = objc_allocWithZone(type metadata accessor for SleepApneaHealthChecklistSettingsViewController(0));
    v65 = sub_29E688FFC(v61, (v56 & 1) == 0, v62);

    if (v56)
    {
      v66 = v75;
      sub_29E7518B8();
      v67 = sub_29E751588();
      v63(v66, v47);
      v68 = [v67 navigationController];

      if (!v68)
      {
        v73 = v86;
        goto LABEL_18;
      }

      [v68 pushViewController:v65 animated:1];
    }

    else
    {
      v69 = [v61 featureAvailabilityProviding];
      swift_getObjectType();
      v70 = v76;
      sub_29E754898();
      *(swift_allocObject() + 16) = v77;
      sub_29E754A88();
      sub_29E751758();

      (*(v78 + 8))(v70, v79);
      v71 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
      sub_29E7518B8();
      v72 = sub_29E751588();
      v83(v20, v47);
      [v72 presentViewController:v71 animated:1 completion:0];

      v68 = v65;
      v65 = v71;
    }

    v73 = v86;

LABEL_18:
    return;
  }

  __break(1u);
}

uint64_t sub_29E733CB0(char a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E752048();
    v10 = a2;
    v11 = sub_29E752088();
    v12 = sub_29E7546A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446722;
      v15 = sub_29E755178();
      v17 = sub_29E6B9C90(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_29E6B9C90(0xD000000000000038, 0x800000029E760FC0, &v23);
      *(v13 + 22) = 2082;
      v22 = a2;
      v18 = a2;
      sub_29E73447C(0, &qword_2A1858A60, sub_29E66A61C);
      v19 = sub_29E7541F8();
      v21 = sub_29E6B9C90(v19, v20, &v23);

      *(v13 + 24) = v21;
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s.%{public}s]: Unable to enable sleep apnea notifications: %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v14, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_29E733F0C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E7515A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v12;
    v15 = v14;
    v28 = swift_slowAlloc();
    v30[0] = v28;
    *v15 = 136446466;
    v16 = sub_29E755178();
    ObjectType = v7;
    v18 = sub_29E6B9C90(v16, v17, v30);
    v27 = v8;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E760F70, v30);
    v20 = v26;
    _os_log_impl(&dword_29E5ED000, v26, v13, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt to encourage onboarding.", v15, 0x16u);
    v21 = v28;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);

    (*(v27 + 8))(v11, ObjectType);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_29E7518B8();
  sub_29E751578();
  v22 = *(v3 + 8);
  v22(v6, v2);
  v30[0] = a1;
  v23 = a1;
  sub_29E7518B8();
  v24 = sub_29E751588();
  v22(v6, v2);
  sub_29E72E8D0(v24);

  return sub_29E643FF4(v30);
}

uint64_t sub_29E734250(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29E734350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaHealthChecklistActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E7343DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E734424()
{
  if (!qword_2A185A858)
  {
    v0 = sub_29E7548A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A858);
    }
  }
}

void sub_29E73447C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E7344F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E73447C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E73454C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E7345B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E734614(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaHealthChecklistActionHandlerUserData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E7346A8()
{
  sub_29E73447C(319, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E734744()
{
  result = qword_2A185A870;
  if (!qword_2A185A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A870);
  }

  return result;
}

unint64_t sub_29E734798()
{
  result = qword_2A185A880;
  if (!qword_2A185A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A880);
  }

  return result;
}

unint64_t sub_29E7347EC()
{
  result = qword_2A185A888;
  if (!qword_2A185A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A888);
  }

  return result;
}

unint64_t sub_29E734840()
{
  result = qword_2A185A898;
  if (!qword_2A185A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A898);
  }

  return result;
}

uint64_t sub_29E734894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x800000029E761150 == a2;
  if (v4 || (sub_29E755028() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000029E761170 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000029E761190 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x800000029E7611B0 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x800000029E7611E0 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000029E761210 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029E761240 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029E761260 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029E761280 == a2 || (sub_29E755028() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_29E755028();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_29E734BB4(uint64_t *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29E735DA0(0, &qword_2A185A8A0, sub_29E735948, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.NoneCodingKeys, MEMORY[0x29EDC9E80]);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v104 = &v77[-v5];
  sub_29E735DA0(0, &qword_2A185A8B0, sub_29E73599C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v2);
  v97 = *(v6 - 8);
  v98 = v6;
  v7 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v109 = &v77[-v8];
  sub_29E735DA0(0, &qword_2A185A8C0, sub_29E7359F0, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v2);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v108 = &v77[-v11];
  sub_29E735DA0(0, &qword_2A185A8D0, sub_29E735A44, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v2);
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v103 = &v77[-v14];
  sub_29E735DA0(0, &qword_2A185A8E0, sub_29E735A98, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSleepApneaKnowledgeBaseArticleCodingKeys, v2);
  v92 = v15;
  v91 = *(v15 - 8);
  v16 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v102 = &v77[-v17];
  sub_29E735DA0(0, &qword_2A185A8F0, sub_29E735AEC, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenSeedExpiryKnowledgeBaseArticleCodingKeys, v2);
  v90 = v18;
  v89 = *(v18 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v101 = &v77[-v20];
  sub_29E735DA0(0, &qword_2A185A900, sub_29E735B40, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.OpenRegionGatedKnowledgeBaseArticleCodingKeys, v2);
  v87 = v21;
  v88 = *(v21 - 8);
  v22 = *(v88 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v107 = &v77[-v23];
  sub_29E735DA0(0, &qword_2A185A910, sub_29E735B94, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchSleepSettingsCodingKeys, v2);
  v85 = v24;
  v86 = *(v24 - 8);
  v25 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v106 = &v77[-v26];
  sub_29E735DA0(0, &qword_2A185A920, sub_29E735BE8, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPasscodeSettingsCodingKeys, v2);
  v83 = v27;
  v84 = *(v27 - 8);
  v28 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v105 = &v77[-v29];
  sub_29E735DA0(0, &qword_2A185A930, sub_29E735C3C, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.DeepLinkToWatchPrivacySettingsCodingKeys, v2);
  v31 = v30;
  v82 = *(v30 - 8);
  v32 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v77[-v33];
  sub_29E735DA0(0, &qword_2A185A940, sub_29E735C90, &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction.CodingKeys, v2);
  v36 = v35;
  v37 = *(v35 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v35);
  v40 = a1[3];
  v39 = a1[4];
  v111 = a1;
  v41 = a1;
  v43 = &v77[-v42];
  sub_29E601938(v41, v40);
  sub_29E735C90();
  v44 = v110;
  sub_29E755128();
  if (v44)
  {
    goto LABEL_13;
  }

  v80 = v34;
  v79 = v31;
  v45 = v105;
  v46 = v106;
  v47 = v43;
  v48 = v107;
  v49 = v108;
  v81 = 0;
  v50 = v109;
  v110 = v47;
  v51 = sub_29E754F68();
  v52 = v36;
  if (*(v51 + 16) != 1 || (v53 = *(v51 + 32), v53 == 10))
  {
    v57 = sub_29E754DC8();
    swift_allocError();
    v59 = v58;
    sub_29E735CE4();
    v60 = v110;
    v62 = *(v61 + 48);
    *v59 = &type metadata for SleepApneaHealthChecklistActionHandlerUserData.TapAction;
    sub_29E754F18();
    sub_29E754DA8();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x29EDC9DB8], v57);
    swift_willThrow();
    goto LABEL_11;
  }

  v78 = *(v51 + 32);
  if (v53 > 4)
  {
    if (v53 <= 6)
    {
      if (v53 == 5)
      {
        v117 = 5;
        sub_29E735A98();
        v70 = v102;
        v60 = v110;
        v71 = v81;
        sub_29E754F08();
        if (v71)
        {
          goto LABEL_11;
        }

        (*(v91 + 8))(v70, v92);
        goto LABEL_42;
      }

      v118 = 6;
      sub_29E735A44();
      v64 = v103;
      v60 = v110;
      v76 = v81;
      sub_29E754F08();
      if (v76)
      {
        goto LABEL_11;
      }

      v67 = v93;
      v66 = v94;
    }

    else
    {
      if (v53 == 7)
      {
        v119 = 7;
        sub_29E7359F0();
        v60 = v110;
        v72 = v81;
        sub_29E754F08();
        if (v72)
        {
          goto LABEL_11;
        }

        (*(v95 + 8))(v49, v96);
        goto LABEL_42;
      }

      if (v53 != 8)
      {
        v121 = 9;
        sub_29E735948();
        v74 = v104;
        v60 = v110;
        v75 = v81;
        sub_29E754F08();
        if (v75)
        {
          goto LABEL_11;
        }

        (*(v99 + 8))(v74, v100);
        goto LABEL_42;
      }

      v120 = 8;
      sub_29E73599C();
      v64 = v50;
      v60 = v110;
      v65 = v81;
      sub_29E754F08();
      if (v65)
      {
        goto LABEL_11;
      }

      v67 = v97;
      v66 = v98;
    }

    (*(v67 + 8))(v64, v66);
    goto LABEL_42;
  }

  if (v53 <= 1)
  {
    v60 = v110;
    v68 = v81;
    if (v53)
    {
      v113 = 1;
      sub_29E735BE8();
      sub_29E754F08();
      if (v68)
      {
        goto LABEL_11;
      }

      (*(v84 + 8))(v45, v83);
    }

    else
    {
      v112 = 0;
      sub_29E735C3C();
      v69 = v80;
      sub_29E754F08();
      if (v68)
      {
        goto LABEL_11;
      }

      (*(v82 + 8))(v69, v79);
    }

LABEL_42:
    (*(v37 + 8))(v60, v52);
    goto LABEL_43;
  }

  v54 = v36;
  v55 = v81;
  if (v53 != 2)
  {
    if (v53 == 3)
    {
      v115 = 3;
      sub_29E735B40();
      v56 = v110;
      sub_29E754F08();
      if (!v55)
      {
        (*(v88 + 8))(v48, v87);
LABEL_39:
        (*(v37 + 8))(v56, v54);
        goto LABEL_43;
      }
    }

    else
    {
      v116 = 4;
      sub_29E735AEC();
      v73 = v101;
      v56 = v110;
      sub_29E754F08();
      if (!v55)
      {
        (*(v89 + 8))(v73, v90);
        goto LABEL_39;
      }
    }

    (*(v37 + 8))(v56, v54);
    goto LABEL_12;
  }

  v114 = 2;
  sub_29E735B94();
  v60 = v110;
  sub_29E754F08();
  if (v55)
  {
LABEL_11:
    (*(v37 + 8))(v60, v52);
LABEL_12:
    sub_29E751758();
LABEL_13:
    sub_29E5FECBC(v111);
    return 0;
  }

  (*(v86 + 8))(v46, v85);
  (*(v37 + 8))(v60, v52);
LABEL_43:
  sub_29E751758();
  sub_29E5FECBC(v111);
  return v78;
}

unint64_t sub_29E735948()
{
  result = qword_2A185A8A8;
  if (!qword_2A185A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8A8);
  }

  return result;
}

unint64_t sub_29E73599C()
{
  result = qword_2A185A8B8;
  if (!qword_2A185A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8B8);
  }

  return result;
}

unint64_t sub_29E7359F0()
{
  result = qword_2A185A8C8;
  if (!qword_2A185A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8C8);
  }

  return result;
}

unint64_t sub_29E735A44()
{
  result = qword_2A185A8D8;
  if (!qword_2A185A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8D8);
  }

  return result;
}

unint64_t sub_29E735A98()
{
  result = qword_2A185A8E8;
  if (!qword_2A185A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8E8);
  }

  return result;
}

unint64_t sub_29E735AEC()
{
  result = qword_2A185A8F8;
  if (!qword_2A185A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8F8);
  }

  return result;
}

unint64_t sub_29E735B40()
{
  result = qword_2A185A908;
  if (!qword_2A185A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A908);
  }

  return result;
}

unint64_t sub_29E735B94()
{
  result = qword_2A185A918;
  if (!qword_2A185A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A918);
  }

  return result;
}

unint64_t sub_29E735BE8()
{
  result = qword_2A185A928;
  if (!qword_2A185A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A928);
  }

  return result;
}

unint64_t sub_29E735C3C()
{
  result = qword_2A185A938;
  if (!qword_2A185A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A938);
  }

  return result;
}

unint64_t sub_29E735C90()
{
  result = qword_2A185A948;
  if (!qword_2A185A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A948);
  }

  return result;
}

void sub_29E735CE4()
{
  if (!qword_2A185A950)
  {
    sub_29E735D54();
    sub_29E754DB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185A950);
    }
  }
}

unint64_t sub_29E735D54()
{
  result = qword_2A185A958;
  if (!qword_2A185A958)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A185A958);
  }

  return result;
}

void sub_29E735DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E735E08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_29E735E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29E73600C()
{
  result = qword_2A185A9B8;
  if (!qword_2A185A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9B8);
  }

  return result;
}

unint64_t sub_29E736064()
{
  result = qword_2A185A9C0;
  if (!qword_2A185A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9C0);
  }

  return result;
}

unint64_t sub_29E7360BC()
{
  result = qword_2A185A9C8;
  if (!qword_2A185A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9C8);
  }

  return result;
}

unint64_t sub_29E736114()
{
  result = qword_2A185A9D0;
  if (!qword_2A185A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9D0);
  }

  return result;
}

unint64_t sub_29E73616C()
{
  result = qword_2A185A9D8;
  if (!qword_2A185A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9D8);
  }

  return result;
}

unint64_t sub_29E7361C4()
{
  result = qword_2A185A9E0;
  if (!qword_2A185A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9E0);
  }

  return result;
}

unint64_t sub_29E73621C()
{
  result = qword_2A185A9E8;
  if (!qword_2A185A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9E8);
  }

  return result;
}

unint64_t sub_29E736274()
{
  result = qword_2A185A9F0;
  if (!qword_2A185A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9F0);
  }

  return result;
}

unint64_t sub_29E7362CC()
{
  result = qword_2A185A9F8;
  if (!qword_2A185A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9F8);
  }

  return result;
}

unint64_t sub_29E736324()
{
  result = qword_2A185AA00;
  if (!qword_2A185AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA00);
  }

  return result;
}

unint64_t sub_29E73637C()
{
  result = qword_2A185AA08;
  if (!qword_2A185AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA08);
  }

  return result;
}

unint64_t sub_29E7363D4()
{
  result = qword_2A185AA10;
  if (!qword_2A185AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA10);
  }

  return result;
}

unint64_t sub_29E73642C()
{
  result = qword_2A185AA18;
  if (!qword_2A185AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA18);
  }

  return result;
}

unint64_t sub_29E736484()
{
  result = qword_2A185AA20;
  if (!qword_2A185AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA20);
  }

  return result;
}

unint64_t sub_29E7364DC()
{
  result = qword_2A185AA28;
  if (!qword_2A185AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA28);
  }

  return result;
}

unint64_t sub_29E736534()
{
  result = qword_2A185AA30;
  if (!qword_2A185AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA30);
  }

  return result;
}

unint64_t sub_29E73658C()
{
  result = qword_2A185AA38;
  if (!qword_2A185AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA38);
  }

  return result;
}

unint64_t sub_29E7365E4()
{
  result = qword_2A185AA40;
  if (!qword_2A185AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA40);
  }

  return result;
}

unint64_t sub_29E73663C()
{
  result = qword_2A185AA48;
  if (!qword_2A185AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA48);
  }

  return result;
}

unint64_t sub_29E736694()
{
  result = qword_2A185AA50;
  if (!qword_2A185AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA50);
  }

  return result;
}

unint64_t sub_29E7366EC()
{
  result = qword_2A185AA58;
  if (!qword_2A185AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA58);
  }

  return result;
}

unint64_t sub_29E736744()
{
  result = qword_2A185AA60;
  if (!qword_2A185AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA60);
  }

  return result;
}

unint64_t sub_29E73679C()
{
  result = qword_2A185AA68;
  if (!qword_2A185AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA68);
  }

  return result;
}

unint64_t sub_29E7367F4()
{
  result = qword_2A185AA70;
  if (!qword_2A185AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA70);
  }

  return result;
}

unint64_t sub_29E73684C()
{
  result = qword_2A185AA78;
  if (!qword_2A185AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA78);
  }

  return result;
}

unint64_t sub_29E7368A4()
{
  result = qword_2A185AA80;
  if (!qword_2A185AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA80);
  }

  return result;
}

uint64_t type metadata accessor for BreathingDisturbancesHighlightDateModel()
{
  result = qword_2A1A7C288;
  if (!qword_2A1A7C288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E736980()
{
  sub_29E74ED28();
  if (v0 <= 0x3F)
  {
    sub_29E74E838();
    if (v1 <= 0x3F)
    {
      sub_29E736A1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E736A1C()
{
  if (!qword_2A1A7BD70)
  {
    sub_29E609B5C(255, &qword_2A1A7BD78, 0x29EDBAE28);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BD70);
    }
  }
}

uint64_t sub_29E736A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v126 = a2;
  v124 = a1;
  v4 = sub_29E752098();
  v109 = *(v4 - 8);
  v110 = v4;
  v5 = *(v109 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v108 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E7377B0(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v101 = v96 - v10;
  sub_29E7377B0(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], v7);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v100 = v96 - v13;
  v104 = sub_29E74E8C8();
  v103 = *(v104 - 8);
  v14 = *(v103 + 64);
  MEMORY[0x2A1C7C4A8](v104);
  v102 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_29E74EE68();
  v125 = *(v123 - 8);
  v16 = *(v125 + 64);
  MEMORY[0x2A1C7C4A8](v123);
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7377B0(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v7);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v106 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = v96 - v23;
  v25 = sub_29E74EE78();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E74ED28();
  v111 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x2A1C7C4A8](v30);
  v116 = v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v107 = v96 - v36;
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v122 = v96 - v38;
  MEMORY[0x2A1C7C4A8](v37);
  v40 = v96 - v39;
  v41 = sub_29E754048();
  v118 = *(v41 - 8);
  v119 = v41;
  v42 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v44 = v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for BreathingDisturbancesHighlightDateModel();
  v99 = *(v114 + 28);
  *&a3[v99] = 0;
  v112 = *(v31 + 16);
  v113 = v31 + 16;
  v112(v40, v124, v30);
  v120 = v26;
  v121 = v25;
  (*(v26 + 16))(v29, v126, v25);
  v115 = v40;
  sub_29E754008();
  v45 = objc_opt_self();
  v117 = v44;
  v46 = sub_29E753FF8();
  v47 = sub_29E74EE08();
  v48 = [v45 hk:v46 sleepDayEndForMorningIndex:v47 calendar:?];

  v49 = a3;
  sub_29E74ECD8();

  v50 = *MEMORY[0x29EDB9CB8];
  v51 = v125;
  v52 = v123;
  v105 = *(v125 + 104);
  v105(v18, v50, v123);
  v53 = v49;
  sub_29E74EE48();
  v54 = v31;
  v55 = *(v51 + 8);
  v125 = v51 + 8;
  v55(v18, v52);
  v56 = *(v54 + 48);
  v57 = v111;
  if ((v56)(v24, 1) == 1)
  {
    v58 = v126;
    v59 = v24;
    v60 = v54;
    v61 = v53;
  }

  else
  {
    v97 = v53;
    v98 = v54;
    v62 = *(v54 + 32);
    v96[1] = v54 + 32;
    v96[0] = v62;
    v62(v122, v24, v57);
    v63 = v123;
    v105(v18, v50, v123);
    v64 = v97;
    v59 = v106;
    sub_29E74EE48();
    v55(v18, v63);
    if (v56(v59, 1, v57) != 1)
    {
      v74 = v107;
      (v96[0])(v107, v59, v57);
      v75 = v114;
      v76 = &v64[*(v114 + 20)];
      v77 = v64;
      v78 = v112;
      v112(v76, v122, v57);
      v78(v115, v74, v57);
      v78(v116, v77, v57);
      v79 = &v77[*(v75 + 24)];
      sub_29E74E808();
      sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
      v80 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
      sub_29E609B5C(0, &qword_2A1A7BDC0, 0x29EDBA0A8);
      sub_29E7377B0(0, &qword_2A1A7D3D8, sub_29E617E04, MEMORY[0x29EDC9E90]);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_29E762F40;
      v82 = sub_29E74EC98();
      v83 = sub_29E609B5C(0, &unk_2A1A7BD58, 0x29EDB8DB0);
      *(v81 + 56) = v83;
      v84 = sub_29E737814();
      *(v81 + 64) = v84;
      *(v81 + 32) = v82;
      v85 = sub_29E74EC98();
      *(v81 + 96) = v83;
      *(v81 + 104) = v84;
      *(v81 + 72) = v85;
      v86 = sub_29E7545B8();
      v88 = v120;
      v87 = v121;
      (*(v120 + 56))(v100, 1, 1, v121);
      v89 = sub_29E74EE88();
      (*(*(v89 - 8) + 56))(v101, 1, 1, v89);
      v90 = v102;
      sub_29E74E8B8();
      v91 = objc_allocWithZone(MEMORY[0x29EDBAE28]);
      v92 = sub_29E74EC98();
      v93 = sub_29E74E898();
      v94 = [v91 initWithSampleType:v80 samplePredicate:v86 options:2 anchorDate:v92 intervalComponents:v93];

      (*(v88 + 8))(v126, v87);
      v95 = *(v98 + 8);
      v95(v124, v57);
      (*(v103 + 8))(v90, v104);
      v95(v107, v57);
      v95(v122, v57);
      result = (*(v118 + 8))(v117, v119);
      *&v77[v99] = v94;
      return result;
    }

    v58 = v126;
    v60 = v98;
    (*(v98 + 8))(v122, v57);
    v61 = v64;
  }

  sub_29E617214(v59);
  v65 = v108;
  sub_29E752048();
  v66 = sub_29E752088();
  v67 = sub_29E7546B8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v127 = v69;
    *v68 = 136446210;
    *(v68 + 4) = sub_29E6B9C90(0xD000000000000027, 0x800000029E76DDC0, &v127);
    _os_log_impl(&dword_29E5ED000, v66, v67, "[%{public}s] Unable to calculate query start date and highlight date interval start via the gregorian calendar. This will result in no highlight, as no samples will be returned from the query using the same start and end date.", v68, 0xCu);
    sub_29E5FECBC(v69);
    MEMORY[0x29ED98410](v69, -1, -1);
    MEMORY[0x29ED98410](v68, -1, -1);
  }

  (*(v109 + 8))(v65, v110);
  v70 = v114;
  v71 = v112;
  v112(&v61[*(v114 + 20)], v61, v57);
  v71(v115, v61, v57);
  v71(v116, v61, v57);
  v72 = &v61[*(v70 + 24)];
  sub_29E74E808();
  (*(v120 + 8))(v58, v121);
  (*(v60 + 8))(v124, v57);
  return (*(v118 + 8))(v117, v119);
}

void sub_29E7377B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E737814()
{
  result = qword_2A1A7BD50;
  if (!qword_2A1A7BD50)
  {
    sub_29E609B5C(255, &unk_2A1A7BD58, 0x29EDB8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BD50);
  }

  return result;
}

uint64_t type metadata accessor for SleepOptionsHostingController()
{
  result = qword_2A185AA88;
  if (!qword_2A185AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29E737908(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for SleepOptionsHostingController();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E7379EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOptionsHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E737A24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = objc_allocWithZone(type metadata accessor for SleepOptionsHostingController());
  return sub_29E753038();
}

void *sub_29E737A78(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = objc_allocWithZone(type metadata accessor for SleepOptionsHostingController());
  sub_29E737C28(v2, v3, v4);
  v6 = sub_29E753028();
  v7 = v6;
  sub_29E737C38(v2, v3, v4);
  if (v6)
  {
  }

  return v6;
}

void *sub_29E737B1C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = objc_allocWithZone(type metadata accessor for SleepOptionsHostingController());
  v3 = a1;
  v4 = sub_29E753038();
  v5 = [v4 navigationItem];
  v6 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle];
  v7 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle + 8];

  v8 = sub_29E754198();

  [v5 setTitle_];

  return v4;
}

uint64_t sub_29E737C28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2A1C710E0]();
  }

  else
  {
  }
}

uint64_t sub_29E737C38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2A1C71028]();
  }

  else
  {
  }
}

uint64_t type metadata accessor for SleepApneaEventSharedListDataSource()
{
  result = qword_2A185AAA8;
  if (!qword_2A185AAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E737CEC(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_2A185AA98) = a1;
  sub_29E602E20(a2, v3 + qword_2A185AAA0);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v11 = a1;
  sub_29E754D78();

  strcpy(v18, "MutableArray<");
  HIWORD(v18[1]) = -4864;
  sub_29E74ED78();
  v12 = sub_29E74ED48();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x29ED96C20](v12, v14);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v15 = sub_29E750D08();
  v16 = swift_allocObject();
  swift_weakInit();

  sub_29E73858C(v11, a2, sub_29E739A94, v16);

  sub_29E5FECBC(a2);

  return v15;
}

uint64_t sub_29E737F08(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E737F68(a1);
  }

  return result;
}

uint64_t sub_29E737F68(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v5;
  v34 = v4;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_17:
    sub_29E739A9C(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29E762F30;
    if (qword_2A1A7D6F0 == -1)
    {
LABEL_18:
      sub_29E74F8A8();
      sub_29E74F7C8();
      (*(v9 + 8))(v12, v8);
      *(v5 + 56) = sub_29E751968();
      *(v5 + 64) = sub_29E739C1C(&qword_2A185A270, MEMORY[0x29EDC2A68]);
      sub_29E5FEBF4((v5 + 32));
      sub_29E751958();
      goto LABEL_19;
    }

LABEL_21:
    swift_once();
    goto LABEL_18;
  }

  if (!sub_29E754C98())
  {
    goto LABEL_17;
  }

  v13 = sub_29E754C98();
  if (!v13)
  {
    v5 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

LABEL_3:
  v39 = MEMORY[0x29EDCA190];
  v12 = &v39;
  sub_29E6DBD4C(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v32 = v2;
  v5 = v39;
  sub_29E7544C8();
  v14 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x29ED976A0](v14, a1);
    }

    else
    {
      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    sub_29E7544B8();
    sub_29E754468();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v37 = sub_29E750EE8();
    v38 = sub_29E739C1C(&qword_2A1858328, MEMORY[0x29EDC23F8]);
    v17 = sub_29E5FEBF4(v36);
    sub_29E683144(v16, v17);

    v39 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_29E6DBD4C((v18 > 1), v19 + 1, 1);
    }

    ++v14;
    v20 = v37;
    v21 = v38;
    v22 = sub_29E613218(v36, v37);
    v23 = *(*(v20 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v22);
    v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25);
    sub_29E6CE380(v19, v25, &v39, v20, v21);
    sub_29E5FECBC(v36);
    v5 = v39;
  }

  while (v13 != v14);
LABEL_19:
  v27 = v35;
  sub_29E739A9C(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v28 = *(sub_29E750CA8() - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC108(v5);

  sub_29E74ED78();
  sub_29E74ED48();
  (*(v33 + 8))(v27, v34);
  sub_29E750C98();
  sub_29E750D18();
}

void sub_29E73858C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = *v4;
  v31 = a3;
  sub_29E739A9C(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v29 - v9;
  sub_29E750088();
  sub_29E739A9C(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v11 = sub_29E74FB98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v29 = xmmword_29E762F30;
  *(v15 + 16) = xmmword_29E762F30;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x29EDC3710], v11);
  sub_29E67905C(0, &qword_2A1A7BCE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E764160;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(v16 + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v17 = sub_29E74E838();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_29E67905C(0, &qword_2A1858820);
  v18 = swift_allocObject();
  *(v18 + 16) = v29;
  *(v18 + 32) = sub_29E754638();
  v19 = MEMORY[0x29ED92970](v15, v16, v10, v18);

  sub_29E739B00(v10);
  v20 = v19;
  v21 = sub_29E750068();

  v22 = a2[4];
  sub_29E601938(a2, a2[3]);
  v23 = sub_29E74FB58();
  sub_29E602E20(a2, v33);
  v24 = swift_allocObject();
  sub_29E5FAEE4(v33, (v24 + 2));
  v25 = v30;
  v26 = v31;
  v24[7] = v21;
  v24[8] = v26;
  v24[9] = a4;
  v24[10] = v25;
  aBlock[4] = sub_29E739B8C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2503818;
  v27 = _Block_copy(aBlock);
  v28 = v21;

  [v23 performBlock_];
  _Block_release(v27);
}

void sub_29E7389A8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v113 = a3;
  v114 = a5;
  v112 = a4;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v115 = v6;
  v116 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v106 - v13;
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v106 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v106 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = &v106 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v106 - v24;
  v26 = a1[4];
  sub_29E601938(a1, a1[3]);
  v27 = sub_29E74FB58();
  sub_29E750088();
  v35 = sub_29E7549F8();
  v109 = v17;
  v110 = v14;
  v107 = v23;
  v108 = v20;
  v36 = v113;
  v106 = v25;

  if (!(v35 >> 62))
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_49:

    sub_29E752048();
    v28 = sub_29E752088();
    v29 = sub_29E7546B8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v118[0] = v31;
      *v30 = 136446210;
      v32 = sub_29E755178();
      v34 = sub_29E6B9C90(v32, v33, v118);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_29E5ED000, v28, v29, "%{public}s] Missing feed item for sleep apnea event.", v30, 0xCu);
      sub_29E5FECBC(v31);
      MEMORY[0x29ED98410](v31, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    goto LABEL_5;
  }

  if (!sub_29E754C98())
  {
    goto LABEL_49;
  }

LABEL_9:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x29ED976A0](0, v35);
  }

  else
  {
    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v37 = *(v35 + 32);
  }

  v111 = v37;
  v38 = [v37 userData];
  if (v38)
  {
    v39 = v38;
    v40 = sub_29E74EB18();
    v42 = v41;

    v43 = sub_29E74EB08();
    sub_29E643D20(v40, v42);
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v44)
  {

    v57 = v110;
    sub_29E752048();
    v58 = sub_29E752088();
    v59 = sub_29E7546B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v118[0] = v61;
      *v60 = 136446210;
      v62 = sub_29E755178();
      v64 = sub_29E6B9C90(v62, v63, v118);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_29E5ED000, v58, v59, "%{public}s] Unable to decode chart feed item data", v60, 0xCu);
      sub_29E5FECBC(v61);
      MEMORY[0x29ED98410](v61, -1, -1);
      MEMORY[0x29ED98410](v60, -1, -1);
    }

    (*(v116 + 8))(v57, v115);
    return;
  }

  v45 = [v44 chartModel];
  if (!v45)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v46 = v45;
  v47 = [v45 hasSixMonthData];

  if (v47)
  {
    v48 = [v44 chartModel];
    if (v48)
    {
      v49 = v48;

      v50 = [v49 sixMonthData];

      if (v50)
      {
        if ([v50 type] == 11)
        {
          v51 = [v50 queryDataObject];
          if (v51)
          {
            v52 = v51;
            v53 = sub_29E74EB18();
            v55 = v54;

            v56 = sub_29E74EB08();
            sub_29E643D20(v53, v55);
          }

          else
          {
            v56 = 0;
          }

          v88 = [objc_allocWithZone(MEMORY[0x29EDC4500]) initWithData_];

          if (v88)
          {
            v89 = [v88 samples];
            if (v89)
            {
              v90 = v89;
              v118[0] = 0;
              sub_29E609B5C(0, &qword_2A185AAC0, 0x29EDC4508);
              sub_29E7543E8();

              v91 = v111;
              if (v118[0])
              {
                swift_getKeyPath();
                sub_29E739BB4();
                sub_29E739C1C(&qword_2A185AAD0, sub_29E739BB4);
                v92 = sub_29E7543A8();
              }

              else
              {
                v92 = MEMORY[0x29EDCA190];
              }
            }

            else
            {
              v92 = MEMORY[0x29EDCA190];
              v91 = v111;
            }

            v36(v92);
          }

          else
          {
            v93 = v106;
            sub_29E752048();
            v94 = v50;
            v95 = sub_29E752088();
            v96 = sub_29E7546B8();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v118[0] = v98;
              *v97 = 136446466;
              v99 = sub_29E755178();
              v101 = sub_29E6B9C90(v99, v100, v118);

              *(v97 + 4) = v101;
              *(v97 + 12) = 2080;
              v117 = v94;
              sub_29E609B5C(0, &qword_2A185AAB8, 0x29EDC4468);
              v102 = v94;
              v103 = sub_29E754208();
              v105 = sub_29E6B9C90(v103, v104, v118);

              *(v97 + 14) = v105;
              _os_log_impl(&dword_29E5ED000, v95, v96, "%{public}s] Could not decode query data: %s", v97, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED98410](v98, -1, -1);
              MEMORY[0x29ED98410](v97, -1, -1);
            }

            else
            {
            }

            (*(v116 + 8))(v93, v115);
          }
        }

        else
        {
          v80 = v107;
          sub_29E752048();
          v81 = sub_29E752088();
          v82 = sub_29E7546B8();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v118[0] = v84;
            *v83 = 136446210;
            v85 = sub_29E755178();
            v87 = sub_29E6B9C90(v85, v86, v118);

            *(v83 + 4) = v87;
            _os_log_impl(&dword_29E5ED000, v81, v82, "%{public}s] Got a chart model with a non-notification type", v83, 0xCu);
            sub_29E5FECBC(v84);
            MEMORY[0x29ED98410](v84, -1, -1);
            MEMORY[0x29ED98410](v83, -1, -1);
          }

          else
          {
          }

          (*(v116 + 8))(v80, v115);
        }

        return;
      }

      v11 = v108;
      sub_29E752048();
      v73 = sub_29E752088();
      v74 = sub_29E7546B8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v118[0] = v76;
        *v75 = 136446210;
        v77 = sub_29E755178();
        v79 = sub_29E6B9C90(v77, v78, v118);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_29E5ED000, v73, v74, "%{public}s] Unable to decode sharable charting model", v75, 0xCu);
        sub_29E5FECBC(v76);
        MEMORY[0x29ED98410](v76, -1, -1);
        MEMORY[0x29ED98410](v75, -1, -1);
      }

LABEL_5:
      (*(v116 + 8))(v11, v115);
      return;
    }

LABEL_53:
    __break(1u);
    return;
  }

  v65 = v109;
  sub_29E752048();
  v66 = sub_29E752088();
  v67 = sub_29E7546B8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v118[0] = v69;
    *v68 = 136446210;
    v70 = sub_29E755178();
    v72 = sub_29E6B9C90(v70, v71, v118);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_29E5ED000, v66, v67, "%{public}s] Missing data charting model", v68, 0xCu);
    sub_29E5FECBC(v69);
    MEMORY[0x29ED98410](v69, -1, -1);
    MEMORY[0x29ED98410](v68, -1, -1);
  }

  (*(v116 + 8))(v65, v115);
}

uint64_t sub_29E7394FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E750458();
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  sub_29E7521F8();
  v10 = sub_29E750448();
  a1[3] = v9;
  result = sub_29E739C1C(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_29E7397A8()
{
  v0 = sub_29E750D58();
  v1 = *(v0 + qword_2A185AA98);

  sub_29E5FECBC((v0 + qword_2A185AAA0));

  return swift_deallocClassInstance();
}

uint64_t sub_29E739834()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  sub_29E751098();
  v5 = sub_29E750E68();
  sub_29E751758();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E739928()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29E739984()
{
  v0 = sub_29E751388();
  sub_29E751368();
  v1 = type metadata accessor for SleepApneaEventSharedListDataSource();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_29E737CEC(v0, v6);
  sub_29E750828();

  v4 = sub_29E750818();

  return v4;
}

void sub_29E739A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E739B00(uint64_t a1)
{
  sub_29E739A9C(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E739B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E739BB4()
{
  if (!qword_2A185AAC8)
  {
    sub_29E609B5C(255, &qword_2A185AAC0, 0x29EDC4508);
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AAC8);
    }
  }
}

uint64_t sub_29E739C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E739C7C()
{
  v0 = sub_29E751D18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750888();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18561D8 != -1)
  {
    swift_once();
  }

  v10 = sub_29E61037C(v5, qword_2A1869208);
  (*(v6 + 16))(v9, v10, v5);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC2C80], v0);
  v11 = objc_allocWithZone(sub_29E7508A8());
  return sub_29E750898();
}

id sub_29E739E40()
{
  v20 = sub_29E751D18();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v19 - v10;
  if (qword_2A18561E0 != -1)
  {
    swift_once();
  }

  v12 = sub_29E61037C(v4, qword_2A1869220);
  v13 = *(v5 + 16);
  v13(v11, v12, v4);
  v14 = type metadata accessor for MicaAnimationContainerView();
  v15 = objc_allocWithZone(v14);
  v13(v9, v11, v4);
  (*(v0 + 104))(v3, *MEMORY[0x29EDC2C80], v20);
  v16 = objc_allocWithZone(sub_29E7508A8());
  *&v15[OBJC_IVAR____TtC20SleepHealthAppPlugin26MicaAnimationContainerView_animationView] = sub_29E750898();
  v21.receiver = v15;
  v21.super_class = v14;
  v17 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29E66AC88();
  [v17 setLayoutMargins_];

  (*(v5 + 8))(v11, v4);
  return v17;
}

uint64_t sub_29E73A0E8()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC6B20], v0);
  v5 = sub_29E74F7E8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E73A224()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E73A2CC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E73A36C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29E73A430()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v4);
  v5 = sub_29E750518();
  (*(v1 + 8))(v4, v0);
  v6 = sub_29E6D5A34(v5);

  return v6;
}

char *sub_29E73A510()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73A5FC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73A6EC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73A7D8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73A8C4()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73A9B0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73AA9C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73AB88()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73AC74()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

char *sub_29E73AD64()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v0 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4();
}

id sub_29E73AE50()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29E73AF40()
{
  sub_29E62F414();
  v0 = sub_29E750108();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E76E040;
  v54 = v4;
  v5 = v4 + v3;
  *v5 = sub_29E739C7C;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *(v1 + 104);
  v52 = *MEMORY[0x29EDC15A8];
  v6(v4 + v3);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  *v7 = sub_29E74E9D8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = v5 + 2 * v2;
  *v9 = sub_29E74E9D8();
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  v11 = *MEMORY[0x29EDC1630];
  v56 = *MEMORY[0x29EDC1630];
  (v6)(v9, v11, v0);
  v12 = (v5 + 3 * v2);
  *v12 = sub_29E74E9D8();
  v12[1] = v13;
  v12[2] = 0;
  v55 = *MEMORY[0x29EDC15D0];
  v6(v12);
  v14 = v5 + 4 * v2;
  *v14 = sub_29E74E9D8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v11, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29E739E40;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v6(v16);
  v17 = v5 + 6 * v2;
  *v17 = sub_29E73A510;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v6(v17);
  v18 = v5 + 7 * v2;
  *v18 = sub_29E73A5FC;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v6(v18);
  v19 = v5 + 8 * v2;
  *v19 = sub_29E73A6EC;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v6(v19);
  v20 = v5 + 9 * v2;
  *v20 = sub_29E73A7D8;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v6(v20);
  v21 = v5 + 10 * v2;
  *v21 = sub_29E73A8C4;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v6(v21);
  v22 = v5 + 11 * v2;
  *v22 = sub_29E73A9B0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v6(v22);
  v23 = (v5 + 12 * v2);
  *v23 = sub_29E74E9D8();
  v23[1] = v24;
  v23[2] = 0;
  (v6)(v23, v55, v0);
  v25 = v5 + 13 * v2;
  *v25 = sub_29E74E9D8();
  *(v25 + 8) = v26;
  *(v25 + 16) = 0;
  (v6)(v25, v56, v0);
  v27 = v5 + 14 * v2;
  *v27 = sub_29E73AA9C;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v6(v27);
  v28 = v5 + 15 * v2;
  *v28 = sub_29E73AB88;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v6(v28);
  v29 = v5 + 16 * v2;
  *v29 = sub_29E73AC74;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v6(v29);
  v30 = v5 + 17 * v2;
  *v30 = sub_29E73AD64;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v6(v30);
  v31 = (v5 + 18 * v2);
  *v31 = sub_29E74E9D8();
  v31[1] = v32;
  v31[2] = 0;
  (v6)(v31, v55, v0);
  v33 = v5 + 19 * v2;
  *v33 = sub_29E74E9D8();
  *(v33 + 8) = v34;
  *(v33 + 16) = 0;
  (v6)(v33, v56, v0);
  v35 = v5 + 20 * v2;
  *v35 = sub_29E73AE50();
  *(v35 + 8) = 1;
  (v6)(v35, *MEMORY[0x29EDC1608], v0);
  v51 = (v5 + 21 * v2);
  sub_29E662E20();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29E764170;
  *(v36 + 32) = sub_29E74E9D8();
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_29E74E9D8();
  *(v36 + 56) = v38;
  *(v36 + 64) = sub_29E74E9D8();
  *(v36 + 72) = v39;
  *v51 = v36;
  v53 = *MEMORY[0x29EDC15D8];
  v6(v51);
  v40 = (v5 + 22 * v2);
  *v40 = sub_29E74E9D8();
  v40[1] = v41;
  v40[2] = 0;
  (v6)(v40, v55, v0);
  v42 = v5 + 23 * v2;
  *v42 = sub_29E74E9D8();
  *(v42 + 8) = v43;
  *(v42 + 16) = 0;
  (v6)(v42, v56, v0);
  v44 = (v5 + 24 * v2);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_29E769B70;
  *(v45 + 32) = sub_29E74E9D8();
  *(v45 + 40) = v46;
  *(v45 + 48) = sub_29E74E9D8();
  *(v45 + 56) = v47;
  *(v45 + 64) = sub_29E74E9D8();
  *(v45 + 72) = v48;
  *(v45 + 80) = sub_29E74E9D8();
  *(v45 + 88) = v49;
  *v44 = v45;
  (v6)(v44, v53, v0);
  return v54;
}

uint64_t sub_29E73BA1C(uint64_t a1)
{
  v2 = sub_29E752BF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752DB8();
}

uint64_t sub_29E73BAE4(void *a1, uint64_t a2)
{
  v61 = a2;
  v57 = a1;
  v2 = sub_29E752098();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SleepApneaEventSummaryView(0);
  v6 = *(*(v55 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v55);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29E74ED28();
  v54 = *(v52 - 8);
  v8 = *(v54 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v52);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73C75C(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v51 - v19;
  v21 = sub_29E74E838();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v60 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = sub_29E751358();
  if (v26)
  {
    v27 = v26;
    sub_29E750608();

    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v28 = *(v22 + 32);
      v51 = v25;
      v28(v25, v20, v21);
      v59 = v21;
      sub_29E74E828();
      v29 = v53;
      sub_29E74E7F8();
      v30 = sub_29E751388();
      v31 = v54;
      v32 = *(v54 + 16);
      v33 = v52;
      v32(v16, v12, v52);
      v32(&v16[v13[5]], v29, v33);
      *&v16[v13[6]] = v30;
      v16[v13[7]] = 0;
      v34 = v30;
      v35 = HKSPLogForCategory();
      v36 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v35 healthDataSource:v34];

      v37 = *(v31 + 8);
      v37(v29, v33);
      v37(v12, v33);
      *&v16[v13[8]] = v36;
      v38 = v56;
      sub_29E5FEC58(v16, v56);
      v39 = v55;
      v40 = *(v55 + 20);
      *(v38 + v40) = swift_getKeyPath();
      v41 = MEMORY[0x29EDBC388];
      sub_29E73C75C(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
      swift_storeEnumTagMultiPayload();
      v42 = *(v39 + 24);
      *(v38 + v42) = swift_getKeyPath();
      sub_29E73C75C(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], v41);
      swift_storeEnumTagMultiPayload();
      sub_29E683C20();
      v44 = objc_allocWithZone(v43);
      v45 = sub_29E753038();
      [v57 presentViewController:v45 animated:1 completion:0];

      sub_29E5FFC24(v16);
      (*(v22 + 8))(v51, v59);
    }
  }

  else
  {
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  sub_29E739B00(v20);
  sub_29E752048();
  v46 = sub_29E752088();
  v47 = sub_29E7546C8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v62 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_29E6B9C90(0x634164616F4C6E4FLL, 0xEC0000006E6F6974, &v62);
    _os_log_impl(&dword_29E5ED000, v46, v47, "[%{public}s] Could not get date interval from chart context; not presenting sample detail view in BD room", v48, 0xCu);
    sub_29E5FECBC(v49);
    MEMORY[0x29ED98410](v49, -1, -1);
    MEMORY[0x29ED98410](v48, -1, -1);
  }

  (*(v58 + 8))(v5, v59);
}

uint64_t sub_29E73C1C4(void *a1, void *a2, void *a3)
{
  v52 = a3;
  v49 = a2;
  v55 = a1;
  v3 = type metadata accessor for SleepApneaEventSummaryView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E74ED28();
  v7 = *(v53 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x2A1C7C4A8](v53);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v50 = &v47 - v11;
  v12 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E752098();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v54 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v21 = sub_29E752088();
  v22 = sub_29E7546C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v16;
    v24 = v23;
    v25 = swift_slowAlloc();
    v48 = v3;
    v26 = v25;
    v56 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_29E6B9C90(0x634164616F4C6E4FLL, 0xEC0000006E6F6974, &v56);
    _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Presenting apnea event summary.", v24, 0xCu);
    sub_29E5FECBC(v26);
    v27 = v26;
    v3 = v48;
    MEMORY[0x29ED98410](v27, -1, -1);
    MEMORY[0x29ED98410](v24, -1, -1);

    (*(v17 + 8))(v20, v47);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v28 = v49;
  v29 = [v49 startDate];
  v30 = v50;
  sub_29E74ECD8();

  v31 = [v28 endDate];
  v32 = v51;
  sub_29E74ECD8();

  v33 = v7[2];
  v34 = v53;
  v33(v15, v30, v53);
  v33(&v15[v12[5]], v32, v34);
  v35 = v52;
  *&v15[v12[6]] = v52;
  v15[v12[7]] = 1;
  v36 = v35;
  v37 = HKSPLogForCategory();
  v38 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v37 healthDataSource:v36];

  v39 = v7[1];
  v39(v32, v34);
  v39(v30, v34);
  *&v15[v12[8]] = v38;
  sub_29E5FEC58(v15, v6);
  v40 = *(v3 + 20);
  *&v6[v40] = swift_getKeyPath();
  v41 = MEMORY[0x29EDBC388];
  sub_29E73C75C(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v42 = *(v3 + 24);
  *&v6[v42] = swift_getKeyPath();
  sub_29E73C75C(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], v41);
  swift_storeEnumTagMultiPayload();
  sub_29E683C20();
  v44 = objc_allocWithZone(v43);
  v45 = sub_29E753038();
  [v55 presentViewController:v45 animated:1 completion:0];

  sub_29E5FFC24(v15);
}

void sub_29E73C75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E73C7C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E7513D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v37 = a1;
    v11 = [v10 identifier];
    v12 = sub_29E7541D8();
    v14 = v13;

    v15 = *MEMORY[0x29EDBA4D8];
    v17 = v12 == sub_29E7541D8() && v14 == v16;
    v38 = a2;
    if (v17)
    {
      goto LABEL_9;
    }

    v18 = sub_29E755028();

    if (v18)
    {
      goto LABEL_10;
    }
  }

  sub_29E754E48();
  __break(1u);
LABEL_9:

LABEL_10:
  sub_29E751318();
  sub_29E751238();
  v19 = type metadata accessor for SleepApneaEventSharingListComponent();
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD00000000000001CLL;
  *(v20 + 24) = 0x800000029E7619E0;
  v40 = v19;
  v41 = sub_29E73CCF4(&qword_2A185AAD8, type metadata accessor for SleepApneaEventSharingListComponent);
  v39[0] = v20;
  sub_29E7518F8();

  sub_29E66D0D0(v39);
  result = sub_29E7511D8();
  v22 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v24 = 0;
    v25 = result + 32;
    while (v24 < *(v22 + 16))
    {
      sub_29E602E20(v25, v39);
      sub_29E601938(v39, v40);
      v26 = sub_29E750DF8();
      v28 = v27;
      if (v26 == sub_29E751278() && v28 == v29)
      {

        sub_29E5FECBC(v39);
LABEL_21:

        sub_29E7511D8();

        sub_29E73CC94(0, &qword_2A1858BE8, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29E762F30;
        v33 = type metadata accessor for SleepApneaEventSharingEducationComponent();
        v34 = swift_allocObject();
        *(v34 + 16) = 0xD000000000000021;
        *(v34 + 24) = 0x800000029E761A00;
        *(inited + 56) = v33;
        *(inited + 64) = sub_29E73CCF4(&qword_2A185AAE0, type metadata accessor for SleepApneaEventSharingEducationComponent);
        *(inited + 32) = v34;
        v35 = sub_29E7511C8();
        sub_29E73CE70(v24 + 1, v24 + 1, inited);
        swift_setDeallocating();
        v36 = *(inited + 16);
        sub_29E6CEF90();
        swift_arrayDestroy();
        v35(v39, 0);

        return (*(v5 + 32))(v38, v8, v4);
      }

      v31 = sub_29E755028();

      result = sub_29E5FECBC(v39);
      if (v31)
      {
        goto LABEL_21;
      }

      ++v24;
      v25 += 40;
      if (v23 == v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return (*(v5 + 32))(v38, v8, v4);
  }

  return result;
}

void sub_29E73CC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E6CEF90();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E73CCF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E73CD3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_29E6CEF90();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_29E73CE70(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v6;
    }

    v5 = sub_29E6DB2F8(isUniquelyReferenced_nonNull_native, v16, 1, v5);
    *v3 = v5;
  }

  result = sub_29E73CD3C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

id sub_29E73CF44()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = HKSPLogForCategory();
    v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 112)];

    v5 = *(v0 + 152);
    *(v0 + 152) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29E73CFD8(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LODWORD(v5) = a1;
  v6 = *v2;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v12 = sub_29E752088();
  v13 = sub_29E754688();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v4;
    v4 = v14;
    v15 = swift_slowAlloc();
    v32 = v5;
    v5 = v15;
    aBlock[0] = v15;
    *v4 = 136446210;
    v16 = sub_29E755178();
    v31 = v6;
    v18 = sub_29E6B9C90(v16, v17, aBlock);

    *(v4 + 4) = v18;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Attempting to send analytics event...", v4, 0xCu);
    sub_29E5FECBC(v5);
    v19 = v5;
    LOBYTE(v5) = v32;
    MEMORY[0x29ED98410](v19, -1, -1);
    v20 = v4;
    LOBYTE(v4) = v33;
    MEMORY[0x29ED98410](v20, -1, -1);

    v21 = v31;
    (*(v8 + 8))(v11, v7);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v21 = v6;
  }

  v22 = *(v3 + 120);
  v24 = v3[16];
  v23 = v3[17];
  v25 = *(v3 + 72);
  type metadata accessor for SleepApneaOnboardingAnalyticsEvent();
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 17) = v4;
  *(v26 + 24) = v24;
  *(v26 + 32) = v23;
  *(v26 + 40) = v22;
  *(v26 + 41) = v25;

  v27 = sub_29E73CF44();
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  aBlock[4] = sub_29E73D6FC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2503888;
  v29 = _Block_copy(aBlock);

  [v27 submitEvent:v26 completion:v29];
  _Block_release(v29);
}

uint64_t sub_29E73D2F8(char a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    sub_29E752068();
    v12 = sub_29E752088();
    v13 = sub_29E754688();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      sub_29E5FECBC(v15);
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    v19 = *(v5 + 8);
    v20 = v11;
    goto LABEL_9;
  }

  sub_29E752068();
  v21 = a2;
  v22 = sub_29E752088();
  v23 = sub_29E7546A8();

  if (!os_log_type_enabled(v22, v23))
  {

    v19 = *(v5 + 8);
    v20 = v9;
LABEL_9:
    v33 = v4;
    return v19(v20, v33);
  }

  v35 = v4;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v36 = v26;
  *v24 = 136446466;
  v27 = sub_29E755178();
  v29 = sub_29E6B9C90(v27, v28, &v36);

  *(v24 + 4) = v29;
  *(v24 + 12) = 2112;
  if (a2)
  {
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v24 + 14) = v31;
  *v25 = v32;
  _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Failed to submit analytics with error: %@", v24, 0x16u);
  sub_29E6764FC(v25);
  MEMORY[0x29ED98410](v25, -1, -1);
  sub_29E5FECBC(v26);
  MEMORY[0x29ED98410](v26, -1, -1);
  MEMORY[0x29ED98410](v24, -1, -1);

  v19 = *(v5 + 8);
  v20 = v9;
  v33 = v35;
  return v19(v20, v33);
}

uint64_t SleepApneaOnboardingAnalyticsContextManager.deinit()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SleepApneaOnboardingAnalyticsContextManager.__deallocating_deinit()
{
  v1 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x2A1C73CE8](v0);
}

uint64_t sub_29E73D704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E73D71C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E754828();
  if (v2)
  {
    v3 = v2;
    v4 = sub_29E750008();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = v3;
    sub_29E74FFF8();
    v8 = v7;

    sub_29E754858();
    sub_29E754838();
    v9 = sub_29E750A98();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_29E750A68();
    sub_29E750A58();
    sub_29E750A78();
    sub_29E750A88();
    sub_29E751378();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_29E7513C8();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, v12, 1, v13);
}

id sub_29E73DCB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostingConfigurationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScoreGalleryCard()
{
  result = qword_2A185AAE8;
  if (!qword_2A185AAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E73DD80()
{
  sub_29E73E938(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29E650A80();
    if (v1 <= 0x3F)
    {
      sub_29E73E938(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E73DE98@<X0>(uint64_t a1@<X8>)
{
  sub_29E73E8A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73EB24(0, &qword_2A185AB58, sub_29E73E8A4);
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v27 - v10;
  v12 = type metadata accessor for SleepScoreCard(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73EFB4(v1, &v16[*(v13 + 28)], qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68], sub_29E73E938);
  v17 = (v1 + *(type metadata accessor for SleepScoreGalleryCard() + 24));
  v19 = *v17;
  v18 = v17[1];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v20 = &v16[*(v13 + 32)];
  *v20 = v19;
  *(v20 + 1) = v18;

  *v6 = sub_29E753388();
  sub_29E73ED54();
  sub_29E73E1B4(v16, v1, &v6[*(v21 + 44)]);
  sub_29E73E714();
  sub_29E753C48();
  sub_29E752CA8();
  sub_29E73EEE0(v6, v11, sub_29E73E8A4);
  v22 = &v11[*(v8 + 36)];
  v23 = v27[6];
  *(v22 + 4) = v27[5];
  *(v22 + 5) = v23;
  *(v22 + 6) = v27[7];
  v24 = v27[2];
  *v22 = v27[1];
  *(v22 + 1) = v24;
  v25 = v27[4];
  *(v22 + 2) = v27[3];
  *(v22 + 3) = v25;
  sub_29E73EDF0(v11, a1);
  return sub_29E73F028(v16, type metadata accessor for SleepScoreCard);
}

uint64_t sub_29E73E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v50 = a2;
  v4 = type metadata accessor for SleepScoreGalleryCard();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73EA30();
  v46 = v7;
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v45 - v11;
  sub_29E73EB24(0, &qword_2A185AB10, type metadata accessor for SleepScoreCard);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v45 - v19;
  sub_29E7544C8();
  v47 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E73EE78(a1, v20, type metadata accessor for SleepScoreCard);
  *&v20[*(v14 + 36)] = 256;
  sub_29E73E714();
  sub_29E753C28();
  sub_29E752AB8();
  sub_29E73EE78(a1, v12, type metadata accessor for SleepScoreCard);
  sub_29E73EB24(0, &qword_2A185AB28, type metadata accessor for SleepScoreCard);
  v22 = &v12[*(v21 + 36)];
  v23 = v52;
  *v22 = v51;
  *(v22 + 1) = v23;
  *(v22 + 2) = v53;
  v24 = sub_29E753C38();
  v26 = v25;
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E73EE78(v50, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreGalleryCard);
  v27 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v28 = swift_allocObject();
  sub_29E73EEE0(v6, v28 + v27, type metadata accessor for SleepScoreGalleryCard);

  sub_29E73EA98();
  v30 = &v12[*(v29 + 36)];
  *v30 = sub_29E73EF48;
  v30[1] = v28;
  v30[2] = v24;
  v30[3] = v26;
  sub_29E74F198();
  sub_29E74F198();
  v31 = &v12[*(v46 + 36)];
  v32 = *(sub_29E753238() + 20);
  v33 = *MEMORY[0x29EDBC6F8];
  v34 = sub_29E752F78();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  sub_29E753148();
  *v31 = v35;
  *(v31 + 1) = v36;
  *(v31 + 2) = v37;
  *(v31 + 3) = v38;
  sub_29E73EC38();
  *&v31[*(v39 + 36)] = 256;
  v40 = MEMORY[0x29EDBC5E8];
  sub_29E73EFB4(v20, v18, &qword_2A185AB10, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC5E8], sub_29E73EB24);
  v41 = v48;
  sub_29E73EE78(v12, v48, sub_29E73EA30);
  v42 = v49;
  sub_29E73EFB4(v18, v49, &qword_2A185AB10, type metadata accessor for SleepScoreCard, v40, sub_29E73EB24);
  sub_29E73E99C();
  sub_29E73EE78(v41, v42 + *(v43 + 48), sub_29E73EA30);
  sub_29E73F028(v12, sub_29E73EA30);
  sub_29E73F088(v20);
  sub_29E73F028(v41, sub_29E73EA30);
  sub_29E73F088(v18);
}

uint64_t sub_29E73E714()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SleepScoreGalleryCard();
  v7 = v0 + *(result + 28);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v9 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v8, 0);
    result = (*(v2 + 8))(v5, v1);
    v8 = v12;
  }

  if ((v8 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v12 = v8;
    result = sub_29E755048();
    __break(1u);
  }

  else
  {
    v10 = qword_29E76E2A8[v8 - 1];
  }

  return result;
}

void sub_29E73E8A4()
{
  if (!qword_2A185AAF8)
  {
    sub_29E73E938(255, &qword_2A185AB00, sub_29E73E99C, MEMORY[0x29EDBCC28]);
    sub_29E73ECCC();
    v0 = sub_29E752A98();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AAF8);
    }
  }
}

void sub_29E73E938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E73E99C()
{
  if (!qword_2A185AB08)
  {
    sub_29E73EB24(255, &qword_2A185AB10, type metadata accessor for SleepScoreCard);
    sub_29E73EA30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185AB08);
    }
  }
}

void sub_29E73EA30()
{
  if (!qword_2A185AB18)
  {
    sub_29E73EA98();
    sub_29E73EC38();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AB18);
    }
  }
}

void sub_29E73EA98()
{
  if (!qword_2A185AB20)
  {
    sub_29E73EB24(255, &qword_2A185AB28, type metadata accessor for SleepScoreCard);
    sub_29E73EB88();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AB20);
    }
  }
}

void sub_29E73EB24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E73EB88()
{
  if (!qword_2A185AB30)
  {
    sub_29E73EBE4();
    v0 = sub_29E752CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AB30);
    }
  }
}

unint64_t sub_29E73EBE4()
{
  result = qword_2A185AB38;
  if (!qword_2A185AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AB38);
  }

  return result;
}

void sub_29E73EC38()
{
  if (!qword_2A185AB40)
  {
    sub_29E753238();
    sub_29E73F1DC(&qword_2A185AB48, MEMORY[0x29EDBC890]);
    v0 = sub_29E752A88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AB40);
    }
  }
}

unint64_t sub_29E73ECCC()
{
  result = qword_2A185AB50;
  if (!qword_2A185AB50)
  {
    sub_29E73E938(255, &qword_2A185AB00, sub_29E73E99C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AB50);
  }

  return result;
}

void sub_29E73ED54()
{
  if (!qword_2A185AB60)
  {
    sub_29E73E938(255, &qword_2A185AB00, sub_29E73E99C, MEMORY[0x29EDBCC28]);
    sub_29E6E1220();
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AB60);
    }
  }
}

uint64_t sub_29E73EDF0(uint64_t a1, uint64_t a2)
{
  sub_29E73EB24(0, &qword_2A185AB58, sub_29E73E8A4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E73EE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E73EEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E73EF48()
{
  v1 = type metadata accessor for SleepScoreGalleryCard();
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_29E73EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E73F028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E73F088(uint64_t a1)
{
  sub_29E73EB24(0, &qword_2A185AB10, type metadata accessor for SleepScoreCard);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E73F108()
{
  result = qword_2A185AB68;
  if (!qword_2A185AB68)
  {
    sub_29E73EB24(255, &qword_2A185AB58, sub_29E73E8A4);
    sub_29E73F1DC(&qword_2A185AB70, sub_29E73E8A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AB68);
  }

  return result;
}

uint64_t sub_29E73F1DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint()
{
  result = qword_2A185AB78;
  if (!qword_2A185AB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E73F298()
{
  result = sub_29E74ED28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E73F314()
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E73F754(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v1 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint();
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v2);
  v3 = v0 + *(v1 + 24);
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E73F3FC(uint64_t a1, uint64_t a2)
{
  sub_29E74ED28();
  sub_29E73F754(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v4);
  v5 = v2 + *(a2 + 24);
  return sub_29E7540B8();
}

uint64_t sub_29E73F4C0(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E73F754(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v4);
  v5 = v2 + *(a2 + 24);
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E73F598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  v6 = *(a3 + 24);
  return sub_29E74ECB8();
}

BOOL sub_29E73F5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    v6 = *(a3 + 24);
    v7 = sub_29E74ECB8();
  }

  else
  {
    v7 = v4 < v5;
  }

  return (v7 & 1) == 0;
}

BOOL sub_29E73F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    v6 = *(a3 + 24);
    v7 = sub_29E74ECB8();
  }

  else
  {
    v7 = v4 < v5;
  }

  return (v7 & 1) == 0;
}

uint64_t sub_29E73F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  v6 = *(a3 + 24);
  return sub_29E74ECB8();
}

uint64_t sub_29E73F690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29E74ECC8() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_29E74ECC8();
}

uint64_t sub_29E73F754(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E73F970()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker;
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker] setDelegate_];
  [*&v0[v2] setDataSource_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v1[v2];
  v5 = [v1 contentView];
  v6 = sub_29E754AF8();

  v7 = [*&v1[v2] heightAnchor];
  v8 = [v7 constraintEqualToConstant_];

  MEMORY[0x29ED96CE0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E754418();
  }

  sub_29E754438();
  v9 = objc_opt_self();
  sub_29E66B09C();
  v11 = sub_29E7543D8();

  [v9 activateConstraints_];
}

id sub_29E73FB44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E73FF40(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7BC0]) init];
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_pickerData] = MEMORY[0x29EDCA190];
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v5 = sub_29E754198();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PickerTableViewCell();
  v6 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 0, v5);

  v7 = v6;
  sub_29E73F970();

  return v7;
}

uint64_t sub_29E740024(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_pickerData);
  if (*(v2 + 16) <= a1)
  {
    return 0;
  }

  v3 = v2 + 16 * a1;
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);

  return v5;
}

uint64_t sub_29E74007C()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_29E752098();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_29E662AC4(0);
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v7 = sub_29E74FDC8();
  v1[16] = v7;
  v8 = *(v7 - 8);
  v1[17] = v8;
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E740210, 0, 0);
}

uint64_t sub_29E740210()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  sub_29E744EEC(&qword_2A1A7C368, type metadata accessor for BreathingDisturbancesHighlightExecutor);
  sub_29E74FB68();
  v0[20] = 0;
  v4 = *(MEMORY[0x29EDCA468] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  sub_29E745544(0, &qword_2A1A7BDE8, sub_29E7455A8, MEMORY[0x29EDC9C68]);
  *v5 = v0;
  v5[1] = sub_29E74041C;
  v7 = v0[8];

  return MEMORY[0x2A1C73C70](v0 + 7, 0, 0, 0xD00000000000001ELL, 0x800000029E761D90, sub_29E74553C, v7, v6);
}

uint64_t sub_29E74041C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29E740518, 0, 0);
}

uint64_t sub_29E740518()
{
  v93 = v0;
  v1 = v0[7];
  if (!v1)
  {
    v16 = v0[12];
    sub_29E752048();
    v17 = sub_29E752088();
    v18 = sub_29E7546C8();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    if (v19)
    {
      v23 = v0[9];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v92[0] = v25;
      *v24 = 136446210;
      v26 = sub_29E755178();
      v28 = sub_29E6B9C90(v26, v27, v92);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] No breathing disturbances data found. Removing any highlights that might exist.", v24, 0xCu);
      sub_29E5FECBC(v25);
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    v30 = v0[5];
    v29 = v0[6];
    sub_29E601938(v0 + 2, v30);
    v31 = *(MEMORY[0x29EDC3888] + 4);
    v32 = swift_task_alloc();
    v0[28] = v32;
    *v32 = v0;
    v33 = sub_29E741044;
    goto LABEL_14;
  }

  v2 = [objc_opt_self() displayTypeWithIdentifier_];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x2A1C64D78](v2, v3, v4);
  }

  v5 = v2;
  v6 = v0[20];
  v7 = v0[8];
  sub_29E741378(v2, v1, v0[15]);
  if (v6)
  {

    sub_29E5FECBC(v0 + 2);
    v9 = v0[18];
    v8 = v0[19];
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];

    v14 = v0[1];

    return v14();
  }

  v34 = v0[16];
  v35 = v0[17];
  v36 = v0[15];

  if ((*(v35 + 48))(v36, 1, v34) != 1)
  {
    v52 = v0[18];
    v53 = v0[19];
    v54 = v0[16];
    v55 = v0[17];
    v56 = v0[14];
    (*(v55 + 32))(v53, v0[15], v54);
    sub_29E752048();
    v57 = *(v55 + 16);
    v57(v52, v53, v54);
    v58 = sub_29E752088();
    v59 = sub_29E7546C8();
    v60 = os_log_type_enabled(v58, v59);
    v62 = v0[17];
    v61 = v0[18];
    v91 = v0[16];
    v63 = v0[14];
    v65 = v0[10];
    v64 = v0[11];
    if (v60)
    {
      v90 = v57;
      v66 = v0[9];
      v89 = v0[10];
      v67 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92[0] = v87;
      *v67 = 136446466;
      v68 = sub_29E755178();
      v88 = v63;
      v70 = sub_29E6B9C90(v68, v69, v92);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2080;
      v71 = sub_29E74FC78();
      v73 = v72;
      v86 = v59;
      v74 = *(v62 + 8);
      v74(v61, v91);
      v75 = sub_29E6B9C90(v71, v73, v92);
      v57 = v90;

      *(v67 + 14) = v75;
      _os_log_impl(&dword_29E5ED000, v58, v86, "[%{public}s] Executor is replacing existing feed item with %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v87, -1, -1);
      MEMORY[0x29ED98410](v67, -1, -1);

      (*(v64 + 8))(v88, v89);
    }

    else
    {

      v74 = *(v62 + 8);
      v74(v61, v91);
      (*(v64 + 8))(v63, v65);
    }

    v0[22] = v74;
    v76 = v0[19];
    v77 = v0[16];
    v78 = v0[17];
    v80 = v0[5];
    v79 = v0[6];
    sub_29E601938(v0 + 2, v80);
    sub_29E745544(0, &qword_2A1A7D3F8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v81 = *(v78 + 72);
    v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v83 = swift_allocObject();
    v0[23] = v83;
    *(v83 + 16) = xmmword_29E762F30;
    v57(v83 + v82, v76, v77);
    v84 = *(MEMORY[0x29EDC3880] + 4);
    v85 = swift_task_alloc();
    v0[24] = v85;
    *v85 = v0;
    v85[1] = sub_29E740C80;
    v2 = v83;
    v3 = v80;
    v4 = v79;

    return MEMORY[0x2A1C64D78](v2, v3, v4);
  }

  v37 = v0[13];
  sub_29E745610(v0[15], sub_29E662AC4);
  sub_29E752048();
  v38 = sub_29E752088();
  v39 = sub_29E7546C8();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[13];
  v42 = v0[10];
  v43 = v0[11];
  if (v40)
  {
    v44 = v0[9];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v92[0] = v46;
    *v45 = 136446210;
    v47 = sub_29E755178();
    v49 = sub_29E6B9C90(v47, v48, v92);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_29E5ED000, v38, v39, "[%{public}s] No new feed item, remove the old one.", v45, 0xCu);
    sub_29E5FECBC(v46);
    MEMORY[0x29ED98410](v46, -1, -1);
    MEMORY[0x29ED98410](v45, -1, -1);
  }

  (*(v43 + 8))(v41, v42);
  v30 = v0[5];
  v29 = v0[6];
  sub_29E601938(v0 + 2, v30);
  v50 = *(MEMORY[0x29EDC3888] + 4);
  v32 = swift_task_alloc();
  v0[26] = v32;
  *v32 = v0;
  v33 = sub_29E740E80;
LABEL_14:
  v32[1] = v33;
  v51 = MEMORY[0x29EDCA190];

  return MEMORY[0x2A1C64D80](v51, v30, v29);
}

uint64_t sub_29E740C80()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);

  if (v0)
  {
    v6 = sub_29E7412B0;
  }

  else
  {
    v6 = sub_29E740DB4;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29E740DB4()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 176))(*(v0 + 152), *(v0 + 128));
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_29E5FECBC((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29E740E80()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_29E741204;
  }

  else
  {
    v3 = sub_29E740F94;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E740F94()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  sub_29E5FECBC(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_29E741044()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_29E741158;
  }

  else
  {
    v3 = sub_29E746090;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E741158()
{
  sub_29E5FECBC(v0 + 2);
  v1 = v0[29];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_29E741204()
{
  sub_29E5FECBC(v0 + 2);
  v1 = v0[27];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_29E7412B0()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 176))(*(v0 + 152), *(v0 + 128));
  sub_29E5FECBC((v0 + 16));
  v2 = *(v0 + 200);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9();
}

void sub_29E741378(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v90 = a1;
  v93 = a3;
  v88 = *v4;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74FC58();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v81 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E74FB98();
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v85);
  v80 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74FDC8();
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v83 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7455DC(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v22 = (v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
  v23 = *(v89 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x2A1C7C4A8](v89);
  v86 = v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v87 = v77 - v27;
  v28 = a2;
  v29 = sub_29E742B00(a2);
  if (*(v29 + 16))
  {
    v88 = v29;
    v79 = v11;
    sub_29E66D198();
    v30 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
    v31 = *MEMORY[0x29EDC43E0];
    v94[0] = sub_29E7541D8();
    v94[1] = v32;
    MEMORY[0x29ED96C20](0x67696C686769482ELL, 0xEB000000002E7468);
    v33 = [v30 identifier];
    v34 = sub_29E7541D8();
    v36 = v35;

    MEMORY[0x29ED96C20](v34, v36);

    sub_29E742FF8(v90, v28, v22);
    if ((*(v23 + 48))(v22, 1, v89) == 1)
    {

      sub_29E745610(v22, sub_29E7455DC);
      (*(v91 + 56))(v93, 1, 1, v92);
    }

    else
    {
      v45 = v4;
      v90 = v30;
      v46 = v87;
      sub_29E745BC0(v22, v87, type metadata accessor for BreathingDisturbancesHighlightDataModel);
      v47 = sub_29E74E7C8();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      sub_29E74E7B8();
      sub_29E744EEC(&qword_2A1A7D188, type metadata accessor for BreathingDisturbancesHighlightDataModel);
      v50 = v95;
      v51 = sub_29E74E7A8();
      if (v50)
      {
        sub_29E745610(v46, type metadata accessor for BreathingDisturbancesHighlightDataModel);
      }

      else
      {
        v53 = v52;
        v54 = v51;

        sub_29E64C7DC(v54, v53);
        sub_29E744EEC(&qword_2A1A7D198, type metadata accessor for BreathingDisturbancesHighlightDataModel);
        sub_29E750CE8();
        v89 = v54;
        v95 = v53;
        v78 = [objc_allocWithZone(MEMORY[0x29EDBAA68]) initWithIdentifier_];
        if (v78)
        {
          type metadata accessor for BreathingDisturbancesHighlightView(0);
          v77[1] = "getBreathingDisturbancesData()";
          v55 = v80;
          (*(v84 + 104))(v80, *MEMORY[0x29EDC3788], v85);
          v56 = v45[4];
          v57 = sub_29E754638();
          v58 = v82;
          v59 = v81;
          (*(v82 + 104))(v81, *MEMORY[0x29EDC1B28], v79);
          sub_29E744EEC(&qword_2A1A7C448, type metadata accessor for BreathingDisturbancesHighlightView);
          v60 = v83;
          sub_29E74FC38();

          (*(v58 + 8))(v59, v79);
          (*(v84 + 8))(v55, v85);
          v61 = sub_29E745798(v88);

          v62 = *(v61 + 2);
          v63 = 32;
          v64 = v90;
          do
          {
            if (!v62)
            {
              break;
            }

            v65 = *&v61[v63];
            v63 += 8;
            --v62;
          }

          while (v65 != 1);

          v66 = v60;
          sub_29E74FDA8();
          sub_29E67905C(0, &qword_2A1A7BCE0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_29E764160;
          v68 = v78;
          *(inited + 32) = v78;
          v69 = v68;
          sub_29E6D5A34(inited);
          swift_setDeallocating();
          v70 = *(inited + 16);
          swift_arrayDestroy();
          sub_29E74FD28();
          sub_29E67905C(0, &qword_2A1A7BCF0);
          v71 = swift_initStackObject();
          *(v71 + 16) = xmmword_29E762F30;
          *(v71 + 32) = sub_29E74FF08();
          *(v71 + 40) = v72;
          sub_29E5FF900(v71);
          swift_setDeallocating();
          sub_29E619D6C(v71 + 32);
          sub_29E74FD88();

          sub_29E643D20(v89, v95);
          sub_29E745610(v86, type metadata accessor for BreathingDisturbancesHighlightDataModel);
          sub_29E745610(v46, type metadata accessor for BreathingDisturbancesHighlightDataModel);
          v73 = v91;
          v74 = v93;
          v75 = v66;
          v76 = v92;
          (*(v91 + 32))(v93, v75, v92);
          (*(v73 + 56))(v74, 0, 1, v76);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    v37 = v6;

    sub_29E752048();
    v38 = sub_29E752088();
    v39 = sub_29E7546C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v94[0] = v41;
      *v40 = 136446210;
      v42 = sub_29E755178();
      v44 = sub_29E6B9C90(v42, v43, v94);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_29E5ED000, v38, v39, "[%{public}s] Not enough breathing disturbances in the last week to meet threshold for highlight. Removing highlight from feed item storage.", v40, 0xCu);
      sub_29E5FECBC(v41);
      MEMORY[0x29ED98410](v41, -1, -1);
      MEMORY[0x29ED98410](v40, -1, -1);
    }

    (*(v7 + 8))(v10, v37);
    (*(v91 + 56))(v93, 1, 1, v92);
  }
}

uint64_t sub_29E741F24(uint64_t a1)
{
  sub_29E745C28();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_29E7420B8(sub_29E745CC0, v7);
}

uint64_t sub_29E742060()
{
  sub_29E745C28();

  return sub_29E754498();
}

void sub_29E7420B8(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v43 - v13;
  sub_29E752048();
  v15 = sub_29E752088();
  v16 = sub_29E7546C8();
  v17 = os_log_type_enabled(v15, v16);
  v46 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v44 = a1;
    v45 = v7;
    v43 = a2;
    v19 = v18;
    v20 = v12;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v19 = 136446210;
    v22 = sub_29E755178();
    v24 = v8;
    v25 = sub_29E6B9C90(v22, v23, aBlock);

    *(v19 + 4) = v25;
    v8 = v24;
    _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Query for breathing disturbance data.", v19, 0xCu);
    sub_29E5FECBC(v21);
    v26 = v21;
    v12 = v20;
    MEMORY[0x29ED98410](v26, -1, -1);
    v27 = v19;
    a2 = v43;
    a1 = v44;
    v7 = v45;
    MEMORY[0x29ED98410](v27, -1, -1);
  }

  v28 = *(v8 + 8);
  v28(v14, v7);
  v29 = v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
  v30 = *&v29[*(type metadata accessor for BreathingDisturbancesHighlightDateModel() + 28)];
  if (v30)
  {
    v31 = swift_allocObject();
    v31[2] = a1;
    v31[3] = a2;
    v31[4] = v3;
    aBlock[4] = sub_29E745D40;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E742A60;
    aBlock[3] = &unk_2A2503928;
    v32 = _Block_copy(aBlock);
    v33 = v30;

    [v33 setInitialResultsHandler_];
    _Block_release(v32);
    [v3[4] executeQuery_];
  }

  else
  {
    sub_29E752048();
    v34 = sub_29E752088();
    v35 = sub_29E7546B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136446210;
      v38 = sub_29E755178();
      v46 = v8;
      v40 = sub_29E6B9C90(v38, v39, aBlock);
      v45 = v12;
      v41 = v40;

      *(v36 + 4) = v41;
      _os_log_impl(&dword_29E5ED000, v34, v35, "[%{public}s] No query available from the date model; check for the fault log in BreathingDisturbancesHighlightDateModel.", v36, 0xCu);
      sub_29E5FECBC(v37);
      MEMORY[0x29ED98410](v37, -1, -1);
      MEMORY[0x29ED98410](v36, -1, -1);

      v42 = v45;
    }

    else
    {

      v42 = v12;
    }

    v28(v42, v7);
    a1(0, 0);
  }
}

uint64_t sub_29E7424EC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return a4(0, a3);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x29EDCA190];
  v10 = *(type metadata accessor for BreathingDisturbancesHighlightDateModel() + 20);
  v11 = a2;
  v12 = sub_29E74EC98();
  v13 = sub_29E74EC98();
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = v9;
  v19[4] = sub_29E745D64;
  v19[5] = v14;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 1107296256;
  v19[2] = sub_29E7429EC;
  v19[3] = &unk_2A25039A0;
  v15 = _Block_copy(v19);

  [v11 enumerateStatisticsFromDate:v12 toDate:v13 withBlock:v15];
  _Block_release(v15);

  swift_beginAccess();
  v16 = *(v9 + 16);

  a4(v17, 0);
}

id sub_29E7426C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v6 = type metadata accessor for BreathingDisturbancesData(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74ED28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v31 - v17;
  result = [a1 averageQuantity];
  if (result)
  {
    v20 = result;
    v32 = v7;
    v21 = [a1 endDate];
    sub_29E74ECD8();

    sub_29E74EDD8();
    v22 = v16;
    v23 = *(v12 + 8);
    v23(v22, v11);
    v24 = [objc_opt_self() countUnit];
    [v20 doubleValueForUnit_];
    v26 = v25;

    (*(v12 + 16))(v10, v18, v11);
    *&v10[*(v6 + 20)] = v26;
    swift_beginAccess();
    v27 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_29E6DB940(0, v27[2] + 1, 1, v27);
      *(a4 + 16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_29E6DB940(v29 > 1, v30 + 1, 1, v27);
    }

    v27[2] = v30 + 1;
    sub_29E745BC0(v10, v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v30, type metadata accessor for BreathingDisturbancesData);
    *(a4 + 16) = v27;

    return (v23)(v18, v11);
  }

  return result;
}

void sub_29E7429EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_29E742A60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t sub_29E742B00(uint64_t a1)
{
  v2 = v1;
  v58 = sub_29E74EE68();
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v58);
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66BE0C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29E74ED28();
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v56);
  v55 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v46 = &v43 - v15;
  v16 = type metadata accessor for BreathingDisturbancesData(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v45 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v43 - v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v52 = v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
    v53 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
    v43 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v24 = a1 + v43;
    v59 = *(v20 + 72);
    v51 = *MEMORY[0x29EDB9CB8];
    v25 = (v11 + 8);
    v49 = (v4 + 8);
    v50 = (v4 + 104);
    v48 = (v11 + 48);
    v44 = (v11 + 32);
    v47 = MEMORY[0x29EDCA190];
    v54 = v2;
    while (1)
    {
      sub_29E7459AC(v24, v22);
      v26 = v10;
      v28 = v57;
      v27 = v58;
      (*v50)(v57, v51, v58);
      v29 = v52 + *(type metadata accessor for BreathingDisturbancesHighlightDateModel() + 24);
      v30 = v55;
      sub_29E74E7F8();
      sub_29E74EE48();
      v31 = *v25;
      v32 = v56;
      (*v25)(v30, v56);
      v33 = v28;
      v10 = v26;
      (*v49)(v33, v27);
      if ((*v48)(v26, 1, v32) == 1)
      {
        sub_29E745610(v26, sub_29E66BE0C);
      }

      else
      {
        v34 = v46;
        (*v44)(v46, v26, v32);
        v35 = sub_29E74ECA8();
        v36 = v32;
        v37 = v35;
        v31(v34, v36);
        if (v37)
        {
          sub_29E745BC0(v22, v45, type metadata accessor for BreathingDisturbancesData);
          v38 = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29E6DBEC4(0, *(v38 + 16) + 1, 1);
            v38 = v60;
          }

          v41 = *(v38 + 16);
          v40 = *(v38 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_29E6DBEC4(v40 > 1, v41 + 1, 1);
            v38 = v60;
          }

          *(v38 + 16) = v41 + 1;
          v47 = v38;
          sub_29E745BC0(v45, v38 + v43 + v41 * v59, type metadata accessor for BreathingDisturbancesData);
          goto LABEL_5;
        }
      }

      sub_29E745610(v22, type metadata accessor for BreathingDisturbancesData);
LABEL_5:
      v24 += v59;
      if (!--v23)
      {
        return v47;
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E742FF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v150 = a3;
  v151 = a1;
  v145 = *v3;
  v6 = sub_29E752098();
  v148 = *(v6 - 8);
  v149 = v6;
  v7 = *(v148 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v129[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v134 = &v129[-v12];
  MEMORY[0x2A1C7C4A8](v11);
  v132 = &v129[-v13];
  v14 = sub_29E74EE68();
  v139 = *(v14 - 8);
  v140 = v14;
  v15 = *(v139 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v137 = &v129[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E66BE0C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v138 = &v129[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_29E74ED28();
  v141 = *(v144 - 8);
  v20 = *(v141 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v144);
  v136 = &v129[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v21);
  v131 = &v129[-v23];
  v24 = type metadata accessor for BreathingDisturbancesData(0);
  v152 = *(v24 - 8);
  v25 = *(v152 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v28 = &v129[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x2A1C7C4A8](v26);
  v31 = &v129[-v30];
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v135 = &v129[-v33];
  v34 = MEMORY[0x2A1C7C4A8](v32);
  v146 = &v129[-v35];
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v38 = &v129[-v37];
  v39 = MEMORY[0x2A1C7C4A8](v36);
  v41 = &v129[-v40];
  v42 = MEMORY[0x2A1C7C4A8](v39);
  v143 = &v129[-v43];
  MEMORY[0x2A1C7C4A8](v42);
  v147 = &v129[-v44];
  sub_29E745544(0, &qword_2A1A7CF08, MEMORY[0x29EDC20F8], MEMORY[0x29EDC9C68]);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v45 - 8);
  v48 = &v129[-v47];
  sub_29E750F08();
  v49 = sub_29E750AE8();
  (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  v50 = v151;
  v151 = sub_29E750EF8();
  v133 = a2;
  v142 = v4;
  v51 = sub_29E742B00(a2);
  v52 = sub_29E745798(v51);
  v53 = sub_29E745A10(v52);

  if (v53 == 4)
  {
    v54 = v150;

    sub_29E752048();
    v55 = sub_29E752088();
    v56 = sub_29E7546C8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v153[0] = v58;
      *v57 = 136446210;
      v59 = sub_29E755178();
      v61 = sub_29E6B9C90(v59, v60, v153);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_29E5ED000, v55, v56, "[%{public}s] Could not get highlight classification based on the provided data.", v57, 0xCu);
      sub_29E5FECBC(v58);
      MEMORY[0x29ED98410](v58, -1, -1);
      MEMORY[0x29ED98410](v57, -1, -1);
    }

    (*(v148 + 8))(v10, v149);
    v62 = v54;
LABEL_15:
    v104 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
    return (*(*(v104 - 8) + 56))(v62, 1, 1, v104);
  }

  v130 = v53;
  v63 = *(v51 + 16);
  if (!v63)
  {

    v96 = v134;
    sub_29E752048();
    v97 = sub_29E752088();
    v98 = sub_29E7546C8();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v153[0] = v100;
      *v99 = 136446210;
      v101 = sub_29E755178();
      v103 = sub_29E6B9C90(v101, v102, v153);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_29E5ED000, v97, v98, "[%{public}s] Could not get highlight max/min values.", v99, 0xCu);
      sub_29E5FECBC(v100);
      MEMORY[0x29ED98410](v100, -1, -1);
      MEMORY[0x29ED98410](v99, -1, -1);
    }

    (*(v148 + 8))(v96, v149);
    v62 = v150;
    goto LABEL_15;
  }

  v64 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v65 = v51 + v64;
  result = sub_29E7459AC(v51 + v64, v41);
  if (v63 == 1)
  {
    v67 = v41;
    v68 = v143;
    sub_29E745BC0(v67, v143, type metadata accessor for BreathingDisturbancesData);
    v69 = v147;
    sub_29E745BC0(v68, v147, type metadata accessor for BreathingDisturbancesData);
    sub_29E7459AC(v51 + v64, v31);
    v70 = v144;
LABEL_8:

    v71 = v135;
    sub_29E745BC0(v31, v135, type metadata accessor for BreathingDisturbancesData);
    v72 = v71;
    v73 = v146;
    sub_29E745BC0(v72, v146, type metadata accessor for BreathingDisturbancesData);
    v74 = *(v24 + 20);
    v75 = *&v69[v74];
    v76 = *&v73[v74];
    v77 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
    v79 = v139;
    v78 = v140;
    v80 = v137;
    (*(v139 + 104))(v137, *MEMORY[0x29EDB9CC8], v140);
    v81 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
    v82 = v142;
    v83 = v70;
    v84 = v136;
    sub_29E74EDD8();
    v85 = v138;
    sub_29E74EE48();
    v86 = v141;
    v87 = v84;
    v88 = v83;
    (*(v141 + 8))(v87, v83);
    (*(v79 + 8))(v80, v78);
    if ((*(v86 + 48))(v85, 1, v83) == 1)
    {
      v90 = v146;
      v89 = v147;
      sub_29E745610(v85, sub_29E66BE0C);
      v91 = v132;
      sub_29E752048();
      v92 = sub_29E752088();
      v93 = sub_29E7546B8();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_29E5ED000, v92, v93, "Could not create new date from components", v94, 2u);
        MEMORY[0x29ED98410](v94, -1, -1);
      }

      (*(v148 + 8))(v91, v149);
      sub_29E745610(v90, type metadata accessor for BreathingDisturbancesData);
      sub_29E745610(v89, type metadata accessor for BreathingDisturbancesData);
      v95 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
      return (*(*(v95 - 8) + 56))(v150, 1, 1, v95);
    }

    else
    {
      v107 = v85;
      v108 = *(v86 + 32);
      v109 = v131;
      v108(v131, v107, v83);
      v110 = v82 + v77;
      v111 = v130;
      sub_29E743D28(v110, v82 + v81, v130, &unk_2A24FD420, &unk_2A24FD470, &unk_2A24FD4C0, &unk_2A24FD510);
      v113 = v112;
      v152 = v114;
      v149 = sub_29E745670(v111);
      v116 = v115;
      v117 = sub_29E743EF4();
      v119 = v118;
      sub_29E745610(v146, type metadata accessor for BreathingDisturbancesData);
      sub_29E745610(v147, type metadata accessor for BreathingDisturbancesData);
      v120 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
      v121 = v150;
      v108(v150 + *(v120 + 44), v109, v88);
      v122 = v152;
      *v121 = v151;
      v121[1] = v113;
      v123 = v149;
      v121[2] = v122;
      v121[3] = v123;
      v121[4] = v116;
      v121[5] = v117;
      v124 = v133;
      v121[6] = v119;
      v121[7] = v124;
      v121[8] = v75;
      v121[9] = v76;
      (*(*(v120 - 8) + 56))(v121, 0, 1, v120);
    }
  }

  else
  {
    v145 = v64;
    for (i = 1; i != v63; ++i)
    {
      if (i >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v106 = *(v152 + 72);
      sub_29E7459AC(v65 + v106 * i, v38);
      if (*&v41[*(v24 + 20)] >= *&v38[*(v24 + 20)])
      {
        result = sub_29E745610(v38, type metadata accessor for BreathingDisturbancesData);
      }

      else
      {
        sub_29E745610(v41, type metadata accessor for BreathingDisturbancesData);
        result = sub_29E745BC0(v38, v41, type metadata accessor for BreathingDisturbancesData);
      }
    }

    v125 = v41;
    v126 = v143;
    sub_29E745BC0(v125, v143, type metadata accessor for BreathingDisturbancesData);
    v69 = v147;
    sub_29E745BC0(v126, v147, type metadata accessor for BreathingDisturbancesData);
    result = sub_29E7459AC(v65, v31);
    v70 = v144;
    v127 = v51 + v145 + v106;
    v128 = 1;
    while (v128 < *(v51 + 16))
    {
      sub_29E7459AC(v127, v28);
      if (*&v28[*(v24 + 20)] >= *&v31[*(v24 + 20)])
      {
        result = sub_29E745610(v28, type metadata accessor for BreathingDisturbancesData);
      }

      else
      {
        sub_29E745610(v31, type metadata accessor for BreathingDisturbancesData);
        result = sub_29E745BC0(v28, v31, type metadata accessor for BreathingDisturbancesData);
      }

      ++v128;
      v127 += v106;
      if (v63 == v128)
      {
        goto LABEL_8;
      }
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

void sub_29E743D28(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_29E74EC98();
  v13 = sub_29E74EE08();
  v14 = [v12 hk:v13 morningIndexWithCalendar:?];

  v15 = v14 % 3;
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (v15 < *(a5 + 16))
        {
          v16 = a5 + 16 * v15;
          goto LABEL_16;
        }

LABEL_26:
        __break(1u);
        return;
      }

      goto LABEL_22;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < *(a6 + 16))
      {
        v16 = a6 + 16 * v15;
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (a3)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < *(a4 + 16))
      {
        v16 = a4 + 16 * v15;
        goto LABEL_16;
      }

      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 >= *(a7 + 16))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = a7 + 16 * v15;
LABEL_16:
  v18 = *(v16 + 32);
  v17 = *(v16 + 40);
  v19 = qword_2A1A7D6F0;

  if (v19 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
}

id sub_29E743EF4()
{
  v46[1] = *v0;
  v1 = sub_29E752098();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v49 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74EE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66BE0C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74ED28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v48 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = v46 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v47 = v46 - v21;
  (*(v5 + 104))(v8, *MEMORY[0x29EDB9CB8], v4);
  v22 = v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
  v46[2] = *(type metadata accessor for BreathingDisturbancesHighlightDateModel() + 24);
  v46[3] = v22;
  sub_29E74E828();
  v23 = v13;
  sub_29E74EE48();
  v24 = *(v14 + 8);
  v24(v20, v23);
  v25 = v4;
  v26 = v14;
  (*(v5 + 8))(v8, v25);
  if ((*(v14 + 48))(v12, 1, v23) == 1)
  {
    sub_29E745610(v12, sub_29E66BE0C);
    v27 = v49;
    sub_29E752058();
    v28 = sub_29E752088();
    v29 = sub_29E7546C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136446210;
      v32 = sub_29E755178();
      v34 = sub_29E6B9C90(v32, v33, &v52);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] Could not get Highlight Description Start Date", v30, 0xCu);
      sub_29E5FECBC(v31);
      MEMORY[0x29ED98410](v31, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    (*(v50 + 8))(v27, v51);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    return sub_29E74E9D8();
  }

  else
  {
    v36 = *(v14 + 32);
    v37 = v47;
    v36(v47, v12, v23);
    sub_29E74E7F8();
    v38 = sub_29E74ECB8();
    v39 = v24;
    v24(v20, v23);
    v40 = v48;
    if (v38)
    {
      sub_29E74E7F8();
    }

    else
    {
      (*(v26 + 16))(v48, v37, v23);
    }

    result = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
    if (result)
    {
      v41 = result;
      v42 = sub_29E74EC98();
      v43 = sub_29E74EC98();
      v44 = [v41 stringFromDate:v42 toDate:v43];

      v45 = sub_29E7541D8();
      v39(v40, v23);
      v39(v37, v23);
      return v45;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29E744514()
{
  v1 = *(v0 + 24);
  sub_29E751758();
  v2 = OBJC_IVAR____TtCC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor7Planner_signals;
  v3 = sub_29E751EA8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E7445C0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  swift_getObjectType();
  v3 = *(*(v1 + 16) + 8);
  return sub_29E751E48();
}

uint64_t sub_29E744608@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E74465C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor7Planner_signals;
  v4 = sub_29E751EA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E7446D4()
{
  v1 = *v0;
  sub_29E745D6C();
  v2 = v0[3];
  v3 = v0[4];
  v6[3] = swift_getObjectType();
  v6[4] = *(v3 + 8);
  v6[0] = v2;
  v4 = *(*(v3 + 16) + 8);
  swift_unknownObjectRetain_n();
  sub_29E751F38();
  sub_29E751758();

  return sub_29E5FECBC(v6);
}

uint64_t sub_29E7447CC()
{
  v0 = sub_29E751ED8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E751EF8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29E751F28();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E745544(0, &qword_2A1A7BD18, MEMORY[0x29EDC34F0], MEMORY[0x29EDC9E90]);
  v9 = *(sub_29E751EC8() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E762F30;
  sub_29E751F18();
  (*(v1 + 104))(v4, *MEMORY[0x29EDC3500], v0);
  sub_29E751EE8();
  (*(v1 + 8))(v4, v0);
  sub_29E751EB8();
  return v12;
}

uint64_t sub_29E744A64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E744EEC(&qword_2A1A7C438, type metadata accessor for BreathingDisturbancesHighlightExecutor.Planner);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E744B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E744EEC(&qword_2A1A7C438, type metadata accessor for BreathingDisturbancesHighlightExecutor.Planner);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E744BF8()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  sub_29E745610(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel, type metadata accessor for BreathingDisturbancesHighlightDateModel);
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
  v3 = sub_29E74EE78();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29E744CF0()
{
  result = type metadata accessor for BreathingDisturbancesHighlightDateModel();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29E74EE78();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E744DFC()
{
  result = sub_29E751EA8();
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

uint64_t sub_29E744EEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E744F34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29E605728;

  return sub_29E74007C();
}

uint64_t sub_29E744FC0(uint64_t a1)
{
  v3 = sub_29E751EA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) profileIdentifier];
  v9 = *(v4 + 16);
  v15 = *(v1 + 16);
  v9(v7, a1, v3);
  v10 = type metadata accessor for BreathingDisturbancesHighlightExecutor.Planner(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v15;
  (*(v4 + 32))(v13 + OBJC_IVAR____TtCC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor7Planner_signals, v7, v3);
  swift_unknownObjectRetain();
  return v13;
}

uint64_t sub_29E74510C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E744EEC(qword_2A1A7C370, type metadata accessor for BreathingDisturbancesHighlightExecutor);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

char *sub_29E74520C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a4;
  v32 = a2;
  v35 = sub_29E74ED28();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v35);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BreathingDisturbancesHighlightDateModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74EDB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E74EE78();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v32;
  *(v4 + 2) = a1;
  *(v4 + 3) = v23;
  *(v4 + 4) = a3;
  (*(v14 + 104))(v17, *MEMORY[0x29EDB9C78], v13);
  swift_unknownObjectRetain();
  v24 = a3;
  sub_29E74EDC8();
  (*(v14 + 8))(v17, v13);
  v25 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
  (*(v19 + 32))(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar], v22, v18);
  v26 = v33;
  v28 = v35;
  v27 = v36;
  (*(v7 + 16))(v33, v36, v35);
  (*(v19 + 16))(v22, &v4[v25], v18);
  v29 = v34;
  sub_29E736A84(v26, v22, v34);
  (*(v7 + 8))(v27, v28);
  sub_29E745BC0(v29, &v4[OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel], type metadata accessor for BreathingDisturbancesHighlightDateModel);
  return v4;
}

void sub_29E745544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E745610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E745670(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
LABEL_3:
      if (qword_2A1A7D6F0 == -1)
      {
        return sub_29E74E9D8();
      }

      goto LABEL_8;
    }
  }

  else if (a1)
  {
    goto LABEL_3;
  }

  if (qword_2A1A7D6F0 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_29E74E9D8();
}

char *sub_29E745798(uint64_t a1)
{
  v2 = type metadata accessor for BreathingDisturbancesData(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x29EDCA190];
  }

  v8 = objc_opt_self();
  v9 = *(v2 + 20);
  v10 = objc_opt_self();
  v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  v13 = MEMORY[0x29EDCA190];
  v23 = v8;
  do
  {
    sub_29E7459AC(v11, v6);
    v14 = [v8 countUnit];
    v15 = [v10 quantityWithUnit:v14 doubleValue:*&v6[v9]];

    v16 = sub_29E754A98();
    v18 = v17;
    sub_29E745610(v6, type metadata accessor for BreathingDisturbancesData);
    if ((v18 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_29E6DB82C(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = sub_29E6DB82C((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      *&v13[8 * v20 + 32] = v16;
      v8 = v23;
    }

    v11 += v12;
    --v7;
  }

  while (v7);
  return v13;
}

uint64_t sub_29E7459AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreathingDisturbancesData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E745A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 4;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x29EDCA190];
  v4 = (a1 + 32);
  v5 = *(a1 + 16);
  do
  {
    v8 = *v4++;
    if (v8 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E6DBF14(0, *(v3 + 16) + 1, 1);
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_29E6DBF14((v6 > 1), v7 + 1, 1);
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 8 * v7 + 32) = 1;
    }

    --v5;
  }

  while (v5);
  v9 = *(v3 + 16);

  v10 = MEMORY[0x29EDCA190];
  do
  {
    if (!*v2++)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E6DBF14(0, *(v10 + 16) + 1, 1);
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29E6DBF14((v11 > 1), v12 + 1, 1);
      }

      *(v10 + 16) = v12 + 1;
      *(v10 + 8 * v12 + 32) = 0;
    }

    --v1;
  }

  while (v1);
  v14 = *(v10 + 16);

  if (v9 >= v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if (!v14)
  {
    v15 = 0;
  }

  if (v9)
  {
    return v15;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_29E745BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E745C28()
{
  if (!qword_2A1A7BDD0)
  {
    sub_29E745544(255, &qword_2A1A7BDE8, sub_29E7455A8, MEMORY[0x29EDC9C68]);
    v0 = sub_29E7544A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BDD0);
    }
  }
}

uint64_t sub_29E745CC0()
{
  sub_29E745C28();
  v1 = *(*(v0 - 8) + 80);

  return sub_29E742060();
}

uint64_t sub_29E745D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E745D6C()
{
  v0 = sub_29E751E68();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E67905C(0, &qword_2A1A7BCE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E764160;
  sub_29E751E58();
  sub_29E745544(0, &qword_2A1A7BD10, sub_29E745F84, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E762F30;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  sub_29E66D198();
  *(inited + 32) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E6D5A64(inited);
  swift_setDeallocating();
  v5 = *(inited + 16);
  swift_arrayDestroy();
  *(v3 + 56) = sub_29E750028();
  *(v3 + 64) = sub_29E744EEC(&unk_2A1A7CF40, MEMORY[0x29EDC3BE8]);
  sub_29E5FEBF4((v3 + 32));
  sub_29E750018();
  v6 = sub_29E751E88();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_29E751E78();
  return v2;
}

unint64_t sub_29E745F84()
{
  result = qword_2A1A7CEE0;
  if (!qword_2A1A7CEE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7CEE0);
  }

  return result;
}

uint64_t sub_29E745FE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29E746030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E746094@<X0>(void *a1@<X8>)
{
  v3 = sub_29E74F7F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x29EDC6B20])
  {
    a1[3] = &type metadata for SleepHygieneArticleDataProvider;
    a1[4] = sub_29E6C13F8();
    result = sub_29E6C144C();
LABEL_13:
    a1[5] = result;
    return result;
  }

  if (v8 == *MEMORY[0x29EDC6B28])
  {
    a1[3] = &type metadata for SleepImportanceArticleDataProvider;
    a1[4] = sub_29E6C14A0();
    result = sub_29E6C14F4();
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x29EDC6B18])
  {
    a1[3] = &type metadata for SleepStagesArticleDataProvider;
    a1[4] = sub_29E6C1290();
    result = sub_29E6C12E4();
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x29EDC6B08])
  {
    a1[3] = &type metadata for SleepApneaArticleDataProvider;
    a1[4] = sub_29E6C15F0();
    result = sub_29E6C1644();
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x29EDC6B30])
  {
    a1[3] = &type metadata for SleepApneaNotificationArticleDataProvider;
    a1[4] = sub_29E6C1548();
    result = sub_29E6C159C();
    goto LABEL_13;
  }

  if (v8 == *MEMORY[0x29EDC6B10])
  {
    a1[3] = &type metadata for SleepScoreArticleDataProvider;
    a1[4] = sub_29E6C1698();
    result = sub_29E6C16EC();
    goto LABEL_13;
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

uint64_t sub_29E7462EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E746638();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74F7F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29E74F7D8();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_29E746690(v14);
    sub_29E752048();

    v20 = sub_29E752088();
    v21 = sub_29E7546A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_29E6B9C90(0xD00000000000001ELL, 0x800000029E76E670, &v26);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_29E6B9C90(a1, a2, &v26);
      _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Article identifier %{public}s could not be found", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v23, -1, -1);
      MEMORY[0x29ED98410](v22, -1, -1);
    }

    result = (*(v7 + 8))(v10, v6);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_29E746094(a3);
    return (*(v16 + 8))(v19, v15);
  }

  return result;
}

void sub_29E746638()
{
  if (!qword_2A1859CC8)
  {
    sub_29E74F7F8();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859CC8);
    }
  }
}

uint64_t sub_29E746690(uint64_t a1)
{
  sub_29E746638();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E74674C()
{
  ObjectType = swift_getObjectType();
  v82 = sub_29E750698();
  v79 = *(v82 - 8);
  v0 = *(v79 + 64);
  v1 = MEMORY[0x2A1C7C4A8](v82);
  v78 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v1);
  v77 = &v68 - v3;
  sub_29E747E30(0, &qword_2A185AC88, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v75 = &v68 - v6;
  sub_29E747E30(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v84 = &v68 - v11;
  v73 = sub_29E752098();
  v72 = *(v73 - 1);
  v12 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v73);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E7515A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v76 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v74 = &v68 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v68 - v22;
  sub_29E7518B8();
  sub_29E751578();
  v26 = *(v16 + 8);
  v25 = v16 + 8;
  v24 = v26;
  v26(v23, v15);
  sub_29E601938(v87, v88);
  v27 = sub_29E751528();
  v28 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v29 = sub_29E754198();
  v30 = [v28 initWithIdentifier:v29 healthStore:v27];

  sub_29E5FECBC(v87);
  v31 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA758] sleepStore:v30];
  sub_29E72F4DC();
  if (sub_29E754A78())
  {
    v80 = v24;
    v81 = v25;
    v70 = v15;
    sub_29E752068();
    v32 = sub_29E752088();
    v33 = sub_29E7546C8();
    v34 = os_log_type_enabled(v32, v33);
    v69 = v31;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v87[0] = v36;
      *v35 = 136446466;
      v37 = sub_29E755178();
      v39 = sub_29E6B9C90(v37, v38, v87);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_29E6B9C90(0x2928706154646964, 0xE800000000000000, v87);
      _os_log_impl(&dword_29E5ED000, v32, v33, "[%{public}s.%{public}s]: Presenting sleep apnea onboarding", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v35, -1, -1);
    }

    (*(v72 + 8))(v14, v73);
    v40 = v80;
    v41 = v75;
    v42 = v30;
    sub_29E7518B8();
    sub_29E751578();
    v43 = v70;
    v40(v23, v70);
    sub_29E601938(v87, v88);
    v44 = sub_29E751528();
    v73 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v42 healthDataSource:v44];
    v75 = v42;

    sub_29E5FECBC(v87);
    sub_29E7518B8();
    v45 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
    sub_29E7477A0(&qword_2A1857618, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject);
    sub_29E7477A0(&qword_2A1857620, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject);
    sub_29E751598();
    v40(v23, v43);
    if ((*(*(v45 - 8) + 48))(v41, 1, v45) == 1)
    {
      sub_29E747E84(v41, &qword_2A185AC88, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject);
      v46 = sub_29E74FFA8();
      (*(*(v46 - 8) + 56))(v84, 1, 1, v46);
    }

    else
    {
      v48 = sub_29E74FFA8();
      v49 = *(v48 - 8);
      v50 = v84;
      (*(v49 + 16))(v84, v41, v48);
      sub_29E747EE0(v41);
      (*(v49 + 56))(v50, 0, 1, v48);
    }

    v51 = v78;
    sub_29E6F5CC4(v84, v83);
    v52 = v74;
    sub_29E7518B8();
    sub_29E751578();
    v40(v52, v43);
    sub_29E601938(v87, v88);
    v53 = sub_29E751528();
    v54 = v76;
    sub_29E7518B8();
    sub_29E751578();
    v40(v54, v43);
    sub_29E601938(v86, v86[3]);
    v55 = v77;
    sub_29E751538();
    v56 = v79;
    v57 = v82;
    (*(v79 + 32))(v51, v55, v82);
    v58 = (*(v56 + 88))(v51, v57);
    if (v58 == *MEMORY[0x29EDC1D20])
    {
      v59 = 0;
    }

    else if (v58 == *MEMORY[0x29EDC1D68])
    {
      v59 = 6;
    }

    else if (v58 == *MEMORY[0x29EDC1D80])
    {
      v59 = 3;
    }

    else if (v58 == *MEMORY[0x29EDC1D60])
    {
      v59 = 2;
    }

    else
    {
      (*(v56 + 8))(v51, v82);
      v59 = 7;
    }

    sub_29E5FECBC(v86);
    v60 = type metadata accessor for SleepApneaOnboardingNavigationController();
    v61 = objc_allocWithZone(v60);
    *&v61[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
    v62 = v83;
    sub_29E6F5CC4(v83, &v61[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord]);
    v63 = v73;
    *&v61[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v73;
    *&v61[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v53;
    v61[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = v59;
    v85.receiver = v61;
    v85.super_class = v60;
    v64 = v63;
    v65 = objc_msgSendSuper2(&v85, sel_initWithNibName_bundle_, 0, 0);
    v66 = MEMORY[0x29EDC3A58];
    sub_29E747E84(v62, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    sub_29E5FECBC(v87);
    sub_29E718D68();
    sub_29E7195BC();

    [v65 setModalPresentationStyle_];
    sub_29E7518B8();
    v67 = sub_29E751588();
    v80(v23, v43);
    [v67 presentViewController:v65 animated:1 completion:0];

    return sub_29E747E84(v84, &qword_2A1A7CF50, v66);
  }

  else
  {
    sub_29E7518B8();
    sub_29E747294(v30);

    return (v24)(v23, v15);
  }
}

uint64_t sub_29E747294(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E7515A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v12 = sub_29E752088();
  v29 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v29))
  {
    v13 = swift_slowAlloc();
    v26 = v12;
    v14 = v13;
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v14 = 136446466;
    v15 = sub_29E755178();
    ObjectType = v7;
    v17 = sub_29E6B9C90(v15, v16, v31);
    v27 = v8;
    v18 = v2;
    v19 = v17;

    *(v14 + 4) = v19;
    v2 = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E760F70, v31);
    v20 = v26;
    _os_log_impl(&dword_29E5ED000, v26, v29, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt to encourage onboarding.", v14, 0x16u);
    v21 = v28;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);

    (*(v27 + 8))(v11, ObjectType);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_29E751578();
  v31[0] = a1;
  v22 = a1;
  sub_29E7518B8();
  v23 = sub_29E751588();
  (*(v3 + 8))(v6, v2);
  sub_29E72E8D0(v23);

  return sub_29E643FF4(v31);
}

uint64_t sub_29E7475D0(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29E7476D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaPromotionFeedItemViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E7477A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E7477E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_29E74FFA8();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E748088(0, &qword_2A185ACA0, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v22 = *(v7 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E747FD0();
  sub_29E755128();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_29E7477A0(&qword_2A1857B18, MEMORY[0x29EDC3A58]);
    sub_29E754F58();
    (*(v17 + 8))(v11, v8);
    (*(v18 + 32))(v15, v24, v4);
    sub_29E748024(v15, v21);
  }

  return sub_29E5FECBC(a1);
}

uint64_t sub_29E747A98()
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](0);
  return sub_29E755108();
}

uint64_t sub_29E747B04()
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](0);
  return sub_29E755108();
}

uint64_t sub_29E747B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E755028();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E747BF8(uint64_t a1)
{
  v2 = sub_29E747FD0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E747C34(uint64_t a1)
{
  v2 = sub_29E747FD0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E747C88(void *a1)
{
  sub_29E748088(0, &qword_2A185ACB0, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_29E601938(a1, a1[3]);
  sub_29E747FD0();
  sub_29E755138();
  sub_29E74FFA8();
  sub_29E7477A0(&qword_2A1857B68, MEMORY[0x29EDC3A58]);
  sub_29E754FB8();
  return (*(v4 + 8))(v7, v3);
}

void sub_29E747E30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E747E84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E747E30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E747EE0(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E747F64()
{
  result = sub_29E74FFA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E747FD0()
{
  result = qword_2A185ACA8;
  if (!qword_2A185ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACA8);
  }

  return result;
}

uint64_t sub_29E748024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E748088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E747FD0();
    v7 = a3(a1, &type metadata for SleepApneaPromotionActionHandlerUserDataObject.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepApneaPromotionActionHandlerUserDataObject.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SleepApneaPromotionActionHandlerUserDataObject.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29E7481D0()
{
  result = qword_2A185ACB8;
  if (!qword_2A185ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACB8);
  }

  return result;
}

unint64_t sub_29E748228()
{
  result = qword_2A185ACC0;
  if (!qword_2A185ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACC0);
  }

  return result;
}

unint64_t sub_29E748280()
{
  result = qword_2A185ACC8;
  if (!qword_2A185ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACC8);
  }

  return result;
}

uint64_t type metadata accessor for SleepRoomDisabledScheduleSection()
{
  result = qword_2A185ACD0;
  if (!qword_2A185ACD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E748360()
{
  v1 = *v0;
  v2 = sub_29E74ED88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v18[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7491E4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v7 = *(sub_29E750CA8() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v17 = xmmword_29E762F30;
  *(v10 + 16) = xmmword_29E762F30;
  sub_29E693C6C(0, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  *(v11 + 56) = sub_29E750EE8();
  *(v11 + 64) = sub_29E74919C(&qword_2A1859540, MEMORY[0x29EDC23F8]);
  v12 = sub_29E5FEBF4((v11 + 32));
  sub_29E748644(v12);
  sub_29E750C78();
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v18, "MutableArray<");
  HIWORD(v18[1]) = -4864;
  sub_29E74ED78();
  v13 = sub_29E74ED48();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x29ED96C20](v13, v15);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

uint64_t sub_29E748644@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_29E751908();
  v59 = *(v1 - 8);
  v60 = v1;
  v2 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v58 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F698();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v53 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29E7491E4(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v55 = v43 - v10;
  v11 = sub_29E750DC8();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v50 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7491E4(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v7);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v48 = v43 - v16;
  v49 = sub_29E752108();
  v47 = *(v49 - 8);
  v17 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v49);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E7520C8();
  v20 = *(v46 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v46);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29E752258();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v28 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E752228();
  sub_29E74E9D8();
  v44 = v28;
  sub_29E752198();
  v43[1] = "DISABLED_SLEEP_SCHEDULE_DETAIL";
  v62[3] = v24;
  v62[4] = MEMORY[0x29EDC7800];
  v29 = sub_29E5FEBF4(v62);
  v45 = v25;
  (*(v25 + 16))(v29, v28, v24);
  sub_29E7491E4(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v30 = *(sub_29E752128() - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v33 = v46;
  (*(v20 + 104))(v23, *MEMORY[0x29EDC7768], v46);
  v34 = sub_29E7520D8();
  (*(*(v34 - 8) + 56))(v48, 1, 1, v34);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v47 + 8))(v19, v49);
  (*(v20 + 8))(v23, v33);
  *(swift_allocObject() + 16) = v54;
  v36 = v50;
  v35 = v51;
  *v50 = 1;
  (*(v35 + 104))(v36, *MEMORY[0x29EDC22C0], v52);
  v37 = sub_29E752178();
  (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
  v39 = v56;
  v38 = v57;
  v40 = v24;
  v41 = v53;
  (*(v56 + 104))(v53, *MEMORY[0x29EDC6AD0], v57);
  sub_29E754298();
  (*(v39 + 8))(v41, v38);
  (*(v59 + 104))(v58, *MEMORY[0x29EDC2A38], v60);
  sub_29E750ED8();
  return (*(v45 + 8))(v44, v40);
}

uint64_t sub_29E748E98()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  v5 = sub_29E750E68();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E748FC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v4 = sub_29E750458();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_29E750438();
  a1[3] = v4;
  result = sub_29E74919C(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_29E74919C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E7491E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E749248(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E749300(a1);
}

uint64_t sub_29E749300(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v41 - v10;
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  v14 = os_log_type_enabled(v12, v13);
  v42 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41 = v9;
    v17 = v4;
    v18 = v5;
    v19 = v16;
    v46[0] = v16;
    *v15 = 136446210;
    v20 = sub_29E755178();
    v22 = sub_29E6B9C90(v20, v21, v46);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Sleep schedule off tapped (moving to full schedule edit)", v15, 0xCu);
    sub_29E5FECBC(v19);
    v23 = v19;
    v5 = v18;
    v4 = v17;
    v9 = v41;
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  v24 = *(v5 + 8);
  v24(v11, v4);
  v45 = a1;
  sub_29E6E9BB0();
  sub_29E609CF8(0, &qword_2A18569E0);
  v25 = a1;
  if (swift_dynamicCast())
  {
    sub_29E60A040(v43, v46);
    sub_29E601938(v46, v46[3]);
    sub_29E74F8C8();
    return sub_29E5FECBC(v46);
  }

  else
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_29E6093D0(v43);
    sub_29E752048();
    v27 = v25;
    v28 = sub_29E752088();
    v29 = sub_29E7546C8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v30 = 136446466;
      v31 = sub_29E755178();
      v33 = sub_29E6B9C90(v31, v32, v46);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = v27;
      v35 = [v34 description];
      v36 = sub_29E7541D8();
      v42 = v5;
      v38 = v37;

      v39 = sub_29E6B9C90(v36, v38, v46);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] Unable to present full schedule edit on unknown view controller: %{public}s", v30, 0x16u);
      v40 = v41;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v40, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    return (v24)(v9, v4);
  }
}

id sub_29E749704()
{
  sub_29E66D198();
  result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E74974C()
{
  v2 = *v0;
  v3 = v0[1];
  return sub_29E7510F8();
}

uint64_t sub_29E7497A8(uint64_t a1)
{
  v2 = sub_29E7497F8();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29E7497F8()
{
  result = qword_2A185ACE8;
  if (!qword_2A185ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACE8);
  }

  return result;
}

uint64_t sub_29E74984C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_29E7498A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SleepTrackingOnboardingTileActionHandler()
{
  result = qword_2A1A7CB40;
  if (!qword_2A1A7CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E7499A8(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_29E7515A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7518B8();
  sub_29E751578();
  (*(v5 + 8))(v8, v4);
  sub_29E601938(v20, v20[3]);
  v9 = sub_29E751528();
  sub_29E5FECBC(v20);
  v10 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v11 = v9;
  v12 = sub_29E754198();
  v13 = [v10 initWithIdentifier:v12 healthStore:v11 options:a1];

  v14 = sub_29E74F4C8();
  v15 = v11;
  v16 = v13;
  v17 = sub_29E74F4B8();
  v18 = MEMORY[0x29EDC6A70];
  a2[3] = v14;
  a2[4] = v18;

  *a2 = v17;
}

uint64_t sub_29E749B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v51 = a2;
  v50 = sub_29E7515A8();
  v57 = *(v50 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E74F6D8();
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v54);
  v55 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F4A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v44 - v14;
  v47 = sub_29E752098();
  v46 = *(v47 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v47);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v19 = *(v9 + 16);
  v53 = a1;
  v19(v15, a1, v8);
  v20 = sub_29E752088();
  v21 = sub_29E7546C8();
  v22 = os_log_type_enabled(v20, v21);
  v49 = v9 + 16;
  v48 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v23 = 136446466;
    *(v23 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E762110, v62);
    *(v23 + 12) = 2082;
    v19(v13, v15, v8);
    v24 = sub_29E7541F8();
    v45 = v13;
    v26 = v25;
    (*(v9 + 8))(v15, v8);
    v27 = sub_29E6B9C90(v24, v26, v62);
    v13 = v45;

    *(v23 + 14) = v27;
    _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Presenting sleep onboarding with context %{public}s", v23, 0x16u);
    v28 = v44;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v28, -1, -1);
    MEMORY[0x29ED98410](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  (*(v46 + 8))(v18, v47);
  sub_29E6D6704(&v60);
  if (v61)
  {
    sub_29E5FAEE4(&v60, v62);
    v29 = v48;
  }

  else
  {
    sub_29E7499A8(0, v62);
    v29 = v48;
    if (v61)
    {
      sub_29E74B1B8(&v60, sub_29E63DE6C);
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  sub_29E602E20(v62, &v60);
  v29(v13, v53, v8);
  sub_29E74B218(0, &qword_2A1859E30, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9E90]);
  v31 = *(v52 + 72);
  v32 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E762F30;
  v34 = v30;
  sub_29E74F6C8();
  v59 = v33;
  sub_29E74B27C(&qword_2A1859E38, MEMORY[0x29EDC6AD8]);
  sub_29E72F528();
  sub_29E74B27C(&qword_2A1859E48, sub_29E72F528);
  sub_29E754C58();
  v35 = sub_29E74F6E8();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_29E74F6B8();
  v38 = v56;
  sub_29E7518B8();
  v39 = sub_29E751588();
  (*(v57 + 8))(v38, v50);
  v40 = swift_allocObject();
  v41 = v51;
  v42 = v58;
  *(v40 + 16) = v51;
  *(v40 + 24) = v42;
  sub_29E5F51BC(v41);
  sub_29E74F6A8();

  return sub_29E5FECBC(v62);
}

uint64_t sub_29E74A254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v51 = a2;
  v50 = sub_29E7515A8();
  v57 = *(v50 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E74F6D8();
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v54);
  v55 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F4A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v44 - v14;
  v47 = sub_29E752098();
  v46 = *(v47 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v47);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v19 = *(v9 + 16);
  v53 = a1;
  v19(v15, a1, v8);
  v20 = sub_29E752088();
  v21 = sub_29E7546C8();
  v22 = os_log_type_enabled(v20, v21);
  v49 = v9 + 16;
  v48 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v23 = 136446466;
    *(v23 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E76EB40, v62);
    *(v23 + 12) = 2082;
    v19(v13, v15, v8);
    v24 = sub_29E7541F8();
    v45 = v13;
    v26 = v25;
    (*(v9 + 8))(v15, v8);
    v27 = sub_29E6B9C90(v24, v26, v62);
    v13 = v45;

    *(v23 + 14) = v27;
    _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Presenting sleep onboarding with context %{public}s", v23, 0x16u);
    v28 = v44;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v28, -1, -1);
    MEMORY[0x29ED98410](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  (*(v46 + 8))(v18, v47);
  sub_29E74A950(&v60);
  if (v61)
  {
    sub_29E5FAEE4(&v60, v62);
    v29 = v48;
  }

  else
  {
    sub_29E7499A8(0, v62);
    v29 = v48;
    if (v61)
    {
      sub_29E74B1B8(&v60, sub_29E63DE6C);
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  sub_29E602E20(v62, &v60);
  v29(v13, v53, v8);
  sub_29E74B218(0, &qword_2A1859E30, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9E90]);
  v31 = *(v52 + 72);
  v32 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E762F30;
  v34 = v30;
  sub_29E74F6C8();
  v59 = v33;
  sub_29E74B27C(&qword_2A1859E38, MEMORY[0x29EDC6AD8]);
  sub_29E72F528();
  sub_29E74B27C(&qword_2A1859E48, sub_29E72F528);
  sub_29E754C58();
  v35 = sub_29E74F6E8();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_29E74F6B8();
  v38 = v56;
  sub_29E7518B8();
  v39 = sub_29E751588();
  (*(v57 + 8))(v38, v50);
  v40 = swift_allocObject();
  v41 = v51;
  v42 = v58;
  *(v40 + 16) = v51;
  *(v40 + 24) = v42;
  sub_29E5F51BC(v41);
  sub_29E74F6A8();

  return sub_29E5FECBC(v62);
}

double sub_29E74A950@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_2A1A7CB60;
  swift_beginAccess();
  sub_29E74B2C4(v1 + v3, &v6, sub_29E6A10C0);
  if (*(&v7 + 1) == 1)
  {
    sub_29E74B1B8(&v6, sub_29E6A10C0);
    sub_29E7499A8(0, a1);
    sub_29E74B2C4(a1, &v6, sub_29E63DE6C);
    swift_beginAccess();
    sub_29E6A12E0(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_29E74AA64()
{
  swift_getObjectType();
  v0 = sub_29E74F488();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E750698();
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E7515A8();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29E74F4A8();
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v38 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752098();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = v6;
    v22 = v21;
    v43[0] = v21;
    *v20 = 136446210;
    v23 = sub_29E755178();
    v33 = v3;
    v25 = sub_29E6B9C90(v23, v24, v43);
    v3 = v33;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Onboarding button tapped for sleep tracking", v20, 0xCu);
    sub_29E5FECBC(v22);
    v6 = v32;
    MEMORY[0x29ED98410](v22, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);

    (*(v13 + 8))(v16, v31);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v26 = *MEMORY[0x29EDC67F0];
  sub_29E7518B8();
  sub_29E751578();
  (*(v6 + 8))(v9, v34);
  sub_29E601938(v43, v43[3]);
  v27 = v37;
  sub_29E751538();
  v28 = sub_29E71237C();
  (*(v39 + 8))(v27, v41);
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v26 presentation:v28];

  sub_29E5FECBC(v43);
  (*(v35 + 104))(v3, *MEMORY[0x29EDC6A68], v36);
  v29 = v38;
  sub_29E74F498();
  sub_29E74A254(v29, 0, 0);
  return (*(v40 + 8))(v29, v42);
}

uint64_t sub_29E74AF54(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v9 = &v8[qword_2A1A7CB60];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_29E768E70;
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29E74B0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepTrackingOnboardingTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E74B1B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E74B218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E74B27C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E74B2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E74B32C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t type metadata accessor for SleepApneaEventPDFAlertsChart()
{
  result = qword_2A185ACF0;
  if (!qword_2A185ACF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E74B3E4()
{
  type metadata accessor for SleepApneaEventSummaryViewModel();
  if (v0 <= 0x3F)
  {
    sub_29E74D9E0(319, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
    if (v1 <= 0x3F)
    {
      sub_29E6A85FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E74B4B0@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  sub_29E74D9E0(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v72 = &v61 - v4;
  sub_29E6AC8E0();
  v69 = v5;
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v66 = &v61 - v9;
  v10 = sub_29E74ED28();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v76 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AC948();
  v71 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v70 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DA44();
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DDE0();
  v22 = v21;
  v75 = *(v21 - 8);
  v23 = *(v75 + 8);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DF44();
  v77 = *(v26 - 8);
  v78 = v26;
  v27 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E240();
  v65 = v30;
  v64 = *(v30 - 8);
  v31 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v1;
  sub_29E74DAF4();
  sub_29E74DC88();
  sub_29E752488();
  *&v20[*(v17 + 36)] = 0;
  v34 = sub_29E74DE64();
  sub_29E753698();
  sub_29E5FACA8(v20);
  sub_29E74E048(0);
  v36 = v35;
  v80 = v17;
  v81 = v34;
  v37 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_29E74D97C(&qword_2A185AD78, sub_29E74E048);
  sub_29E753688();
  (*(v75 + 1))(v25, v22);
  sub_29E74E684(0, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
  v41 = v40;
  v80 = v22;
  v81 = v36;
  v82 = OpaqueTypeConformance2;
  v83 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_29E74E3CC();
  v75 = v33;
  v44 = v78;
  sub_29E753678();
  v45 = v29;
  v46 = v74;
  (*(v77 + 8))(v45, v44);
  v47 = *(type metadata accessor for SleepApneaEventSummaryViewModel() + 20);
  sub_29E74EC68();
  sub_29E74D97C(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8]);
  result = sub_29E7540E8();
  if (result)
  {
    v49 = v67;
    v77 = v43;
    v63 = v42;
    v50 = *(v67 + 32);
    v62 = v41;
    v51 = v66;
    v50(v66, v37, v10);
    v52 = v69;
    (*(v49 + 16))(v51 + *(v69 + 48), v46 + v47, v10);
    v53 = v68;
    sub_29E74E464(v51, v68);
    v54 = *(v52 + 48);
    v55 = v70;
    v50(v70, v53, v10);
    v56 = *(v49 + 8);
    v56(v53 + v54, v10);
    sub_29E74E4C8(v51, v53);
    v50((v55 + *(v71 + 36)), (v53 + *(v52 + 48)), v10);
    v56(v53, v10);
    v57 = sub_29E7525D8();
    v58 = v72;
    (*(*(v57 - 8) + 56))(v72, 1, 1, v57);
    v80 = v78;
    v81 = v62;
    v82 = v63;
    v83 = v77;
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    v59 = v65;
    v60 = v75;
    sub_29E7536A8();
    sub_29E74E52C(v58);
    sub_29E74E5B8(v55);
    return (*(v64 + 8))(v60, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E74BCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_29E74ED28();
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E684(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v76 = v57 - v8;
  v60 = sub_29E752568();
  v61 = *(v60 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v60);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DBF0();
  v65 = v12;
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v59 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD088();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v69 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v68 = v57 - v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v63 = v57 - v22;
  MEMORY[0x2A1C7C4A8](v21);
  v75 = v57 - v23;
  sub_29E727BD0();
  v67 = v24;
  v64 = *(v24 - 8);
  v25 = *(v64 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v74 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v77 = v57 - v28;
  sub_29E7544C8();
  v62 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v78 = *(a1 + *(type metadata accessor for SleepApneaEventPDFAlertsChart() + 20));
  sub_29E74D9E0(0, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
  sub_29E727CEC();
  sub_29E74DB68();
  sub_29E727DB4();
  v30 = v29;
  v31 = sub_29E7524B8();

  *&v82 = v31;
  *(&v82 + 1) = MEMORY[0x29EDB8698];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v82 = v30;
  *(&v82 + 1) = MEMORY[0x29EDBCA98];
  *&v83 = OpaqueTypeConformance2;
  *(&v83 + 1) = MEMORY[0x29EDBCA88];
  swift_getOpaqueTypeConformance2();
  sub_29E74D97C(&qword_2A185ADA0, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
  sub_29E753B18();
  sub_29E752F58();
  v33 = a1 + *(type metadata accessor for SleepApneaEventSummaryViewModel() + 20);
  v34 = v58;
  sub_29E74EC68();
  sub_29E7523D8();

  (*(v72 + 8))(v34, v3);
  v35 = v11;
  sub_29E752558();
  if (qword_2A18561F8 != -1)
  {
    swift_once();
  }

  v72 = v3;
  v36 = qword_2A1869268;
  *&v82 = qword_2A1869268;

  v37 = MEMORY[0x29EDBCA98];
  v38 = MEMORY[0x29EDB86E0];
  v39 = MEMORY[0x29EDBCA88];
  v40 = v59;
  v41 = v60;
  sub_29E7522E8();
  v61 = *(v61 + 8);
  (v61)(v35, v41);
  v58 = v35;
  if (qword_2A1856200 != -1)
  {
    swift_once();
  }

  v82 = xmmword_2A1869270;
  v83 = *&qword_2A1869280;
  v84 = qword_2A1869290;
  v78 = v41;
  v79 = v37;
  v80 = v38;
  v81 = v39;
  v57[1] = swift_getOpaqueTypeConformance2();
  v42 = v65;
  sub_29E752318();
  v66 = *(v66 + 8);
  (v66)(v40, v42);
  sub_29E752F58();
  sub_29E7523D8();

  v43 = v58;
  sub_29E752558();
  v78 = v36;
  sub_29E7522E8();

  (v61)(v43, v41);
  v44 = v63;
  sub_29E752318();
  (v66)(v40, v42);
  v45 = v64;
  v46 = v74;
  v47 = v67;
  (*(v64 + 16))(v74, v77, v67);
  v78 = v46;
  v49 = v70;
  v48 = v71;
  v50 = *(v70 + 16);
  v51 = v68;
  v52 = v75;
  v50(v68, v75, v71);
  v79 = v51;
  v53 = v69;
  v50(v69, v44, v48);
  v80 = v53;
  sub_29E71E560(&v78, v73);
  v54 = *(v49 + 8);
  v54(v44, v48);
  v54(v52, v48);
  v55 = *(v45 + 8);
  v55(v77, v47);
  v54(v53, v48);
  v54(v51, v48);
  v55(v74, v47);
}

uint64_t sub_29E74C6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v43 = a2;
  v2 = sub_29E752F78();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E6F0(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v35 = v32 - v7;
  sub_29E74E684(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v32[1] = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v37 = sub_29E7524B8();
  v33 = *(v37 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v37);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727DB4();
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v32[0] = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v36 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v18 = type metadata accessor for SleepApneaEventPDFAlertsChartPoint();
  v19 = *(v18 + 20);
  sub_29E74ED28();
  v20 = v34;
  sub_29E7523D8();

  sub_29E752F58();
  v21 = v20 + *(v18 + 24);
  sub_29E7523D8();

  sub_29E752F58();
  v44 = 0x3FE0000000000000;
  sub_29E7523D8();

  sub_29E7524A8();
  v23 = v40;
  v22 = v41;
  v24 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x29EDBC6F8], v42);
  v25 = MEMORY[0x29EDB8698];
  v26 = v32[0];
  v27 = v37;
  sub_29E7522D8();
  (*(v22 + 8))(v23, v24);
  (*(v33 + 8))(v14, v27);
  v28 = [objc_opt_self() hk_respiratoryKeyColor];
  v29 = sub_29E7538E8();
  v45 = v25;
  v46 = v29;
  v44 = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v39;
  sub_29E7522E8();

  (*(v38 + 8))(v26, v30);
}

uint64_t sub_29E74CC84()
{
  v0 = sub_29E752368();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = sub_29E752418();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752358();
  sub_29E752358();
  sub_29E74E110();
  sub_29E74E184();
  sub_29E7525A8();
}

uint64_t sub_29E74CE10@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  sub_29E74E614();
  v42 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752458();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752478();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E6AD728();
  v39 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v44 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v35 - v14;
  v16 = sub_29E7522A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v35 - v22;
  sub_29E7544C8();
  v40 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v37 = v23;
  sub_29E752298();
  sub_29E752468();
  sub_29E752448();
  sub_29E74E6F0(0, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  sub_29E6AD7B8();
  sub_29E7523B8();
  v24 = *(v17 + 16);
  v24(v21, v23, v16);
  v35 = v15;
  v36 = v21;
  v25 = *(v10 + 16);
  v26 = v39;
  v25(v44, v15, v39);
  v27 = v41;
  v24(v41, v21, v16);
  sub_29E74D97C(&qword_2A1858E20, sub_29E6AD728);
  v28 = v42;
  v29 = *(v42 + 48);
  v30 = v44;
  v25(&v27[v29], v44, v26);
  v31 = v43;
  (*(v17 + 32))(v43, v27, v16);
  (*(v10 + 32))(v31 + *(v28 + 48), &v27[v29], v26);
  v32 = *(v10 + 8);
  v32(v35, v26);
  v33 = *(v17 + 8);
  v33(v37, v16);
  v32(v30, v26);
  v33(v36, v16);
}

double sub_29E74D308@<D0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v2 = sub_29E7535E8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_29E753C48();
  sub_29E752AB8();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = *&v12;
  *(a1 + 64) = v12;
  return result;
}

uint64_t sub_29E74D428()
{
  v0 = sub_29E752398();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = sub_29E752418();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = sub_29E752368();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752358();
  sub_29E752408();
  sub_29E752388();
  sub_29E7522A8();
  sub_29E752588();
}

uint64_t sub_29E74D5E8()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752A58();
  sub_29E752298();
}

uint64_t sub_29E74D6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74D97C(&qword_2A185A3D8, type metadata accessor for SleepApneaEventPDFAlertsChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29E74D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29E74D97C(&qword_2A185A3D8, type metadata accessor for SleepApneaEventPDFAlertsChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29E74D810(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29E74D97C(&qword_2A185AD08, type metadata accessor for SleepApneaEventPDFAlertsChart);
  *v4 = v1;
  v4[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29E74D97C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E74D9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E74DA44()
{
  if (!qword_2A185AD10)
  {
    sub_29E74DAAC(255);
    sub_29E74DD84();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AD10);
    }
  }
}

void sub_29E74DAF4()
{
  if (!qword_2A185AD20)
  {
    sub_29E727BD0();
    sub_29E6AD088();
    v0 = sub_29E7522B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AD20);
    }
  }
}

unint64_t sub_29E74DB68()
{
  result = qword_2A185A770;
  if (!qword_2A185A770)
  {
    sub_29E74D9E0(255, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A770);
  }

  return result;
}

void sub_29E74DBF0()
{
  if (!qword_2A1858DA0)
  {
    sub_29E752568();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858DA0);
    }
  }
}

unint64_t sub_29E74DC88()
{
  result = qword_2A185AD28;
  if (!qword_2A185AD28)
  {
    sub_29E74DAF4();
    sub_29E727E38();
    sub_29E74DBF0();
    sub_29E752568();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD28);
  }

  return result;
}

void sub_29E74DD84()
{
  if (!qword_2A185AD30)
  {
    sub_29E62A510();
    v0 = sub_29E752A88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AD30);
    }
  }
}

void sub_29E74DDE0()
{
  if (!qword_2A185AD38)
  {
    sub_29E74DA44();
    sub_29E74DE64();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185AD38);
    }
  }
}

unint64_t sub_29E74DE64()
{
  result = qword_2A185AD40;
  if (!qword_2A185AD40)
  {
    sub_29E74DA44();
    sub_29E74D97C(&qword_2A185AD48, sub_29E74DAAC);
    sub_29E74D97C(&qword_2A185AD50, sub_29E74DD84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD40);
  }

  return result;
}

void sub_29E74DF44()
{
  if (!qword_2A185AD58)
  {
    sub_29E74DDE0();
    sub_29E74E048(255);
    sub_29E74DA44();
    sub_29E74DE64();
    swift_getOpaqueTypeConformance2();
    sub_29E74D97C(&qword_2A185AD78, sub_29E74E048);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185AD58);
    }
  }
}

void sub_29E74E090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E74E110()
{
  if (!qword_2A185AD68)
  {
    sub_29E7522A8();
    sub_29E6AD728();
    v0 = sub_29E7522B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185AD68);
    }
  }
}

unint64_t sub_29E74E184()
{
  result = qword_2A185AD70;
  if (!qword_2A185AD70)
  {
    sub_29E74E110();
    sub_29E74D97C(&qword_2A1858E20, sub_29E6AD728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD70);
  }

  return result;
}

void sub_29E74E240()
{
  if (!qword_2A185AD80)
  {
    sub_29E74DF44();
    sub_29E74E684(255, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    sub_29E74DDE0();
    sub_29E74E048(255);
    sub_29E74DA44();
    sub_29E74DE64();
    swift_getOpaqueTypeConformance2();
    sub_29E74D97C(&qword_2A185AD78, sub_29E74E048);
    swift_getOpaqueTypeConformance2();
    sub_29E74E3CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185AD80);
    }
  }
}

unint64_t sub_29E74E3CC()
{
  result = qword_2A185AD90;
  if (!qword_2A185AD90)
  {
    sub_29E74E684(255, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD90);
  }

  return result;
}

uint64_t sub_29E74E464(uint64_t a1, uint64_t a2)
{
  sub_29E6AC8E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E74E4C8(uint64_t a1, uint64_t a2)
{
  sub_29E6AC8E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E74E52C(uint64_t a1)
{
  sub_29E74D9E0(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E74E5B8(uint64_t a1)
{
  sub_29E6AC948();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E74E614()
{
  if (!qword_2A185AD98)
  {
    sub_29E7522A8();
    sub_29E6AD728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185AD98);
    }
  }
}

void sub_29E74E684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29E74E6F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}