void sub_1000FB8F0()
{
  v1 = *&v0[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(NSMutableData) initWithLength:64];
  v86 = 0;
  *&v85 = 0;
  v4 = [v2 sendDeviceRequest:0x40000003000680 data:v3 bytesTransferred:&v86 completionTimeout:&v85 error:5.0];
  v5 = v85;
  if (v4)
  {
    if (v86 < 4)
    {
      v18 = v85;
LABEL_11:

LABEL_13:
      return;
    }

    if (!v3)
    {
      v19 = v85;
      v3 = v2;
      goto LABEL_13;
    }

    v3 = v3;
    v6 = v5;
    v7 = [v3 bytes];
    v8 = [v3 length];
    if (!v7)
    {
      goto LABEL_49;
    }

    sub_1000D5D10(v7, v8 + v7, 1);
    v10 = v9;
    v83 = v11;
    v12 = sub_1001128D0(v7, 1);
    v14 = v12;
    v15 = v13;
    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v16 != 2)
      {
        *(&v85 + 6) = 0;
        *&v85 = 0;
        goto LABEL_25;
      }

      v20 = v0;
      v21 = *(v12 + 16);
      v22 = __DataStorage._bytes.getter();
      if (!v22)
      {
LABEL_88:
        __DataStorage._length.getter();
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_78;
      }

      v25 = (v21 - v24 + v23);
      __DataStorage._length.getter();
      if (!v25)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (!v16)
      {
        *&v85 = v12;
        WORD4(v85) = v13;
        BYTE10(v85) = BYTE2(v13);
        BYTE11(v85) = BYTE3(v13);
        BYTE12(v85) = BYTE4(v13);
        BYTE13(v85) = BYTE5(v13);
LABEL_25:
        v29 = sub_10010AC70(&v85, 1);
        sub_10007676C(v14, v15);
        goto LABEL_26;
      }

      if (v12 > v12 >> 32)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v20 = v0;
      v26 = __DataStorage._bytes.getter();
      if (!v26)
      {
LABEL_90:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_91;
      }

      v27 = v26;
      v28 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v28))
      {
        goto LABEL_79;
      }

      v25 = (v14 - v28 + v27);
      __DataStorage._length.getter();
      if (!v25)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    v29 = sub_10010AC70(v25, 1);
    sub_10007676C(v14, v15);
    v0 = v20;
LABEL_26:
    if (*(v29 + 2))
    {
      v30 = v29[32];

      if (v10)
      {
        sub_1000D5D10(v10, v83, 1);
        v31 = 0;
        v82 = v33;
        v84 = v32;
        v34 = sub_1001128D0(v10, 1);
        v36 = v34;
        v37 = v35;
        v38 = v35 >> 62;
        if ((v35 >> 62) > 1)
        {
          if (v38 != 2)
          {
            *(&v85 + 6) = 0;
            *&v85 = 0;
            goto LABEL_42;
          }

          v15 = v0;
          v39 = *(v34 + 16);
          v40 = __DataStorage._bytes.getter();
          if (!v40)
          {
LABEL_92:
            __DataStorage._length.getter();
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          v41 = v40;
          v0 = (v37 & 0x3FFFFFFFFFFFFFFFLL);
          v42 = __DataStorage._offset.getter();
          if (!__OFSUB__(v39, v42))
          {
            v43 = (v39 - v42 + v41);
            __DataStorage._length.getter();
            if (!v43)
            {
              goto LABEL_93;
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (!v38)
          {
            *&v85 = v34;
            WORD4(v85) = v35;
            BYTE10(v85) = BYTE2(v35);
            BYTE11(v85) = BYTE3(v35);
            BYTE12(v85) = BYTE4(v35);
            BYTE13(v85) = BYTE5(v35);
LABEL_42:
            v47 = sub_10010AC70(&v85, 1);
            sub_10007676C(v36, v37);
LABEL_43:
            if (*(v47 + 2))
            {
              v48 = v47[32];

              if (v48 != 3)
              {

                sub_10000CA2C();
                swift_allocError();
                *v59 = 1;
                *(v59 + 8) = 0;
                *(v59 + 16) = 0xE000000000000000;
                swift_willThrow();
                goto LABEL_50;
              }

              if (v84)
              {
                v49 = v30 - 2 + (((v30 - 2) & 0x8000u) >> 15);
                sub_1000D5D10(v84, v82, 2 * (v49 >> 1));
                v50 = v49 >> 1;

                v51 = sub_1001128D0(v84, 2 * (v49 >> 1));
                v53 = v51;
                v54 = v52;
                v55 = v52 >> 62;
                if ((v52 >> 62) > 1)
                {
                  if (v55 != 2)
                  {
                    *(&v85 + 6) = 0;
                    *&v85 = 0;
                    goto LABEL_66;
                  }

                  v60 = v0;
                  v61 = *(v51 + 16);
                  v62 = __DataStorage._bytes.getter();
                  if (!v62)
                  {
                    goto LABEL_96;
                  }

                  v63 = v62;
                  v64 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v61, v64))
                  {
                    v65 = (v61 - v64 + v63);
                    __DataStorage._length.getter();
                    if (v65)
                    {
LABEL_64:
                      v69 = sub_10010A954(v65, v50);
                      sub_10007676C(v53, v54);
                      v0 = v60;
LABEL_67:
                      v31 = *(v69 + 2);
                      if (!v31 || v31 == 1 && v69[16] == 1033)
                      {
                        goto LABEL_75;
                      }

                      *&v85 = 0;
                      *(&v85 + 1) = 0xE000000000000000;
                      v36 = v0;
                      _StringGuts.grow(_:)(71);
                      v70._countAndFlagsBits = 0x206120646E756F46;
                      v70._object = 0xEF20656369766564;
                      String.append(_:)(v70);
                      v71 = [v0 boxName];
                      if (v71)
                      {
                        v72 = v71;
                        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v75 = v74;
                      }

                      else
                      {
                        v75 = 0xEE00656369766564;
                        v73 = 0x206E776F6E6B6E55;
                      }

                      v15 = 0xD000000000000026;
                      v76._countAndFlagsBits = v73;
                      v76._object = v75;
                      String.append(_:)(v76);

                      v77._countAndFlagsBits = 0xD000000000000036;
                      v77._object = 0x8000000100131560;
                      String.append(_:)(v77);
                      v37 = *(&v85 + 1);
                      v0 = v85;
                      v30 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
                      if (qword_100173CC0 == -1)
                      {
LABEL_74:
                        v78 = type metadata accessor for AUALog(0);
                        sub_10000A1BC(v78, qword_100179508);
                        sub_100039F58(1, v36 + v30, v0, v37);

                        sub_100001AB4(&unk_100177280, &unk_100120B70);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_100121960;
                        strcpy((inited + 32), "languageCount");
                        *(inited + 46) = -4864;
                        *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v31];
                        *(inited + 56) = 0x65676175676E616CLL;
                        *(inited + 64) = 0xE900000000000073;
                        isa = Array._bridgeToObjectiveC()().super.isa;

                        *(inited + 72) = isa;
                        v81 = sub_10000AB64(inited);
                        swift_setDeallocating();
                        sub_100001AB4(&qword_100174A38, &qword_100120180);
                        swift_arrayDestroy();
                        sub_1000FC32C(v15 + 1, 0x80000001001315A0, v81);
LABEL_75:

                        goto LABEL_11;
                      }

LABEL_84:
                      swift_once();
                      goto LABEL_74;
                    }

                    goto LABEL_97;
                  }
                }

                else
                {
                  if (!v55)
                  {
                    *&v85 = v51;
                    WORD4(v85) = v52;
                    BYTE10(v85) = BYTE2(v52);
                    BYTE11(v85) = BYTE3(v52);
                    BYTE12(v85) = BYTE4(v52);
                    BYTE13(v85) = BYTE5(v52);
LABEL_66:
                    v69 = sub_10010A954(&v85, v50);
                    sub_10007676C(v53, v54);
                    goto LABEL_67;
                  }

                  if (v51 <= v51 >> 32)
                  {
                    v60 = v0;
                    v66 = __DataStorage._bytes.getter();
                    if (!v66)
                    {
LABEL_98:
                      __DataStorage._length.getter();
                      __break(1u);
LABEL_99:
                      __break(1u);
                      return;
                    }

                    v67 = v66;
                    v68 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v53, v68))
                    {
                      v65 = (v53 - v68 + v67);
                      __DataStorage._length.getter();
                      if (v65)
                      {
                        goto LABEL_64;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_87;
                  }

                  __break(1u);
                }

                __break(1u);
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }

              goto LABEL_49;
            }

LABEL_80:
            __break(1u);
          }

          if (v34 <= v34 >> 32)
          {
            v15 = v0;
            v44 = __DataStorage._bytes.getter();
            if (!v44)
            {
LABEL_94:
              __DataStorage._length.getter();
              __break(1u);
              goto LABEL_95;
            }

            v45 = v44;
            v0 = (v37 & 0x3FFFFFFFFFFFFFFFLL);
            v46 = __DataStorage._offset.getter();
            if (!__OFSUB__(v36, v46))
            {
              v43 = (v36 - v46 + v45);
              __DataStorage._length.getter();
              if (!v43)
              {
LABEL_95:
                __break(1u);
LABEL_96:
                __DataStorage._length.getter();
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

LABEL_40:
              v47 = sub_10010AC70(v43, 1);
              sub_10007676C(v36, v37);
              v0 = v15;
              goto LABEL_43;
            }

LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_83;
      }

LABEL_49:
      sub_10000CA2C();
      swift_allocError();
      *v56 = 57;
      *(v56 + 8) = 0;
      *(v56 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_77;
  }

  v17 = v85;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_50:

  v57 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v58, qword_100179508);
  sub_100039F58(1, &v0[v57], 0xD000000000000026, 0x8000000100131530);
}

void sub_1000FC32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001228A0;
  *(inited + 32) = 4475222;
  *(inited + 40) = 0xE300000000000000;
  v6 = *&v3[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor];
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:*(v6 + 8)];
  *(inited + 56) = 4475216;
  *(inited + 64) = 0xE300000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*(v6 + 10)];
  strcpy((inited + 80), "productString");
  *(inited + 94) = -4864;
  v7 = [v3 boxName];
  if (!v7)
  {
    sub_10001EBA8(0, &qword_100177278, NSString_ptr);
    v7 = NSString.init(stringLiteral:)();
  }

  *(inited + 96) = v7;
  v8 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_100001AB4(&qword_100174A38, &qword_100120180);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v8;
  sub_1000FD0B0(a3, sub_1000FCF10, 0, isUniquelyReferenced_nonNull_native, aBlock);

  v10 = aBlock[0];
  v11 = String._bridgeToObjectiveC()();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  aBlock[4] = sub_1000FED68;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F81CC;
  aBlock[3] = &unk_1001671A0;
  v13 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

id USBDevice.string(forIndex:)(int a1)
{
  if (!*(v1 + OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject))
  {
    return 0;
  }

  result = sub_1000F8280((a1 & 0x1FFFF));
  if (!v2)
  {
    if (v4)
    {
      sub_10001EA64();
      v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000FC690(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject);
  if (v4)
  {
    v32 = a1 >> 8;
    v33 = a1 >> 16;
    v8 = HIDWORD(a1);
    v34 = OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList;
    v9 = v4;
    v10 = mach_absolute_time();
    v36 = 0;
    v11 = [v9 sendDeviceRequest:a1 data:a2 bytesTransferred:a3 completionTimeout:&v36 error:5.0];
    v12 = v36;
    if (v11)
    {
      goto LABEL_3;
    }

    v31 = v8;
    v19 = 1;
    do
    {
      v20 = v12;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v36 = v21;
      swift_errorRetain();
      sub_100001AB4(&qword_100177270, &qword_100120A40);
      sub_10001EBA8(0, &qword_100175168, NSError_ptr);
      if (!swift_dynamicCast())
      {
        goto LABEL_27;
      }

      if ([v35 code] == -536870163)
      {
        v22 = *(v3 + v34);
        if (v22)
        {
          v23 = *(v22 + 16);
          v24 = (v22 + 32);
          while (v23)
          {
            v25 = *v24++;
            --v23;
            if (v25 == 30)
            {
              goto LABEL_20;
            }
          }
        }

LABEL_26:
        sub_100001AB4(&unk_100177280, &unk_100120B70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001215B0;
        *(inited + 32) = 0x74706D65747461;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v19];
        *(inited + 56) = 0x726F727265;
        *(inited + 64) = 0xE500000000000000;
        *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v35, "code")}];
        strcpy((inited + 80), "bmRequestType");
        *(inited + 94) = -4864;
        *(inited + 96) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:a1];
        *(inited + 104) = 0x7473657571655262;
        *(inited + 112) = 0xE800000000000000;
        *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v32];
        *(inited + 128) = 0x65756C615677;
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v33];
        *(inited + 152) = 0x7865646E4977;
        *(inited + 160) = 0xE600000000000000;
        *(inited + 168) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v31];
        v30 = sub_10000AB64(inited);
        swift_setDeallocating();
        sub_100001AB4(&qword_100174A38, &qword_100120180);
        swift_arrayDestroy();
        sub_1000FC32C(0xD000000000000027, 0x80000001001314D0, v30);

        swift_willThrow();
LABEL_27:

        return;
      }

LABEL_20:
      if ([v35 code] != -536850432 || v19 == 3)
      {
        goto LABEL_26;
      }

      usleep(0x186A0u);

      ++v19;
      v27 = v9;
      v10 = mach_absolute_time();
      v36 = 0;
      v28 = [v27 sendDeviceRequest:a1 data:a2 bytesTransferred:a3 completionTimeout:&v36 error:5.0];
      v12 = v36;
    }

    while ((v28 & 1) == 0);
    LOWORD(v8) = v31;
LABEL_3:
    v13 = v12;
    v14 = mach_absolute_time();
    v15 = v14 - v10;
    if (v14 < v10)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_5;
    }

    swift_once();
LABEL_5:
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (is_mul_ok(v15, qword_100179650))
      {
        if (HIDWORD(qword_100179650))
        {
          v15 = v15 * qword_100179650 / HIDWORD(qword_100179650);
          goto LABEL_9;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

LABEL_9:
    if (v15 >= 0x6052340)
    {
      sub_100001AB4(&unk_100177280, &unk_100120B70);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_100120CD0;
      *(v16 + 32) = 0x4D64657370616C65;
      *(v16 + 40) = 0xE900000000000053;
      *(v16 + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v15 / 0xF4240];
      strcpy((v16 + 56), "bmRequestType");
      *(v16 + 70) = -4864;
      *(v16 + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:a1];
      *(v16 + 80) = 0x7473657571655262;
      *(v16 + 88) = 0xE800000000000000;
      *(v16 + 96) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v32];
      *(v16 + 104) = 0x65756C615677;
      *(v16 + 112) = 0xE600000000000000;
      *(v16 + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v33];
      *(v16 + 128) = 0x7865646E4977;
      *(v16 + 136) = 0xE600000000000000;
      *(v16 + 144) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v8];
      v17 = sub_10000AB64(v16);
      swift_setDeallocating();
      sub_100001AB4(&qword_100174A38, &qword_100120180);
      swift_arrayDestroy();
      sub_1000FC32C(0xD00000000000002DLL, 0x8000000100131500, v17);
    }
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v18 = 58;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

id USBDevice.__allocating_init(boxUID:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithBoxUID:v6 withPlugin:a3];

  return v7;
}

void sub_1000FCE8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1000FCF10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1000FCF5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v2 != v3)
    {
      v4 = a1;
      v5 = *(a1 + 16);
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v4;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v9 != v10)
    {
      v11 = a1;
      v12 = *(a1 + 48);
      v13 = a2;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v13;
      v15 = v14;
      a1 = v11;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a1 + 72);
  v17 = *(a2 + 72);
  if (v16)
  {
    if (v17 && (*(a1 + 64) == *(a2 + 64) && v16 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000FD0B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = sub_10001D11C(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        sub_1000CC7C0();
      }
    }

    else
    {
      v31 = v50;
      sub_1000CBAFC(v29, v45 & 1);
      v32 = *v31;
      v33 = sub_10001D11C(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_100022644();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FD338(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 propertyForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_10000D040(v23, &unk_100174A20, &unk_100120170);
    return 0x6E776F6E6B6E55;
  }

  sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0x6E776F6E6B6E55;
  }

  v4 = [v20 unsignedIntValue] & 0xFF000000;
  v5 = objc_opt_self();
  sub_100001AB4(&qword_100178900, &qword_100128508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121960;
  *(inited + 32) = 0x6469766F72504F49;
  *(inited + 40) = 0xEF7373616C437265;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x8000000100131630;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7265706F72504F49;
  *(inited + 88) = 0xEF686374614D7974;
  sub_100001AB4(&qword_100178908, &qword_100128510);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10011DE90;
  *(v7 + 32) = 0x6E6F697461636F6CLL;
  v8 = v7 + 32;
  *(v7 + 40) = 0xEA00000000004449;
  *(v7 + 48) = v4;
  v9 = sub_10000AE90(v7);
  swift_setDeallocating();
  sub_10000D040(v8, &qword_100178910, &qword_100128518);
  *(inited + 120) = sub_100001AB4(&qword_100178918, &unk_100128520);
  *(inited + 96) = v9;
  sub_10000AC68(inited);
  swift_setDeallocating();
  sub_100001AB4(&qword_1001749E0, &qword_100120130);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v5 matchingService:isa];

  if (!v11)
  {
    v12 = 0x6E776F6E6B6E55;

    return v12;
  }

  v12 = 1229146181;
  v13 = [v11 ioClassName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *&v23[0] = v14;
  *(&v23[0] + 1) = v16;
  v17 = 1229146200;
  sub_10001EA64();
  if (StringProtocol.contains<A>(_:)())
  {
    goto LABEL_8;
  }

  *&v23[0] = v14;
  *(&v23[0] + 1) = v16;
  if (StringProtocol.contains<A>(_:)())
  {
    goto LABEL_14;
  }

  *&v23[0] = v14;
  *(&v23[0] + 1) = v16;
  v17 = 1229146191;
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (*&v23[0] = v14, *(&v23[0] + 1) = v16, v17 = 1229146197, (StringProtocol.contains<A>(_:)()))
  {
LABEL_8:

    return v17;
  }

  *&v23[0] = v14;
  *(&v23[0] + 1) = v16;
  v12 = 1229146198;
  if (StringProtocol.contains<A>(_:)())
  {
LABEL_14:

    return v12;
  }

  v12 = 0x49434872657355;
  *&v23[0] = v14;
  *(&v23[0] + 1) = v16;
  v19 = StringProtocol.contains<A>(_:)();

  if ((v19 & 1) == 0)
  {
    return v14;
  }

  return v12;
}

void sub_1000FD814(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v29[0] = 0x6465657053425355;
  *(&v29[0] + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  sub_1000F7F3C(a1, v30, v29);
  if (v2)
  {
    goto LABEL_9;
  }

  sub_10001E0C4(v29, v28);
  sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v5 = v31;
  sub_10000CE78(v29);
  sub_10001E070(v30);
  v6 = [v5 integerValue];

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v6))
  {
    *&v29[0] = 0x6369766544646362;
    *(&v29[0] + 1) = 0xE900000000000065;
    AnyHashable.init<A>(_:)();
    sub_1000F7F3C(a1, v30, v29);
    sub_10001E0C4(v29, v28);
    if (swift_dynamicCast())
    {
      v7 = v31;
      sub_10000CE78(v29);
      sub_10001E070(v30);
      v26 = [v7 integerValue];

      *&v29[0] = 0xD000000000000010;
      *(&v29[0] + 1) = 0x8000000100131780;
      AnyHashable.init<A>(_:)();
      v8 = sub_1000F804C(a1, v30);
      v12 = v11;
      v27 = v8;
      sub_10001E070(v30);
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        *&v29[0] = 0xD000000000000011;
        *(&v29[0] + 1) = 0x800000010012E8B0;
        AnyHashable.init<A>(_:)();
        v9 = sub_1000F804C(a1, v30);
        v13 = v14;
        v27 = v9;
        sub_10001E070(v30);
      }

      *&v29[0] = 0x6375646F72506469;
      *(&v29[0] + 1) = 0xE900000000000074;
      AnyHashable.init<A>(_:)();
      sub_1000F7F3C(a1, v30, v29);
      sub_10001E0C4(v29, v28);
      if (swift_dynamicCast())
      {
        v15 = v31;
        sub_10000CE78(v29);
        sub_10001E070(v30);
        v25 = [v15 integerValue];

        *&v29[0] = 0x726F646E65566469;
        *(&v29[0] + 1) = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        sub_1000F7F3C(a1, v30, v29);
        sub_10001E0C4(v29, v28);
        if (swift_dynamicCast())
        {
          v16 = v31;
          sub_10000CE78(v29);
          sub_10001E070(v30);
          v17 = [v16 integerValue];

          *&v29[0] = 0xD000000000000010;
          *(&v29[0] + 1) = 0x80000001001317A0;
          AnyHashable.init<A>(_:)();
          v18 = sub_1000F804C(a1, v30);
          v20 = v19;
          sub_10001E070(v30);
          *&v29[0] = 0xD000000000000016;
          *(&v29[0] + 1) = 0x80000001001317C0;
          AnyHashable.init<A>(_:)();
          v22 = sub_1000F804C(a1, v30);
          v24 = v23;
          sub_10001E070(v30);
          *a2 = v6;
          *(a2 + 8) = v26;
          *(a2 + 16) = v27;
          *(a2 + 24) = v13;
          *(a2 + 32) = v25;
          *(a2 + 40) = v17;
          *(a2 + 48) = v18;
          *(a2 + 56) = v20;
          *(a2 + 64) = v22;
          *(a2 + 72) = v24;
          return;
        }
      }

      sub_10000CA2C();
      swift_allocError();
      *v21 = 4;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_8;
    }

LABEL_7:
    sub_10000CA2C();
    swift_allocError();
    *v10 = 4;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_8:
    sub_10000CE78(v29);
LABEL_9:
    sub_10001E070(v30);
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for USBDevice()
{
  result = qword_1001788E8;
  if (!qword_1001788E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s9AUASDCore9USBDeviceC10acquireBox_7fromHALS2b_SbtF_0(int a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (!v2 || !sub_1000AA808(0x1Fu, v2))
  {
    return 0;
  }

  result = [v1 audioDevices];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v37 = v1;
  sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock = _swiftEmptyArrayStorage;
  if (v6 >> 62)
  {
LABEL_23:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
LABEL_6:
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      do
      {
        v10 = v9;
        v11 = v8;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v12 = *(v6 + 8 * v11 + 32);
          }

          v13 = v12;
          v8 = v11 + 1;
          if (__OFADD__(v11, 1))
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

          ++v11;
          if (v8 == v7)
          {
            v9 = v10;
            goto LABEL_25;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = aBlock;
      }

      while (v8 != v7);
      goto LABEL_25;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_25:

  if (v9 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = v37;
    if (!i)
    {
      break;
    }

    v17 = 0;
    v18 = v9 & 0xC000000000000001;
    v38 = v9 & 0xFFFFFFFFFFFFFF8;
    v39 = (a1 & 1) == 0;
    p_type = &stru_10016FFF0.type;
    v43 = a1;
    v41 = i;
    v42 = v9;
    v40 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v20 = *(v9 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v23 = type metadata accessor for AUAAudioDevice();
      v52.receiver = v21;
      v52.super_class = v23;
      if (objc_msgSendSuper2(&v52, p_type[471]) == (a1 & 1))
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v39;
        *(v24 + 24) = v21;
        aBlock = 0xD000000000000031;
        v46 = 0x8000000100131650;
        v25 = v21;
        v26._countAndFlagsBits = 8236;
        v26._object = 0xE200000000000000;
        String.append(_:)(v26);
        v27._object = 0x800000010012AEF0;
        v27._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v27);
        v28._countAndFlagsBits = 2108704;
        v28._object = 0xE300000000000000;
        String.append(_:)(v28);
        v51 = 514;
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v46, &v25[OBJC_IVAR___AUAAudioDevice_logID]);

        v30 = *&v25[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
        v31 = swift_allocObject();
        v31[2] = sub_1000FEDC0;
        v31[3] = v24;
        aBlock = sub_10000CF5C;
        v46 = v31;
        v32 = *(v30 + 16);
        v33 = __chkstk_darwin(v31);
        __chkstk_darwin(v33);

        os_unfair_lock_lock(v32 + 4);
        sub_10000CF80(&v51);
        os_unfair_lock_unlock(v32 + 4);
        LODWORD(v30) = v51;

        if (v30 == 1)
        {
          v34 = swift_allocObject();
          *(v34 + 16) = v25;
          v49 = sub_10000CFD4;
          v50 = v34;
          aBlock = _NSConcreteStackBlock;
          v46 = 1107296256;
          v47 = sub_1000172D4;
          v48 = &unk_100167268;
          v35 = _Block_copy(&aBlock);
          v36 = v25;

          v44.receiver = v36;
          v44.super_class = v23;
          objc_msgSendSuper2(&v44, "requestConfigurationChange:", v35);

          _Block_release(v35);
        }

        else
        {
        }

        a1 = v43;
        i = v41;
        v9 = v42;
        v18 = v40;
        p_type = (&stru_10016FFF0 + 16);
      }

      else
      {
      }

      ++v17;
      if (v22 == i)
      {

        v16 = v37;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_43:
  [v16 setAcquired:a1 & 1];
  return 1;
}

unint64_t sub_1000FEBD4()
{
  result = qword_1001788B8;
  if (!qword_1001788B8)
  {
    type metadata accessor for tIOUSBHostConnectionSpeed(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001788B8);
  }

  return result;
}

uint64_t sub_1000FEC34()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000FED30()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FED70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FED88()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FEDCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FEE04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FEE6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1000FEEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1000FEF44()
{
  result = qword_100178920;
  if (!qword_100178920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178920);
  }

  return result;
}

void sub_1000FEFA8()
{
  type metadata accessor for AUAUserDefaults();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSuiteName:v2];

  *(v0 + 16) = v3;
  qword_100179640 = v0;
}

uint64_t sub_1000FF03C()
{

  return swift_deallocClassInstance();
}

double sub_1000FF098@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 10);
  v4 = *(v1 + 24);
  v17 = *(v1 + 32);
  BYTE2(v9) = -1;
  LOWORD(v9) = 0;
  *(&v9 + 1) = v3;
  *&v10 = v4;
  WORD4(v10) = v17;
  v11 = 0uLL;
  LOWORD(v12) = 257;
  *(&v12 + 1) = 0;
  v14 = -1;
  v13 = 0;
  v15 = v3;
  v16 = v4;
  v18 = 0;
  v19 = 0;
  v20 = 257;
  v21 = 0;
  sub_10002C080(&v9, &v8);
  sub_1000383FC(&v13);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

void sub_1000FF138(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 10);
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    sub_100047030(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = (v5 + 32);
    v9 = _swiftEmptyArrayStorage[2];
    do
    {
      v11 = *v8++;
      v10 = v11;
      v16 = v7;
      v12 = v7[3];
      if (v9 >= v12 >> 1)
      {
        sub_100047030((v12 > 1), v9 + 1, 1);
        v7 = v16;
      }

      v7[2] = v9 + 1;
      v7[v9++ + 4] = v10;
      --v6;
    }

    while (v6);
    v4 = v15;
  }

  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  *(a1 + 2) = 1;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
}

__n128 sub_1000FF244@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 10);
  v4 = 512;
  v5 = *(v1 + 12);
  if (*(v1 + 24) == 1)
  {
    v4 = 257;
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 8))
  {
    v8 = *(v1 + 8) | 0x10000;
  }

  else
  {
    v8 = -65536;
  }

  v26 = *(v1 + 40);
  v13 = v4;
  LOBYTE(v14) = 0;
  *(&v14 + 1) = v5;
  BYTE2(v15) = BYTE2(v8);
  LOWORD(v15) = v8;
  *(&v15 + 1) = v3;
  v16.n128_u64[0] = v6;
  v16.n128_u16[4] = v7;
  *&v17[8] = xmmword_100122890;
  *&v17[24] = 0;
  v18 = 0;
  *v17 = _swiftEmptyArrayStorage;
  v19[0] = v4;
  v19[1] = 0;
  v20 = 0;
  v21 = v5;
  v22 = v8;
  v23 = BYTE2(v8);
  v24 = v3;
  v25 = v6;
  v28 = xmmword_100122890;
  v29 = 0;
  v30 = 0;
  v27 = _swiftEmptyArrayStorage;
  sub_1000767C0(&v13, v12);
  sub_10007681C(v19);
  v9 = *&v17[16];
  *(a1 + 64) = *v17;
  *(a1 + 80) = v9;
  *(a1 + 96) = v18;
  v10 = v14;
  *a1 = v13;
  *(a1 + 16) = v10;
  result = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  return result;
}

double sub_1000FF350@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 10);
  v4 = *(v1 + 12);
  v5 = *(v1 + 14);
  v6 = 768;
  if (*(v1 + 22) == 1)
  {
    v6 = 257;
  }

  if (*(v1 + 8))
  {
    v7 = *(v1 + 8) | 0x10000;
  }

  else
  {
    v7 = -65536;
  }

  v29 = *(v1 + 24);
  v30 = *(v1 + 32);
  v13[96] = 0;
  v14 = v6;
  LOBYTE(v15) = 0;
  *(&v15 + 1) = v5;
  BYTE2(v16) = BYTE2(v7);
  LOWORD(v16) = v7;
  *(&v16 + 1) = v4;
  LOBYTE(v17) = 0;
  *(&v17 + 1) = v3;
  *&v18 = 0;
  v8 = *(v1 + 24);
  LOWORD(v19) = *(v1 + 32);
  *(&v18 + 1) = v8;
  *(&v19 + 1) = 0;
  v20[0] = v6;
  v20[1] = 0;
  v21 = 0;
  v22 = v5;
  v24 = BYTE2(v7);
  v23 = v7;
  v25 = v4;
  v26 = 0;
  v27 = v3;
  v28 = 0;
  v31 = 0;
  sub_1000766B0(&v14, v13);
  sub_100076AD0(v20);
  v9 = v17;
  a1[2] = v16;
  a1[3] = v9;
  v10 = v19;
  a1[4] = v18;
  a1[5] = v10;
  result = *&v14;
  v12 = v15;
  *a1 = v14;
  a1[1] = v12;
  return result;
}

__n128 sub_1000FF45C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 10);
  v4 = *(v1 + 12);
  if (*(v1 + 8))
  {
    v5 = *(v1 + 8) | 0x10000;
  }

  else
  {
    v5 = -65536;
  }

  *&v9[5] = *(v1 + 16);
  *&v9[13] = *(v1 + 24);
  v10 = 0;
  *&v11 = v4;
  BYTE8(v11) = 0;
  *&v12[0] = v3;
  *(v12 + 11) = *v9;
  *(&v12[1] + 2) = *&v9[7];
  BYTE10(v12[0]) = BYTE2(v5);
  WORD4(v12[0]) = v5;
  v15 = v4;
  *&v13 = _swiftEmptyArrayStorage;
  *(&v13 + 1) = 0;
  v14 = 0;
  v16 = 0;
  v17 = v3;
  v19 = BYTE2(v5);
  v18 = v5;
  *&v20[7] = *&v9[7];
  *v20 = *v9;
  *&v20[29] = 0;
  *&v20[37] = 0;
  *&v20[21] = _swiftEmptyArrayStorage;
  sub_100076614(&v11, &v8);
  sub_100091CF0(&v15);
  v6 = v13;
  *(a1 + 32) = v12[1];
  *(a1 + 48) = v6;
  *(a1 + 64) = v14;
  result = v12[0];
  *a1 = v11;
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4AudioControlSelfDescriptor()
{
  v1 = sub_1000643A0(*v0, *(v0 + 8) | (*(v0 + 10) << 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000FF698()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  Hasher.init(_seed:)();
  v4 = sub_1000643A0(v1, v2 | (v3 << 16));
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4OutputTerminalDescriptor()
{
  v1 = sub_100064FD0(*v0, v0[1], v0[2]);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000FF900()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  v4 = sub_100064FD0(v1, v2, v3);
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

Swift::Int ADC4MixerUnitDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, int a3)
{
  Hasher.init(_seed:)();
  v6 = sub_100068C58(a1, a2, a3);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4MixerUnitDescriptor()
{
  v1 = sub_100068C58(*v0, *(v0 + 8), *(v0 + 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1000FFB10()
{
  v1 = *(v0 + 16);
  v3 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v4 = sub_100068C58(v3, v2, v1);
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

Swift::Int sub_1000FFD30(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  v5 = a2;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  v7 = a2 >> 16;
  v8 = HIDWORD(a2);
  v9 = a3 >> 16;
  v10 = HIDWORD(a3);
  Hasher.init(_seed:)();
  LOWORD(v15[0]) = v5;
  WORD1(v15[0]) = v7;
  WORD2(v15[0]) = v8;
  *(v15 + 6) = *(&v16 + 6);
  WORD5(v15[0]) = v9;
  WORD6(v15[0]) = v10;
  v11 = a4(a1, *&v15[0], *(&v15[0] + 1));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      sub_10001EDEC(v13, v15);
      AnyHashable.hash(into:)();
      sub_10001E070(v15);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000FFE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void))
{
  v4 = *(v3 + 8);
  WORD2(v6) = *(v3 + 12);
  *(&v6 + 6) = *(v3 + 14);
  return a3(*v3, v6, *(&v6 + 1));
}

uint64_t sub_1000FFE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  v5 = *v4;
  v6 = *(v4 + 6);
  v7 = *(v4 + 14);
  v8 = *(v4 + 18);
  LODWORD(v13[0]) = *(v4 + 2);
  WORD2(v13[0]) = v6;
  *(v13 + 6) = __PAIR64__(v8, v7);
  v9 = a4(v5, *&v13[0], *(&v13[0] + 1));
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

  else
  {
  }
}

Swift::Int sub_1000FFF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  v6 = *v4;
  v7 = *(v4 + 2);
  v8 = *(v4 + 6);
  v9 = *(v4 + 14);
  v10 = *(v4 + 18);
  Hasher.init(_seed:)();
  LODWORD(v15[0]) = v7;
  WORD2(v15[0]) = v8;
  *(v15 + 6) = __PAIR64__(v10, v9);
  v11 = a4(v6, *&v15[0], *(&v15[0] + 1));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      sub_10001EDEC(v13, v15);
      AnyHashable.hash(into:)();
      sub_10001E070(v15);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  return Hasher._finalize()();
}

uint64_t sub_100100038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, void, void, void))
{
  v5 = *(a1 + 8);
  WORD2(v8) = *(a1 + 12);
  *(&v8 + 6) = *(a1 + 14);
  v6 = v8;
  LODWORD(v8) = *(a2 + 8);
  WORD2(v8) = *(a2 + 12);
  *(&v8 + 6) = *(a2 + 14);
  return a5(*a1, v6, *(&v6 + 1), *a2, v8, *(&v8 + 1));
}

Swift::Int ADC4ExtensionUnitDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_100066724();
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

Swift::Int sub_100100120()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  return ADC4ExtensionUnitDescriptor.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ExtensionUnitDescriptor()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 8);
  v2 = sub_100066724();
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

Swift::Int sub_100100218()
{
  v1 = *(v0 + 16);
  v6[7] = *v0;
  v6[8] = v1;
  v7 = *(v0 + 32);
  Hasher.init(_seed:)();
  v2 = sub_100066724();
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC4ExtensionUnitDescriptor(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 8);
  return sub_10006DAF8() & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ClockSourceDescriptor()
{
  v1 = sub_100067FE8(*v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1001003E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  Hasher.init(_seed:)();
  v5 = sub_100067FE8(v1, v2, v3 | (v4 << 32));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1001004C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v8 = a4(a1, a2, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001005AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v5 = a4(*v4, *(v4 + 8), *(v4 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100100678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 8);
  Hasher.init(_seed:)();
  v9 = a4(v6, v7, v8);
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

Swift::Int sub_10010076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v8 = a4(a1, a2, a3 & 0xFFFFFFFFFFFFLL);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4SamplingRateConverterUnitDescriptor()
{
  v1 = sub_100061A10(*v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 18) << 16));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1001008E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 18);
  Hasher.init(_seed:)();
  v5 = sub_100061A10(v1, v2, v3 | (v4 << 16));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

Swift::Int ADC4PowerDomainEntityDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_100063AEC();
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

Swift::Int sub_100100A30()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return ADC4PowerDomainEntityDescriptor.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4PowerDomainEntityDescriptor()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 16);
  v2 = sub_100063AEC();
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

Swift::Int sub_100100B28()
{
  v1 = *(v0 + 16);
  v6[7] = *v0;
  v6[8] = v1;
  v7 = *(v0 + 32);
  Hasher.init(_seed:)();
  v2 = sub_100063AEC();
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC4PowerDomainEntityDescriptor(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  return sub_10006C6B0() & 1;
}

Swift::Int sub_100100C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v6 = a3(a1, a2 & 0xFFFFFFFFFFFFLL);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t sub_100100D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, unint64_t))
{
  v5 = a4(*v4, *(v4 + 8) | (*(v4 + 12) << 32));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100100DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 2);
  v8 = *(v4 + 6);
  Hasher.init(_seed:)();
  v9 = a4(v6, v7 | (v8 << 32));
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

Swift::Int ADC4TerminalCompanionChannelBandwidthSegment.hashValue.getter(unint64_t a1, unsigned int a2)
{
  Hasher.init(_seed:)();
  v4 = sub_100061748(a1, a2);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4TerminalCompanionChannelBandwidthSegment()
{
  v1 = sub_100061748(*v0, *(v0 + 8));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1001010E4()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  v3 = sub_100061748(v2, v1);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4TerminalCompanionChannelMagnitudeSegmentPoint()
{
  v1 = sub_100060B28(*v0 | (*(v0 + 2) << 32));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_1001012C8()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  v3 = sub_100060B28(v1 | (v2 << 32));
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

Swift::Int ADC4TerminalCompanionChannelMagnitudePhaseSegmentPoint.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100060834(a1);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4TerminalCompanionChannelMagnitudePhaseSegmentPoint()
{
  v1 = sub_100060834(*v0);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_100101514()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_100060834(v1);
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

uint64_t sub_100101678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v5 = a4(*v4, v4[1]);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100101740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = v4;
  v6 = *v4;
  v7 = v8[1];
  Hasher.init(_seed:)();
  v9 = a4(v6, v7);
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

Swift::Int sub_10010181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v8 = a4(a1, a2, a3);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4ConnectorEntityDescriptor()
{
  v1 = sub_10006468C(*v0, v0[1], v0[2]);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_100101980()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  v4 = sub_10006468C(v1, v2, v3);
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

Swift::Int ADC4AudioStreamingSelfDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  Hasher.init(_seed:)();
  v8 = sub_100062C7C(a1, a2, a3, a4);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4AudioStreamingSelfDescriptor()
{
  v1 = sub_100062C7C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      sub_10001EDEC(v3, v5);
      AnyHashable.hash(into:)();
      sub_10001E070(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Int sub_100101BFC()
{
  v1 = *(v0 + 24);
  v2 = *v0;
  v5 = v0 + 8;
  v4 = *(v0 + 8);
  v3 = *(v5 + 8);
  Hasher.init(_seed:)();
  v6 = sub_100062C7C(v2, v4, v3, v1);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

Swift::Int ADC4AudioStreamingValidFrequencyRangeDescriptor.hashValue.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  v3 = a2;
  *v11 = a2;
  *&v11[8] = a3;
  v5 = a2 >> 16;
  Hasher.init(_seed:)();
  LOWORD(v10[0]) = v3;
  *(v10 + 2) = __PAIR64__(*&v11[6], v5);
  v6 = sub_100060E44(a1, v10[0], *&v11[8]);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100101D78()
{
  v1 = *(v0 + 8);
  *&v3[2] = *(v0 + 10);
  return ADC4AudioStreamingValidFrequencyRangeDescriptor.hashValue.getter(*v0, *v3, HIWORD(*(v0 + 14)));
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC4AudioStreamingValidFrequencyRangeDescriptor()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 14);
  LOWORD(v8[0]) = *(v0 + 8);
  *(v8 + 2) = __PAIR64__(v3, v2);
  v4 = sub_100060E44(v1, v8[0], SHIWORD(v3));
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

Swift::Int sub_100101E6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  v4 = *(v0 + 14);
  Hasher.init(_seed:)();
  LOWORD(v9[0]) = v2;
  *(v9 + 2) = __PAIR64__(v4, v3);
  v5 = sub_100060E44(v1, v9[0], SHIWORD(v4));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC4AudioStreamingValidFrequencyRangeDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 10);
  v6 = *(a2 + 14);
  *(&v9 + 2) = *(a1 + 10);
  HIWORD(v9) = *(a1 + 14);
  v7 = v9;
  LOWORD(v10) = v4;
  *(&v10 + 2) = __PAIR64__(v6, v5);
  return sub_10006BD58(*a1, v7, HIWORD(*(a1 + 14)), v3, v10, SHIWORD(v6));
}

Swift::Int sub_100101F80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
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

uint64_t sub_100102038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(*v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100102100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  v7 = a4(v6);
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

  return Hasher._finalize()();
}

Swift::Int sub_1001021B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  Hasher.init(_seed:)();
  v6 = a3(a1, a2);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      sub_10001EDEC(v8, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

uint64_t sub_100102278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v5 = a4(*v4, v4[1]);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100102340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  Hasher.init(_seed:)();
  v8 = a4(v7, v6);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100102404(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFLL);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
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

void sub_10010249C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v3);
      v5 = *(a3 + 16);
      Hasher._combine(_:)(v5);
      if (v5)
      {
        v6 = (a3 + 32);
        do
        {
          v7 = *v6++;
          Hasher._combine(_:)(v7);
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v3);
  }
}

uint64_t sub_100102558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 1) << 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_10001EDEC(v7, v9);
      AnyHashable.hash(into:)();
      sub_10001E070(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

Swift::Int sub_100102628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 1);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      sub_10001EDEC(v10, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001026F8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A00, type metadata accessor for ADC4ClassSpecificAudioControlInterfaceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102798(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A10, type metadata accessor for ADC4AudioControlSelfDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102838(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A20, type metadata accessor for ADC4InputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001028D8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A30, type metadata accessor for ADC4InputTerminalDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102978(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A40, type metadata accessor for ADC4OutputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102A18(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A50, type metadata accessor for ADC4MixerUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102AB8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A60, type metadata accessor for ADC4SelectorUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102B58(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A70, type metadata accessor for ADC4FeatureUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102BF8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A80, type metadata accessor for ADC4EffectUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102C98(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178A90, type metadata accessor for ADC4ProcessingUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102D38(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178AA0, type metadata accessor for ADC4ExtensionUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102DD8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178AB0, type metadata accessor for ADC4ClockSourceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102E78(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178AC0, type metadata accessor for ADC4ClockSelectorDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102F18(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178AD0, type metadata accessor for ADC4SamplingRateConverterUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100102FB8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178AE0, type metadata accessor for ADC4PowerDomainEntityDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103058(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178AF0, type metadata accessor for ADC4TerminalCompanionDescriptorHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001030F8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B00, type metadata accessor for ADC4TerminalCompanionDescriptorSegmentHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103198(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B10, type metadata accessor for ADC4TerminalCompanionEN50322_2Segment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103238(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B20, type metadata accessor for ADC4TerminalCompanionChannelBandwidthSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001032D8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B30, type metadata accessor for ADC4TerminalCompanionChannelMagnitudeSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103378(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B40, type metadata accessor for ADC4TerminalCompanionChannelMagnitudeSegmentPoint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103418(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B50, type metadata accessor for ADC4TerminalCompanionChannelMagnitudePhaseSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001034B8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B60, type metadata accessor for ADC4TerminalCompanionChannelMagnitudePhaseSegmentPoint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103558(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B70, type metadata accessor for ADC4TerminalCompanionChannelPositionXYZSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001035F8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B80, type metadata accessor for ADC4TerminalCompanionChannelPositionRThetaPhiSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103698(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178B90, type metadata accessor for ADC4ConnectorEntityDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103738(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178BA0, type metadata accessor for ADC4ClassSpecificAudioStreamingInterfaceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001037D8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178BB0, type metadata accessor for ADC4AudioStreamingSelfDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103878(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178BC0, type metadata accessor for ADC4AudioStreamingValidFrequencyRangeDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103918(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178BD0, type metadata accessor for ADC4ClusterEndBlockSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001039B8(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178BE0, type metadata accessor for ADC4ClusterChannelAmbisonicSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103A58(uint64_t a1)
{
  result = sub_100103AF8(&qword_100178BF0, type metadata accessor for ADC4ClusterChannelDescriptionSegment);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100103AF8(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100103B40()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10010249C(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100103B94()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_10010249C(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_100103BDC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (!v3)
  {
    if (!(v2 >> 62))
    {
      return *a1 == v2;
    }

    return 0;
  }

  v4 = a2[1];
  if (v3 == 1)
  {
    if (v2 >> 62 == 1 && *a1 == v2)
    {
      return sub_1000E4834(a1[1], v4);
    }

    return 0;
  }

  return v2 >> 62 == 2 && v2 == 0x8000000000000000 && v4 == 0;
}

uint64_t sub_100103C58@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_89;
  }

  result = sub_1000D5D10(a1, a2, 22);
  if (v3)
  {
    return result;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_1001128D0(a1, 22);
  v15 = v13;
  v16 = v14;
  v17 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v17 != 2)
    {
      *(&v117 + 6) = 0;
      *&v117 = 0;
      goto LABEL_17;
    }

    v5 = *(v13 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_133:
      __DataStorage._length.getter();
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v5, v20))
    {
      v4 = v5 - v20 + v19;
      __DataStorage._length.getter();
      if (!v4)
      {
        goto LABEL_134;
      }

      goto LABEL_15;
    }

    goto LABEL_116;
  }

  if (v17)
  {
    v5 = v13;
    if (v13 <= v13 >> 32)
    {
      v21 = __DataStorage._bytes.getter();
      if (!v21)
      {
LABEL_135:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_136;
      }

      v22 = v21;
      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v15, v23))
      {
        v4 = v15 - v23 + v22;
        __DataStorage._length.getter();
        if (!v4)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

LABEL_15:
        v24 = v4;
        goto LABEL_18;
      }

LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  *&v117 = v13;
  WORD4(v117) = v14;
  BYTE10(v117) = BYTE2(v14);
  BYTE11(v117) = BYTE3(v14);
  BYTE12(v117) = BYTE4(v14);
  BYTE13(v117) = BYTE5(v14);
LABEL_17:
  v24 = &v117;
LABEL_18:
  v25 = sub_10010CEE4(v24, 1);
  sub_10007676C(v15, v16);
  v26 = v25[2];
  if (!v26)
  {
    __break(1u);
    goto LABEL_102;
  }

  v117 = *(v25 + 2);
  v118 = *(v25 + 12);
  v27 = *(v25 + 26);

  if (!v11)
  {
LABEL_89:
    sub_10000CA2C();
    swift_allocError();
    v82 = 57;
    goto LABEL_90;
  }

  sub_1000D5D10(v11, v12, 2 * v27);
  v29 = v28;
  v31 = v30;
  v32 = sub_1001128D0(v11, 2 * v27);
  v34 = v32;
  v35 = v33;
  v36 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v36 != 2)
    {
      memset(v116, 0, 14);
      goto LABEL_34;
    }

    v37 = v27;
    v38 = *(v32 + 16);
    v39 = __DataStorage._bytes.getter();
    if (!v39)
    {
LABEL_140:
      __DataStorage._length.getter();
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v40 = v39;
    v41 = __DataStorage._offset.getter();
    if (!__OFSUB__(v38, v41))
    {
      v42 = (v38 - v41 + v40);
      __DataStorage._length.getter();
      if (!v42)
      {
        goto LABEL_141;
      }

      goto LABEL_32;
    }

    goto LABEL_119;
  }

  if (v36)
  {
    v37 = v27;
    if (v32 <= v32 >> 32)
    {
      v43 = __DataStorage._bytes.getter();
      if (!v43)
      {
LABEL_142:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_143;
      }

      v44 = v43;
      v45 = __DataStorage._offset.getter();
      if (!__OFSUB__(v34, v45))
      {
        v42 = (v34 - v45 + v44);
        __DataStorage._length.getter();
        if (!v42)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

LABEL_32:
        v27 = v37;
        v46 = v42;
        goto LABEL_35;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    goto LABEL_118;
  }

  v116[0] = v32;
  LOWORD(v116[1]) = v33;
  BYTE2(v116[1]) = BYTE2(v33);
  BYTE3(v116[1]) = BYTE3(v33);
  BYTE4(v116[1]) = BYTE4(v33);
  BYTE5(v116[1]) = BYTE5(v33);
LABEL_34:
  v46 = v116;
LABEL_35:
  v11 = sub_10010A954(v46, v27);
  sub_10007676C(v34, v35);
  if (!v29)
  {
    goto LABEL_88;
  }

  sub_1000D5D10(v29, v31, 4);
  v48 = v47;
  v111 = v49;
  v50 = sub_1001128D0(v29, 4);
  v52 = v50;
  v53 = v51;
  v54 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    if (v54 != 2)
    {
      memset(v116, 0, 14);
      goto LABEL_50;
    }

    v55 = v27;
    v56 = *(v50 + 16);
    v57 = __DataStorage._bytes.getter();
    if (!v57)
    {
LABEL_144:
      __DataStorage._length.getter();
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(v56, v59))
    {
      goto LABEL_123;
    }

    v60 = (v56 - v59 + v58);
    __DataStorage._length.getter();
    if (!v60)
    {
      goto LABEL_145;
    }

LABEL_48:
    LOWORD(v27) = v55;
    v64 = v60;
    goto LABEL_51;
  }

  if (v54)
  {
    v55 = v27;
    if (v50 > v50 >> 32)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v61 = __DataStorage._bytes.getter();
    if (!v61)
    {
LABEL_146:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_147;
    }

    v62 = v61;
    v63 = __DataStorage._offset.getter();
    if (__OFSUB__(v52, v63))
    {
LABEL_124:
      __break(1u);
    }

    v60 = (v52 - v63 + v62);
    __DataStorage._length.getter();
    if (!v60)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    goto LABEL_48;
  }

  v116[0] = v50;
  LOWORD(v116[1]) = v51;
  BYTE2(v116[1]) = BYTE2(v51);
  BYTE3(v116[1]) = BYTE3(v51);
  BYTE4(v116[1]) = BYTE4(v51);
  BYTE5(v116[1]) = BYTE5(v51);
LABEL_50:
  v64 = v116;
LABEL_51:
  v65 = sub_10010CEB8(v64, 1);
  sub_10007676C(v52, v53);
  if (!v65[2])
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOWORD(v15) = *(v65 + 16);
  v4 = *(v65 + 17);

  switch(v4)
  {
    case 0:
      v79 = 0x8000000000000000;
      v80 = v4;
LABEL_64:
      *a3 = v117;
      *(a3 + 16) = v118;
      *(a3 + 20) = v27;
      *(a3 + 24) = v11;
      *(a3 + 32) = v15;
      *(a3 + 34) = v4;
      *(a3 + 40) = v79;
      *(a3 + 48) = v80;
      return result;
    case 2:
      if (!v48)
      {
        goto LABEL_88;
      }

      sub_1000D5D10(v48, v111, 2);
      v72 = v71;
      v112 = v73;
      v74 = sub_1001128D0(v48, 2);
      v76 = v74;
      v77 = v75;
      v78 = v75 >> 62;
      if ((v75 >> 62) > 1)
      {
        if (v78 != 2)
        {
          memset(v116, 0, 14);
          goto LABEL_82;
        }

        v105 = *(v74 + 16);
        v108 = v27;
        v83 = __DataStorage._bytes.getter();
        if (!v83)
        {
LABEL_148:
          __DataStorage._length.getter();
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v84 = v83;
        v85 = __DataStorage._offset.getter();
        if (__OFSUB__(v105, v85))
        {
          goto LABEL_129;
        }

        v27 = v105 - v85 + v84;
        __DataStorage._length.getter();
        if (!v27)
        {
          goto LABEL_149;
        }
      }

      else
      {
        if (!v78)
        {
          v116[0] = v74;
          LOWORD(v116[1]) = v75;
          BYTE2(v116[1]) = BYTE2(v75);
          BYTE3(v116[1]) = BYTE3(v75);
          BYTE4(v116[1]) = BYTE4(v75);
          BYTE5(v116[1]) = BYTE5(v75);
LABEL_82:
          v92 = sub_10010A954(v116, 1);
          sub_10007676C(v76, v77);
LABEL_83:
          if (!*(v92 + 2))
          {
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v12 = v92[16];

          if (v72)
          {
            sub_1000D5D10(v72, v112, 2 * v12);
            v93 = sub_1001128D0(v72, 2 * v12);
            v6 = v93;
            v5 = v94;
            v26 = v94 >> 62;
            v107 = v27;
            if ((v94 >> 62) <= 1)
            {
              if (!v26)
              {
                v116[0] = v93;
                LOWORD(v116[1]) = v94;
                BYTE2(v116[1]) = BYTE2(v94);
                BYTE3(v116[1]) = BYTE3(v94);
                BYTE4(v116[1]) = BYTE4(v94);
                BYTE5(v116[1]) = BYTE5(v94);
LABEL_113:
                v104 = v116;
                goto LABEL_114;
              }

              if (v93 > v93 >> 32)
              {
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
                goto LABEL_140;
              }

              v114 = __DataStorage._bytes.getter();
              if (!v114)
              {
LABEL_157:
                result = __DataStorage._length.getter();
                __break(1u);
                goto LABEL_158;
              }

              v103 = __DataStorage._offset.getter();
              if (__OFSUB__(v6, v103))
              {
                goto LABEL_139;
              }

              v102 = (v6 - v103 + v114);
              result = __DataStorage._length.getter();
              if (!v102)
              {
LABEL_158:
                __break(1u);
                return result;
              }

              goto LABEL_111;
            }

LABEL_102:
            if (v26 != 2)
            {
              memset(v116, 0, 14);
              goto LABEL_113;
            }

            v113 = *(v6 + 16);
            v99 = __DataStorage._bytes.getter();
            if (!v99)
            {
LABEL_155:
              __DataStorage._length.getter();
LABEL_156:
              __break(1u);
              goto LABEL_157;
            }

            v100 = v99;
            v101 = __DataStorage._offset.getter();
            if (__OFSUB__(v113, v101))
            {
              goto LABEL_138;
            }

            v102 = (v113 - v101 + v100);
            __DataStorage._length.getter();
            if (!v102)
            {
              goto LABEL_156;
            }

LABEL_111:
            v104 = v102;
LABEL_114:
            v80 = sub_10010A954(v104, v12);
            result = sub_10007676C(v6, v5);
            LOWORD(v27) = v107;
            v79 = v12 | 0x4000000000000000;
            goto LABEL_64;
          }

LABEL_88:

          goto LABEL_89;
        }

        v108 = v27;
        if (v74 > v74 >> 32)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v106 = __DataStorage._bytes.getter();
        if (!v106)
        {
LABEL_152:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_153;
        }

        v91 = __DataStorage._offset.getter();
        if (__OFSUB__(v76, v91))
        {
          goto LABEL_131;
        }

        v27 = v76 - v91 + v106;
        __DataStorage._length.getter();
        if (!v27)
        {
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }
      }

      v92 = sub_10010A954(v27, 1);
      sub_10007676C(v76, v77);
      LOWORD(v27) = v108;
      goto LABEL_83;
    case 1:
      if (v48)
      {
        sub_1000D5D10(v48, v111, 1);
        v66 = sub_1001128D0(v48, 1);
        v68 = v66;
        v69 = v67;
        v70 = v67 >> 62;
        if ((v67 >> 62) > 1)
        {
          if (v70 == 2)
          {
            v109 = v27;
            v86 = *(v66 + 16);
            v87 = __DataStorage._bytes.getter();
            if (!v87)
            {
LABEL_150:
              __DataStorage._length.getter();
LABEL_151:
              __break(1u);
              goto LABEL_152;
            }

            v88 = v87;
            v89 = __DataStorage._offset.getter();
            if (__OFSUB__(v86, v89))
            {
              goto LABEL_130;
            }

            v27 = v86 - v89 + v88;
            __DataStorage._length.getter();
            v90 = v27;
            LOWORD(v27) = v109;
            if (!v90)
            {
              goto LABEL_151;
            }

            goto LABEL_99;
          }
        }

        else
        {
          if (!v70)
          {
            v116[0] = v66;
            LOWORD(v116[1]) = v67;
            BYTE2(v116[1]) = BYTE2(v67);
            BYTE3(v116[1]) = BYTE3(v67);
            BYTE4(v116[1]) = BYTE4(v67);
            BYTE5(v116[1]) = BYTE5(v67);
LABEL_98:
            v90 = v116;
LABEL_99:
            v98 = sub_10010AC70(v90, 1);
            sub_10007676C(v68, v69);
            if (*(v98 + 2))
            {
              v79 = v98[32];

              v80 = 0;
              goto LABEL_64;
            }

            goto LABEL_126;
          }

          v110 = v27;
          if (v66 > v66 >> 32)
          {
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
            goto LABEL_133;
          }

          v95 = __DataStorage._bytes.getter();
          if (!v95)
          {
LABEL_153:
            __DataStorage._length.getter();
            __break(1u);
            goto LABEL_154;
          }

          v96 = v95;
          v97 = __DataStorage._offset.getter();
          if (__OFSUB__(v68, v97))
          {
            goto LABEL_132;
          }

          v27 = v68 - v97 + v96;
          __DataStorage._length.getter();
          v90 = v27;
          LOWORD(v27) = v110;
          if (v90)
          {
            goto LABEL_99;
          }

          __break(1u);
        }

        memset(v116, 0, 14);
        goto LABEL_98;
      }

      goto LABEL_88;
  }

  sub_10000CA2C();
  swift_allocError();
  v82 = 40;
LABEL_90:
  *v81 = v82;
  *(v81 + 8) = 0;
  *(v81 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1001047D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 12);
  v5 = *(v1 + 14);
  v6 = *(v1 + 18);
  LODWORD(v22[0]) = *(v1 + 8);
  WORD2(v22[0]) = v4;
  *(v22 + 6) = __PAIR64__(v6, v5);
  v7 = sub_10006670C(v3, *&v22[0], *(&v22[0] + 1));
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = (v7 + 32);
    do
    {
      sub_10001EDEC(v9, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  v10 = sub_100062C64(*(v1 + 22));
  v11 = *(v10 + 2);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      sub_10001EDEC(v12, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 32), *(v1 + 40));
  v13 = *(v1 + 48);
  v14 = *(v13 + 16);
  Hasher._combine(_:)(v14);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      Hasher._combine(_:)(v16);
      --v14;
    }

    while (v14);
  }

  v17 = *(v1 + 56);
  if (v17 >> 62)
  {
    if (v17 >> 62 == 1)
    {
      v18 = *(v1 + 64);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v17);
      v19 = *(v18 + 16);
      Hasher._combine(_:)(v19);
      if (v19)
      {
        v20 = (v18 + 32);
        do
        {
          v21 = *v20++;
          Hasher._combine(_:)(v21);
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v17);
  }
}

Swift::Int sub_10010498C()
{
  Hasher.init(_seed:)();
  sub_1001047D8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001049D0()
{
  Hasher.init(_seed:)();
  sub_1001047D8(v1);
  return Hasher._finalize()();
}

BOOL sub_100104A0C(uint64_t a1, uint64_t a2)
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
  return sub_100106FD8(v7, v9);
}

uint64_t sub_100104A68@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_55;
  }

  result = sub_1000D5D10(a1, a2, 24);
  if (v3)
  {
    return result;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1001128D0(a1, 24);
  v13 = v11;
  v14 = v12;
  v15 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v15 != 2)
    {
      *&v81[6] = 0;
      *v81 = 0;
      goto LABEL_17;
    }

    v16 = *(v11 + 16);
    v17 = __DataStorage._bytes.getter();
    if (!v17)
    {
LABEL_95:
      __DataStorage._length.getter();
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v18 = v17;
    v19 = __DataStorage._offset.getter();
    if (__OFSUB__(v16, v19))
    {
      goto LABEL_82;
    }

    v20 = (v16 - v19 + v18);
    __DataStorage._length.getter();
    if (!v20)
    {
      goto LABEL_96;
    }

LABEL_15:
    v24 = v20;
    goto LABEL_18;
  }

  if (v15)
  {
    if (v11 > v11 >> 32)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v21 = __DataStorage._bytes.getter();
    if (!v21)
    {
LABEL_97:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_98;
    }

    v22 = v21;
    v23 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v23))
    {
      goto LABEL_83;
    }

    v20 = (v13 - v23 + v22);
    __DataStorage._length.getter();
    if (!v20)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    goto LABEL_15;
  }

  *v81 = v11;
  *&v81[8] = v12;
  v81[10] = BYTE2(v12);
  v81[11] = BYTE3(v12);
  v81[12] = BYTE4(v12);
  v81[13] = BYTE5(v12);
LABEL_17:
  v24 = v81;
LABEL_18:
  v25 = sub_10010CFE0(v24, 1);
  sub_10007676C(v13, v14);
  if (!v25[2])
  {
    __break(1u);
    goto LABEL_81;
  }

  *v81 = *(v25 + 2);
  *&v81[14] = *(v25 + 46);
  v26 = *(v25 + 27);

  switch(v26)
  {
    case 0:
      v40 = 0x8000000000000000;
      v41 = v26;
LABEL_31:
      *a3 = *v81;
      *(a3 + 14) = *&v81[14];
      *(a3 + 22) = v26;
      *(a3 + 24) = v40;
      *(a3 + 32) = v41;
      return result;
    case 2:
      if (!v9)
      {
        goto LABEL_55;
      }

      sub_1000D5D10(v9, v10, 2);
      v33 = v32;
      v79 = v34;
      v35 = sub_1001128D0(v9, 2);
      v37 = v35;
      v38 = v36;
      v39 = v36 >> 62;
      if ((v36 >> 62) > 1)
      {
        if (v39 != 2)
        {
          memset(v80, 0, 14);
          goto LABEL_49;
        }

        v44 = *(v35 + 16);
        v45 = __DataStorage._bytes.getter();
        if (!v45)
        {
LABEL_99:
          __DataStorage._length.getter();
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v46 = v45;
        v47 = __DataStorage._offset.getter();
        if (__OFSUB__(v44, v47))
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v48 = (v44 - v47 + v46);
        __DataStorage._length.getter();
        if (!v48)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (!v39)
        {
          v80[0] = v35;
          LOWORD(v80[1]) = v36;
          BYTE2(v80[1]) = BYTE2(v36);
          BYTE3(v80[1]) = BYTE3(v36);
          BYTE4(v80[1]) = BYTE4(v36);
          BYTE5(v80[1]) = BYTE5(v36);
LABEL_49:
          v57 = v80;
LABEL_50:
          v58 = sub_10010A954(v57, 1);
          sub_10007676C(v37, v38);
          if (*(v58 + 2))
          {
            v59 = v58[16];

            if (v33)
            {
              sub_1000D5D10(v33, v79, 2 * v59);
              v60 = sub_1001128D0(v33, 2 * v59);
              v62 = v60;
              v63 = v61;
              v64 = v61 >> 62;
              if ((v61 >> 62) > 1)
              {
                if (v64 != 2)
                {
                  memset(v80, 0, 14);
                  goto LABEL_78;
                }

                v70 = *(v60 + 16);
                v71 = __DataStorage._bytes.getter();
                if (!v71)
                {
LABEL_107:
                  __DataStorage._length.getter();
LABEL_108:
                  __break(1u);
                  goto LABEL_109;
                }

                v72 = v71;
                v73 = __DataStorage._offset.getter();
                if (!__OFSUB__(v70, v73))
                {
                  v74 = (v70 - v73 + v72);
                  __DataStorage._length.getter();
                  if (!v74)
                  {
                    goto LABEL_108;
                  }

                  goto LABEL_76;
                }
              }

              else
              {
                if (!v64)
                {
                  v80[0] = v60;
                  LOWORD(v80[1]) = v61;
                  BYTE2(v80[1]) = BYTE2(v61);
                  BYTE3(v80[1]) = BYTE3(v61);
                  BYTE4(v80[1]) = BYTE4(v61);
                  BYTE5(v80[1]) = BYTE5(v61);
LABEL_78:
                  v78 = v80;
                  goto LABEL_79;
                }

                if (v60 <= v60 >> 32)
                {
                  v75 = __DataStorage._bytes.getter();
                  if (!v75)
                  {
LABEL_109:
                    result = __DataStorage._length.getter();
                    __break(1u);
                    goto LABEL_110;
                  }

                  v76 = v75;
                  v77 = __DataStorage._offset.getter();
                  if (!__OFSUB__(v62, v77))
                  {
                    v74 = (v62 - v77 + v76);
                    result = __DataStorage._length.getter();
                    if (!v74)
                    {
LABEL_110:
                      __break(1u);
                      return result;
                    }

LABEL_76:
                    v78 = v74;
LABEL_79:
                    v41 = sub_10010A954(v78, v59);
                    result = sub_10007676C(v62, v63);
                    v40 = v59 | 0x4000000000000000;
                    goto LABEL_31;
                  }

                  goto LABEL_94;
                }

                __break(1u);
              }

              __break(1u);
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

LABEL_55:
            sub_10000CA2C();
            swift_allocError();
            v43 = 57;
            goto LABEL_56;
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        if (v35 > v35 >> 32)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v54 = __DataStorage._bytes.getter();
        if (!v54)
        {
          goto LABEL_103;
        }

        v55 = v54;
        v56 = __DataStorage._offset.getter();
        if (__OFSUB__(v37, v56))
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
        }

        v48 = (v37 - v56 + v55);
        __DataStorage._length.getter();
        if (!v48)
        {
          goto LABEL_105;
        }
      }

      v57 = v48;
      goto LABEL_50;
    case 1:
      if (v9)
      {
        sub_1000D5D10(v9, v10, 1);
        v27 = sub_1001128D0(v9, 1);
        v29 = v27;
        v30 = v28;
        v31 = v28 >> 62;
        if ((v28 >> 62) <= 1)
        {
          if (!v31)
          {
            v80[0] = v27;
            LOWORD(v80[1]) = v28;
            BYTE2(v80[1]) = BYTE2(v28);
            BYTE3(v80[1]) = BYTE3(v28);
            BYTE4(v80[1]) = BYTE4(v28);
            BYTE5(v80[1]) = BYTE5(v28);
LABEL_64:
            v68 = v80;
LABEL_65:
            v69 = sub_10010AC70(v68, 1);
            sub_10007676C(v29, v30);
            if (*(v69 + 2))
            {
              v40 = v69[32];

              v41 = 0;
              goto LABEL_31;
            }

            goto LABEL_85;
          }

          if (v27 > v27 >> 32)
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v65 = __DataStorage._bytes.getter();
          if (v65)
          {
            v66 = v65;
            v67 = __DataStorage._offset.getter();
            if (__OFSUB__(v29, v67))
            {
              goto LABEL_91;
            }

            v53 = (v29 - v67 + v66);
            __DataStorage._length.getter();
            if (v53)
            {
LABEL_62:
              v68 = v53;
              goto LABEL_65;
            }

            goto LABEL_106;
          }

          goto LABEL_104;
        }

        if (v31 != 2)
        {
          memset(v80, 0, 14);
          goto LABEL_64;
        }

        v49 = *(v27 + 16);
        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v51 = v50;
          v52 = __DataStorage._offset.getter();
          if (__OFSUB__(v49, v52))
          {
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v53 = (v49 - v52 + v51);
          __DataStorage._length.getter();
          if (v53)
          {
            goto LABEL_62;
          }

          goto LABEL_102;
        }

LABEL_101:
        __DataStorage._length.getter();
LABEL_102:
        __break(1u);
LABEL_103:
        __DataStorage._length.getter();
        __break(1u);
LABEL_104:
        __DataStorage._length.getter();
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      goto LABEL_55;
  }

  sub_10000CA2C();
  swift_allocError();
  v43 = 40;
LABEL_56:
  *v42 = v43;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_10010520C(uint64_t a1)
{
  v3 = sub_100064FD0(*v1, *(v1 + 8), *(v1 + 16));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v11);
      AnyHashable.hash(into:)();
      sub_10001E070(v11);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 24), *(v1 + 32));
  v6 = *(v1 + 40);
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v7 = *(v1 + 48);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v6);
      v8 = *(v7 + 16);
      Hasher._combine(_:)(v8);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = *v9++;
          Hasher._combine(_:)(v10);
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v6);
  }
}

Swift::Int sub_100105324()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  v5 = sub_100064FD0(v2, v3, v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v14);
      AnyHashable.hash(into:)();
      sub_10001E070(v14);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = v1[5];
  v9 = v1[6];
  USBDescriptor.hash(into:)(v15, v1[3], *(v1 + 16));
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v8);
      v10 = *(v9 + 16);
      Hasher._combine(_:)(v10);
      if (v10)
      {
        v11 = (v9 + 32);
        do
        {
          v12 = *v11++;
          Hasher._combine(_:)(v12);
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v8);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100105460()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v9 = v0 + 16;
  v7 = *(v0 + 16);
  v8 = *(v9 + 8);
  Hasher.init(_seed:)();
  v10 = sub_100064FD0(v1, v2, v7);
  v11 = *(v10 + 2);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      sub_10001EDEC(v12, v17);
      AnyHashable.hash(into:)();
      sub_10001E070(v17);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  USBDescriptor.hash(into:)(v18, v8, v3 | (v4 << 8));
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(*(v6 + 16));
      v13 = *(v6 + 16);
      if (v13)
      {
        v14 = (v6 + 32);
        do
        {
          v15 = *v14++;
          Hasher._combine(_:)(v15);
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

BOOL sub_1001055A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a2 + 32);
  v7 = *(a2 + 33);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  if ((sub_10006CF60(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v10, v2 | (v3 << 8), v11, v6 | (v7 << 8)))
  {
    return 0;
  }

  if (!(v5 >> 62))
  {
    return !(v9 >> 62) && v5 == v9;
  }

  if (v5 >> 62 != 1)
  {
    return v9 >> 62 == 2 && v9 == 0x8000000000000000 && !v8;
  }

  return v9 >> 62 == 1 && v5 == v9 && (sub_1000E4834(v4, v8) & 1) != 0;
}

uint64_t sub_1001056AC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    result = sub_1000D5D10(a1, a2, 14);
    if (v3)
    {
      return result;
    }

    v9 = v7;
    v10 = v8;
    v11 = sub_1001128D0(a1, 14);
    v13 = v11;
    v14 = v12;
    v15 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v15 != 2)
      {
        memset(v47, 0, 14);
        goto LABEL_17;
      }

      v16 = *(v11 + 16);
      v17 = __DataStorage._bytes.getter();
      if (v17)
      {
        v18 = v17;
        v19 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v19))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v20 = (v16 - v19 + v18);
        __DataStorage._length.getter();
        if (v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        v47[0] = v11;
        LOWORD(v47[1]) = v12;
        BYTE2(v47[1]) = BYTE2(v12);
        BYTE3(v47[1]) = BYTE3(v12);
        BYTE4(v47[1]) = BYTE4(v12);
        BYTE5(v47[1]) = BYTE5(v12);
LABEL_17:
        v24 = v47;
        goto LABEL_18;
      }

      if (v11 > v11 >> 32)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v22 = v21;
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v23))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v20 = (v13 - v23 + v22);
        __DataStorage._length.getter();
        if (v20)
        {
LABEL_15:
          v24 = v20;
LABEL_18:
          v25 = sub_10010D0D8(v24, 1);
          sub_10007676C(v13, v14);
          if (v25[2])
          {
            v46 = v25[4];
            LOWORD(v26) = *(v25 + 20);
            v27 = *(v25 + 21);
            v28 = *(v25 + 22);

            if (((v46 - 14) & 0xFFFF0000) == 0)
            {
              if (v9)
              {
                v29 = (v46 - 14) >> 2;
                sub_1000D5D10(v9, v10, 4 * v29);
                v45 = v28;
                v30 = sub_1001128D0(v9, 4 * v29);
                v32 = v30;
                v33 = v31;
                v34 = v31 >> 62;
                if ((v31 >> 62) <= 1)
                {
                  if (!v34)
                  {
                    v47[0] = v30;
                    LOWORD(v47[1]) = v31;
                    BYTE2(v47[1]) = BYTE2(v31);
                    BYTE3(v47[1]) = BYTE3(v31);
                    BYTE4(v47[1]) = BYTE4(v31);
                    BYTE5(v47[1]) = BYTE5(v31);
LABEL_37:
                    v43 = sub_10010ADC4(v47, v29);
                    result = sub_10007676C(v32, v33);
                    goto LABEL_38;
                  }

LABEL_31:
                  v44 = v26;
                  if (v32 <= v32 >> 32)
                  {
                    v40 = __DataStorage._bytes.getter();
                    if (v40)
                    {
                      v41 = v40;
                      v42 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v32, v42))
                      {
                        v26 = (v32 - v42 + v41);
                        result = __DataStorage._length.getter();
                        if (v26)
                        {
                          goto LABEL_35;
                        }

                        goto LABEL_53;
                      }

LABEL_46:
                      __break(1u);
                    }

LABEL_52:
                    result = __DataStorage._length.getter();
LABEL_53:
                    __break(1u);
                    return result;
                  }

                  goto LABEL_44;
                }

                if (v34 != 2)
                {
                  memset(v47, 0, 14);
                  goto LABEL_37;
                }

                v44 = v26;
                v36 = *(v30 + 16);
                v37 = __DataStorage._bytes.getter();
                if (v37)
                {
                  v38 = v37;
                  v39 = __DataStorage._offset.getter();
                  if (__OFSUB__(v36, v39))
                  {
LABEL_45:
                    __break(1u);
                    goto LABEL_46;
                  }

                  v26 = (v36 - v39 + v38);
                  __DataStorage._length.getter();
                  if (v26)
                  {
LABEL_35:
                    v43 = sub_10010ADC4(v26, v29);
                    result = sub_10007676C(v32, v33);
                    LOWORD(v26) = v44;
LABEL_38:
                    *a3 = v46;
                    *(a3 + 8) = v26;
                    *(a3 + 10) = v27;
                    *(a3 + 12) = v45;
                    *(a3 + 16) = v43;
                    return result;
                  }

                  __break(1u);
                  goto LABEL_31;
                }

LABEL_51:
                __DataStorage._length.getter();
                __break(1u);
                goto LABEL_52;
              }

              goto LABEL_24;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_41;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_50;
  }

LABEL_24:
  sub_10000CA2C();
  swift_allocError();
  *v35 = 57;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_100105B00(uint64_t a1)
{
  v3 = sub_100067FD0(*v1, *(v1 + 8) | (*(v1 + 12) << 32));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 16), *(v1 + 24));
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }
}

Swift::Int sub_100105BD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 2);
  v4 = *(v1 + 6);
  Hasher.init(_seed:)();
  v5 = sub_100067FD0(v2, v3 | (v4 << 32));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = v1[4];
  USBDescriptor.hash(into:)(v14, v1[2], *(v1 + 12));
  v9 = *(v8 + 16);
  Hasher._combine(_:)(v9);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      Hasher._combine(_:)(v11);
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100105CC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
  v7 = *(v0 + 32);
  Hasher.init(_seed:)();
  v8 = sub_100067FD0(v1, v2 | (v3 << 32));
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v15);
      AnyHashable.hash(into:)();
      sub_10001E070(v15);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  USBDescriptor.hash(into:)(v16, v4, v5 | (v6 << 8));
  Hasher._combine(_:)(*(v7 + 16));
  v11 = *(v7 + 16);
  if (v11)
  {
    v12 = (v7 + 32);
    do
    {
      v13 = *v12++;
      Hasher._combine(_:)(v13);
      --v11;
    }

    while (v11);
  }

  return Hasher._finalize()();
}

uint64_t sub_100105DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 25);
  v9 = *(a2 + 32);
  if ((sub_10006E558(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *a2, *(a2 + 8) | (*(a2 + 12) << 32)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v6, v7 | (v8 << 8)))
  {
    return 0;
  }

  return sub_1000E4948(v5, v9);
}

uint64_t sub_100105E88@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 57;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  result = sub_1000D5D10(a1, a2, 22);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 22);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        *&v23[6] = 0;
        *v23 = 0;
        goto LABEL_18;
      }

      v13 = *(v7 + 16);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v15 = v14;
        v16 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v16))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
        }

        v17 = (v13 - v16 + v15);
        __DataStorage._length.getter();
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v11)
      {
        *v23 = v7;
        *&v23[8] = v8;
        v23[10] = BYTE2(v8);
        v23[11] = BYTE3(v8);
        v23[12] = BYTE4(v8);
        v23[13] = BYTE5(v8);
LABEL_18:
        v21 = v23;
        goto LABEL_19;
      }

      if (v7 > v7 >> 32)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v18 = __DataStorage._bytes.getter();
      if (v18)
      {
        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_25;
        }

        v17 = (v9 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v17)
        {
LABEL_16:
          v21 = v17;
LABEL_19:
          v22 = sub_10010D1E4(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            *v23 = *(v22 + 2);
            *&v23[14] = *(v22 + 46);

            *a3 = *v23;
            *(a3 + 14) = *&v23[14];
            return result;
          }

          __break(1u);
          goto LABEL_23;
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1001060E8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    result = sub_1000D5D10(a1, a2, 18);
    if (v3)
    {
      return result;
    }

    v9 = v7;
    v10 = v8;
    v11 = sub_1001128D0(a1, 18);
    v13 = v11;
    v14 = v12;
    v15 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v15 != 2)
      {
        *(&v44 + 6) = 0;
        *&v44 = 0;
        goto LABEL_17;
      }

      v16 = *(v11 + 16);
      v17 = __DataStorage._bytes.getter();
      if (v17)
      {
        v18 = v17;
        v19 = __DataStorage._offset.getter();
        if (__OFSUB__(v16, v19))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v20 = (v16 - v19 + v18);
        __DataStorage._length.getter();
        if (v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        *&v44 = v11;
        WORD4(v44) = v12;
        BYTE10(v44) = BYTE2(v12);
        BYTE11(v44) = BYTE3(v12);
        BYTE12(v44) = BYTE4(v12);
        BYTE13(v44) = BYTE5(v12);
LABEL_17:
        v24 = &v44;
        goto LABEL_18;
      }

      if (v11 > v11 >> 32)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v22 = v21;
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v23))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v20 = (v13 - v23 + v22);
        __DataStorage._length.getter();
        if (v20)
        {
LABEL_15:
          v24 = v20;
LABEL_18:
          v25 = sub_10010D2E0(v24, 1);
          sub_10007676C(v13, v14);
          if (v25[2])
          {
            v44 = *(v25 + 2);
            v26 = *(v25 + 24);

            if (v9)
            {
              sub_1000D5D10(v9, v10, 2 * v26);
              v27 = sub_1001128D0(v9, 2 * v26);
              v29 = v27;
              v30 = v28;
              v31 = v28 >> 62;
              if ((v28 >> 62) <= 1)
              {
                if (!v31)
                {
                  v43[0] = v27;
                  LOWORD(v43[1]) = v28;
                  BYTE2(v43[1]) = BYTE2(v28);
                  BYTE3(v43[1]) = BYTE3(v28);
                  BYTE4(v43[1]) = BYTE4(v28);
                  BYTE5(v43[1]) = BYTE5(v28);
LABEL_36:
                  v41 = v43;
                  goto LABEL_37;
                }

LABEL_30:
                if (v29 <= v29 >> 32)
                {
                  v38 = __DataStorage._bytes.getter();
                  if (v38)
                  {
                    v39 = v38;
                    v40 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v29, v40))
                    {
                      v37 = (v29 - v40 + v39);
                      result = __DataStorage._length.getter();
                      if (v37)
                      {
                        goto LABEL_34;
                      }

                      goto LABEL_51;
                    }

LABEL_44:
                    __break(1u);
                  }

LABEL_50:
                  result = __DataStorage._length.getter();
LABEL_51:
                  __break(1u);
                  return result;
                }

                goto LABEL_42;
              }

              if (v31 != 2)
              {
                memset(v43, 0, 14);
                goto LABEL_36;
              }

              v33 = *(v27 + 16);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = v34;
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v36))
                {
LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

                v37 = (v33 - v36 + v35);
                __DataStorage._length.getter();
                if (v37)
                {
LABEL_34:
                  v41 = v37;
LABEL_37:
                  v42 = sub_10010A954(v41, v26);
                  result = sub_10007676C(v29, v30);
                  *a3 = v44;
                  *(a3 + 16) = v26;
                  *(a3 + 24) = v42;
                  return result;
                }

                __break(1u);
                goto LABEL_30;
              }

LABEL_49:
              __DataStorage._length.getter();
              __break(1u);
              goto LABEL_50;
            }

            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_39;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_48;
  }

LABEL_23:
  sub_10000CA2C();
  swift_allocError();
  *v32 = 57;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1001064DC(uint64_t a1)
{
  v3 = sub_100066DB8(*v1, *(v1 + 8), *(v1 + 16));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v10);
      AnyHashable.hash(into:)();
      sub_10001E070(v10);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 24), *(v1 + 32));
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9);
      --v7;
    }

    while (v7);
  }
}

Swift::Int sub_1001065A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = *(v1 + 8);
  Hasher.init(_seed:)();
  v5 = sub_100066DB8(v2, v3, v4);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = v1[5];
  USBDescriptor.hash(into:)(v14, v1[3], *(v1 + 16));
  v9 = *(v8 + 16);
  Hasher._combine(_:)(v9);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      v11 = *v10++;
      Hasher._combine(_:)(v11);
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10010669C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  v4 = *(v0 + 40);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  Hasher.init(_seed:)();
  v8 = sub_100066DB8(v5, v6, v7);
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v15);
      AnyHashable.hash(into:)();
      sub_10001E070(v15);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  USBDescriptor.hash(into:)(v16, v1, v2 | (v3 << 8));
  Hasher._combine(_:)(*(v4 + 16));
  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = (v4 + 32);
    do
    {
      v13 = *v12++;
      Hasher._combine(_:)(v13);
      --v11;
    }

    while (v11);
  }

  return Hasher._finalize()();
}

uint64_t sub_100106790(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 40);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 33);
  v9 = *(a2 + 40);
  if ((sub_10006DDD0(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v6, v7 | (v8 << 8)))
  {
    return 0;
  }

  return sub_1000E4834(v5, v9);
}

uint64_t sub_100106850(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      Hasher._combine(_:)(2uLL);
      v9 = sub_100062660(a2, a3);
      v10 = *(v9 + 2);
      if (v10)
      {
        v11 = (v9 + 32);
        do
        {
          sub_10001EDEC(v11, v19);
          AnyHashable.hash(into:)();
          sub_10001E070(v19);
          v11 += 40;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      v15 = sub_100061D8C(a2 & 0xFFFFFFFFFFFFLL);
      v16 = *(v15 + 2);
      if (v16)
      {
        v17 = (v15 + 32);
        do
        {
          sub_10001EDEC(v17, v19);
          AnyHashable.hash(into:)();
          sub_10001E070(v19);
          v17 += 40;
          --v16;
        }

        while (v16);
      }
    }
  }

  else if (a4)
  {
    Hasher._combine(_:)(1uLL);
    v12 = sub_100061A58(a2, a3 & 0xFFFFFFFFFFFFLL);
    v13 = *(v12 + 2);
    if (v13)
    {
      v14 = (v12 + 32);
      do
      {
        sub_10001EDEC(v14, v19);
        AnyHashable.hash(into:)();
        sub_10001E070(v19);
        v14 += 40;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v6 = sub_100067F70(a2);
    v7 = *(v6 + 2);
    if (v7)
    {
      v8 = (v6 + 32);
      do
      {
        sub_10001EDEC(v8, v19);
        AnyHashable.hash(into:)();
        sub_10001E070(v19);
        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }
}

Swift::Int sub_100106A04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_100106850(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100106A6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_100106850(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100106AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v17 = 57;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v6 = a1;
  result = sub_1000D5D10(a1, a2, 12);
  if (!v3)
  {
    v10 = v9;
    v11 = v8;
    v12 = sub_1001128D0(v6, 12);
    v14 = v12;
    v15 = v13;
    v16 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v16 != 2)
      {
        memset(v46, 0, 14);
        goto LABEL_18;
      }

      v18 = *(v12 + 16);
      v19 = __DataStorage._bytes.getter();
      if (v19)
      {
        v4 = v19;
        v6 = v15 & 0x3FFFFFFFFFFFFFFFLL;
        v20 = __DataStorage._offset.getter();
        v16 = v18 - v20;
        if (__OFSUB__(v18, v20))
        {
          goto LABEL_44;
        }

        v4 += v16;
        __DataStorage._length.getter();
        if (v4)
        {
          goto LABEL_16;
        }
      }

      else
      {
        __DataStorage._length.getter();
      }

      __break(1u);
    }

    else
    {
      if (!v16)
      {
        v46[0] = v12;
        LOWORD(v46[1]) = v13;
        BYTE2(v46[1]) = BYTE2(v13);
        BYTE3(v46[1]) = BYTE3(v13);
        BYTE4(v46[1]) = BYTE4(v13);
        BYTE5(v46[1]) = BYTE5(v13);
LABEL_18:
        v23 = v46;
        goto LABEL_19;
      }

      if (v12 > v12 >> 32)
      {
        goto LABEL_43;
      }

      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v4 = v21;
        v6 = v15 & 0x3FFFFFFFFFFFFFFFLL;
        v22 = __DataStorage._offset.getter();
        v16 = v14 - v22;
        if (__OFSUB__(v14, v22))
        {
          goto LABEL_45;
        }

        v4 += v16;
        result = __DataStorage._length.getter();
        if (v4)
        {
LABEL_16:
          v23 = v4;
LABEL_19:
          v6 = sub_10010D8E0(v23, 1);
          sub_10007676C(v14, v15);
          v16 = *(v6 + 16);
          if (!v16)
          {
            __break(1u);
            goto LABEL_41;
          }

          v5 = *(v6 + 32);
          v15 = *(v6 + 40);
          v24 = *(v6 + 42);

          v47[0] = v11;
          v47[1] = v10;
          v25 = sub_100107194(v47);
          v44 = v24;
          v42 = v15;
          if (!v27)
          {
            v6 = v26;
            v14 = v25;
            v10 = sub_100026114(0, 1, 1, _swiftEmptyArrayStorage);
            v4 = *(v10 + 16);
            v16 = *(v10 + 24);
            v15 = v4 + 1;
            if (v4 >= v16 >> 1)
            {
              goto LABEL_46;
            }

            goto LABEL_37;
          }

          v6 = v27;
          v14 = v26;
          v4 = v25;
          v10 = _swiftEmptyArrayStorage;
          while (1)
          {
            v43 = v10;
            sub_100001AB4(&qword_1001753E8, &qword_100129790);
            v28 = swift_allocObject();
            *(v28 + 16) = xmmword_10011DE90;
            *(v28 + 32) = v4;
            *(v28 + 40) = v14;
            *(v28 + 48) = v6;
            v16 = v44;
            if (v44)
            {
              break;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v10 = sub_100026114((v16 > 1), v15, 1, v10);
LABEL_37:
            *(v10 + 16) = v15;
            v38 = (v10 + 17 * v4);
            *(v38 + 4) = v14;
            *(v38 + 5) = v6;
            v38[48] = 0;
            v39 = sub_100107194(v47);
            v6 = v40;
            v14 = v41;
            v4 = v39;
          }

          v15 = v28;
          v14 = _swiftEmptyArrayStorage;
          LOWORD(v6) = 1;
          while (1)
          {
            do
            {
              v29 = sub_100107194(v47);
              v31 = v30;
              v33 = v32;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_100026114(0, *(v15 + 16) + 1, 1, v15);
              }

              v35 = *(v15 + 16);
              v34 = *(v15 + 24);
              if (v35 >= v34 >> 1)
              {
                v15 = sub_100026114((v34 > 1), v35 + 1, 1, v15);
              }

              *(v15 + 16) = v35 + 1;
              v36 = v15 + 17 * v35;
              *(v36 + 32) = v29;
              *(v36 + 40) = v31;
              *(v36 + 48) = v33;
            }

            while (v33);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_10002621C(0, v14[2] + 1, 1, v14);
            }

            v10 = v14[2];
            v37 = v14[3];
            v4 = v10 + 1;
            if (v10 >= v37 >> 1)
            {
              v14 = sub_10002621C((v37 > 1), v10 + 1, 1, v14);
            }

            v14[2] = v4;
            v14[v10 + 4] = v15;

            if (v44 == v6)
            {
              break;
            }

            v16 = v6;
            v6 = v6 + 1;
            v15 = _swiftEmptyArrayStorage;
            if ((v6 & 0x10000) != 0)
            {
              goto LABEL_42;
            }
          }

          *a3 = v5;
          *(a3 + 8) = v42;
          *(a3 + 10) = v44;
          *(a3 + 16) = v43;
          *(a3 + 24) = v14;
          return result;
        }

LABEL_50:
        __break(1u);
        return result;
      }
    }

    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

BOOL sub_100106FD8(uint64_t a1, uint64_t a2)
{
  LODWORD(v9) = *(a1 + 8);
  WORD2(v9) = *(a1 + 12);
  *(&v9 + 6) = *(a1 + 14);
  v4 = v9;
  LODWORD(v9) = *(a2 + 8);
  WORD2(v9) = *(a2 + 12);
  *(&v9 + 6) = *(a2 + 14);
  if ((sub_10006D914(*a1, v4, *(&v4 + 1), *a2, v9, *(&v9 + 1)) & 1) == 0 || (sub_10006C44C(*(a1 + 22), *(a2 + 22)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) || (sub_1000E4834(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  if (!(v5 >> 62))
  {
    return !(v6 >> 62) && *(a1 + 56) == v6;
  }

  v7 = *(a2 + 64);
  if (v5 >> 62 != 1)
  {
    return v6 >> 62 == 2 && v6 == 0x8000000000000000 && !v7;
  }

  return v6 >> 62 == 1 && *(a1 + 56) == v6 && (sub_1000E4834(*(a1 + 64), v7) & 1) != 0;
}

uint64_t sub_100107118(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return sub_10006C0BC(a1, a2, a4, a5);
      }
    }

    else if (a6 == 3)
    {
      return sub_10006C008(a1 & 0xFFFFFFFFFFFFLL, a4 & 0xFFFFFFFFFFFFLL);
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      return sub_10006BFF0(a1, a2 & 0xFFFFFFFFFFFFLL, a4, a5 & 0xFFFFFFFFFFFFLL);
    }
  }

  else if (!a6)
  {
    return sub_10006E33C(a1, a4);
  }

  return 0;
}

uint64_t sub_100107194(uint64_t *a1)
{
  v3 = *a1;
  if (!*a1)
  {
    sub_10000CA2C();
    swift_allocError();
    v12 = 57;
LABEL_7:
    *v11 = v12;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v1;
  }

  v5 = a1[1];
  sub_1000D5D10(*a1, v5, 4);
  if (v2)
  {
    return v1;
  }

  v6 = sub_1001128D0(v3, 4);
  v8 = v6;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v66, 0, 14);
      goto LABEL_20;
    }

    v14 = *(v6 + 16);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = v15;
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v17))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v18 = (v14 - v17 + v16);
      __DataStorage._length.getter();
      if (v18)
      {
        goto LABEL_18;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_78;
  }

  if (v10)
  {
    if (v6 > v6 >> 32)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v19 = __DataStorage._bytes.getter();
    if (v19)
    {
      v20 = v19;
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v21))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v18 = (v8 - v21 + v20);
      __DataStorage._length.getter();
      if (v18)
      {
LABEL_18:
        v22 = v18;
        goto LABEL_21;
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_78:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_79;
  }

  v66[0] = v6;
  LOWORD(v66[1]) = v7;
  BYTE2(v66[1]) = BYTE2(v7);
  BYTE3(v66[1]) = BYTE3(v7);
  BYTE4(v66[1]) = BYTE4(v7);
  BYTE5(v66[1]) = BYTE5(v7);
LABEL_20:
  v22 = v66;
LABEL_21:
  v23 = sub_10010D7B8(v22, 1);
  v1 = 0;
  sub_10007676C(v8, v9);
  if (!v23[2])
  {
    __break(1u);
    goto LABEL_65;
  }

  v24 = *(v23 + 17);

  if (v24 > 258)
  {
    if (v24 == 259)
    {
      return sub_1000D73FC(a1) & 0xFFFFFFFFFFFFLL;
    }

    if (v24 == 0xFFFF)
    {
      return sub_1000D76D0(a1);
    }

    goto LABEL_31;
  }

  if (v24 != 257)
  {
    if (v24 == 258)
    {
      sub_1000D5D10(v3, v5, 16);
      v26 = v25;
      v28 = v27;
      v29 = sub_1001128D0(v3, 16);
      v31 = v29;
      v32 = v30;
      v33 = v30 >> 62;
      if ((v30 >> 62) <= 1)
      {
        if (!v33)
        {
          v66[0] = v29;
          LOWORD(v66[1]) = v30;
          BYTE2(v66[1]) = BYTE2(v30);
          BYTE3(v66[1]) = BYTE3(v30);
          BYTE4(v66[1]) = BYTE4(v30);
          BYTE5(v66[1]) = BYTE5(v30);
LABEL_52:
          v56 = v66;
LABEL_53:
          v57 = sub_10010D5C8(v56, 1);
          sub_10007676C(v31, v32);
          if (*(v57 + 2))
          {
            v1 = *(v57 + 4);
            v58 = *(v57 + 5);

            *a1 = v28;
            a1[1] = v26;
            return v1;
          }

          goto LABEL_68;
        }

        if (v29 > v29 >> 32)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v53 = __DataStorage._bytes.getter();
        if (v53)
        {
          v54 = v53;
          v55 = __DataStorage._offset.getter();
          if (__OFSUB__(v31, v55))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
          }

          v47 = (v31 - v55 + v54);
          result = __DataStorage._length.getter();
          if (v47)
          {
LABEL_50:
            v56 = v47;
            goto LABEL_53;
          }

          goto LABEL_86;
        }

        goto LABEL_84;
      }

      if (v33 != 2)
      {
        memset(v66, 0, 14);
        goto LABEL_52;
      }

      v43 = *(v29 + 16);
      v44 = __DataStorage._bytes.getter();
      if (v44)
      {
        v45 = v44;
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(v43, v46))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v47 = (v43 - v46 + v45);
        __DataStorage._length.getter();
        if (v47)
        {
          goto LABEL_50;
        }

        goto LABEL_81;
      }

LABEL_80:
      __DataStorage._length.getter();
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_31:
    sub_10000CA2C();
    swift_allocError();
    v12 = 41;
    goto LABEL_7;
  }

  sub_1000D5D10(v3, v5, 14);
  v35 = v34;
  v37 = v36;
  v38 = sub_1001128D0(v3, 14);
  v40 = v38;
  v41 = v39;
  v42 = v39 >> 62;
  if ((v39 >> 62) > 1)
  {
    if (v42 != 2)
    {
      memset(v66, 0, 14);
      goto LABEL_61;
    }

    v48 = *(v38 + 16);
    v49 = __DataStorage._bytes.getter();
    if (!v49)
    {
LABEL_82:
      __DataStorage._length.getter();
LABEL_83:
      __break(1u);
LABEL_84:
      __DataStorage._length.getter();
      __break(1u);
LABEL_85:
      result = __DataStorage._length.getter();
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v50 = v49;
    v51 = __DataStorage._offset.getter();
    if (__OFSUB__(v48, v51))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v52 = (v48 - v51 + v50);
    __DataStorage._length.getter();
    if (!v52)
    {
      goto LABEL_83;
    }

LABEL_59:
    v62 = v52;
    goto LABEL_62;
  }

  if (!v42)
  {
    v66[0] = v38;
    LOWORD(v66[1]) = v39;
    BYTE2(v66[1]) = BYTE2(v39);
    BYTE3(v66[1]) = BYTE3(v39);
    BYTE4(v66[1]) = BYTE4(v39);
    BYTE5(v66[1]) = BYTE5(v39);
LABEL_61:
    v62 = v66;
LABEL_62:
    v63 = sub_10010D6AC(v62, 1);
    sub_10007676C(v40, v41);
    if (v63[2])
    {
      v1 = v63[4];
      v64 = *(v63 + 10);
      v65 = *(v63 + 22);

      *a1 = v37;
      a1[1] = v35;
      return v1;
    }

    goto LABEL_69;
  }

  if (v38 > v38 >> 32)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v59 = __DataStorage._bytes.getter();
  if (!v59)
  {
    goto LABEL_85;
  }

  v60 = v59;
  v61 = __DataStorage._offset.getter();
  if (__OFSUB__(v40, v61))
  {
    goto LABEL_75;
  }

  v52 = (v40 - v61 + v60);
  result = __DataStorage._length.getter();
  if (v52)
  {
    goto LABEL_59;
  }

LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_100107808(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 | (*(a1 + 8) << 16)) + 2;
  }
}

uint64_t sub_100107828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 42);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100107874(uint64_t result, int a2, int a3)
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
      *(result + 40) = -a2 << 16;
      *(result + 48) = 0;
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

uint64_t getEnumTagSinglePayload for ADC4ClusterDescriptorSegment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ADC4ClusterDescriptorSegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_1001079A4()
{
  result = qword_100178C00;
  if (!qword_100178C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C00);
  }

  return result;
}

unint64_t sub_1001079FC()
{
  result = qword_100178C08;
  if (!qword_100178C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C08);
  }

  return result;
}

unint64_t sub_100107A50(uint64_t a1)
{
  result = sub_100107A78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100107A78()
{
  result = qword_100178C10;
  if (!qword_100178C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C10);
  }

  return result;
}

unint64_t sub_100107AD0()
{
  result = qword_100178C18;
  if (!qword_100178C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C18);
  }

  return result;
}

unint64_t sub_100107B24(uint64_t a1)
{
  result = sub_100107B4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100107B4C()
{
  result = qword_100178C20;
  if (!qword_100178C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C20);
  }

  return result;
}

unint64_t sub_100107BA4()
{
  result = qword_100178C28;
  if (!qword_100178C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C28);
  }

  return result;
}

unint64_t sub_100107BF8(uint64_t a1)
{
  result = sub_100107C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100107C20()
{
  result = qword_100178C30;
  if (!qword_100178C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C30);
  }

  return result;
}

unint64_t sub_100107C78()
{
  result = qword_100178C38;
  if (!qword_100178C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C38);
  }

  return result;
}

unint64_t sub_100107CCC(uint64_t a1)
{
  result = sub_100107CF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100107CF4()
{
  result = qword_100178C40;
  if (!qword_100178C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C40);
  }

  return result;
}

uint64_t sub_100107D48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 2);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100107D94(uint64_t result, int a2, int a3)
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
      *result = -a2 << 16;
      *(result + 8) = 0;
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

unint64_t *sub_100107DE4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
    result[1] = (a2 - 2) >> 16;
  }

  return result;
}

unint64_t sub_100107E24()
{
  result = qword_100178C48;
  if (!qword_100178C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C48);
  }

  return result;
}

uint64_t ChannelRelationship.audioChannelLabel.getter(int a1)
{
  if ((a1 - 1) > 0x46)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_100129F2C[a1 - 1];
  }
}

Swift::UInt_optional __swiftcall ClusterDescription.numChannels()()
{
  v2 = HIBYTE(v1) - 2;
  if (v2 >= 2)
  {
    v0 = v0;
  }

  else
  {
    v0 = 0;
  }

  v3 = v2 < 2;
  result.value = v0;
  result.is_nil = v3;
  return result;
}

void ClusterDescription.hash(into:)(uint64_t a1, unint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) > 1u)
  {
    if (HIBYTE(a3) == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    Hasher._combine(_:)(v5);
    Hasher._combine(_:)(a2);
  }

  else
  {
    if (HIBYTE(a3))
    {
      v6 = a3;
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(a2);
      Hasher._combine(_:)(HIDWORD(a2));
      LOBYTE(v4) = v6;
    }

    else
    {
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(a2);
      Hasher._combine(_:)(WORD1(a2));
      v4 = HIDWORD(a2);
    }

    Hasher._combine(_:)(v4);
  }
}

Swift::Int ClusterDescription.hashValue.getter(uint64_t a1, __int16 a2)
{
  v2 = a2;
  v4 = HIBYTE(a2);
  Hasher.init(_seed:)();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    Hasher._combine(_:)(v5);
    Hasher._combine(_:)(a1);
  }

  else if (v4)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(HIDWORD(a1));
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(WORD1(a1));
    Hasher._combine(_:)(BYTE4(a1));
  }

  return Hasher._finalize()();
}

void sub_100108864()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(v1);
  }

  else
  {
    if (*(v0 + 9))
    {
      v5 = *(v0 + 8);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v1);
      Hasher._combine(_:)(HIDWORD(v1));
      LOBYTE(v3) = v5;
    }

    else
    {
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v1);
      Hasher._combine(_:)(WORD1(v1));
      v3 = HIDWORD(v1);
    }

    Hasher._combine(_:)(v3);
  }
}

Swift::Int sub_100108918()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(v1);
  }

  else if (v3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(HIDWORD(v1));
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(WORD1(v1));
    Hasher._combine(_:)(BYTE4(v1));
  }

  return Hasher._finalize()();
}

void ClusterChannelInfo.hash(into:)(int a1, Swift::UInt a2, uint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  Hasher._combine(_:)(a2);
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a5);
}

Swift::Int ClusterChannelInfo.hashValue.getter(Swift::UInt a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

Swift::Int sub_100108B3C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100108BD4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher._combine(_:)(*v0);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int sub_100108C40()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t static Cluster.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  v8 = sub_1000E4744(a2, a5);
  v9 = a3 ^ a6 ^ 1;
  if ((v8 & 1) == 0)
  {
    v9 = 0;
  }

  return v9 & 1;
}

void Cluster.hash(into:)(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  Hasher._combine(_:)(a2);
  sub_100108F90(a1, a3);
  Hasher._combine(_:)(a4 & 1);
}

Swift::Int Cluster.hashValue.getter(Swift::UInt a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  sub_100108F90(v7, a2);
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100108E14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  sub_100108F90(v5, v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100108E80(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher._combine(_:)(*v1);
  sub_100108F90(a1, v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_100108ECC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  sub_100108F90(v5, v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100108F34(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (sub_1000E4744(*(a1 + 8), *(a2 + 8)))
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

void sub_100108F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      Hasher._combine(_:)(*(v4 - 3));
      if (v6)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v4 += 8;
      Hasher._combine(_:)(v7);

      --v3;
    }

    while (v3);
  }
}

BOOL _s9AUASDCore18ClusterChannelInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1 == a5)
  {
    if (a3)
    {
      if (a7)
      {
        if (a2 == a6 && a3 == a7)
        {
          return a4 == a8;
        }

        v8 = a4;
        v9 = a8;
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a4 = v8;
        a8 = v9;
        if (v10)
        {
          return a4 == a8;
        }
      }
    }

    else if (!a7)
    {
      return a4 == a8;
    }
  }

  return 0;
}

BOOL _s9AUASDCore18ClusterDescriptionO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a2) > 1u)
  {
    v10 = a1 == a3;
    if (HIBYTE(a4) != 2)
    {
      v10 = 0;
    }

    v11 = HIBYTE(a4) == 3 && a1 == a3;
    if (HIBYTE(a2) == 2)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v4 = WORD1(a1) == WORD1(a3) && BYTE4(a1) == BYTE4(a3);
    if (a1 != a3)
    {
      v4 = 0;
    }

    if (HIBYTE(a4))
    {
      v4 = 0;
    }

    v7 = a1 == a3 && a2 == a4 && (a3 ^ a1) >> 32 == 0;
    v8 = HIBYTE(a4) == 1 && v7;
    if (HIBYTE(a2))
    {
      return v8;
    }

    else
    {
      return v4;
    }
  }
}

unint64_t sub_100109170()
{
  result = qword_100178C50;
  if (!qword_100178C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C50);
  }

  return result;
}

unint64_t sub_1001091C8()
{
  result = qword_100178C58;
  if (!qword_100178C58)
  {
    type metadata accessor for ChannelRelationship(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C58);
  }

  return result;
}

unint64_t sub_100109224()
{
  result = qword_100178C60;
  if (!qword_100178C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C60);
  }

  return result;
}

unint64_t sub_10010927C()
{
  result = qword_100178C68;
  if (!qword_100178C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C68);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ClusterDescription(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClusterDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 10))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusterDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t sub_100109380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
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

uint64_t sub_1001093DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_100109444(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100109458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001094A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001094F0(uint64_t result, unsigned __int8 a2, unsigned __int16 a3, unsigned __int8 a4)
{
  v28 = result;
  v5 = 0;
  v29 = a3;
  v6 = _swiftEmptyArrayStorage;
  LOBYTE(v7) = 1;
  while (v7 <= a2 && v5 - 17 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    if (v5 <= 0xF)
    {
      if ((v29 >> v5))
      {
        if (v5 > 0xB)
        {
          goto LABEL_39;
        }

        v8 = *(&off_100159DF0 + v5 + 8);
        v9 = ChannelRelationship.description.getter();
        v11 = v10;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100024EE8(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_100024EE8((v12 > 1), v13 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v13 + 1;
        v14 = &v6[32 * v13];
        *(v14 + 4) = v7;
        *(v14 + 5) = v9;
        *(v14 + 6) = v11;
        *(v14 + 14) = v8;
        LOWORD(v7) = v7 + 1;
        if ((v7 & 0x100) != 0)
        {
          goto LABEL_40;
        }
      }

      break;
    }

LABEL_13:
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  if (v5 != 11)
  {
    goto LABEL_13;
  }

  if (((v7 - 1) & 0xFFFFFF00) != 0)
  {
    goto LABEL_43;
  }

  if (a2 <= (v7 - 1))
  {
    return 0;
  }

  v16 = (a2 - (v7 - 1)) - 1;
  if ((v16 & 0xFFFFFF00) == 0)
  {
    v17 = 0;
    v30 = OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject;
    v7 = v7;
    while (1)
    {
      if (a4)
      {
        if (((a4 + v17) >> 8))
        {
          return 0;
        }

        v18 = *(v28 + v30);
        if (!v18)
        {
          goto LABEL_28;
        }

        sub_1000F8280((a4 + v17));
        if (v27)
        {
        }

        if (!v19)
        {
          v18 = 0;
LABEL_28:
          v21 = 0;
          goto LABEL_29;
        }

        sub_10001EA64();
        v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v21 = v20;
      }

      else
      {
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v18 = 0x206C656E6E616843;
        v21 = 0xE800000000000000;
      }

LABEL_29:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100024EE8(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v24 = *(v6 + 2);
      v23 = *(v6 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_100024EE8((v23 > 1), v24 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v24 + 1;
      v25 = &v6[32 * v24];
      *(v25 + 4) = v7;
      *(v25 + 5) = v18;
      *(v25 + 6) = v21;
      *(v25 + 14) = 0;
      if (v7 == 255)
      {
        goto LABEL_41;
      }

      v26 = v17;
      if (v17 == v16)
      {
        return 0;
      }

      ++v17;
      ++v7;
      if (((v26 + 1) & 0x100) != 0)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_10010986C(uint64_t result, unsigned __int8 a2, unsigned int a3, unsigned __int8 a4)
{
  v26 = result;
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  LOBYTE(i) = 1;
  do
  {
    if (i <= a2 && v5 - 33 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      if (v5 > 0x1F)
      {
        continue;
      }

      if ((a3 >> v5))
      {
        if (v5 > 0x1A)
        {
          goto LABEL_37;
        }

        v8 = *(&off_100159E40 + v5 + 8);
        v9 = ChannelRelationship.description.getter();
        v11 = v10;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100024EE8(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        if (v13 >= v12 >> 1)
        {
          result = sub_100024EE8((v12 > 1), v13 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v13 + 1;
        v14 = &v6[32 * v13];
        *(v14 + 4) = i;
        *(v14 + 5) = v9;
        *(v14 + 6) = v11;
        *(v14 + 14) = v8;
        LOWORD(i) = i + 1;
        if ((i & 0x100) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    if (v5 == 26)
    {
      if (((i - 1) & 0xFFFFFF00) != 0)
      {
        goto LABEL_41;
      }

      if (a2 <= (i - 1))
      {
        return 0;
      }

      v16 = 0;
      v17 = a2 - (i - 1);
      v29 = OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject;
      for (i = i; ; ++i)
      {
        if (v16 >= v17)
        {
          goto LABEL_39;
        }

        if (a4)
        {
          if (((a4 + v16) >> 8))
          {
            return 0;
          }

          v18 = *(v26 + v29);
          if (v18)
          {
            sub_1000F8280((a4 + v16));
            if (v27)
            {
            }

            if (v19)
            {
              sub_10001EA64();
              v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v21 = v20;

              goto LABEL_29;
            }

            v18 = 0;
          }

          v21 = 0;
        }

        else
        {
          v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v22);

          v18 = 0x206C656E6E616843;
          v21 = 0xE800000000000000;
        }

LABEL_29:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100024EE8(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
        }

        v24 = *(v6 + 2);
        v23 = *(v6 + 3);
        if (v24 >= v23 >> 1)
        {
          result = sub_100024EE8((v23 > 1), v24 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v24 + 1;
        v25 = &v6[32 * v24];
        *(v25 + 4) = i;
        *(v25 + 5) = v18;
        *(v25 + 6) = v21;
        *(v25 + 14) = 0;
        if (i == 255)
        {
          goto LABEL_40;
        }

        if (++v16 == v17)
        {
          return 0;
        }
      }
    }
  }

  while (!__OFADD__(v5++, 1));
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_100109BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_10005EF40(a1, a2, *(*a3 + 2));
  if (v3)
  {
    return;
  }

  v10 = v9;
  v11 = [v9 bytes];
  if (v11[2] != 38 || *(v11 + 2) != a1 || (v65 = v11[6], !v11[6]))
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 52;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v62 = v10;
  v12 = sub_1000A60F8(v11, 18944);
  if (v13 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v66, 0, 14);
      v18 = v66;
      v17 = v66;
      goto LABEL_31;
    }

    v20 = *(v12 + 16);
    v63 = *(v12 + 24);
    v21 = __DataStorage._bytes.getter();
    if (v21)
    {
      v22 = __DataStorage._offset.getter();
      if (__OFSUB__(v20, v22))
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v21 += v20 - v22;
    }

    v23 = __OFSUB__(v63, v20);
    v24 = v63 - v20;
    if (!v23)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v66[0] = v12;
    LOWORD(v66[1]) = v13;
    BYTE2(v66[1]) = BYTE2(v13);
    BYTE3(v66[1]) = BYTE3(v13);
    BYTE4(v66[1]) = BYTE4(v13);
    BYTE5(v66[1]) = BYTE5(v13);
    v17 = v66 + BYTE6(v13);
    v18 = v66;
    goto LABEL_31;
  }

  if (v14 >> 32 < v14)
  {
    __break(1u);
    goto LABEL_73;
  }

  v21 = __DataStorage._bytes.getter();
  if (v21)
  {
    v25 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v25))
    {
      v21 += v14 - v25;
      goto LABEL_22;
    }

LABEL_74:
    __break(1u);
  }

LABEL_22:
  v24 = (v14 >> 32) - v14;
LABEL_23:
  v26 = __DataStorage._length.getter();
  if (v26 >= v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  v28 = (v27 + v21);
  if (v21)
  {
    v17 = v28;
  }

  else
  {
    v17 = 0;
  }

  v18 = v21;
LABEL_31:
  sub_1000DC7C0(v18, v17, v67);
  sub_100076B24(v14, v15);
  v44 = v67[2];

  inited = *(v44 + 16);
  if (inited)
  {
    v67[0] = _swiftEmptyArrayStorage;
    sub_100047100(0, inited, 0);
    v45 = 0;
    v34 = v67[0];
    v46 = *(v44 + 16);
    while (v45 != v46)
    {
      if (v45 >= *(v44 + 16))
      {
        goto LABEL_70;
      }

      v47 = *(v44 + 32 + 8 * v45);
      v48 = *(v47 + 16);
      if (v48)
      {
        v7 = 0;
        v49 = (v47 + 39);
        v50 = (v47 + 39);
        do
        {
          v51 = *v50;
          v50 += 8;
          if (v51 == 1)
          {
            v7 = *(v49 - 3);
          }

          v49 = v50;
          --v48;
        }

        while (v48);
      }

      else
      {
        v7 = 0;
      }

      v52 = ChannelRelationship.description.getter();
      v67[0] = v34;
      v55 = *(v34 + 2);
      v54 = *(v34 + 3);
      a2 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v65 = v52;
        v64 = v53;
        sub_100047100((v54 > 1), v55 + 1, 1);
        v53 = v64;
        v52 = v65;
        v34 = v67[0];
      }

      ++v45;
      *(v34 + 2) = a2;
      v56 = &v34[32 * v55];
      *(v56 + 4) = v45;
      *(v56 + 5) = v52;
      *(v56 + 6) = v53;
      *(v56 + 14) = v7;
      if (v45 == inited)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
    while (1)
    {
      do
      {
        __break(1u);
        swift_once();
        v29 = sub_10000A1BC(v7, qword_1001794F0);
        sub_10000A2A4(v29, inited);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v30, qword_100179508);
        sub_100039F58(1, inited, v34, a2);

        sub_10000C9D0(inited);
        sub_100001AB4(&qword_1001753A8, &qword_100129F20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10011DE90;
        v32 = ChannelRelationship.description.getter();
        *(inited + 32) = 1;
        v7 = inited + 32;
        *(inited + 40) = v32;
        *(inited + 48) = v33;
        *(inited + 56) = 2;
        v34 = _swiftEmptyArrayStorage;
        v35 = _swiftEmptyArrayStorage[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v37 = _swiftEmptyArrayStorage[3] >> 1;
          if (v37 > v35)
          {
            continue;
          }
        }

        v34 = sub_100024EE8(isUniquelyReferenced_nonNull_native, v35 + 1, 1, _swiftEmptyArrayStorage);
        v37 = *(v34 + 3) >> 1;
      }

      while (v37 <= *(v34 + 2));
      swift_arrayInitWithCopy();

      ++*(v34 + 2);
      v38 = v62;
      if (v65 == 1)
      {
        break;
      }

      sub_100001AB4(&qword_1001753A8, &qword_100129F20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10011DE90;
      v39 = ChannelRelationship.description.getter();
      *(inited + 32) = 2;
      v7 = inited + 32;
      *(inited + 40) = v39;
      *(inited + 48) = v40;
      *(inited + 56) = 3;
      v41 = *(v34 + 2);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      if (!v42 || (v43 = *(v34 + 3) >> 1, v43 <= v41))
      {
        v34 = sub_100024EE8(v42, v41 + 1, 1, v34);
        v43 = *(v34 + 3) >> 1;
      }

      if (v43 > *(v34 + 2))
      {
        swift_arrayInitWithCopy();

        ++*(v34 + 2);
        if (v65 == 2)
        {
LABEL_44:
          v38 = v62;
          break;
        }

        inited = ChannelRelationship.description.getter();
        v7 = v57;
        a2 = 3;
        while (1)
        {
          sub_100001AB4(&qword_1001753A8, &qword_100129F20);
          v58 = swift_initStackObject();
          *(v58 + 16) = xmmword_10011DE90;
          *(v58 + 32) = a2;
          *(v58 + 40) = inited;
          *(v58 + 48) = v7;
          *(v58 + 56) = 0;
          v59 = *(v34 + 2);
          v60 = swift_isUniquelyReferenced_nonNull_native();
          if (!v60 || (v61 = *(v34 + 3) >> 1, v61 <= v59))
          {
            v34 = sub_100024EE8(v60, v59 + 1, 1, v34);
            v61 = *(v34 + 3) >> 1;
          }

          if (v61 <= *(v34 + 2))
          {
            break;
          }

          swift_arrayInitWithCopy();

          ++*(v34 + 2);
          if (v65 == a2)
          {
            goto LABEL_44;
          }

          if (++a2 == 256)
          {
            __break(1u);
            goto LABEL_59;
          }
        }
      }
    }
  }

  else
  {
LABEL_59:
  }
}

void sub_10010A3F0(unsigned __int16 a1, void *a2, uint64_t a3)
{
  sub_100058B70(a1, a2, a3);
  if (v3)
  {
    return;
  }

  v5 = v4;
  v6 = sub_1000A60F8([v4 bytes], 21248);
  if (v7 >> 60 == 15)
  {
    __break(1u);
    return;
  }

  v8 = v6;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v10)
    {
      v44[0] = v6;
      LOWORD(v44[1]) = v7;
      BYTE2(v44[1]) = BYTE2(v7);
      BYTE3(v44[1]) = BYTE3(v7);
      BYTE4(v44[1]) = BYTE4(v7);
      BYTE5(v44[1]) = BYTE5(v7);
      v11 = v44 + BYTE6(v7);
      v12 = v44;
      goto LABEL_26;
    }

    v21 = (v6 >> 32) - v6;
    if (v6 >> 32 < v6)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v22 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v22))
      {
        goto LABEL_48;
      }

      v15 += v8 - v22;
    }

    v23 = __DataStorage._length.getter();
    if (v23 >= v21)
    {
      v20 = (v8 >> 32) - v8;
    }

    else
    {
      v20 = v23;
    }

LABEL_21:
    v24 = (v20 + v15);
    if (v15)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }

    v12 = v15;
    goto LABEL_26;
  }

  if (v10 == 2)
  {
    v13 = *(v6 + 16);
    v14 = *(v6 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
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

    goto LABEL_21;
  }

  memset(v44, 0, 14);
  v12 = v44;
  v11 = v44;
LABEL_26:
  sub_100106AE0(v12, v11, v45);
  sub_100076B24(v8, v9);
  v25 = v45[3];

  v26 = *(v25 + 16);
  if (v26)
  {
    v43 = v5;
    v45[0] = _swiftEmptyArrayStorage;
    sub_100047100(0, v26, 0);
    v27 = 0;
    v28 = v45[0];
    v29 = *(v25 + 16);
    while (v27 != v29)
    {
      if (v27 >= *(v25 + 16))
      {
        goto LABEL_44;
      }

      v30 = *(v25 + 32 + 8 * v27);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = 0;
        v33 = (v30 + 48);
        v34 = (v30 + 48);
        do
        {
          v35 = *v34;
          v34 += 17;
          if (v35 == 1)
          {
            v32 = *(v33 - 5);
          }

          v33 = v34;
          --v31;
        }

        while (v31);
      }

      else
      {
        v32 = 0;
      }

      v36 = ChannelRelationship.description.getter();
      v45[0] = v28;
      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        v41 = v37;
        v42 = v36;
        sub_100047100((v38 > 1), v39 + 1, 1);
        v37 = v41;
        v36 = v42;
        v28 = v45[0];
      }

      ++v27;
      *(v28 + 16) = v39 + 1;
      v40 = v28 + 32 * v39;
      *(v40 + 32) = v27;
      *(v40 + 40) = v36;
      *(v40 + 48) = v37;
      *(v40 + 56) = v32;
      if (v27 == v26)
      {

        return;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }
}

void *sub_10010A778(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v17, 0, 14);
      goto LABEL_15;
    }

    v5 = *(a1 + 16);
    v6 = __DataStorage._bytes.getter();
    if (v6)
    {
      v7 = v6;
      v8 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, v8))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v9 = (v5 - v8 + v7);
      __DataStorage._length.getter();
      if (v9)
      {
LABEL_13:
        v15 = v9;
        v16 = a3;
        return sub_10010B22C(v15, v16, sub_1000473D0);
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    v17[0] = a1;
    LOWORD(v17[1]) = a2;
    BYTE2(v17[1]) = BYTE2(a2);
    BYTE3(v17[1]) = BYTE3(a2);
    BYTE4(v17[1]) = BYTE4(a2);
    BYTE5(v17[1]) = BYTE5(a2);
LABEL_15:
    v15 = v17;
    v16 = a3;
    return sub_10010B22C(v15, v16, sub_1000473D0);
  }

  v10 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = __DataStorage._bytes.getter();
  if (!v11)
  {
LABEL_22:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11;
  v13 = __DataStorage._offset.getter();
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_19;
  }

  v9 = (v10 - v13 + v12);
  result = __DataStorage._length.getter();
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

__int16 *sub_10010A954(__int16 *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_1000470A0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      do
      {
        v6 = *v3++;
        v5 = v6;
        v8 = result;
        v7 = *(result + 3);
        if (v4 >= v7 >> 1)
        {
          sub_1000470A0((v7 > 1), v4 + 1, 1);
          result = v8;
        }

        *(result + 2) = v4 + 1;
        result[v4++ + 16] = v5;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010AA24(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047140(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 17 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 16);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047140((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        v8[16] = v10;
        *v8 = v9;
        v5 += 17;
        v3 = (v3 + 17);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010AB1C(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047160(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 12 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 2);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047160((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 2) = v10;
        *v8 = v9;
        v5 += 12;
        v3 = (v3 + 12);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

char *sub_10010AC70(char *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100046824(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      do
      {
        v6 = *v3++;
        v5 = v6;
        v8 = result;
        v7 = *(result + 3);
        if (v4 >= v7 >> 1)
        {
          sub_100046824((v7 > 1), v4 + 1, 1);
          result = v8;
        }

        *(result + 2) = v4 + 1;
        result[v4++ + 32] = v5;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

int *sub_10010ADC4(int *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047080(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      do
      {
        v6 = *v3++;
        v5 = v6;
        v8 = result;
        v7 = *(result + 3);
        if (v4 >= v7 >> 1)
        {
          sub_100047080((v7 > 1), v4 + 1, 1);
          result = v8;
        }

        *(result + 2) = v4 + 1;
        result[v4++ + 8] = v5;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010AEC0(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      v17 = v3;
      sub_1000472A0(0, a2, 0);
      v4 = v17;
      v5 = 0;
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 8 * v6;
      do
      {
        v8 = v4[v5];
        v9 = *(&v4[v5] + 1);
        v10 = BYTE5(v4[v5]);
        v11 = BYTE6(v4[v5]);
        v12 = HIBYTE(v4[v5]);
        v18 = result;
        v13 = result[3];
        v14 = v6 + 1;
        if (v6 >= v13 >> 1)
        {
          v16 = v7;
          sub_1000472A0((v13 > 1), v6 + 1, 1);
          v7 = v16;
          v4 = v17;
          result = v18;
        }

        result[2] = v14;
        v15 = result + v7 + v5 * 8;
        v15[32] = v8;
        *(v15 + 33) = v9;
        v15[37] = v10;
        v15[38] = v11;
        v15[39] = v12;
        ++v5;
        v6 = v14;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t *sub_10010B008(uint64_t *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_1000472F0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      do
      {
        v6 = *v3++;
        v5 = v6;
        v8 = result;
        v7 = result[3];
        if (v4 >= v7 >> 1)
        {
          sub_1000472F0((v7 > 1), v4 + 1, 1);
          result = v8;
        }

        result[2] = v4 + 1;
        result[v4++ + 4] = v5;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010B104(void *result, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 2 * v6;
      v8 = v4 + 1;
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v14 = result;
        v11 = result[3];
        v12 = v6 + 1;
        if (v6 >= v11 >> 1)
        {
          a3(v11 > 1, v6 + 1, 1);
          result = v14;
        }

        v8 += 2;
        result[2] = v12;
        v13 = result + v7;
        v13[32] = v9;
        v13[33] = v10;
        v7 += 2;
        v6 = v12;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010B22C(void *result, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      v5 = 0;
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 6 * v6;
      do
      {
        v8 = *(v4 + v5);
        v9 = *(v4 + v5 + 1);
        v10 = *(v4 + v5 + 5);
        v15 = result;
        v11 = result[3];
        v12 = v6 + 1;
        if (v6 >= v11 >> 1)
        {
          a3(v11 > 1, v6 + 1, 1);
          result = v15;
        }

        result[2] = v12;
        v13 = result + v7 + v5;
        v13[32] = v8;
        *(v13 + 33) = v9;
        v13[37] = v10;
        v5 += 6;
        v6 = v12;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010B344(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047440(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 12 * v4;
      v6 = v3 + 1;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v12 = result;
        v9 = result[3];
        v10 = v4 + 1;
        if (v4 >= v9 >> 1)
        {
          sub_100047440((v9 > 1), v4 + 1, 1);
          result = v12;
        }

        result[2] = v10;
        v11 = result + v5;
        *(v11 + 4) = v7;
        *(v11 + 10) = v8;
        v5 += 12;
        v6 += 3;
        v4 = v10;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010B440(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047460(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 6 * v4;
      v6 = v3 + 1;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = v6[1];
        v13 = result;
        v10 = result[3];
        v11 = v4 + 1;
        if (v4 >= v10 >> 1)
        {
          sub_100047460((v10 > 1), v4 + 1, 1);
          result = v13;
        }

        v6 += 3;
        result[2] = v11;
        v12 = (result + v5);
        v12[16] = v7;
        v12[17] = v8;
        v12[18] = v9;
        v5 += 6;
        v4 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010B53C(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047480(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 3 * v4;
      v6 = v3 + 1;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = v6[1];
        v13 = result;
        v10 = result[3];
        v11 = v4 + 1;
        if (v4 >= v10 >> 1)
        {
          sub_100047480((v10 > 1), v4 + 1, 1);
          result = v13;
        }

        v6 += 3;
        result[2] = v11;
        v12 = result + v5;
        v12[32] = v7;
        v12[33] = v8;
        v12[34] = v9;
        v5 += 3;
        v4 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010B634(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_1000474E0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 3 * v4;
      v6 = v3 + 2;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v12 = result;
        v9 = result[3];
        v10 = v4 + 1;
        if (v4 >= v9 >> 1)
        {
          sub_1000474E0((v9 > 1), v4 + 1, 1);
          result = v12;
        }

        v6 += 3;
        result[2] = v10;
        v11 = result + v5;
        *(v11 + 16) = v7;
        v11[34] = v8;
        v5 += 3;
        v4 = v10;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010B724(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047500(0, a2, 0);
      v4 = 0;
      result = _swiftEmptyArrayStorage;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 5 * v5;
      do
      {
        v7 = *(v3 + v4);
        v8 = *(v3 + v4 + 2);
        v9 = *(v3 + v4 + 3);
        v13 = result;
        v10 = result[3];
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          sub_100047500((v10 > 1), v5 + 1, 1);
          result = v13;
        }

        result[2] = v11;
        v12 = result + v6 + v4;
        *(v12 + 16) = v7;
        v12[34] = v8;
        *(v12 + 35) = v9;
        v4 += 5;
        v5 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010B828(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047520(0, a2, 0);
      v5 = 0;
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 7 * v6;
      do
      {
        v8 = *(v4 + v5);
        v2.i32[0] = *(v4 + v5 + 2);
        v9 = *(v4 + v5 + 6);
        v14 = result;
        v10 = result[3];
        v11 = v6 + 1;
        if (v6 >= v10 >> 1)
        {
          sub_100047520((v10 > 1), v6 + 1, 1);
          result = v14;
        }

        v12 = vmovl_u8(v2).u64[0];
        result[2] = v11;
        v13 = result + v7 + v5;
        *(v13 + 16) = v8;
        *(v13 + 34) = vuzp1_s8(v12, v12).u32[0];
        v13[38] = v9;
        v5 += 7;
        v6 = v11;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010B940(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047540(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 6 * v5;
      v7 = (v4 + 2);
      do
      {
        v8 = *(v7 - 1);
        v2.i32[0] = *v7;
        v13 = result;
        v9 = result[3];
        v10 = v5 + 1;
        if (v5 >= v9 >> 1)
        {
          sub_100047540((v9 > 1), v5 + 1, 1);
          result = v13;
        }

        v11 = vmovl_u8(v2).u64[0];
        result[2] = v10;
        v12 = result + v6;
        *(v12 + 16) = v8;
        *(v12 + 34) = vuzp1_s8(v11, v11).u32[0];
        v6 += 6;
        v7 = (v7 + 6);
        v5 = v10;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010BA44(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047560(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 3 * v4;
      v6 = v3 + 2;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v12 = result;
        v9 = result[3];
        v10 = v4 + 1;
        if (v4 >= v9 >> 1)
        {
          sub_100047560((v9 > 1), v4 + 1, 1);
          result = v12;
        }

        v6 += 3;
        result[2] = v10;
        v11 = result + v5;
        *(v11 + 16) = v7;
        v11[34] = v8;
        v5 += 3;
        v4 = v10;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010BB34(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      v17 = v3;
      sub_100047580(0, a2, 0);
      v4 = v17;
      v5 = 0;
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 7 * v6;
      do
      {
        v8 = *(v4 + v5);
        v9 = *(v4 + v5 + 2);
        v10 = *(v4 + v5 + 3);
        v11 = *(v4 + v5 + 4);
        v12 = *(v4 + v5 + 6);
        v18 = result;
        v13 = result[3];
        v14 = v6 + 1;
        if (v6 >= v13 >> 1)
        {
          v16 = v7;
          sub_100047580((v13 > 1), v6 + 1, 1);
          v7 = v16;
          v4 = v17;
          result = v18;
        }

        result[2] = v14;
        v15 = result + v7 + v5;
        *(v15 + 16) = v8;
        v15[34] = v9;
        v15[35] = v10;
        *(v15 + 18) = v11;
        v15[38] = v12;
        v5 += 7;
        v6 = v14;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010BC54(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_1000475A0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 20 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 4);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_1000475A0((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 4) = v10;
        *v8 = v9;
        v5 += 20;
        v3 = (v3 + 20);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010BD50(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_1000475C0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 19 * v4 + 32;
      do
      {
        *v9 = *v3;
        *&v9[15] = *(v3 + 15);
        v10 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_1000475C0((v6 > 1), v4 + 1, 1);
          result = v10;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 15) = *&v9[15];
        *v8 = *v9;
        v5 += 19;
        v3 = (v3 + 19);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010BF80(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047730(0, a2, 0);
      v4 = 0;
      result = _swiftEmptyArrayStorage;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = v5;
      do
      {
        v7 = v3[v4];
        v8 = *(&v3[v4] + 2);
        v9 = HIWORD(v3[v4]);
        v13 = result;
        v10 = result[3];
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          sub_100047730((v10 > 1), v5 + 1, 1);
          result = v13;
        }

        result[2] = v11;
        v12 = &result[v6 + v4];
        *(v12 + 16) = v7;
        *(v12 + 34) = v8;
        *(v12 + 19) = v9;
        ++v4;
        v5 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010C0B0(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047780(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 12 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 2);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047780((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 2) = v10;
        *v8 = v9;
        v5 += 12;
        v3 = (v3 + 12);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010C1D8(void *result, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 6 * v6;
      v8 = v4 + 2;
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v14 = result;
        v11 = result[3];
        v12 = v6 + 1;
        if (v6 >= v11 >> 1)
        {
          a3(v11 > 1, v6 + 1, 1);
          result = v14;
        }

        v8 += 3;
        result[2] = v12;
        v13 = result + v7;
        *(v13 + 8) = v9;
        *(v13 + 18) = v10;
        v7 += 6;
        v6 = v12;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010C304(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047800(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v5 = 0;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 11 * v6;
      do
      {
        v2.i32[0] = *(v4 + v5);
        v8 = *(v4 + v5 + 4);
        v9 = *(v4 + v5 + 5);
        v10 = *(v4 + v5 + 9);
        v15 = result;
        v11 = result[3];
        v12 = v6 + 1;
        if (v6 >= v11 >> 1)
        {
          sub_100047800((v11 > 1), v6 + 1, 1);
          result = v15;
        }

        v13 = vmovl_u8(v2).u64[0];
        result[2] = v12;
        v14 = result + v7 + v5;
        *(v14 + 8) = vuzp1_s8(v13, v13).u32[0];
        v14[36] = v8;
        *(v14 + 37) = v9;
        *(v14 + 41) = v10;
        v5 += 11;
        v6 = v12;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010C418(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047820(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v5 = 0;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 9 * v6;
      do
      {
        v2.i32[0] = *(v4 + v5);
        v8 = *(v4 + v5 + 4);
        v9 = *(v4 + v5 + 6);
        v10 = *(v4 + v5 + 8);
        v15 = result;
        v11 = result[3];
        v12 = v6 + 1;
        if (v6 >= v11 >> 1)
        {
          sub_100047820((v11 > 1), v6 + 1, 1);
          result = v15;
        }

        v13 = vmovl_u8(v2).u64[0];
        result[2] = v12;
        v14 = result + v7 + v5;
        *(v14 + 8) = vuzp1_s8(v13, v13).u32[0];
        *(v14 + 18) = v8;
        *(v14 + 19) = v9;
        v14[40] = v10;
        v5 += 9;
        v6 = v12;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010C528(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047840(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 12 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 2);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047840((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 2) = v10;
        *v8 = v9;
        v5 += 12;
        v3 = (v3 + 12);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010C624(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047860(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 9 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 8);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047860((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        v8[8] = v10;
        *v8 = v9;
        v5 += 9;
        v3 = (v3 + 9);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010C71C(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047880(0, a2, 0);
      v4 = 0;
      result = _swiftEmptyArrayStorage;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 4 * v5;
      do
      {
        v7 = *(v3 + v4);
        v8 = *(v3 + v4 + 1);
        v9 = *(v3 + v4 + 3);
        v13 = result;
        v10 = result[3];
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          sub_100047880((v10 > 1), v5 + 1, 1);
          result = v13;
        }

        result[2] = v11;
        v12 = result + v6 + v4;
        v12[32] = v7;
        *(v12 + 33) = v8;
        v12[35] = v9;
        v4 += 4;
        v5 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010C878(void *result, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = 5 * v7;
      v9 = v5 + 4;
      do
      {
        v3.i32[0] = *(v9 - 1);
        v10 = *v9;
        v15 = result;
        v11 = result[3];
        v12 = v7 + 1;
        if (v7 >= v11 >> 1)
        {
          a3(v11 > 1, v7 + 1, 1);
          result = v15;
        }

        v13 = vmovl_u8(v3).u64[0];
        result[2] = v12;
        v14 = result + v8;
        *(v14 + 8) = vuzp1_s8(v13, v13).u32[0];
        v14[36] = v10;
        v8 += 5;
        v9 += 5;
        v7 = v12;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

void *sub_10010C97C(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047900(0, a2, 0);
      v5 = 0;
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 6 * v6;
      do
      {
        v2.i32[0] = *(v4 + v5);
        v8 = *(v4 + v5 + 4);
        v9 = *(v4 + v5 + 5);
        v14 = result;
        v10 = result[3];
        v11 = v6 + 1;
        if (v6 >= v10 >> 1)
        {
          sub_100047900((v10 > 1), v6 + 1, 1);
          result = v14;
        }

        v12 = vmovl_u8(v2).u64[0];
        result[2] = v11;
        v13 = result + v7 + v5;
        *(v13 + 8) = vuzp1_s8(v12, v12).u32[0];
        v13[36] = v8;
        v13[37] = v9;
        v5 += 6;
        v6 = v11;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void sub_10010CB18(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    if (a2)
    {
      a3(0, a2, 0);
      v4 = v17;
      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = 5 * v7;
      do
      {
        v9 = *(v4 + v5);
        v10 = *(v4 + v5 + 1);
        v11 = *(v4 + v5 + 3);
        v12 = *(v4 + v5 + 4);
        v18 = v6;
        v13 = v6[3];
        v14 = v7 + 1;
        if (v7 >= v13 >> 1)
        {
          a3(v13 > 1, v7 + 1, 1);
          v4 = v17;
          v6 = v18;
        }

        v6[2] = v14;
        v15 = v6 + v8 + v5;
        v15[32] = v9;
        *(v15 + 33) = v10;
        v15[35] = v11;
        v15[36] = v12;
        v5 += 5;
        v7 = v14;
        --v3;
      }

      while (v3);
    }
  }
}

void *sub_10010CC64(void *result, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v7 = 0;
      v8 = _swiftEmptyArrayStorage[2];
      v9 = 7 * v8;
      do
      {
        v3.i32[0] = *(v5 + v7);
        v10 = *(v5 + v7 + 4);
        v11 = *(v5 + v7 + 6);
        v16 = result;
        v12 = result[3];
        v13 = v8 + 1;
        if (v8 >= v12 >> 1)
        {
          a3(v12 > 1, v8 + 1, 1);
          result = v16;
        }

        v14 = vmovl_u8(v3).u64[0];
        result[2] = v13;
        v15 = result + v9 + v7;
        *(v15 + 8) = vuzp1_s8(v14, v14).u32[0];
        *(v15 + 18) = v10;
        v15[38] = v11;
        v7 += 7;
        v8 = v13;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t *sub_10010CDD4(uint64_t *result, unint64_t a2, void (*a3)(BOOL, unint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      do
      {
        v8 = *v4++;
        v7 = v8;
        v10 = result;
        v9 = result[3];
        if (v6 >= v9 >> 1)
        {
          a3(v9 > 1, v6 + 1, 1);
          result = v10;
        }

        result[2] = v6 + 1;
        result[v6++ + 4] = v7;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010CEE4(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047A70(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 22 * v4 + 32;
      do
      {
        *v9 = *v3;
        *&v9[14] = *(v3 + 14);
        v10 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047A70((v6 > 1), v4 + 1, 1);
          result = v10;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 14) = *&v9[14];
        *v8 = *v9;
        v5 += 22;
        v3 = (v3 + 22);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010CFE0(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047A90(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 24 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = v3[2];
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047A90((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 2) = v10;
        *v8 = v9;
        v5 += 24;
        v3 += 3;
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D0D8(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047AB0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = 0;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 14 * v5;
      do
      {
        v7 = *(v3 + v4);
        v8 = *(v3 + v4 + 8);
        v9 = *(v3 + v4 + 10);
        v10 = *(v3 + v4 + 12);
        v14 = result;
        v11 = result[3];
        v12 = v5 + 1;
        if (v5 >= v11 >> 1)
        {
          sub_100047AB0((v11 > 1), v5 + 1, 1);
          result = v14;
        }

        result[2] = v12;
        v13 = result + v6 + v4;
        *(v13 + 4) = v7;
        *(v13 + 20) = v8;
        *(v13 + 21) = v9;
        *(v13 + 22) = v10;
        v4 += 14;
        v5 = v12;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D1E4(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047AD0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 22 * v4 + 32;
      do
      {
        *v9 = *v3;
        *&v9[14] = *(v3 + 14);
        v10 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047AD0((v6 > 1), v4 + 1, 1);
          result = v10;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 14) = *&v9[14];
        *v8 = *v9;
        v5 += 22;
        v3 = (v3 + 22);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D2E0(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047AF0(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 18 * v4 + 32;
      do
      {
        v9 = *v3;
        v10 = *(v3 + 8);
        v11 = result;
        v6 = result[3];
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047AF0((v6 > 1), v4 + 1, 1);
          result = v11;
        }

        result[2] = v7;
        v8 = result + v5;
        *(v8 + 8) = v10;
        *v8 = v9;
        v5 += 18;
        v3 = (v3 + 18);
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D3DC(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047B10(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 4 * v4;
      v6 = v3 + 1;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v12 = result;
        v9 = result[3];
        v10 = v4 + 1;
        if (v4 >= v9 >> 1)
        {
          sub_100047B10((v9 > 1), v4 + 1, 1);
          result = v12;
        }

        v6 += 2;
        result[2] = v10;
        v11 = result + v5;
        *(v11 + 16) = v7;
        *(v11 + 17) = v8;
        v5 += 4;
        v4 = v10;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D4CC(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047B30(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 6 * v4;
      v6 = v3 + 1;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = v6[1];
        v13 = result;
        v10 = result[3];
        v11 = v4 + 1;
        if (v4 >= v10 >> 1)
        {
          sub_100047B30((v10 > 1), v4 + 1, 1);
          result = v13;
        }

        v6 += 3;
        result[2] = v11;
        v12 = (result + v5);
        v12[16] = v7;
        v12[17] = v8;
        v12[18] = v9;
        v5 += 6;
        v4 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

__int128 *sub_10010D5C8(__int128 *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047B50(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage[2];
      v5 = 16 * v4 + 32;
      do
      {
        v8 = *v3;
        v9 = result;
        v6 = *(result + 3);
        v7 = v4 + 1;
        if (v4 >= v6 >> 1)
        {
          sub_100047B50((v6 > 1), v4 + 1, 1);
          result = v9;
        }

        *(result + 2) = v7;
        *(result + v5) = v8;
        v5 += 16;
        ++v3;
        v4 = v7;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D6AC(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047B70(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v4 = 0;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 14 * v5;
      do
      {
        v7 = *(v3 + v4);
        v8 = *(v3 + v4 + 8);
        v9 = *(v3 + v4 + 10);
        v10 = *(v3 + v4 + 12);
        v14 = result;
        v11 = result[3];
        v12 = v5 + 1;
        if (v5 >= v11 >> 1)
        {
          sub_100047B70((v11 > 1), v5 + 1, 1);
          result = v14;
        }

        result[2] = v12;
        v13 = result + v6 + v4;
        *(v13 + 4) = v7;
        *(v13 + 20) = v8;
        *(v13 + 21) = v9;
        *(v13 + 22) = v10;
        v4 += 14;
        v5 = v12;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *sub_10010D7E4(void *result, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      a3(0, a2, 0);
      result = _swiftEmptyArrayStorage;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = 4 * v6;
      v8 = v4 + 1;
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        v14 = result;
        v11 = result[3];
        v12 = v6 + 1;
        if (v6 >= v11 >> 1)
        {
          a3(v11 > 1, v6 + 1, 1);
          result = v14;
        }

        v8 += 2;
        result[2] = v12;
        v13 = result + v7;
        *(v13 + 16) = v9;
        *(v13 + 17) = v10;
        v7 += 4;
        v6 = v12;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void *sub_10010D8E0(void *result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    result = _swiftEmptyArrayStorage;
    if (a2)
    {
      sub_100047BC0(0, a2, 0);
      v4 = 0;
      result = _swiftEmptyArrayStorage;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = 12 * v5;
      do
      {
        v7 = *(v3 + v4);
        v8 = *(v3 + v4 + 8);
        v9 = *(v3 + v4 + 10);
        v13 = result;
        v10 = result[3];
        v11 = v5 + 1;
        if (v5 >= v10 >> 1)
        {
          sub_100047BC0((v10 > 1), v5 + 1, 1);
          result = v13;
        }

        result[2] = v11;
        v12 = result + v6 + v4;
        *(v12 + 4) = v7;
        *(v12 + 20) = v8;
        *(v12 + 21) = v9;
        v4 += 12;
        v5 = v11;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t ActiveStreamingInterface.staticStreamingInterface.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

void ActiveStreamingInterface.usbDevice.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ActiveStreamingInterface.usbDevice.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10010DB58;
}

void sub_10010DB58(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ActiveStreamingInterface.interfaceName.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

double ActiveStreamingInterface.terminal.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = v2 & 0xC000000000000001;
    swift_beginAccess();
    v4 = 0;
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v15 = v1;
    v16 = i;
    while (v17)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

LABEL_12:
      if (v1[2])
      {
        v7 = v1[3];
        v8 = v1[2];
        ObjectType = swift_getObjectType();
        v10 = v2;
        v11 = *(v7 + 208);
        swift_unknownObjectRetain();
        v11(&v18, v5, ObjectType, v7);
        v2 = v10;
        v1 = v15;
        swift_unknownObjectRelease();

        if (*(&v19 + 1))
        {
          sub_10001EFE4(&v18, a1);
          return result;
        }
      }

      else
      {

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      sub_1000D13FC(&v18);
      ++v4;
      if (v6 == v16)
      {
        goto LABEL_18;
      }
    }

    if (v4 >= *(v14 + 16))
    {
      goto LABEL_16;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *ActiveStreamingInterface.usbHostInterface.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t ActiveStreamingInterface.validAlternateSettings.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

BOOL ActiveStreamingInterface.synchronizationType.getter()
{
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  v8[2] = *(v1 + 64);
  v8[3] = v3;
  v8[4] = v4;
  v8[0] = *(v1 + 32);
  v8[1] = v2;
  sub_10001EBF0(v8, &v7);
  v5 = StreamingAltInterface.synchronizationType.getter();
  sub_10001EC4C(v8);
  return v5;
}

void ActiveStreamingInterface.direction.getter()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 80);
    v4 = *(v1 + 96);
    v6[2] = *(v1 + 64);
    v6[3] = v3;
    v6[4] = v4;
    v6[0] = *(v1 + 32);
    v6[1] = v2;
    sub_10001EBF0(v6, &v5);
    StreamingAltInterface.direction.getter();
    sub_10001EC4C(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActiveStreamingInterface.deviceName.getter()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    return 0x206E776F6E6B6E55;
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  active = ActiveFunction.deviceName.getter(ObjectType, v1);
  swift_unknownObjectRelease();
  return active;
}

char *ActiveStreamingInterface.auaStream.getter()
{
  v1 = v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result audioDevices];

    if (v4)
    {
      sub_100116364();
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        goto LABEL_40;
      }

      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        v7 = 0;
        v8 = v5 & 0xC000000000000001;
        v21 = v5 + 32;
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
        v24 = v6;
        v25 = v5;
        v23 = v5 & 0xC000000000000001;
        while (1)
        {
          while (1)
          {
            if (v8)
            {
              v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *(v22 + 16))
              {
                goto LABEL_39;
              }

              v9 = *(v21 + 8 * v7);
            }

            v10 = v9;
            if (__OFADD__(v7++, 1))
            {
              goto LABEL_38;
            }

            type metadata accessor for AUAAudioDevice();
            if (swift_dynamicCastClass())
            {
              break;
            }

            if (v7 == v6)
            {
              goto LABEL_41;
            }
          }

          v12 = AUAAudioDevice.inputAUAStreams()();
          if (v12 >> 62)
          {
            type metadata accessor for AUAStream(0);
            v13 = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for AUAStream(0);
            v13 = v12;
          }

          v14 = AUAAudioDevice.outputAUAStreams()();
          if (v14 >> 62)
          {
            type metadata accessor for AUAStream(0);
            v15 = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for AUAStream(0);
            v15 = v14;
          }

          sub_10007DC24(v15);
          v16 = v13;
          if (v13 >> 62)
          {
            break;
          }

          v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_19;
          }

LABEL_6:

          v6 = v24;
          v5 = v25;
          v8 = v23;
          if (v7 == v24)
          {
            goto LABEL_41;
          }
        }

        v17 = _CocoaArrayWrapper.endIndex.getter();
        if (!v17)
        {
          goto LABEL_6;
        }

LABEL_19:
        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v5 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v19 = *(v16 + 8 * v18 + 32);
            v5 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v6 = _CocoaArrayWrapper.endIndex.getter();
              if (!v6)
              {
                break;
              }

              goto LABEL_5;
            }
          }

          if (*(*(*&v19[OBJC_IVAR___AUAStream_interface] + 32) + 2) == *(*(v1 + 32) + 2))
          {
            v20 = v19;

            return v20;
          }

          ++v18;
          if (v5 == v17)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_41:
    }

    return 0;
  }

  return result;
}

uint64_t ActiveStreamingInterface.clock()()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[16];

    return v1;
  }

  v3 = v0[9];
  if (v3 >> 62)
  {
LABEL_21:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_22:
    v16 = 86;
    goto LABEL_23;
  }

  v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_22;
  }

LABEL_5:
  v29 = v3 & 0xC000000000000001;
  swift_beginAccess();
  v4 = 0;
  v19 = v3 & 0xFFFFFFFFFFFFFF8;
  v20 = v0;
  v21 = v1;
  while (1)
  {
    if (v29)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v4 >= *(v19 + 16))
      {
        goto LABEL_20;
      }

      v5 = *(v3 + 8 * v4 + 32);

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    if (v0[2])
    {
      break;
    }

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
LABEL_7:
    sub_1000D13FC(&v22);
    ++v4;
    v1 = v21;
    if (v6 == v21)
    {
      goto LABEL_22;
    }
  }

  v7 = v0[3];
  v8 = v0[2];
  ObjectType = swift_getObjectType();
  v10 = v3;
  v11 = *(v7 + 208);
  swift_unknownObjectRetain();
  v11(&v22, v5, ObjectType, v7);
  v3 = v10;
  v0 = v20;
  swift_unknownObjectRelease();

  if (!*(&v23 + 1))
  {
    goto LABEL_7;
  }

  sub_10001EFE4(&v22, v25);
  sub_10001EFE4(v25, v26);
  v12 = v27;
  v1 = v28;
  sub_10001EAB8(v26, v27);
  v13 = (*(v1 + 32))(v12, v1);
  if (v13)
  {
    v1 = v13;
    v15 = *(v14 + 16);
    sub_10000CE78(v26);
    return v1;
  }

  sub_10000CE78(v26);
  v16 = 87;
LABEL_23:
  sub_10000CA2C();
  swift_allocError();
  *v17 = v16;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0xE000000000000000;
  swift_willThrow();
  return v1;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveStreamingInterface.getActiveAlternateSetting()()
{
  v66 = type metadata accessor for Mirror();
  v1 = *(*(v66 - 1) + 64);
  __chkstk_darwin(v66);
  v61 = v0;
  v68 = *(v0 + 64);
  if (!v68 || (v65 = *(v68 + 2)) == 0)
  {
LABEL_16:
    sub_10000CA2C();
    swift_allocError();
    v18 = 10;
LABEL_17:
    *v17 = v18;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v0;
  }

  v4 = 0;
  v5 = (v68 + 32);
  v67 = 0x800000010012E5C0;
  v6 = (v2 + 8);
  v63 = (v2 + 8);
  v64 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (v4 >= *(v68 + 2))
    {
      goto LABEL_33;
    }

    v69 = v4;
    v7 = *(v5 + 2);
    v8 = *v5;
    v72 = &type metadata for USBDescriptorControl;
    v74 = v7;
    BYTE2(v70[0]) = v7;
    v62 = v8;
    LOWORD(v70[0]) = v8;
    Mirror.init(reflecting:)();
    v9 = Mirror.children.getter();
    v10 = v9[2];
    v11 = v9[3];
    v12 = v9[4];
    v6 = v9[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v13 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_34;
    }

    v14 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v14)
    {

      v6 = v63;
      (v63->Kind)(v64, v66);
LABEL_13:

      goto LABEL_14;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v0 = v70[0];
    v15 = v70[1];
    sub_10000CE78(&v71);
    v6 = v63;
    Kind = v63->Kind;
    if (!v15)
    {
      Kind(v64, v66);
      goto LABEL_13;
    }

    Kind(v64, v66);
    if (v0 == 0xD000000000000016 && v67 == v15)
    {
      break;
    }

LABEL_14:
    LOBYTE(v0) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v0)
    {
      goto LABEL_19;
    }

    v4 = v69 + 1;
    v5 = (v5 + 3);
    if (v65 == v69 + 1)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  v20 = v61;
  swift_beginAccess();
  v21 = *(v20 + 16);
  if (!v21)
  {
    sub_10000CA2C();
    swift_allocError();
    v18 = 69;
    goto LABEL_17;
  }

  LODWORD(v0) = v62 | (v74 << 16);
  v22 = *(v20 + 24);
  v23 = *(v20 + 16);
  ObjectType = swift_getObjectType();
  v25 = *(v22 + 192);
  swift_unknownObjectRetain();
  v26 = v0 & 0xFFFFFF;
  LOBYTE(v0) = v21;
  v27 = v60[1];
  v28 = v25(v26, v20, ObjectType, v22);
  if (v27)
  {
    swift_unknownObjectRelease();
    return v0;
  }

  v69 = v29;
  ADCControlRequestParameterBlock.getCur()(v29, v28 & 0x1FF, v70);
  v6 = v72;
  v30 = v73;
  v31 = sub_10001EAB8(v70, v72);
  v32 = v60;
  Description = v6[-1].Description;
  v34 = *(Description + 8);
  __chkstk_darwin(v31);
  v67 = v35;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = (v60 - v36);
  (*(Description + 2))(v60 - v36);
  v37 = *(v30 + 8);
  v38 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v68 = Description;
  if ((v38 & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = *(*(v37 + 3) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = v60;
  v64 = v60;
  v41 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(AssociatedTypeWitness);
  v65 = v37;
  swift_getAssociatedConformanceWitness();
  v42 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v63 = v60;
  __chkstk_darwin(v42);
  v37 = v65;
  Description = v68;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v43 = *(*(v37 + 4) + 8);
  v44 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v32 = v66;
  result = (*(Description + 1))(v60 - v36, v6);
  if (v44)
  {
LABEL_25:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 8)
    {
      v75 = -1;
      v45 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v46 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v45)
      {
        if (v46 <= 8)
        {
          v64 = *(*(v37 + 3) + 16);
          v47 = swift_getAssociatedTypeWitness();
          v66 = v32;
          v65 = v60;
          v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v47);
          swift_getAssociatedConformanceWitness();
          v49 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          __chkstk_darwin(v49);
          v51 = v37;
          v52 = v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v53 = *(*(v51 + 4) + 8);
          v54 = dispatch thunk of static Comparable.> infix(_:_:)();
          Description = v68;
          (*(v68 + 1))(v52, v6);
          if (v54)
          {
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          goto LABEL_36;
        }

LABEL_31:
        v66 = v60;
        __chkstk_darwin(v46);
        v56 = v37;
        v57 = v60 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_10010FB08();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v58 = *(*(v56 + 4) + 8);
        v59 = dispatch thunk of static Comparable.< infix(_:_:)();
        Description = v68;
        (*(v68 + 1))(v57, v6);
        if (v59)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        if (v46 >= 9)
        {
          goto LABEL_31;
        }

LABEL_35:
        dispatch thunk of BinaryInteger._lowWord.getter();
        Description = v68;
      }
    }

LABEL_36:
    LOBYTE(v0) = dispatch thunk of BinaryInteger._lowWord.getter();
    swift_unknownObjectRelease();

    (*(Description + 1))(v5, v6);
    sub_10000CE78(v70);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t ActiveStreamingInterface.hasActiveAlternateSettingControl.getter()
{
  v35 = type metadata accessor for Mirror();
  v1 = *(*(v35 - 8) + 64);
  result = __chkstk_darwin(v35);
  v5 = *(v0 + 64);
  if (!v5 || (v34 = *(v5 + 16)) == 0)
  {
LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  v30 = v0;
  v31 = v5;
  v6 = 0;
  v7 = (v5 + 32);
  v36 = 0x800000010012E5C0;
  v32 = (v3 + 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v8 = *v7;
    v9 = *(v7 + 2);
    v39[1] = &type metadata for USBDescriptorControl;
    BYTE2(v37) = v9;
    LOWORD(v37) = v8;
    Mirror.init(reflecting:)();
    v10 = Mirror.children.getter();
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v15 != result)
    {
      goto LABEL_25;
    }

    v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v16)
    {

      (*v32)(v33, v35);
LABEL_13:

      goto LABEL_14;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v17 = v37;
    v18 = v38;
    sub_10000CE78(v39);
    v19 = *v32;
    if (!v18)
    {
      v19(v33, v35);
      goto LABEL_13;
    }

    v19(v33, v35);
    if (v17 == 0xD000000000000016 && v36 == v18)
    {
      break;
    }

LABEL_14:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_18;
    }

    ++v6;
    v7 = (v7 + 3);
    v5 = v31;
    if (v34 == v6)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v22 = v30;
  swift_beginAccess();
  if (*(v22 + 16))
  {
    v23 = *(v22 + 24);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 16);
    swift_unknownObjectRetain();
    v26 = v25(ObjectType, v23);
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = *&v26[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v27)
      {
        v28 = sub_1000AA808(7u, v27);

        v21 = !v28;
        return v21 & 1;
      }
    }
  }

  v21 = 1;
  return v21 & 1;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveStreamingInterface.curActiveAlternateSetting()()
{
  v75 = type metadata accessor for Mirror();
  v2 = *(v75 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v75);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = ActiveStreamingInterface.hasActiveAlternateSettingControl.getter();
  if ((v6 & 1) == 0)
  {
    LOBYTE(v2) = 0;
LABEL_20:
    LOBYTE(v6) = v2;
    return v6;
  }

  v68 = v1;
  v69 = v0;
  v76 = *(v0 + 64);
  if (!v76 || (v73 = *(v76 + 16)) == 0)
  {
LABEL_17:
    sub_10000CA2C();
    swift_allocError();
    v22 = 10;
LABEL_18:
    *v21 = v22;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_20;
  }

  v7 = 0;
  v8 = (v76 + 32);
  v74 = 0x800000010012E5C0;
  v71 = (v2 + 8);
  v72 = v5;
  while (1)
  {
    if (v7 >= *(v76 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v77 = v7;
    v9 = *(v8 + 2);
    v10 = *v8;
    v80 = &type metadata for USBDescriptorControl;
    v82 = v9;
    BYTE2(v78[0]) = v9;
    v70 = v10;
    LOWORD(v78[0]) = v10;
    Mirror.init(reflecting:)();
    v11 = Mirror.children.getter();
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    v6 = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v16 != v6)
    {
      goto LABEL_38;
    }

    v17 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v17)
    {

      (*v71)(v72, v75);
LABEL_14:

      LOBYTE(v2) = 0;
      goto LABEL_15;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v18 = v78[0];
    v2 = v78[1];
    sub_10000CE78(&v79);
    v19 = *v71;
    if (!v2)
    {
      v19(v72, v75);
      goto LABEL_14;
    }

    v19(v72, v75);
    if (v18 == 0xD000000000000016 && v74 == v2)
    {
      break;
    }

LABEL_15:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_21;
    }

    v7 = v77 + 1;
    v8 = (v8 + 3);
    if (v73 == (v77 + 1))
    {
      goto LABEL_17;
    }
  }

LABEL_21:
  v23 = v69;
  swift_beginAccess();
  if (!*(v23 + 16))
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 69;
    goto LABEL_18;
  }

  v24 = v70 | (v82 << 16);
  v25 = *(v23 + 24);
  v26 = *(v23 + 16);
  ObjectType = swift_getObjectType();
  v28 = *(v25 + 192);
  swift_unknownObjectRetain();
  v29 = v68;
  v30 = v28(v24 & 0xFFFFFF, v23, ObjectType, v25);
  if (v29)
  {
    swift_unknownObjectRelease();

    LOBYTE(v2) = 0;
    goto LABEL_20;
  }

  v32 = v30;
  v33 = v31;
  ADCControlRequestParameterBlock.getCur()(v33, v32 & 0x1FF, v78);
  v68 = 0;

  v35 = v80;
  v34 = v81;
  v36 = sub_10001EAB8(v78, v80);
  v37 = &v67;
  v38 = *(v35[-1].Description + 8);
  __chkstk_darwin(v36);
  v76 = v40;
  v77 = v39;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v67 - v41;
  (*(v39 + 16))(&v67 - v41);
  v43 = *(v34 + 8);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    goto LABEL_27;
  }

  v44 = *(v43 + 24);
  v75 = &v67;
  v45 = *(v44 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = &v67;
  v47 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v48 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v73 = &v67;
  __chkstk_darwin(v48);
  v37 = v75;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v49 = *(*(v43 + 32) + 8);
  v50 = dispatch thunk of static Comparable.>= infix(_:_:)();
  LOBYTE(v6) = (*(v77 + 8))(&v67 - v41, v35);
  if (v50)
  {
LABEL_27:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 7)
    {
      goto LABEL_36;
    }

    v83 = -1;
    v51 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v52 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v51)
    {
      if (v52 <= 8)
      {
        v53 = *(v43 + 24);
        v75 = v37;
        v54 = *(v53 + 16);
        v55 = swift_getAssociatedTypeWitness();
        v74 = &v67;
        v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v55);
        swift_getAssociatedConformanceWitness();
        v57 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v73 = &v67;
        __chkstk_darwin(v57);
        v59 = &v67 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v60 = *(*(v43 + 32) + 8);
        v61 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v77 + 8))(v59, v35);
        if ((v61 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_36;
      }
    }

    else if (v52 < 9)
    {
      goto LABEL_35;
    }

    __chkstk_darwin(v52);
    v63 = &v67 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10010FB08();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v64 = *(*(v43 + 32) + 8);
    v65 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v77 + 8))(v63, v35);
    if (v65)
    {
      __break(1u);
      goto LABEL_35;
    }

LABEL_36:
    LOBYTE(v2) = dispatch thunk of BinaryInteger._lowWord.getter();
    swift_unknownObjectRelease();

    (*(v77 + 8))(v42, v35);
    sub_10000CE78(v78);
    goto LABEL_20;
  }

LABEL_39:
  __break(1u);
  return v6;
}

unint64_t sub_10010FB08()
{
  result = qword_100178C70;
  if (!qword_100178C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C70);
  }

  return result;
}

uint64_t ActiveStreamingInterface.hasValidAlternateSettingsControl.getter()
{
  v35 = type metadata accessor for Mirror();
  v1 = *(*(v35 - 8) + 64);
  result = __chkstk_darwin(v35);
  v5 = *(v0 + 64);
  if (!v5 || (v34 = *(v5 + 16)) == 0)
  {
LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  v30 = v0;
  v31 = v5;
  v6 = 0;
  v7 = (v5 + 32);
  v36 = 0x800000010012E5E0;
  v32 = (v3 + 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v8 = *v7;
    v9 = *(v7 + 2);
    v39[1] = &type metadata for USBDescriptorControl;
    BYTE2(v37) = v9;
    LOWORD(v37) = v8;
    Mirror.init(reflecting:)();
    v10 = Mirror.children.getter();
    v11 = v10[2];
    v12 = v10[3];
    v13 = v10[4];
    v14 = v10[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v15 != result)
    {
      goto LABEL_25;
    }

    v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v16)
    {

      (*v32)(v33, v35);
LABEL_13:

      goto LABEL_14;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v17 = v37;
    v18 = v38;
    sub_10000CE78(v39);
    v19 = *v32;
    if (!v18)
    {
      v19(v33, v35);
      goto LABEL_13;
    }

    v19(v33, v35);
    if (v17 == 0xD000000000000016 && v36 == v18)
    {
      break;
    }

LABEL_14:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_18;
    }

    ++v6;
    v7 = (v7 + 3);
    v5 = v31;
    if (v34 == v6)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v22 = v30;
  swift_beginAccess();
  if (*(v22 + 16))
  {
    v23 = *(v22 + 24);
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 16);
    swift_unknownObjectRetain();
    v26 = v25(ObjectType, v23);
    swift_unknownObjectRelease();
    if (v26)
    {
      v27 = *&v26[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v27)
      {
        v28 = sub_1000AA808(7u, v27);

        v21 = !v28;
        return v21 & 1;
      }
    }
  }

  v21 = 1;
  return v21 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveStreamingInterface.updateValidAlternateSettings()()
{
  v73 = type metadata accessor for Mirror();
  v2 = *(v73 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v73);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((ActiveStreamingInterface.hasValidAlternateSettingsControl.getter() & 1) == 0)
  {
    return;
  }

  v66 = v1;
  v67 = v0;
  v74 = *(v0 + 64);
  if (!v74 || (v71 = v74[2]) == 0)
  {
LABEL_17:
    sub_10000CA2C();
    swift_allocError();
    v22 = 10;
LABEL_18:
    *v21 = v22;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v6 = 0;
  v7 = (v74 + 4);
  v72 = 0x800000010012E5E0;
  v69 = (v2 + 8);
  v70 = v5;
  while (1)
  {
    if (v6 >= v74[2])
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v75 = v6;
    v8 = *(v7 + 2);
    v9 = *v7;
    v78 = &type metadata for USBDescriptorControl;
    v80 = v8;
    BYTE2(v76[0]) = v8;
    v68 = v9;
    LOWORD(v76[0]) = v9;
    Mirror.init(reflecting:)();
    v10 = Mirror.children.getter();
    v11 = v10[2];
    v12 = v10[3];
    v14 = v10[4];
    v13 = v10[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v15 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_37;
    }

    v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v16)
    {

      (*v69)(v70, v73);
LABEL_14:

      goto LABEL_15;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v17 = v76[0];
    v18 = v76[1];
    sub_10000CE78(&v77);
    v19 = *v69;
    if (!v18)
    {
      v19(v70, v73);
      goto LABEL_14;
    }

    v19(v70, v73);
    if (v17 == 0xD000000000000016 && v72 == v18)
    {
      break;
    }

LABEL_15:
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_20;
    }

    v6 = v75 + 1;
    v7 = (v7 + 3);
    if (v71 == v75 + 1)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v23 = v67;
  swift_beginAccess();
  if (!*(v23 + 16))
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 69;
    goto LABEL_18;
  }

  v24 = v68 | (v80 << 16);
  v25 = *(v23 + 24);
  v26 = *(v23 + 16);
  ObjectType = swift_getObjectType();
  v28 = *(v25 + 192);
  swift_unknownObjectRetain();
  v29 = v66;
  v30 = v28(v24 & 0xFFFFFF, v23, ObjectType, v25);
  if (v29)
  {
    swift_unknownObjectRelease();
    return;
  }

  v75 = v31;
  ADCControlRequestParameterBlock.getCur()(v31, v30 & 0x1FF, v76);
  v66 = 0;
  v33 = v78;
  v32 = v79;
  v34 = sub_10001EAB8(v76, v78);
  v74 = &v65;
  Description = v33[-1].Description;
  v36 = *(Description + 64);
  __chkstk_darwin(v34);
  v73 = v37;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v65 - v38;
  (*(Description + 16))(&v65 - v38);
  v40 = *(v32 + 8);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    goto LABEL_26;
  }

  v41 = *(v40 + 24);
  v72 = Description;
  v42 = *(v41 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = &v65;
  v44 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v45 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  __chkstk_darwin(v45);
  Description = v72;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v46 = *(*(v40 + 32) + 8);
  v47 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(Description + 8))(&v65 - v38, v33);
  if (v47)
  {
LABEL_26:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 31)
    {
      goto LABEL_35;
    }

    v81 = -1;
    v48 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v48)
    {
      if (v49 <= 32)
      {
        v50 = *(v40 + 24);
        v72 = Description;
        v51 = *(v50 + 16);
        v52 = swift_getAssociatedTypeWitness();
        v71 = &v65;
        v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v52);
        swift_getAssociatedConformanceWitness();
        v54 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v70 = &v65;
        __chkstk_darwin(v54);
        v56 = &v65 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        Description = v72;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v57 = *(*(v40 + 32) + 8);
        v58 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(Description + 8))(v56, v33);
        if ((v58 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_34:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_35;
      }
    }

    else if (v49 < 33)
    {
      goto LABEL_34;
    }

    __chkstk_darwin(v49);
    v60 = &v65 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10001E938();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v61 = *(*(v40 + 32) + 8);
    v62 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(Description + 8))(v60, v33);
    if (v62)
    {
      __break(1u);
      goto LABEL_34;
    }

LABEL_35:
    v63 = dispatch thunk of BinaryInteger._lowWord.getter();
    swift_unknownObjectRelease();

    (*(Description + 8))(v39, v33);
    sub_10000CE78(v76);
    v64 = v67;
    swift_beginAccess();
    *(v64 + 120) = v63;
    return;
  }

LABEL_38:
  __break(1u);
}

void sub_1001107A0()
{
  v0 = type metadata accessor for LogID(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  AUAAudioDevice.publishStreamFormats()();
  if (v4)
  {
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A1BC(v0, qword_1001794F0);
    sub_10000A2A4(v5, v3);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v6, qword_100179508);
    sub_100039F58(2, v3, 0xD00000000000002FLL, 0x80000001001321A0);

    sub_10000C9D0(v3);
  }
}

void ActiveStreamingInterface.streamFormats(forSamplingRate:inRateRange:nonStreamingTerminal:)(unint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v149 = a2;
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Mirror();
  p_src = *(v157 - 8);
  v13 = *(p_src + 64);
  __chkstk_darwin(v157);
  v15 = (&v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v16 = *(v5 + 16);
  v158 = v5;
  v161 = a1;
  if (v16)
  {
    v145 = v8;
    v147 = v11;
    v146 = *(v5 + 24);
    v17 = *(a3 + 24);
    v18 = *(a3 + 32);
    sub_10001EAB8(a3, v17);
    swift_unknownObjectRetain();
    v19 = sub_1000BF228(v17, v18);
    if (!v19)
    {
      swift_unknownObjectRelease();
      goto LABEL_36;
    }

    v20 = v19;
    v148 = v16;
    v155 = *(v19 + 16);
    if (!v155)
    {
      swift_unknownObjectRelease();

      goto LABEL_36;
    }

    v21 = 0;
    v22 = 32;
    v152 = v15;
    v154 = v19;
    v153 = (p_src + 8);
    while (1)
    {
      if (v21 >= v20[2])
      {
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        v141 = sub_100112818(p_src, (p_src + 6));
        v143 = v142;
        v128 = sub_10010A778(v141, v142 & 0xFFFFFFFFFFFFFFLL, 1);
        v156 = a1;
        sub_10007676C(v141, v143 & 0xFFFFFFFFFFFFFFLL);
        if (v128[2])
        {
          goto LABEL_207;
        }

LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        return;
      }

      v160 = v21;
      v5 = a3;
      v159 = v22;
      v23 = *(v20 + v22 + 2);
      v24 = *(v20 + v22);
      *(&v171 + 1) = &type metadata for USBDescriptorControl;
      v151 = v23;
      BYTE2(__src) = v23;
      v150 = v24;
      LOWORD(__src) = v24;
      Mirror.init(reflecting:)();
      v15 = Mirror.children.getter();
      a1 = v15[2];
      p_src = v15[3];
      v25 = v15[4];
      v4 = v15[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      a3 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      if (a3 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_193;
      }

      v26 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      a3 = v5;
      if (v26)
      {
        break;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      p_src = *(&__src + 1);
      v27 = __src;
      sub_10000CE78(&v171);
      v28 = *v153;
      v20 = v154;
      if (!p_src)
      {
        a1 = v161;
        v15 = v152;
        v28(v152, v157);
        goto LABEL_14;
      }

      v15 = v152;
      v28(v152, v157);
      a1 = v161;
      if (v27 == 0x6F7463656E6E6F63 && p_src == 0xE900000000000072)
      {

LABEL_21:
        v31 = v150 | (v151 << 16);

        ObjectType = swift_getObjectType();
        v33 = *(v5 + 24);
        v34 = *(v5 + 32);
        v35 = sub_10001EAB8(v5, v33);
        *(&v171 + 1) = v33;
        v172 = *(*(v34 + 8) + 8);
        v36 = sub_10007D2E8(&__src);
        (*(*(v33 - 8) + 16))(v36, v35, v33);
        v37 = v156;
        v38 = (*(v146 + 184))(v31 & 0xFFFFFF, 0, 0, &__src, ObjectType);
        a1 = v37;
        v5 = v158;
        if (v37)
        {
          swift_unknownObjectRelease();
          sub_10000CE78(&__src);
          goto LABEL_23;
        }

        v40 = v39;
        v41 = v38;
        sub_10000CE78(&__src);
        v11 = v147;
        if ((v41 & 0x100) == 0)
        {
          v15 = v40;
          v42 = sub_10009E0B8(v15);
          a3 = v42;
          v4 = v43;
          v44 = v43 >> 62;
          if ((v43 >> 62) > 1)
          {
            goto LABEL_162;
          }

          if (!v44)
          {
            *&__src = v42;
            p_src = &__src;
            WORD4(__src) = v43;
            BYTE10(__src) = BYTE2(v43);
            BYTE11(__src) = BYTE3(v43);
            BYTE12(__src) = BYTE4(v43);
            BYTE13(__src) = BYTE5(v43);
            sub_1000D5D10(&__src, &__src + BYTE6(v43), 6);
            goto LABEL_186;
          }

LABEL_174:
          if (a3 >> 32 >= a3)
          {
            v129 = __DataStorage._bytes.getter();
            if (!v129)
            {
              goto LABEL_190;
            }

            v130 = v129;
            v131 = __DataStorage._offset.getter();
            if (!__OFSUB__(a3, v131))
            {
              p_src = a3 - v131 + v130;
              v132 = __DataStorage._length.getter();
              if (!p_src)
              {
                goto LABEL_191;
              }

              if (v132 >= (a3 >> 32) - a3)
              {
                v133 = (a3 >> 32) - a3;
              }

              else
              {
                v133 = v132;
              }

              sub_1000D5D10(p_src, p_src + v133, 6);
              goto LABEL_206;
            }

LABEL_224:
            __break(1u);
          }

LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
          goto LABEL_224;
        }

        sub_10000CA2C();
        swift_allocError();
        *v45 = 32;
        *(v45 + 8) = 0;
        *(v45 + 16) = 0xE000000000000000;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_29:
        v156 = 0;
        goto LABEL_30;
      }

LABEL_15:
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_21;
      }

      v21 = v160 + 1;
      v22 = v159 + 3;
      if (v155 == v160 + 1)
      {
        swift_unknownObjectRelease();

        v5 = v158;
        goto LABEL_36;
      }
    }

    a1 = v161;
    v15 = v152;
    v20 = v154;
    (*v153)(v152, v157);
LABEL_14:

    p_src = 0xE700000000000000;
    goto LABEL_15;
  }

  sub_10000CA2C();
  swift_allocError();
  *v30 = 69;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0xE000000000000000;
  swift_willThrow();
  v156 = 0;
LABEL_31:
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v46 = sub_10000A1BC(v8, qword_1001794F0);
  sub_10000A2A4(v46, v11);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v47, qword_100179508);
  sub_100039F58(2, v11, 0xD000000000000024, 0x8000000100131ED0);

  sub_10000C9D0(v11);
  a1 = v161;
LABEL_36:
  if ((ActiveStreamingInterface.hasValidAlternateSettingsControl.getter() & 1) == 0 || (ActiveStreamingInterface.updateValidAlternateSettings()(), (v156 = v48) == 0))
  {
    p_src = *(v5 + 72);
    if (p_src >> 62)
    {
LABEL_213:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_208;
      }
    }

    else
    {
      v15 = *((p_src & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_208;
      }
    }

    v160 = p_src & 0xC000000000000001;
    swift_beginAccess();
    a3 = 0;
    v157 = p_src & 0xFFFFFFFFFFFFFF8;
    v159 = p_src;
    v155 = p_src + 32;
    v49 = a1;
    v154 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v160)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v50 = __OFADD__(a3++, 1);
        if (v50)
        {
          goto LABEL_185;
        }
      }

      else
      {
        if (a3 >= *(v157 + 16))
        {
          goto LABEL_205;
        }

        v4 = *(v155 + 8 * a3);

        v50 = __OFADD__(a3++, 1);
        if (v50)
        {
LABEL_185:
          __break(1u);
LABEL_186:
          v134 = sub_100112818(&__src, (p_src + 6));
          v136 = v135;
          v128 = sub_10010A778(v134, v135 & 0xFFFFFFFFFFFFFFLL, 1);
          v156 = a1;
          sub_10007676C(v134, v136 & 0xFFFFFFFFFFFFFFLL);
          if (v128[2])
          {
            goto LABEL_207;
          }

          __break(1u);
LABEL_188:
          v137 = sub_100112818(&__src, (v134 | 6));
          v139 = v138;
          v128 = sub_10010A778(v137, v138 & 0xFFFFFFFFFFFFFFLL, 1);
          v156 = a1;
          sub_10007676C(v137, v139 & 0xFFFFFFFFFFFFFFLL);
          if (v128[2])
          {
            goto LABEL_207;
          }

          __break(1u);
LABEL_190:
          __DataStorage._length.getter();
LABEL_191:
          sub_10000CA2C();
          swift_allocError();
          *v140 = 57;
          *(v140 + 8) = 0;
          *(v140 + 16) = 0xE000000000000000;
          swift_willThrow();
          swift_unknownObjectRelease();

          sub_10007676C(a3, v4);
LABEL_23:
          v156 = 0;
          v11 = v147;
LABEL_30:
          v8 = v145;
          goto LABEL_31;
        }
      }

      v11 = *(v4 + 104);

      if (ActiveStreamingInterface.hasValidAlternateSettingsControl.getter())
      {
        v51 = *(*(v4 + 16) + 3);
        v52 = v51 <= 0x1F ? 1 << v51 : 0;
        if ((v52 & *(v5 + 120)) == 0)
        {
          goto LABEL_41;
        }
      }

      p_src = *(v5 + 16);
      if (!p_src)
      {
        goto LABEL_72;
      }

      v53 = *(v5 + 24);
      v54 = *(v5 + 16);
      v55 = swift_getObjectType();
      v56 = *(v53 + 16);
      swift_unknownObjectRetain();
      v57 = v56(v55, v53);
      swift_unknownObjectRelease();
      if (!v57)
      {
        break;
      }

      p_src = OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList;
      v58 = *&v57[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v58)
      {
        v59 = *(v58 + 16);
        v60 = (v58 + 32);
        v5 = v158;
        a1 = v161;
        do
        {
          if (!v59)
          {
            goto LABEL_62;
          }

          v61 = *v60++;
          --v59;
        }

        while (v61 != 2);
        if (!IOUSBGetEndpointDirection(*(v11 + 2)))
        {
          v111 = *(v4 + 128);
          if (v111)
          {
            if (*(v111 + 16) == 1)
            {

              goto LABEL_42;
            }
          }
        }

LABEL_62:
        v62 = *&v57[p_src];
        if (v62)
        {
          v63 = *(v62 + 16);
          v64 = (v62 + 32);
          do
          {
            v65 = v63-- != 0;
            p_src = v65;
            if (!v65)
            {
              break;
            }

            v66 = *v64++;
          }

          while (v66 != 33);
        }

        else
        {
          p_src = 0;
        }
      }

      else
      {
        p_src = 0;
        v5 = v158;
        a1 = v161;
      }

      v67 = *(v11 + 10);
      if (v67)
      {
LABEL_78:
        v68 = *(v67 + 16);
        if (v68)
        {
          v69 = 0;
          v44 = 1 - v68;
          v70 = (v67 + 40);
          v71 = (v67 + 40);
          do
          {
            v73 = *v71;
            v71 += 3;
            v72 = v73;
            if (v69)
            {
              if (!v44)
              {
                goto LABEL_89;
              }

              v69 = 1;
            }

            else if (*(v70 - 1) <= a1)
            {
              v69 = v72 >= a1;
              if (!v44)
              {
                if (v72 < a1)
                {
                  goto LABEL_41;
                }

                goto LABEL_89;
              }
            }

            else
            {
              if (!v44)
              {
                goto LABEL_41;
              }

              v69 = 0;
            }

            ++v44;
            v70 = v71;
          }

          while (v44 != 1);
          __break(1u);
LABEL_162:
          if (v44 != 2)
          {
            *(&__src + 6) = 0;
            *&__src = 0;
            v134 = &__src;
            sub_1000D5D10(&__src, &__src, 6);
            if (!a1)
            {
              goto LABEL_188;
            }

            swift_unknownObjectRelease();

            sub_10007676C(a3, v4);
            goto LABEL_29;
          }

          v118 = *(a3 + 16);
          v119 = *(a3 + 24);
          v120 = __DataStorage._bytes.getter();
          if (!v120)
          {
            goto LABEL_166;
          }

          v121 = __DataStorage._offset.getter();
          if (__OFSUB__(v118, v121))
          {
            goto LABEL_223;
          }

          v120 += v118 - v121;
LABEL_166:
          v50 = __OFSUB__(v119, v118);
          v122 = v119 - v118;
          if (v50)
          {
            goto LABEL_222;
          }

          v123 = __DataStorage._length.getter();
          if (!v120)
          {
            goto LABEL_191;
          }

          if (v123 >= v122)
          {
            v124 = v122;
          }

          else
          {
            v124 = v123;
          }

          sub_1000D5D10(v120, &v120[v124], 6);
          v8 = v145;
          if (a1)
          {
            swift_unknownObjectRelease();

            sub_10007676C(a3, v4);
            v156 = 0;
            v11 = v147;
            goto LABEL_31;
          }

          v125 = sub_100112818(v120, v120 + 6);
          v127 = v126;
          v128 = sub_10010A778(v125, v126 & 0xFFFFFFFFFFFFFFLL, 1);
          v156 = 0;
          sub_10007676C(v125, v127 & 0xFFFFFFFFFFFFFFLL);
          if (!v128[2])
          {
            __break(1u);
            goto LABEL_174;
          }

LABEL_207:
          v144 = *(v128 + 32);

          sub_10007676C(a3, v4);
          swift_unknownObjectRelease();

          a1 = v161;
          if (!v144)
          {
LABEL_208:
            v154 = _swiftEmptyArrayStorage;
            return;
          }

          goto LABEL_36;
        }

LABEL_41:

LABEL_42:

        goto LABEL_43;
      }

LABEL_89:
      v74 = *(v11 + 12);
      v75 = *(v11 + 13);
      if (!is_mul_ok(v75, v74))
      {
        goto LABEL_194;
      }

      if (!(v75 * v74))
      {
LABEL_159:

        sub_10000CA2C();
        v116 = swift_allocError();
        *v117 = 0;
        *(v117 + 8) = 0;
        *(v117 + 16) = 0xE000000000000000;
        v156 = v116;
        swift_willThrow();

        return;
      }

      v76 = *(v4 + 128);
      if (v76)
      {
        v76 = *(v76 + 16);
      }

      v77 = *(v4 + 40);
      if (v77 > 0xFFFFFFFFLL)
      {
        goto LABEL_195;
      }

      v78 = v76 * v77;
      if ((v76 * v77) >> 64 != (v76 * v77) >> 63)
      {
        goto LABEL_196;
      }

      if ((v78 | v77) < 0)
      {
        goto LABEL_197;
      }

      if (v78 > 0xFFFFFFFFLL)
      {
        goto LABEL_198;
      }

      if (!v75)
      {
        goto LABEL_199;
      }

      v79 = 0x3E8 / v75;
      if (!is_mul_ok(v79, v74))
      {
        goto LABEL_200;
      }

      v80 = v79 * v74;
      if (HIDWORD(v80))
      {
        goto LABEL_201;
      }

      if (!v80)
      {
        goto LABEL_159;
      }

      v81 = *(v4 + 48);
      v82 = *(v4 + 24);
      if (v82 <= 2)
      {
        if (!*(v4 + 24))
        {
          goto LABEL_41;
        }

        if (v82 == 1)
        {
          if (v77 >> 29)
          {
            goto LABEL_216;
          }

          if (p_src)
          {
            v83 = 32;
          }

          else
          {
            v83 = *(v4 + 48);
          }

          if (8 * (*(v4 + 40) & 0x1FFFFFFFLL) == v81)
          {
            v84 = 12;
          }

          else
          {
            v84 = 20;
          }

          if (p_src)
          {
            v87 = 1;
          }

          else
          {
            v87 = v84;
          }

          v86 = 1819304813;
          v88 = 1;
          v81 = v83;
        }

        else
        {
          v86 = 1819304813;
          v88 = 1;
          v87 = 1;
        }

        v85 = 1;
        goto LABEL_133;
      }

      if (v82 == 3)
      {
        v85 = 0;
        v86 = 1970037111;
        goto LABEL_114;
      }

      if (v82 == 4)
      {
        v85 = 0;
        v86 = 1634492791;
LABEL_114:
        v87 = 0x80000000;
        v88 = 1;
LABEL_133:
        v92 = v78;
        goto LABEL_134;
      }

      if (v77 >> 29)
      {
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
        goto LABEL_221;
      }

      if (8 * (*(v4 + 40) & 0x1FFFFFFFLL) == v81)
      {
        v87 = 76;
      }

      else
      {
        v87 = 84;
      }

      v89 = 1536 * v76;
      if ((v76 * 1536) >> 64 != (1536 * v76) >> 63)
      {
        goto LABEL_217;
      }

      v90 = v81 + 7;
      if (v81 >= 0)
      {
        v90 = *(v4 + 48);
      }

      v91 = v90 >> 3;
      v78 = v89 * (v90 >> 3);
      if ((v89 * v91) >> 64 != v78 >> 63)
      {
        goto LABEL_218;
      }

      if (v78 < 0)
      {
        goto LABEL_219;
      }

      if (HIDWORD(v78))
      {
        goto LABEL_220;
      }

      v85 = 0;
      v92 = 0;
      v86 = 1667326771;
      v88 = 1536;
LABEL_134:
      if (HIDWORD(a1))
      {
        goto LABEL_202;
      }

      if (__CFADD__(a1, v80 - 1))
      {
        goto LABEL_203;
      }

      v93 = (a1 + v80 - 1) / v80 * v92;
      if ((v93 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_204;
      }

      if (*(v11 + 14) < v93)
      {
        goto LABEL_41;
      }

      if (HIDWORD(v76))
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

      if (v81 < 0)
      {
        goto LABEL_211;
      }

      if (HIDWORD(v81))
      {
        goto LABEL_212;
      }

      LODWORD(v154) = v85;
      *&v166 = v49;
      *(&v166 + 1) = __PAIR64__(v87, v86);
      *&v167 = __PAIR64__(v88, v78);
      *(&v167 + 1) = __PAIR64__(v76, v92);
      v168 = v81;
      v94 = type metadata accessor for AUAStreamFormat();
      v95 = objc_allocWithZone(v94);
      *&v95[OBJC_IVAR___AUAStreamFormat_altSetting] = v4;
      swift_retain_n();
      v96 = v149;
      [v96 minimum];
      v98 = v97;
      [v96 maximum];
      if (v98 == v99)
      {
        v162.receiver = v95;
        v162.super_class = v94;
        v100 = objc_msgSendSuper2(&v162, "initWithAudioStreamBasicDescription:", &v166);
        if (!v100)
        {
          __break(1u);
          goto LABEL_226;
        }
      }

      else
      {
        [v96 minimum];
        v102 = v101;
        [v96 maximum];
        *&v166 = 0;
        __src = v166;
        v171 = v167;
        v172 = v168;
        v173 = v102;
        v174 = v103;
        v165.receiver = v95;
        v165.super_class = v94;
        v100 = objc_msgSendSuper2(&v165, "initWithAudioStreamRangedDescription:", &__src);
        if (!v100)
        {
          goto LABEL_227;
        }
      }

      p_src = v100;

      v104 = v154;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v154 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v104)
      {
        HIDWORD(v166) |= 0x40u;
        v105 = objc_allocWithZone(v94);
        *&v105[OBJC_IVAR___AUAStreamFormat_altSetting] = v4;

        v106 = v96;
        [v106 minimum];
        v108 = v107;
        [v106 maximum];
        if (v108 == v109)
        {
          v163.receiver = v105;
          v163.super_class = v94;
          v110 = objc_msgSendSuper2(&v163, "initWithAudioStreamBasicDescription:", &v166);
          if (!v110)
          {
            goto LABEL_228;
          }
        }

        else
        {
          [v106 minimum];
          v113 = v112;
          [v106 maximum];
          *&v166 = 0;
          __src = v166;
          v171 = v167;
          v172 = v168;
          v173 = v113;
          v174 = v114;
          v164.receiver = v105;
          v164.super_class = v94;
          v110 = objc_msgSendSuper2(&v164, "initWithAudioStreamRangedDescription:", &__src);
          if (!v110)
          {
            goto LABEL_229;
          }
        }

        p_src = v110;

        v5 = v158;
        a1 = v161;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v115 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v154 = v169;
      }

      else
      {
        v154 = v169;

        v5 = v158;
        a1 = v161;
      }

LABEL_43:
      if (a3 == v15)
      {
        return;
      }
    }

    p_src = 0;
    v5 = v158;
    a1 = v161;
LABEL_72:
    v67 = *(v11 + 10);
    if (v67)
    {
      goto LABEL_78;
    }

    goto LABEL_89;
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveStreamingInterface.channelCount()()
{
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_11:
      v9 = *(v7 + 128);
      if (v9)
      {
        v5 = *(v9 + 16);
      }

      else
      {
        v5 = 0;
      }

      if (v5 > v4)
      {
        v4 = v5;
      }

      ++v3;
      if (v8 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v6 = *(v1 + 8 * v3 + 32);

    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 0;
}

uint64_t ActiveStreamingInterface.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + 96);

  v7 = *(v0 + 128);

  return v0;
}

uint64_t ActiveStreamingInterface.__deallocating_deinit()
{
  ActiveStreamingInterface.deinit();

  return swift_deallocClassInstance();
}

uint64_t ActiveStreamingAltInterface.function.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t ActiveStreamingAltInterface.channelCount.getter()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t ActiveStreamingAltInterface.streamingInterface.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*ActiveStreamingAltInterface.streamingInterface.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100112174;
}

void sub_100112174(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1001121F4(_OWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  result = swift_weakInit();
  v14 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v14;
  *(v6 + 80) = a1[4];
  v15 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v15;
  *(v6 + 96) = a2;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  *(v6 + 136) = a5;
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result;
    if (!result)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_37;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return result;
  }

  v36 = a6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_10001EBF0(a1, v37);

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (IOUSBGetEndpointType(*(v20 + 16)) == 1)
      {
        v21 = *(v20 + 16);
        if (!IOUSBGetEndpointUsageType(v21) && v21->wMaxPacketSize - 3 > 5 || IOUSBGetEndpointUsageType(*(v20 + 16)) == 2)
        {
          if (!v18)
          {
            v18 = v20;
            goto LABEL_8;
          }
        }

        else
        {
          v22 = *(v20 + 16);
          v23 = IOUSBGetEndpointUsageType(v22);
          if ((v23 == 1 || !v23 && v22->wMaxPacketSize - 3 <= 5) && !v17)
          {
            v17 = v20;
            goto LABEL_8;
          }
        }
      }

      swift_unknownObjectRelease();
LABEL_8:
      if (v16 == ++v19)
      {
        goto LABEL_33;
      }
    }
  }

  v24 = (a2 + 32);
  sub_10001EBF0(a1, v37);

  v17 = 0;
  v18 = 0;
  do
  {
    v25 = *v24;
    v26 = *(*v24 + 16);

    if (IOUSBGetEndpointType(v26) != 1)
    {
LABEL_21:

      goto LABEL_22;
    }

    v27 = *(v25 + 16);
    if (!IOUSBGetEndpointUsageType(v27) && v27->wMaxPacketSize - 3 > 5 || IOUSBGetEndpointUsageType(*(v25 + 16)) == 2)
    {
      if (v18)
      {
        goto LABEL_21;
      }

      v18 = v25;
    }

    else
    {
      v28 = *(v25 + 16);
      v29 = IOUSBGetEndpointUsageType(v28);
      if (v29 != 1 && (v29 || v28->wMaxPacketSize - 3 > 5) || v17)
      {
        goto LABEL_21;
      }

      v17 = v25;
    }

LABEL_22:
    ++v24;
    --v16;
  }

  while (v16);
LABEL_33:

  if (v18)
  {

    sub_10001EC4C(a1);
    *(v6 + 104) = v18;
    *(v6 + 112) = v17;
    return v6;
  }

  sub_10001EC4C(a1);
  a6 = v36;
LABEL_37:
  sub_10000CA2C();
  swift_allocError();
  *v30 = 90;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0xE000000000000000;
  swift_willThrow();

  v31 = *(v6 + 72);
  v32 = *(v6 + 80);
  v33 = *(v6 + 88);

  v34 = *(v6 + 96);

  v35 = *(v6 + 128);

  swift_weakDestroy();
  type metadata accessor for ActiveStreamingAltInterface();
  swift_deallocPartialClassInstance();
  return v6;
}

void *ActiveStreamingAltInterface.deinit()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[16];

  swift_weakDestroy();
  return v0;
}

uint64_t ActiveStreamingAltInterface.__deallocating_deinit()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[16];

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100112638(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v28 = result;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v29 = (v7 - 1) & v7;
LABEL_13:
      v13 = (*(result + 48) + 24 * (v10 | (v3 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = *(a2 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v16);
      v18 = Hasher._finalize()();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(a2 + 48) + 24 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v23 == v14 && v24 == v15;
        if (v26 && v25 == v16)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          return 0;
        }
      }

      result = v28;
      v7 = v29;
    }

    while (v29);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001127F8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100112818(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001128D0(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100112818(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100112980(void *a1, unint64_t a2)
{
  v112 = a1;
  v104 = type metadata accessor for LogID(0);
  v3 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
LABEL_116:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v103 = v5;
  v7 = 0;
  v101 = 0;
  v107 = v112[16];
  v106 = a2 & 0xC000000000000001;
  v99 = a2 & 0xFFFFFFFFFFFFFF8;
  v100 = a2;
  v98 = a2 + 32;
  v102 = " on StreamingInterface ";
  v105 = v6;
  do
  {
    if (v106)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v107;
    }

    else
    {
      v9 = v107;
      if (v7 >= *(v99 + 16))
      {
        goto LABEL_115;
      }

      v8 = *(v98 + 8 * v7);
    }

    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v113 = v8;
    v109 = v11;
    if (v9)
    {

      v12 = &off_100167CF8;
LABEL_12:
      ObjectType = swift_getObjectType();
      if (((v12[10])(ObjectType, v12) & 1) == 0 || (v14 = (v12[5])(ObjectType, v12)) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      v15 = v14;
      v16 = *(v14 + 16);
      sub_1001163B0();
      v17 = Set.init(minimumCapacity:)();
      v18 = *(v15 + 16);
      if (v18)
      {
        v110 = v9;
        v19 = 0;
        v108 = v15;
        v111 = v15 + 32;
        do
        {
          v21 = (v17 + 7);
          while (1)
          {
            v22 = (v111 + 24 * v19);
            v24 = *v22;
            v23 = v22[1];
            v25 = v22[2];
            ++v19;
            v26 = v17[5];
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v24);
            Hasher._combine(_:)(v23);
            Hasher._combine(_:)(v25);
            v27 = Hasher._finalize()();
            v28 = -1 << *(v17 + 32);
            v29 = v27 & ~v28;
            if (((*&v21[(v29 >> 3) & 0xFFFFFFFFFFFFFF8] >> v29) & 1) == 0)
            {
              break;
            }

            v30 = ~v28;
            while (1)
            {
              v31 = (v17[6] + 24 * v29);
              v32 = *v31;
              v33 = v31[1];
              v34 = v31[2];
              v35 = v32 == v24 && v33 == v23;
              if (v35 && v34 == v25)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*&v21[(v29 >> 3) & 0xFFFFFFFFFFFFFF8] >> v29) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            if (v19 == v18)
            {
              goto LABEL_30;
            }
          }

LABEL_16:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v114[0] = v17;
          sub_100119BB8(v24, v23, v25, v29, isUniquelyReferenced_nonNull_native);
          v17 = v114[0];
        }

        while (v19 != v18);
LABEL_30:
        swift_unknownObjectRelease();

        v8 = v113;
        v5 = v113[16];
        if (v5)
        {
          goto LABEL_73;
        }
      }

      else
      {
        swift_unknownObjectRelease();

        v5 = v8[16];
        if (v5)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_48;
    }

    a2 = v112[9];
    if (a2 >> 62)
    {
      v111 = _CocoaArrayWrapper.endIndex.getter();
      if (!v111)
      {
LABEL_66:
        v63 = 86;
        goto LABEL_67;
      }
    }

    else
    {
      v111 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v111)
      {
        goto LABEL_66;
      }
    }

    v110 = a2 & 0xC000000000000001;
    swift_beginAccess();
    v37 = 0;
    v108 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v110)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v108 + 16))
        {
          goto LABEL_112;
        }

        v38 = *(a2 + 8 * v37 + 32);
      }

      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v5 = v112[2];
      if (v5)
      {
        break;
      }

      v119 = 0;
      v117 = 0u;
      v118 = 0u;
LABEL_37:
      sub_1000D13FC(&v117);
      ++v37;
      if (v39 == v111)
      {
        goto LABEL_66;
      }
    }

    v40 = v112[3];
    v41 = v112[2];
    v42 = swift_getObjectType();
    v43 = *(v40 + 208);
    swift_unknownObjectRetain();
    v44 = v42;
    v8 = v113;
    v43(&v117, v38, v44, v40);
    swift_unknownObjectRelease();

    if (!*(&v118 + 1))
    {
      goto LABEL_37;
    }

    sub_10001EFE4(&v117, &v120);
    sub_10001EFE4(&v120, v114);
    v45 = v115;
    v46 = v116;
    sub_10001EAB8(v114, v115);
    v47 = (*(v46 + 32))(v45, v46);
    if (v47)
    {
      v9 = v47;
      v12 = *(v48 + 16);
      sub_10000CE78(v114);
      goto LABEL_12;
    }

    sub_10000CE78(v114);
    v63 = 87;
LABEL_67:
    sub_10000CA2C();
    swift_allocError();
    *v65 = v63;
    *(v65 + 8) = 0;
    *(v65 + 16) = 0xE000000000000000;
    swift_willThrow();
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v66 = sub_10000A1BC(v104, qword_1001794F0);
    v67 = v103;
    sub_10000A2A4(v66, v103);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v68, qword_100179508);
    sub_100039F58(3, v67, 0xD00000000000002DLL, (v102 | 0x8000000000000000));

    sub_10000C9D0(v67);
    v101 = 0;
LABEL_72:
    v17 = &_swiftEmptySetSingleton;
    v5 = v8[16];
    if (v5)
    {
LABEL_73:

      v62 = &off_100167CF8;
      goto LABEL_74;
    }

LABEL_48:
    a2 = v8[9];
    if (!(a2 >> 62))
    {
      v111 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v111)
      {
        goto LABEL_50;
      }

LABEL_99:
      v64 = 86;
LABEL_100:
      sub_10000CA2C();
      swift_allocError();
      *v92 = v64;
      *(v92 + 8) = 0;
      *(v92 + 16) = 0xE000000000000000;
      swift_willThrow();
      v7 = v109;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v93 = sub_10000A1BC(v104, qword_1001794F0);
      v94 = v103;
      sub_10000A2A4(v93, v103);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v95, qword_100179508);
      sub_100039F58(3, v94, 0xD00000000000002DLL, (v102 | 0x8000000000000000));

      sub_10000C9D0(v94);
      v101 = 0;
      a2 = &_swiftEmptySetSingleton;
      goto LABEL_105;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      v91 = v8[9];
    }

    v111 = _CocoaArrayWrapper.endIndex.getter();
    if (!v111)
    {
      goto LABEL_99;
    }

LABEL_50:
    v110 = a2 & 0xC000000000000001;
    swift_beginAccess();
    v49 = 0;
    v108 = a2 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v110)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v49 >= *(v108 + 16))
        {
          goto LABEL_113;
        }

        v50 = *(a2 + 8 * v49 + 32);

        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_111;
        }
      }

      v5 = v8[2];
      if (!v5)
      {

        v119 = 0;
        v117 = 0u;
        v118 = 0u;
LABEL_52:
        sub_1000D13FC(&v117);
        ++v49;
        if (v51 == v111)
        {
          goto LABEL_99;
        }

        continue;
      }

      break;
    }

    v52 = v8[3];
    v53 = v8[2];
    v54 = swift_getObjectType();
    v55 = a2;
    v56 = v17;
    v57 = *(v52 + 208);
    swift_unknownObjectRetain();
    v57(&v117, v50, v54, v52);
    v17 = v56;
    a2 = v55;
    v8 = v113;
    swift_unknownObjectRelease();

    if (!*(&v118 + 1))
    {
      goto LABEL_52;
    }

    sub_10001EFE4(&v117, &v120);
    sub_10001EFE4(&v120, v114);
    v58 = v115;
    v59 = v116;
    sub_10001EAB8(v114, v115);
    v60 = (*(v59 + 32))(v58, v59);
    if (!v60)
    {
      sub_10000CE78(v114);
      v64 = 87;
      goto LABEL_100;
    }

    v5 = v60;
    v62 = *(v61 + 16);
    sub_10000CE78(v114);
LABEL_74:
    v69 = swift_getObjectType();
    if (((v62[10])(v69, v62) & 1) == 0 || (v70 = (v62[5])(v69, v62)) == 0)
    {
      swift_unknownObjectRelease();
      a2 = &_swiftEmptySetSingleton;
LABEL_94:
      v7 = v109;
      goto LABEL_105;
    }

    v71 = v70;
    v72 = *(v70 + 16);
    sub_1001163B0();
    a2 = Set.init(minimumCapacity:)();
    v111 = *(v71 + 16);
    if (!v111)
    {
      swift_unknownObjectRelease();

      goto LABEL_94;
    }

    v108 = v5;
    v73 = 0;
    v97 = v71;
    v110 = v71 + 32;
    do
    {
      v75 = a2 + 56;
      while (1)
      {
        v76 = (v110 + 24 * v73);
        v77 = *v76;
        v78 = v76[1];
        v79 = v76[2];
        ++v73;
        v80 = *(a2 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v77);
        Hasher._combine(_:)(v78);
        Hasher._combine(_:)(v79);
        v81 = Hasher._finalize()();
        v82 = -1 << *(a2 + 32);
        v83 = v81 & ~v82;
        if (((*(v75 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          break;
        }

        v84 = ~v82;
        while (1)
        {
          v85 = (*(a2 + 48) + 24 * v83);
          v86 = *v85;
          v87 = v85[1];
          v88 = v85[2];
          v89 = v86 == v77 && v87 == v78;
          if (v89 && v88 == v79)
          {
            break;
          }

          v83 = (v83 + 1) & v84;
          if (((*(v75 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        if (v73 == v111)
        {
          goto LABEL_92;
        }
      }

LABEL_78:
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v114[0] = a2;
      sub_100119BB8(v77, v78, v79, v83, v74);
      a2 = v114[0];
    }

    while (v73 != v111);
LABEL_92:
    swift_unknownObjectRelease();

    v7 = v109;
LABEL_105:
    v5 = sub_100112638(v17, a2);
  }

  while ((v5 & 1) == 0 && v7 != v105);
  return v5 & 1;
}

uint64_t sub_10011359C(void *a1, unint64_t a2)
{
  v112 = a1;
  v104 = type metadata accessor for LogID(0);
  v3 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
LABEL_116:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v103 = v5;
  v7 = 0;
  v101 = 0;
  v107 = v112[16];
  v106 = a2 & 0xC000000000000001;
  v99 = a2 & 0xFFFFFFFFFFFFFF8;
  v100 = a2;
  v98 = a2 + 32;
  v102 = " on StreamingInterface ";
  v105 = v6;
  do
  {
    if (v106)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v107;
    }

    else
    {
      v9 = v107;
      if (v7 >= *(v99 + 16))
      {
        goto LABEL_115;
      }

      v8 = *(v98 + 8 * v7);
    }

    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v113 = v8;
    v109 = v11;
    if (v9)
    {

      v12 = &off_100167CF8;
LABEL_12:
      ObjectType = swift_getObjectType();
      if (((v12[10])(ObjectType, v12) & 1) == 0 || (v14 = (v12[5])(ObjectType, v12)) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_72;
      }

      v15 = v14;
      v16 = *(v14 + 16);
      sub_1001163B0();
      v17 = Set.init(minimumCapacity:)();
      v18 = *(v15 + 16);
      if (v18)
      {
        v110 = v9;
        v19 = 0;
        v108 = v15;
        v111 = v15 + 32;
        do
        {
          v21 = (v17 + 7);
          while (1)
          {
            v22 = (v111 + 24 * v19);
            v24 = *v22;
            v23 = v22[1];
            v25 = v22[2];
            ++v19;
            v26 = v17[5];
            Hasher.init(_seed:)();
            Hasher._combine(_:)(v24);
            Hasher._combine(_:)(v23);
            Hasher._combine(_:)(v25);
            v27 = Hasher._finalize()();
            v28 = -1 << *(v17 + 32);
            v29 = v27 & ~v28;
            if (((*&v21[(v29 >> 3) & 0xFFFFFFFFFFFFFF8] >> v29) & 1) == 0)
            {
              break;
            }

            v30 = ~v28;
            while (1)
            {
              v31 = (v17[6] + 24 * v29);
              v32 = *v31;
              v33 = v31[1];
              v34 = v31[2];
              v35 = v32 == v24 && v33 == v23;
              if (v35 && v34 == v25)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*&v21[(v29 >> 3) & 0xFFFFFFFFFFFFFF8] >> v29) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            if (v19 == v18)
            {
              goto LABEL_30;
            }
          }

LABEL_16:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v114[0] = v17;
          sub_100119BB8(v24, v23, v25, v29, isUniquelyReferenced_nonNull_native);
          v17 = v114[0];
        }

        while (v19 != v18);
LABEL_30:
        swift_unknownObjectRelease();

        v8 = v113;
        v5 = v113[16];
        if (v5)
        {
          goto LABEL_73;
        }
      }

      else
      {
        swift_unknownObjectRelease();

        v5 = v8[16];
        if (v5)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_48;
    }

    a2 = v112[9];
    if (a2 >> 62)
    {
      v111 = _CocoaArrayWrapper.endIndex.getter();
      if (!v111)
      {
LABEL_66:
        v63 = 86;
        goto LABEL_67;
      }
    }

    else
    {
      v111 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v111)
      {
        goto LABEL_66;
      }
    }

    v110 = a2 & 0xC000000000000001;
    swift_beginAccess();
    v37 = 0;
    v108 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v110)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(v108 + 16))
        {
          goto LABEL_112;
        }

        v38 = *(a2 + 8 * v37 + 32);
      }

      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v5 = v112[2];
      if (v5)
      {
        break;
      }

      v119 = 0;
      v117 = 0u;
      v118 = 0u;
LABEL_37:
      sub_1000D13FC(&v117);
      ++v37;
      if (v39 == v111)
      {
        goto LABEL_66;
      }
    }

    v40 = v112[3];
    v41 = v112[2];
    v42 = swift_getObjectType();
    v43 = *(v40 + 208);
    swift_unknownObjectRetain();
    v44 = v42;
    v8 = v113;
    v43(&v117, v38, v44, v40);
    swift_unknownObjectRelease();

    if (!*(&v118 + 1))
    {
      goto LABEL_37;
    }

    sub_10001EFE4(&v117, &v120);
    sub_10001EFE4(&v120, v114);
    v45 = v115;
    v46 = v116;
    sub_10001EAB8(v114, v115);
    v47 = (*(v46 + 32))(v45, v46);
    if (v47)
    {
      v9 = v47;
      v12 = *(v48 + 16);
      sub_10000CE78(v114);
      goto LABEL_12;
    }

    sub_10000CE78(v114);
    v63 = 87;
LABEL_67:
    sub_10000CA2C();
    swift_allocError();
    *v65 = v63;
    *(v65 + 8) = 0;
    *(v65 + 16) = 0xE000000000000000;
    swift_willThrow();
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v66 = sub_10000A1BC(v104, qword_1001794F0);
    v67 = v103;
    sub_10000A2A4(v66, v103);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v68, qword_100179508);
    sub_100039F58(3, v67, 0xD00000000000002DLL, (v102 | 0x8000000000000000));

    sub_10000C9D0(v67);
    v101 = 0;
LABEL_72:
    v17 = &_swiftEmptySetSingleton;
    v5 = v8[16];
    if (v5)
    {
LABEL_73:

      v62 = &off_100167CF8;
      goto LABEL_74;
    }

LABEL_48:
    a2 = v8[9];
    if (!(a2 >> 62))
    {
      v111 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v111)
      {
        goto LABEL_50;
      }

LABEL_99:
      v64 = 86;
LABEL_100:
      sub_10000CA2C();
      swift_allocError();
      *v92 = v64;
      *(v92 + 8) = 0;
      *(v92 + 16) = 0xE000000000000000;
      swift_willThrow();
      v7 = v109;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v93 = sub_10000A1BC(v104, qword_1001794F0);
      v94 = v103;
      sub_10000A2A4(v93, v103);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v95, qword_100179508);
      sub_100039F58(3, v94, 0xD00000000000002DLL, (v102 | 0x8000000000000000));

      sub_10000C9D0(v94);
      v101 = 0;
      a2 = &_swiftEmptySetSingleton;
      goto LABEL_105;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      v91 = v8[9];
    }

    v111 = _CocoaArrayWrapper.endIndex.getter();
    if (!v111)
    {
      goto LABEL_99;
    }

LABEL_50:
    v110 = a2 & 0xC000000000000001;
    swift_beginAccess();
    v49 = 0;
    v108 = a2 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v110)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v49 >= *(v108 + 16))
        {
          goto LABEL_113;
        }

        v50 = *(a2 + 8 * v49 + 32);

        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_111;
        }
      }

      v5 = v8[2];
      if (!v5)
      {

        v119 = 0;
        v117 = 0u;
        v118 = 0u;
LABEL_52:
        sub_1000D13FC(&v117);
        ++v49;
        if (v51 == v111)
        {
          goto LABEL_99;
        }

        continue;
      }

      break;
    }

    v52 = v8[3];
    v53 = v8[2];
    v54 = swift_getObjectType();
    v55 = a2;
    v56 = v17;
    v57 = *(v52 + 208);
    swift_unknownObjectRetain();
    v57(&v117, v50, v54, v52);
    v17 = v56;
    a2 = v55;
    v8 = v113;
    swift_unknownObjectRelease();

    if (!*(&v118 + 1))
    {
      goto LABEL_52;
    }

    sub_10001EFE4(&v117, &v120);
    sub_10001EFE4(&v120, v114);
    v58 = v115;
    v59 = v116;
    sub_10001EAB8(v114, v115);
    v60 = (*(v59 + 32))(v58, v59);
    if (!v60)
    {
      sub_10000CE78(v114);
      v64 = 87;
      goto LABEL_100;
    }

    v5 = v60;
    v62 = *(v61 + 16);
    sub_10000CE78(v114);
LABEL_74:
    v69 = swift_getObjectType();
    if (((v62[10])(v69, v62) & 1) == 0 || (v70 = (v62[5])(v69, v62)) == 0)
    {
      swift_unknownObjectRelease();
      a2 = &_swiftEmptySetSingleton;
LABEL_94:
      v7 = v109;
      goto LABEL_105;
    }

    v71 = v70;
    v72 = *(v70 + 16);
    sub_1001163B0();
    a2 = Set.init(minimumCapacity:)();
    v111 = *(v71 + 16);
    if (!v111)
    {
      swift_unknownObjectRelease();

      goto LABEL_94;
    }

    v108 = v5;
    v73 = 0;
    v97 = v71;
    v110 = v71 + 32;
    do
    {
      v75 = a2 + 56;
      while (1)
      {
        v76 = (v110 + 24 * v73);
        v77 = *v76;
        v78 = v76[1];
        v79 = v76[2];
        ++v73;
        v80 = *(a2 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v77);
        Hasher._combine(_:)(v78);
        Hasher._combine(_:)(v79);
        v81 = Hasher._finalize()();
        v82 = -1 << *(a2 + 32);
        v83 = v81 & ~v82;
        if (((*(v75 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
        {
          break;
        }

        v84 = ~v82;
        while (1)
        {
          v85 = (*(a2 + 48) + 24 * v83);
          v86 = *v85;
          v87 = v85[1];
          v88 = v85[2];
          v89 = v86 == v77 && v87 == v78;
          if (v89 && v88 == v79)
          {
            break;
          }

          v83 = (v83 + 1) & v84;
          if (((*(v75 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        if (v73 == v111)
        {
          goto LABEL_92;
        }
      }

LABEL_78:
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v114[0] = a2;
      sub_100119BB8(v77, v78, v79, v83, v74);
      a2 = v114[0];
    }

    while (v73 != v111);
LABEL_92:
    swift_unknownObjectRelease();

    v7 = v109;
LABEL_105:
    v5 = sub_100112638(v17, a2);
  }

  while ((v5 & 1) != 0 && v7 != v105);
  return v5 & 1;
}

void *sub_1001141B8(unint64_t *a1)
{
  v2 = *a1;
  if (*a1 >> 62)
  {
LABEL_66:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 1)
  {
LABEL_50:
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_57;
      }
    }

    else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_57;
      }
    }

    else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_57;
    }

    sub_1000CE688();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_57:
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_59;
      }
    }

    else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_59:

      *a1 = _swiftEmptyArrayStorage;
      return _swiftEmptyArrayStorage;
    }

    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v4 = v2 >> 62;
    if (v2 >> 62)
    {
      break;
    }

    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_6:
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v5 = *(v2 + 32);

      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
LABEL_9:
        v7 = *(v6 + 16);
        if (!v7)
        {
          goto LABEL_64;
        }

        goto LABEL_18;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_64;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_65;
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
    v9 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_62;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v4)
      {
        goto LABEL_26;
      }

      v10 = (v2 & 0xFFFFFFFFFFFFFF8);
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v4)
      {
LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      v10 = (v2 & 0xFFFFFFFFFFFFFF8);
    }

    v11 = v10[2];
LABEL_27:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = (v2 & 0xFFFFFFFFFFFFFF8);
LABEL_28:
    v12 = v10[4];

    if (v2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_76;
      }

      memmove(v10 + 4, v10 + 5, 8 * (result - 1));
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v13 = v10[2];
      memmove(v10 + 4, v10 + 5, 8 * v13 - 8);
      v14 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_63;
      }
    }

    v10[2] = v14;
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_38:
        v15 = sub_100112980(v5, v2);
        goto LABEL_39;
      }
    }

    else if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    v15 = sub_10011359C(v5, _swiftEmptyArrayStorage);
LABEL_39:
    v17 = v15;

    if (v17)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
LABEL_49:
        *a1 = v2;
        goto LABEL_50;
      }
    }

    else if (v10[2] <= 0)
    {
      goto LABEL_49;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_75;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void *sub_100114658(void *a1)
{
  v87 = type metadata accessor for LogID(0);
  v2 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _swiftEmptyArrayStorage;
  v106 = _swiftEmptyArrayStorage;
  v103 = _swiftEmptyArrayStorage;
  v104 = _swiftEmptyArrayStorage;
  v101 = _swiftEmptyArrayStorage;
  v102 = _swiftEmptyArrayStorage;
  v99 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyArrayStorage;
  v75 = a1;
  v5 = *a1;
  if (*a1 >> 62)
  {
LABEL_95:
    v66 = v5;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v66;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_96:

    v8 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage;
    v11 = _swiftEmptyArrayStorage;
    v12 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_88;
    }

LABEL_97:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_98;
    }

LABEL_89:
    sub_10007DD78(v8);
    sub_10007DD78(v12);
    sub_10007DD78(v10);

    sub_10007DD78(v65);
    sub_10007DD78(v13);
    sub_10007DD78(v11);
    goto LABEL_105;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_96;
  }

LABEL_3:
  v7 = 0;
  v89 = v5 & 0xC000000000000001;
  v81 = v5 & 0xFFFFFFFFFFFFFF8;
  v82 = v5;
  v80 = v5 + 32;
  v78 = " the cluster control";
  v77 = "Invalid Synchronization Type";
  v76 = "rnates are not compatible!";
  v79 = "= None, using synchronous";
  v8 = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v90 = v4;
  v88 = v6;
  do
  {
    if (v89)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v18 = v5;
      v19 = __OFADD__(v7, 1);
      v20 = v7 + 1;
      if (v19)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v7 >= *(v81 + 16))
      {
        goto LABEL_94;
      }

      v18 = *(v80 + 8 * v7);

      v19 = __OFADD__(v7, 1);
      v20 = v7 + 1;
      if (v19)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    v4 = v18[9];
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v40 = v18[9];
      }

      v5 = _CocoaArrayWrapper.endIndex.getter();
      v95 = v20;
      if (!v5)
      {
LABEL_77:
        v97 = 0;
        v98 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        swift_beginAccess();
        if (v18[2])
        {
          v41 = v18[3];
          v42 = v18[2];
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          active = ActiveFunction.deviceName.getter(ObjectType, v41);
          v46 = v45;
          swift_unknownObjectRelease();
        }

        else
        {
          active = 0x206E776F6E6B6E55;
          v46 = 0xEE00656369766564;
        }

        v47._countAndFlagsBits = active;
        v47._object = v46;
        String.append(_:)(v47);

        v48._countAndFlagsBits = 0xD000000000000037;
        v48._object = (v79 | 0x8000000000000000);
        String.append(_:)(v48);
        v96 = *(v18[4] + 2);
        v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v49);

        v50 = v97;
        v51 = v98;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v52 = sub_10000A1BC(v87, qword_1001794F0);
        v53 = v90;
        sub_10000A2A4(v52, v90);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for AUALog(0);
        v15 = sub_10000A1BC(v14, qword_100179508);
        v16 = v50;
        v4 = v15;
        sub_100039F58(1, v53, v16, v51);

        v5 = sub_10000C9D0(v53);
        v17 = v88;
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v20;
      if (!v5)
      {
        goto LABEL_77;
      }
    }

    v94 = v13;
    if ((v4 & 0xC000000000000001) != 0)
    {

      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v21 = *(v4 + 32);
    }

    v93 = v10;
    v22 = *(v21 + 104);
    v23 = *(v22 + 128);
    v91 = IOUSBGetEndpointDirection(*(v22 + 16));
    v4 = v18[9];
    v92 = v21;
    if (v4 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (!v24)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_37;
      }
    }

    v83 = v12;
    v84 = v8;
    v85 = v9;
    v86 = v11;

    v25 = 0;
    v26 = 1;
    do
    {
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_90;
          }
        }

        else
        {
          if (v25 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          v28 = *(v4 + 8 * v25 + 32);

          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }
        }

        v29 = *(*(v5 + 104) + 128);

        if (v29 == v23)
        {
          break;
        }

        v26 = 0;
        v25 = v27;
        if (v27 == v24)
        {

          v11 = v86;
          v9 = v85;
          v8 = v84;
          v12 = v83;
          goto LABEL_32;
        }
      }

      ++v25;
    }

    while (v27 != v24);

    v11 = v86;
    v9 = v85;
    v8 = v84;
    v12 = v83;
    if (v26)
    {
      goto LABEL_37;
    }

LABEL_32:
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v30 = sub_10000A1BC(v87, qword_1001794F0);
    v31 = v90;
    sub_10000A2A4(v30, v90);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    sub_100039F58(1, v31, 0xD00000000000002ALL, (v78 | 0x8000000000000000));
    sub_10000C9D0(v31);
LABEL_37:
    if (v23 > 1)
    {
      v10 = v93;
      v17 = v88;
      if (v23 != 2)
      {
        v33 = v23 == 3;
        v13 = v94;
        v34 = v90;
        if (!v33)
        {
LABEL_47:
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v35 = sub_10000A1BC(v87, qword_1001794F0);
          sub_10000A2A4(v35, v34);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for AUALog(0);
          v4 = sub_10000A1BC(v36, qword_100179508);
          sub_100039AA0(1, v34, 0xD00000000000001CLL, (v76 | 0x8000000000000000));

          v5 = sub_10000C9D0(v34);
          goto LABEL_5;
        }

        goto LABEL_57;
      }

      if (v91 == 1)
      {
        v4 = &v102;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = v94;
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = v94;
          v62 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v61;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v9 = v102;
      }

      else
      {
        v4 = &v101;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = v94;
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v63 = v94;
          v64 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v63;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v11 = v101;
      }
    }

    else
    {
      v10 = v93;
      v17 = v88;
      if (!v23)
      {
        v37 = v90;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v38 = sub_10000A1BC(v87, qword_1001794F0);
        sub_10000A2A4(v38, v37);
        v13 = v94;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v39, qword_100179508);
        sub_100039AA0(1, v37, 0xD000000000000039, (v77 | 0x8000000000000000));
        sub_10000C9D0(v37);
LABEL_57:

        if (v91 == 1)
        {
          v4 = &v106;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v54 = v13;
            v55 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v13 = v54;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v10 = v106;
        }

        else
        {
          v4 = &v105;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v56 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v13 = v105;
        }

        goto LABEL_5;
      }

      v33 = v23 == 1;
      v13 = v94;
      v34 = v90;
      if (!v33)
      {
        goto LABEL_47;
      }

      if (v91 == 1)
      {
        v4 = &v104;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = v13;
          v58 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v57;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v104;
      }

      else
      {
        v4 = &v103;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = v13;
          v60 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v59;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = v103;
      }
    }

LABEL_5:
    v7 = v95;
  }

  while (v95 != v17);

  if (v8 >> 62)
  {
    goto LABEL_97;
  }

LABEL_88:
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_89;
  }

LABEL_98:
  if (v10 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
      goto LABEL_102;
    }

LABEL_100:
    if (v9 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_102;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_102;
    }

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() > 0)
      {
        goto LABEL_113;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
LABEL_113:
      sub_10007DD78(v13);

      sub_10007DD78(v71);
      sub_10007DD78(v10);

      sub_10007DD78(v72);
      goto LABEL_103;
    }

    if (v11 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_113;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_113;
    }

    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_119;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_119:
      sub_10007DD78(v12);

      sub_10007DD78(v73);
      sub_10007DD78(v10);

      sub_10007DD78(v74);
      v69 = v8;
      goto LABEL_104;
    }

    goto LABEL_105;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_100;
  }

LABEL_102:
  sub_10007DD78(v10);

  sub_10007DD78(v67);
  sub_10007DD78(v13);

  sub_10007DD78(v68);
LABEL_103:
  sub_10007DD78(v8);
  v69 = v12;
LABEL_104:
  sub_10007DD78(v69);

LABEL_105:

  result = v100;
  *v75 = v99;
  return result;
}

unint64_t sub_100116294()
{
  result = qword_100178C78;
  if (!qword_100178C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178C78);
  }

  return result;
}

unint64_t sub_100116364()
{
  result = qword_100174F30;
  if (!qword_100174F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100174F30);
  }

  return result;
}

unint64_t sub_1001163B0()
{
  result = qword_100178FF0;
  if (!qword_100178FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178FF0);
  }

  return result;
}

uint64_t sub_100116404()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100116444()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011647C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100116498(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [*(v1 + 16) wait];
  }

  v8 = *(v1 + 24);
  v17 = 0;
  if ([v8 abortWithOption:1 error:&v17])
  {
    result = v17;
    if (a1)
    {
      return result;
    }

    return [*(v2 + 16) wait];
  }

  v10 = v17;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 code];

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v12 <= 0x7FFFFFFF)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v17 = 0xD00000000000001ELL;
    v18 = 0x80000001001323C0;
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10011DE90;
    *(v13 + 56) = &type metadata for Int32;
    *(v13 + 64) = &protocol witness table for Int32;
    *(v13 + 32) = v12;
    v14._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v14);

    v11 = v17;
    v12 = v18;
    if (qword_100173CB8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_10:
  v15 = sub_10000A1BC(v4, qword_1001794F0);
  sub_10000A2A4(v15, v7);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v16, qword_100179508);
  sub_100039F58(4, v7, v11, v12);

  result = sub_10000C9D0(v7);
  if ((a1 & 1) == 0)
  {
    return [*(v2 + 16) wait];
  }

  return result;
}

id sub_100116790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  result = [v7 increment];
  if (result)
  {
    v9 = *(v3 + 24);
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = v3;
    aBlock[4] = sub_10011B5C0;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001169DC;
    aBlock[3] = &unk_100167D78;
    v11 = _Block_copy(aBlock);
    sub_10001DB5C(a2);

    aBlock[0] = 0;
    v12 = [v9 enqueueIORequestWithData:a1 completionTimeout:aBlock error:v11 completionHandler:0.0];
    _Block_release(v11);
    if (v12)
    {
      return aBlock[0];
    }

    else
    {
      v13 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      [v7 decrement];
      return swift_willThrow();
    }
  }

  return result;
}

id sub_100116948(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t))
{
  if (a3)
  {

    a3(a1, a2);
    a7(a3, a4);
  }

  v13 = *(a5 + 16);

  return [v13 decrement];
}

uint64_t sub_1001169DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_100116A3C()
{

  return swift_deallocClassInstance();
}

uint64_t ActiveEndpoint.usageType.getter()
{
  v1 = *(v0 + 16);
  result = IOUSBGetEndpointUsageType(v1);
  if (!result)
  {
    wMaxPacketSize = v1->wMaxPacketSize;
    return wMaxPacketSize <= 8 && wMaxPacketSize > 2;
  }

  return result;
}

void ActiveEndpoint.usbDevice.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ActiveEndpoint.usbDevice.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100116C50;
}

void sub_100116C50(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ActiveEndpoint.lockDelay.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_100116CD8(uint64_t a1, char *a2, char a3, uint64_t a4)
{
  v51 = type metadata accessor for LogID(0);
  v9 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 120) = 0;
  swift_unknownObjectWeakInit();
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  *(v4 + 80) = *(a1 + 64);
  v12 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v12;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v13 = OBJC_IVAR____TtC9AUASDCore9USBDevice_speed;
  v14 = *&a2[OBJC_IVAR____TtC9AUASDCore9USBDevice_speed];
  v15 = *a1;
  v16 = *(a1 + 8);
  wMaxPacketSize = *(a1 + 16);
  sub_100022594(a1, &v54);
  *(v4 + 112) = IOUSBGetEndpointBurstSize_ValidatePtrs(v14, v15, v16, wMaxPacketSize);
  v18 = a4;
  if ((a4 & 0x100000000) != 0)
  {
    v18 = IOUSBGetEndpointSynchronizationType(v15);
    if (IOUSBGetEndpointDirection(v15) == 1 && !v18)
    {
      if (IOUSBGetEndpointUsageType(v15))
      {
        v18 = 0;
      }

      else
      {
        v18 = v15->wMaxPacketSize - 9 < 0xFFFFFFFA;
      }
    }
  }

  *(v4 + 128) = v18;
  v19 = IOUSBGetEndpointSynchronizationType(v15);
  if (IOUSBGetEndpointDirection(v15) == 1 && !v19)
  {
    if (IOUSBGetEndpointUsageType(v15))
    {
      sub_1000225F0(a1);
      v19 = 0;
    }

    else
    {
      wMaxPacketSize = v15->wMaxPacketSize;
      sub_1000225F0(a1);
      v19 = wMaxPacketSize >= 9 || wMaxPacketSize < 3;
    }
  }

  else
  {
    sub_1000225F0(a1);
  }

  if (((a4 & 0x100000000) != 0 || v19 != a4) && !IOUSBGetEndpointUsageType(v15) && v15->wMaxPacketSize - 3 >= 6)
  {
    v20 = v4;
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v54 = 0xD00000000000002DLL;
    v55 = 0x8000000100132480;
    v21 = *&a2[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
    v22 = *&a2[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = v54;
    v25 = v55;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v26 = sub_10000A1BC(v51, qword_1001794F0);
    v27 = v52;
    sub_10000A2A4(v26, v52);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v28, qword_100179508);
    sub_100039F58(1, v27, v24, v25);

    sub_10000C9D0(v27);
    wMaxPacketSize = sub_10000AB64(_swiftEmptyArrayStorage);
    sub_1000FC32C(0xD000000000000031, 0x80000001001324B0, wMaxPacketSize);

    v4 = v20;
  }

  if (!a3)
  {

    if ((*(v4 + 41) & 1) == 0 && *(v4 + 112) <= 8uLL)
    {
      v32 = *(v4 + 40);
      if (v32 <= 0x3F)
      {
        v31 = 1 << v32;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_30;
    }

LABEL_50:
    *(v4 + 96) = vdupq_n_s64(1uLL);
    return v4;
  }

  bInterval = v15->bInterval;
  v30 = *&a2[v13];
  if ((v30 - 3) < 4)
  {

    if (bInterval >= 5)
    {
      if (((bInterval - 4) & 0xC0) != 0)
      {
        v31 = 0;
      }

      else
      {
        v31 = 1 << (bInterval - 4);
      }

LABEL_30:
      *(v4 + 96) = 1;
      *(v4 + 104) = v31;
      return v4;
    }

    *(v4 + 104) = 1;
    if (((bInterval - 1) & 0xFFFFFF00) == 0)
    {
      *(v4 + 96) = 8u / (1 << (bInterval - 1));
      return v4;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v30 == 1)
  {
    if (bInterval < 2)
    {
    }

    else
    {
      v33 = v4;
      sub_100001AB4(&unk_100177280, &unk_100120B70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10011DE90;
      *(inited + 32) = 0x61767265746E4962;
      *(inited + 40) = 0xE90000000000006CLL;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:bInterval];
      v35 = sub_10000AB64(inited);
      swift_setDeallocating();
      sub_10011B70C(inited + 32);
      sub_1000FC32C(0xD00000000000002BLL, 0x8000000100132410, v35);

      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);
      v37 = *&a2[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
      v36 = *&a2[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8];

      v54 = v37;
      v55 = v36;
      v38._countAndFlagsBits = 0xD00000000000001CLL;
      v38._object = 0x8000000100132440;
      String.append(_:)(v38);
      v53 = bInterval;
      v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v39);

      v40._object = 0x8000000100132460;
      v40._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v40);
      v41 = v54;
      v42 = v55;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v43 = sub_10000A1BC(v51, qword_1001794F0);
      v44 = v52;
      sub_10000A2A4(v43, v52);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v45, qword_100179508);
      sub_100039F58(1, v44, v41, v42);

      sub_10000C9D0(v44);
      v4 = v33;
    }

    goto LABEL_50;
  }

  wMaxPacketSize = "Unknown speed for active endpoint";
  if (qword_100173CB8 != -1)
  {
LABEL_53:
    swift_once();
  }

  v46 = wMaxPacketSize - 32;
  v47 = sub_10000A1BC(v51, qword_1001794F0);
  v48 = v52;
  sub_10000A2A4(v47, v52);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v49, qword_100179508);
  sub_100039AA0(1, v48, 0xD000000000000021, (v46 | 0x8000000000000000));

  sub_10000C9D0(v48);
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  return v4;
}

void sub_100117448(void *a1, char a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v22 = 58;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v10 = Strong;
  v11 = IOUSBGetEndpointAddress(*(v2 + 16));
  v36 = 0;
  v12 = [a1 copyPipeWithAddress:v11 error:&v36];
  v13 = v36;
  if (!v12)
  {
    v23 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v14 = v12;
  v35 = v8;
  type metadata accessor for AbortSafeUSBHostPipe();
  v15 = swift_allocObject();
  *(v15 + 24) = v14;
  v16 = objc_allocWithZone(AbortWaitLock);
  v17 = v13;
  v18 = v14;
  *(v15 + 16) = [v16 init];
  [v18 idleTimeout];
  v19 = *(v2 + 120);
  *(v2 + 120) = v15;

  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v20 = *&v10[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (!v20)
  {
    goto LABEL_8;
  }

  if (!sub_1000AA808(0x11u, v20))
  {

    return;
  }

  v36 = 0;
  if ([v18 setIdleTimeout:&v36 error:2000.0])
  {
    v21 = v36;
LABEL_8:

    return;
  }

  v24 = v36;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v25 = _convertErrorToNSError(_:)();
  v26 = [v25 code];

  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v27._countAndFlagsBits = 0x203A726F727245;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10011DE90;
  *(v28 + 56) = &type metadata for Int32;
  *(v28 + 64) = &protocol witness table for Int32;
  *(v28 + 32) = v26;
  v29._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v29);

  v30._object = 0x8000000100132380;
  v30._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v30);
  v25 = v36;
  v26 = v37;
  if (qword_100173CB8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v31 = sub_10000A1BC(v5, qword_1001794F0);
  v32 = v35;
  sub_10000A2A4(v31, v35);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v33, qword_100179508);
  sub_100039F58(4, v32, v25, v26);

  sub_10000C9D0(v32);
}

void *ActiveEndpoint.deinit()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[15];

  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t ActiveEndpoint.__deallocating_deinit()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[15];

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100117994(unint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = OBJC_IVAR____TtC9AUASDCore13EndpointClock_logID;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v5 = type metadata accessor for LogID(0);
    v6 = sub_10000A1BC(v5, qword_1001794F0);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v7, qword_100179508);
    sub_100039740(0x746E696F70646E45, 0xED00006B636F6C43, v6, (v2 + v4));
    *(v2 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_lastSamplingRateChangedTimestamp) = 0;
    v8 = v2 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate;
    *v8 = 0;
    *(v8 + 8) = 1;
    *(v2 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_altSettings) = a1;
    if (a1 >> 62)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_57;
    }

LABEL_6:
    v49 = v2;
    v2 = a1 & 0xC000000000000001;
    v51 = a1 + 32;
    v52 = a1 & 0xFFFFFFFFFFFFFF8;

    v9 = 0;
    v10 = &_swiftEmptySetSingleton;
    v50 = a1;
    v53 = a1 & 0xC000000000000001;
    v54 = v4;
    while (1)
    {
      if (v2)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v9 >= *(v52 + 16))
        {
          goto LABEL_54;
        }

        v13 = *(v51 + 8 * v9);

        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_53;
        }
      }

      if (*(v11 + 24))
      {
        break;
      }

LABEL_8:
      if (v9 == v4)
      {

        v2 = v49;
        goto LABEL_58;
      }
    }

    v56 = v10;
    v14 = *(v11 + 96);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_18;
      }

LABEL_49:

      v10 = v56;
      goto LABEL_8;
    }

    if (v14 < 0)
    {
      v39 = *(v11 + 96);
    }

    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      goto LABEL_49;
    }

LABEL_18:
    v55 = v9;
    v2 = v14 & 0xC000000000000001;

    v4 = 0;
    while (1)
    {
      if (v2)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        goto LABEL_26;
      }

      if (v4 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v18 = *(v14 + 8 * v4 + 32);

      v17 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

LABEL_26:
      v19 = *(v16 + 80);
      if (v19)
      {
        v20 = *(v19 + 16);
        if (v20)
        {

          v21 = 0;
          v10 = v56;
          do
          {
            v23 = v56 + 7;
            while (1)
            {
              v24 = (v19 + 32 + 24 * v21);
              v26 = *v24;
              v25 = v24[1];
              v27 = v24[2];
              ++v21;
              v28 = v56[5];
              Hasher.init(_seed:)();
              Hasher._combine(_:)(v26);
              Hasher._combine(_:)(v25);
              Hasher._combine(_:)(v27);
              v29 = Hasher._finalize()();
              v30 = -1 << *(v56 + 32);
              v31 = v29 & ~v30;
              if (((*(v23 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                break;
              }

              v32 = ~v30;
              while (1)
              {
                v33 = (v56[6] + 24 * v31);
                v34 = *v33;
                v35 = v33[1];
                v36 = v33[2];
                v37 = v34 == v26 && v35 == v25;
                if (v37 && v36 == v27)
                {
                  break;
                }

                v31 = (v31 + 1) & v32;
                if (((*(v23 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              if (v21 == v20)
              {
                goto LABEL_43;
              }
            }

LABEL_29:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57 = v56;
            sub_100119BB8(v26, v25, v27, v31, isUniquelyReferenced_nonNull_native);
          }

          while (v21 != v20);
LABEL_43:

          a1 = v50;
          goto LABEL_45;
        }
      }

      ++v4;
      if (v17 == v15)
      {

        v10 = v56;
LABEL_45:
        v2 = v53;
        v4 = v54;
        v9 = v55;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_57:
  v10 = &_swiftEmptySetSingleton;
LABEL_58:
  v40 = v10;
  v41 = v10[2];
  if (v41)
  {
    v42 = sub_100119360(v41, 0);
    v43 = sub_10011B46C(&v57, (v42 + 32), v41, v40);

    sub_100022644();
    if (v43 != v41)
    {
      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
LABEL_61:
    v42 = _swiftEmptyArrayStorage;
  }

  v57 = v42;
  sub_10011AB10(&v57);

  v44 = v57;
  v45 = sub_100030268(0, v57);
  v46 = v2 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate;
  *v46 = v45;
  *(v46 + 8) = 0;
  v47 = *(v2 + 16);
  *(v2 + 16) = v44;

  return v2;
}

uint64_t sub_100117EB4(unint64_t a1, int a2)
{
  v6 = v3;
  LODWORD(v7) = a2;
  v75 = type metadata accessor for Mirror();
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v75);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  if (v7)
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_41;
  }

  v15 = *(v6 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_altSettings);
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_64:
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v4 = *(v15 + 32);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v17 = Strong, swift_beginAccess(), v5 = *(v17 + 16), v62 = *(v17 + 24), swift_unknownObjectRetain(), , !v5))
  {
    sub_10000CA2C();
    swift_allocError();
    *v43 = 15;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_39;
  }

  v2 = *(v4 + 96);
  if (!(v2 >> 62))
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_67:
  v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
  v63 = v18;
  if (!v18)
  {

    result = swift_unknownObjectRelease();
    v53 = v6 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate;
    if (*(v6 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate + 8))
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v61 = v5;
  v54[1] = v4;
  v60 = p_superclass[64];
  v67 = v2 & 0xC000000000000001;
  v65 = v2 & 0xFFFFFFFFFFFFFF8;
  v64 = v2 + 32;
  v74 = 0x8000000100132360;
  v72 = (v9 + 8);

  v19 = 0;
  v5 = 0;
  v9 = v63;
  v59 = v7;
  v58 = v6;
  v57 = a1;
  v56 = v2;
  do
  {
    if (v67)
    {
      v20 = v19;
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = __OFADD__(v20, 1);
      v4 = v20 + 1;
      if (v22)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v19 >= *(v65 + 16))
      {
        goto LABEL_66;
      }

      v23 = *(v64 + 8 * v19);
      v24 = v19;

      v22 = __OFADD__(v24, 1);
      v4 = v24 + 1;
      if (v22)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    p_superclass = *(v21 + 72);
    v68 = v4;
    if (p_superclass)
    {
      v25 = *(v21 + 80);
      if (v25)
      {
        if (*(v25 + 16))
        {
          v66 = v21;
          v55 = 0;
          strcpy(v77, "samplingRate ");
          HIWORD(v77[1]) = -4864;
          v79 = a1;

          v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          v9 = v77;
          String.append(_:)(v26);

          v27 = v77[1];
          sub_100038CD8("EndpointClock_setCurSampleRate", 30, 2, v77[0], v77[1], v60 + v6);

          v69 = p_superclass[2];
          if (!v69)
          {
LABEL_40:

            sub_10000CA2C();
            swift_allocError();
            *v44 = 15;
            *(v44 + 8) = 0;
            *(v44 + 16) = 0xE000000000000000;
            swift_willThrow();

            swift_unknownObjectRelease();
            LOBYTE(v7) = v59;
            v6 = v58;
            a1 = v57;
            p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
            goto LABEL_41;
          }

          v28 = 0;
          v29 = 32;
          v73 = p_superclass;
          while (1)
          {
            if (v28 >= p_superclass[2])
            {
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            v76 = v29;
            v30 = (p_superclass + v29);
            v31 = *(p_superclass + v29 + 2);
            v32 = *v30;
            v78[1] = &type metadata for USBDescriptorControl;
            v70 = v32;
            v71 = v31;
            BYTE2(v77[0]) = v31;
            LOWORD(v77[0]) = v32;
            Mirror.init(reflecting:)();
            v4 = v12;
            v33 = Mirror.children.getter();
            v27 = v33[2];
            a1 = v33[3];
            v6 = v33[4];
            v34 = v33[5];
            swift_getObjectType();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v7 = dispatch thunk of _AnyIndexBox._typeID.getter();
            swift_getObjectType();
            v9 = v6;
            if (v7 != dispatch thunk of _AnyIndexBox._typeID.getter())
            {
              goto LABEL_59;
            }

            v35 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v35)
            {
              break;
            }

            dispatch thunk of _AnyCollectionBox.subscript.getter();

            v37 = v77[0];
            v27 = v77[1];
            sub_10000CE78(v78);
            v36 = *v72;
            v12 = v4;
            if (!v27)
            {
              goto LABEL_32;
            }

            v36(v4, v75);
            p_superclass = v73;
            if (v37 == 0xD000000000000013 && v74 == v27)
            {

LABEL_36:
              v38 = v70 | (v71 << 16);

              v39 = v61;
              ObjectType = swift_getObjectType();
              v41 = IOUSBGetEndpointAddress(*(v66 + 16));
              v42 = v38 & 0xFFFFFF;
              a1 = v57;
              v9 = v39;
              v4 = v55;
              sub_100056448(v42, v41, v57, ObjectType, v62);
              v5 = v4;
              LODWORD(v7) = v59;
              v6 = v58;
              p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
              if (!v4)
              {
                v2 = v56;
                v9 = v63;
                goto LABEL_12;
              }

              swift_unknownObjectRelease();

LABEL_39:

LABEL_41:
              v27 = _convertErrorToNSError(_:)();
              v4 = [v27 code];

              if (v4 < 0xFFFFFFFF80000000)
              {
LABEL_60:
                __break(1u);
              }

              else if (v4 <= 0x7FFFFFFF)
              {
                v77[0] = 0;
                v77[1] = 0xE000000000000000;
                _StringGuts.grow(_:)(58);
                v45._countAndFlagsBits = 0xD000000000000021;
                v45._object = 0x80000001001322F0;
                String.append(_:)(v45);
                sub_100001AB4(&qword_100173C98, &unk_100120120);
                v46 = swift_allocObject();
                *(v46 + 16) = xmmword_10011DE90;
                *(v46 + 56) = &type metadata for Int32;
                *(v46 + 64) = &protocol witness table for Int32;
                *(v46 + 32) = v4;
                v47._countAndFlagsBits = String.init(format:_:)();
                String.append(_:)(v47);

                v48._countAndFlagsBits = 0xD000000000000015;
                v48._object = 0x8000000100132320;
                String.append(_:)(v48);
                if (v7)
                {
                  v49 = 0;
                }

                else
                {
                  v49 = a1;
                }

                v79 = v49;
                v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v50);

                v9 = v77[0];
                v27 = v77[1];
                v4 = p_superclass[64];
                if (qword_100173CC0 == -1)
                {
LABEL_47:
                  v51 = type metadata accessor for AUALog(0);
                  sub_10000A1BC(v51, qword_100179508);
                  sub_100039F58(3, v6 + v4, v9, v27);

                  goto LABEL_48;
                }

LABEL_62:
                swift_once();
                goto LABEL_47;
              }

              __break(1u);
              goto LABEL_62;
            }

LABEL_33:
            v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v9)
            {
              goto LABEL_36;
            }

            ++v28;
            v29 = v76 + 3;
            if (v69 == v28)
            {
              goto LABEL_40;
            }
          }

          v36 = *v72;
          v12 = v4;
LABEL_32:
          p_superclass = v73;
          v36(v12, v75);

          v27 = 0xE700000000000000;
          goto LABEL_33;
        }
      }
    }

LABEL_12:

    v19 = v68;
  }

  while (v68 != v9);

  swift_unknownObjectRelease();

LABEL_48:
  v53 = v6 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate;
  if ((*(v6 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate + 8) & 1) == 0)
  {
LABEL_52:
    if ((v7 & 1) != 0 || *v53 != a1)
    {
      goto LABEL_54;
    }

    return result;
  }

  if (v7)
  {
    return result;
  }

LABEL_54:
  result = mach_absolute_time();
  *(v6 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_lastSamplingRateChangedTimestamp) = result;
  *v53 = a1;
  *(v53 + 8) = v7 & 1;
  return result;
}

uint64_t sub_10011884C(unint64_t a1)
{
  v2 = v1;
  result = mach_absolute_time();
  v5 = *(v2 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_lastSamplingRateChangedTimestamp);
  v6 = result - v5;
  if (result < v5)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_3;
  }

  result = swift_once();
LABEL_3:
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(v6, qword_100179650))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!HIDWORD(qword_100179650))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = v6 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_7:
  v7 = a1 >= v6 / 0x3E8;
  v8 = a1 - v6 / 0x3E8;
  if (v8 != 0 && v7)
  {
    if (!HIDWORD(v8))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  LODWORD(v8) = 0;
LABEL_12:
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 7566624;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);
  sub_100038CD8("EndpointClock_prepareClockForIO", 31, 2, 0x2079616C6564, 0xE600000000000000, v2 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_logID);

  if (v8)
  {
    return usleep(v8);
  }

  return result;
}

uint64_t sub_1001189D8()
{
  v1 = v0[2];

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_logID);
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_altSettings);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndpointClock()
{
  result = qword_100179240;
  if (!qword_100179240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100118AA8()
{
  result = type metadata accessor for LogID(319);
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

uint64_t sub_100118B68()
{
  result = *(v0 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate);
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate + 8);
  return result;
}

uint64_t (*sub_100118B88(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate);
  *(a1 + 8) = v2;
  return sub_100118BC8;
}

void sub_100118C10()
{
  v1 = v0 + OBJC_IVAR____TtC9AUASDCore13EndpointClock_cachedSamplingRate;
  *v1 = 0;
  *(v1 + 8) = 1;
}

void sub_100118C2C()
{
  v1 = *(v0 + 16);
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = 0;
    v32 = v1 + 32;
    v31 = *(v0 + 16);
    while (v2 < *(v1 + 16))
    {
      v3 = (v32 + 16 * v2);
      v4 = *v3;
      v5 = v3[1];
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 40);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      if (v8)
      {
        v34 = v2;
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = 0;
          v35 = v8 + 32;
          do
          {
            v12 = &_swiftEmptySetSingleton + 56;
            while (1)
            {
              v13 = (v35 + 24 * v10);
              v14 = *v13;
              v15 = v13[1];
              v16 = v13[2];
              ++v10;
              v17 = *(&_swiftEmptySetSingleton + 5);
              Hasher.init(_seed:)();
              Hasher._combine(_:)(v14);
              Hasher._combine(_:)(v15);
              Hasher._combine(_:)(v16);
              v18 = Hasher._finalize()();
              v19 = -1 << *(&_swiftEmptySetSingleton + 32);
              v20 = v18 & ~v19;
              if (((*&v12[(v20 >> 3) & 0xFFFFFFFFFFFFFF8] >> v20) & 1) == 0)
              {
                break;
              }

              v21 = ~v19;
              while (1)
              {
                v22 = (*(&_swiftEmptySetSingleton + 6) + 24 * v20);
                v23 = *v22;
                v24 = v22[1];
                v25 = v22[2];
                v26 = v23 == v14 && v24 == v15;
                if (v26 && v25 == v16)
                {
                  break;
                }

                v20 = (v20 + 1) & v21;
                if (((*&v12[(v20 >> 3) & 0xFFFFFFFFFFFFFF8] >> v20) & 1) == 0)
                {
                  goto LABEL_9;
                }
              }

              if (v10 == v9)
              {
                goto LABEL_3;
              }
            }

LABEL_9:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = &_swiftEmptySetSingleton;
            sub_100119BB8(v14, v15, v16, v20, isUniquelyReferenced_nonNull_native);
          }

          while (v10 != v9);
        }

LABEL_3:

        v1 = v31;
        v2 = v34;
      }

      ++v2;
      swift_unknownObjectRelease();
      if (v2 == v33)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v28 = *(&_swiftEmptySetSingleton + 2);
    if (v28)
    {
      v29 = sub_100119360(*(&_swiftEmptySetSingleton + 2), 0);
      v30 = sub_10011B46C(&v36, (v29 + 4), v28, &_swiftEmptySetSingleton);
      sub_100022644();
      if (v30 == v28)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_100118E94()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100118EF0()
{
  v1 = *(v0 + 16);
  if (!v1[2])
  {
    return 0;
  }

  v3 = v1[4];
  v2 = v1[5];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 16);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_100118F84(uint64_t result, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = (v3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);
      swift_unknownObjectRetain();
      v11(v6, a2 & 1, ObjectType, v9);
      result = swift_unknownObjectRelease();
      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t (*sub_100119028(uint64_t a1))(uint64_t result, char a2)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v3;
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v4);
    v10 = v9;
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
    v10 = 1;
  }

  *a1 = v8;
  *(a1 + 8) = v10 & 1;
  return sub_1001190EC;
}

uint64_t sub_1001190EC(uint64_t result, char a2)
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = *(v2 + 16);
  if (a2)
  {
    if (v4)
    {
      v5 = *(result + 8);
      v6 = (v2 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 24);
        swift_unknownObjectRetain();
        v10(v3, v5, ObjectType, v8);
        result = swift_unknownObjectRelease();
        v6 += 2;
        --v4;
      }

      while (v4);
    }
  }

  else if (v4)
  {
    v11 = *(result + 8);
    v12 = (v2 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = swift_getObjectType();
      v16 = *(v14 + 24);
      swift_unknownObjectRetain();
      v16(v3, v11, v15, v14);
      result = swift_unknownObjectRelease();
      v12 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1001191F8(uint64_t result)
{
  v13 = result;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v12 = v4 - 1;
    v6 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 64);
      swift_unknownObjectRetain();
      v10(v13, ObjectType, v8);
      result = swift_unknownObjectRelease();
      if (!v2)
      {
        v6 += 2;
        if (v12 != v5++)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_1001192D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v7 = *(v4 + 72);
      swift_unknownObjectRetain();
      v7(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void *sub_100119360(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001AB4(&qword_1001753F8, &qword_100120EC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1001193F0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001AB4(&qword_100175170, &qword_100120D48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100119464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001AB4(&qword_100179448, &unk_10012A2C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001196EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001AB4(&qword_100179458, &unk_10012A2E0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
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

uint64_t sub_10011993C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001AB4(&qword_100179450, &unk_10012A2D0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

Swift::Int sub_100119BB8(Swift::Int result, Swift::UInt a2, Swift::UInt a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100119464(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      v11 = a4;
      result = sub_10011A054();
      a4 = v11;
      goto LABEL_18;
    }

    sub_10011A444(v9 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v12 + 48) + 24 * a4);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v17 == v8 && v18 == a2;
      if (v20 && v19 == a3)
      {
        goto LABEL_21;
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v5;
  *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = v8;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100119D4C(Swift::Int result, unint64_t a2, char a3)
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
    sub_1001196EC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10011A1AC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10011A69C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100119E98(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_10011993C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_10011A2EC();
      goto LABEL_23;
    }

    sub_10011A8BC(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            sub_100001AB4(&qword_100177290, &qword_100120B80);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_10011A054()
{
  v1 = v0;
  sub_100001AB4(&qword_100179448, &unk_10012A2C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
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

void *sub_10011A1AC()
{
  v1 = v0;
  sub_100001AB4(&qword_100179458, &unk_10012A2E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_10011A2EC()
{
  v1 = v0;
  sub_100001AB4(&qword_100179450, &unk_10012A2D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_10011A444(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001AB4(&qword_100179448, &unk_10012A2C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_10011A69C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001AB4(&qword_100179458, &unk_10012A2E0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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

uint64_t sub_10011A8BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001AB4(&qword_100179450, &unk_10012A2D0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_31;
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
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_10011AB10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000CD9C8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
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
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10011AC68(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10011AC68(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1000CD8B0(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_10011B230((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100024FF4(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100024FF4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_10011B230((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
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

uint64_t sub_10011B230(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

void *sub_10011B46C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6));
      v15 = *(v14 + 16);
      v7 &= v7 - 1;
      *a2 = *v14;
      *(a2 + 16) = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10011B578()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011B5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10011B610(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10011B70C(uint64_t a1)
{
  v2 = sub_100001AB4(&qword_100174A38, &qword_100120180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t static MachAbsoluteUtils.machAbsoluteToNanoseconds(machAbsolute:)(unint64_t result)
{
  if (qword_100173D00 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(result, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        return result * qword_100179650 / HIDWORD(qword_100179650);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t static MachAbsoluteUtils.nanosecondsToMachAbsolute(nanoseconds:)(unint64_t result)
{
  if (qword_100173D00 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(result, HIDWORD(qword_100179650)))
    {
      if (qword_100179650)
      {
        return result * HIDWORD(qword_100179650) / qword_100179650;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double sub_10011B894()
{
  v1 = 0.0;
  mach_timebase_info(&v1);
  result = v1;
  qword_100179650 = *&v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}