uint64_t sub_1000EDBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v7[v11];
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1000E9538(v7, v13, a3);
}

uint64_t sub_1000EDC48(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178650, type metadata accessor for ADC1ACInterfaceHeaderDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EDCE8(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178660, type metadata accessor for ADC1InputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EDD88(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178670, type metadata accessor for ADC1OutputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EDE28(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178680, type metadata accessor for ADC1MixerUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EDEC8(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178690, type metadata accessor for ADC1MixerUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EDF68(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_1001786A0, type metadata accessor for ADC1SelectorUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE008(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_1001786B0, type metadata accessor for ADC1FeatureUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE0A8(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_1001786C0, type metadata accessor for ADC1ExtensionUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE148(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_1001786D0, type metadata accessor for ADC1ExtensionUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE1E8(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_1001786E0, type metadata accessor for ADC1ProcessingUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE288(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_1001786F0, type metadata accessor for ADC1ProcessingUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE328(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178700, type metadata accessor for ADC1ASInterfaceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE3C8(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178710, type metadata accessor for ADC1FormatTypeIDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE468(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178720, type metadata accessor for ADC1FormatTypeIIIDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE508(uint64_t a1)
{
  result = sub_1000EE5A8(&qword_100178730, type metadata accessor for ADC1ASFormatTypeDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000EE5A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000EE5F0(uint64_t a1)
{
  result = sub_1000EE618();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EE618()
{
  result = qword_100178740;
  if (!qword_100178740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178740);
  }

  return result;
}

unint64_t sub_1000EE670()
{
  result = qword_100178748;
  if (!qword_100178748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178748);
  }

  return result;
}

uint64_t sub_1000EE6D4(unsigned int *a1, unsigned int *a2)
{
  if ((sub_10006D630(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48), *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48)) & 1) == 0 || (sub_10006C2C8(*(a1 + 7) | (*(a1 + 11) << 32), *(a2 + 7) | (*(a2 + 11) << 32)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*(a1 + 2), *(a1 + 12), *(a2 + 2), *(a2 + 12)) || (sub_1000E48EC(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_1000E4890(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 7);
  v5 = *(a2 + 7);

  return sub_1000E4834(v4, v5);
}

uint64_t sub_1000EE87C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if ((sub_10006EDB0(*a1 | (*(a1 + 1) << 16), *a2 | (*(a2 + 1) << 16)) & 1) != 0 && _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*(a1 + 1), a1[8], *(a2 + 1), a2[8]) && (sub_1000E4834(*(a1 + 3), *(a2 + 3)) & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    v4 = *(a1 + 5);
    v5 = *(a2 + 5);
    if (v4)
    {
      if (v5 && (sub_1000E4890(v4, v5) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000EE9C4@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v47[0] = v7;
      LOWORD(v47[1]) = v8;
      BYTE2(v47[1]) = BYTE2(v8);
      BYTE3(v47[1]) = BYTE3(v8);
      BYTE4(v47[1]) = BYTE4(v8);
      BYTE5(v47[1]) = BYTE5(v8);
      v12 = v47 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v45 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v47, 0, 14);
    v12 = v47;
LABEL_26:
    sub_1000E8004(v47, v12, &v48);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v45 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000E8004(v15, v25, &v48);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v45;
LABEL_27:
  v27.i32[0] = v48;
  v40 = vmovl_u8(v27).u64[0];
  v28 = v49;
  v43 = v50;
  v44 = BYTE4(v48);
  v41 = v52;
  v42 = v51;
  v29 = v53;
  v30 = v54;
  v31 = *(v49 + 16);
  if (v31)
  {
    v37 = v54;
    v38 = v53;
    v46 = v5;
    v39 = v4;
    v48 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v48;
    v33 = v48[2];
    v34 = 32;
    do
    {
      v35 = *(v28 + v34);
      v48 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v48;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v4 = v39;
    v5 = v46;
    v29 = v38;
    v30 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v44;
  *(a3 + 5) = v43;
  *(a3 + 6) = v42;
  *(a3 + 8) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v29;
  *(a3 + 48) = v30;
  return result;
}

uint64_t sub_1000EED70@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v43[0] = v7;
      LOWORD(v43[1]) = v8;
      BYTE2(v43[1]) = BYTE2(v8);
      BYTE3(v43[1]) = BYTE3(v8);
      BYTE4(v43[1]) = BYTE4(v8);
      BYTE5(v43[1]) = BYTE5(v8);
      v12 = v43 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v41 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v43, 0, 14);
    v12 = v43;
LABEL_26:
    sub_1000E8BDC(v43, v12, &v44);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v41 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000E8BDC(v15, v25, &v44);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v41;
LABEL_27:
  v27.i32[0] = v44;
  v40 = vmovl_u8(v27).u64[0];
  v28 = BYTE4(v44);
  v29 = v45;
  v30 = v46;
  v31 = *(v45 + 16);
  if (v31)
  {
    v37 = BYTE4(v44);
    v38 = v46;
    v42 = v5;
    v39 = v4;
    v44 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v44;
    v33 = v44[2];
    v34 = 32;
    do
    {
      v35 = *(v29 + v34);
      v44 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v44;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v30 = v38;
    v4 = v39;
    v5 = v42;
    v28 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = v32;
  *(a3 + 32) = v30;
  return result;
}

uint64_t sub_1000EF0B0@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v26 = &_swiftEmptySetSingleton;
  result = sub_1000A60F8(a1, a2);
  if (v9 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v10 = result;
  v11 = v9;
  sub_1000EDA7C(result, v9, &v23);
  sub_100076B24(v10, v11);
  if (v3)
  {
  }

  v4.i32[0] = v23;
  v21 = BYTE5(v23);
  v22 = BYTE4(v23);
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v26[2];
  if (!v15)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_8;
  }

  v18 = v24;
  v16 = sub_1001193F0(v15, 0);
  v19 = sub_10011B610(&v23, v16 + 32, v15, v14);

  result = sub_100022644();
  if (v19 != v15)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = v18;
LABEL_8:
  v20 = vmovl_u8(v4).u64[0];
  v17 = v16[2];

  if (!v17)
  {

    v16 = 0;
  }

  *a3 = vuzp1_s8(v20, v20).u32[0];
  *(a3 + 4) = v22;
  *(a3 + 5) = v21;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v16;
  return result;
}

uint64_t sub_1000EF264@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v50[0] = v7;
      LOWORD(v50[1]) = v8;
      BYTE2(v50[1]) = BYTE2(v8);
      BYTE3(v50[1]) = BYTE3(v8);
      BYTE4(v50[1]) = BYTE4(v8);
      BYTE5(v50[1]) = BYTE5(v8);
      v12 = v50 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v48 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v50, 0, 14);
    v12 = v50;
LABEL_26:
    sub_1000EA6EC(v50, v12, &v51);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v48 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000EA6EC(v15, v25, &v51);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v48;
LABEL_27:
  v27.i32[0] = v51;
  v40 = vmovl_u8(v27).u64[0];
  v45 = BYTE6(v51);
  v46 = WORD2(v51);
  v28 = v52;
  v43 = v54;
  v44 = v53;
  v41 = v56;
  v42 = v55;
  v29 = v57;
  v30 = v58;
  v47 = v59;
  v31 = *(v52 + 16);
  if (v31)
  {
    v37 = v58;
    v38 = v57;
    v49 = v5;
    v39 = v4;
    v51 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v51;
    v33 = v51[2];
    v34 = 32;
    do
    {
      v35 = *(v28 + v34);
      v51 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v51;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v4 = v39;
    v5 = v49;
    v29 = v38;
    v30 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v46;
  *(a3 + 6) = v45;
  *(a3 + 7) = v44;
  *(a3 + 8) = v43;
  *(a3 + 10) = v42;
  *(a3 + 11) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v29;
  *(a3 + 48) = v30;
  *(a3 + 56) = v47;
  return result;
}

uint64_t sub_1000EF600@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_40:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v49[0] = v7;
      LOWORD(v49[1]) = v8;
      BYTE2(v49[1]) = BYTE2(v8);
      BYTE3(v49[1]) = BYTE3(v8);
      BYTE4(v49[1]) = BYTE4(v8);
      BYTE5(v49[1]) = BYTE5(v8);
      v12 = v49 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v47 = v5;
      v15 = __DataStorage._bytes.getter();
      if (!v15)
      {
        goto LABEL_17;
      }

      v22 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v22))
      {
        v15 += v9 - v22;
LABEL_17:
        v23 = __DataStorage._length.getter();
        if (v23 >= v21)
        {
          v20 = (v9 >> 32) - v9;
        }

        else
        {
          v20 = v23;
        }

        goto LABEL_20;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (v11 != 2)
  {
    memset(v49, 0, 14);
    v12 = v49;
LABEL_26:
    sub_1000EB64C(v49, v12, &v50);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v47 = v5;
  v13 = *(v7 + 16);
  v14 = *(v7 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v16 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v16))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v15 += v13 - v16;
  }

  v17 = __OFSUB__(v14, v13);
  v18 = v14 - v13;
  if (v17)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_20:
  v24 = &v15[v20];
  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sub_1000EB64C(v15, v25, &v50);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v47;
LABEL_27:
  v27.i32[0] = v50;
  v40 = vmovl_u8(v27).u64[0];
  v45 = BYTE6(v50);
  v46 = WORD2(v50);
  v28 = v51;
  v43 = v53;
  v44 = v52;
  v41 = v55;
  v42 = v54;
  v29 = v56;
  v30 = v57;
  v31 = *(v51 + 16);
  if (v31)
  {
    v37 = v57;
    v38 = v56;
    v48 = v5;
    v39 = v4;
    v50 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v50;
    v33 = v50[2];
    v34 = 32;
    do
    {
      v35 = *(v28 + v34);
      v50 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v50;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v4 = v39;
    v5 = v48;
    v29 = v38;
    v30 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v46;
  *(a3 + 6) = v45;
  *(a3 + 7) = v44;
  *(a3 + 8) = v43;
  *(a3 + 10) = v42;
  *(a3 + 11) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v29;
  *(a3 + 48) = v30;
  return result;
}

__n128 sub_1000EF98C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000EF9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000EFA28(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1000EFA88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1000EFAD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000EFB34()
{
  result = qword_100178758;
  if (!qword_100178758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178758);
  }

  return result;
}

unint64_t sub_1000EFB88(uint64_t a1)
{
  result = sub_1000EFBB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EFBB0()
{
  result = qword_100178760;
  if (!qword_100178760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178760);
  }

  return result;
}

unint64_t sub_1000EFC08()
{
  result = qword_100178768;
  if (!qword_100178768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178768);
  }

  return result;
}

unint64_t sub_1000EFC5C(uint64_t a1)
{
  result = sub_1000EFC84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EFC84()
{
  result = qword_100178770;
  if (!qword_100178770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178770);
  }

  return result;
}

unint64_t sub_1000EFCDC()
{
  result = qword_100178778;
  if (!qword_100178778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178778);
  }

  return result;
}

unint64_t sub_1000EFD30(uint64_t a1)
{
  result = sub_1000EFD58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EFD58()
{
  result = qword_100178780;
  if (!qword_100178780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178780);
  }

  return result;
}

unint64_t sub_1000EFDB0()
{
  result = qword_100178788;
  if (!qword_100178788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178788);
  }

  return result;
}

unint64_t sub_1000EFE04(uint64_t a1)
{
  result = sub_1000EFE2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EFE2C()
{
  result = qword_100178790;
  if (!qword_100178790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178790);
  }

  return result;
}

unint64_t sub_1000EFE84()
{
  result = qword_100178798;
  if (!qword_100178798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178798);
  }

  return result;
}

unint64_t sub_1000EFED8(uint64_t a1)
{
  result = sub_1000EFF00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EFF00()
{
  result = qword_1001787A0;
  if (!qword_1001787A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for USBAudioErrata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for USBAudioErrata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F00B4()
{
  result = qword_1001787A8;
  if (!qword_1001787A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787A8);
  }

  return result;
}

char *sub_1000F0108(unsigned __int8 a1, int a2, unsigned __int16 a3)
{
  v5 = a3;
  v6 = sub_10000CA80(&off_10015BA58);
  sub_100001AB4(&qword_1001787B0, &qword_100127380);
  swift_arrayDestroy();
  v7 = _swiftEmptyArrayStorage;
  v8 = sub_10000CA80(_swiftEmptyArrayStorage);
  v9 = sub_10000CA80(_swiftEmptyArrayStorage);
  v10 = sub_10000CA80(_swiftEmptyArrayStorage);
  v11 = sub_10000CA80(&off_10015BEC8);
  sub_1000F0C64(&unk_10015BEE8);
  v12 = a1 | (a2 << 8);
  if (!v6[2])
  {
    goto LABEL_28;
  }

  v13 = sub_10001D324(v12);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  v95 = v10;
  v15 = *(v6[7] + 8 * v13);

  v17 = *(v15 + 16);
  if (!v17)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v97 = v11;
  v92 = v12;
  v18 = (v15 + 40);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (*(v18 - 4) > v5 || *(v18 - 3) < v5)
    {
      goto LABEL_6;
    }

    v20 = *v18;
    v21 = *(*v18 + 16);
    v22 = *(v7 + 2);
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      break;
    }

    v24 = *v18;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v23 <= *(v7 + 3) >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v25 = v22 + v21;
      }

      else
      {
        v25 = v22;
      }

      result = sub_100025240(result, v25, 1, v7);
      v7 = result;
      if (*(v20 + 16))
      {
LABEL_21:
        v26 = *(v7 + 2);
        if ((*(v7 + 3) >> 1) - v26 < v21)
        {
          goto LABEL_142;
        }

        memcpy(&v7[v26 + 32], (v20 + 32), v21);

        if (v21)
        {
          v27 = *(v7 + 2);
          v28 = __OFADD__(v27, v21);
          v29 = v27 + v21;
          if (v28)
          {
            goto LABEL_147;
          }

          *(v7 + 2) = v29;
        }

        goto LABEL_6;
      }
    }

    if (v21)
    {
      goto LABEL_133;
    }

LABEL_6:
    v18 += 2;
    if (!--v17)
    {
      v12 = v92;
      v11 = v97;
LABEL_27:
      v10 = v95;
LABEL_28:

      if (!v8[2])
      {
        goto LABEL_54;
      }

      v30 = sub_10001D324(v12);
      if ((v31 & 1) == 0)
      {
        goto LABEL_54;
      }

      v96 = v10;
      v32 = *(v8[7] + 8 * v30);

      v33 = *(v32 + 16);
      if (!v33)
      {
        goto LABEL_53;
      }

      v98 = v11;
      v93 = v12;
      v34 = (v32 + 40);
      while (1)
      {
        if (*(v34 - 4) <= v5 && *(v34 - 3) >= v5)
        {
          v36 = *v34;
          v37 = *(*v34 + 16);
          v38 = *(v7 + 2);
          v39 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_134;
          }

          v40 = *v34;

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v39 <= *(v7 + 3) >> 1)
          {
            if (*(v36 + 16))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v38 <= v39)
            {
              v41 = v38 + v37;
            }

            else
            {
              v41 = v38;
            }

            result = sub_100025240(result, v41, 1, v7);
            v7 = result;
            if (*(v36 + 16))
            {
LABEL_48:
              v42 = *(v7 + 2);
              if ((*(v7 + 3) >> 1) - v42 < v37)
              {
                goto LABEL_143;
              }

              memcpy(&v7[v42 + 32], (v36 + 32), v37);

              if (v37)
              {
                v43 = *(v7 + 2);
                v28 = __OFADD__(v43, v37);
                v44 = v43 + v37;
                if (v28)
                {
                  goto LABEL_148;
                }

                *(v7 + 2) = v44;
              }

              goto LABEL_33;
            }
          }

          if (v37)
          {
            goto LABEL_135;
          }
        }

LABEL_33:
        v34 += 2;
        if (!--v33)
        {
          v12 = v93;
          v11 = v98;
LABEL_53:
          v10 = v96;
LABEL_54:

          if (!v9[2])
          {
            goto LABEL_80;
          }

          v45 = sub_10001D324(v12);
          if ((v46 & 1) == 0)
          {
            goto LABEL_80;
          }

          v47 = v10;
          v48 = *(v9[7] + 8 * v45);

          v49 = *(v48 + 16);
          if (!v49)
          {
            goto LABEL_79;
          }

          v99 = v11;
          v94 = v12;
          v50 = (v48 + 40);
          while (2)
          {
            if (*(v50 - 4) > v5 || *(v50 - 3) < v5)
            {
LABEL_59:
              v50 += 2;
              if (--v49)
              {
                continue;
              }

              v12 = v94;
              v11 = v99;
LABEL_79:
              v10 = v47;
LABEL_80:

              if (v10[2])
              {
                v61 = sub_10001D324(v12);
                if (v62)
                {
                  v63 = *(v10[7] + 8 * v61);

                  v64 = *(v63 + 16);
                  if (v64)
                  {
                    v100 = v11;
                    v65 = v12;
                    v66 = (v63 + 40);
                    while (1)
                    {
                      if (*(v66 - 4) <= v5 && *(v66 - 3) >= v5)
                      {
                        v68 = *v66;
                        v69 = *(*v66 + 16);
                        v70 = *(v7 + 2);
                        v71 = v70 + v69;
                        if (__OFADD__(v70, v69))
                        {
                          goto LABEL_138;
                        }

                        v72 = *v66;

                        result = swift_isUniquelyReferenced_nonNull_native();
                        if (result && v71 <= *(v7 + 3) >> 1)
                        {
                          if (*(v68 + 16))
                          {
                            goto LABEL_100;
                          }
                        }

                        else
                        {
                          if (v70 <= v71)
                          {
                            v73 = v70 + v69;
                          }

                          else
                          {
                            v73 = v70;
                          }

                          result = sub_100025240(result, v73, 1, v7);
                          v7 = result;
                          if (*(v68 + 16))
                          {
LABEL_100:
                            v74 = *(v7 + 2);
                            if ((*(v7 + 3) >> 1) - v74 < v69)
                            {
                              goto LABEL_145;
                            }

                            memcpy(&v7[v74 + 32], (v68 + 32), v69);

                            if (v69)
                            {
                              v75 = *(v7 + 2);
                              v28 = __OFADD__(v75, v69);
                              v76 = v75 + v69;
                              if (v28)
                              {
                                goto LABEL_150;
                              }

                              *(v7 + 2) = v76;
                            }

                            goto LABEL_85;
                          }
                        }

                        if (v69)
                        {
                          goto LABEL_139;
                        }
                      }

LABEL_85:
                      v66 += 2;
                      if (!--v64)
                      {
                        v12 = v65;
                        v11 = v100;
                        break;
                      }
                    }
                  }
                }
              }

              if (!v11[2] || (v77 = sub_10001D324(v12), (v78 & 1) == 0) || (v79 = *(v11[7] + 8 * v77), , result = , (v80 = *(v79 + 16)) == 0))
              {
LABEL_129:

                if (!*(v7 + 2))
                {

                  return 0;
                }

                return v7;
              }

              v81 = (v79 + 40);
              while (2)
              {
                if (*(v81 - 4) > v5 || *(v81 - 3) < v5)
                {
LABEL_110:
                  v81 += 2;
                  if (!--v80)
                  {
                    goto LABEL_129;
                  }

                  continue;
                }

                break;
              }

              v83 = *v81;
              v84 = *(*v81 + 16);
              v85 = *(v7 + 2);
              v86 = v85 + v84;
              if (__OFADD__(v85, v84))
              {
                goto LABEL_140;
              }

              v87 = *v81;

              result = swift_isUniquelyReferenced_nonNull_native();
              if (result && v86 <= *(v7 + 3) >> 1)
              {
                if (!*(v83 + 16))
                {
                  goto LABEL_109;
                }
              }

              else
              {
                if (v85 <= v86)
                {
                  v88 = v85 + v84;
                }

                else
                {
                  v88 = v85;
                }

                result = sub_100025240(result, v88, 1, v7);
                v7 = result;
                if (!*(v83 + 16))
                {
LABEL_109:

                  if (v84)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_110;
                }
              }

              v89 = *(v7 + 2);
              if ((*(v7 + 3) >> 1) - v89 < v84)
              {
                goto LABEL_146;
              }

              memcpy(&v7[v89 + 32], (v83 + 32), v84);

              if (v84)
              {
                v90 = *(v7 + 2);
                v28 = __OFADD__(v90, v84);
                v91 = v90 + v84;
                if (v28)
                {
                  goto LABEL_151;
                }

                *(v7 + 2) = v91;
              }

              goto LABEL_110;
            }

            break;
          }

          v52 = *v50;
          v53 = *(*v50 + 16);
          v54 = *(v7 + 2);
          v55 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            goto LABEL_136;
          }

          v56 = *v50;

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v55 <= *(v7 + 3) >> 1)
          {
            if (!*(v52 + 16))
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v54 <= v55)
            {
              v57 = v54 + v53;
            }

            else
            {
              v57 = v54;
            }

            result = sub_100025240(result, v57, 1, v7);
            v7 = result;
            if (!*(v52 + 16))
            {
LABEL_58:

              if (v53)
              {
                goto LABEL_137;
              }

              goto LABEL_59;
            }
          }

          v58 = *(v7 + 2);
          if ((*(v7 + 3) >> 1) - v58 < v53)
          {
            goto LABEL_144;
          }

          memcpy(&v7[v58 + 32], (v52 + 32), v53);

          if (v53)
          {
            v59 = *(v7 + 2);
            v28 = __OFADD__(v59, v53);
            v60 = v59 + v53;
            if (v28)
            {
              goto LABEL_149;
            }

            *(v7 + 2) = v60;
          }

          goto LABEL_59;
        }
      }
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
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
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

Swift::Int sub_1000F0870()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10012756A[v1]);
  Hasher._combine(_:)(word_1001275B2[v2]);
  return Hasher._finalize()();
}

void sub_1000F08E0()
{
  v1 = v0[1];
  Hasher._combine(_:)(word_10012756A[*v0]);
  Hasher._combine(_:)(word_1001275B2[v1]);
}

Swift::Int sub_1000F0934()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10012756A[v1]);
  Hasher._combine(_:)(word_1001275B2[v2]);
  return Hasher._finalize()();
}

Swift::Int sub_1000F0A10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10012756A[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000F0A98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10012756A[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000F0AE4@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F0CCC(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000F0B4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1001275B2[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000F0BD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1001275B2[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000F0C20@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F0FDC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F0C64(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_1001787B0, &qword_100127380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F0CCC(unsigned __int16 a1)
{
  if (a1 > 0x8E3u)
  {
    if (a1 > 0x154Du)
    {
      if (a1 <= 0x1EDAu)
      {
        if (a1 > 0x194Eu)
        {
          if (a1 == 6479)
          {
            return 11;
          }

          if (a1 == 6499)
          {
            return 32;
          }
        }

        else
        {
          if (a1 == 5454)
          {
            return 21;
          }

          if (a1 == 5901)
          {
            return 25;
          }
        }
      }

      else if (a1 <= 0x2919u)
      {
        if (a1 == 7899)
        {
          return 35;
        }

        if (a1 == 8628)
        {
          return 24;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x291Au:
            return 26;
          case 0x2E1Au:
            return 31;
          case 0x328Fu:
            return 34;
        }
      }
    }

    else if (a1 <= 0x1234u)
    {
      if (a1 > 0xC5Fu)
      {
        if (a1 == 3168)
        {
          return 17;
        }

        if (a1 == 4057)
        {
          return 30;
        }
      }

      else
      {
        if (a1 == 2276)
        {
          return 23;
        }

        if (a1 == 2372)
        {
          return 16;
        }
      }
    }

    else if (a1 <= 0x145Fu)
    {
      if (a1 == 4661)
      {
        return 28;
      }

      if (a1 == 5042)
      {
        return 3;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x1460u:
          return 13;
        case 0x14EDu:
          return 27;
        case 0x1532u:
          return 18;
      }
    }
  }

  else if (a1 > 0x5A6u)
  {
    if (a1 <= 0x745u)
    {
      if (a1 > 0x5FBu)
      {
        if (a1 == 1532)
        {
          return 9;
        }

        if (a1 == 1766)
        {
          return 10;
        }
      }

      else
      {
        if (a1 == 1447)
        {
          return 14;
        }

        if (a1 == 1452)
        {
          return 8;
        }
      }
    }

    else if (a1 <= 0x762u)
    {
      if (a1 == 1862)
      {
        return 7;
      }

      if (a1 == 1869)
      {
        return 15;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x763u:
          return 1;
        case 0x7FDu:
          return 22;
        case 0x86Au:
          return 2;
      }
    }
  }

  else if (a1 <= 0x47Eu)
  {
    if (a1 > 0x43Du)
    {
      if (a1 == 1086)
      {
        return 33;
      }

      if (a1 == 1133)
      {
        return 4;
      }
    }

    else
    {
      if (!a1)
      {
        return 0;
      }

      if (a1 == 1054)
      {
        return 19;
      }
    }
  }

  else if (a1 <= 0x4E7u)
  {
    if (a1 == 1151)
    {
      return 5;
    }

    if (a1 == 1177)
    {
      return 20;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x4E8u:
        return 29;
      case 0x562u:
        return 6;
      case 0x582u:
        return 12;
    }
  }

  return 36;
}

uint64_t sub_1000F0FDC(unsigned __int16 a1)
{
  if (a1 > 0x1001u)
  {
    if (a1 <= 0x301Fu)
    {
      if (a1 > 0x1113u)
      {
        if (a1 <= 0x1867u)
        {
          if (a1 > 0x170Fu)
          {
            if (a1 == 5904)
            {
              return 39;
            }

            if (a1 == 5905)
            {
              return 31;
            }
          }

          else
          {
            if (a1 == 4372)
            {
              return 48;
            }

            if (a1 == 5900)
            {
              return 32;
            }
          }
        }

        else if (a1 <= 0x2011u)
        {
          if (a1 == 6248)
          {
            return 23;
          }

          if (a1 == 8207)
          {
            return 1;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x2012u:
              return 2;
            case 0x2912u:
              return 7;
            case 0x3005u:
              return 35;
          }
        }
      }

      else if (a1 <= 0x1106u)
      {
        if (a1 > 0x101Fu)
        {
          if (a1 == 4128)
          {
            return 72;
          }

          if (a1 == 4357)
          {
            return 63;
          }
        }

        else
        {
          if (a1 == 4098)
          {
            return 46;
          }

          if (a1 == 4100)
          {
            return 50;
          }
        }
      }

      else if (a1 <= 0x1109u)
      {
        if (a1 == 4359)
        {
          return 64;
        }

        if (a1 == 4361)
        {
          return 67;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x110Au:
            return 37;
          case 0x110Bu:
            return 38;
          case 0x110Cu:
            return 68;
        }
      }
    }

    else if (a1 <= 0x9A41u)
    {
      if (a1 <= 0x4C00u)
      {
        if (a1 > 0x3285u)
        {
          if (a1 == 12934)
          {
            return 22;
          }

          if (a1 == 13074)
          {
            return 9;
          }
        }

        else
        {
          if (a1 == 12320)
          {
            return 73;
          }

          if (a1 == 12858)
          {
            return 30;
          }
        }
      }

      else if (a1 <= 0x8000u)
      {
        if (a1 == 19457)
        {
          return 55;
        }

        if (a1 == 21778)
        {
          return 10;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x8001u:
            return 69;
          case 0x8178u:
            return 45;
          case 0x820Cu:
            return 51;
        }
      }
    }

    else if (a1 > 0xA050u)
    {
      if (a1 <= 0xC008u)
      {
        if (a1 == 41041)
        {
          return 52;
        }

        if (a1 == 42257)
        {
          return 24;
        }
      }

      else
      {
        switch(a1)
        {
          case 0xC009u:
            return 49;
          case 0xC053u:
            return 71;
          case 0xC200u:
            return 12;
        }
      }
    }

    else if (a1 <= 0x9A63u)
    {
      if (a1 == 39490)
      {
        return 60;
      }

      if (a1 == 39499)
      {
        return 61;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x9A64u:
          return 62;
        case 0x9A66u:
          return 58;
        case 0xA000u:
          return 74;
      }
    }

    return 75;
  }

  if (a1 > 0xE6u)
  {
    if (a1 > 0x400u)
    {
      if (a1 > 0x856u)
      {
        if (a1 > 0xA37u)
        {
          if (a1 == 2616)
          {
            return 66;
          }

          if (a1 == 4096)
          {
            return 47;
          }
        }

        else
        {
          if (a1 == 2135)
          {
            return 33;
          }

          if (a1 == 2615)
          {
            return 65;
          }
        }
      }

      else if (a1 > 0x546u)
      {
        if (a1 == 1351)
        {
          return 44;
        }

        if (a1 == 1537)
        {
          return 34;
        }
      }

      else
      {
        if (a1 == 1025)
        {
          return 11;
        }

        if (a1 == 1282)
        {
          return 28;
        }
      }
    }

    else if (a1 > 0x242u)
    {
      if (a1 > 0x300u)
      {
        if (a1 == 769)
        {
          return 13;
        }

        if (a1 == 800)
        {
          return 8;
        }
      }

      else
      {
        if (a1 == 579)
        {
          return 53;
        }

        if (a1 == 768)
        {
          return 25;
        }
      }
    }

    else if (a1 > 0x110u)
    {
      if (a1 == 273)
      {
        return 4;
      }

      if (a1 == 333)
      {
        return 40;
      }
    }

    else
    {
      if (a1 == 231)
      {
        return 15;
      }

      if (a1 == 259)
      {
        return 3;
      }
    }

    return 75;
  }

  switch(a1)
  {
    case 0u:
      result = 0;
      break;
    case 3u:
      result = 26;
      break;
    case 6u:
      result = 17;
      break;
    case 8u:
      result = 5;
      break;
    case 0xAu:
      result = 6;
      break;
    case 0x10u:
      result = 29;
      break;
    case 0x14u:
      result = 70;
      break;
    case 0x17u:
      result = 36;
      break;
    case 0x19u:
      result = 16;
      break;
    case 0x1Au:
      result = 18;
      break;
    case 0x1Fu:
      result = 27;
      break;
    case 0x3Au:
      result = 57;
      break;
    case 0x51u:
      result = 21;
      break;
    case 0x5Cu:
      result = 56;
      break;
    case 0x6Du:
      result = 59;
      break;
    case 0x70u:
      result = 54;
      break;
    case 0x73u:
      result = 20;
      break;
    case 0x81u:
      result = 41;
      break;
    case 0x82u:
      result = 42;
      break;
    case 0x83u:
      result = 43;
      break;
    case 0x97u:
      result = 14;
      break;
    case 0xA4u:
      result = 19;
      break;
    default:
      return 75;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for USBAudioErrata.ErrataKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 65315 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65315 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65315;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65315;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65315;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for USBAudioErrata.ErrataKey(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65315 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65315 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 16) + 1;
    *result = a2 - 221;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F1988()
{
  result = qword_1001787B8;
  if (!qword_1001787B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB6)
  {
    goto LABEL_17;
  }

  if (a2 + 74 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 74) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 74;
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

      return (*a1 | (v4 << 8)) - 74;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 74;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4B;
  v8 = v6 - 75;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 74 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 74) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB6)
  {
    v4 = 0;
  }

  if (a2 > 0xB5)
  {
    v5 = ((a2 - 182) >> 8) + 1;
    *result = a2 + 74;
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
    *result = a2 + 74;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VendorID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VendorID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F1C80()
{
  result = qword_1001787C0;
  if (!qword_1001787C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787C0);
  }

  return result;
}

unint64_t sub_1000F1CD8()
{
  result = qword_1001787C8;
  if (!qword_1001787C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787C8);
  }

  return result;
}

uint64_t sub_1000F1D2C()
{
  v0 = sub_10006B948();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
  }
}

uint64_t TerminalType.string.getter(unsigned __int16 a1)
{
  if (a1 <= 0x300u)
  {
    if (a1 == 257)
    {
      return 0x6572745320425355;
    }

    if (a1 == 513)
    {
      return 0x6F68706F7263694DLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x301u:
        return 0x72656B61657053;
      case 0x402u:
        return 0x74657364616548;
      case 0x603u:
        return 1701734732;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t InputTerminal.usbDescriptor.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t InputTerminal.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t InputTerminal.clusterDescription(altSetting:)(unsigned __int8 a1)
{
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = *(v8 + 16);
  if (v9 == 1)
  {
    goto LABEL_9;
  }

  if (!a1)
  {
    if (!v9)
    {
      __break(1u);
LABEL_12:
      v16 = v5;
      swift_once();
      v5 = v16;
      goto LABEL_5;
    }

LABEL_9:
    result = *(v8 + 32);
    v13 = *(v8 + 40);
    return result;
  }

  if (v9 >= a1)
  {
    v14 = v8 + 12 * a1;
    result = *(v14 + 20);
    v15 = *(v14 + 28);
    return result;
  }

  v1 = "unexpected cluster array";
  if (qword_100173CB8 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v10 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v10, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v11, qword_100179508);
  sub_100039F58(1, v7, 0xD000000000000018, ((v1 - 32) | 0x8000000000000000));
  sub_10000C9D0(v7);
  return 0;
}

uint64_t InputTerminal.clusterDescription.getter()
{
  v1 = *(v0 + 64);
  if (*(v1 + 16))
  {
    result = *(v1 + 32);
    v3 = *(v1 + 40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InputTerminal.activate(onDevice:controlInterface:addLatencyControl:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_1000F5958(v110);
  v5 = v119;
  v88 = v4;
  if (v119)
  {
    v7 = v120;
    v6 = v121;
    v8 = v118;
    v9 = v117;
    v11 = v115;
    v10 = v116;
    v12 = v113 | (v114 << 16);
    v13 = v112;
    v14 = v111;
    v15 = v110[0];
    v16 = v110[1];
  }

  else
  {
    v97 = *(v4 + 72);
    v99 = *(v4 + 88);
    v5 = *(v4 + 64);
    v94 = *(v4 + 56);
    v92 = *(v4 + 57);
    v17 = v4;
    v11 = *(v4 + 40);
    v10 = *(v4 + 48);
    v12 = *(v4 + 32) | (*(v4 + 34) << 16);
    v13 = *(v4 + 24);
    v14 = *(v4 + 16);
    v18 = v4;
    v15 = *v4;
    v16 = *(v18 + 8);
    sub_1000767C0(v17, &v105);
    v9 = v94;
    v8 = v92;
    v7 = v97;
    v6 = v99;
  }

  v87 = 0;
  v85 = v15;
  *&v105 = v15;
  *(&v105 + 1) = v16;
  LOBYTE(v106) = v14;
  *(&v106 + 1) = v13;
  LOWORD(v107) = v12;
  BYTE2(v107) = BYTE2(v12);
  *(&v107 + 1) = v11;
  *&v108 = v10;
  BYTE8(v108) = v9;
  BYTE9(v108) = v8;
  *v109 = v5;
  *&v109[8] = v7;
  *&v109[24] = v6;
  if (a3)
  {
    v19 = v90;
    if (*(v88 + 57) == 33)
    {
      sub_100001AB4(&qword_1001753C8, &unk_100123340);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10011DE90;
      *(v20 + 34) = -46;
      v87 = v20;
      *(v20 + 32) = 1792;
    }
  }

  else
  {
    v19 = v90;
  }

  v21 = *(v88 + 64);
  v95 = *(v21 + 16);
  if (v95)
  {
    v22 = 0;
    v93 = v21 + 32;
    v98 = _swiftEmptyArrayStorage;
    while (1)
    {
      v24 = v93 + 12 * v22;
      v25 = *v24;
      if (*(v24 + 9) > 1u)
      {
        v29 = *v24;
        if (*(v24 + 9) != 2)
        {
          sub_100058B70(v29, a1, a2);
          if (v19)
          {
LABEL_76:

            sub_10007681C(&v105);
          }

          v89 = v33;
          v34 = sub_1000A60F8([v89 bytes], 21248);
          if (v35 >> 60 == 15)
          {
            goto LABEL_91;
          }

          v36 = v34;
          v37 = v35;
          v38 = v35 >> 62;
          if ((v35 >> 62) > 1)
          {
            if (v38 == 2)
            {
              v40 = v22;
              v41 = *(v34 + 16);
              v42 = *(v34 + 24);
              v43 = __DataStorage._bytes.getter();
              if (v43)
              {
                v44 = __DataStorage._offset.getter();
                if (__OFSUB__(v41, v44))
                {
                  goto LABEL_89;
                }

                v43 += v41 - v44;
              }

              v45 = __OFSUB__(v42, v41);
              v46 = v42 - v41;
              if (v45)
              {
                goto LABEL_88;
              }

              goto LABEL_38;
            }

            memset(v103, 0, 14);
            v39 = v103;
LABEL_46:
            sub_100106AE0(v103, v39, v104);
            sub_100076B24(v36, v37);
          }

          else
          {
            if (!v38)
            {
              v103[0] = v34;
              LOWORD(v103[1]) = v35;
              BYTE2(v103[1]) = BYTE2(v35);
              BYTE3(v103[1]) = BYTE3(v35);
              BYTE4(v103[1]) = BYTE4(v35);
              BYTE5(v103[1]) = BYTE5(v35);
              v39 = v103 + BYTE6(v35);
              goto LABEL_46;
            }

            v40 = v22;
            v46 = (v34 >> 32) - v34;
            if (v34 >> 32 < v34)
            {
              goto LABEL_87;
            }

            v43 = __DataStorage._bytes.getter();
            if (v43)
            {
              v47 = __DataStorage._offset.getter();
              if (__OFSUB__(v36, v47))
              {
                goto LABEL_90;
              }

              v43 += v36 - v47;
            }

LABEL_38:
            v48 = __DataStorage._length.getter();
            if (v48 >= v46)
            {
              v49 = v46;
            }

            else
            {
              v49 = v48;
            }

            v50 = v49 + v43;
            if (v43)
            {
              v51 = v50;
            }

            else
            {
              v51 = 0;
            }

            sub_100106AE0(v43, v51, v104);
            v19 = 0;
            sub_100076B24(v36, v37);
            v22 = v40;
          }

          v52 = v104[3];

          v53 = *(v52 + 16);
          if (v53)
          {
            v86 = v22;
            v104[0] = _swiftEmptyArrayStorage;
            sub_100047100(0, v53, 0);
            v54 = 0;
            v31 = v104[0];
            v102 = *(v52 + 16);
            v100 = v52 + 32;
            while (v54 != v102)
            {
              if (v54 >= *(v52 + 16))
              {
                goto LABEL_86;
              }

              v55 = *(v100 + 8 * v54);
              v56 = *(v55 + 16);
              if (v56)
              {
                v57 = 0;
                v58 = (v55 + 48);
                v59 = (v55 + 48);
                do
                {
                  v60 = *v59;
                  v59 += 17;
                  if (v60 == 1)
                  {
                    v57 = *(v58 - 5);
                  }

                  v58 = v59;
                  --v56;
                }

                while (v56);
              }

              else
              {
                v57 = 0;
              }

              v61 = v52;
              v62 = ChannelRelationship.description.getter();
              v64 = v63;
              v104[0] = v31;
              v66 = v31[2];
              v65 = v31[3];
              if (v66 >= v65 >> 1)
              {
                sub_100047100((v65 > 1), v66 + 1, 1);
                v31 = v104[0];
              }

              ++v54;
              v31[2] = v66 + 1;
              v67 = &v31[4 * v66];
              v67[4] = v54;
              v67[5] = v62;
              v67[6] = v64;
              *(v67 + 14) = v57;
              v52 = v61;
              if (v54 == v53)
              {

                v19 = 0;
                v22 = v86;
                goto LABEL_62;
              }
            }

            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
          }

          v31 = _swiftEmptyArrayStorage;
LABEL_62:
          v30 = 0;
          v32 = 0;
LABEL_63:
          v68 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_100024DCC(0, *(v98 + 2) + 1, 1, v98);
          }

          v70 = *(v98 + 2);
          v69 = *(v98 + 3);
          if (v70 >= v69 >> 1)
          {
            v98 = sub_100024DCC((v69 > 1), v70 + 1, 1, v98);
          }

          *(v98 + 2) = v70 + 1;
          v23 = &v98[24 * v70];
          *(v23 + 4) = v30;
          *(v23 + 5) = v31;
          v23[48] = v32 & 1;
          v22 = v68;
          goto LABEL_11;
        }

        sub_100109BD4(v29, a1, a2);
        if (v19)
        {
          goto LABEL_76;
        }
      }

      else if (*(v24 + 9))
      {
        v26 = sub_10010986C(a1, v25, HIDWORD(v25), *(v24 + 8));
        if (v19)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v26 = sub_1001094F0(a1, v25, WORD1(v25), BYTE4(v25));
        if (v19)
        {
          goto LABEL_76;
        }
      }

      v30 = v26;
      v31 = v27;
      v32 = v28;
      if (v27)
      {
        goto LABEL_63;
      }

LABEL_11:
      if (++v22 == v95)
      {
        goto LABEL_68;
      }
    }
  }

  v98 = _swiftEmptyArrayStorage;
LABEL_68:
  if (*(v88 + 88))
  {
    v71 = *(v88 + 88);
  }

  else
  {
    v71 = _swiftEmptyArrayStorage;
  }

  if (v87)
  {
    v72 = v87;
  }

  else
  {
    v72 = _swiftEmptyArrayStorage;
  }

  v104[0] = v71;

  sub_10007E474(v72);
  v73 = v104[0];
  active = type metadata accessor for ActiveInputTerminal();
  v75 = swift_allocObject();
  *(v75 + 24) = 0;
  swift_unknownObjectWeakInit();
  v76 = v106;
  v77 = v107;
  *(v75 + 32) = v105;
  *(v75 + 48) = v76;
  v78 = *&v109[16];
  v79 = v108;
  *(v75 + 96) = *v109;
  *(v75 + 112) = v78;
  *(v75 + 128) = *&v109[32];
  *(v75 + 64) = v77;
  *(v75 + 80) = v79;
  if (*(v73 + 16))
  {
    sub_1000767C0(&v105, v104);
  }

  else
  {
    sub_1000767C0(&v105, v104);

    v73 = 0;
  }

  *(v75 + 144) = v98;
  *(v75 + 152) = v73;
  v81 = v85;
  if (v85 != 257)
  {
    v82 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v82)
    {
      v83 = sub_1000AA808(0xFu, v82);
      v81 = 1026;
      if (!v83)
      {
        v81 = v85;
      }
    }

    else
    {
      v81 = v85;
    }
  }

  *(v75 + 136) = v81;
  a4[3] = active;
  a4[4] = &protocol witness table for ActiveInputTerminal;
  result = sub_10007681C(&v105);
  *a4 = v75;
  return result;
}

Swift::Int InputTerminal.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_10006A6F4();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F290C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(v4 + 12);
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  return InputTerminal.activate(onDevice:controlInterface:addLatencyControl:)(a1, a2, a3, a4);
}

Swift::Int sub_1000F2958()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return InputTerminal.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InputTerminal()
{
  v1 = v0[5];
  v13 = v0[4];
  v14 = v1;
  v15 = *(v0 + 12);
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = v0[3];
  v11 = v0[2];
  v12 = v3;
  v4 = sub_10006A6F4();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

Swift::Int sub_1000F2A70()
{
  v1 = *(v0 + 80);
  v8[11] = *(v0 + 64);
  v8[12] = v1;
  v9 = *(v0 + 96);
  v2 = *(v0 + 16);
  v8[7] = *v0;
  v8[8] = v2;
  v3 = *(v0 + 48);
  v8[9] = *(v0 + 32);
  v8[10] = v3;
  Hasher.init(_seed:)();
  v4 = sub_10006A6F4();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InputTerminal(__int128 *a1, __int128 *a2)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 12);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v10 = *a2;
  v11 = a2[1];
  v16 = *(a2 + 12);
  v14 = a2[4];
  v15 = a2[5];
  v12 = a2[2];
  v13 = a2[3];
  return sub_100070148() & 1;
}

uint64_t OutputTerminal.sourceID.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t OutputTerminal.usbDescriptor.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t OutputTerminal.activate(onDevice:controlInterface:addLatencyControl:)@<X0>(void *a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  sub_1000F6000(&v29);
  v4 = v37;
  if (v37 == 1)
  {
    v4 = *(v3 + 64);
    v23 = *(v3 + 72);
    v24 = *(v3 + 88);
    v21 = *(v3 + 81);
    v22 = *(v3 + 80);
    v5 = *(v3 + 56);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = *(v3 + 32) | (*(v3 + 34) << 16);
    v9 = *(v3 + 24);
    v10 = *(v3 + 16);
    v11 = *v3;
    v12 = *(v3 + 8);
    sub_1000766B0(v3, &v42);
    v14 = v23;
    v13 = v24;
    v15 = v21;
    v16 = v22;
  }

  else
  {
    v13 = v41;
    v15 = v40;
    v16 = v39;
    v14 = v38;
    v5 = v36;
    v6 = v34;
    v8 = v32 | (v33 << 16);
    v9 = v31;
    v10 = v30;
    v12 = *(&v29 + 1);
    v11 = v29;
    v7 = v35;
  }

  *&v42 = v11;
  *(&v42 + 1) = v12;
  v43 = v10;
  v44 = v9;
  v45 = v8;
  v46 = BYTE2(v8);
  v47 = v6;
  v48 = v7 & 1;
  v49 = v5;
  v50 = v4;
  v51 = v14;
  v52 = v16;
  v53 = v15;
  v54 = v13;
  if (a2)
  {
    v17 = _swiftEmptyArrayStorage;
    if (*(v3 + 81) == 34)
    {
      sub_100001AB4(&qword_1001753C8, &unk_100123340);
      v17 = swift_allocObject();
      *(v17 + 1) = xmmword_10011DE90;
      *(v17 + 34) = -46;
      *(v17 + 16) = 1792;
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (*(v3 + 64))
  {
    v18 = *(v3 + 64);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v28 = v18;

  sub_10007E474(v17);
  active = type metadata accessor for ActiveOutputTerminal();
  swift_allocObject();
  result = sub_1000C1050(a1, &v42, v28);
  a3[3] = active;
  a3[4] = &protocol witness table for ActiveOutputTerminal;
  *a3 = result;
  return result;
}

uint64_t sub_1000F2E34@<X0>(void *a1@<X0>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v5 = *v3;
  v6 = v3[1];
  return OutputTerminal.activate(onDevice:controlInterface:addLatencyControl:)(a1, a2, a3);
}

Swift::Int sub_1000F2E80()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return OutputTerminal.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance OutputTerminal()
{
  v1 = v0[3];
  v11 = v0[2];
  v12 = v1;
  v2 = v0[5];
  v13 = v0[4];
  v14 = v2;
  v3 = v0[1];
  v9 = *v0;
  v10 = v3;
  v4 = sub_10006A3FC();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

Swift::Int sub_1000F2F88()
{
  v1 = v0[3];
  v8[9] = v0[2];
  v8[10] = v1;
  v2 = v0[5];
  v8[11] = v0[4];
  v8[12] = v2;
  v3 = v0[1];
  v8[7] = *v0;
  v8[8] = v3;
  Hasher.init(_seed:)();
  v4 = sub_10006A3FC();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OutputTerminal(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_100070130(v9, v10) & 1;
}

uint64_t MixerUnit.sourceID.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MixerUnit.usbDescriptor.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t FeatureUnit.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

unint64_t FeatureUnit.activate(onDevice:controlInterface:addLatencyControl:)@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{
  sub_1000F5778(&v20);
  v5 = v28;
  if (v28)
  {
    v17 = v29;
    v18 = v30;
    v16 = v27;
    v6 = v26;
    v7 = v25;
    v8 = v23 | (v24 << 16);
    v9 = v22;
    v10 = v20;
    v11 = v21;
  }

  else
  {
    v17 = *(v2 + 56);
    v18 = *(v2 + 64);
    v5 = *(v2 + 48);
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v16 = *(v2 + 41);
    v8 = *(v2 + 24) | (*(v2 + 26) << 16);
    v9 = *(v2 + 16);
    v10 = *v2;
    v11 = *(v2 + 8);
    sub_100076614(v2, v19);
  }

  v19[0] = v11 & 1;
  v12 = _swiftEmptyArrayStorage;
  if ((a1 & 1) != 0 && *(v2 + 41) == 37)
  {
    sub_100001AB4(&qword_1001753C8, &unk_100123340);
    v12 = swift_allocObject();
    *(v12 + 1) = xmmword_10011DE90;
    *(v12 + 34) = -46;
    *(v12 + 16) = 4096;
  }

  active = type metadata accessor for ActiveFeatureUnit();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  result = sub_10000B300(_swiftEmptyArrayStorage);
  *(v14 + 112) = result;
  *(v14 + 32) = v10;
  *(v14 + 40) = v19[0];
  *(v14 + 48) = v9;
  *(v14 + 58) = BYTE2(v8);
  *(v14 + 56) = v8;
  *(v14 + 64) = v7;
  *(v14 + 72) = v6;
  *(v14 + 73) = v16;
  *(v14 + 80) = v5;
  *(v14 + 88) = v17;
  *(v14 + 96) = v18;
  if (!v12[2])
  {

    v12 = 0;
  }

  *(v14 + 104) = v12;
  a2[3] = active;
  a2[4] = &protocol witness table for ActiveFeatureUnit;
  *a2 = v14;
  return result;
}

unint64_t sub_1000F32EC@<X0>(char a1@<W2>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return FeatureUnit.activate(onDevice:controlInterface:addLatencyControl:)(a1, a2);
}

Swift::Int sub_1000F3338()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return FeatureUnit.hashValue.getter();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FeatureUnit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1000706F4(v7, v9) & 1;
}

uint64_t MixerUnit.clusterDescription.getter()
{
  result = *(v0 + 44);
  v2 = *(v0 + 52);
  return result;
}

uint64_t MixerUnit.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

void MixerUnit.activate(onDevice:controlInterface:addLatencyControl:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 44);
  if (*(v3 + 53) > 1u)
  {
    v21 = *(v3 + 44);
    if (*(v3 + 53) == 2)
    {
      sub_100109BD4(v21, a1, a2);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_10010A3F0(v21, a1, a2);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v9 = *(v3 + 48);
    if (!*(v3 + 53))
    {
      v10 = sub_1001094F0(a1, *(v3 + 44), *(v3 + 46), *(v3 + 48));
      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v10 = sub_10010986C(a1, *(v3 + 44), *(v3 + 48), *(v3 + 52));
    if (!v4)
    {
LABEL_4:
      v13 = v10;
      v14 = v11;
      v15 = v12;
      active = type metadata accessor for ActiveMixerUnit();
      v17 = swift_allocObject();
      *(v17 + 24) = 0;
      swift_unknownObjectWeakInit();
      v18 = *(v3 + 48);
      *(v17 + 64) = *(v3 + 32);
      *(v17 + 80) = v18;
      *(v17 + 96) = *(v3 + 64);
      v19 = *(v3 + 80);
      v20 = *(v3 + 16);
      *(v17 + 32) = *v3;
      *(v17 + 48) = v20;
      *(v17 + 112) = v19;
      *(v17 + 120) = v13;
      *(v17 + 128) = v14;
      *(v17 + 136) = v15;
      a3[3] = active;
      a3[4] = &protocol witness table for ActiveMixerUnit;
      *a3 = v17;
      sub_10002317C(v3, v22);
    }
  }
}

Swift::Int MixerUnit.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_100069558();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

void sub_1000F361C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  *&v22[16] = *(v3 + 48);
  v23 = v7;
  v24 = *(v3 + 80);
  v8 = *(v3 + 16);
  v21[0] = *v3;
  v21[1] = v8;
  *v22 = v6;
  if (v22[21] > 1u)
  {
    if (v22[21] == 2)
    {
      sub_100109BD4(*&v22[12], a1, a2);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_10010A3F0(*&v22[12], a1, a2);
      if (!v4)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if (!v22[21])
    {
      v9 = sub_1001094F0(a1, v22[12], *&v22[14], v22[16]);
      if (v4)
      {
        return;
      }

      goto LABEL_4;
    }

    v9 = sub_10010986C(a1, v22[12], *&v22[16], v22[20]);
    if (!v4)
    {
LABEL_4:
      v12 = v9;
      v13 = v10;
      v14 = v11;
      active = type metadata accessor for ActiveMixerUnit();
      v16 = swift_allocObject();
      *(v16 + 24) = 0;
      swift_unknownObjectWeakInit();
      v17 = *(v3 + 48);
      *(v16 + 64) = *(v3 + 32);
      *(v16 + 80) = v17;
      *(v16 + 96) = *(v3 + 64);
      v18 = *(v3 + 80);
      v19 = *(v3 + 16);
      *(v16 + 32) = *v3;
      *(v16 + 48) = v19;
      *(v16 + 112) = v18;
      *(v16 + 120) = v12;
      *(v16 + 128) = v13;
      *(v16 + 136) = v14;
      a3[3] = active;
      a3[4] = &protocol witness table for ActiveMixerUnit;
      *a3 = v16;
      sub_10002317C(v21, v20);
    }
  }
}

Swift::Int sub_1000F3770()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  return MixerUnit.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MixerUnit()
{
  v1 = v0[3];
  v10 = v0[2];
  v11 = v1;
  v12 = v0[4];
  v13 = *(v0 + 10);
  v2 = v0[1];
  v8 = *v0;
  v9 = v2;
  v3 = sub_100069558();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

Swift::Int sub_1000F3888()
{
  v1 = *(v0 + 48);
  v7[9] = *(v0 + 32);
  v7[10] = v1;
  v7[11] = *(v0 + 64);
  v8 = *(v0 + 80);
  v2 = *(v0 + 16);
  v7[7] = *v0;
  v7[8] = v2;
  Hasher.init(_seed:)();
  v3 = sub_100069558();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MixerUnit(__int128 *a1, __int128 *a2)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 10);
  v3 = *a1;
  v4 = a1[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = *(a2 + 10);
  v9 = *a2;
  v10 = a2[1];
  return sub_10006FA78() & 1;
}

uint64_t SelectorUnit.activate(onDevice:controlInterface:addLatencyControl:)@<X0>(uint64_t *a1@<X8>)
{
  active = type metadata accessor for ActiveSelectorUnit();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 112) = 1;
  v5 = *(v1 + 48);
  *(v4 + 64) = *(v1 + 32);
  *(v4 + 80) = v5;
  *(v4 + 96) = *(v1 + 64);
  *(v4 + 104) = 0;
  v6 = *(v1 + 16);
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveSelectorUnit;
  *a1 = v4;
  return sub_1000267DC(v1, v8);
}

uint64_t sub_1000F3A54@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v3;
  v12 = *(v1 + 64);
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  active = type metadata accessor for ActiveSelectorUnit();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 112) = 1;
  v7 = *(v1 + 48);
  *(v6 + 64) = *(v1 + 32);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(v1 + 64);
  *(v6 + 104) = 0;
  v8 = *(v1 + 16);
  *(v6 + 32) = *v1;
  *(v6 + 48) = v8;
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveSelectorUnit;
  *a1 = v6;
  return sub_1000267DC(v11, v10);
}

Swift::Int sub_1000F3B0C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return SelectorUnit.hashValue.getter();
}

uint64_t sub_1000F3B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4[3];
  v14 = v4[2];
  v15 = v5;
  v16 = *(v4 + 8);
  v6 = v4[1];
  v12 = *v4;
  v13 = v6;
  v7 = a4();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    do
    {
      sub_10001EDEC(v9, v11);
      AnyHashable.hash(into:)();
      sub_10001E070(v11);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

Swift::Int sub_1000F3C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 48);
  v13[9] = *(v4 + 32);
  v13[10] = v6;
  v14 = *(v4 + 64);
  v7 = *(v4 + 16);
  v13[7] = *v4;
  v13[8] = v7;
  v8 = Hasher.init(_seed:)();
  v9 = a4(v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_10001EDEC(v11, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SelectorUnit(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100070574(v7, v9) & 1;
}

uint64_t ExtensionUnit.cluster.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return v1;
}

uint64_t ExtensionUnit.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t ExtensionUnit.activate(onDevice:controlInterface:addLatencyControl:)@<X0>(uint64_t *a1@<X8>)
{
  active = type metadata accessor for ActiveExtensionUnit();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = v1[3];
  *(v4 + 64) = v1[2];
  *(v4 + 80) = v5;
  v6 = v1[5];
  *(v4 + 96) = v1[4];
  *(v4 + 112) = v6;
  v7 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v7;
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveExtensionUnit;
  *a1 = v4;
  return sub_10007651C(v1, &v9);
}

Swift::Int sub_1000F3E60(uint64_t (*a1)(uint64_t))
{
  v2 = Hasher.init(_seed:)();
  v3 = a1(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F3EF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v13[2] = v1[2];
  v13[3] = v3;
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  active = type metadata accessor for ActiveExtensionUnit();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  v8 = v1[3];
  *(v7 + 64) = v1[2];
  *(v7 + 80) = v8;
  v9 = v1[5];
  *(v7 + 96) = v1[4];
  *(v7 + 112) = v9;
  v10 = v1[1];
  *(v7 + 32) = *v1;
  *(v7 + 48) = v10;
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveExtensionUnit;
  *a1 = v7;
  return sub_10007651C(v13, &v12);
}

Swift::Int sub_1000F3FA0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return ExtensionUnit.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExtensionUnit()
{
  v1 = v0[3];
  v11 = v0[2];
  v12 = v1;
  v2 = v0[5];
  v13 = v0[4];
  v14 = v2;
  v3 = v0[1];
  v9 = *v0;
  v10 = v3;
  v4 = sub_10006A9C4();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

Swift::Int sub_1000F40A8()
{
  v1 = v0[3];
  v8[9] = v0[2];
  v8[10] = v1;
  v2 = v0[5];
  v8[11] = v0[4];
  v8[12] = v2;
  v3 = v0[1];
  v8[7] = *v0;
  v8[8] = v3;
  Hasher.init(_seed:)();
  v4 = sub_10006A9C4();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExtensionUnit(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1000702A0(v9, v10) & 1;
}

uint64_t EffectUnit.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

Swift::Int sub_1000F4210()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return EffectUnit.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EffectUnit()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1000F1D2C();
}

Swift::Int sub_1000F4288()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  Hasher.init(_seed:)();
  sub_1000F1D2C();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EffectUnit(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1000708B0(v7, v8) & 1;
}

uint64_t SampleRateConverter.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ProcessingUnit.activate(onDevice:controlInterface:addLatencyControl:)@<X0>(uint64_t *a1@<X8>)
{
  active = type metadata accessor for ActiveProcessingUnit();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 112) = 0;
  v5 = v1[3];
  *(v4 + 64) = v1[2];
  *(v4 + 80) = v5;
  *(v4 + 96) = v1[4];
  v6 = v1[1];
  *(v4 + 32) = *v1;
  *(v4 + 48) = v6;
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveProcessingUnit;
  *a1 = v4;
  return sub_100076430(v1, &v8);
}

Swift::Int ProcessingUnit.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_10006A108();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F4498@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v11[2] = v1[2];
  v11[3] = v3;
  v11[4] = v1[4];
  v4 = v1[1];
  v11[0] = *v1;
  v11[1] = v4;
  active = type metadata accessor for ActiveProcessingUnit();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 112) = 0;
  v7 = v1[3];
  *(v6 + 64) = v1[2];
  *(v6 + 80) = v7;
  *(v6 + 96) = v1[4];
  v8 = v1[1];
  *(v6 + 32) = *v1;
  *(v6 + 48) = v8;
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveProcessingUnit;
  *a1 = v6;
  return sub_100076430(v11, &v10);
}

Swift::Int sub_1000F454C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return ProcessingUnit.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ProcessingUnit()
{
  v1 = v0[3];
  v10 = v0[2];
  v11 = v1;
  v12 = v0[4];
  v2 = v0[1];
  v8 = *v0;
  v9 = v2;
  v3 = sub_10006A108();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

Swift::Int sub_1000F4654()
{
  v1 = v0[3];
  v7[9] = v0[2];
  v7[10] = v1;
  v7[11] = v0[4];
  v2 = v0[1];
  v7[7] = *v0;
  v7[8] = v2;
  Hasher.init(_seed:)();
  v3 = sub_10006A108();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ProcessingUnit(__int128 *a1, __int128 *a2)
{
  v5 = a1[2];
  v6 = a1[3];
  v3 = *a1;
  v4 = a1[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v9 = a2[1];
  v7 = a1[4];
  v8 = *a2;
  return sub_10006FFD8() & 1;
}

Swift::Int sub_1000F4768(uint64_t (*a1)(uint64_t))
{
  v2 = Hasher.init(_seed:)();
  v3 = a1(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000F47F8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return SampleRateConverter.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SampleRateConverter()
{
  v1 = v0[3];
  v10 = v0[2];
  v11 = v1;
  v12 = *(v0 + 8);
  v2 = v0[1];
  v8 = *v0;
  v9 = v2;
  v3 = sub_100069854();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

Swift::Int sub_1000F4900()
{
  v1 = *(v0 + 48);
  v7[9] = *(v0 + 32);
  v7[10] = v1;
  v8 = *(v0 + 64);
  v2 = *(v0 + 16);
  v7[7] = *v0;
  v7[8] = v2;
  Hasher.init(_seed:)();
  v3 = sub_100069854();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SampleRateConverter(__int128 *a1, __int128 *a2)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 8);
  v3 = *a1;
  v4 = a1[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = *(a2 + 8);
  v8 = *a2;
  v9 = a2[1];
  return sub_10006FBD0() & 1;
}

uint64_t ClockMultiplier.usbDescriptor.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

Swift::Int PowerDomain.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_10006B028();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000F4AA8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return PowerDomain.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PowerDomain()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  v2 = sub_10006B028();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_1000F4BA0()
{
  v1 = v0[1];
  v6[7] = *v0;
  v6[8] = v1;
  v6[9] = v0[2];
  Hasher.init(_seed:)();
  v2 = sub_10006B028();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PowerDomain(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  return sub_10007059C() & 1;
}

uint64_t ClockSource.activate(onDevice:controlInterface:)@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 40))
  {
    v4 = *(v1 + 40);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  active = type metadata accessor for ActiveClockSource(0);
  v6 = *(active + 48);
  v7 = *(active + 52);
  swift_allocObject();

  sub_10002C080(v1, &v9);
  result = sub_10002C590(v1, v4);
  if (!v2)
  {
    a1[3] = active;
    a1[4] = &protocol witness table for ActiveClockSource;
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1000F4D60(uint64_t (*a1)(uint64_t))
{
  v2 = Hasher.init(_seed:)();
  v3 = a1(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F4DF0@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v13 = v1[2];
  v14 = v5;
  if (*(&v13 + 1))
  {
    v6 = *(&v13 + 1);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  active = type metadata accessor for ActiveClockSource(0);
  v8 = *(active + 48);
  v9 = *(active + 52);
  swift_allocObject();

  sub_10002C080(v12, &v11);
  result = sub_10002C590(v12, v6);
  if (!v2)
  {
    a1[3] = active;
    a1[4] = &protocol witness table for ActiveClockSource;
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1000F4EA8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return ClockSource.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClockSource()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v2 = v0[3];
  v10 = v0[2];
  v11 = v2;
  v3 = sub_10006B660();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

Swift::Int sub_1000F4FA0()
{
  v1 = v0[1];
  v7[7] = *v0;
  v7[8] = v1;
  v2 = v0[3];
  v7[9] = v0[2];
  v7[10] = v2;
  Hasher.init(_seed:)();
  v3 = sub_10006B660();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v7);
      AnyHashable.hash(into:)();
      sub_10001E070(v7);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ClockSource(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100070898(v7, v8) & 1;
}

uint64_t ClockSelector.activate(onDevice:controlInterface:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  if (v1[6])
  {
    v4 = v1[6];
  }

  v11 = v1[4];
  v10 = v3;
  active = type metadata accessor for ActiveClockSelector(0);
  v6 = *(active + 48);
  v7 = *(active + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_10000D0B8(&v11, &v9, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v10, &v9, &qword_100176868, &unk_100122140);
  result = sub_100031F88(v1);
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveClockSelector;
  *a1 = result;
  return result;
}

Swift::Int ClockSelector.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_10006ACBC();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F51F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v9[1] = *(v1 + 16);
  v9[2] = v3;
  v9[0] = *v1;
  v10 = *(v1 + 48);
  v11 = v3;
  active = type metadata accessor for ActiveClockSelector(0);
  v5 = *(active + 48);
  v6 = *(active + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_10000D0B8(&v11, v8, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v11 + 8, v8, &qword_100176868, &unk_100122140);
  result = sub_100031F88(v9);
  a1[3] = active;
  a1[4] = &protocol witness table for ActiveClockSelector;
  *a1 = result;
  return result;
}

Swift::Int sub_1000F52E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return ClockSelector.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClockSelector()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  v10 = *(v0 + 6);
  v2 = sub_10006ACBC();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_1000F53F0()
{
  v1 = *(v0 + 16);
  v6[7] = *v0;
  v6[8] = v1;
  v6[9] = *(v0 + 32);
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  v2 = sub_10006ACBC();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ClockSelector(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 6);
  return sub_10007041C() & 1;
}

Swift::Int ClockMultiplier.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_100069E1C();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000F5574()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 12);
  return ClockMultiplier.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClockMultiplier()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  v10 = *(v0 + 12);
  v2 = sub_100069E1C();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

Swift::Int sub_1000F567C()
{
  v1 = *(v0 + 16);
  v6[7] = *v0;
  v6[8] = v1;
  v6[9] = *(v0 + 32);
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  v2 = sub_100069E1C();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      sub_10001EDEC(v4, v6);
      AnyHashable.hash(into:)();
      sub_10001E070(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ClockMultiplier(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 12);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 12);
  return sub_10006FE80() & 1;
}

uint64_t sub_1000F5778@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v4 = *(v1 + 40);
  v5 = *(v1 + 41);
  if (USBDescriptor.descriptorTypeName.getter(v3, v4 | (v5 << 8)) == 0x7461654634434441 && v6 == 0xEF74696E55657275)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v10 = 0;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_18;
    }
  }

  if (*(v1 + 8))
  {
    v15 = 0;
  }

  else
  {
    v15 = *v1;
  }

  if (v1[8])
  {
    v16 = v1[8];
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = v1[2];
  v18 = v1[6];
  v37 = v18;
  if (v16[2])
  {
    sub_10000D0B8(&v37, &v25, &qword_100176878, &qword_100122150);
  }

  else
  {
    sub_10000D0B8(&v37, &v25, &qword_100176878, &qword_100122150);

    v16 = 0;
  }

  v36 = 0;
  *&v20 = v15;
  BYTE8(v20) = 0;
  *&v21 = v17;
  BYTE10(v21) = -1;
  WORD4(v21) = 0;
  *&v22 = v3;
  BYTE8(v22) = v4;
  BYTE9(v22) = v5;
  v23 = v18;
  v24 = v16;
  v25 = v15;
  v26 = 0;
  v27 = v17;
  v29 = -1;
  v28 = 0;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v18;
  v34 = 0;
  v35 = v16;
  sub_100076614(&v20, v19);
  result = sub_100091CF0(&v25);
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v10 = v24;
LABEL_18:
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 64) = v10;
  return result;
}

uint64_t sub_1000F5958@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = v1[6];
  v62 = *(v1 + 57);
  v63 = *(v1 + 56);
  if (USBDescriptor.descriptorTypeName.getter(v6, v63 | (v62 << 8)) == 0xD000000000000011 && 0x8000000100131330 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v33 = 0;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
LABEL_56:
      *a1 = v34;
      *(a1 + 16) = v35;
      *(a1 + 32) = v36;
      *(a1 + 48) = v37;
      *(a1 + 64) = v38;
      *(a1 + 80) = v39;
      *(a1 + 96) = v33;
      return result;
    }
  }

  result = sub_1000A60F8(v6, v63 | (v62 << 8));
  if (v11 >> 60 != 15)
  {
    v12 = result;
    v13 = v11;
    v14 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v14 != 2)
      {
        *(&v71 + 6) = 0;
        *&v71 = 0;
        v15 = &v71;
        goto LABEL_36;
      }

      v58 = a1;
      v59 = v6;
      v16 = *(result + 16);
      v17 = *(result + 24);
      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v19))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v18 += v16 - v19;
      }

      v20 = __OFSUB__(v17, v16);
      v21 = v17 - v16;
      if (!v20)
      {
        v22 = __DataStorage._length.getter();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        v24 = &v18[v23];
        if (v18)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        sub_100103C58(v18, v25, v91);
        v6 = v59;
        sub_100076B24(v12, v13);
LABEL_37:
        *&v84[14] = *&v91[14];
        *v84 = *v91;
        v40 = v92;
        v85 = v93;
        v86 = v6;
        v87 = v63;
        v88 = v62;
        v89 = v92;
        v90 = v94;
        v41 = *(v92 + 16);
        v61 = v6;
        if (v41)
        {
          *&v71 = _swiftEmptyArrayStorage;
          sub_1000470E0(0, v41, 0);
          v42 = v71;
          v43 = (v40 + 32);
          v44 = *(v71 + 16);
          v45 = 12 * v44;
          do
          {
            v47 = *v43++;
            v46 = v47;
            *&v71 = v42;
            v48 = v42[3];
            v49 = v44 + 1;
            if (v44 >= v48 >> 1)
            {
              sub_1000470E0((v48 > 1), v44 + 1, 1);
              v42 = v71;
            }

            v42[2] = v49;
            v50 = v42 + v45;
            *(v50 + 4) = v46;
            *(v50 + 20) = 768;
            v45 += 12;
            v44 = v49;
            --v41;
          }

          while (v41);
          v51 = v90;
        }

        else
        {
          v51 = v94;
          v42 = _swiftEmptyArrayStorage;
        }

        a1 = v58;
        if (v51 >> 62)
        {
          LOBYTE(v51) = *(v1 + 16);
        }

        sub_1000A9AE4(v84);
        if (v1[11])
        {
          v52 = v1[11];
        }

        else
        {
          v52 = _swiftEmptyArrayStorage;
        }

        if (v2[12])
        {
          v53 = v2[12];
        }

        else
        {
          v53 = _swiftEmptyArrayStorage;
        }

        v56 = v2[3];
        v57 = v2[5];
        v55 = *v2;
        v54 = v2[1];
        v95 = *(v2 + 9);
        if (v52[2])
        {

          sub_10000D0B8(&v95, &v71, &qword_1001788A0, &qword_1001283D0);

          if (v53[2])
          {
LABEL_55:
            *&v65 = v55;
            *(&v65 + 1) = v54;
            LOBYTE(v66) = v51;
            *(&v66 + 1) = v56;
            LOWORD(v67) = *(v2 + 16);
            BYTE2(v67) = *(v2 + 34);
            *(&v67 + 1) = v57;
            *&v68 = v61;
            BYTE8(v68) = v63;
            BYTE9(v68) = v62;
            *(v69 + 8) = *(v2 + 9);
            *&v69[0] = v42;
            *(&v69[1] + 1) = v52;
            v70 = v53;
            *&v71 = v55;
            *(&v71 + 1) = v54;
            v72 = v51;
            v73 = v56;
            v74 = *(v2 + 16);
            v75 = *(v2 + 34);
            v76 = v57;
            v77 = v61;
            v78 = v63;
            v79 = v62;
            v81 = *(v2 + 9);
            v80 = v42;
            v82 = v52;
            v83 = v53;
            sub_1000767C0(&v65, &v64);
            result = sub_10007681C(&v71);
            v34 = v65;
            v35 = v66;
            v36 = v67;
            v37 = v68;
            v38 = v69[0];
            v39 = v69[1];
            v33 = v70;
            goto LABEL_56;
          }
        }

        else
        {

          sub_10000D0B8(&v95, &v71, &qword_1001788A0, &qword_1001283D0);

          v52 = 0;
          if (v53[2])
          {
            goto LABEL_55;
          }
        }

        v53 = 0;
        goto LABEL_55;
      }
    }

    else
    {
      if (!v14)
      {
        *&v71 = result;
        WORD4(v71) = v11;
        BYTE10(v71) = BYTE2(v11);
        BYTE11(v71) = BYTE3(v11);
        BYTE12(v71) = BYTE4(v11);
        BYTE13(v71) = BYTE5(v11);
        v15 = &v71 + BYTE6(v11);
LABEL_36:
        sub_100103C58(&v71, v15, v91);
        v58 = a1;
        sub_100076B24(v12, v13);
        goto LABEL_37;
      }

      v58 = a1;
      v60 = v6;
      v26 = (result >> 32) - result;
      if (result >> 32 >= result)
      {
        v27 = __DataStorage._bytes.getter();
        if (!v27)
        {
LABEL_28:
          v29 = __DataStorage._length.getter();
          if (v29 >= v26)
          {
            v30 = (v12 >> 32) - v12;
          }

          else
          {
            v30 = v29;
          }

          v31 = &v27[v30];
          if (v27)
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          sub_100103C58(v27, v32, v91);
          sub_100076B24(v12, v13);
          v6 = v60;
          goto LABEL_37;
        }

        v28 = __DataStorage._offset.getter();
        if (!__OFSUB__(v12, v28))
        {
          v27 += v12 - v28;
          goto LABEL_28;
        }

LABEL_62:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F6000@<X0>(_OWORD *a1@<X8>)
{
  v54 = type metadata accessor for LogID(0);
  v3 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v4 = v1[9];
  v5 = *(v1 + 80);
  v6 = *(v1 + 81);
  if (USBDescriptor.descriptorTypeName.getter(v4, v5 | (v6 << 8)) == 0xD000000000000012 && 0x80000001001312F0 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v33 = xmmword_100127650;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
LABEL_51:
      *a1 = v34;
      a1[1] = v35;
      a1[2] = v36;
      a1[3] = v37;
      a1[4] = v33;
      a1[5] = v38;
      return result;
    }
  }

  result = sub_1000A60F8(v4, v5 | (v6 << 8));
  if (v11 >> 60 != 15)
  {
    v12 = result;
    v13 = v11;
    v14 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v14 != 2)
      {
        *(&v57 + 6) = 0;
        *&v57 = 0;
        v15 = &v57;
        goto LABEL_36;
      }

      v51 = v6;
      v48 = v4;
      v17 = *(result + 16);
      v16 = *(result + 24);
      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v19))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v18 += v17 - v19;
      }

      v20 = __OFSUB__(v16, v17);
      v21 = v16 - v17;
      if (!v20)
      {
        v22 = __DataStorage._length.getter();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        v24 = &v18[v23];
        if (v18)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        sub_100104A68(v18, v25, v63);
        LOBYTE(v6) = v51;
        sub_100076B24(v12, v13);
        v4 = v48;
LABEL_37:
        v39 = v65;
        v49 = v4;
        v50 = v5;
        v53 = v6;
        if (v65 >> 62)
        {
          v40 = *(v1 + 16);
          sub_1000F7B48(v65);
          v39 = v40;
        }

        v41 = v1[5];
        if (*(v1 + 48))
        {
          v41 = 0;
        }

        v55 = v41;
        v47 = v1[7];
        if (v1[8])
        {
          v42 = v1[8];
        }

        else
        {
          v42 = _swiftEmptyArrayStorage;
        }

        if (v1[11])
        {
          v43 = v1[11];
        }

        else
        {
          v43 = _swiftEmptyArrayStorage;
        }

        v44 = v1[3];
        v45 = *v1;
        v46 = v1[1];
        if (v42[2])
        {

          if (v43[2])
          {
LABEL_50:
            *&v57 = v45;
            *(&v57 + 1) = v46;
            LOBYTE(v58) = v39;
            *(&v58 + 1) = v44;
            LOWORD(v59) = *(v1 + 16);
            BYTE2(v59) = *(v1 + 34);
            *(&v59 + 1) = v55;
            LOBYTE(v60) = 0;
            *(&v60 + 1) = v47;
            *&v61 = v42;
            *(&v61 + 1) = v49;
            LOBYTE(v62) = v50;
            BYTE1(v62) = v53;
            *(&v62 + 1) = v43;
            v63[0] = v45;
            v63[1] = v46;
            v64 = v39;
            v65 = v44;
            v66 = *(v1 + 16);
            v67 = *(v1 + 34);
            v68 = v55;
            v69 = 0;
            v70 = v47;
            v71 = v42;
            v72 = v49;
            v73 = v50;
            v74 = v53;
            v75 = v43;
            sub_1000766B0(&v57, &v56);
            result = sub_100076AD0(v63);
            v34 = v57;
            v35 = v58;
            v36 = v59;
            v37 = v60;
            v33 = v61;
            v38 = v62;
            goto LABEL_51;
          }
        }

        else
        {

          v42 = 0;
          if (v43[2])
          {
            goto LABEL_50;
          }
        }

        v43 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      if (!v14)
      {
        *&v57 = result;
        WORD4(v57) = v11;
        BYTE10(v57) = BYTE2(v11);
        BYTE11(v57) = BYTE3(v11);
        BYTE12(v57) = BYTE4(v11);
        BYTE13(v57) = BYTE5(v11);
        v15 = &v57 + BYTE6(v11);
LABEL_36:
        sub_100104A68(&v57, v15, v63);
        sub_100076B24(v12, v13);
        goto LABEL_37;
      }

      v52 = v6;
      v26 = (result >> 32) - result;
      if (result >> 32 >= result)
      {
        v27 = __DataStorage._bytes.getter();
        if (!v27)
        {
LABEL_28:
          v29 = __DataStorage._length.getter();
          if (v29 >= v26)
          {
            v30 = (v12 >> 32) - v12;
          }

          else
          {
            v30 = v29;
          }

          v31 = &v27[v30];
          if (v27)
          {
            v32 = v31;
          }

          else
          {
            v32 = 0;
          }

          sub_100104A68(v27, v32, v63);
          sub_100076B24(v12, v13);
          LOBYTE(v6) = v52;
          goto LABEL_37;
        }

        v28 = __DataStorage._offset.getter();
        if (!__OFSUB__(v12, v28))
        {
          v27 += v12 - v28;
          goto LABEL_28;
        }

LABEL_57:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F6594(uint64_t a1)
{
  result = sub_1000C33F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F65BC(uint64_t a1)
{
  result = sub_1000A9B38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F65E4(uint64_t a1)
{
  result = sub_1000F660C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F660C()
{
  result = qword_1001787D0;
  if (!qword_1001787D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787D0);
  }

  return result;
}

unint64_t sub_1000F6664()
{
  result = qword_1001787D8;
  if (!qword_1001787D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787D8);
  }

  return result;
}

unint64_t sub_1000F66B8(uint64_t a1)
{
  result = sub_100095CAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F66E0(uint64_t a1)
{
  result = sub_1000F6708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6708()
{
  result = qword_1001787E0;
  if (!qword_1001787E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787E0);
  }

  return result;
}

unint64_t sub_1000F675C(uint64_t a1)
{
  result = sub_1000A9A50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6788()
{
  result = qword_1001787E8;
  if (!qword_1001787E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787E8);
  }

  return result;
}

unint64_t sub_1000F67DC(uint64_t a1)
{
  result = sub_1000A99A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6804(uint64_t a1)
{
  result = sub_1000F682C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F682C()
{
  result = qword_1001787F0;
  if (!qword_1001787F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787F0);
  }

  return result;
}

unint64_t sub_1000F6884()
{
  result = qword_1001787F8;
  if (!qword_1001787F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001787F8);
  }

  return result;
}

unint64_t sub_1000F68D8(uint64_t a1)
{
  result = sub_100023230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6900(uint64_t a1)
{
  result = sub_1000F6928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6928()
{
  result = qword_100178800;
  if (!qword_100178800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178800);
  }

  return result;
}

unint64_t sub_1000F6980()
{
  result = qword_100178808;
  if (!qword_100178808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178808);
  }

  return result;
}

unint64_t sub_1000F69D4(uint64_t a1)
{
  result = sub_100026850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F69FC(uint64_t a1)
{
  result = sub_1000F6A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6A24()
{
  result = qword_100178810;
  if (!qword_100178810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178810);
  }

  return result;
}

unint64_t sub_1000F6A7C()
{
  result = qword_100178818;
  if (!qword_100178818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178818);
  }

  return result;
}

unint64_t sub_1000F6AD0(uint64_t a1)
{
  result = sub_10007D34C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6AF8(uint64_t a1)
{
  result = sub_1000F6B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6B20()
{
  result = qword_100178820;
  if (!qword_100178820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178820);
  }

  return result;
}

unint64_t sub_1000F6B78()
{
  result = qword_100178828;
  if (!qword_100178828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178828);
  }

  return result;
}

unint64_t sub_1000F6BCC(uint64_t a1)
{
  result = sub_10007D774();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6BF4(uint64_t a1)
{
  result = sub_1000F6C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6C1C()
{
  result = qword_100178830;
  if (!qword_100178830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178830);
  }

  return result;
}

unint64_t sub_1000F6C74()
{
  result = qword_100178838;
  if (!qword_100178838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178838);
  }

  return result;
}

unint64_t sub_1000F6CC8(uint64_t a1)
{
  result = sub_10007D3F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6CF0(uint64_t a1)
{
  result = sub_1000F6D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6D18()
{
  result = qword_100178840;
  if (!qword_100178840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178840);
  }

  return result;
}

unint64_t sub_1000F6D70()
{
  result = qword_100178848;
  if (!qword_100178848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178848);
  }

  return result;
}

unint64_t sub_1000F6DC4(uint64_t a1)
{
  result = sub_10007D68C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6DEC(uint64_t a1)
{
  result = sub_1000F6E14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6E14()
{
  result = qword_100178850;
  if (!qword_100178850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178850);
  }

  return result;
}

unint64_t sub_1000F6E6C()
{
  result = qword_100178858;
  if (!qword_100178858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178858);
  }

  return result;
}

unint64_t sub_1000F6EC0()
{
  result = qword_100178860;
  if (!qword_100178860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178860);
  }

  return result;
}

unint64_t sub_1000F6F14(uint64_t a1)
{
  result = sub_1000F6EC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6F40()
{
  result = qword_100178868;
  if (!qword_100178868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178868);
  }

  return result;
}

unint64_t sub_1000F6F94(uint64_t a1)
{
  result = sub_10002C514();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6FBC(uint64_t a1)
{
  result = sub_1000F6FE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F6FE4()
{
  result = qword_100178870;
  if (!qword_100178870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178870);
  }

  return result;
}

unint64_t sub_1000F703C()
{
  result = qword_100178878;
  if (!qword_100178878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178878);
  }

  return result;
}

unint64_t sub_1000F7090(uint64_t a1)
{
  result = sub_1000377B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F70B8(uint64_t a1)
{
  result = sub_1000F70E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F70E0()
{
  result = qword_100178880;
  if (!qword_100178880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178880);
  }

  return result;
}

unint64_t sub_1000F7138()
{
  result = qword_100178888;
  if (!qword_100178888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178888);
  }

  return result;
}

unint64_t sub_1000F718C(uint64_t a1)
{
  result = sub_1000A9C98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F71B4(uint64_t a1)
{
  result = sub_1000F71DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F71DC()
{
  result = qword_100178890;
  if (!qword_100178890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178890);
  }

  return result;
}

unint64_t sub_1000F7234()
{
  result = qword_100178898;
  if (!qword_100178898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178898);
  }

  return result;
}

__n128 sub_1000F7288(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000F72B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F72FC(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

__n128 sub_1000F7364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000F7380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1000F73DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

__n128 sub_1000F7458(uint64_t a1, uint64_t a2)
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

__n128 sub_1000F7494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000F74B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F7500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F7564(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F75AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F760C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F7654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F76BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F7704(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1000F7774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1000F77D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1000F7844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F788C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F78E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1000F7944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1000F79B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F7A00(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 sub_1000F7A5C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F7A78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1000F7AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1000F7B48(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t static DriverVariant.loadDriverVariant()(uint64_t a1)
{
  v1 = sub_1000F7BF4(a1);
  if ((v1 & 0x100) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000F7EC8()
{
  result = qword_1001788A8;
  if (!qword_1001788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001788A8);
  }

  return result;
}

_OWORD *sub_1000F7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_10001D2A4(a2), (v6 & 1) != 0))
  {
    sub_10001E0C4(*(a1 + 56) + 32 * v5, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_100022990(v11, &v9);
  if (v10)
  {
    sub_10000D040(v11, &unk_100174A20, &unk_100120170);
    return sub_10000CE28(&v9, a3);
  }

  else
  {
    sub_10000D040(&v9, &unk_100174A20, &unk_100120170);
    sub_10000CA2C();
    swift_allocError();
    *v8 = 4;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0xE000000000000000;
    swift_willThrow();
    return sub_10000D040(v11, &unk_100174A20, &unk_100120170);
  }
}

uint64_t sub_1000F804C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v2 = a1, v3 = sub_10001D2A4(a2), (v4 & 1) != 0))
  {
    sub_10001E0C4(*(v2 + 56) + 32 * v3, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_100022990(v11, &v8);
  if (v9)
  {
    sub_10000CE28(&v8, v10);
    sub_10001E0C4(v10, &v8);
    if (swift_dynamicCast())
    {
      v2 = v7;
    }

    else
    {
      sub_10000CA2C();
      swift_allocError();
      *v5 = 4;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    sub_10000CE78(v10);
    sub_10000D040(v11, &unk_100174A20, &unk_100120170);
  }

  else
  {
    sub_10000D040(v11, &unk_100174A20, &unk_100120170);
    sub_10000D040(&v8, &unk_100174A20, &unk_100120170);
    return 0;
  }

  return v2;
}

Class sub_1000F81CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10001EBA8(0, &qword_1001788F8, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_1000F8280(void *a1)
{
  v3 = type metadata accessor for LogID(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x10000) != 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v25 = 0xD000000000000010;
    v26 = 0x80000001001317E0;
    v27 = a1;
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    return v25;
  }

  v8 = v5;
  v25 = 0;
  v9 = [v1 stringWithIndex:a1 languageID:1033 error:&v25];
  v10 = v25;
  if (v9)
  {
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v10;

    return v12;
  }

  v16 = v25;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v17 = _convertErrorToNSError(_:)();
  v18 = [v17 code];

  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);
  v19._countAndFlagsBits = 0x20726F727245;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10011DE90;
  *(v20 + 56) = &type metadata for Int32;
  *(v20 + 64) = &protocol witness table for Int32;
  *(v20 + 32) = v18;
  v21._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD000000000000013;
  v22._object = 0x8000000100131800;
  String.append(_:)(v22);
  v27 = a1;
  v28 = 0;
  _print_unlocked<A, B>(_:_:)();
  v17 = v25;
  a1 = v26;
  if (qword_100173CB8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v23 = sub_10000A1BC(v8, qword_1001794F0);
  sub_10000A2A4(v23, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v24, qword_100179508);
  sub_100039F58(1, v7, v17, a1);

  sub_10000C9D0(v7);
  return 0;
}

uint64_t USBDevice.configList.getter()
{
  v1 = OBJC_IVAR____TtC9AUASDCore9USBDevice_configList;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t USBDevice.configList.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AUASDCore9USBDevice_configList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t USBDevice.activeConfig.getter()
{
  v1 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t USBDevice.activeConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t USBDevice.locationID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 propertyForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_10000D040(v11, &unk_100174A20, &unk_100120170);
    goto LABEL_8;
  }

  sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    v5 = 1;
    return v6 | (v5 << 32);
  }

  v4 = [v8 unsignedIntValue];

  v5 = 0;
  v6 = v4;
  return v6 | (v5 << 32);
}

unsigned __int8 *static USBDevice.iProductString(_:)(void *a1)
{
  result = [a1 deviceDescriptor];
  if (result)
  {
    v2 = result[15];
    if (v2)
    {
      sub_1000F8280(v2);
      if (v3)
      {
        sub_10001EA64();
        v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t USBDevice.iProductString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 deviceDescriptor];
  if (!v3 || (v4 = v3[15], !v4) || (sub_1000F8280(v4), !v6))
  {

    return 0;
  }

  sub_10001EA64();
  v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v7;
}

uint64_t USBDevice.highestExceptionLevel.getter()
{
  v1 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v2 + 24);

  LOBYTE(v6) = 0;
  v7 = 32;
  do
  {
    v8 = *(v3 + v7);
    v9 = *(v3 + v7 + 32);
    v19[1] = *(v3 + v7 + 16);
    v19[2] = v9;
    v19[0] = v8;
    v10 = *(v3 + v7 + 48);
    v11 = *(v3 + v7 + 64);
    v12 = *(v3 + v7 + 96);
    v19[5] = *(v3 + v7 + 80);
    v19[6] = v12;
    v19[3] = v10;
    v19[4] = v11;
    v13 = *(v3 + v7 + 112);
    v14 = *(v3 + v7 + 128);
    v15 = *(v3 + v7 + 144);
    v20 = *(v3 + v7 + 160);
    v19[8] = v14;
    v19[9] = v15;
    v19[7] = v13;
    sub_100021248(v19, &v18);
    v16 = Function.highestExceptionLevel.getter();
    sub_1000212F0(v19);
    if (v6 <= v16)
    {
      v6 = v16;
    }

    else
    {
      v6 = v6;
    }

    v7 += 168;
    --v4;
  }

  while (v4);

  return v6;
}

void *USBDevice.usbHostObject.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject);
  v2 = v1;
  return v1;
}

id sub_1000F8CF8(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  v55 = a1;
  v9 = type metadata accessor for LogID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService);
  *&aBlock = 0;
  v14 = [v13 childIteratorInServicePlaneWithError:&aBlock];
  if (!v14)
  {
    v40 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return a3;
  }

  v15 = v14;
  v49 = a2;
  v16 = aBlock;
  v17 = [v15 nextObject];
  if (!v17)
  {
LABEL_28:
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&aBlock = 0xD000000000000020;
    *(&aBlock + 1) = 0x80000001001315D0;
    LOBYTE(v61) = v55;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36 = aBlock;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v37 = sub_10000A1BC(v9, qword_1001794F0);
    sub_10000A2A4(v37, v12);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v38, qword_100179508);
    sub_100039F58(1, v12, v36, *(&v36 + 1));

    sub_10000C9D0(v12);
    sub_10000CA2C();
    swift_allocError();
    *v39 = 79;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();

    return a3;
  }

  v18 = v17;
  v47 = a3;
  v48 = a4;
  v50 = v5;
  v51 = v9;
  v19 = 0;
  v53 = v12;
  v54 = v55;
  v46 = 0x8000000100131600;
  v45 = &v58;
  while (2)
  {
    v52 = v19;
    while (1)
    {
      v20 = String._bridgeToObjectiveC()();
      v21 = [v18 conformsToIOClassName:v20];

      if (v21)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          break;
        }
      }

LABEL_6:
      v18 = [v15 nextObject];
      if (!v18)
      {
        a3 = v52;
        goto LABEL_26;
      }
    }

    v23 = v22;
    v24 = IOUSBHostMatchingPropertyKeyInterfaceNumber;
    v25 = v18;
    if ([v23 propertyForKey:v24])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    aBlock = v61;
    v58 = v62;
    if (!*(&v62 + 1))
    {

      sub_10000D040(&aBlock, &unk_100174A20, &unk_100120170);
      goto LABEL_6;
    }

    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_16:

      goto LABEL_6;
    }

    v26 = v56;
    v27 = [v56 integerValue];
    if (v27 != v54)
    {

      goto LABEL_16;
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&aBlock = 0xD00000000000002ALL;
    *(&aBlock + 1) = v46;
    LOBYTE(v61) = v55;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29 = *(&aBlock + 1);
    v44 = aBlock;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A1BC(v51, qword_1001794F0);
    v31 = v53;
    sub_10000A2A4(v30, v53);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    sub_100039AA0(1, v31, v44, v29);

    sub_10000C9D0(v53);
    LODWORD(v44) = [v25 object];

    v43 = objc_allocWithZone(IOUSBHostInterface);
    v59 = v47;
    v60 = v48;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v58 = sub_1000FCE8C;
    *(&v58 + 1) = &unk_1001671C8;
    v33 = _Block_copy(&aBlock);

    *&aBlock = 0;
    a3 = [v43 initWithIOService:v44 options:0 queue:v49 error:&aBlock interestHandler:v33];
    _Block_release(v33);
    if (!a3)
    {
      v42 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return a3;
    }

    v34 = aBlock;

    v18 = [v15 nextObject];
    v19 = a3;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v12 = v53;
  v9 = v51;
  if (!a3)
  {
    goto LABEL_28;
  }

  return a3;
}

void sub_1000F941C()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 8));
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 40));
  if (!*(v0 + 56))
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 72))
    {
      goto LABEL_6;
    }

LABEL_10:
    Hasher._combine(_:)(0);
    return;
  }

  v2 = *(v0 + 48);
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 72))
  {
    goto LABEL_10;
  }

LABEL_6:
  v3 = *(v0 + 64);
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1000F9514()
{
  Hasher.init(_seed:)();
  sub_1000F941C();
  return Hasher._finalize()();
}

Swift::Int sub_1000F9558()
{
  Hasher.init(_seed:)();
  sub_1000F941C();
  return Hasher._finalize()();
}

uint64_t sub_1000F9594(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1000FCF5C(v8, v9) & 1;
}

void sub_1000F95F0(void *a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = v7;
  v183 = a7;
  v185 = a6;
  v187 = a1;
  v13 = type metadata accessor for LogID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v182 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  v18 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  if (qword_100173CB8 != -1)
  {
    v153 = v15;
    swift_once();
    v15 = v153;
  }

  v19 = sub_10000A1BC(v15, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for AUALog(0);
  v186 = sub_10000A1BC(v20, qword_100179508);
  sub_100039740(0x6369766544425355, 0xE900000000000065, v19, (v9 + v18));
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_configList) = _swiftEmptyArrayStorage;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig) = 0;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlConfig) = xmmword_100122890;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlDescriptorData) = _swiftEmptyArrayStorage;
  v180 = type metadata accessor for USBDevice();
  v21 = [a2 properties];
  v184 = a2;
  v181 = v19;
  if (!v21)
  {
    sub_10000CA2C();
    v24 = swift_allocError();
    *v25 = 4;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_9;
  }

  LODWORD(v178) = a4;
  v179 = a3;
  v22 = v21;
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000FD814(v23, &v199);
  v24 = v8;
  if (v8)
  {

LABEL_9:

    LODWORD(v26) = 0;
    goto LABEL_10;
  }

  v52 = v187;
  v53 = [v187 deviceDescriptor];
  if (!v53)
  {

    sub_1000FEE3C(&v199);
    sub_10000CA2C();
    v24 = swift_allocError();
    v58 = 74;
LABEL_22:
    *v57 = v58;
    *(v57 + 8) = 0;
    *(v57 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_48;
  }

  v54 = v53;
  LODWORD(v174) = v53[4];
  LODWORD(v175) = v53[5];
  LODWORD(v176) = v53[6];
  v26 = *(v53 + 17);
  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (v55)
  {
    v56 = v52;
    v173 = [v55 configurationDescriptor];
    if (v173)
    {
      v172 = *([v55 interfaceDescriptor] + 2);
      goto LABEL_26;
    }

    sub_1000FEE3C(&v199);
    sub_10000CA2C();
    v24 = swift_allocError();
    *v65 = 80;
    *(v65 + 8) = 0;
    *(v65 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_48:
    LODWORD(v26) = 0;
    p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
LABEL_10:
    while (1)
    {
      v191 = v24;
      swift_errorRetain();
      sub_100001AB4(&qword_100177270, &qword_100120A40);
      if (swift_dynamicCast())
      {
        break;
      }

      v38 = _convertErrorToNSError(_:)();
      v39 = [v38 code];

      if (v39 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v39 <= 0x7FFFFFFF)
      {
        v195 = 0;
        v196 = 0xE000000000000000;
        _StringGuts.grow(_:)(26);

        v195 = 0x20726F727245;
        v196 = 0xE600000000000000;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10011DE90;
        *(v41 + 56) = &type metadata for Int32;
        *(v41 + 64) = &protocol witness table for Int32;
        *(v41 + 32) = v39;
        v42._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v42);

        v43._object = 0x80000001001316B0;
        v43._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v43);
        v44 = v195;
        v45 = v196;
        v46 = v182;
        sub_10000A2A4(v181, v182);
        sub_100039F58(1, v46, v44, v45);

        sub_10000C9D0(v46);
        swift_willThrow();

        if (!v26)
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v163 = isUniquelyReferenced_nonNull_native;
      v164 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
      swift_beginAccess();
      v165 = *(v9 + v164);
      *(v9 + v164) = v163;

      if (*(v9 + v164))
      {
        sub_1000FB8F0();
        if (!*(v9 + v164))
        {
          __break(1u);
          return;
        }

        sub_1000FEE3C(&v199);
        sub_100022B64();
        if (!v24)
        {

          v162 = &v197;
          goto LABEL_107;
        }
      }

      else
      {
LABEL_116:

        sub_1000FEE3C(&v199);
        sub_10000CA2C();
        v24 = swift_allocError();
        v127 = 77;
LABEL_79:
        *v126 = v127;
        *(v126 + 8) = 0;
        *(v126 + 16) = 0xE000000000000000;
        swift_willThrow();
      }

      LODWORD(v26) = 1;
    }

    v27 = v195;
    LODWORD(v185) = v26;
    v28 = v9;
    v29 = p_superclass;
    v31 = v196;
    v30 = v197;
    v192 = 0;
    v193 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v189 = v192;
    v190 = v193;
    v32._countAndFlagsBits = 0x20726F727245;
    v32._object = 0xE600000000000000;
    String.append(_:)(v32);
    LOBYTE(v192) = v27;
    v193 = v31;
    v194 = v30;
    _print_unlocked<A, B>(_:_:)();
    v33._object = 0x80000001001316B0;
    v33._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v33);
    v34 = v189;
    v35 = v190;
    v36 = v182;
    sub_10000A2A4(v181, v182);
    sub_100039F58(1, v36, v34, v35);

    sub_10000C9D0(v36);
    sub_10000CA2C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = v31;
    *(v37 + 16) = v30;
    p_superclass = v29;
    v9 = v28;
    LODWORD(v28) = v185;
    swift_willThrow();

    if (!v28)
    {
LABEL_16:
      sub_10000C9D0(p_superclass[196] + v9);
      v47 = *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_configList);

      v48 = *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig);

      sub_100076B24(*(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlConfig), *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlConfig + 8));
      v49 = *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_hrlDescriptorData);

      v50 = *((swift_isaMask & *v9) + 0x30);
      v51 = *((swift_isaMask & *v9) + 0x34);
      swift_deallocPartialClassInstance();
      return;
    }

LABEL_12:

    return;
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {

    sub_1000FEE3C(&v199);
    sub_10000CA2C();
    v24 = swift_allocError();
    v58 = 5;
    goto LABEL_22;
  }

  v60 = v59;
  v61 = v52;
  v173 = [v60 configurationDescriptor];
  if (!v173)
  {

    sub_1000FEE3C(&v199);
    sub_10000CA2C();
    v24 = swift_allocError();
    *v89 = 80;
    *(v89 + 8) = 0;
    *(v89 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_48;
  }

  v172 = 0;
  v55 = 0;
LABEL_26:
  v62 = v187;

  if (!v26)
  {

    sub_1000FEE3C(&v199);
    sub_10000CA2C();
    v24 = swift_allocError();
    *v66 = 75;
    *(v66 + 8) = 0;
    *(v66 + 16) = 0xE000000000000000;
    swift_willThrow();
    p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
    goto LABEL_10;
  }

  v171 = v55;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_bosDescriptor) = 0;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor) = v54;
  if (v202)
  {
    v63 = v201;
    v64 = v202;
  }

  else
  {
    v67 = [v62 deviceDescriptor];
    if (v67 && (v68 = v67[15], v68) && (v69 = sub_1000F8280(v68), v70))
    {
      v195 = v69;
      v196 = v70;
      v192 = 0;
      v193 = 0xE100000000000000;
      v198[3] = 0;
      v198[4] = 0xE000000000000000;
      sub_10001EA64();
      v63 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v64 = v128;
    }

    else
    {
      v64 = 0x800000010012B550;
      v63 = 0xD000000000000018;
    }
  }

  v71 = (v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
  *v71 = v63;
  v71[1] = v64;
  v72 = v187;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject) = v187;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_speed) = v199;
  v73 = v184;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService) = v184;

  v74 = v72;
  v75 = v73;
  v76 = [v74 deviceAddress];
  if ((v76 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceAddress) = v76;
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_curConfigNum) = v173[5];
  v77 = [objc_allocWithZone(USBFrameTimeCorrelater) initWithIOUSBHostObject:v74];
  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_timeCorrelater) = v77;
  v78 = sub_1000F0CCC(v174);
  if (v78 == 36)
  {
    v79 = 0;
  }

  else
  {
    v79 = v78;
  }

  v80 = sub_1000F0FDC(v175);
  if (v80 == 75)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80;
  }

  *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList) = sub_1000F0108(v79, v81, v176);
  v82 = v74;
  v83 = String._bridgeToObjectiveC()();
  v188.receiver = v9;
  v188.super_class = v180;
  v84 = v183;
  v85 = objc_msgSendSuper2(&v188, "initWithBoxUID:withPlugin:", v83, v84);
  v86 = v85;

  if (v86)
  {
    v177 = v82;
    v168 = v85;

    v9 = v86;
    v87 = String._bridgeToObjectiveC()();

    [v9 setManufacturerName:v87];

    v170 = v75;
    v169 = v84;
    if (v205)
    {

      v88 = String._bridgeToObjectiveC()();
    }

    else
    {
      v88 = 0;
    }

    [v9 setSerialNumber:v88];

    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v90 = swift_allocObject();
    v176 = xmmword_10011DE90;
    *(v90 + 16) = xmmword_10011DE90;
    v91 = v200;
    *(v90 + 56) = &type metadata for Int;
    *(v90 + 64) = &protocol witness table for Int;
    *(v90 + 32) = v91;
    String.init(format:_:)();
    v92 = String._bridgeToObjectiveC()();

    [v9 setFirmwareVersion:v92];

    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100121960;
    *(v93 + 56) = &type metadata for Int;
    *(v93 + 64) = &protocol witness table for Int;
    v94 = v203;
    *(v93 + 32) = v204;
    *(v93 + 96) = &type metadata for Int;
    *(v93 + 104) = &protocol witness table for Int;
    *(v93 + 72) = v94;
    v167 = String.init(format:_:)();
    v174 = v95;
    v96 = String._bridgeToObjectiveC()();
    [v9 setModelUID:v96];

    if (v179)
    {
      sub_100001AB4(&qword_100175468, &qword_100120F20);
      v97 = swift_allocObject();
      *(v97 + 1) = v176;
      v97[4] = v173;
      v98 = 1;
      p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
    }

    else
    {
      v99 = 0;
      p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
      *&v176 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
      v175 = " in USBDevice.init";
      v97 = _swiftEmptyArrayStorage;
      v100 = v177;
      do
      {
        if (v26 == v99)
        {
          goto LABEL_110;
        }

        v195 = 0;
        v104 = [v100 configurationDescriptorWithIndex:v99 error:&v195];
        if (v104)
        {
          v105 = v104;
          v106 = v195;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_1000255A4(0, v97[2] + 1, 1, v97);
            v97 = isUniquelyReferenced_nonNull_native;
          }

          v108 = v97[2];
          v107 = v97[3];
          if (v108 >= v107 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_1000255A4((v107 > 1), v108 + 1, 1, v97);
            v97 = isUniquelyReferenced_nonNull_native;
          }

          v97[2] = v108 + 1;
          v97[v108 + 4] = v105;
          v100 = v177;
        }

        else
        {
          v101 = v195;
          v102 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v195 = 0;
          v196 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v103._countAndFlagsBits = 0xD000000000000021;
          v103._object = (v175 | 0x8000000000000000);
          String.append(_:)(v103);
          v192 = v102;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          sub_100039F58(1, v9 + v176, v195, v196);

          v24 = 0;
        }

        ++v99;
      }

      while (v26 != v99);
      v98 = v97[2];
      if (!v98)
      {

        sub_1000FEE3C(&v199);
        sub_10000CA2C();
        v24 = swift_allocError();
        v127 = 75;
        goto LABEL_79;
      }
    }

    v109 = 0;
    *&v176 = 0x800000010012B550;
    v110 = _swiftEmptyArrayStorage;
    while (v98 != v109)
    {
      if (v109 >= v97[2])
      {
        __break(1u);
        goto LABEL_116;
      }

      v111 = sub_1000BEB9C(v97[v109++ + 4]);
      if (v112)
      {
        v113 = v111;
        v114 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_100025498(0, *(v110 + 2) + 1, 1, v110);
        }

        v116 = *(v110 + 2);
        v115 = *(v110 + 3);
        v117 = v110;
        if (v116 >= v115 >> 1)
        {
          v120 = sub_100025498((v115 > 1), v116 + 1, 1, v110);
          v118 = v114;
          v117 = v120;
        }

        else
        {
          v118 = v114;
        }

        *(v117 + 2) = v116 + 1;
        v110 = v117;
        v119 = &v117[16 * v116];
        *(v119 + 4) = v113;
        *(v119 + 5) = v118;
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
      }
    }

    if (!*(v110 + 2))
    {

      sub_1000FEE3C(&v199);
      sub_10000CA2C();
      v24 = swift_allocError();
      v127 = 76;
      goto LABEL_79;
    }

    v175 = v110;
    objc_opt_self();
    v121 = swift_dynamicCastObjCClass();
    if (!v121)
    {
      goto LABEL_86;
    }

    v122 = v121;
    v123 = *(v175 + 5);
    v124 = *(v123 + 16);
    v125 = v124 ? *(*(v123 + 32) + 2) : 0;
    v129 = v177;
    v130 = *([v122 interfaceDescriptor] + 2);
    v173 = v129;

    if (v124 && v125 == v130)
    {
LABEL_86:
      v131 = OBJC_IVAR____TtC9AUASDCore9USBDevice_configList;
      swift_beginAccess();
      v132 = *(v9 + v131);
      v133 = v175;
      *(v9 + v131) = v175;

      v134 = (v133 + 32);
      v135 = *(v133 + 2) + 1;
      do
      {
        if (!--v135)
        {

          sub_1000FEE3C(&v199);
          return;
        }

        v136 = v134 + 2;
        v137 = *v134;
        v138 = *(*v134 + 5);
        v134 += 2;
      }

      while (*(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_curConfigNum) != v138);
      v139 = *(v136 - 1);
      if (*(v139 + 16))
      {
        v140 = *(v139 + 32);
        v141 = *(v140 + 8);
        if (!*(v140 + 8) || (v178 & 1) != 0)
        {
          v151 = *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
          v152 = *(v9 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8);
          v173 = *(v136 - 1);
        }

        else
        {
          v142 = *(v136 - 1);

          v143 = sub_1000F8280(v141);
          v173 = v142;
          if (v144)
          {
            v151 = v143;
          }

          else
          {
            v151 = 0xD000000000000015;
          }

          if (v144)
          {
            v152 = v144;
          }

          else
          {
            v152 = 0x8000000100131700;
          }
        }
      }

      else
      {
        v173 = *(v136 - 1);

        v151 = 0xD000000000000018;
        v152 = v176;
      }

      v195 = v151;
      v196 = v152;
      v192 = 0;
      v193 = 0xE100000000000000;
      v198[0] = 0;
      v198[1] = 0xE000000000000000;
      sub_10001EA64();
      v154 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v156 = v155;

      v157 = String._bridgeToObjectiveC()();
      [v9 setBoxName:v157];

      v195 = v154;
      v196 = v156;

      v158._countAndFlagsBits = 58;
      v158._object = 0xE100000000000000;
      String.append(_:)(v158);
      v159._countAndFlagsBits = v167;
      v159._object = v174;
      String.append(_:)(v159);
      v160 = String._bridgeToObjectiveC()();

      [v9 setModelName:v160];

      if ((v178 & 1) == 0)
      {
        v178 = v156;
        v161 = v173;
        if (sub_1000BE354(v172 | ((v171 == 0) << 8), v137, v173))
        {
          isUniquelyReferenced_nonNull_native = sub_1000BE3A8(v9, v179 & 1, v137, v161);
          goto LABEL_111;
        }
      }

      sub_1000FEE3C(&v199);
      v162 = v198;
LABEL_107:
    }

    else
    {

      sub_1000FEE3C(&v199);

      v195 = 0;
      v196 = 0xE000000000000000;
      _StringGuts.grow(_:)(79);
      v145._countAndFlagsBits = 0xD000000000000022;
      v145._object = 0x8000000100131720;
      String.append(_:)(v145);
      LOBYTE(v192) = *([v122 interfaceDescriptor] + 2);
      v146._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v146);

      v147._countAndFlagsBits = 0xD00000000000002BLL;
      v147._object = 0x8000000100131750;
      String.append(_:)(v147);
      v148 = v195;
      v149 = v196;
      v150 = v182;
      sub_10000A2A4(v181, v182);
      sub_100039AA0(1, v150, v148, v149);

      sub_10000C9D0(v150);
    }
  }

  else
  {

    sub_1000FEE3C(&v199);
  }
}

void sub_1000FAF84(uint64_t a1, uint64_t a2)
{
  v5 = [v2 audioDevices];
  if (v5)
  {
    v6 = v5;
    sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = _swiftEmptyArrayStorage;
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v7;
    while (v8)
    {
      v9 = 0;
      v10 = v35 & 0xC000000000000001;
      v38 = a2;
      v39 = _swiftEmptyArrayStorage;
      v36 = a1;
      v37 = v8;
      while (1)
      {
        if (v10)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v16 = *(v35 + 32 + 8 * v9);
        }

        v15 = v16;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        type metadata accessor for AUAAudioDevice();
        v18 = swift_dynamicCastClass();
        if (!v18)
        {

          sub_10000CA2C();
          swift_allocError();
          *v31 = 1;
          *(v31 + 8) = 0;
          *(v31 + 16) = 0xE000000000000000;
          swift_willThrow();

          return;
        }

        v19 = *(v18 + OBJC_IVAR___AUAAudioDevice_clock);
        type metadata accessor for ActiveClockSource(0);
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v11 = v15;
          v12 = *(v20 + 40);
          ObjectType = swift_getObjectType();
          v42 = a1;
          v7 = &v42;
          v14 = v12 == (*(*(a2 + 8) + 48))(ObjectType);
          v15 = v11;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        else
        {
          type metadata accessor for ActiveClockSelector(0);
          v21 = swift_dynamicCastClass();
          if (v21)
          {
            v40 = v21;
            v41 = *(v21 + 40);
            v22 = swift_getObjectType();
            v42 = a1;
            v23 = *(a2 + 8);
            v24 = *(v23 + 48);
            swift_unknownObjectRetain();
            v7 = &v42;
            if (v41 == v24(v22, v23))
            {
              swift_unknownObjectRelease();
              v8 = v37;
              a2 = v38;
              v10 = v35 & 0xC000000000000001;
LABEL_20:
              v7 = &v43;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v30 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v39 = v43;
              goto LABEL_7;
            }

            v42 = a1;
            v25 = v24(v22, v23);
            v26 = *(v40 + 72);
            v27 = *(v26 + 16);
            v28 = (v26 + 32);
            v8 = v37;
            a2 = v38;
            v10 = v35 & 0xC000000000000001;
            while (v27)
            {
              v29 = *v28++;
              --v27;
              if (v29 == v25)
              {
                swift_unknownObjectRelease();
                a1 = v36;
                goto LABEL_20;
              }
            }

            swift_unknownObjectRelease();
            a1 = v36;
          }
        }

LABEL_7:
        if (v9 == v8)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v7;
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_31:

    if (v39 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (!v32)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v32 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_42;
      }
    }

    if (v32 != 1)
    {

      sub_10000CA2C();
      swift_allocError();
      *v33 = 1;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0xE000000000000000;
      swift_willThrow();
      return;
    }

    if (v39 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_42;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_42;
    }

    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v39 + 32);
LABEL_42:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

id USBDevice.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  if (*&v0[v1])
  {

    sub_100022C14();

    v2 = *&v0[v1];
  }

  *&v0[v1] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for USBDevice();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Void __swiftcall USBDevice.cleanup()()
{
  v1 = OBJC_IVAR____TtC9AUASDCore9USBDevice_activeConfig;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_100022C14();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall USBDevice.handleSigTerm()()
{
  v1 = *&v0[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (!v1 || !sub_1000AA808(0x23u, v1))
  {
    return;
  }

  v2 = [v0 audioDevices];
  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = v2;
  sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
LABEL_23:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      type metadata accessor for AUAAudioDevice();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v6 != v5);
LABEL_24:

  if (_swiftEmptyArrayStorage >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_26:
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v13 = _swiftEmptyArrayStorage[i + 4];
          }

          v14 = v13;
          AUAAudioDevice.handleSigTerm()();
        }

        goto LABEL_33;
      }

      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }
  }

LABEL_33:
}