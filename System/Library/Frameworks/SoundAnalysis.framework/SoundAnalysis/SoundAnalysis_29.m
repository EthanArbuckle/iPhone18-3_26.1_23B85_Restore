char *static AutomaticSiriVolume.createRequest()()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v45 - v2;
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v45 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v45 - v14;
  type metadata accessor for SNDistanceClassifier();
  v16 = sub_1C989B614();
  v18 = v17;
  v19 = MGGetProductType();
  sub_1C9A06FA0(v19, v16, v18, 1, v3);

  if (sub_1C97ABF20(v3, 1, v4) == 1)
  {
    sub_1C9927650(v3);
    sub_1C9A0801C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v15, v3, v4);
    v21 = sub_1C9A91418();
    v3 = sub_1C99B681C(v21, v22);

    switch(v3)
    {
      case 1:
        v29 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
        [v29 setComputeUnits_];
        v30 = sub_1C97BD318(0, &qword_1EC3C54C0);
        (*(v6 + 16))(v13, v15, v4);
        v31 = v29;
        v3 = v30;
        v32 = sub_1C9A06DD8(v13, v31);
        if (!v0)
        {
          v33 = v32;
          objc_allocWithZone(SNClassifySoundRequest);
          v3 = sub_1C97CAE3C(v33);
        }

        v39 = sub_1C97AEB30();
        v40(v39);

        break;
      case 2:
        v24 = sub_1C9880658();
        if (v0)
        {
          v25 = *(v6 + 8);
          v41 = sub_1C97AEB30();
          v25(v41);
        }

        else
        {
          v34 = v24;
          type metadata accessor for E5RTExecutionStream();
          swift_allocObject();
          v46 = sub_1C9880798(v34);
          v45[1] = type metadata accessor for E5RTExecutionStreamOperation();
          sub_1C9A913F8();
          sub_1C9A91508();
          v35 = *(v6 + 8);
          v35(v10, v4);
          sub_1C98817E8();
          v37 = v36;
          v38 = v46;

          sub_1C9882AF4(v37);
          sub_1C9880DE8();
          sub_1C97BD318(0, &qword_1EC3D1EC0);

          sub_1C9934FD8(v38, v37, 16000, &unk_1F492B1F8);
          v3 = v43;
          v44 = sub_1C97AEB30();
          (v35)(v44);
        }

        break;
      case 3:
        sub_1C97A8E8C();
        swift_allocError();
        *v26 = 0;
        goto LABEL_8;
      default:
        sub_1C9A0801C();
        swift_allocError();
        *v23 = 1;
LABEL_8:
        swift_willThrow();
        v27 = sub_1C97AEB30();
        v28(v27);
        break;
    }
  }

  return v3;
}

unint64_t sub_1C9A0801C()
{
  result = qword_1EC3D1EB8;
  if (!qword_1EC3D1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1EB8);
  }

  return result;
}

id SNDistanceClassifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNDistanceClassifier.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNDistanceClassifier();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SNDistanceClassifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNDistanceClassifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for AutomaticSiriVolume(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AutomaticSiriVolume.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A08340()
{
  result = qword_1EC3D1EC8;
  if (!qword_1EC3D1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1EC8);
  }

  return result;
}

void sub_1C9A08394(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *sub_1C9A0840C(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 8 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C7C70);
    v4 = 8 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 8);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_1C9A084E0(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1C9A0AA58();
  v5(v4);
  sub_1C9A0AA40();
  v6 = v2();
  sub_1C979B1D4();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1C9A08564(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6938);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_1C9A08664(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1C9A0AA58();
  v5(v4);
  sub_1C9A0AA40();
  v6 = v2();
  sub_1C979B1D4();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1C9A086E8(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 16 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3D1F20);
    v4 = 16 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 16);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_1C9A08790(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_1C9A32CC0();
      if (sub_1C9A34108(v6, v5 + 32, v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void *sub_1C9A08814(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3D1F40);
    v4 = swift_allocObject();
    v5 = j__malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

void *sub_1C9A088AC(const void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3D1ED8);
  sub_1C97AE9C8();
  v62 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v57 - v6;
  v64 = sub_1C97A2CEC(&qword_1EC3D1EE0);
  sub_1C97AE9C8();
  v63 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - v10;
  v66 = sub_1C97A2CEC(&qword_1EC3C7488);
  sub_1C97AE9C8();
  v65 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v57 - v14;
  v69 = sub_1C97A2CEC(&qword_1EC3D1EE8);
  sub_1C97AE9C8();
  v68 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v67 = v57 - v18;
  v19 = sub_1C9A91748();
  sub_1C97AE9C8();
  v70 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x41uLL);
  v24 = __dst[48];
  memcpy(__src, a1, 0x41uLL);
  sub_1C97A6264(__dst, v73);
  sub_1C9A0B2B4(&v75, __src);
  if (v1)
  {
    memcpy(v73, __src, 0x41uLL);
    return sub_1C97E8084(v73);
  }

  v28 = v25;
  v57[1] = 0;
  v61 = v26;
  memcpy(v73, __src, 0x41uLL);
  sub_1C97E8084(v73);
  v58 = v15;
  v29 = v75;
  sub_1C9A91738();
  sub_1C97AA878();
  v30 = swift_allocObject();
  *(v30 + 16) = v24 ^ 1;
  *(v30 + 24) = v28;
  sub_1C97DAA28();
  v31 = swift_allocObject();
  v31[2] = sub_1C9A0A278;
  v31[3] = v30;
  v60 = v29;
  v31[4] = v29;
  v59 = v28;

  sub_1C97A2CEC(&qword_1EC3CDC70);
  v32 = v19;
  sub_1C97AE9EC();
  sub_1C97AE67C(v33, &qword_1EC3CDC70);
  sub_1C9A91EF8();
  sub_1C97A2CEC(&unk_1EC3CF128);
  sub_1C9A0AA28();
  sub_1C97AE67C(v34, v35);
  sub_1C9A92048();
  sub_1C97DAA58();
  v36(v7, v3);
  sub_1C97AA878();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C9A0A31C;
  *(v37 + 24) = 0;
  sub_1C97A2CEC(&unk_1EC3CF138);
  sub_1C97AE67C(&qword_1EC3D1EF8, &qword_1EC3D1EE0);
  v38 = v58;
  v39 = v64;
  sub_1C9A92048();

  sub_1C97DAA58();
  v40(v11, v39);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1C9A935B8();

  v71 = 0xD000000000000021;
  v72 = 0x80000001C9ADE580;
  sub_1C97AE3DC();
  v41 = v23;
  v42 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v42);

  MEMORY[0x1CCA90230](8250, 0xE200000000000000);
  v43 = v67;
  sub_1C97DD0C8();

  sub_1C97DAA58();
  v44(v38, v66);
  sub_1C97AE67C(&qword_1EC3D1F00, &qword_1EC3D1EE8);
  v45 = v69;
  v46 = sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3D1F08);
  sub_1C97AA878();
  swift_allocObject();
  v47 = sub_1C98E3778(v46);
  sub_1C97DAA58();
  v48(v43, v45);
  v71 = v47;
  sub_1C97AE67C(&qword_1EC3D1F10, &qword_1EC3D1F08);
  v49 = sub_1C9A91F28();

  v50 = v61;
  v51 = [v61 channelCount];
  v52 = v50;
  [v50 sampleRate];
  v54 = v53;
  v55 = v53;

  sub_1C97DAA58();
  result = v56(v41, v32);
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v54 < 9.22337204e18)
  {
    type metadata accessor for SharedBuiltInMicrophone.Instance();
    sub_1C97DAA28();
    result = swift_allocObject();
    result[2] = v49;
    result[3] = v51;
    result[4] = v54;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1C9A090B8(uint64_t *result, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *result;
  if (!*result)
  {
    goto LABEL_42;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    result = sub_1C9A93778();
    __break(1u);
    return result;
  }

  if (a4)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = a5 * a4;
      do
      {
        if ((v6 * a5) >> 64 != (v6 * a5) >> 63)
        {
          goto LABEL_37;
        }

        if (a5)
        {
          v8 = v7 + v6;
          v9 = __OFADD__(v7, v6);
          if ((a5 * a4) >> 64 != (a5 * a4) >> 63)
          {
            goto LABEL_38;
          }

          if (v9)
          {
            goto LABEL_39;
          }

          if (v6 != v8)
          {
            v10 = (v5 + 4 * v6 * a5);
            v11 = *(a3 + 16);
            v12 = 1;
            v13 = v6;
            while (v13 < v11)
            {
              v14 = *(a3 + 32 + 4 * v13);
              result = (v13 / a4);
              if (v13 % a4 == v6)
              {
                v15 = __OFADD__(result, 1);
                v16 = result + 1;
                if (v15)
                {
                  goto LABEL_33;
                }

                v17 = v16 * a4;
                result = ((v16 * a4) >> 64);
                if (result != (v17 >> 63))
                {
                  goto LABEL_35;
                }

                v15 = __OFADD__(v17, v6);
                v13 = v17 + v6;
                if (v15)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v15 = __OFADD__(v13++, 1);
                if (v15)
                {
                  goto LABEL_34;
                }
              }

              *v10 = v14;
              if (a5 == v12)
              {
                goto LABEL_26;
              }

              if (__OFADD__(v12, 1))
              {
                goto LABEL_32;
              }

              ++v10;
              ++v12;
              if (v13 == v8)
              {
                goto LABEL_26;
              }
            }

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
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

LABEL_26:
        ++v6;
      }

      while (v6 != a4);
      if ((a5 * a4) >> 64 == (a5 * a4) >> 63)
      {
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_29:
  v7 = 0;
LABEL_30:
  *a2 = v7;
  return result;
}

void sub_1C9A0923C(void *a1)
{
  v1 = a1;
  v2 = [a1 format];
  v3 = [v2 isInterleaved];

  if (v3)
  {
    type metadata accessor for SNError();
    v4 = 0xD000000000000015;
    v5 = 0x80000001C9ADE680;
LABEL_22:
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, v4, v5);
    swift_willThrow();
    return;
  }

  v6 = [v1 frameLength];
  v7 = [v1 format];
  v8 = [v7 channelCount];

  v9 = [v1 audioBufferList];
  v10 = sub_1C9A086E8(v9 + 2, *v9);
  v28 = v6;
  if (v10[2])
  {
    v29 = MEMORY[0x1E69E7CC0];
    v27 = v10[2];
    sub_1C97B7FE8();
    if (v10[2])
    {
      v11 = v29;
      if (*(v10 + 8) != 1)
      {
LABEL_15:

        type metadata accessor for SNError();
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000027, 0x80000001C9ADE620);
        swift_willThrow();

        return;
      }

      v25 = v8;
      v26 = v1;
      v12 = 0;
      v13 = *(v29 + 16);
      v14 = 16 * v13;
      v15 = 1;
      v16 = v27;
      while (1)
      {
        v17 = v10[v12 + 5];
        if (v17)
        {
          v18 = v17 + HIDWORD(v10[v12 + 4]);
        }

        else
        {
          v18 = 0;
        }

        v30 = v11;
        if (v13 >= *(v11 + 24) >> 1)
        {
          v21 = v14;
          sub_1C97B7FE8();
          v14 = v21;
          v16 = v27;
          v11 = v30;
        }

        *(v11 + 16) = v13 + 1;
        v19 = v11 + v14 + v12 * 8;
        *(v19 + 32) = v17;
        *(v19 + 40) = v18;
        if (v16 == v15)
        {

          v1 = v26;
          v8 = v25;
          goto LABEL_18;
        }

        if (v15 >= v10[2])
        {
          break;
        }

        ++v15;
        v20 = v10[v12 + 6];
        v12 += 2;
        ++v13;
        if (v20 != 1)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_18:
    if (*(v11 + 16) != v8)
    {

      type metadata accessor for SNError();
      v4 = 0xD000000000000021;
      v5 = 0x80000001C9ADE650;
      goto LABEL_22;
    }

    v22 = [v1 format];
    v23 = [v22 channelCount];

    v24 = v28 * v23;
    if ((v23 * v28) >> 64 == v24 >> 63)
    {
      sub_1C9A0A3C4(v24, v11, v28, v8);
      return;
    }
  }

  __break(1u);
}

void sub_1C9A095DC(void *a1)
{
  v2 = [a1 format];
  v3 = [v2 isInterleaved];

  if (v3)
  {
    sub_1C9A09658(a1);
  }

  else
  {
    sub_1C9A0923C(a1);
  }
}

void sub_1C9A09658(void *a1)
{
  v3 = [a1 format];
  v4 = [v3 isInterleaved];

  if (v4)
  {
    v5 = [a1 frameLength];
    v6 = [a1 format];
    v7 = [v6 channelCount];

    v8 = [a1 audioBufferList];
    v9 = sub_1C9A086E8(v8 + 2, *v8);
    v10 = sub_1C985B634(v9);
    v12 = v11;

    if (v1)
    {
      return;
    }

    if (v7 == v10)
    {
      v13 = [a1 format];
      v14 = [v13 channelCount];

      v15 = v5 * v14;
      if ((v14 * v5) >> 64 == v15 >> 63)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          if (v15)
          {
            v16 = sub_1C9A92838();
            *(v16 + 16) = v15;
            if (!v12)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v16 = MEMORY[0x1E69E7CC0];
            if (!v12)
            {
LABEL_9:
              v17 = v5 * v7;
              if ((v5 * v7) >> 64 == v17 >> 63)
              {
                if (v15 >= v17)
                {
                  *(v16 + 16) = v17;
                  return;
                }

                goto LABEL_21;
              }

LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              return;
            }
          }

          memmove((v16 + 32), v12, HIDWORD(v10));
          goto LABEL_9;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_20;
    }

    v18 = "buffer is not interleaved";
    v19 = 0xD000000000000027;
  }

  else
  {
    v18 = "no storage for signal buffer";
    v19 = 0xD000000000000019;
  }

  type metadata accessor for SNError();
  sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, v19, v18 | 0x8000000000000000);
  swift_willThrow();
}

uint64_t sub_1C9A09890(_OWORD *a1, void (*a2)(uint64_t *__return_ptr, _OWORD *))
{
  v10[0] = *a1;
  v5 = v10[0];
  *(v10 + 9) = *(a1 + 9);
  v8[0] = v5;
  *(v8 + 9) = *(v10 + 9);
  sub_1C9A0A710(v10, &v7);
  a2(&v9, v8);
  result = sub_1C9A0A780(a1);
  if (!v2)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1C9A09928(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v8, a2, 0x41uLL);
  memcpy(__srca, __src, 0x41uLL);
  memcpy(v5, a2, 0x41uLL);
  LOBYTE(a2) = static AudioConfiguration.== infix(_:_:)(__srca, v5);
  memcpy(v9, v5, 0x41uLL);
  sub_1C97A6264(__dst, v10);
  sub_1C97A6264(v8, v10);
  sub_1C97E8084(v9);
  memcpy(v10, __srca, 0x41uLL);
  sub_1C97E8084(v10);
  return a2 & 1;
}

uint64_t sub_1C9A099F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C9AD5520 == a2)
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

uint64_t sub_1C9A09A94(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3D1F38);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7 - 8];
  memcpy(__dst, v1, 0x41uLL);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97A6264(__dst, __src);
  sub_1C9A0A820();
  sub_1C9A93DD8();
  memcpy(__src, __dst, 0x41uLL);
  sub_1C97A6210();
  sub_1C9A93A18();
  memcpy(v11, __src, 0x41uLL);
  sub_1C97E8084(v11);
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C9A09C58()
{
  memcpy(v2, v0, sizeof(v2));
  sub_1C9A93CC8();
  AudioConfiguration.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A09CAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D1F28);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &__src[-v9 - 8];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A0A820();
  sub_1C9A93DB8();
  if (!v2)
  {
    sub_1C97A62C0();
    sub_1C9A938F8();
    (*(v7 + 8))(v10, v5);
    memcpy(a2, __src, 0x41uLL);
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9A09E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A099F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9A09E44(uint64_t a1)
{
  v2 = sub_1C9A0A820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A09E80(uint64_t a1)
{
  v2 = sub_1C9A0A820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A09EF4()
{
  memcpy(v2, v0, sizeof(v2));
  sub_1C9A93CC8();
  AudioConfiguration.hash(into:)();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A09F50()
{
  v1 = sub_1C97A2CEC(&unk_1EC3CB410);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v0 + 16);
  sub_1C97DAA28();
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&unk_1EC3C7390);
  sub_1C97AE9EC();
  sub_1C97AE67C(v9, &unk_1EC3C7390);
  sub_1C9A91EF8();
  sub_1C9A0AA28();
  sub_1C97AE67C(v10, &unk_1EC3CB410);
  v11 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v11;
}

uint64_t sub_1C9A0A0F4()
{

  sub_1C97DAA28();

  return swift_deallocClassInstance();
}

unint64_t sub_1C9A0A170()
{
  result = qword_1EC3D1ED0;
  if (!qword_1EC3D1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1ED0);
  }

  return result;
}

uint64_t sub_1C9A0A200@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    type metadata accessor for SessionActivation();
    swift_allocObject();
    result = sub_1C99DBDB0(a2, 0);
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

void sub_1C9A0A298(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  sub_1C9A095DC(*a1);
  if (!v2)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = [v4 sampleTime];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12 & 1;
    *(a2 + 32) = v13;
  }
}

unint64_t sub_1C9A0A31C@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  if (*(result + 24) != 1)
  {

    goto LABEL_5;
  }

  if ((v3 * v5) >> 64 == (v3 * v5) >> 63)
  {
    j__swift_bridgeObjectRetain();
    result = sub_1C9A0A588(v3 * v5, v4, v3, v5);
    v4 = result;
LABEL_5:
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A0A3C4(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = result;
  if (result)
  {
    result = sub_1C9A92838();
    v7 = result;
    *(result + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    if ((a3 - 0x2000000000000000) >> 62 == 3)
    {
      v9 = 0;
      v10 = 4 * a3;
      v11 = (a2 + 40);
      while (1)
      {
        v12 = *(v11 - 1);
        v13 = (a3 * v9) >> 64;
        if (v12)
        {
          if (*v11 - v12 != v10)
          {
            goto LABEL_18;
          }

          if (v13 != (a3 * v9) >> 63)
          {
            goto LABEL_20;
          }

          result = memmove((v7 + 32 + 4 * a3 * v9), v12, 4 * a3);
        }

        else
        {
          if (v10)
          {
LABEL_18:
            type metadata accessor for SNError();
            sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001BLL, 0x80000001C9ADE6A0);
            swift_willThrow();
            *(v7 + 16) = 0;

            return v7;
          }

          if (v13 != (a3 * v9) >> 63)
          {
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        ++v9;
        v11 += 2;
        if (v8 == v9)
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_15:
  v14 = a3 * a4;
  if ((a3 * a4) >> 64 != v14 >> 63)
  {
    goto LABEL_22;
  }

  if (v14 > v6)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  *(v7 + 16) = v14;

  return v7;
}

unint64_t sub_1C9A0A588(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  if (result)
  {
    v9 = sub_1C9A92838();
    *(v9 + 16) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10[1] = v8;
  v11 = 0;
  v10[0] = v9 + 32;
  result = sub_1C9A090B8(v10, &v11, a2, a3, a4);
  if (v4)
  {
    if (v11 <= v8)
    {
      *(v9 + 16) = v11;

LABEL_10:

      return v9;
    }

    goto LABEL_12;
  }

  if (v11 <= v8)
  {
    *(v9 + 16) = v11;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1C9A0A670@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, _OWORD *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v11 = *(a1 + 32);
  result = sub_1C9A09890(v10, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t sub_1C9A0A6BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C093C();
  *a1 = result;
  return result;
}

uint64_t sub_1C9A0A710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3D1F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9A0A780(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&unk_1EC3CF128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9A0A7E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0A44();
  *a1 = result;
  return result;
}

unint64_t sub_1C9A0A820()
{
  result = qword_1EC3D1F30;
  if (!qword_1EC3D1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1F30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedBuiltInMicrophone.Configuration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A0A924()
{
  result = qword_1EC3D1F48;
  if (!qword_1EC3D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1F48);
  }

  return result;
}

unint64_t sub_1C9A0A97C()
{
  result = qword_1EC3D1F50;
  if (!qword_1EC3D1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1F50);
  }

  return result;
}

unint64_t sub_1C9A0A9D4()
{
  result = qword_1EC3D1F58;
  if (!qword_1EC3D1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1F58);
  }

  return result;
}

uint64_t sub_1C9A0AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  sub_1C9A0AB88(a1, a2, a3);
  if (v6 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = sub_1C97AE9C4(0);
  v3 = v7;
  v4 = v8;
  v5 = v9;

  if ((v5 & 1) == 0)
  {
LABEL_3:
    sub_1C9A0F14C(v6, v3, v4, v5);
    v11 = v10;
LABEL_10:
    swift_unknownObjectRelease();
    return v11;
  }

  sub_1C9A93B88();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_13;
  }

  if (v13 != (v5 >> 1) - v4)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v11)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v11;
}

uint64_t sub_1C9A0AB88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (v5 < 1)
    {
    }

    else
    {
      v7 = sub_1C97DD9AC(a3, v5);

      sub_1C98D084C(v7);
    }

    return v6;
  }

  return result;
}

uint64_t sub_1C9A0AC08()
{
  sub_1C97A2CEC(&qword_1EC3D2000);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C98EE788();
  v1 = sub_1C9813668();
  sub_1C97A2CEC(v1);
  sub_1C994A05C();
  sub_1C97AE67C(v2, v3);
  sub_1C9A0F80C();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A0F7EC();
  v4 = sub_1C9A0F764();
  return v5(v4);
}

uint64_t sub_1C9A0AD24()
{
  v0 = sub_1C97A2CEC(&qword_1EC3D1FE0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  v5[1] = MEMORY[0x1E69E7CC0];
  sub_1C97A2CEC(&qword_1EC3D1FE8);
  sub_1C97AE67C(&qword_1EC3D1FF0, &qword_1EC3D1FE8);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C9A0AE94()
{
  sub_1C97A2CEC(&qword_1EC3D2018);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C98EE788();
  v1 = sub_1C9813668();
  sub_1C97A2CEC(v1);
  sub_1C994A05C();
  sub_1C97AE67C(v2, v3);
  sub_1C9A0F80C();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A0F7EC();
  v4 = sub_1C9A0F764();
  return v5(v4);
}

uint64_t sub_1C9A0AFB0()
{
  v0 = sub_1C97A2CEC(&qword_1EC3D1FD8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  v5[1] = MEMORY[0x1E69E7CC0];
  sub_1C97A2CEC(&qword_1EC3CB468);
  sub_1C97AE67C(&qword_1EC3CB470, &qword_1EC3CB468);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v1 + 8))(v3, v0);
}

__n128 sub_1C9A0B120@<Q0>(__n128 *__src@<X0>, __n128 *a2@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  v4 = __dst[5];
  sub_1C97A6264(__dst, v13);
  v5 = sub_1C99B606C();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    sub_1C97A2CEC(&qword_1EC3C7C70);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C9A9EDD0;
    *(v8 + 32) = v7;

    v4 = v8;
  }

  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v9 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v10 = sub_1C99B5BC8();

  if (v10)
  {
    v4 = v10;
  }

  v11 = __src[1];
  *a2 = *__src;
  a2[1] = v11;
  a2[2].n128_u64[0] = __src[2].n128_u64[0];
  a2[2].n128_u64[1] = v4;
  result = __src[3];
  a2[3] = result;
  a2[4].n128_u8[0] = __src[4].n128_u8[0];
  return result;
}

void sub_1C9A0B2B4(uint64_t *a1, uint64_t a2)
{
  v69 = sub_1C97A2CEC(&qword_1EC3C7150);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AC02C();
  sub_1C97ABFB4(v5);
  sub_1C97A2CEC(&qword_1EC3D1F88);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AC02C();
  v70 = v7;
  sub_1C97A2CEC(&qword_1EC3D1F90);
  sub_1C97AE9C8();
  v74 = v9;
  v75 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  v73 = v11;
  sub_1C97A2CEC(&qword_1EC3D1F98);
  sub_1C97AE9C8();
  v71 = v13;
  v72 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AC02C();
  sub_1C97ABFB4(v15);
  v67 = sub_1C97A2CEC(&qword_1EC3C7168);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AC02C();
  v77 = v17;
  sub_1C97A2CEC(&qword_1EC3C7170);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AC02C();
  sub_1C97ABFB4(v19);
  v65 = sub_1C97A2CEC(&qword_1EC3C7178);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  sub_1C97ABFB4(v21);
  sub_1C97A2CEC(&qword_1EC3C7180);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AC02C();
  v78 = v23;
  v24 = sub_1C9A93018();
  sub_1C97AE9C8();
  v60 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AEAD8();
  sub_1C98EE788();
  sub_1C9A93008();
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AEAD8();
  v28 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v28 - 8);
  sub_1C97AEAD8();
  v29 = *(a2 + 16);
  v81[0] = *a2;
  v81[1] = v29;
  v30 = *(a2 + 40);
  v82 = *(a2 + 32);
  v31 = *(a2 + 48);
  v32 = [objc_allocWithZone(MEMORY[0x1E698D710]) initAuxiliarySession];
  v83 = v30;
  v84 = v31;
  v85 = *(a2 + 49);
  sub_1C9A0E124(v32, v81);
  if (v79)
  {

    return;
  }

  v58 = v31;
  v33 = v30;
  if (v30)
  {
    v34 = *(v30 + 16);
    v35 = v32;
  }

  else
  {
    v35 = v32;
    v36 = [v32 inputNumberOfChannels];
    if (v36 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v36;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  if (HIDWORD(v34))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v37 = objc_allocWithZone(MEMORY[0x1E69583D0]);

  v38 = [v37 initWithLayoutTag_];
  if (v38)
  {
    v39 = v38;
    sub_1C99DC0E8();
    v57 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:1 interleaved:v39 channelLayout:v40];
    v41 = v58 & 1;
    if (v58)
    {
      v42 = 4096;
    }

    else
    {
      v42 = 0;
    }

    v59 = v42;
    sub_1C97AA878();
    v80 = swift_allocObject();
    *(v80 + 16) = v41;
    *(v80 + 24) = v33;
    sub_1C97BD318(0, &qword_1EC3C56B0);
    sub_1C9A92148();
    *&v81[0] = MEMORY[0x1E69E7CC0];
    sub_1C9A0F338(&qword_1EC3C56C0, MEMORY[0x1E69E8030]);
    sub_1C97A2CEC(&unk_1EC3CDC60);
    sub_1C994A05C();
    sub_1C97AE67C(v43, v44);
    sub_1C9A93428();
    (*(v60 + 104))(v2, *MEMORY[0x1E69E8090], v24);
    v61 = sub_1C9A93048();
    static AudioDataSourceUtils.systemAudioEventPublisher()(v63);
    sub_1C9A0F6E8();
    sub_1C97AE67C(v45, v46);
    sub_1C9A92048();
    sub_1C97DAA58();
    v47 = sub_1C9813668();
    v48(v47);
    sub_1C97AE67C(&qword_1EC3C72B0, &qword_1EC3C7178);
    sub_1C9A92028();
    sub_1C9A91D88();
    sub_1C97AA878();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C9A0F284;
    *(v49 + 24) = 0;
    sub_1C97A2CEC(&qword_1EC3C72B8);
    sub_1C97AE67C(&qword_1EC3C72C0, &qword_1EC3C7168);
    sub_1C97AE67C(&qword_1EC3C72C8, &qword_1EC3C72B8);
    sub_1C9A92078();

    sub_1C97DAA58();
    v50(v77, v67);
    sub_1C97DAA58();
    v51(v64, v65);
    sub_1C97A2CEC(&qword_1EC3D1FA0);
    swift_allocObject();
    v52 = sub_1C9A91E28();
    type metadata accessor for SNAudioRecordingQueue();
    swift_allocObject();
    sub_1C99AC654(v57, v59, sub_1C9A0EF04, v80, v35, v61, sub_1C9A0F29C, v52, sub_1C9A0F2A4, v52);
    *&v81[0] = v52;
    sub_1C97AE67C(&qword_1EC3D1FA8, &qword_1EC3D1FA0);
    swift_retain_n();
    swift_retain_n();
    v57;

    v35;
    v66 = v61;
    sub_1C9A91F48();

    sub_1C97AE67C(&qword_1EC3C72D0, &qword_1EC3C7180);
    sub_1C9A92028();
    sub_1C9A91D88();
    sub_1C97AA878();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1C9A0F2C4;
    *(v53 + 24) = 0;
    sub_1C97A2CEC(&qword_1EC3D1FB0);
    sub_1C97AE67C(&qword_1EC3C72E0, &qword_1EC3C7150);
    sub_1C97AE67C(&qword_1EC3D1FB8, &qword_1EC3D1FB0);
    sub_1C9A92078();

    sub_1C97DAA58();
    v54(v68, v69);
    sub_1C97AE67C(&qword_1EC3D1FC0, &qword_1EC3D1F98);
    sub_1C97AE67C(&qword_1EC3D1FC8, &qword_1EC3D1F88);
    sub_1C9A91FE8();
    sub_1C97DA1E0(v70, &qword_1EC3D1F88);
    sub_1C97AE67C(&qword_1EC3D1FD0, &qword_1EC3D1F90);
    v55 = sub_1C9A91F28();

    (*(v74 + 8))(v73, v75);
    (*(v71 + 8))(v62, v72);
    sub_1C97DA1E0(v78, &qword_1EC3C7180);
    *a1 = v55;
  }

  else
  {

    sub_1C97A8E8C();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
  }
}

uint64_t static AudioDataSourceUtils.hasBuiltInMicrophone()()
{
  v0 = MGGetProductType();
  sub_1C989B2F8(v0, v32);
  if (v32[6])
  {
    v1 = v32[0];

    sub_1C989ACF0(v1, v33);
    v2 = v36;
    v37 = v34;

    sub_1C97DA1E0(&v37, &qword_1EC3C7DB0);
    v38 = v35;
    sub_1C97DA1E0(&v38, &qword_1EC3C7DB8);

    v2(__dst, v3);

    v4 = __dst[0];
    v5 = __dst[1];
    v6 = __dst[2];
    v7 = __dst[3];
    v8 = __dst[4];
    v9 = __dst[5];
    v10 = __dst[6];
    v11 = BYTE1(__dst[6]);
    v12 = BYTE2(__dst[6]);
    v13 = BYTE3(__dst[6]);
    v14 = BYTE4(__dst[6]);
    v15 = BYTE5(__dst[6]);
    v16 = __dst[7];
    v17 = __dst[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
    v28 = __dst[7];
    v26 = BYTE5(__dst[6]);
    v27 = __dst[8];
    v24 = BYTE3(__dst[6]);
    v25 = BYTE4(__dst[6]);
    v12 = BYTE2(__dst[6]);
    v11 = BYTE1(__dst[6]);
    v10 = __dst[6];
    v8 = __dst[4];
    v9 = __dst[5];
    v6 = __dst[2];
    v7 = __dst[3];
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1C97A6264(__dst, v30);
    v13 = v24;
    v14 = v25;
    v15 = v26;
    v17 = v27;
    v16 = v28;
  }

  __dst[0] = v4;
  __dst[1] = v5;
  __dst[2] = v6;
  __dst[3] = v7;
  __dst[4] = v8;
  __dst[5] = v9;
  LOBYTE(__dst[6]) = v10;
  BYTE1(__dst[6]) = v11;
  BYTE2(__dst[6]) = v12;
  BYTE3(__dst[6]) = v13;
  BYTE4(__dst[6]) = v14;
  BYTE5(__dst[6]) = v15;
  __dst[7] = v16;
  LOBYTE(__dst[8]) = v17;
  v18 = [objc_allocWithZone(MEMORY[0x1E698D710]) initAuxiliarySession];
  v19 = sub_1C9A92478();
  v20 = sub_1C9A92478();
  sub_1C9A0D89C(v18, v19, v20, v8);
  if (v29)
  {

    sub_1C97E8084(__dst);
  }

  else
  {

    sub_1C97E8084(__dst);
    sub_1C9A0C3BC(v18);
    v22 = v21;

    LOBYTE(v20) = v22 != 0;
  }

  return v20 & 1;
}

uint64_t sub_1C9A0C3BC(void *a1)
{
  result = sub_1C9A0F214(a1);
  if (result)
  {
    v2 = result;
    result = sub_1C97BDEE0(result);
    if (result)
    {
      v3 = result;
      if (result >= 1)
      {
        v15 = 0;
        v4 = 0;
        while (1)
        {
          v5 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA912B0](v4, v2) : *(v2 + 8 * v4 + 32);
          v6 = v5;
          v7 = [v5 portType];
          v8 = sub_1C9A924A8();
          v10 = v9;
          if (v8 == sub_1C9A924A8() && v10 == v11)
          {
            break;
          }

          v13 = sub_1C9A93B18();

          if (v13)
          {
            goto LABEL_15;
          }

LABEL_16:
          if (v3 == ++v4)
          {
            goto LABEL_20;
          }
        }

LABEL_15:

        v14 = [v6 UID];
        v15 = sub_1C9A924A8();

        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v15 = 0;
LABEL_20:

      return v15;
    }
  }

  return result;
}

void sub_1C9A0C55C(OpaqueAudioQueue *a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C9A0C5D4(a1);
  }

  if (a4 && *(a4 + 16))
  {
    v7 = *(a4 + 32);

    sub_1C9A0C818(a4, v7, a1, a2);
  }
}

void sub_1C9A0C5D4(OpaqueAudioQueue *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  inData = 1;
  v1 = AudioQueueSetProperty(a1, 0x6C73746Eu, &inData, 4u);
  sub_1C9A3B558(v1);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v2 = sub_1C9A91B58();
  sub_1C97BFF6C(v2, qword_1EC3D3108);
  v3 = sub_1C9A91B38();
  v4 = sub_1C9A92F88();
  if (os_log_type_enabled(v3, v4))
  {
    sub_1C98136E4();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C9788000, v3, v4, "Enable listen mode success", v5, 2u);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }
}

void sub_1C9A0C818(uint64_t a1, uint64_t a2, OpaqueAudioQueue *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = sub_1C9A0C3BC(a4);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    MEMORY[0x1EEE9AC00](v7);
    v18[2] = a3;
    v23 = 0;
    outData = 0u;
    v22 = 0u;
    ioDataSize = 40;
    Property = AudioQueueGetProperty(a3, 0x61716674u, &outData, &ioDataSize);
    sub_1C9A3B558(Property);
    sub_1C9A0CB04(a1, a2, HIDWORD(v22));
    v16 = v15;
    v17 = sub_1C9A0D5B4(v15, v9, v10);

    sub_1C9A0D318(v17, sub_1C9A0F324, v18, v16);
  }

  else
  {
    if (qword_1EC3C5520 != -1)
    {
      sub_1C98134D8();
      swift_once();
    }

    v12 = sub_1C9A91B58();
    sub_1C97BFF6C(v12, qword_1EC3D3108);
    v19 = sub_1C9A91B38();
    v13 = sub_1C9A92FA8();
    if (os_log_type_enabled(v19, v13))
    {
      sub_1C98136E4();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C9788000, v19, v13, "Couldn't obtain the built-in mic UID. Skipping setting of the AQ channel assignments", v14, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }
  }
}

void sub_1C9A0CB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C9A0AA6C(a1, a3, a2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28();
    v5 = 32;
    while (1)
    {
      v6 = *(v3 + v5);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v8 = *(v9 + 16);
      if (v8 >= *(v9 + 24) >> 1)
      {
        sub_1C97B7C28();
      }

      *(v9 + 16) = v8 + 1;
      *(v9 + 8 * v8 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

BOOL sub_1C9A0CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1C9A93B18();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1C9A0CC58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955656369766564 && a2 == 0xE900000000000044;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9A0CD30(char a1)
{
  if (a1)
  {
    return 0x4E6C656E6E616863;
  }

  else
  {
    return 0x4955656369766564;
  }
}

uint64_t sub_1C9A0CD78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v6 = sub_1C97A2CEC(&qword_1EC3D2060);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A0F450();
  sub_1C9A93DD8();
  v15 = 0;
  sub_1C9A939C8();
  if (!v4)
  {
    v14 = 1;
    sub_1C9A93A08();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1C9A0CF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  MEMORY[0x1CCA91980](a3);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A0CF78(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3D2050);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A0F450();
  sub_1C9A93DB8();
  if (!v1)
  {
    v4 = sub_1C9A938A8();
    sub_1C9A938E8();
    v6 = sub_1C9953B18();
    v7(v6);
  }

  sub_1C97A592C(a1);
  return v4;
}

uint64_t sub_1C9A0D140(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A0D194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A0CC58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A0D1BC(uint64_t a1)
{
  v2 = sub_1C9A0F450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A0D1F8(uint64_t a1)
{
  v2 = sub_1C9A0F450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A0D234@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9A0CF78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C9A0D29C()
{
  v1 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C9A92528();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A0D318(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];

    sub_1C97B846C(0, v7, 0);
    v9 = v19;
    v10 = (a1 + 48);
    while (1)
    {
      v11 = *v10;

      v12 = sub_1C9A92478();

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v11))
      {
        goto LABEL_12;
      }

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1C97B846C(v14 > 1, v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + 24 * v15;
      *(v16 + 32) = v12;
      v10 += 3;
      *(v16 + 40) = v11;
      *(v16 + 48) = v12;
      if (!--v7)
      {
        v5 = a3;
        v6 = a2;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_10:

    sub_1C9A0D498(v9, v6, v5, a4);
    swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1C9A0D498(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = a3;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C97B848C();
    v7 = v18;
    v9 = *(v18 + 16);
    v10 = 16 * v9;
    v11 = (a1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = v9 + 1;
      if (v9 >= *(v18 + 24) >> 1)
      {
        sub_1C97B848C();
      }

      v11 += 6;
      *(v18 + 16) = v14;
      v15 = v18 + v10;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
      v10 += 16;
      v9 = v14;
      --v6;
    }

    while (v6);
    a3 = v17;
  }

  sub_1C9A0D698(v7, a2, a3, a4);
}

uint64_t sub_1C9A0D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C97B8420();
    v4 = v15;
    v8 = (a1 + 32);
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = *(v15 + 16);
      v12 = *(v15 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1C97B8420();
      }

      *(v15 + 16) = v11 + 1;
      v13 = (v15 + 24 * v11);
      v13[4] = a2;
      v13[5] = a3;
      v13[6] = v9;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1C9A0D698(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5 >> 59)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1C9A0D6E4(a1 + 32, a1 + 32 + 16 * v5, a2, a3, a4);
  if (v4)
  {
LABEL_5:

    __break(1u);
  }
}

void sub_1C9A0D6E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  if (a2 - a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = a5;
  v6 = a3(1634820961, a1);
  if (qword_1EC3C5520 != -1)
  {
LABEL_8:
    swift_once();
  }

  v7 = sub_1C9A91B58();
  sub_1C97BFF6C(v7, qword_1EC3D3108);

  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92F88();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315394;
    v12 = MEMORY[0x1CCA90460](v5, MEMORY[0x1E69E6530]);
    v14 = sub_1C9849140(v12, v13, &v15);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_1C9788000, v8, v9, "Set audio queue channel map (one-indexed) %s with result %d", v10, 0x12u);
    sub_1C97A592C(v11);
    MEMORY[0x1CCA93280](v11, -1, -1);
    MEMORY[0x1CCA93280](v10, -1, -1);
  }
}

void sub_1C9A0D89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if ([a1 setCategory:a2 mode:a3 options:a4 error:v7])
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    v6 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError();
    sub_1C9A0F6C4();
    sub_1C9A935B8();
    sub_1C9A0F738();
    sub_1C99B66C0();
    sub_1C9A0F798();
    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C9A0F780();
    sub_1C9A0F700();
    sub_1C9A0F694(v7[0], "com.apple.SoundAnalysis");
    sub_1C9A0F7B0();
    swift_willThrow();
  }
}

void sub_1C9A0D9EC()
{
  sub_1C9A0F6D8();
  v3 = [v2 prefersNoMicrophoneUsageIndicator];
  if (v3 != v0)
  {
    if (sub_1C9A0F71C(v3, sel_setPrefersNoMicrophoneUsageIndicator_error_, v4, v5, v6, v7, v8, v9, v13, 0))
    {
      v10 = v14;
    }

    else
    {
      v11 = v14;
      v12 = sub_1C9A0F7C8();

      swift_willThrow();
      type metadata accessor for SNError();
      sub_1C9A0F6C4();
      sub_1C9A935B8();
      sub_1C9A0F738();
      sub_1C99B66C0();
      sub_1C9A0F798();
      sub_1C97A2CEC(&unk_1EC3CA040);
      sub_1C9A0F780();
      sub_1C9A0F700();
      sub_1C9A0F694(v14, "com.apple.SoundAnalysis");
      sub_1C9A0F7B0();
      swift_willThrow();
    }
  }
}

void sub_1C9A0DB1C()
{
  sub_1C9A0F6D8();
  v3 = [v2 allowHapticsAndSystemSoundsDuringRecording];
  if (v3 != v0)
  {
    if (sub_1C9A0F71C(v3, sel_setAllowHapticsAndSystemSoundsDuringRecording_error_, v4, v5, v6, v7, v8, v9, v13, 0))
    {
      v10 = v14;
    }

    else
    {
      v11 = v14;
      v12 = sub_1C9A0F7C8();

      swift_willThrow();
      type metadata accessor for SNError();
      sub_1C9A0F6C4();
      sub_1C9A935B8();
      sub_1C9A0F738();
      sub_1C99B66C0();
      sub_1C9A0F798();
      sub_1C97A2CEC(&unk_1EC3CA040);
      sub_1C9A0F780();
      sub_1C9A0F700();
      sub_1C9A0F694(v14, "com.apple.SoundAnalysis");
      sub_1C9A0F7B0();
      swift_willThrow();
    }
  }
}

void sub_1C9A0DC4C()
{
  sub_1C9A0F6D8();
  v3 = [v2 decoupledIO];
  if (v3 != v0)
  {
    if (sub_1C9A0F71C(v3, sel_preferDecoupledIO_error_, v4, v5, v6, v7, v8, v9, v13, 0))
    {
      v10 = v14;
    }

    else
    {
      v11 = v14;
      v12 = sub_1C9A0F7C8();

      swift_willThrow();
      type metadata accessor for SNError();
      sub_1C9A0F6C4();
      sub_1C9A935B8();
      sub_1C9A0F738();
      sub_1C99B66C0();
      sub_1C9A0F798();
      sub_1C97A2CEC(&unk_1EC3CA040);
      sub_1C9A0F780();
      sub_1C9A0F700();
      sub_1C9A0F694(v14, "com.apple.SoundAnalysis");
      sub_1C9A0F7B0();
      swift_willThrow();
    }
  }
}

void sub_1C9A0DD7C()
{
  sub_1C9A0F6D8();
  v3 = [v2 eligibleForBTSmartRoutingConsideration];
  if (v3 != v0)
  {
    if (sub_1C9A0F71C(v3, sel_setEligibleForBTSmartRoutingConsideration_error_, v4, v5, v6, v7, v8, v9, v13, 0))
    {
      v10 = v14;
    }

    else
    {
      v11 = v14;
      v12 = sub_1C9A0F7C8();

      swift_willThrow();
      type metadata accessor for SNError();
      sub_1C9A0F6C4();
      sub_1C9A935B8();
      sub_1C9A0F738();
      sub_1C99B66C0();
      sub_1C9A0F798();
      sub_1C97A2CEC(&unk_1EC3CA040);
      sub_1C9A0F780();
      sub_1C9A0F700();
      sub_1C9A0F694(v14, "com.apple.SoundAnalysis");
      sub_1C9A0F7B0();
      swift_willThrow();
    }
  }
}

void sub_1C9A0DEAC(void *a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([a1 setAudioHardwareControlFlags:a2 error:v5])
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    v4 = sub_1C9A913C8();

    swift_willThrow();
    type metadata accessor for SNError();
    sub_1C9A0F6C4();
    sub_1C9A935B8();
    sub_1C9A0F738();
    sub_1C99B66C0();
    sub_1C9A0F798();
    sub_1C97A2CEC(&unk_1EC3CA040);
    sub_1C9A0F780();
    sub_1C9A0F700();
    sub_1C9A0F694(v5[0], "com.apple.SoundAnalysis");
    sub_1C9A0F7B0();
    swift_willThrow();
  }
}

void sub_1C9A0DFF4()
{
  sub_1C9A0F6D8();
  v3 = [v2 participatesInVolumePolicy];
  if (v3 != v0)
  {
    if (sub_1C9A0F71C(v3, sel_setParticipatesInVolumePolicy_error_, v4, v5, v6, v7, v8, v9, v13, 0))
    {
      v10 = v14;
    }

    else
    {
      v11 = v14;
      v12 = sub_1C9A0F7C8();

      swift_willThrow();
      type metadata accessor for SNError();
      sub_1C9A0F6C4();
      sub_1C9A935B8();
      sub_1C9A0F738();
      sub_1C99B66C0();
      sub_1C9A0F798();
      sub_1C97A2CEC(&unk_1EC3CA040);
      sub_1C9A0F780();
      sub_1C9A0F700();
      sub_1C9A0F694(v14, "com.apple.SoundAnalysis");
      sub_1C9A0F7B0();
      swift_willThrow();
    }
  }
}

void sub_1C9A0E124(void *a1, const void *a2)
{
  memcpy(__dst, a2, 0x41uLL);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C98134D8();
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);
  sub_1C97A6264(__dst, v20);
  v5 = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();
  sub_1C97E8084(__dst);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    memcpy(v20, __dst, 0x41uLL);
    sub_1C97A6264(__dst, &v19);
    v9 = sub_1C9A924F8();
    v11 = sub_1C9849140(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C9788000, v5, v6, "configuring session: %s", v7, 0xCu);
    sub_1C97A592C(v8);
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
    sub_1C98135FC();
    MEMORY[0x1CCA93280]();
  }

  v12 = sub_1C9A92478();
  v13 = sub_1C9A92478();
  sub_1C9A0D89C(a1, v12, v13, __dst[4]);

  if (!v2)
  {
    sub_1C9A0F774();
    sub_1C9A0D9EC();
    sub_1C9A0F774();
    sub_1C9A0DB1C();
    sub_1C9A0F774();
    sub_1C9A0DC4C();
    sub_1C9A0F774();
    sub_1C9A0DD7C();
    if ((__dst[8] & 1) == 0)
    {
      v14 = sub_1C9A0F774();
      sub_1C9A0DEAC(v14, v15);
    }

    v16 = sub_1C9A91B38();
    v17 = sub_1C9A92FC8();
    if (os_log_type_enabled(v16, v17))
    {
      sub_1C98136E4();
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C9788000, v16, v17, "ignoring config for prefers no interruptions", v18, 2u);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }

    sub_1C9A0DFF4();
  }
}

void static AudioDataSourceUtils.configureAudioSession(session:configuration:fully:)(void *a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (a3)
  {
    v10[0] = *a2;
    v10[1] = v4;
    v10[2] = v6;
    v10[3] = v5;
    v10[4] = v7;
    v11[0] = *(a2 + 40);
    *(v11 + 9) = *(a2 + 49);
    sub_1C9A0E124(a1, v10);
  }

  else
  {
    v8 = sub_1C9A92478();
    v9 = sub_1C9A92478();
    sub_1C9A0D89C(a1, v8, v9, v7);
  }
}

uint64_t sub_1C9A0E498()
{
  sub_1C9A930A8();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C97AEAD8();
  sub_1C98EE788();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [objc_opt_self() defaultCenter];
  sub_1C9813668();
  sub_1C9A930B8();

  sub_1C9A0F338(&qword_1EC3D2030, MEMORY[0x1E6969F20]);
  sub_1C9A91F68();

  v3 = sub_1C9A0F764();
  return v4(v3);
}

uint64_t AudioDataSourceUtils.SystemAudioEvent.hashValue.getter()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

uint64_t static AudioDataSourceUtils.systemAudioEventPublisher()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  sub_1C97A2CEC(&qword_1EC3D1F60);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C97A2CEC(&qword_1EC3D1F68);
  sub_1C97AE9C8();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v29 = &v26 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  sub_1C9A0E498();
  v26 = MEMORY[0x1E695BD60];
  sub_1C97AE67C(&qword_1EC3D1F70, &qword_1EC3D1F60);
  sub_1C9A0F744();
  v17 = *(v2 + 8);
  v18 = sub_1C988EB2C();
  v17(v18);
  sub_1C9A0E498();
  sub_1C9A0F744();
  v19 = sub_1C988EB2C();
  v17(v19);
  sub_1C9A0E498();
  sub_1C9A0F744();
  v20 = sub_1C988EB2C();
  v17(v20);
  sub_1C9A0E498();
  v21 = v27;
  sub_1C9A91F68();
  v22 = sub_1C988EB2C();
  v17(v22);
  sub_1C97AE67C(&qword_1EC3D1F78, &qword_1EC3D1F68);
  v23 = v29;
  sub_1C9A91FF8();
  v24 = *(v6 + 8);
  v24(v21, v4);
  v24(v23, v4);
  v24(v14, v4);
  return (v24)(v16, v4);
}

void sub_1C9A0EA70(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      if (qword_1EC3C5520 != -1)
      {
        sub_1C98134D8();
        swift_once();
      }

      v17 = sub_1C9A91B58();
      sub_1C97BFF6C(v17, qword_1EC3D3108);
      v13 = sub_1C9A91B38();
      sub_1C9A92FC8();
      sub_1C9A0F7E0();
      if (!os_log_type_enabled(v13, v18))
      {
        goto LABEL_20;
      }

      sub_1C98136E4();
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "AVAudioSession route change";
      goto LABEL_19;
    case 2:
      if (qword_1EC3C5520 != -1)
      {
        sub_1C98134D8();
        swift_once();
      }

      v8 = sub_1C9A91B58();
      sub_1C97BFF6C(v8, qword_1EC3D3108);
      v3 = sub_1C9A91B38();
      sub_1C9A92FC8();
      sub_1C9A0F7E0();
      if (os_log_type_enabled(v3, v9))
      {
        sub_1C98136E4();
        *swift_slowAlloc() = 0;
        sub_1C9859390(&dword_1C9788000, v10, v11, "AVAudioSession media services lost");
        v7 = 0;
        goto LABEL_10;
      }

      v7 = 0;
      break;
    case 3:
      if (qword_1EC3C5520 != -1)
      {
        sub_1C98134D8();
        swift_once();
      }

      v12 = sub_1C9A91B58();
      sub_1C97BFF6C(v12, qword_1EC3D3108);
      v13 = sub_1C9A91B38();
      sub_1C9A92FC8();
      sub_1C9A0F7E0();
      if (os_log_type_enabled(v13, v14))
      {
        sub_1C98136E4();
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "AVAudioSession media services reset";
LABEL_19:
        _os_log_impl(&dword_1C9788000, v13, v1, v16, v15, 2u);
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
      }

LABEL_20:

      return;
    default:
      if (qword_1EC3C5520 != -1)
      {
        sub_1C98134D8();
        swift_once();
      }

      v2 = sub_1C9A91B58();
      sub_1C97BFF6C(v2, qword_1EC3D3108);
      v3 = sub_1C9A91B38();
      sub_1C9A92FC8();
      sub_1C9A0F7E0();
      if (os_log_type_enabled(v3, v4))
      {
        sub_1C98136E4();
        *swift_slowAlloc() = 0;
        sub_1C9859390(&dword_1C9788000, v5, v6, "AVAudioSession interrupted");
        v7 = 1;
LABEL_10:
        sub_1C98135FC();
        MEMORY[0x1CCA93280]();
      }

      else
      {
        v7 = 1;
      }

      break;
  }

  sub_1C9A0F2D0();
  swift_allocError();
  *v19 = v7;
  swift_willThrow();
}

unint64_t sub_1C9A0ED18()
{
  result = qword_1EC3D1F80;
  if (!qword_1EC3D1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1F80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioDataSourceUtils(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AudioDataSourceUtils.SystemAudioEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A0EF10(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1C9A934C8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C9A32D28();

    v1 = sub_1C9A33C84(&v5, (v3 + 32), v2, v1);
    sub_1C979B1D4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1C9A0EFC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1C97A2CEC(&qword_1EC3C7808);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C9A0F090(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C6A08);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + a3), v5);
      return;
    }

    goto LABEL_10;
  }
}

void sub_1C9A0F14C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1C97A2CEC(&qword_1EC3C7C70);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1C9A0F214(void *a1)
{
  v1 = [a1 availableInputs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C97BD318(0, &qword_1EC3D2038);
  v3 = sub_1C9A92798();

  return v3;
}

unint64_t sub_1C9A0F2D0()
{
  result = qword_1EC3D1FF8;
  if (!qword_1EC3D1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1FF8);
  }

  return result;
}

uint64_t sub_1C9A0F338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C9A0F3A4()
{
  result = qword_1EC3D2040;
  if (!qword_1EC3D2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2040);
  }

  return result;
}

unint64_t sub_1C9A0F3FC()
{
  result = qword_1EC3D2048;
  if (!qword_1EC3D2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2048);
  }

  return result;
}

unint64_t sub_1C9A0F450()
{
  result = qword_1EC3D2058;
  if (!qword_1EC3D2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2058);
  }

  return result;
}

_BYTE *sub_1C9A0F4A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9A0F584()
{
  result = qword_1EC3D2068;
  if (!qword_1EC3D2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2068);
  }

  return result;
}

unint64_t sub_1C9A0F5DC()
{
  result = qword_1EC3D2070;
  if (!qword_1EC3D2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2070);
  }

  return result;
}

unint64_t sub_1C9A0F634()
{
  result = qword_1EC3D2078;
  if (!qword_1EC3D2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2078);
  }

  return result;
}

id sub_1C9A0F694@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (a2 - 32) | 0x8000000000000000, 1, 0, a1, v2);
}

void sub_1C9A0F700()
{

  JUMPOUT(0x1CCA90230);
}

id sub_1C9A0F71C(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return [v11 a2];
}

uint64_t sub_1C9A0F744()
{

  return sub_1C9A91F68();
}

uint64_t sub_1C9A0F780()
{

  return sub_1C9A93728();
}

void sub_1C9A0F798()
{

  JUMPOUT(0x1CCA90230);
}

uint64_t sub_1C9A0F7B0()
{
}

uint64_t sub_1C9A0F7C8()
{

  return sub_1C9A913C8();
}

uint64_t sub_1C9A0F7EC()
{

  return sub_1C9A91CE8();
}

uint64_t sub_1C9A0F80C()
{

  return sub_1C9A92658();
}

uint64_t sub_1C9A0F858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2 + 16))(a1, a2);
  (*(a4 + 16))(AssociatedTypeWitness, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1C9A0F984()
{
  swift_getWitnessTable();
  _s21ServerEnvironmentImplVMa();
  WitnessTable = swift_getWitnessTable();
  return sub_1C9A0FAAC(WitnessTable, v1, v2);
}

uint64_t sub_1C9A0FA0C()
{
  swift_getWitnessTable();
  type metadata accessor for AudioStreamAnalyzerEnvironmentImpl();
  WitnessTable = swift_getWitnessTable();
  return sub_1C9A0FAAC(WitnessTable, v1, v2);
}

uint64_t sub_1C9A0FAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9A0F858(v3, v4, a3, a1);
}

double SNSignalThresholdResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNSignalThresholdResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C9A0FB04(void *a1)
{
  v2 = v1;
  v4 = sub_1C97A2CEC(&unk_1EC3D20A8);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A108F4();
  sub_1C9A93DD8();
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  v12[2] = v2[2];
  sub_1C97BD12C();
  sub_1C9A93A18();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C9A0FC4C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D2090);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A108F4();
  sub_1C9A93DB8();
  if (!v2)
  {
    sub_1C97BD0D8();
    sub_1C9A938F8();
    (*(v7 + 8))(v10, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    a2[2] = v13[2];
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9A0FDB8(uint64_t a1)
{
  v2 = sub_1C9A108F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A0FDF4(uint64_t a1)
{
  v2 = sub_1C9A108F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double SNSignalThresholdResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNSignalThresholdResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNSignalThresholdResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNSignalThresholdResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C9A0FF4C@<D0>(_OWORD *a1@<X8>)
{
  SNSignalThresholdResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNSignalThresholdResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNSignalThresholdResult.timeRange.getter((v3 + 1));
  return sub_1C9A0FFF4;
}

void sub_1C9A0FFF4(void **a1)
{
  v1 = *a1;
  SNSignalThresholdResult.timeRange.setter(*a1 + 8);

  free(v1);
}

id sub_1C9A10034()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNSignalThresholdResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id SNSignalThresholdResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C97CA608(OBJC_IVAR___SNSignalThresholdResult_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNSignalThresholdResult_impl];
  v6 = v8[2];
  *v5 = v8[1];
  v5[1] = v6;
  v5[2] = v8[3];
  v8[0].receiver = v4;
  v8[0].super_class = ObjectType;
  result = [(objc_super *)v8 init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNSignalThresholdResult.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNSignalThresholdResult_impl);
  v2 = *(v0 + OBJC_IVAR___SNSignalThresholdResult_impl + 16);
  v3 = *(v0 + OBJC_IVAR___SNSignalThresholdResult_impl + 24);
  v4 = *(v0 + OBJC_IVAR___SNSignalThresholdResult_impl + 40);
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  return sub_1C9A93D18();
}

BOOL SNSignalThresholdResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v13);
  if (v14)
  {
    sub_1C97A2D34(&v13, v12);
    sub_1C97BD360(v12, v11);
    if (swift_dynamicCast())
    {
      v3 = v10;
      v4 = *(v1 + OBJC_IVAR___SNSignalThresholdResult_impl + 16);
      v9[0] = *(v1 + OBJC_IVAR___SNSignalThresholdResult_impl);
      v9[1] = v4;
      v9[2] = *(v1 + OBJC_IVAR___SNSignalThresholdResult_impl + 32);
      v5 = *&v10[OBJC_IVAR___SNSignalThresholdResult_impl + 16];
      v8[0] = *&v10[OBJC_IVAR___SNSignalThresholdResult_impl];
      v8[1] = v5;
      v8[2] = *&v10[OBJC_IVAR___SNSignalThresholdResult_impl + 32];
      v6 = static TimeRange.== infix(_:_:)(v9, v8);
    }

    else
    {
      v6 = 0;
    }

    sub_1C97A592C(v12);
  }

  else
  {
    return 0;
  }

  return v6;
}

id SNSignalThresholdResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A25B0(a1, v9);
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNSignalThresholdResult_impl];
  v5 = v9[1];
  *v4 = v9[0];
  v4[1] = v5;
  v4[2] = v9[2];
  v8.receiver = v3;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_getObjectType();
  sub_1C97CA634();
  return v6;
}

uint64_t SNSignalThresholdResult.description.getter()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v13, sel_description);
  v2 = sub_1C9A924A8();
  v4 = v3;

  v14 = v2;
  v15 = v4;
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNSignalThresholdResult.timeRange.getter(v16);
  v5 = objc_opt_self();
  v12[0] = v16[0];
  v12[1] = v16[1];
  v12[2] = v16[2];
  v6 = [v5 valueWithCMTimeRange_];
  v7 = [v6 description];
  v8 = sub_1C9A924A8();
  v10 = v9;

  MEMORY[0x1CCA90230](v8, v10);

  return v14;
}

id SNSignalThresholdResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C9A1080C@<D0>(_OWORD *a1@<X8>)
{
  SNSignalThresholdResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C9A108A0()
{
  result = qword_1EC3D2088;
  if (!qword_1EC3D2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2088);
  }

  return result;
}

unint64_t sub_1C9A108F4()
{
  result = qword_1EC3D2098;
  if (!qword_1EC3D2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalThresholdResult.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A109F8()
{
  result = qword_1EC3D20B8;
  if (!qword_1EC3D20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D20B8);
  }

  return result;
}

unint64_t sub_1C9A10A50()
{
  result = qword_1EC3D20C0;
  if (!qword_1EC3D20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D20C0);
  }

  return result;
}

unint64_t sub_1C9A10AA8()
{
  result = qword_1EC3D20C8[0];
  if (!qword_1EC3D20C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3D20C8);
  }

  return result;
}

uint64_t sub_1C9A10AFC()
{
  if ((sub_1C9A92438() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for KVPair();
  return sub_1C9A92438() & 1;
}

uint64_t sub_1C9A10BD0()
{
  sub_1C9A93CC8();
  sub_1C9A10B80();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A10C30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[4] = a4;
  v16[2] = a6;
  v7 = *(a2 + 24);
  v16[0] = a2;
  v16[1] = v7;
  type metadata accessor for KVPair.CodingKeys();
  sub_1C9A1250C();
  swift_getWitnessTable();
  v8 = sub_1C9A93A78();
  sub_1C97AE9DC();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DD8();
  v18 = 0;
  v14 = v16[5];
  sub_1C9A93A18();
  if (!v14)
  {
    v17 = 1;
    sub_1C9A93A18();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_1C9A10DC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v42 = a4;
  v36 = a6;
  sub_1C97AE9DC();
  v35 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C98FA34C();
  v37 = v11;
  sub_1C97AE9DC();
  v40 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98FA34C();
  v43 = v14;
  type metadata accessor for KVPair.CodingKeys();
  sub_1C9A1250C();
  swift_getWitnessTable();
  v44 = sub_1C9A93978();
  sub_1C97AE9DC();
  v39 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v41 = a2;
  v17 = type metadata accessor for KVPair();
  sub_1C97AE9DC();
  v34 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  sub_1C97A5A8C(a1, a1[3]);
  v22 = v45;
  sub_1C9A93DB8();
  if (v22)
  {
    return sub_1C97A592C(a1);
  }

  v23 = v21;
  v45 = v17;
  v24 = v40;
  v47 = 0;
  v25 = v41;
  sub_1C9A938F8();
  v26 = *(v24 + 32);
  v42 = v23;
  v26(v23, v43, v25);
  v46 = 1;
  v27 = v37;
  sub_1C9A938F8();
  v28 = sub_1C9A12524();
  v29(v28);
  v30 = v45;
  v31 = v42;
  (*(v35 + 32))(&v42[*(v45 + 36)], v27, a3);
  v32 = v34;
  (*(v34 + 16))(v36, v31, v30);
  sub_1C97A592C(a1);
  return (*(v32 + 8))(v31, v30);
}

uint64_t sub_1C9A111C0()
{
  sub_1C9A93CC8();
  sub_1C979AF70(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A11218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C980777C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A11270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97AC288();
  *a1 = result;
  return result;
}

uint64_t sub_1C9A112A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C9A112F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C9A11370()
{
  sub_1C9A93CC8();
  sub_1C9A10B80();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A11410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99DC5A4();
  v16 = *(a2 + 16);
  v9 = v16;
  v17 = a3;
  v10 = sub_1C981CDF0(v15);
  (*(*(v9 - 8) + 16))(v10, v4, v9);
  sub_1C99DC674(v15);
  if (!v5)
  {
    sub_1C97A592C(v15);
    v11 = *(a2 + 36);
    v12 = *(a2 + 24);
    v16 = v12;
    v17 = a4;
    v13 = sub_1C981CDF0(v15);
    (*(*(v12 - 8) + 16))(v13, v4 + v11, v12);
    sub_1C99DC674(v15);
  }

  return sub_1C97A592C(v15);
}

uint64_t sub_1C9A11550()
{
  sub_1C97AA884();
  v2 = v1;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v1;
  v0[5] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[8] = *(v5 - 8);
  v0[9] = swift_task_alloc();
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1C9A1168C;

  return sub_1C988FC80();
}

uint64_t sub_1C9A1168C(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  v5[13] = a1;
  v5[14] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C9A11BA4, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v5[15] = v8;
    *v8 = v6;
    v8[1] = sub_1C9A11810;

    return sub_1C988FFB8();
  }
}

uint64_t sub_1C9A11810()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_1C9A11C14;
  }

  else
  {
    v5 = sub_1C9A11914;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C9A11914()
{
  sub_1C97AA884();
  (*(v0[10] + 32))(v0[2], v0[11], v0[4]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1C9A119D0;

  return sub_1C988FFB8();
}

uint64_t sub_1C9A119D0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1C9A11C90;
  }

  else
  {
    v5 = sub_1C9A11AD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C9A11AD4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = type metadata accessor for KVPair();
  (*(v2 + 32))(v4 + *(v5 + 36), v1, v3);

  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C9A11BA4()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A11C14()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A11C90()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[2];

  (*(v1 + 8))(v3, v2);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C9A11D38()
{

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C9A11550();
}

uint64_t sub_1C9A11E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9A11D38();
}

_BYTE *sub_1C9A11F5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A12028(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C97ABF20(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C9A121F0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C97ACC50(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C9A1247C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9A12534@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v18 = a2[1];
  v19 = v11;

  sub_1C99528D4(a3, a4, &v19, &v18, v10);
  if (v5)
  {
  }

  v15 = v12;
  v16 = v13;

  v17 = v18;
  *a2 = v19;
  a2[1] = v17;
  *a5 = v15;
  a5[1] = v16;
  return result;
}

void sub_1C9A125D8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C97B7C28();
    v6 = v8;
    v7 = *(v8 + 16);
    do
    {
      v9 = v6;
      if (v7 >= *(v6 + 24) >> 1)
      {
        sub_1C97B7C28();
        v6 = v9;
      }

      *(v6 + 16) = v7 + 1;
      *(v6 + 8 * v7++ + 32) = 0;
      --v5;
    }

    while (v5);
  }

  *a3 = v6;
  a3[1] = a2;
}

uint64_t sub_1C9A126A0()
{
  v1 = sub_1C9A127E8(0xD000000000000043, 0x80000001C9ADE870);
  if (v0)
  {

    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ALL, 0x80000001C9AD5760);
    return swift_willThrow();
  }

  else
  {
    v3 = v1;
    v4 = sub_1C9A92508();
    v5 = dlsym(v3, (v4 + 32));

    if (v5)
    {
      *(swift_allocObject() + 16) = v5;
      v6 = sub_1C9A12A14;
    }

    else
    {
      v6 = nullsub_1;
    }

    v6();
  }
}

void *sub_1C9A127E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A92508();
  v5 = dlopen((v4 + 32), 1);

  if (!v5)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();

    MEMORY[0x1CCA90230](a1, a2);
    MEMORY[0x1CCA90230](46, 0xE100000000000000);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000020, 0x80000001C9ADE8F0);

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C9A12900()
{
  v0 = sub_1C9A127E8(0xD000000000000043, 0x80000001C9ADE870);
  v1 = sub_1C9A92508();
  v2 = dlsym(v0, (v1 + 32));

  if (v2)
  {
    *(swift_allocObject() + 16) = v2;
    v3 = sub_1C9A12A0C;
  }

  else
  {
    v3 = nullsub_1;
  }

  v3();

  byte_1EC3C4ED0 = 1;
  return result;
}

uint64_t sub_1C9A12A18()
{
  v4 = *v0;
  sub_1C9A15860();
  sub_1C97BE32C();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A12AF0(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D2218);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A151B4();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

void sub_1C9A12BF4()
{
  sub_1C9A158B8();
  v16 = v2;
  v17 = v3;
  v5 = v4;
  v6 = sub_1C97A2CEC(&unk_1EC3D2260);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-v10 - 8];
  memcpy(v15, v0, 0x41uLL);
  sub_1C97A5A8C(v5, v5[3]);
  sub_1C9A1525C();
  sub_1C9996520();
  v14[0] = 0;
  sub_1C97A5C74();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (!v1)
  {
    memcpy(v14, v15, sizeof(v14));
    v15[87] = 1;
    sub_1C97A6264(v15, v13);
    sub_1C97A6210();
    sub_1C97BE02C();
    sub_1C9A93A18();
    memcpy(v13, v14, 0x41uLL);
    sub_1C97E8084(v13);
  }

  (*(v8 + 8))(v11, v6);
  sub_1C9A158CC();
}

void sub_1C9A12DAC()
{
  sub_1C9A158B8();
  v11 = v1;
  v12 = v2;
  v4 = v3;
  v6 = v5;
  sub_1C97A2CEC(&qword_1EC3D2250);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97A5A8C(v4, v4[3]);
  sub_1C9A1525C();
  sub_1C9802210();
  if (!v0)
  {
    v10[0] = 0;
    sub_1C97A5CC8();
    sub_1C9802184();
    v10[87] = 1;
    sub_1C97A62C0();
    sub_1C9802184();
    v8 = sub_1C97BE31C();
    v9(v8);
    memcpy(v6, v10, 0x41uLL);
  }

  sub_1C97A592C(v4);
  sub_1C9A158CC();
}

uint64_t sub_1C9A12F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *(a2 + 32);
  v5 = *(a2 + 48);
  return static TimeRange.== infix(_:_:)(v8, v7) & (v3 == v5);
}

uint64_t sub_1C9A12F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C6C656269636564 && a2 == 0xEC0000006C657665)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9A1305C(char a1)
{
  if (a1)
  {
    return 0x4C6C656269636564;
  }

  else
  {
    return 0x676E6152656D6974;
  }
}

void sub_1C9A130A0()
{
  sub_1C9A158B8();
  v16 = v2;
  v17 = v3;
  v4 = v0;
  v6 = v5;
  v7 = sub_1C97A2CEC(&unk_1EC3D2240);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  sub_1C97A5A8C(v6, v6[3]);
  sub_1C9A15208();
  sub_1C9996520();
  v13 = v4[1];
  v14[0] = *v4;
  v14[1] = v13;
  v14[2] = v4[2];
  v15 = 0;
  sub_1C97BD12C();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (!v1)
  {
    LOBYTE(v14[0]) = 1;
    sub_1C97BE02C();
    sub_1C9A939F8();
  }

  (*(v9 + 8))(v12, v7);
  sub_1C9A158CC();
}

uint64_t sub_1C9A13200()
{
  sub_1C9A15860();
  MEMORY[0x1CCA919B0]();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v0);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  return sub_1C9A93CF8();
}

void sub_1C9A132A4()
{
  sub_1C9A158B8();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3D2228);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A15208();
  sub_1C9802210();
  if (!v0)
  {
    sub_1C97BD0D8();
    sub_1C9802184();
    sub_1C9A938D8();
    v7 = v6;
    v8 = sub_1C97BE31C();
    v9(v8);
    *v4 = v10;
    *(v4 + 16) = v11;
    *(v4 + 32) = v12;
    *(v4 + 48) = v7;
  }

  sub_1C97A592C(v2);
  sub_1C9A158CC();
}

uint64_t sub_1C9A13438(uint64_t a1)
{
  v2 = sub_1C9A151B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A13474(uint64_t a1)
{
  v2 = sub_1C9A151B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A134E0(uint64_t a1)
{
  v2 = sub_1C9A1525C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A1351C(uint64_t a1)
{
  v2 = sub_1C9A1525C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A13558()
{
  sub_1C9A93CC8();
  sub_1C9A09C14();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A135C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A13618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A12F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A13640(uint64_t a1)
{
  v2 = sub_1C9A15208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A1367C(uint64_t a1)
{
  v2 = sub_1C9A15208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A136C0()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A137E0()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C9A1386C(uint64_t a1)
{
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = a1;
  v5[5] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C97F489C, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v5[6] = v9;
    *v9 = v7;
    sub_1C97DA950(v9);

    return sub_1C98A4010();
  }
}

uint64_t sub_1C9A139F0(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v4[3] = sub_1C97A2CEC(&unk_1EC3D2270);
  v4[4] = sub_1C9A15778();
  v4[0] = a2;

  sub_1C99DC184(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C9A13A80()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C9A137E0();
}

uint64_t sub_1C9A13B30()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C9A13A80();
}

id sub_1C9A13BC0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12 = a1[2];
  v13 = *(a1 + 12);
  v4 = type metadata accessor for SNLKFSResult();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___SNLKFSResult_impl];
  *(v6 + 12) = v13;
  v7 = v12;
  *(v6 + 1) = v11;
  *(v6 + 2) = v7;
  *v6 = v10;
  v9.receiver = v5;
  v9.super_class = v4;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_1C9A13C50()
{
  if (qword_1EC3C4EC8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3C4ED0)
  {
    type metadata accessor for SNAudioLevelMeasurer();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ALL, 0x80000001C9AD5760);
    return swift_willThrow();
  }

  return result;
}

id SNMeasureLKFSRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4.receiver = objc_allocWithZone(ObjectType);
  v4.super_class = ObjectType;
  result = objc_msgSendSuper2(&v4, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNMeasureLKFSRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v7);
  if (!v8)
  {
    return 0;
  }

  sub_1C97A2D34(&v7, v6);
  sub_1C97BD360(v6, v5);
  v2 = swift_dynamicCast();
  if (v2)
  {
  }

  sub_1C97A592C(v6);
  return v2;
}

id SNMeasureLKFSRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C97FD140();
  sub_1C97A2748(v4, v5, v6);
  if (v1)
  {

    swift_getObjectType();
    sub_1C97FD174();
    return 0;
  }

  else
  {
    v9.receiver = objc_allocWithZone(ObjectType);
    v9.super_class = ObjectType;
    v7 = objc_msgSendSuper2(&v9, sel_init);

    swift_getObjectType();
    sub_1C97FD174();
  }

  return v7;
}

Swift::Void __swiftcall SNMeasureLKFSRequest.encode(with:)(NSCoder with)
{
  v3 = sub_1C97FD140();
  sub_1C97A0B64(v3, v4, v5);
  if (v1)
  {
    v6 = sub_1C9A913B8();
    [(objc_class *)with.super.isa failWithError:v6];
  }
}

void sub_1C9A14160()
{
  sub_1C9A158B8();
  v48 = v1;
  v49 = v2;
  v38 = v3;
  sub_1C97A2CEC(&qword_1EC3CC6F8);
  sub_1C97AE9C8();
  v36 = v5;
  v37 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - v7;
  v8 = MGGetProductType();
  sub_1C989B2F8(v8, v41);
  if (v41[6])
  {
    v9 = v41[0];

    sub_1C989ACF0(v9, v42);
    v10 = v44;
    v45 = v42[1];

    sub_1C97F9D3C(&v45, &qword_1EC3C7DB0);
    v47[0] = v43;
    sub_1C97F9D3C(v47, &qword_1EC3C7DB8);

    v10(v40, v11);

    v13 = v40[0];
    v12 = v40[1];
    v15 = v40[2];
    v14 = v40[3];
    v17 = v40[4];
    v16 = v40[5];
    v18 = v40[6];
    v19 = BYTE1(v40[6]);
    v20 = BYTE2(v40[6]);
    v21 = BYTE3(v40[6]);
    v22 = BYTE4(v40[6]);
    v23 = BYTE5(v40[6]);
    v24 = v40[7];
    v25 = v40[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(v40, &qword_1EC3D33B0, 0x41uLL);
    v34 = v40[7];
    v32 = BYTE5(v40[6]);
    v33 = LOBYTE(v40[8]);
    v30 = BYTE3(v40[6]);
    v31 = BYTE4(v40[6]);
    HIDWORD(v29) = BYTE2(v40[6]);
    v19 = BYTE1(v40[6]);
    v18 = v40[6];
    v17 = v40[4];
    v16 = v40[5];
    v15 = v40[2];
    v14 = v40[3];
    v13 = v40[0];
    v12 = v40[1];
    sub_1C97A6264(v40, &v39);
    v20 = BYTE4(v29);
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v25 = v33;
    v24 = v34;
  }

  v40[0] = v13;
  v40[1] = v12;
  v40[2] = v15;
  v40[3] = v14;
  v40[4] = v17;
  v40[5] = v16;
  LOBYTE(v40[6]) = v18;
  BYTE1(v40[6]) = v19;
  BYTE2(v40[6]) = v20;
  BYTE3(v40[6]) = v21;
  BYTE4(v40[6]) = v22;
  BYTE5(v40[6]) = v23;
  v40[7] = v24;
  LOBYTE(v40[8]) = v25;
  memcpy(v46, v40, 0x41uLL);
  v26 = sub_1C986DD40(v46, v38);
  sub_1C97E8084(v40);
  if (!v0)
  {
    v39 = v26;

    sub_1C97A2CEC(&unk_1EC3D2270);
    sub_1C97A2CEC(&unk_1EC3C8670);
    sub_1C97AE67C(&qword_1EC3CC750, &unk_1EC3D2270);
    v27 = v35;
    sub_1C9A91F68();

    sub_1C97AE67C(&qword_1EC3CC758, &qword_1EC3CC6F8);
    v28 = v37;
    sub_1C9A91F28();

    (*(v36 + 8))(v27, v28);
  }

  sub_1C9A158CC();
}

uint64_t sub_1C9A14504(uint64_t a1, unint64_t a2)
{
  result = type metadata accessor for SNAudioLevelMeasurer();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a2))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = sub_1C9A14578(a1);
  v7 = v6;
  if (!v2)
  {
    sub_1C9A69F34(v6);
  }

  return v7;
}

id sub_1C9A14578(double a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  *&v33 = 0;
  v4 = sub_1C9A761F8(v3, &v33);
  if (!v4)
  {
    v14 = v33;
    sub_1C9A913C8();

    swift_willThrow();
    return v4;
  }

  v5 = v33;
  v6 = sub_1C9A92478();
  *&v33 = 0;
  v7 = sub_1C9A72FAC(v3, v4, v6, &v33);

  if (!v7)
  {
    v15 = v33;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_27;
  }

  v8 = v33;
  v9 = sub_1C9A92478();
  *&v33 = 0;
  v10 = sub_1C9A7347C(v3, v4, v9, 1, &v33);

  if (!v10)
  {
    v16 = v33;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_27;
  }

  v11 = v33;
  v12 = sub_1C9A15830();
  v13 = sub_1C999C80C(0x6D6C7073uLL, 0xE400000000000000);
  if (v1)
  {

LABEL_6:
LABEL_27:

    return v4;
  }

  v32 = 0;
  LODWORD(v33) = 1635083896;
  DWORD1(v33) = v13;
  *(&v33 + 1) = 1634758764;
  v34 = 0;
  v17 = sub_1C9A74AEC(v3, v4, v12, 1, 1, &v33, &v32);

  if (!v17)
  {
    v28 = v32;
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_6;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (a1 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a1 >= 4294967300.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1C9A15878(v32);
  v18 = sub_1C9A15800();
  if (!sub_1C9A762F8(v18, v19, v7, v17, 0, 0, v20, v21))
  {
    v29 = v32;
    sub_1C9A913C8();

LABEL_26:
    swift_willThrow();

    goto LABEL_27;
  }

  sub_1C9A15878(v32);
  v22 = sub_1C9A15800();
  if (!sub_1C9A762F8(v22, v23, v17, v10, 0, 0, v24, v25))
  {
    v30 = v32;
    sub_1C9A913C8();

    goto LABEL_26;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (a1 >= 9.22337204e18)
  {
    goto LABEL_33;
  }

  v26 = v32;
  sub_1C9A695C8(v4);
  sub_1C9A69B8C(v4);
  if (!sub_1C9A1589C(v17) || (sub_1C9A1589C(v17) & 1) == 0 || (sub_1C9A1589C(v17) & 1) == 0)
  {
    sub_1C97C269C();
    swift_allocError();
    *v27 = 5;
    swift_willThrow();
  }

  return v4;
}

void sub_1C9A1498C()
{
  sub_1C9A158B8();
  v21 = v0;
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_self();
  v20[0] = 0;
  v9 = sub_1C9A76EE8(v8, v5, v20);
  if (!v9)
  {
    v18 = v20[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_8;
  }

  v10 = v9;
  v11 = v20[0];
  v12 = sub_1C9A93C88();
  v13 = sub_1C9A67138(v5);
  if (v13 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  v14 = v13;
  v15 = sub_1C9A67138(v5);
  if (v15 < 0)
  {
    goto LABEL_10;
  }

  v16 = v15;
  LODWORD(v20[0]) = 0;
  if (sub_1C9A64EA4(v5, v20, 7, 0, 0))
  {

    v17 = v20[0];
    *v7 = v12;
    *(v7 + 8) = v14;
    *(v7 + 12) = 1;
    *(v7 + 16) = 0;
    *(v7 + 24) = v3;
    *(v7 + 32) = v16;
    *(v7 + 36) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = v17;
  }

  else
  {
    sub_1C97C269C();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();
  }

LABEL_8:
  sub_1C9A158CC();
}

id SNMeasureLKFSRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C9A14BAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1C9A1498C();
  if (!v3)
  {
    v5 = type metadata accessor for SNLKFSResult();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___SNLKFSResult_impl];
    *(v7 + 12) = v18;
    v8 = v17;
    v9 = v16;
    *v7 = v15;
    *(v7 + 1) = v9;
    *(v7 + 2) = v8;
    v14.receiver = v6;
    v14.super_class = v5;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    v11 = SNLKFSResult.timeRange.getter(v19);
    (a3)(v19[0], v19[1], v19[2], v11);
    v12 = sub_1C9A92F08();
    a3(v12);
    sub_1C9A92F18();
    SNLKFSResult.timeRange.setter(v20);
    sub_1C97A2CEC(&unk_1EC3C6E20);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C9A9DF30;
    *(v13 + 32) = v10;
  }
}

id sub_1C9A14D14()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C9A1513C();
  swift_allocError();
  return swift_willThrow();
}

void sub_1C9A14D70(int a1, double a2)
{
  v6 = *v2;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *(v7 + 32) = v2;
  *(v7 + 40) = v6;

  v8 = sub_1C97C1C8C();

  if (!v3)
  {
    v9 = v2[2];
    v2[2] = v8;
  }
}

id sub_1C9A14E40@<X0>(void *a1@<X8>, double a2@<D0>)
{
  result = sub_1C9A14578(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1C9A14E70()
{
  result = sub_1C9A14D14();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A15830();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C9A14F10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9A14F30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 52) = v3;
  return result;
}

unint64_t sub_1C9A14F88()
{
  result = qword_1EC3D21D8;
  if (!qword_1EC3D21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D21D8);
  }

  return result;
}

unint64_t sub_1C9A14FDC(uint64_t a1)
{
  result = sub_1C97A6FCC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9A15004(uint64_t a1)
{
  result = sub_1C97A6F78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9A15030()
{
  result = qword_1EC3D21F0;
  if (!qword_1EC3D21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D21F0);
  }

  return result;
}

unint64_t sub_1C9A15088()
{
  result = qword_1EC3D21F8;
  if (!qword_1EC3D21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D21F8);
  }

  return result;
}

unint64_t sub_1C9A1513C()
{
  result = qword_1EC3D2208;
  if (!qword_1EC3D2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2208);
  }

  return result;
}

unint64_t sub_1C9A151B4()
{
  result = qword_1EC3D2220;
  if (!qword_1EC3D2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2220);
  }

  return result;
}

unint64_t sub_1C9A15208()
{
  result = qword_1EC3D2230;
  if (!qword_1EC3D2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2230);
  }

  return result;
}

unint64_t sub_1C9A1525C()
{
  result = qword_1EC3D2258;
  if (!qword_1EC3D2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2258);
  }

  return result;
}

_BYTE *sub_1C9A152C0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9A153AC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A15464()
{
  result = qword_1EC3D2280;
  if (!qword_1EC3D2280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2280);
  }

  return result;
}

unint64_t sub_1C9A154BC()
{
  result = qword_1EC3D2288;
  if (!qword_1EC3D2288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2288);
  }

  return result;
}

unint64_t sub_1C9A15514()
{
  result = qword_1EC3D2290;
  if (!qword_1EC3D2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2290);
  }

  return result;
}

unint64_t sub_1C9A1556C()
{
  result = qword_1EC3D2298;
  if (!qword_1EC3D2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2298);
  }

  return result;
}

unint64_t sub_1C9A155C4()
{
  result = qword_1EC3D22A0;
  if (!qword_1EC3D22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22A0);
  }

  return result;
}

unint64_t sub_1C9A1561C()
{
  result = qword_1EC3D22A8;
  if (!qword_1EC3D22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22A8);
  }

  return result;
}

unint64_t sub_1C9A15674()
{
  result = qword_1EC3D22B0;
  if (!qword_1EC3D22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22B0);
  }

  return result;
}

unint64_t sub_1C9A156CC()
{
  result = qword_1EC3D22B8;
  if (!qword_1EC3D22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22B8);
  }

  return result;
}

unint64_t sub_1C9A15724()
{
  result = qword_1EC3D22C0;
  if (!qword_1EC3D22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22C0);
  }

  return result;
}

unint64_t sub_1C9A15778()
{
  result = qword_1EC3D22C8;
  if (!qword_1EC3D22C8)
  {
    sub_1C97AA4F0(&unk_1EC3D2270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22C8);
  }

  return result;
}

uint64_t sub_1C9A15830()
{

  return sub_1C9A92478();
}

double sub_1C9A15878(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C9A76554(v1, 9600, 1, va);
}

uint64_t sub_1C9A1589C(uint64_t a1)
{

  return sub_1C9A65250(a1);
}

uint64_t sub_1C9A158E0(unint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    v9 = 0;
    while (1)
    {
      if (v9 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      sub_1C9A15C98(v7, v24);
      if ((a1 & 0x8000000000000000) != 0)
      {
        if ((v24[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v24[0] & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }

      sub_1C9984910();
      if (sub_1C9A931E8())
      {

        sub_1C9A15D00(v24, v25);
        sub_1C9A15D00(v25, v26);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1C9A15CD0(v26);
        if (!Strong)
        {
          break;
        }

        v22 = Strong;
        v27 = v2;
        goto LABEL_15;
      }

LABEL_9:
      ++v9;
      result = sub_1C9A15CD0(v24);
      v7 += 24;
      if (v6 == v9)
      {

        break;
      }
    }
  }

  result = sub_1C9905030(a1);
  if (!v2)
  {
    v27 = 0;
    v26[0] = a1;
    v22 = result;
    v26[2] = v10;
    swift_unknownObjectWeakInit();
    sub_1C97A2CEC(&unk_1EC3C7570);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C9A9EDD0;
    sub_1C9A15C98(v26, v11 + 32);
    v25[0] = v11;
    v12 = (a1 & 0x7FFFFFFFFFFFFFFFLL);

    sub_1C98CFEB0(v13);
    sub_1C9A15CD0(v26);
    *(v3 + 16) = v25[0];

LABEL_15:
    v23 = v3;
    v15 = *(v3 + 16);
    v16 = *(v15 + 16);
    v17 = v15 + 32;

    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v16 == v18)
      {

        *(v23 + 16) = v19;

        return v22;
      }

      if (v18 >= *(v15 + 16))
      {
        break;
      }

      sub_1C9A15C98(v17, v26);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1C9A15D00(v26, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C97B7E1C();
          v19 = v24[0];
        }

        v21 = *(v19 + 16);
        if (v21 >= *(v19 + 24) >> 1)
        {
          sub_1C97B7E1C();
          v19 = v24[0];
        }

        *(v19 + 16) = v21 + 1;
        result = sub_1C9A15D00(v25, v19 + 24 * v21 + 32);
      }

      else
      {
        result = sub_1C9A15CD0(v26);
      }

      v17 += 24;
      ++v18;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9A15C00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 16) & 0xF000000000000007) != 0)
    {
      v2 = *(a1 + 8) & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9A15C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = 1;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C9A15D58(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(a2 + 16);
  v5 = v4(ObjectType, a2);
  v6 = [v5 inputDescriptionsByName];

  sub_1C97FD598();
  v7 = sub_1C9A92328();

  if (*(v7 + 16) != 1)
  {

    goto LABEL_9;
  }

  sub_1C98BBD84(v7);
  v9 = v8;
  v11 = v10;

  if (!v9)
  {
LABEL_9:
    type metadata accessor for SNError();
    sub_1C9820900(0x80000001C9AD4AA0, 0xD00000000000003FLL, "es");
    swift_willThrow();
    return;
  }

  v12 = [v11 multiArrayConstraint];
  if (!v12)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    v25 = v24 + 51;
LABEL_13:
    sub_1C9820900(v22, v25, v23);
    swift_willThrow();

    return;
  }

  v13 = v4(ObjectType, a2);
  v14 = [v13 outputDescriptionsByName];

  v15 = sub_1C9A92328();
  if (*(v15 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_1C98BBD84(v15);
  v17 = v16;
  v19 = v18;

  if (!v17)
  {
LABEL_12:
    type metadata accessor for SNError();
    sub_1C98573F8();
    v25 = v26 + 41;
    goto LABEL_13;
  }

  v20 = [v19 multiArrayConstraint];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    sub_1C9820900(v28, v27 + 52, v29);
    swift_willThrow();
  }
}

id sub_1C9A1601C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  ObjectType = swift_getObjectType();
  sub_1C9A15D58(a1, a2);
  v10 = &v4[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model];
  *v10 = a1;
  v10[1] = a2;
  *&v4[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames] = a3;
  *&v4[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1C9A16124()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(ObjectType, v1);
  sub_1C98449A8();
  v3 = sub_1C9A932F8();

  v4 = sub_1C9A93D98() ^ v3;
  return v4 ^ sub_1C9A93D98();
}

BOOL sub_1C9A161D8(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, v17);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8);
      ObjectType = swift_getObjectType();
      v5 = (*(v3 + 8))(ObjectType, v3);
      v7 = v6;
      v8 = *&v16[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_model + 8];
      v9 = swift_getObjectType();
      if (v5 == (*(v8 + 8))(v9, v8) && v7 == v10)
      {
      }

      else
      {
        v12 = sub_1C9A93B18();

        if ((v12 & 1) == 0)
        {
LABEL_13:

          return 0;
        }
      }

      if (*(v1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames) == *&v16[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames])
      {
        v13 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames);
        v14 = *&v16[OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames];

        return v13 == v14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_1C97A59D0(v17);
  }

  return 0;
}

void sub_1C9A16494(uint64_t a1, char a2)
{
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C9A934C8();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C97B7B08(0, v4 & ~(v4 >> 63), 0);
    v5 = v43;
    v40 = sub_1C98BC45C(a1);
    v41 = v6;
    v42 = v7 & 1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      if (a2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 16;
      }

      v10 = 24;
      if (a2)
      {
        v10 = 8;
      }

      v35 = v10;
      v36 = v9;
      v34 = v4;
      while (!__OFADD__(v8++, 1))
      {
        v12 = v40;
        v13 = v42;
        v38 = v41;
        sub_1C98BC4FC(v40, v41, v42, a1);
        v15 = v14;
        v16 = *&v14[OBJC_IVAR___SNModelFeatureConnection_impl + v36];
        v17 = *&v14[OBJC_IVAR___SNModelFeatureConnection_impl + v35];

        v43 = v5;
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1C97B7B08(v18 > 1, v19 + 1, 1);
          v5 = v43;
        }

        *(v5 + 16) = v19 + 1;
        v20 = v5 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        if (v37)
        {
          if (!v13)
          {
            goto LABEL_41;
          }

          v21 = v5;
          if (sub_1C9A93498())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v26 = v34;
          sub_1C97A2CEC(&unk_1EC3D2300);
          v27 = sub_1C9A92B58();
          sub_1C9A93508();
          v27(v39, 0);
        }

        else
        {
          if (v13)
          {
            goto LABEL_42;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v21 = v5;
          v22 = 1 << *(a1 + 32);
          if (v12 >= v22)
          {
            goto LABEL_37;
          }

          v23 = v12 >> 6;
          v24 = *(a1 + 56 + 8 * (v12 >> 6));
          if (((v24 >> v12) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v38)
          {
            goto LABEL_39;
          }

          v25 = v24 & (-2 << (v12 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v26 = v34;
          }

          else
          {
            v28 = v23 << 6;
            v29 = v23 + 1;
            v30 = (a1 + 64 + 8 * v23);
            v26 = v34;
            while (v29 < (v22 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_1C97FDD94(v12, v38, 0);
                v22 = __clz(__rbit64(v31)) + v28;
                goto LABEL_32;
              }
            }

            sub_1C97FDD94(v12, v38, 0);
          }

LABEL_32:
          v33 = *(a1 + 36);
          v40 = v22;
          v41 = v33;
          v42 = 0;
        }

        v5 = v21;
        if (v8 == v26)
        {
          sub_1C97FDD94(v40, v41, v42);
          return;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_1C9A167CC(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

void sub_1C9A16824()
{
  sub_1C9A1C21C();
  if (v5)
  {
LABEL_18:
    if (!sub_1C9A1C1C4())
    {
      return;
    }
  }

  else if (!sub_1C9A1C210())
  {
    return;
  }

  sub_1C97BDEE0(v0);
  sub_1C9A1C1FC();
  v6 = 1;
  while (v1 != v2)
  {
    if (v3)
    {
      v7 = MEMORY[0x1CCA912B0](v2, v0);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v0 + 8 * v2 + 32);
    }

    v8 = v7;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_15;
    }

    v9 = [v7 integerValue];

    v10 = (v6 * v9) >> 64;
    v6 *= v9;
    ++v2;
    if (v10 != v6 >> 63)
    {
      goto LABEL_17;
    }
  }

  if (v6 >= 0xFFFFFFFF80000000)
  {
    if (v6 <= 0x7FFFFFFF)
    {
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_1C9A1692C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9A16950(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return 0;
  }

  if ((a4 >> 1) > a3)
  {
    return *(a2 + 8 * (a4 >> 1) - 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A16980(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1C9A92558();
  return sub_1C9A92618();
}

char *sub_1C9A16A18(uint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  sub_1C9A1C21C();
  if (!v4)
  {
    result = sub_1C9A1C210();
    if (!result)
    {
      return result;
    }

LABEL_3:
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) == 0)
      {
        return *(v2 + 8 * v6 + 32);
      }
    }

    return MEMORY[0x1CCA912B0](v6, v2);
  }

  result = sub_1C9A1C1C4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1C9A16AA0(void *a1, uint64_t a2)
{
  v3 = [a1 frameLength];
  if (a2 && v3 > a2)
  {
    v4 = [a1 audioBufferList];
    v5 = [a1 frameLength];
    v6 = [a1 format];
    v7 = [v6 streamDescription];

    v8 = 0;
    v24 = v7[6];
    v23 = v4 + 16;
    v22 = xmmword_1C9A9DF30;
    if (v5)
    {
      while (1)
      {
        v9 = [a1 format];
        v10 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v9 frameCapacity:a2];

        if (!v10)
        {
          break;
        }

        v11 = [v10 mutableAudioBufferList];
        if (v5 >= a2)
        {
          v12 = a2;
        }

        else
        {
          v12 = v5;
        }

        v13 = v12 * v24;
        if ((v13 & 0xFFFFFFFF00000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          break;
        }

        v15 = (v11 + 4);
        v14 = *v11;
        v16 = v23;
        if (*v11)
        {
          while (*v16)
          {
            if (!*v15)
            {
              goto LABEL_23;
            }

            memmove(*v15, (*v16 + v8), v13);
            *(v15 - 1) = v13;
            v15 += 2;
            v16 += 2;
            if (!--v14)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_22;
        }

LABEL_13:
        [v10 setFrameLength_];
        v17 = __OFADD__(v8, v13);
        v8 += v13;
        if (v17)
        {
          goto LABEL_20;
        }

        v18 = v5 >= v12;
        v5 -= v12;
        if (!v18)
        {
          goto LABEL_21;
        }

        sub_1C97A2CEC(&unk_1EC3C6E20);
        inited = swift_initStackObject();
        *(inited + 16) = v22;
        *(inited + 32) = v10;
        sub_1C98D0070(inited);
        if (!v5)
        {
          return;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_1C97A2CEC(&unk_1EC3C6E20);
    sub_1C97DAA28();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C9A9DF30;
    *(v20 + 32) = a1;
    v21 = a1;
  }
}

void sub_1C9A16CF4(uint64_t a1@<X8>)
{
  v2 = SecTaskCreateFromSelf(0);
  if (v2)
  {
    v3 = v2;
    sub_1C9A191B8(v2, a1);
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000016, 0x80000001C9ADECE0);
    swift_willThrow();
  }
}

uint64_t sub_1C9A16DC8()
{
  sub_1C9A1C21C();
  if (v1)
  {
    result = sub_1C9A1C1C4();
  }

  else
  {
    result = sub_1C9A1C210();
  }

  if (result != 1)
  {
    v3 = result - 2;
    if (result >= 2)
    {
      sub_1C97C4F68(result - 2, (v0 & 0xC000000000000001) == 0, v0);
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1CCA912B0](v3, v0);
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      sub_1C9A180B0(v4);
      v7 = v6;

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1C9A16E60(void *a1)
{
  v1 = [a1 shapeConstraint];
  v2 = [v1 sizeRangeForDimension];

  sub_1C97BD318(0, &qword_1EC3C5690);
  v3 = sub_1C9A92798();

  sub_1C9A1C17C();
  v5 = sub_1C9A16A18(v3, v4);

  if (!v5)
  {
    return 0;
  }

  [v5 rangeValue];
  v7 = v6;

  return v7 > 1;
}

id sub_1C9A16F28(void *a1)
{
  v1 = [a1 shapeConstraint];
  v2 = [v1 sizeRangeForDimension];

  sub_1C97BD318(0, &qword_1EC3C5690);
  v3 = sub_1C9A92798();

  sub_1C9A1C17C();
  v5 = sub_1C9A16A18(v3, v4);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 rangeValue];

  return v6;
}

uint64_t sub_1C9A17004(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v3 = sub_1C9A92328();

  v4 = sub_1C98BBCAC(v3);

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [v4 multiArrayConstraint];

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v5 shape];

  sub_1C97BD318(0, &qword_1EC3C54B0);
  sub_1C98573EC();
  v7 = sub_1C9A92798();

  return v7;
}

void sub_1C9A17104(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1C97BDEE0(a1);
  sub_1C9A1C1FC();
  while (v1 != v2)
  {
    if (v3)
    {
      v6 = MEMORY[0x1CCA912B0](v2, a1);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v2 + 32);
    }

    v7 = v6;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v6 integerValue] <= 1)
    {
    }

    else
    {
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
    }

    ++v2;
  }

  v8 = sub_1C97BDEE0(v9);

  if (v8 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_1C9A17240(void *a1, int32_t a2)
{
  v5 = sub_1C9A18A88(a1);
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    v9 = [a1 inputDescriptionsByName];
    sub_1C97BD318(0, &qword_1EC3C54D0);
    v10 = sub_1C9A92328();

    v11 = sub_1C98782A4(v7, v8, v10);

    if (v11 && (v12 = [v11 multiArrayConstraint]) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_shapeConstraint), v13, v14))
    {
      sub_1C9A17BD8(v14, a2);
    }

    else
    {
      sub_1C97A8E8C();
      sub_1C97AA928();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
    }
  }
}

CMTimeValue sub_1C9A17398(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, id a4)
{
  v4 = a4;
  *&v18.timescale = a2;
  v18.epoch = a3;
  v18.value = a1;
  v5 = [a4 type];
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      [v4 durationRange];
      time = v18;
      CMTimeClampToRange(&v19, &time, &range);
      return v19.value;
    }

    return *MEMORY[0x1E6960C70];
  }

  v6 = &off_1E8348000;
  v7 = [v4 enumeratedDurations];
  sub_1C97BD318(0, &qword_1EC3C5690);
  v8 = sub_1C9A92798();

  if (!sub_1C97BDEE0(v8))
  {

    return *MEMORY[0x1E6960C70];
  }

  sub_1C97C4F68(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v9 = MEMORY[0x1CCA912B0](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  [v10 CMTimeValue];
  value = range.start.value;

  v12 = [v4 *(v6 + 3104)];
  v8 = sub_1C9A92798();

  v13 = sub_1C97BDEE0(v8);
  v14 = 0;
  do
  {
    v4 = value;
    if (v13 == v14)
    {
      break;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA912B0](v14, v8);
    }

    else
    {
      if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v15 = *(v8 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v15 CMTimeValue];
    value = range.start.value;
    v6 = sub_1C9A93148();

    ++v14;
  }

  while ((v6 & 1) != 0);

  return v4;
}

uint64_t sub_1C9A17664(void *a1)
{
  v2 = sub_1C9A1BF24(a1);
  if (!v2 || (v3 = sub_1C99D2B24(v2), , !v3))
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for SNModelMetadataUtils();
  result = sub_1C9A3C55C(a1, MEMORY[0x1E69E7CD0]);
  v5 = result;
  v6 = 0;
  v7 = *(v3 + 16);
  v23 = v3 + 32;
  v8 = result + 56;
  v9 = MEMORY[0x1E69E7CC0];
  for (i = v3; ; v3 = i)
  {
LABEL_5:
    if (v6 == v7)
    {

      return v9;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    v10 = (v23 + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    ++v6;
    if (*(v5 + 16))
    {
      sub_1C9A93CC8();

      sub_1C9A92528();
      v13 = sub_1C9A93D18();
      v14 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(v8 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        v16 = (*(v5 + 48) + 16 * v15);
        if (*v16 != v12 || v16[1] != v11)
        {
          v18 = sub_1C9A93B18();
          v13 = v15 + 1;
          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C97B7B08(0, *(v9 + 16) + 1, 1);
    }

    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1C97B7B08(v19 > 1, v20 + 1, 1);
    }

    *(v9 + 16) = v20 + 1;
    v21 = v9 + 16 * v20;
    *(v21 + 32) = v12;
    *(v21 + 40) = v11;
  }

  __break(1u);
  return result;
}

id sub_1C9A17870()
{
  v0 = sub_1C9A17B54(15600);
  v1 = sub_1C9A18184();
  sub_1C97BD318(0, &qword_1EC3D0088);
  v2 = sub_1C9A18BC4(v0, 65568);
  v3 = sub_1C9A18BC4(v1, 65600);
  sub_1C97BD318(0, &qword_1EC3C54D0);
  sub_1C97A2CEC(&unk_1EC3C6E20);
  sub_1C97DAA28();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9A9DF30;
  *(v4 + 32) = v2;
  v26 = v2;
  v5 = sub_1C9A1826C(0x72724169746C754DLL, 0xEF7475706E497961, 5, 0, v4);
  sub_1C97DAA28();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C9A9DF30;
  *(v6 + 32) = v3;
  v25 = v3;
  v7 = sub_1C9A1826C(0xD000000000000010, 0x80000001C9ADED20, 5, 0, v6);
  sub_1C97A2CEC(&qword_1EC3D0090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  v9 = [v5 name];
  v10 = sub_1C9A924A8();
  v12 = v11;

  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = v5;
  v13 = v5;
  v14 = sub_1C9A92348();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1C9A9EDD0;
  v16 = [v7 name];
  v17 = sub_1C9A924A8();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  *(v15 + 48) = v7;
  v20 = v7;
  v21 = sub_1C9A92348();
  v22 = objc_allocWithZone(MEMORY[0x1E695FEC0]);
  v23 = sub_1C999BB18(v14, v21, 0, 0xE000000000000000, 0, 0xE000000000000000, 0);

  return v23;
}

uint64_t sub_1C9A17B54(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1C9A93698();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C9A1C23C();
  sub_1C9A1C1A4();
  sub_1C97BE288();
  sub_1C9A936B8();
  sub_1C9A93688();
  return v3;
}

void sub_1C9A17BD8(void *a1, int32_t a2)
{
  v4 = [a1 type];
  if (v4 == 3)
  {
    v23 = [a1 sizeRangeForDimension];
    sub_1C97BD318(0, &qword_1EC3C5690);
    v24 = sub_1C9A92798();

    if (sub_1C97BDEE0(v24))
    {
      sub_1C9A1C17C();
      v26 = sub_1C9A16A18(v24, v25);

      if (v26)
      {
        v27 = [v26 rangeValue];
        v29 = v28;

        if ((a2 & 0x80000000) == 0)
        {
          CMTimeMake(&v50.start, v27, a2);
          value = v50.start.value;
          epoch = v50.start.epoch;
          v32 = *&v50.start.timescale;
          CMTimeMake(&v50.start, v29, a2);
          *&v46 = value;
          *(&v46 + 1) = v32;
          *&v47 = epoch;
          duration = v50.start;
          CMTimeRangeMake(&v50, &v46, &duration);
          v33 = objc_allocWithZone(SNTimeDurationConstraint);
          [v33 initWithDurationRange_];
          return;
        }

        goto LABEL_38;
      }

      sub_1C9A1BF80();
      sub_1C97AA928();
      swift_allocError();
      swift_willThrow();
LABEL_31:
      sub_1C97BD318(0, &qword_1EC3D2328);
      sub_1C9A18A00();

      return;
    }

    v43 = objc_allocWithZone(SNTimeDurationConstraint);
    v44 = *(MEMORY[0x1E6960C98] + 16);
    *&v50.start.value = *MEMORY[0x1E6960C98];
    *&v50.start.epoch = v44;
    *&v50.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
LABEL_27:
    [v43 initWithDurationRange_];
    return;
  }

  if (v4 != 2)
  {
    if (a2 < 0)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v34 = sub_1C9A93168();
    v36 = v35;
    v38 = v37;
    v39 = HIDWORD(v35);
    v40 = MEMORY[0x1E6960C88];
    v41 = *MEMORY[0x1E6960C88];
    v42 = *(MEMORY[0x1E6960C88] + 16);
    v43 = objc_allocWithZone(SNTimeDurationConstraint);
    v50.start.value = v34;
    v50.start.timescale = v36;
    v50.start.flags = v39;
    v50.start.epoch = v38;
    v50.duration.value = v41;
    *&v50.duration.timescale = *(v40 + 8);
    v50.duration.epoch = v42;
    goto LABEL_27;
  }

  v5 = [a1 enumeratedShapes];
  sub_1C97A2CEC(&qword_1EC3CBA20);
  v6 = sub_1C9A92798();

  v7 = *(v6 + 16);
  if (v7)
  {
    *&v46 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      v9 = *(v6 + 8 * v8 + 32);
      if (v9 >> 62)
      {
        v10 = sub_1C9A934C8();
        if (!v10)
        {
LABEL_28:

          sub_1C97A8E8C();
          sub_1C97AA928();
          swift_allocError();
          *v45 = 0;
          swift_willThrow();

          goto LABEL_31;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_28;
        }
      }

      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        goto LABEL_33;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {

        v13 = MEMORY[0x1CCA912B0](v11, v9);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v12 = *(v9 + 8 * v11 + 32);

        v13 = v12;
      }

      v14 = v13;
      [v13 integerValue];
      if (a2 < 0)
      {
        goto LABEL_35;
      }

      ++v8;
      v15 = sub_1C9A93168();
      v17 = v16;
      v19 = v18;
      v20 = HIDWORD(v16);
      v21 = objc_opt_self();
      v50.start.value = v15;
      v50.start.timescale = v17;
      v50.start.flags = v20;
      v50.start.epoch = v19;
      v22 = [v21 valueWithCMTime_];

      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      if (v7 == v8)
      {

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_29:
  sub_1C97BD318(0, &qword_1EC3D2328);
  sub_1C97C926C();
  sub_1C9A18A00();
}

void sub_1C9A180B0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v4 = [a1 compare_];
  v5 = v2;
  if (v4 != 1)
  {
    if ([a1 compare_] == -1)
    {
      v5 = v3;
    }

    else
    {
      v5 = a1;
    }
  }

  v6 = v5;
  v7 = [v6 unsignedLongLongValue];

  if (HIDWORD(v7))
  {
    __break(1u);
  }
}

uint64_t sub_1C9A18184()
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1C9A93698();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C9A1C23C();
  sub_1C9A1C1A4();
  sub_1C97BE288();
  sub_1C9A936B8();
  sub_1C9A93688();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C9A1C23C();
  sub_1C9A1C1A4();
  sub_1C97BE288();
  sub_1C9A936B8();
  sub_1C9A93688();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C9A1C23C();
  sub_1C9A1C1A4();
  sub_1C97BE288();
  sub_1C9A936B8();
  sub_1C9A93688();
  return v1;
}

id sub_1C9A1826C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1C9A92478();

  if (a5)
  {
    sub_1C97A2CEC(&unk_1EC3D2310);
    v9 = sub_1C9A92768();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() featureDescriptionWithName:v8 type:a3 optional:a4 & 1 constraints:v9];

  return v10;
}

uint64_t sub_1C9A18330(void *a1)
{
  v1 = [a1 description];
  sub_1C9A924A8();

  sub_1C98449A8();
  v2 = sub_1C9A932E8();

  type metadata accessor for SNDetectSoundRequest();
  sub_1C98573EC();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();

    v3 = sub_1C97F57F4();
    v2 = sub_1C9A924A8();

    swift_unknownObjectRelease();
  }

  return v2;
}

void sub_1C9A1843C(uint64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for KShotSegment(0);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v6 = sub_1C97BDEE0(a1);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C97B7B08(0, v6 & ~(v6 >> 63), 0);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }

    v37 = a2;
    v9 = 0;
    v7 = v51;
    v40 = v42 & 0xC000000000000001;
    v38 = v42 & 0xFFFFFFFFFFFFFF8;
    v39 = v8;
    while (v9 < v8)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      if (v40)
      {
        v11 = MEMORY[0x1CCA912B0](v9, v42);
      }

      else
      {
        if (v9 >= *(v38 + 16))
        {
          goto LABEL_24;
        }

        v11 = *(v42 + 8 * v9 + 32);
      }

      v12 = v11;
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_1C9A935B8();

      v46 = 0x3D20656D614E207BLL;
      v47 = 0xE900000000000020;
      v13 = &v12[OBJC_IVAR___SNKShotSegment_impl];
      swift_beginAccess();
      sub_1C97B1CB8(v13, v5);
      a2 = *(v41 + 20);
      v14 = sub_1C9A91478();
      v16 = v15;
      v17 = sub_1C9A91558();
      (*(*(v17 - 8) + 8))(&v5[a2], v17);
      MEMORY[0x1CCA90230](v14, v16);

      MEMORY[0x1CCA90230](0x6152656D6974203BLL, 0xEE00203D2065676ELL);
      v18 = *(v13 + 2);
      v49 = *(v13 + 1);
      v50 = v18;
      v48 = *v13;
      v43 = v48;
      v44 = v49;
      v45 = v18;
      v19 = sub_1C9A924F8();
      MEMORY[0x1CCA90230](v19);

      MEMORY[0x1CCA90230](32032, 0xE200000000000000);

      v20 = v46;
      v21 = v47;
      v51 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C97B7B08(v22 > 1, v23 + 1, 1);
        v7 = v51;
      }

      *(v7 + 16) = v23 + 1;
      v24 = v7 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      ++v9;
      v8 = v39;
      if (v10 == v39)
      {
        a2 = v37;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_14:
  if (qword_1EC3C5520 != -1)
  {
LABEL_25:
    swift_once();
  }

  v25 = sub_1C9A91B58();
  sub_1C97BFF6C(v25, qword_1EC3D3108);
  sub_1C97C926C();

  v26 = sub_1C9A91B38();
  v27 = sub_1C9A92FC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = *(v7 + 16);

    *(v28 + 12) = 2048;
    *(v28 + 14) = a2;
    _os_log_impl(&dword_1C9788000, v26, v27, "[Custom Sound Recognition Model Training] Completed segmentation successfully. Segment count: %ld. Exemplar index: %ld.", v28, 0x16u);
    MEMORY[0x1CCA93280](v28, -1, -1);
  }

  else
  {
  }

  v29 = sub_1C9A91B38();
  v30 = sub_1C9A92FC8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v48 = v32;
    *v31 = 136315138;
    *&v43 = v7;
    sub_1C97A2CEC(&qword_1EC3C7BF0);
    sub_1C98449FC();
    v33 = sub_1C9A923C8();
    v35 = v34;

    v36 = sub_1C9849140(v33, v35, &v48);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1C9788000, v29, v30, "[Custom Sound Recognition Model Training] Segments: %s).", v31, 0xCu);
    sub_1C97A592C(v32);
    sub_1C9A1C1E0();
    MEMORY[0x1CCA93280](v31, -1, -1);
  }

  else
  {
  }
}

id sub_1C9A18A00()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C97BD318(0, &qword_1EC3C5690);
  v1 = sub_1C9A92768();

  v2 = [v0 initWithEnumeratedDurations_];

  return v2;
}

uint64_t sub_1C9A18A88(void *a1)
{
  v1 = sub_1C9A18E9C(a1, 0);
  v2 = v1;
  if (*(v1 + 16) == 1)
  {
    v3 = *(v1 + 32);
  }

  else
  {
    v4 = type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000034, 0x80000001C9ADEE30);
    v5 = MEMORY[0x1CCA90460](v2, MEMORY[0x1E69E6158]);
    v7 = v6;

    MEMORY[0x1CCA90230](v5, v7);

    v3 = v4;
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0, 0xE000000000000000);

    swift_willThrow();
  }

  return v3;
}

id sub_1C9A18BC4(uint64_t a1, uint64_t a2)
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v3 = sub_1C9A92768();

  v4 = [swift_getObjCClassFromMetadata() constraintWithShape:v3 dataType:a2];

  return v4;
}

void sub_1C9A18C50(uint64_t a1, unsigned int a2)
{
  sub_1C9A1C21C();
  if (v4)
  {
    v5 = sub_1C9A1C1C4();
  }

  else
  {
    v5 = sub_1C9A1C210();
  }

  v6 = v5 - 2;
  if (v5 >= 2 && a2 >= 2)
  {
    sub_1C97C4F68(v5 - 2, (v2 & 0xC000000000000001) == 0, v2);
    v10 = v2 + 8 * v6;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA912B0](v6, v2);
    }

    else
    {
      v11 = *(v10 + 32);
    }

    v12 = v11;
    v13 = [v11 integerValue];

    if (v13 == a2)
    {
      sub_1C9A16824();
      if ((v14 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v15 = v14;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1CCA912B0](v6, v2);
        }

        else
        {
          v16 = *(v10 + 32);
        }

        v17 = v16;
        v18 = [v16 unsignedIntegerValue];

        if (v18)
        {
          v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }

  else if (a2 == 1)
  {
    sub_1C9A16824();
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
LABEL_19:
    v19 = v9;
    sub_1C9A180B0(v9);
  }
}

uint64_t sub_1C9A18E9C(void *a1, char a2)
{
  type metadata accessor for SNModelMetadataUtils();
  v4 = sub_1C9A3C5D4(a1, MEMORY[0x1E69E7CD0]);
  if (a2)
  {
    v5 = &selRef_outputDescriptionsByName;
  }

  else
  {
    v5 = &selRef_inputDescriptionsByName;
  }

  sub_1C9A16494(v4, a2 & 1);

  v6 = [a1 *v5];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v7 = sub_1C9A92328();

  sub_1C9A41578(v7);
  v8 = sub_1C98573EC();
  sub_1C9A1B308(v8, v9);
  sub_1C97C926C();

  return sub_1C9A084B4(v6);
}

uint64_t sub_1C9A19010()
{
  result = sub_1C9A19034();
  byte_1EC3D3480 = result & 1;
  return result;
}

uint64_t sub_1C9A19034()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_1C9A924A8();
  v4 = v3;

  if (v2 == 0x616E61646E756F73 && v4 == 0xEE0064736973796CLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_1C9A93B18();

    return v6 & 1;
  }
}

uint64_t sub_1C9A19154()
{
  result = os_variant_allows_internal_security_policies();
  byte_1EC3D3138 = result;
  return result;
}

void sub_1C9A191B8(__SecTask *a1@<X2>, uint64_t a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v4 = sub_1C9A92478();
  v5 = SecTaskCopyValueForEntitlement(a1, v4, v14);

  v6 = v14[0];
  if (v14[0])
  {
    if (!v5)
    {
      type metadata accessor for SNError();
      type metadata accessor for CFError(0);
      sub_1C9A1AE7C();
      sub_1C98573EC();
      sub_1C97AA928();
      v7 = swift_allocError();
      *v8 = v6;
      v9 = v6;
      v10 = sub_1C9A913B8();
      sub_1C98573F8();
      sub_1C9929478(0xD000000000000017, v13, 2, v10, v11 + 3, v12 | 0x8000000000000000);

      swift_willThrow();
      return;
    }

    goto LABEL_6;
  }

  if (v5)
  {
    v6 = 0;
LABEL_6:
    *(a2 + 24) = swift_getObjectType();

    *a2 = v5;
    return;
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

void *sub_1C9A19318()
{
  sub_1C97A2CEC(&unk_1EC3C6E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C9AC5740;
  sub_1C97BD318(0, &qword_1EC3C54B0);
  *(v1 + 32) = sub_1C9A931C8();
  *(v1 + 40) = sub_1C9A931C8();
  *(v1 + 48) = sub_1C9A931C8();
  v2 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v3 = sub_1C9A1AED4(v1, 65568);
  v4 = v3;
  if (v0)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    v6 = sub_1C9A1C194();
    sub_1C9929478(v6, v7, 2, v8, v9, v10);
    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3);
    v5 = v4;
    sub_1C9A92F58();
  }

  return v4;
}

id sub_1C9A194E8(_DWORD *a1, int a2, int a3, id a4)
{
  if (a1)
  {
    result = [a4 floatValue];
    *a1 = v6;
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A19570()
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  result = sub_1C9A92F58();
  if (!v0)
  {
    return v2;
  }

  return result;
}

id sub_1C9A195FC@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = *a1;
    v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v5) = v3;
    result = [v4 initWithFloat_];
    *a2 = result;
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1C9A1969C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a3;
  v7 = a5();

  return v7;
}

uint64_t sub_1C9A1973C(void *a1, uint64_t a2)
{
  [a1 setFrameLength_];
  v3 = [a1 mutableAudioBufferList];
  v4 = *v3;
  v5 = v3[3];
  v6 = *(v3 + 2);
  v7 = &v10;
  if (!*v3)
  {
    return 1;
  }

  while (1)
  {
    v9 = v5;
    v10 = v6;
    result = *v7;
    if (!*v7)
    {
      break;
    }

    bzero(result, *(v7 - 1));
    v7 += 2;
    if (!--v4)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A19874(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

void sub_1C9A198E8(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, int64_t, void *))
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = *([a1 audioBufferList] + 2);
  if (!v5)
  {
LABEL_7:
    __break(1u);
  }

  v6 = [a1 format];
  v7 = [v6 streamDescription];

  v8 = v7[8];
  v9 = [a1 frameLength];
  v10 = v8 * v9;
  if ((v8 * v9) >> 64 != v10 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18[0] = 0;
  if ((a3(v5, v10 / 8, v18) & 1) == 0)
  {
    v11 = v18[0];
    type metadata accessor for SNError();
    v12 = v11;
    v13 = sub_1C9A1C194();
    sub_1C9929478(v13, v14, 1, v15, v16, v17);
    swift_willThrow();
  }
}

void sub_1C9A19A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a1;
  v13[5] = v8;
  v14[0] = 0;
  v13[4] = sub_1C9A1C170;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C9A19DA0;
  v13[3] = &unk_1F494E4C0;
  v9 = _Block_copy(v13);
  v10 = a4[2];

  LOBYTE(v10) = v10(a4, v9, v14);
  _Block_release(v9);

  if (v10)
  {
  }

  else
  {
    v11 = v14[0];
    type metadata accessor for SNError();
    v12 = v11;
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    swift_willThrow();
  }

  _Block_release(a4);
}

uint64_t sub_1C9A19C44(const void *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  v12 = *(a4 + 16);
  v13 = v12 + a2;
  if (__OFADD__(v12, a2))
  {
    __break(1u);
  }

  else
  {
    if (v13 > a5)
    {
      return v13 <= a5;
    }

    memcpy((a6 + v12), a1, a2);
    result = swift_beginAccess();
    v14 = *(a4 + 16);
    v15 = __OFADD__(v14, a2);
    v16 = v14 + a2;
    if (!v15)
    {
      *(a4 + 16) = v16;
      return v13 <= a5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A19DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  LOBYTE(a4) = v7(a2, a3, a4);

  return a4 & 1;
}

void sub_1C9A19E0C(void *a1, __n128 *a2, unsigned int a3, char a4, uint64_t (*a5)(void *, id, id *), uint64_t a6, uint64_t (*a7)(void *, id, id *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C97DAA28();
  v16 = swift_allocObject();
  v16[2] = v10;
  v16[3] = a9;
  v16[4] = a10;
  type metadata accessor for SNAudioFileUtils();
  v17 = a2[2].n128_i32[0];

  sub_1C99C8CCC(a1, v17);
  if (v11)
  {
  }

  else
  {
    v19 = v18;
    [v18 setFramePosition_];
    sub_1C99C98E8(v19, a2, 0, a3, a4 & 1, a5, a6, a7, a8, sub_1C9A1C028, v16);
  }
}

uint64_t sub_1C9A19F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, int64_t, void *))
{
  v5 = a1;

  sub_1C9A198E8(v5, v6, a4);

  return 1;
}

void sub_1C9A1A18C(void *a1, __n128 *a2, unsigned int a3, char a4, uint64_t (*a5)(void *, id, id *), uint64_t a6, uint64_t (*a7)(void *, id, id *), uint64_t a8, uint64_t a9)
{
  v15 = [a1 processingFormat];
  v16 = [v15 commonFormat];

  if (v16 != 1 || !a9)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    v21 = sub_1C9A1C194();
    sub_1C9929478(v21, v22, 2, v23, v24, v25);
    swift_willThrow();
    return;
  }

  v17 = a9 - 1;
  if (__OFSUB__(a9, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v17 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v41 = a3;
  v42 = a5;
  v43 = a7;
  v18 = MEMORY[0x1E69E7CC0];
  if (a9 == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C97B8378();
    v19 = v47;
    v20 = *(v47 + 16);
    do
    {
      if (v20 >= *(v47 + 24) >> 1)
      {
        sub_1C97B8378();
      }

      *(v47 + 16) = v20 + 1;
      *(v47 + 8 * v20++ + 32) = 1;
      --v17;
    }

    while (v17);
  }

  sub_1C97A2CEC(&qword_1EC3C68E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2[1].n128_u64[1];
  sub_1C98D0864(inited);
  v27 = *(v19 + 16);
  if (v27)
  {
    sub_1C9A93698();
    v28 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v28 += 8;
      --v27;
    }

    while (v27);

    v29 = v18;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v31 = sub_1C9A1AED4(v29, 65568);
  if (!v45)
  {
    v32 = v31;
    v33 = a1;
    swift_retain_n();
    swift_retain_n();
    v34 = v33;
    v35 = [v32 dataPointer];
    v36 = [v32 count];
    if ((v36 - 0x2000000000000000) >> 62 == 3)
    {
      v37 = 4 * v36;
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      sub_1C97DAA28();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = v37;
      v39[4] = v35;
      v40 = v34;

      sub_1C9A19E0C(v40, a2, v41, a4 & 1, v42, a6, v43, a8, sub_1C9A1C01C, v39);

      return;
    }

    goto LABEL_24;
  }
}

uint64_t sub_1C9A1A82C(uint64_t a1, double a2)
{
  v39 = a1;
  v35 = sub_1C9A92108();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C9A92188();
  sub_1C97AE9C8();
  v37 = v9;
  v38 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - v13;
  v14 = dispatch_semaphore_create(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = -1;
  sub_1C97BD318(0, &qword_1EC3C54C0);
  v16 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;

  v18 = v14;
  sub_1C9A93188();

  result = sub_1C9A92168();
  v20 = a2 * 1000.0;
  if (COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *v7 = v20;
  v21 = v35;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E7F38], v35);
  v22 = v36;
  sub_1C9A92178();
  (*(v4 + 8))(v7, v21);
  v23 = v38;
  v24 = *(v37 + 8);
  v24(v12, v38);
  sub_1C9A930C8();
  if ((sub_1C9A92118() & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C98573F8();
    v26 = sub_1C9A1C194();
LABEL_10:
    sub_1C9929478(v26, v27, 1, v28, v29, v30);
    goto LABEL_11;
  }

  swift_beginAccess();
  v25 = *(v15 + 24);
  if (v25 == 255)
  {
    type metadata accessor for SNError();
    v29 = 0x6C65646F6D206F6ELL;
    v30 = 0xEF646564616F6C20;
    v27 = 0x80000001C9AD4AA0;
    v26 = 0xD000000000000017;
    v28 = 0;
    goto LABEL_10;
  }

  if (v25)
  {
    sub_1C97E82A8(*(v15 + 16));
LABEL_11:
    swift_willThrow();

    v24(v22, v23);
  }

  v31 = *(v15 + 16);
  v32 = v22;
  v33 = v31;
  v24(v32, v23);

  return v33;
}

uint64_t sub_1C9A1AC58(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = a1;
  v7 = *(a3 + 24);
  *(a3 + 24) = a2 & 1;
  sub_1C9A1BFE0(v6, v7);
  sub_1C97E82A8(a1);
  return sub_1C9A930D8();
}

unint64_t sub_1C9A1AE7C()
{
  result = qword_1EC3D22E8;
  if (!qword_1EC3D22E8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22E8);
  }

  return result;
}

id sub_1C9A1AED4(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v4 = sub_1C9A92768();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C9A1AFD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v35[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v35[0] = a1;
    v33 = *(a1 + 16);
    if (v33)
    {
      v3 = 0;
      v4 = a2 + 56;
      v5 = a1 + 32;
      v6 = *(a2 + 40);
      v31 = -1 << *(a2 + 32);
      v32 = v6;
      v7 = ~v31;
      v34 = a1;
      while (2)
      {
        v8 = v5;
        v9 = *(v5 + 8 * v3);
        v3 = (v3 + 1);
        for (i = sub_1C9A93CB8(); ; i = v11 + 1)
        {
          v11 = i & v7;
          v12 = (i & v7) >> 6;
          v13 = 1 << (i & v7);
          if ((v13 & *(v4 + 8 * v12)) == 0)
          {
            break;
          }

          if (*(*(v2 + 48) + 8 * v11) == v9)
          {
            v35[1] = v3;
            v14 = (63 - v31) >> 6;
            v15 = 8 * v14;
            v32 = v14;
            if (v14 > 0x80)
            {
              goto LABEL_31;
            }

            v16 = v34;

            while (1)
            {
              v33 = &v31;
              MEMORY[0x1EEE9AC00](v17);
              v11 = &v31 - v18;
              memcpy(&v31 - v18, (v2 + 56), v15);
              v19 = *(v2 + 16);
              *(v11 + 8 * v12) &= ~v13;
              v15 = v19 - 1;
              v20 = *(v16 + 16);
              if (v3 == v20)
              {
                break;
              }

              v12 = *(v2 + 40);
              v14 = ~(-1 << *(v2 + 32));
              while (v3 < v20)
              {
                v21 = *(v8 + 8 * v3);
                v3 = (v3 + 1);
                v22 = sub_1C9A93CB8();
                do
                {
                  v23 = v22 & v14;
                  v24 = (v22 & v14) >> 6;
                  v25 = 1 << (v22 & v14);
                  if ((v25 & *(v4 + 8 * v24)) == 0)
                  {
                    v13 = v34;
                    goto LABEL_25;
                  }

                  v22 = v23 + 1;
                }

                while (*(*(v2 + 48) + 8 * v23) != v21);
                v26 = *(v11 + 8 * v24);
                *(v11 + 8 * v24) = v26 & ~v25;
                v13 = v34;
                if ((v26 & v25) != 0)
                {
                  if (__OFSUB__(v15--, 1))
                  {
                    goto LABEL_30;
                  }

                  if (!v15)
                  {

                    v2 = MEMORY[0x1E69E7CD0];
                    goto LABEL_27;
                  }
                }

LABEL_25:
                v20 = *(v13 + 16);
                if (v3 == v20)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                v29 = swift_slowAlloc();
                v30 = sub_1C9A1BA14(v29, v14, (v2 + 56), v14, v2, v11, v35);

                sub_1C9A1C1E0();

                return v30;
              }

              v16 = v34;
            }

LABEL_26:
            v2 = sub_1C9A1BB24(v11, v32, v15, v2);
LABEL_27:

            return v2;
          }
        }

        v5 = v8;
        if (v3 != v33)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C9A1B308(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1C9A93CC8();

      sub_1C9A92528();
      v9 = sub_1C9A93D18();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_1C9A93B18() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_1C9A1BA9C(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x1CCA93280](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_1C9A1BD08(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_1C9A93CC8();

          sub_1C9A92528();
          v25 = sub_1C9A93D18();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_1C9A93B18();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C9A1B710(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_11:

    return sub_1C9A1BB24(v7, a2, v9, a3);
  }

  while (2)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < v12)
    {
      v14 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      result = sub_1C9A93CB8();
      v15 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v16 = result & v15;
        v17 = (result & v15) >> 6;
        v18 = 1 << (result & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          break;
        }

        result = v16 + 1;
        if (*(*(a3 + 48) + 8 * v16) == v14)
        {
          v19 = v7[v17];
          v7[v17] = v19 & ~v18;
          if ((v19 & v18) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_15;
            }

            if (!v9)
            {
              return MEMORY[0x1E69E7CD0];
            }
          }

          break;
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 != v12)
      {
        continue;
      }

      goto LABEL_11;
    }

    break;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C9A1B868(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1C9A1BD08(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1C9A93CC8();

    sub_1C9A92528();
    v14 = sub_1C9A93D18();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1C9A93B18();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C9A1BA14(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1C9A1B710(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1C9A1BA9C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1C9A1B868(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1C9A1BB24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3D2330);
  result = sub_1C9A93588();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1C9A93CB8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C9A1BD08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3D22F8);
  result = sub_1C9A93588();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C9A93CC8();

    sub_1C9A92528();
    result = sub_1C9A93D18();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}