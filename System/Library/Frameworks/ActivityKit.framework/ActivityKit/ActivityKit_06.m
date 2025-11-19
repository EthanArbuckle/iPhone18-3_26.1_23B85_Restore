uint64_t PushActivityContentSource.pushType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1A2CC3668(v2, v3, v4, v5, v6);
}

__n128 PushActivityContentSource.pushType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1A2CE4DC8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t PushActivityContentSource.topic.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PushActivityContentSource.topic.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 PushActivityContentSource.init(topic:pushType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  return result;
}

uint64_t sub_1A2CE38A0()
{
  if (*v0)
  {
    result = 0x6369706F74;
  }

  else
  {
    result = 0x6570795468737570;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CE38D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795468737570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CE39B0(uint64_t a1)
{
  v2 = sub_1A2CE4E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE39EC(uint64_t a1)
{
  v2 = sub_1A2CE4E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushActivityContentSource.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1630, &qword_1A2D11930);
  v19 = *(v17 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v5 = v16 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v16[1] = *(v1 + 48);
  v16[2] = v10;
  v11 = a1[3];
  v16[3] = a1[4];
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1A2CC3668(v6, v7, v8, v9, v12);
  sub_1A2CE4E2C();
  sub_1A2D08C74();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v12;
  v13 = v17;
  v25 = 0;
  sub_1A2CE4E80();
  v14 = v18;
  sub_1A2D08AE4();
  sub_1A2CE4DC8(v20, v21, v22, v23, v24);
  if (!v14)
  {
    LOBYTE(v20) = 1;
    sub_1A2D08AB4();
  }

  return (*(v19 + 8))(v5, v13);
}

uint64_t PushActivityContentSource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1638, &qword_1A2D11938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4E2C();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  sub_1A2CE4ED4();
  sub_1A2D08A54();
  v11 = v25;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v30 = v29;
  LOBYTE(v25) = 1;
  v12 = sub_1A2D08A24();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  v15 = v11;
  v16 = v22;
  v17 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v17;
  v18 = v24;
  *(a2 + 24) = v24;
  v19 = v30;
  *(a2 + 32) = v30;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  v20 = v15;
  sub_1A2CC3668(v15, v16, v17, v18, v19);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1A2CE4DC8(v20, v16, v17, v18, v19);
}

uint64_t static ActivityContentSource.broadcastPush(environmentName:topic:channel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  *(a7 + 32) = 0;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = 0;
}

uint64_t static ActivityContentSource.push(environmentName:topic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 1;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 56) = 0;
}

uint64_t static ActivityContentSource.external(topic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 2;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
}

uint64_t _s11ActivityKit04PushA13ContentSourceV0C4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v20 = v3 == v8 && v2 == v7;
      if (v20 || (v21 = *a1, (sub_1A2D08B34() & 1) != 0))
      {
        if (v5 != v10 || v4 != v9)
        {
          v14 = sub_1A2D08B34();
          sub_1A2CC3668(v8, v7, v10, v9, 0);
          sub_1A2CC3668(v3, v2, v5, v4, 0);
          sub_1A2CE4DC8(v3, v2, v5, v4, 0);
          v15 = v8;
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = 0;
          goto LABEL_20;
        }

        sub_1A2CC3668(v8, v7, v5, v4, 0);
        sub_1A2CC3668(v3, v2, v5, v4, 0);
        sub_1A2CE4DC8(v3, v2, v5, v4, 0);
        v30 = v8;
        v31 = v7;
        v32 = v5;
        v33 = v4;
        v34 = 0;
        goto LABEL_30;
      }

      sub_1A2CC3668(v8, v7, v10, v9, 0);
      sub_1A2CC3668(v3, v2, v5, v4, 0);
      sub_1A2CE4DC8(v3, v2, v5, v4, 0);
      v25 = v8;
      v26 = v7;
      v27 = v10;
      v28 = v9;
      v29 = 0;
LABEL_26:
      sub_1A2CE4DC8(v25, v26, v27, v28, v29);
      return 0;
    }

    goto LABEL_25;
  }

  if (v6 == 1)
  {
    if (v11 == 1)
    {
      v12 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v14 = sub_1A2D08B34();
        sub_1A2CC3668(v8, v7, v10, v9, 1);
        sub_1A2CC3668(v3, v2, v5, v4, 1);
        sub_1A2CE4DC8(v3, v2, v5, v4, 1);
        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
        v19 = 1;
LABEL_20:
        sub_1A2CE4DC8(v15, v16, v17, v18, v19);
        return v14 & 1;
      }

      sub_1A2CC3668(v12, v2, v10, v9, 1);
      sub_1A2CC3668(v3, v2, v5, v4, 1);
      sub_1A2CE4DC8(v3, v2, v5, v4, 1);
      v30 = v3;
      v31 = v2;
      v32 = v10;
      v33 = v9;
      v34 = 1;
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v11 != 2 || (v7 | v8 | v10 | v9) != 0)
  {
LABEL_25:
    sub_1A2CC3668(*a2, *(a2 + 8), v10, v9, v11);
    sub_1A2CC3668(v3, v2, v5, v4, v6);
    sub_1A2CE4DC8(v3, v2, v5, v4, v6);
    v25 = v8;
    v26 = v7;
    v27 = v10;
    v28 = v9;
    v29 = v11;
    goto LABEL_26;
  }

  sub_1A2CE4DC8(*a1, v2, v5, v4, 2);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 2;
LABEL_30:
  sub_1A2CE4DC8(v30, v31, v32, v33, v34);
  return 1;
}

uint64_t _s11ActivityKit04PushA13ContentSourceV7RequestO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1A2C6AE84(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1A2C6AE84(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1A2D08B34();
      sub_1A2C66A98(v4, v5);
      sub_1A2C66A98(v2, v3);
      sub_1A2C6AE84(v2, v3);
      sub_1A2C6AE84(v4, v5);
      return v11 & 1;
    }

    sub_1A2C66A98(v9, v3);
    sub_1A2C66A98(v2, v3);
    sub_1A2C6AE84(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1A2C66A98(*a2, *(a2 + 8));
    sub_1A2C66A98(v2, v3);
    sub_1A2C6AE84(v2, v3);
    sub_1A2C6AE84(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1A2C6AE84(*a1, 1);
  sub_1A2C6AE84(v4, 1);
  return v6;
}

uint64_t _s11ActivityKit04PushA13ContentSourceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  v21 = *a1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v14;
  sub_1A2CC3668(v21, v2, v3, v4, v13);
  sub_1A2CC3668(v7, v8, v9, v10, v14);
  LOBYTE(v7) = _s11ActivityKit04PushA13ContentSourceV0C4TypeO2eeoiySbAE_AEtFZ_0(&v21, &v16);
  sub_1A2CE4DC8(v16, v17, v18, v19, v20);
  sub_1A2CE4DC8(v21, v22, v23, v24, v25);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v5 == v11 && v6 == v12)
  {
    return 1;
  }

  return sub_1A2D08B34();
}

uint64_t _s11ActivityKit0A13ContentSourceO7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v31[0] = v3;
  v31[1] = v4;
  v31[2] = v6;
  v31[3] = v5;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  if (v7)
  {
    if (v12)
    {
      if (v4)
      {
        if (v4 == 1)
        {
          if (v9 == 1)
          {
            v13 = 1;
            sub_1A2CE6458(v8, 1uLL, v10, v11, 1);
            v14 = v3;
            v15 = 1;
LABEL_33:
            sub_1A2CE6458(v14, v15, v6, v5, 1);
            sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
            return v13;
          }

          v4 = 1;
        }

        else if (v9 >= 2)
        {
          if (v3 == v8 && v4 == v9)
          {
            v13 = 1;
            sub_1A2CE6458(v3, v4, v10, v11, 1);
            v14 = v3;
            v15 = v4;
            goto LABEL_33;
          }

          v23 = v8;
          v24 = v9;
          v25 = v10;
          v26 = v11;
          v27 = sub_1A2D08B34();
          v13 = 1;
          sub_1A2CE6458(v23, v24, v25, v26, 1);
          sub_1A2CE6458(v3, v4, v6, v5, 1);
          sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
          if (v27)
          {
            return v13;
          }

          return 0;
        }
      }

      else
      {
        if (!v9)
        {
          v13 = 1;
          sub_1A2CE6458(v8, 0, v10, v11, 1);
          v14 = v3;
          v15 = 0;
          goto LABEL_33;
        }

        v4 = 0;
      }

      sub_1A2CE6458(v8, v9, v10, v11, 1);
      v16 = v3;
      v17 = v4;
      v18 = v6;
      v19 = v5;
      v20 = 1;
      goto LABEL_22;
    }

LABEL_8:
    sub_1A2CE6458(v8, v9, v10, v11, v12);
    v16 = v3;
    v17 = v4;
    v18 = v6;
    v19 = v5;
    v20 = v7;
LABEL_22:
    sub_1A2CE6458(v16, v17, v18, v19, v20);
    goto LABEL_23;
  }

  if (v12)
  {
    goto LABEL_8;
  }

  v30[0] = v3;
  v30[1] = v4;
  v29[0] = v8;
  v29[1] = v9;
  v21 = v10;
  v13 = v11;
  sub_1A2CE6458(v8, v9, v10, v11, 0);
  sub_1A2CE6458(v3, v4, v6, v5, 0);
  if ((_s11ActivityKit04PushA13ContentSourceV7RequestO2eeoiySbAE_AEtFZ_0(v30, v29) & 1) == 0)
  {
LABEL_23:
    sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
    return 0;
  }

  if (!v5)
  {
    sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
    return !v13;
  }

  if (v5 == 1)
  {
    sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
    if (v13 == 1)
    {
      return v13;
    }

    return 0;
  }

  if (v13 < 2)
  {
    goto LABEL_23;
  }

  if (v6 == v21 && v5 == v13)
  {
    sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
    return 1;
  }

  v28 = sub_1A2D08B34();
  sub_1A2C54E38(v31, &qword_1EB0A16A0, &unk_1A2D12EC0);
  return (v28 & 1) != 0;
}

unint64_t sub_1A2CE4888()
{
  result = qword_1ED708950;
  if (!qword_1ED708950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708950);
  }

  return result;
}

unint64_t sub_1A2CE48DC()
{
  result = qword_1ED708908;
  if (!qword_1ED708908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708908);
  }

  return result;
}

unint64_t sub_1A2CE4930()
{
  result = qword_1EB09F0E0[0];
  if (!qword_1EB09F0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB09F0E0);
  }

  return result;
}

unint64_t sub_1A2CE4984()
{
  result = qword_1EB09F1F8;
  if (!qword_1EB09F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F1F8);
  }

  return result;
}

unint64_t sub_1A2CE49D8()
{
  result = qword_1EB09EE60;
  if (!qword_1EB09EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EE60);
  }

  return result;
}

unint64_t sub_1A2CE4A2C()
{
  result = qword_1ED708AD0;
  if (!qword_1ED708AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AD0);
  }

  return result;
}

unint64_t sub_1A2CE4A80()
{
  result = qword_1EB09F660;
  if (!qword_1EB09F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F660);
  }

  return result;
}

unint64_t sub_1A2CE4AD4()
{
  result = qword_1EB09F680;
  if (!qword_1EB09F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F680);
  }

  return result;
}

unint64_t sub_1A2CE4B28()
{
  result = qword_1EB09F220;
  if (!qword_1EB09F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F220);
  }

  return result;
}

unint64_t sub_1A2CE4B7C()
{
  result = qword_1EB0A15B0;
  if (!qword_1EB0A15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A15B0);
  }

  return result;
}

unint64_t sub_1A2CE4BD0()
{
  result = qword_1EB09F238;
  if (!qword_1EB09F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F238);
  }

  return result;
}

unint64_t sub_1A2CE4C24()
{
  result = qword_1EB0A15B8;
  if (!qword_1EB0A15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A15B8);
  }

  return result;
}

unint64_t sub_1A2CE4C78()
{
  result = qword_1ED708B40;
  if (!qword_1ED708B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B40);
  }

  return result;
}

unint64_t sub_1A2CE4CCC()
{
  result = qword_1EB0A1600;
  if (!qword_1EB0A1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1600);
  }

  return result;
}

unint64_t sub_1A2CE4D20()
{
  result = qword_1ED708B28;
  if (!qword_1ED708B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B28);
  }

  return result;
}

unint64_t sub_1A2CE4D74()
{
  result = qword_1EB0A1608;
  if (!qword_1EB0A1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1608);
  }

  return result;
}

uint64_t sub_1A2CE4DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

unint64_t sub_1A2CE4E2C()
{
  result = qword_1ED708AF0;
  if (!qword_1ED708AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AF0);
  }

  return result;
}

unint64_t sub_1A2CE4E80()
{
  result = qword_1EB09F668;
  if (!qword_1EB09F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F668);
  }

  return result;
}

unint64_t sub_1A2CE4ED4()
{
  result = qword_1EB09F688;
  if (!qword_1EB09F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F688);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ActivityKit04PushA13ContentSourceV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1A2CE4F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A2CE4FAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1A2CE4FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A2CE5068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2CE50BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A2CE5118(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A2CE5148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1A2CE5190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A2CE51D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1A2CE5308()
{
  result = qword_1EB0A1640;
  if (!qword_1EB0A1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1640);
  }

  return result;
}

unint64_t sub_1A2CE5360()
{
  result = qword_1EB0A1648;
  if (!qword_1EB0A1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1648);
  }

  return result;
}

unint64_t sub_1A2CE53B8()
{
  result = qword_1EB0A1650;
  if (!qword_1EB0A1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1650);
  }

  return result;
}

unint64_t sub_1A2CE5410()
{
  result = qword_1EB0A1658;
  if (!qword_1EB0A1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1658);
  }

  return result;
}

unint64_t sub_1A2CE5468()
{
  result = qword_1EB0A1660;
  if (!qword_1EB0A1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1660);
  }

  return result;
}

unint64_t sub_1A2CE54C0()
{
  result = qword_1EB0A1668;
  if (!qword_1EB0A1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1668);
  }

  return result;
}

unint64_t sub_1A2CE5518()
{
  result = qword_1EB0A1670;
  if (!qword_1EB0A1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1670);
  }

  return result;
}

unint64_t sub_1A2CE5570()
{
  result = qword_1EB0A1678;
  if (!qword_1EB0A1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1678);
  }

  return result;
}

unint64_t sub_1A2CE55C8()
{
  result = qword_1EB0A1680;
  if (!qword_1EB0A1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1680);
  }

  return result;
}

unint64_t sub_1A2CE5620()
{
  result = qword_1EB0A1688;
  if (!qword_1EB0A1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1688);
  }

  return result;
}

unint64_t sub_1A2CE5678()
{
  result = qword_1EB0A1690;
  if (!qword_1EB0A1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1690);
  }

  return result;
}

unint64_t sub_1A2CE56D0()
{
  result = qword_1EB0A1698;
  if (!qword_1EB0A1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1698);
  }

  return result;
}

unint64_t sub_1A2CE5728()
{
  result = qword_1ED708AE0;
  if (!qword_1ED708AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AE0);
  }

  return result;
}

unint64_t sub_1A2CE5780()
{
  result = qword_1ED708AE8;
  if (!qword_1ED708AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AE8);
  }

  return result;
}

unint64_t sub_1A2CE57D8()
{
  result = qword_1ED708B08;
  if (!qword_1ED708B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B08);
  }

  return result;
}

unint64_t sub_1A2CE5830()
{
  result = qword_1ED708B10;
  if (!qword_1ED708B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B10);
  }

  return result;
}

unint64_t sub_1A2CE5888()
{
  result = qword_1ED708B18;
  if (!qword_1ED708B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B18);
  }

  return result;
}

unint64_t sub_1A2CE58E0()
{
  result = qword_1ED708B20;
  if (!qword_1ED708B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B20);
  }

  return result;
}

unint64_t sub_1A2CE5938()
{
  result = qword_1ED708AF8;
  if (!qword_1ED708AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AF8);
  }

  return result;
}

unint64_t sub_1A2CE5990()
{
  result = qword_1ED708B00;
  if (!qword_1ED708B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B00);
  }

  return result;
}

unint64_t sub_1A2CE59E8()
{
  result = qword_1ED708B30;
  if (!qword_1ED708B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B30);
  }

  return result;
}

unint64_t sub_1A2CE5A40()
{
  result = qword_1ED708B38;
  if (!qword_1ED708B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B38);
  }

  return result;
}

unint64_t sub_1A2CE5A98()
{
  result = qword_1EB09F240;
  if (!qword_1EB09F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F240);
  }

  return result;
}

unint64_t sub_1A2CE5AF0()
{
  result = qword_1EB09F248;
  if (!qword_1EB09F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F248);
  }

  return result;
}

unint64_t sub_1A2CE5B48()
{
  result = qword_1EB09F228;
  if (!qword_1EB09F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F228);
  }

  return result;
}

unint64_t sub_1A2CE5BA0()
{
  result = qword_1EB09F230;
  if (!qword_1EB09F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F230);
  }

  return result;
}

unint64_t sub_1A2CE5BF8()
{
  result = qword_1EB09F200;
  if (!qword_1EB09F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F200);
  }

  return result;
}

unint64_t sub_1A2CE5C50()
{
  result = qword_1EB09F208;
  if (!qword_1EB09F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F208);
  }

  return result;
}

unint64_t sub_1A2CE5CA8()
{
  result = qword_1EB09F210;
  if (!qword_1EB09F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F210);
  }

  return result;
}

unint64_t sub_1A2CE5D00()
{
  result = qword_1EB09F218;
  if (!qword_1EB09F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F218);
  }

  return result;
}

unint64_t sub_1A2CE5D58()
{
  result = qword_1ED709788;
  if (!qword_1ED709788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709788);
  }

  return result;
}

unint64_t sub_1A2CE5DB0()
{
  result = qword_1ED709790;
  if (!qword_1ED709790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709790);
  }

  return result;
}

unint64_t sub_1A2CE5E08()
{
  result = qword_1ED709758;
  if (!qword_1ED709758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709758);
  }

  return result;
}

unint64_t sub_1A2CE5E60()
{
  result = qword_1ED709760;
  if (!qword_1ED709760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709760);
  }

  return result;
}

unint64_t sub_1A2CE5EB8()
{
  result = qword_1ED709770;
  if (!qword_1ED709770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709770);
  }

  return result;
}

unint64_t sub_1A2CE5F10()
{
  result = qword_1ED709778;
  if (!qword_1ED709778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709778);
  }

  return result;
}

unint64_t sub_1A2CE5F68()
{
  result = qword_1ED709798;
  if (!qword_1ED709798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709798);
  }

  return result;
}

unint64_t sub_1A2CE5FC0()
{
  result = qword_1ED7097A0;
  if (!qword_1ED7097A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097A0);
  }

  return result;
}

unint64_t sub_1A2CE6018()
{
  result = qword_1ED708930;
  if (!qword_1ED708930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708930);
  }

  return result;
}

unint64_t sub_1A2CE6070()
{
  result = qword_1ED708938;
  if (!qword_1ED708938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708938);
  }

  return result;
}

unint64_t sub_1A2CE60C8()
{
  result = qword_1ED708920;
  if (!qword_1ED708920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708920);
  }

  return result;
}

unint64_t sub_1A2CE6120()
{
  result = qword_1ED708928;
  if (!qword_1ED708928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708928);
  }

  return result;
}

unint64_t sub_1A2CE6178()
{
  result = qword_1ED708940;
  if (!qword_1ED708940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708940);
  }

  return result;
}

unint64_t sub_1A2CE61D0()
{
  result = qword_1ED708948;
  if (!qword_1ED708948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708948);
  }

  return result;
}

uint64_t sub_1A2CE6224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73616364616F7262 && a2 == 0xED00006873755074;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752397168 && a2 == 0xE400000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t sub_1A2CE6344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t sub_1A2CE6458(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  result = sub_1A2C66A98(a1, a2);
  if ((a5 & 1) == 0)
  {

    return sub_1A2C66A98(a3, a4);
  }

  return result;
}

uint64_t sub_1A2CE64D8(uint64_t a1)
{
  v2 = sub_1A2CE6D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE6514(uint64_t a1)
{
  v2 = sub_1A2CE6D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE6550(uint64_t a1)
{
  v2 = sub_1A2CE6CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE658C(uint64_t a1)
{
  v2 = sub_1A2CE6CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE65C8(uint64_t a1)
{
  v2 = sub_1A2CE6C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE6604(uint64_t a1)
{
  v2 = sub_1A2CE6C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE6640(uint64_t a1)
{
  v2 = sub_1A2CE6C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE667C(uint64_t a1)
{
  v2 = sub_1A2CE6C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE66D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CE6E24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CE66FC(uint64_t a1)
{
  v2 = sub_1A2CE6BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE6738(uint64_t a1)
{
  v2 = sub_1A2CE6BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityProtectionClass.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16A8, &qword_1A2D12ED0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16B0, &qword_1A2D12ED8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16B8, &qword_1A2D12EE0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16C0, &qword_1A2D12EE8);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16C8, &qword_1A2D12EF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE6BB0();
  sub_1A2D08C74();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1A2CE6C58();
      v12 = v29;
      sub_1A2D08A84();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1A2CE6C04();
      v12 = v32;
      sub_1A2D08A84();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1A2CE6CAC();
    sub_1A2D08A84();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1A2CE6D00();
  sub_1A2D08A84();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1A2CE6BB0()
{
  result = qword_1ED708A80;
  if (!qword_1ED708A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A80);
  }

  return result;
}

unint64_t sub_1A2CE6C04()
{
  result = qword_1ED708A88;
  if (!qword_1ED708A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A88);
  }

  return result;
}

unint64_t sub_1A2CE6C58()
{
  result = qword_1EB0A16D0;
  if (!qword_1EB0A16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16D0);
  }

  return result;
}

unint64_t sub_1A2CE6CAC()
{
  result = qword_1EB0A16D8;
  if (!qword_1EB0A16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16D8);
  }

  return result;
}

unint64_t sub_1A2CE6D00()
{
  result = qword_1EB0A16E0;
  if (!qword_1EB0A16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16E0);
  }

  return result;
}

uint64_t ActivityProtectionClass.hashValue.getter(unsigned __int8 a1)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](a1);
  return sub_1A2D08C54();
}

void *sub_1A2CE6DDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A2CE6F78(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A2CE6E24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x417373616C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x427373616C63 && a2 == 0xE600000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437373616C63 && a2 == 0xE600000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x447373616C63 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1A2CE6F78(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A16F8, &qword_1A2D133F0);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1700, &qword_1A2D133F8);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1708, &qword_1A2D13400);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1710, &qword_1A2D13408);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1718, &qword_1A2D13410);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1A2CE6BB0();
  v21 = v50;
  sub_1A2D08C64();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_1A2D08A64();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1A2C6E0DC();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1A2CE6CAC();
        v36 = v40;
        sub_1A2D089D4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1A2CE6D00();
        v29 = v40;
        sub_1A2D089D4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_1A2CE6C58();
      v35 = v40;
      sub_1A2D089D4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_1A2CE6C04();
      v37 = v40;
      sub_1A2D089D4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1A2D088A4();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
  *v15 = &type metadata for ActivityProtectionClass;
  sub_1A2D089E4();
  sub_1A2D08894();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_1A2CE75BC()
{
  result = qword_1EB0A16E8;
  if (!qword_1EB0A16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16E8);
  }

  return result;
}

unint64_t sub_1A2CE7664()
{
  result = qword_1EB0A16F0;
  if (!qword_1EB0A16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A16F0);
  }

  return result;
}

unint64_t sub_1A2CE76BC()
{
  result = qword_1ED708AC0;
  if (!qword_1ED708AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AC0);
  }

  return result;
}

unint64_t sub_1A2CE7714()
{
  result = qword_1ED708AC8;
  if (!qword_1ED708AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AC8);
  }

  return result;
}

unint64_t sub_1A2CE776C()
{
  result = qword_1ED708AB0;
  if (!qword_1ED708AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AB0);
  }

  return result;
}

unint64_t sub_1A2CE77C4()
{
  result = qword_1ED708AB8;
  if (!qword_1ED708AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AB8);
  }

  return result;
}

unint64_t sub_1A2CE781C()
{
  result = qword_1ED708AA0;
  if (!qword_1ED708AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AA0);
  }

  return result;
}

unint64_t sub_1A2CE7874()
{
  result = qword_1ED708AA8;
  if (!qword_1ED708AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AA8);
  }

  return result;
}

unint64_t sub_1A2CE78CC()
{
  result = qword_1ED708A90;
  if (!qword_1ED708A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A90);
  }

  return result;
}

unint64_t sub_1A2CE7924()
{
  result = qword_1ED708A98;
  if (!qword_1ED708A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A98);
  }

  return result;
}

unint64_t sub_1A2CE797C()
{
  result = qword_1ED708A70;
  if (!qword_1ED708A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A70);
  }

  return result;
}

unint64_t sub_1A2CE79D4()
{
  result = qword_1ED708A78;
  if (!qword_1ED708A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A78);
  }

  return result;
}

uint64_t ActivityQoS.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1751607656;
  }

  if (a1 == 1)
  {
    return 7827308;
  }

  result = sub_1A2D08B64();
  __break(1u);
  return result;
}

uint64_t static ActivityQoS.< infix(_:_:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (!a1)
  {
    if (a2 >= 2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 0;
    }

    if (!a2)
    {
      return 1;
    }
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

unint64_t ActivityQoS.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A2CE7B10()
{
  result = qword_1EB0A1728;
  if (!qword_1EB0A1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1728);
  }

  return result;
}

uint64_t sub_1A2CE7B64()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E4900](v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE7BD8()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E4900](v1);
  return sub_1A2D08C54();
}

uint64_t *sub_1A2CE7C1C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1A2CE7CE8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    if (!v3)
    {
      return 1;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 < 2)
  {
    return 0;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7D5C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    if (!v2)
    {
      return 0;
    }

    if (v2 != 1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7DD0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_9;
    }

    if (!v3)
    {
      return 0;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7E44(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1720, &qword_1A2D13418);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_9;
    }

    if (!v2)
    {
      return 1;
    }

    if (v2 != 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v2 < 2)
  {
    return 0;
  }

LABEL_9:
  result = sub_1A2D08B24();
  __break(1u);
  return result;
}

uint64_t sub_1A2CE7EB8()
{
  if (!*v0)
  {
    return 1751607656;
  }

  if (*v0 == 1)
  {
    return 7827308;
  }

  v2 = *v0;
  result = sub_1A2D08B64();
  __break(1u);
  return result;
}

unint64_t sub_1A2CE7F2C()
{
  result = qword_1EB0A1730;
  if (!qword_1EB0A1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1730);
  }

  return result;
}

uint64_t sub_1A2CE7F84()
{
  v0 = sub_1A2D086E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A2C5D300();
  sub_1A2D082E4();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C5ACDC();
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1A2D08724();
  qword_1ED712970 = result;
  return result;
}

uint64_t sub_1A2CE81C0()
{
  v6 = *MEMORY[0x1E69E9840];
  out_token = -1;
  sub_1A2D07FE4();
  v0 = sub_1A2D08464();

  notify_register_check((v0 + 32), &out_token);

  if (out_token != -1)
  {
    v2 = getpid();
    if ((v2 & 0x80000000) != 0)
    {
      __break(1u);
    }

    notify_set_state(out_token, v2);
    sub_1A2D07FE4();
    v3 = sub_1A2D08464();

    notify_post((v3 + 32));

    result = notify_cancel(out_token);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static ProcessDescriptor.Request.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

uint64_t static ProcessDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

unint64_t ProcessDescriptor.Request.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0xD000000000000010;
  if (a2)
  {
    v2 = a1;
  }

  if (a2 == 1)
  {
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = v2;
  }

  sub_1A2C66A98(a1, a2);
  return v3;
}

uint64_t sub_1A2CE83A0(uint64_t a1)
{
  v2 = sub_1A2C6D588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE83DC(uint64_t a1)
{
  v2 = sub_1A2C6D588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE8418(uint64_t a1)
{
  v2 = sub_1A2C6D5DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE8454(uint64_t a1)
{
  v2 = sub_1A2C6D5DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE8490(uint64_t a1)
{
  v2 = sub_1A2CE9948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE84CC(uint64_t a1)
{
  v2 = sub_1A2CE9948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneTarget.Request.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1A58E48E0](1);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    return MEMORY[0x1A58E48E0](v5);
  }

  MEMORY[0x1A58E48E0](0);
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3 == 1)
  {
    v5 = 1;
    return MEMORY[0x1A58E48E0](v5);
  }

  MEMORY[0x1A58E48E0](2);

  return sub_1A2D08484();
}

uint64_t SceneTarget.Request.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0]((a3 & 1) != 0);
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1A58E48E0](v5);
  return sub_1A2D08C54();
}

void *SceneTarget.Request.init(from:)(uint64_t *a1)
{
  result = sub_1A2C6FEA8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1A2CE8684()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A2D08C14();
  SceneTarget.Request.hash(into:)(v5, v1, v2, v3);
  return sub_1A2D08C54();
}

uint64_t SceneTarget.targetProcess.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
    v3 = v1[3];
    v2 = v1[4];
    v5 = v1[1];
    v4 = v1[2];
    v6 = *v1;
    *a1 = *v1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4 & 1;
    *(a1 + 17) = BYTE1(v4) & 1;
    *(a1 + 18) = BYTE2(v4) & 1;
    *(a1 + 19) = BYTE3(v4) & 1;
    *(a1 + 24) = v3;
    *(a1 + 32) = v2;
    *&v12 = v6;
    *(&v12 + 1) = v5;
    *&v13 = v4;
    *(&v13 + 1) = v3;
    v14 = v2;
    v15 = 1;
  }

  else
  {
    if (qword_1EB09EF58 != -1)
    {
      v10 = a1;
      swift_once();
      a1 = v10;
    }

    v7 = *&dword_1EB09EF70;
    v12 = xmmword_1EB09EF60;
    v13 = *&dword_1EB09EF70;
    v8 = qword_1EB09EF80;
    v14 = qword_1EB09EF80;
    *a1 = xmmword_1EB09EF60;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
  }

  return sub_1A2C73320(&v12, v11);
}

uint64_t SceneTarget.containingAppProcess.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3 & 1;
  *(a1 + 17) = BYTE1(v3) & 1;
  *(a1 + 18) = BYTE2(v3) & 1;
  *(a1 + 19) = BYTE3(v3) & 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return sub_1A2C72A00();
}

uint64_t sub_1A2CE8824(uint64_t a1)
{
  v2 = sub_1A2C72E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE8860(uint64_t a1)
{
  v2 = sub_1A2C72E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE889C(uint64_t a1)
{
  v2 = sub_1A2C72EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE88D8(uint64_t a1)
{
  v2 = sub_1A2C72EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE8914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A2D1ADD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2CE89A8(uint64_t a1)
{
  v2 = sub_1A2CE9CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE89E4(uint64_t a1)
{
  v2 = sub_1A2CE9CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneTarget.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v5 = v0[3];
  v4 = v0[4];
  MEMORY[0x1A58E48E0]((v0[5] & 1) != 0);
  return ProcessDescriptor.hash(into:)();
}

uint64_t SceneTarget.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 40);
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0]((v6 & 1) != 0);
  ProcessDescriptor.hash(into:)();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE8B80()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v5 = v0[3];
  v4 = v0[4];
  MEMORY[0x1A58E48E0]((v0[5] & 1) != 0);
  return ProcessDescriptor.hash(into:)();
}

uint64_t sub_1A2CE8C24()
{
  sub_1A2D08C14();
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v5 = v0[3];
  v4 = v0[4];
  MEMORY[0x1A58E48E0]((v0[5] & 1) != 0);
  ProcessDescriptor.hash(into:)();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE8CD8()
{
  if (qword_1EB09EF58 != -1)
  {
    swift_once();
  }

  v2[0] = xmmword_1EB09EF60;
  v2[1] = *&dword_1EB09EF70;
  v3 = qword_1EB09EF80;
  xmmword_1EB0A1738 = xmmword_1EB09EF60;
  unk_1EB0A1748 = *&dword_1EB09EF70;
  qword_1EB0A1758 = qword_1EB09EF80;
  return sub_1A2C73320(v2, v1);
}

uint64_t static ProcessDescriptor.chronod.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F730 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EB0A1748;
  v6[0] = xmmword_1EB0A1738;
  v6[1] = unk_1EB0A1748;
  v2 = qword_1EB0A1758;
  v7 = qword_1EB0A1758;
  *a1 = xmmword_1EB0A1738;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  return sub_1A2C73320(v6, v5);
}

void sub_1A2CE8DE0()
{
  dword_1EB09EF70 = 0;
  qword_1EB09EF78 = 0;
  qword_1EB09EF80 = 0;
  *&xmmword_1EB09EF60 = 0xD00000000000002ALL;
  *(&xmmword_1EB09EF60 + 1) = 0x80000001A2D1AEE0;
}

void __swiftcall ProcessDescriptor.init(identifier:)(ActivityKit::ProcessDescriptor *__return_ptr retstr, Swift::String identifier)
{
  *&retstr->canEndAllActivities = 0;
  retstr->appIntentExtensionBundleIdentifier.value._countAndFlagsBits = 0;
  retstr->appIntentExtensionBundleIdentifier.value._object = 0;
  retstr->bundleIdentifier = identifier;
}

uint64_t static ProcessDescriptor.widget.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09EF58 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *&dword_1EB09EF70;
  v6[0] = xmmword_1EB09EF60;
  v6[1] = *&dword_1EB09EF70;
  v2 = qword_1EB09EF80;
  v7 = qword_1EB09EF80;
  *a1 = xmmword_1EB09EF60;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  return sub_1A2C73320(v6, v5);
}

unint64_t ProcessDescriptor.Request.debugDescription.getter(uint64_t a1, unint64_t a2)
{
  sub_1A2D08864();

  v4 = 0x80000001A2D1AD20;
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v4 = a2;
  }

  if (a2 == 1)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 1)
  {
    v7 = 0x80000001A2D1AD00;
  }

  else
  {
    v7 = v4;
  }

  sub_1A2C66A98(a1, a2);
  MEMORY[0x1A58E4150](v6, v7);

  MEMORY[0x1A58E4150](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_1A2CE8F98(uint64_t a1)
{
  v2 = sub_1A2C6AC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE8FD4(uint64_t a1)
{
  v2 = sub_1A2C6AC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE9010(uint64_t a1)
{
  v2 = sub_1A2CE9D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE904C(uint64_t a1)
{
  v2 = sub_1A2CE9D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE9088(uint64_t a1)
{
  v2 = sub_1A2CE9D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE90C4(uint64_t a1)
{
  v2 = sub_1A2CE9D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE9100(uint64_t a1)
{
  v2 = sub_1A2C6AC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE913C(uint64_t a1)
{
  v2 = sub_1A2C6AC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProcessDescriptor.Request.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1A58E48E0](v3);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1A58E48E0](v3);
  }

  MEMORY[0x1A58E48E0](2);

  return sub_1A2D08484();
}

uint64_t ProcessDescriptor.Request.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1A2D08C14();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1A58E48E0](v3);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9294()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08C14();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1A58E48E0](v3);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9314()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1A58E48E0](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1A58E48E0](v2);
  }

  v4 = *v0;
  MEMORY[0x1A58E48E0](2);

  return sub_1A2D08484();
}

uint64_t sub_1A2CE939C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08C14();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1A58E48E0](2);
      sub_1A2D08484();
      return sub_1A2D08C54();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1A58E48E0](v3);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CE9418()
{
  v1 = v0[1];
  v2 = 0xD000000000000010;
  if (v1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  if (v1 == 1)
  {
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = v2;
  }

  sub_1A2C66A98(*v0, v1);
  return v4;
}

uint64_t sub_1A2CE9498(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_1A2D08B34();
  }

  return 1;
}

uint64_t ProcessDescriptor.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProcessDescriptor.appIntentExtensionBundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ProcessDescriptor.appIntentExtensionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1A2CE9698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CEAB20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CE96CC(uint64_t a1)
{
  v2 = sub_1A2C731E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE9708(uint64_t a1)
{
  v2 = sub_1A2C731E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProcessDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  v6 = *(v0 + 19);
  v7 = v0[3];
  v8 = v0[4];
  sub_1A2D08484();
  sub_1A2D08C34();
  sub_1A2D08C34();
  sub_1A2D08C34();
  sub_1A2D08C34();
  if (!v8)
  {
    return sub_1A2D08C34();
  }

  sub_1A2D08C34();

  return sub_1A2D08484();
}

uint64_t ProcessDescriptor.hashValue.getter()
{
  sub_1A2D08C14();
  ProcessDescriptor.hash(into:)();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9844()
{
  sub_1A2D08C14();
  ProcessDescriptor.hash(into:)();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CE9888()
{
  sub_1A2D08C14();
  ProcessDescriptor.hash(into:)();
  return sub_1A2D08C54();
}

BOOL sub_1A2CE98C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

      return a5 >= 2 && (a1 == a4 && a2 == a5 || (sub_1A2D08B34() & 1) != 0);
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

      return a5 >= 2 && (a1 == a4 && a2 == a5 || (sub_1A2D08B34() & 1) != 0);
    }
  }

  return !a5;
}

unint64_t sub_1A2CE9948()
{
  result = qword_1EB09F5B0;
  if (!qword_1EB09F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5B0);
  }

  return result;
}

uint64_t _s11ActivityKit11SceneTargetO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = *(a2 + 40);
  if ((a1[5] & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      v20 = a2[4];
      if (v3 == v7 && v2 == v8)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_7:
    v13 = *a2;
    v14 = a2[1];
    sub_1A2C72A00();
    sub_1A2C72A00();
    sub_1A2C732E4();
    sub_1A2C732E4();
    return 0;
  }

  if ((a2[5] & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = a2[4];
  if (v3 == v7 && v2 == v8)
  {
LABEL_10:
    v16 = a1[1];
    sub_1A2C72A00();
    sub_1A2C72A00();
    sub_1A2C732E4();
    sub_1A2C732E4();
    return 1;
  }

LABEL_11:
  v17 = *a2;
  v18 = sub_1A2D08B34();
  sub_1A2C72A00();
  sub_1A2C72A00();
  sub_1A2C732E4();
  sub_1A2C732E4();
  return v18 & 1;
}

unint64_t sub_1A2CE9CD0()
{
  result = qword_1ED708EB0;
  if (!qword_1ED708EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708EB0);
  }

  return result;
}

unint64_t sub_1A2CE9D24()
{
  result = qword_1EB09F5A8;
  if (!qword_1EB09F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5A8);
  }

  return result;
}

unint64_t sub_1A2CE9D78()
{
  result = qword_1ED7088F0;
  if (!qword_1ED7088F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088F0);
  }

  return result;
}

unint64_t sub_1A2CE9DD0()
{
  result = qword_1EB0A17D8;
  if (!qword_1EB0A17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17D8);
  }

  return result;
}

unint64_t sub_1A2CE9E28()
{
  result = qword_1EB0A17E0;
  if (!qword_1EB0A17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17E0);
  }

  return result;
}

unint64_t sub_1A2CE9E80()
{
  result = qword_1EB0A17E8;
  if (!qword_1EB0A17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17E8);
  }

  return result;
}

unint64_t sub_1A2CE9ED8()
{
  result = qword_1EB0A17F0;
  if (!qword_1EB0A17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17F0);
  }

  return result;
}

uint64_t sub_1A2CE9F2C(uint64_t result, unsigned int a2)
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

uint64_t sub_1A2CE9F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

unint64_t sub_1A2CEA07C()
{
  result = qword_1EB0A17F8;
  if (!qword_1EB0A17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A17F8);
  }

  return result;
}

unint64_t sub_1A2CEA0D4()
{
  result = qword_1EB0A1800;
  if (!qword_1EB0A1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1800);
  }

  return result;
}

unint64_t sub_1A2CEA12C()
{
  result = qword_1EB0A1808;
  if (!qword_1EB0A1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1808);
  }

  return result;
}

unint64_t sub_1A2CEA184()
{
  result = qword_1EB0A1810;
  if (!qword_1EB0A1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1810);
  }

  return result;
}

unint64_t sub_1A2CEA1DC()
{
  result = qword_1EB0A1818;
  if (!qword_1EB0A1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1818);
  }

  return result;
}

unint64_t sub_1A2CEA234()
{
  result = qword_1EB0A1820;
  if (!qword_1EB0A1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1820);
  }

  return result;
}

unint64_t sub_1A2CEA28C()
{
  result = qword_1EB0A1828;
  if (!qword_1EB0A1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1828);
  }

  return result;
}

unint64_t sub_1A2CEA2E4()
{
  result = qword_1EB0A1830;
  if (!qword_1EB0A1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1830);
  }

  return result;
}

unint64_t sub_1A2CEA33C()
{
  result = qword_1EB0A1838;
  if (!qword_1EB0A1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1838);
  }

  return result;
}

unint64_t sub_1A2CEA394()
{
  result = qword_1ED709650;
  if (!qword_1ED709650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709650);
  }

  return result;
}

unint64_t sub_1A2CEA3EC()
{
  result = qword_1ED709658;
  if (!qword_1ED709658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709658);
  }

  return result;
}

unint64_t sub_1A2CEA444()
{
  result = qword_1ED708C98;
  if (!qword_1ED708C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C98);
  }

  return result;
}

unint64_t sub_1A2CEA49C()
{
  result = qword_1ED708CA0;
  if (!qword_1ED708CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CA0);
  }

  return result;
}

unint64_t sub_1A2CEA4F4()
{
  result = qword_1ED708CA8;
  if (!qword_1ED708CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CA8);
  }

  return result;
}

unint64_t sub_1A2CEA54C()
{
  result = qword_1ED708CB0;
  if (!qword_1ED708CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CB0);
  }

  return result;
}

unint64_t sub_1A2CEA5A4()
{
  result = qword_1ED708C88;
  if (!qword_1ED708C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C88);
  }

  return result;
}

unint64_t sub_1A2CEA5FC()
{
  result = qword_1ED708C90;
  if (!qword_1ED708C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C90);
  }

  return result;
}

unint64_t sub_1A2CEA654()
{
  result = qword_1ED708C70;
  if (!qword_1ED708C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C70);
  }

  return result;
}

unint64_t sub_1A2CEA6AC()
{
  result = qword_1ED708C78;
  if (!qword_1ED708C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C78);
  }

  return result;
}

unint64_t sub_1A2CEA704()
{
  result = qword_1ED709668;
  if (!qword_1ED709668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709668);
  }

  return result;
}

unint64_t sub_1A2CEA75C()
{
  result = qword_1ED709670;
  if (!qword_1ED709670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709670);
  }

  return result;
}

unint64_t sub_1A2CEA7B4()
{
  result = qword_1ED709678;
  if (!qword_1ED709678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709678);
  }

  return result;
}

unint64_t sub_1A2CEA80C()
{
  result = qword_1ED709680;
  if (!qword_1ED709680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709680);
  }

  return result;
}

unint64_t sub_1A2CEA864()
{
  result = qword_1ED709688;
  if (!qword_1ED709688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709688);
  }

  return result;
}

unint64_t sub_1A2CEA8BC()
{
  result = qword_1ED709690;
  if (!qword_1ED709690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709690);
  }

  return result;
}

unint64_t sub_1A2CEA914()
{
  result = qword_1ED708CC8;
  if (!qword_1ED708CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CC8);
  }

  return result;
}

unint64_t sub_1A2CEA96C()
{
  result = qword_1ED708CD0;
  if (!qword_1ED708CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CD0);
  }

  return result;
}

unint64_t sub_1A2CEA9C4()
{
  result = qword_1ED708CD8;
  if (!qword_1ED708CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CD8);
  }

  return result;
}

unint64_t sub_1A2CEAA1C()
{
  result = qword_1ED708CE0;
  if (!qword_1ED708CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CE0);
  }

  return result;
}

unint64_t sub_1A2CEAA74()
{
  result = qword_1ED708CE8;
  if (!qword_1ED708CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CE8);
  }

  return result;
}

unint64_t sub_1A2CEAACC()
{
  result = qword_1ED708CF0;
  if (!qword_1ED708CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CF0);
  }

  return result;
}

uint64_t sub_1A2CEAB20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A2D196E0 == a2;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1AE30 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A2D1AE50 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A2D1AE70 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D1AE90 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A2D1AEB0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

Swift::Bool __swiftcall ActivityQoSPredicate.matches(activityIdentifier:)(Swift::String activityIdentifier)
{
  if (*v1)
  {
    v6 = activityIdentifier;
    MEMORY[0x1EEE9AC00](activityIdentifier._countAndFlagsBits);
    v5[2] = &v6;
    v3 = sub_1A2C956A8(sub_1A2CB05CC, v5, v2);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1A2CEADCC(uint64_t a1)
{
  v2 = sub_1A2CEB2A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CEAE08(uint64_t a1)
{
  v2 = sub_1A2CEB2A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityQoSPredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1878, &unk_1A2D147A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CEB2A4();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2C8A470(&unk_1ED708820);
  sub_1A2D08AA4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityQoSPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1888, &qword_1A2D147B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CEB2A4();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    sub_1A2C8A470(&qword_1ED709510);
    sub_1A2D08A14();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CEB1B0()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CEB330();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t static ActivityQoSPredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1A2CC30E4(v2, v3);
  }
}

unint64_t sub_1A2CEB2A4()
{
  result = qword_1EB0A1880;
  if (!qword_1EB0A1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1880);
  }

  return result;
}

unint64_t sub_1A2CEB2F8(void *a1)
{
  a1[1] = sub_1A2CBBB44();
  a1[2] = sub_1A2CEB330();
  result = sub_1A2CEB384();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CEB330()
{
  result = qword_1EB0A1B30;
  if (!qword_1EB0A1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1B30);
  }

  return result;
}

unint64_t sub_1A2CEB384()
{
  result = qword_1EB0A1890;
  if (!qword_1EB0A1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1890);
  }

  return result;
}

unint64_t sub_1A2CEB3FC()
{
  result = qword_1EB0A1898;
  if (!qword_1EB0A1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1898);
  }

  return result;
}

unint64_t sub_1A2CEB454()
{
  result = qword_1EB0A18A0;
  if (!qword_1EB0A18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A18A0);
  }

  return result;
}

unint64_t sub_1A2CEB4AC()
{
  result = qword_1EB0A18A8;
  if (!qword_1EB0A18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A18A8);
  }

  return result;
}

uint64_t ActivityRequest.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = a1[1];
  a9[2] = *a1;
  a9[3] = v24;
  a9[4] = a2;
  a9[5] = a3;
  v25 = type metadata accessor for ActivityRequest();
  sub_1A2C671E0(a4, a9 + v25[7], type metadata accessor for OpaqueActivityContent);
  *(a9 + v25[8]) = a5;
  *(a9 + v25[9]) = a6;
  v26 = a9 + v25[10];
  *v26 = *a7;
  *(v26 + 2) = *(a7 + 16);
  *(a9 + v25[11]) = a8;
  *(a9 + v25[12]) = a10;
  *(a9 + v25[13]) = a11;
  *(a9 + v25[14]) = a12;
  *(a9 + v25[15]) = a13;
  *a9 = a14;
  a9[1] = a15;
  *(a9 + v25[16]) = a16;
  v27 = v25[17];
  v28 = sub_1A2D07F94();
  result = (*(*(v28 - 8) + 32))(a9 + v27, a17, v28);
  v30 = (a9 + v25[18]);
  *v30 = a18;
  v30[1] = a19;
  return result;
}

uint64_t ActivityRequest.copy(withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v25 = v3[3];
  v5 = v3[5];
  v26 = v3[4];
  v27 = v3[2];
  v6 = type metadata accessor for ActivityRequest();
  sub_1A2C69790(v3 + v6[7], &a3[v6[7]], type metadata accessor for OpaqueActivityContent);
  v7 = *(v3 + v6[8]);
  v8 = *(v3 + v6[9]);
  v9 = v6[11];
  v10 = v3 + v6[10];
  v31 = *v10;
  v32 = *(v10 + 2);
  v11 = *(v3 + v9);
  v12 = *(v3 + v6[12]);
  v13 = *(v3 + v6[14]);
  v23 = *(v3 + v6[15]);
  v24 = *(v3 + v6[13]);
  v14 = v6[17];
  v22 = *(v3 + v6[16]);
  v15 = sub_1A2D07F94();
  (*(*(v15 - 8) + 16))(&a3[v14], v3 + v14, v15);
  v16 = (v3 + v6[18]);
  v17 = *v16;
  v18 = v16[1];
  *(a3 + 2) = v27;
  *(a3 + 3) = v25;
  *(a3 + 4) = v26;
  *(a3 + 5) = v5;
  *&a3[v6[8]] = v7;
  *&a3[v6[9]] = v8;
  v19 = &a3[v6[10]];
  *(v19 + 2) = v32;
  *v19 = v31;
  *&a3[v6[11]] = v11;
  a3[v6[12]] = v12;
  a3[v6[13]] = v24;
  a3[v6[14]] = v13;
  a3[v6[15]] = v23;
  *a3 = a1;
  *(a3 + 1) = a2;
  a3[v6[16]] = v22;
  v20 = &a3[v6[18]];
  *v20 = v17;
  *(v20 + 1) = v18;

  sub_1A2C5E63C(v26, v5);

  sub_1A2C66F58(&v31, v30);
}

uint64_t sub_1A2CEB87C(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v12 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_16:
    v15 = v12 | (v3 << 6);
    v16 = result;
    v17 = *(result + 56) + 24 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(*(result + 48) + v15);
    sub_1A2C66A94(*v17);
    v22 = sub_1A2C66BC0(v21);
    if ((v23 & 1) == 0)
    {
      goto LABEL_50;
    }

    v24 = *(a2 + 56) + 24 * v22;
    v25 = *v24;
    v26 = *(v24 + 8);
    if ((*(v24 + 16) & 1) == 0)
    {
      if (v20)
      {
        goto LABEL_49;
      }

      if (!v26)
      {
        if (v19)
        {
          goto LABEL_48;
        }

        v9 = v18;
        v10 = 0;
        goto LABEL_7;
      }

      if (v26 == 1)
      {
        if (v19 != 1)
        {
          goto LABEL_48;
        }

        v9 = v18;
        v10 = 1;
        goto LABEL_7;
      }

      if (v19 < 2)
      {
LABEL_48:
        v20 = 0;
LABEL_50:
        sub_1A2C6AE9C(v18, v19, v20);
        return 0;
      }

      if (v25 == v18 && v26 == v19)
      {
        v9 = v18;
        v10 = v19;
LABEL_7:
        v11 = 0;
        goto LABEL_8;
      }

      v28 = sub_1A2D08B34();
      v29 = v18;
      v30 = v19;
      v31 = 0;
      goto LABEL_44;
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (v26)
    {
      if (v26 == 1)
      {
        if (v19 != 1)
        {
          goto LABEL_49;
        }

        v9 = v18;
        v10 = 1;
        v11 = 1;
        goto LABEL_8;
      }

      if (v19 < 2)
      {
LABEL_49:
        v20 = 1;
        goto LABEL_50;
      }

      if (v25 == v18 && v26 == v19)
      {
        v9 = v18;
        v10 = v19;
        v11 = 1;
        goto LABEL_8;
      }

      v28 = sub_1A2D08B34();
      v29 = v18;
      v30 = v19;
      v31 = 1;
LABEL_44:
      sub_1A2C6AE9C(v29, v30, v31);
      result = v16;
      v7 = v33;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_49;
      }

      v9 = v18;
      v10 = 0;
      v11 = 1;
LABEL_8:
      sub_1A2C6AE9C(v9, v10, v11);
      result = v16;
      v7 = v33;
    }
  }

  v13 = v3;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v14 = *(v4 + 8 * v3);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v33 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, char a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v64 = a8;
  v74 = a5;
  v75 = a7;
  v73 = a4;
  v85 = a3;
  v65 = a9;
  v77 = a18;
  v78 = a16;
  v79 = a20;
  v76 = a14;
  v70 = a25;
  v71 = a22;
  v68 = a20;
  v69 = a24;
  v66 = a23;
  v80 = a23;
  v81 = a24;
  v82 = a25;
  v28 = type metadata accessor for ActivityContent();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v60[-v31];
  v33 = type metadata accessor for OpaqueActivityContent();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v67 = &v60[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = *a2;
  v36 = a2[1];
  v38 = a1;
  v83 = *a6;
  v84 = *(a6 + 2);
  v39 = sub_1A2D07D84();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_1A2D07D74();
  v42 = v72;
  v43 = sub_1A2D07D64();
  if (v42)
  {
    v45 = v85;

    sub_1A2C69EAC(&v83);
    v48 = sub_1A2D07F94();
    (*(*(v48 - 8) + 8))(v78, v48);
    (*(v29 + 8))(v45, v28);
    return (*(*(a19 - 8) + 8))(a1, a19);
  }

  else
  {
    v62 = v37;
    v63 = v36;
    v46 = v65;
    v71 = v43;
    v72 = v44;
    (*(v29 + 16))(v32, v85, v28);
    v47 = v67;
    OpaqueActivityContent.init<A>(encoding:)(v32, v67);
    v70 = a17;
    LODWORD(v69) = a15;
    v68 = a13;
    LODWORD(v66) = a12;
    v61 = a11;

    (*(v29 + 8))(v85, v28);
    (*(*(a19 - 8) + 8))(v38, a19);
    v50 = type metadata accessor for ActivityRequest();
    sub_1A2C671E0(v47, v46 + v50[7], type metadata accessor for OpaqueActivityContent);
    v51 = v63;
    v46[2] = v62;
    v46[3] = v51;
    v52 = v72;
    v46[4] = v71;
    v46[5] = v52;
    v53 = v74;
    *(v46 + v50[8]) = v73;
    *(v46 + v50[9]) = v53;
    v54 = v46 + v50[10];
    *v54 = v83;
    *(v54 + 2) = v84;
    *(v46 + v50[11]) = v75;
    *(v46 + v50[12]) = v64 & 1;
    *(v46 + v50[13]) = a10 & 1;
    *(v46 + v50[14]) = v61 & 1;
    *(v46 + v50[15]) = v66 & 1;
    v55 = v76;
    *v46 = v68;
    v46[1] = v55;
    *(v46 + v50[16]) = v69;
    v56 = v50[17];
    v57 = sub_1A2D07F94();
    result = (*(*(v57 - 8) + 32))(v46 + v56, v78, v57);
    v58 = (v46 + v50[18]);
    v59 = v77;
    *v58 = v70;
    v58[1] = v59;
  }

  return result;
}

uint64_t ActivityRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityRequest.attributesType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ActivityRequest.platterTarget.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityRequest() + 32));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1A2C66BC0(0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 56) + 24 * v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  sub_1A2C66A94(*v4);
  return v5;
}

uint64_t ActivityRequest.assetProviderBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityRequest() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1A2CEC0E4()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C69EDC(&qword_1ED708D38, type metadata accessor for ActivityRequest);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t sub_1A2CEC1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CECA88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CEC20C(uint64_t a1)
{
  v2 = sub_1A2C6A740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CEC248(uint64_t a1)
{
  v2 = sub_1A2C6A740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL _s11ActivityKit0A7RequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1A2D08B34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v8 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2C8D278(a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for ActivityRequest();
  if ((static OpaqueActivityContent.== infix(_:_:)(a1 + v9[7], a2 + v9[7]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2CEB87C(*(a1 + v9[8]), *(a2 + v9[8])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1A2CEB87C(*(a1 + v9[9]), *(a2 + v9[9])) & 1) == 0)
  {
    return 0;
  }

  v10 = v9[10];
  v28 = *(a1 + v10);
  v29 = *(a1 + v10 + 16);
  v26 = *(a1 + v10);
  v27 = *(a1 + v10 + 16);
  v11 = a2 + v10;
  v30 = *v11;
  v31 = *(v11 + 2);
  v24 = *v11;
  v25 = *(v11 + 2);
  sub_1A2C66F58(&v28, v23);
  sub_1A2C66F58(&v30, v23);
  v12 = _s11ActivityKit0A19PresentationOptionsV2eeoiySbAC_ACtFZ_0(&v26, &v24);
  v32 = v24;
  v33 = v25;
  sub_1A2C69EAC(&v32);
  v34 = v26;
  v35 = v27;
  sub_1A2C69EAC(&v34);
  if ((v12 & 1) == 0 || (sub_1A2CC2F58(*(a1 + v9[11]), *(a2 + v9[11])) & 1) == 0 || *(a1 + v9[12]) != *(a2 + v9[12]) || *(a1 + v9[13]) != *(a2 + v9[13]) || *(a1 + v9[14]) != *(a2 + v9[14]) || *(a1 + v9[15]) != *(a2 + v9[15]))
  {
    return 0;
  }

  v14 = v9[16];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 4)
  {
    if (v16 != 4)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = v9[17];
  if ((_s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v18 = v9[18];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    return v22 && (*v19 == *v21 && v20 == v22 || (sub_1A2D08B34() & 1) != 0);
  }

  return !v22;
}

unint64_t sub_1A2CEC510()
{
  result = qword_1EB09EFC0;
  if (!qword_1EB09EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFC0);
  }

  return result;
}

unint64_t sub_1A2CEC564()
{
  result = qword_1EB09F0D8;
  if (!qword_1EB09F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0D8);
  }

  return result;
}

unint64_t sub_1A2CEC5B8()
{
  result = qword_1ED708D58;
  if (!qword_1ED708D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D58);
  }

  return result;
}

unint64_t sub_1A2CEC60C()
{
  result = qword_1ED709268;
  if (!qword_1ED709268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
    sub_1A2CEC690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709268);
  }

  return result;
}

unint64_t sub_1A2CEC690()
{
  result = qword_1ED709270;
  if (!qword_1ED709270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709270);
  }

  return result;
}

uint64_t sub_1A2CEC6E4(void *a1)
{
  a1[1] = sub_1A2C69EDC(&qword_1EB09EFD8, type metadata accessor for ActivityRequest);
  a1[2] = sub_1A2C69EDC(&qword_1ED708D38, type metadata accessor for ActivityRequest);
  result = sub_1A2C69EDC(&unk_1EB09EFC8, type metadata accessor for ActivityRequest);
  a1[3] = result;
  return result;
}

void sub_1A2CEC790()
{
  sub_1A2CEC920(319, &qword_1ED70A008, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for OpaqueActivityContent();
    if (v1 <= 0x3F)
    {
      sub_1A2CD1390();
      if (v2 <= 0x3F)
      {
        sub_1A2CEC920(319, &qword_1ED709518, &type metadata for ActivityContentSource.Request, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1A2CEC920(319, qword_1ED70A010, &type metadata for ActivityProtectionClass, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A2D07F94();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A2CEC920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A2CEC984()
{
  result = qword_1EB0A18E0;
  if (!qword_1EB0A18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A18E0);
  }

  return result;
}

unint64_t sub_1A2CEC9DC()
{
  result = qword_1ED708D40;
  if (!qword_1ED708D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D40);
  }

  return result;
}

unint64_t sub_1A2CECA34()
{
  result = qword_1ED708D48;
  if (!qword_1ED708D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D48);
  }

  return result;
}

uint64_t sub_1A2CECA88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A2D1B000 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5472657474616C70 && a2 == 0xED00007465677261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1B020 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D1B040 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D656870457369 && a2 == 0xEB000000006C6172 || (sub_1A2D08B34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E756F626E557369 && a2 == 0xEB00000000646564 || (sub_1A2D08B34() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E656D6F4D7369 && a2 == 0xEB00000000797261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74726F706D497369 && a2 == 0xEB00000000746E61 || (sub_1A2D08B34() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A2D08B34() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_1A2D08B34() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1B060 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D19720 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1A2CECFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18F8, &qword_1A2D17D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2CED030(uint64_t a1)
{
  v2 = sub_1A2CEE3B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CED06C(uint64_t a1)
{
  v2 = sub_1A2CEE3B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CED0A8()
{
  if (*v0)
  {
    result = 0x7265746661;
  }

  else
  {
    result = 0x74616964656D6D69;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CED0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616964656D6D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CED1C4(uint64_t a1)
{
  v2 = sub_1A2CEE2F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CED200(uint64_t a1)
{
  v2 = sub_1A2CEE2F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CED23C(uint64_t a1)
{
  v2 = sub_1A2CEE404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CED278(uint64_t a1)
{
  v2 = sub_1A2CEE404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPlatterDismissalPolicy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1900, &qword_1A2D14CF0);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - v4;
  v5 = sub_1A2D07F94();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1908, &qword_1A2D14CF8);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ActivityPlatterDismissalPolicy();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1910, &qword_1A2D14D00);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CEE2F8();
  v22 = v34;
  sub_1A2D08C74();
  sub_1A2CEE34C(v35, v15);
  if ((*(v22 + 48))(v15, 1, v5) == 1)
  {
    v36 = 0;
    sub_1A2CEE404();
    sub_1A2D08A84();
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    v24 = v30;
    (*(v22 + 32))(v30, v15, v5);
    v37 = 1;
    sub_1A2CEE3B0();
    v25 = v31;
    sub_1A2D08A84();
    sub_1A2C6D540(&qword_1ED7093B0, MEMORY[0x1E6969530]);
    v26 = v33;
    sub_1A2D08AE4();
    (*(v32 + 8))(v25, v26);
    (*(v22 + 8))(v24, v5);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t ActivityPlatterDismissalPolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1930, &qword_1A2D14D08);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1938, &qword_1A2D14D10);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1940, &unk_1A2D14D18);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for ActivityPlatterDismissalPolicy();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1A2CEE2F8();
  v25 = v58;
  sub_1A2D08C64();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v16;
  v49 = v19;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1A2D08A64();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1A2C6D870();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1A2D088A4();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v37 = v58;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1A2CEE3B0();
    v33 = v27;
    sub_1A2D089D4();
    v34 = v57;
    v42 = v26;
    v43 = sub_1A2D07F94();
    sub_1A2C6D540(&qword_1ED7097D0, MEMORY[0x1E6969530]);
    v44 = v49;
    v45 = v53;
    sub_1A2D08A54();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1A2CEE458(v44, v50);
  }

  else
  {
    v64 = 0;
    sub_1A2CEE404();
    sub_1A2D089D4();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = sub_1A2D07F94();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1A2CEE458(v46, v42);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1A2CEDD78()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6D540(&qword_1EB0A1948, type metadata accessor for ActivityPlatterDismissalPolicy);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t sub_1A2CEDE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A2D07E84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v12 = sub_1A2D07F44();
  v14 = v13;
  sub_1A2C6D540(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &qword_1EB0A0A70, &unk_1A2D0D250);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2CEE8D8(v8, a2);
}

uint64_t _s11ActivityKit0A22PlatterDismissalPolicyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityPlatterDismissalPolicy();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1998, &unk_1A2D15130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1A2CEE34C(a1, &v23 - v15);
  sub_1A2CEE34C(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1A2CEE34C(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v20 = _s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1A2C9A6A4(v16);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1A2C54E38(v16, &unk_1EB0A1998, &unk_1A2D15130);
    v20 = 0;
    return v20 & 1;
  }

  sub_1A2C9A6A4(v16);
  v20 = 1;
  return v20 & 1;
}

uint64_t type metadata accessor for ActivityPlatterDismissalPolicy()
{
  result = qword_1EB09ED68;
  if (!qword_1EB09ED68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A2CEE2F8()
{
  result = qword_1EB0A1918;
  if (!qword_1EB0A1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1918);
  }

  return result;
}

uint64_t sub_1A2CEE34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPlatterDismissalPolicy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A2CEE3B0()
{
  result = qword_1EB0A1920;
  if (!qword_1EB0A1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1920);
  }

  return result;
}

unint64_t sub_1A2CEE404()
{
  result = qword_1EB0A1928;
  if (!qword_1EB0A1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1928);
  }

  return result;
}

uint64_t sub_1A2CEE458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPlatterDismissalPolicy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2CEE4BC(void *a1)
{
  a1[1] = sub_1A2C6D540(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy);
  a1[2] = sub_1A2C6D540(&qword_1EB0A1948, type metadata accessor for ActivityPlatterDismissalPolicy);
  result = sub_1A2C6D540(&qword_1EB0A1950, type metadata accessor for ActivityPlatterDismissalPolicy);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CEE590()
{
  v0 = sub_1A2D07F94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1A2CEE61C()
{
  result = qword_1EB0A1958;
  if (!qword_1EB0A1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1958);
  }

  return result;
}

unint64_t sub_1A2CEE674()
{
  result = qword_1EB0A1960;
  if (!qword_1EB0A1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1960);
  }

  return result;
}

unint64_t sub_1A2CEE6CC()
{
  result = qword_1EB0A1968;
  if (!qword_1EB0A1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1968);
  }

  return result;
}

unint64_t sub_1A2CEE724()
{
  result = qword_1EB0A1970;
  if (!qword_1EB0A1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1970);
  }

  return result;
}

unint64_t sub_1A2CEE77C()
{
  result = qword_1EB0A1978;
  if (!qword_1EB0A1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1978);
  }

  return result;
}

unint64_t sub_1A2CEE7D4()
{
  result = qword_1EB0A1980;
  if (!qword_1EB0A1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1980);
  }

  return result;
}

unint64_t sub_1A2CEE82C()
{
  result = qword_1EB0A1988;
  if (!qword_1EB0A1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1988);
  }

  return result;
}

unint64_t sub_1A2CEE884()
{
  result = qword_1EB0A1990;
  if (!qword_1EB0A1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1990);
  }

  return result;
}

uint64_t sub_1A2CEE8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ActivityInputServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

ActivityKit::ActivityInputServerError::Code_optional __swiftcall ActivityInputServerError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *ActivityInputServerError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t ActivityInputServerError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19A8, qword_1A2D15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    v2 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1A2D08444();
    *(inited + 40) = v3;
    swift_getErrorValue();
    *(inited + 72) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    v5 = sub_1A2CAAF40(inited);
    swift_setDeallocating();
    sub_1A2CEED3C(inited + 32);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1A2CAAF40(v7);
  }
}

unint64_t sub_1A2CEEBAC()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19A8, qword_1A2D15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    v2 = *MEMORY[0x1E696AA08];
    *(inited + 32) = sub_1A2D08444();
    *(inited + 40) = v3;
    swift_getErrorValue();
    *(inited + 72) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    v5 = sub_1A2CAAF40(inited);
    swift_setDeallocating();
    sub_1A2CEED3C(inited + 32);
    return v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1A2CAAF40(v7);
  }
}

uint64_t sub_1A2CEECC4(uint64_t a1)
{
  v2 = sub_1A2CEEF58();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CEED00(uint64_t a1)
{
  v2 = sub_1A2CEEF58();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A2CEED3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19B0, &qword_1A2D0BDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A2CEEDA8()
{
  result = qword_1EB0A19B8;
  if (!qword_1EB0A19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A19B8);
  }

  return result;
}

unint64_t sub_1A2CEEE00()
{
  result = qword_1EB0A19C0;
  if (!qword_1EB0A19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A19C0);
  }

  return result;
}

uint64_t sub_1A2CEEE64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1A2CEEEC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CEEF58()
{
  result = qword_1EB0A19C8;
  if (!qword_1EB0A19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A19C8);
  }

  return result;
}

uint64_t sub_1A2CEEFAC()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09F590);
  __swift_project_value_buffer(v0, qword_1EB09F590);
  return sub_1A2D08084();
}

uint64_t sub_1A2CEF030()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v0 = off_1ED709CF8;
  type metadata accessor for ActivityCenter();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  qword_1ED708EA8 = v1;
}

uint64_t static ActivityCenter.shared.getter()
{
  if (qword_1ED708EA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A2CEF110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A2C53CD8(*(v3 + 16) + 32, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = *(v8 + 8);

  v10 = v16;
  v9(a1, a2, v7, v8);
  if (v10)
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = type metadata accessor for ActivityDescriptor();
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1A2CEF238(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 16))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF2F4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = *(v2 + 16);
  v14 = type metadata accessor for OpaqueActivityPayload(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = qword_1ED708D98;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for ActivityUIDismissalPolicy();
  v17 = __swift_project_value_buffer(v16, qword_1ED708DA0);
  sub_1A2C7F304(v17, v8, type metadata accessor for ActivityUIDismissalPolicy);
  v18 = type metadata accessor for ActivityEndingOptions();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1A2C90058(a1, a2, v12, v8);

  sub_1A2C54E38(v8, &unk_1EB0A0AC0, &qword_1A2D0A810);
  return sub_1A2C54E38(v12, &qword_1EB0A02E0, &qword_1A2D0AA50);
}

uint64_t sub_1A2CEF500(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 48))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF5BC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 56))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF678(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(*(v1 + 16) + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 64))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CEF734(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1A2C53CD8(*(v3 + 16) + 32, v12);
  v7 = v13;
  v8 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v15 = v6;
  v9 = *(v8 + 40);

  v10 = v9(a1, a2, &v15, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

id sub_1A2CEF804(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0940, &unk_1A2D0D280);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AE0, &qword_1A2D15370);
  v11 = *(v43 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19D0, &qword_1A2D15378);
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - v18;
  v19 = *(*(v2 + 16) + 88);
  v20 = *&v19[OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton];
  v21 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v23 = v22;
  }

  v52 = v23;

  v42 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AF0, qword_1A2D0D290);
  sub_1A2D081D4();
  v52 = *(v20 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2C56A78(&unk_1EB09EB48, &qword_1EB0A0940, &unk_1A2D0D280);
  sub_1A2C56A78(&qword_1EB09EB70, &qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2D08244();
  (*(v7 + 8))(v10, v6);
  sub_1A2C56A78(&qword_1EB09EBE0, &qword_1EB0A0AE0, &qword_1A2D15370);
  v24 = v43;
  v25 = sub_1A2D081F4();
  (*(v11 + 8))(v14, v24);

  v52 = v25;
  sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v26 = sub_1A2D086F4();
  v51 = v26;
  v27 = sub_1A2D086D4();
  v28 = v45;
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19D8, &qword_1A2D15380);
  sub_1A2C56A78(&unk_1EB09EB80, &qword_1EB0A19D8, &qword_1A2D15380);
  sub_1A2C8B9D4();
  v29 = v44;
  sub_1A2D08264();
  sub_1A2C54E38(v28, &qword_1EB0A0570, &qword_1A2D0ADA0);

  v30 = swift_allocObject();
  v31 = v49;
  *(v30 + 16) = v48;
  *(v30 + 24) = v31;
  sub_1A2C56A78(&qword_1EB09EBC0, &qword_1EB0A19D0, &qword_1A2D15378);

  v32 = v46;
  v33 = sub_1A2D08284();

  (*(v47 + 8))(v29, v32);
  v34 = type metadata accessor for CancellableAssertion();
  v35 = objc_allocWithZone(v34);
  v52 = v33;
  v36 = sub_1A2D080E4();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  *&v35[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v50.receiver = v35;
  v50.super_class = v34;
  v39 = objc_msgSendSuper2(&v50, sel_init);

  return v39;
}

uint64_t sub_1A2CEFE1C(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *a1 + 56;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(v3 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      a2(v14, v15);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t ActivityCenter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ActivityCenter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1A2CEFF88()
{
  result = [objc_allocWithZone(type metadata accessor for ActivityCenterObjcBridge()) init];
  qword_1ED708900 = result;
  return result;
}

id static ActivityCenterObjcBridge.shared.getter()
{
  if (qword_1ED7088F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED708900;

  return v1;
}

id sub_1A2CF0070()
{
  v1 = v0;
  v16 = sub_1A2D086E4();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2D086C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1A2D08314();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v15 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_queue;
  v10 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v14[1] = "bservationClient";
  v14[2] = v10;
  sub_1A2D082F4();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v16);
  *&v0[v15] = sub_1A2D08724();
  v11 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_latestActivityContentUpdateByIdentifier;
  *&v1[v11] = sub_1A2CAB070(MEMORY[0x1E69E7CC0]);
  if (qword_1ED708EA0 != -1)
  {
    swift_once();
  }

  *&v1[OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter] = qword_1ED708EA8;
  v12 = type metadata accessor for ActivityCenterObjcBridge();
  v17.receiver = v1;
  v17.super_class = v12;

  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1A2CF0388(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A19E0, &qword_1A2D15388);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter);
  if (qword_1ED7092D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED708D30;
  v10 = *(v8 + 16);
  v28 = xmmword_1ED708D00;
  v29 = xmmword_1ED708D20;
  v27 = xmmword_1ED708D10;
  sub_1A2C53CD8(v10 + 32, v33);
  v11 = v34;
  v12 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v31[1] = v27;
  v31[0] = v28;
  v31[2] = v29;
  v32 = v9;
  v13 = *(v12 + 48);

  v14 = v13(v31, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(v33);
  *&v31[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0278, &qword_1A2D0A940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03B0, &qword_1A2D0AAB8);
  sub_1A2C56A78(&qword_1EB09EBA0, &qword_1EB0A0278, &qword_1A2D0A940);
  sub_1A2C56A78(&qword_1EB0A19F0, &qword_1EB0A03B0, &qword_1A2D0AAB8);
  sub_1A2D08234();

  v15 = swift_allocObject();
  v16 = v26;
  *(v15 + 16) = v25;
  *(v15 + 24) = v16;
  sub_1A2C56A78(&qword_1EB0A19F8, &qword_1EB0A19E0, &qword_1A2D15388);

  v17 = sub_1A2D08284();

  (*(v4 + 8))(v7, v3);
  v18 = type metadata accessor for CancellableAssertion();
  v19 = objc_allocWithZone(v18);
  *&v31[0] = v17;
  v20 = sub_1A2D080E4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  *&v19[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v30.receiver = v19;
  v30.super_class = v18;
  v23 = objc_msgSendSuper2(&v30, sel_init);

  return v23;
}

uint64_t sub_1A2CF0764(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB09F588 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08094();
  __swift_project_value_buffer(v2, qword_1EB09F590);
  v3 = sub_1A2D07EC4();
  v4 = [v3 localizedDescription];
  v5 = sub_1A2D08444();
  v7 = v6;

  v8 = v3;

  v9 = sub_1A2D08074();
  v10 = sub_1A2D08684();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_1A2C55558(0xD000000000000041, 0x80000001A2D1B210, &v21);
    *(v11 + 12) = 2082;
    v13 = [v8 domain];
    v14 = sub_1A2D08444();
    v16 = v15;

    v17 = sub_1A2C55558(v14, v16, &v21);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    v18 = [v8 code];

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_1A2C55558(v5, v7, &v21);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_1A2C51000, v9, v10, "%{public}s: %{public}s (%ld) %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v12, -1, -1);
    MEMORY[0x1A58E5180](v11, -1, -1);
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
  return sub_1A2D081D4();
}

uint64_t sub_1A2CF0A18(uint64_t *a1, void (*a2)(void, __n128))
{
  v4 = type metadata accessor for ActivityDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v20 = a2;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A2D088E4();
    sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
    v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    do
    {
      sub_1A2C7F304(v16, v12, type metadata accessor for ActivityDescriptor);
      sub_1A2C7F304(v12, v8, type metadata accessor for ActivityDescriptor);
      ACActivityDescriptor.init(descriptor:)(v8);
      sub_1A2C6E22C(v12, type metadata accessor for ActivityDescriptor);
      sub_1A2D088C4();
      v18 = *(v21 + 16);
      sub_1A2D088F4();
      sub_1A2D08904();
      sub_1A2D088D4();
      v16 += v17;
      --v14;
    }

    while (v14);
    a2 = v20;
    v15 = v21;
  }

  a2(v15, v10);
}

void sub_1A2CF0C30(uint64_t a1, uint64_t a2)
{
  sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
  v3 = sub_1A2D08544();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1A2CF0CAC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge_latestActivityContentUpdateByIdentifier;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_1A2C64868(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v18 = type metadata accessor for ActivityDescriptorContentState();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v17 = 0;
    goto LABEL_6;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = type metadata accessor for ActivityDescriptorContentState();
  v16 = *(v15 - 8);
  sub_1A2C7F304(v14 + *(v16 + 72) * v13, v8, type metadata accessor for ActivityDescriptorContentState);

  v17 = 1;
  (*(v16 + 56))(v8, 0, 1, v15);
LABEL_6:
  sub_1A2C54E38(v8, &qword_1EB0A0A68, &unk_1A2D0D240);
  return v17;
}

uint64_t sub_1A2CF0EE8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter) + 16);
  v14 = type metadata accessor for OpaqueActivityPayload(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = qword_1ED708D98;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for ActivityUIDismissalPolicy();
  v17 = __swift_project_value_buffer(v16, qword_1ED708DA0);
  sub_1A2C7F304(v17, v8, type metadata accessor for ActivityUIDismissalPolicy);
  v18 = type metadata accessor for ActivityEndingOptions();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1A2C90058(a1, a2, v12, v8);

  sub_1A2C54E38(v8, &unk_1EB0A0AC0, &qword_1A2D0A810);
  return sub_1A2C54E38(v12, &qword_1EB0A02E0, &qword_1A2D0AA50);
}

id sub_1A2CF11D0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0690, &qword_1A2D0B768);
  v37 = *(v38 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v36 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A08, &qword_1A2D15390);
  v39 = *(v40 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v36 - v11;
  v42 = v2;
  v13 = *&v2[OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter];
  if (qword_1ED7092D8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED708D30;
  v15 = *(v13 + 16);
  v45 = xmmword_1ED708D00;
  v46 = xmmword_1ED708D20;
  v44 = xmmword_1ED708D10;
  sub_1A2C53CD8(v15 + 32, v50);
  v17 = v51;
  v16 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v48[1] = v44;
  v48[0] = v45;
  v48[2] = v46;
  v49 = v14;
  v18 = *(v16 + 64);

  v19 = v18(v48, v17, v16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  *&v48[0] = v19;
  sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v20 = sub_1A2D086F4();
  v50[0] = v20;
  v21 = sub_1A2D086D4();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B8, &qword_1A2D0A980);
  sub_1A2C56A78(&qword_1ED708F10, &qword_1EB0A02B8, &qword_1A2D0A980);
  sub_1A2C8B9D4();
  sub_1A2D08264();
  sub_1A2C54E38(v6, &qword_1EB0A0570, &qword_1A2D0ADA0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0378, &qword_1A2D0AA90);
  sub_1A2C56A78(&qword_1ED708F18, &qword_1EB0A0690, &qword_1A2D0B768);
  sub_1A2C56A78(&qword_1ED7088E0, &qword_1EB0A0378, &qword_1A2D0AA90);
  v22 = v38;
  sub_1A2D08234();
  (*(v37 + 8))(v9, v22);
  v23 = swift_allocObject();
  v24 = v42;
  v25 = v41;
  v23[2] = v42;
  v23[3] = v25;
  v23[4] = v43;
  sub_1A2C56A78(&qword_1ED7088E8, &qword_1EB0A1A08, &qword_1A2D15390);
  v26 = v24;

  v27 = v40;
  v28 = sub_1A2D08284();

  (*(v39 + 8))(v12, v27);
  v29 = type metadata accessor for CancellableAssertion();
  v30 = objc_allocWithZone(v29);
  *&v48[0] = v28;
  v31 = sub_1A2D080E4();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  *&v30[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v47.receiver = v30;
  v47.super_class = v29;
  v34 = objc_msgSendSuper2(&v47, sel_init);

  return v34;
}

uint64_t sub_1A2CF17BC(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB09F588 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08094();
  __swift_project_value_buffer(v2, qword_1EB09F590);
  v3 = sub_1A2D07EC4();
  v4 = [v3 localizedDescription];
  v5 = sub_1A2D08444();
  v7 = v6;

  v8 = v3;

  v9 = sub_1A2D08074();
  v10 = sub_1A2D08684();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_1A2C55558(0xD00000000000003DLL, 0x80000001A2D1B1D0, &v21);
    *(v11 + 12) = 2082;
    v13 = [v8 domain];
    v14 = sub_1A2D08444();
    v16 = v15;

    v17 = sub_1A2C55558(v14, v16, &v21);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    v18 = [v8 code];

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_1A2C55558(v5, v7, &v21);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_1A2C51000, v9, v10, "%{public}s: %{public}s (%ld) %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v12, -1, -1);
    MEMORY[0x1A58E5180](v11, -1, -1);
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
  return sub_1A2D081D4();
}

id sub_1A2CF1AA4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

id ActivityCenterObjcBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityCenterObjcBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2CF1CB4(uint64_t a1, uint64_t a2)
{
  v8 = [objc_allocWithZone(type metadata accessor for ActivityAuthorization()) init];
  v4 = *(*&v8[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  os_unfair_lock_lock(v4);
  v5 = &v8[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    LOWORD(v9) = 512;
    (*(v6 + 48))(a1, a2, &v9, ObjectType, v6);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CF22B8()
{
  v1 = *(v0 + 16);
  v2 = sub_1A2D08434();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1A2CF2330(uint64_t a1)
{
  v2 = sub_1A2CF2554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CF236C(uint64_t a1)
{
  v2 = sub_1A2CF2554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationMap.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A18, &qword_1A2D15410);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CF2554();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A20, &qword_1A2D15418);
  sub_1A2CF27B4(&qword_1EB09EB38, sub_1A2CF25A8);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2CF2554()
{
  result = qword_1EB09F0B8;
  if (!qword_1EB09F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0B8);
  }

  return result;
}

unint64_t sub_1A2CF25A8()
{
  result = qword_1EB09ED38;
  if (!qword_1EB09ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED38);
  }

  return result;
}

uint64_t ActivityPresentationMap.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A28, &qword_1A2D15420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CF2554();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A20, &qword_1A2D15418);
    sub_1A2CF27B4(&qword_1EB09EB30, sub_1A2CF2838);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CF27B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1A20, &qword_1A2D15418);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2CF2838()
{
  result = qword_1EB09ED30;
  if (!qword_1EB09ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED30);
  }

  return result;
}

unint64_t sub_1A2CF28BC(void *a1)
{
  a1[1] = sub_1A2CA5A20();
  a1[2] = sub_1A2CF28F4();
  result = sub_1A2CF2948();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CF28F4()
{
  result = qword_1EB09EDB8;
  if (!qword_1EB09EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDB8);
  }

  return result;
}

unint64_t sub_1A2CF2948()
{
  result = qword_1EB09EDB0;
  if (!qword_1EB09EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDB0);
  }

  return result;
}

uint64_t sub_1A2CF299C()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CF28F4();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

unint64_t sub_1A2CF2A88()
{
  result = qword_1EB0A1A30;
  if (!qword_1EB0A1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1A30);
  }

  return result;
}

unint64_t sub_1A2CF2AE0()
{
  result = qword_1EB09F0A8;
  if (!qword_1EB09F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0A8);
  }

  return result;
}

unint64_t sub_1A2CF2B38()
{
  result = qword_1EB09F0B0;
  if (!qword_1EB09F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0B0);
  }

  return result;
}

uint64_t sub_1A2CF2B8C()
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CF2CB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D617473656D6974;
  v3 = 0xE900000000000070;
  v4 = a1;
  v5 = 0x746144656C617473;
  v6 = 0xE800000000000000;
  if (a1 == 5)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v5 = 0x7974746168437369;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001A2D18B20;
  if (a1 != 3)
  {
    v7 = 25705;
    v8 = 0xE200000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x53746E65746E6F63;
  v10 = 0xEC00000065746174;
  if (a1 != 1)
  {
    v9 = 0x746E65746E6F63;
    v10 = 0xE700000000000000;
  }

  if (!a1)
  {
    v9 = 0x6D617473656D6974;
    v10 = 0xE900000000000070;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xEC00000065746174;
        if (v11 != 0x53746E65746E6F63)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE700000000000000;
        if (v11 != 0x746E65746E6F63)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0xE900000000000065;
        if (v11 != 0x746144656C617473)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v3 = 0xE800000000000000;
        if (v11 != 0x7974746168437369)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v3 = 0x80000001A2D18B20;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xE200000000000000;
    v2 = 25705;
  }

  if (v11 != v2)
  {
LABEL_37:
    v13 = sub_1A2D08B34();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v3)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

unint64_t ActivityPayloadError.errorDescription.getter()
{
  v1 = type metadata accessor for ActivityPayloadError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C72030(v0, v4, type metadata accessor for ActivityPayloadError);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v7 = *(*(v6 - 8) + 8);
  v7(&v4[v5], v6);
  v7(v4, v6);
  return 0xD00000000000001ELL;
}

uint64_t ActivityPayloadError.failureReason.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A48, &qword_1A2D15660);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A50, &qword_1A2D15668);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v35 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A58, &qword_1A2D15670);
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v35 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A60, &qword_1A2D15678);
  v42 = *(v37 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = type metadata accessor for ActivityPayloadError(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C72030(v1, v25, type metadata accessor for ActivityPayloadError);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v27 = v15[4];
  v27(v21, v25, v14);
  v27(v18, &v25[v26], v14);
  sub_1A2C72100();
  sub_1A2D07DA4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A68, &qword_1A2D15680);
  v29 = v35;
  (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
  v30 = v39;
  sub_1A2D07F04();
  sub_1A2D07D24();
  (*(v40 + 8))(v30, v41);
  sub_1A2C54E38(v29, &qword_1EB0A1A50, &qword_1A2D15668);
  (*(v36 + 8))(v10, v38);
  sub_1A2C56A78(&qword_1EB0A1A70, &qword_1EB0A1A60, &qword_1A2D15678);
  v31 = v37;
  sub_1A2D07DB4();
  v45 = v43;
  v46 = v44;
  MEMORY[0x1A58E4150](0x6564656563786520, 0xEA00000000002064);
  sub_1A2D07DB4();
  MEMORY[0x1A58E4150](v43, v44);

  v32 = v45;
  (*(v42 + 8))(v13, v31);
  v33 = v15[1];
  v33(v18, v14);
  v33(v21, v14);
  return v32;
}

unint64_t ActivityPayloadError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityPayloadError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2CAAF40(MEMORY[0x1E69E7CC0]);
  sub_1A2C72030(v1, v5, type metadata accessor for ActivityPayloadError);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v9 = *(*(v8 - 8) + 8);
  v9(&v5[v7], v8);
  v9(v5, v8);
  v10 = *MEMORY[0x1E696A578];
  v11 = sub_1A2D08444();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69E6158];
  *&v48 = 0xD00000000000001ELL;
  *(&v48 + 1) = 0x80000001A2D1B260;
  sub_1A2CAB5F4(&v48, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v6;
  sub_1A2CF4CBC(v47, v11, v13, isUniquelyReferenced_nonNull_native);

  v16 = v46;
  v17 = ActivityPayloadError.failureReason.getter();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = *MEMORY[0x1E696A588];
    v22 = sub_1A2D08444();
    v24 = v23;
    v49 = v14;
    *&v48 = v19;
    *(&v48 + 1) = v20;
    sub_1A2CAB5F4(&v48, v47);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v16;
    sub_1A2CF4CBC(v47, v22, v24, v25);

    v16 = v46;
  }

  sub_1A2C75024(&qword_1EB0A1A78, type metadata accessor for ActivityPayloadError);
  v26 = sub_1A2D07E54();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    v30 = *MEMORY[0x1E696A598];
    v31 = sub_1A2D08444();
    v33 = v32;
    v49 = v14;
    *&v48 = v28;
    *(&v48 + 1) = v29;
    sub_1A2CAB5F4(&v48, v47);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v16;
    sub_1A2CF4CBC(v47, v31, v33, v34);

    v16 = v46;
  }

  v35 = sub_1A2D07E24();
  if (v36)
  {
    v37 = v35;
    v38 = v36;
    v39 = *MEMORY[0x1E696A478];
    v40 = sub_1A2D08444();
    v42 = v41;
    v49 = v14;
    *&v48 = v37;
    *(&v48 + 1) = v38;
    sub_1A2CAB5F4(&v48, v47);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v16;
    sub_1A2CF4CBC(v47, v40, v42, v43);

    return v46;
  }

  return v16;
}

unint64_t sub_1A2CF3888(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C72030(v1, v4, type metadata accessor for ActivityPayloadError);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650) + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A40, &qword_1A2D15658);
  v7 = *(*(v6 - 8) + 8);
  v7(&v4[v5], v6);
  v7(v4, v6);
  return 0xD00000000000001ELL;
}

uint64_t sub_1A2CF39B0(uint64_t a1)
{
  v2 = sub_1A2C75024(&qword_1EB0A1AC0, type metadata accessor for ActivityPayloadError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CF3A1C(uint64_t a1)
{
  v2 = sub_1A2C75024(&qword_1EB0A1AC0, type metadata accessor for ActivityPayloadError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t OpaqueActivityPayload.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OpaqueActivityPayload(0) + 20);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OpaqueActivityPayload.contentState.getter()
{
  v1 = v0 + *(type metadata accessor for OpaqueActivityPayload(0) + 24);
  v2 = *v1;
  sub_1A2C5E63C(*v1, *(v1 + 8));
  return v2;
}

uint64_t OpaqueActivityPayload.contentState.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for OpaqueActivityPayload(0) + 24);
  result = sub_1A2C55840(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t OpaqueActivityPayload.isChatty.setter(char a1)
{
  result = type metadata accessor for OpaqueActivityPayload(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_1A2CF3EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A2CF3F6C()
{
  *v0;
  *v0;
  *v0;
  sub_1A2D08484();
}

uint64_t sub_1A2CF4088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1A2CF65C0();
  *a2 = result;
  return result;
}

void sub_1A2CF40B8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0xE900000000000070;
  v5 = 0x6D617473656D6974;
  v6 = 0x746144656C617473;
  if (v3 != 5)
  {
    v6 = 0x7974746168437369;
    v2 = 0xE800000000000000;
  }

  v7 = 0x80000001A2D18B20;
  v8 = 0xD000000000000012;
  if (v3 != 3)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (*v1 > 4u)
  {
    v7 = v2;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xEC00000065746174;
  v10 = 0x53746E65746E6F63;
  if (v3 != 1)
  {
    v10 = 0x746E65746E6F63;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 2u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_1A2CF419C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A2CF65C0();
  *a1 = result;
  return result;
}

uint64_t sub_1A2CF41D0(uint64_t a1)
{
  v2 = sub_1A2C74FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CF420C(uint64_t a1)
{
  v2 = sub_1A2C74FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CF4250()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C75024(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t ActivityPayload.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActivityPayload.init(timestamp:contentState:alertConfiguration:staleDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = a4;
  v54 = a1;
  v55 = a3;
  v58 = a2;
  v56 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = v47 - v15;
  v51 = sub_1A2D07F94();
  v57 = *(v51 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v47 - v20;
  v49 = *(a5 - 8);
  v22 = v49;
  v23 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a5;
  v60 = a6;
  v47[2] = a6;
  v47[3] = a7;
  v61 = a7;
  v62 = a8;
  v47[1] = a8;
  v48 = type metadata accessor for ActivityContent();
  v27 = *(v48 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v47 - v33;
  v35 = *(v22 + 16);
  v36 = a5;
  v47[0] = a5;
  v35(v26, v58, a5, v32);
  v37 = v52;
  sub_1A2C6BD18(v52, v21, &qword_1EB0A0E28, &unk_1A2D0EC10);
  ActivityContent.init(state:staleDate:relevanceScore:)(v26, v21, v36, v34, 0.0);
  v38 = v50;
  v39 = v51;
  v40 = v54;
  (*(v57 + 16))(v50, v54, v51);
  v41 = v48;
  (*(v27 + 16))(v30, v34, v48);
  v42 = v55;
  v43 = v53;
  sub_1A2C6BD18(v55, v53, &qword_1EB0A04D0, &unk_1A2D15640);
  v44 = v43;
  v45 = v47[0];
  ActivityPayload.init(timestamp:content:alertConfiguration:)(v38, v30, v44, v56);
  sub_1A2C54E38(v37, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C54E38(v42, &qword_1EB0A04D0, &unk_1A2D15640);
  (*(v49 + 8))(v58, v45);
  (*(v57 + 8))(v40, v39);
  return (*(v27 + 8))(v34, v41);
}

uint64_t ActivityPayload.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for OpaqueActivityContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v43 = a5;
  v16 = type metadata accessor for ActivityContent();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v40 = type metadata accessor for ActivityPayload();
  v20 = *(v40 + 60);
  v21 = type metadata accessor for AlertConfiguration();
  v22 = *(*(v21 - 8) + 56);
  v45 = v20;
  v22(a6 + v20, 1, 1, v21);
  v23 = sub_1A2D07FC4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v51 = a6;
  v25(a6, a1, v23);
  v26 = type metadata accessor for OpaqueActivityPayload(0);
  v27 = v26[7];
  v46 = a1;
  sub_1A2C72030(a1 + v27, v15, type metadata accessor for OpaqueActivityContent);
  v28 = v44;
  ActivityContent.init(from:)(v15, a2, a3, a4, v43, v19);
  if (v28)
  {
    sub_1A2C6E28C(v46, type metadata accessor for OpaqueActivityPayload);
    v29 = v51;
    (*(v24 + 8))(v51, v23);
    return sub_1A2C54E38(v29 + v45, &qword_1EB0A04D0, &unk_1A2D15640);
  }

  else
  {
    v31 = v40;
    v32 = v51;
    (*(v41 + 32))(v51 + *(v40 + 56), v19, v42);
    v33 = v26[5];
    v34 = *(v31 + 52);
    v35 = sub_1A2D07F94();
    v36 = v46;
    (*(*(v35 - 8) + 16))(v32 + v34, v46 + v33, v35);
    v37 = v26[8];
    v38 = v45;
    sub_1A2C54E38(v32 + v45, &qword_1EB0A04D0, &unk_1A2D15640);
    sub_1A2C6BD18(v36 + v37, v32 + v38, &qword_1EB0A04D0, &unk_1A2D15640);
    return sub_1A2C6E28C(v36, type metadata accessor for OpaqueActivityPayload);
  }
}

uint64_t sub_1A2CF4B28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for BufferedAlert();
      return sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for BufferedAlert);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB4108();
    goto LABEL_7;
  }

  sub_1A2CB3378(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for BufferedAlert, type metadata accessor for BufferedAlert);
}

_OWORD *sub_1A2CF4CBC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A2C64868(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A2CB4450();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A2CB33F0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1A2C64868(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1A2D08B84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1A2CAB5F4(a1, v23);
  }

  else
  {
    sub_1A2CF4E38(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1A2CF4E38(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A2CAB5F4(a4, (a5[7] + 32 * a1));
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

uint64_t _s11ActivityKit06OpaqueA7PayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1208, &qword_1A2D0FAF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = type metadata accessor for AlertConfiguration();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1AC8, qword_1A2D15A78);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  if ((sub_1A2D07FA4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v51 = v13;
  v27 = type metadata accessor for OpaqueActivityPayload(0);
  v28 = v27[5];
  if ((_s11ActivityKit0A13EndingOptionsV2eeoiySbAC_ACtFZ_0() & 1) == 0 || (sub_1A2C8D278(*(a1 + v27[6]), *(a1 + v27[6] + 8), *(a2 + v27[6]), *(a2 + v27[6] + 8)) & 1) == 0 || !_s11ActivityKit06OpaqueA7ContentV2eeoiySbAC_ACtFZ_0(a1 + v27[7], a2 + v27[7]))
  {
    goto LABEL_19;
  }

  v50 = v27;
  v29 = v27[8];
  v30 = *(v23 + 48);
  sub_1A2C6BD18(a1 + v29, v26, &qword_1EB0A04D0, &unk_1A2D15640);
  v31 = a2 + v29;
  v32 = v30;
  sub_1A2C6BD18(v31, &v26[v30], &qword_1EB0A04D0, &unk_1A2D15640);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) != 1)
  {
    sub_1A2C6BD18(v26, v22, &qword_1EB0A04D0, &unk_1A2D15640);
    if (v33(&v26[v32], 1, v14) != 1)
    {
      sub_1A2C67248(&v26[v32], v18, type metadata accessor for AlertConfiguration);
      v36 = _s11ActivityKit18AlertConfigurationV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_1A2C6E28C(v18, type metadata accessor for AlertConfiguration);
      sub_1A2C6E28C(v22, type metadata accessor for AlertConfiguration);
      sub_1A2C54E38(v26, &qword_1EB0A04D0, &unk_1A2D15640);
      if ((v36 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    sub_1A2C6E28C(v22, type metadata accessor for AlertConfiguration);
LABEL_10:
    v34 = &qword_1EB0A1AC8;
    v35 = qword_1A2D15A78;
LABEL_18:
    sub_1A2C54E38(v26, v34, v35);
    goto LABEL_19;
  }

  if (v33(&v26[v32], 1, v14) != 1)
  {
    goto LABEL_10;
  }

  sub_1A2C54E38(v26, &qword_1EB0A04D0, &unk_1A2D15640);
LABEL_12:
  v37 = v50;
  v26 = v51;
  v38 = v50[9];
  v39 = *(v10 + 48);
  sub_1A2C6BD18(a1 + v38, v51, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C6BD18(a2 + v38, &v26[v39], &qword_1EB0A0E28, &unk_1A2D0EC10);
  v41 = v54;
  v40 = v55;
  v42 = *(v54 + 48);
  if (v42(v26, 1, v55) == 1)
  {
    if (v42(&v26[v39], 1, v40) == 1)
    {
      sub_1A2C54E38(v26, &qword_1EB0A0E28, &unk_1A2D0EC10);
LABEL_22:
      v44 = *(a1 + v37[10]) ^ *(a2 + v37[10]) ^ 1;
      return v44 & 1;
    }

    goto LABEL_17;
  }

  v43 = v53;
  sub_1A2C6BD18(v26, v53, &qword_1EB0A0E28, &unk_1A2D0EC10);
  if (v42(&v26[v39], 1, v40) == 1)
  {
    (*(v41 + 8))(v43, v40);
LABEL_17:
    v34 = &qword_1EB0A1208;
    v35 = &qword_1A2D0FAF0;
    goto LABEL_18;
  }

  v46 = &v26[v39];
  v47 = v52;
  (*(v41 + 32))(v52, v46, v40);
  sub_1A2C75024(&qword_1EB0A1210, MEMORY[0x1E6969530]);
  v48 = sub_1A2D08424();
  v49 = *(v41 + 8);
  v49(v47, v40);
  v49(v43, v40);
  sub_1A2C54E38(v26, &qword_1EB0A0E28, &unk_1A2D0EC10);
  if (v48)
  {
    goto LABEL_22;
  }

LABEL_19:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1A2CF550C(void *a1)
{
  a1[1] = sub_1A2C75024(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload);
  a1[2] = sub_1A2C75024(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload);
  result = sub_1A2C75024(&qword_1EB09EE58, type metadata accessor for OpaqueActivityPayload);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CF55B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A2CF5630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1A38, &qword_1A2D15650);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1A2CF56B8(uint64_t a1)
{
  sub_1A2CF57B8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    sub_1A2C58638(319, &qword_1EB0A1AB0, sub_1A2C72100, MEMORY[0x1E6968070]);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1A2CF57B8()
{
  if (!qword_1EB0A1AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1A40, &qword_1A2D15658);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB0A1AA8);
    }
  }
}

void sub_1A2CF5840(uint64_t a1)
{
  sub_1A2D07FC4();
  if (v2 <= 0x3F)
  {
    sub_1A2D07F94();
    if (v3 <= 0x3F)
    {
      v6 = *(a1 + 16);
      v7 = *(a1 + 32);
      type metadata accessor for ActivityContent();
      if (v4 <= 0x3F)
      {
        sub_1A2C58638(319, &qword_1ED709990, type metadata accessor for AlertConfiguration, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A2CF5930(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1A2D07FC4();
  v6 = *(v5 - 8);
  v54 = v5;
  v7 = *(v6 + 84);
  v53 = sub_1A2D07F94();
  v8 = *(v53 - 8);
  v9 = *(v8 + 84);
  v49 = *(a3 + 16);
  v10 = *(v49 - 8);
  if (v9 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v49 - 8);
  v13 = v9 - 1;
  if (!v9)
  {
    v13 = 0;
  }

  v50 = v13;
  v51 = *(v10 + 84);
  if (v13 <= v51)
  {
    v13 = *(v10 + 84);
  }

  v52 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(sub_1A2D07EF4() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  if (v17 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  else
  {
    v18 = *(v15 + 84);
  }

  v19 = v18 - 1;
  if (v19 <= v14)
  {
    v19 = v14;
  }

  v20 = *(v8 + 80);
  v21 = *(v8 + 64);
  v22 = *(v10 + 64) + v20;
  v23 = v22 & ~v20;
  v24 = *(v15 + 80);
  v25 = *(v15 + 64);
  v26 = v23 + 7;
  if (v9)
  {
    v27 = v23 + 7;
  }

  else
  {
    v27 = v23 + 8;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = *(v6 + 64) + v20;
  v29 = v20 | *(v10 + 80) & 0xF8 | 7;
  v30 = v24 | 7;
  v31 = v25 + v24;
  v32 = v25 + 7;
  v33 = a1;
  if (v19 >= a2)
  {
    goto LABEL_43;
  }

  v34 = ((v24 + ((v27 + v21) & 0xFFFFFFFFFFFFFFF8) + ((v21 + (v28 & ~v20) + v29) & ~v29) + 8) & ~v30) + ((((v32 + (v31 & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v34 <= 3)
  {
    v35 = ((a2 - v19 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v35 = 2;
  }

  if (v35 >= 0x10000)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2;
  }

  if (v35 < 0x100)
  {
    v36 = 1;
  }

  if (v35 >= 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 <= 1)
  {
    if (!v37)
    {
      goto LABEL_43;
    }

    v38 = *(a1 + v34);
    if (!*(a1 + v34))
    {
      goto LABEL_43;
    }

LABEL_39:
    v40 = (v38 - 1) << (8 * v34);
    if (v34 <= 3)
    {
      v41 = *a1;
    }

    else
    {
      v40 = 0;
      v41 = *a1;
    }

    return v19 + (v41 | v40) + 1;
  }

  if (v37 == 2)
  {
    v38 = *(a1 + v34);
    if (*(a1 + v34))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v38 = *(a1 + v34);
    if (v38)
    {
      goto LABEL_39;
    }
  }

LABEL_43:
  if (v7 == v19)
  {
    v42 = v54;
    v43 = *(v6 + 48);
    v44 = v7;
    goto LABEL_45;
  }

  v33 = ((a1 + v28) & ~v20);
  if (v9 == v19)
  {
    v43 = *(v8 + 48);
    v44 = v9;
    v42 = v53;

    return v43(v33, v44, v42);
  }

  v33 = ((v33 + v21 + v29) & ~v29);
  if (v52 == v19)
  {
    v44 = v51;
    if (v51 >= v50)
    {
      v43 = *(v10 + 48);
      v42 = v49;
LABEL_45:

      return v43(v33, v44, v42);
    }

    v45 = (*(v8 + 48))((v33 + v22) & ~v20, v9, v53);
  }

  else
  {
    v46 = (v33 + v30 + ((v26 + v21 + (v9 == 0)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v30;
    if (v17 < 0x7FFFFFFE)
    {
      v47 = *(((v32 + ((v31 + v46) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v47 >= 0xFFFFFFFF)
      {
        LODWORD(v47) = -1;
      }

      v48 = v47 - 1;
      if (v48 < 0)
      {
        v48 = -1;
      }

      v45 = v48 + 1;
    }

    else
    {
      v45 = (*(v16 + 48))(v46);
    }
  }

  if (v45 >= 2)
  {
    return v45 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1A2CF5DCC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1A2D07FC4();
  v7 = *(v6 - 8);
  v66 = v7;
  v67 = v6;
  v8 = *(v7 + 84);
  v65 = sub_1A2D07F94();
  v9 = *(v65 - 8);
  v71 = v9;
  v10 = *(v9 + 84);
  v61 = *(a4 + 16);
  v11 = *(v61 - 8);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v70 = *(v61 - 8);
  v13 = v10 - 1;
  if (!v10)
  {
    v13 = 0;
  }

  v62 = *(v11 + 84);
  v63 = v13;
  if (v13 <= v62)
  {
    v13 = *(v11 + 84);
  }

  v64 = v13;
  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = sub_1A2D07EF4();
  v16 = a3;
  v17 = 0;
  v18 = *(v15 - 8);
  v19 = *(v18 + 84);
  v20 = *(v7 + 64);
  v21 = *(v9 + 80);
  v22 = *(v9 + 64);
  v23 = *(v11 + 64);
  v24 = *(v18 + 80);
  v25 = *(v18 + 64);
  if (v19 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = *(v18 + 84);
  }

  if (v26 - 1 <= v14)
  {
    v27 = v14;
  }

  else
  {
    v27 = v26 - 1;
  }

  v28 = v20 + v21;
  v29 = v21 | *(v11 + 80) & 0xF8 | 7;
  v30 = (v22 + ((v20 + v21) & ~v21) + v29) & ~v29;
  v31 = v23 + v21;
  v32 = (v23 + v21) & ~v21;
  v33 = v24 | 7;
  v34 = v25 + v24;
  v35 = v32 + 7;
  v36 = v32 + 8;
  if (v10)
  {
    v36 = v35;
  }

  v37 = v24 + ((v36 + v22) & 0xFFFFFFFFFFFFFFF8) + v30;
  v38 = v25 + 7;
  v39 = ((((v25 + 7 + (v34 & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  v40 = v39 + ((v37 + 8) & ~v33);
  if (v27 < v16)
  {
    if (v40 <= 3)
    {
      v41 = ((v16 - v27 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v17 = v42;
    }

    else
    {
      v17 = 0;
    }
  }

  if (v27 >= a2)
  {
    v45 = a1;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        *(a1 + v40) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_49;
      }

      *(a1 + v40) = 0;
    }

    else if (v17)
    {
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    if (!a2)
    {
      return;
    }

LABEL_49:
    if (v8 == v27)
    {
      v46 = v67;
      v47 = *(v66 + 56);
      v48 = a2;
      v49 = v8;
LABEL_54:

      v47(v45, v48, v49, v46);
      return;
    }

    v50 = ~v21;
    v45 = ((a1 + v28) & v50);
    if (v10 == v27)
    {
      v47 = *(v71 + 56);
      v48 = a2;
LABEL_53:
      v49 = v10;
      v46 = v65;
      goto LABEL_54;
    }

    v45 = ((v45 + v22 + v29) & ~v29);
    if (v64 == v27)
    {
      if (v10)
      {
        v49 = v62;
        v51 = v63;
        if (v62 >= v63)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v49 = v62;
        v51 = v63;
        if (v62 >= v63)
        {
LABEL_86:
          v47 = *(v70 + 56);
          v48 = a2;
          v46 = v61;
          goto LABEL_54;
        }

        v22 = (v22 + 1);
      }

      v53 = ((v45 + v31) & v50);
      if (v51 >= a2)
      {
        v47 = *(v71 + 56);
        v48 = a2 + 1;
        v45 = ((v45 + v31) & v50);
        goto LABEL_53;
      }

      if (v22 <= 3)
      {
        v58 = ~(-1 << (8 * v22));
      }

      else
      {
        v58 = -1;
      }

      if (!v22)
      {
        return;
      }

      v54 = v58 & (~v63 + a2);
      if (v22 <= 3)
      {
        v59 = v22;
      }

      else
      {
        v59 = 4;
      }

      bzero(((v45 + v31) & v50), v22);
      if (v59 <= 2)
      {
        if (v59 == 1)
        {
          *v53 = v54;
          return;
        }

        goto LABEL_87;
      }

      if (v59 == 3)
      {
        *v53 = v54;
        v53[2] = BYTE2(v54);
        return;
      }
    }

    else
    {
      v52 = (v35 + v22 + (v10 == 0)) & 0xFFFFFFFFFFFFFFF8;
      v53 = ((v45 + v33 + v52 + 8) & ~v33);
      if (v26 - 1 >= a2)
      {
        v54 = a2 - v26;
        if (a2 < v26)
        {
          v55 = a2 + 1;
          if (v19 <= 0x7FFFFFFD)
          {
            v60 = ((v38 + (&v53[v34] & ~v24)) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFD)
            {
              v60[2] = 0;
              v60[3] = 0;
              *v60 = a2 - 2147483646;
              v60[1] = 0;
            }

            else
            {
              v60[1] = v55;
            }
          }

          else
          {
            v56 = *(v18 + 56);
            v57 = (v45 + v33 + v52 + 8) & ~v33;

            v56(v57, v55);
          }

          return;
        }
      }

      else
      {
        v54 = a2 - v26;
      }

      bzero(((v45 + v33 + v52 + 8) & ~v33), v39);
      if (v39 <= 3)
      {
LABEL_87:
        *v53 = v54;
        return;
      }
    }

    *v53 = v54;
    return;
  }

  v43 = ~v27 + a2;
  bzero(a1, v40);
  if (v40 <= 3)
  {
    v44 = HIWORD(v43) + 1;
  }

  else
  {
    v44 = 1;
  }

  if (v40 <= 3)
  {
    *a1 = v43;
    if (v17 > 1)
    {
LABEL_37:
      if (v17 == 2)
      {
        *(a1 + v40) = v44;
      }

      else
      {
        *(a1 + v40) = v44;
      }

      return;
    }
  }

  else
  {
    *a1 = v43;
    if (v17 > 1)
    {
      goto LABEL_37;
    }
  }

  if (v17)
  {
    *(a1 + v40) = v44;
  }
}

uint64_t getEnumTagSinglePayload for OpaqueActivityPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OpaqueActivityPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A2CF64BC()
{
  result = qword_1EB0A1AB8;
  if (!qword_1EB0A1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1AB8);
  }

  return result;
}

unint64_t sub_1A2CF6514()
{
  result = qword_1ED709078;
  if (!qword_1ED709078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709078);
  }

  return result;
}

unint64_t sub_1A2CF656C()
{
  result = qword_1ED709080;
  if (!qword_1ED709080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709080);
  }

  return result;
}

uint64_t sub_1A2CF65C0()
{
  v0 = sub_1A2D089C4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

double sub_1A2CF66C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C6CDD0();
  sub_1A2D07E64();
  v9 = *(a2 + 8);

  sub_1A2C55840(v6, v8);

  result = *&v11;
  *a2 = v11;
  return result;
}

double sub_1A2CF67CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2CB47D4();
  sub_1A2D07E64();
  v9 = a2[1];
  sub_1A2CFA6C8(*a2);
  sub_1A2C55840(v6, v8);

  result = *&v11;
  *a2 = v11;
  return result;
}

uint64_t sub_1A2CF68D4(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_1A2D07E84();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  a3();
  sub_1A2D07E64();
  v11 = *a2;

  sub_1A2C55840(v8, v10);

  *a2 = v13;
  return result;
}

double sub_1A2CF69C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2CBBB98();
  sub_1A2D07E64();
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  sub_1A2CFA650(*a2, a2[1], a2[2], a2[3]);
  sub_1A2C55840(v6, v8);

  *a2 = v13;
  *(a2 + 1) = v14;
  result = *&v15;
  *(a2 + 2) = v15;
  a2[6] = v16;
  return result;
}

uint64_t sub_1A2CF6AC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1A2CF6B1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 32;
    v8 = (result + 40);
    v21 = (a2 + 40);
    do
    {
      v9 = (v7 + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      if (*v9)
      {
        if (!v5)
        {
          goto LABEL_4;
        }

        v12 = *(v10 + 16);
        if (v12 != *(v5 + 16))
        {
          goto LABEL_4;
        }

        if (v12)
        {
          v13 = v10 == v5;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = (v10 + 40);
          v15 = v8;
          while (v12)
          {
            result = *(v14 - 1);
            if (result != *(v15 - 1) || *v14 != *v15)
            {
              result = sub_1A2D08B34();
              if ((result & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            v14 += 2;
            v15 += 2;
            if (!--v12)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          __break(1u);
          return result;
        }
      }

      else if (v5)
      {
        goto LABEL_4;
      }

LABEL_22:
      if (v11)
      {
        if (a2)
        {
          v17 = *(v11 + 16);
          if (v17 == *(a2 + 16))
          {
            if (!v17 || v11 == a2)
            {
              return v6;
            }

            v18 = (v11 + 40);
            for (i = v21; ; i += 2)
            {
              if (*(v18 - 1) != *(i - 1) || *v18 != *i)
              {
                result = sub_1A2D08B34();
                if ((result & 1) == 0)
                {
                  break;
                }
              }

              v18 += 2;
              if (!--v17)
              {
                return v6;
              }
            }
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v3);
  }

  return 0;
}

uint64_t sub_1A2CF6C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        if (a1)
        {
          v8 = *(v7 + 16);
          if (v8 == *(a1 + 16))
          {
            if (!v8 || v7 == a1)
            {
              return v4;
            }

            v9 = (v7 + 40);
            for (i = v6; ; i += 2)
            {
              v11 = *(v9 - 1) == *(i - 1) && *v9 == *i;
              if (!v11 && (sub_1A2D08B34() & 1) == 0)
              {
                break;
              }

              v9 += 2;
              if (!--v8)
              {
                return v4;
              }
            }
          }
        }
      }

      else
      {

        if (!a1)
        {
          return v4;
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 0;
}

uint64_t sub_1A2CF6D80@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A2CF9C7C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A2CF6E24@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 8 * a1;
    *a3 = *(v11 + 32);
    result = memmove((v11 + 32), (v11 + 40), 8 * (v9 - 1 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1A2CF6EB8()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB0A1AD0);
  __swift_project_value_buffer(v0, qword_1EB0A1AD0);
  return sub_1A2D08084();
}

id sub_1A2CF6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB09F748 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB0A1AE8;
  v7 = sub_1A2D08434();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A2CF7068;
  v11[3] = &block_descriptor_13;
  v8 = _Block_copy(v11);

  v9 = [v6 listenForActivityQoSWithActivityIdentifier:v7 handler:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1A2CF7068(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1A2CF7220(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1EB09F748 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(qword_1EB0A1AE8 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A2D080E4();
  result = sub_1A2D08704();
  if (!v1)
  {
    return v5;
  }

  return result;
}

id ActivityQoSObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityQoSObservationClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityQoSObservationClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A2CF73D8()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_3()) init];
  qword_1EB0A1AE8 = result;
  return result;
}

uint64_t sub_1A2CF7468()
{
  v28 = sub_1A2D086E4();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v27 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue;
  v9 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v26[0] = "Could not observe activity QoS";
  v26[1] = v9;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v28);
  *&v0[v27] = sub_1A2D08724();
  v10 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_serverStartupToken] = -1;
  v11 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__qosPublisher;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2CAB258(MEMORY[0x1E69E7CC0]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1B58, &unk_1A2D15AE0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v0[v11] = sub_1A2D081B4();
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_qos] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates] = v12;
  v16 = *&v0[v10];
  *&v0[v10] = 0;

  v17 = _s11ActivityKit9SingletonCMa_3();
  v30.receiver = v0;
  v30.super_class = v17;
  v18 = objc_msgSendSuper2(&v30, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A2CFA62C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_56_1;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = v19;

  dispatch_sync(v24, v22);

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    return v23;
  }

  __break(1u);
  return result;
}

void sub_1A2CF78D0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CFA5D0();
    v10 = v0;
    v11 = sub_1A2D08784();
    if (v11)
    {
      v12 = *&v0[v9];
      *&v10[v9] = v11;
      v13 = v11;

      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1A2CFA624;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1A2C573C4;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_38_3;
      v16 = _Block_copy(aBlock);
      v10;

      [v13 configureConnection_];
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        sub_1A2CF8138();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CF7B7C(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CF7E74;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41_4;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CF7E80;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44_3;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CF7E8C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_47_2;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CF7E98(uint64_t a1, const char *a2)
{
  if (qword_1EB09F740 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB0A1AD0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CF7F88()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1A2CF78D0();
    v9 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection);
    if (v9)
    {
      v10 = v9;
      if ([v10 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v11, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v11, 0, sizeof(v11));
        sub_1A2C54E38(v11, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v10 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CF8138()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CFA5C8;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_29_3;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09F740 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB0A1AD0);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CF8330()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2CF8B40();
  }
}

uint64_t sub_1A2CF8384()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v6 = v7;
  (*(isa + 13))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(isa + 1))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CF7F88();
  v9 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_connection);
  if (!v9)
  {
    if (qword_1EB09F740 != -1)
    {
      swift_once();
    }

    v10 = sub_1A2D08094();
    __swift_project_value_buffer(v10, qword_1EB0A1AD0);
    v1 = sub_1A2D08074();
    v11 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v11, "ActivityQoSObservationClient: Failed to establish a connection", v12, 2u);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v9;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    if (swift_dynamicCast())
    {

      return v18[1];
    }
  }

  else
  {
    sub_1A2C54E38(v21, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09F740 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1EB0A1AD0);
  v15 = sub_1A2D08074();
  v16 = sub_1A2D08694();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A2C51000, v15, v16, "ActivityQoSObservationClient: Failed to cast connection to server interface protocol", v17, 2u);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_1A2CF86C8(uint64_t *a1)
{
  v2 = v1;
  v52[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v9 = v11;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v5 + 8))(v9, v4);
  if ((v11 & 1) == 0)
  {
    goto LABEL_36;
  }

  v13 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates;
  swift_beginAccess();
  v14 = *(v2 + v13);

  v15 = sub_1A2CF6C94(v10, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    swift_beginAccess();
    sub_1A2CF6E24(v15, sub_1A2CF9CA4, v52);
    swift_endAccess();

    result = sub_1A2CF8384();
    if (result)
    {
      v19 = result;
      v20 = *(v2 + v13);
      v21 = *(v20 + 16);

      if (v21)
      {
        v22 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v22 >= *(v20 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
          }

          v24 = v20 + 8 * v22;
          v25 = *(v24 + 32);
          if (!v25)
          {

            v23 = 0;
            goto LABEL_26;
          }

          v26 = *(v25 + 16);
          v27 = *(v23 + 2);
          v28 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            goto LABEL_32;
          }

          v29 = *(v24 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v28 <= *(v23 + 3) >> 1)
          {
            if (!*(v25 + 16))
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (v27 <= v28)
            {
              v31 = v27 + v26;
            }

            else
            {
              v31 = v27;
            }

            v23 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v31, 1, v23);
            if (!*(v25 + 16))
            {
LABEL_6:

              if (v26)
              {
                goto LABEL_33;
              }

              goto LABEL_7;
            }
          }

          if ((*(v23 + 3) >> 1) - *(v23 + 2) < v26)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v26)
          {
            v32 = *(v23 + 2);
            v33 = __OFADD__(v32, v26);
            v34 = v32 + v26;
            if (v33)
            {
              goto LABEL_35;
            }

            *(v23 + 2) = v34;
          }

LABEL_7:
          if (v21 == ++v22)
          {
            goto LABEL_24;
          }
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_24:

LABEL_26:
      v51[0] = v23;
      v35 = sub_1A2D07EB4();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      sub_1A2D07EA4();
      sub_1A2CEB330();
      v38 = sub_1A2D07E94();
      v40 = v39;

      v41 = sub_1A2D07F24();
      sub_1A2C55840(v38, v40);

      v42 = sub_1A2D07F44();
      v44 = v43;

      v45 = sub_1A2D07F24();
      v51[0] = 0;
      LOBYTE(v38) = [v19 subscribeToActivityQoSMatchingPredicate:v45 error:v51];

      if (v38)
      {
        v46 = v51[0];
        sub_1A2C55840(v42, v44);
      }

      else
      {
        v47 = v51[0];
        v48 = sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v42, v44);
      }

      result = swift_unknownObjectRelease();
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A2CF8B40()
{
  v44[4] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v44[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  v9 = (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    goto LABEL_35;
  }

  result = sub_1A2CF8384(v9);
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates;
    swift_beginAccess();
    v13 = *(v0 + v12);
    v14 = *(v13 + 16);

    if (v14)
    {
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v15 >= *(v13 + 16))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v17 = v13 + 8 * v15;
        v18 = *(v17 + 32);
        if (!v18)
        {

          v16 = 0;
          goto LABEL_25;
        }

        v19 = *(v18 + 16);
        v20 = *(v16 + 2);
        v21 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          goto LABEL_31;
        }

        v22 = *(v17 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v21 <= *(v16 + 3) >> 1)
        {
          if (!*(v18 + 16))
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v20 <= v21)
          {
            v24 = v20 + v19;
          }

          else
          {
            v24 = v20;
          }

          v16 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v24, 1, v16);
          if (!*(v18 + 16))
          {
LABEL_5:

            if (v19)
            {
              goto LABEL_32;
            }

            goto LABEL_6;
          }
        }

        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v19)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v25 = *(v16 + 2);
          v26 = __OFADD__(v25, v19);
          v27 = v25 + v19;
          if (v26)
          {
            goto LABEL_34;
          }

          *(v16 + 2) = v27;
        }

LABEL_6:
        if (v14 == ++v15)
        {
          goto LABEL_23;
        }
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_23:

LABEL_25:
    v44[0] = v16;
    v28 = sub_1A2D07EB4();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2CEB330();
    v31 = sub_1A2D07E94();
    v33 = v32;

    v34 = sub_1A2D07F24();
    sub_1A2C55840(v31, v33);

    v35 = sub_1A2D07F44();
    v37 = v36;

    v38 = sub_1A2D07F24();
    v44[0] = 0;
    LOBYTE(v31) = [v11 subscribeToActivityQoSMatchingPredicate:v38 error:v44];

    if (v31)
    {
      v39 = v44[0];
      sub_1A2C55840(v35, v37);
    }

    else
    {
      v40 = v44[0];
      v41 = sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v35, v37);
    }

    result = swift_unknownObjectRelease();
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}