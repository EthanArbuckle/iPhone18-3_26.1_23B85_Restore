uint64_t SNDetectSoundRequest.description.getter()
{
  ObjectType = swift_getObjectType();
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1C9A935B8();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, sel_description);
  v3 = sub_1C9A924A8();
  v5 = v4;

  MEMORY[0x1CCA90230](v3, v5);

  MEMORY[0x1CCA90230](0x6669746E65646920, 0xED0000203A726569);
  v7 = sub_1C97F57F4();
  type metadata accessor for SNSoundIdentifier(0);
  sub_1C9A93728();

  return v9;
}

void sub_1C97F6C7C(uint64_t *a1@<X8>)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C97F5A48(v5);
  if (v1)
  {
    objc_autoreleasePoolPop(v3);
  }

  else
  {
    type metadata accessor for SNSoundDetector();
    v4 = swift_allocObject();
    sub_1C97F7D34(v5);
    objc_autoreleasePoolPop(v3);
    a1[3] = swift_getObjectType();
    *a1 = v4;
  }
}

void sub_1C97F6DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v63 = v24;
  ObjectType = swift_getObjectType();
  sub_1C97A2CEC(&qword_1EC3C7D88);
  sub_1C97AE9C8();
  v60 = v26;
  v61 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  v59 = &v52 - v28;
  v29 = *(v20 + OBJC_IVAR___SNDetectSoundRequest_impl + 16);
  v71 = *(v20 + OBJC_IVAR___SNDetectSoundRequest_impl);
  v72[0] = v29;
  *(v72 + 9) = *(v20 + OBJC_IVAR___SNDetectSoundRequest_impl + 25);
  sub_1C97A6BCC(&v71, v65);
  v30 = MGGetProductType();
  sub_1C989B2F8(v30, v66);
  if (v66[6])
  {
    v31 = v66[0];

    sub_1C989ACF0(v31, v67);
    v32 = v69;
    v70 = v67[1];

    sub_1C97F9D3C(&v70, &qword_1EC3C7DB0);
    a10 = v68;
    sub_1C97F9D3C(&a10, &qword_1EC3C7DB8);

    v32(v65, v33);

    v34 = v65[0];
    v35 = v65[1];
    v37 = v65[2];
    v36 = v65[3];
    v39 = v65[4];
    v38 = v65[5];
    v40 = v65[6];
    v41 = BYTE1(v65[6]);
    v42 = BYTE2(v65[6]);
    v43 = BYTE3(v65[6]);
    v44 = BYTE4(v65[6]);
    v45 = BYTE5(v65[6]);
    v46 = v65[7];
    v47 = v65[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(v65, &qword_1EC3D33B0, 0x41uLL);
    v58 = v65[7];
    v56 = BYTE5(v65[6]);
    v57 = LOBYTE(v65[8]);
    v54 = BYTE3(v65[6]);
    v55 = BYTE4(v65[6]);
    v53 = BYTE2(v65[6]);
    v41 = BYTE1(v65[6]);
    v40 = v65[6];
    v39 = v65[4];
    v38 = v65[5];
    v37 = v65[2];
    v36 = v65[3];
    v34 = v65[0];
    v35 = v65[1];
    sub_1C97A6264(v65, v64);
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v45 = v56;
    v47 = v57;
    v46 = v58;
  }

  v65[0] = v34;
  v65[1] = v35;
  v65[2] = v37;
  v65[3] = v36;
  v65[4] = v39;
  v65[5] = v38;
  LOBYTE(v65[6]) = v40;
  BYTE1(v65[6]) = v41;
  BYTE2(v65[6]) = v42;
  BYTE3(v65[6]) = v43;
  BYTE4(v65[6]) = v44;
  BYTE5(v65[6]) = v45;
  v65[7] = v46;
  LOBYTE(v65[8]) = v47;
  memcpy(v73, v65, sizeof(v73));
  v48 = sub_1C985F7B4();
  sub_1C97F91D8(&v71);
  sub_1C97E8084(v65);
  if (!v21)
  {
    v64[0] = v48;
    sub_1C97A2CEC(&unk_1EC3C7D90);
    sub_1C97A2CEC(&unk_1EC3C8670);
    sub_1C97F9CFC(&unk_1EC3C7DA0);
    v49 = v59;
    sub_1C9A91F68();

    sub_1C97E8518();
    sub_1C97F9CFC(v50);
    v51 = v61;
    sub_1C9A91F28();
    (*(v60 + 8))(v49, v51);
  }

  sub_1C97AEB5C();
}

id sub_1C97F71A4@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = type metadata accessor for SNDetectionResult();
  v4 = objc_allocWithZone(v3);
  memcpy(&v4[OBJC_IVAR___SNDetectionResult_impl], __dst, 0x60uLL);
  sub_1C97F9900(__dst, v7);
  v6.receiver = v4;
  v6.super_class = v3;
  result = objc_msgSendSuper2(&v6, sel_init);
  *a2 = result;
  return result;
}

void sub_1C97F7238()
{
  sub_1C97AEB94();
  v1 = v0;
  type metadata accessor for SNUtils();
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 16);
  v4 = v3(ObjectType, v1);
  v5 = sub_1C9A18E9C(v4, 0);

  if (*(v5 + 16) != 1)
  {
    type metadata accessor for SNError();
    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD000000000000046, 0x80000001C9AD53F0);
    v11 = MEMORY[0x1CCA90460](v5, MEMORY[0x1E69E6158]);
    v13 = v12;

    MEMORY[0x1CCA90230](v11, v13);

    v14 = sub_1C97FB260();
    sub_1C9929478(v14, v15, v16, v17, v18, 0xE000000000000000);
    sub_1C97FB324();
LABEL_9:

    swift_willThrow();
    goto LABEL_10;
  }

  v6 = v3(ObjectType, v1);
  v7 = sub_1C9A18E9C(v6, 1);

  v8 = *(v7 + 16);
  if (v8 != 1)
  {
    if (v8 != 2 || (sub_1C97FB27C(), MEMORY[0x1EEE9AC00](v9), !(v10 = sub_1C989A9E4())) || (MEMORY[0x1EEE9AC00](v10), !sub_1C989A9E4()))
    {
      type metadata accessor for SNError();
      sub_1C9A935B8();
      MEMORY[0x1CCA90230](0xD00000000000005BLL, 0x80000001C9AD5440);
      MEMORY[0x1CCA90230](0x6E656469666E6F43, 0xEA00000000006563);
      MEMORY[0x1CCA90230](0x20646E6120, 0xE500000000000000);
      MEMORY[0x1CCA90230](0x6465746365746544, 0xE800000000000000);
      MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD54A0);
      MEMORY[0x1CCA90460](v7, MEMORY[0x1E69E6158]);

      v19 = sub_1C97E87BC();
      MEMORY[0x1CCA90230](v19);

      v20 = sub_1C97FB260();
      sub_1C9929478(v20, v21, v22, v23, v24, 0xE000000000000000);
      sub_1C97C926C();
      goto LABEL_9;
    }
  }

LABEL_10:
  sub_1C97AEB5C();
}

uint64_t sub_1C97F75A4(uint64_t *a1)
{
  v1 = *a1;
  sub_1C97A2CEC(&qword_1EC3C7C70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9EDD0;
  *(v2 + 32) = *(v1 + 16);

  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C97F9CFC(&unk_1EC3C4A40);
  return sub_1C9A91B88();
}

uint64_t sub_1C97F7694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
}

uint64_t sub_1C97F76AC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (((*(result + 16) | *(result + 8)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C97AE9C4(0);
    *a2 = result;
    a2[1] = v3;
    a2[2] = v4;
    a2[3] = v5;
  }

  return result;
}

uint64_t sub_1C97F76F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_1C97A2CEC(&qword_1EC3C7C70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C9A9EE60;
  *(result + 32) = vdupq_n_s64(1uLL);
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    *(result + 48) = (v2 >> 1) - v1;
    swift_unknownObjectRetain();
    sub_1C97A2CEC(&qword_1EC3C7C80);
    sub_1C97F9CFC(&unk_1EC3C7C88);
    return sub_1C9A91B88();
  }

  return result;
}

CMTimeValue sub_1C97F7800(CMTimeValue result, uint64_t a2, CMTimeEpoch a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a4 < 2147483650.0)
  {
    time.epoch = a3;
    v8 = v4;
    v9 = v5;
    time.value = result;
    *&time.timescale = a2;
    CMTimeConvertScale(&v6, &time, a4, kCMTimeRoundingMethod_RoundTowardZero);
    return v6.value;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C97F7898(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, unint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v11 = *a1;
  v12 = *a2;
  v13 = a2[2];
  v37 = *(a2 + 2) | (*(a2 + 3) << 32);
  *a2 = sub_1C9A93118();
  *(a2 + 2) = v14;
  *(a2 + 3) = v15;
  a2[2] = v16;
  sub_1C97AEB30();
  v17 = sub_1C9A92478();
  v18 = [v11 featureValueForName_];

  if (!v18)
  {
    sub_1C97FB2E8();
    sub_1C97FB1C4();
LABEL_16:
    sub_1C9A93778();
    __break(1u);
    return;
  }

  v45 = [v18 multiArrayValue];
  if (!v45)
  {
LABEL_15:
    sub_1C97FB3AC();
    sub_1C97FB1C4();
    goto LABEL_16;
  }

  if (a4)
  {
    v19 = sub_1C9A92478();
    v20 = [v11 featureValueForName_];

    if (v20)
    {
      v21 = [v20 multiArrayValue];
      if (v21)
      {
        v22 = v21;

        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  v22 = 0;
LABEL_8:
  a8(v12, v37, v13);
  if (v38)
  {
  }

  else
  {
    v23 = sub_1C9A92F08();
    (a8)(v23);
    sub_1C97FB3D8();
    sub_1C9A92F18();
    v24 = [v45 objectAtIndexedSubscript_];
    [v24 doubleValue];
    v26 = v25;

    v27 = v26;
    if (v22)
    {
      v28 = v22;
      v29 = [v28 objectAtIndexedSubscript_];
      [v29 doubleValue];
      v27 = v30;
    }

    v32 = *(a10 + 24);
    v31 = *(a10 + 32);
    v33 = sub_1C9A924A8();
    v35 = v34;

    *a3 = v39;
    *(a3 + 8) = v40;
    *(a3 + 16) = v41;
    *(a3 + 24) = v42;
    *(a3 + 32) = v43;
    *(a3 + 40) = v44;
    *(a3 + 48) = v26;
    *(a3 + 56) = v32;
    *(a3 + 64) = v31;
    *(a3 + 72) = v27 > 0.5;
    *(a3 + 80) = v33;
    *(a3 + 88) = v35;
  }
}

id SNDetectSoundRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C97F7CE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97F7D34(uint64_t a1)
{
  v3 = v1;
  *(v1 + 96) = 0;
  *(v1 + 136) = 0;
  v5 = (v1 + 136);
  *(v1 + 144) = 0;
  v6 = *(a1 + 8);
  sub_1C97F7238();
  if (v2)
  {
    sub_1C97F9780(a1);

LABEL_3:

    swift_deallocPartialClassInstance();
    return v3;
  }

  v7 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v7;
  v8 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v8;
  v30 = *(a1 + 24);
  v29 = v30;
  sub_1C97F9724(a1, v28);
  sub_1C97CE434(&v30, v28);
  MEMORY[0x1CCA90230](0x6F74636574654420, 0xE900000000000072);
  v9 = *(&v29 + 1);
  *(v1 + 80) = v29;
  *(v1 + 88) = v9;
  v10 = type metadata accessor for SNUtils();
  ObjectType = swift_getObjectType();
  v26 = *(v6 + 16);
  v27 = ObjectType;
  v12 = v26(ObjectType, v6);
  v31 = v10;
  v13 = sub_1C9A18E9C(v12, 0);

  if (v13[2])
  {
    v15 = v13[4];
    v14 = v13[5];

    *(v3 + 104) = v15;
    *(v3 + 112) = v14;
    v16 = v26(v27, v6);
    v17 = sub_1C9A18E9C(v16, 1);

    v18 = v17[2];
    if (v18 == 1)
    {
      v20 = v17[4];
      v19 = v17[5];

      sub_1C97F9780(a1);
      *(v3 + 120) = v20;
      *(v3 + 128) = v19;
      *v5 = 0;
      v5[1] = 0;
    }

    else
    {

      if (v18 != 2)
      {
        type metadata accessor for SNError();
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001DLL, 0x80000001C9AD54C0);
        swift_willThrow();
        sub_1C97F9780(a1);
        v24 = *(v3 + 32);
        v28[0] = *(v3 + 16);
        v28[1] = v24;
        v25 = *(v3 + 64);
        v28[2] = *(v3 + 48);
        v28[3] = v25;
        sub_1C97F9780(v28);

        goto LABEL_3;
      }

      sub_1C97FB27C();
      *(v3 + 120) = v21;
      *(v3 + 128) = v22;
      sub_1C97F9780(a1);
      *(v3 + 136) = xmmword_1C9AA0150;
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1C97F801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92[6] = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  v92[0] = 0;
  v10 = sub_1C9A761F8(v9, v92);
  if (!v10)
  {
    v30 = v92[0];
    sub_1C97FB324();
    sub_1C9A913C8();

    swift_willThrow();
    return v10;
  }

  v90 = a5;
  v11 = v92[0];
  v12 = sub_1C9A92478();
  sub_1C9A6B534(v10, v12);

  sub_1C9A92478();
  v13 = sub_1C97FB10C();
  v17 = sub_1C9A72FAC(v13, v14, v15, v16);

  v18 = v92[0];
  if (!v17)
  {
    v31 = v92[0];
    sub_1C97FB324();
    sub_1C9A913C8();

    swift_willThrow();
    return v10;
  }

  v19 = v92[0];
  sub_1C9A92478();
  v20 = sub_1C97FB10C();
  v24 = sub_1C9A75428(v20, v21, v22, v23);

  if (!v24)
  {
    v32 = v92[0];
    sub_1C9A913C8();

    swift_willThrow();
    goto LABEL_9;
  }

  v89 = v17;
  v25 = *a1;
  v26 = *(a1 + 8);
  v27 = v92[0];
  v28 = sub_1C97FB300();
  sub_1C9A3B76C(v28, v29, v26);
  if (!v5)
  {
    v87 = a1;
    v33 = sub_1C9A92478();
    v92[0] = 0;
    v34 = sub_1C9A7347C(v9, v10, v33, 1, v92);

    v35 = v92[0];
    v88 = v34;
    if (v34)
    {
      v86 = v24;
      ObjectType = swift_getObjectType();
      v85 = *(v26 + 16);
      v37 = v35;
      v38 = v85(ObjectType, v26);
      v39 = [v38 inputDescriptionsByName];

      sub_1C97BD318(0, &qword_1EC3C54D0);
      v40 = sub_1C9A92328();

      sub_1C98782A4(a4, v90, v40);
      sub_1C97FB30C();

      if (v39)
      {
        v41 = [v39 multiArrayConstraint];

        if (v41)
        {
          v42 = type metadata accessor for SNUtils();
          v43 = [v41 shape];

          sub_1C97BD318(0, &qword_1EC3C54B0);
          sub_1C9A92798();

          sub_1C9A16824();
          v45 = v44;

          v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
          sub_1C9A180B0(v46);
          v48 = v47;

          if ((~*(v87 + 56) & 0xF000000000000007) != 0)
          {
            v54 = *(v87 + 40);
            v65 = v89;
            if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
              goto LABEL_41;
            }

            v53 = v65;
LABEL_27:
            if (v54 > -1.0)
            {
              if (v54 < 4294967300.0)
              {
                v66 = *(v87 + 52);
                v67 = v53;
                sub_1C97FB3D8();
                sub_1C9A76640(v54, v66, v48, 1, v68);
                v69 = sub_1C97FB0BC();
                v73 = sub_1C9A762F8(v69, v70, v67, v86, 0, 0, v71, v72);

                if (v73)
                {
                  v74 = v91;
                  sub_1C97FB3D8();
                  sub_1C9A76640(v54, v66, 1, 1, v75);
                  v76 = sub_1C97FB0BC();
                  if (sub_1C9A762F8(v76, v77, v86, v88, 0, 0, v78, v79))
                  {
                    if (v54 > -9.22337204e18)
                    {
                      if (v54 < 9.22337204e18)
                      {
                        v80 = v91;
                        sub_1C9A695C8(v10);
                        sub_1C9A69B8C(v10);

LABEL_38:
                        return v10;
                      }

LABEL_47:
                      __break(1u);
                    }

LABEL_46:
                    __break(1u);
                    goto LABEL_47;
                  }

                  v83 = v91;
                  sub_1C9A913C8();

                  swift_willThrow();
                }

                else
                {
                  v81 = v91;
                  sub_1C9A913C8();

                  swift_willThrow();
                }

                goto LABEL_38;
              }

              goto LABEL_42;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          sub_1C9A92478();
          v49 = sub_1C97FB10C();
          v53 = sub_1C9A74DF0(v49, v50, v51, v52);

          v17 = v89;
          if (v53)
          {
            v54 = *(v87 + 40);
            if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            if (v54 <= -1.0)
            {
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            if (v54 >= 4294967300.0)
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v55 = v92[0];
            sub_1C97FB3D8();
            sub_1C9A76554(v54, 1, 1, v56);
            v57 = sub_1C97FB0BC();
            if (sub_1C9A762F8(v57, v58, v89, v53, 0, 0, v59, v60))
            {
              v61 = v91;
              goto LABEL_27;
            }

            v84 = v91;
            sub_1C9A913C8();

            swift_willThrow();
LABEL_10:

            return v10;
          }

          v82 = v92[0];
          sub_1C97FB324();
          sub_1C9A913C8();

          swift_willThrow();
LABEL_9:

          goto LABEL_10;
        }
      }

      sub_1C97A8E8C();
      sub_1C97AA928();
      swift_allocError();
      *v62 = 0;
      swift_willThrow();
    }

    else
    {
      v63 = v92[0];
      sub_1C97FB30C();
      sub_1C9A913C8();

      swift_willThrow();
    }

    return v10;
  }

  return v10;
}

id sub_1C97F8734()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    return v1;
  }

  sub_1C97F969C();
  sub_1C97AA928();
  swift_allocError();
  *v3 = 0;
  return swift_willThrow();
}

id sub_1C97F8790(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = sub_1C9A66390(a4, 0);
  result = sub_1C9A3B888(a4, 0, v24);
  if (!v4)
  {
    if ((*&v24[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v24[0] > -9.22337204e18)
    {
      if (v24[0] < 9.22337204e18)
      {
        v10 = a3 >> 1;
        if (!__OFADD__(v24[0], v10))
        {
          if (!__OFSUB__(v24[0] + v10, v8 >> 1))
          {
            v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
            sub_1C97CDE50(v11);

            v12 = sub_1C9A93168();
            LODWORD(v11) = v13;
            v33 = v14;
            v23 = HIDWORD(v13);
            v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
            sub_1C97CDE50(v15);

            v16 = sub_1C9A93168();
            v18 = v17;
            v20 = v19;
            v21 = HIDWORD(v17);
            ObjectType = swift_getObjectType();
            v25 = v12;
            v26 = v11;
            v27 = v23;
            v28 = v33;
            v29 = v16;
            v30 = v18;
            v31 = v21;
            v32 = v20;
            return (*(a2 + 16))(&v25, ObjectType, a2);
          }

LABEL_13:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1C97F8970(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v43 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  v40 = 0;
  v10 = sub_1C9A7608C(v9, a1, &v40);
  v11 = v40;
  if (!v10)
  {
    v24 = v40;
    sub_1C97C926C();
    sub_1C9A913C8();

    swift_willThrow();
    return a3;
  }

  v12 = v10;
  v39 = a3;

  v13 = v11;
  v14 = sub_1C9A92478();

  v15 = [v12 featureValueForName_];

  if (v15)
  {
    v16 = [v15 multiArrayValue];
    if (v16)
    {
      v17 = v16;
      if (!*(v6 + 144))
      {
        v23 = 0;
        goto LABEL_12;
      }

      v18 = v15;
      v19 = v16;

      v20 = sub_1C9A92478();
      v21 = [v12 featureValueForName_];

      if (!v21)
      {

        v23 = 0;
        goto LABEL_11;
      }

      v22 = [v21 multiArrayValue];
      if (v22)
      {
        v23 = v22;

LABEL_11:
        v17 = v19;
        v15 = v18;
        v5 = v4;
LABEL_12:
        type metadata accessor for SNDetectionResult();

        v25 = sub_1C99D7C84();
        a3 = *(v6 + 64);
        v26 = v25;
        sub_1C97F8790(v26, &off_1F4949DD0, a3, a1);
        if (v5)
        {
          swift_unknownObjectRelease();
        }

        else
        {

          v38 = v17;
          v27 = [v17 objectAtIndexedSubscript_];
          [v27 doubleValue];
          v29 = v28;

          v30 = &v26[OBJC_IVAR___SNDetectionResult_impl];
          *&v26[OBJC_IVAR___SNDetectionResult_impl + 48] = v29;
          if (v23)
          {
            v31 = v23;
            v32 = [v31 objectAtIndexedSubscript_];
            [v32 doubleValue];
            v29 = v33;
          }

          v30[72] = v29 > 0.5;
          *(v30 + 10) = sub_1C9A924A8();
          *(v30 + 11) = v34;

          v35 = SNDetectionResult.timeRange.getter(v41);
          (v39)(v41[0], v41[1], v41[2], v35);
          v36 = sub_1C9A92F08();
          v39(v36);
          sub_1C9A92F18();
          SNDetectionResult.timeRange.setter(v42);
          sub_1C97A2CEC(&unk_1EC3C6E20);
          a3 = swift_allocObject();
          *(a3 + 16) = xmmword_1C9A9DF30;
          *(a3 + 32) = v26;
          swift_unknownObjectRelease();
        }

        return a3;
      }
    }

    sub_1C97FB3AC();
    sub_1C97FB1C4();
  }

  else
  {
    sub_1C97FB2E8();
    sub_1C97FB1C4();
  }

  result = sub_1C9A93778();
  __break(1u);
  return result;
}

void sub_1C97F8E2C()
{
  v2 = *v0;
  sub_1C97AA878();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;

  v4 = sub_1C97C1C8C();

  if (!v1)
  {
    v5 = v0[12];
    v0[12] = v4;
  }
}

uint64_t sub_1C97F8EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v4;
  v5 = *(a1 + 64);
  v13[2] = *(a1 + 48);
  v13[3] = v5;
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  sub_1C97F9724(v13, &v12);

  v10 = sub_1C97F801C(v13, v6, v7, v8, v9);

  result = sub_1C97F9780(v13);
  if (!v2)
  {
    *a2 = v10;
  }

  return result;
}

id sub_1C97F8F98()
{
  result = sub_1C97F8734();
  if (!v0)
  {
    v2 = result;

    v3 = sub_1C9A92478();

    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

unint64_t sub_1C97F9018()
{
  v1 = *(v0 + 72);
  sub_1C97F96F0(v1);
  return v1;
}

uint64_t sub_1C97F9044()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_1C97F9C90(v2);

  return v0;
}

uint64_t sub_1C97F90BC()
{
  sub_1C97F9044();

  return swift_deallocClassInstance();
}

uint64_t sub_1C97F9154()
{
  type metadata accessor for SNDetectionResult();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1C97F9938();
    swift_allocError();
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1C97F9280(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97F92C0(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_1C97F933C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97F937C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C97F93EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C97F9400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97F9440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C97F94A0()
{
  result = qword_1EC3C7C30;
  if (!qword_1EC3C7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C30);
  }

  return result;
}

unint64_t sub_1C97F94F8()
{
  result = qword_1EC3C7C38;
  if (!qword_1EC3C7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C38);
  }

  return result;
}

unint64_t sub_1C97F954C(uint64_t a1)
{
  result = sub_1C97F9574();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C97F9574()
{
  result = qword_1EC3C7C40;
  if (!qword_1EC3C7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C40);
  }

  return result;
}

unint64_t sub_1C97F95C8(uint64_t a1)
{
  result = sub_1C97F95F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C97F95F0()
{
  result = qword_1EC3C7C48;
  if (!qword_1EC3C7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C48);
  }

  return result;
}

unint64_t sub_1C97F9648()
{
  result = qword_1EC3C7C50;
  if (!qword_1EC3C7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C50);
  }

  return result;
}

unint64_t sub_1C97F969C()
{
  result = qword_1EC3C7C58;
  if (!qword_1EC3C7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C58);
  }

  return result;
}

unint64_t sub_1C97F96F0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_1C97F97D4()
{
  result = qword_1EC3C7C78;
  if (!qword_1EC3C7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7C78);
  }

  return result;
}

uint64_t sub_1C97F98D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97F9154();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C97F9938()
{
  result = qword_1EC3C7CD0;
  if (!qword_1EC3C7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7CD0);
  }

  return result;
}

unint64_t sub_1C97F998C()
{
  result = qword_1EC3C7CE0;
  if (!qword_1EC3C7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7CE0);
  }

  return result;
}

unint64_t sub_1C97F9A10()
{
  result = qword_1EC3C7D08;
  if (!qword_1EC3C7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D08);
  }

  return result;
}

unint64_t sub_1C97F9A94()
{
  result = qword_1EC3C7D30;
  if (!qword_1EC3C7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D30);
  }

  return result;
}

unint64_t sub_1C97F9AE8()
{
  result = qword_1EC3C7D38;
  if (!qword_1EC3C7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D38);
  }

  return result;
}

unint64_t sub_1C97F9B3C()
{
  result = qword_1EC3C7D50;
  if (!qword_1EC3C7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D50);
  }

  return result;
}

unint64_t sub_1C97F9B90()
{
  result = qword_1EC3C7D60;
  if (!qword_1EC3C7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D60);
  }

  return result;
}

unint64_t sub_1C97F9BE4(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7D40);
    result = sub_1C97FB3F0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97F9C3C()
{
  result = qword_1EC3C7D70;
  if (!qword_1EC3C7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7D70);
  }

  return result;
}

void sub_1C97F9C90(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

unint64_t sub_1C97F9CFC(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(v3);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C97F9D3C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C97A2CEC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SoundDetection.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1C97F9EC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C97F9EDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97F9F1C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C97F9F7C()
{
  result = qword_1EC3C7DC0;
  if (!qword_1EC3C7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DC0);
  }

  return result;
}

unint64_t sub_1C97F9FD4()
{
  result = qword_1EC3C7DC8;
  if (!qword_1EC3C7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DC8);
  }

  return result;
}

unint64_t sub_1C97FA02C()
{
  result = qword_1EC3C7DD0;
  if (!qword_1EC3C7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DD0);
  }

  return result;
}

unint64_t sub_1C97FA084()
{
  result = qword_1EC3C7DD8;
  if (!qword_1EC3C7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DD8);
  }

  return result;
}

unint64_t sub_1C97FA0DC()
{
  result = qword_1EC3C7DE0;
  if (!qword_1EC3C7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DE0);
  }

  return result;
}

unint64_t sub_1C97FA134()
{
  result = qword_1EC3C7DE8;
  if (!qword_1EC3C7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DE8);
  }

  return result;
}

unint64_t sub_1C97FA18C()
{
  result = qword_1EC3C7DF0;
  if (!qword_1EC3C7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DF0);
  }

  return result;
}

unint64_t sub_1C97FA1E4()
{
  result = qword_1EC3C7DF8;
  if (!qword_1EC3C7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7DF8);
  }

  return result;
}

unint64_t sub_1C97FA23C()
{
  result = qword_1EC3C7E00;
  if (!qword_1EC3C7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E00);
  }

  return result;
}

unint64_t sub_1C97FA294()
{
  result = qword_1EC3C7E08;
  if (!qword_1EC3C7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E08);
  }

  return result;
}

unint64_t sub_1C97FA2EC()
{
  result = qword_1EC3C7E10;
  if (!qword_1EC3C7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E10);
  }

  return result;
}

unint64_t sub_1C97FA344()
{
  result = qword_1EC3C7E18;
  if (!qword_1EC3C7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E18);
  }

  return result;
}

unint64_t sub_1C97FA398()
{
  result = qword_1EC3C7E20;
  if (!qword_1EC3C7E20)
  {
    sub_1C97AA4F0(&unk_1EC3C7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E20);
  }

  return result;
}

unint64_t sub_1C97FA41C()
{
  result = qword_1EC3C7E48;
  if (!qword_1EC3C7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E48);
  }

  return result;
}

unint64_t sub_1C97FA470()
{
  result = qword_1EC3C7E58;
  if (!qword_1EC3C7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E58);
  }

  return result;
}

unint64_t sub_1C97FA4C4()
{
  result = qword_1EC3C7E68;
  if (!qword_1EC3C7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E68);
  }

  return result;
}

unint64_t sub_1C97FA518(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7E70);
    result = sub_1C97FB3F0();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97FA570()
{
  result = qword_1EC3C7E80;
  if (!qword_1EC3C7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E80);
  }

  return result;
}

unint64_t sub_1C97FA5C4()
{
  result = qword_1EC3C7E88;
  if (!qword_1EC3C7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7E88);
  }

  return result;
}

unint64_t sub_1C97FA618(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    type metadata accessor for SNMLModelHashableUncodableWrapper();
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C97FA654()
{
  result = qword_1EC3C7EC0;
  if (!qword_1EC3C7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7EC0);
  }

  return result;
}

_BYTE *sub_1C97FA6A8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C97FA7A0(unsigned __int8 *a1, int a2)
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

  return sub_1C979AF98(a1);
}

_BYTE *sub_1C97FA7EC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C97FA898(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C97FA8D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C97FA928()
{
  result = qword_1EC3C7EC8;
  if (!qword_1EC3C7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7EC8);
  }

  return result;
}

unint64_t sub_1C97FA980()
{
  result = qword_1EC3C7ED0;
  if (!qword_1EC3C7ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7ED0);
  }

  return result;
}

unint64_t sub_1C97FA9D8()
{
  result = qword_1EC3C7ED8;
  if (!qword_1EC3C7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7ED8);
  }

  return result;
}

unint64_t sub_1C97FAA30()
{
  result = qword_1EC3C7EE0;
  if (!qword_1EC3C7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7EE0);
  }

  return result;
}

unint64_t sub_1C97FAA88()
{
  result = qword_1EC3C7EE8;
  if (!qword_1EC3C7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7EE8);
  }

  return result;
}

unint64_t sub_1C97FAAE0()
{
  result = qword_1EC3C7EF0;
  if (!qword_1EC3C7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7EF0);
  }

  return result;
}

unint64_t sub_1C97FAB38()
{
  result = qword_1EC3C7EF8;
  if (!qword_1EC3C7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7EF8);
  }

  return result;
}

unint64_t sub_1C97FAB90()
{
  result = qword_1EC3C7F00;
  if (!qword_1EC3C7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F00);
  }

  return result;
}

unint64_t sub_1C97FABE8()
{
  result = qword_1EC3C7F08;
  if (!qword_1EC3C7F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F08);
  }

  return result;
}

unint64_t sub_1C97FAC40()
{
  result = qword_1EC3C7F10;
  if (!qword_1EC3C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F10);
  }

  return result;
}

unint64_t sub_1C97FAC98()
{
  result = qword_1EC3C7F18;
  if (!qword_1EC3C7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F18);
  }

  return result;
}

unint64_t sub_1C97FACF0()
{
  result = qword_1EC3C7F20;
  if (!qword_1EC3C7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F20);
  }

  return result;
}

unint64_t sub_1C97FAD48()
{
  result = qword_1EC3C7F28;
  if (!qword_1EC3C7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F28);
  }

  return result;
}

unint64_t sub_1C97FAD9C()
{
  result = qword_1EC3C7F38;
  if (!qword_1EC3C7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F38);
  }

  return result;
}

unint64_t sub_1C97FADF0()
{
  result = qword_1EC3C7F40;
  if (!qword_1EC3C7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F40);
  }

  return result;
}

unint64_t sub_1C97FAE44()
{
  result = qword_1EC3C7F50;
  if (!qword_1EC3C7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F50);
  }

  return result;
}

_BYTE *sub_1C97FAE98(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C97FAF74()
{
  result = qword_1EC3C7F58;
  if (!qword_1EC3C7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F58);
  }

  return result;
}

unint64_t sub_1C97FAFCC()
{
  result = qword_1EC3C7F60;
  if (!qword_1EC3C7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F60);
  }

  return result;
}

unint64_t sub_1C97FB024()
{
  result = qword_1EC3C7F68;
  if (!qword_1EC3C7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F68);
  }

  return result;
}

__n128 sub_1C97FB0EC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

unint64_t sub_1C97FB190(uint64_t a1)
{

  return sub_1C97FA618(a1);
}

unint64_t sub_1C97FB1D4(uint64_t a1)
{

  return sub_1C97FA618(a1);
}

uint64_t sub_1C97FB240()
{

  return sub_1C9A93988();
}

uint64_t sub_1C97FB348()
{

  return sub_1C9A93858();
}

uint64_t sub_1C97FB364()
{

  return sub_1C9A93DB8();
}

uint64_t sub_1C97FB388()
{

  return sub_1C9A92528();
}

uint64_t sub_1C97FB3F0()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C97FB410()
{

  return sub_1C97F1884();
}

uint64_t sub_1C97FB434(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C9AD5600 == a2)
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

uint64_t sub_1C97FB4D0(void *a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C7F98);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97FBBF4();
  sub_1C9A93DD8();
  v11[1] = a2;
  sub_1C97A2CEC(&qword_1EC3C7F88);
  sub_1C97FBC48(&qword_1EC3C7FA0);
  sub_1C9A93A18();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C97FB650(uint64_t a1)
{
  sub_1C9A93CC8();
  sub_1C984A914(v3, a1);
  return sub_1C9A93D18();
}

void *sub_1C97FB698(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3C7F78);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C97FBBF4();
  sub_1C9A93DB8();
  if (v1)
  {
    sub_1C97A592C(a1);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C7F88);
    sub_1C97FBC48(&qword_1EC3C7F90);
    sub_1C9A938F8();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    sub_1C97A592C(a1);
  }

  return v9;
}

uint64_t sub_1C97FB840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97FB434(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C97FB86C(uint64_t a1)
{
  v2 = sub_1C97FBBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97FB8A8(uint64_t a1)
{
  v2 = sub_1C97FBBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C97FB8E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C97FB698(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C97FB93C()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C984A914(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97FB98C()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C7FA8);
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3C79C0);
  sub_1C97AE67C(&qword_1EC3C79D0, &qword_1EC3C79C0);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3C7FB0, &qword_1EC3C7FA8);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

unint64_t sub_1C97FBBA0()
{
  result = qword_1EC3C7F70;
  if (!qword_1EC3C7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F70);
  }

  return result;
}

unint64_t sub_1C97FBBF4()
{
  result = qword_1EC3C7F80;
  if (!qword_1EC3C7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7F80);
  }

  return result;
}

uint64_t sub_1C97FBC48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7F88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C97FBCB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0624();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedHIDReportStream.Configuration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C97FBDA0()
{
  result = qword_1EC3C7FB8;
  if (!qword_1EC3C7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FB8);
  }

  return result;
}

unint64_t sub_1C97FBDF8()
{
  result = qword_1EC3C7FC0;
  if (!qword_1EC3C7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FC0);
  }

  return result;
}

unint64_t sub_1C97FBE50()
{
  result = qword_1EC3C7FC8;
  if (!qword_1EC3C7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FC8);
  }

  return result;
}

uint64_t sub_1C97FBEB0(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C7FE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97FCF28();
  sub_1C9A93DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C97FC028(uint64_t a1)
{
  v2 = sub_1C97FCF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97FC064(uint64_t a1)
{
  v2 = sub_1C97FCF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97FC0BC()
{
  type metadata accessor for SNDistanceEstimator();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

id sub_1C97FC0FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SNEstimateSpeechDistanceRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4.receiver = objc_allocWithZone(ObjectType);
  v4.super_class = ObjectType;
  result = objc_msgSendSuper2(&v4, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNEstimateSpeechDistanceRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v7);
  if (!v8)
  {
    return 0;
  }

  sub_1C97A2D34(&v7, v6);
  sub_1C97BD360(v6, v5);
  if (swift_dynamicCast() && v4)
  {

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C97A592C(v6);
  return v2;
}

id SNEstimateSpeechDistanceRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C97FD140();
  sub_1C97A1614(v4, v5, v6);
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

Swift::Void __swiftcall SNEstimateSpeechDistanceRequest.encode(with:)(NSCoder with)
{
  v3 = sub_1C97FD140();
  sub_1C979F154(v3, v4, v5);
  if (v1)
  {
    v6 = sub_1C9A913B8();
    [(objc_class *)with.super.isa failWithError:v6];
  }
}

id SNEstimateSpeechDistanceRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_UNKNOWN **sub_1C97FC5A8()
{
  result = sub_1C97FC0BC();
  if (v0)
  {
    return &off_1F49306F8;
  }

  return result;
}

uint64_t sub_1C97FC5D4()
{
  sub_1C97A2CEC(&qword_1EC3C80C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EE60;
  *(inited + 32) = sub_1C97FD158();
  *(inited + 40) = sub_1C97FD158();
  *(inited + 48) = sub_1C97FD158();
  v1 = sub_1C97E9314(inited);
  swift_setDeallocating();
  sub_1C985D6D4();
  v2 = objc_allocWithZone(type metadata accessor for SNDSPConfiguration());

  v3 = sub_1C98CDEB8(v1);
  v4 = type metadata accessor for SNDSPGraphLoader();
  v5 = sub_1C98CC23C(v3);
  if (v5)
  {
    v4 = v5;
    sub_1C9A695C8(v5);
    sub_1C9A69B8C(v4);
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v6 = 0;
    swift_willThrow();
  }

  return v4;
}

CMTimeValue sub_1C97FC730(void *a1, int64_t a2, void (*a3)(void))
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = [objc_allocWithZone(type metadata accessor for SNSpeechDistanceResult()) init];
  v8 = objc_opt_self();
  v23.start.value = 0;
  v9 = sub_1C9A76EE8(v8, a1, &v23);
  value = v23.start.value;
  if (!v9)
  {
    v19 = v23.start.value;
    sub_1C9A913C8();

    swift_willThrow();
    return value;
  }

  v11 = v9;
  v12 = v23.start.value;
  v13 = sub_1C9A93C88();
  v14 = sub_1C9A67138(a1);
  if (v14 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  CMTimeMake(&v23.start, v13, v14);
  value = v23.start.value;
  v15 = *&v23.start.timescale;
  epoch = v23.start.epoch;
  v17 = sub_1C9A67138(a1);
  if (v17 < 0)
  {
    goto LABEL_17;
  }

  CMTimeMake(&v23.start, a2, v17);
  duration = v23.start;
  start.value = value;
  *&start.timescale = v15;
  start.epoch = epoch;
  CMTimeRangeMake(&v23, &start, &duration);
  v27 = v23;
  a3();
  if (v3)
  {

LABEL_7:
    return value;
  }

  v18 = sub_1C9A92F08();
  (a3)(v18);
  sub_1C9A92F18();
  SNSpeechDistanceResult.timeRange.setter(v26);
  LODWORD(v23.start.value) = 0;
  value = 4;
  if ((sub_1C9A64EA4(a1, &v23, 4, 0, 0) & 1) == 0)
  {
    sub_1C97C269C();
    sub_1C97A7A80();
    *v21 = 4;
    swift_willThrow();

    goto LABEL_7;
  }

  value = &v7[OBJC_IVAR___SNSpeechDistanceResult_impl];
  *&v7[OBJC_IVAR___SNSpeechDistanceResult_impl + 48] = *&v23.start.value;
  LODWORD(v23.start.value) = 0;
  if (sub_1C9A64EA4(a1, &v23, 5, 0, 0) & 1) != 0 && (*(value + 56) = *&v23.start.value, LODWORD(v23.start.value) = 0, (sub_1C9A64EA4(a1, &v23, 6, 0, 0)))
  {
    *(value + 64) = *&v23.start.value;
    sub_1C97A2CEC(&unk_1EC3C6E20);
    value = swift_allocObject();
    *(value + 16) = xmmword_1C9A9DF30;
    *(value + 32) = v7;
  }

  else
  {
    sub_1C97C269C();
    sub_1C97A7A80();
    *v22 = 4;
    swift_willThrow();
  }

  return value;
}

id sub_1C97FCAAC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C97FCEAC();
  sub_1C97A7A80();
  return swift_willThrow();
}

void sub_1C97FCB00(int a1, double a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  type metadata accessor for SNFileUtils();
  sub_1C9A456F0(v10);
  v11 = sub_1C9A91558();
  if (sub_1C97ABF20(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1C9A91518();
    v14 = v13;
    (*(*(v11 - 8) + 8))(v10, v11);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a1;
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    *(v15 + 48) = v7;
    v16 = sub_1C97C1C8C();

    if (!v3)
    {
      v17 = v4[2];
      v4[2] = v16;
    }
  }
}

uint64_t sub_1C97FCCB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C97FC5D4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1C97FCCDC()
{
  result = sub_1C97FCAAC();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C97FCD4C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C97FCE58()
{
  result = qword_1EC3C7FD0;
  if (!qword_1EC3C7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FD0);
  }

  return result;
}

unint64_t sub_1C97FCEAC()
{
  result = qword_1EC3C7FD8;
  if (!qword_1EC3C7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FD8);
  }

  return result;
}

unint64_t sub_1C97FCF28()
{
  result = qword_1EC3C7FF0;
  if (!qword_1EC3C7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNDistanceEstimator.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C97FD03C()
{
  result = qword_1EC3C7FF8;
  if (!qword_1EC3C7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7FF8);
  }

  return result;
}

unint64_t sub_1C97FD094()
{
  result = qword_1EC3C8000;
  if (!qword_1EC3C8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8000);
  }

  return result;
}

unint64_t sub_1C97FD0EC()
{
  result = qword_1EC3C8008;
  if (!qword_1EC3C8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8008);
  }

  return result;
}

uint64_t sub_1C97FD158()
{

  return sub_1C9A92348();
}

uint64_t sub_1C97FD174()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C97FD194(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v4 = sub_1C9A3C12C(a2);

  v30 = sub_1C9A3C12C(v5);
  v24 = *(a2 + 16);
  if (v24)
  {
    v6 = 0;
    v23 = a2 + 32;
    v25 = MEMORY[0x1E69E7CC8];
LABEL_3:
    v7 = (v23 + 16 * v6);
    v9 = *v7;
    v8 = v7[1];
    v27 = v6 + 1;
    v10 = 1 << *(v30 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v30 + 56);
    v13 = (v10 + 63) >> 6;

    v26 = 0;
    v28 = 0;
    v15 = 0;
    while (1)
    {
      v16 = v15;
      if (!v12)
      {
        break;
      }

LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = (*(v30 + 48) + ((v15 << 10) | (16 * v17)));
      v19 = *v18;
      v20 = v18[1];

      if (a3(v9, v8, v19, v20))
      {

        v26 = v19;
        v28 = v20;
      }

      else
      {
      }
    }

    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        if (v28)
        {

          swift_isUniquelyReferenced_nonNull_native();
          sub_1C97EEB2C();
          sub_1C97FDAB4(v9, v8);

          sub_1C97FDAB4(v26, v28);
        }

        v6 = v27;
        if (v27 == v24)
        {
          v21 = v25;
          goto LABEL_19;
        }

        goto LABEL_3;
      }

      v12 = *(v30 + 56 + 8 * v15);
      ++v16;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC8];
LABEL_19:
    if (*(v4 + 16))
    {

      v21 = 0;
    }

    else
    {
      v22 = *(v30 + 16);

      if (v22)
      {

        v21 = 0;
      }
    }

    return v21;
  }

  return result;
}

uint64_t sub_1C97FD458(void *a1, void *a2, SEL *a3)
{
  v5 = [a1 *a3];
  sub_1C97FD598();
  sub_1C9A92328();

  v6 = [a2 *a3];
  sub_1C9A92328();

  v8 = sub_1C9A08638(v7);

  v10 = sub_1C9A08638(v9);
  if (*(v10 + 16) == 1)
  {
    v11 = _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0;
  }

  else
  {
    v11 = sub_1C97FD43C;
  }

  v12 = sub_1C97FD194(v8, v10, v11);

  return v12;
}

unint64_t sub_1C97FD598()
{
  result = qword_1EC3C54D0;
  if (!qword_1EC3C54D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54D0);
  }

  return result;
}

void sub_1C97FD5DC(void *a1, uint64_t a2)
{
  v8 = v2;
  v9 = MEMORY[0x1E69E7CC0];
  if (*(a2 + 16))
  {
    sub_1C97FDDFC(MEMORY[0x1E69E7CC0]);
    v10 = v36;
    sub_1C9887A94(v4);
    sub_1C97FDDD8();
    v31 = v5;
    v32 = v4;
    while ((v6 & 0x8000000000000000) == 0 && v6 < v7 << *(v4 + 32))
    {
      sub_1C97FDEB0();
      if (v13)
      {
        goto LABEL_25;
      }

      if (*(v4 + 36) != v11)
      {
        goto LABEL_26;
      }

      v35 = v11;
      v34 = v12;
      v14 = *(v4 + 56);
      v15 = *(*(v4 + 48) + 16 * v6 + 8);
      v16 = (v14 + 16 * v6);
      v18 = *v16;
      v17 = v16[1];

      v19 = sub_1C9A92478();
      v20 = [a1 featureValueForName_];

      if (!v20)
      {
        type metadata accessor for SNError();
        sub_1C97FDDA0("sis19SNDistanceEstimator");
        swift_willThrow();

        return;
      }

      sub_1C97FDE28();
      if (v23)
      {
        sub_1C97FDE78(v21);
        v22 = v36;
      }

      *(v22 + 16) = v15;
      v24 = (v22 + 24 * v10);
      v24[4] = v18;
      v24[5] = v17;
      v24[6] = v20;
      v4 = v32;
      v7 = 1;
      if (v6 >= 1 << *(v32 + 32))
      {
        goto LABEL_27;
      }

      if ((*(v31 + 8 * v8) & v3) == 0)
      {
        goto LABEL_28;
      }

      v10 = v22;
      if (*(v32 + 36) != v35)
      {
        goto LABEL_29;
      }

      sub_1C97FDE9C();
      if (v13)
      {
        sub_1C97FDE44();
        do
        {
          if (v27 >= v26)
          {
            break;
          }

          v29 = *v28++;
          v8 = v29;
          v19 += 64;
          ++v27;
        }

        while (!v29);
        sub_1C97FDEF8(v25, v34);
      }

      else
      {
        sub_1C97FDEC4();
      }

      sub_1C97FDE60();
      if (v13)
      {
        v9 = v10;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_23:
    sub_1C992C2D0(v9);
    sub_1C9878610();

    v30 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    sub_1C97FDED8();
  }
}

void sub_1C97FD844(void *a1, uint64_t a2)
{
  v8 = v2;
  v9 = MEMORY[0x1E69E7CC0];
  if (*(a2 + 16))
  {
    sub_1C97FDDFC(MEMORY[0x1E69E7CC0]);
    v10 = v35;
    sub_1C9887A94(v4);
    sub_1C97FDDD8();
    v30 = v5;
    while ((v6 & 0x8000000000000000) == 0 && v6 < v7 << *(v4 + 32))
    {
      sub_1C97FDEB0();
      if (v13)
      {
        goto LABEL_25;
      }

      if (*(v4 + 36) != v11)
      {
        goto LABEL_26;
      }

      v33 = v11;
      v32 = v12;
      v14 = v4;
      v15 = (*(v4 + 48) + 16 * v6);
      v16 = *v15;
      v17 = *(*(v4 + 56) + 16 * v6 + 8);
      v34 = v15[1];

      v18 = sub_1C9A92478();
      v19 = [a1 featureValueForName_];

      if (!v19)
      {
        type metadata accessor for SNError();
        sub_1C97FDDA0("sis19SNDistanceEstimator");
        swift_willThrow();

        return;
      }

      sub_1C97FDE28();
      if (v22)
      {
        sub_1C97FDE78(v20);
        v21 = v35;
      }

      *(v21 + 16) = v17;
      v23 = (v21 + 24 * v10);
      v23[4] = v16;
      v23[5] = v34;
      v23[6] = v19;
      v4 = v14;
      v7 = 1;
      if (v6 >= 1 << *(v14 + 32))
      {
        goto LABEL_27;
      }

      if ((*(v30 + 8 * v8) & v3) == 0)
      {
        goto LABEL_28;
      }

      v10 = v21;
      if (*(v14 + 36) != v33)
      {
        goto LABEL_29;
      }

      sub_1C97FDE9C();
      if (v13)
      {
        sub_1C97FDE44();
        do
        {
          if (v26 >= v25)
          {
            break;
          }

          v28 = *v27++;
          v8 = v28;
          v18 += 64;
          ++v26;
        }

        while (!v28);
        sub_1C97FDEF8(v24, v32);
      }

      else
      {
        sub_1C97FDEC4();
      }

      sub_1C97FDE60();
      if (v13)
      {
        v9 = v10;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_23:
    sub_1C992C2D0(v9);
    sub_1C9878610();

    v29 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    sub_1C97FDED8();
  }
}

uint64_t sub_1C97FDAB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C9A93CC8();
  sub_1C9A92528();
  v6 = sub_1C9A93D18();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1C9A93B18() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C9A3F854();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1C97FDBDC(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1C97FDBDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C9A93448();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C9A93CC8();

        sub_1C9A92528();
        v10 = sub_1C9A93D18();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1C97FDD94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1C97FDDA0@<X0>(uint64_t a1@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (v1 - 32) | 0x8000000000000000, 2, 0, 0xD000000000000038, a1 | 0x8000000000000000);
}

uint64_t sub_1C97FDDFC(uint64_t a1)
{
  *(v2 - 72) = a1;

  return sub_1C97B7EC8(0, v1, 0);
}

uint64_t sub_1C97FDE78@<X0>(unint64_t a1@<X8>)
{

  return sub_1C97B7EC8(a1 > 1, v1, 1);
}

id sub_1C97FDED8()
{

  return sub_1C98B6EC8();
}

uint64_t sub_1C97FDEF8@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{

  return sub_1C97FDD94(v2, a1, a2 & 1);
}

uint64_t sub_1C97FDF10(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8018);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C97FE310();
  sub_1C9A93DD8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C97FE018(uint64_t a1)
{
  v2 = sub_1C97FE310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97FE054(uint64_t a1)
{
  v2 = sub_1C97FE310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97FE0A8()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C8028);
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3C8030);
  sub_1C97AE67C(&qword_1EC3C8038, &qword_1EC3C8030);
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3C8040, &qword_1EC3C8028);
  v9 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v9;
}

unint64_t sub_1C97FE2BC()
{
  result = qword_1EC3C8010;
  if (!qword_1EC3C8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8010);
  }

  return result;
}

unint64_t sub_1C97FE310()
{
  result = qword_1EC3C8020;
  if (!qword_1EC3C8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8020);
  }

  return result;
}

uint64_t sub_1C97FE364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C072C();
  *a1 = result;
  return result;
}

unint64_t sub_1C97FE3B0()
{
  result = qword_1EC3C8048;
  if (!qword_1EC3C8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8048);
  }

  return result;
}

unint64_t sub_1C97FE408()
{
  result = qword_1EC3C8050;
  if (!qword_1EC3C8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8050);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OptionalUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C97FE53C()
{
  result = qword_1EC3C8058;
  if (!qword_1EC3C8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8058);
  }

  return result;
}

uint64_t sub_1C97FE590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C9A93258();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  (*(v7 + 16))(v12 - v8, a1, v6);
  if (sub_1C97ABF20(v9, 1, a2) != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  (*(v7 + 8))(v9, v6);
  sub_1C97A8E8C();
  swift_allocError();
  *v10 = 0;
  return swift_willThrow();
}

uint64_t sub_1C97FE718(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
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

void sub_1C97FE7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1C97A2CEC(&qword_1EC3C8110);
  sub_1C97AE9C8();
  v27 = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  sub_1C97A5A8C(v24, v24[3]);
  sub_1C98019EC();
  sub_1C9A93DD8();
  a10 = v31;
  sub_1C97A2CEC(&qword_1EC3C8100);
  sub_1C9801A40(&qword_1EC3C8118);
  sub_1C9A93A18();
  (*(v27 + 8))(v30, v25);
  sub_1C97AEB5C();
}

uint64_t sub_1C97FE944()
{
  v1 = *v0;
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

void sub_1C97FE984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C97A2CEC(&qword_1EC3C80F0);
  sub_1C97AE9C8();
  v29 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  sub_1C98021EC();
  sub_1C98019EC();
  sub_1C9A93DB8();
  if (!v20)
  {
    sub_1C97A2CEC(&qword_1EC3C8100);
    sub_1C9801A40(&qword_1EC3C8108);
    sub_1C9A938F8();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  sub_1C97A592C(v24);
  sub_1C97AEB5C();
}

uint64_t sub_1C97FEAF8(void *__src, uint64_t *a2)
{
  v3 = (__src + 1);
  v4 = *__src;
  memcpy(__dst, __src + 1, 0x41uLL);
  v6 = *a2;
  v5 = a2 + 1;
  memcpy(v14, v5, 0x41uLL);
  if (v4 == v6)
  {
    memcpy(__srca, v3, 0x41uLL);
    memcpy(v9, v5, 0x41uLL);
    v7 = static AudioConfiguration.== infix(_:_:)(__srca, v9);
    memcpy(v11, v9, 0x41uLL);
    sub_1C97A6264(__dst, v12);
    sub_1C97A6264(v14, v12);
    sub_1C97E8084(v11);
    memcpy(v12, __srca, 0x41uLL);
    sub_1C97E8084(v12);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1C97FEBE8()
{
  sub_1C97AEB94();
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3C8140);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11[-v8];
  v10 = *v0;
  memcpy(v13, v0 + 1, 0x41uLL);
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9801AAC();
  sub_1C9A93DD8();
  v12[0] = v10;
  v11[0] = 0;
  sub_1C97A69F8();
  sub_1C9802174();
  sub_1C9A93A18();
  if (!v1)
  {
    memcpy(v12, v13, 0x41uLL);
    sub_1C97A6264(v13, v11);
    sub_1C97A6210();
    sub_1C9802174();
    sub_1C9A93A18();
    memcpy(v11, v12, 0x41uLL);
    sub_1C97E8084(v11);
  }

  (*(v6 + 8))(v9, v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C97FEDB0()
{
  v1 = v0 + 1;
  v2 = *v0;
  memcpy(__dst, v1, sizeof(__dst));
  MEMORY[0x1CCA91980](v2);
  return AudioConfiguration.hash(into:)();
}

uint64_t sub_1C97FEE04()
{
  v1 = *v0;
  memcpy(v3, v0 + 1, sizeof(v3));
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  AudioConfiguration.hash(into:)();
  return sub_1C9A93D18();
}

void sub_1C97FEE68()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C8120);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C98021EC();
  sub_1C9801AAC();
  sub_1C9802210();
  if (!v0)
  {
    sub_1C97A6A4C();
    sub_1C9802184();
    sub_1C97A62C0();
    sub_1C9802184();
    v6 = sub_1C97BE31C();
    v7(v6);
    *v4 = v8[0];
    memcpy(v4 + 1, v8, 0x41uLL);
  }

  sub_1C97A592C(v2);
  sub_1C97AEB5C();
}

BOOL sub_1C97FEFCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = static TimeRange.== infix(_:_:)(v11, v10);
  result = 0;
  if (v8 && ((v3 ^ v6) & 1) == 0)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t sub_1C97FF050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465746365746564 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C97FF170(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0x6465746365746564;
  }

  return 0x6E656469666E6F63;
}

uint64_t sub_1C97FF1D0(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3C80E0);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9801998();
  sub_1C9A93DD8();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v16 = v3[2];
  v13[15] = 0;
  sub_1C97BD12C();
  sub_1C9802174();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1C9802174();
    sub_1C9A939D8();
    LOBYTE(v14) = 2;
    sub_1C9A939E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C97FF374()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CE8();
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  return MEMORY[0x1CCA919B0](*&v5);
}

uint64_t sub_1C97FF434()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = v0[7];
  sub_1C97BE32C();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CE8();
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x1CCA919B0](*&v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97FF52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C80C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C98021EC();
  sub_1C9801998();
  sub_1C9802210();
  if (!v2)
  {
    sub_1C97BD0D8();
    sub_1C9802184();
    sub_1C98021D4(1);
    v6 = sub_1C9A938B8();
    sub_1C98021D4(2);
    sub_1C9A938C8();
    v9 = v8;
    v10 = sub_1C97BE31C();
    v11(v10);
    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *(a2 + 48) = v6 & 1;
    *(a2 + 56) = v9;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C97FF6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97FE718(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C97FF6F0(uint64_t a1)
{
  v2 = sub_1C98019EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97FF72C(uint64_t a1)
{
  v2 = sub_1C98019EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97FF770()
{
  v1 = *v0;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C97FF7E8(uint64_t a1)
{
  v2 = sub_1C9801AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97FF824(uint64_t a1)
{
  v2 = sub_1C9801AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97FF868()
{
  sub_1C9A93CC8();
  sub_1C97FEDB0();
  return sub_1C9A93D18();
}

uint64_t sub_1C97FF8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C97FF050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C97FF908(uint64_t a1)
{
  v2 = sub_1C9801998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C97FF944(uint64_t a1)
{
  v2 = sub_1C9801998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C97FF988()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = v0[7];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CE8();
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x1CCA919B0](*&v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C97FFAB8()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C97FFB44(uint64_t a1)
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

    return sub_1C98A3894();
  }
}

uint64_t sub_1C97FFCC8(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v4[3] = sub_1C97A2CEC(&qword_1EC3C8198);
  v4[4] = sub_1C98020EC();
  v4[0] = a2;

  sub_1C99DC184(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C97FFD58()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C97FFAB8();
}

uint64_t sub_1C97FFE08()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C97FFD58();
}

id sub_1C97FFE98@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v12 = *a1;
  v13 = v3;
  v4 = a1[3];
  v14 = a1[2];
  v15 = v4;
  v5 = type metadata accessor for SNSpeechUtteranceResult();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___SNSpeechUtteranceResult_impl];
  v8 = v15;
  *(v7 + 2) = v14;
  *(v7 + 3) = v8;
  v9 = v13;
  *v7 = v12;
  *(v7 + 1) = v9;
  v11.receiver = v6;
  v11.super_class = v5;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

void sub_1C97FFF18()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3C80A0);
  sub_1C97AE9C8();
  v15 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  memcpy(v19, v4, 0x49uLL);
  v10 = v2[3];
  v11 = v2[4];
  v12 = sub_1C97A5A8C(v2, v10);
  memcpy(v18, (v4 + 8), 0x41uLL);
  v13 = type metadata accessor for SNSpeechUtteranceResult();
  v16[2] = v19;
  sub_1C9801940(v19, v17);
  sub_1C9904DC0(v12, v18, v13, sub_1C9801924, v16, v10, v13, v11);
  memcpy(v17, v18, 0x41uLL);
  sub_1C97E8084(v17);
  if (!v0)
  {
    sub_1C97A2CEC(&qword_1EC3C80A8);
    sub_1C97AE67C(&qword_1EC3C80B0, &qword_1EC3C80A8);
    sub_1C9A91F68();

    sub_1C97AE67C(&qword_1EC3C80B8, &qword_1EC3C80A0);
    sub_1C9A91F28();
    (*(v15 + 8))(v9, v5);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9800188(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for SNDetectSpeechUtteranceRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl] = v1;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  v5 = sub_1C9800210();

  return v5;
}

uint64_t sub_1C9800210()
{
  if (qword_1EC3C4EC8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3C4ED0 == 1)
  {
    v1 = *(v0 + OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl);
    type metadata accessor for SNSpeechUtteranceDetector();
    v2 = swift_allocObject();
    sub_1C9800E28(v1);
  }

  else
  {
    v2 = type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ALL, 0x80000001C9AD5760);
    swift_willThrow();
  }

  return v2;
}

__n128 sub_1C9800318@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR___SNSpeechUtteranceResult_impl;
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  result = *(v2 + 32);
  v5 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

double sub_1C980037C()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl);
  type metadata accessor for SNSpeechUtteranceDetector();
  swift_initStackObject();
  sub_1C9800E28(v1);
  sub_1C9800520();
  v4 = v3;

  return v4;
}

void sub_1C9800520()
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(v0 + 16))
  {
    v2 = sub_1C9800CF0();
    if (!v1)
    {
      v3 = v2;
      v8 = 0;
      if (sub_1C9A64EA4(v2, &v8, 8, 0, 0))
      {

        v4 = sub_1C9800CF0();
        sub_1C9A655E8(v4, 0);

        v5 = sub_1C9800CF0();
        sub_1C9A65A74(v5, 0);
      }

      else
      {
        sub_1C97C269C();
        v6 = sub_1C97A7A80();
        sub_1C98021A4(v6, v7);
      }
    }
  }
}

id sub_1C9800648()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1C98006B0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SNDetectSpeechUtteranceRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl);
  v5 = objc_allocWithZone(ObjectType);
  *&v5[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNDetectSpeechUtteranceRequest.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl);
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](v1);
  return sub_1C9A93D18();
}

BOOL SNDetectSpeechUtteranceRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v10);
  if (!v11)
  {
    return 0;
  }

  sub_1C97A2D34(&v10, v9);
  sub_1C97BD360(v9, v8);
  if (swift_dynamicCast() && v7)
  {
    v3 = *(v1 + OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl);
    v4 = *&v7[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl];

    v5 = v3 == v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1C97A592C(v9);
  return v5;
}

id SNDetectSpeechUtteranceRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1648();
  v3 = objc_allocWithZone(ObjectType);
  *&v3[OBJC_IVAR___SNDetectSpeechUtteranceRequest_impl] = v7;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  swift_getObjectType();
  sub_1C9802234();
  return v4;
}

id SNDetectSpeechUtteranceRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C9800C30()
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(v0 + 16))
  {
    v2 = sub_1C9800CF0();
    if (!v1)
    {
      v3 = v2;
      v6 = 0;
      if (!sub_1C9A64EA4(v2, &v6, 6, 0, 0))
      {
        sub_1C97C269C();
        v4 = sub_1C97A7A80();
        sub_1C98021A4(v4, v5);
      }
    }
  }
}

id sub_1C9800CF0()
{
  result = sub_1C98014AC();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

uint64_t sub_1C9800D64()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = sub_1C9800CF0();
    if (!v1)
    {
      v4 = v3;
      v8 = 0.0;
      if (sub_1C9A64EA4(v3, &v8, 5, 0, 0))
      {

        LOBYTE(v2) = v8 != 0.0;
      }

      else
      {
        sub_1C97C269C();
        v5 = sub_1C97A7A80();
        sub_1C98021A4(v5, v6);
      }
    }
  }

  return v2 & 1;
}

uint64_t sub_1C9800E28(uint64_t a1)
{
  v4 = v1;
  v6 = *v1;
  sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  v1[2] = 0;
  v1[3] = a1;
  type metadata accessor for SNFileUtils();
  sub_1C9A456F0(v3);
  v8 = sub_1C9A91558();
  result = sub_1C97ABF20(v3, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1C9A91518();
    v12 = v11;
    (*(*(v8 - 8) + 8))(v3, v8);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = a1;
    v13[5] = v6;
    v14 = sub_1C97C1C8C();

    if (v2)
    {
    }

    else
    {
      v15 = v4[2];
      v4[2] = v14;
    }

    return v4;
  }

  return result;
}

uint64_t sub_1C9800FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C9800FFC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C9800FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1C98010EC(a3);
  v4 = sub_1C97E9314(v3);

  objc_allocWithZone(type metadata accessor for SNDSPConfiguration());

  v5 = sub_1C98CDEB8(v4);
  v6 = type metadata accessor for SNDSPGraphLoader();
  v7 = sub_1C98CC23C(v5);
  if (v7)
  {
    v6 = v7;
    sub_1C9A695C8(v7);
    sub_1C9A69B8C(v6);
  }

  else
  {
    sub_1C97A8E8C();
    sub_1C97A7A80();
    *v8 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1C98010EC(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3C80C0);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C9A9EDD0;
    v3 = (v2 + 32);
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C9A9EE60;
    *(v2 + 32) = sub_1C9A92348();
    *(v2 + 40) = sub_1C9A92348();
    v3 = (v2 + 48);
  }

  *v3 = sub_1C9A92348();
  return v2;
}

uint64_t sub_1C98011E8(void *a1, int64_t a2, void (*a3)(void), uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = objc_opt_self();
  v30.start.value = 0;
  v11 = sub_1C9A76EE8(v10, a1, &v30);
  if (!v11)
  {
    v26 = v30.start.value;
    sub_1C9A913C8();

    swift_willThrow();
    return v4;
  }

  v12 = v11;
  v13 = v30.start.value;
  v14 = sub_1C9A93C88();
  v15 = sub_1C9A67138(a1);
  if (v15 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  CMTimeMake(&v30.start, v14, v15);
  value = v30.start.value;
  v17 = *&v30.start.timescale;
  epoch = v30.start.epoch;
  v19 = sub_1C9A67138(a1);
  if (v19 < 0)
  {
    goto LABEL_11;
  }

  CMTimeMake(&v30.start, a2, v19);
  v20 = v30.start.value;
  v21 = v30.start.epoch;
  v22 = type metadata accessor for SNSpeechUtteranceResult();
  v23 = *&v30.start.timescale;
  v24 = [objc_allocWithZone(v22) init];
  duration.epoch = v21;
  start.value = value;
  *&start.timescale = v17;
  start.epoch = epoch;
  duration.value = v20;
  *&duration.timescale = v23;
  CMTimeRangeMake(&v30, &start, &duration);
  v34 = v30;
  v4 = a4;
  a3();
  if (v5)
  {
  }

  else
  {
    v25 = sub_1C9A92F08();
    (a3)(v25);
    sub_1C9A92F18();
    SNSpeechUtteranceResult.timeRange.setter(v33);
    sub_1C9800C30();
    v29 = &v24[OBJC_IVAR___SNSpeechUtteranceResult_impl];
    *&v24[OBJC_IVAR___SNSpeechUtteranceResult_impl + 56] = v28;
    v29[48] = sub_1C9800D64() & 1;
    sub_1C97A2CEC(&unk_1EC3C6E20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C9A9DF30;
    *(v4 + 32) = v24;
  }

  return v4;
}

id sub_1C98014AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C98018D0();
  sub_1C97A7A80();
  return swift_willThrow();
}

uint64_t sub_1C9801500()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C98015E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 64))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1C980162C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSessionAudioHardwareControlFlags(uint64_t a1, int a2)
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

uint64_t sub_1C98016D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9801718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C980177C()
{
  result = qword_1EC3C8070;
  if (!qword_1EC3C8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8070);
  }

  return result;
}

unint64_t sub_1C98017D4()
{
  result = qword_1EC3C8078;
  if (!qword_1EC3C8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8078);
  }

  return result;
}

unint64_t sub_1C9801828(uint64_t a1)
{
  result = sub_1C97A65A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C9801850(uint64_t a1)
{
  result = sub_1C97A6550();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C980187C()
{
  result = qword_1EC3C8090;
  if (!qword_1EC3C8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8090);
  }

  return result;
}

unint64_t sub_1C98018D0()
{
  result = qword_1EC3C8098;
  if (!qword_1EC3C8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8098);
  }

  return result;
}

unint64_t sub_1C9801998()
{
  result = qword_1EC3C80D0;
  if (!qword_1EC3C80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C80D0);
  }

  return result;
}

unint64_t sub_1C98019EC()
{
  result = qword_1EC3C80F8;
  if (!qword_1EC3C80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C80F8);
  }

  return result;
}

uint64_t sub_1C9801A40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C8100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9801AAC()
{
  result = qword_1EC3C8128;
  if (!qword_1EC3C8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8128);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetectSpeechUtterance.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DetectSpeechUtterance.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9801CD4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9801D80()
{
  result = qword_1EC3C8148;
  if (!qword_1EC3C8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8148);
  }

  return result;
}

unint64_t sub_1C9801DD8()
{
  result = qword_1EC3C8150;
  if (!qword_1EC3C8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8150);
  }

  return result;
}

unint64_t sub_1C9801E30()
{
  result = qword_1EC3C8158;
  if (!qword_1EC3C8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8158);
  }

  return result;
}

unint64_t sub_1C9801E88()
{
  result = qword_1EC3C8160;
  if (!qword_1EC3C8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8160);
  }

  return result;
}

unint64_t sub_1C9801EE0()
{
  result = qword_1EC3C8168;
  if (!qword_1EC3C8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8168);
  }

  return result;
}

unint64_t sub_1C9801F38()
{
  result = qword_1EC3C8170;
  if (!qword_1EC3C8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8170);
  }

  return result;
}

unint64_t sub_1C9801F90()
{
  result = qword_1EC3C8178;
  if (!qword_1EC3C8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8178);
  }

  return result;
}

unint64_t sub_1C9801FE8()
{
  result = qword_1EC3C8180;
  if (!qword_1EC3C8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8180);
  }

  return result;
}

unint64_t sub_1C9802040()
{
  result = qword_1EC3C8188;
  if (!qword_1EC3C8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8188);
  }

  return result;
}

unint64_t sub_1C9802098()
{
  result = qword_1EC3C8190;
  if (!qword_1EC3C8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8190);
  }

  return result;
}

unint64_t sub_1C98020EC()
{
  result = qword_1EC3C81A0[0];
  if (!qword_1EC3C81A0[0])
  {
    sub_1C97AA4F0(&qword_1EC3C8198);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3C81A0);
  }

  return result;
}

uint64_t sub_1C9802184()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98021A4(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t sub_1C9802210()
{

  return sub_1C9A93DB8();
}

uint64_t sub_1C9802234()
{

  return swift_deallocPartialClassInstance();
}

void *sub_1C9802254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a1;
  v16[9] = a2;
  swift_retain_n();

  return &unk_1C9AA26E0;
}

uint64_t sub_1C9802318(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1C9802410;

  return sub_1C9802510();
}

uint64_t sub_1C9802410()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (!v0)
  {
    v7 = *(v3 + 64);
    v8 = *(v3 + 16);
    v9 = *(v3 + 48);
    v7[1] = *(v3 + 32);
    v7[2] = v9;
    *v7 = v8;
  }

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_1C9802510()
{
  sub_1C97AA95C();
  v2 = v1;
  v0[14] = v3;
  v0[15] = v13;
  v0[12] = v4;
  v0[13] = v1;
  v0[10] = v5;
  v0[11] = v6;
  v0[8] = v7;
  v0[9] = v8;
  v0[16] = *(v3 - 8);
  v0[17] = swift_task_alloc();
  v0[18] = *(v2 - 8);
  v0[19] = swift_task_alloc();
  swift_task_alloc();
  sub_1C97DA928();
  v0[20] = v9;
  *v9 = v10;
  v9[1] = sub_1C980267C;

  return sub_1C988F6F4();
}

uint64_t sub_1C980267C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C98047A4();
    v16 = v10;
    swift_task_alloc();
    sub_1C97DA928();
    v3[22] = v11;
    *v11 = v12;
    v11[1] = sub_1C980280C;
    v13 = v3[19];
    v14 = v3[17];

    return v16(v14, v13);
  }
}

uint64_t sub_1C980280C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9802908()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v7 = *(v0 + 104);
  sub_1C99DC400(*(v0 + 88), *(v0 + 96), v6, *(v0 + 120), (v0 + 16));
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v7);
  if (!v1)
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 16);
    v11 = *(v0 + 48);
    v9[1] = *(v0 + 32);
    v9[2] = v11;
    *v9 = v10;
  }

  sub_1C97DA91C();

  return v8();
}

uint64_t sub_1C9802A14()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9802A7C()
{
  sub_1C97AA884();
  (*(v0[18] + 8))(v0[19], v0[13]);

  sub_1C97DA91C();

  return v1();
}

void *sub_1C9802AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9802254(a1, a2, *v4, v4[1], *(a3 + 16), *(a3 + 24), *(a4 - 8), *(a4 - 16));
  if (v5)
  {
    return v6;
  }

  else
  {
    return &unk_1C9AA26E0;
  }
}

uint64_t sub_1C9802B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  sub_1C97AA8AC();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9802B80()
{
  sub_1C97DA934();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  v4 = *(v0 + 64);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = *(v0 + 24);
  *(v3 + 72) = v1;
  sub_1C97DA91C();
  v7 = v5;

  return v7(&unk_1C9AA2700, v3);
}

uint64_t sub_1C9802C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9802C7C, 0, 0);
}

uint64_t sub_1C9802C7C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v0 + 96) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = *(v0 + 40);
  *(v3 + 40) = v1;

  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 104) = v5;
  *v5 = v6;
  v5[1] = sub_1C9802D8C;
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_1C9802FFC(v10, &unk_1C9AA2710, v3, v11, v4, v9, v7, v8);
}

uint64_t sub_1C9802D8C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C9802EA8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9802F04()
{
  sub_1C97AA95C();
  v2 = v1;
  *(v0 + 64) = v3;
  v8 = (v4 + *v4);
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_1C98047A0;

  return v8(v0 + 16, v2);
}

uint64_t sub_1C9802FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v14;
  *(v8 + 168) = v13;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a4;
  *(v8 + 144) = a6;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  sub_1C97AA8AC();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9803048()
{
  sub_1C97AA95C();
  sub_1C99DC400(v0[18], v0[19], v0[20], v0[22], v0 + 8);
  sub_1C98047A4();
  v5 = v1;
  swift_task_alloc();
  sub_1C97DA928();
  v0[24] = v2;
  *v2 = v3;
  v2[1] = sub_1C9803164;

  return v5(v0 + 2, v0 + 8);
}

uint64_t sub_1C9803164()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    sub_1C97DA928();
    *(v3 + 208) = v10;
    *v10 = v11;
    v10[1] = sub_1C98032C4;

    return sub_1C988F6F4();
  }
}

uint64_t sub_1C98032C4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98033C0()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9803424()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9803480()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  sub_1C97D9AA4(v0 + 64);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98034E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = *(a7 - 16);
  v13 = *(a7 - 8);
  v15 = swift_task_alloc();
  *(v7 + 24) = v15;
  v16 = *(a6 + 16);
  v17 = *(a6 + 24);
  *v15 = v7;
  v15[1] = sub_1C98035C0;

  return sub_1C9802B48(a2, a3, a4, a5, v16, v17, v13, v14);
}

uint64_t sub_1C98035C0()
{
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97DA70C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1C98036C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9803714(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9803764(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C98037B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C9803804()
{
  sub_1C9804808();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98047D8(v1);

  return sub_1C9802318(v3);
}

uint64_t sub_1C98038B0()
{

  return swift_deallocObject();
}

uint64_t sub_1C98038F0()
{
  sub_1C9804808();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98047D8(v1);

  return sub_1C9802C44(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C980399C()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C9804838(v1);

  return sub_1C9802F04();
}

void *sub_1C9803A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return &unk_1C9AA2738;
}

uint64_t sub_1C9803AC0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C97D9C3C;

  return v7(a1);
}

uint64_t sub_1C9803BB8(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C9803A4C(a3, a4, a5);
  v8 = v7;
  v10[3] = type metadata accessor for XPCFunction();
  v10[4] = swift_getWitnessTable();
  v10[0] = v6;
  v10[1] = v8;

  a1(v10);

  return sub_1C97A592C(v10);
}

void *sub_1C9803CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;

  return &unk_1C9AA2728;
}

uint64_t sub_1C9803D14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C9803E0C;

  return v6(a1);
}

uint64_t sub_1C9803E0C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C9803F48()
{
  sub_1C97AA95C();
  v2 = v1;
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v5[1] = sub_1C97DA5D0;

  return sub_1C9803D14(v2, v3);
}

uint64_t sub_1C9804008()
{
  sub_1C97DA934();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C9804838(v3);

  return sub_1C9803AC0(v5, v6, v1);
}

uint64_t sub_1C98040B4()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v13 = v2 + *v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v11 = sub_1C9804828(v3, v4, v5, v6, v7, v8, v9, v10, v13);

  return v11();
}

uint64_t sub_1C9804194()
{
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97DA70C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1C98042D4()
{
  sub_1C97AA884();
  sub_1C9803CA0(v0[5], v0[4], v0[2]);
  v2 = v1;

  v3 = v0[1];

  return v3(&unk_1C9AA2728, v2);
}

uint64_t sub_1C9804360()
{
  sub_1C97AA884();
  v12 = v1 + *v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v10 = sub_1C9804828(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C980443C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9804578()
{
  sub_1C97AA884();
  v12 = v1 + *v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v10 = sub_1C9804828(v2, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C9804654()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9804750()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C98047D8(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return v2;
}

uint64_t sub_1C980485C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C980489C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1C98048FC(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v4 = v3;
      goto LABEL_5;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v4 = v5;
LABEL_5:
      result = sub_1C9806660(result, v4);
      break;
    case 3uLL:
      if (!v2)
      {
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98049B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v2;
  v13[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v6;
  v12[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 52);
  v9 = *(a2 + 56);
  if (!static TimeRange.== infix(_:_:)(v13, v12))
  {
    return 0;
  }

  if (v3 != v7 || v4 != v8)
  {
    return 0;
  }

  return sub_1C9808DA4(v5, v9);
}

uint64_t sub_1C9804A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874756D697A61 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746176656C65 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x536C616974617073 && a2 == 0xEF6D757274636570)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C9804BD8(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6874756D697A61;
      break;
    case 2:
      result = 0x6F69746176656C65;
      break;
    case 3:
      result = 0x536C616974617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9804C6C(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3C82A0);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *(v3 + 56);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98069A4();
  sub_1C9A93DD8();
  v12 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v12;
  v14[2] = *(v3 + 32);
  v15 = 0;
  sub_1C97BD12C();
  sub_1C97BE02C();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1C97BE02C();
    sub_1C9A939F8();
    LOBYTE(v14[0]) = 2;
    sub_1C97BE02C();
    sub_1C9A939F8();
    *&v14[0] = v11;
    v15 = 3;
    sub_1C97A2CEC(&qword_1EC3C8290);
    sub_1C98069F8(&qword_1EC3C82A8);
    sub_1C97BE02C();
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1C9804E84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();

  sub_1C97C8A3C();
}

uint64_t sub_1C9804F6C()
{
  sub_1C9A93CC8();
  sub_1C9804E84();
  return sub_1C9A93D18();
}

uint64_t sub_1C9804FAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C8280);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98069A4();
  sub_1C9A93DB8();
  if (!v2)
  {
    v26 = 0;
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v22 = v19;
    v23 = v20;
    v24 = v21;
    sub_1C9806E14(1);
    v12 = v11;
    sub_1C9806E14(2);
    v15 = v14;
    sub_1C97A2CEC(&qword_1EC3C8290);
    v25 = 3;
    sub_1C98069F8(&qword_1EC3C8298);
    sub_1C9A938F8();
    (*(v7 + 8))(v10, v5);
    v16 = v18[1];
    v17 = v23;
    *a2 = v22;
    *(a2 + 16) = v17;
    *(a2 + 32) = v24;
    *(a2 + 48) = v12;
    *(a2 + 52) = v15;
    *(a2 + 56) = v16;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9805200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9804A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9805228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9804BD0();
  *a1 = result;
  return result;
}

uint64_t sub_1C9805250(uint64_t a1)
{
  v2 = sub_1C98069A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C980528C(uint64_t a1)
{
  v2 = sub_1C98069A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98052D0()
{
  sub_1C9A93CC8();
  sub_1C9804E84();
  return sub_1C9A93D18();
}

unint64_t sub_1C9805344()
{
  result = qword_1EC3C8230;
  if (!qword_1EC3C8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8230);
  }

  return result;
}

void sub_1C9805398(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v22[0] = 0;
  v8 = sub_1C9A76EE8(v7, a1, v22);
  if (!v8)
  {
    v21 = v22[0];
    sub_1C9A913C8();

    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = v22[0];
  v11 = sub_1C9A93C88();
  v12 = sub_1C9A67138(a1);
  if (v12 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v13 = v12;
  v14 = sub_1C9A67138(a1);
  if (v14 < 0)
  {
    goto LABEL_12;
  }

  v15 = v14;
  LODWORD(v22[0]) = 0;
  if (sub_1C9A64EA4(a1, v22, 12, 0, 0) && (v16 = v22[0], LODWORD(v22[0]) = 0, (sub_1C9A64EA4(a1, v22, 13, 0, 0) & 1) != 0))
  {
    v17 = v22[0];
    sub_1C980555C(a1);
    v19 = v18;

    if (!v3)
    {
      *a3 = v11;
      *(a3 + 8) = v13;
      *(a3 + 12) = 1;
      *(a3 + 16) = 0;
      *(a3 + 24) = a2;
      *(a3 + 32) = v15;
      *(a3 + 36) = 1;
      *(a3 + 40) = 0;
      *(a3 + 48) = v16;
      *(a3 + 52) = v17;
      *(a3 + 56) = v19;
    }
  }

  else
  {
    sub_1C97C269C();
    sub_1C97A7A80();
    *v20 = 4;
    swift_willThrow();
  }
}

void sub_1C980555C(void *a1)
{
  v2 = sub_1C9806488(a1);
  if (!v1)
  {
    v3 = v2;
    v4 = sub_1C98058CC(v2);
    v5 = sub_1C97BDEE0(v4);
    if (v5)
    {
      v6 = v5;
      v25 = v3;
      v30 = MEMORY[0x1E69E7CC0];
      sub_1C97B7EE8();
      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = 0;
        v28 = v4;
        v29 = v4 & 0xC000000000000001;
        v26 = v4 & 0xFFFFFFFFFFFFFF8;
        v27 = v6;
        while (1)
        {
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v29)
          {
            v9 = MEMORY[0x1CCA912B0](v7, v4);
          }

          else
          {
            if (v7 >= *(v26 + 16))
            {
              goto LABEL_22;
            }

            v9 = *(v4 + 8 * v7 + 32);
          }

          v10 = v9;
          [v9 doubleValue];
          v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          v13 = [v10 longLongValue];
          if (v13 != [v12 longLongValue] || (objc_msgSend(v10, sel_doubleValue), v15 = v14, objc_msgSend(v12, sel_doubleValue), v15 != v16))
          {

LABEL_19:

            type metadata accessor for SNError();
            sub_1C9A935B8();

            v21 = [v10 description];
            v22 = sub_1C9A924A8();
            v24 = v23;

            MEMORY[0x1CCA90230](v22, v24);

            sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000015, 0x80000001C9AD57A0);

            swift_willThrow();

            return;
          }

          v17 = [v10 isEqual_];

          v4 = v28;
          if ((v17 & 1) == 0)
          {
            goto LABEL_19;
          }

          [v10 doubleValue];
          v19 = v18;

          v20 = *(v30 + 16);
          if (v20 >= *(v30 + 24) >> 1)
          {
            sub_1C97B7EE8();
          }

          *(v30 + 16) = v20 + 1;
          *(v30 + 8 * v20 + 32) = v19;
          ++v7;
          if (v8 == v27)
          {

            return;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1C98058CC(void *a1)
{
  v1 = a1;
  sub_1C97A2CEC(&qword_1EC3C8238);
  sub_1C97A2CEC(&qword_1EC3CBA20);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1C98066EC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1C9805978(uint64_t a1)
{
  sub_1C97BD360(a1, v3);
  if (swift_dynamicCast())
  {
    return v2;
  }

  sub_1C98066EC();
  sub_1C97A7A80();
  return swift_willThrow();
}

uint64_t sub_1C9805A24(uint64_t a1, unint64_t *a2)
{
  sub_1C97BD360(a1, v4);
  sub_1C97BD318(0, a2);
  if (swift_dynamicCast())
  {
    return v4[5];
  }

  sub_1C98066EC();
  sub_1C97A7A80();
  return swift_willThrow();
}

uint64_t sub_1C9805AC4()
{

  sub_1C97A2CEC(&qword_1EC3C82B0);
  sub_1C97A2CEC(&qword_1EC3C82B8);
  if (swift_dynamicCast())
  {
    return v1;
  }

  sub_1C98066EC();
  sub_1C97A7A80();
  return swift_willThrow();
}

void *sub_1C9805B68(uint64_t (*a1)(void, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a1;
  v71 = a2;
  v70 = sub_1C97A2CEC(&unk_1EC3C9910);
  sub_1C97AE9C8();
  v64 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v63 = (&v56 - v8);
  sub_1C9A91C28();
  sub_1C97AE9C8();
  v68 = v10;
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C97A2CEC(&qword_1EC3C8240);
  sub_1C97AE9C8();
  v65 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C8248);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = sub_1C97A2CEC(&qword_1EC3C8250);
  sub_1C97AE9C8();
  v66 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  sub_1C97AA878();
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = type metadata accessor for SNDirectionOfArrivalEstimator();

  v28 = v27;
  v29 = v73;
  v30 = sub_1C98AC444();
  v73 = v29;
  if (v29)
  {

    return v28;
  }

  v28 = v30;
  v61 = v21;
  v62 = v16;
  v58 = v17;
  v59 = v20;
  v60 = v25;
  if (sub_1C9A6B6A4(v30) != 1 || (v31 = sub_1C9A6BD8C(v28)) == 0)
  {
LABEL_9:
    sub_1C980675C();
    sub_1C97A7A80();
    *v36 = 0;
    swift_willThrow();

    return v28;
  }

  v32 = v31;
  if (sub_1C9A64668(v31) != 1)
  {

    goto LABEL_9;
  }

  v57 = v28;
  v33 = sub_1C9A66CAC(v32, 0);
  v28 = v71;
  v34 = v73;
  v35 = v72(v33, 16000);
  if (v34)
  {
  }

  else
  {
    v73 = v35;
    v72 = sub_1C98BF080();
    v74 = v72;
    (*(v68 + 104))(v67, *MEMORY[0x1E695BD20], v69);
    v39 = v63;
    v38 = v64;
    *v63 = sub_1C9806358;
    v39[1] = 0;
    (*(v38 + 104))(v39, *MEMORY[0x1E695BD48], v70);
    v71 = sub_1C97A2CEC(&unk_1EC3C7390);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390);
    v40 = v67;
    sub_1C9A92018();
    (*(v38 + 8))(v39, v70);
    (*(v68 + 8))(v40, v69);

    sub_1C97A2CEC(&qword_1EC3C8260);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240);
    v41 = v59;
    v42 = v62;
    sub_1C9A91F68();
    (*(v65 + 8))(v42, v12);
    *(v41 + *(sub_1C97A2CEC(&qword_1EC3C8268) + 44)) = 512;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    sub_1C97AA878();
    v44 = swift_allocObject();
    v72 = v32;
    v45 = v44;
    *(v44 + 16) = sub_1C98067B0;
    *(v44 + 24) = 0;
    sub_1C97AA878();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1C9806828;
    *(v46 + 24) = v43;
    v47 = v58;
    v48 = (v41 + *(v58 + 52));
    *v48 = sub_1C9806874;
    v48[1] = v46;
    v49 = (v41 + *(v47 + 56));
    *v49 = sub_1C980686C;
    v49[1] = v45;
    sub_1C97AA878();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C9806740;
    *(v50 + 24) = v26;
    sub_1C97AA878();
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C98068A0;
    *(v51 + 24) = v50;
    sub_1C97AA878();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1C98068BC;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    v53[2] = sub_1C98068D4;
    v53[3] = v51;
    v53[4] = sub_1C99DD0BC;
    v53[5] = 0;
    v53[6] = sub_1C98068F0;
    v53[7] = v52;

    v54 = v60;
    sub_1C990E5E0(v60);

    sub_1C980693C(v41);
    sub_1C97AE67C(&qword_1EC3C8270, &qword_1EC3C8250);
    v55 = v61;
    v28 = sub_1C9A91F28();

    (*(v66 + 8))(v54, v55);
  }

  return v28;
}

uint64_t sub_1C9806358@<X0>(uint64_t *a1@<X8>)
{
  sub_1C980675C();
  result = swift_allocError();
  *a1 = result;
  *v3 = 1;
  return result;
}

void *sub_1C98063A0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  v2 = result[2];
  if ((v2 | v3) < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = v3;
    a2[2] = v2;
    a2[3] = 0;
    a2[4] = v3;
    a2[5] = 0;
    a2[6] = v2;
  }

  return result;
}

uint64_t sub_1C98063C8(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = v2;
  if (!v1)
  {
    sub_1C9A69F34(v2);
  }

  return v3;
}

__n128 sub_1C980640C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C9805398(a2, a3, v9);
  if (!v3)
  {
    sub_1C97A2CEC(&qword_1EC3C8278);
    v5 = swift_allocObject();
    v6 = v9[0];
    v7 = v9[1];
    *(v5 + 16) = xmmword_1C9A9EDD0;
    *(v5 + 32) = v6;
    result = v9[2];
    v8 = v9[3];
    *(v5 + 48) = v7;
    *(v5 + 64) = result;
    *(v5 + 80) = v8;
  }

  return result;
}

id sub_1C9806488(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = sub_1C9A91568();
  v16 = v2;
  v18 = v3;
  v17 = v4;
  v14 = v3;
  v5 = a1;
  if (sub_1C9A64704(v5, &v15, &v14))
  {
    sub_1C98FBBC4(&v15, &v15 + v14);

    v6 = sub_1C9806E38();
    if (MEMORY[0x1CCA8F2E0](v6) == 8)
    {
      v7 = sub_1C9806E38();
      v5 = sub_1C98048FC(v7, v8);
    }

    else
    {
      sub_1C97C269C();
      sub_1C97A7A80();
      *v12 = 3;
      swift_willThrow();
    }

    v9 = sub_1C9806E38();
    sub_1C97A5978(v9, v10);
  }

  else
  {
    sub_1C97C269C();
    sub_1C97A7A80();
    *v11 = 2;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C9806604(uint64_t a1)
{
  if (a1)
  {
    return *a1;
  }

  sub_1C97A8E8C();
  swift_allocError();
  *v2 = 0;
  return swift_willThrow();
}

uint64_t sub_1C9806660(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v5 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1C9A91328();
    return sub_1C9806604(v5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1C98066EC()
{
  result = qword_1EC3C8680;
  if (!qword_1EC3C8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8680);
  }

  return result;
}

unint64_t sub_1C980675C()
{
  result = qword_1EC3C8258;
  if (!qword_1EC3C8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8258);
  }

  return result;
}

uint64_t sub_1C98067B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  result = sub_1C986DD0C(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1C98067FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C9806830(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  return sub_1C986DC80(v3);
}

uint64_t sub_1C9806874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98714C4(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1C980693C(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C8248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C98069A4()
{
  result = qword_1EC3C8288;
  if (!qword_1EC3C8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8288);
  }

  return result;
}

uint64_t sub_1C98069F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C8290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectionOfArrival.Result.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DirectionOfArrival.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DirectionOfArrival.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9806CB8()
{
  result = qword_1EC3C82C0;
  if (!qword_1EC3C82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C82C0);
  }

  return result;
}

unint64_t sub_1C9806D10()
{
  result = qword_1EC3C82C8;
  if (!qword_1EC3C82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C82C8);
  }

  return result;
}

unint64_t sub_1C9806D68()
{
  result = qword_1EC3C82D0;
  if (!qword_1EC3C82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C82D0);
  }

  return result;
}

unint64_t sub_1C9806DC0()
{
  result = qword_1EC3C82D8;
  if (!qword_1EC3C82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C82D8);
  }

  return result;
}

uint64_t sub_1C9806E14@<X0>(char a1@<W8>)
{
  *(v1 - 200) = a1;

  return sub_1C9A938D8();
}

uint64_t sub_1C9806E44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1C9813878();
  sub_1C97B7FA4();
  result = v30;
  v28 = a1;
  v29 = a2;
  if (!v6)
  {
    v13 = v4;
    v14 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v4;
  v12 = v5;
  v13 = v4;
  v14 = v5;
  while (v11)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v15 = *v8;
    v16 = *v9;
    v31 = result;
    v17 = *(result + 16);
    if (v17 >= *(result + 24) >> 1)
    {
      v26 = v14;
      v27 = v13;
      v25 = *v8;
      sub_1C97B7FA4();
      v15 = v25;
      v14 = v26;
      v13 = v27;
      result = v31;
    }

    *(result + 16) = v17 + 1;
    v18 = result + 8 * v17;
    --v12;
    *(v18 + 32) = v15;
    *(v18 + 36) = v16;
    --v11;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v13 != v6)
      {
        if (v6 >= v13)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v14 == v6)
        {
          return result;
        }

        if (v6 >= v14)
        {
          goto LABEL_26;
        }

        v19 = *(v28 + 32 + 4 * v6);
        v20 = *(v29 + 32 + 4 * v6);
        v32 = result;
        v21 = *(result + 16);
        if (v21 >= *(result + 24) >> 1)
        {
          v23 = v13;
          v24 = v14;
          sub_1C97B7FA4();
          v14 = v24;
          v13 = v23;
          result = v32;
        }

        *(result + 16) = v21 + 1;
        v22 = result + 8 * v21;
        *(v22 + 32) = v19;
        *(v22 + 36) = v20;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

SoundAnalysis::MovieRemix::Request __swiftcall MovieRemix.Request.init(inputChannelCount:inputSampleRate:)(Swift::Int inputChannelCount, Swift::Int inputSampleRate)
{
  *v2 = inputChannelCount;
  v2[1] = inputSampleRate;
  result.inputSampleRate = inputSampleRate;
  result.inputChannelCount = inputChannelCount;
  return result;
}

uint64_t static MovieRemix.Request.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return a1[1] == a2[1];
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C980706C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C9AD4E00 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61537475706E69 && a2 == 0xEF65746152656C70)
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

uint64_t sub_1C9807144(char a1)
{
  if (a1)
  {
    return 0x6D61537475706E69;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C98071AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C980706C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98071D4(uint64_t a1)
{
  v2 = sub_1C980738C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9807210(uint64_t a1)
{
  v2 = sub_1C980738C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MovieRemix.Request.encode(to:)()
{
  sub_1C97AEB94();
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3C82E0);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C980738C();
  sub_1C9A93DD8();
  sub_1C97BE02C();
  sub_1C9A93A08();
  if (!v0)
  {
    sub_1C97BE02C();
    sub_1C9A93A08();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C97AEB5C();
}

unint64_t sub_1C980738C()
{
  result = qword_1EC3C82E8;
  if (!qword_1EC3C82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C82E8);
  }

  return result;
}

uint64_t MovieRemix.Request.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1CCA91980](*v0);
  return MEMORY[0x1CCA91980](v1);
}

uint64_t MovieRemix.Request.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](v1);
  MEMORY[0x1CCA91980](v2);
  return sub_1C9A93D18();
}

void MovieRemix.Request.init(from:)()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C82F0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98138A0(v2);
  sub_1C980738C();
  sub_1C9802210();
  if (!v0)
  {
    sub_1C9813650();
    v6 = sub_1C9A938E8();
    sub_1C9813650();
    v7 = sub_1C9A938E8();
    v8 = sub_1C97BE31C();
    v9(v8);
    *v4 = v6;
    v4[1] = v7;
  }

  sub_1C97A592C(v2);
  sub_1C97AEB5C();
}

uint64_t sub_1C98075C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  MEMORY[0x1CCA91980](v2);
  return sub_1C9A93D18();
}

uint64_t static MovieRemix.DSPParameterTuple.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return *(a1 + 4) == *(a2 + 4);
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C980777C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1C9807840(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1C980786C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C98078C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C980777C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98078E8(uint64_t a1)
{
  v2 = sub_1C9807A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9807924(uint64_t a1)
{
  v2 = sub_1C9807A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MovieRemix.DSPParameterTuple.encode(to:)()
{
  sub_1C98139FC();
  v3 = v2;
  v4 = sub_1C97A2CEC(&qword_1EC3C82F8);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C98138A0(v3);
  sub_1C9807A98();
  sub_1C9A93DD8();
  sub_1C97BE02C();
  sub_1C9A93A58();
  if (!v0)
  {
    sub_1C97BE02C();
    sub_1C9A939F8();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C98139E0();
}

unint64_t sub_1C9807A98()
{
  result = qword_1EC3C8300;
  if (!qword_1EC3C8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8300);
  }

  return result;
}

uint64_t MovieRemix.DSPParameterTuple.hashValue.getter()
{
  sub_1C97BE32C();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void MovieRemix.DSPParameterTuple.init(from:)()
{
  sub_1C98139FC();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3C8308);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98138A0(v2);
  sub_1C9807A98();
  sub_1C9802210();
  if (!v0)
  {
    sub_1C9813650();
    v6 = sub_1C9A93938();
    sub_1C9813650();
    sub_1C9A938D8();
    v8 = v7;
    v9 = sub_1C97BE31C();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
  }

  sub_1C97A592C(v2);
  sub_1C98139E0();
}

uint64_t sub_1C9807CF8()
{
  sub_1C9A93CC8();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

uint64_t MovieRemix.FinalResult.dspParameters.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static MovieRemix.FinalResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = ~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 4), *(a2 + 4)), xmmword_1C9AA2B30)) & 0xF;
  if (*a1 == *a2 && v2 == 0 && *(a1 + 20) == *(a2 + 20))
  {
    return sub_1C9809284(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return sub_1C97A79E8();
  }
}

uint64_t sub_1C9807F58(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (!v2 || result == a2)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9807FAC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (!v2 || result == a2)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9808000()
{
  sub_1C9813848();
  v2 = sub_1C9A91558();
  sub_1C97AE9C8();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = *(v0 + 16);
  if (v11 != *(v1 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || v0 == v1)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = v0 + v12;
  v14 = v1 + v12;
  v16 = *(v4 + 16);
  v15 = v4 + 16;
  v17 = (v15 - 8);
  v25 = *(v15 + 56);
  v26 = v16;
  while (1)
  {
    v18 = v26;
    result = (v26)(v10, v13, v2);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v2);
    sub_1C9812FF8(&qword_1EC3C83E0, MEMORY[0x1E6968FB0]);
    v21 = sub_1C9A92438();
    v22 = *v17;
    v23 = sub_1C97CB094();
    v22(v23);
    (v22)(v10, v2);
    if (v21)
    {
      v14 += v25;
      v13 += v25;
      v24 = v11-- == 1;
      v15 = v20;
      if (!v24)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_1C98081FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_1C97BD318(0, &qword_1EC3C54A0);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5;
      v9 = v7;
      v10 = sub_1C9A931E8();

      if ((v10 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1C98082D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C9808340()
{
  v6 = sub_1C9813848();
  type metadata accessor for KShotSegment(v6);
  sub_1C98138BC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98137DC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98137C0();
  if (!v9)
  {
LABEL_16:
    v12 = 0;
    return v12 & 1;
  }

  if (v4 && v2 != v3)
  {
    sub_1C9813788();
    while (1)
    {
      sub_1C9813144(v2, v1, type metadata accessor for KShotSegment);
      sub_1C9813144(v3, v0, type metadata accessor for KShotSegment);
      if (*v1 != *v0)
      {
        break;
      }

      v10.i64[0] = v1[1];
      v11.i64[0] = v0[1];
      v10.i64[1] = v1[4];
      v11.i64[1] = v0[4];
      if ((~vaddvq_s32(vandq_s8(vceqq_s32(v10, v11), xmmword_1C9AA2B30)) & 0xF) != 0 || v1[2] != v0[2] || v1[3] != v0[3] || v1[5] != v0[5])
      {
        break;
      }

      v12 = sub_1C9A914E8();
      sub_1C98131A0(v0, type metadata accessor for KShotSegment);
      sub_1C98131A0(v1, type metadata accessor for KShotSegment);
      if (v12)
      {
        v3 += v5;
        v2 += v5;
        if (--v4)
        {
          continue;
        }
      }

      return v12 & 1;
    }

    sub_1C98131A0(v0, type metadata accessor for KShotSegment);
    sub_1C98131A0(v1, type metadata accessor for KShotSegment);
    goto LABEL_16;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_1C980856C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
      return 1;
    }

    v5 = 0;
    v114 = a2 + 32;
    v115 = a1 + 32;
    v113 = *(a1 + 16);
    while (v5 != v4)
    {
      v6 = v5;
      v7 = 56 * v5;
      v8 = v115 + 56 * v5;
      v10 = *v8;
      v9 = *(v8 + 8);
      v116 = v6 + 1;
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v14 = *(v8 + 32);
      v13 = *(v8 + 40);
      v15 = *(v8 + 48);
      v17 = *(v114 + v7);
      v16 = *(v114 + v7 + 8);
      v18 = *(v114 + v7 + 16);
      v19 = *(v114 + v7 + 24);
      v20 = *(v114 + v7 + 32);
      v21 = *(v114 + v7 + 40);
      v22 = *(v114 + v7 + 48);
      switch(v12 >> 28)
      {
        case 1u:
          if ((*(v114 + v7 + 24) & 0xF0000000) != 0x10000000)
          {
            return 0;
          }

          v112 = *(v114 + v7 + 8);
          sub_1C98133B4(v17, v16, v18, v19);
          v41 = sub_1C981351C();
          sub_1C98133B4(v41, v42, v43, v44);
          sub_1C98453B0(v10, v17);
          v109 = v45;
          sub_1C97C8FE4(v17, v112, v18, v19);
          v46 = sub_1C981351C();
          sub_1C97C8FE4(v46, v47, v48, v49);
          if ((v109 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_184;
        case 2u:
          if ((*(v114 + v7 + 24) & 0xF0000000) != 0x20000000)
          {
            return 0;
          }

          v26 = v10 == v17 && v9 == v16;
          v111 = *(v114 + v7 + 8);
          if (!v26)
          {
            v110 = *(v114 + v7 + 16);
            v27 = sub_1C9A93B18();
            v18 = v110;
            v16 = v111;
            if ((v27 & 1) == 0)
            {
              return 0;
            }
          }

          sub_1C98133B4(v17, v16, v18, v19);
          v28 = sub_1C981351C();
          sub_1C98133B4(v28, v29, v30, v31);
          sub_1C98453B0(v11, v18);
          v108 = v32;
          sub_1C97C8FE4(v17, v111, v18, v19);
          v33 = sub_1C981351C();
          sub_1C97C8FE4(v33, v34, v35, v36);
          result = 0;
          if (v108 & 1) == 0 || ((v19 ^ v12))
          {
            return result;
          }

          goto LABEL_184;
        case 3u:
          v24 = *(v114 + v7 + 24) & 0xF0000000;
          v25 = 805306368;
          goto LABEL_20;
        case 4u:
          v24 = *(v114 + v7 + 24) & 0xF0000000;
          v25 = 0x40000000;
LABEL_20:
          if (v24 != v25)
          {
            return 0;
          }

          if (v10 != v17 || v9 != v16)
          {
            v23 = sub_1C9A93B18();
LABEL_26:
            if ((v23 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_184;
        case 5u:
          if ((*(v114 + v7 + 24) & 0xF0000000) != 0x50000000)
          {
            return 0;
          }

          if (v10 != v17 || v9 != v16)
          {
            return 0;
          }

          goto LABEL_184;
        case 6u:
          if ((*(v114 + v7 + 24) & 0xF0000000) != 0x60000000)
          {
            return 0;
          }

          v51 = *(v10 + 16);
          if (v51 != *(v17 + 16))
          {
            return 0;
          }

          if (v51)
          {
            v52 = v10 == v17;
          }

          else
          {
            v52 = 1;
          }

          if (v52)
          {
            goto LABEL_184;
          }

          v53 = (v10 + 40);
          v54 = (v17 + 40);
          while (2)
          {
            if (!v51)
            {
              goto LABEL_192;
            }

            v55 = *(v53 - 1) == *(v54 - 1) && *v53 == *v54;
            if (v55 || (sub_1C9A93B18() & 1) != 0)
            {
              v53 += 2;
              v54 += 2;
              if (!--v51)
              {
                goto LABEL_184;
              }

              continue;
            }

            return 0;
          }

        case 7u:
          if ((*(v114 + v7 + 24) & 0xF0000000) != 0x70000000)
          {
            return 0;
          }

          v39 = *(v10 + 16);
          if (v39 != *(v17 + 16))
          {
            return 0;
          }

          if (v39)
          {
            v40 = v10 == v17;
          }

          else
          {
            v40 = 1;
          }

          if (v40)
          {
            goto LABEL_35;
          }

          v68 = v17 + 56;
          v69 = v10 + 56;
          do
          {
            if (!v39)
            {
              goto LABEL_193;
            }

            sub_1C9813714();
            if (v26 && v70 == v71)
            {
              if (v2 != v3 || v18 != v13)
              {
                return 0;
              }
            }

            else
            {
              v73 = v16;
              v74 = sub_1C9A93B18();
              result = 0;
              if ((v74 & 1) == 0)
              {
                return result;
              }

              v75 = v2 == v3 && v18 == v13;
              v16 = v73;
              if (!v75)
              {
                return result;
              }
            }

            v68 += 32;
            v69 += 32;
            --v39;
          }

          while (v39);
LABEL_35:
          if (v9 != v16)
          {
            return 0;
          }

          goto LABEL_184;
        case 8u:
          if (v15)
          {
            v56 = 0;
          }

          else
          {
            v56 = v12 == 0x80000000;
          }

          if (v56 && (v11 | v9 | v10 | v14 | v13) == 0)
          {
            if ((*(v114 + v7 + 24) & 0xF0000000) != 0x80000000)
            {
              return 0;
            }

            result = 0;
            if (v22 || v19 != 0x80000000 || v18 | v16 | v17 | v20 | v21)
            {
              return result;
            }
          }

          else
          {
            v58 = v11 | v9 | v14 | v13;
            if (v15)
            {
              v59 = 0;
            }

            else
            {
              v59 = v12 == 0x80000000;
            }

            if (v59 && v10 == 1 && v58 == 0)
            {
              sub_1C9813804();
              if (!v26)
              {
                return 0;
              }

              result = 0;
              if (v64)
              {
                return result;
              }

              if (v19 != v66 || v17 != 1)
              {
                return result;
              }
            }

            else if (!v15 && (v12 == 0x80000000 ? (v77 = v10 == 2) : (v77 = 0), v77 ? (v78 = v58 == 0) : (v78 = 0), v78))
            {
              sub_1C9813804();
              if (!v26)
              {
                return 0;
              }

              result = 0;
              if (v79)
              {
                return result;
              }

              if (v19 != v80 || v17 != 2)
              {
                return result;
              }
            }

            else if (!v15 && (v12 == 0x80000000 ? (v82 = v10 == 3) : (v82 = 0), v82 ? (v83 = v58 == 0) : (v83 = 0), v83))
            {
              sub_1C9813804();
              if (!v26)
              {
                return 0;
              }

              result = 0;
              if (v84)
              {
                return result;
              }

              if (v19 != v85 || v17 != 3)
              {
                return result;
              }
            }

            else if (v15 || (v12 == 0x80000000 ? (v87 = v10 == 4) : (v87 = 0), !v87 || v58))
            {
              if (v15 || (v12 == 0x80000000 ? (v91 = v10 == 5) : (v91 = 0), !v91 || v58))
              {
                sub_1C9813804();
                if (!v26)
                {
                  return 0;
                }

                result = 0;
                if (v95)
                {
                  return result;
                }

                if (v19 != v96 || v17 != 6)
                {
                  return result;
                }
              }

              else
              {
                sub_1C9813804();
                if (!v26)
                {
                  return 0;
                }

                result = 0;
                if (v92)
                {
                  return result;
                }

                if (v19 != v93 || v17 != 5)
                {
                  return result;
                }
              }
            }

            else
            {
              sub_1C9813804();
              if (!v26)
              {
                return 0;
              }

              result = 0;
              if (v88)
              {
                return result;
              }

              if (v19 != v89 || v17 != 4)
              {
                return result;
              }
            }

            if (v18 | v62 || v65 | v63)
            {
              return result;
            }
          }

LABEL_184:
          v4 = v113;
          v5 = v116;
          if (v116 == v113)
          {
            return 1;
          }

          break;
        default:
          if ((v19 & 0xF0000000) != 0)
          {
            return 0;
          }

          v117[2] = *v8;
          v117[3] = v9;
          v117[4] = v11;
          v118 = v12 & 1;
          v119 = HIDWORD(v12);
          v120 = v14;
          v121 = v13;
          v122 = v15;
          v123 = v17;
          v124 = v16;
          v125 = v18;
          v126 = v19 & 1;
          v127 = HIDWORD(v19);
          v128 = v20;
          v129 = v21;
          v130 = v22;
          sub_1C99F4D74();
          goto LABEL_26;
      }
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    sub_1C98134D8();
    swift_once();
    v98 = sub_1C9A91B58();
    sub_1C97BFF6C(v98, qword_1EC3D3108);
    v99 = sub_1C9A91B38();
    sub_1C9A92FB8();
    v100 = sub_1C9813578();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v117[0] = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_1C9849140(0xD000000000000019, 0x80000001C9AD4870, v117);
      sub_1C981377C();
      _os_log_impl(v104, v105, v106, v107, v102, 0xCu);
      sub_1C97A592C(v103);
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
      sub_1C98135FC();
      MEMORY[0x1CCA93280]();
    }
  }

  return 0;
}

uint64_t sub_1C9808C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C9A93B18() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C9808CEC(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (v6 && a1 != a2)
  {
    v7 = a2 + 56;
    v8 = a1 + 56;
    do
    {
      sub_1C9813714();
      v11 = v11 && v9 == v10;
      if (v11)
      {
        if (v4 != v5 || v2 != v3)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1C9A93B18();
        result = 0;
        if ((v12 & 1) == 0)
        {
          return result;
        }

        if (v4 != v5 || v2 != v3)
        {
          return result;
        }
      }

      v7 += 32;
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t sub_1C9808DA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (!v2 || result == a2)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9808DF8(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 == a2[1].i64[0])
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *v6.i8 = vmovn_s64(vceqq_s64(v6, v7));
        v8 = v6.i8[0] & v6.i8[4];
        if ((v6.i8[0] & v6.i8[4] & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C9808E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 == v2)
        {
          return result;
        }

        if (v7 >= v2)
        {
          __break(1u);
          return result;
        }

        v4 = *(v3 + 8 * v7);
        v5 = *(a2 + 32 + 8 * v7++);
        v6 = *(v4 + 16);
        if (v6 != *(v5 + 16))
        {
          return result;
        }
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return sub_1C97A79E8();
  }

  return 1;
}

uint64_t sub_1C9808F28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (!v2 || result == a2)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9808F7C()
{
  v7 = sub_1C9813848();
  type metadata accessor for CLAP.DetectorAudioFile(v7);
  sub_1C98138BC();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98137DC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C98137C0();
  if (v14)
  {
    if (!v5 || v3 == v4)
    {
      return 1;
    }

    sub_1C9813788();
    while (1)
    {
      sub_1C9813144(v3, v2, type metadata accessor for CLAP.DetectorAudioFile);
      sub_1C9813144(v4, v1, type metadata accessor for CLAP.DetectorAudioFile);
      if ((sub_1C9A914E8() & 1) == 0)
      {
        break;
      }

      v10 = *(v0 + 20);
      v11 = *(v2 + v10);
      v12 = *(v2 + v10 + 8);
      v13 = (v1 + v10);
      v14 = v11 == *v13 && v12 == v13[1];
      if (v14)
      {
        sub_1C98131A0(v1, type metadata accessor for CLAP.DetectorAudioFile);
        sub_1C98131A0(v2, type metadata accessor for CLAP.DetectorAudioFile);
      }

      else
      {
        v15 = sub_1C9A93B18();
        sub_1C98131A0(v1, type metadata accessor for CLAP.DetectorAudioFile);
        sub_1C98131A0(v2, type metadata accessor for CLAP.DetectorAudioFile);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += v6;
      v3 += v6;
      if (!--v5)
      {
        return 1;
      }
    }

    sub_1C98131A0(v1, type metadata accessor for CLAP.DetectorAudioFile);
    sub_1C98131A0(v2, type metadata accessor for CLAP.DetectorAudioFile);
  }

  return 0;
}

uint64_t sub_1C9809168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C9A93B18() & 1) == 0)
      {
        break;
      }

      if (v5 != v7 || v6 != v8)
      {
        sub_1C97CB094();
        if ((sub_1C9A93B18() & 1) == 0)
        {
          break;
        }
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C9809230(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C97A79E8();
  }

  if (!v2 || result == a2)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9809284(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 36);
  v4 = (a2 + 36);
  while (v2)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    result = *v3 == v6 && *(v3 - 1) == v5;
    v8 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C98092F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v7 = *(result + v3 + 32) == *(a2 + v3 + 32) && *(result + v3 + 40) == *(a2 + v3 + 40) && *(result + v3 + 44) == *(a2 + v3 + 44) && *(result + v3 + 48) == *(a2 + v3 + 48);
    v8 = !v7 || v2-- == 1;
    v3 += 24;
    if (v8)
    {
      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C980937C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C9A934C8())
  {
    if (a2 >> 62)
    {
      result = sub_1C9A934C8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1C97BD318(0, &qword_1EC3C54B0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1CCA912B0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1CCA912B0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1C9A931E8();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}