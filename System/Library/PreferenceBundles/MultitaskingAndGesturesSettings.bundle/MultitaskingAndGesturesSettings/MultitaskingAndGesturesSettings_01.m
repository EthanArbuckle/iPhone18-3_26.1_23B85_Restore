uint64_t getEnumTagSinglePayload for MultitaskingAnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MultitaskingAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_1A804(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

uint64_t sub_1A874(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        v2 = 0x7472617473;
        v3 = a2 & 0x3F;
        v4 = a1 & 0x3F;
        if (v4 > 5)
        {
          v17 = 0x73654D2065766F4DLL;
          v18 = 0xED00007365676173;
          v19 = 0x80000000000424F0;
          v20 = 0x6E7275746572;
          if (v4 == 10)
          {
            v20 = 0xD000000000000014;
          }

          else
          {
            v19 = 0xE600000000000000;
          }

          if (v4 != 9)
          {
            v17 = v20;
            v18 = v19;
          }

          v21 = 0x80000000000424B0;
          v22 = 0xD000000000000015;
          v23 = 0x73654D206E65704FLL;
          v24 = 0xED00007365676173;
          if (v4 != 7)
          {
            v23 = 0x4D20657A69736552;
            v24 = 0xEF73656761737365;
          }

          if (v4 != 6)
          {
            v22 = v23;
            v21 = v24;
          }

          if ((a1 & 0x3Fu) <= 8)
          {
            v12 = v22;
          }

          else
          {
            v12 = v17;
          }

          if (v4 <= 8)
          {
            v13 = v21;
          }

          else
          {
            v13 = v18;
          }

          if ((a2 & 0x3Fu) > 5)
          {
LABEL_21:
            if ((a2 & 0x3Fu) > 8)
            {
              if (v3 == 9)
              {
                v14 = 1702260557;
LABEL_80:
                v2 = v14 | 0x73654D2000000000;
                v25 = 0xED00007365676173;
                goto LABEL_67;
              }

              if (v3 == 10)
              {
                v2 = 0xD000000000000014;
                v25 = 0x80000000000424F0;
              }

              else
              {
                v25 = 0xE600000000000000;
                v2 = 0x6E7275746572;
              }
            }

            else
            {
              if (v3 != 6)
              {
                if (v3 != 7)
                {
                  v2 = 0x4D20657A69736552;
                  v25 = 0xEF73656761737365;
                  goto LABEL_67;
                }

                v14 = 1852141647;
                goto LABEL_80;
              }

              v25 = 0x80000000000424B0;
              v2 = 0xD000000000000015;
            }

            goto LABEL_67;
          }
        }

        else
        {
          v5 = 0xE500000000000000;
          v6 = 0x666153206E65704FLL;
          v7 = 0xEB00000000697261;
          v8 = 0x5320657A69736552;
          v9 = 0xED00006972616661;
          if (v4 != 4)
          {
            v8 = 0x6661532065766F4DLL;
            v9 = 0xEB00000000697261;
          }

          if (v4 != 3)
          {
            v6 = v8;
            v7 = v9;
          }

          v10 = 0x6F48206570697753;
          v11 = 0xEA0000000000656DLL;
          if (v4 != 1)
          {
            v10 = 0xD000000000000019;
            v11 = 0x8000000000042410;
          }

          if ((a1 & 0x3F) != 0)
          {
            v5 = v11;
          }

          else
          {
            v10 = 0x7472617473;
          }

          if ((a1 & 0x3Fu) <= 2)
          {
            v12 = v10;
          }

          else
          {
            v12 = v6;
          }

          if (v4 <= 2)
          {
            v13 = v5;
          }

          else
          {
            v13 = v7;
          }

          if ((a2 & 0x3Fu) > 5)
          {
            goto LABEL_21;
          }
        }

        if ((a2 & 0x3Fu) > 2)
        {
          if (v3 == 3)
          {
            v29 = 1852141647;
          }

          else
          {
            if (v3 == 4)
            {
              v2 = 0x5320657A69736552;
              v25 = 0xED00006972616661;
              goto LABEL_67;
            }

            v29 = 1702260557;
          }

          v2 = v29 | 0x6661532000000000;
          v25 = 0xEB00000000697261;
          goto LABEL_67;
        }

        if ((a2 & 0x3F) != 0)
        {
          if (v3 == 1)
          {
            v2 = 0x6F48206570697753;
            v25 = 0xEA0000000000656DLL;
          }

          else
          {
            v25 = 0x8000000000042410;
            v2 = 0xD000000000000019;
          }
        }

        else
        {
          v25 = 0xE500000000000000;
        }

LABEL_67:
        if (v12 == v2 && v13 == v25)
        {

          return 1;
        }

        else
        {
          v28 = sub_3D804();

          return v28 & 1;
        }
      }
    }

    else if ((a2 & 0xC0) == 0x80)
    {
      v16 = a1 & 0x3F;
      if ((a1 & 0x3F) != 0)
      {
        if (v16 == 1)
        {
          v12 = 0x73654D2070617753;
        }

        else
        {
          v12 = 0x6E7275746572;
        }

        if (v16 == 1)
        {
          v13 = 0xED00007365676173;
        }

        else
        {
          v13 = 0xE600000000000000;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        v12 = 0x7472617473;
      }

      v26 = 0x73654D2070617753;
      v27 = 0xED00007365676173;
      if ((a2 & 0x3F) != 1)
      {
        v26 = 0x6E7275746572;
        v27 = 0xE600000000000000;
      }

      if ((a2 & 0x3F) != 0)
      {
        v2 = v26;
      }

      else
      {
        v2 = 0x7472617473;
      }

      if ((a2 & 0x3F) != 0)
      {
        v25 = v27;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      goto LABEL_67;
    }

    return 0;
  }

  if (a2 > 0x3Fu)
  {
    return 0;
  }

  return sub_300F4(a1, a2);
}

uint64_t getEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingWindowedAppsAnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingWindowedAppsAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingFullScreenAppsAnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingFullScreenAppsAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B028()
{
  result = qword_566E8;
  if (!qword_566E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_566E8);
  }

  return result;
}

unint64_t sub_1B0B0()
{
  result = qword_56700;
  if (!qword_56700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56700);
  }

  return result;
}

uint64_t sub_1B134(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5674(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B18C()
{
  result = qword_56718;
  if (!qword_56718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56718);
  }

  return result;
}

uint64_t sub_1B1E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51DF8;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B22C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51F00;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B278(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_52070;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B2CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1B30C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_19954(a1, v4, v5, v6);
}

uint64_t sub_1B3C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B41C()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_56730 = result;
  return result;
}

void sub_1B458()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3D4C4();
  v2 = [v0 initWithSuiteName:v1];

  qword_56738 = v2;
}

id sub_1B4C8()
{
  result = [objc_allocWithZone(type metadata accessor for MultitaskingAnalytics()) init];
  qword_572D0 = result;
  return result;
}

uint64_t sub_1B4F8(uint64_t a1)
{
  sub_4FF4(&qword_56780, &qword_406B8);
  result = sub_3D754();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_1C18C(*(v25 + 56) + 40 * v15, v26);

      isa = sub_3D6A4().isa;
      result = sub_1C1E8(v26);
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = isa;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Class sub_1B684(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1C140();
    v5.super.isa = sub_3D474().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_1B750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultitaskingAnalytics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1B7AC(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xEC000000676E696BLL;
    v11 = 0x73617469746C756DLL;
    v12 = 0x8000000000043740;
    v13 = 0xD000000000000012;
    if (a1 != 2)
    {
      v13 = 0x69746375646F7270;
      v12 = 0xEC00000079746976;
    }

    if (a1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x8000000000043760;
    }

    if (a1 <= 1u)
    {
      v8._countAndFlagsBits = v11;
    }

    else
    {
      v8._countAndFlagsBits = v13;
    }

    if (v1 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v2 = 0x8000000000043700;
    v3 = 0xD000000000000017;
    v4 = 0x80000000000436E0;
    v5 = 0xD000000000000018;
    if (a1 != 7)
    {
      v5 = 0xD000000000000010;
      v4 = 0x8000000000043660;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v2 = v4;
    }

    v6 = 0xEB000000006F646ELL;
    v7 = 0x556F54656B616873;
    if (a1 != 4)
    {
      v7 = 0xD000000000000015;
      v6 = 0x8000000000043720;
    }

    if (a1 <= 5u)
    {
      v8._countAndFlagsBits = v7;
    }

    else
    {
      v8._countAndFlagsBits = v3;
    }

    if (v1 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v2;
    }
  }

  v8._object = v9;
  sub_3D534(v8);

  if (qword_55990 != -1)
  {
    swift_once();
  }

  v14 = qword_56730;
  v15 = sub_3D4C4();
  v16 = [v14 BOOLForKey:{v15, 0xD00000000000001FLL, 0x80000000000437F0}];

  v17 = sub_3D4C4();

  [v14 setBool:1 forKey:v17];

  return v16 ^ 1;
}

uint64_t sub_1B9E0()
{
  if (qword_55998 != -1)
  {
    swift_once();
  }

  v0 = qword_56738;
  if (!qword_56738)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_14:
    sub_526C(&v8);
    return 0;
  }

  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_14;
  }

  sub_4FF4(&qword_56790, &unk_406D0);
  if (swift_dynamicCast())
  {
    if (*(v6 + 16) && (v3 = sub_20C68(0x646C696863, 0xE500000000000000), (v4 & 1) != 0))
    {
      sub_1C2AC(*(v6 + 56) + 32 * v3, &v8);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_1BB7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_4FF4(&qword_56788, &unk_406C0);
    v3 = sub_3D764();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C23C(v4, &v16);
      v5 = v16;
      v6 = v17;
      result = sub_20C68(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1BCA0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B7AC(a1);
  sub_4FF4(&qword_56768, &qword_406A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_40670;
  strcpy((inited + 32), "child_account");
  *(inited + 46) = -4864;
  sub_1B9E0();
  sub_3D6D4();
  strcpy((inited + 88), "first_update");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  LOBYTE(v12[0]) = v6 & 1;
  sub_3D6D4();
  *(inited + 144) = 0x6C69705F6D6F7266;
  *(inited + 152) = 0xE90000000000006CLL;
  if (a4 && (a3 != 0xD000000000000032 || 0x8000000000043780 != a4))
  {
    sub_3D804();
  }

  sub_3D6D4();
  *(inited + 200) = 0x65727574736567;
  *(inited + 208) = 0xE700000000000000;
  sub_3D6D4();
  *(inited + 256) = 0x5F65727574736567;
  *(inited + 264) = 0xEA00000000006E6FLL;
  sub_3D6D4();
  v8 = sub_1BB7C(inited);
  swift_setDeallocating();
  sub_4FF4(&qword_56770, &qword_406B0);
  swift_arrayDestroy();
  v9 = sub_3D4C4();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v12[4] = sub_1C120;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1B684;
  v12[3] = &unk_52F58;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_1C0E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C140()
{
  result = qword_56778;
  if (!qword_56778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_56778);
  }

  return result;
}

uint64_t sub_1C23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56770, &qword_406B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = [objc_allocWithZone(SBSSettingsWindowingTelemetryPersonalizationMetrics) initWithPreviousMultitaskingMode:a1 + 1 currentMultitaskingMode:a2 + 1];
  if (v2)
  {
    v3 = v2;
    [v2 emit];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C380()
{
  if (qword_55998 != -1)
  {
    swift_once();
  }

  v0 = qword_56738;
  if (qword_56738)
  {
    v1 = sub_3D4C4();
    [v0 BOOLForKey:v1];

    v2 = sub_3D4C4();
    [v0 BOOLForKey:v2];
  }

  if (qword_55990 != -1)
  {
    swift_once();
  }

  v3 = qword_56730;
  v4 = sub_3D4C4();
  [v3 BOOLForKey:v4];

  v5 = sub_3D4C4();
  [v3 setBool:1 forKey:v5];

  sub_4FF4(&qword_56768, &qword_406A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_40680;
  *(inited + 32) = 0x65735F7964647562;
  *(inited + 40) = 0xEB00000000707574;
  sub_3D6D4();
  *(inited + 88) = 0xD00000000000001CLL;
  *(inited + 96) = 0x8000000000043840;
  sub_3D6D4();
  strcpy((inited + 144), "child_account");
  *(inited + 158) = -4864;
  sub_1B9E0();
  sub_3D6D4();
  strcpy((inited + 200), "first_update");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  sub_3D6D4();
  *(inited + 256) = 0xD000000000000013;
  *(inited + 264) = 0x8000000000043860;
  sub_3D6D4();
  *(inited + 312) = 0x656372756F73;
  *(inited + 320) = 0xE600000000000000;
  sub_3D6D4();
  v7 = sub_1BB7C(inited);
  swift_setDeallocating();
  sub_4FF4(&qword_56770, &qword_406B0);
  swift_arrayDestroy();
  v8 = sub_3D4C4();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v11[4] = sub_1C85C;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1B684;
  v11[3] = &unk_52FA8;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t sub_1C864(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1C8F8, v4, v6);
}

uint64_t sub_1C8F8()
{
  v1 = v0[12];
  v0[15] = sub_4FF4(&qword_55B48, &unk_3EB80);
  v2 = sub_3D7C4();
  if (v2 < 1)
  {
    v10 = v0[15];
    v11 = v0[12];
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_55B28, &unk_3EB60);
    sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60);
    v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1CC24;
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0 + 21;
  }

  else
  {
    v0[16] = v2;
    v3 = v0[15];
    v4 = v0[12];
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_55B28, &unk_3EB60);
    sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60);
    v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1CAFC;
    v7 = v0[10];
    v8 = v0[11];
    v9 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v7, v8);
}

uint64_t sub_1CAFC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1CD4C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1CC24()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1FF2C;
  }

  else
  {
    (*(v2 + 152))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1FF38;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1CD4C()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 2)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    sub_3D7D4();
    v4 = *(v0 + 8);

    return v4(2);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = v6 <= 1;
    v8 = v6 - 1;
    if (v7)
    {
      v1 = v0 + 168;
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_55B28, &unk_3EB60);
      sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60);
      v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v13 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v8;
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_55B28, &unk_3EB60);
      sub_56BC(&qword_56858, &qword_55B28, &unk_3EB60);
      v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v13 = sub_1CAFC;
    }

    v12[1] = v13;
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v17, v18);
  }
}

uint64_t sub_1CF94(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1D028, v4, v6);
}

uint64_t sub_1D028()
{
  v1 = v0[12];
  v0[15] = sub_4FF4(&qword_55B10, &unk_3E4B0);
  v2 = sub_3D7C4();
  if (v2 < 1)
  {
    v10 = v0[15];
    v11 = v0[12];
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_55AF0, &qword_3E490);
    sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490);
    v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1CC24;
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0 + 21;
  }

  else
  {
    v0[16] = v2;
    v3 = v0[15];
    v4 = v0[12];
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_55AF0, &qword_3E490);
    sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490);
    v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1D22C;
    v7 = v0[10];
    v8 = v0[11];
    v9 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v7, v8);
}

uint64_t sub_1D22C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1D354;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1D354()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 3)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    sub_3D7D4();
    v4 = *(v0 + 8);

    return v4(3);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = v6 <= 1;
    v8 = v6 - 1;
    if (v7)
    {
      v1 = v0 + 168;
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_55AF0, &qword_3E490);
      sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490);
      v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v13 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v8;
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_55AF0, &qword_3E490);
      sub_56BC(&qword_56860, &qword_55AF0, &qword_3E490);
      v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v13 = sub_1D22C;
    }

    v12[1] = v13;
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v17, v18);
  }
}

uint64_t sub_1D59C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1D630, v4, v6);
}

uint64_t sub_1D630()
{
  v1 = v0[12];
  v0[15] = sub_4FF4(&qword_55D78, &qword_3EBA8);
  v2 = sub_3D7C4();
  if (v2 < 1)
  {
    v10 = v0[15];
    v11 = v0[12];
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_55D58, &qword_407E0);
    sub_56BC(&qword_56898, &qword_55D58, &qword_407E0);
    v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1D95C;
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0 + 21;
  }

  else
  {
    v0[16] = v2;
    v3 = v0[15];
    v4 = v0[12];
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_55D58, &qword_407E0);
    sub_56BC(&qword_56898, &qword_55D58, &qword_407E0);
    v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1D834;
    v7 = v0[10];
    v8 = v0[11];
    v9 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v7, v8);
}

uint64_t sub_1D834()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1DCCC;
  }

  else
  {
    (*(v2 + 136))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1DA84;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1D95C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1DD5C;
  }

  else
  {
    (*(v2 + 152))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1DD40;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1DA84()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 3)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    sub_3D7D4();
    v4 = *(v0 + 8);

    return v4(3);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = v6 <= 1;
    v8 = v6 - 1;
    if (v7)
    {
      v1 = v0 + 168;
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_55D58, &qword_407E0);
      sub_56BC(&qword_56898, &qword_55D58, &qword_407E0);
      v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v13 = sub_1D95C;
    }

    else
    {
      *(v0 + 128) = v8;
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_55D58, &qword_407E0);
      sub_56BC(&qword_56898, &qword_55D58, &qword_407E0);
      v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v13 = sub_1D834;
    }

    v12[1] = v13;
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v17, v18);
  }
}

uint64_t sub_1DCCC()
{
  (*(v0 + 136))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD5C()
{
  (*(v0 + 152))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DDD0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1DE64, v4, v6);
}

uint64_t sub_1DE64()
{
  v1 = v0[12];
  v0[15] = sub_4FF4(&qword_56880, &qword_407C0);
  v2 = sub_3D7C4();
  if (v2 < 1)
  {
    v10 = v0[15];
    v11 = v0[12];
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_56888, &qword_407C8);
    sub_56BC(&qword_56890, &qword_56888, &qword_407C8);
    v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1CC24;
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0 + 21;
  }

  else
  {
    v0[16] = v2;
    v3 = v0[15];
    v4 = v0[12];
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_56888, &qword_407C8);
    sub_56BC(&qword_56890, &qword_56888, &qword_407C8);
    v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1E068;
    v7 = v0[10];
    v8 = v0[11];
    v9 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v7, v8);
}

uint64_t sub_1E068()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1E190;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1E190()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 4)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    sub_3D7D4();
    v4 = *(v0 + 8);

    return v4(4);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = v6 <= 1;
    v8 = v6 - 1;
    if (v7)
    {
      v1 = v0 + 168;
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_56888, &qword_407C8);
      sub_56BC(&qword_56890, &qword_56888, &qword_407C8);
      v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v13 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v8;
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_56888, &qword_407C8);
      sub_56BC(&qword_56890, &qword_56888, &qword_407C8);
      v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v13 = sub_1E068;
    }

    v12[1] = v13;
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v17, v18);
  }
}

uint64_t sub_1E3D8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_3D564();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_1E46C, v4, v6);
}

uint64_t sub_1E46C()
{
  v1 = v0[12];
  v0[15] = sub_4FF4(&qword_56868, &qword_41D70);
  v2 = sub_3D7C4();
  if (v2 < 1)
  {
    v10 = v0[15];
    v11 = v0[12];
    sub_3D7D4();
    v0[19] = sub_3D7B4();
    sub_4FF4(&qword_56870, &qword_407B0);
    sub_56BC(&qword_56878, &qword_56870, &qword_407B0);
    v12 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1CC24;
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0 + 21;
  }

  else
  {
    v0[16] = v2;
    v3 = v0[15];
    v4 = v0[12];
    v0[17] = sub_3D7B4();
    sub_4FF4(&qword_56870, &qword_407B0);
    sub_56BC(&qword_56878, &qword_56870, &qword_407B0);
    v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1E670;
    v7 = v0[10];
    v8 = v0[11];
    v9 = (v0 + 169);
  }

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, v7, v8);
}

uint64_t sub_1E670()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1FF34;
  }

  else
  {
    (*(v2 + 136))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1E798;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1E798()
{
  v1 = v0 + 169;
  if (*(v0 + 169) == 2)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    sub_3D7D4();
    v4 = *(v0 + 8);

    return v4(2);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = v6 <= 1;
    v8 = v6 - 1;
    if (v7)
    {
      v1 = v0 + 168;
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      sub_3D7D4();
      *(v0 + 152) = sub_3D7B4();
      sub_4FF4(&qword_56870, &qword_407B0);
      sub_56BC(&qword_56878, &qword_56870, &qword_407B0);
      v16 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v13 = sub_1CC24;
    }

    else
    {
      *(v0 + 128) = v8;
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      *(v0 + 136) = sub_3D7B4();
      sub_4FF4(&qword_56870, &qword_407B0);
      sub_56BC(&qword_56878, &qword_56870, &qword_407B0);
      v11 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v13 = sub_1E670;
    }

    v12[1] = v13;
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v1, v17, v18);
  }
}

uint64_t sub_1E9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_1FD0C(a3, v28 - v12);
  v14 = sub_3D5B4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_11A14(v13, &qword_55AC8, &qword_3E440);
  }

  else
  {
    sub_3D5A4();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_3D564();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_3D514() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_11A14(a3, &qword_55AC8, &qword_3E440);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_11A14(a3, &qword_55AC8, &qword_3E440);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1ECD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_1ED44()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v19[-v5];
  v7 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel__swipeToRevealMenuBarGesturesEnabled;
  v19[15] = sub_1FAF8() & 1;
  sub_3C874();
  (*(v8 + 32))(v1 + v13, v12, v7);
  v14 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer);
  v15 = sub_3D5B4();
  *v14 = 0;
  v14[1] = 0;
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_3D594();

  v16 = sub_3D584();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v1;
  sub_1E9E0(0, 0, v6, &unk_40760, v17);

  return v1;
}

uint64_t sub_1EF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_1F194, v18, v17);
}

uint64_t sub_1F194()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_1F3F8;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_1F3F8(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_1F510, v7, v8);
  }

  return result;
}

uint64_t sub_1F510()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v9 = qword_572E8;
    v10 = sub_3D4C4();
    [v9 setBool:v1 & 1 forKey:v10];

    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v11 = (*(v0 + 40) + *(v0 + 176));
    v13 = *v11;
    v12 = v11[1];

    sub_1BCA0(1u, v1 & 1, v13, v12);

    v14 = *(v0 + 144);
    v15 = sub_3D584();
    *(v0 + 184) = v15;
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = sub_1F3F8;
    v17 = *(v0 + 136);

    return sub_1C864(v15, &protocol witness table for MainActor);
  }
}

uint64_t sub_1F760()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel__swipeToRevealMenuBarGesturesEnabled;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for SwipeToRevealMenuBarSectionViewModel()
{
  result = qword_567C8;
  if (!qword_567C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F870()
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1F908(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1FA00;

  return v7(a1);
}

uint64_t sub_1FA00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1FAF8()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_11A14(v7, &qword_55AE0, &qword_3E940);
  }

  return 1;
}

uint64_t sub_1FC18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FC58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_1EF4C(a1, v4, v5, v6);
}

uint64_t sub_1FD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_55AC8, &qword_3E440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FD7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1FDB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_587C;

  return sub_1F908(a1, v5);
}

uint64_t sub_1FE6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5440;

  return sub_1F908(a1, v5);
}

uint64_t sub_1FF4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6465776F646E6977;
  v4 = 0xEC00000073707041;
  if (v2 != 1)
  {
    v3 = 0x6E614D6567617473;
    v4 = 0xEC00000072656761;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00737070416E65;
  }

  v7 = 0x6465776F646E6977;
  v8 = 0xEC00000073707041;
  if (*a2 != 1)
  {
    v7 = 0x6E614D6567617473;
    v8 = 0xEC00000072656761;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657263536C6C7566;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00737070416E65;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3D804();
  }

  return v11 & 1;
}

Swift::Int sub_20078()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_20138()
{
  *v0;
  *v0;
  sub_3D524();
}

Swift::Int sub_201E4()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_202A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_203A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_202D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00737070416E65;
  v4 = 0xEC00000073707041;
  v5 = 0x6465776F646E6977;
  if (v2 != 1)
  {
    v5 = 0x6E614D6567617473;
    v4 = 0xEC00000072656761;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657263536C6C7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_20350()
{
  result = qword_568A0;
  if (!qword_568A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_568A0);
  }

  return result;
}

uint64_t sub_203A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_52100;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall MultitaskingAndGesturesSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for MultitaskingAndGesturesSettingsList();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = MultitaskingAndGesturesSettings;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v7 = *&v1[OBJC_IVAR___MultitaskingAndGesturesSettings_viewModel];

  sub_10DB0(v8, v6);
  v9 = objc_allocWithZone(sub_4FF4(&qword_568B0, &qword_408F8));
  v10 = sub_3CCF4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v11 = qword_572B8;
  v12 = sub_3D4C4();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  if (!v13)
  {
    sub_3D4F4();
    v13 = sub_3D4C4();
  }

  [v1 setTitle:v13];

  v14 = [v10 view];
  if (!v14)
  {
    v15 = v10;
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v16 addSubview:v15];

    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;

      [v15 setFrame:{0.0, 0.0, v21, v23}];
      [v15 setAutoresizingMask:18];
      [v1 addChildViewController:v10];
      [v10 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t MultitaskingAndGesturesSettings.handleURL(_:withCompletion:)(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  sub_3D6D4();
  if (!*(v4 + 16) || (v5 = sub_20CE0(v14), (v6 & 1) == 0))
  {
    result = sub_1C1E8(v14);
    goto LABEL_15;
  }

  sub_1C2AC(*(v4 + 56) + 32 * v5, v15);
  sub_1C1E8(v14);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (result = sub_D13C(1752457584, 0xE400000000000000), result == 10))
  {
LABEL_15:
    if (!a2)
    {
      return result;
    }

    return a2(result);
  }

  v7 = *(v2 + OBJC_IVAR___MultitaskingAndGesturesSettings_viewModel);
  sub_C71C(result);
  v15[0] = 0x7265727265666572;
  v15[1] = 0xE800000000000000;
  sub_3D6D4();
  if (*(v4 + 16) && (v8 = sub_20CE0(v14), (v9 & 1) != 0))
  {
    sub_1C2AC(*(v4 + 56) + 32 * v8, v15);
    sub_1C1E8(v14);
    v10 = swift_dynamicCast();
    v11 = v10 == 0;
    if (v10)
    {
      v12 = 1752457584;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0xE400000000000000;
    }
  }

  else
  {
    sub_1C1E8(v14);
    v12 = 0;
    v13 = 0;
  }

  result = sub_C50C(v12, v13);
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void __swiftcall MultitaskingAndGesturesSettings.init(nibName:bundle:)(MultitaskingAndGesturesSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_3D4C4();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id MultitaskingAndGesturesSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___MultitaskingAndGesturesSettings_viewModel;
  v7 = type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 10;
  sub_3C814();
  *&v3[v6] = v10;
  if (a2)
  {
    v11 = sub_3D4C4();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = MultitaskingAndGesturesSettings;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id MultitaskingAndGesturesSettings.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___MultitaskingAndGesturesSettings_viewModel;
  v4 = type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 10;
  sub_3C814();
  *&v1[v3] = v7;
  v10.receiver = v1;
  v10.super_class = MultitaskingAndGesturesSettings;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

unint64_t sub_20C68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_3D844();
  sub_3D524();
  v6 = sub_3D864();

  return sub_20D24(a1, a2, v6);
}

unint64_t sub_20CE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3D6B4(*(v2 + 40));

  return sub_20DDC(a1, v4);
}

unint64_t sub_20D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_3D804())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20DDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1C18C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_3D6C4();
      sub_1C1E8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t type metadata accessor for MultitaskingAndGesturesSettings()
{
  result = qword_568E0;
  if (!qword_568E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_568E0);
  }

  return result;
}

uint64_t sub_20EF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20F00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20F48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CC54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4FF4(&qword_569D0, &qword_409C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  sub_E1E8(v1 + *(v14 + 24), v13, &qword_569D0, &qword_409C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_3C964();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_3D604();
    v18 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_2119C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_4FF4(&qword_568E8, &qword_40900);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_4FF4(&qword_568F0, &qword_40908);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_212D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_4FF4(&qword_568E8, &qword_40900);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_4FF4(&qword_568F0, &qword_40908);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for MultitaskingWindowManagementChoicePackage()
{
  result = qword_56950;
  if (!qword_56950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21440()
{
  sub_21630(319, &qword_56960, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_21630(319, &qword_56968, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_2159C();
      if (v2 <= 0x3F)
      {
        sub_21630(319, &unk_56980, type metadata accessor for CGSize, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2159C()
{
  if (!qword_56970)
  {
    type metadata accessor for MultitaskingWindowManagementPackageViewModel();
    sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel);
    v0 = sub_3C9B4();
    if (!v1)
    {
      atomic_store(v0, &qword_56970);
    }
  }
}

void sub_21630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216B0@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = sub_3C944();
  v71 = *(v69 - 8);
  v2 = *(v71 + 64);
  __chkstk_darwin(v69, v3);
  v66 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v6 = *(v5 - 8);
  v73 = *(v6 + 64);
  v7 = v5 - 8;
  __chkstk_darwin(v5 - 8, v8);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_4FF4(&qword_569C0, &qword_40990);
  v11 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64, v12);
  v14 = &v60[-v13];
  v15 = sub_4FF4(&qword_569C8, &qword_40998);
  v16 = *(v15 - 8);
  v67 = v15;
  v68 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v65 = &v60[-v19];
  v20 = *(v7 + 40);
  v21 = v7;
  v63 = v7;
  v22 = (v1 + v20);
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  type metadata accessor for MultitaskingWindowManagementPackageViewModel();
  sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel);
  v26 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v27 = v75;
  v62 = v76;
  v61 = v77;
  v72 = type metadata accessor for MultitaskingWindowManagementChoicePackage;
  sub_2376C(v1, v10, type metadata accessor for MultitaskingWindowManagementChoicePackage);
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_22FC4(v10, v29 + v28);
  v30 = v1 + *(v21 + 44);
  v31 = v1;
  v32 = *(v30 + 8);
  v75 = *v30;
  v76 = v32;
  v77 = *(v30 + 16);
  sub_4FF4(&qword_569E0, &qword_409D8);
  sub_3D264();
  v33 = v74 / 856.0 * 47.0;
  v34 = &v14[*(sub_4FF4(&qword_569E8, &unk_409E0) + 36)];
  v35 = *(sub_3CAF4() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = sub_3CCC4();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = v33;
  v34[1] = v33;
  *(v34 + *(sub_4FF4(&qword_56538, &qword_3FF90) + 36)) = 256;
  v38 = v62;
  *v14 = v27;
  *(v14 + 1) = v38;
  v14[16] = v61;
  *(v14 + 3) = sub_23028;
  *(v14 + 4) = v29;
  v39 = v72;
  sub_2376C(v31, v10, v72);
  v40 = swift_allocObject();
  sub_22FC4(v10, v40 + v28);
  v41 = sub_3D324();
  v43 = v42;
  v44 = &v14[*(sub_4FF4(&qword_569F0, &qword_409F0) + 36)];
  *v44 = sub_230B0;
  v44[1] = v40;
  v44[2] = v41;
  v44[3] = v43;
  v45 = v31;
  sub_2376C(v31, v10, v39);
  v46 = swift_allocObject();
  sub_22FC4(v10, v46 + v28);
  v47 = &v14[*(sub_4FF4(&qword_569F8, &qword_409F8) + 36)];
  *v47 = sub_23130;
  v47[1] = v46;
  v47[2] = 0;
  v47[3] = 0;
  sub_2376C(v31, v10, v39);
  v48 = swift_allocObject();
  sub_22FC4(v10, v48 + v28);
  v49 = v64;
  v50 = &v14[*(v64 + 36)];
  *v50 = 0;
  v50[1] = 0;
  v50[2] = sub_2318C;
  v50[3] = v48;
  LOBYTE(v75) = *(v45 + 1);
  sub_2376C(v45, v10, v39);
  v51 = swift_allocObject();
  sub_22FC4(v10, v51 + v28);
  v52 = sub_231EC();
  v53 = v65;
  sub_3D084();

  sub_23500(v14);
  v54 = v45 + *(v63 + 36);
  v55 = v66;
  sub_23568(v66);
  sub_2376C(v45, v10, v72);
  v56 = swift_allocObject();
  sub_22FC4(v10, v56 + v28);
  v75 = v49;
  v76 = &type metadata for Bool;
  *&v77 = v52;
  *(&v77 + 1) = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_23DB0(&qword_56A40, &type metadata accessor for ScenePhase);
  v57 = v69;
  v58 = v67;
  sub_3D084();

  (*(v71 + 8))(v55, v57);
  return (*(v68 + 8))(v53, v58);
}

uint64_t sub_21E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_21E94(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

void sub_21F04(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_55980 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v3 = *a3;
  v4 = qword_572B8;
  sub_23E60(v3);
  v5 = sub_3D4C4();

  v6 = sub_3D4C4();
  v8 = [v4 URLForResource:v5 withExtension:v6];

  if (v8)
  {
    sub_3C7A4();
  }

  else
  {
    sub_3D734();
    __break(1u);
  }
}

uint64_t sub_22058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a1;
  v122 = a3;
  v116 = sub_3CA34();
  v115 = *(v116 - 8);
  v4 = *(v115 + 64);
  __chkstk_darwin(v116, v5);
  v112 = v6;
  v113 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v8 = v7 - 8;
  v111 = *(v7 - 8);
  v9 = *(v111 + 64);
  __chkstk_darwin(v7, v10);
  v110 = v11;
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_4FF4(&qword_56A48, &qword_40A10);
  v120 = *(v12 - 8);
  v121 = v12;
  v13 = *(v120 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v119 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v118 = &v100 - v18;
  v108 = sub_3D364();
  v107 = *(v108 - 1);
  v19 = *(v107 + 64);
  __chkstk_darwin(v108, v20);
  v106 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_3C964();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v31 = &v100 - v30;
  v32 = sub_3CAF4();
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32, v35);
  v37 = (&v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_4FF4(&qword_56A50, &qword_40A18);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8, v40);
  v42 = &v100 - v41;
  v103 = sub_4FF4(&qword_56A58, &qword_40A20);
  v43 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103, v44);
  v105 = &v100 - v45;
  v104 = sub_4FF4(&qword_56A60, &unk_40A28);
  v46 = *(*(v104 - 8) + 64);
  v48 = __chkstk_darwin(v104, v47);
  v109 = &v100 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v48, v50);
  v102 = &v100 - v52;
  __chkstk_darwin(v51, v53);
  v123 = &v100 - v54;
  v55 = a2 + *(v8 + 44);
  v56 = *(v55 + 8);
  *&v132 = *v55;
  *(&v132 + 1) = v56;
  v133 = *(v55 + 16);
  sub_4FF4(&qword_569E0, &qword_409D8);
  sub_3D264();
  v57 = v127 / 856.0 * 47.0;
  v58 = *(v33 + 28);
  v59 = enum case for RoundedCornerStyle.continuous(_:);
  v60 = sub_3CCC4();
  (*(*(v60 - 8) + 104))(v37 + v58, v59, v60);
  *v37 = v57;
  v37[1] = v57;
  v124 = a2;
  sub_20F48(v31);
  v61 = v23[13];
  v101 = enum case for ColorScheme.light(_:);
  v100 = v61;
  v61(v28);
  LOBYTE(v59) = sub_3C954();
  v62 = v23[1];
  v62(v28, v22);
  v62(v31, v22);
  if (v59)
  {
    v63 = sub_3D0C4();
  }

  else
  {
    v63 = sub_3D0E4();
  }

  v64 = v63;
  sub_3C9C4();
  sub_2376C(v37, v42, &type metadata accessor for RoundedRectangle);
  v65 = &v42[*(sub_4FF4(&qword_56548, &qword_3FFA0) + 36)];
  v66 = v133;
  *v65 = v132;
  *(v65 + 1) = v66;
  *(v65 + 4) = v134;
  v67 = sub_4FF4(&qword_56550, &qword_3FFA8);
  *&v42[*(v67 + 52)] = v64;
  *&v42[*(v67 + 56)] = 256;
  v68 = sub_3D324();
  v70 = v69;
  sub_174B8(v37);
  v71 = &v42[*(sub_4FF4(&qword_56558, &qword_3FFB0) + 36)];
  *v71 = v68;
  v71[1] = v70;
  v72 = v124;
  sub_20F48(v31);
  v100(v28, v101, v22);
  LOBYTE(v68) = sub_3C954();
  v62(v28, v22);
  v62(v31, v22);
  v73 = v107;
  v74 = &enum case for BlendMode.plusDarker(_:);
  if ((v68 & 1) == 0)
  {
    v74 = &enum case for BlendMode.plusLighter(_:);
  }

  v75 = v106;
  v76 = v108;
  (*(v107 + 104))(v106, *v74, v108);
  v77 = v105;
  (*(v73 + 32))(&v105[*(v103 + 36)], v75, v76);
  sub_17214(v42, v77, &qword_56A50, &qword_40A18);
  v78 = v102;
  sub_17214(v77, v102, &qword_56A58, &qword_40A20);
  *(v78 + *(v104 + 36)) = 0x3FB999999999999ALL;
  sub_17214(v78, v123, &qword_56A60, &unk_40A28);
  v107 = sub_3D0D4();
  v108 = type metadata accessor for MultitaskingWindowManagementChoicePackage;
  v79 = v114;
  sub_2376C(v72, v114, type metadata accessor for MultitaskingWindowManagementChoicePackage);
  v80 = v115;
  v81 = v113;
  v82 = v116;
  (*(v115 + 16))(v113, v117, v116);
  v83 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v84 = (v83 + v110 + *(v80 + 80)) & ~*(v80 + 80);
  v85 = swift_allocObject();
  sub_22FC4(v79, v85 + v83);
  (*(v80 + 32))(v85 + v84, v81, v82);
  v127 = *&v107;
  v128 = sub_23A24;
  v129 = v85;
  v130 = 0;
  v131 = 0;
  sub_3CA24();
  v125 = v86;
  v126 = v87;
  sub_2376C(v124, v79, v108);
  v88 = swift_allocObject();
  sub_22FC4(v79, v88 + v83);
  sub_4FF4(&qword_56A68, &qword_40A38);
  type metadata accessor for CGSize(0);
  sub_23D2C();
  sub_23DB0(&qword_56A78, type metadata accessor for CGSize);
  v89 = v118;
  sub_3D084();

  v90 = v123;
  v91 = v109;
  sub_E1E8(v123, v109, &qword_56A60, &unk_40A28);
  v93 = v119;
  v92 = v120;
  v94 = *(v120 + 16);
  v95 = v121;
  v94(v119, v89, v121);
  v96 = v122;
  sub_E1E8(v91, v122, &qword_56A60, &unk_40A28);
  v97 = sub_4FF4(&qword_56A80, &qword_40A40);
  v94((v96 + *(v97 + 48)), v93, v95);
  v98 = *(v92 + 8);
  v98(v89, v95);
  sub_23DF8(v90);
  v98(v93, v95);
  return sub_23DF8(v91);
}

uint64_t sub_22B9C(uint64_t a1)
{
  sub_3CA24();
  v2 = (a1 + *(type metadata accessor for MultitaskingWindowManagementChoicePackage() + 36));
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  sub_4FF4(&qword_569E0, &qword_409D8);
  return sub_3D274();
}

uint64_t sub_22C24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a3 + *(type metadata accessor for MultitaskingWindowManagementChoicePackage() + 36));
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 1);
  sub_4FF4(&qword_569E0, &qword_409D8);
  return sub_3D274();
}

void sub_22CA0()
{
  v1 = v0;
  v2 = sub_3C944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v24 - v10;
  if (*(v0 + 1) != 1)
  {
    goto LABEL_4;
  }

  v12 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v13 = v0 + *(v12 + 28);
  sub_23568(v11);
  (*(v3 + 104))(v8, enum case for ScenePhase.active(_:), v2);
  LOBYTE(v13) = sub_3C934();
  v14 = *(v3 + 8);
  v14(v8, v2);
  v14(v11, v2);
  if (v13)
  {
    v15 = (v1 + *(v12 + 32));
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 16);
    type metadata accessor for MultitaskingWindowManagementPackageViewModel();
    sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel);
    v19 = sub_3C994();
    sub_19794();
  }

  else
  {
LABEL_4:
    v20 = (v1 + *(type metadata accessor for MultitaskingWindowManagementChoicePackage() + 32));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 16);
    type metadata accessor for MultitaskingWindowManagementPackageViewModel();
    sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel);
    v19 = sub_3C994();
    sub_1A264();
  }
}

void sub_22EF4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MultitaskingWindowManagementChoicePackage() + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for MultitaskingWindowManagementPackageViewModel();
  sub_23DB0(&qword_56978, type metadata accessor for MultitaskingWindowManagementPackageViewModel);
  v5 = sub_3C994();
  sub_1A264();
}

uint64_t sub_22FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23028(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_21F04(a1, a2, v6);
}

uint64_t sub_230B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22058(a1, v6, a2);
}

void sub_23130()
{
  v1 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_22CA0();
}

void sub_2318C()
{
  v1 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_22EF4(v2);
}

unint64_t sub_231EC()
{
  result = qword_56A00;
  if (!qword_56A00)
  {
    sub_5674(&qword_569C0, &qword_40990);
    sub_23278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A00);
  }

  return result;
}

unint64_t sub_23278()
{
  result = qword_56A08;
  if (!qword_56A08)
  {
    sub_5674(&qword_569F8, &qword_409F8);
    sub_23304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A08);
  }

  return result;
}

unint64_t sub_23304()
{
  result = qword_56A10;
  if (!qword_56A10)
  {
    sub_5674(&qword_569F0, &qword_409F0);
    sub_233BC();
    sub_56BC(&qword_56A30, &qword_56A38, &qword_40A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A10);
  }

  return result;
}

unint64_t sub_233BC()
{
  result = qword_56A18;
  if (!qword_56A18)
  {
    sub_5674(&qword_56A20, &qword_40A00);
    sub_23448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A18);
  }

  return result;
}

unint64_t sub_23448()
{
  result = qword_56A28;
  if (!qword_56A28)
  {
    sub_5674(&qword_569E8, &unk_409E0);
    sub_EBCC();
    sub_56BC(&qword_56598, &qword_56538, &qword_3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A28);
  }

  return result;
}

uint64_t sub_23500(uint64_t a1)
{
  v2 = sub_4FF4(&qword_569C0, &qword_40990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3CC54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4FF4(&qword_569D8, &qword_409D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = (&v19 - v13);
  sub_E1E8(v2, &v19 - v13, &qword_569D8, &qword_409D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_3C944();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_3D604();
    v18 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_2376C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237D4()
{
  v1 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_3CA34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = v1[6];
  sub_4FF4(&qword_569D0, &qword_409C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_3C964();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
    v11 = *(v8 + v9);
  }

  v12 = v1[7];
  sub_4FF4(&qword_569D8, &qword_409D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_3C944();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  else
  {
    v14 = *(v8 + v12);
  }

  v15 = v2 | v7;
  v16 = (v3 + v4 + v7) & ~v7;
  sub_11A04(*(v8 + v1[8]), *(v8 + v1[8] + 8), *(v8 + v1[8] + 16));
  v17 = (v8 + v1[9]);
  v18 = *v17;

  v19 = v17[1];

  (*(v6 + 8))(v0 + v16, v5);

  return _swift_deallocObject(v0, v16 + v21, v15 | 7);
}

uint64_t sub_23A24()
{
  v1 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_3CA34() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_22B9C(v0 + v2);
}

uint64_t sub_23AF0()
{
  v1 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[6];
  sub_4FF4(&qword_569D0, &qword_409C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_3C964();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[7];
  sub_4FF4(&qword_569D8, &qword_409D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_3C944();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  sub_11A04(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));
  v12 = (v5 + v1[9]);
  v13 = *v12;

  v14 = v12[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_23CAC(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for MultitaskingWindowManagementChoicePackage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22C24(a1, a2, v6);
}

unint64_t sub_23D2C()
{
  result = qword_56A70;
  if (!qword_56A70)
  {
    sub_5674(&qword_56A68, &qword_40A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56A70);
  }

  return result;
}

uint64_t sub_23DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DF8(uint64_t a1)
{
  v2 = sub_4FF4(&qword_56A60, &unk_40A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E60(char a1)
{
  v2 = sub_3C964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for ColorScheme.light(_:), v2);
  v8 = sub_3C954();
  (*(v3 + 8))(v7, v2);
  if (a1)
  {
    v9 = 0xD000000000000012;
    if (v8)
    {
      v10 = 0xD000000000000013;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    if (v8)
    {
      v9 = 0xD000000000000013;
    }

    if (a1 == 1)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else if (v8)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_24000()
{
  sub_5674(&qword_569C8, &qword_40998);
  sub_3C944();
  sub_5674(&qword_569C0, &qword_40990);
  sub_231EC();
  swift_getOpaqueTypeConformance2();
  sub_23DB0(&qword_56A40, &type metadata accessor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

id sub_24114()
{
  v0 = objc_allocWithZone(type metadata accessor for MultiTaskingSectionViewModel());

  return [v0 init];
}

uint64_t sub_24184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_3CC54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v2 + 8);
  v9 = *v2;
  v77 = *v2;
  if (v78 == 1)
  {
    v71[0] = v9;
  }

  else
  {

    sub_3D604();
    v10 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v77, &qword_55F08, &qword_3F140);
    (*(v4 + 8))(v8, v3);
  }

  sub_4FF4(&qword_56A88, &qword_40BB0);
  v11 = swift_allocBox();
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  sub_27124(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  v12 = sub_3D304();
  v69 = &v57;
  __chkstk_darwin(v12, v13);
  v68 = &v57 - 4;
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v14 = qword_572B8;
  v73 = sub_3CF84();
  v74 = v15;
  v75 = v16 & 1;
  v76 = v17;
  v18 = v2[2];
  v19 = v2[3];
  v70 = *(v2 + 32);
  sub_26E5C();
  v21 = v20;
  if (v20)
  {
    v66 = v2;
    v22 = qword_572B8;
    v62 = sub_3CF84();
    v61 = v23;
    v59 = v24;
    v60 = v25;
    v26 = sub_271B8();
    v28 = v27;
    v30 = v29;
    v64 = v18;
    sub_3D0B4();
    v31 = sub_3CF24();
    v65 = v11;
    v33 = v32;
    v63 = v19;
    v35 = v34;

    sub_BAF8(v26, v28, v30 & 1);

    v36 = v62;
    v37 = v61;
    v38 = sub_3CF44();
    v21 = v39;
    v58 = v40;
    v42 = v41;
    LOBYTE(v40) = v35 & 1;
    v19 = v63;
    v43 = v31;
    v2 = v66;
    sub_BAF8(v43, v33, v40);

    sub_BAF8(v36, v37, v59 & 1);

    v44 = v58 & 1;
    v18 = v64;
  }

  else
  {
    v38 = 0;
    v44 = 0;
    v42 = 0;
  }

  v71[0] = v38;
  v71[1] = v21;
  v71[2] = v44;
  v71[3] = v42;
  v72 = 256;
  sub_4FF4(&qword_56A90, &qword_40BB8);
  sub_4FF4(&qword_56A98, &qword_40BC0);
  sub_56BC(&qword_56AA0, &qword_56A90, &qword_40BB8);
  sub_2706C();
  v45 = v67;
  sub_3D2C4();
  type metadata accessor for MultiTaskingSectionViewModel();
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  v46 = v70;
  v47 = sub_3C994();
  v48 = sub_3C854();
  v49 = (v45 + *(sub_4FF4(&qword_56AC0, &qword_40BD0) + 36));
  *v49 = v48;
  v49[1] = v47;
  v50 = [objc_opt_self() defaultCenter];
  v51 = sub_4FF4(&qword_56AC8, &unk_40BD8);
  v52 = v45 + *(v51 + 52);
  sub_3D644();

  v53 = swift_allocObject();
  v54 = *(v2 + 1);
  *(v53 + 16) = *v2;
  *(v53 + 32) = v54;
  *(v53 + 48) = *(v2 + 32);
  sub_E1E8(&v77, v71, &qword_55F08, &qword_3F140);
  sub_11AB8(v18, v19, v46);

  v56 = (v45 + *(v51 + 56));
  *v56 = sub_271B0;
  v56[1] = v53;
  return result;
}

id sub_24858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_4FF4(&qword_56AD8, &qword_40C80);
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  __chkstk_darwin(v3, v5);
  v91 = &v86 - v6;
  v95 = sub_4FF4(&qword_56AE0, &qword_40C88);
  v7 = *(*(v95 - 8) + 64);
  v9 = __chkstk_darwin(v95, v8);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v89 = &v86 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v88 = &v86 - v16;
  __chkstk_darwin(v15, v17);
  v96 = &v86 - v18;
  v19 = sub_4FF4(&qword_56AE8, &qword_40C90);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v99 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v98 = &v86 - v25;
  v26 = sub_4FF4(&qword_56A88, &qword_40BB0);
  v27 = *(v26 - 8);
  v28 = v27[8];
  v30 = __chkstk_darwin(v26, v29);
  v32 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v33);
  v35 = &v86 - v34;
  v36 = sub_4FF4(&qword_56AF0, &qword_40C98);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  v40 = __chkstk_darwin(v36, v39);
  v97 = &v86 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v44 = &v86 - v43;
  *v44 = sub_3CCD4();
  *(v44 + 1) = 0;
  v44[16] = 0;
  v45 = sub_4FF4(&qword_56AF8, &qword_40CA0);
  sub_252A4(a1, &v44[*(v45 + 44)]);
  v46 = swift_projectBox();
  v47 = v27[2];
  v93 = v46;
  v94 = v27 + 2;
  v92 = v47;
  (v47)(v32);
  sub_3D2F4();
  v48 = v27[1];
  v48(v32, v26);
  swift_getKeyPath();
  sub_3D314();

  v87 = v48;
  v48(v35, v26);
  v49 = v107;
  v50 = v108;
  v51 = &v44[*(v37 + 44)];
  *v51 = v106;
  *(v51 + 1) = v49;
  *(v51 + 8) = v50;
  v52 = *(a1 + 24);
  v53 = *(a1 + 32);
  v54 = *(a1 + 16);
  v55 = type metadata accessor for MultiTaskingSectionViewModel();
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  v105 = v52;
  v104 = v53;
  v103 = v55;
  v56 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v58 = result;
    deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

    if (deviceSupportsEnhancedMultitasking)
    {

      goto LABEL_6;
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v60 = result;

      deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
      if (!deviceSupportsSingleDisplayEnhancedMultitasking)
      {
LABEL_8:
        v64 = 1;
        v65 = v98;
LABEL_11:
        (*(v100 + 56))(v65, v64, 1, v101);
        v82 = v97;
        sub_E1E8(v44, v97, &qword_56AF0, &qword_40C98);
        v83 = v99;
        sub_E1E8(v65, v99, &qword_56AE8, &qword_40C90);
        v84 = v102;
        sub_E1E8(v82, v102, &qword_56AF0, &qword_40C98);
        v85 = sub_4FF4(&qword_56B00, &qword_40CD0);
        sub_E1E8(v83, v84 + *(v85 + 48), &qword_56AE8, &qword_40C90);
        sub_11A14(v65, &qword_56AE8, &qword_40C90);
        sub_11A14(v44, &qword_56AF0, &qword_40C98);
        sub_11A14(v83, &qword_56AE8, &qword_40C90);
        return sub_11A14(v82, &qword_56AF0, &qword_40C98);
      }

LABEL_6:
      v62 = sub_3C994();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_3C894();

      if (v106 > 2u)
      {
      }

      else
      {
        v63 = sub_3D804();

        if ((v63 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v66 = sub_3C9A4();
      swift_getKeyPath();
      sub_3CA84();

      v86 = v44;
      v67 = v96;
      sub_3D224();
      v92(v32, v93, v26);
      sub_3D2F4();
      v68 = v87;
      v87(v32, v26);
      swift_getKeyPath();
      sub_3D314();

      v68(v35, v26);
      v69 = v107;
      v70 = v108;
      v71 = &v67[*(v95 + 36)];
      v44 = v86;
      *v71 = v106;
      *(v71 + 1) = v69;
      v71[16] = v70;
      v71[17] = 8;
      v72 = sub_3C9A4();
      swift_getKeyPath();
      sub_3CA84();

      v73 = v88;
      sub_3D224();
      v92(v32, v93, v26);
      sub_3D2F4();
      v68(v32, v26);
      swift_getKeyPath();
      sub_3D314();

      v68(v35, v26);
      v74 = v107;
      v75 = v108;
      v76 = v96;
      v77 = v73 + *(v95 + 36);
      *v77 = v106;
      *(v77 + 8) = v74;
      *(v77 + 16) = v75;
      *(v77 + 17) = 9;
      v78 = v89;
      sub_E1E8(v76, v89, &qword_56AE0, &qword_40C88);
      v79 = v90;
      sub_E1E8(v73, v90, &qword_56AE0, &qword_40C88);
      v80 = v91;
      sub_E1E8(v78, v91, &qword_56AE0, &qword_40C88);
      v81 = sub_4FF4(&qword_56B08, &qword_40D28);
      sub_E1E8(v79, v80 + *(v81 + 48), &qword_56AE0, &qword_40C88);
      sub_11A14(v73, &qword_56AE0, &qword_40C88);
      sub_11A14(v76, &qword_56AE0, &qword_40C88);
      sub_11A14(v79, &qword_56AE0, &qword_40C88);
      sub_11A14(v78, &qword_56AE0, &qword_40C88);
      v65 = v98;
      sub_27984(v80, v98);
      v64 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_252A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_3CDE4();
  v125 = *(v3 - 8);
  v126 = v3;
  v4 = *(v125 + 64);
  __chkstk_darwin(v3, v5);
  v123 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4FF4(&qword_56B10, &qword_40D30);
  v121 = *(v7 - 8);
  v122 = v7;
  v8 = *(v121 + 64);
  __chkstk_darwin(v7, v9);
  v120 = v113 - v10;
  v130 = sub_4FF4(&qword_56B18, &qword_40D38);
  v128 = *(v130 - 8);
  v11 = *(v128 + 64);
  __chkstk_darwin(v130, v12);
  v124 = v113 - v13;
  v14 = sub_4FF4(&qword_56B20, &qword_40D40);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v134 = v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = v113 - v20;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v129 = a1;
  v24 = *(a1 + 32);
  v25 = type metadata accessor for MultiTaskingSectionViewModel();
  v26 = sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  v133 = v25;
  v27 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v28 = v136[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();
  v29 = v22;
  v30 = v130;

  v31 = 1;
  v131 = v21;
  if (LOBYTE(v136[0]) == 1)
  {
    v32 = v29;
    v119 = v23;
    v118 = v24;
    v33 = sub_3C994();
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v35 = result;
    deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

    if (deviceSupportsEnhancedMultitasking)
    {

LABEL_7:
      v39 = sub_3CCB4();
      v115 = v40;
      v116 = v39;
      v113[3] = v41;
      v114 = v42;
      v43 = v32;
      v117 = v26;
      v44 = sub_3C9A4();
      swift_getKeyPath();
      sub_3CA84();

      v135[0] = v136[0];
      v135[1] = v136[1];
      LOBYTE(v135[2]) = v136[2];
      sub_4FF4(&qword_56B40, &qword_40E18);
      sub_27A0C();
      sub_27A60(&qword_56B50, &qword_56B40, &qword_40E18);
      v45 = v120;
      sub_3D214();
      v46 = v123;
      sub_3CDD4();
      sub_56BC(&qword_56B58, &qword_56B10, &qword_40D30);
      v47 = v124;
      v48 = v122;
      v49 = v126;
      sub_3D044();
      v50 = v46;
      v29 = v43;
      (*(v125 + 8))(v50, v49);
      (*(v121 + 8))(v45, v48);
      *(v47 + *(sub_4FF4(&qword_56B60, &qword_40E20) + 36)) = 257;
      v51 = sub_3CEF4();
      KeyPath = swift_getKeyPath();
      v53 = (v47 + *(sub_4FF4(&qword_56B68, &unk_40E58) + 36));
      *v53 = KeyPath;
      v53[1] = v51;
      LOBYTE(v51) = sub_3CEB4();
      sub_3C924();
      v54 = v47 + *(v30 + 36);
      *v54 = v51;
      *(v54 + 8) = v55;
      *(v54 + 16) = v56;
      *(v54 + 24) = v57;
      *(v54 + 32) = v58;
      *(v54 + 40) = 0;
      v21 = v131;
      sub_27B18(v47, v131);
      v31 = 0;
      goto LABEL_9;
    }

    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v37 = result;

    deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
    if (deviceSupportsSingleDisplayEnhancedMultitasking)
    {
      goto LABEL_7;
    }

    v31 = 1;
    v21 = v131;
    v29 = v32;
  }

LABEL_9:
  v132 = v29;
  (*(v128 + 56))(v21, v31, 1, v30);
  v130 = sub_3CC84();
  v160 = 1;
  sub_26090(v129, v136);
  memcpy(v163, v136, sizeof(v163));
  memcpy(v164, v136, 0x118uLL);
  sub_E1E8(v163, v135, &qword_56B28, &qword_40DD8);
  sub_11A14(v164, &qword_56B28, &qword_40DD8);
  memcpy(&v156[7], v163, 0x118uLL);
  LODWORD(v129) = v160;
  v59 = sub_3CE84();
  v60 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v61 = result;
  v62 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  LODWORD(v128) = v59;
  if (!v62)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v63 = result;

      v64 = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
      if (!v64)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v65 = objc_opt_self();
  v66 = [v65 mainScreen];
  [v66 bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  v165.origin.x = v68;
  v165.origin.y = v70;
  v165.size.width = v72;
  v165.size.height = v74;
  CGRectGetHeight(v165);
  v75 = [v65 mainScreen];
  [v75 bounds];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v166.origin.x = v77;
  v166.origin.y = v79;
  v166.size.width = v81;
  v166.size.height = v83;
  CGRectGetWidth(v166);
LABEL_15:
  sub_3C924();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  memcpy(v155, v156, sizeof(v155));
  v156[288] = 0;
  LODWORD(v126) = sub_3CE94();
  v92 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v93 = v136[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (LOBYTE(v136[0]) != 1)
  {
LABEL_21:
    sub_3C924();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v160 = 0;
    v106 = v131;
    v107 = v134;
    sub_E1E8(v131, v134, &qword_56B20, &qword_40D40);
    v108 = v127;
    sub_E1E8(v107, v127, &qword_56B20, &qword_40D40);
    v109 = *(sub_4FF4(&qword_56B30, &qword_40DE0) + 48);
    v110 = v130;
    v135[0] = v130;
    v135[1] = 0;
    v111 = v129;
    LOBYTE(v135[2]) = v129;
    memcpy(&v135[2] + 1, v155, 0x11FuLL);
    LOWORD(v135[38]) = 256;
    *(&v135[38] + 2) = v158;
    HIWORD(v135[38]) = v159;
    LOBYTE(v107) = v128;
    LOBYTE(v135[39]) = v128;
    *(&v135[39] + 1) = *v157;
    HIDWORD(v135[39]) = *&v157[3];
    v135[40] = v85;
    v135[41] = v87;
    v135[42] = v89;
    v135[43] = v91;
    LOBYTE(v135[44]) = 0;
    *(&v135[44] + 1) = *v162;
    HIDWORD(v135[44]) = *&v162[3];
    v112 = v126;
    LOBYTE(v135[45]) = v126;
    *(&v135[45] + 1) = *v161;
    HIDWORD(v135[45]) = *&v161[3];
    v135[46] = v99;
    v135[47] = v101;
    v135[48] = v103;
    v135[49] = v105;
    LOBYTE(v135[50]) = 0;
    memcpy((v108 + v109), v135, 0x191uLL);
    sub_E1E8(v135, v136, &qword_56B38, &qword_40DE8);
    sub_11A14(v106, &qword_56B20, &qword_40D40);
    v136[0] = v110;
    v136[1] = 0;
    LOBYTE(v136[2]) = v111;
    memcpy(&v136[2] + 1, v155, 0x11FuLL);
    v137 = 256;
    v138 = v158;
    v139 = v159;
    v140 = v107;
    *v141 = *v157;
    *&v141[3] = *&v157[3];
    v142 = v85;
    v143 = v87;
    v144 = v89;
    v145 = v91;
    v146 = 0;
    *v147 = *v162;
    *&v147[3] = *&v162[3];
    v148 = v112;
    *v149 = *v161;
    *&v149[3] = *&v161[3];
    v150 = v99;
    v151 = v101;
    v152 = v103;
    v153 = v105;
    v154 = 0;
    sub_11A14(v136, &qword_56B38, &qword_40DE8);
    return sub_11A14(v134, &qword_56B20, &qword_40D40);
  }

  v94 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_25;
  }

  v95 = result;
  v96 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (v96)
  {

    goto LABEL_21;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v97 = result;

    MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25F1C()
{
  swift_getKeyPath();
  sub_4FF4(&qword_56B70, &qword_40E80);
  sub_56BC(&qword_56B78, &qword_56B70, &qword_40E80);
  sub_27A0C();
  return sub_3D2A4();
}

uint64_t sub_26008@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a1;
  sub_18400();
  result = sub_3CFA4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

id sub_26090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  type metadata accessor for MultiTaskingSectionViewModel();
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  v6 = sub_3C994();
  v7 = sub_32AC4();

  if (v7)
  {
    v111[0] = 1;
    *&v111[8] = sub_3CCB4();
    *&v111[16] = v8;
    v111[24] = v9 & 1;
    *&v111[32] = v10;
    *&v111[40] = 0x694D6E6565726373;
    *&v111[48] = 0xEF676E69726F7272;
    *&v111[56] = sub_3CB44();
    *&v111[64] = v11;
    sub_27C3C(v111);
    v92 = *&v112[32];
    v93 = *&v112[48];
    v94[0] = *&v112[64];
    *(v94 + 11) = *&v112[75];
    v88 = *&v111[64];
    v89 = *&v111[80];
    v90 = *v112;
    v91 = *&v112[16];
    v85 = *v111;
    v86 = *&v111[16];
    *v87 = *&v111[32];
    *&v87[16] = *&v111[48];
    sub_4FF4(&qword_56B80, &qword_40E88);
    sub_27BE8();
    sub_56BC(&qword_56B90, &qword_56B80, &qword_40E88);
    sub_3CDB4();
LABEL_18:
    v32 = sub_3C994();
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v33 = result;
      deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

      if (deviceSupportsEnhancedMultitasking)
      {

        goto LABEL_23;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v35 = result;

        deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
        if (!deviceSupportsSingleDisplayEnhancedMultitasking)
        {
          v56 = 0;
          v57 = 0;
          v54 = 0;
          v55 = 0;
          v49 = 0;
          v46 = 0;
          v58 = 0;
          v50 = 0;
          v52 = 0;
          v48 = 0;
          goto LABEL_25;
        }

LABEL_23:
        v37 = sub_3CCB4();
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = sub_3CB44();
        LOBYTE(v79) = 1;
        LOBYTE(v85) = 3;
        v45 = v41 & 1;
        DWORD1(v85) = *&v60[3];
        *(&v85 + 1) = *v60;
        *(&v85 + 1) = v37;
        *&v86 = v39;
        BYTE8(v86) = v41 & 1;
        *(&v86 + 9) = *v59;
        HIDWORD(v86) = *&v59[3];
        v46 = 0x6E614D6567617473;
        *v87 = v43;
        strcpy(&v87[8], "stageManager");
        v87[21] = 0;
        *&v87[22] = -5120;
        *&v87[24] = v44;
        *&v88 = v47;
        v111[0] = 3;
        v56 = *(&v86 + 1);
        v57 = v85;
        *&v111[1] = *v60;
        *&v111[4] = *&v60[3];
        v48 = 1;
        v54 = v43;
        v55 = v37;
        *&v111[8] = v37;
        *&v111[16] = v39;
        v49 = v39;
        v111[24] = v45;
        *&v111[28] = *&v59[3];
        *&v111[25] = *v59;
        *&v111[32] = v43;
        strcpy(&v111[40], "stageManager");
        v58 = 0xEC00000072656761;
        v111[53] = 0;
        *&v111[54] = -5120;
        *&v111[56] = v44;
        v50 = v47;
        v52 = v44;
        *&v111[64] = v47;
        sub_16B78(&v85, &v62);
        sub_27B88(v111);
LABEL_25:
        v70 = v121;
        v71 = v122;
        v72[0] = v123[0];
        *(v72 + 11) = *(v123 + 11);
        v66 = v117;
        v67 = v118;
        v68 = v119;
        v69 = v120;
        v62 = v113;
        v63 = v114;
        v64 = v115;
        v65 = v116;
        v92 = v121;
        v93 = v122;
        v94[0] = v123[0];
        *(v94 + 11) = *(v123 + 11);
        v88 = v117;
        v89 = v118;
        v90 = v119;
        v91 = v120;
        v85 = v113;
        v86 = v114;
        *v87 = v115;
        *&v87[16] = v116;
        __src[8] = v121;
        __src[9] = v122;
        __src[10] = v123[0];
        *(&__src[10] + 11) = *(v123 + 11);
        __src[4] = v117;
        __src[5] = v118;
        __src[6] = v119;
        __src[7] = v120;
        __src[0] = v113;
        __src[1] = v114;
        __src[2] = v115;
        __src[3] = v116;
        *&v73 = 0;
        *(&v73 + 1) = v48;
        *&v74 = v57;
        *(&v74 + 1) = v55;
        *&v75 = v49;
        *(&v75 + 1) = v56;
        *&v76 = v54;
        *(&v76 + 1) = v46;
        *&v77 = v58;
        *(&v77 + 1) = v52;
        v78 = v50;
        *&__src[17] = v50;
        __src[14] = v75;
        __src[15] = v76;
        __src[16] = v77;
        __src[12] = v73;
        __src[13] = v74;
        memcpy(a2, __src, 0x118uLL);
        *&v79 = 0;
        *(&v79 + 1) = v48;
        *&v80 = v57;
        *(&v80 + 1) = v55;
        *v81 = v49;
        *&v81[8] = v56;
        *&v81[16] = v54;
        *&v81[24] = v46;
        v82 = v58;
        v83 = v52;
        v84 = v50;
        sub_E1E8(&v85, v111, &qword_56B98, &qword_40E90);
        sub_E1E8(&v73, v111, &qword_56BA0, &qword_40E98);
        sub_11A14(&v79, &qword_56BA0, &qword_40E98);
        *&v112[32] = v70;
        *&v112[48] = v71;
        *&v112[64] = v72[0];
        *&v112[75] = *(v72 + 11);
        *&v111[64] = v66;
        *&v111[80] = v67;
        *v112 = v68;
        *&v112[16] = v69;
        *v111 = v62;
        *&v111[16] = v63;
        *&v111[32] = v64;
        *&v111[48] = v65;
        return sub_11A14(v111, &qword_56B98, &qword_40E90);
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_27;
  }

  v12 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = result;
  v15 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (v15)
  {

LABEL_8:
    v53 = 0;
    v51 = 1;
    goto LABEL_10;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = result;

  v17 = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
  if (v17)
  {
    goto LABEL_8;
  }

  v51 = 0;
  v53 = 1;
LABEL_10:
  LOBYTE(v79) = 0;
  *(&v79 + 1) = sub_3CCB4();
  *&v80 = v18;
  BYTE8(v80) = v19 & 1;
  *v81 = v20;
  strcpy(&v81[8], "oneAppAtATime");
  *&v81[22] = -4864;
  *&v81[24] = sub_3CB44();
  v82 = v21;
  LOBYTE(v62) = 2;
  *(&v62 + 1) = sub_3CCB4();
  *&v63 = v22;
  BYTE8(v63) = v23 & 1;
  *&v64 = v24;
  *(&v64 + 1) = 0xD000000000000012;
  *&v65 = 0x8000000000042560;
  *(&v65 + 1) = sub_3CB44();
  *&v66 = v25;
  v26 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = result;
  v28 = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (v28)
  {

    goto LABEL_15;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v29 = result;

    v30 = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
    if (!v30)
    {
      v31 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v31 = 0;
    LOBYTE(v30) = 1;
LABEL_17:
    v101 = v80;
    v102 = *v81;
    v103 = *&v81[16];
    v100 = v79;
    v109[2] = v64;
    v109[3] = v65;
    v109[0] = v62;
    v109[1] = v63;
    *&v98[38] = *v81;
    v105[2] = *v81;
    v105[3] = *&v81[16];
    *&v98[54] = *&v81[16];
    v104 = v82;
    v110 = v66;
    v99 = v51;
    v106 = v82;
    *&v98[22] = v80;
    v105[0] = v79;
    v105[1] = v80;
    *&v98[70] = v82;
    *&v98[6] = v79;
    v97 = 1;
    v108 = v66;
    v107[2] = v64;
    v107[3] = v65;
    v107[0] = v62;
    v107[1] = v63;
    *(v96 + 7) = v62;
    *(&v96[4] + 7) = v66;
    *(&v96[3] + 7) = v65;
    *(&v96[2] + 7) = v64;
    *(&v96[1] + 7) = v63;
    v95 = v30;
    sub_16B78(&v79, &v113);
    sub_16B78(&v62, &v113);
    sub_16B78(v105, &v113);
    sub_16B78(v107, &v113);
    sub_27B88(v109);
    v75 = v102;
    v76 = v103;
    *&v77 = v104;
    v73 = v100;
    v74 = v101;
    sub_27B88(&v73);
    *v111 = 0;
    v111[8] = v53;
    v111[9] = v51;
    *&v111[26] = *&v98[16];
    *&v111[42] = *&v98[32];
    *&v111[58] = *&v98[48];
    *&v111[72] = *&v98[62];
    *&v111[10] = *v98;
    *&v111[88] = 0;
    v112[0] = 1;
    *&v112[1] = v96[0];
    *&v112[64] = *(&v96[3] + 15);
    *&v112[49] = v96[3];
    *&v112[33] = v96[2];
    *&v112[17] = v96[1];
    *&v112[80] = 0;
    v112[88] = v31;
    v112[89] = v30;
    sub_27BDC(v111);
    v121 = *&v112[32];
    v122 = *&v112[48];
    v123[0] = *&v112[64];
    *(v123 + 11) = *&v112[75];
    v117 = *&v111[64];
    v118 = *&v111[80];
    v119 = *v112;
    v120 = *&v112[16];
    v113 = *v111;
    v114 = *&v111[16];
    v115 = *&v111[32];
    v116 = *&v111[48];
    sub_4FF4(&qword_56B80, &qword_40E88);
    sub_27BE8();
    sub_56BC(&qword_56B90, &qword_56B80, &qword_40E88);
    sub_3CDB4();
    sub_27B88(&v62);
    sub_27B88(&v79);
    v121 = v92;
    v122 = v93;
    v123[0] = v94[0];
    *(v123 + 11) = *(v94 + 11);
    v117 = v88;
    v118 = v89;
    v119 = v90;
    v120 = v91;
    v113 = v85;
    v114 = v86;
    v115 = *v87;
    v116 = *&v87[16];
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B0C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_26BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  type metadata accessor for MultiTaskingSectionViewModel();
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  sub_3C994();
  v5 = [objc_opt_self() currentDevice];
  [v5 orientation];

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_3C8A4();
}

uint64_t sub_26CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_24184(a1);
}

uint64_t sub_26D14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_26D94(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

uint64_t sub_26E04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3CBE4();
  *a1 = result;
  return result;
}

uint64_t sub_26E30(uint64_t *a1)
{
  v1 = *a1;

  return sub_3CBF4();
}

id sub_26E5C()
{
  type metadata accessor for MultiTaskingSectionViewModel();
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  v0 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v6 > 1u || v6)
  {
    return sub_3CCB4();
  }

  v1 = sub_3C994();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

    if (deviceSupportsEnhancedMultitasking)
    {

      return sub_3CCB4();
    }

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v5 = result;

      MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();
      return sub_3CCB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2706C()
{
  result = qword_56AA8;
  if (!qword_56AA8)
  {
    sub_5674(&qword_56A98, &qword_40BC0);
    sub_27A60(&qword_56AB0, &qword_56AB8, &qword_40BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56AA8);
  }

  return result;
}

uint64_t sub_27124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2716C()
{
  v1 = *(v0 + 16);

  sub_11ABC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_271B8()
{
  v0 = sub_3C6F4();
  v68 = *(v0 - 8);
  v69 = v0;
  v1 = *(v68 + 64);
  __chkstk_darwin(v0, v2);
  v67 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3C704();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3C724();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v12 = sub_4FF4(&qword_56188, &qword_3F650);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v60 - v15;
  v17 = sub_4FF4(&qword_56AD0, &qword_40BE8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v60 - v20;
  v22 = sub_3C744();
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 64);
  v25 = __chkstk_darwin(v22, v24);
  v61 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v62 = &v60 - v28;
  v29 = sub_3C7E4();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8, v31);
  v32 = sub_3D4B4();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8, v34);
  type metadata accessor for MultiTaskingSectionViewModel();
  sub_27124(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel);
  v35 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v36 = v70;
  sub_3D4A4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v37 = 0xD000000000000028;
  v38 = qword_572B8;
  sub_3C7D4();
  v39._countAndFlagsBits = sub_3D504();
  if (v36 == 2)
  {
    v40 = "ndows-ipad1240f36f/ipados";
    goto LABEL_7;
  }

  if (v36 == 3)
  {
    v40 = "Full-Screen-Apps-Light";
    v37 = 0xD000000000000059;
LABEL_7:
    v70 = 23328;
    v71 = 0xE200000000000000;
    sub_3D534(v39);

    v72._countAndFlagsBits = 10333;
    v72._object = 0xE200000000000000;
    sub_3D534(v72);
    v73._object = (v40 | 0x8000000000000000);
    v73._countAndFlagsBits = v37;
    sub_3D534(v73);

    v74._countAndFlagsBits = 41;
    v74._object = 0xE100000000000000;
    sub_3D534(v74);
    v41 = sub_3C7C4();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    (*(v65 + 104))(v8, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v66);
    (*(v68 + 104))(v67, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v69);
    sub_3C714();
    sub_3C734();
    v42 = v63;
    v43 = v64;
    (*(v63 + 56))(v21, 0, 1, v64);
    v44 = v62;
    (*(v42 + 32))(v62, v21, v43);
    sub_3CCB4();
    v45 = sub_3CF84();
    v47 = v46;
    v49 = v48;
    (*(v42 + 16))(v61, v44, v43);
    v50 = sub_3CF94();
    v52 = v51;
    v54 = v53;
    v55 = sub_3CF44();
    v68 = v56;
    v69 = v55;
    LODWORD(v67) = v57;
    v66 = v58;
    sub_BAF8(v50, v52, v54 & 1);

    sub_BAF8(v45, v47, v49 & 1);

    (*(v42 + 8))(v62, v43);
    return v69;
  }

  sub_3CCB4();
  return sub_3CF84();
}

uint64_t sub_27984(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56AD8, &qword_40C80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27A0C()
{
  result = qword_56B48;
  if (!qword_56B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56B48);
  }

  return result;
}

uint64_t sub_27A60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5674(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3CBE4();
  *a1 = result;
  return result;
}

uint64_t sub_27AEC(uint64_t *a1)
{
  v1 = *a1;

  return sub_3CBF4();
}

uint64_t sub_27B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56B18, &qword_40D38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27BE8()
{
  result = qword_56B88;
  if (!qword_56B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56B88);
  }

  return result;
}

uint64_t sub_27C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CDA4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_3CDB4();
}

uint64_t sub_27D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3CDA4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_3CDB4();
}

id sub_27E78()
{
  v0 = objc_allocWithZone(type metadata accessor for MultitaskingWindowManagementViewModel());

  return [v0 init];
}

uint64_t sub_27EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3CC54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v2 + 8);
  v10 = *v2;
  v29 = *v2;
  if (v30 == 1)
  {
    v28[0] = v10;
  }

  else
  {

    sub_3D604();
    v11 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v29, &qword_55F08, &qword_3F140);
    (*(v5 + 8))(v9, v4);
  }

  sub_4FF4(&qword_56A88, &qword_40BB0);
  v12 = swift_allocBox();
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel();
  sub_2CBFC(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  v13 = sub_3D304();
  __chkstk_darwin(v13, v14);
  v28[-2] = v12;
  v28[-1] = v2;
  sub_4FF4(&qword_56BB0, &qword_40FE8);
  sub_56BC(&qword_56BB8, &qword_56BB0, &qword_40FE8);
  sub_3D2D4();
  v15 = v2[2];
  v16 = v2[3];
  v17 = *(v2 + 32);
  type metadata accessor for MultitaskingWindowManagementViewModel();
  sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel);
  v18 = sub_3C994();
  v19 = sub_3C854();
  v20 = (a1 + *(sub_4FF4(&qword_56BC8, &qword_40FF0) + 36));
  *v20 = v19;
  v20[1] = v18;
  v21 = [objc_opt_self() defaultCenter];
  v22 = sub_4FF4(&qword_56BD0, &qword_40FF8);
  v23 = a1 + *(v22 + 52);
  sub_3D644();

  v24 = swift_allocObject();
  v25 = *(v2 + 1);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v2 + 32);
  sub_E1E8(&v29, v28, &qword_55F08, &qword_3F140);
  sub_11AB8(v15, v16, v17);

  v27 = (a1 + *(v22 + 56));
  *v27 = sub_2A0D8;
  v27[1] = v24;
  return result;
}

uint64_t sub_282EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v135 = a2;
  HIBYTE(v129[1]) = -18;
  v130 = 0xEC00000073707041;
  strcpy(v129, "windowedenApps");
  v3 = sub_4FF4(&qword_56AE0, &qword_40C88);
  v4 = *(v3 - 8);
  v151 = v3;
  v152 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v150 = &v127 - v7;
  v8 = sub_4FF4(&qword_56BD8, &qword_41050);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v134 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v133 = &v127 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v132 = &v127 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v131 = &v127 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v141 = &v127 - v24;
  __chkstk_darwin(v23, v25);
  v140 = &v127 - v26;
  v27 = sub_4FF4(&qword_56A88, &qword_40BB0);
  v28 = *(v27 - 8);
  v29 = v28[8];
  v31 = __chkstk_darwin(v27, v30);
  v33 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v34);
  v36 = &v127 - v35;
  v37 = sub_4FF4(&qword_56BE0, &qword_41058);
  v38 = v37 - 8;
  v39 = *(*(v37 - 8) + 64);
  v41 = __chkstk_darwin(v37, v40);
  v139 = &v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v43);
  v45 = &v127 - v44;
  v46 = sub_4FF4(&qword_56BE8, &qword_41060);
  v47 = v46[9];
  *&v45[v47] = swift_getKeyPath();
  sub_4FF4(&qword_56BF0, &qword_41098);
  swift_storeEnumTagMultiPayload();
  v48 = &v45[v46[10]];
  v156 = 0;
  sub_3D184();
  v49 = v154;
  *v48 = v153;
  *(v48 + 1) = v49;
  *&v45[v46[11]] = 0x4080B80000000000;
  sub_292F8(v45);
  *&v45[*(sub_4FF4(&qword_56BF8, &qword_410A0) + 36)] = 256;
  LOBYTE(v46) = sub_3CEB4();
  sub_3C924();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = &v45[*(sub_4FF4(&qword_56C00, &qword_410A8) + 36)];
  *v58 = v46;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = swift_projectBox();
  v60 = v28[2];
  v146 = v28 + 2;
  v147 = v59;
  v145 = v60;
  (v60)(v33);
  sub_3D2F4();
  v61 = v28[1];
  v143 = v33;
  v61(v33, v27);
  swift_getKeyPath();
  sub_3D314();

  v144 = v36;
  v142 = v27;
  v148 = v61;
  v149 = v28 + 1;
  v61(v36, v27);
  v62 = v154;
  v63 = v155;
  v64 = *(v38 + 44);
  v138 = v45;
  v65 = &v45[v64];
  *v65 = v153;
  *(v65 + 1) = v62;
  *(v65 + 8) = v63;
  v67 = *(a1 + 16);
  v66 = *(a1 + 24);
  v68 = *(a1 + 32);
  v69 = type metadata accessor for MultitaskingWindowManagementViewModel();
  v70 = sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel);
  v71 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v137 = v70;
  v136 = v69;
  if (v153 && v153 == 1)
  {
  }

  else
  {
    v72 = sub_3D804();

    if ((v72 & 1) == 0)
    {
      v84 = 1;
      v83 = v140;
      v81 = v151;
      goto LABEL_7;
    }
  }

  v73 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v74 = v150;
  sub_3D224();
  v76 = v142;
  v75 = v143;
  v145(v143, v147, v142);
  v77 = v144;
  sub_3D2F4();
  v78 = v148;
  v148(v75, v76);
  swift_getKeyPath();
  sub_3D314();

  v78(v77, v76);
  v79 = v154;
  v80 = v155;
  v81 = v151;
  v82 = v74 + *(v151 + 36);
  *v82 = v153;
  *(v82 + 8) = v79;
  *(v82 + 16) = v80;
  *(v82 + 17) = 7;
  v83 = v140;
  sub_17214(v74, v140, &qword_56AE0, &qword_40C88);
  v84 = 0;
LABEL_7:
  v85 = *(v152 + 56);
  v152 += 56;
  v85(v83, v84, 1, v81);
  v86 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (!v153 || v153 == 1)
  {
    v87 = sub_3D804();

    if ((v87 & 1) == 0)
    {
      v100 = 1;
      v99 = v141;
      v97 = v151;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v88 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v89 = v150;
  sub_3D224();
  v91 = v142;
  v90 = v143;
  v145(v143, v147, v142);
  v128 = v85;
  v92 = v144;
  sub_3D2F4();
  v93 = v148;
  v148(v90, v91);
  swift_getKeyPath();
  sub_3D314();

  v94 = v92;
  v85 = v128;
  v93(v94, v91);
  v95 = v154;
  v96 = v155;
  v97 = v151;
  v98 = v89 + *(v151 + 36);
  *v98 = v153;
  *(v98 + 8) = v95;
  *(v98 + 16) = v96;
  *(v98 + 17) = 8;
  v99 = v141;
  sub_17214(v89, v141, &qword_56AE0, &qword_40C88);
  v100 = 0;
LABEL_13:
  v85(v99, v100, 1, v97);
  v101 = sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v153 && v153 == 1)
  {
    goto LABEL_18;
  }

  v102 = sub_3D804();

  if ((v102 & 1) == 0)
  {
    v103 = sub_3C994();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    if (v153)
    {
      v129[1] = 0xEC00000073707041;
      v130 = 0xEC00000072656761;
      if (v153 != 1)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v129[0] = 0x657263536C6C7566;
    }

    v126 = sub_3D804();

    if ((v126 & 1) == 0)
    {
      v116 = 1;
      v115 = v131;
      v112 = v151;
      goto LABEL_20;
    }
  }

LABEL_19:
  v104 = sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v105 = v150;
  sub_3D224();
  v107 = v142;
  v106 = v143;
  v145(v143, v147, v142);
  v108 = v144;
  sub_3D2F4();
  v109 = v148;
  v148(v106, v107);
  swift_getKeyPath();
  sub_3D314();

  v109(v108, v107);
  v110 = v154;
  v111 = v155;
  v112 = v151;
  v113 = &v105[*(v151 + 36)];
  *v113 = v153;
  *(v113 + 1) = v110;
  v113[16] = v111;
  v113[17] = 9;
  v114 = v105;
  v115 = v131;
  sub_17214(v114, v131, &qword_56AE0, &qword_40C88);
  v116 = 0;
LABEL_20:
  v85(v115, v116, 1, v112);
  v117 = v139;
  sub_E1E8(v138, v139, &qword_56BE0, &qword_41058);
  v118 = v140;
  v119 = v132;
  sub_E1E8(v140, v132, &qword_56BD8, &qword_41050);
  v120 = v141;
  v121 = v133;
  sub_E1E8(v141, v133, &qword_56BD8, &qword_41050);
  v122 = v134;
  sub_E1E8(v115, v134, &qword_56BD8, &qword_41050);
  v123 = v135;
  sub_E1E8(v117, v135, &qword_56BE0, &qword_41058);
  v124 = sub_4FF4(&qword_56C08, &qword_41120);
  sub_E1E8(v119, v123 + v124[12], &qword_56BD8, &qword_41050);
  sub_E1E8(v121, v123 + v124[16], &qword_56BD8, &qword_41050);
  sub_E1E8(v122, v123 + v124[20], &qword_56BD8, &qword_41050);
  sub_11A14(v115, &qword_56BD8, &qword_41050);
  sub_11A14(v120, &qword_56BD8, &qword_41050);
  sub_11A14(v118, &qword_56BD8, &qword_41050);
  sub_11A14(v138, &qword_56BE0, &qword_41058);
  sub_11A14(v122, &qword_56BD8, &qword_41050);
  sub_11A14(v121, &qword_56BD8, &qword_41050);
  sub_11A14(v119, &qword_56BD8, &qword_41050);
  return sub_11A14(v139, &qword_56BE0, &qword_41058);
}

uint64_t sub_292F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3CCB4();
  v64 = v3;
  v65 = v2;
  v5 = v4;
  v66 = v6;
  type metadata accessor for MultitaskingWindowManagementViewModel();
  sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel);
  v7 = sub_3CB44();
  v62 = v8;
  v63 = v7;
  KeyPath = swift_getKeyPath();
  type metadata accessor for CGSize(0);
  v141 = 0;
  v140 = 0;
  sub_3D184();
  v9 = v148;
  v60 = v149;
  v59 = v5 & 1;
  v156 = 0;
  sub_3D324();
  sub_3CB14();
  *&v138[55] = v144;
  *&v138[71] = v145;
  *&v138[87] = v146;
  *&v138[103] = v147;
  *&v138[7] = 0u;
  *&v138[23] = v142;
  v139 = 1;
  *&v138[39] = v143;
  v10 = sub_3CCB4();
  v49 = v11;
  v50 = v10;
  v13 = v12;
  v58 = v14;
  v15 = sub_3CB44();
  v56 = v16;
  v57 = v15;
  v48 = swift_getKeyPath();
  v119 = 0;
  v118 = 0;
  sub_3D184();
  v17 = v148;
  v55 = v149;
  v135 = 0;
  sub_3D324();
  sub_3CB14();
  *&v132[55] = v151;
  *&v132[71] = v152;
  *&v132[87] = v153;
  *&v132[103] = v154;
  *&v132[7] = v148;
  *&v132[23] = v149;
  v133 = 1;
  *&v132[39] = v150;
  v18 = sub_3CCB4();
  v47 = v19;
  v21 = v20;
  v54 = v22;
  v23 = sub_3CB44();
  v52 = v24;
  v53 = v23;
  v51 = swift_getKeyPath();
  v105 = 0;
  v104 = 0;
  sub_3D184();
  v25 = v120;
  LOBYTE(v71) = 0;
  *(&v71 + 1) = v158[0];
  DWORD1(v71) = *(v158 + 3);
  *(&v71 + 1) = v65;
  *&v72 = v64;
  BYTE8(v72) = v59;
  HIDWORD(v72) = *&v157[3];
  *(&v72 + 9) = *v157;
  *v73 = v66;
  strcpy(&v73[8], "fullScreenApps");
  v73[23] = -18;
  *&v73[24] = v63;
  *&v74 = v62;
  *(&v74 + 1) = KeyPath;
  v75[0] = 0;
  *&v75[4] = *&v155[3];
  *&v75[1] = *v155;
  *&v75[8] = v148;
  *&v75[24] = v149;
  *&v67[39] = *v73;
  *&v67[23] = v72;
  *&v67[7] = v71;
  *&v67[103] = *&v75[16];
  *&v67[87] = *v75;
  *&v67[71] = v74;
  *&v67[55] = *&v73[16];
  LOBYTE(v76) = 1;
  DWORD1(v76) = *&v137[3];
  *(&v76 + 1) = *v137;
  *(&v76 + 1) = v50;
  *&v77 = v49;
  BYTE8(v77) = v13 & 1;
  HIDWORD(v77) = *&v136[3];
  *(&v77 + 9) = *v136;
  *v78 = v58;
  strcpy(&v78[8], "windowedApps");
  v78[21] = 0;
  *&v78[22] = -5120;
  *&v78[24] = v57;
  *&v79 = v56;
  *(&v79 + 1) = v48;
  v80[0] = 0;
  *&v80[4] = *&v134[3];
  *&v80[1] = *v134;
  *&v80[8] = v148;
  *&v80[24] = v149;
  LOBYTE(v81) = 2;
  DWORD1(v81) = *&v70[3];
  *(&v81 + 1) = *v70;
  *(&v81 + 1) = v18;
  *&v82 = v47;
  BYTE8(v82) = v21 & 1;
  HIDWORD(v82) = *&v69[3];
  *(&v82 + 9) = *v69;
  DWORD1(v86) = *&v68[3];
  *(&v86 + 1) = *v68;
  *(a1 + 8) = 1;
  *(a1 + 120) = *&v67[111];
  *(a1 + 248) = *&v138[111];
  v26 = v77;
  v27 = *v78;
  *(a1 + 264) = v76;
  *(a1 + 280) = v26;
  v28 = *&v78[16];
  v29 = v79;
  v30 = *&v80[16];
  *(a1 + 344) = *v80;
  *(a1 + 360) = v30;
  *(a1 + 312) = v28;
  *(a1 + 328) = v29;
  *(a1 + 296) = v27;
  *(a1 + 496) = *&v132[111];
  v31 = *v132;
  v32 = *&v132[16];
  v33 = *&v132[48];
  *(a1 + 417) = *&v132[32];
  *(a1 + 433) = v33;
  *(a1 + 385) = v31;
  *(a1 + 401) = v32;
  v34 = *&v132[64];
  v35 = *&v132[96];
  *(a1 + 465) = *&v132[80];
  *(a1 + 481) = v35;
  *(a1 + 449) = v34;
  *&v83 = v54;
  *(&v83 + 1) = 0x6E614D6567617473;
  *(a1 + 256) = 0xBFF0000000000000;
  *(a1 + 504) = 0xBFF0000000000000;
  *&v84 = 0xEC00000072656761;
  *(&v84 + 1) = v53;
  *&v85 = v52;
  *(&v85 + 1) = v51;
  LOBYTE(v86) = 0;
  *(&v86 + 1) = 0;
  *&v87 = 0;
  *(&v87 + 1) = v25;
  *a1 = 0;
  *(a1 + 57) = *&v67[48];
  *(a1 + 41) = *&v67[32];
  *(a1 + 25) = *&v67[16];
  *(a1 + 9) = *v67;
  *(a1 + 105) = *&v67[96];
  *(a1 + 89) = *&v67[80];
  *(a1 + 73) = *&v67[64];
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v36 = *v138;
  v37 = *&v138[16];
  v38 = *&v138[32];
  *(a1 + 185) = *&v138[48];
  *(a1 + 169) = v38;
  *(a1 + 153) = v37;
  *(a1 + 137) = v36;
  v39 = *&v138[64];
  v40 = *&v138[80];
  *(a1 + 233) = *&v138[96];
  *(a1 + 217) = v40;
  *(a1 + 201) = v39;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1;
  v41 = v82;
  *(a1 + 512) = v81;
  *(a1 + 528) = v41;
  v42 = v83;
  v43 = v84;
  v44 = v87;
  *(a1 + 592) = v86;
  *(a1 + 608) = v44;
  v45 = v85;
  *(a1 + 560) = v43;
  *(a1 + 576) = v45;
  *(a1 + 544) = v42;
  *(a1 + 624) = 0;
  *(a1 + 632) = 1;
  v88 = 2;
  *&v89[3] = *&v70[3];
  *v89 = *v70;
  v90 = v18;
  v91 = v47;
  v92 = v21 & 1;
  *&v93[3] = *&v69[3];
  *v93 = *v69;
  v94 = v54;
  strcpy(v95, "stageManager");
  HIBYTE(v95[6]) = 0;
  v95[7] = -5120;
  v96 = v53;
  v97 = v52;
  v98 = v51;
  *&v100[3] = *&v68[3];
  *v100 = *v68;
  v103 = v25;
  v99 = 0;
  v101 = 0;
  v102 = 0;
  sub_2C1C0(&v71, &v118);
  sub_2C1C0(&v76, &v118);
  sub_2C1C0(&v81, &v118);
  sub_2C21C(&v88);
  LOBYTE(v104) = 1;
  *(&v104 + 1) = *v137;
  HIDWORD(v104) = *&v137[3];
  v105 = v50;
  v106 = v49;
  v107 = v13 & 1;
  *v108 = *v136;
  *&v108[3] = *&v136[3];
  v109 = v58;
  strcpy(v110, "windowedApps");
  HIBYTE(v110[6]) = 0;
  v110[7] = -5120;
  v111 = v57;
  v112 = v56;
  v113 = v48;
  v114 = 0;
  *&v115[3] = *&v134[3];
  *v115 = *v134;
  v116 = v17;
  v117 = v55;
  sub_2C21C(&v104);
  LOBYTE(v118) = 0;
  *(&v118 + 1) = v158[0];
  HIDWORD(v118) = *(v158 + 3);
  v119 = v65;
  v120 = v64;
  v121 = v59;
  *v122 = *v157;
  *&v122[3] = *&v157[3];
  v123 = v66;
  strcpy(v124, "fullScreenApps");
  v124[15] = -18;
  v125 = v63;
  v126 = v62;
  v127 = KeyPath;
  v128 = 0;
  *&v129[3] = *&v155[3];
  *v129 = *v155;
  v130 = v9;
  v131 = v60;
  return sub_2C21C(&v118);
}

uint64_t sub_29B7C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29C84@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29D78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_29E08(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

uint64_t sub_29E74@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_29F54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  type metadata accessor for MultitaskingWindowManagementViewModel();
  sub_2CBFC(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel);
  sub_3C994();
  v5 = [objc_opt_self() currentDevice];
  [v5 orientation];

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_3C8A4();
}

uint64_t sub_2A050@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_27EE8(a1);
}

uint64_t sub_2A094()
{
  v1 = *(v0 + 16);

  sub_11ABC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

Swift::Int sub_2A0F8()
{
  v1 = *v0;
  sub_3D844();
  sub_3D854(v1);
  return sub_3D864();
}

Swift::Int sub_2A16C()
{
  v1 = *v0;
  sub_3D844();
  sub_3D854(v1);
  return sub_3D864();
}

uint64_t sub_2A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CAF8();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_2A21C()
{
  sub_2C270();
  sub_3CC64();
  return v1;
}

uint64_t sub_2A258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3CC54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4FF4(&qword_56BF0, &qword_41098);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v15 = (&v19 - v14);
  sub_E1E8(v2 + *(a1 + 36), &v19 - v14, &qword_56BF0, &qword_41098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_17214(v15, a2, &qword_56C10, &qword_41200);
  }

  v17 = *v15;
  sub_3D604();
  v18 = sub_3CE74();
  sub_3C844();

  sub_3CC44();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v111 = a3;
  v112 = a1;
  v5 = a1 - 8;
  v104 = *(a1 - 8);
  v6 = *(v104 + 64);
  __chkstk_darwin(a1, a2);
  v99 = v7;
  v101 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  v10 = sub_3D244();
  sub_5674(&qword_56CC0, &qword_41388);
  v91 = v10;
  v11 = sub_3CAA4();
  v98 = v8;
  v97 = v9;
  v93 = sub_3D1F4();
  v12 = sub_3CAA4();
  v92 = v11;
  v94 = v12;
  v95 = sub_3CDC4();
  v13 = sub_3D134();
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  __chkstk_darwin(v13, v15);
  v96 = &v88 - v16;
  sub_5674(&qword_56CC8, &qword_41390);
  v102 = v13;
  v17 = sub_3CAA4();
  v107 = *(v17 - 8);
  v18 = *(v107 + 64);
  __chkstk_darwin(v17, v19);
  v103 = &v88 - v20;
  sub_5674(&qword_56CD0, &qword_41398);
  v108 = v17;
  v21 = sub_3CAA4();
  v109 = *(v21 - 8);
  v110 = v21;
  v22 = *(v109 + 64);
  v24 = __chkstk_darwin(v21, v23);
  v105 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v106 = &v88 - v27;
  v28 = sub_3CE24();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  v90 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_4FF4(&qword_56CD8, &qword_413A0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33, v35);
  v37 = &v88 - v36;
  v38 = sub_4FF4(&qword_56C10, &qword_41200);
  v39 = *(*(v38 - 8) + 64);
  v41 = __chkstk_darwin(v38 - 8, v40);
  v43 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v41, v44);
  v47 = &v88 - v46;
  __chkstk_darwin(v45, v48);
  v50 = &v88 - v49;
  v51 = (v4 + *(v5 + 48));
  v52 = *v51;
  v53 = v51[1];
  v125 = v52;
  v126 = v53;
  sub_4FF4(&qword_56CE0, &qword_413A8);
  v54 = sub_3D194();
  if (v124 >= *(v4 + *(v5 + 52)))
  {
    v89 = v4;
    sub_2A258(v112, v50);
    (*(v29 + 104))(v47, enum case for UserInterfaceSizeClass.compact(_:), v28);
    (*(v29 + 56))(v47, 0, 1, v28);
    v57 = *(v33 + 48);
    sub_E1E8(v50, v37, &qword_56C10, &qword_41200);
    sub_E1E8(v47, &v37[v57], &qword_56C10, &qword_41200);
    v58 = *(v29 + 48);
    if (v58(v37, 1, v28) == 1)
    {
      sub_11A14(v47, &qword_56C10, &qword_41200);
      sub_11A14(v50, &qword_56C10, &qword_41200);
      if (v58(&v37[v57], 1, v28) == 1)
      {
        v54 = sub_11A14(v37, &qword_56C10, &qword_41200);
        v56 = 1;
LABEL_10:
        v4 = v89;
        goto LABEL_11;
      }
    }

    else
    {
      sub_E1E8(v37, v43, &qword_56C10, &qword_41200);
      if (v58(&v37[v57], 1, v28) != 1)
      {
        v59 = v90;
        (*(v29 + 32))(v90, &v37[v57], v28);
        sub_2CBFC(&qword_56D10, &type metadata accessor for UserInterfaceSizeClass);
        v56 = sub_3D494();
        v60 = *(v29 + 8);
        v60(v59, v28);
        sub_11A14(v47, &qword_56C10, &qword_41200);
        sub_11A14(v50, &qword_56C10, &qword_41200);
        v60(v43, v28);
        v54 = sub_11A14(v37, &qword_56C10, &qword_41200);
        goto LABEL_10;
      }

      sub_11A14(v47, &qword_56C10, &qword_41200);
      sub_11A14(v50, &qword_56C10, &qword_41200);
      (*(v29 + 8))(v43, v28);
    }

    v54 = sub_11A14(v37, &qword_56CD8, &qword_413A0);
    v56 = 0;
    goto LABEL_10;
  }

  v56 = 1;
LABEL_11:
  __chkstk_darwin(v54, v55);
  v61 = v98;
  v62 = v97;
  *(&v88 - 4) = v98;
  *(&v88 - 3) = v62;
  LODWORD(v90) = v56 & 1;
  *(&v88 - 16) = v56 & 1;
  *(&v88 - 1) = v4;
  WitnessTable = swift_getWitnessTable();
  v64 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388);
  v122 = WitnessTable;
  v123 = v64;
  v91 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v65 = swift_getWitnessTable();
  v120 = swift_getWitnessTable();
  v121 = v64;
  v66 = swift_getWitnessTable();
  v118 = v65;
  v119 = v66;
  v67 = swift_getWitnessTable();
  v68 = v96;
  sub_3D124();
  v69 = v104;
  v70 = v101;
  v71 = v112;
  (*(v104 + 16))(v101, v4, v112);
  v72 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v61;
  *(v73 + 24) = v62;
  (*(v69 + 32))(v73 + v72, v70, v71);
  v125 = sub_2CB60;
  v126 = v73;
  sub_3D324();
  sub_4FF4(&qword_56CF0, &unk_413B0);
  v117 = v67;
  v74 = v102;
  v75 = swift_getWitnessTable();
  sub_56BC(&qword_56CF8, &qword_56CF0, &unk_413B0);
  v76 = v103;
  sub_3CFF4();

  (*(v100 + 8))(v68, v74);
  sub_3D354();
  LOBYTE(v125) = v90;
  v77 = sub_56BC(&qword_56D00, &qword_56CC8, &qword_41390);
  v115 = v75;
  v116 = v77;
  v78 = v108;
  v79 = swift_getWitnessTable();
  v80 = v105;
  sub_3D094();

  (*(v107 + 8))(v76, v78);
  v81 = sub_56BC(&qword_56D08, &qword_56CD0, &qword_41398);
  v113 = v79;
  v114 = v81;
  v82 = v110;
  swift_getWitnessTable();
  v83 = v109;
  v84 = *(v109 + 16);
  v85 = v106;
  v84(v106, v80, v82);
  v86 = *(v83 + 8);
  v86(v80, v82);
  v84(v111, v85, v82);
  return (v86)(v85, v82);
}

uint64_t sub_2B070@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a2;
  v69 = a1;
  v74 = a5;
  v7 = sub_3D1F4();
  v66 = *(v7 - 8);
  v8 = *(v66 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v64 - v10;
  sub_5674(&qword_56CC0, &qword_41388);
  v75 = v7;
  v12 = sub_3CAA4();
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v67 = &v64 - v19;
  v20 = sub_3D244();
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  __chkstk_darwin(v20, v20);
  v23 = &v64 - v22;
  v76 = v24;
  v25 = sub_3CAA4();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v32);
  v34 = &v64 - v33;
  v71 = v12;
  v35 = sub_3CDC4();
  v72 = *(v35 - 8);
  v73 = v35;
  v36 = *(v72 + 64);
  __chkstk_darwin(v35, v37);
  v77 = &v64 - v38;
  if (v69)
  {
    v39 = sub_3CCE4();
    __chkstk_darwin(v39, v40);
    *(&v64 - 4) = a3;
    *(&v64 - 3) = a4;
    *(&v64 - 2) = v70;
    sub_3D234();
    swift_getKeyPath();
    v92 = 1;
    v41 = v76;
    WitnessTable = swift_getWitnessTable();
    sub_3D034();

    (*(v65 + 8))(v23, v41);
    v43 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388);
    v80 = WitnessTable;
    v81 = v43;
    v70 = swift_getWitnessTable();
    v44 = v26[2];
    v44(v34, v31, v25);
    v45 = v26[1];
    v45(v31, v25);
    v44(v31, v34, v25);
    v78 = swift_getWitnessTable();
    v79 = v43;
    swift_getWitnessTable();
    sub_27C88(v31, v25);
    v45(v31, v25);
    v45(v34, v25);
  }

  else
  {
    v46 = sub_3CC84();
    __chkstk_darwin(v46, v47);
    *(&v64 - 4) = a3;
    *(&v64 - 3) = a4;
    *(&v64 - 2) = v70;
    sub_3D1E4();
    swift_getKeyPath();
    v92 = 0;
    v48 = v75;
    v49 = swift_getWitnessTable();
    sub_3D034();

    (*(v66 + 8))(v11, v48);
    v50 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388);
    v90 = v49;
    v91 = v50;
    v51 = v71;
    v70 = swift_getWitnessTable();
    v52 = v68;
    v53 = *(v68 + 16);
    v54 = v67;
    v53(v67, v17, v51);
    v55 = *(v52 + 8);
    v55(v17, v51);
    v53(v17, v54, v51);
    v88 = swift_getWitnessTable();
    v89 = v50;
    swift_getWitnessTable();
    sub_27D80(v17, v25, v51);
    v55(v17, v51);
    v55(v54, v51);
  }

  v56 = swift_getWitnessTable();
  v57 = sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388);
  v86 = v56;
  v87 = v57;
  v58 = swift_getWitnessTable();
  v84 = swift_getWitnessTable();
  v85 = v57;
  v59 = swift_getWitnessTable();
  v82 = v58;
  v83 = v59;
  v60 = v73;
  swift_getWitnessTable();
  v61 = v72;
  v62 = v77;
  (*(v72 + 16))(v74, v77, v60);
  return (*(v61 + 8))(v62, v60);
}

uint64_t sub_2B92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_2BA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a1;
  v33 = a3;
  v29 = a2;
  v30 = a5;
  v6 = sub_3CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v27[0] = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ButtonLayoutContainer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v27 - v14;
  v34 = sub_3D0D4();
  v28 = *(v11 + 16);
  v28(v15, a2, v10);
  v16 = v6;
  (*(v7 + 16))(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v6);
  v17 = *(v11 + 80);
  v18 = (v17 + 32) & ~v17;
  v27[1] = v17 | 7;
  v27[2] = v18 + v12;
  v19 = (v18 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v33;
  *(v20 + 24) = v21;
  v22 = *(v11 + 32);
  v22(v20 + v18, v15, v10);
  (*(v7 + 32))(v20 + v19, v27[0], v16);
  v36 = v34;
  v37 = sub_2CE9C;
  v38 = v20;
  v39 = 0;
  v40 = 0;
  sub_3CA24();
  v35 = v23;
  v28(v15, v29, v10);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v33;
  *(v24 + 24) = v25;
  v22(v24 + v18, v15, v10);
  sub_4FF4(&qword_56A68, &qword_40A38);
  sub_23D2C();
  sub_2D1E0();
  sub_3D084();
}

uint64_t sub_2BD40(uint64_t a1)
{
  sub_3CA24();
  v2 = (a1 + *(type metadata accessor for ButtonLayoutContainer() + 40));
  v4 = *v2;
  v5 = v2[1];
  sub_4FF4(&qword_56CE0, &qword_413A8);
  return sub_3D1A4();
}

uint64_t sub_2BDD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for ButtonLayoutContainer() + 40));
  v6 = *v4;
  v7 = v4[1];
  sub_4FF4(&qword_56CE0, &qword_413A8);
  return sub_3D1A4();
}

uint64_t sub_2BE5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_2BEE0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

uint64_t sub_2BF78(uint64_t a1)
{
  v2 = sub_4FF4(&qword_56C10, &qword_41200);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_E1E8(a1, &v7 - v5, &qword_56C10, &qword_41200);
  return sub_3CBB4();
}

uint64_t sub_2C124@<X0>(_BYTE *a1@<X8>)
{
  sub_2C270();
  result = sub_3CC64();
  *a1 = v3;
  return result;
}

uint64_t sub_2C174(char *a1)
{
  v2 = *a1;
  sub_2C270();
  return sub_3CC74();
}

unint64_t sub_2C270()
{
  result = qword_56C18[0];
  if (!qword_56C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_56C18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiTaskingSectionViewModel.DisplaySection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultiTaskingSectionViewModel.DisplaySection(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2C438(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2C9B8();
    if (v3 <= 0x3F)
    {
      sub_2CA1C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2C4E0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_3CE24() - 8);
  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v7;
  }

  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = 8;
  if (v10 > 8)
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  v13 = *(v6 + 64) + v12;
  v14 = v11 + 8;
  if (v9 < a2)
  {
    v15 = ((((v14 + (v13 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v16 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = a2 - v9 + 1;
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

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = *(a1 + v15);
        if (!v20)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_32;
      }

      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_32;
      }
    }

    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    v26 = v9 + (v23 | v22);
    return (v26 + 1);
  }

LABEL_32:
  if (v7 < 0x7FFFFFFE)
  {
    v25 = *(((v14 + ((a1 + v13) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 - 1;
    if (v26 < 0)
    {
      v26 = -1;
    }

    return (v26 + 1);
  }

  v24 = *(v6 + 48);

  return v24(a1, v7, v5);
}

void sub_2C71C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_3CE24() - 8);
  v11 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 84) == 0;
  v14 = *(v8 + 64);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = v14 + v15;
  v17 = (v14 + v15) & ~v15;
  if (v13)
  {
    v18 = v11 + 1;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 8)
  {
    v18 = 8;
  }

  v19 = v18 + 8;
  v20 = ((((v19 + v17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v23 = 0;
    v24 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((v19 + v17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v12 + 1;
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

    v24 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_22:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0x7FFFFFFE)
      {
        v28 = ((v19 + ((a1 + v16) & ~v15)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v28 = (a2 - 0x7FFFFFFF);
          v28[1] = 0;
        }

        else
        {
          v28[1] = a2;
        }
      }

      else
      {
        v27 = *(v29 + 56);

        v27(a1, a2, v9, v7);
      }

      return;
    }
  }

  if (v20)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  if (v20)
  {
    v26 = ~v12 + a2;
    bzero(a1, v20);
    *a1 = v26;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      *(a1 + v20) = v25;
    }

    else
    {
      *(a1 + v20) = v25;
    }
  }

  else if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void sub_2C9B8()
{
  if (!qword_56CA0)
  {
    sub_5674(&qword_56C10, &qword_41200);
    v0 = sub_3C974();
    if (!v1)
    {
      atomic_store(v0, &qword_56CA0);
    }
  }
}

void sub_2CA1C()
{
  if (!qword_56CA8)
  {
    v0 = sub_3D1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_56CA8);
    }
  }
}

unint64_t sub_2CAF8()
{
  result = qword_56CB8;
  if (!qword_56CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56CB8);
  }

  return result;
}

uint64_t sub_2CB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ButtonLayoutContainer() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2BA20(a1, v8, v5, v6, a2);
}

uint64_t sub_2CBFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2CC44()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ButtonLayoutContainer();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v19 = *(*(v3 - 8) + 64);
  v6 = sub_3CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v18 = *(v7 + 64);
  v9 = v0 + v5;
  (*(*(v2 - 8) + 8))(v0 + v5, v2);
  v10 = *(v3 + 36);
  sub_4FF4(&qword_56BF0, &qword_41098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_3CE24();
    v17 = *(v11 - 8);
    if (!(*(v17 + 48))(v9 + v10, 1, v11))
    {
      (*(v17 + 8))(v9 + v10, v11);
    }
  }

  else
  {
    v12 = *(v9 + v10);
  }

  v13 = v4 | v8;
  v14 = (v5 + v19 + v8) & ~v8;
  v15 = *(v9 + *(v3 + 40) + 8);

  (*(v7 + 8))(v0 + v14, v6);

  return _swift_deallocObject(v0, v14 + v18, v13 | 7);
}

uint64_t sub_2CE9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ButtonLayoutContainer() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_3CA34() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2BD40(v0 + v4);
}

uint64_t sub_2CF84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ButtonLayoutContainer();
  v4 = *(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = (v4 + 32) & ~v4;
  v7 = v0 + v6;
  (*(*(v2 - 8) + 8))(v0 + v6, v2);
  v8 = *(v3 + 36);
  sub_4FF4(&qword_56BF0, &qword_41098);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_3CE24();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
    v11 = *(v7 + v8);
  }

  v12 = *(v7 + *(v3 + 40) + 8);

  return _swift_deallocObject(v0, v6 + v5, v4 | 7);
}

uint64_t sub_2D144(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ButtonLayoutContainer() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2BDD8(a1, a2, v8);
}

unint64_t sub_2D1E0()
{
  result = qword_56D18;
  if (!qword_56D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56D18);
  }

  return result;
}

uint64_t sub_2D284(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_3D244();
  sub_5674(&qword_56CC0, &qword_41388);
  sub_3CAA4();
  sub_3D1F4();
  sub_3CAA4();
  sub_3CDC4();
  sub_3D134();
  sub_5674(&qword_56CC8, &qword_41390);
  sub_3CAA4();
  sub_5674(&qword_56CD0, &qword_41398);
  sub_3CAA4();
  swift_getWitnessTable();
  sub_56BC(&qword_56CE8, &qword_56CC0, &qword_41388);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_56BC(&qword_56D00, &qword_56CC8, &qword_41390);
  swift_getWitnessTable();
  sub_56BC(&qword_56D08, &qword_56CD0, &qword_41398);
  return swift_getWitnessTable();
}

uint64_t sub_2D538()
{
  v0 = type metadata accessor for ShakeToUndoSectionViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_30838();
}

uint64_t sub_2D570(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for ShakeToUndoSectionViewModel();
  sub_2DE8C(&qword_56D30, type metadata accessor for ShakeToUndoSectionViewModel);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_2DDD4();
  sub_3D074();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2D754@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_2D7D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_2D848@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2D930(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for ShakeToUndoSectionViewModel();
  sub_2DE8C(&qword_56D30, type metadata accessor for ShakeToUndoSectionViewModel);
  v11 = sub_3C994();
  v12 = *a1;
  v21 = *a1;
  v22 = *(a1 + 8);
  LOBYTE(a1) = v22;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v21);
    (*(v3 + 8))(v7, v2);
    v12 = v20;
  }

  swift_getKeyPath();
  v20 = v12;
  sub_2DE8C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);

  v16 = (v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer);
  v17 = *(v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer + 8);
  *v16 = v15;
  v16[1] = v14;
}

uint64_t sub_2DB90@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = *(v1 + 32);
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v4 = qword_572B8;
  sub_3CF84();
  v13 = v5;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_BC9C();
  sub_3D2E4();
  v17 = v14;
  v18 = BYTE8(v14);
  v11 = v15;
  v12 = v16;
  v6 = swift_allocObject();
  v7 = v15;
  *(v6 + 16) = v14;
  *(v6 + 32) = v7;
  *(v6 + 48) = v16;
  v8 = (a1 + *(sub_4FF4(&qword_56D20, &unk_414F8) + 36));
  *v8 = sub_2DE7C;
  v8[1] = v6;
  v8[2] = 0;
  v8[3] = 0;
  sub_E1E8(&v17, v10, &qword_55F08, &qword_3F140);
  return sub_E1E8(&v11, v10, &qword_56D28, &qword_41508);
}

unint64_t sub_2DDD4()
{
  result = qword_55DD0;
  if (!qword_55DD0)
  {
    sub_5674(&qword_55DD8, &qword_3EE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DD0);
  }

  return result;
}

uint64_t sub_2DE38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_E1D8();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_2DE8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2DEE0()
{
  result = qword_56D38;
  if (!qword_56D38)
  {
    sub_5674(&qword_56D20, &unk_414F8);
    sub_2DF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56D38);
  }

  return result;
}

unint64_t sub_2DF6C()
{
  result = qword_56D40;
  if (!qword_56D40)
  {
    sub_5674(&qword_56D48, &unk_41580);
    sub_BC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56D40);
  }

  return result;
}

id sub_2E004()
{
  v0 = type metadata accessor for CornerGesturesSectionViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1AF8();
}

uint64_t sub_2E074@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v3 = qword_572B8;
  *&v14 = sub_3CF84();
  *(&v14 + 1) = v4;
  v15 = v5 & 1;
  v16 = v6;
  sub_4FF4(&qword_56D50, &qword_416D8);
  sub_56BC(&qword_56D58, &qword_56D50, &qword_416D8);
  sub_3D2E4();
  v7 = *v1;
  v20 = *(v1 + 8);
  v14 = *(v1 + 1);
  v15 = *(v1 + 32);
  v8 = v1[6];
  v18 = v1[5];
  v19 = v7;
  v17 = v8;
  v9 = swift_allocObject();
  v10 = *(v1 + 1);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 2);
  *(v9 + 64) = v1[6];
  v11 = (a1 + *(sub_4FF4(&qword_56D60, &unk_416E0) + 36));
  *v11 = sub_2F97C;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_E1E8(&v19, v13, &qword_55F08, &qword_3F140);
  sub_E1E8(&v14, v13, &qword_56D68, &unk_416F0);
  sub_E1E8(&v18, v13, &qword_55F18, &qword_3F150);
  return sub_E1E8(&v17, v13, &qword_55F18, &qword_3F150);
}

uint64_t sub_2E2E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_3CCD4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_4FF4(&qword_56D78, &qword_41728);
  return sub_2E338(a1, a2 + *(v4 + 44));
}

uint64_t sub_2E338@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_56D80, &qword_41730);
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = *(v98 + 64);
  __chkstk_darwin(v4, v6);
  v91 = v83 - v7;
  v8 = sub_4FF4(&qword_56D88, &qword_41738);
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  __chkstk_darwin(v8, v10);
  v86 = v83 - v11;
  v12 = sub_4FF4(&qword_56D90, &qword_41740);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v90 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v89 = v83 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v85 = v83 - v22;
  __chkstk_darwin(v21, v23);
  v93 = v83 - v24;
  v25 = sub_4FF4(&qword_56D98, &qword_41748);
  v26 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25 - 8, v27);
  v97 = v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v96 = v83 - v31;
  v32 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32, v35);
  v37 = v83 - v36;
  v38 = sub_4FF4(&qword_55DA8, &qword_3EE00);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8, v40);
  v42 = v83 - v41;
  v43 = sub_4FF4(&qword_56DA0, &qword_41750);
  v44 = *(*(v43 - 8) + 64);
  v46 = __chkstk_darwin(v43, v45);
  v95 = v83 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v46, v48);
  v51 = v83 - v50;
  __chkstk_darwin(v49, v52);
  v100 = v83 - v53;
  v54 = *(a1 + 40);
  sub_3C8E4();
  v92 = a1;
  if ((v104 & 1) != 0 || (v55 = *(a1 + 48), sub_3C8E4(), v104 == 1))
  {
    LOBYTE(v101) = 0;
    sub_3D294();
    v56 = 1;
  }

  else
  {
    v57 = *(a1 + 24);
    v84 = *(a1 + 16);
    v58 = *(a1 + 32);
    type metadata accessor for CornerGesturesSectionViewModel();
    sub_2FC74(&qword_56D70, type metadata accessor for CornerGesturesSectionViewModel);
    v94 = a2;
    sub_3C9A4();
    swift_getKeyPath();
    a2 = v94;
    sub_3CA84();

    v56 = 0;
  }

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10);
  sub_3D074();
  (*(v33 + 8))(v37, v32);
  KeyPath = swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  sub_17214(v42, v51, &qword_55DA8, &qword_3EE00);
  v61 = &v51[*(v43 + 36)];
  *v61 = KeyPath;
  v61[1] = sub_2F9FC;
  v61[2] = v60;
  v62 = v100;
  sub_17214(v51, v100, &qword_56DA0, &qword_41750);
  if (v56)
  {
    v63 = 1;
LABEL_10:
    v78 = v96;
    goto LABEL_11;
  }

  v94 = a2;
  v64 = *(v92 + 16);
  v65 = *(v92 + 24);
  v66 = *(v92 + 32);
  type metadata accessor for CornerGesturesSectionViewModel();
  sub_2FC74(&qword_56D70, type metadata accessor for CornerGesturesSectionViewModel);
  sub_3C994();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v104 != 1)
  {
    v63 = 1;
    a2 = v94;
    goto LABEL_10;
  }

  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v101 = v104;
  v102 = v105;
  v103 = v106;
  v83[1] = sub_4FF4(&qword_56DB0, &qword_41800);
  v92 = sub_5D34();
  v84 = sub_2FA64();
  v67 = v86;
  sub_3D204();
  v83[0] = sub_56BC(&qword_56DD0, &qword_56D88, &qword_41738);
  v68 = v88;
  sub_3D074();
  v69 = *(v87 + 8);
  v69(v67, v68);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  v101 = v104;
  v102 = v105;
  v103 = v106;
  sub_3D204();
  v70 = v85;
  sub_3D074();
  v71 = v68;
  v62 = v100;
  v69(v67, v71);
  v72 = v93;
  v73 = v89;
  sub_E1E8(v93, v89, &qword_56D90, &qword_41740);
  v74 = v70;
  v75 = v90;
  sub_E1E8(v70, v90, &qword_56D90, &qword_41740);
  v76 = v91;
  sub_E1E8(v73, v91, &qword_56D90, &qword_41740);
  v77 = sub_4FF4(&qword_56DD8, &qword_41838);
  sub_E1E8(v75, v76 + *(v77 + 48), &qword_56D90, &qword_41740);
  sub_11A14(v74, &qword_56D90, &qword_41740);
  sub_11A14(v72, &qword_56D90, &qword_41740);
  sub_11A14(v75, &qword_56D90, &qword_41740);
  sub_11A14(v73, &qword_56D90, &qword_41740);
  v78 = v96;
  sub_17214(v76, v96, &qword_56D80, &qword_41730);
  v63 = 0;
  a2 = v94;
LABEL_11:
  (*(v98 + 56))(v78, v63, 1, v99);
  v79 = v95;
  sub_E1E8(v62, v95, &qword_56DA0, &qword_41750);
  v80 = v97;
  sub_E1E8(v78, v97, &qword_56D98, &qword_41748);
  sub_E1E8(v79, a2, &qword_56DA0, &qword_41750);
  v81 = sub_4FF4(&qword_56DA8, &qword_417D0);
  sub_E1E8(v80, a2 + *(v81 + 48), &qword_56D98, &qword_41748);
  sub_11A14(v78, &qword_56D98, &qword_41748);
  sub_11A14(v62, &qword_56DA0, &qword_41750);
  sub_11A14(v80, &qword_56D98, &qword_41748);
  return sub_11A14(v79, &qword_56DA0, &qword_41750);
}

uint64_t sub_2EEE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_2EF68(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_2EFDC@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2F114@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2F21C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

id sub_2F2A4()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    MobileGestalt_get_quickNoteCapability();

    sub_4FF4(&qword_55B98, &qword_41840);
    sub_4FF4(&qword_56DC8, &qword_41808);
    sub_56BC(&qword_56DE0, &qword_55B98, &qword_41840);
    sub_56BC(&qword_56DC0, &qword_56DC8, &qword_41808);
    sub_2FB64();
    return sub_3D2B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2F40C(char *a1)
{
  v2 = *a1;
  sub_4FF4(&qword_56DF0, &qword_41848);
  sub_5D34();
  sub_2FBB8();
  return sub_3C9D4();
}

uint64_t sub_2F498()
{
  v0 = sub_59F0();
  v2 = v1;
  v4 = v3 & 1;
  sub_3D074();

  sub_BAF8(v0, v2, v4);
}

uint64_t sub_2F58C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2F66C(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  type metadata accessor for CornerGesturesSectionViewModel();
  sub_2FC74(&qword_56D70, type metadata accessor for CornerGesturesSectionViewModel);
  v11 = sub_3C994();
  v12 = *a1;
  v21 = *a1;
  v22 = *(a1 + 8);
  LOBYTE(a1) = v22;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v13 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v21, &qword_55F08, &qword_3F140);
    (*(v3 + 8))(v7, v2);
    v12 = v20;
  }

  swift_getKeyPath();
  v20 = v12;
  sub_2FC74(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel);
  sub_3C804();

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);

  v16 = (v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer);
  v17 = *(v11 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer + 8);
  *v16 = v15;
  v16[1] = v14;
}

uint64_t sub_2F8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_2E074(a1);
}

uint64_t sub_2F928()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_E1D8();
  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2F994@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3CC24();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2FA64()
{
  result = qword_56DB8;
  if (!qword_56DB8)
  {
    sub_5674(&qword_56DB0, &qword_41800);
    sub_56BC(&qword_56DC0, &qword_56DC8, &qword_41808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DB8);
  }

  return result;
}

unint64_t sub_2FB64()
{
  result = qword_56DE8;
  if (!qword_56DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DE8);
  }

  return result;
}

unint64_t sub_2FBB8()
{
  result = qword_56DF8;
  if (!qword_56DF8)
  {
    sub_5674(&qword_56DF0, &qword_41848);
    sub_2FC74(&qword_55DE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56DF8);
  }

  return result;
}

uint64_t sub_2FC74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2FCDC()
{
  result = qword_56E00;
  if (!qword_56E00)
  {
    sub_5674(&qword_56D60, &unk_416E0);
    sub_2FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56E00);
  }

  return result;
}

unint64_t sub_2FD68()
{
  result = qword_56E08;
  if (!qword_56E08)
  {
    sub_5674(&qword_56E10, &unk_41890);
    sub_56BC(&qword_56D58, &qword_56D50, &qword_416D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56E08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiTaskingWindowType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiTaskingWindowType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2FF80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656D695441;
  v3 = 0x7441707041656E6FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x6E614D6567617473;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000000042560;
    }

    else
    {
      v6 = 0xEC00000072656761;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x694D6E6565726373;
    }

    else
    {
      v5 = 0x7441707041656E6FLL;
    }

    if (v4)
    {
      v6 = 0xEF676E69726F7272;
    }

    else
    {
      v6 = 0xED0000656D695441;
    }
  }

  v7 = 0xD000000000000012;
  v8 = 0x8000000000042560;
  if (a2 != 2)
  {
    v7 = 0x6E614D6567617473;
    v8 = 0xEC00000072656761;
  }

  if (a2)
  {
    v3 = 0x694D6E6565726373;
    v2 = 0xEF676E69726F7272;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3D804();
  }

  return v11 & 1;
}

uint64_t sub_300F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x666153206E65704FLL;
    v10 = 0xEB00000000697261;
    if (a1 != 6)
    {
      v9 = 0x6E7275746572;
      v10 = 0xE600000000000000;
    }

    v11 = 0x8000000000042430;
    v12 = 0xD000000000000018;
    if (a1 != 4)
    {
      v12 = 0xD000000000000019;
      v11 = 0x8000000000042450;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x73654D206E65704FLL;
    v5 = 0xED00007365676173;
    if (a1 != 2)
    {
      v4 = 0xD000000000000019;
      v5 = 0x8000000000042410;
    }

    v6 = 0xD000000000000016;
    if (a1)
    {
      v3 = 0x80000000000423E0;
    }

    else
    {
      v6 = 0x7472617473;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0x80000000000423E0;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x7472617473)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v13 = 0xED00007365676173;
      if (v7 != 0x73654D206E65704FLL)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = "Fixing Anchor Position 01";
LABEL_42:
    v13 = (v14 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000019)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x8000000000042430;
      if (v7 != 0xD000000000000018)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = "Fixing Anchor Position 02";
    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v13 = 0xEB00000000697261;
    if (v7 != 0x666153206E65704FLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x6E7275746572)
    {
LABEL_47:
      v15 = sub_3D804();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

Swift::Int sub_303AC()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_30494()
{
  *v0;
  *v0;
  *v0;
  sub_3D524();
}

Swift::Int sub_30568()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_3064C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_30778(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_3067C(unint64_t *a1@<X8>)
{
  v2 = 0xED0000656D695441;
  v3 = 0x7441707041656E6FLL;
  v4 = 0x8000000000042560;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x6E614D6567617473;
    v4 = 0xEC00000072656761;
  }

  if (*v1)
  {
    v3 = 0x694D6E6565726373;
    v2 = 0xEF676E69726F7272;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_30724()
{
  result = qword_56E18;
  if (!qword_56E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56E18);
  }

  return result;
}

uint64_t sub_30778(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_52190;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_307C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_30838()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v19[-v5];
  v7 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel__shakeToUndoEnabled;
  v19[15] = _AXSShakeToUndoDisabled() == 0;
  sub_3C874();
  (*(v8 + 32))(v1 + v13, v12, v7);
  v14 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer);
  v15 = sub_3D5B4();
  *v14 = 0;
  v14[1] = 0;
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_3D594();

  v16 = sub_3D584();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v1;
  sub_1E9E0(0, 0, v6, &unk_419D8, v17);

  return v1;
}

uint64_t sub_30A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_30C8C, v18, v17);
}

uint64_t sub_30C8C()
{
  v1 = v0[14];
  v15 = v0[13];
  v16 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v14 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer;
  v9 = v0[18];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_30EF0;
  v12 = v0[17];

  return sub_1C864(v10, &protocol witness table for MainActor);
}

uint64_t sub_30EF0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_31008, v7, v8);
  }

  return result;
}

uint64_t sub_31008()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    _AXSSetShakeToUndoDisabled();
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v9 = (*(v0 + 40) + *(v0 + 176));
    v11 = *v9;
    v10 = v9[1];

    sub_1BCA0(4u, v1 & 1, v11, v10);

    v12 = *(v0 + 144);
    v13 = sub_3D584();
    *(v0 + 184) = v13;
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_30EF0;
    v15 = *(v0 + 136);

    return sub_1C864(v13, &protocol witness table for MainActor);
  }
}

uint64_t sub_311F0()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel__shakeToUndoEnabled;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings27ShakeToUndoSectionViewModel_referrer + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for ShakeToUndoSectionViewModel()
{
  result = qword_56E50;
  if (!qword_56E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31300()
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_31398()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_313D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_30A44(a1, v4, v5, v6);
}

void sub_31494(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize] == 0.0 && *&v2[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8] == 0.0)
  {
    v5.receiver = v2;
    v5.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v5, "sizeThatFits:", a1, a2);
  }

  else
  {
    sub_32848(140.0);
  }
}

void sub_3154C()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer;
  v2 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer];
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package];
  if (v3)
  {
    v15 = v3;
    v4 = [v15 rootLayer];
    if (v4)
    {
      v5 = v4;
      [v4 setGeometryFlipped:{objc_msgSend(v15, "isGeometryFlipped")}];
      [v5 setContentsGravity:kCAGravityResizeAspect];
      [v5 setMasksToBounds:1];
      [v5 setFillMode:kCAFillModeBackwards];
      v6 = *&v0[v1];
      *&v0[v1] = v5;
      v7 = v5;

      [v7 frame];
      v9 = v8;
      v11 = v10;

      v12 = &v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
      *v12 = v9;
      *(v12 + 1) = v11;
      v13 = [v0 layer];
      [v13 addSublayer:v7];

      [v0 layoutIfNeeded];
      v14 = v7;
    }

    else
    {
      v14 = v15;
    }
  }
}

void sub_31700(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState;
  v4 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState);
  if (!(v4 >> 6))
  {
    if (a1 < 0x40u && (sub_300F4(v4, a1) & 1) != 0)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v4 >> 6 != 1)
  {
    if ((a1 & 0xC0) != 0x80)
    {
      goto LABEL_37;
    }

    if ((v4 & 0x3F) != 0)
    {
      if ((v4 & 0x3F) == 1)
      {
        v8 = 0x73654D2070617753;
        v9 = 0xED00007365676173;
      }

      else
      {
        v9 = 0xE600000000000000;
        v8 = 0x6E7275746572;
      }
    }

    else
    {
      v9 = 0xE500000000000000;
      v8 = 0x7472617473;
    }

    v11 = 0x73654D2070617753;
    v12 = 0xED00007365676173;
    if ((a1 & 0x3F) != 1)
    {
      v11 = 0x6E7275746572;
      v12 = 0xE600000000000000;
    }

    if ((a1 & 0x3F) != 0)
    {
      v5 = v11;
    }

    else
    {
      v5 = 0x7472617473;
    }

    if ((a1 & 0x3F) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    goto LABEL_31;
  }

  if ((a1 & 0xC0) != 0x40)
  {
    goto LABEL_37;
  }

  v5 = 0x7472617473;
  v6 = v4 & 0x3F;
  v7 = a1 & 0x3F;
  if (v6 > 5)
  {
    if ((v4 & 0x3F) > 8)
    {
      if (v6 != 9)
      {
        if (v6 == 10)
        {
          v8 = 0xD000000000000014;
          v9 = 0x80000000000424F0;
          if ((a1 & 0x3Fu) <= 5)
          {
            goto LABEL_66;
          }

          goto LABEL_76;
        }

        v9 = 0xE600000000000000;
        v8 = 0x6E7275746572;
        if ((a1 & 0x3Fu) > 5)
        {
          goto LABEL_76;
        }

        goto LABEL_66;
      }

      v10 = 1702260557;
    }

    else
    {
      if (v6 == 6)
      {
        v9 = 0x80000000000424B0;
        v8 = 0xD000000000000015;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }

        goto LABEL_76;
      }

      if (v6 != 7)
      {
        v8 = 0x4D20657A69736552;
        v9 = 0xEF73656761737365;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }

        goto LABEL_76;
      }

      v10 = 1852141647;
    }

    v8 = v10 | 0x73654D2000000000;
    v9 = 0xED00007365676173;
    if ((a1 & 0x3Fu) <= 5)
    {
      goto LABEL_66;
    }

    goto LABEL_76;
  }

  if ((v4 & 0x3F) <= 2)
  {
    if ((v4 & 0x3F) != 0)
    {
      if (v6 == 1)
      {
        v8 = 0x6F48206570697753;
        v9 = 0xEA0000000000656DLL;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v9 = 0x8000000000042410;
        v8 = 0xD000000000000019;
        if ((a1 & 0x3Fu) <= 5)
        {
          goto LABEL_66;
        }
      }
    }

    else
    {
      v9 = 0xE500000000000000;
      v8 = 0x7472617473;
      if ((a1 & 0x3Fu) <= 5)
      {
        goto LABEL_66;
      }
    }

LABEL_76:
    if ((a1 & 0x3Fu) > 8)
    {
      if (v7 != 9)
      {
        if (v7 == 10)
        {
          v5 = 0xD000000000000014;
          v13 = 0x80000000000424F0;
        }

        else
        {
          v13 = 0xE600000000000000;
          v5 = 0x6E7275746572;
        }

        goto LABEL_31;
      }

      v23 = 1702260557;
    }

    else
    {
      if (v7 == 6)
      {
        v13 = 0x80000000000424B0;
        v5 = 0xD000000000000015;
        goto LABEL_31;
      }

      if (v7 != 7)
      {
        v5 = 0x4D20657A69736552;
        v13 = 0xEF73656761737365;
        goto LABEL_31;
      }

      v23 = 1852141647;
    }

    v5 = v23 | 0x73654D2000000000;
    v13 = 0xED00007365676173;
    goto LABEL_31;
  }

  if (v6 == 3)
  {
    v21 = 1852141647;
  }

  else
  {
    if (v6 == 4)
    {
      v8 = 0x5320657A69736552;
      v9 = 0xED00006972616661;
      if ((a1 & 0x3Fu) <= 5)
      {
        goto LABEL_66;
      }

      goto LABEL_76;
    }

    v21 = 1702260557;
  }

  v8 = v21 | 0x6661532000000000;
  v9 = 0xEB00000000697261;
  if ((a1 & 0x3Fu) > 5)
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((a1 & 0x3Fu) <= 2)
  {
    if ((a1 & 0x3F) != 0)
    {
      if (v7 == 1)
      {
        v5 = 0x6F48206570697753;
        v13 = 0xEA0000000000656DLL;
      }

      else
      {
        v13 = 0x8000000000042410;
        v5 = 0xD000000000000019;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    goto LABEL_31;
  }

  if (v7 == 3)
  {
    v22 = 1852141647;
  }

  else
  {
    if (v7 == 4)
    {
      v5 = 0x5320657A69736552;
      v13 = 0xED00006972616661;
      goto LABEL_31;
    }

    v22 = 1702260557;
  }

  v5 = v22 | 0x6661532000000000;
  v13 = 0xEB00000000697261;
LABEL_31:
  if (v8 == v5 && v9 == v13)
  {

    return;
  }

  v14 = sub_3D804();

  if (v14)
  {
    return;
  }

LABEL_37:
  v15 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer;
  v16 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer);
  if (v16)
  {
    sub_191D0(*(v1 + v3));
    v17 = v16;
    v18 = sub_3D4C4();

    v24 = [v17 stateWithName:v18];

    if (v24)
    {
      v20 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController);
      if (v20)
      {
        LODWORD(v19) = 1.0;
        [v20 setState:v24 ofLayer:*(v1 + v15) transitionSpeed:v19];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_31CD4(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController] = 0;
  *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package] = 0;
  *&v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer] = 0;
  v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState] = a1;
  v9 = &v3[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageURLFactory];
  *v9 = a2;
  v9[1] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_31DB4();

  return v10;
}

void sub_31DB4()
{
  v1 = v0;
  v2 = sub_3C7C4();
  v3 = *(v2 - 8);
  v53 = v2;
  v54 = v3;
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v10 = &v48 - v9;
  v11 = sub_3CA94();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3C964();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v0 traitCollection];
  v23 = [v22 userInterfaceStyle];

  v49 = v17;
  v24 = *(v17 + 104);
  v25 = &enum case for ColorScheme.dark(_:);
  if (v23 != &dword_0 + 2)
  {
    v25 = &enum case for ColorScheme.light(_:);
  }

  v26 = *v25;
  v50 = v16;
  v24(v21, v26, v16);
  v27 = v51;
  v28 = v1;
  v29 = [v1 traitCollection];
  v30 = [v29 layoutDirection];

  v31 = &enum case for LayoutDirection.leftToRight(_:);
  v32 = v30 == 0;
  v33 = v53;
  v34 = v54;
  if (!v32)
  {
    v31 = &enum case for LayoutDirection.rightToLeft(_:);
  }

  (*(v27 + 104))(v15, *v31, v11);
  v35 = *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageURLFactory + 8];
  (*&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageURLFactory])(v21, v15);
  sub_327FC();
  v36 = v52;
  (*(v34 + 16))(v52, v10, v33);
  v37 = sub_3D4F4();
  v39 = sub_325A0(v36, v37, v38, 0);
  if (!v39)
  {
    goto LABEL_11;
  }

  v52 = v11;
  v40 = *&v28[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package];
  *&v28[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_package] = v39;
  v41 = v39;

  sub_3154C();
  v42 = *&v28[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer];
  if (!v42)
  {

    goto LABEL_10;
  }

  v43 = objc_allocWithZone(CAStateController);
  v44 = v42;
  v45 = [v43 initWithLayer:v44];
  v46 = *&v28[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController];
  *&v28[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_stateController] = v45;
  v47 = v45;

  if (v47)
  {
    [v47 setInitialStatesOfLayer:v44];

    v34 = v54;
LABEL_10:
    v11 = v52;
LABEL_11:
    (*(v34 + 8))(v10, v33);
    (*(v27 + 8))(v15, v11);
    (*(v49 + 8))(v21, v50);
    return;
  }

  __break(1u);
}

void sub_32328()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_packageLayer];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 disableActions];
    [v3 setDisableActions:1];
    [v1 bounds];
    if (v7 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8] >= v6 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize])
    {
      v8 = v6 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
    }

    else
    {
      v8 = v7 / *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8];
    }

    [v4 setPosition:{v6 * 0.5, v7 * 0.5}];
    CATransform3DMakeScale(&v9, v8, v8, 1.0);
    [v4 setTransform:&v9];
    [v3 setDisableActions:v5];
  }
}

id sub_325A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3C794(__stack_chk_guard);
  v7 = v6;
  v8 = sub_3D4C4();

  if (a4)
  {
    v9.super.isa = sub_3D474().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = sub_3C7C4();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    sub_3C754();

    swift_willThrow();
    v16 = sub_3C7C4();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

unint64_t sub_327FC()
{
  result = qword_56F38;
  if (!qword_56F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_56F38);
  }

  return result;
}

double sub_32848(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  Height = CGRectGetHeight(v42);
  v13 = [v2 mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  if (Height >= CGRectGetWidth(v43))
  {
    v22 = [v2 mainScreen];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v44.origin.x = v24;
    v44.origin.y = v26;
    v44.size.width = v28;
    v44.size.height = v30;
    Width = CGRectGetWidth(v44);
    v32 = [v2 mainScreen];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v45.origin.x = v34;
    v45.origin.y = v36;
    v45.size.width = v38;
    v45.size.height = v40;
    return Width / CGRectGetHeight(v45) * a1;
  }

  return a1;
}

void sub_329D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3D4C4();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_572E8 = v2;
  }

  else
  {
    __break(1u);
  }
}