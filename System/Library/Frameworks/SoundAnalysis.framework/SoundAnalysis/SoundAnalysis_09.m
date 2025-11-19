unint64_t sub_1C984AC4C()
{
  result = qword_1EC3C9030;
  if (!qword_1EC3C9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9030);
  }

  return result;
}

uint64_t sub_1C984AD5C()
{

  return swift_beginAccess();
}

void sub_1C984AD80(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (v6 + a1);
  *v10 = a6;
  v10[1] = v8;
  v10[2] = a5;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a3;
  v10[6] = v7;
}

uint64_t sub_1C984ADF4()
{

  return sub_1C9A92528();
}

uint64_t sub_1C984AE10()
{

  return swift_beginAccess();
}

uint64_t sub_1C984AE28()
{

  return sub_1C9A93A18();
}

void *sub_1C984AE4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0x48uLL);
}

uint64_t sub_1C984AE68()
{
}

uint64_t sub_1C984AEF0()
{
}

uint64_t sub_1C984AF10()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C984AF30()
{

  return swift_beginAccess();
}

uint64_t static MediaUtils.extractAudio(mediaAssetURL:outputURL:)()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A91558();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C984B004, 0, 0);
}

uint64_t sub_1C984B004()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_1C984B6CC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1C984B710(v1);
  v0[7] = v5;
  sub_1C9A924A8();
  objc_allocWithZone(MEMORY[0x1E6987E60]);
  v6 = v5;
  v7 = sub_1C984B7B0(v6);
  v0[8] = v7;
  if (v7)
  {
    v8 = MEMORY[0x1E6960CC0];
    v9 = *MEMORY[0x1E6960CC0];
    v0[25] = *(MEMORY[0x1E6960CC0] + 8);
    v10 = *(v8 + 16);
    v0[9] = v9;
    v0[10] = v10;
    sub_1C97A2CEC(qword_1EC3C9048);
    v11 = sub_1C9A917B8();
    v0[11] = v11;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_1C984B1F8;

    return MEMORY[0x1EEE68140](v0 + 22, v11, 0, 0);
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    sub_1C97DA91C();

    return v14();
  }
}

uint64_t sub_1C984B1F8()
{
  sub_1C97AA884();
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v6 = sub_1C984B568;
  }

  else
  {

    v6 = sub_1C984B308;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C984B308()
{
  sub_1C97AA884();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[22];
  v4 = v0[24];
  v5 = v0[23];
  v0[16] = v0[9];
  v0[17] = v0[25];
  v0[18] = v1;
  v0[19] = v3;
  v0[20] = v5;
  v0[21] = v4;
  [v2 setTimeRange_];
  v6 = *MEMORY[0x1E6987488];
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C984B3F4;
  v8 = v0[3];

  return MEMORY[0x1EEE68110](v8, v6, 0, 0);
}

uint64_t sub_1C984B3F4()
{
  sub_1C97AA884();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C984B5DC;
  }

  else
  {
    v7 = sub_1C984B4FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C984B4FC()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C984B568()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C984B5DC()
{
  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];
  type metadata accessor for SNError();
  v4 = sub_1C9A913B8();
  sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, v4, 0x662074726F707865, 0xED000064656C6961);

  swift_willThrow();

  sub_1C97DA91C();

  return v5();
}

unint64_t sub_1C984B6CC()
{
  result = qword_1EC3C9040;
  if (!qword_1EC3C9040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C9040);
  }

  return result;
}

id sub_1C984B710(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9A91488();
  v4 = [v2 initWithURL:v3 options:0];

  v5 = sub_1C9A91558();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1C984B7B0(void *a1)
{
  v3 = sub_1C9A92478();

  v4 = [v1 initWithAsset:a1 presetName:v3];

  return v4;
}

_BYTE *storeEnumTagSinglePayload for MediaUtils(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C984B8C8()
{
  result = _s21ServerEnvironmentImplVMa();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984B970(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x444965736163 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C984B9F8(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C9218);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C984CB40();
  sub_1C9A93DD8();
  sub_1C9A93A08();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C984BB44(uint64_t a1)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a1);
  return sub_1C9A93D18();
}

uint64_t sub_1C984BB8C(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C9208);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C984CB40();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A938E8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C984BCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C984B970(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C984BD04(uint64_t a1)
{
  v2 = sub_1C984CB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C984BD40(uint64_t a1)
{
  v2 = sub_1C984CB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C984BD7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C984BB8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C984BDE0()
{
  sub_1C97A2CEC(&qword_1EC3C9220);
  sub_1C97AE67C(&qword_1EC3C9228, &qword_1EC3C9220);
  return sub_1C9A91EE8();
}

uint64_t sub_1C984BE70()
{
  v1 = *(*v0 + 112);
  v2 = _s21ServerEnvironmentImplVMa();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C984BF38()
{
  sub_1C984BE70();

  return swift_deallocClassInstance();
}

void sub_1C984BFC8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C984C408();
    if (v1 <= 0x3F)
    {
      sub_1C984C4E4();
      if (v2 <= 0x3F)
      {
        sub_1C984C5C0();
        if (v3 <= 0x3F)
        {
          sub_1C984C69C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C984C0B0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_1C97ABF20((result + v7 + 24) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((((*(*(v4 - 8) + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C984C210(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 24] & ~v10;

            sub_1C97ACC50(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
              *(a1 + 2) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C984C408()
{
  if (!qword_1EC3C9150)
  {
    sub_1C97AA4F0(&qword_1EC3C9158);
    sub_1C97AE67C(&qword_1EC3C9160, &qword_1EC3C9158);
    sub_1C97AE67C(&qword_1EC3C9168, &qword_1EC3C9170);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C9150);
    }
  }
}

void sub_1C984C4E4()
{
  if (!qword_1EC3C9178)
  {
    sub_1C97AA4F0(&qword_1EC3C9180);
    sub_1C97AE67C(&qword_1EC3C9188, &qword_1EC3C9180);
    sub_1C97AE67C(&qword_1EC3C9190, &qword_1EC3C9198);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C9178);
    }
  }
}

void sub_1C984C5C0()
{
  if (!qword_1EC3C91A0)
  {
    sub_1C97AA4F0(&qword_1EC3C91A8);
    sub_1C97AE67C(&qword_1EC3C91B0, &qword_1EC3C91A8);
    sub_1C97AE67C(&qword_1EC3C91B8, &qword_1EC3C91C0);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C91A0);
    }
  }
}

void sub_1C984C69C()
{
  if (!qword_1EC3C91C8)
  {
    sub_1C97AA4F0(&qword_1EC3C91D0);
    sub_1C97AE67C(&qword_1EC3C91D8, &qword_1EC3C91D0);
    sub_1C97AE67C(&qword_1EC3C91E0, &qword_1EC3C91E8);
    v0 = type metadata accessor for SyncCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3C91C8);
    }
  }
}

unint64_t sub_1C984C79C()
{
  result = qword_1EC3C91F0;
  if (!qword_1EC3C91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C91F0);
  }

  return result;
}

uint64_t sub_1C984C7F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 112);
  v5 = _s21ServerEnvironmentImplVMa();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1C984C8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C984C880();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

unint64_t sub_1C984C948()
{
  result = qword_1EC3C91F8;
  if (!qword_1EC3C91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C91F8);
  }

  return result;
}

unint64_t sub_1C984C99C()
{
  result = qword_1EC3CD6D0;
  if (!qword_1EC3CD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD6D0);
  }

  return result;
}

unint64_t sub_1C984C9F0()
{
  result = qword_1EC3C9200;
  if (!qword_1EC3C9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9200);
  }

  return result;
}

uint64_t sub_1C984CA50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C984CA8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C984CAC8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C984CB04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C984CB40()
{
  result = qword_1EC3C9210;
  if (!qword_1EC3C9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9210);
  }

  return result;
}

_BYTE *_s28ICACAudioDeviceConfigurationV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C984CC44()
{
  result = qword_1EC3C9230;
  if (!qword_1EC3C9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9230);
  }

  return result;
}

unint64_t sub_1C984CC9C()
{
  result = qword_1EC3C9238;
  if (!qword_1EC3C9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9238);
  }

  return result;
}

unint64_t sub_1C984CCF4()
{
  result = qword_1EC3C9240[0];
  if (!qword_1EC3C9240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C9240);
  }

  return result;
}

uint64_t sub_1C984CDA0()
{

  return v0;
}

uint64_t sub_1C984CDD0()
{
  sub_1C984CDA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C984CE64()
{
  sub_1C984CE90();

  return v0;
}

uint64_t sub_1C984CF24()
{
  sub_1C984CE64();

  return swift_deallocClassInstance();
}

char *sub_1C984CF84(void *a1)
{
  ObjectType = swift_getObjectType();

  v5 = OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_modelDescription;
  *&v1[OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_modelDescription] = a1;
  v6 = a1;
  v7 = sub_1C98C89D4(21, 0);
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v7;
    type metadata accessor for SNMLModelAdapter();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = &v1[OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_model];
    *v10 = v9;
    v10[1] = &off_1F4937370;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v1 = objc_msgSendSuper2(&v12, sel_init);
  }

  return v1;
}

uint64_t sub_1C984D134(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_modelDescription);
  v5 = *(v2 + OBJC_IVAR____SNVGGishFeatureEmbeddingCustomModel_model + 8);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = v7(ObjectType, v5);
  v9 = sub_1C97FD440(v4, v8);

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v7(ObjectType, v5);
  v11 = sub_1C97FD44C(v4, v10);

  if (!v11)
  {

LABEL_6:
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000002CLL, 0x80000001C9AD6960);
    swift_willThrow();
    return v5;
  }

  sub_1C97FD5DC(a1, v9);
  v13 = v12;

  if (v18)
  {
  }

  else
  {
    v15 = (*(v5 + 24))(v13, a2, ObjectType, v5);
    sub_1C97FD844(v15, v11);
    v5 = v16;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_1C984D4A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C984D4C0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C984D4E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C984D500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C984D554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C984D5C4()
{
  v2 = v1;
  sub_1C99DC144();
  v3 = *v0;
  v4 = v0[1];

  sub_1C98CA9F8(v3, v4);
  if (!v2)
  {

    v5 = v0[2];
    v6 = v0[3];
    v8 = v0[4];
    v7 = v0[5];

    sub_1C97A8BD4(v5, v6, v8, v7);
  }
}

uint64_t sub_1C984D690(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C984D724;

  return sub_1C988FB68();
}

uint64_t sub_1C984D724(uint64_t a1)
{
  v4 = *v2;
  sub_1C97AA84C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA84C();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C984D868, 0, 0);
  }
}

uint64_t sub_1C984D868()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_1C97DA2E8(v5, v6);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];

  sub_1C97A8F30(v7);

  *&v11 = v5;
  *(&v11 + 1) = v6;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  *v2 = v11;
  *(v2 + 16) = v12;
  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  v13 = v0[1];

  return v13();
}

uint64_t sub_1C984D94C(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1C984D9EC;

  return sub_1C984D690(v1 + 16);
}

uint64_t sub_1C984D9EC()
{
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;

  if (!v0)
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 16);
    v8 = *(v2 + 48);
    v6[1] = *(v2 + 32);
    v6[2] = v8;
    *v6 = v7;
  }

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_1C984DAFC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984DB90(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C984DBD0(a1);
  return v2;
}

uint64_t sub_1C984DCB4()
{
  sub_1C984DC44();

  return swift_deallocClassInstance();
}

uint64_t sub_1C984DD24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C984DDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 88);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v5 + v6);
}

uint64_t sub_1C984DE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C984DB90(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C984DE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  v17 = *(a4 + 16);
  v17(a3, a4);
  v17(a3, a4);
  LOBYTE(v17) = sub_1C9A92438();
  v18 = *(v10 + 8);
  v18(v14, AssociatedTypeWitness);
  v18(v16, AssociatedTypeWitness);
  return v17 & 1;
}

uint64_t sub_1C984DFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  (*(a3 + 16))(a2, a3);
  sub_1C9A92398();
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1C984E110()
{
  sub_1C984EEE4();
  v1();
  v2 = *(v0 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = v2(AssociatedTypeWitness, v0);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1C984E1A8()
{
  v1 = *(*(v0 + 16) + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_1C984E1EC()
{
  sub_1C984EEE4();
  v1();
  v2 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2(AssociatedTypeWitness, v0);
  sub_1C97FB3E4();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C984E278(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 24);
  ObjectType = swift_getObjectType();
  return (*(v5 + 24))(a1, a2, ObjectType, v5);
}

uint64_t sub_1C984E2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a5 + 16))(&v13, a3, a5);
  v9 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v9(a1, a2, AssociatedTypeWitness, a6);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1C984E3CC()
{
  v1 = *v0;
  v5 = v0;
  sub_1C9A93CC8();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C984DFF8(v4, v1, WitnessTable);
  return sub_1C9A93D18();
}

uint64_t sub_1C984E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1C984DE74(a1, a2, v4, WitnessTable, v9, v7) & 1;
}

uint64_t sub_1C984E590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1C984DFF8(a1, a2, WitnessTable);
}

uint64_t sub_1C984E5F8(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  WitnessTable = swift_getWitnessTable();
  sub_1C984DFF8(v5, a2, WitnessTable);
  return sub_1C9A93D18();
}

uint64_t sub_1C984E66C()
{
  swift_getWitnessTable();

  return sub_1C984E110();
}

uint64_t sub_1C984E6F4()
{
  swift_getWitnessTable();

  return sub_1C984E1EC();
}

uint64_t sub_1C984E77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(a4 - 8);
  WitnessTable = swift_getWitnessTable();
  return sub_1C984E2E8(a1, a2, v7, v10, WitnessTable, v8);
}

id sub_1C984E848()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *(v3 - 8);
  (*(v4 + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], v0, v3);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  (*(v4 + 8))(v0, v3);
  return v5;
}

uint64_t sub_1C984E940()
{
  sub_1C97FB3E4();
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v7 = v1;
  return sub_1C98594CC(&v7, v0, sub_1C984EEDC, &v6, ObjectType, *((v4 & v3) + 0x50), *(*((v4 & v3) + 0x58) + 8)) & 1;
}

uint64_t sub_1C984EA3C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1C984E940();

  sub_1C97A59D0(v8);
  return v6 & 1;
}

uint64_t sub_1C984EAB4(void *a1)
{
  v1 = a1;
  v2 = sub_1C984EAE8();

  return v2;
}

uint64_t sub_1C984EAE8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  sub_1C97AE9DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, &v0[*((v2 & v1) + 0x60)], v3);
  v9 = sub_1C9A923A8();
  (*(v5 + 8))(v8, v3);
  return v9;
}

id sub_1C984EC10@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - v8, v1 + *((v6 & v5) + 0x60));
  result = sub_1C984E818();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C984ED0C(void *a1)
{
  v1 = a1;
  sub_1C984EC10(v4);

  sub_1C97A5A8C(v4, v4[3]);
  v2 = sub_1C9A93B08();
  sub_1C97A592C(v4);
  return v2;
}

id sub_1C984EE4C@<X0>(void *a1@<X8>)
{
  result = sub_1C984E818();
  *a1 = result;
  return result;
}

uint64_t sub_1C984EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = a2;
  v7[6] = a3;
  return sub_1C984F28C(a1, sub_1C9854F58, v7, a4, a5, a6);
}

uint64_t sub_1C984EF50@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  sub_1C97AE9DC();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  sub_1C97AE9DC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AEAD8();
  v19 = v18 - v17;
  sub_1C97AE9DC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AEAD8();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (sub_1C97ABF20(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return sub_1C97ACC50(a4, v26, 1, a2);
}

uint64_t sub_1C984F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v6)
  {
    (*(v9 + 8))(a1, a6);
    return (*(v9 + 32))(a1, v12, a6);
  }

  return result;
}

uint64_t sub_1C984F28C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a2;
  v51 = a3;
  v54 = a1;
  AssociatedConformanceWitness = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v42 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1C9A93258();
  sub_1C97DACE4(v15);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  sub_1C97AE9DC();
  v41 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AEAD8();
  v40 = v20 - v19;
  sub_1C9855110();
  v57 = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v44 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  sub_1C97AE9DC();
  v45 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97ABF90();
  v55 = v27;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97ABFC0();
  v30 = v29;
  v58 = sub_1C9A922E8();
  v43 = a4;
  result = sub_1C9A92648();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C9855110();
    v53 = sub_1C9A928B8();
    sub_1C9A927E8();
    v56 = v24;
    v33 = v45 + 16;
    v32 = *(v45 + 16);
    v32(v30, v54, a5);
    v49 = v30;
    sub_1C9A92888();
    v34 = v54;
    v54 = a5;
    v47 = v32;
    v48 = v33;
    v32(v55, v34, a5);
    (*(v41 + 16))(v40, v46, v43);
    sub_1C9A92638();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = (v42 + 32);
    v36 = (v42 + 8);
    while (1)
    {
      sub_1C9A93298();
      if (sub_1C97ABF20(v7, 1, AssociatedTypeWitness) == 1)
      {
        (*(v44 + 8))(v56, v57);
        (*(v45 + 8))(v55, v54);
        return v58;
      }

      (*v35)(v14, v7, AssociatedTypeWitness);
      v37 = AssociatedTypeWitness;
      v38 = v55;
      v39 = sub_1C985511C();
      v50(v39);
      if (v6)
      {
        break;
      }

      v47(v49, v38, v54);
      sub_1C9A92888();
      (*v36)(v14, v37);
      AssociatedTypeWitness = v37;
    }

    (*v36)(v14, v37);
    (*(v44 + 8))(v56, v57);
    (*(v45 + 8))(v38, v54);
  }

  return result;
}

void sub_1C984F73C()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for ExclusiveReductionsSequence.Iterator();
  v13 = *(v12 + 44);
  sub_1C9855060();
  sub_1C97ACC50(v14, v15, v16, v1);
  sub_1C9855110();
  swift_getAssociatedTypeWitness();
  sub_1C9855018();
  (*(v17 + 32))(v11, v9);
  sub_1C9A93258();
  sub_1C9855018();
  (*(v18 + 40))(v11 + v13, v7);
  v19 = (v11 + *(v12 + 48));
  *v19 = v5;
  v19[1] = v3;
  sub_1C97BE478();
}

void sub_1C984F838()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v48 = v4;
  v5 = *(v2 + 16);
  v45 = *(v2 + 32);
  v6 = v5;
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  v46 = sub_1C9A93258();
  sub_1C97AE9C8();
  v44 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = *(v3 + 24);
  sub_1C9A93258();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97ABF90();
  v43 = v15;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  sub_1C97AE9DC();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AEAD8();
  v24 = v23 - v22;
  v25 = *(v3 + 44);
  v26 = *(v13 + 16);
  v27 = v1;
  v47 = v28;
  v26(v18, v1 + v25);
  sub_1C985506C(v18, 1, v11);
  if (v29)
  {
    (*(v13 + 8))(v18, v47);
    sub_1C9855060();
    sub_1C97ACC50(v30, v31, v32, v11);
  }

  else
  {
    (*(v20 + 32))(v24, v18, v11);
    v42 = v25;
    v33 = v45;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v34 = sub_1C9A93298();
    v41[1] = v41;
    MEMORY[0x1EEE9AC00](v34);
    v41[-6] = v6;
    v41[-5] = v11;
    v41[-4] = v33;
    v41[-3] = v24;
    v41[-2] = v27;
    v35 = v43;
    v36 = v46;
    sub_1C984EF50(sub_1C9852D18, v11, v37, v43);
    (*(v44 + 8))(v10, v36);
    (*(v13 + 40))(v27 + v42, v35, v47);
    (*(v20 + 16))(v48, v24, v11);
    sub_1C9855128();
    sub_1C97ACC50(v38, v39, v40, v11);
    (*(v20 + 8))(v24, v11);
  }

  sub_1C97BE478();
}

uint64_t sub_1C984FBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 16))(a5, a2, a4);
  v8 = *(a3 + *(type metadata accessor for ExclusiveReductionsSequence.Iterator() + 48));

  v8(a5, a1);
}

void sub_1C984FCA0()
{
  sub_1C97BE460();
  v2 = v0;
  v4 = v3;
  v5 = *(v3 + 24);
  sub_1C985509C();
  v6 = sub_1C9A93258();
  sub_1C97DACE4(v6);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97FB2C8();
  v8 = *(v4 + 16);
  sub_1C97AE9DC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97FB2D8();
  (*(v10 + 16))(v14, v2, v8);
  sub_1C985511C();
  sub_1C9A92638();
  sub_1C9855190();
  (*(v17 + 16))(v1, v2 + v18, v5);
  sub_1C9855128();
  sub_1C97ACC50(v19, v20, v21, v5);

  sub_1C984F73C();
  sub_1C97BE478();
}

uint64_t sub_1C984FE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s5IndexV14RepresentationOMa();
  sub_1C97AEB3C();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

void sub_1C984FEE0()
{
  sub_1C97BE460();
  v1 = v0;
  v37 = v2;
  v4 = v3;
  sub_1C9855084();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v36 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97ABF90();
  v34 = v8;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97ABFC0();
  sub_1C9855134(v10);
  v11 = _s5IndexV14RepresentationOMa();
  sub_1C98550F8();
  v12 = sub_1C98550C4();
  sub_1C97DACE4(v12);
  sub_1C97ABFF0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = &v34 + *(v14 + 56) - v15;
  sub_1C97AEB3C();
  v19 = *(v18 + 16);
  v19(v16, v4, v11);
  v19(v17, v37, v11);
  sub_1C9855104();
  v20 = sub_1C98550C4();
  sub_1C985506C(v16, 1, v20);
  if (v24)
  {
    sub_1C985506C(v17, 1, v20);
    if (!v24)
    {
      sub_1C9855190();
      (*(v21 + 8))(&v17[v22], v1);
      (*(v36 + 8))(v17, AssociatedTypeWitness);
    }
  }

  else
  {
    v23 = *(v20 + 48);
    sub_1C985506C(v17, 1, v20);
    if (v24)
    {
      sub_1C97AEB3C();
      (*(v25 + 8))(&v16[v23], v1);
      (*(v36 + 8))(v16, AssociatedTypeWitness);
    }

    else
    {
      v26 = v36;
      v27 = *(v36 + 32);
      v27(v35, v16, AssociatedTypeWitness);
      v37 = v23;
      v28 = v34;
      v27(v34, v17, AssociatedTypeWitness);
      sub_1C984ADE8();
      swift_getAssociatedConformanceWitness();
      v29 = v35;
      sub_1C9A92438();
      v30 = *(v26 + 8);
      v30(v28, AssociatedTypeWitness);
      v30(v29, AssociatedTypeWitness);
      sub_1C97AEB3C();
      v32 = *(v31 + 8);
      v33 = v37;
      v32(&v17[v37], v1);
      v32(&v16[v33], v1);
    }
  }

  sub_1C97BE478();
}

void sub_1C9850220()
{
  sub_1C97BE460();
  v2 = v1;
  v27 = v3;
  v28 = v4;
  sub_1C9855084();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v25 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97ABF90();
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97ABFC0();
  sub_1C9855134(v9);
  v10 = _s5IndexV14RepresentationOMa();
  v11 = sub_1C98550C4();
  sub_1C97DACE4(v11);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C98021C4();
  v14 = v0 + *(v13 + 56);
  v15 = *(v10 - 8);
  v16 = *(v15 + 16);
  v16(v0, v27, v10);
  v16(v14, v28, v10);
  v17 = v2;
  sub_1C9855104();
  v18 = sub_1C98550C4();
  sub_1C985506C(v0, 1, v18);
  if (v19)
  {
    (*(v15 + 8))(v14, v10);
  }

  else
  {
    sub_1C985506C(v14, 1, v18);
    if (v19)
    {
      (*(v15 + 8))(v0, v10);
    }

    else
    {
      v29 = *(v18 + 48);
      v20 = *(v25 + 32);
      v20(v26, v0, AssociatedTypeWitness);
      v21 = sub_1C9855170();
      v20(v21, v14, AssociatedTypeWitness);
      sub_1C984ADE8();
      swift_getAssociatedConformanceWitness();
      sub_1C9A923D8();
      v22 = *(v25 + 8);
      v22(v18, AssociatedTypeWitness);
      v22(v26, AssociatedTypeWitness);
      sub_1C97AEB3C();
      v24 = *(v23 + 8);
      v24(v14 + v29, v17);
      v24(v0 + v29, v17);
    }
  }

  sub_1C97BE478();
}

void sub_1C9850528()
{
  sub_1C97BE460();
  v3 = *(v2 + 24);
  sub_1C985502C();
  v4 = _s5IndexV14RepresentationOMa();
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  v6 = sub_1C98550C4();
  v7 = *(v6 + 48);
  sub_1C98550EC();
  sub_1C9A92BF8();
  sub_1C9855190();
  (*(v8 + 16))(v1 + v7, v0 + v9, v3);
  sub_1C9855128();
  sub_1C97ACC50(v10, v11, v12, v6);
  sub_1C985502C();
  sub_1C984FE78(v13, v14);
  sub_1C97BE478();
}

uint64_t sub_1C9850630()
{
  sub_1C985502C();
  v0 = _s5IndexV14RepresentationOMa();
  sub_1C97DACE4(v0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  sub_1C98550C4();
  sub_1C9855060();
  sub_1C97ACC50(v2, v3, v4, v5);
  sub_1C985502C();
  return sub_1C984FE78(v6, v7);
}

uint64_t sub_1C98506EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  sub_1C98550F8();
  _s5IndexV14RepresentationOMa();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  (*(v9 + 16))(&v17 - v7, a1);
  swift_getAssociatedTypeWitness();
  sub_1C9855110();
  v10 = sub_1C98550C4();
  sub_1C985506C(v8, 1, v10);
  if (v11)
  {
    sub_1C985503C();
    v17 = 279;
    sub_1C97FB1C4();
    result = sub_1C98550A8();
    __break(1u);
  }

  else
  {
    sub_1C9855190();
    (*(v12 + 32))(a3, &v8[v13], v5);
    sub_1C97AEB3C();
    v14 = sub_1C984ADE8();
    return v15(v14);
  }

  return result;
}

void sub_1C985088C()
{
  sub_1C97BE460();
  v72 = v1;
  v73 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v66 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v63 - v11;
  v65 = v5;
  v12 = *(v5 + 24);
  sub_1C97AE9DC();
  v76 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  sub_1C985509C();
  v18 = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C98435A0();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v28 = v8;
  _s5IndexV14RepresentationOMa();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v29);
  v71 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v63 - v32;
  (*(v34 + 16))(&v63 - v32, v7);
  v74 = v12;
  v35 = sub_1C98550C4();
  sub_1C983E180(v33);
  if (v36)
  {
    sub_1C985503C();
    v63 = 291;
    sub_1C97FB1C4();
    sub_1C98550A8();
    __break(1u);
  }

  else
  {
    v69 = *(v35 + 48);
    v70 = v35;
    (*(v20 + 16))(v27, v33, v18);
    sub_1C98550EC();
    sub_1C9A92C58();
    v75 = v3;
    swift_getAssociatedConformanceWitness();
    v37 = sub_1C9A92438();
    v38 = *(v20 + 8);
    v39 = sub_1C985511C();
    v38(v39);
    (v38)(v27, v18);
    if (v37)
    {
      v40 = v71;
      sub_1C9855060();
      sub_1C97ACC50(v41, v42, v43, v44);
      v45 = v40;
      v46 = v74;
      sub_1C984FE78(v45, v72);
      (*(v76 + 8))(&v69[v33], v46);
      (v38)(v33, v18);
    }

    else
    {
      (*(v20 + 32))(v24, v33, v18);
      v64 = *(v76 + 32);
      v76 += 32;
      v47 = v17;
      v64(v17, &v69[v33], v74);
      v48 = (v73 + *(v65 + 12));
      v50 = *v48;
      v49 = v48[1];
      v69 = v50;
      v65 = v49;
      v63 = v28;
      v51 = sub_1C9A92D58();
      v52 = v67;
      (*(v66 + 16))(v67);
      v51(&v77, 0);
      (v69)(v17, v52);
      v53 = sub_1C984ADE8();
      v54(v53);
      v56 = v70;
      v55 = v71;
      v69 = *(v70 + 48);
      sub_1C9A92C18();
      v57 = sub_1C985511C();
      v38(v57);
      v64(&v69[v55], v47, v74);
      sub_1C9855128();
      sub_1C97ACC50(v58, v59, v60, v56);
      v61 = sub_1C984ADE8();
      sub_1C984FE78(v61, v62);
    }

    sub_1C97BE478();
  }
}

void sub_1C9850DE4()
{
  sub_1C97BE460();
  v2 = v1;
  v39 = v3;
  v40 = v4;
  sub_1C9855104();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97ABFC0();
  v10 = *(v2 + 24);
  v11 = _s5IndexV14RepresentationOMa();
  sub_1C9855104();
  v12 = sub_1C98550C4();
  sub_1C97DACE4(v12);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2D8();
  v15 = v0 + *(v14 + 56);
  sub_1C97AEB3C();
  v17 = *(v16 + 16);
  v17(v0, v39, v11);
  v17(v15, v40, v11);
  sub_1C9855084();
  v18 = sub_1C98550C4();
  sub_1C983E180(v0);
  if (v20)
  {
    sub_1C983E180(v15);
    if (v20)
    {
      goto LABEL_12;
    }

    v26 = *(v18 + 48);
    v27 = sub_1C9855170();
    v28(v27, v15, AssociatedTypeWitness);
    sub_1C98551D0();
    sub_1C9A92C48();
    v29 = sub_1C985504C();
    (v17)(v29);
    v30 = sub_1C97FB154();
    (v17)(v30);
    if (!__OFSUB__(v18, 1))
    {
      sub_1C97AEB3C();
      (*(v31 + 8))(v15 + v26, v10);
      goto LABEL_12;
    }
  }

  else
  {
    v19 = *(v18 + 48);
    sub_1C983E180(v15);
    if (!v20)
    {
      v41 = v19;
      v32 = *(v7 + 32);
      v33 = sub_1C9855170();
      v32(v33, v0, AssociatedTypeWitness);
      v34 = sub_1C985511C();
      (v32)(v34);
      sub_1C9A92C48();
      v35 = sub_1C985504C();
      ((v7 + 32))(v35);
      v36 = sub_1C97FB154();
      ((v7 + 32))(v36);
      sub_1C97AEB3C();
      v38 = *(v37 + 8);
      v38(&v41[v15], v10);
      v38(&v41[v0], v10);
LABEL_12:
      sub_1C97BE478();
      return;
    }

    v21 = sub_1C9855170();
    v22(v21, v0, AssociatedTypeWitness);
    sub_1C98551D0();
    sub_1C9A92C48();
    v23 = sub_1C985504C();
    (v19)(v23);
    v24 = sub_1C97FB154();
    (v19)(v24);
    if (!__OFADD__(v18, 1))
    {
      sub_1C97AEB3C();
      (*(v25 + 8))(&v19[v0], v10);
      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1C98511A4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C97A2C48(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C9851224(v6, a2, a3);
  return sub_1C9851220;
}

uint64_t (*sub_1C9851224(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 24);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = sub_1C97A2C48(*(v7 + 64));
  a1[2] = v8;
  sub_1C98506EC(a2, a3, v8);
  return sub_1C98512E8;
}

uint64_t sub_1C98512EC()
{
  _s5IndexVMa();
  sub_1C9855090();
  sub_1C9A93258();
  sub_1C9855060();

  return sub_1C97ACC50(v0, v1, v2, v3);
}

uint64_t sub_1C9851354(uint64_t a1)
{
  v2 = _s5IndexVMa();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  (*(v3 + 32))(&v7 - v4, a1, v2);
  sub_1C985088C();
  return (*(v3 + 8))(v5, v2);
}

void sub_1C9851464()
{
  sub_1C97BE460();
  v3 = v2;
  v4 = *(v2 + 32);
  sub_1C98550F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98550DC();
  v9 = *(v3 + 24);
  _s5IndexV14RepresentationOMa();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2C8();
  (*(v11 + 16))(v4, v0);
  sub_1C9855084();
  v12 = sub_1C98550C4();
  sub_1C985506C(v4, 1, v12);
  if (!v13)
  {
    v14 = *(v12 + 48);
    (*(v7 + 32))(v1, v4, AssociatedTypeWitness);
    sub_1C9A92398();
    v15 = sub_1C97FB154();
    v16(v15);
    sub_1C97AEB3C();
    (*(v17 + 8))(v4 + v14, v9);
  }

  sub_1C97BE478();
}

void sub_1C985168C()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for InclusiveReductionsSequence.Iterator();
  sub_1C985509C();
  swift_getAssociatedTypeWitness();
  sub_1C9855060();
  sub_1C97ACC50(v9, v10, v11, v12);
  sub_1C985509C();
  swift_getAssociatedTypeWitness();
  sub_1C9855018();
  (*(v13 + 32))(v7, v5);
  v14 = (v7 + *(v8 + 40));
  *v14 = v3;
  v14[1] = v1;
  sub_1C97BE478();
}

void sub_1C9851764()
{
  sub_1C97BE460();
  v2 = v1;
  v57 = v3;
  v4 = *(v1 + 24);
  v54 = *(v1 + 16);
  v55 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C98550F8();
  v6 = sub_1C9A93258();
  sub_1C97AE9C8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98435A0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v44 - v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  sub_1C97AE9DC();
  v53 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97ABF90();
  v50 = v20;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v51 = v2;
  v24 = *(v2 + 36);
  v25 = *(v8 + 16);
  v25(v17, v0 + v24, v6);
  sub_1C985506C(v17, 1, AssociatedTypeWitness);
  if (v32)
  {
    v26 = sub_1C97FB154();
    v27(v26);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1C9A93298();
    (*(v8 + 40))(v0 + v24, v12, v6);
    v25(v57, v0 + v24, v6);
  }

  else
  {
    v45 = v24;
    v46 = v25;
    v47 = v12;
    v48 = v8;
    v49 = v6;
    v28 = v53;
    v29 = *(v53 + 32);
    v29(v23, v17, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v30 = v52;
    v31 = v56;
    sub_1C9A93298();
    sub_1C985506C(v30, 1, AssociatedTypeWitness);
    if (v32)
    {
      (*(v28 + 8))(v23, AssociatedTypeWitness);
      (*(v48 + 8))(v30, v49);
      sub_1C9855060();
      sub_1C97ACC50(v33, v34, v35, AssociatedTypeWitness);
    }

    else
    {
      v36 = v50;
      v29(v50, v30, AssociatedTypeWitness);
      v37 = v47;
      (*(v31 + *(v51 + 40)))(v23, v36);
      v38 = *(v28 + 8);
      v38(v36, AssociatedTypeWitness);
      v38(v23, AssociatedTypeWitness);
      sub_1C9855128();
      sub_1C97ACC50(v39, v40, v41, AssociatedTypeWitness);
      v42 = v49;
      v43 = v45;
      (*(v48 + 40))(v31 + v45, v37, v49);
      v46(v57, v31 + v43, v42);
    }
  }

  sub_1C97BE478();
}

uint64_t sub_1C9851B84(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  sub_1C97AE9DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  sub_1C98550F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C98021C4();
  (*(v5 + 16))(v9, v2, v3);
  sub_1C9A92638();
  sub_1C985168C();
}

uint64_t sub_1C9851CE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1C97AEB3C();
  v6 = *(v5 + 8);

  return v6(v3, a1);
}

uint64_t sub_1C9851D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C9855084();
  swift_getAssociatedTypeWitness();
  sub_1C9855018();
  (*(v6 + 32))(a3, a1);
  sub_1C9855110();
  v7 = *(_s5IndexVMa_0() + 36);
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  sub_1C9A93258();
  sub_1C9855018();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

uint64_t sub_1C9851E2C()
{
  sub_1C985517C();
  swift_getAssociatedTypeWitness();
  sub_1C98551B0();
  sub_1C985519C();
  return sub_1C9A923D8() & 1;
}

uint64_t sub_1C9851E9C()
{
  sub_1C985517C();
  swift_getAssociatedTypeWitness();
  sub_1C98551B0();
  sub_1C985519C();
  return sub_1C9A92438() & 1;
}

uint64_t sub_1C9851F24()
{
  sub_1C9855148();
  swift_getAssociatedTypeWitness();
  sub_1C9855090();
  v3 = sub_1C9A93258();
  sub_1C97DACE4(v3);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98550DC();
  sub_1C985509C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C98550EC();
  sub_1C9A92BF8();
  sub_1C98550EC();
  sub_1C9A92CD8();
  return sub_1C9851D40(v2, v1, v0);
}

uint64_t sub_1C9852018()
{
  sub_1C9855148();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1C9A93258();
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97FB2C8();
  sub_1C985509C();
  v6 = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(v6);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  sub_1C98550EC();
  sub_1C9A92C58();
  sub_1C9855060();
  sub_1C97ACC50(v8, v9, v10, AssociatedTypeWitness);
  return sub_1C9851D40(v2, v1, v0);
}

uint64_t sub_1C9852120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C9855104();
  v5 = sub_1C9A93258();
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = _s5IndexVMa_0();
  (*(v7 + 16))(v10, a1 + *(v11 + 36), v5);
  sub_1C983E180(v10);
  if (v12)
  {
    (*(v7 + 8))(v10, v5);
    sub_1C985503C();
    v15 = 478;
    sub_1C97FB1C4();
    result = sub_1C98550A8();
    __break(1u);
  }

  else
  {
    sub_1C97AEB3C();
    return (*(v13 + 32))(a2, v10, AssociatedTypeWitness);
  }

  return result;
}

void sub_1C98522B4()
{
  sub_1C97BE460();
  v54 = v0;
  v2 = v1;
  v58 = v3;
  v51 = v4;
  v5 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v60 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97ABFC0();
  v52 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1C9A93258();
  sub_1C97AE9C8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97ABF90();
  v55 = v19;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v49 - v21;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  sub_1C97AE9DC();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97ABF90();
  v50 = v28;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97ABFC0();
  v59 = v30;
  v31 = *(_s5IndexVMa_0() + 36);
  v56 = v17;
  v57 = v15;
  (*(v17 + 16))(v24, v2 + v31, v15);
  sub_1C985506C(v24, 1, v14);
  if (v32)
  {
    (*(v56 + 8))(v24, v57);
    sub_1C985503C();
    v49 = 486;
    sub_1C97FB1C4();
    sub_1C98550A8();
    __break(1u);
  }

  else
  {
    (*(v26 + 32))(v59, v24, v14);
    v33 = v52;
    v34 = v54;
    sub_1C9A92C18();
    sub_1C9A92C58();
    swift_getAssociatedConformanceWitness();
    v35 = sub_1C9A92438();
    (*(v60 + 8))(v11, AssociatedTypeWitness);
    if (v35)
    {
      (*(v26 + 8))(v59, v14);
      v36 = 1;
      v37 = v53;
    }

    else
    {
      v38 = (v34 + *(v51 + 36));
      v40 = *v38;
      v39 = v38[1];
      v51 = v40;
      v49 = v39;
      v41 = sub_1C9A92D58();
      v42 = *(v26 + 16);
      v54 = v5;
      v43 = AssociatedTypeWitness;
      v44 = v50;
      v42(v50);
      v41(&v61, 0);
      v37 = v53;
      v45 = v59;
      (v51)(v59, v44);
      v46 = *(v26 + 8);
      v47 = v44;
      AssociatedTypeWitness = v43;
      v46(v47, v14);
      v46(v45, v14);
      v36 = 0;
    }

    sub_1C97ACC50(v37, v36, 1, v14);
    (*(v60 + 32))(v11, v33, AssociatedTypeWitness);
    v48 = v55;
    (*(v56 + 32))(v55, v37, v57);
    sub_1C9851D40(v11, v48, v58);
    sub_1C97BE478();
  }
}

uint64_t (*sub_1C985279C(uint64_t **a1, uint64_t a2))()
{
  v4 = sub_1C97A2C48(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1C9852860(v4, a2);
  return sub_1C9854FD8;
}

void sub_1C9852818(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1C9852860(uint64_t *a1, uint64_t a2))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  a1[1] = v5;
  v6 = sub_1C97A2C48(*(v5 + 64));
  a1[2] = v6;
  sub_1C9852120(a2, v6);
  return sub_1C9854FDC;
}

void sub_1C9852940(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1C985298C()
{
  _s5IndexVMa_0();
  sub_1C9855090();
  sub_1C9A93258();
  sub_1C9855060();

  return sub_1C97ACC50(v0, v1, v2, v3);
}

uint64_t sub_1C98529F0(uint64_t a1)
{
  v2 = _s5IndexVMa_0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  (*(v3 + 32))(&v7 - v4, a1, v2);
  sub_1C98522B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C9852AFC()
{
  swift_getAssociatedTypeWitness();

  return sub_1C9A92398();
}

uint64_t sub_1C9852B64(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_1C9A93CC8();
  a3(v7, a1, a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C9852C14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1C9A93CC8();
  a4(v8, a2, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9852DB8()
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

unint64_t sub_1C9852E40()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_1C9A93258();
    if (v2 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C9852EF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_31:
    if (v7 == v11)
    {

      return sub_1C97ABF20(a1, v7, AssociatedTypeWitness);
    }

    v23 = (a1 + v14) & ~v12;
    if (v10 != v11)
    {
      v24 = *((v15 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }

    if (v9 >= 2)
    {
      v25 = sub_1C97ABF20(v23, v9, *(a3 + 24));
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  result = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((result & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v11 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  switch(v19)
  {
    case 1:
      v20 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v20 = *(a1 + result);
      if (!*(a1 + result))
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v20 = *(a1 + result);
      if (!v20)
      {
        goto LABEL_31;
      }

LABEL_28:
      v21 = v20 - 1;
      if ((result & 0xFFFFFFF8) != 0)
      {
        v21 = 0;
        v22 = *a1;
      }

      else
      {
        v22 = 0;
      }

      result = v11 + (v22 | v21) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1C9853148(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v11 + 80);
  v16 = *(*(AssociatedTypeWitness - 8) + 64) + v15;
  v17 = v16 & ~v15;
  v18 = *(v11 + 64);
  if (!v12)
  {
    ++v18;
  }

  v19 = v18 + 7;
  v20 = ((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v19 + v17) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = a3 - v14 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v14 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 <= v14)
  {
    switch(v24)
    {
      case 1:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_54:
        __break(1u);
        return;
      case 4:
        *(a1 + v20) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v9 == v14)
        {
          v27 = a1;
          v28 = a2;
          v10 = AssociatedTypeWitness;
        }

        else
        {
          v27 = (a1 + v16) & ~v15;
          if (v13 != v14)
          {
            v29 = ((v19 + v27) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v30 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v30 = (a2 - 1);
            }

            *v29 = v30;
            return;
          }

          v28 = (a2 + 1);
          v9 = v12;
        }

        sub_1C97ACC50(v27, v28, v9, v10);
        break;
    }
  }

  else
  {
    if (((v19 + v17) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a2 - v14;
    }

    else
    {
      v25 = 1;
    }

    if (((v19 + v17) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v26 = ~v14 + a2;
      bzero(a1, ((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v26;
    }

    switch(v24)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C98533D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C9853478(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return sub_1C97ABF20(result, v6, v5);
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C985363C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          sub_1C97ACC50(a1, a2, v8, v7);
        }

        else
        {
          v24 = (&a1[v16] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
            v24[1] = 0;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }

        break;
    }
  }

  else
  {
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + v15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98538AC()
{
  result = _s5IndexV14RepresentationOMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C9853920(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_1C985515C();
  v9 = *(v8 + 84);
  v10 = *(a3 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v13)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v15 + v16;
  if (a2 > v14)
  {
    v20 = v18 + (v19 & ~v16);
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_12;
    }

    v23 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (v22)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v23 <= 0xFF)
      {
        if (v23 < 2)
        {
          goto LABEL_29;
        }

LABEL_12:
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_29;
        }

LABEL_19:
        v24 = (v22 - 1) << v21;
        if (v20 > 3)
        {
          v24 = 0;
        }

        if (v20)
        {
          if (v20 <= 3)
          {
            v25 = v20;
          }

          else
          {
            v25 = 4;
          }

          switch(v25)
          {
            case 2:
              v26 = *a1;
              break;
            case 3:
              v26 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v26 = *a1;
              break;
            default:
              v26 = *a1;
              break;
          }
        }

        else
        {
          v26 = 0;
        }

        return v14 + (v26 | v24) + 1;
      }

      v22 = *(a1 + v20);
      if (*(a1 + v20))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_29:
  if (v13 < 2)
  {
    return 0;
  }

  if (v9 >= v12)
  {
    v28 = a1;
    v10 = v6;
  }

  else
  {
    v28 = (a1 + v19) & ~v16;
    v9 = v12;
  }

  v29 = sub_1C97ABF20(v28, v9, v10);
  if (v29 >= 2)
  {
    return v29 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C9853B4C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = 0;
  sub_1C985515C();
  v12 = *(v11 + 84);
  v13 = *(a4 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = *(v14 + 80);
  v19 = *(v10 + 64) + v18;
  v20 = v19 & ~v18;
  v21 = *(v14 + 64);
  v22 = v20 + v21;
  if (v16)
  {
    v23 = v20 + v21;
  }

  else
  {
    v23 = v22 + 1;
  }

  v24 = 8 * v23;
  if (a3 > v17)
  {
    if (v23 <= 3)
    {
      v25 = ((a3 - v17 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v25))
      {
        v8 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v8 = v26;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (v17 >= a2)
  {
    switch(v8)
    {
      case 1:
        a1[v23] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v23] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v23] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v16 >= 2)
          {
            if (a2 >= v16)
            {
              if (v22 <= 3)
              {
                v32 = ~(-1 << (8 * v22));
              }

              else
              {
                v32 = -1;
              }

              if (v22)
              {
                v33 = v32 & (a2 - v16);
                if (v22 <= 3)
                {
                  v34 = v22;
                }

                else
                {
                  v34 = 4;
                }

                bzero(a1, v22);
                switch(v34)
                {
                  case 2:
                    *a1 = v33;
                    break;
                  case 3:
                    *a1 = v33;
                    a1[2] = BYTE2(v33);
                    break;
                  case 4:
                    *a1 = v33;
                    break;
                  default:
                    *a1 = v33;
                    break;
                }
              }
            }

            else
            {
              if (v12 >= v15)
              {
                v31 = a2 + 1;
                v30 = a1;
                v13 = v9;
              }

              else
              {
                v30 = &a1[v19] & ~v18;
                v31 = a2 + 1;
                v12 = v15;
              }

              sub_1C97ACC50(v30, v31, v12, v13);
            }
          }
        }

        break;
    }
  }

  else
  {
    v27 = ~v17 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> v24) + 1;
      if (v23)
      {
        v29 = v27 & ~(-1 << v24);
        bzero(a1, v23);
        if (v23 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v23 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v23] = v28;
        break;
      case 2:
        *&a1[v23] = v28;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v23] = v28;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C9853E90()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1C9A93258();
    if (v2 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C9853F74(int *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  result = swift_getAssociatedTypeWitness();
  v8 = *(result - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(result - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = *(v5 + 64) + v12;
  v16 = v13 + 7;
  if (v11 >= a2)
  {
LABEL_31:
    if (v6 == v11)
    {

      return sub_1C97ABF20(a1, v6, AssociatedTypeWitness);
    }

    v24 = (a1 + v15) & ~v12;
    if (v10 != v11)
    {
      v25 = *((v16 + v24) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    if (v9 >= 2)
    {
      v26 = sub_1C97ABF20(v24, v9, v14);
      if (v26 >= 2)
      {
        return v26 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v17 = ((v16 + (v15 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v11 + 1;
  }

  if (v19 >= 0x10000)
  {
    LODWORD(v20) = 4;
  }

  else
  {
    LODWORD(v20) = 2;
  }

  if (v19 < 0x100)
  {
    LODWORD(v20) = 1;
  }

  if (v19 >= 2)
  {
    v20 = v20;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v17);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 2:
      v21 = *(a1 + v17);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v17);
      if (!v21)
      {
        goto LABEL_31;
      }

LABEL_28:
      v22 = v21 - 1;
      if (v18)
      {
        v22 = 0;
        v23 = *a1;
      }

      else
      {
        v23 = 0;
      }

      result = v11 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_31;
  }

  return result;
}

void sub_1C9854208(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v10 + 80);
  v15 = *(v7 + 64) + v14;
  v16 = *(*(v9 - 8) + 64);
  if (!v11)
  {
    ++v16;
  }

  v17 = v16 + 7;
  v18 = ((v17 + (v15 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v17 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = a3 - v13 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v13 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a2 <= v13)
  {
    v25 = ~v14;
    v26 = v9;
    switch(v22)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_40;
        }

        return;
      case 3:
LABEL_54:
        __break(1u);
        return;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_39;
      default:
LABEL_39:
        if (!a2)
        {
          return;
        }

LABEL_40:
        if (v8 == v13)
        {
          v27 = a1;
          v28 = a2;
          v11 = v8;
          v26 = AssociatedTypeWitness;
        }

        else
        {
          v27 = (a1 + v15) & v25;
          if (v12 != v13)
          {
            v29 = ((v17 + v27) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v30 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v30 = (a2 - 1);
            }

            *v29 = v30;
            return;
          }

          v28 = (a2 + 1);
        }

        sub_1C97ACC50(v27, v28, v11, v26);
        break;
    }
  }

  else
  {
    if (((v17 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v23 = a2 - v13;
    }

    else
    {
      v23 = 1;
    }

    if (((v17 + (v15 & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v24 = ~v13 + a2;
      bzero(a1, v18);
      *a1 = v24;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v23;
        break;
      case 2:
        *(a1 + v18) = v23;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v18) = v23;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C98544CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C983DB24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9854554(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C9854690(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C9854878()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1C9A93258();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C9854944(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  if (v9)
  {
    v13 = *(*(v7 - 8) + 64);
  }

  else
  {
    v13 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v5 + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_31;
  }

  v15 = v13 + (v14 & ~v12);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_30:
      if (v11)
      {
LABEL_31:
        if (v6 >= v10)
        {

          return sub_1C97ABF20(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v22 = sub_1C97ABF20((a1 + v14) & ~v12, v9, v7);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_20:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_1C9854BCC(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v7 + 64) + v15;
  v17 = v16 & ~v15;
  if (v12)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  if (a3 > v14)
  {
    if (v19 <= 3)
    {
      v21 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v21))
      {
        v10 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v10 = v22;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v14 >= a2)
  {
    switch(v10)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        return;
      case 3:
LABEL_60:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (!a2)
        {
          return;
        }

LABEL_32:
        if (v8 >= v13)
        {
          v30 = a1;
          v31 = a2;
          v12 = v8;
          v9 = AssociatedTypeWitness;
        }

        else
        {
          v26 = (&a1[v16] & ~v15);
          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v27 = ~(-1 << (8 * v18));
            }

            else
            {
              v27 = -1;
            }

            if (v18)
            {
              v28 = v27 & (~v13 + a2);
              if (v18 <= 3)
              {
                v29 = v18;
              }

              else
              {
                v29 = 4;
              }

              bzero(v26, v18);
              switch(v29)
              {
                case 2:
                  *v26 = v28;
                  break;
                case 3:
                  *v26 = v28;
                  v26[2] = BYTE2(v28);
                  break;
                case 4:
                  *v26 = v28;
                  break;
                default:
                  *v26 = v28;
                  break;
              }
            }

            return;
          }

          v31 = (a2 + 1);
          v30 = v26;
        }

        sub_1C97ACC50(v30, v31, v12, v9);
        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> v20) + 1;
      if (v19)
      {
        v25 = v23 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v19 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v19] = v24;
        break;
      case 2:
        *&a1[v19] = v24;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v19] = v24;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C98550A8()
{

  return sub_1C9A93778();
}

uint64_t sub_1C98550C4()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1C98551B0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C98551D0()
{

  return sub_1C9A92C58();
}

void sub_1C98552D0(double a1)
{
  v2 = *(v1 + OBJC_IVAR___SNCorrelateAudioRequest_impl + 8);
  if (v2 >= 0.0 && v2 < 1.0)
  {
    *(v1 + OBJC_IVAR___SNCorrelateAudioRequest_impl + 8) = a1;
  }

  else
  {
    sub_1C98566E4();
    sub_1C97A7A80();
    swift_willThrow();
  }
}

uint64_t sub_1C985533C()
{
  if (qword_1EC3C4EC8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3C4ED0)
  {
    v1 = *(v0 + OBJC_IVAR___SNCorrelateAudioRequest_impl);
    v2 = *(v0 + OBJC_IVAR___SNCorrelateAudioRequest_impl + 8);
    type metadata accessor for SNAudioCorrelator();
    v3 = swift_allocObject();
    sub_1C9855674(v1, v2);
  }

  else
  {
    v3 = type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ALL, 0x80000001C9AD5760);
    swift_willThrow();
  }

  return v3;
}

id sub_1C9855448(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___SNCorrelateAudioRequest_impl];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C98554E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___SNCorrelateAudioRequest_impl];
  *v4 = a1;
  *(v4 + 1) = 0x3FE0000000000000;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNCorrelateAudioRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNCorrelateAudioRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C9855674(void *a1, double a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v4 = a1;
  v5 = [v4 processingFormat];
  [v5 sampleRate];
  v7 = v6;

  *(v2 + 32) = v7;
  *(v2 + 40) = 1;
  *(v2 + 48) = a2;
  return v2;
}

char *sub_1C98556F4(void *a1, double a2, float a3)
{
  v7 = [a1 length];
  result = [a1 length];
  v9 = result * a3;
  if (COERCE_INT(fabs(v9)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = &v7[-v9];
  if (__OFSUB__(v7, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = sub_1C9856288(a2);
  v12 = sub_1C985645C(v10, v11);
  if (v3)
  {

    return v12;
  }

  sub_1C9855878(v12, a1, a3);
  result = [a1 length];
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 9.22337204e18)
  {
    sub_1C9A695C8(v12);
    sub_1C9A69B8C(v12);
    return v12;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1C9855878(void *a1, void *a2, float a3)
{
  v6 = sub_1C98568A0();
  v7 = sub_1C9A6AEE4(a1, v6);

  sub_1C985608C(v7, a2, a3);
}

uint64_t sub_1C9855908(void *a1, unint64_t a2, void (*a3)(void))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a2))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = v3;
  v7 = *(v3 + 44);
  v8 = v7 + a2;
  if (__CFADD__(v7, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v4;
  *(v6 + 44) = v8;
  if ([*(v6 + 24) length] > v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v6 + 40);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_11:
    if (!(v11 >> 62))
    {

      sub_1C9A93B78();

      return v11;
    }

LABEL_18:

    sub_1C97A2CEC(&unk_1EC3C8670);
    v15 = sub_1C9A93788();
    swift_bridgeObjectRelease_n();
    return v15;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1C9A93698();
  v13 = 0;
  while (1)
  {
    v18 = v13;
    sub_1C9855ACC(&v18, a1, a2, v6, a3, &v17, &v19);
    if (v9)
    {
      break;
    }

    v9 = 0;
    ++v13;
    v11 = v19;
    sub_1C9A93678();
    sub_1C9A936A8();
    sub_1C9A936B8();
    sub_1C9A93688();
    if (v12 == v13)
    {
      v11 = v20;
      goto LABEL_11;
    }
  }

  return v11;
}

void sub_1C9855ACC(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t *a6@<X6>, void *a7@<X8>)
{
  v9 = v7;
  v47 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = [objc_allocWithZone(type metadata accessor for SNAudioCorrelationResult()) init];
  v15 = &v14[OBJC_IVAR___SNAudioCorrelationResult_impl];
  *&v14[OBJC_IVAR___SNAudioCorrelationResult_impl + 80] = v13;
  LODWORD(v42.start.value) = 0;
  if (!sub_1C9A64EA4(a2, &v42, 0, 4, v13))
  {
LABEL_10:
    sub_1C97C269C();
    v9 = swift_allocError();
    *v33 = 4;
LABEL_12:
    swift_willThrow();
LABEL_13:

    *a6 = v9;
    return;
  }

  v15[6] = *&v42.start.value;
  v16 = objc_opt_self();
  v42.start.value = 0;
  v17 = sub_1C9A76EE8(v16, a2, &v42);
  if (!v17)
  {
    v34 = v42.start.value;
    v9 = sub_1C9A913C8();

    goto LABEL_12;
  }

  v18 = v17;
  v19 = v42.start.value;
  v20 = sub_1C9A92B78();

  v21 = __OFADD__(v20, a3);
  v22 = v20 + a3;
  if (v21)
  {
    __break(1u);
    goto LABEL_23;
  }

  v23 = *(a4 + 24);
  v24 = [v23 length];
  v21 = __OFSUB__(v22, v24);
  v25 = v22 - v24;
  if (v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = sub_1C9A67138(a2);
  if (v26 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v20;
  CMTimeMake(&v42.start, v25, v26);
  value = v42.start.value;
  v28 = *&v42.start.timescale;
  epoch = v42.start.epoch;
  v30 = [v23 length];
  v31 = sub_1C9A67138(a2);
  if (v31 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  CMTimeMake(&v42.start, v30, v31);
  duration = v42.start;
  start.value = value;
  *&start.timescale = v28;
  start.epoch = epoch;
  CMTimeRangeMake(&v42, &start, &duration);
  v46 = v42;
  a5();
  if (v7)
  {
    goto LABEL_13;
  }

  v32 = sub_1C9A92F08();
  (a5)(v32);
  sub_1C9A92F18();
  SNAudioCorrelationResult.timeRange.setter(v45);
  LODWORD(v42.start.value) = 0;
  if ((sub_1C9A64EA4(a2, &v42, 1, 4, v13) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v42.start.value & 0x7FFFFFFF) > 0x7F7FFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*&v42.start.value <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*&v42.start.value >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(v39, *&v42.start.value))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  if ((sub_1C9A67138(a2) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = sub_1C9A93168();
  v36 = (a5)(v35);
  sub_1C9A1C2B4(v36, v37, v38);
  *a7 = v14;
}

id sub_1C9855ED0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9856674();
  sub_1C97A7A80();
  return swift_willThrow();
}

void sub_1C9855F24(int a1)
{
  v3 = *v1;
  *(v1 + 10) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;

  v5 = sub_1C97C1C8C();

  if (!v2)
  {
    v6 = v1[2];
    v1[2] = v5;
  }
}

char *sub_1C9855FE0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = *(a1 + 48);
  result = sub_1C98556F4(*(a1 + 24), *(a1 + 32), v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C9856028()
{
  result = sub_1C9855ED0();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C98568A0();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

void sub_1C985608C(void *a1, id a2, float a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [a2 processingFormat];
  v7 = [a2 length];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (HIDWORD(v7))
  {
    goto LABEL_9;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v6 frameCapacity:v7];

  if (v8)
  {
    [a2 setFramePosition_];
    v15[0] = 0;
    v9 = [a2 readIntoBuffer:v8 error:v15];
    v10 = v15[0];
    if (v9)
    {
      v11 = objc_opt_self();
      v15[0] = 0;
      v12 = v10;
      sub_1C9A75830(a3, v11, a1, v8);
    }

    v14 = v15[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v13 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1C9856288(double a1)
{
  sub_1C9A935B8();
  sub_1C98568D0();
  result = MEMORY[0x1CCA90230]();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    v4 = sub_1C98568DC();
    MEMORY[0x1CCA90230](v4);

    sub_1C98568D0();
    MEMORY[0x1CCA90230]();
    v5 = sub_1C98568DC();
    MEMORY[0x1CCA90230](v5);

    sub_1C98568D0();
    MEMORY[0x1CCA90230]();
    v6 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v6);

    sub_1C98568D0();
    MEMORY[0x1CCA90230](0xD000000000000010);
    v7 = sub_1C98568DC();
    MEMORY[0x1CCA90230](v7);

    sub_1C98568D0();
    MEMORY[0x1CCA90230]();
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C985645C(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3C69E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = 1954047316;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_1C9A92348();
  v6 = objc_allocWithZone(type metadata accessor for SNDSPGraphInfo());
  v11 = sub_1C98CCC04(v5, 0, 0xE000000000000000, v6, v7, v8, v9, v10);
  v12 = type metadata accessor for SNDSPGraphLoader();
  v13 = sub_1C98CC714(v11);
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v14 = 0;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1C98565B0()
{
  sub_1C9856588();

  return swift_deallocClassInstance();
}

unint64_t sub_1C9856674()
{
  result = qword_1EC3C9768;
  if (!qword_1EC3C9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9768);
  }

  return result;
}

unint64_t sub_1C98566E4()
{
  result = qword_1EC3C9770;
  if (!qword_1EC3C9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9770);
  }

  return result;
}

_BYTE *sub_1C9856744(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C98567F0()
{
  result = qword_1EC3C9778;
  if (!qword_1EC3C9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9778);
  }

  return result;
}

unint64_t sub_1C9856848()
{
  result = qword_1EC3C9780;
  if (!qword_1EC3C9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9780);
  }

  return result;
}

uint64_t sub_1C98568A0()
{

  return sub_1C9A92478();
}

uint64_t sub_1C98568DC()
{

  return sub_1C9A93A98();
}

uint64_t sub_1C98568F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8);
  type metadata accessor for SNUtils();
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 16))(ObjectType, v1);
  v4 = sub_1C9A16DBC(v3);

  sub_1C9A18C50(v4, 1u);
  v6 = v5;

  return v6;
}

void sub_1C9856998(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v59 = *(a2 + 16);
  v4 = v59(ObjectType, a2);
  v5 = [v4 inputDescriptionsByName];

  sub_1C97BD318(0, &qword_1EC3C54D0);
  v6 = sub_1C9A92328();

  if (*(v6 + 16) != 1)
  {

    goto LABEL_6;
  }

  sub_1C98BBD84(v6);
  v8 = v7;
  v10 = v9;

  if (!v8)
  {
LABEL_6:
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v16, v15 + 41, v17);
    swift_willThrow();
    return;
  }

  v58 = v10;
  v11 = [v10 multiArrayConstraint];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 shape];

    sub_1C97BD318(0, &qword_1EC3C54B0);
    v14 = sub_1C9A92798();
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for SNUtils();
  v18 = sub_1C9A18184();
  if (!v14)
  {

    goto LABEL_16;
  }

  v19 = sub_1C980937C(v14, v18);

  if ((v19 & 1) == 0)
  {
LABEL_16:
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000003BLL, 0x80000001C9AD6DD0);
    v23 = v58;
    v33 = [v58 multiArrayConstraint];
    v34 = v33;
    if (v33)
    {
      v35 = [v33 shape];

      sub_1C97BD318(0, &qword_1EC3C54B0);
      sub_1C98573EC();
      sub_1C9A92798();
    }

    type metadata accessor for SNError();
    sub_1C97A2CEC(&qword_1EC3C97A0);
    v36 = sub_1C9A924F8();
    MEMORY[0x1CCA90230](v36);

    MEMORY[0x1CCA90230](0x746365707865202CLL, 0xEB00000000206465);
    sub_1C9A18184();
    sub_1C97BD318(0, &qword_1EC3C54B0);
    v37 = sub_1C98573EC();
    v38 = MEMORY[0x1CCA90460](v37);
    v40 = v39;

    MEMORY[0x1CCA90230](v38, v40);

    v41 = sub_1C97FB260();
    sub_1C9929478(v41, v42, v43, v44, v45, 0xE000000000000000);

    goto LABEL_21;
  }

  v20 = v59(ObjectType, a2);
  v21 = [v20 outputDescriptionsByName];

  v22 = sub_1C9A92328();
  v23 = v58;
  if (*(v22 + 16) != 1)
  {

    goto LABEL_20;
  }

  sub_1C98BBD84(v22);
  v25 = v24;
  v27 = v26;

  if (!v25)
  {
LABEL_20:
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v47, v46 + 42, v48);
LABEL_21:
    swift_willThrow();

    return;
  }

  v28 = [v27 multiArrayConstraint];
  if (v28 && (v29 = v28, v30 = [v28 shape], v29, sub_1C97BD318(0, &qword_1EC3C54B0), sub_1C98573EC(), v31 = sub_1C9A92798(), v30, v32 = sub_1C97BDEE0(v31), , v32 == 1))
  {
  }

  else
  {
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000003CLL, 0x80000001C9AD6E60);
    v49 = [v27 multiArrayConstraint];
    v50 = v49;
    if (v49)
    {
      v51 = [v49 shape];

      sub_1C97BD318(0, &qword_1EC3C54B0);
      sub_1C98573EC();
      sub_1C9A92798();
    }

    type metadata accessor for SNError();
    sub_1C97A2CEC(&qword_1EC3C97A0);
    v52 = sub_1C9A924F8();
    MEMORY[0x1CCA90230](v52);

    MEMORY[0x1CCA90230](0xD00000000000001CLL, 0x80000001C9AD6EA0);
    v53 = sub_1C97FB260();
    sub_1C9929478(v53, v54, v55, v56, v57, 0xE000000000000000);

    swift_willThrow();
  }
}

id sub_1C9856FE4(uint64_t a1, uint64_t a2, int a3)
{
  ObjectType = swift_getObjectType();
  sub_1C9856998(a1, a2);
  v8 = &v3[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model];
  *v8 = a1;
  v8[1] = a2;
  *&v3[OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1C98570D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  v4 = MEMORY[0x1CCA902B0](v3);

  return sub_1C9A93D98() ^ v4;
}

BOOL sub_1C9857154(uint64_t a1)
{
  sub_1C97A2C7C(a1, v16);
  if (!v17)
  {
    sub_1C97A59D0(v16);
    return 0;
  }

  type metadata accessor for SNSoundPrintFeatureExtractorConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_model + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v6 = v5;
  v7 = *&v15[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8];
  v8 = swift_getObjectType();
  if (v4 == (*(v7 + 8))(v8, v7) && v6 == v9)
  {
  }

  else
  {
    v11 = sub_1C9A93B18();

    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  v13 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames);
  v14 = *&v15[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames];

  return v13 == v14;
}

uint64_t sub_1C985740C()
{
  if (qword_1EC3C5D70 != -1)
  {
    sub_1C9859344();
  }

  v0 = qword_1EC3D3150;
  v1 = byte_1EC3D3158;
  if (byte_1EC3D3158)
  {
    v2 = qword_1EC3D3150;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();
    v3 = 0;
    result = 0;
    v5 = v0;
    v0 = 0;
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C97B8);
    v6 = swift_allocObject();
    v7 = objc_opt_self();
    sub_1C98591C8(v0, 0);
    *(v6 + 16) = [v7 mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CBDC0);
    sub_1C97AA878();
    swift_allocObject();
    result = sub_1C9A37FC8(v6);
    v5 = sub_1C979B0F4;
    v3 = 1;
  }

  qword_1EC3D3178 = v5;
  qword_1EC3D3180 = 0;
  qword_1EC3D3188 = v3;
  qword_1EC3D3190 = result;
  qword_1EC3D3198 = v0;
  byte_1EC3D31A0 = v1;
  return result;
}

uint64_t sub_1C9857570(uint64_t a1, void *a2)
{
  if (sub_1C9859090())
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v4 = sub_1C9A91B58();
    sub_1C97BFF6C(v4, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v6 = sub_1C9859384();
    if (!os_log_type_enabled(v6, v7))
    {
      v10 = 0;
      goto LABEL_16;
    }

    sub_1C98136E4();
    *swift_slowAlloc() = 0;
    sub_1C9859390(&dword_1C9788000, v8, v9, "SoundAnalysis is defanged; refusing to launch daemon");
    v10 = 0;
LABEL_13:
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
LABEL_16:

    sub_1C9859174();
    swift_allocError();
    *v17 = v10;
    return swift_willThrow();
  }

  result = sub_1C99A7FC0(a2, 0xD000000000000025, 0x80000001C9AD6F60);
  if (!v2 && (result == 2 || (result & 1) == 0))
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v12 = sub_1C9A91B58();
    sub_1C97BFF6C(v12, qword_1EC3D3108);
    v5 = sub_1C9A91B38();
    sub_1C9A92FA8();
    v13 = sub_1C9859384();
    if (!os_log_type_enabled(v13, v14))
    {
      v10 = 1;
      goto LABEL_16;
    }

    sub_1C98136E4();
    *swift_slowAlloc() = 0;
    sub_1C9859390(&dword_1C9788000, v15, v16, "inadequate entitlements to host daemon");
    v10 = 1;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C9857734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1C9859310(sub_1C985774C);
}

uint64_t sub_1C985774C()
{
  sub_1C97AA95C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_allocWithZone(type metadata accessor for SNFileServer());

  v0[4] = sub_1C991DB70(v1, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  sub_1C97DA950(v4);

  return sub_1C991FEE4();
}

uint64_t sub_1C985780C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9857AA4, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v3 + 56) = v6;
    *v6 = v4;
    sub_1C97DA950(v6);

    return static AsyncUtils.sleepUntilCancelled()();
  }
}

uint64_t sub_1C9857964()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9857A48()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9857AA4()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9857B00()
{
  sub_1C97AA884();
  *(v0 + 120) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  sub_1C97A2CEC(&qword_1EC3CA8D0);
  *(v0 + 80) = swift_task_alloc();
  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9857B94()
{
  v1 = v0[9];
  v2 = *(v0 + 120);
  v3 = v0[8];
  sub_1C9A92988();
  sub_1C9859364();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v2;
  v5 = sub_1C9859330();
  v0[11] = sub_1C9A1E148(v5, v6, v7, v8, v9);
  sub_1C9859364();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v1;

  v11 = sub_1C9859330();
  v0[12] = sub_1C9A1E148(v11, v12, v13, v14, v10);
  if (qword_1EC3C5DC0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC3D3240;
  v16 = sub_1C9A92478();
  v0[6] = sub_1C9922C24;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C97C2270;
  v0[5] = &unk_1F4934E28;
  v17 = _Block_copy(v0 + 2);

  v18 = sub_1C9A77A98(v15, v16, v17);
  _Block_release(v18);

  _Block_release(v17);
  sub_1C9859364();
  sub_1C97AA878();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_1C9859330();
  sub_1C99A9128();
  v0[13] = v20;
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  sub_1C97DA950(v21);

  return static AsyncUtils.sleepUntilCancelled()();
}

uint64_t sub_1C9857E08()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9857EEC()
{
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A92A28();
  sub_1C9A92A28();
  sub_1C9A92A28();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9858010()
{
  sub_1C97AA884();
  if (*(v0 + 40) == 1)
  {
    v1 = sub_1C99B4CF8();
    v3 = v2;
    *(v0 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 24) = v4;
    *v4 = v0;
    sub_1C97DA950(v4);

    return sub_1C9857734(v1, v3);
  }

  else
  {
    sub_1C97DA91C();

    return v6();
  }
}

uint64_t sub_1C98580E8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9858210, 0, 0);
  }

  else
  {

    sub_1C97DA91C();

    return v6();
  }
}

uint64_t sub_1C9858210()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C985826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C985828C, 0, 0);
}

uint64_t sub_1C985828C()
{
  sub_1C97AA95C();
  v1 = qword_1EC3C5D70;
  swift_bridgeObjectRetain_n();
  if (v1 != -1)
  {
    sub_1C9859344();
  }

  v2 = qword_1EC3D3150;
  v0[5] = qword_1EC3D3150;
  if (byte_1EC3D3158)
  {
    v3 = v2;

    v0[2] = v2;
    sub_1C97A2CEC(&unk_1EC3CA040);
    swift_willThrowTypedImpl();

    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C9859044();

    v6 = sub_1C9858CF0();
    sub_1C97AA878();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1C9859028;
    *(v7 + 24) = v2;

    v8 = sub_1C98E5DB4(v6, sub_1C9859088, v7);
    v10 = v9;

    v0[6] = v8;
    v0[7] = v10;
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    sub_1C97DA950(v11);

    return static AsyncUtils.sleepUntilCancelled()();
  }
}

uint64_t sub_1C9858470()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9858554()
{
  sub_1C97AA95C();

  swift_unknownObjectRelease();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98585D4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 121) = a4;
  *(v4 + 120) = a3;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  return sub_1C9859310(sub_1C98585F4);
}

uint64_t sub_1C98585F4()
{
  v19 = v0;
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v1 = sub_1C9A91B58();
  sub_1C97BFF6C(v1, qword_1EC3D3108);
  v2 = sub_1C9A91B38();
  v3 = sub_1C9A92FC8();
  v4 = sub_1C9859384();
  if (os_log_type_enabled(v4, v5))
  {
    sub_1C98136E4();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C9788000, v2, v3, "Checking if it's OK to run...", v6, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  *(v0 + 40) = &type metadata for SystemBootArgsReader;
  *(v0 + 48) = &off_1F49501B8;
  *(v0 + 80) = &unk_1F4937AE0;
  *(v0 + 88) = &off_1F4937AF0;
  sub_1C9857570(v7, (v0 + 56));
  sub_1C97A592C(v0 + 56);
  sub_1C97A592C(v0 + 16);

  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 121);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_1C9849140(v13, v12, &v18);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v11;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v10;
    _os_log_impl(&dword_1C9788000, v8, v9, "Running with service name %s; file server? %{BOOL}d; biome donation? %{BOOL}d.", v14, 0x18u);
    sub_1C97A592C(v15);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_1C98588C4;

  return sub_1C9857B00();
}

uint64_t sub_1C98588C4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C98589B8()
{
  sub_1C97AA884();
  if (sub_1C99B4C14())
  {
    if (qword_1EC3C57B8 != -1)
    {
      swift_once();
    }

    v1 = byte_1EC3D3138;
  }

  else
  {
    v1 = 0;
  }

  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C97D9C3C;

  return sub_1C98585D4(0xD000000000000018, 0x80000001C9AD6F00, v1, 1);
}

uint64_t (*static SNSystemService.audiomxdLaunch()())(void)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  v1 = sub_1C9A91B38();
  v2 = sub_1C9A92FC8();
  v3 = sub_1C9859384();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1C98136E4();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C9788000, v1, v2, "Not launching SoundAnalysis in audiomxd.", v5, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  return nullsub_1;
}

id SNSystemService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNSystemService.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SNSystemService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C9858CF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C9A92478();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

_BYTE *storeEnumTagSinglePayload for SNDaemon(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9858E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9858E4C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v6 = sub_1C985931C(v4);

  return sub_1C9857FF0(v6, v7, v1, v2);
}

uint64_t sub_1C9858EE8()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v7 = sub_1C985931C(v5);

  return sub_1C985826C(v7, v8, v1, v3, v2);
}

uint64_t sub_1C9858F94()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C985931C(v1);

  return sub_1C982F8AC();
}

unint64_t sub_1C9859044()
{
  result = qword_1EC3C97A8;
  if (!qword_1EC3C97A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C97A8);
  }

  return result;
}

uint64_t sub_1C9859090()
{
  result = sub_1C9A3AD40();
  v1 = result;
  v2 = (result + 40);
  v3 = -*(result + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_9:

      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    if (*(v2 - 1) != 0x6E616665645F6E73 || *v2 != 0xE900000000000067)
    {
      v2 += 4;
      result = sub_1C9A93B18();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C9859174()
{
  result = qword_1EC3C97B0;
  if (!qword_1EC3C97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97B0);
  }

  return result;
}

id sub_1C98591C8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

_BYTE *storeEnumTagSinglePayload for SNDaemon.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C98592B4()
{
  result = qword_1EC3C97C0;
  if (!qword_1EC3C97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97C0);
  }

  return result;
}

uint64_t sub_1C9859344()
{

  return swift_once();
}

uint64_t sub_1C9859364()
{

  return sub_1C97ACC50(v0, 1, 1, v1);
}

void sub_1C9859390(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1C98593B0()
{
  v2 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](47, 0xE100000000000000);
  v0 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v0);

  return v2;
}

uint64_t sub_1C985943C()
{
  v0 = sub_1C98593B0();
  sub_1C9A92F08();
  v1 = sub_1C98593B0();
  v3 = v2;
  MEMORY[0x1CCA90230](544175136, 0xE400000000000000);
  MEMORY[0x1CCA90230](v1, v3);

  return v0;
}

uint64_t sub_1C98594CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C97A2C7C(a2, &v16);
  v13 = v17;
  if (v17)
  {
    sub_1C97A2D34(&v16, v15);
    sub_1C9859DC4(v15, a1, a3, a4, a5, a6, a7, &v18);
    sub_1C97A592C(v15);
    v13 = v18;
  }

  return v13 & 1;
}

uint64_t sub_1C9859574(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v9 = sub_1C9A93258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-v12];
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C97BD360(a2, v19);
  if (swift_dynamicCast())
  {
    sub_1C97ACC50(v13, 0, 1, a5);
    (*(v14 + 32))(v16, v13, a5);
    v17 = a3(a1, v16);
    (*(v14 + 8))(v16, a5);
  }

  else
  {
    sub_1C97ACC50(v13, 1, 1, a5);
    (*(v10 + 8))(v13, v9);
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_1C9859778()
{
  sub_1C985A19C();
  sub_1C985A200();
  if (sub_1C985A1BC() && v24 && (sub_1C985A1EC(), v1 = *(v0 + 48), sub_1C985A1D8(&v24[v2]), v4 = *(v3 + 48), v13 = sub_1C985A21C(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20, v21, v22, v23), v15 = static TimeRange.== infix(_:_:)(v13, v14), v24, v15))
  {
    return v1 == v4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1C9859820()
{
  sub_1C985A19C();
  sub_1C97BD360(v1, v12);
  if (sub_1C985A1BC() && v11 && ((v2 = v0 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl, v3 = *(v0 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl), v4 = *(v0 + OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 8), v5 = *(v2 + 16), v6 = *&v11[OBJC_IVAR___SNDetectSignalThresholdRequest_impl], v7 = *&v11[OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 8], v8 = *&v11[OBJC_IVAR___SNDetectSignalThresholdRequest_impl + 16], v11, v3 == v6) ? (v9 = v4 == v7) : (v9 = 0), v9))
  {
    return v5 == v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C98598E0()
{
  sub_1C985A19C();
  sub_1C97BD360(v0, v21);
  if (sub_1C985A1BC() && v20)
  {
    sub_1C985A1EC();
    sub_1C985A1D8(&v20[v1]);
    v10 = sub_1C985A21C(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19);
    static TimeRange.== infix(_:_:)(v10, v11);
  }

  return sub_1C985A23C();
}

uint64_t sub_1C9859978()
{
  sub_1C985A19C();
  sub_1C97BD360(v1, &v31);
  if (sub_1C985A1BC())
  {
    v2 = v24;
    if (v24)
    {
      v3 = v0 + OBJC_IVAR___SNDetectSoundRequest_impl;
      v4 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl);
      v5 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 8);
      v6 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 24);
      v7 = *(v0 + OBJC_IVAR___SNDetectSoundRequest_impl + 32);
      v8 = *(v3 + 40);
      v31 = v4;
      v32 = v5;
      v33 = *(v3 + 16);
      v34 = v6;
      v35 = v7;
      v36 = v8;
      v10 = *&v24[OBJC_IVAR___SNDetectSoundRequest_impl + 8];
      v11 = *&v24[OBJC_IVAR___SNDetectSoundRequest_impl + 32];
      v9 = *&v24[OBJC_IVAR___SNDetectSoundRequest_impl];
      v12 = v24[OBJC_IVAR___SNDetectSoundRequest_impl + 16];
      LOBYTE(v27) = v12;
      v29 = *&v24[OBJC_IVAR___SNDetectSoundRequest_impl + 24];
      LOBYTE(v30) = v24[OBJC_IVAR___SNDetectSoundRequest_impl + 40];
      sub_1C97F5D50(v4, v5, v33);

      sub_1C97F5D50(v9, v10, v12);

      v21 = sub_1C985A21C(v13, v14, v15, v16, v17, v18, v19, v20, v9, v10, v27, v29, v11, v30, v31);
      sub_1C97F2FF8(v21, v22);
      sub_1C97A6B9C(v25, v26, v28);

      sub_1C97A6B9C(v31, v32, v33);
    }
  }

  return sub_1C985A23C();
}

uint64_t sub_1C9859AAC()
{
  sub_1C985A19C();
  sub_1C985A200();
  if (sub_1C985A1BC())
  {
    v1 = v24;
    if (v24)
    {
      v2 = *(v0 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 16);
      v18[0] = *(v0 + OBJC_IVAR___SNDirectionOfArrivalResult_impl);
      v18[1] = v2;
      v3 = *(v0 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 48);
      v19 = *(v0 + OBJC_IVAR___SNDirectionOfArrivalResult_impl + 32);
      v20 = v3;
      v14 = v18[0];
      v15 = v2;
      v16 = v19;
      v17 = v3;
      v4 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
      v5 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 16];
      v6 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 48];
      v21[2] = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 32];
      v21[3] = v6;
      v21[0] = v4;
      v21[1] = v5;
      v7 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 16];
      v10 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
      v11 = v7;
      v8 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 48];
      v12 = *&v24[OBJC_IVAR___SNDirectionOfArrivalResult_impl + 32];
      v13 = v8;
      sub_1C98049B0(&v14, &v10);
      v22[0] = v10;
      v22[1] = v11;
      v22[2] = v12;
      v22[3] = v13;
      sub_1C97A6844(v18, v23);
      sub_1C97A6844(v21, v23);
      sub_1C9841CB4(v22);
      v23[0] = v14;
      v23[1] = v15;
      v23[2] = v16;
      v23[3] = v17;
      sub_1C9841CB4(v23);
    }
  }

  return sub_1C985A23C();
}

BOOL sub_1C9859BBC()
{
  sub_1C985A19C();
  sub_1C97BD360(v1, v8);
  if (!sub_1C985A1BC() || !v7)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____SNClassification_impl + 16);
  v3 = *&v7[OBJC_IVAR____SNClassification_impl + 16];
  if (*(v0 + OBJC_IVAR____SNClassification_impl) == *&v7[OBJC_IVAR____SNClassification_impl] && *(v0 + OBJC_IVAR____SNClassification_impl + 8) == *&v7[OBJC_IVAR____SNClassification_impl + 8])
  {

    return v2 == v3;
  }

  v5 = sub_1C9A93B18();

  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C9859C88()
{
  sub_1C985A19C();
  sub_1C985A200();
  if (sub_1C985A1BC())
  {
    v1 = v11;
    if (v11)
    {
      v2 = OBJC_IVAR____SNClassificationResult_impl;
      swift_beginAccess();
      memcpy(__dst, (v0 + v2), sizeof(__dst));
      memcpy(v6, (v0 + v2), sizeof(v6));
      v3 = OBJC_IVAR____SNClassificationResult_impl;
      swift_beginAccess();
      memcpy(v8, &v1[v3], sizeof(v8));
      memcpy(__src, &v1[v3], sizeof(__src));
      sub_1C984A444(__dst, v10);
      sub_1C984A444(v8, v10);
      sub_1C992F644(v6, __src);
      memcpy(v9, __src, sizeof(v9));
      sub_1C984A4A0(v9);
      memcpy(v10, v6, sizeof(v10));
      sub_1C984A4A0(v10);
    }
  }

  return sub_1C985A23C();
}

uint64_t sub_1C9859DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a3;
  v10[6] = a4;
  result = sub_1C9859574(a2, a1, sub_1C985A17C, v10, a5);
  *a8 = result & 1;
  return result;
}

uint64_t sub_1C9859E30(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + OBJC_IVAR___SNNullRequest_impl;
  v4 = a2 + OBJC_IVAR___SNNullRequest_impl;
  v6 = *(a1 + OBJC_IVAR___SNNullRequest_impl) == *(a2 + OBJC_IVAR___SNNullRequest_impl) && *(a1 + OBJC_IVAR___SNNullRequest_impl + 8) == *(a2 + OBJC_IVAR___SNNullRequest_impl + 8) && *(a1 + OBJC_IVAR___SNNullRequest_impl + 16) == *(a2 + OBJC_IVAR___SNNullRequest_impl + 16);
  if (v6 && ((*(v3 + 24) ^ *(v4 + 24)) & 1) == 0)
  {
    v2 = *(v4 + 25) ^ *(v3 + 25) ^ 1;
  }

  return v2 & 1;
}

BOOL sub_1C9859E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 8);
  v3 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 16);
  v4 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 24);
  v5 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 32);
  v6 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 40);
  v7 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48);
  v27 = *(a1 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v28 = v2;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v8 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 8);
  v9 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 16);
  v10 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 24);
  v11 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 32);
  v12 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 40);
  v13 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl + 48);
  v20 = *(a2 + OBJC_IVAR____SNTimeDurationConstraint_impl);
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  sub_1C97C6634(v27, v2, v3, v4, v5, v6, v7);
  v14 = sub_1C985A228();
  sub_1C97C6634(v14, v15, v16, v17, v11, v12, v13);
  v18 = sub_1C97C4FBC(&v27, &v20);
  sub_1C97A6390(v20, v21, v22, v23, v24, v25, v26);
  sub_1C97A6390(v27, v28, v29, v30, v31, v32, v33);
  return v18;
}

uint64_t sub_1C9859F80()
{
  sub_1C985A1EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1C985A1D8((v4 + v5));
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = *(v6 + 64);
  v18 = sub_1C985A21C(v10, v11, v12, v13, v14, v15, v16, v17, v23, v24, v25, v26, v27, v28, v29);
  v20 = static TimeRange.== infix(_:_:)(v18, v19);
  result = 0;
  if (v20 && v1 == v7)
  {
    if (v2 == v8 && v3 == v9)
    {
      return 1;
    }

    else
    {
      sub_1C985A228();

      return sub_1C9A93B18();
    }
  }

  return result;
}

uint64_t sub_1C985A03C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20 - v14;
  v16(v13);
  a3(a2);
  v17 = sub_1C9A92438();
  v18 = *(v9 + 8);
  v18(v12, a6);
  v18(v15, a6);
  return v17 & 1;
}

uint64_t sub_1C985A19C()
{

  return swift_getObjectType();
}

uint64_t sub_1C985A1BC()
{

  return swift_dynamicCast();
}

uint64_t sub_1C985A200()
{

  return sub_1C97BD360(v0, v1 - 80);
}

uint64_t sub_1C985A248(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C9AD6FD0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C985A2E4(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C9800);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C985B2BC();
  sub_1C9A93DD8();
  sub_1C9A93A08();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C985A408(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C97F0);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C985B2BC();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A938E8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C985A554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C985A248(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C985A580(uint64_t a1)
{
  v2 = sub_1C985B2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C985A5BC(uint64_t a1)
{
  v2 = sub_1C985B2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C985A5F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C985A408(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C985A6AC()
{
  v1 = *(v0 + OBJC_IVAR___SNExceptionRequest_impl);
  type metadata accessor for SNExceptionDetector();
  sub_1C97AA878();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

id sub_1C985A6F4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___SNExceptionRequest_impl] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1C985A76C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___SNExceptionRequest_impl] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id SNExceptionRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___SNExceptionRequest_impl);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR___SNExceptionRequest_impl] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNExceptionRequest.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNExceptionRequest_impl);
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

BOOL SNExceptionRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v10);
  if (!v11)
  {
    return 0;
  }

  sub_1C97A2D34(&v10, v9);
  sub_1C97BD360(v9, v8);
  if (swift_dynamicCast())
  {
    v3 = *(v1 + OBJC_IVAR___SNExceptionRequest_impl);
    v4 = *&v7[OBJC_IVAR___SNExceptionRequest_impl];

    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1C97A592C(v9);
  return v5;
}

id SNExceptionRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A1950();
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR___SNExceptionRequest_impl] = v3;
  v7.receiver = v4;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  swift_getObjectType();
  sub_1C9802234();
  return v5;
}

id SNExceptionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C985ACCC()
{
  result = sub_1C985A6AC();
  if (v0)
  {
    return &off_1F4935040;
  }

  return result;
}

id sub_1C985ACF8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  *&v18 = 0;
  v3 = sub_1C9A761F8(v2, &v18);
  if (!v3)
  {
    v12 = v18;
    sub_1C9A913C8();

    swift_willThrow();
    return v3;
  }

  v4 = v18;
  v5 = sub_1C9A92478();
  *&v18 = 0;
  v6 = sub_1C9A72FAC(v2, v3, v5, &v18);

  if (!v6)
  {
    v13 = v18;
    sub_1C9A913C8();

    swift_willThrow();
LABEL_10:

    return v3;
  }

  v7 = v18;
  v8 = sub_1C9A92478();
  *&v18 = 0;
  v9 = sub_1C9A7374C(v2, v3, v8, a1, &v18);

  if (!v9)
  {
    v14 = v18;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_10;
  }

  v10 = v18;
  sub_1C9A76554(0x3E80u, 512, 1, &v18);
  v17 = 0;
  if ((sub_1C9A762F8(v2, v3, v6, v9, 0, 0, &v18, &v17) & 1) == 0)
  {
    v15 = v17;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_10;
  }

  v11 = v17;
  sub_1C9A695C8(v3);
  sub_1C9A69B8C(v3);

  return v3;
}

id sub_1C985AF60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C985B24C();
  swift_allocError();
  return swift_willThrow();
}

void sub_1C985AFBC()
{
  v2 = *v0;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;

  v4 = sub_1C97C1C8C();

  if (!v1)
  {
    v5 = v0[2];
    v0[2] = v4;
  }
}

id sub_1C985B070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C985ACF8(*(a1 + 24));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C985B0A0()
{
  v1 = sub_1C985AF60();
  if (!v0)
  {
    v2 = v1;
    v3 = sub_1C9A6BD8C(v1);

    if (!v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C985B0FC()
{
  sub_1C97AA878();

  return swift_deallocClassInstance();
}

unint64_t sub_1C985B1F8()
{
  result = qword_1EC3C97E0;
  if (!qword_1EC3C97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97E0);
  }

  return result;
}

unint64_t sub_1C985B24C()
{
  result = qword_1EC3C97E8;
  if (!qword_1EC3C97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97E8);
  }

  return result;
}

unint64_t sub_1C985B2BC()
{
  result = qword_1EC3C97F8;
  if (!qword_1EC3C97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C97F8);
  }

  return result;
}

_BYTE *sub_1C985B320(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C985B3D0()
{
  result = qword_1EC3C9808;
  if (!qword_1EC3C9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9808);
  }

  return result;
}

unint64_t sub_1C985B428()
{
  result = qword_1EC3C9810;
  if (!qword_1EC3C9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9810);
  }

  return result;
}

unint64_t sub_1C985B480()
{
  result = qword_1EC3C9818;
  if (!qword_1EC3C9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9818);
  }

  return result;
}

unint64_t sub_1C985B4D8()
{
  result = qword_1EC3C9820;
  if (!qword_1EC3C9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9820);
  }

  return result;
}

uint64_t sub_1C985B530(uint64_t a1)
{
  v3 = sub_1C97BDEE0(a1);
  if (v3)
  {
    v4 = v3;
    v5 = a1 & 0xC000000000000001;
    sub_1C97C4F68(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1CCA912B0](0, a1);
    }

    else
    {
      v1 = *(a1 + 32);
    }

    if (v4 != 1)
    {
      sub_1C97C4F68(1, v5 == 0, a1);
      if (v5)
      {
        MEMORY[0x1CCA912B0](1, a1);
        swift_unknownObjectRelease();
      }

      sub_1C97E78C8();
      sub_1C97A7A80();
      sub_1C985DB2C(v6, 2);
      swift_willThrow();
    }
  }

  else
  {
    sub_1C97E78C8();
    sub_1C97A7A80();
    sub_1C985DB2C(v7, 1);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1C985B634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    return *(a1 + 32);
  }

  sub_1C97E78C8();
  v2 = sub_1C97A7A80();
  return sub_1C97C2CF8(v2, v3);
}

uint64_t sub_1C985B694@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_1C9A91558();
    v9 = *(v8 - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 16);
    v11(a2, v10, v8);
    if (v7 == 1)
    {
      sub_1C97ACC50(v6, 1, 1, v8);
      return sub_1C985DAA0(v6, &qword_1EC3C7FE0);
    }

    else
    {
      v11(v6, v10 + *(v9 + 72), v8);
      sub_1C97ACC50(v6, 0, 1, v8);
      sub_1C985DAA0(v6, &qword_1EC3C7FE0);
      sub_1C97E78C8();
      swift_allocError();
      *v14 = 2;
      swift_willThrow();
      return (*(v9 + 8))(a2, v8);
    }
  }

  else
  {
    sub_1C97E78C8();
    swift_allocError();
    *v13 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1C985B8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 56);
    v3 = *(a1 + 64);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 72);

    result = sub_1C985DA88(v4, v3, v8);
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
    *(a2 + 32) = v3;
    *(a2 + 40) = v8;
  }

  else
  {
    sub_1C97E78C8();
    v10 = sub_1C97A7A80();
    return sub_1C97C2CF8(v10, v11);
  }

  return result;
}

uint64_t sub_1C985B960(uint64_t a1)
{
  v2 = 1 << *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = -1;
  if (v2 < 64)
  {
    v4 = ~(-1 << v2);
  }

  v5 = v4 & v3;
  if ((v4 & v3) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v6 = v9 + 1;
      if (v9 + 1 >= (v2 + 63) >> 6)
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 64 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v7 = __clz(__rbit64(v10)) + v8;
        if (((v10 - 1) & v10) != 0)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }
  }

  v6 = 0;
  v7 = __clz(__rbit64(v5));
  if (((v5 - 1) & v5) != 0)
  {
LABEL_13:
    sub_1C97E78C8();
    v15 = sub_1C97A7A80();
    sub_1C97C2CF8(v15, v16);
    return v1;
  }

LABEL_10:
  v1 = *(*(a1 + 48) + 16 * v7);
  v11 = (v2 + 63) >> 6;
  v12 = v6 + 1;
  v13 = (a1 + 8 * v6 + 64);
  while (v12 < v11)
  {
    v14 = *v13++;
    ++v12;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  return v1;
}

uint64_t sub_1C985BA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 1;
LABEL_6:
    sub_1C97E78C8();
    v3 = sub_1C97A7A80();
    sub_1C97C2CF8(v3, v4);
    return v2;
  }

  if (v1 != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  v2 = *(a1 + 32);

  return v2;
}

uint64_t sub_1C985BAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1C9A93548();
  sub_1C98784BC(a3, &v8);
  sub_1C97C90D4(v7);
  if (v9)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF8);
    if (swift_dynamicCast())
    {
      return a1;
    }
  }

  else
  {
    sub_1C985DAA0(&v8, &unk_1EC3C5E60);
  }

  sub_1C985D7BC();
  sub_1C97A7A80();
  *v5 = 0;
  return swift_willThrow();
}

uint64_t sub_1C985BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1C985BAEC(a1, a2, a5);
  if (!v5)
  {
    v9 = result;
    *&v12 = a3;
    *(&v12 + 1) = a4;

    sub_1C9A93548();
    sub_1C98784BC(v9, &v12);

    sub_1C97C90D4(v13);
    sub_1C97A2CEC(&unk_1EC3C5E60);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      sub_1C985D7BC();
      swift_allocError();
      *v10 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1C985BCE0()
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_1C9A913E8())
  {
    v12 = 0;
    v0 = objc_opt_self();
    v1 = [v0 defaultManager];
    sub_1C9A91508();
    v2 = sub_1C9A92478();

    v3 = [v1 fileExistsAtPath:v2 isDirectory:&v12];

    if (!v3)
    {
      v6 = [v0 defaultManager];
      v7 = sub_1C9A91488();
      v11 = 0;
      v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v11];

      if (v8)
      {
        v9 = v11;
        return;
      }

      v10 = v11;
      sub_1C9A913C8();

      goto LABEL_7;
    }

    if (v12)
    {
      return;
    }

    sub_1C985D7BC();
    sub_1C97A7A80();
    v5 = 3;
  }

  else
  {
    sub_1C985D7BC();
    sub_1C97A7A80();
    v5 = 2;
  }

  sub_1C985DB2C(v4, v5);
LABEL_7:
  swift_willThrow();
}

uint64_t sub_1C985BE98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v85 = a7;
  v86 = a3;
  v88 = a5;
  v89 = a6;
  v87 = a4;
  v84 = a2;
  v92 = *MEMORY[0x1E69E9840];
  v15 = sub_1C9A91558();
  sub_1C97AE9C8();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v78 - v22;
  sub_1C985DAF4();
  result = sub_1C985BBE0(v24, v25, v26, 0xE600000000000000, a12);
  if (!v12)
  {
    v79 = a1;
    v80 = v21;
    v78 = result;
    v82 = v17;
    v83 = v28;
    v81 = v15;
    type metadata accessor for SNFileUtils();
    sub_1C9A457AC(a10, 0x6966697265766E75, 0xEB000000002D6465);
    sub_1C99A4AF8();
    sub_1C985DAF4();
    v90 = sub_1C985BBE0(v29, v30, v31, 0xE600000000000000, a12);
    v91 = v32;

    sub_1C985DB60();
    MEMORY[0x1CCA90230](a8, a9);

    v33 = v90;
    v34 = v91;
    sub_1C97A2CEC(&qword_1EC3C6CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v33;
    *(inited + 40) = v34;
    sub_1C9988C9C(v79, v84, v86, inited, a11, v87, v88, v89, v85, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);

    v36 = objc_opt_self();
    v37 = [v36 defaultManager];
    v38 = sub_1C9A91488();
    v39 = sub_1C9A91488();
    v90 = 0;
    v40 = [v37 moveItemAtURL:v38 toURL:v39 error:&v90];

    if (v40)
    {
      v89 = a10;
      v41 = v82 + 8;
      v42 = *(v82 + 8);
      v43 = v90;
      v42(v80, v81);
      v44 = objc_autoreleasePoolPush();
      v48 = sub_1C9A915A8();
      v50 = v49;
      v87 = v42;
      v88 = v23;
      v82 = v41;
      sub_1C9987FE4();
      sub_1C97A5978(v48, v50);
      objc_autoreleasePoolPop(v44);
      v51 = sub_1C985511C();
      v53 = sub_1C9987DF0(v51, v52);
      v55 = v54;
      v56 = sub_1C985511C();
      sub_1C97A5978(v56, v57);
      v58 = v78;
      v59 = v83;
      v60 = v53 == v78 && v55 == v83;
      if (v60 || (sub_1C9A93B18() & 1) != 0)
      {

        v61 = [v36 defaultManager];
        v62 = v88;
        v63 = sub_1C9A91488();
        v64 = sub_1C9A91488();
        v90 = 0;
        v65 = [v61 moveItemAtURL:v63 toURL:v64 error:&v90];

        v66 = v81;
        v67 = v87;
        if (v65)
        {
          v68 = v90;
        }

        else
        {
          v69 = v90;
          sub_1C9A913C8();

          swift_willThrow();
        }

        sub_1C985C510();
        return v67(v62, v66);
      }

      else
      {
        type metadata accessor for SNError();
        v90 = 0;
        v91 = 0xE000000000000000;
        sub_1C9A935B8();
        MEMORY[0x1CCA90230](0xD00000000000002BLL, 0x80000001C9AD7050);
        MEMORY[0x1CCA90230](v58, v59);

        MEMORY[0x1CCA90230](0x20746F6720, 0xE500000000000000);
        MEMORY[0x1CCA90230](v53, v55);

        v70 = v91;
        v71 = sub_1C97FB260();
        sub_1C9929478(v71, v72, v73, v74, v75, v70);

        swift_willThrow();
        v76 = v88;
        sub_1C985C510();
        return (v87)(v76, v81);
      }
    }

    else
    {
      v45 = v90;

      sub_1C9A913C8();

      swift_willThrow();
      v46 = v81;
      v47 = v82;
      (*(v82 + 8))(v80, v81);
      sub_1C985C510();
      return (*(v47 + 8))(v23, v46);
    }
  }

  return result;
}

void static SNACITestAssets.uploadTestAsset(s3Endpoint:bucket:aciID:aciSecretKey:testAsset:url:timeoutTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_autoreleasePoolPush();
  v17 = sub_1C9A915A8();
  if (v11)
  {
    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v19 = v17;
    v20 = v18;
    v29 = a4;
    v30 = a5;
    v21 = sub_1C9987FE4();
    v23 = v22;
    sub_1C97A5978(v19, v20);
    objc_autoreleasePoolPop(v16);
    v24 = sub_1C9987DF0(v21, v23);
    v26 = v25;
    sub_1C97A5978(v21, v23);

    sub_1C985DB60();
    MEMORY[0x1CCA90230](a8, a9);

    sub_1C97A2CEC(&qword_1EC3C6CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    sub_1C9984D08(a10, a1, a2, a3, inited, a11, v29, v30, a6, a7, v28, a9, v29, v30, a11, a2, a7, a6, v34, v35, v36, v37);
    swift_setDeallocating();
    sub_1C985D728();
  }
}

uint64_t static SNACITestAssets.url(s3Endpoint:bucket:aciID:aciSecretKey:timeoutSeconds:testAsset:testAssetsDatabase:assetDirectoryURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_1C9A91408();
  sub_1C97AE9C8();
  v44 = v14;
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  v18 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AEAD8();
  v24 = v23 - v22;
  sub_1C9A91688();
  sub_1C985DAF4();
  sub_1C985BBE0(a8, a10, v25, 0xE600000000000000, a11);
  if (v11)
  {
    return (*(v20 + 8))(v24, v18);
  }

  v41 = v18;

  sub_1C985DB60();
  v27 = a8;
  MEMORY[0x1CCA90230](a8, a10);

  (*(v44 + 104))(v17, *MEMORY[0x1E6968F70], v45);
  sub_1C98449A8();
  sub_1C9A91548();
  (*(v44 + 8))(v17, v45);

  if (sub_1C9A913E8())
  {
    v28 = [objc_opt_self() defaultManager];
    sub_1C9A91508();
    v29 = sub_1C9A92478();

    v30 = [v28 fileExistsAtPath_];

    if (v30)
    {
      v32 = v20;
      v31 = v41;
    }

    else
    {
      sub_1C985BCE0();
      v32 = v20;
      sub_1C985BE98(a1, a2, a3, a4, a5, a6, a7, v27, a10, a9, v24, a11);
      v31 = v41;
    }

    return (*(v32 + 8))(v24, v31);
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    sub_1C985DB14();
    v52 = v33;
    v34 = sub_1C9A91558();
    sub_1C985D764();
    v35 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v35);

    v36 = sub_1C97FB260();
    sub_1C9929478(v36, v37, v38, v39, v40, v52);

    swift_willThrow();
    (*(*(v34 - 8) + 8))(a9, v34);
    return (*(v20 + 8))(v24, v41);
  }
}

uint64_t static SNACITestAssets.soleItemInTar(s3Endpoint:bucket:aciID:aciSecretKey:timeoutSeconds:assetName:testAssetsDatabase:assetDirectoryURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v117 = a7;
  v115 = a5;
  v116 = a6;
  v113 = a3;
  v114 = a4;
  v111 = a1;
  v112 = a2;
  v103 = a9;
  v122 = *MEMORY[0x1E69E9840];
  sub_1C9A91408();
  sub_1C97AE9C8();
  v106 = v14;
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v105 = v16 - v15;
  v119 = sub_1C9A916E8();
  sub_1C97AE9C8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C97AEAD8();
  v22 = v21 - v20;
  v23 = sub_1C9A91558();
  sub_1C97AE9C8();
  v110 = v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v104 = &v96 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v96 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v96 - v34;
  sub_1C9A91688();
  sub_1C985DAF4();
  v108 = a10;
  v109 = a8;
  v36 = v118;
  v38 = sub_1C985BBE0(a8, a10, v37, 0xE600000000000000, a11);
  if (v36)
  {
    return (*(v18 + 8))(v22, v119);
  }

  v118 = a11;
  v100 = v22;
  v101 = v18;
  v97 = v33;
  v98 = 0;
  v99 = v28;
  v96 = v35;
  v102 = v23;
  v120 = v38;
  v121 = v39;

  sub_1C985DB60();
  v41 = v108;
  v42 = v109;
  MEMORY[0x1CCA90230](v109, v108);

  v44 = v105;
  v43 = v106;
  v45 = v107;
  (*(v106 + 104))(v105, *MEMORY[0x1E6968F70], v107);
  sub_1C98449A8();
  v46 = v104;
  sub_1C9A91548();
  (*(v43 + 8))(v44, v45);

  if ((sub_1C9A913E8() & 1) == 0)
  {
    type metadata accessor for SNError();
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_1C9A935B8();

    sub_1C985DB14();
    v120 = v70;
    v121 = v69;
    sub_1C985D764();
    v71 = v102;
    v72 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v72);

    v73 = v121;
    v74 = sub_1C97FB260();
    sub_1C9929478(v74, v75, v76, v77, v78, v73);

    swift_willThrow();
    (*(v110 + 8))(v46, v71);
    return (*(v101 + 8))(v100, v119);
  }

  v47 = objc_opt_self();
  v48 = [v47 defaultManager];
  sub_1C9A91508();
  v49 = sub_1C9A92478();

  v50 = [v48 fileExistsAtPath_];

  v51 = v119;
  if (v50)
  {
    v107 = v47;
    v52 = v110;
    v53 = v97;
    sub_1C985DB4C();
  }

  else
  {
    v79 = v98;
    sub_1C985BCE0();
    v52 = v110;
    sub_1C985DB4C();
    if (v79)
    {
      (*(v52 + 8))(v46, v102);
      return (*(a12 + 8))(v49, v51);
    }

    v107 = v47;
    sub_1C985BE98(v111, v112, v113, v114, v115, v116, v117, v42, v41, v46, v49, v118);
    v98 = 0;
    v53 = v97;
  }

  (*(a12 + 8))(v49, v51);
  v54 = v102;
  v119 = *(v52 + 32);
  v119(v53, v46, v102);
  v55 = v53;
  sub_1C9A914B8();
  v56 = v107;
  v57 = [v107 defaultManager];
  sub_1C9A91518();
  v58 = sub_1C9A92478();

  v59 = [v57 fileExistsAtPath_];

  if (v59)
  {
    v60 = *(v52 + 8);
    v60(v55, v54);
    v61 = v103;
    goto LABEL_8;
  }

  v80 = [v56 defaultManager];
  v81 = sub_1C9A91488();
  v120 = 0;
  v82 = [v80 createDirectoryAtURL:v81 withIntermediateDirectories:0 attributes:0 error:&v120];

  v61 = v103;
  if (!v82)
  {
    v91 = v120;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_17;
  }

  v83 = v120;
  v84 = v97;
  v85 = sub_1C9A91508();
  v87 = v86;
  v88 = sub_1C9A91518();
  v89 = v98;
  sub_1C9929ED0(v85, v87, v88, v90);
  if (v89)
  {

    v52 = v110;
LABEL_17:
    v92 = v99;
    sub_1C99A4AF8();
    swift_willThrow();
    v95 = *(v52 + 8);
    v95(v92, v54);
    return (v95)(v97, v54);
  }

  v98 = 0;
  v60 = *(v110 + 8);
  v60(v84, v54);

LABEL_8:
  v119(v96, v99, v54);
  v62 = [v107 defaultManager];
  v63 = sub_1C9A91488();
  v120 = 0;
  v64 = [v62 contentsOfDirectoryAtURL:v63 includingPropertiesForKeys:0 options:0 error:&v120];

  v65 = v120;
  if (v64)
  {
    v66 = sub_1C9A92798();
    v67 = v65;

    sub_1C985B694(v66, v61);
    v68 = sub_1C985511C();
    (v60)(v68);
  }

  else
  {
    v93 = v120;
    sub_1C9A913C8();

    swift_willThrow();
    v94 = sub_1C985511C();
    return (v60)(v94);
  }
}

uint64_t sub_1C985D6E8()
{
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C985D728()
{
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

unint64_t sub_1C985D764()
{
  result = qword_1EC3C9830;
  if (!qword_1EC3C9830)
  {
    sub_1C9A91558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9830);
  }

  return result;
}

unint64_t sub_1C985D7BC()
{
  result = qword_1EC3C9838;
  if (!qword_1EC3C9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9838);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNACITestAssets(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNACITestAssets.Err(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C985D99C()
{
  result = qword_1EC3C9840;
  if (!qword_1EC3C9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9840);
  }

  return result;
}

uint64_t sub_1C985DA04(uint64_t *a1)
{
  sub_1C97A2CEC(a1);
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C985DA4C()
{
  swift_arrayDestroy();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C985DA88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
  }

  return result;
}

uint64_t sub_1C985DAA0(uint64_t a1, uint64_t *a2)
{
  sub_1C97A2CEC(a2);
  sub_1C985DB38();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C985DB60()
{

  JUMPOUT(0x1CCA90230);
}

uint64_t sub_1C985DB78(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    a1(a7);
  }

  result = a5(a7);
  if (a3)
  {
    return a3(a7);
  }

  return result;
}

uint64_t sub_1C985DC14()
{
  result = sub_1C9A93258();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C985DC84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = ((v8 + *(v5 + 80)) & ~*(v5 + 80)) + v8;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_22;
        }

LABEL_14:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          switch(v10)
          {
            case 2:
              LODWORD(v10) = *a1;
              break;
            case 3:
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v10) = *a1;
              break;
            default:
              LODWORD(v10) = *a1;
              break;
          }
        }

        return v7 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  v16 = sub_1C97ABF20(a1, v6, v4);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C985DE0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  v12 = ((v11 + *(v8 + 80)) & ~*(v8 + 80)) + v11;
  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 >= 2)
          {
            v21 = a2 + 1;

            sub_1C97ACC50(a1, v21, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C985E054()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C985E0C8()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C97BDF2C(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C985E10C(char a1, char a2)
{
  if (!a2)
  {
    return a1 & 1;
  }

  if (a2 != 1)
  {
    return 128;
  }

  sub_1C97A2CEC(&unk_1EC3CA040);
  if (swift_dynamicCast())
  {
    return v3 | 0x40u;
  }

  else
  {
    return 64;
  }
}

uint64_t sub_1C985E194(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return a1 & 1;
  }

  if (a1 >> 6 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3F;
  sub_1C985E2B4();
  result = swift_allocError();
  *v3 = v1;
  return result;
}

uint64_t sub_1C985E1F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C985E10C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1C985E22C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C985E194(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_1C985E260()
{
  result = qword_1EC3C98D8;
  if (!qword_1EC3C98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C98D8);
  }

  return result;
}

unint64_t sub_1C985E2B4()
{
  result = qword_1EC3CD630;
  if (!qword_1EC3CD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD630);
  }

  return result;
}

uint64_t sub_1C985E308()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteRequest()
{
  result = qword_1EC3C98E0;
  if (!qword_1EC3C98E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C985E3CC()
{
  result = type metadata accessor for AOPClassificationDemo.Request();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C985E490()
{
  sub_1C97AA884();
  v1[275] = v0;
  v1[274] = v2;
  v1[273] = v3;
  v4 = type metadata accessor for AOPClassificationDemo.Request();
  sub_1C97DACE4(v4);
  v1[276] = swift_task_alloc();
  v5 = type metadata accessor for RemoteRequest();
  v1[277] = v5;
  sub_1C97DACE4(v5);
  v1[278] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C985E54C, 0, 0);
}

void sub_1C985E54C()
{
  v1 = (v0 + 1504);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  sub_1C981CE50(*(v0 + 2200), v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = *(v0 + 2224);
      v26 = *(v0 + 2192);
      memcpy((v0 + 880), v25, 0x49uLL);
      memcpy(__dst, v25, 0x49uLL);
      v27 = *(v26 + 8);
      v3 = *(v26 + 24);
      *(v0 + 2088) = &unk_1F492E308;
      *(v0 + 2096) = &off_1F493D758;
      sub_1C98137F8();
      v28 = swift_allocObject();
      *(v0 + 2064) = v28;
      sub_1C9871864(v28);

      sub_1C97FFF18();
      sub_1C98719A4();
      sub_1C97A592C(v0 + 2064);
      sub_1C986EB48(v0 + 880);
      *(v0 + 2048) = &unk_1F4930DE0;
      *(v0 + 2056) = &off_1F4930E98;
      *(v0 + 2024) = v27;
      v42 = v0 + 2024;
      break;
    case 2u:
      v17 = *(v0 + 2192);
      sub_1C98719DC((v0 + 1248));
      sub_1C98719DC(__dst);
      v18 = *(v17 + 8);
      v3 = *(v17 + 24);
      *(v0 + 1968) = &unk_1F492E308;
      *(v0 + 1976) = &off_1F493D758;
      sub_1C98137F8();
      v19 = swift_allocObject();
      *(v0 + 1944) = v19;
      sub_1C9871864(v19);

      sub_1C9A41E9C(__dst, (v0 + 1944));
      sub_1C98719A4();
      sub_1C97A592C(v0 + 1944);
      sub_1C986EAF4(v0 + 1248);
      *(v0 + 1928) = &unk_1F4950A48;
      *(v0 + 1936) = &off_1F4950A70;
      *(v0 + 1904) = v18;
      v42 = v0 + 1904;
      break;
    case 3u:
      v20 = *(v0 + 2224);
      v21 = *(v0 + 2192);
      memcpy((v0 + 1392), v20, 0x41uLL);
      memcpy((v0 + 1176), v20, 0x41uLL);

      sub_1C986EA44(v0 + 1392, v0 + 1320);
      v40 = sub_1C986E158(v0 + 1176, v21);
      v41 = *(v0 + 2184);
      sub_1C986EAA0(v0 + 1392);

      sub_1C986EAA0(v0 + 1392);
      *(v0 + 1808) = &unk_1F494E228;
      *(v0 + 1816) = &off_1F494E250;
      *(v0 + 1784) = v40;
      v42 = v0 + 1784;
      goto LABEL_23;
    case 4u:
      v8 = *(v0 + 2224);
      v9 = *(v0 + 2192);
      memcpy((v0 + 424), v8, 0x79uLL);
      memcpy(__dst, v8, 0x79uLL);
      v10 = *(v9 + 8);
      v3 = *(v9 + 24);
      *(v0 + 1728) = &unk_1F492E308;
      *(v0 + 1736) = &off_1F493D758;
      sub_1C98137F8();
      v11 = swift_allocObject();
      *(v0 + 1704) = v11;
      sub_1C9871864(v11);

      sub_1C9992164();
      sub_1C98719A4();
      sub_1C97A592C(v0 + 1704);
      sub_1C986E9F0(v0 + 424);
      *(v0 + 1688) = &unk_1F4946180;
      *(v0 + 1696) = &off_1F49461A8;
      *(v0 + 1664) = v10;
      v42 = v0 + 1664;
      break;
    case 5u:
      v29 = *(v0 + 2192);
      memcpy((v0 + 672), *(v0 + 2224), 0x71uLL);
      sub_1C985F5F0((v0 + 672), v29);
      sub_1C98719A4();
      *(v0 + 1608) = &type metadata for SoundDetection.Session;
      *(v0 + 1616) = &off_1F4930220;
      sub_1C97F9A64(v0 + 672);
      *(v0 + 1584) = v29;
      v42 = v0 + 1584;
      break;
    case 6u:
      v30 = *(v0 + 2224);
      v31 = *(v0 + 2192);
      memcpy((v0 + 792), v30, 0x51uLL);
      v32 = *(v0 + 792);
      v33 = *(v0 + 800);
      memcpy((v0 + 1104), (v30 + 16), 0x41uLL);
      v34 = *(v31 + 32);
      v35 = *(v31 + 16);
      *v1 = *v31;
      *(v0 + 1520) = v35;
      *(v0 + 1536) = v34;
      v36 = swift_task_alloc();
      *(v36 + 16) = v1;
      *(v36 + 24) = v0 + 1104;

      sub_1C97A6264(v0 + 808, v0 + 960);

      v43 = sub_1C9805B68(sub_1C986E980, v36, v32, v33);
      v41 = *(v0 + 2184);
      sub_1C97E8084(v0 + 808);

      sub_1C986E99C(v0 + 792);
      *(v0 + 1648) = &type metadata for DirectionOfArrival.Session;
      *(v0 + 1656) = &off_1F4938E88;
      *(v0 + 1624) = v43;
      v42 = v0 + 1624;
LABEL_23:
      v47 = v41;
      goto LABEL_26;
    case 7u:
      memcpy((v0 + 16), *(v0 + 2224), 0xD1uLL);
      *(v0 + 1848) = type metadata accessor for AccessibilitySoundRecognition.Session(0);
      *(v0 + 1856) = &off_1F4942E48;
      sub_1C981CDF0((v0 + 1824));
      v22 = sub_1C9871B08();
      *(v0 + 2232) = v22;
      *v22 = v0;
      v22[1] = sub_1C985EF38;
      sub_1C98719BC();

      __asm { BR              X2 }

      return;
    case 8u:
      sub_1C98718C4();
      *(v0 + 2008) = &unk_1F492E308;
      *(v0 + 2016) = &off_1F492ECD0;
      sub_1C98137F8();
      v39 = swift_allocObject();
      *(v0 + 1984) = v39;
      sub_1C9871A80(v39);
      *(v0 + 2128) = sub_1C97A2CEC(&qword_1EC3C9908);
      *(v0 + 2136) = &off_1F494F618;
      sub_1C981CDF0((v0 + 2104));

      sub_1C9871A24();
      sub_1C9A21F94();
      if (v0 != -1104)
      {

        sub_1C97A592C(v0 + 1984);
        v16 = v0 + 2104;
        goto LABEL_21;
      }

      v3 = MEMORY[0x438];

      sub_1C97A592C(880);
      v42 = 1000;
      break;
    case 9u:
      sub_1C98718C4();
      *(v0 + 1488) = &unk_1F492E308;
      *(v0 + 1496) = &off_1F492ECD0;
      sub_1C98137F8();
      v15 = swift_allocObject();
      *(v0 + 1464) = v15;
      sub_1C9871A80(v15);
      *(v0 + 1768) = sub_1C97A2CEC(&qword_1EC3C9900);
      *(v0 + 1776) = &off_1F494F618;
      sub_1C981CDF0((v0 + 1744));

      sub_1C9871A24();
      sub_1C9A2258C();
      if (v0 != -1104)
      {

        sub_1C97A592C(v0 + 1464);
        v16 = v0 + 1744;
LABEL_21:
        sub_1C97C26F0(v16);
        sub_1C98719B0();

        sub_1C97DA91C();
        goto LABEL_28;
      }

      v3 = MEMORY[0x438];

      sub_1C97A592C(360);
      v42 = 640;
      break;
    case 0xAu:
      sub_1C98719B0();
      sub_1C9871600();
      sub_1C986FB68(v37, v2, v38);
      *(v0 + 1568) = &type metadata for AOPClassificationDemo.Session;
      *(v0 + 1576) = &off_1F49336C8;
      sub_1C9836FD0(v2, (v0 + 1544));
      v44 = *(v0 + 2184);
      sub_1C987154C();
      sub_1C986F1E8(v45, v46);
      v42 = v0 + 1544;
      v47 = v44;
      goto LABEL_26;
    case 0xBu:
      v6 = *(v0 + 2184);
      v6[3] = &type metadata for ExampleRemoteWorkload.Session;
      v6[4] = &off_1F493B788;
      v7 = sub_1C986E5A8(0xFFFFFFFFFFFFFFFFLL);
      *v6 = &unk_1C9AB0998;
      v6[1] = 0;
      v6[2] = v7 ^ 0x8000000000000000;
      goto LABEL_27;
    case 0xCu:
      *(v0 + 1888) = type metadata accessor for AccessibilitySoundActions.Session();
      *(v0 + 1896) = &off_1F493CD28;
      sub_1C981CDF0((v0 + 1864));
      v12 = sub_1C9871B08();
      *(v0 + 2248) = v12;
      *v12 = v0;
      v12[1] = sub_1C985F0B4;
      sub_1C98719BC();

      __asm { BR              X2 }

      return;
    default:
      v4 = *(v0 + 2224);
      v3 = *(v0 + 2192);
      memcpy((v0 + 232), v4, 0xB9uLL);
      memcpy((v0 + 552), v4, 0x78uLL);
      memcpy((v0 + 1032), (v4 + 120), 0x41uLL);
      v5 = type metadata accessor for _SNClassifySoundRequest();
      sub_1C9869FC4((v0 + 552), (v0 + 1032), v3);
      sub_1C98719A4();
      *(v0 + 2168) = &type metadata for SoundClassification.Session;
      *(v0 + 2176) = &off_1F4941588;
      sub_1C986EB9C(v0 + 232);
      *(v0 + 2144) = v5;
      v42 = v0 + 2144;
      break;
  }

  v47 = v3;
LABEL_26:
  sub_1C979B054(v42, v47);
LABEL_27:
  sub_1C98719B0();

  sub_1C97DA8DC();
LABEL_28:
  sub_1C98719BC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C985EF38()
{
  sub_1C97AA884();
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 2240) = v0;

  if (v0)
  {
    v6 = sub_1C985F228;
  }

  else
  {
    sub_1C9866824(v2 + 16);
    v6 = sub_1C985F048;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}