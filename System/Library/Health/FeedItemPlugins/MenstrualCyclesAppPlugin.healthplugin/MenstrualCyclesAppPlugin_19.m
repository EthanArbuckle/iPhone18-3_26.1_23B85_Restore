uint64_t sub_29E087E30()
{
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v1 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_29E087F0C;

  return sub_29E16C808(v1);
}

uint64_t sub_29E087F0C(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_29E088110;
  }

  else
  {

    *(v6 + 25) = a2;
    *(v6 + 64) = a1;
    v7 = sub_29E08804C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29E08804C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 25);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2 & 1;

  sub_29E2C1224();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E088110()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E088174()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel__sampleCount;
  sub_29E0883D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel__deliveryDate;
  sub_29E08BA48(0, &unk_2A181BA78, sub_29DEB3B00, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_29E0882C8()
{
  sub_29E0883D4();
  if (v0 <= 0x3F)
  {
    sub_29E08BA48(319, &unk_2A181BA78, sub_29DEB3B00, MEMORY[0x29EDB8B00]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29E0883D4()
{
  if (!qword_2A181BA68)
  {
    sub_29DF27598(255, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C1234();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BA68);
    }
  }
}

uint64_t sub_29E088478()
{
  result = sub_29E2BCC24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalLiveOnDevicesModel.Device.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InternalLiveOnDevicesModel.Device.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_29E08865C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_29E088678(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_29E0886B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E2BCC24();
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

    return (v10 + 1);
  }
}

uint64_t sub_29E088788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29E2BCC24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29E088844()
{
  result = sub_29E2BCC24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E088914@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalLiveOnStatisticsModel(0);
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

void sub_29E088954()
{
  if (!qword_2A181BAD0)
  {
    sub_29DFA3830();
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29E08B898(&qword_2A1A5EB20, sub_29DFA3830);
    sub_29DF4D6CC();
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BAD0);
    }
  }
}

void sub_29E088A20()
{
  if (!qword_2A181BAD8)
  {
    sub_29DF691DC();
    sub_29E08B898(&qword_2A1A5E728, sub_29DF691DC);
    v0 = sub_29E2C0FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BAD8);
    }
  }
}

void sub_29E088AB4()
{
  if (!qword_2A181BAE0)
  {
    sub_29E088A20();
    sub_29DE9408C(255, &qword_2A1A626C0);
    sub_29E08B898(&unk_2A181BAE8, sub_29E088A20);
    sub_29DF4D6CC();
    v0 = sub_29E2C0FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BAE0);
    }
  }
}

uint64_t sub_29E088BD0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();
  v3 = v2;
  return sub_29E2C1224();
}

uint64_t sub_29E088C58@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E088CD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();

  return sub_29E2C1224();
}

uint64_t sub_29E088D50@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_29E088DD8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_29E2C1224();
}

uint64_t sub_29E088E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();
}

uint64_t sub_29E088ED8(uint64_t a1)
{
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v9 - v6;
  sub_29E08BAAC(a1, &v9 - v6, sub_29DEB3B00);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E08BAAC(v7, v4, sub_29DEB3B00);

  sub_29E2C1224();
  return sub_29E08BB14(v7, sub_29DEB3B00);
}

void sub_29E089004(void **a1)
{
  v2 = *(type metadata accessor for InternalLiveOnDevicesModel.Device(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_29E146000(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_29E0890AC(v5);
  *a1 = v3;
}

void sub_29E0890AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_29E2C48C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        type metadata accessor for InternalLiveOnDevicesModel.Device(0);
        v6 = sub_29E2C3664();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for InternalLiveOnDevicesModel.Device(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_29E089468(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_29E0891D8(0, v2, 1, a1);
  }
}

void sub_29E0891D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
  MEMORY[0x2A1C7C4A8](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v27 - v11;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = v17;
    v28 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    while (1)
    {
      sub_29E08BAAC(v22, v16, type metadata accessor for InternalLiveOnDevicesModel.Device);
      sub_29E08BAAC(v19, v12, type metadata accessor for InternalLiveOnDevicesModel.Device);
      v23 = *(v35 + 20);
      v24 = v16[v23];
      if (v24 != 2 && (v24 & 1) == 0)
      {
        sub_29E08BB14(v12, type metadata accessor for InternalLiveOnDevicesModel.Device);
        sub_29E08BB14(v16, type metadata accessor for InternalLiveOnDevicesModel.Device);
LABEL_5:
        a3 = v33 + 1;
        v19 = v32 + v28;
        v21 = v31 - 1;
        v22 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_6;
      }

      v25 = v12[v23];
      sub_29E08BB14(v12, type metadata accessor for InternalLiveOnDevicesModel.Device);
      sub_29E08BB14(v16, type metadata accessor for InternalLiveOnDevicesModel.Device);
      if (v25 == 2 || (v25 & 1) != 0)
      {
        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_29E08B9E0(v22, v9, type metadata accessor for InternalLiveOnDevicesModel.Device);
      swift_arrayInitWithTakeFrontToBack();
      sub_29E08B9E0(v9, v19, type metadata accessor for InternalLiveOnDevicesModel.Device);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_29E089468(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v140 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
  MEMORY[0x2A1C7C4A8](v140);
  v131 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v139 = &v121 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v141 = &v121 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v121 - v15;
  MEMORY[0x2A1C7C4A8](v17);
  v138 = &v121 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v137 = &v121 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v122 = &v121 - v22;
  MEMORY[0x2A1C7C4A8](v23);
  v125 = &v121 - v24;
  v25 = *(a3 + 1);
  v134 = v26;
  if (v25 < 1)
  {
    v28 = MEMORY[0x29EDCA190];
LABEL_105:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v134;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_107:
      v142 = v28;
      v115 = *(v28 + 16);
      if (v115 >= 2)
      {
        do
        {
          v116 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          v117 = a3;
          v118 = v28;
          v28 = *(v28 + 16 * v115);
          a3 = v118;
          v119 = *&v118[16 * v115 + 24];
          sub_29E089ED0(v116 + *(v29 + 72) * v28, v116 + *(v29 + 72) * *&v118[16 * v115 + 16], v116 + *(v29 + 72) * v119, v5);
          if (v6)
          {
            break;
          }

          if (v119 < v28)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_29E14D410(a3);
          }

          if (v115 - 2 >= *(a3 + 2))
          {
            goto LABEL_131;
          }

          v120 = &a3[16 * v115];
          *v120 = v28;
          v120[1] = v119;
          v142 = a3;
          sub_29E14D384(v115 - 1);
          v28 = v142;
          v115 = *(v142 + 16);
          a3 = v117;
        }

        while (v115 > 1);
      }

LABEL_115:

      return;
    }

LABEL_137:
    v28 = sub_29E14D410(v28);
    goto LABEL_107;
  }

  v121 = a4;
  v27 = 0;
  v28 = MEMORY[0x29EDCA190];
  v128 = a3;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if ((v27 + 1) < v25)
    {
      v132 = v25;
      v31 = *a3;
      v32 = *(v134 + 72);
      v33 = v27;
      v34 = v125;
      sub_29E08BAAC(v31 + v32 * v30, v125, type metadata accessor for InternalLiveOnDevicesModel.Device);
      v127 = v33;
      v135 = v32;
      v35 = v31 + v32 * v33;
      v36 = v122;
      sub_29E08BAAC(v35, v122, type metadata accessor for InternalLiveOnDevicesModel.Device);
      v37 = *(v140 + 20);
      v38 = *(v34 + v37);
      v124 = v6;
      if (v38 == 2 || (v38 & 1) != 0)
      {
        LODWORD(v133) = (*(v36 + v37) != 2) & (*(v36 + v37) ^ 1);
      }

      else
      {
        LODWORD(v133) = 0;
      }

      v123 = v28;
      sub_29E08BB14(v36, type metadata accessor for InternalLiveOnDevicesModel.Device);
      sub_29E08BB14(v125, type metadata accessor for InternalLiveOnDevicesModel.Device);
      v39 = (v127 + 2);
      v40 = v135 * (v127 + 2);
      v5 = v31 + v40;
      v41 = v135 * v30;
      v42 = v31 + v135 * v30;
      v6 = v140;
      do
      {
        a3 = v39;
        v46 = v30;
        v28 = v41;
        v29 = v40;
        if (v39 >= v132)
        {
          break;
        }

        v136 = v39;
        v47 = v16;
        v48 = v137;
        sub_29E08BAAC(v5, v137, type metadata accessor for InternalLiveOnDevicesModel.Device);
        sub_29E08BAAC(v42, v138, type metadata accessor for InternalLiveOnDevicesModel.Device);
        v49 = *(v6 + 20);
        v50 = *(v48 + v49);
        if (v50 == 2 || (v50 & 1) != 0)
        {
          v43 = v138;
          v44 = (*(v138 + v49) == 2) | *(v138 + v49);
        }

        else
        {
          v44 = 1;
          v43 = v138;
        }

        v16 = v47;
        sub_29E08BB14(v43, type metadata accessor for InternalLiveOnDevicesModel.Device);
        sub_29E08BB14(v137, type metadata accessor for InternalLiveOnDevicesModel.Device);
        v45 = v133 ^ v44;
        a3 = v136;
        v39 = v136 + 1;
        v5 += v135;
        v42 += v135;
        ++v30;
        v41 = v28 + v135;
        v40 = v29 + v135;
        v6 = v140;
      }

      while ((v45 & 1) != 0);
      if (v133)
      {
        if (a3 < v127)
        {
          goto LABEL_134;
        }

        if (v127 >= a3)
        {
          v30 = a3;
          v28 = v123;
          v6 = v124;
          a3 = v128;
          v29 = v127;
          goto LABEL_32;
        }

        v51 = v127 * v135;
        v52 = v127;
        do
        {
          if (v52 != v46)
          {
            v5 = *v128;
            if (!*v128)
            {
              goto LABEL_140;
            }

            v136 = (v5 + v51);
            sub_29E08B9E0(v5 + v51, v131, type metadata accessor for InternalLiveOnDevicesModel.Device);
            if (v51 < v28 || v136 >= v5 + v29)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_29E08B9E0(v131, v5 + v28, type metadata accessor for InternalLiveOnDevicesModel.Device);
          }

          ++v52;
          v28 -= v135;
          v29 -= v135;
          v51 += v135;
        }

        while (v52 < v46--);
      }

      v30 = a3;
      v28 = v123;
      v6 = v124;
      v29 = v127;
      a3 = v128;
    }

LABEL_32:
    v54 = *(a3 + 1);
    if (v30 < v54)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_133;
      }

      if (&v30[-v29] < v121)
      {
        break;
      }
    }

LABEL_54:
    if (v30 < v29)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_29E143B40(0, *(v28 + 16) + 1, 1, v28);
    }

    v68 = *(v28 + 16);
    v67 = *(v28 + 24);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v28 = sub_29E143B40((v67 > 1), v68 + 1, 1, v28);
    }

    *(v28 + 16) = v69;
    v70 = v28 + 16 * v68;
    *(v70 + 32) = v29;
    *(v70 + 40) = v30;
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_142;
    }

    v136 = v30;
    if (v68)
    {
      while (1)
      {
        v71 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v28 + 32);
          v73 = *(v28 + 40);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_74:
          if (v75)
          {
            goto LABEL_121;
          }

          v88 = (v28 + 16 * v69);
          v90 = *v88;
          v89 = v88[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_124;
          }

          v94 = (v28 + 32 + 16 * v71);
          v96 = *v94;
          v95 = v94[1];
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_128;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v69 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v98 = (v28 + 16 * v69);
        v100 = *v98;
        v99 = v98[1];
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_88:
        if (v93)
        {
          goto LABEL_123;
        }

        v101 = v28 + 16 * v71;
        v103 = *(v101 + 32);
        v102 = *(v101 + 40);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_126;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_95:
        v109 = v71 - 1;
        if (v71 - 1 >= v69)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_136;
        }

        v110 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v29 = a3;
        a3 = v28;
        v111 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v109);
        v112 = *(v111 + 16 * v71 + 8);
        sub_29E089ED0(v110 + *(v134 + 72) * v28, v110 + *(v134 + 72) * *(v111 + 16 * v71), v110 + *(v134 + 72) * v112, v5);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v112 < v28)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_29E14D410(a3);
        }

        if (v109 >= *(a3 + 2))
        {
          goto LABEL_118;
        }

        v113 = &a3[16 * v109];
        *(v113 + 4) = v28;
        *(v113 + 5) = v112;
        v142 = a3;
        sub_29E14D384(v71);
        v28 = v142;
        v69 = *(v142 + 16);
        a3 = v29;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = v28 + 32 + 16 * v69;
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_119;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_120;
      }

      v83 = (v28 + 16 * v69);
      v85 = *v83;
      v84 = v83[1];
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_122;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_125;
      }

      if (v87 >= v79)
      {
        v105 = (v28 + 32 + 16 * v71);
        v107 = *v105;
        v106 = v105[1];
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_129;
        }

        if (v74 < v108)
        {
          v71 = v69 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v25 = *(a3 + 1);
    v27 = v136;
    if (v136 >= v25)
    {
      goto LABEL_105;
    }
  }

  v55 = (v29 + v121);
  if (__OFADD__(v29, v121))
  {
    goto LABEL_135;
  }

  if (v55 >= v54)
  {
    v55 = *(a3 + 1);
  }

  if (v55 < v29)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v30 == v55)
  {
    goto LABEL_54;
  }

  v123 = v28;
  v124 = v6;
  v56 = *a3;
  v57 = *(v134 + 72);
  v58 = *a3 + v57 * (v30 - 1);
  v59 = -v57;
  v127 = v29;
  v60 = v29 - v30;
  v129 = v57;
  v130 = v55;
  v5 = v56 + v30 * v57;
  v61 = v140;
LABEL_43:
  v135 = v58;
  v136 = v30;
  v132 = v5;
  v133 = v60;
  while (1)
  {
    sub_29E08BAAC(v5, v16, type metadata accessor for InternalLiveOnDevicesModel.Device);
    sub_29E08BAAC(v58, v141, type metadata accessor for InternalLiveOnDevicesModel.Device);
    v62 = *(v61 + 20);
    v63 = v16[v62];
    if (v63 != 2 && (v63 & 1) == 0)
    {
      sub_29E08BB14(v141, type metadata accessor for InternalLiveOnDevicesModel.Device);
      sub_29E08BB14(v16, type metadata accessor for InternalLiveOnDevicesModel.Device);
LABEL_42:
      v30 = v136 + 1;
      v58 = v135 + v129;
      v60 = v133 - 1;
      v5 = v132 + v129;
      if (v136 + 1 == v130)
      {
        v30 = v130;
        v28 = v123;
        v6 = v124;
        v29 = v127;
        a3 = v128;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v64 = *(v141 + v62);
    sub_29E08BB14(v141, type metadata accessor for InternalLiveOnDevicesModel.Device);
    sub_29E08BB14(v16, type metadata accessor for InternalLiveOnDevicesModel.Device);
    if (v64 == 2 || (v64 & 1) != 0)
    {
      v61 = v140;
      goto LABEL_42;
    }

    if (!v56)
    {
      break;
    }

    v65 = v139;
    sub_29E08B9E0(v5, v139, type metadata accessor for InternalLiveOnDevicesModel.Device);
    v61 = v140;
    swift_arrayInitWithTakeFrontToBack();
    sub_29E08B9E0(v65, v58, type metadata accessor for InternalLiveOnDevicesModel.Device);
    v58 += v59;
    v5 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_29E089ED0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
  MEMORY[0x2A1C7C4A8](v49);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v48 = &v43 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v43 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v43 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_69;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v21 = (a2 - a1) / v19;
  v52 = a1;
  v51 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v23;
    if (v23 < 1)
    {
      v31 = a4 + v23;
    }

    else
    {
      v29 = -v19;
      v30 = a4 + v23;
      v31 = v28;
      v45 = a4;
      do
      {
        v43 = v31;
        v32 = a2;
        v33 = a2 + v29;
        v46 = v32;
        v47 = v33;
        while (1)
        {
          if (v32 <= a1)
          {
            v52 = v32;
            v50 = v43;
            goto LABEL_67;
          }

          v35 = a3;
          v44 = v31;
          v36 = v29;
          v37 = v30 + v29;
          v38 = v48;
          sub_29E08BAAC(v37, v48, type metadata accessor for InternalLiveOnDevicesModel.Device);
          sub_29E08BAAC(v33, v9, type metadata accessor for InternalLiveOnDevicesModel.Device);
          v39 = *(v49 + 20);
          v40 = *(v38 + v39);
          if (v40 == 2 || (v40 & 1) != 0)
          {
            v41 = v9;
            v42 = (v9[v39] != 2) & (v9[v39] ^ 1);
          }

          else
          {
            v41 = v9;
            v42 = 0;
          }

          a3 += v36;
          v9 = v41;
          sub_29E08BB14(v41, type metadata accessor for InternalLiveOnDevicesModel.Device);
          sub_29E08BB14(v48, type metadata accessor for InternalLiveOnDevicesModel.Device);
          if (v42)
          {
            break;
          }

          v31 = v37;
          if (v35 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v47;
          }

          else
          {
            v33 = v47;
            if (v35 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v32 = v46;
          v34 = v37 > v45;
          v29 = v36;
          if (!v34)
          {
            a2 = v46;
            goto LABEL_66;
          }
        }

        if (v35 < v46 || a3 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v44;
          v29 = v36;
        }

        else
        {
          a2 = v47;
          v31 = v44;
          v29 = v36;
          if (v35 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v30 > v45);
    }

LABEL_66:
    v52 = a2;
    v50 = v31;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v22;
    v50 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_29E08BAAC(a2, v17, type metadata accessor for InternalLiveOnDevicesModel.Device);
        sub_29E08BAAC(a4, v14, type metadata accessor for InternalLiveOnDevicesModel.Device);
        v25 = *(v49 + 20);
        v26 = v17[v25];
        if (v26 != 2 && (v26 & 1) == 0)
        {
          break;
        }

        v27 = v14[v25];
        sub_29E08BB14(v14, type metadata accessor for InternalLiveOnDevicesModel.Device);
        sub_29E08BB14(v17, type metadata accessor for InternalLiveOnDevicesModel.Device);
        if (v27 == 2 || (v27 & 1) != 0)
        {
          goto LABEL_29;
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_37:
        a1 += v19;
        v52 = a1;
        if (a4 >= v48 || a2 >= a3)
        {
          goto LABEL_67;
        }
      }

      sub_29E08BB14(v14, type metadata accessor for InternalLiveOnDevicesModel.Device);
      sub_29E08BB14(v17, type metadata accessor for InternalLiveOnDevicesModel.Device);
LABEL_29:
      if (a1 < a4 || a1 >= a4 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = a4 + v19;
      a4 += v19;
      goto LABEL_37;
    }
  }

LABEL_67:
  sub_29E08A48C(&v52, &v51, &v50, type metadata accessor for InternalLiveOnDevicesModel.Device);
}

uint64_t sub_29E08A48C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_29E08A574(uint64_t a1, uint64_t a2)
{
  if (_s24MenstrualCyclesAppPlugin34ReviewPregnancyInMedicalIDUserDataV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for InternalLiveOnRequirement(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && ((v7 = v4, v8 = *(v4 + 24), v9 = *(a1 + v8), v10 = *(a1 + v8 + 8), v11 = (a2 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), (v12 || (sub_29E2C4914()) && ((v13 = *(v7 + 28), v14 = *(a1 + v13), v15 = *(a1 + v13 + 8), v16 = (a2 + v13), v14 == *v16) ? (v17 = v15 == v16[1]) : (v17 = 0), v17 || (sub_29E2C4914())))
  {
    v5 = *(a1 + *(v7 + 32)) ^ *(a2 + *(v7 + 32)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_29E08A6DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DE9657C;

  return sub_29E087E10(a1, v4, v5, v6);
}

uint64_t sub_29E08A790(void *a1)
{
  v2 = type metadata accessor for InternalLiveOnRequirement(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x29EDCA190];
  sub_29E1818F8(0, 4, 0);
  v6 = v20;
  v19 = byte_2A24AF058;
  sub_29E086CBC(a1, &v19, v5);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_29E1818F8(v7 > 1, v8 + 1, 1);
    v6 = v20;
  }

  *(v6 + 16) = v8 + 1;
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  sub_29E08B9E0(v5, v6 + v9 + v10 * v8, type metadata accessor for InternalLiveOnRequirement);
  v19 = byte_2A24AF059;
  sub_29E086CBC(a1, &v19, v5);
  v20 = v6;
  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_29E1818F8(v11 > 1, v12 + 1, 1);
    v6 = v20;
  }

  *(v6 + 16) = v12 + 1;
  sub_29E08B9E0(v5, v6 + v9 + v10 * v12, type metadata accessor for InternalLiveOnRequirement);
  v19 = byte_2A24AF05A;
  sub_29E086CBC(a1, &v19, v5);
  v20 = v6;
  v14 = *(v6 + 16);
  v13 = *(v6 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_29E1818F8(v13 > 1, v14 + 1, 1);
    v6 = v20;
  }

  *(v6 + 16) = v14 + 1;
  sub_29E08B9E0(v5, v6 + v9 + v10 * v14, type metadata accessor for InternalLiveOnRequirement);
  v19 = byte_2A24AF05B;
  sub_29E086CBC(a1, &v19, v5);
  v20 = v6;
  v16 = *(v6 + 16);
  v15 = *(v6 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_29E1818F8(v15 > 1, v16 + 1, 1);
    v6 = v20;
  }

  *(v6 + 16) = v16 + 1;
  sub_29E08B9E0(v5, v6 + v9 + v10 * v16, type metadata accessor for InternalLiveOnRequirement);
  return v6;
}

void *sub_29E08AA58()
{
  sub_29E08B970(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29E2BCC24();
  v4 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v57 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
  v56 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v55 = &v52 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v52 - v10;
  v12 = [objc_opt_self() sharedBehavior];
  if (!v12)
  {
    __break(1u);
    goto LABEL_50;
  }

  v13 = v12;
  v14 = [v12 currentDeviceName];
  if (!v14)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v15 = v14;
  v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v0 = v17;

  v54 = v13;
  v18 = [v13 currentOSBuild];
  if (!v18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v19 = v18;
  v20 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v22 = v21;

  sub_29E2BCC14();
  v23 = v60;
  v11[*(v60 + 20)] = 2;
  v24 = &v11[*(v23 + 24)];
  *v24 = v16;
  v24[1] = v0;
  v25 = &v11[*(v23 + 28)];
  *v25 = v20;
  v25[1] = v22;
  v26 = [objc_opt_self() sharedInstance];
  if (!v26)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v0 = v26;
  v27 = [v26 getAllDevices];

  if (!v27)
  {
LABEL_53:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_29DE9408C(0, &qword_2A181BB48);
  v28 = sub_29E2C3614();

  v62 = MEMORY[0x29EDCA190];
  if (v28 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v61 = v3;
    v53 = v11;
    if (i)
    {
      v30 = 0;
      v11 = (v4 + 8);
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x29ED80D70](v30, v28);
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v4 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v33 = sub_29E08B9A4();
        if (v33)
        {
          v34 = v57;
          v35 = v33;
          sub_29E2BCC04();

          v36 = sub_29E2BCBE4();
          (*v11)(v34, v58);
        }

        else
        {
          v36 = 0;
        }

        v37 = [v32 supportsCapability_];

        if (v37)
        {
          sub_29E2C4614();
          sub_29E2C4644();
          sub_29E2C4654();
          sub_29E2C4624();
        }

        else
        {
        }

        v3 = v61;
        ++v30;
        if (v4 == i)
        {
          v4 = v62;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v4 = MEMORY[0x29EDCA190];
LABEL_24:

    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      v28 = *(v4 + 16);
      if (!v28)
      {
        break;
      }

      goto LABEL_27;
    }

    v28 = sub_29E2C4484();
    if (!v28)
    {
      break;
    }

LABEL_27:
    v38 = 0;
    v39 = (v56 + 48);
    v40 = MEMORY[0x29EDCA190];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x29ED80D70](v38, v4);
      }

      else
      {
        if (v38 >= *(v4 + 16))
        {
          goto LABEL_44;
        }

        v41 = *(v4 + 8 * v38 + 32);
      }

      v42 = v41;
      v11 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v62 = v41;
      sub_29E08727C(&v62, v3);

      if ((*v39)(v3, 1, v60) == 1)
      {
        sub_29E08BB14(v3, sub_29E08B970);
      }

      else
      {
        v43 = v55;
        sub_29E08B9E0(v3, v55, type metadata accessor for InternalLiveOnDevicesModel.Device);
        sub_29E08B9E0(v43, v59, type metadata accessor for InternalLiveOnDevicesModel.Device);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_29E1446F8(0, v40[2] + 1, 1, v40);
        }

        v45 = v40[2];
        v44 = v40[3];
        if (v45 >= v44 >> 1)
        {
          v40 = sub_29E1446F8(v44 > 1, v45 + 1, 1, v40);
        }

        v40[2] = v45 + 1;
        sub_29E08B9E0(v59, v40 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45, type metadata accessor for InternalLiveOnDevicesModel.Device);
        v3 = v61;
      }

      ++v38;
      if (v11 == v28)
      {
        goto LABEL_48;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v40 = MEMORY[0x29EDCA190];
LABEL_48:

  sub_29E08BA48(0, &qword_2A181BB50, type metadata accessor for InternalLiveOnDevicesModel.Device, MEMORY[0x29EDC9E90]);
  v46 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_29E2CAB20;
  v48 = v47 + v46;
  v49 = v53;
  sub_29E08BAAC(v53, v48, type metadata accessor for InternalLiveOnDevicesModel.Device);
  v62 = v40;
  sub_29E2BF404();
  sub_29E089004(&v62);

  v50 = v62;
  v62 = v47;
  sub_29DFCBD58(v50);

  sub_29E08BB14(v49, type metadata accessor for InternalLiveOnDevicesModel.Device);
  return v62;
}

uint64_t sub_29E08B17C(void *a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_29E2C2B34();
  v27 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C2B54();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C2B74();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v23 - v14;
  sub_29DE9408C(0, &qword_2A1A626C0);
  v16 = sub_29E2C3CF4();
  sub_29E2C2B64();
  sub_29E2C2B94();
  v24 = *(v10 + 8);
  v24(v12, v9);
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v2;
  *(v17 + 24) = v18;
  aBlock[4] = sub_29E08B968;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B97C8;
  v19 = _Block_copy(aBlock);
  v20 = v2;
  v21 = v18;
  sub_29E2C2B44();
  v28 = MEMORY[0x29EDCA190];
  sub_29E08B898(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DF013C4();
  sub_29E08B898(&qword_2A1A626D0, sub_29DF013C4);
  sub_29E2C43F4();
  MEMORY[0x29ED804A0](v15, v8, v5, v19);
  _Block_release(v19);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
  v24(v15, v9);
}

uint64_t sub_29E08B554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_29E2C2B34();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2C2B54();
  v9 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v12 = sub_29E2C3CF4();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = v18;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_29E2C2B44();
  v20 = MEMORY[0x29EDCA190];
  sub_29E08B898(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29DF013C4();
  sub_29E08B898(&qword_2A1A626D0, sub_29DF013C4);
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t sub_29E08B850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E08B898(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E08B9A4()
{
  v0 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];

  return v0;
}

uint64_t sub_29E08B9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E08BA48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E08BAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E08BB14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E08BBA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v17[-v8];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  *a1 = v11;
  a1[1] = v13;
  v14 = *MEMORY[0x29EDC2380];
  v15 = sub_29E2BEEB4();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t type metadata accessor for MenstrualCyclesHighlightsSearchTileViewController()
{
  result = qword_2A1A610C0;
  if (!qword_2A1A610C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E08BEB8()
{
  v1 = qword_2A1A610D0;
  if (*(v0 + qword_2A1A610D0))
  {
    v2 = *(v0 + qword_2A1A610D0);
  }

  else
  {
    type metadata accessor for MenstrualCyclesHighlightsSearchTileViewModel();
    v2 = swift_allocObject();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_29E08BF1C()
{
  sub_29E08BEB8();
  type metadata accessor for MenstrualCyclesHighlightsSearchTileViewModel();
  sub_29E08C5B0();
  return sub_29E2BEEA4();
}

id sub_29E08BF64(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    *&a1[qword_2A1A610D0] = 0;
    v6 = a4;
    v7 = sub_29E2C33A4();
  }

  else
  {
    *&a1[qword_2A1A610D0] = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for MenstrualCyclesHighlightsSearchTileViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29E08C020(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_2A1A610D0] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MenstrualCyclesHighlightsSearchTileViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29E08C0B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesHighlightsSearchTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E08C130(uint64_t a1)
{
  v2 = v1;
  v33[0] = a1;
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = v33 - v14;
  v16 = [v2 navigationController];
  if (v16)
  {
    v17 = v16;
    sub_29E2BD664();
    sub_29E2C3BF4();
    sub_29E2C3314();
    (*(v9 + 16))(v11, v15, v8);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v18 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v9 + 8))(v15, v8);
    sub_29DFF9A94();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29E2CD7A0;
    *(v19 + 32) = sub_29E2BD684();
    *(v19 + 40) = v20;
    *(v19 + 48) = sub_29E2BD674();
    *(v19 + 56) = v21;
    v22 = objc_allocWithZone(sub_29E2BDFE4());
    v23 = sub_29E2BDFD4();
    [v17 pushViewController:v23 animated:1];
  }

  else
  {
    v24 = v3;
    sub_29E2C04B4();
    v25 = v2;
    v26 = sub_29E2C0504();
    v27 = sub_29E2C3A14();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136446210;
      v34[5] = swift_getObjectType();
      sub_29E08C568();
      v30 = sub_29E2C3424();
      v32 = sub_29DFAA104(v30, v31, v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29DE74000, v26, v27, "[%{public}s] attempted to push onto a non-existent navigation controller", v28, 0xCu);
      sub_29DE93B3C(v29);
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v28, -1, -1);
    }

    (*(v4 + 8))(v6, v24);
  }
}

unint64_t sub_29E08C568()
{
  result = qword_2A181BB58;
  if (!qword_2A181BB58)
  {
    type metadata accessor for MenstrualCyclesHighlightsSearchTileViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181BB58);
  }

  return result;
}

unint64_t sub_29E08C5B0()
{
  result = qword_2A181BB60;
  if (!qword_2A181BB60)
  {
    type metadata accessor for MenstrualCyclesHighlightsSearchTileViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181BB60);
  }

  return result;
}

id sub_29E08C604()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
  v2 = objc_allocWithZone(ObjectType);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18LocalSettingsModel_settingsManager] = v1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v3 = v1;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  sub_29DEB1E60();
  v5 = v4;
  v6 = sub_29E2C3CF4();
  [v3 addObserver:v5 queue:{v6, v8.receiver, v8.super_class}];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_29E08C7DC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

unint64_t sub_29E08C81C()
{
  result = qword_2A181BBE0;
  if (!qword_2A181BBE0)
  {
    type metadata accessor for LocalSettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181BBE0);
  }

  return result;
}

uint64_t sub_29E08C870(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 > 4)
  {
    if (a1 <= 8 || a1 == 9)
    {
      goto LABEL_11;
    }

LABEL_14:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (a1 <= 2 && a1 != 1 && a1 != 2)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_29E08CBEC(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14[-v9];
  if ((v8 - 3) >= 7)
  {
    if (v8 == 2 || v8 == 1)
    {
      sub_29E2C3314();
      (*(v4 + 16))(v6, v10, v3);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v12 = qword_2A1A67F80;
      sub_29E2BCC74();
      v13 = sub_29E2C3414();
      (*(v4 + 8))(v10, v3);
      return v13;
    }

    else
    {
      result = sub_29E2C4724();
      __break(1u);
    }
  }

  else
  {

    return sub_29E08D1FC(v8);
  }

  return result;
}

uint64_t sub_29E08CE7C(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 > 4)
  {
    if (a1 <= 8 || a1 == 9)
    {
      goto LABEL_11;
    }

LABEL_14:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (a1 <= 2 && a1 != 1 && a1 != 2)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_29E08D1FC(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  if (a1 > 4)
  {
    if (a1 <= 8 || a1 == 9)
    {
      goto LABEL_11;
    }

LABEL_14:
    result = sub_29E2C4724();
    __break(1u);
    return result;
  }

  if (a1 <= 2 && a1 != 1 && a1 != 2)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_29E08D578(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2FD210);
    type metadata accessor for HKMCCycleFactor(0);
    sub_29E2C4664();
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v1 = qword_29F3628F8[a1 - 1];
    sub_29DEED314();
    return MEMORY[0x29ED80220](*v1);
  }

  return result;
}

uint64_t sub_29E08D670(uint64_t a1)
{
  if ((a1 - 1) < 9)
  {
    return byte_29E2DC22C[a1 - 1];
  }

  sub_29E2C4584();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2FD210);
  type metadata accessor for HKMCCycleFactor(0);
  sub_29E2C4664();
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

id sub_29E08D744()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v15[-v6];
  v8 = [objc_opt_self() boldButton];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  v10 = sub_29E2C33A4();

  [v8 setTitle:v10 forState:0];

  v11 = qword_2A1A60ED8;
  v12 = v8;
  if (v11 != -1)
  {
    swift_once();
  }

  *&v15[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E2FD230);
  v13 = sub_29E2C33A4();

  [v12 setAccessibilityIdentifier_];

  return v12;
}

id sub_29E08DA28()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v15[-v6];
  v8 = [objc_opt_self() linkButton];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v9 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  v10 = sub_29E2C33A4();

  [v8 setTitle:v10 forState:0];

  v11 = qword_2A1A60ED8;
  v12 = v8;
  if (v11 != -1)
  {
    swift_once();
  }

  *&v15[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x696472616F626E4FLL, 0xEF70696B532E676ELL);
  v13 = sub_29E2C33A4();

  [v12 setAccessibilityIdentifier_];

  return v12;
}

_BYTE *sub_29E08DD14()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___reviewCycleFactorsViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___reviewCycleFactorsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___reviewCycleFactorsViewController);
  }

  else
  {
    sub_29DE9DC34(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_pinnedContentManager, v11);
    objc_allocWithZone(type metadata accessor for ReviewOngoingCycleFactorsViewController());

    v5 = v0;
    v6 = sub_29E1EBC70(v4, v11);
    v7 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate;
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate + 8] = *(v7 + 8);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v8 = *(v5 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_29E08DE0C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___ongoingCycleFactorsViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___ongoingCycleFactorsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___ongoingCycleFactorsViewController);
  }

  else
  {
    sub_29DE9DC34(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_pinnedContentManager, v12);
    objc_allocWithZone(type metadata accessor for AddOngoingCycleFactorsViewController());

    v5 = v0;
    sub_29E243954(v4, MEMORY[0x29EDCA190], MEMORY[0x29EDCA190], v12, 0, 0, 0);
    v7 = v6;
    v8 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate;
    swift_unknownObjectWeakLoadStrong();
    *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingFactorsViewController_delegate + 8] = *(v8 + 8);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v9 = *(v5 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_29E08DF1C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v63 - v11;
  v77.receiver = v0;
  v77.super_class = ObjectType;
  objc_msgSendSuper2(&v77, sel_viewDidLoad, v10);
  v13 = *(*(*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 48);
  sub_29E2C3314();
  v66 = v6;
  v67 = v8;
  v69 = v5;
  v71 = v4;
  if (v13)
  {
    v14 = *(v6 + 16);
    v73 = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v75 = v14;
    v14(v8, v12, v5);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v72 = v15;
    v65 = 0xD000000000000012;
    sub_29E2C3414();
    v16 = *(v6 + 8);
    v70 = v16;
    v64 = "MINDER_CANCEL_PROMPT";
    v17 = v69;
    v16(v12, v69);
    v68 = sub_29E2C33A4();

    sub_29E2C3314();
    v18 = v75;
    v75(v8, v12, v17);
    sub_29E2BCC74();
    sub_29E2C3414();
    v16(v12, v17);
    v19 = v68;
    v20 = sub_29E2C33A4();

    sub_29E05D654();
    v22 = v21;
    [v74 addBulletedListItemWithTitle:v19 description:v20 image:v21];
  }

  else
  {
    v23 = *(v6 + 16);
    v73 = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v75 = v23;
    v23(v8, v12, v5);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v24 = qword_2A1A67F80;
    v25 = qword_2A1A67F80;
    v65 = v24;
    v26 = v25;
    sub_29E2BCC74();
    v72 = v26;
    sub_29E2C3414();
    v27 = *(v6 + 8);
    v70 = v27;
    v28 = v69;
    v27(v12, v69);
    v68 = sub_29E2C33A4();

    sub_29E2C3314();
    v18 = v75;
    v75(v8, v12, v28);
    sub_29E2BCC74();
    sub_29E2C3414();
    v27(v12, v28);
    v19 = v68;
    v20 = sub_29E2C33A4();

    sub_29E05D654();
    v22 = v29;
    [v74 addBulletedListItemWithTitle:v19 description:v20 image:v29];
  }

  sub_29E2C3314();
  v30 = v67;
  v31 = v69;
  v18(v67, v12, v69);
  v32 = v18;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v33 = v72;
  v34 = v72;
  sub_29E2BCC74();
  v68 = v34;
  sub_29E2C3414();
  v35 = v66 + 8;
  v36 = v70;
  v70(v12, v31);
  v65 = sub_29E2C33A4();

  sub_29E2C3314();
  v32(v30, v12, v31);
  sub_29E2BCC74();
  sub_29E2C3414();
  v75 = v32;
  v66 = v35;
  v36(v12, v31);
  v37 = sub_29E2C33A4();

  v38 = objc_opt_self();
  v39 = sub_29E2C33A4();
  v40 = [v38 imageNamed:v39 inBundle:v68 compatibleWithTraitCollection:0];

  if (v40)
  {
    v41 = v65;
    [v74 addBulletedListItemWithTitle:v65 description:v37 image:v40];

    sub_29E2C3314();
    v65 = "EDING_ALERT_MESSAGE";
    v75(v30, v12, v31);
    v42 = v31;
    sub_29E2BCC74();
    v63 = v68;
    v64 = 0xD000000000000015;
    sub_29E2C3414();
    v43 = v31;
    v44 = v70;
    v70(v12, v43);
    v68 = sub_29E2C33A4();

    v45 = v74;
    sub_29E2C3314();
    v46 = v42;
    v75(v30, v12, v42);
    v47 = v12;
    v48 = v45;
    sub_29E2BCC74();
    v72 = v33;
    sub_29E2C3414();
    v44(v47, v46);
    v49 = sub_29E2C33A4();

    sub_29E05D544();
    v51 = v50;
    v52 = v68;
    [v48 addBulletedListItemWithTitle:v68 description:v49 image:v50];

    sub_29E08EA60();
    if (v53)
    {
      sub_29E2C3314();
      v75(v67, v47, v46);
      v54 = v63;
      sub_29E2BCC74();
      sub_29E2C3414();
      v70(v47, v46);
      v55 = sub_29E2C33A4();

      v56 = sub_29E2C33A4();

      sub_29E05D680();
      v58 = v57;
      [v48 addBulletedListItemWithTitle:v55 description:v56 image:v57];
    }

    v59 = sub_29E08D744();
    [v59 addTarget:v48 action:sel_nextButtonTapped_ forControlEvents:64];
    v60 = [v48 buttonTray];
    [v60 addButton_];

    v61 = [v48 headerView];
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    v76 = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2FC050);
    v62 = sub_29E2C33A4();

    [v61 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E08EA60()
{
  v1 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2C3384();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v18[-v7];
  v9 = sub_29E2BE054();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x29EDC1BB0] || v14 == *MEMORY[0x29EDC1BC0])
  {
    sub_29E2C3314();
    (*(v3 + 16))(v5, v8, v2);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    if (v14 != *MEMORY[0x29EDC1BB8])
    {
      (*(v10 + 8))(v13, v9);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_29E08EDD4()
{
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_analysis];
  if (v1)
  {
    v2 = *(*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors);
    if (v2 >> 62)
    {
      v3 = sub_29E2C4484();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v1;
    v5 = [v4 ongoingCycleFactors];
    sub_29DF60AA4();
    v6 = sub_29E2C3614();

    if (v6 >> 62)
    {
      v7 = sub_29E2C4484();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3 == v7)
    {
      v8 = sub_29E08DE0C();
    }

    else
    {
      v8 = sub_29E08DD14();
    }

    v9 = v8;
    [v0 showViewController:v8 sender:0];
  }

  else
  {
    v4 = sub_29E08DE0C();
    [v0 showViewController:v4 sender:0];
  }

  v10 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    sub_29E199CD0(1, 2u, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingWelcomeViewController()
{
  result = qword_2A181BC08;
  if (!qword_2A181BC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E08F214()
{
  result = sub_29E2BE054();
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

id sub_29E08F2D4(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v16 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v74 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29E2C3384();
  v72 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v71 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v73 = &v68 - v20;
  v86[3] = a7;
  v86[4] = a8;
  v21 = sub_29DEBB7E8(v86);
  (*(*(a7 - 8) + 32))(v21, a3, a7);
  *&a6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___reviewCycleFactorsViewController] = 0;
  *&a6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController____lazy_storage___ongoingCycleFactorsViewController] = 0;
  v70 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_analysis;
  *&a6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_analysis] = a1;
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_securityVariant;
  v23 = sub_29E2BE054();
  v76 = *(v23 - 8);
  v77 = v23;
  v24 = *(v76 + 16);
  v78 = a5;
  v24(&a6[v22], a5);
  v25 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
  swift_unknownObjectRetain();
  v26 = a2;
  v27 = a1;
  v28 = [v25 init];
  type metadata accessor for OnboardingUserInfo();
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  v31 = sub_29E2C31A4();
  (*(*(v31 - 8) + 56))(v29 + v30, 1, 1, v31);
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayFromAnalysis) = 0;
  v32 = v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLength;
  *v32 = 5;
  *(v32 + 8) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_periodLengthFromAnalysis) = 0;
  v33 = v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLength;
  *v33 = 28;
  *(v33 + 8) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_cycleLengthFromAnalysis) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled) = 1;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled) = 1;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled) = 1;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible) = 0;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) = 1;
  v34 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers;
  v35 = HKLogMenstrualCyclesCategory();
  v36 = objc_allocWithZone(MEMORY[0x29EDBACC8]);
  v37 = sub_29E2C33A4();
  v38 = [v36 initWithName:v37 loggingCategory:v35];

  *(v29 + v34) = v38;
  v39 = MEMORY[0x29EDCA190];
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds) = MEMORY[0x29EDCA190];
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isOnboardingFlow) = 1;
  v40 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation;
  v41 = sub_29E2BE2A4();
  v42 = v29 + v40;
  v43 = v69;
  (*(*(v41 - 8) + 56))(v42, 1, 1, v41);
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_ongoingCycleFactors) = v39;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_reviewOngoingCycleFactors) = v39;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deletedCycleFactors) = v39;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors) = v39;
  *(v29 + 16) = v28;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_healthStore) = v26;
  type metadata accessor for CountryGatingOnboardingHandler();
  v44 = swift_allocObject();
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 16) = v26;
  *(v44 + 24) = a4;
  *(v29 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) = v44;
  v45 = v26;
  swift_unknownObjectRetain();
  v46 = v28;

  sub_29DFF75C8(a4);

  v47 = [objc_opt_self() currentNotificationCenter];
  v48 = swift_allocObject();
  v48[3] = 0;
  v48[4] = 0;
  v48[2] = v29;
  v84 = sub_29DFF5ABC;
  v85 = v48;
  aBlock = MEMORY[0x29EDCA5F8];
  v81 = 1107296256;
  v82 = sub_29DF6E81C;
  v83 = &unk_2A24B9818;
  v49 = _Block_copy(&aBlock);

  [v47 getNotificationSettingsWithCompletionHandler_];
  v50 = v49;
  v51 = v71;
  _Block_release(v50);

  v52 = v72;
  swift_unknownObjectRelease();

  *&a6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_userInfo] = v29;
  v53 = *&a6[v70];
  v54 = *(v29 + 24);
  *(v29 + 24) = v53;
  v55 = v53;

  v56 = v55;

  sub_29E0692B0();
  v57 = v73;

  sub_29DE9DC34(v86, &a6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46MenstrualCyclesOnboardingWelcomeViewController_pinnedContentManager]);
  sub_29E2C3314();
  (*(v52 + 16))(v51, v57, v43);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v58 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v52 + 8))(v57, v43);
  v59 = sub_29E2C33A4();

  v79.receiver = a6;
  v79.super_class = ObjectType;
  v60 = objc_msgSendSuper2(&v79, sel_initWithTitle_detailText_icon_contentLayout_, v59, 0, 0, 2);

  v61 = v60;
  v62 = [v61 navigationItem];
  v63 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v61 action:sel_cancelButtonTapped_];
  [v62 setRightBarButtonItem_];

  v64 = [v61 navigationItem];
  v65 = [v64 rightBarButtonItem];

  if (v65)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    aBlock = qword_2A1A67E58;
    v81 = unk_2A1A67E60;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2EF140);
    v66 = sub_29E2C33A4();

    [v65 setAccessibilityIdentifier_];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v76 + 8))(v78, v77);
  sub_29DE93B3C(v86);
  return v61;
}

uint64_t sub_29E08FC40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E08FC58()
{
  v1 = *MEMORY[0x29EDC80E0];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19DataTypeLoggingCell_configuration;
  swift_beginAccess();
  sub_29DFD5A4C(v0 + v2, v12);
  v3 = v13;
  if (v13)
  {
    v4 = v14;
    v5 = sub_29DE966D4(v12, v13);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x2A1C7C4A8](v5);
    v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v9, v7);
    sub_29DFD5AB0(v12);
    v10 = (*(v4 + 8))(v3, v4);
    (*(v6 + 8))(v9, v3);
  }

  else
  {
    sub_29DFD5AB0(v12);
    v10 = 0;
  }

  sub_29E02DD60();
}

id sub_29E08FF0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingDataTypeLoggingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OvulationConfirmationState()
{
  result = qword_2A1A60C60;
  if (!qword_2A1A60C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E08FFDC()
{
  sub_29DEAE54C();
  if (v0 <= 0x3F)
  {
    sub_29E2BCEA4();
    if (v1 <= 0x3F)
    {
      sub_29E2BCBB4();
      if (v2 <= 0x3F)
      {
        sub_29E2BFC94();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_29E0900A0()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  v125 = v1;
  v126 = v2;
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v105 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v122 = &v105 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v123 = &v105 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v119 = &v105 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v118 = &v105 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v116 = &v105 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v108 = &v105 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v107 = &v105 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v106 = &v105 - v23;
  sub_29E09177C(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v110 = &v105 - v25;
  v26 = sub_29E2BCEA4();
  v113 = *(v26 - 8);
  v114 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E2BCBB4();
  v112 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09177C(0, &qword_2A1A5E2A0, sub_29DEC65FC);
  MEMORY[0x2A1C7C4A8](v32 - 8);
  v34 = &v105 - v33;
  sub_29DEC65FC();
  v36 = v35;
  v117 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v115 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29E2C31A4();
  v120 = *(v38 - 8);
  v121 = v38;
  MEMORY[0x2A1C7C4A8](v38);
  v111 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v40);
  v109 = &v105 - v41;
  MEMORY[0x2A1C7C4A8](v42);
  v44 = &v105 - v43;
  MEMORY[0x2A1C7C4A8](v45);
  v124 = &v105 - v46;
  v47 = type metadata accessor for OvulationConfirmationState();
  if (*(v0 + *(v47 + 24)) != 1)
  {
    sub_29E2C04B4();
    v60 = sub_29E2C0504();
    v61 = sub_29E2C3A34();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v127[0] = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      _os_log_impl(&dword_29DE74000, v60, v61, "[%{public}s] Cycle Tracking not onboarded", v62, 0xCu);
      sub_29DE93B3C(v63);
      MEMORY[0x29ED82140](v63, -1, -1);
      MEMORY[0x29ED82140](v62, -1, -1);
    }

    v64 = *(v126 + 8);
    v65 = v4;
    goto LABEL_25;
  }

  v48 = v47;
  v49 = v0 + *(v47 + 36);
  if (*v49 != 1 || !v49[1] || !v49[2])
  {
    sub_29E2C04B4();
    v66 = sub_29E2C0504();
    v67 = sub_29E2C3A34();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_24;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v127[0] = v69;
    *v68 = 136446210;
    *(v68 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
    v70 = "[%{public}s] Sleep measurements not configured correctly";
LABEL_23:
    _os_log_impl(&dword_29DE74000, v66, v67, v70, v68, 0xCu);
    sub_29DE93B3C(v69);
    MEMORY[0x29ED82140](v69, -1, -1);
    MEMORY[0x29ED82140](v68, -1, -1);
    goto LABEL_24;
  }

  if (!*v0)
  {
    v7 = v122;
    sub_29E2C04B4();
    v66 = sub_29E2C0504();
    v67 = sub_29E2C3A14();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_24;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v127[0] = v69;
    *v68 = 136446210;
    *(v68 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
    v70 = "[%{public}s] No analysis (query error)";
    goto LABEL_23;
  }

  v50 = v0;
  v51 = sub_29E09168C();
  if (!v51)
  {
    goto LABEL_21;
  }

  v52 = v51;
  v53 = [v51 lastDayIndex];
  if (!v53)
  {

LABEL_21:
    v7 = v123;
    sub_29E2C04B4();
    v66 = sub_29E2C0504();
    v67 = sub_29E2C3A34();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v127[0] = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      v70 = "[%{public}s] No completed cycles";
      goto LABEL_23;
    }

LABEL_24:

    v64 = *(v126 + 8);
    v65 = v7;
LABEL_25:
    v64(v65, v125);
    return 0;
  }

  v54 = v53;
  [v53 integerValue];
  sub_29E2C30D4();

  if (![v52 ovulationConfirmationFailure])
  {
    v72 = v119;
    sub_29E2C04B4();
    v73 = sub_29E2C0504();
    v74 = sub_29E2C3A34();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v127[0] = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      _os_log_impl(&dword_29DE74000, v73, v74, "[%{public}s] No failure in most recently completed cycle", v75, 0xCu);
      sub_29DE93B3C(v76);
      MEMORY[0x29ED82140](v76, -1, -1);
      MEMORY[0x29ED82140](v75, -1, -1);
    }

    (*(v126 + 8))(v72, v125);
    goto LABEL_31;
  }

  v123 = v52;
  if ([v52 ovulationConfirmationFailure] == 4)
  {
    v55 = v118;
    sub_29E2C04B4();
    v56 = sub_29E2C0504();
    v57 = sub_29E2C3A34();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v127[0] = v59;
      *v58 = 136446210;
      *(v58 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      _os_log_impl(&dword_29DE74000, v56, v57, "[%{public}s] Failure isn't actionable", v58, 0xCu);
      sub_29DE93B3C(v59);
      MEMORY[0x29ED82140](v59, -1, -1);
      MEMORY[0x29ED82140](v58, -1, -1);
    }

    (*(v126 + 8))(v55, v125);
LABEL_31:
    (*(v120 + 8))(v124, v121);
    return 0;
  }

  sub_29E0911E8(v34);
  if ((*(v117 + 48))(v34, 1, v36) == 1)
  {
    sub_29E091D2C(v34, &qword_2A1A5E2A0, sub_29DEC65FC);
    v77 = v120;
    v78 = v121;
LABEL_42:
    v88 = v124;
    v89 = v116;
    sub_29E2C04B4();
    v90 = sub_29E2C0504();
    v91 = sub_29E2C3A34();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v127[0] = v93;
      *v92 = 136446210;
      *(v92 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      _os_log_impl(&dword_29DE74000, v90, v91, "[%{public}s] Not in the relevant time window after the most recently completed cycle", v92, 0xCu);
      sub_29DE93B3C(v93);
      MEMORY[0x29ED82140](v93, -1, -1);
      MEMORY[0x29ED82140](v92, -1, -1);
    }

    (*(v126 + 8))(v89, v125);
    (*(v77 + 8))(v88, v78);
    return 0;
  }

  v79 = v115;
  sub_29E091CC4(v34, v115, sub_29DEC65FC);
  (*(v112 + 16))(v31, &v50[*(v48 + 28)], v29);
  (*(v113 + 16))(v28, &v50[*(v48 + 20)], v114);
  sub_29E2C3144();
  sub_29DEF60A0();
  v78 = v121;
  if ((sub_29E2C32B4() & 1) == 0)
  {
    v77 = v120;
    (*(v120 + 8))(v44, v78);
    goto LABEL_41;
  }

  v80 = sub_29E2C3294();
  v77 = v120;
  v81 = *(v120 + 8);
  v81(v44, v78);
  if ((v80 & 1) == 0)
  {
LABEL_41:
    sub_29DEF637C(v79);
    goto LABEL_42;
  }

  v82 = v110;
  sub_29E0917D0(v110);
  if ((*(v77 + 48))(v82, 1, v78) == 1)
  {
    sub_29E091D2C(v82, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    v83 = v108;
    sub_29E2C04B4();
    v84 = sub_29E2C0504();
    v85 = sub_29E2C3A34();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v127[0] = v87;
      *v86 = 136446210;
      *(v86 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      _os_log_impl(&dword_29DE74000, v84, v85, "[%{public}s] Sleeping wrist temperature not delivered", v86, 0xCu);
      sub_29DE93B3C(v87);
      MEMORY[0x29ED82140](v87, -1, -1);
      MEMORY[0x29ED82140](v86, -1, -1);
    }

    (*(v126 + 8))(v83, v125);
LABEL_52:
    sub_29DEF637C(v79);
    v81(v124, v78);
    return 0;
  }

  v94 = v109;
  (*(v77 + 32))(v109, v82, v78);
  sub_29E2C3124();
  if ((sub_29E2C30E4() & 1) == 0)
  {
    v100 = v107;
    sub_29E2C04B4();
    v101 = sub_29E2C0504();
    v102 = sub_29E2C3A34();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v127[0] = v104;
      *v103 = 136446210;
      *(v103 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
      _os_log_impl(&dword_29DE74000, v101, v102, "[%{public}s] Sleeping wrist temperature delivered too recently", v103, 0xCu);
      sub_29DE93B3C(v104);
      MEMORY[0x29ED82140](v104, -1, -1);
      MEMORY[0x29ED82140](v103, -1, -1);
    }

    (*(v126 + 8))(v100, v125);
    v81(v111, v78);
    v81(v94, v78);
    goto LABEL_52;
  }

  v95 = v106;
  sub_29E2C04B4();
  v96 = sub_29E2C0504();
  v97 = sub_29E2C3A34();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v127[0] = v99;
    *v98 = 136446210;
    *(v98 + 4) = sub_29DFAA104(0xD00000000000001ALL, 0x800000029E2DC2C0, v127);
    _os_log_impl(&dword_29DE74000, v96, v97, "[%{public}s] Can display failure tile", v98, 0xCu);
    sub_29DE93B3C(v99);
    MEMORY[0x29ED82140](v99, -1, -1);
    MEMORY[0x29ED82140](v98, -1, -1);
  }

  (*(v126 + 8))(v95, v125);
  v81(v111, v78);
  v81(v94, v78);
  sub_29DEF637C(v79);
  v81(v124, v78);
  return 1;
}

uint64_t sub_29E0911E8@<X0>(char *a1@<X8>)
{
  sub_29DEC6594();
  v44 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v42 - v7;
  v9 = sub_29E2C31A4();
  v45 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v42 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v42 - v16;
  *&v19 = MEMORY[0x2A1C7C4A8](v18).n128_u64[0];
  v21 = &v42 - v20;
  if (!*v1)
  {
    goto LABEL_14;
  }

  v22 = [*v1 cycles];
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v24 = sub_29E2C3614();

  if (v24 >> 62)
  {
    result = sub_29E2C4484();
    if (result >= 2)
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x29ED80D70](1, v24);
  }

  else
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v26 = *(v24 + 40);
  }

  v27 = v26;

  v28 = [v27 lastDayIndex];
  if (v28)
  {
    v43 = a1;
    v29 = v28;
    [v28 integerValue];
    sub_29E2C30D4();

    v30 = v45;
    v42 = *(v45 + 32);
    v42(v21, v17, v9);
    sub_29E2C3174();
    sub_29E2C3174();
    sub_29DEF60A0();
    v31 = sub_29E2C32B4();
    v32 = *(v30 + 8);
    result = v32(v21, v9);
    if (v31)
    {
      v33 = v42;
      v42(v8, v14, v9);
      v34 = v44;
      v33(&v8[*(v44 + 48)], v11, v9);
      sub_29DEC6FE8(v8, v5);
      v35 = *(v34 + 48);
      v36 = v43;
      v33(v43, v5, v9);
      v32(&v5[v35], v9);
      sub_29E091CC4(v8, v5, sub_29DEC6594);
      v37 = *(v34 + 48);
      sub_29DEC65FC();
      v39 = v38;
      v33(&v36[*(v38 + 36)], &v5[v37], v9);
      v32(v5, v9);
      return (*(*(v39 - 8) + 56))(v36, 0, 1, v39);
    }

    goto LABEL_19;
  }

LABEL_14:
  sub_29DEC65FC();
  v41 = *(*(v40 - 8) + 56);

  return v41(a1, 1, 1, v40);
}

uint64_t sub_29E09168C()
{
  result = *v0;
  if (!*v0)
  {
    return result;
  }

  result = [result cycles];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_29DE9408C(0, &qword_2A1A5E0A0);
  v3 = sub_29E2C3614();

  if (v3 >> 62)
  {
    result = sub_29E2C4484();
    if (result >= 2)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED80D70](1, v3);
    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v4 = *(v3 + 40);
LABEL_8:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

void sub_29E09177C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E0917D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_29E2BCEA4();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BFC74();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BFC94();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09177C(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_29E2BCBB4();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v31 - v20;
  v31 = type metadata accessor for OvulationConfirmationState();
  v22 = *(v31 + 32);
  v23 = *(v9 + 16);
  v37 = v2;
  v23(v11, v2 + v22, v8);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x29EDC2D70])
  {
    (*(v9 + 96))(v11, v8);
    v25 = v32;
    v24 = v33;
    (*(v32 + 32))(v7, v11, v33);
    sub_29E2BFC54();
    (*(v25 + 8))(v7, v24);
    (*(v16 + 56))(v14, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    (*(v9 + 8))(v11, v8);
  }

  v26 = (*(v16 + 48))(v14, 1, v15);
  v27 = v38;
  if (v26 == 1)
  {
    sub_29E091D2C(v14, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v28 = 1;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    (*(v16 + 16))(v18, v21, v15);
    (*(v35 + 16))(v34, v37 + *(v31 + 20), v36);
    sub_29E2C3144();
    (*(v16 + 8))(v21, v15);
    v28 = 0;
  }

  v29 = sub_29E2C31A4();
  return (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
}

uint64_t sub_29E091CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E091D2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E09177C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E091D88(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E2C31A4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_29E097EB8(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]), v7 = sub_29E2C3244(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_29E097EB8(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      v15 = sub_29E2C3304();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_29E091FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_29E2C4A04();
  sub_29E2C34B4();
  v6 = sub_29E2C4A54();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29E2C4914() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_29E092098(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_29E097EB8(&unk_2A1818E70, MEMORY[0x29EDB9D70]), v7 = sub_29E2C3244(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_29E097EB8(&unk_2A181DBB0, MEMORY[0x29EDB9D70]);
      v15 = sub_29E2C3304();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_29E0922B0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](v3);
  v4 = sub_29E2C4A54();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_29E09237C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0(), sub_29E2C4A04(), sub_29E2C34B4(), v3 = sub_29E2C4A54(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v9 = v8;
      if (v7 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v9 == v10)
      {
        break;
      }

      v12 = sub_29E2C4914();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_29E0924D0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_29E2C44D4();
  }

  else if (*(a2 + 16) && (sub_29DE9408C(0, &qword_2A1A61DB0), v5 = sub_29E2C40C4(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_29E2C40D4();

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

void sub_29E0925E8()
{
  v1 = type metadata accessor for Section();
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x2A1C7C4A8](v1);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v69 = (&v67 - v6);
  MEMORY[0x2A1C7C4A8](v7);
  v70 = &v67 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v67 - v10;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v67 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v67 - v16;
  sub_29E097F00(0, &qword_2A181BC70, type metadata accessor for Section, MEMORY[0x29EDC9E90]);
  v18 = *(v2 + 72);
  v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 1) = xmmword_29E2CD7A0;
  v75 = v19;
  v21 = v20 + v19;
  swift_storeEnumTagMultiPayload();
  v76 = v18;
  v73 = v1;
  swift_storeEnumTagMultiPayload();
  v79 = v20;
  v72 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_analysis);
  if (!v22)
  {
    goto LABEL_47;
  }

  v71 = v22;
  if (![v71 hasHealthAppDevicesWithHigherAlgorithmVersions])
  {
    goto LABEL_5;
  }

  swift_storeEnumTagMultiPayload();
  v3 = v20[2];
  v23 = v20[3];
  v21 = v3 + 1;
  if (v3 >= v23 >> 1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v20[2] = v21;
    sub_29E098690(v17, v20 + v75 + v3 * v76, type metadata accessor for Section);
    v79 = v20;
LABEL_5:
    v24 = [v71 deviations];
    if (v24)
    {
      v25 = v24;
      sub_29DE9408C(0, &qword_2A1A5E118);
      v26 = sub_29E2C3614();

      if (v26 >> 62)
      {
        v27 = sub_29E2C4484();
        if (v27)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
LABEL_8:
          v77 = MEMORY[0x29EDCA190];
          sub_29E1816CC(0, v27 & ~(v27 >> 63), 0);
          if (v27 < 0)
          {
            __break(1u);
LABEL_92:
            __break(1u);
            return;
          }

          v28 = 0;
          v29 = v77;
          v17 = v26 & 0xC000000000000001;
          do
          {
            if (v17)
            {
              v30 = MEMORY[0x29ED80D70](v28, v26);
            }

            else
            {
              v30 = *(v26 + 8 * v28 + 32);
            }

            *v14 = v30;
            swift_storeEnumTagMultiPayload();
            v77 = v29;
            v32 = *(v29 + 16);
            v31 = *(v29 + 24);
            v21 = v32 + 1;
            if (v32 >= v31 >> 1)
            {
              sub_29E1816CC(v31 > 1, v32 + 1, 1);
              v29 = v77;
            }

            ++v28;
            *(v29 + 16) = v21;
            sub_29E098690(v14, v29 + v75 + v32 * v76, type metadata accessor for Section);
          }

          while (v27 != v28);

          goto LABEL_19;
        }
      }

      v29 = MEMORY[0x29EDCA190];
LABEL_19:
      sub_29DFCB7F0(v29);
    }

    v20 = [v71 menstruationProjections];
    sub_29DE9408C(0, &qword_2A1A62790);
    v33 = sub_29E2C3614();

    if (v33 >> 62)
    {
      v3 = sub_29E2C4484();
      if (!v3)
      {
LABEL_32:

        v34 = MEMORY[0x29EDCA190];
        goto LABEL_33;
      }
    }

    else
    {
      v3 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_32;
      }
    }

    v77 = MEMORY[0x29EDCA190];
    sub_29E1816CC(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v14 = 0;
    v34 = v77;
    v21 = v33 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v35 = MEMORY[0x29ED80D70](v14, v33);
      }

      else
      {
        v35 = *(v33 + 8 * v14 + 32);
      }

      *v11 = v35;
      swift_storeEnumTagMultiPayload();
      v77 = v34;
      v17 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v17 >= v36 >> 1)
      {
        sub_29E1816CC(v36 > 1, v17 + 1, 1);
        v34 = v77;
      }

      ++v14;
      *(v34 + 16) = v17 + 1;
      sub_29E098690(v11, v34 + v75 + v17 * v76, type metadata accessor for Section);
    }

    while (v3 != v14);

LABEL_33:
    sub_29DFCB7F0(v34);
    v20 = [v71 fertileWindowProjections];
    v11 = sub_29E2C3614();

    v37 = v70;
    if (v11 >> 62)
    {
      v3 = sub_29E2C4484();
      if (!v3)
      {
LABEL_45:

        v39 = MEMORY[0x29EDCA190];
        goto LABEL_46;
      }
    }

    else
    {
      v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_45;
      }
    }

    v77 = MEMORY[0x29EDCA190];
    sub_29E1816CC(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    v20 = sub_29E1441C8(v23 > 1, v21, 1, v20);
  }

  v38 = 0;
  v39 = v77;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x29ED80D70](v38, v11);
    }

    else
    {
      v40 = *(v11 + 8 * v38 + 32);
    }

    *v37 = v40;
    swift_storeEnumTagMultiPayload();
    v77 = v39;
    v14 = *(v39 + 16);
    v41 = *(v39 + 24);
    if (v14 >= v41 >> 1)
    {
      sub_29E1816CC(v41 > 1, v14 + 1, 1);
      v39 = v77;
    }

    ++v38;
    *(v39 + 16) = v14 + 1;
    sub_29E098690(v37, v39 + v75 + v14 * v76, type metadata accessor for Section);
  }

  while (v3 != v38);

LABEL_46:
  sub_29DFCB7F0(v39);

LABEL_47:
  v17 = v72;
  v42 = *(v72 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_pregnancyModel);
  if (v42)
  {
    v43 = v69;
    *v69 = v42;
    swift_storeEnumTagMultiPayload();
    v44 = v79;
    v45 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_29E1441C8(0, v44[2] + 1, 1, v44);
    }

    v3 = v44[2];
    v46 = v44[3];
    if (v3 >= v46 >> 1)
    {
      v44 = sub_29E1441C8(v46 > 1, v3 + 1, 1, v44);
    }

    v44[2] = v3 + 1;
    sub_29E098690(v43, v44 + v75 + v3 * v76, type metadata accessor for Section);
    v79 = v44;
  }

  v21 = *(v17 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notifications);
  if (!(v21 >> 62))
  {
    v47 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_55;
  }

  while (1)
  {
    v47 = sub_29E2C4484();
LABEL_55:
    v48 = MEMORY[0x29EDCA190];
    if (!v47)
    {
      break;
    }

    v78 = MEMORY[0x29EDCA190];
    v20 = (v47 & ~(v47 >> 63));
    sub_29E2BF404();
    sub_29E1816CC(0, v20, 0);
    if (v47 < 0)
    {
      __break(1u);
      goto LABEL_88;
    }

    v49 = 0;
    v48 = v78;
    v68 = v21 & 0xFFFFFFFFFFFFFF8;
    v69 = v21;
    v70 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notificationHoldInstructionCategories;
    v71 = (v21 & 0xC000000000000001);
    v67 = v21 + 32;
    while (1)
    {
      v21 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v71)
      {
        v50 = MEMORY[0x29ED80D70]();
      }

      else
      {
        if (v49 >= *(v68 + 16))
        {
          goto LABEL_85;
        }

        v50 = *(v67 + 8 * v49);
      }

      v11 = v50;
      v14 = *&v70[v17];
      sub_29E2BF404();
      v51 = [v11 category];
      v52 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v54 = v53;

      v55 = v74;
      *(v74 + 1) = v52;
      *(v55 + 16) = v54;
      if (*(v14 + 16))
      {
        sub_29E2C4A04();
        sub_29E2BF404();
        sub_29E2C34B4();
        v56 = sub_29E2C4A54();
        v57 = -1 << *(v14 + 32);
        v58 = v56 & ~v57;
        if ((*(v14 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
        {
          v59 = ~v57;
          while (1)
          {
            v60 = (*(v14 + 48) + 16 * v58);
            v61 = *v60 == v52 && v60[1] == v54;
            if (v61 || (sub_29E2C4914() & 1) != 0)
            {
              break;
            }

            v58 = (v58 + 1) & v59;
            if (((*(v14 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
            {
              goto LABEL_72;
            }
          }

          v62 = 1;
        }

        else
        {
LABEL_72:

          v62 = 0;
        }

        v55 = v74;
      }

      else
      {

        v62 = 0;
      }

      *v55 = v62;
      v63 = [v11 dueDateComponents];
      type metadata accessor for InternalSettingsNotification();
      sub_29E2BC544();

      swift_storeEnumTagMultiPayload();
      v78 = v48;
      v3 = *(v48 + 16);
      v64 = *(v48 + 24);
      v17 = v72;
      if (v3 >= v64 >> 1)
      {
        sub_29E1816CC(v64 > 1, v3 + 1, 1);
        v55 = v74;
        v48 = v78;
      }

      *(v48 + 16) = v3 + 1;
      sub_29E098690(v55, v48 + v75 + v3 * v76, type metadata accessor for Section);
      v49 = v21;
      if (v21 == v47)
      {

        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
  }

LABEL_80:
  sub_29DFCB7F0(v48);
  *(v17 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections) = v79;
  sub_29E2BF404();

  if ([v17 isViewLoaded])
  {
    v65 = [v17 tableView];
    if (!v65)
    {
      goto LABEL_92;
    }

    v66 = v65;

    [v66 reloadData];
  }

  else
  {
  }
}

id sub_29E093130()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___store;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___store);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___store);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E0931B4()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___notificationSyncStore;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___notificationSyncStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___notificationSyncStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBACA8]) initWithClientIdentifier:*MEMORY[0x29EDC3328] healthStore:*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_healthStore)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29E093248()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___coordinator;
  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___coordinator))
  {
    v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___coordinator);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_healthStore);
    v8 = objc_allocWithZone(MEMORY[0x29EDBAA50]);
    v9 = v7;
    v10 = [v8 init];
    type metadata accessor for DeviationsConfirmationFlowCoordinator();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 32) = 0;
    *(v6 + 40) = -1;
    *(v6 + 72) = 0;
    sub_29E098A0C(0, &qword_2A1817C80, &type metadata for CalendarChanges, MEMORY[0x29EDC9C68]);
    memset(v15, 0, sizeof(v15));
    sub_29E2C11D4();
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_addedCycleFactors) = MEMORY[0x29EDCA190];
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator____lazy_storage___eventSubmissionManager) = 0;
    v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_currentPresentation;
    v12 = sub_29E2BE2A4();
    (*(*(v12 - 8) + 56))(v6 + v11, 1, 1, v12);
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_startingUnconfirmedDeviations) = 0;
    *(v6 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37DeviationsConfirmationFlowCoordinator_openedPDFInConfirmedResult) = 0;
    v13 = [objc_allocWithZone(MEMORY[0x29EDC3360]) initWithHealthStore_];
    *(v6 + 48) = v9;
    *(v6 + 56) = v13;
    *(v6 + 64) = v10;
    (*(v2 + 104))(v4, *MEMORY[0x29EDB9C78], v1);
    sub_29E2BCCA4();
    (*(v2 + 8))(v4, v1);
    swift_unknownObjectWeakAssign();
    *(v6 + 24) = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_29E093554()
{
  ObjectType = swift_getObjectType();
  sub_29E097F00(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  *&v3 = MEMORY[0x2A1C7C4A8](v2 - 8).n128_u64[0];
  v5 = &v13 - v4;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidLoad, v3);
  v6 = sub_29E2C33A4();
  [v0 setTitle_];

  v7 = sub_29E2C3734();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_29E2C3714();
  v8 = v0;
  v9 = sub_29E2C3704();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA390];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = ObjectType;
  sub_29E13C63C(0, 0, v5, &unk_29E2DC408, v10);
}

uint64_t sub_29E093700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v6 = sub_29E2C0514();
  v5[38] = v6;
  v5[39] = *(v6 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  sub_29E2C3714();
  v5[42] = sub_29E2C3704();
  v8 = sub_29E2C36A4();
  v5[43] = v8;
  v5[44] = v7;

  return MEMORY[0x2A1C73D48](sub_29E093800, v8, v7);
}

uint64_t sub_29E093800()
{
  v1 = sub_29E0931B4();
  v0[45] = v1;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_29E09391C;
  v2 = swift_continuation_init();
  sub_29E098818();
  v0[25] = v3;
  v0[18] = MEMORY[0x29EDCA5F8];
  v0[19] = 1107296256;
  v0[20] = sub_29E09422C;
  v0[21] = &unk_2A24B9928;
  v0[22] = v2;
  [v1 getNotificationHoldInstructionsWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E09391C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_29E093D54;
  }

  else
  {
    v5 = sub_29E093A4C;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E093A4C()
{
  v1 = v0[45];
  *(v0[36] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notificationHoldInstructionCategories) = v0[34];

  v2 = sub_29E093130();
  v0[47] = v2;
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_29E093B8C;
  v3 = swift_continuation_init();
  sub_29E0988E0();
  v0[33] = v4;
  v0[26] = MEMORY[0x29EDCA5F8];
  v0[27] = 1107296256;
  v0[28] = sub_29E094304;
  v0[29] = &unk_2A24B9950;
  v0[30] = v3;
  [v2 fetchScheduledNotificationsWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29E093B8C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_29E094010;
  }

  else
  {
    v5 = sub_29E093CBC;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E093CBC()
{
  v1 = v0[47];
  v2 = v0[36];

  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notifications) = v0[35];

  sub_29E0925E8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_29E093D54()
{
  v26 = v0;
  v2 = v0[45];
  v1 = v0[46];
  swift_willThrow();

  sub_29E2C04B4();
  v3 = v1;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[46];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  if (v6)
  {
    v24 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136446466;
    v14 = sub_29E2C4AE4();
    v23 = v8;
    v16 = sub_29DFAA104(v14, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Error fetching notification holds: %{public}@", v11, 0x16u);
    sub_29DF58A90(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = sub_29E093130();
  v0[47] = v19;
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_29E093B8C;
  v20 = swift_continuation_init();
  sub_29E0988E0();
  v0[33] = v21;
  v0[26] = MEMORY[0x29EDCA5F8];
  v0[27] = 1107296256;
  v0[28] = sub_29E094304;
  v0[29] = &unk_2A24B9950;
  v0[30] = v20;
  [v19 fetchScheduledNotificationsWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29E094010()
{
  v24 = v0;
  v2 = v0[47];
  v1 = v0[48];

  swift_willThrow();

  sub_29E2C04B4();
  v3 = v1;
  v4 = sub_29E2C0504();
  v5 = sub_29E2C3A14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[48];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  if (v6)
  {
    v22 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136446466;
    v14 = sub_29E2C4AE4();
    v21 = v8;
    v16 = sub_29DFAA104(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_29DE74000, v4, v5, "[%{public}s] Error fetching scheduled notifications: %{public}@", v11, 0x16u);
    sub_29DF58A90(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v11, -1, -1);

    (*(v9 + 8))(v21, v22);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_29E09422C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_29DE966D4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29DE96670();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x2A1C73CE0](v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_29E2C3814();

    return MEMORY[0x2A1C73CD8](v4);
  }
}

uint64_t sub_29E094304(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_29DE966D4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29DE96670();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x2A1C73CE0](v4, v5);
  }

  else
  {
    sub_29DE9408C(0, &qword_2A181BC90);
    **(*(v4 + 64) + 40) = sub_29E2C3614();

    return MEMORY[0x2A1C73CD8](v4);
  }
}

void sub_29E094430(void *a1)
{
  v3 = type metadata accessor for Section();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C33A4();
  v8 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
    v10 = sub_29E2C33A4();
    v8 = [v9 initWithStyle:0 reuseIdentifier:v10];

    if (!v8)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v11 = [v8 textLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setNumberOfLines_];
    }
  }

  v13 = [v8 textLabel];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = sub_29E2BCFA4();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections);
  if (v15 >= *(v16 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_29E0984C4(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v6);
  v17 = sub_29E2BCF64();
  sub_29E09466C(v17);
  sub_29E0986F8(v6, type metadata accessor for Section);
  v18 = sub_29E2C33A4();

  [v14 setText_];
}

unint64_t sub_29E09466C(unint64_t a1)
{
  v2 = v1;
  sub_29E097F00(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v130 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v131 = &v121 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v128 = &v121 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v129 = &v121 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v126 = &v121 - v13;
  MEMORY[0x2A1C7C4A8](v14);
  v127 = &v121 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v124 = &v121 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v125 = &v121 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v121 - v21;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v121 - v24;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v121 - v27;
  MEMORY[0x2A1C7C4A8](v29);
  v31 = &v121 - v30;
  v32 = type metadata accessor for InternalSettingsNotification();
  MEMORY[0x2A1C7C4A8](v32);
  v34 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Section();
  MEMORY[0x2A1C7C4A8](v35);
  v37 = (&v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E0984C4(v2, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v133 = *v37;
      v39 = &qword_2A1A62790;
LABEL_31:
      sub_29DE9408C(0, v39);
      return sub_29E2C3424();
    }

    if (EnumCaseMultiPayload != 2)
    {
      v133 = *v37;
      v39 = &qword_2A1A5E118;
      goto LABEL_31;
    }

    sub_29E098690(v37, v34, type metadata accessor for InternalSettingsNotification);
    if (!a1)
    {
      v133 = 0;
      v134 = 0xE000000000000000;
      if (*v34)
      {
        v44 = 0x20444C4F48;
      }

      else
      {
        v44 = 0;
      }

      if (*v34)
      {
        v45 = 0xE500000000000000;
      }

      else
      {
        v45 = 0xE000000000000000;
      }

      MEMORY[0x29ED7FCC0](v44, v45);

      MEMORY[0x29ED7FCC0](*(v34 + 1), *(v34 + 2));
      v46 = v133;
      goto LABEL_35;
    }

    if (a1 == 1)
    {
      sub_29E2BC5F4();
      sub_29E097EB8(&qword_2A181B8B8, MEMORY[0x29EDB9950]);
      v46 = sub_29E2C48D4();
LABEL_35:
      sub_29E0986F8(v34, type metadata accessor for InternalSettingsNotification);
      return v46;
    }

    goto LABEL_99;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v133 = 0;
      v134 = 0xE000000000000000;
      sub_29E2C4584();
      MEMORY[0x29ED7FCC0](0x7372655620676C41, 0xED0000203A6E6F69);
      v52 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
      v53 = [v52 dayStreamProcessorAlgorithmVersion];

      v132 = v53;
      v54 = sub_29E2C48D4();
      MEMORY[0x29ED7FCC0](v54);

      MEMORY[0x29ED7FCC0](0x100000000000003BLL, 0x800000029E2FD810);
      return v133;
    }

    v47 = sub_29E098108();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v47 + 2) > a1)
    {
      v48 = v47[a1 + 32];

      if (v48 <= 1)
      {
        if (v48)
        {
          return 0xD000000000000013;
        }

        else
        {
          return 0xD000000000000010;
        }
      }

      else if (v48 == 2)
      {
        return 0xD000000000000010;
      }

      else if (v48 == 3)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000027;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v40 = *v37;
    v133 = 0;
    v134 = 0xE000000000000000;
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0x6C746E6572727543, 0xEA00000000002079);
    v41 = [v40 state];
    if (v41)
    {
      if (v41 == 2)
      {
        v42 = 0xEE0079636E616E67;
        v43 = 0x6572702D74736F70;
      }

      else
      {
        if (v41 != 1)
        {
LABEL_101:
          result = sub_29E2C4724();
          __break(1u);
          return result;
        }

        v42 = 0xE700000000000000;
        v43 = 0x676E696F676E6FLL;
      }
    }

    else
    {
      v42 = 0xE400000000000000;
      v43 = 1701736302;
    }

    MEMORY[0x29ED7FCC0](v43, v42);

    MEMORY[0x29ED7FCC0](0x442074726174530ALL, 0xED0000203A657461);
    v55 = [v40 pregnancyStartDate];
    if (v55)
    {
      v56 = v55;
      sub_29E2BCB44();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v58 = sub_29E2BCBB4();
    v59 = *(v58 - 8);
    v60 = v59;
    v121 = *(v59 + 56);
    v123 = v59 + 56;
    v121(v28, v57, 1, v58);
    sub_29DEB4EA4(v28, v31);
    v61 = *(v60 + 48);
    v62 = v61(v31, 1, v58);
    v122 = v60;
    if (v62 == 1)
    {
      sub_29DE93920(v31);
      v63 = 0xE300000000000000;
      v64 = 7104878;
    }

    else
    {
      v65 = sub_29E2BCB84();
      v63 = v66;
      (*(v60 + 8))(v31, v58);
      v64 = v65;
    }

    MEMORY[0x29ED7FCC0](v64, v63);

    MEMORY[0x29ED7FCC0](0x74614420646E450ALL, 0xEB00000000203A65);
    v67 = v40;
    v68 = [v40 pregnancyEndDate];
    v69 = v129;
    if (v68)
    {
      v70 = v68;
      sub_29E2BCB44();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v72 = v121;
    v121(v22, v71, 1, v58);
    sub_29DEB4EA4(v22, v25);
    if (v61(v25, 1, v58) == 1)
    {
      sub_29DE93920(v25);
      v73 = 0xE300000000000000;
      v74 = 7104878;
    }

    else
    {
      v75 = sub_29E2BCB84();
      v73 = v76;
      (*(v122 + 8))(v25, v58);
      v74 = v75;
    }

    MEMORY[0x29ED7FCC0](v74, v73);

    MEMORY[0x29ED7FCC0](0x203A4444450ALL, 0xE600000000000000);
    v77 = [v67 estimatedDueDate];
    v78 = v131;
    if (v77)
    {
      v79 = v124;
      v80 = v77;
      sub_29E2BCB44();

      v81 = 0;
    }

    else
    {
      v81 = 1;
      v79 = v124;
    }

    v82 = v125;
    v72(v79, v81, 1, v58);
    sub_29DEB4EA4(v79, v82);
    if (v61(v82, 1, v58) == 1)
    {
      sub_29DE93920(v82);
      v83 = 0xE300000000000000;
      v84 = 7104878;
    }

    else
    {
      v85 = v82;
      v86 = sub_29E2BCB84();
      v83 = v87;
      (*(v122 + 8))(v85, v58);
      v84 = v86;
    }

    MEMORY[0x29ED7FCC0](v84, v83);

    MEMORY[0x29ED7FCC0](0xD000000000000015, 0x800000029E2FD7B0);
    v88 = [v67 behavioralWashoutEndDate];
    if (v88)
    {
      v89 = v126;
      v90 = v88;
      sub_29E2BCB44();

      v91 = 0;
    }

    else
    {
      v91 = 1;
      v89 = v126;
    }

    v92 = v127;
    v72(v89, v91, 1, v58);
    sub_29DEB4EA4(v89, v92);
    if (v61(v92, 1, v58) == 1)
    {
      sub_29DE93920(v92);
      v93 = 0xE300000000000000;
      v94 = 7104878;
    }

    else
    {
      v95 = v92;
      v96 = sub_29E2BCB84();
      v93 = v97;
      (*(v122 + 8))(v95, v58);
      v94 = v96;
      v72 = v121;
    }

    MEMORY[0x29ED7FCC0](v94, v93);

    MEMORY[0x29ED7FCC0](0xD000000000000018, 0x800000029E2FD7D0);
    v98 = [v67 physiologicalWashoutEndDate];
    if (v98)
    {
      v99 = v128;
      v100 = v98;
      sub_29E2BCB44();

      v101 = 0;
    }

    else
    {
      v101 = 1;
      v99 = v128;
    }

    v102 = v122;
    v72(v99, v101, 1, v58);
    sub_29DEB4EA4(v99, v69);
    if (v61(v69, 1, v58) == 1)
    {
      sub_29DE93920(v69);
      v103 = 0xE300000000000000;
      v104 = 7104878;
    }

    else
    {
      v105 = sub_29E2BCB84();
      v103 = v106;
      (*(v102 + 8))(v69, v58);
      v104 = v105;
    }

    MEMORY[0x29ED7FCC0](v104, v103);

    MEMORY[0x29ED7FCC0](0xD00000000000001FLL, 0x800000029E2FD7F0);
    v107 = [v67 educationalStepsCompletedDate];
    if (v107)
    {
      v108 = v130;
      v109 = v107;
      sub_29E2BCB44();

      v110 = 0;
    }

    else
    {
      v110 = 1;
      v108 = v130;
    }

    v72(v108, v110, 1, v58);
    sub_29DEB4EA4(v108, v78);
    if (v61(v78, 1, v58) == 1)
    {
      sub_29DE93920(v78);
      v111 = 0xE300000000000000;
      v112 = 7104878;
    }

    else
    {
      v113 = sub_29E2BCB84();
      v111 = v114;
      (*(v102 + 8))(v78, v58);
      v112 = v113;
    }

    MEMORY[0x29ED7FCC0](v112, v111);

    MEMORY[0x29ED7FCC0](0x3A656C706D61530ALL, 0xE900000000000020);
    v115 = [v67 sample];
    if (v115)
    {
      v116 = v115;
      v117 = [v115 description];

      v118 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v120 = v119;
    }

    else
    {
      v118 = 0;
      v120 = 0xE000000000000000;
    }

    MEMORY[0x29ED7FCC0](v118, v120);

    return v133;
  }

  v50 = _s24MenstrualCyclesAppPlugin17CycleTimelineStepO8rawValueACSgSi_tcfC_0(a1);
  if (v50 <= 3)
  {
    if (v50 <= 1)
    {
      if (v50)
      {
        return 0xD000000000000025;
      }

      v51 = 11;
      return v51 | 0xD000000000000010;
    }

    if (v50 == 2)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      return 0xD00000000000002ALL;
    }
  }

  else
  {
    if (v50 > 5)
    {
      if (v50 == 6)
      {
        v51 = 34;
      }

      else
      {
        if (v50 != 7)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v51 = 35;
      }

      return v51 | 0xD000000000000010;
    }

    if (v50 == 4)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD000000000000045;
    }
  }
}

uint64_t sub_29E0956F8()
{
  v1 = type metadata accessor for Section();
  MEMORY[0x2A1C7C4A8](v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E0984C4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_29E0986F8(v3, type metadata accessor for Section);
      return 2;
    }

    return 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v6 = *(sub_29E098108() + 2);

      return v6;
    }

    return 1;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_29E0986F8(v3, type metadata accessor for Section);
    return 1;
  }

  return 8;
}

uint64_t sub_29E095930()
{
  v1 = type metadata accessor for Section();
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0984C4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x2065727574616546;
      }

      else
      {
        return 0x686374616D73694DLL;
      }
    }

    else
    {
      v6 = EnumCaseMultiPayload;
      result = 0;
      if (v6 == 4)
      {
        sub_29E0986F8(v3, type metadata accessor for Section);
        return 0x636E616E67657250;
      }
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_29E0986F8(v3, type metadata accessor for Section);
      return 0xD000000000000016;
    }

    else
    {
      sub_29E0986F8(v3, type metadata accessor for Section);
      return 0x6F69746169766544;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_29E0986F8(v3, type metadata accessor for Section);
    return 0xD000000000000019;
  }

  else
  {
    sub_29E0986F8(v3, type metadata accessor for Section);
    return 0xD000000000000017;
  }

  return result;
}

void sub_29E095CA4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Section();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCFA4();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v9 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections];
  if (v8 >= *(v9 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_29E0984C4(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
LABEL_6:
    sub_29E0986F8(v7, type metadata accessor for Section);
LABEL_7:
    v11 = sub_29E2BCF24();
    [a1 deselectRowAtIndexPath:v11 animated:1];

    return;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_7;
    }

    v12 = sub_29E098108();
    v13 = sub_29E2BCF64();
    if ((v13 & 0x8000000000000000) == 0)
    {
      if (v13 < *(v12 + 2))
      {
        v14 = v12[v13 + 32];

        v15 = **(&unk_29F362940 + v14);
        v16 = [v2 navigationController];
        if (v16)
        {
          v17 = v16;
          objc_allocWithZone(sub_29E2BFA14());
          v18 = v15;
          v19 = sub_29E2BFA04();
          [v17 pushViewController:v19 animated:1];
        }

        else
        {
        }

        goto LABEL_7;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 4)
  {
    goto LABEL_6;
  }

  v20 = sub_29E2BCF64();
  v21 = _s24MenstrualCyclesAppPlugin17CycleTimelineStepO8rawValueACSgSi_tcfC_0(v20);
  if (v21 <= 3)
  {
    if (v21 <= 1)
    {
      if (v21)
      {
        v22 = sub_29E2C3BE4();
        if (v22)
        {
          v23 = v22;
          v24 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

          [v24 setLastMenstrualPeriodDismissalDay_];
        }
      }

      else
      {
        sub_29E09604C();
      }

      goto LABEL_7;
    }

    if (v21 == 2)
    {
      sub_29E096198();
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  if (v21 <= 5)
  {
    if (v21 != 4)
    {
      sub_29E096890();
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  if (v21 == 6)
  {
    v27 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    sub_29E0965E0(v27, v28);

    v29 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    sub_29E0965E0(v29, v30);

    v25 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    goto LABEL_31;
  }

  if (v21 == 7)
  {
LABEL_28:
    v25 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
LABEL_31:
    sub_29E0965E0(v25, v26);

    goto LABEL_7;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_29E09604C()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_healthStore);
  v2 = [objc_allocWithZone(MEMORY[0x29EDC33D0]) initWithHealthStore_];
  [v2 resetOnboarding_];
  v3 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
  [v3 resetAllSettings];

  v4 = [objc_opt_self() hkmc:v1 cycleChartsHiddenRowsDomainWithHealthStore:?];
  type metadata accessor for CycleChartsSettings();
  swift_initStackObject();
  sub_29DFDDFD8(v4, 0);
  sub_29DFDFCA8();

  sub_29E2C3C14();
  sub_29DE966D4(v6, v6[3]);
  sub_29E2BD894();

  return sub_29DE93B3C(v6);
}

uint64_t sub_29E096198()
{
  v26 = sub_29E2BE2A4();
  v0 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2BCC94();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v25 = sub_29E2C31A4();
  v9 = *(v25 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v25);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x29EDB9C78], v4, v10);
  sub_29E2BCCA4();
  (*(v5 + 8))(v7, v4);
  sub_29E2BCBA4();
  sub_29E2C30C4();
  sub_29E093248();
  sub_29E098A0C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CE220;
  v14 = sub_29E2C3164();
  sub_29E1853E0(MEMORY[0x29EDCA190]);
  v15 = objc_allocWithZone(MEMORY[0x29EDC33F8]);
  v16 = sub_29E2C31F4();

  v17 = [v15 initWithType:3 days:v14 analyticsMetadata:{180, v16}];

  *(v13 + 32) = v17;
  v18 = v26;
  (*(v0 + 104))(v2, *MEMORY[0x29EDC1D48], v26);
  sub_29DEE23B0(v13, 0, v2, 1);

  v19 = v2;
  v20 = v24[1];
  (*(v0 + 8))(v19, v18);
  v21 = *&v20[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___coordinator];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = *(v21 + 24);
  }

  [v20 showViewController:Strong sender:0];

  return (*(v9 + 8))(v12, v25);
}

void sub_29E0965E0(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  sub_29E2BF404();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136446466;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, v22);
    v21 = v4;
    v15 = a1;
    v16 = v14;

    *(v10 + 4) = v16;
    a1 = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_29DFAA104(v15, a2, v22);
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Resetting content state manager key %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v22[0] = a1;
  v22[1] = a2;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x74657365722ELL, 0xE600000000000000);
  sub_29E2C33A4();

  v17 = objc_allocWithZone(sub_29E2BDF64());
  v18 = sub_29E2BDF54();
  sub_29DE9408C(0, &qword_2A1819A60);
  v19 = sub_29E2C3B64();
  [v19 addOperation_];
}

void sub_29E096890()
{
  v1 = v0;
  v40[1] = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E097F00(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v37 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_healthStore);
  v11 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:4 domainName:*MEMORY[0x29EDC32A0] healthStore:v10];
  v40[0] = 0;
  v12 = [v11 hkmc:0 setOnboardingTileLastDismissedDate:v40 error:?];
  v13 = v40[0];
  if (v12)
  {
    v14 = objc_allocWithZone(MEMORY[0x29EDBAA90]);
    v15 = v13;
    v16 = [v14 initWithHealthStore_];
    v17 = sub_29E2C3734();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    sub_29E2C3714();
    v18 = v16;
    v19 = sub_29E2C3704();
    v20 = swift_allocObject();
    v21 = MEMORY[0x29EDCA390];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    v20[5] = 0xD000000000000023;
    v20[6] = 0x800000029E2FD6B0;
    v20[7] = ObjectType;
    sub_29E13C63C(0, 0, v9, &unk_29E2DC3F8, v20);
  }

  else
  {
    v22 = v40[0];
    v23 = sub_29E2BC7E4();

    swift_willThrow();
    sub_29E2C04B4();
    v24 = v23;
    v25 = sub_29E2C0504();
    v26 = sub_29E2C3A14();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v3;
      v29 = v28;
      v40[0] = v28;
      *v27 = 136446466;
      v30 = sub_29E2C4AE4();
      v32 = sub_29DFAA104(v30, v31, v40);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v39 = v23;
      v33 = v23;
      sub_29DE96670();
      v34 = sub_29E2C3424();
      v36 = sub_29DFAA104(v34, v35, v40);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_29DE74000, v25, v26, "[%{public}s] Error resetting onboarding summary tile: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v29, -1, -1);
      MEMORY[0x29ED82140](v27, -1, -1);

      (*(v4 + 8))(v6, v38);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_29E096DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_29E2C0514();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  sub_29E2C3714();
  v7[26] = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  v7[27] = v10;
  v7[28] = v9;

  return MEMORY[0x2A1C73D48](sub_29E096F00, v10, v9);
}

uint64_t sub_29E096F00()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBAA70]) initWithPush:1 pull:0 lite:1];
  v3 = [objc_allocWithZone(MEMORY[0x29EDBAAA8]) initWithChangesSyncRequest_];
  v0[29] = v3;

  v4 = sub_29E2C33A4();
  v0[30] = v4;
  v0[2] = v0;
  v0[3] = sub_29E097088;
  v5 = swift_continuation_init();
  sub_29DFE1154();
  v0[17] = v6;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29E27F6E4;
  v0[13] = &unk_2A24B98D8;
  v0[14] = v5;
  [v1 syncWithRequest:v3 reason:v4 completion:v0 + 10];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29E097088()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_29E09738C;
  }

  else
  {
    v5 = sub_29E0971B8;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E0971B8()
{
  v19 = v0;
  v2 = v0[29];
  v1 = v0[30];

  sub_29E2C04B4();
  sub_29E2BF404();
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  if (v5)
  {
    v16 = v0[19];
    v17 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446466;
    v11 = sub_29E2C4AE4();
    v13 = sub_29DFAA104(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29DFAA104(v16, v17, &v18);
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Requested sync for %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);

  v14 = v0[1];

  return v14();
}

uint64_t sub_29E09738C()
{
  v27 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  swift_willThrow();

  sub_29E2C04B4();
  sub_29E2BF404();
  v4 = v1;
  v5 = sub_29E2C0504();
  v6 = sub_29E2C3A14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  if (v7)
  {
    v25 = v0[24];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v12 = 136446722;
    v15 = sub_29E2C4AE4();
    v17 = sub_29DFAA104(v15, v16, v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29DFAA104(v22, v23, v26);
    *(v12 + 22) = 2114;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v13 = v19;
    _os_log_impl(&dword_29DE74000, v5, v6, "[%{public}s] Error requesting sync for %{public}s: %{public}@", v12, 0x20u);
    sub_29DF58A90(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v9 + 8))(v25, v24);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_29E0977AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_29E2C0514();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_29E2C3714();
  v6[9] = sub_29E2C3704();
  v9 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E0978A4, v9, v8);
}

uint64_t sub_29E0978A4()
{
  v28 = v0;
  v1 = v0[3];

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v26 = v0[8];
    v6 = v0[6];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v0[2] = v7;
    sub_29DE9408C(0, &unk_2A1A5E190);
    v13 = v7;
    v14 = sub_29E2C3464();
    v16 = sub_29DFAA104(v14, v15, &v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Received update: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v5 + 8))(v26, v6);
  }

  else
  {
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[3];
  v21 = v0[4];
  v22 = *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_pregnancyModel);
  *(v21 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_pregnancyModel) = v20;
  v23 = v20;

  sub_29E0925E8();

  v24 = v0[1];

  return v24();
}

uint64_t type metadata accessor for Section()
{
  result = qword_2A181BC60;
  if (!qword_2A181BC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E097CB8()
{
  result = sub_29DE9408C(319, &qword_2A1A62790);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InternalSettingsNotification();
    if (v2 <= 0x3F)
    {
      result = sub_29DE9408C(319, &qword_2A1A5E118);
      if (v3 <= 0x3F)
      {
        result = sub_29DE9408C(319, &unk_2A1A5E190);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_29E097D94(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_analysis] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_pregnancyModel] = 0;
  v9 = MEMORY[0x29EDCA190];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notifications] = MEMORY[0x29EDCA190];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notificationHoldInstructionCategories] = MEMORY[0x29EDCA1A0];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections] = v9;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___store] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___notificationSyncStore] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___coordinator] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_healthStore] = a1;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_initWithStyle_, 1);
  if (a2)
  {
    [a2 registerObserver_];
  }

  if (a3)
  {
    [a3 registerObserver:v11 isUserInitiated:1];
  }

  sub_29E0925E8();
  return v11;
}

uint64_t sub_29E097EB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E097F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E097F64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29DECA6A0;

  return sub_29E0977AC(a1, v4, v5, v6, v7, v8);
}

void sub_29E09802C()
{
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_analysis) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_pregnancyModel) = 0;
  v1 = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notifications) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_notificationHoldInstructionCategories) = MEMORY[0x29EDCA1A0];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_sections) = v1;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___store) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___notificationSyncStore) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController____lazy_storage___coordinator) = 0;
  sub_29E2C4724();
  __break(1u);
}

unint64_t _s24MenstrualCyclesAppPlugin17CycleTimelineStepO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

char *sub_29E098108()
{
  sub_29E098A0C(0, &qword_2A181DC80, &type metadata for FeatureStateRow, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  *(inited + 32) = 0;
  v1 = sub_29E144CB8(1, 2, 1, inited);
  *(v1 + 2) = 2;
  v1[33] = 1;
  v2 = *(v1 + 3);
  if (v2 <= 5)
  {
    v1 = sub_29E144CB8((v2 > 1), 3, 1, v1);
    v2 = *(v1 + 3);
  }

  *(v1 + 2) = 3;
  v1[34] = 2;
  if (v2 <= 7)
  {
    v1 = sub_29E144CB8((v2 > 1), 4, 1, v1);
    v2 = *(v1 + 3);
  }

  *(v1 + 2) = 4;
  v1[35] = 3;
  if (v2 <= 9)
  {
    v1 = sub_29E144CB8((v2 > 1), 5, 1, v1);
  }

  *(v1 + 2) = 5;
  v1[36] = 4;
  return v1;
}

void sub_29E098264(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = a1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446466;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, &v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v25 = v8;
    sub_29DE9408C(0, &qword_2A1A61DC0);
    v17 = v8;
    v18 = sub_29E2C3464();
    v20 = sub_29DFAA104(v18, v19, &v26);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received analysis: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);

    (*(v5 + 8))(v7, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_analysis);
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35InternalSettingsTableViewController_analysis) = v8;
  v22 = v8;

  sub_29E0925E8();
}

uint64_t sub_29E0984C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Section();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E098528(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29DECA6A0;

  return sub_29E096DFC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_29E098628(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DE9408C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E098690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E0986F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E098758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29E093700(a1, v4, v5, v7, v6);
}

void sub_29E098818()
{
  if (!qword_2A181BC78)
  {
    sub_29E098888();
    sub_29DE96670();
    v0 = sub_29E2C3754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BC78);
    }
  }
}

void sub_29E098888()
{
  if (!qword_2A1A61DD0)
  {
    v0 = sub_29E2C3844();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61DD0);
    }
  }
}

void sub_29E0988E0()
{
  if (!qword_2A181BC80)
  {
    sub_29E098628(255, &qword_2A181BC88, &qword_2A181BC90, 0x29EDC33B8, MEMORY[0x29EDC9A40]);
    sub_29DE96670();
    v0 = sub_29E2C3754();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BC80);
    }
  }
}

unint64_t sub_29E098990()
{
  result = qword_2A181BC98;
  if (!qword_2A181BC98)
  {
    sub_29E098A0C(255, &qword_2A181BCA0, &type metadata for FeatureStateRow, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181BC98);
  }

  return result;
}

void sub_29E098A0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E098A60()
{
  result = qword_2A181BCA8;
  if (!qword_2A181BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181BCA8);
  }

  return result;
}

uint64_t sub_29E098B0C()
{
  result = sub_29E2BD624();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MenstrualCyclesAnalysisChangeDetector();
    if (v2 <= 0x3F)
    {
      result = sub_29DEB1BC4(319, &qword_2A1A61590);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E098C4C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E09E360(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E098D04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E098D4C()
{
  result = qword_2A1A61E70;
  if (!qword_2A1A61E70)
  {
    sub_29E09E038(255, &unk_2A1A61E60, sub_29DF18BF0, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A61E70);
  }

  return result;
}

uint64_t sub_29E098DD4()
{
  v1 = v0;
  sub_29E09E774(0, &qword_2A1A5E408, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8AF0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v39 - v5;
  sub_29DEBB070();
  v40 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E554(0, &qword_2A1A5E990, sub_29DEBB070, sub_29DEAE54C, sub_29E09E18C);
  v48 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v39 = &v39 - v12;
  sub_29E09E1C0();
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E4C0();
  v47 = v16;
  v49 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v41 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E554(0, &qword_2A1A5E9C0, sub_29E09E4C0, type metadata accessor for CycleFactorsReminderGeneratorPipeline.Change, sub_29E09E5E4);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v39 - v20;
  v22 = type metadata accessor for CycleFactorsReminderGeneratorPipeline(0);
  swift_beginAccess();
  sub_29E09E774(0, &qword_2A1A5E3D0, &type metadata for HKMCAnalysisResult, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBB0F8();
  sub_29E2C1304();
  (*(v4 + 8))(v6, v3);
  sub_29DEAE54C();
  sub_29E09E18C();
  v23 = v40;
  sub_29E2C12A4();
  (*(v8 + 8))(v10, v23);
  v24 = (v0 + *(v22 + 28));
  v25 = v24[3];
  v26 = v24[4];
  sub_29DE966D4(v24, v25);
  v52 = sub_29DF94C2C(v1, v25, v26);
  v51 = sub_29E0994C4(v1);
  v27 = *(v1 + *(v22 + 24));
  v28 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v30 = sub_29DEB3180(v28, v29, v27);

  v50 = v30;
  v31 = MEMORY[0x29EDC2D78];
  sub_29E09E360(0, &qword_2A1A5E720, MEMORY[0x29EDC2D78]);
  sub_29E09E3C4();
  sub_29DEB3C9C(0);
  sub_29E09E424();
  sub_29E098C4C(&qword_2A1A5E728, &qword_2A1A5E720, v31);
  sub_29E098D04(&unk_2A1A5E630, sub_29E09E3C4);
  sub_29E098D04(&qword_2A1A5E758, sub_29DEB3C9C);
  v32 = v42;
  sub_29E2C0EB4();
  sub_29E2BD5F4();
  v33 = v41;
  v34 = v45;
  sub_29E2C0E94();
  (*(v46 + 8))(v32, v34);
  type metadata accessor for CycleFactorsReminderGeneratorPipeline.Change(0);
  sub_29E09E5E4();
  v35 = v47;
  sub_29E2C12A4();
  (*(v49 + 8))(v33, v35);
  sub_29E09E618();
  v36 = v43;
  v37 = sub_29E2C1274();
  (*(v44 + 8))(v21, v36);
  return v37;
}

uint64_t sub_29E0994C4(uint64_t a1)
{
  v74 = a1;
  sub_29E09E774(0, &qword_2A1A5E500, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
  v92 = v1;
  v69 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v68 = &v65 - v2;
  v67 = sub_29E2C0514();
  v66 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BD564();
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v88 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BE194();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v82 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BD594();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v85 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_29E2C3994();
  v71 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E7C4();
  v76 = v11;
  v75 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v72 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E860();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v79 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2BCE84();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BCEA4();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E038(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v25 = &v65 - v24;
  v26 = sub_29E2BCBB4();
  v27 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v91 = &v65 - v31;
  sub_29E2BCE44();
  (*(v16 + 104))(v18, *MEMORY[0x29EDB9CD8], v15);
  sub_29E2BCBA4();
  sub_29E2BCE04();
  v77 = *(v27 + 8);
  v78 = v27 + 8;
  v77(v29, v26);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_29E09DFC8(v25, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
    v32 = v65;
    sub_29E2C04B4();
    v33 = sub_29E2C0504();
    v34 = sub_29E2C3A14();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v93[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v93);
      _os_log_impl(&dword_29DE74000, v33, v34, "[%{public}s] Failed to subtract 3 months of the current date", v35, 0xCu);
      sub_29DE93B3C(v36);
      MEMORY[0x29ED82140](v36, -1, -1);
      MEMORY[0x29ED82140](v35, -1, -1);
    }

    (*(v66 + 8))(v32, v67);
    LOBYTE(v93[0]) = 1;
    v37 = v68;
    sub_29E2C1164();
    sub_29E09E940();
    v38 = v92;
    v39 = sub_29E2C1274();
    (*(v69 + 8))(v37, v38);
  }

  else
  {
    v40 = *(v27 + 32);
    v69 = v26;
    v40(v91, v25, v26);
    v41 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v43 = v42;
    sub_29DE9408C(0, &qword_2A1A5E280);
    sub_29DEB19DC();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_29E2CD7A0;
    *(v44 + 56) = MEMORY[0x29EDC99B0];
    *(v44 + 64) = sub_29DEB1A44();
    *(v44 + 32) = v41;
    *(v44 + 40) = v43;
    v45 = sub_29E2BCB04();
    *(v44 + 96) = sub_29DE9408C(0, &qword_2A1A5E0D0);
    *(v44 + 104) = sub_29E09E9BC();
    *(v44 + 72) = v45;
    v46 = sub_29E2C38D4();
    sub_29E2BD5A4();
    sub_29DE966D4(v93, v93[3]);
    v47 = sub_29E2BD4E4();
    v48 = HKMCCycleFactorsTypes();
    sub_29DE9408C(0, &qword_2A1A61D70);
    v49 = sub_29E2C3614();

    if (v49 >> 62)
    {
      sub_29DE9408C(0, &unk_2A1A61D90);
      sub_29E2BF404();
      sub_29E2C4744();
    }

    else
    {
      sub_29E2BF404();
      sub_29E2C4924();
      sub_29DE9408C(0, &unk_2A1A61D90);
    }

    v50 = v46;
    v51 = v70;
    sub_29E2C39B4();

    sub_29DE93B3C(v93);
    sub_29E098D04(&qword_2A1A5E228, MEMORY[0x29EDC2E78]);
    v52 = v72;
    v53 = v73;
    sub_29E2C12A4();
    (*(v71 + 8))(v51, v53);
    sub_29E098D04(&qword_2A1A5E978, sub_29E09E7C4);
    sub_29E09E940();
    v54 = v79;
    v55 = v76;
    sub_29E2C12C4();
    (*(v75 + 8))(v52, v55);
    sub_29E2BD614();
    sub_29E2BD274();
    sub_29E09E038(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v56 = sub_29E2BD234();
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_29E2CAB20;
    (*(v57 + 104))(v59 + v58, *MEMORY[0x29EDC3758], v56);
    v60 = v82;
    sub_29E110B7C(v82);
    sub_29E2BE184();
    (*(v83 + 8))(v60, v84);
    (*(v89 + 104))(v88, *MEMORY[0x29EDC3898], v90);
    v61 = v85;
    sub_29E2BD574();
    sub_29E098D04(&qword_2A1A5E938, sub_29E09E860);
    v62 = v81;
    v63 = sub_29E2C1264();
    (*(v86 + 8))(v61, v87);
    sub_29DE93B3C(v93);
    (*(v80 + 8))(v54, v62);
    v93[0] = v63;
    sub_29E09E3C4();
    sub_29E098D04(&unk_2A1A5E630, sub_29E09E3C4);
    v39 = sub_29E2C1274();

    v77(v91, v69);
  }

  return v39;
}

id sub_29E09A368@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v12 = *a1;
  sub_29E09E6B4();
  v5 = v4[12];
  v6 = *(a1 + v4[16]);
  v7 = v4[20];
  v8 = type metadata accessor for CycleFactorsReminderGeneratorPipeline.Change(0);
  v9 = v8[5];
  v10 = sub_29E2BFC94();
  (*(*(v10 - 8) + 16))(&a2[v9], a1 + v5, v10);
  sub_29DEAA194(a1 + v7, &a2[v8[7]]);
  *a2 = v12;
  a2[v8[6]] = v6;

  return v12;
}

uint64_t sub_29E09A448(_BYTE *a1)
{
  sub_29E09E038(0, &qword_2A1A626A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = sub_29E2BD4C4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BD5A4();
  sub_29DE966D4(v16, v16[3]);
  v9 = sub_29E2BD4E4();
  v10 = [objc_allocWithZone(MEMORY[0x29EDC3410]) initWithHealthStore_];

  sub_29DE93B3C(v16);
  sub_29E09A704(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E09DFC8(v4, &qword_2A1A626A0, MEMORY[0x29EDC3840]);
    [v10 setIsEligibleForCycleFactorsReminder_];
    v11 = MEMORY[0x29EDCA190];
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v8, v4, v5);
    [v10 setIsEligibleForCycleFactorsReminder_];
    sub_29E09E038(0, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29E2CAB20;
    v12((v11 + v13), v8, v5);
  }

  return v11;
}

uint64_t sub_29E09A704@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v334 = a1;
  v329 = a2;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  v327 = v2;
  v328 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v324 = &v248 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v321 = &v248 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v320 = &v248 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v319 = &v248 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v313 = &v248 - v12;
  MEMORY[0x2A1C7C4A8](v13);
  v312 = &v248 - v14;
  MEMORY[0x2A1C7C4A8](v15);
  v304 = &v248 - v16;
  MEMORY[0x2A1C7C4A8](v17);
  v259 = &v248 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v277 = &v248 - v20;
  MEMORY[0x2A1C7C4A8](v21);
  v276 = &v248 - v22;
  v275 = sub_29E2BD564();
  v274 = *(v275 - 8);
  MEMORY[0x2A1C7C4A8](v275);
  v273 = &v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_29E2BE194();
  v269 = *(v270 - 8);
  MEMORY[0x2A1C7C4A8](v270);
  v267 = &v248 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_29E2BD594();
  v271 = *(v272 - 8);
  MEMORY[0x2A1C7C4A8](v272);
  v268 = &v248 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = sub_29E2BD6E4();
  v264 = *(v266 - 8);
  MEMORY[0x2A1C7C4A8](v266);
  v262 = &v248 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_29E2BD794();
  v263 = *(v265 - 8);
  MEMORY[0x2A1C7C4A8](v265);
  v261 = &v248 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_29E2BD2E4();
  v297 = *(v298 - 8);
  MEMORY[0x2A1C7C4A8](v298);
  v296 = &v248 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_29E2BD234();
  v299 = *(v302 - 8);
  MEMORY[0x2A1C7C4A8](v302);
  v295 = &v248 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29E2BE8B4();
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v291 = &v248 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x29EDC9C68];
  sub_29E09E038(0, &unk_2A1A61600, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v33 - 8);
  v290 = &v248 - v34;
  v283 = sub_29E2BF064();
  MEMORY[0x2A1C7C4A8](v283);
  v284 = &v248 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E038(0, &qword_2A1A61610, MEMORY[0x29EDC17D8], v32);
  MEMORY[0x2A1C7C4A8](v36 - 8);
  v282 = &v248 - v37;
  sub_29E09E038(0, &qword_2A1A615E0, MEMORY[0x29EDC20F8], v32);
  MEMORY[0x2A1C7C4A8](v38 - 8);
  v281 = &v248 - v39;
  v40 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v40 - 8);
  v287 = &v248 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_29E2C3384();
  v305 = *(v288 - 8);
  MEMORY[0x2A1C7C4A8](v288);
  v285 = &v248 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43);
  v286 = &v248 - v44;
  v294 = sub_29E2BE8C4();
  v292 = *(v294 - 8);
  MEMORY[0x2A1C7C4A8](v294);
  v301 = &v248 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E038(0, &qword_2A1A626A0, MEMORY[0x29EDC3840], v32);
  MEMORY[0x2A1C7C4A8](v46 - 8);
  v293 = &v248 - v47;
  v48 = sub_29E2BD4C4();
  v331 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v280 = &v248 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for CycleFactorsReminderUserData();
  MEMORY[0x2A1C7C4A8](v289);
  v306 = &v248 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E09E038(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], v32);
  MEMORY[0x2A1C7C4A8](v51 - 8);
  v300 = &v248 - v52;
  v316 = sub_29E2C31A4();
  v314 = *(v316 - 8);
  MEMORY[0x2A1C7C4A8](v316);
  v303 = &v248 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v54);
  v315 = &v248 - v55;
  v311 = sub_29E2BCC94();
  v310 = *(v311 - 1);
  MEMORY[0x2A1C7C4A8](v311);
  v309 = &v248 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_29E2BCBB4();
  v326 = *(v323 - 1);
  MEMORY[0x2A1C7C4A8](v323);
  v279 = &v248 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v58);
  v322 = &v248 - v59;
  MEMORY[0x2A1C7C4A8](v60);
  v62 = &v248 - v61;
  v325 = sub_29E2BC5F4();
  v330 = *(v325 - 1);
  MEMORY[0x2A1C7C4A8](v325);
  v278 = &v248 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v64);
  v66 = &v248 - v65;
  v67 = sub_29E2BFC94();
  v68 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v70 = &v248 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E2BFC74();
  v72 = *(v71 - 8);
  MEMORY[0x2A1C7C4A8](v71);
  v74 = &v248 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_29E2BCEA4();
  v76 = *(v75 - 8);
  v332 = v75;
  v333 = v76;
  MEMORY[0x2A1C7C4A8](v75);
  v308 = &v248 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v78);
  v317 = &v248 - v79;
  MEMORY[0x2A1C7C4A8](v80);
  v82 = &v248 - v81;
  sub_29E2BCE44();
  v318 = type metadata accessor for CycleFactorsReminderGeneratorPipeline.Change(0);
  (*(v68 + 16))(v70, &v334[v318[5]], v67);
  if ((*(v68 + 88))(v70, v67) != *MEMORY[0x29EDC2D70])
  {
    v114 = v331;
    v115 = v329;
    (*(v68 + 8))(v70, v67);
    v116 = v324;
    sub_29E2C04B4();
    v117 = sub_29E2C0504();
    v118 = sub_29E2C3A34();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v336[0] = v120;
      *v119 = 136446210;
      *(v119 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
      _os_log_impl(&dword_29DE74000, v117, v118, "[%{public}s] Cycle Tracking not onboarded, not submitting Factors Reminder", v119, 0xCu);
      sub_29DE93B3C(v120);
      MEMORY[0x29ED82140](v120, -1, -1);
      MEMORY[0x29ED82140](v119, -1, -1);
    }

    (*(v328 + 8))(v116, v327);
    (*(v333 + 8))(v82, v332);
    return (*(v114 + 56))(v115, 1, 1, v48);
  }

  v324 = v48;
  (*(v68 + 96))(v70, v67);
  v258 = v72;
  (*(v72 + 32))(v74, v70, v71);
  sub_29E09E038(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v84 = v83;
  v85 = sub_29E2BCE84();
  v86 = *(v85 - 8);
  v87 = *(v86 + 80);
  v88 = (v87 + 32) & ~v87;
  v252 = *(v86 + 72);
  v251 = v87;
  v253 = v84;
  v89 = swift_allocObject();
  v256 = xmmword_29E2CAB20;
  *(v89 + 16) = xmmword_29E2CAB20;
  v90 = *(v86 + 104);
  v249 = *MEMORY[0x29EDB9CB8];
  v250 = v86 + 104;
  v248 = v90;
  v90(v89 + v88);
  sub_29DE924A4(v89);
  swift_setDeallocating();
  v91 = *(v86 + 8);
  v254 = v88;
  v92 = v89 + v88;
  v93 = v91;
  v255 = v85;
  v91(v92, v85);
  swift_deallocClassInstance();
  v257 = v74;
  sub_29E2BFC54();
  v94 = v322;
  sub_29E2BCBA4();
  v260 = v82;
  sub_29E2BCD04();

  v95 = *(v326 + 8);
  v96 = v323;
  (v95)(v94, v323);
  v322 = v62;
  v97 = v96;
  (v95)(v62, v96);
  v98 = sub_29E2BC554();
  v100 = v99;
  v101 = *(v330 + 1);
  v330 += 8;
  v101(v66, v325);
  v102 = v71;
  if ((v100 & 1) != 0 || v98 < 91)
  {
    v122 = v321;
    sub_29E2C04B4();
    v123 = sub_29E2C0504();
    v124 = sub_29E2C3A34();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = v71;
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v336[0] = v127;
      *v126 = 136446210;
      *(v126 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
      _os_log_impl(&dword_29DE74000, v123, v124, "[%{public}s] Not submitting Factors Reminder: cycle tracking onboarded less than 90 days ago", v126, 0xCu);
      sub_29DE93B3C(v127);
      MEMORY[0x29ED82140](v127, -1, -1);
      MEMORY[0x29ED82140](v126, -1, -1);

      (*(v328 + 8))(v122, v327);
      (*(v258 + 8))(v257, v125);
    }

    else
    {

      (*(v328 + 8))(v122, v327);
      (*(v258 + 8))(v257, v71);
    }

    (*(v333 + 8))(v260, v332);
    return (*(v331 + 56))(v329, 1, 1, v324);
  }

  v103 = v334;
  v104 = *v334;
  if (!*v334)
  {
    v128 = v320;
    sub_29E2C04B4();
    v129 = sub_29E2C0504();
    v130 = sub_29E2C3A14();
    v131 = os_log_type_enabled(v129, v130);
    v132 = v333;
    if (v131)
    {
      v133 = v102;
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v336[0] = v135;
      *v134 = 136446210;
      *(v134 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
      _os_log_impl(&dword_29DE74000, v129, v130, "[%{public}s] Not submitting Factors Reminder due to nil analysis", v134, 0xCu);
      sub_29DE93B3C(v135);
      MEMORY[0x29ED82140](v135, -1, -1);
      MEMORY[0x29ED82140](v134, -1, -1);

      (*(v328 + 8))(v128, v327);
      (*(v258 + 8))(v257, v133);
    }

    else
    {

      (*(v328 + 8))(v128, v327);
      (*(v258 + 8))(v257, v102);
    }

    (*(v132 + 8))(v260, v332);
    return (*(v331 + 56))(v329, 1, 1, v324);
  }

  v321 = v102;
  v105 = v104;
  v106 = [v105 isPeriodLogLate];
  v107 = v333;
  if (v106)
  {
    v108 = v319;
    sub_29E2C04B4();
    v109 = sub_29E2C0504();
    v110 = sub_29E2C3A34();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = v105;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v336[0] = v113;
      *v112 = 136446210;
      *(v112 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
      _os_log_impl(&dword_29DE74000, v109, v110, "[%{public}s] Not submitting Factors Reminder due to log being late", v112, 0xCu);
      sub_29DE93B3C(v113);
      MEMORY[0x29ED82140](v113, -1, -1);
      MEMORY[0x29ED82140](v112, -1, -1);
    }

    else
    {
    }

    (*(v328 + 8))(v108, v327);
    goto LABEL_32;
  }

  v320 = v105;
  v136 = [v105 deviations];
  if (v136)
  {
    v137 = v136;
    sub_29DE9408C(0, &qword_2A1A5E118);
    v138 = sub_29E2C3614();

    v139 = v138 >> 62 ? sub_29E2C4484() : *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v139)
    {
      v140 = v313;
      sub_29E2C04B4();
      v141 = sub_29E2C0504();
      v142 = sub_29E2C3A34();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v335 = v144;
        *v143 = 136446466;
        *(v143 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, &v335);
        v145 = "analysis contains unconfirmed deviations";
LABEL_26:
        *(v143 + 12) = 2080;
        v336[0] = 0xD000000000000028;
        v336[1] = (v145 - 32) | 0x8000000000000000;
        v146 = sub_29E2C3464();
        v148 = sub_29DFAA104(v146, v147, &v335);

        *(v143 + 14) = v148;
        _os_log_impl(&dword_29DE74000, v141, v142, "[%{public}s] Not submitting Factors Reminder: %s", v143, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v144, -1, -1);
        MEMORY[0x29ED82140](v143, -1, -1);
        goto LABEL_27;
      }

      goto LABEL_27;
    }
  }

  if (v103[v318[6]])
  {
    v140 = v312;
    sub_29E2C04B4();
    v141 = sub_29E2C0504();
    v142 = sub_29E2C3A34();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v335 = v144;
      *v143 = 136446466;
      *(v143 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, &v335);
      v145 = "cycle factor logged in the last 3 months";
      goto LABEL_26;
    }

LABEL_27:

    (*(v328 + 8))(v140, v327);
LABEL_32:
    (*(v258 + 8))(v257, v321);
    (*(v107 + 8))(v260, v332);
    return (*(v331 + 56))(v329, 1, 1, v324);
  }

  v149 = v310;
  v150 = v309;
  v151 = v311;
  (*(v310 + 104))(v309, *MEMORY[0x29EDB9C78], v311);
  v152 = v317;
  sub_29E2BCCA4();
  v153 = v150;
  v154 = v333;
  (*(v149 + 8))(v153, v151);
  (*(v154 + 16))(v308, v152, v332);
  sub_29E2BCBA4();
  v155 = v315;
  sub_29E2C3144();
  v156 = [v320 lastLoggedDayIndex];
  if (!v156)
  {
LABEL_42:
    v185 = v304;
    sub_29E2C04B4();
    v186 = sub_29E2C0504();
    v187 = sub_29E2C3A34();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = v155;
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v336[0] = v190;
      *v189 = 136446210;
      *(v189 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
      _os_log_impl(&dword_29DE74000, v186, v187, "[%{public}s] No recent Cycle Tracking samples logged, not submitting Factors Reminder", v189, 0xCu);
      sub_29DE93B3C(v190);
      MEMORY[0x29ED82140](v190, -1, -1);
      MEMORY[0x29ED82140](v189, -1, -1);

      (*(v328 + 8))(v185, v327);
      (*(v314 + 1))(v188, v316);
    }

    else
    {

      (*(v328 + 8))(v185, v327);
      (*(v314 + 1))(v155, v316);
    }

    v191 = *(v154 + 8);
    v192 = v332;
    v191(v317, v332);
    (*(v258 + 8))(v257, v321);
    v191(v260, v192);
    return (*(v331 + 56))(v329, 1, 1, v324);
  }

  v157 = v156;
  sub_29E2C3854();
  v158 = v303;
  sub_29E2C30D4();
  v159 = sub_29E2C3184();
  v313 = *(v314 + 1);
  v319 = v314 + 8;
  (v313)(v158, v316);
  if (v159 >= *(v307 + *(type metadata accessor for CycleFactorsReminderGeneratorPipeline(0) + 32)))
  {

    v154 = v333;
    goto LABEL_42;
  }

  v314 = v157;
  v160 = v300;
  sub_29DEAA194(&v334[v318[7]], v300);
  v161 = v326;
  v162 = v97;
  if ((*(v326 + 48))(v160, 1, v97) == 1)
  {
    sub_29E09DFC8(v160, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  }

  else
  {
    v193 = v279;
    (*(v161 + 32))(v279, v160, v162);
    v194 = v254;
    v195 = swift_allocObject();
    *(v195 + 16) = v256;
    v334 = v95;
    v196 = v255;
    v248(v195 + v194, v249, v255);
    sub_29DE924A4(v195);
    swift_setDeallocating();
    v93(v195 + v194, v196);
    swift_deallocClassInstance();
    v197 = v322;
    sub_29E2BCB54();
    v198 = v278;
    v199 = v260;
    sub_29E2BCD04();

    v200 = v197;
    v201 = v334;
    (v334)(v200, v162);
    v202 = sub_29E2BC554();
    v204 = v203;
    v101(v198, v325);
    v201(v193, v162);
    if ((v204 & 1) == 0 && v202 < 365)
    {
      v205 = v259;
      sub_29E2C04B4();
      v206 = sub_29E2C0504();
      v207 = sub_29E2C3A34();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v336[0] = v209;
        *v208 = 136446210;
        *(v208 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
        _os_log_impl(&dword_29DE74000, v206, v207, "[%{public}s] Cycle Factors reviewed in the last year, not submitting Factors Reminder", v208, 0xCu);
        sub_29DE93B3C(v209);
        MEMORY[0x29ED82140](v209, -1, -1);
        MEMORY[0x29ED82140](v208, -1, -1);
      }

      (*(v328 + 8))(v205, v327);
      (v313)(v315, v316);
      v210 = v332;
      v211 = *(v333 + 8);
      v211(v317, v332);
      (*(v258 + 8))(v257, v321);
      v211(v199, v210);
      return (*(v331 + 56))(v329, 1, 1, v324);
    }
  }

  sub_29DE9408C(0, &qword_2A1A61DC0);
  v330 = v320;
  sub_29E2C2ED4();
  v163 = v286;
  v326 = 0xD000000000000023;
  sub_29E2C3314();
  v164 = v305;
  v165 = v285;
  v166 = v288;
  v334 = *(v305 + 16);
  (v334)(v285, v163, v288);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v167 = qword_2A1A67F80;
  v168 = qword_2A1A67F80;
  v312 = v167;
  v169 = v168;
  sub_29E2BCC74();
  v325 = v169;
  v318 = 0xD000000000000012;
  v323 = sub_29E2C3414();
  v322 = v170;
  v171 = *(v164 + 8);
  v305 = v164 + 8;
  v311 = v171;
  (v171)(v163, v166);
  v172 = sub_29E2BE974();
  (*(*(v172 - 8) + 56))(v281, 1, 1, v172);
  v173 = sub_29E2BDE24();
  v174 = *(*(v173 - 8) + 56);
  v308 = "MINDER_CANCEL_PROMPT";
  v174(v282, 1, 1, v173);
  v336[0] = MEMORY[0x29EDCA190];
  sub_29E098D04(&unk_2A181A7D0, MEMORY[0x29EDC2550]);
  sub_29E09E038(0, &unk_2A181B290, MEMORY[0x29EDC2550], MEMORY[0x29EDC9A40]);
  sub_29DECE044();
  sub_29E2C43F4();
  sub_29E2BEF64();
  swift_allocObject();
  v323 = sub_29E2BEF54();
  sub_29E2C3314();
  (v334)(v165, v163, v166);
  sub_29E2BCC74();
  v322 = sub_29E2C3414();
  v320 = v175;
  v176 = v311;
  (v311)(v163, v166);
  sub_29E2C3314();
  (v334)(v165, v163, v166);
  sub_29E2BCC74();
  v310 = sub_29E2C3414();
  v309 = v177;
  v176(v163, v166);
  sub_29E2C3314();
  (v334)(v165, v163, v166);
  sub_29E2BCC74();
  sub_29E2C3414();
  v176(v163, v166);
  v178 = v290;
  sub_29E2BDE34();
  v179 = sub_29E2BDE44();
  (*(*(v179 - 8) + 56))(v178, 0, 1, v179);
  sub_29E2BE894();
  sub_29E09E038(0, &qword_2A181B2A0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9E90]);
  v180 = sub_29E2BE2A4();
  v181 = *(v180 - 8);
  v182 = (*(v181 + 80) + 32) & ~*(v181 + 80);
  v183 = swift_allocObject();
  *(v183 + 16) = v256;
  (*(v181 + 104))(v183 + v182, *MEMORY[0x29EDC1D60], v180);
  sub_29E2BE884();
  sub_29E2BC2E4();
  swift_allocObject();
  sub_29E2BC2D4();
  sub_29E098D04(&qword_2A181BCB0, type metadata accessor for CycleFactorsReminderUserData);
  v184 = sub_29E2BC2C4();
  v213 = v212;
  v334 = v184;

  v214 = v299;
  v215 = v297;
  sub_29E09E09C();
  v216 = *(v214 + 104);
  v217 = v295;
  LODWORD(v325) = *MEMORY[0x29EDC3758];
  v326 = v214 + 104;
  v323 = v216;
  v216(v295);
  v218 = sub_29E2BD5D4();
  v219 = v296;
  v220 = v298;
  (*(v215 + 104))(v296, *MEMORY[0x29EDC1B28], v298);
  sub_29E098D04(&qword_2A181BCC8, sub_29E09E09C);
  v221 = v293;
  v222 = v301;
  sub_29E2BD2D4();

  sub_29DF1DD38(v334, v213);
  (*(v215 + 8))(v219, v220);
  v223 = v217;
  v224 = v302;
  (*(v214 + 8))(v223, v302);
  (*(v292 + 8))(v222, v294);
  v225 = v331;
  v226 = *(v331 + 56);
  v227 = v324;
  v226(v221, 0, 1, v324);
  v228 = *(v225 + 32);
  v331 = v225 + 32;
  v334 = v228;
  (v228)(v280, v221, v227);
  sub_29E09E774(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = v256;
  *(inited + 32) = sub_29E2BD664();
  *(inited + 40) = v230;
  v231 = sub_29E2BD494();
  sub_29DECE164(inited);
  swift_setDeallocating();
  sub_29DECE1D4(inited + 32);
  v231(v336, 0);
  (*(v264 + 104))(v262, *MEMORY[0x29EDC3910], v266);
  v232 = v261;
  sub_29E2BD7A4();
  v233 = v265;
  sub_29E2BD314();
  (*(v263 + 8))(v232, v233);
  sub_29E2BD274();
  sub_29E09E038(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v234 = (*(v214 + 80) + 32) & ~*(v214 + 80);
  v235 = swift_allocObject();
  *(v235 + 16) = v256;
  (v323)(v235 + v234, v325, v224);
  v236 = v267;
  sub_29E110B7C(v267);
  sub_29E2BE184();
  (*(v269 + 8))(v236, v270);
  (*(v274 + 104))(v273, *MEMORY[0x29EDC3898], v275);
  v237 = v268;
  sub_29E2BD574();
  sub_29E2BD584();
  (*(v271 + 8))(v237, v272);
  sub_29E2BD3A4();
  sub_29E2BD354();
  v238 = v276;
  sub_29E2C04B4();
  v239 = sub_29E2C0504();
  v240 = sub_29E2C3A34();
  if (os_log_type_enabled(v239, v240))
  {
    v242 = swift_slowAlloc();
    v243 = swift_slowAlloc();
    v336[0] = v243;
    *v242 = 136446210;
    *(v242 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, v336);
    _os_log_impl(&dword_29DE74000, v239, v240, "[%{public}s] Submitting Cycle Factors reminder feed item", v242, 0xCu);
    sub_29DE93B3C(v243);
    MEMORY[0x29ED82140](v243, -1, -1);
    MEMORY[0x29ED82140](v242, -1, -1);
  }

  (*(v328 + 8))(v238, v327);
  sub_29E09E130(v306);
  (v313)(v315, v316);
  v244 = v332;
  v245 = *(v333 + 8);
  v245(v317, v332);
  (*(v258 + 8))(v257, v321);
  v245(v260, v244);
  v246 = v329;
  v247 = v324;
  (v334)(v329, v280, v324);
  return (v226)(v246, 0, 1, v247);
}

uint64_t *sub_29E09D8E8@<X0>(uint64_t *result@<X0>, BOOL *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v4 = *result;
  v5 = 1 << *(*result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v8 = *(v4 + 64);
  v7 = v4 + 64;
  v9 = v6 & v8;
  v10 = (v5 + 63) >> 6;
  while (v9)
  {
    v11 = v2;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(*result + 56) + ((v11 << 9) | (8 * v12)));
    v14 = __OFADD__(v3, v13);
    v3 += v13;
    if (v14)
    {
      __break(1u);
LABEL_13:
      *a2 = v3 > 0;
      return result;
    }
  }

  while (1)
  {
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 8 * v11);
    ++v2;
    if (v9)
    {
      v2 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E09D990(void **a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_29E2C04B4();
  v7 = v6;
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A14();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_29DFAA104(0xD000000000000025, 0x800000029E2DC4E0, &v18);
    *(v10 + 12) = 2082;
    v17 = v6;
    v12 = v6;
    sub_29DEB1BC4(0, &qword_2A1A61C90);
    v13 = sub_29E2C3424();
    v15 = sub_29DFAA104(v13, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Error fetching cycle factors sample count: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  LOBYTE(v18) = 1;
  return sub_29E2C1164();
}

uint64_t sub_29E09DBEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E098DD4();
  *a1 = result;
  return result;
}

uint64_t sub_29E09DC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E098D04(&qword_2A1A5FD40, type metadata accessor for CycleFactorsReminderGeneratorPipeline);

  return MEMORY[0x2A1C65578](a1, a2, v4);
}

uint64_t sub_29E09DCE0(uint64_t a1)
{
  v2 = sub_29E098D04(qword_2A1A5FD48, type metadata accessor for CycleFactorsReminderGeneratorPipeline);

  return MEMORY[0x2A1C65560](a1, v2);
}

uint64_t sub_29E09DD4C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_29E2BD564();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BE194();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = sub_29E2BD274();
  sub_29E09E038(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v9 = sub_29E2BD234();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2CAB20;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x29EDC3758], v9);
  sub_29E110B7C(v8);
  sub_29E2BE184();
  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, *MEMORY[0x29EDC3898], v1);
  return sub_29E2BD574();
}

uint64_t sub_29E09DFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E09E038(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E09E038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E09E09C()
{
  if (!qword_2A181BCB8)
  {
    type metadata accessor for CycleFactorsReminderActionHandler();
    sub_29E098D04(&qword_2A181BCC0, type metadata accessor for CycleFactorsReminderActionHandler);
    v0 = sub_29E2BE994();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BCB8);
    }
  }
}

uint64_t sub_29E09E130(uint64_t a1)
{
  v2 = type metadata accessor for CycleFactorsReminderUserData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E09E1C0()
{
  if (!qword_2A1A5EB98)
  {
    sub_29E09E554(255, &qword_2A1A5E990, sub_29DEBB070, sub_29DEAE54C, sub_29E09E18C);
    v0 = MEMORY[0x29EDC2D78];
    sub_29E09E360(255, &qword_2A1A5E720, MEMORY[0x29EDC2D78]);
    sub_29E09E3C4();
    sub_29DEB3C9C(255);
    sub_29E09E424();
    sub_29E098C4C(&qword_2A1A5E728, &qword_2A1A5E720, v0);
    sub_29E098D04(&unk_2A1A5E630, sub_29E09E3C4);
    sub_29E098D04(&qword_2A1A5E758, sub_29DEB3C9C);
    v1 = sub_29E2C0EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A5EB98);
    }
  }
}

void sub_29E09E360(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C1024();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E09E3C4()
{
  if (!qword_2A1A5E628)
  {
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E628);
    }
  }
}

unint64_t sub_29E09E424()
{
  result = qword_2A1A5E998;
  if (!qword_2A1A5E998)
  {
    sub_29E09E554(255, &qword_2A1A5E990, sub_29DEBB070, sub_29DEAE54C, sub_29E09E18C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E998);
  }

  return result;
}

void sub_29E09E4C0()
{
  if (!qword_2A1A5E838)
  {
    sub_29E09E1C0();
    sub_29E098D04(&unk_2A1A5EBA0, sub_29E09E1C0);
    v0 = sub_29E2C0F64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E838);
    }
  }
}

void sub_29E09E554(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = sub_29E2C0F24();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E09E618()
{
  result = qword_2A1A5E9C8;
  if (!qword_2A1A5E9C8)
  {
    sub_29E09E554(255, &qword_2A1A5E9C0, sub_29E09E4C0, type metadata accessor for CycleFactorsReminderGeneratorPipeline.Change, sub_29E09E5E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E9C8);
  }

  return result;
}

void sub_29E09E6B4()
{
  if (!qword_2A1A5E268)
  {
    sub_29DEAE54C();
    sub_29E2BFC94();
    sub_29E09E038(255, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1A5E268);
    }
  }
}

void sub_29E09E774(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E09E7C4()
{
  if (!qword_2A1A5E970)
  {
    sub_29E2C3994();
    sub_29E098D04(&qword_2A1A5E228, MEMORY[0x29EDC2E78]);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E970);
    }
  }
}

void sub_29E09E860()
{
  if (!qword_2A1A5E930)
  {
    sub_29E09E7C4();
    sub_29E09E774(255, &qword_2A1A5E500, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
    sub_29E098D04(&qword_2A1A5E978, sub_29E09E7C4);
    sub_29E09E940();
    v0 = sub_29E2C0F44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E930);
    }
  }
}

unint64_t sub_29E09E940()
{
  result = qword_2A1A5E508;
  if (!qword_2A1A5E508)
  {
    sub_29E09E774(255, &qword_2A1A5E500, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E508);
  }

  return result;
}

unint64_t sub_29E09E9BC()
{
  result = qword_2A1A5E0C8;
  if (!qword_2A1A5E0C8)
  {
    sub_29DE9408C(255, &qword_2A1A5E0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E0C8);
  }

  return result;
}

void sub_29E09EA4C()
{
  sub_29DEAE54C();
  if (v0 <= 0x3F)
  {
    sub_29E2BFC94();
    if (v1 <= 0x3F)
    {
      sub_29E09E038(319, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E09EB30(void *a1)
{
  v221 = a1;
  sub_29E0A0B9C(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v222 = &v219 - v2;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v235 = &v219 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_29E2C3384();
  v5 = *(v225 - 8);
  MEMORY[0x2A1C7C4A8](v225);
  v7 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v219 - v9;
  sub_29E0A0B9C(0, &qword_2A1818A10, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v11 = sub_29E2BDD14();
  v12 = *(*(v11 - 8) + 72);
  v240 = *(v11 - 8);
  v13 = (*(v240 + 80) + 32) & ~*(v240 + 80);
  v230 = v12;
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_29E2DC600;
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v239 = qword_2A1A67F80;
  v14 = qword_2A1A67F80;
  v15 = sub_29E2C33A4();
  v16 = [objc_opt_self() imageNamed:v15 inBundle:v14 compatibleWithTraitCollection:0];

  if (v16)
  {
    v17 = v224 + v13;
    v236 = v17;
    *v17 = v16;
    *(v17 + 8) = 0;
    v18 = *MEMORY[0x29EDC1608];
    v19 = *(v240 + 104);
    v240 += 104;
    v232 = v19;
    v19(v17, v18, v11);
    v20 = (v17 + v230);
    sub_29E2C3314();
    v233 = *(v5 + 16);
    v237 = v5 + 16;
    v238 = "Pregnancy Stages";
    v21 = v7;
    v22 = v7;
    v23 = v225;
    v233(v22, v10, v225);
    sub_29E2BCC74();
    v228 = v14;
    v24 = sub_29E2C3414();
    v234 = v11;
    v25 = v24;
    v27 = v26;
    v229 = *(v5 + 8);
    v241 = v5 + 8;
    v28 = v23;
    v229(v10, v23);
    *v20 = v25;
    v20[1] = v27;
    v232(v20, *MEMORY[0x29EDC1610], v11);
    v29 = v230;
    v226 = (2 * v230);
    v30 = (v236 + 2 * v230);
    v227 = 0xD000000000000013;
    sub_29E2C3314();
    v231 = v21;
    v31 = v233;
    v233(v21, v10, v28);
    sub_29E2BCC74();
    v223 = v228;
    v32 = sub_29E2C3414();
    v34 = v33;
    v229(v10, v28);
    *v30 = v32;
    *(v30 + 1) = v34;
    v30[16] = 0;
    LODWORD(v228) = *MEMORY[0x29EDC1630];
    v35 = v232;
    (v232)(v30);
    v36 = &v226[v29 + v236];
    sub_29E2C3314();
    v37 = v28;
    v31(v231, v10, v28);
    sub_29E2BCC74();
    v223 = v223;
    v38 = sub_29E2C3414();
    v40 = v39;
    v229(v10, v37);
    *v36 = v38;
    *(v36 + 1) = v40;
    v36[16] = 0;
    v35(v36, v228, v234);
    v41 = v230;
    v226 = (4 * v230);
    v42 = (v236 + 4 * v230);
    sub_29E2C3314();
    v43 = v233;
    v233(v231, v10, v37);
    sub_29E2BCC74();
    v223 = v223;
    v44 = sub_29E2C3414();
    v46 = v45;
    v47 = v225;
    v48 = v229;
    v229(v10, v225);
    *v42 = v44;
    *(v42 + 1) = v46;
    v42[16] = 0;
    v232(v42, v228, v234);
    v49 = &v226[v41 + v236];
    sub_29E2C3314();
    v50 = v231;
    v43(v231, v10, v47);
    sub_29E2BCC74();
    v223 = v223;
    v51 = v50;
    v52 = sub_29E2C3414();
    v54 = v53;
    v48(v10, v47);
    *v49 = v52;
    v49[1] = v54;
    v49[2] = 0;
    LODWORD(v226) = *MEMORY[0x29EDC15D0];
    v55 = v232;
    (v232)(v49);
    v56 = (v236 + 6 * v230);
    sub_29E2C3314();
    v233(v51, v10, v47);
    sub_29E2BCC74();
    v220 = v223;
    v57 = sub_29E2C3414();
    v59 = v58;
    v60 = v47;
    v61 = v47;
    v62 = v229;
    v229(v10, v61);
    *v56 = v57;
    *(v56 + 1) = v59;
    v56[16] = 0;
    v63 = v51;
    v64 = v60;
    v65 = v228;
    v55(v56, v228, v234);
    v223 = (8 * v230);
    v66 = v236;
    v67 = (v236 + 7 * v230);
    sub_29E2C3314();
    v233(v63, v10, v64);
    sub_29E2BCC74();
    v220 = v220;
    v68 = sub_29E2C3414();
    v70 = v69;
    v62(v10, v64);
    *v67 = v68;
    *(v67 + 1) = v70;
    v67[16] = 0;
    v71 = v65;
    v72 = v234;
    v73 = v232;
    v232(v67, v71, v234);
    v74 = &v223[v66];
    sub_29E2C3314();
    v75 = v233;
    v233(v231, v10, v64);
    sub_29E2BCC74();
    v220 = v220;
    v76 = sub_29E2C3414();
    v78 = v77;
    v79 = v229;
    v229(v10, v64);
    *v74 = v76;
    *(v74 + 1) = v78;
    v74[16] = 0;
    v73(v74, v228, v72);
    v80 = v64;
    v81 = v230;
    v82 = v236;
    v83 = &v223[v230 + v236];
    sub_29E2C3314();
    v75(v231, v10, v80);
    sub_29E2BCC74();
    v223 = v220;
    v84 = sub_29E2C3414();
    v86 = v85;
    v79(v10, v80);
    *v83 = v84;
    v83[1] = v86;
    v83[2] = 0;
    v87 = v234;
    v232(v83, v226, v234);
    v88 = v82 + 10 * v81;
    v89 = v80;
    v90 = v231;
    sub_29E2C3314();
    v233(v90, v10, v80);
    sub_29E2BCC74();
    v223 = v223;
    v91 = sub_29E2C3414();
    v93 = v92;
    v94 = v229;
    v229(v10, v80);
    *v88 = v91;
    *(v88 + 1) = v93;
    v88[16] = 0;
    v95 = v232;
    v232(v88, v228, v87);
    v96 = (v236 + 11 * v230);
    sub_29E2C3314();
    v233(v231, v10, v89);
    sub_29E2BCC74();
    v223 = v223;
    v97 = sub_29E2C3414();
    v99 = v98;
    v94(v10, v89);
    *v96 = v97;
    *(v96 + 1) = v99;
    v96[16] = 0;
    v100 = v228;
    v95(v96, v228, v234);
    v101 = v236;
    v102 = v230;
    v103 = (v236 + 12 * v230);
    sub_29E2C3314();
    v104 = v233;
    v233(v231, v10, v89);
    sub_29E2BCC74();
    v223 = v223;
    v105 = sub_29E2C3414();
    v107 = v106;
    v108 = v229;
    v229(v10, v89);
    *v103 = v105;
    *(v103 + 1) = v107;
    v103[16] = 0;
    v232(v101 + 12 * v102, v100, v234);
    v109 = v101 + 13 * v102;
    sub_29E2C3314();
    v104(v231, v10, v89);
    sub_29E2BCC74();
    v223 = v223;
    v110 = sub_29E2C3414();
    v112 = v111;
    v108(v10, v89);
    *v109 = v110;
    *(v109 + 1) = v112;
    v109[16] = 0;
    v113 = v232;
    v232(v109, v228, v234);
    v114 = (v236 + 14 * v230);
    sub_29E2C3314();
    v115 = v231;
    v233(v231, v10, v89);
    sub_29E2BCC74();
    v220 = v223;
    v116 = sub_29E2C3414();
    v118 = v117;
    v229(v10, v89);
    *v114 = v116;
    v114[1] = v118;
    v114[2] = 0;
    v113(v114, v226, v234);
    v223 = (16 * v230);
    v119 = v236;
    v120 = (v236 + 15 * v230);
    sub_29E2C3314();
    v233(v115, v10, v89);
    sub_29E2BCC74();
    v220 = v220;
    v121 = sub_29E2C3414();
    v123 = v122;
    v124 = v89;
    v125 = v229;
    v229(v10, v89);
    *v120 = v121;
    *(v120 + 1) = v123;
    v120[16] = 0;
    v126 = v228;
    v232(v120, v228, v234);
    v127 = &v223[v119];
    sub_29E2C3314();
    v128 = v233;
    v233(v231, v10, v124);
    sub_29E2BCC74();
    v220 = v220;
    v129 = sub_29E2C3414();
    v131 = v130;
    v125(v10, v124);
    *v127 = v129;
    *(v127 + 1) = v131;
    v127[16] = 0;
    v132 = v234;
    v133 = v232;
    v232(v127, v126, v234);
    v134 = &v223[v230 + v236];
    sub_29E2C3314();
    v135 = v231;
    v128(v231, v10, v124);
    sub_29E2BCC74();
    v136 = v220;
    v137 = v135;
    v138 = sub_29E2C3414();
    v140 = v139;
    v229(v10, v124);
    *v134 = v138;
    *(v134 + 1) = v140;
    v134[16] = 0;
    v133(v134, v228, v132);
    v141 = v230;
    v142 = (v236 + 18 * v230);
    sub_29E2C3314();
    v143 = v233;
    v233(v137, v10, v124);
    sub_29E2BCC74();
    v223 = v136;
    v144 = sub_29E2C3414();
    v146 = v145;
    v147 = v229;
    v229(v10, v124);
    *v142 = v144;
    *(v142 + 1) = v146;
    v142[16] = 0;
    v232(v142, v228, v234);
    v148 = (v236 + 19 * v141);
    sub_29E2C3314();
    v149 = v231;
    v150 = v124;
    v143(v231, v10, v124);
    sub_29E2BCC74();
    v223 = v223;
    v151 = v149;
    v152 = sub_29E2C3414();
    v154 = v153;
    v147(v10, v150);
    *v148 = v152;
    v148[1] = v154;
    v148[2] = 0;
    v232(v148, v226, v234);
    v155 = (v236 + 20 * v230);
    sub_29E2C3314();
    v233(v151, v10, v150);
    sub_29E2BCC74();
    v223 = v223;
    v156 = sub_29E2C3414();
    v158 = v157;
    v159 = v150;
    v147(v10, v150);
    *v155 = v156;
    v155[1] = v158;
    v160 = v222;
    sub_29E2BC8F4();
    v161 = sub_29E2BC904();
    v162 = *(v161 - 8);
    if ((*(v162 + 48))(v160, 1, v161) != 1)
    {
      sub_29E0A0C00();
      v164 = *(v163 + 48);
      (*(v162 + 32))(v155 + v164, v160, v161);
      v165 = *MEMORY[0x29EDC15C0];
      v220 = sub_29E2BDD04();
      v166 = *(v220 - 1);
      v219 = *(v166 + 104);
      v222 = (v166 + 104);
      v219(v155 + v164, v165, v220);
      v167 = v232;
      v232(v155, *MEMORY[0x29EDC1600], v234);
      v168 = v167;
      v169 = (v236 + 21 * v230);
      v170 = v230;
      sub_29E2C3314();
      v233(v151, v10, v159);
      sub_29E2BCC74();
      v223 = v223;
      v171 = sub_29E2C3414();
      v173 = v172;
      v229(v10, v159);
      *v169 = v171;
      *(v169 + 1) = v173;
      v169[16] = 0;
      v168(v169, v228, v234);
      v174 = v236;
      v175 = (v236 + 22 * v170);
      sub_29E2C3314();
      v233(v151, v10, v159);
      sub_29E2BCC74();
      v223 = v223;
      v176 = sub_29E2C3414();
      v178 = v177;
      v179 = v229;
      v229(v10, v159);
      *v175 = v176;
      *(v175 + 1) = v178;
      v175[16] = 0;
      v232(v175, v228, v234);
      v180 = v174 + 23 * v170;
      sub_29E2C3314();
      v181 = v233;
      v233(v231, v10, v159);
      sub_29E2BCC74();
      v223 = v223;
      v182 = sub_29E2C3414();
      v184 = v183;
      v179(v10, v159);
      *v180 = v182;
      *(v180 + 1) = v184;
      v180[16] = 0;
      v185 = v228;
      v186 = v234;
      v232(v180, v228, v234);
      v187 = (v236 + 24 * v230);
      sub_29E2C3314();
      v181(v231, v10, v159);
      sub_29E2BCC74();
      v223 = v223;
      v188 = sub_29E2C3414();
      v190 = v189;
      v229(v10, v159);
      *v187 = v188;
      v187[1] = v190;
      *(v187 + 16) = 0;
      v232(v187, v185, v186);
      v191 = v236;
      v192 = (v236 + 25 * v230);
      sub_29E2C3314();
      v193 = v233;
      v233(v231, v10, v159);
      sub_29E2BCC74();
      v223 = v223;
      v194 = sub_29E2C3414();
      v196 = v195;
      v197 = v225;
      v229(v10, v225);
      *v192 = v194;
      v192[1] = v196;
      v192[2] = 0;
      v198 = v234;
      v199 = v232;
      v232(v192, v226, v234);
      v200 = v191 + 26 * v230;
      sub_29E2C3314();
      v193(v231, v10, v197);
      sub_29E2BCC74();
      v226 = v223;
      v201 = sub_29E2C3414();
      v203 = v202;
      v229(v10, v197);
      *v200 = v201;
      *(v200 + 1) = v203;
      v200[16] = 0;
      v199(v200, v228, v198);
      v204 = (v236 + 27 * v230);
      sub_29E0A0C6C(0);
      v236 = v204 + *(v205 + 80);
      sub_29E2C3314();
      v206 = v231;
      v233(v231, v10, v197);
      sub_29E2BCC74();
      v207 = v226;
      v208 = sub_29E2C3414();
      v210 = v209;
      v211 = v229;
      v229(v10, v197);
      *v204 = v208;
      v204[1] = v210;
      sub_29E2C3314();
      v233(v206, v10, v197);
      sub_29E2BCC74();
      v212 = sub_29E2C3414();
      v214 = v213;
      v211(v10, v197);
      v204[2] = v212;
      v204[3] = v214;
      v204[4] = 0;
      v204[5] = 0;
      v215 = swift_allocObject();
      v216 = v221;
      *(v215 + 16) = v221;
      v217 = v236;
      *v236 = sub_29E0A0DA8;
      v217[1] = v215;
      v219(v217, *MEMORY[0x29EDC15B8], v220);
      v232(v204, *MEMORY[0x29EDC15E8], v234);
      v218 = v216;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E0A0A08()
{
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A67F80;
  v1 = sub_29E2C33A4();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v2)
  {
    __break(1u);
  }
}

id sub_29E0A0AD0()
{
  sub_29DF27598(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CE220;
  result = [objc_opt_self() pregnancyType];
  if (result)
  {
    *(inited + 32) = result;
    sub_29DE927B8(inited);
    v3 = v2;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E0A0B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E0A0C00()
{
  if (!qword_2A181BCD0)
  {
    sub_29E2BDD04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181BCD0);
    }
  }
}

void sub_29E0A0C6C(uint64_t a1)
{
  if (!qword_2A181BCD8)
  {
    MEMORY[0x2A1C7C4A8](a1);
    sub_29DF27598(255, &qword_2A1A5E338, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29E2BDD04();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181BCD8);
    }
  }
}

uint64_t sub_29E0A0DB4()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E0A0FA4()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E0A11A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29E0A11E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for PDFCoverPageModel.CycleSection()
{
  result = qword_2A181BCE0;
  if (!qword_2A181BCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0A12DC()
{
  sub_29E2BC5F4();
  if (v0 <= 0x3F)
  {
    sub_29E0A1370();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E0A1370()
{
  if (!qword_2A181BCF0)
  {
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181BCF0);
    }
  }
}

__n128 sub_29E0A13D0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29E0A13FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E0A1444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E0A14AC()
{

  return swift_deallocClassInstance();
}

void sub_29E0A15B4(void *a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136446210;
    v13 = sub_29E2C4AE4();
    v15 = sub_29DFAA104(v13, v14, v25);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%{public}s] Cycle Log Options Button Tapped", v11, 0xCu);
    sub_29DE93B3C(v12);
    MEMORY[0x29ED82140](v12, -1, -1);
    v16 = v11;
    a1 = v24;
    MEMORY[0x29ED82140](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = sub_29E2A0450();
  v25[1] = &unk_2A2522090;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (!v18)
  {

    v22 = [a1 viewController];
    if (!v22)
    {
      return;
    }

    v21 = v22;
    v17 = sub_29E2A0450();
    [v21 showViewController:v17 sender:v2];
    goto LABEL_8;
  }

  v19 = v18;
  v20 = [a1 viewController];
  if (v20)
  {
    v21 = v20;
    [v20 showAdaptively:v19 sender:v2];
LABEL_8:
  }
}

uint64_t sub_29E0A1838@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = v20 - v8;
  sub_29E2C3314();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v12 = v11;
  v13 = sub_29E2C3414();
  v20[1] = v14;
  v20[2] = v13;
  v15 = *(v4 + 8);
  v15(v9, v3);
  sub_29E2C3314();
  v10(v6, v9, v3);
  sub_29E2BCC74();
  sub_29E2C3414();
  v15(v9, v3);
  swift_allocObject();
  swift_weakInit();

  sub_29E2C0844();
  v16 = sub_29E2BE0B4();
  swift_allocObject();
  v17 = sub_29E2BE094();

  v18 = v21;
  v21[3] = v16;
  result = sub_29E0A22DC(&unk_2A181CC00, 255, MEMORY[0x29EDC1C30]);
  v18[4] = result;
  *v18 = v17;
  return result;
}

uint64_t sub_29E0A1BE8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E0A15B4(a1);
  }

  return result;
}

uint64_t sub_29E0A1CDC(char a1)
{
  v2 = v1;
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C2B84();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v11 = sub_29E2C3CF4();
  (*(v9 + 104))(v11, *MEMORY[0x29EDCA278], v8);
  v12 = sub_29E2C2BA4();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446466;
      v18 = sub_29E2C4AE4();
      v20 = sub_29DFAA104(v18, v19, &v29);
      v27 = v4;
      v21 = v20;

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = a1 & 1;
      v28 = a1 & 1;
      v23 = sub_29E2C3464();
      v25 = sub_29DFAA104(v23, v24, &v29);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Received onboarding completion update to: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);

      result = (*(v5 + 8))(v7, v27);
    }

    else
    {

      result = (*(v5 + 8))(v7, v4);
      v22 = a1 & 1;
    }

    *(v2 + 56) = v22;
    *(*(v2 + 48) + 144) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29E0A2024(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_29E2C0AD4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0AB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C0B44();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() systemBackgroundColor];
  (*(v6 + 104))(v8, *MEMORY[0x29EDC7848], v5);
  sub_29E2C0AE4();
  (*(v2 + 104))(v4, *MEMORY[0x29EDC7860], v1);
  sub_29E2C0B04();
  v14 = v13;
  sub_29E2C0B14();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v15 = sub_29E2C3F34();
  [v15 contentInsets];
  [v15 setContentInsets_];

  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_29E0A22DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E0A2324(void *a1, char a2)
{
  v22.super_class = swift_getObjectType();
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v21 - v11;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_coordinator] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_offboardingStep] = xmmword_29E2D6C10;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_hidesBackButton] = a2;
  v22.receiver = v2;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_medicalIDData] = a1;
  v13 = a1;
  [v13 isDisabled];
  v21 = v13;
  [v13 shareDuringEmergency];
  v25 = "EDING_ALERT_MESSAGE";
  sub_29E2C3314();
  v24 = *(v7 + 16);
  v24(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  v14 = *(v7 + 8);
  v14(v12, v6);
  sub_29E2C3314();
  v24(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  sub_29E2BCC74();
  v15 = v23;
  sub_29E2C3414();
  v14(v12, v6);
  v16 = sub_29E2C33A4();

  v17 = sub_29E2C33A4();

  v18 = objc_opt_self();
  v19 = sub_29E2C33A4();
  v20 = [v18 imageNamed:v19 inBundle:v15 compatibleWithTraitCollection:0];

  if (v20)
  {
    [v20 setIsAccessibilityElement_];
    v26 = v22;
    objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v20, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E0A2798()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = v23 - v11;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_viewDidLoad, v10);
  [v0 setModalInPresentation_];
  v13 = [v0 navigationItem];
  [v13 setHidesBackButton_];

  sub_29E2C3314();
  v27 = *(v6 + 16);
  v27(v8, v12, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v26 = "EDING_ALERT_MESSAGE";
  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  v15 = v14;
  sub_29E2C3414();
  v23[1] = v4;
  v16 = *(v6 + 8);
  v23[2] = v6 + 8;
  v25 = v16;
  v16(v12, v5);
  v17 = sub_29E2C33A4();

  v18 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_offboardingStep + 8];
  v24 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_offboardingStep];
  sub_29E104E9C(86, v24, v18, 3u);
  v19 = v5;
  v20 = sub_29E2C33A4();

  sub_29E2C3314();
  v27(v8, v12, v19);
  sub_29E2BCC74();
  sub_29E2C3414();
  v25(v12, v19);
  v21 = sub_29E2C33A4();

  sub_29E104E9C(86, v24, v18, 4u);
  v22 = sub_29E2C33A4();
}

uint64_t sub_29E0A2C3C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_coordinator);
  if (v2)
  {
    *(v2 + 18) = result;
    v3 = v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_offboardingStep;
    v4 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin49PregnancyOffboardingReviewMedicalIDViewController_offboardingStep);
    v5 = *(v3 + 8);

    sub_29DFEB24C(v4, v5, 2u);
  }

  return result;
}

uint64_t sub_29E0A2DF4(id *a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*a1 menstruationSegment];
  [v13 days];

  sub_29E2C30D4();
  sub_29E2C3194();
  (*(v5 + 8))(v7, v4);
  sub_29DEAAE18();
  v14 = sub_29E2C32A4();
  (*(v9 + 8))(v12, v8);
  return v14 & 1;
}

uint64_t type metadata accessor for MenstrualCyclesOnboardingActionHandler()
{
  result = qword_2A1A612A8;
  if (!qword_2A1A612A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0A307C(unsigned int a1, uint64_t a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v45 - v9;
  v11 = sub_29E2C33A4();
  IsEventUsed = AnalyticsIsEventUsed();

  if ((IsEventUsed & 1) != 0 || (v13 = objc_opt_self(), v14 = [v13 hkmc_menstrualCyclesDefaults], v15 = objc_msgSend(v14, sel_hkmc_analyticsDebugModeEnabled), v14, v15))
  {
    v16 = sub_29E2C33A4();
    sub_29DF7A6F8(a1);
    sub_29DE9408C(0, &qword_2A1A619F0);
    v17 = sub_29E2C31F4();

    AnalyticsSendEvent();

    sub_29E2C04B4();
    v18 = sub_29E2C0504();
    v19 = sub_29E2C3A34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v5;
      LODWORD(v46) = a1 >> 8;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136446466;
      v48[0] = &type metadata for OnboardingStepCompletedMetric;
      sub_29E0A6584();
      v23 = sub_29E2C3424();
      v25 = sub_29DFAA104(v23, v24, &v49);
      v47 = v4;
      v26 = v25;

      *(v21 + 4) = v26;
      *(v21 + 12) = 2082;
      LOBYTE(v48[0]) = a1;
      BYTE1(v48[0]) = v46;
      v48[1] = a2;
      v27 = sub_29E2C3474();
      v29 = sub_29DFAA104(v27, v28, &v49);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s] Submitted metric: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v22, -1, -1);
      MEMORY[0x29ED82140](v21, -1, -1);

      (*(v20 + 8))(v10, v47);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    return 1;
  }

  else
  {
    sub_29E2C04B4();
    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A34();
    if (os_log_type_enabled(v31, v32))
    {
      v46 = v5;
      v47 = v4;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v48[0] = v34;
      *v33 = 136446722;
      v49 = &type metadata for OnboardingStepCompletedMetric;
      sub_29E0A6584();
      v35 = sub_29E2C3424();
      v37 = sub_29DFAA104(v35, v36, v48);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      v38 = sub_29E2C33A4();
      v39 = AnalyticsIsEventUsed();

      v40 = 0xE400000000000000;
      v41 = 1702195828;
      if ((v39 & 1) == 0)
      {
        v42 = [v13 hkmc_menstrualCyclesDefaults];
        v43 = [v42 hkmc_analyticsDebugModeEnabled];

        v41 = v43 ? 1702195828 : 0x65736C6166;
        if (!v43)
        {
          v40 = 0xE500000000000000;
        }
      }

      v44 = sub_29DFAA104(v41, v40, v48);

      *(v33 + 14) = v44;
      *(v33 + 22) = 2082;
      *(v33 + 24) = sub_29DFAA104(1702195828, 0xE400000000000000, v48);
      _os_log_impl(&dword_29DE74000, v31, v32, "[%{public}s] Skipping submitting metric. isEnabled: %{public}s, isAllowed: %{public}s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v33, -1, -1);

      (*(v46 + 8))(v7, v47);
      return 0;
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return 0;
    }
  }
}

uint64_t sub_29E0A35D8()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v45 - v5;
  v7 = sub_29E2C33A4();
  IsEventUsed = AnalyticsIsEventUsed();

  if ((IsEventUsed & 1) != 0 || (v9 = [objc_opt_self() hkmc_menstrualCyclesDefaults], v10 = objc_msgSend(v9, sel_hkmc_analyticsDebugModeEnabled), v9, v10)) && (sub_29E2BDEA4(), sub_29E2BDE94(), v11 = sub_29E2BDE84(), , (v11))
  {
    v12 = sub_29E2C33A4();
    v13 = sub_29E2C3864();
    v14 = MEMORY[0x29EDCA198];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v14;
    sub_29E00868C(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    sub_29DE9408C(0, &qword_2A1A619F0);
    v16 = sub_29E2C31F4();

    AnalyticsSendEvent();

    sub_29E2C04B4();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136446466;
      v45 = &type metadata for ApplyCycleHistoryFilterMetric;
      sub_29E0A67E0();
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, &v46);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = sub_29E2C3474();
      v26 = sub_29DFAA104(v24, v25, &v46);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Submitted metric: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return 1;
  }

  else
  {
    sub_29E2C04B4();
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446722;
      v45 = &type metadata for ApplyCycleHistoryFilterMetric;
      sub_29E0A67E0();
      v32 = sub_29E2C3424();
      v34 = sub_29DFAA104(v32, v33, &v46);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_29E2C33A4();
      LOBYTE(v34) = AnalyticsIsEventUsed();

      v36 = 1702195828;
      v37 = 0xE400000000000000;
      if ((v34 & 1) == 0)
      {
        v38 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
        v39 = [v38 hkmc_analyticsDebugModeEnabled];

        if (v39)
        {
          v36 = 1702195828;
        }

        else
        {
          v36 = 0x65736C6166;
        }

        if (v39)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v37 = 0xE500000000000000;
        }
      }

      v40 = sub_29DFAA104(v36, v37, &v46);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2082;
      sub_29E2BDEA4();
      sub_29E2BDE94();
      v41 = sub_29E2BDE84();

      if (v41)
      {
        v42 = 1702195828;
      }

      else
      {
        v42 = 0x65736C6166;
      }

      if (v41)
      {
        v43 = 0xE400000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v44 = sub_29DFAA104(v42, v43, &v46);

      *(v30 + 24) = v44;
      _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Skipping submitting metric. isEnabled: %{public}s, isAllowed: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t sub_29E0A3B70()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v45 - v5;
  v7 = sub_29E2C33A4();
  IsEventUsed = AnalyticsIsEventUsed();

  if ((IsEventUsed & 1) != 0 || (v9 = [objc_opt_self() hkmc_menstrualCyclesDefaults], v10 = objc_msgSend(v9, sel_hkmc_analyticsDebugModeEnabled), v9, v10)) && (sub_29E2BDEA4(), sub_29E2BDE94(), v11 = sub_29E2BDE84(), , (v11))
  {
    v12 = sub_29E2C33A4();
    v13 = sub_29E2C3864();
    v14 = MEMORY[0x29EDCA198];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v14;
    sub_29E00868C(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    sub_29DE9408C(0, &qword_2A1A619F0);
    v16 = sub_29E2C31F4();

    AnalyticsSendEvent();

    sub_29E2C04B4();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136446466;
      v45 = &type metadata for OpenStatisticsMetric;
      sub_29E0A665C();
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, &v46);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = sub_29E2C3474();
      v26 = sub_29DFAA104(v24, v25, &v46);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Submitted metric: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return 1;
  }

  else
  {
    sub_29E2C04B4();
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446722;
      v45 = &type metadata for OpenStatisticsMetric;
      sub_29E0A665C();
      v32 = sub_29E2C3424();
      v34 = sub_29DFAA104(v32, v33, &v46);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_29E2C33A4();
      LOBYTE(v34) = AnalyticsIsEventUsed();

      v36 = 1702195828;
      v37 = 0xE400000000000000;
      if ((v34 & 1) == 0)
      {
        v38 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
        v39 = [v38 hkmc_analyticsDebugModeEnabled];

        if (v39)
        {
          v36 = 1702195828;
        }

        else
        {
          v36 = 0x65736C6166;
        }

        if (v39)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v37 = 0xE500000000000000;
        }
      }

      v40 = sub_29DFAA104(v36, v37, &v46);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2082;
      sub_29E2BDEA4();
      sub_29E2BDE94();
      v41 = sub_29E2BDE84();

      if (v41)
      {
        v42 = 1702195828;
      }

      else
      {
        v42 = 0x65736C6166;
      }

      if (v41)
      {
        v43 = 0xE400000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v44 = sub_29DFAA104(v42, v43, &v46);

      *(v30 + 24) = v44;
      _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Skipping submitting metric. isEnabled: %{public}s, isAllowed: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t sub_29E0A4108()
{
  v0 = sub_29E2C0514();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v45 - v5;
  v7 = sub_29E2C33A4();
  IsEventUsed = AnalyticsIsEventUsed();

  if ((IsEventUsed & 1) != 0 || (v9 = [objc_opt_self() hkmc_menstrualCyclesDefaults], v10 = objc_msgSend(v9, sel_hkmc_analyticsDebugModeEnabled), v9, v10)) && (sub_29E2BDEA4(), sub_29E2BDE94(), v11 = sub_29E2BDE84(), , (v11))
  {
    v12 = sub_29E2C33A4();
    v13 = sub_29E2C3864();
    v14 = MEMORY[0x29EDCA198];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v14;
    sub_29E00868C(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    sub_29DE9408C(0, &qword_2A1A619F0);
    v16 = sub_29E2C31F4();

    AnalyticsSendEvent();

    sub_29E2C04B4();
    v17 = sub_29E2C0504();
    v18 = sub_29E2C3A34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136446466;
      v45 = &type metadata for OpenCycleHistoryMetric;
      sub_29E0A6614();
      v21 = sub_29E2C3424();
      v23 = sub_29DFAA104(v21, v22, &v46);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = sub_29E2C3474();
      v26 = sub_29DFAA104(v24, v25, &v46);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_29DE74000, v17, v18, "[%{public}s] Submitted metric: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v20, -1, -1);
      MEMORY[0x29ED82140](v19, -1, -1);
    }

    (*(v1 + 8))(v6, v0);
    return 1;
  }

  else
  {
    sub_29E2C04B4();
    v28 = sub_29E2C0504();
    v29 = sub_29E2C3A34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446722;
      v45 = &type metadata for OpenCycleHistoryMetric;
      sub_29E0A6614();
      v32 = sub_29E2C3424();
      v34 = sub_29DFAA104(v32, v33, &v46);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_29E2C33A4();
      LOBYTE(v34) = AnalyticsIsEventUsed();

      v36 = 1702195828;
      v37 = 0xE400000000000000;
      if ((v34 & 1) == 0)
      {
        v38 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
        v39 = [v38 hkmc_analyticsDebugModeEnabled];

        if (v39)
        {
          v36 = 1702195828;
        }

        else
        {
          v36 = 0x65736C6166;
        }

        if (v39)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v37 = 0xE500000000000000;
        }
      }

      v40 = sub_29DFAA104(v36, v37, &v46);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2082;
      sub_29E2BDEA4();
      sub_29E2BDE94();
      v41 = sub_29E2BDE84();

      if (v41)
      {
        v42 = 1702195828;
      }

      else
      {
        v42 = 0x65736C6166;
      }

      if (v41)
      {
        v43 = 0xE400000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v44 = sub_29DFAA104(v42, v43, &v46);

      *(v30 + 24) = v44;
      _os_log_impl(&dword_29DE74000, v28, v29, "[%{public}s] Skipping submitting metric. isEnabled: %{public}s, isAllowed: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v31, -1, -1);
      MEMORY[0x29ED82140](v30, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}