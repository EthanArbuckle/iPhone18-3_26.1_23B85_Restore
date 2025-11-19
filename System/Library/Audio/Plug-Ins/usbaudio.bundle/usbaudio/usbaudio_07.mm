id sub_100083DB8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10001D260(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000CCAD0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000CC058(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_10001D260(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for AUAStream(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  else
  {
    sub_10004BC18(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_100083EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for B2PInterface();
  v10 = swift_allocObject();
  v11 = swift_unknownObjectRetain();
  v42 = a3;
  v12 = sub_1000844E8(v11, v10, a3, a4);
  swift_unknownObjectRelease();
  LOBYTE(v44) = 1;
  *(&v44 + 1) = 0;
  BYTE9(v44) = 2;
  v13 = [objc_allocWithZone(NSMutableData) initWithBytes:&v44 length:10];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v12 + 24);
    ObjectType = swift_getObjectType();
    sub_100052AFC(0xB250, v13, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  type metadata accessor for B2POverMEM_Ping_Rsp(0);
  v17 = v16;
  if (swift_unknownObjectWeakLoadStrong() && (v18 = *(v12 + 24), v19 = swift_getObjectType(), sub_1000522EC(0xB250, v19, v17, v18, &v44), swift_unknownObjectRelease(), (BYTE10(v44) & 1) == 0))
  {
    if (v44 == 1)
    {
      if ((v44 & 0xFFFF00) == 0x100)
      {
        if ((v44 & 0xFF00000000) != 0)
        {
          sub_10000CA2C();
          v21 = swift_allocError();
          v22 = 116;
        }

        else if (BYTE8(v44) == 2)
        {
          if ((WORD4(v44) & 0xFF00) == 0x200)
          {
            sub_10007FE84();
            return v12;
          }

          sub_10000CA2C();
          v21 = swift_allocError();
          v22 = 118;
        }

        else
        {
          sub_10000CA2C();
          v21 = swift_allocError();
          v22 = 117;
        }
      }

      else
      {
        sub_10000CA2C();
        v21 = swift_allocError();
        v22 = 115;
      }
    }

    else
    {
      sub_10000CA2C();
      v21 = swift_allocError();
      v22 = 114;
    }
  }

  else
  {
    sub_10000CA2C();
    v21 = swift_allocError();
    v22 = 113;
  }

  *v20 = v22;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0xE000000000000000;
  swift_willThrow();
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v12 + 24);
    v24 = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(v24, v23);
    v27 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v28._countAndFlagsBits = active;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x800000010012E3A0;
  String.append(_:)(v29);
  v43 = v21;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v30 = v44;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A1BC(v6, qword_1001794F0);
  sub_10000A2A4(v31, v9);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v32, qword_100179508);
  sub_100039AA0(5, v9, v30, *(&v30 + 1));

  sub_10000C9D0(v9);
  v33 = (*(a4 + 16))(v42, a4);
  if (v33)
  {
    v34 = v33;
    sub_100001AB4(&unk_100177280, &unk_100120B70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 0x726F727265;
    *(inited + 40) = 0xE500000000000000;
    v36 = objc_allocWithZone(NSString);
    v37 = String._bridgeToObjectiveC()();
    v38 = [v36 initWithString:v37];

    *(inited + 48) = v38;
    v39 = sub_10000AB64(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
    sub_1000FC32C(0xD00000000000001DLL, 0x800000010012E0B0, v39);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000844E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v29 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for LogID(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 72) = 1;
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v33 = a4;
  v34 = a1;
  active = ActiveFunction.deviceName.getter(a3, a4);
  v22 = v21;

  v35 = active;
  v36 = v22;
  v23._object = 0x800000010012E3C0;
  v23._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v23);
  v24 = v35;
  v25 = v36;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A1BC(v16, qword_1001794F0);
  sub_10000A2A4(v26, v19);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v27, qword_100179508);
  sub_100039AA0(5, v19, v24, v25);

  sub_10000C9D0(v19);
  sub_10001EBA8(0, &qword_1001772B0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100177010, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001AB4(&unk_1001772C0, &unk_100122650);
  sub_100085260(&qword_100177018, &unk_1001772C0, &unk_100122650);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *(a2 + 64) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 24) = v33;
  swift_unknownObjectWeakAssign();
  return a2;
}

void sub_100084904(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = 0;
  v50 = 0;
  *&v48 = 0x726464615F7462;
  *(&v48 + 1) = 0xE700000000000000;
  v4 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v47 = 0u;
  }

  v48 = v41;
  v49 = v47;
  if (!*(&v47 + 1))
  {
LABEL_8:
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    goto LABEL_9;
  }

  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  if (swift_dynamicCast())
  {
    v5 = v40;
    v6 = v40[2];
    if (v6)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v5 = &off_10015A1B8;
  v6 = 6;
LABEL_10:
  if (v6 == 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  if (v6 < 3)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v6 == 3)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v6 < 5)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v6 == 5)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = v5[32];
  v8 = v5[33];
  v38 = v5[35];
  v39 = v5[34];
  v36 = v5[37];
  v37 = v5[36];

  *&v42 = 0x656372756F73;
  *(&v42 + 1) = 0xE600000000000000;
  v9 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v47 = 0u;
  }

  v48 = v42;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v35 = [v40 unsignedCharValue];

      goto LABEL_23;
    }
  }

  else
  {
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
  }

  v35 = 0;
LABEL_23:
  *&v43 = 0x6574617473;
  *(&v43 + 1) = 0xE500000000000000;
  v10 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v47 = 0u;
  }

  v48 = v43;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v11 = [v40 unsignedCharValue];

      goto LABEL_31;
    }
  }

  else
  {
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
  }

  v11 = 0;
LABEL_31:
  *&v44 = 0x6469705F7462;
  *(&v44 + 1) = 0xE600000000000000;
  v12 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v47 = 0u;
  }

  v48 = v44;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v13 = [v40 unsignedShortValue];

      goto LABEL_39;
    }
  }

  else
  {
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
  }

  v13 = 0;
LABEL_39:
  *&v48 = 0x737265765F7766;
  *(&v48 + 1) = 0xE700000000000000;
  v14 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v47 = 0u;
  }

  v48 = v44;
  v49 = v47;
  if (!*(&v47 + 1))
  {
LABEL_46:
    sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    goto LABEL_47;
  }

  sub_100001AB4(&qword_100177008, &unk_100122640);
  if (swift_dynamicCast())
  {
    v15 = v40;
    v16 = v40[2];
    if (v16)
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_47:
  v15 = &off_10015A1E0;
  v16 = 4;
LABEL_48:
  if (v16 == 1)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v16 < 3)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v16 != 3)
  {
    v33 = v11;
    v34 = v13;
    v32 = v8;
    v18 = v15[8];
    v17 = v15[9];
    v19 = v15[10];
    v31 = v15[11];

    *&v45 = 0x5F65727574616566;
    *(&v45 + 1) = 0xEF6B73616D746962;
    v20 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v47 = 0u;
    }

    v48 = v45;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
      v21 = v7;
      if (swift_dynamicCast())
      {
        v22 = [v40 unsignedIntValue];

        goto LABEL_59;
      }
    }

    else
    {
      v21 = v7;
      sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    }

    v22 = 0;
LABEL_59:
    *&v46 = 0x726F6C6F63;
    *(&v46 + 1) = 0xE500000000000000;
    v23 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v23)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v24 = [v40 unsignedCharValue];

        v26 = v38;
        v25 = v39;
        v28 = v36;
        v27 = v37;
        v29 = v35;
        v30 = v31;
LABEL_68:
        *a2 = v21;
        *(a2 + 1) = v32;
        *(a2 + 2) = v25;
        *(a2 + 3) = v26;
        *(a2 + 4) = v27;
        *(a2 + 5) = v28;
        *(a2 + 6) = v29;
        *(a2 + 7) = v33;
        *(a2 + 8) = v34;
        *(a2 + 10) = v18;
        *(a2 + 14) = v17;
        *(a2 + 18) = v19;
        *(a2 + 22) = v30;
        *(a2 + 26) = v22;
        *(a2 + 30) = v24;
        *(a2 + 31) = v50;
        *(a2 + 33) = v51;
        return;
      }
    }

    else
    {

      sub_10000D040(&v48, &unk_100174A20, &unk_100120170);
    }

    v26 = v38;
    v25 = v39;
    v28 = v36;
    v27 = v37;
    v29 = v35;
    v30 = v31;
    v24 = 0;
    goto LABEL_68;
  }

LABEL_76:
  __break(1u);
}

id sub_10008512C(int a1, void **a2)
{
  result = [v2 isSettable];
  if (result)
  {
    v6 = a1 == 8;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (a2)
  {
    sub_100082FA4(a2, v2, &v7);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000851A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100085218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100085260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E8F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Class sub_1000852D0(unsigned int a1)
{
  v2 = sub_10000AC68(_swiftEmptyArrayStorage);
  v3 = a1 & 7;
  v4 = (a1 >> 3) & 7;
  v5 = (a1 >> 6) & 7;
  sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100122660;
  *(v6 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:a1 & 7];
  *(v6 + 40) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v4];
  *(v6 + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v5];
  *(v6 + 56) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:(a1 >> 9) & 7];
  sub_10000CFF4();
  *(v6 + 64) = NSNumber.init(BOOLeanLiteral:)((a1 & 0x1000) != 0);
  v35 = sub_100001AB4(&qword_100177020, &unk_100122670);
  *&v34 = v6;
  sub_10000CE28(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v2;
  sub_100083C68(v33, 0xD000000000000013, 0x800000010012E4F0, isUniquelyReferenced_nonNull_native);
  v8 = v36;
  v10 = v3 == 1 || v3 == 3;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = v10;
  sub_10000CE28(&v34, v33);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v8;
  sub_100083C68(v33, 0x736920646E756F73, 0xEF676E6974616C6FLL, v11);
  v12 = v36;
  v13 = (a1 & 7) - 1 < 2 && ((a1 >> 9) & 7) == 0;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = v13;
  sub_10000CE28(&v34, v33);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v12;
  sub_100083C68(v33, 0x6170206472696874, 0xEB00000000797472, v14);
  v15 = v36;
  v17 = v3 == 4 && v4 == 4 && v5 == 4;
  v18 = v17;
  if (v17)
  {
    if (((a1 >> 9) & 7) == 0 && (a1 & 0x1000) == 0)
    {
      v19 = 1;
      v20 = 1;
LABEL_24:
      v21 = 1;
      goto LABEL_34;
    }

    if (((a1 >> 9) & 7) == 3 && (a1 & 0x1000) != 0)
    {
      v20 = 1;
      v19 = 2;
      v21 = 2;
      goto LABEL_34;
    }
  }

  if (((a1 >> 9) & 7) == 3 && v3 == 2 && v4 == 2 && v5 == 2 && (a1 & 0x1000) != 0)
  {
    v21 = 2;
    v20 = 1;
    v19 = 3;
    goto LABEL_34;
  }

  if (v18)
  {
    if (((a1 >> 9) & 7) == 4)
    {
      if ((a1 & 0x1000) == 0)
      {
        goto LABEL_36;
      }

      v20 = 0;
      v21 = 0;
      v19 = 2;
    }

    else
    {
      if (((a1 >> 9) & 7) != 2 || (a1 & 0x1000) == 0)
      {
        goto LABEL_36;
      }

      v21 = 2;
      v20 = 1;
      v19 = 5;
    }

    goto LABEL_34;
  }

  if (v3 == 3 && v4 == 3 && v5 == 3)
  {
    if (((a1 >> 9) & 7) != 0 || (a1 & 0x1000) != 0)
    {
      if (((a1 >> 9) & 7) == 2)
      {
        if ((a1 & 0x1000) == 0)
        {
          goto LABEL_36;
        }

        v21 = 2;
        v20 = 1;
        v19 = 6;
      }

      else
      {
        if (((a1 >> 9) & 7) != 3 || (a1 & 0x1000) == 0)
        {
          goto LABEL_36;
        }

        v21 = 2;
        v20 = 1;
        v19 = 4;
      }

      goto LABEL_34;
    }

    v20 = 1;
    v19 = 4;
    goto LABEL_24;
  }

  if (v3 != 1 || v4 != 1 || v5 != 1)
  {
    goto LABEL_36;
  }

  if (((a1 >> 9) & 7) == 2)
  {
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    v21 = 3;
    v20 = 1;
    v19 = 8;
  }

  else
  {
    if (((a1 >> 9) & 7) != 3 || (a1 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    v21 = 3;
    v20 = 1;
    v19 = 7;
  }

LABEL_34:
  v35 = &type metadata for UInt32;
  LODWORD(v34) = v19;
  sub_10000CE28(&v34, v33);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v15;
  sub_100083C68(v33, 0x6563656970726165, 0xEF6E676973656420, v22);
  v15 = v36;
  if (v20)
  {
    v35 = &type metadata for UInt32;
    LODWORD(v34) = v21;
    sub_10000CE28(&v34, v33);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v15;
    sub_100083C68(v33, 0x697365642063696DLL, 0xEA00000000006E67, v23);
    v15 = v36;
  }

LABEL_36:
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_10000CE28(&v34, v33);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v15;
  sub_100083C68(v33, 0x6F68706F7263696DLL, 0xEA0000000000656ELL, v24);
  v25 = v36;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_10000CE28(&v34, v33);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v25;
  sub_100083C68(v33, 0x6E6F74747562, 0xE600000000000000, v26);
  v27 = v36;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 1;
  sub_10000CE28(&v34, v33);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v27;
  sub_100083C68(v33, 0xD000000000000010, 0x800000010012E510, v28);
  v29 = v36;
  v35 = &type metadata for Bool;
  LOBYTE(v34) = 0;
  sub_10000CE28(&v34, v33);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v29;
  sub_100083C68(v33, 0xD000000000000016, 0x800000010012E530, v30);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

_BYTE *(*StreamingInterface.canUseImplicit.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_100085974;
}

uint64_t StreamingInterface.highestExceptionLevel.getter()
{
  v1 = *(v0 + 24);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    result = 0;
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 16 || v5 == 68 || v5 == 67)
      {
        if (!result)
        {
          result = 1;
        }
      }

      else if (result < 2u)
      {
        if (v5 == 16)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    result = 0;
  }

  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    do
    {
      v11 = v10 + 80 * v9;
      v12 = *(v11 + 72);
      if (v12 && (v13 = *(v12 + 16)) != 0)
      {
        v14 = 0;
        v15 = (v12 + 32);
        do
        {
          v17 = *v15++;
          v16 = v17;
          if (v17 == 68 || v16 == 67 || v16 == 16)
          {
            if (!v14)
            {
              v14 = 1;
            }
          }

          else if (v14 < 2u)
          {
            v14 = 2;
          }

          --v13;
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      v18 = *(v11 + 56);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = v18 + 32;
        do
        {
          v22 = *(v21 + 80 * v20 + 72);
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23)
            {
              v24 = (v22 + 32);
              do
              {
                v26 = *v24++;
                v25 = v26;
                if (v26 == 68 || v25 == 67 || v25 == 16)
                {
                  if (!v14)
                  {
                    v14 = 1;
                  }
                }

                else if (v14 < 2u)
                {
                  v14 = 2;
                }

                --v23;
              }

              while (v23);
            }
          }

          ++v20;
        }

        while (v20 != v19);
      }

      ++v9;
      if (result <= v14)
      {
        result = v14;
      }

      else
      {
        result = result;
      }
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t StreamingAltInterface.highestExceptionLevel.getter()
{
  v1 = *(v0 + 72);
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    result = 0;
    v4 = (v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 == 16 || v5 == 68 || v5 == 67)
      {
        if (!result)
        {
          result = 1;
        }
      }

      else if (result < 2)
      {
        if (v5 == 16)
        {
          result = 1;
        }

        else
        {
          result = 2;
        }
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    result = 0;
  }

  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    do
    {
      v11 = *(v10 + 80 * v9 + 72);
      if (v11)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = (v11 + 32);
          do
          {
            v15 = *v13++;
            v14 = v15;
            if (v15 == 16 || v14 == 68 || v14 == 67)
            {
              if (!result)
              {
                result = 1;
              }
            }

            else if (result < 2)
            {
              if (v14 == 16)
              {
                result = 1;
              }

              else
              {
                result = 2;
              }
            }

            --v12;
          }

          while (v12);
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t sub_100085C28(char *a1, uint64_t a2, int a3, char a4, unsigned int a5)
{
  v7 = v5;
  LODWORD(v68) = a3;
  v12 = type metadata accessor for LogID(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = 0;
  v16 = CreateFixedPriorityDispatchQueue("com.apple.usbAudio.ActiveStreamingInterface");
  v17 = v16;
  if (a4)
  {
    LODWORD(v67) = a5;
    v18 = *(*v7 + 2);
    v19 = v16;
    v20 = sub_1000F8CF8(v18, v17, AUAError.init(_:message:), 0);
    if (v6)
    {

      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v21._countAndFlagsBits = 0x20726F727265;
      v21._object = 0xE600000000000000;
      String.append(_:)(v21);
      v71[0] = v6;
      sub_100001AB4(&qword_100177270, &qword_100120A40);
      _print_unlocked<A, B>(_:_:)();
      v22._object = 0x800000010012E580;
      v22._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v22);
      v23 = v72;
      v24 = v73;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v25 = sub_10000A1BC(v12, qword_1001794F0);
      sub_10000A2A4(v25, v15);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v26, qword_100179508);
      sub_100039F58(1, v15, v23, v24);

      sub_10000C9D0(v15);
      sub_10000CA2C();
      swift_allocError();
      *v27 = 5;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0xE000000000000000;
      swift_willThrow();

      return v7;
    }

    v28 = v20;
    v66 = v19;

    v74 = v28;
    v38 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v38)
    {
      v39 = sub_1000AA808(0x11u, v38);
      a5 = v67;
      if (v39)
      {
        v72 = 0;
        v40 = v28;
        if (![v40 setIdleTimeout:&v72 error:2000.0])
        {
          v44 = v72;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return v7;
        }

        v41 = v72;
      }
    }

    else
    {
      a5 = v67;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v7 + 8);
  v30 = a1;

  v31 = sub_1000873AC(v29, v30, a2, &v74, v68, a5);
  if (v6)
  {

    return v7;
  }

  v68 = v31;

  v33 = *v7;
  v34 = *(*v7 + 8);
  if (!*(*v7 + 8) || (v35 = *&v30[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList]) != 0 && sub_1000AA808(0xAu, v35))
  {
    v66 = v33;
    v67 = v7;
LABEL_16:
    v36 = 0;
    v37 = 0;
    goto LABEL_28;
  }

  v37 = *&v30[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (v37)
  {
    v42 = sub_1000F8280(v34);
    v66 = v33;
    v67 = v7;
    if (!v43)
    {
      goto LABEL_16;
    }

    v72 = v42;
    v73 = v43;
    v71[0] = 0;
    v71[1] = 0xE100000000000000;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_10001EA64();
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v37 = v45;
  }

  else
  {
    v66 = v33;
    v67 = v7;
    v36 = 0;
  }

LABEL_28:
  type metadata accessor for ActiveStreamingInterface();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 120) = -1;
  v46 = v68;
  v47 = *(v67 + 24);
  v75 = *(v67 + 32);
  v48 = v75;
  v76 = v47;
  v49 = *(v67 + 16);
  *(v7 + 32) = *v67;
  *(v7 + 48) = v49;
  *(v7 + 64) = v48;
  *(v7 + 72) = v46;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v50 = v17;
  *(v7 + 104) = v17;
  *(v7 + 112) = v28;
  *(v7 + 88) = v36;
  *(v7 + 96) = v37;
  if (HIBYTE(v66->isa))
  {
    v51 = v17;

    sub_10000D0B8(&v76, v71, &qword_100176860, &qword_100122138);
    sub_10000D0B8(&v75, v71, &qword_100176870, &unk_100122880);
    v52 = v28;
    *(v7 + 128) = 0;
    if (v28)
    {
      goto LABEL_30;
    }

LABEL_33:

    goto LABEL_34;
  }

  v55 = type metadata accessor for EndpointClock();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v58 = v17;

  sub_10000D0B8(&v76, v71, &qword_100176860, &qword_100122138);
  sub_10000D0B8(&v75, v71, &qword_100176870, &unk_100122880);
  v59 = v28;

  *(v7 + 128) = sub_100117994(v60);
  if (!v28)
  {
    goto LABEL_33;
  }

LABEL_30:
  v71[0] = 0;
  v53 = [v28 selectAlternateSetting:0 error:{v71, v66}];
  v54 = v71[0];

  if ((v53 & 1) == 0)
  {
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v7;
  }

LABEL_34:
  v61 = *(v7 + 72);
  if (v61 >> 62)
  {
    if (v61 < 0)
    {
      v65 = *(v7 + 72);
    }

    v62 = _CocoaArrayWrapper.endIndex.getter();
    if (v62)
    {
      goto LABEL_36;
    }

LABEL_46:

    return v7;
  }

  v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v62)
  {
    goto LABEL_46;
  }

LABEL_36:
  if (v62 < 1)
  {
    __break(1u);
  }

  v63 = 0;
  do
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v64 = *(v61 + 8 * v63 + 32);
    }

    ++v63;
    swift_beginAccess();
    swift_weakAssign();
  }

  while (v62 != v63);

  return v7;
}

void StreamingInterface.direction.getter()
{
  v1 = *(v0 + 8);
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

uint64_t StreamingAltInterface.direction.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (v1 + 104); ; i += 10)
  {
    v4 = *(i - 9);
    v5 = *(i - 1);
    v6 = *i;
    v7 = *(i - 2);

    if (IOUSBGetEndpointUsageType(v4))
    {
    }

    else
    {
      wMaxPacketSize = v4->wMaxPacketSize;

      if ((wMaxPacketSize - 3) >= 6)
      {
        return IOUSBGetEndpointDirection(v4);
      }
    }

    if (IOUSBGetEndpointUsageType(v4) == 2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return IOUSBGetEndpointDirection(v4);
}

BOOL StreamingInterface.synchronizationType.getter()
{
  v1 = *(v0 + 8);
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

BOOL StreamingAltInterface.synchronizationType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    for (i = v2 - 1; ; --i)
    {
      v13[0] = *v3;
      v5 = v3[1];
      v6 = v3[2];
      v7 = v3[4];
      v13[3] = v3[3];
      v13[4] = v7;
      v13[1] = v5;
      v13[2] = v6;
      v8 = *&v13[0];
      sub_100022594(v13, &v12);
      if (!IOUSBGetEndpointUsageType(v8) && v8->wMaxPacketSize - 3 > 5)
      {
        break;
      }

      if (IOUSBGetEndpointUsageType(v8) == 2)
      {
        break;
      }

      sub_1000225F0(v13);
      if (!i)
      {
        return 0;
      }

      v3 += 5;
    }

    v9 = IOUSBGetEndpointSynchronizationType(v8);
    if (IOUSBGetEndpointDirection(v8) != 1 || v9)
    {
      sub_1000225F0(v13);
      return v9;
    }

    if (!IOUSBGetEndpointUsageType(v8))
    {
      wMaxPacketSize = v8->wMaxPacketSize;
      sub_1000225F0(v13);
      return (wMaxPacketSize - 9) < 0xFFFFFFFA;
    }

    sub_1000225F0(v13);
  }

  return 0;
}

void StreamingInterface.feedbackType.getter()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    v2 = v0;
    v3 = *(v1 + 48);
    v4 = *(v1 + 80);
    v5 = *(v1 + 96);
    v10[2] = *(v1 + 64);
    v10[3] = v4;
    v10[4] = v5;
    v10[0] = *(v1 + 32);
    v10[1] = v3;
    sub_10001EBF0(v10, &v9);
    v6 = sub_100086728();
    v8 = v7;
    sub_10001EC4C(v10);
    *(v2 + 16);
    if (v8)
    {
      *(v2 + 16);
      sub_100086894(v6, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100086728()
{
  if (StreamingAltInterface.direction.getter())
  {
    return 0x54554F20746F6ELL;
  }

  if (!StreamingAltInterface.synchronizationType.getter())
  {
    return 0x6E79734120746F6ELL;
  }

  v1 = 0xD000000000000018;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 104);
    do
    {
      if (v4)
      {
        v4 = 1;
      }

      else
      {
        v6 = *(v5 - 9);
        v7 = *(v5 - 1);
        v8 = *v5;
        v9 = *(v5 - 2);

        v10 = IOUSBGetEndpointUsageType(v6);
        if (v10)
        {
          v11 = v10;

          v4 = v11 == 1;
        }

        else
        {
          wMaxPacketSize = v6->wMaxPacketSize;

          v4 = (wMaxPacketSize - 3) < 6;
        }
      }

      v5 += 10;
      --v3;
    }

    while (v3);
    if (v4)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_100086894(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void StreamingInterface.providesImplicitFeedback.getter()
{
  v1 = *(v0 + 8);
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
    StreamingAltInterface.providesImplicitFeedback.getter();
    sub_10001EC4C(v6);
  }

  else
  {
    __break(1u);
  }
}

BOOL StreamingAltInterface.providesImplicitFeedback.getter()
{
  if (StreamingAltInterface.direction.getter() != 1)
  {
    return 0;
  }

  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  LOBYTE(result) = 0;
  v4 = (v1 + 104);
  do
  {
    if (result)
    {
      result = 1;
    }

    else
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 2);
      v8 = *(v4 - 9);

      LODWORD(v8) = IOUSBGetEndpointUsageType(v8);

      result = v8 == 2;
    }

    v4 += 10;
    --v2;
  }

  while (v2);
  return result;
}

void StreamingInterface.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  v3 = *(v1 + 8);
  v4 = *(v3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v17 = v5[2];
      v18 = v5[3];
      v19 = v5[4];
      v7 = *v5;
      v6 = v5[1];
      v5 += 5;
      StreamingAltInterface.hash(into:)(a1);
      --v4;
    }

    while (v4);
  }

  Hasher._combine(_:)(*(v1 + 16) & 1);
  v8 = *(v1 + 24);
  if (v8)
  {
    Hasher._combine(_:)(1u);
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

    v12 = *(v1 + 32);
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v12 = *(v1 + 32);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  v13 = *(v12 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *(v14 + 2);
      v16 = *v14;
      v14 = (v14 + 3);
      USBDescriptorControl.hash(into:)(a1, v16 | (v15 << 16));
      --v13;
    }

    while (v13);
  }
}

Swift::Int StreamingInterface.hashValue.getter()
{
  Hasher.init(_seed:)();
  StreamingInterface.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100086B60()
{
  Hasher.init(_seed:)();
  StreamingInterface.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100086B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9AUASDCore18StreamingInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t StreamingAltInterface.cluster.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

void StreamingAltInterface.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 8));
  Hasher._combine(_:)(*(v1 + 16));
  Hasher._combine(_:)(*(v1 + 24));
  Hasher._combine(_:)(*(v1 + 32));
  v4 = *(v1 + 40);
  v5 = *(v1 + 49);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(v4);
  }

  else
  {
    v6 = *(v1 + 44);
    if (*(v1 + 49))
    {
      v9 = *(v1 + 48);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v9);
    }

    else
    {
      v7 = *(v1 + 42);
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v4);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v6);
    }
  }

  v10 = *(v1 + 56);
  v11 = *(v10 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      v24 = v12[2];
      v25 = v12[3];
      v26 = v12[4];
      v14 = *v12;
      v13 = v12[1];
      v12 += 5;
      Endpoint.hash(into:)(a1);
      --v11;
    }

    while (v11);
  }

  v15 = *(v1 + 64);
  if (v15)
  {
    Hasher._combine(_:)(1u);
    v16 = *(v15 + 16);
    Hasher._combine(_:)(v16);
    if (v16)
    {
      v17 = (v15 + 32);
      do
      {
        v18 = *(v17 + 2);
        v19 = *v17;
        v17 = (v17 + 3);
        USBDescriptorControl.hash(into:)(a1, v19 | (v18 << 16));
        --v16;
      }

      while (v16);
    }

    v20 = *(v2 + 72);
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_22:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v20 = *(v1 + 72);
  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_17:
  Hasher._combine(_:)(1u);
  v21 = *(v20 + 16);
  Hasher._combine(_:)(v21);
  if (v21)
  {
    v22 = (v20 + 32);
    do
    {
      v23 = *v22++;
      Hasher._combine(_:)(v23);
      --v21;
    }

    while (v21);
  }
}

Swift::Int StreamingAltInterface.hashValue.getter()
{
  Hasher.init(_seed:)();
  StreamingAltInterface.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100086E48()
{
  Hasher.init(_seed:)();
  StreamingAltInterface.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL sub_100086E84(_OWORD *a1, __int128 *a2)
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
  return _s9AUASDCore21StreamingAltInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9);
}

uint64_t _s9AUASDCore18StreamingInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1000E4C6C(*(a1 + 8), *(a2 + 8)) & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v7)
    {
      return 0;
    }

    v8 = sub_1000EFF58();
    v6 = a2;
    v5 = a1;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = *(v5 + 32);
  v10 = *(v6 + 32);
  if (v9)
  {
    if (v10 && sub_1000E4630(v9, v10))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL _s9AUASDCore21StreamingAltInterfaceV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 40);
  v3 = *(a2 + 49);
  if (*(a1 + 49) > 1u)
  {
    if (*(a1 + 49) == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 != 3)
    {
      return 0;
    }

    if (*(a1 + 40) == v2)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v4 = *(a2 + 44);
  if (*(a1 + 49))
  {
    if (v3 == 1)
    {
      if (*(a1 + 40) != v2 || *(a1 + 44) != v4 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if (*(a2 + 49) || *(a1 + 40) != v2 || *(a1 + 42) != *(a2 + 42) || *(a1 + 44) != v4)
  {
    return 0;
  }

LABEL_24:
  if ((sub_1000E49A4(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = sub_1000E4630(v8, v9);
    v11 = a2;
    v12 = a1;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v12 = a1;
    v11 = a2;
    if (v9)
    {
      return 0;
    }
  }

  v13 = *(v11 + 72);
  if (*(v12 + 72))
  {
    return v13 && (sub_1000EFF58() & 1) != 0;
  }

  return !v13;
}

unint64_t sub_10008714C()
{
  result = qword_100177028;
  if (!qword_100177028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177028);
  }

  return result;
}

unint64_t sub_1000871A4()
{
  result = qword_100177030;
  if (!qword_100177030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177030);
  }

  return result;
}

unint64_t sub_1000871FC()
{
  result = qword_100177038;
  if (!qword_100177038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177038);
  }

  return result;
}

uint64_t sub_100087260(uint64_t a1, int a2)
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

uint64_t sub_1000872A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100087300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100087348(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void *sub_1000873AC(uint64_t a1, void *a2, uint64_t a3, void **a4, int a5, unsigned int a6)
{
  v7 = v6;
  v76 = a4;
  v66 = a3;
  v71 = type metadata accessor for LogID(0);
  v12 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = _swiftEmptyArrayStorage;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v90 = a2;
  v75 = a5;
  v15 = 0;
  v69 = " creating the child interface";
  v16 = a1 + 32;
  result = _swiftEmptyArrayStorage;
  v73 = v14;
  v74 = a6;
  v65 = a1 + 32;
  do
  {
    v67 = result;
    v68 = v7;
    v18 = (v16 + 80 * v15);
    v19 = v15;
    while (1)
    {
      if (v19 >= v14)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v20 = v18[3];
      v84 = v18[2];
      v85 = v20;
      v86 = v18[4];
      v21 = v18[1];
      v83[0] = *v18;
      v83[1] = v21;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_33;
      }

      v77 = v19 + 1;
      v22 = *v76;
      v23 = *(&v85 + 1);
      v24 = *(*(&v85 + 1) + 16);
      if (v24)
      {
        break;
      }

      v80 = 0;
      v81 = 0xE000000000000000;
      sub_10001EBF0(v83, &v78);
      v25 = v22;
      _StringGuts.grow(_:)(54);
      v78 = v80;
      v79 = v81;
      v26._countAndFlagsBits = 0x203A656369766544;
      v26._object = 0xE800000000000000;
      String.append(_:)(v26);
      v27 = [v90 boxName];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
      }

      else
      {
        v29 = 0x206E776F6E6B6E55;
        v31 = 0xEE00656369766564;
      }

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      v33._countAndFlagsBits = 0x61667265746E6920;
      v33._object = 0xEB00000000206563;
      String.append(_:)(v33);
      v34 = *&v83[0];
      LOBYTE(v80) = *(*&v83[0] + 2);
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 0x74746553746C6120;
      v36._object = 0xEC00000020676E69;
      String.append(_:)(v36);
      LOBYTE(v80) = *(v34 + 3);
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38._object = (v69 | 0x8000000000000000);
      v38._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v38);
      v39 = v78;
      v40 = v79;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v41 = sub_10000A1BC(v71, qword_1001794F0);
      v42 = v70;
      sub_10000A2A4(v41, v70);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v43, qword_100179508);
      sub_100039F58(1, v42, v39, v40);

      sub_10000C9D0(v42);

      result = sub_10001EC4C(v83);
      ++v19;
      v18 += 5;
      v14 = v73;
      if (v77 == v73)
      {
        return v67;
      }
    }

    v80 = _swiftEmptyArrayStorage;
    sub_10001EBF0(v83, &v78);
    v64 = v22;
    specialized ContiguousArray.reserveCapacity(_:)();
    v44 = (v23 + 32);
    active = type metadata accessor for ActiveEndpoint();
    do
    {
      v89[0] = *v44;
      v45 = v44[1];
      v46 = v44[2];
      v47 = v44[4];
      v89[3] = v44[3];
      v89[4] = v47;
      v89[1] = v45;
      v89[2] = v46;
      swift_allocObject();
      sub_100022594(v89, &v78);
      v48 = v90;
      LOBYTE(v78) = 0;
      sub_100116CD8(v89, v48, v75, v74);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v49 = v80[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v44 += 5;
      --v24;
    }

    while (v24);
    v50 = v80;
    v51 = *(v66 + 112);
    v87[4] = *(v66 + 96);
    v87[5] = v51;
    v87[6] = *(v66 + 128);
    v88 = *(v66 + 144);
    v52 = *(v66 + 48);
    v87[0] = *(v66 + 32);
    v87[1] = v52;
    v53 = *(v66 + 80);
    v87[2] = *(v66 + 64);
    v87[3] = v53;
    if (BYTE1(v85) > 1u)
    {
      v54 = v68;
      if (BYTE1(v85) == 2)
      {
        sub_100109BD4(WORD4(v84), v48, v87);
      }

      else
      {
        sub_10010A3F0(WORD4(v84), v48, v87);
      }
    }

    else
    {
      v54 = v68;
      if (BYTE1(v85))
      {
        v55 = sub_10010986C(v48, BYTE8(v84), HIDWORD(v84), v85);
      }

      else
      {
        v55 = sub_1001094F0(v48, BYTE8(v84), WORD5(v84), BYTE12(v84));
      }
    }

    v7 = v54;
    if (v54)
    {

      v62 = v67;
      sub_10001EC4C(v83);

      return v62;
    }

    v58 = v55;
    v59 = v56;
    v60 = v57;
    type metadata accessor for ActiveStreamingAltInterface();
    swift_allocObject();
    sub_10001EBF0(v83, &v78);
    sub_1001121F4(v83, v50, v58, v59, v60, v22);
    sub_10001EC4C(v83);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v61 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v82;
    v14 = v73;
    v15 = v77;
    v16 = v65;
  }

  while (v77 != v73);
  return result;
}

uint64_t sub_100087A04@<X0>(unsigned __int8 *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t *ObjectType@<X8>)
{
  v6 = v5;
  v11 = HIBYTE(a2);
  v12 = type metadata accessor for LogID(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Mirror();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v21 = &v156 - v20;
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  if (v11 > 0xF || ((1 << v11) & 0xF3FC) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    v29 = 49;
    goto LABEL_22;
  }

  if (a1[3])
  {
    sub_10000CA2C();
    swift_allocError();
    v29 = 83;
LABEL_22:
    *v28 = v29;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (a1[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v29 = 81;
    goto LABEL_22;
  }

  if (a1[6] != 2)
  {
    sub_10000CA2C();
    swift_allocError();
    v29 = 82;
    goto LABEL_22;
  }

  if (a1[7] != a4)
  {
    goto LABEL_21;
  }

  LODWORD(v176) = a1[2];
  v162 = ObjectType;
  v179 = a1;
  v171 = v25;
  v165 = v21;
  v175 = &v156 - v24;
  if (a4 == 48)
  {
    v178 = v23;
    v52 = *(a3 + 16);
    v31 = _swiftEmptyArrayStorage;
    if (v52)
    {
      v177 = v27;
      v161 = v26;
      *&v184 = _swiftEmptyArrayStorage;
      sub_100047120(0, v52, 0);
      v31 = v184;
      v53 = (a3 + 32);
      do
      {
        v54 = v31;
        a4 = *v53;

        sub_10005F6D4(v55, v176, v191);
        if (v6)
        {
          goto LABEL_37;
        }

        v31 = v54;
        *&v184 = v54;
        v57 = v54[2];
        v56 = v54[3];
        if (v57 >= v56 >> 1)
        {
          a4 = &v184;
          sub_100047120((v56 > 1), v57 + 1, 1);
          v31 = v184;
        }

        v31[2] = v57 + 1;
        v58 = &v31[10 * v57];
        v58[2] = v191[0];
        v59 = v191[1];
        v60 = v191[2];
        v61 = v191[4];
        v58[5] = v191[3];
        v58[6] = v61;
        v58[3] = v59;
        v58[4] = v60;
        ++v53;
        --v52;
      }

      while (v52);
LABEL_38:
      v26 = v161;
      ObjectType = v162;
      v27 = v177;
    }

    goto LABEL_39;
  }

  if (a4 != 32)
  {
    if (!a4)
    {
      v178 = v23;
      v30 = *(a3 + 16);
      v31 = _swiftEmptyArrayStorage;
      if (v30)
      {
        v177 = v27;
        v161 = v26;
        *&v184 = _swiftEmptyArrayStorage;
        sub_100047120(0, v30, 0);
        v31 = v184;
        v32 = (a3 + 32);
        while (1)
        {
          v33 = v31;
          a4 = *v32;

          sub_1000D1464(v34, v176, v189);
          if (v6)
          {
            break;
          }

          v31 = v33;
          *&v184 = v33;
          v36 = v33[2];
          v35 = v33[3];
          if (v36 >= v35 >> 1)
          {
            a4 = &v184;
            sub_100047120((v35 > 1), v36 + 1, 1);
            v31 = v184;
          }

          v31[2] = v36 + 1;
          v37 = &v31[10 * v36];
          v37[2] = v189[0];
          v38 = v189[1];
          v39 = v189[2];
          v40 = v189[4];
          v37[5] = v189[3];
          v37[6] = v40;
          v37[3] = v38;
          v37[4] = v39;
          ++v32;
          if (!--v30)
          {
            goto LABEL_38;
          }
        }

LABEL_37:
      }

      goto LABEL_39;
    }

LABEL_21:
    sub_10000CA2C();
    swift_allocError();
    v29 = 85;
    goto LABEL_22;
  }

  v178 = v23;
  v42 = *(a3 + 16);
  v31 = _swiftEmptyArrayStorage;
  if (v42)
  {
    v177 = v27;
    v161 = v26;
    *&v184 = _swiftEmptyArrayStorage;
    sub_100047120(0, v42, 0);
    v31 = v184;
    v43 = (a3 + 32);
    while (1)
    {
      v44 = v31;
      a4 = *v43;

      sub_100021344(v45, v176, v190);
      if (v6)
      {
        goto LABEL_37;
      }

      v31 = v44;
      *&v184 = v44;
      v47 = v44[2];
      v46 = v44[3];
      if (v47 >= v46 >> 1)
      {
        a4 = &v184;
        sub_100047120((v46 > 1), v47 + 1, 1);
        v31 = v184;
      }

      v31[2] = v47 + 1;
      v48 = &v31[10 * v47];
      v48[2] = v190[0];
      v49 = v190[1];
      v50 = v190[2];
      v51 = v190[4];
      v48[5] = v190[3];
      v48[6] = v51;
      v48[3] = v49;
      v48[4] = v50;
      ++v43;
      if (!--v42)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_39:
  v62 = v179;
  if (!v31[2])
  {

    a4 = "Found a streaming interface with no alternate settings";
    if (qword_100173CB8 == -1)
    {
LABEL_56:
      v75 = sub_10000A1BC(v12, qword_1001794F0);
      sub_10000A2A4(v75, v15);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v76, qword_100179508);
      sub_100039F58(1, v15, 0xD000000000000036, ((a4 - 4) | 0x8000000000000000));
      result = sub_10000C9D0(v15);
      v62 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      goto LABEL_148;
    }

LABEL_159:
    swift_once();
    goto LABEL_56;
  }

  v192 = &_swiftEmptySetSingleton;
  v15 = v31[12];
  v163 = v31;
  if (!v15)
  {
    v166 = v6;
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_140;
  }

  v160 = v31 + 4;
  v173 = *(v15 + 2);
  if (!v173)
  {
    v166 = v6;
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_93;
  }

  v177 = v27;
  v172 = 0x800000010012E5E0;
  v161 = v26;
  ObjectType = (v26 + 8);

  v63 = 0;
  v64 = 32;
  v169 = v15;
  v170 = ObjectType;
  while (1)
  {
    v166 = v6;
    v65 = *(v15 + 2);
    v176 = v63;
    if (v63 >= v65)
    {
      goto LABEL_154;
    }

    v174 = v64;
    v66 = v15[v64 + 2];
    v67 = *&v15[v64];
    *(&v185 + 1) = &type metadata for USBDescriptorControl;
    LODWORD(v168) = v66;
    BYTE2(v184) = v66;
    LODWORD(v164) = v67;
    LOWORD(v184) = v67;
    Mirror.init(reflecting:)();
    v68 = Mirror.children.getter();
    v12 = v68[2];
    v69 = v68[3];
    v15 = v68[4];
    v70 = v68[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v71 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    a4 = v15;
    if (v71 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_155;
    }

    v72 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v72)
    {

      v15 = v169;
      ObjectType = v170;
      v12 = *v170;
      v6 = v166;
LABEL_51:
      v62 = v179;
      (v12)(v175, v178);

      a4 = 0xE700000000000000;
      goto LABEL_52;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    a4 = *(&v184 + 1);
    v73 = v184;
    sub_10000CE78(&v185);
    v15 = v169;
    ObjectType = v170;
    v12 = *v170;
    v6 = v166;
    if (!a4)
    {
      goto LABEL_51;
    }

    (v12)(v175, v178);
    v62 = v179;
    if (v73 == 0xD000000000000016 && v172 == a4)
    {
      break;
    }

LABEL_52:
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v74)
    {
      goto LABEL_61;
    }

    v63 = v176 + 1;
    v64 = v174 + 3;
    if (v173 == v176 + 1)
    {

      v15 = _swiftEmptyArrayStorage;
      v31 = v163;
      v26 = v161;
      goto LABEL_93;
    }
  }

LABEL_61:
  v80 = v164 | (v168 << 16);

  v81 = sub_100024518(0, 1, 1, _swiftEmptyArrayStorage);
  v83 = *(v81 + 2);
  v82 = *(v81 + 3);
  v157 = v81;
  a4 = (v83 + 1);
  if (v83 >= v82 >> 1)
  {
    v157 = sub_100024518((v82 > 1), v83 + 1, 1, v157);
  }

  v31 = v163;
  v84 = v160;
  v26 = v161;
  v85 = v157;
  *(v157 + 2) = a4;
  v86 = &v85[3 * v83];
  v86[34] = BYTE2(v80);
  *(v86 + 16) = v80;
  v87 = v31[2];
  if (!v87)
  {
    goto LABEL_92;
  }

  v88 = 0;
  v89 = 1;
  v167 = v12;
  v158 = v87;
  while (2)
  {
    v90 = &v84[10 * v88];
    v91 = v90[1];
    v92 = v90[2];
    v93 = v90[3];
    v188 = v90[4];
    v94 = *v90;
    v186 = v92;
    v187 = v93;
    v184 = v94;
    v185 = v91;
    ObjectType = v188;
    if (!v188)
    {
      LODWORD(v95) = 0;
      goto LABEL_87;
    }

    v95 = *(v188 + 16);
    v169 = v95;
    if (!v95)
    {
      goto LABEL_87;
    }

    v159 = v89;
    v164 = v88;
    sub_10001EBF0(&v184, &v180);

    v96 = 0;
    v97 = 32;
    v168 = ObjectType;
    while (2)
    {
      if (v96 >= ObjectType[2])
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v173 = v97;
      v174 = v96;
      v98 = *(ObjectType + v97 + 2);
      v99 = *(ObjectType + v97);
      v183 = &type metadata for USBDescriptorControl;
      LODWORD(v176) = v98;
      BYTE2(v180) = v98;
      LODWORD(v175) = v99;
      LOWORD(v180) = v99;
      Mirror.init(reflecting:)();
      v100 = Mirror.children.getter();
      v101 = v100[2];
      v102 = v100[3];
      v104 = v100[4];
      v103 = v100[5];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v15 = v102;
      v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      a4 = v104;
      if (v12 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_150;
      }

      LODWORD(v176) = v175 | (v176 << 16);
      v105 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v105)
      {

        v62 = v179;
        v12 = v167;
        v167(v177, v178);
        goto LABEL_79;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v106 = v180;
      a4 = v181;
      sub_10000CE78(&v182);
      v62 = v179;
      v12 = v167;
      if (a4)
      {
        v167(v177, v178);
        ObjectType = v168;
        if (v106 == 0xD000000000000016 && v172 == a4)
        {

          goto LABEL_85;
        }
      }

      else
      {
        v167(v177, v178);
LABEL_79:

        a4 = 0xE700000000000000;
        ObjectType = v168;
      }

      v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v107 & 1) == 0)
      {
        v96 = v174 + 1;
        v97 = v173 + 3;
        if (v169 == (v174 + 1))
        {
          a4 = ObjectType;
          v108 = 15728894;
          goto LABEL_86;
        }

        continue;
      }

      break;
    }

    a4 = ObjectType;
LABEL_85:
    v108 = v176;
LABEL_86:

    sub_10001EC4C(&v184);
    LODWORD(v95) = (~v108 & 0xF000FE) != 0;
    v31 = v163;
    v88 = v164;
    v84 = v160;
    v26 = v161;
    v87 = v158;
    LOBYTE(v89) = v159;
LABEL_87:
    ++v88;
    if ((v89 & 1) == 0)
    {
      if (v88 == v87)
      {
        goto LABEL_91;
      }

      LODWORD(v95) = 0;
LABEL_66:
      v89 = v95;
      if (v88 >= v31[2])
      {
        goto LABEL_153;
      }

      continue;
    }

    break;
  }

  if (v88 != v87)
  {
    goto LABEL_66;
  }

  if ((v95 & 1) == 0)
  {
LABEL_91:
    a4 = &v192;
    sub_10009B498(&v184, 93);
    v26 = v161;
    v31 = v163;
  }

LABEL_92:
  v15 = v157;
LABEL_93:
  v12 = v31[12];
  if (v12)
  {
    v175 = *(v12 + 16);
    if (v175)
    {
      v157 = v15;
      v173 = 0x800000010012E5C0;
      ObjectType = (v26 + 8);

      v109 = 0;
      v110 = 32;
      v172 = ObjectType;
      v174 = v12;
      while (1)
      {
        v111 = *(v12 + 16);
        v177 = v109;
        if (v109 >= v111)
        {
          goto LABEL_157;
        }

        v176 = v110;
        v112 = *(v12 + v110 + 2);
        v113 = *(v12 + v110);
        *(&v185 + 1) = &type metadata for USBDescriptorControl;
        LODWORD(v170) = v112;
        BYTE2(v184) = v112;
        LODWORD(v169) = v113;
        LOWORD(v184) = v113;
        Mirror.init(reflecting:)();
        v114 = Mirror.children.getter();
        v115 = v114[2];
        v12 = v114[3];
        v117 = v114[4];
        v116 = v114[5];
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        a4 = v117;
        if (v15 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_158;
        }

        v118 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v118 & 1) == 0)
        {
          break;
        }

        ObjectType = v172;
        v119 = *v172;
        v62 = v179;
LABEL_104:
        v12 = v174;
        v119(v165, v178);

        a4 = 0xE700000000000000;
LABEL_105:
        v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v121)
        {
          goto LABEL_108;
        }

        v109 = v177 + 1;
        v110 = v176 + 3;
        if (v175 == (v177 + 1))
        {

          goto LABEL_139;
        }
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      a4 = *(&v184 + 1);
      v120 = v184;
      sub_10000CE78(&v185);
      ObjectType = v172;
      v119 = *v172;
      v62 = v179;
      if (!a4)
      {
        goto LABEL_104;
      }

      v119(v165, v178);
      v12 = v174;
      if (v120 != 0xD000000000000016 || v173 != a4)
      {
        goto LABEL_105;
      }

LABEL_108:
      v122 = v169 | (v170 << 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = sub_100024518(0, *(v157 + 2) + 1, 1, v157);
      }

      v123 = v160;
      v125 = *(v157 + 2);
      v124 = *(v157 + 3);
      a4 = (v125 + 1);
      v126 = v163;
      if (v125 >= v124 >> 1)
      {
        v155 = sub_100024518((v124 > 1), v125 + 1, 1, v157);
        v123 = v160;
        v157 = v155;
        v126 = v163;
      }

      v127 = v157;
      *(v157 + 2) = a4;
      v128 = &v127[3 * v125];
      v128[34] = BYTE2(v122);
      *(v128 + 16) = v122;
      v129 = v126[2];
      if (v129)
      {
        v130 = 0;
        v131 = 1;
        v168 = v119;
        v164 = v129;
        while (1)
        {
          v132 = &v123[10 * v130];
          v133 = v132[1];
          v134 = v132[2];
          v135 = v132[3];
          v188 = v132[4];
          v136 = *v132;
          v186 = v134;
          v187 = v135;
          v184 = v136;
          v185 = v133;
          ObjectType = v188;
          if (v188)
          {
            v137 = *(v188 + 16);
            v170 = v137;
            if (v137)
            {
              LODWORD(v165) = v131;
              v167 = v130;
              sub_10001EBF0(&v184, &v180);

              v138 = 0;
              v139 = 32;
              v169 = ObjectType;
              while (1)
              {
                v140 = ObjectType[2];
                v175 = v138;
                if (v138 >= v140)
                {
                  goto LABEL_151;
                }

                v174 = v139;
                v141 = *(ObjectType + v139 + 2);
                v142 = *(ObjectType + v139);
                v183 = &type metadata for USBDescriptorControl;
                LODWORD(v177) = v141;
                BYTE2(v180) = v141;
                LODWORD(v176) = v142;
                LOWORD(v180) = v142;
                Mirror.init(reflecting:)();
                v143 = Mirror.children.getter();
                v144 = v143[2];
                v145 = v143[3];
                v147 = v143[4];
                v146 = v143[5];
                ObjectType = swift_getObjectType();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v15 = v145;
                v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
                swift_getObjectType();
                a4 = v147;
                if (v12 != dispatch thunk of _AnyIndexBox._typeID.getter())
                {
                  goto LABEL_152;
                }

                v12 = v176 | (v177 << 16);
                v148 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v148)
                {
                  break;
                }

                dispatch thunk of _AnyCollectionBox.subscript.getter();

                v149 = v180;
                a4 = v181;
                sub_10000CE78(&v182);
                v62 = v179;
                ObjectType = v169;
                if (!a4)
                {
                  goto LABEL_127;
                }

                (v168)(v171, v178);
                if (v149 == 0xD000000000000016 && v173 == a4)
                {

LABEL_133:

                  sub_10001EC4C(&v184);
                  LODWORD(v137) = (~v12 & 0xF000FE) != 0;
                  v126 = v163;
                  v129 = v164;
                  v123 = v160;
                  v130 = v167;
                  LOBYTE(v131) = v165;
                  goto LABEL_134;
                }

LABEL_128:
                v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v150)
                {
                  a4 = ObjectType;
                  goto LABEL_133;
                }

                v138 = v175 + 1;
                v139 = v174 + 3;
                if (v170 == (v175 + 1))
                {
                  a4 = ObjectType;
                  v12 = 15728894;
                  goto LABEL_133;
                }
              }

              v62 = v179;
              ObjectType = v169;
LABEL_127:
              (v168)(v171, v178);

              a4 = 0xE700000000000000;
              goto LABEL_128;
            }
          }

          else
          {
            LODWORD(v137) = 0;
          }

LABEL_134:
          ++v130;
          if (v131)
          {
            if (v130 == v129)
            {
              if ((v137 & 1) == 0)
              {
LABEL_138:
                sub_10009B498(&v184, 93);
              }

              break;
            }
          }

          else
          {
            if (v130 == v129)
            {
              goto LABEL_138;
            }

            LODWORD(v137) = 0;
          }

          v131 = v137;
          if (v130 >= v126[2])
          {
            goto LABEL_156;
          }
        }
      }

LABEL_139:
      v15 = v157;
    }
  }

LABEL_140:
  v151 = v192;
  v152 = v192[2];
  if (!v152)
  {
LABEL_143:

    v78 = _swiftEmptyArrayStorage;
    goto LABEL_144;
  }

  v78 = sub_1001193F0(v192[2], 0);
  v153 = sub_10011B610(&v184, v78 + 32, v152, v151);
  result = sub_100022644();
  if (v153 != v152)
  {
    __break(1u);
    goto LABEL_143;
  }

LABEL_144:
  ObjectType = v162;
  v79 = v15;
  if (!*(v15 + 2))
  {

    v79 = 0;
  }

  v77 = v163;
  if (!v78[2])
  {
    v154 = v79;

    v79 = v154;
    v77 = v163;
    v78 = 0;
  }

LABEL_148:
  *ObjectType = v62;
  ObjectType[1] = v77;
  ObjectType[2] = 0;
  ObjectType[3] = v78;
  ObjectType[4] = v79;
  return result;
}

Swift::Int ADC2InputTerminalDescriptor.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  v6 = sub_1000670EC(a1, a2, a3);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2InputTerminalDescriptor()
{
  v1 = sub_1000670EC(*v0, *(v0 + 8), *(v0 + 16));
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

Swift::Int sub_100088EEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = sub_1000670EC(v1, v2, v3);
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

Swift::Int ADC2OutputTerminalDescriptor.hashValue.getter(uint64_t a1, int a2)
{
  Hasher.init(_seed:)();
  v4 = sub_100065E60(a1, a2);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2OutputTerminalDescriptor()
{
  v1 = sub_100065E60(*v0, *(v0 + 8));
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

Swift::Int sub_1000890F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = sub_100065E60(v1, v2);
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

Swift::Int ADC2MixerUnitDescriptorPart2.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = sub_100065E90(a1 & 0xFFFFFFFFFFFFLL);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2MixerUnitDescriptorPart2()
{
  v1 = sub_100065E90(*v0 | (*(v0 + 1) << 8) | (v0[5] << 40));
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

Swift::Int sub_100089378()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[5];
  Hasher.init(_seed:)();
  v4 = sub_100065E90(v1 | (v2 << 8) | (v3 << 40));
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

Swift::Int ADC2ProcessingUnitDescriptorPart2.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v2 = a1;
  *v12 = a1;
  *&v12[8] = a2;
  v3 = a1 >> 8;
  v4 = a1 >> 40;
  v5 = HIWORD(a1);
  v6 = a2 >> 8;
  Hasher.init(_seed:)();
  v11[0] = v2;
  *&v11[1] = v3;
  v11[5] = v4;
  v11[6] = v5;
  *&v11[7] = *&v12[7];
  v11[9] = v6;
  v7 = sub_100062690(*v11, *&v11[8]);
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = (v7 + 32);
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

Swift::Int sub_100089824()
{
  v1 = *v0;
  *&v3[1] = *(v0 + 1);
  v3[9] = v0[9];
  return ADC2ProcessingUnitDescriptorPart2.hashValue.getter(*v3, *&v3[8]);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2ProcessingUnitDescriptorPart2()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 5);
  v3 = *(v0 + 9);
  v8[0] = *v0;
  *&v8[1] = __PAIR64__(v2, v1);
  v8[9] = v3;
  v4 = sub_100062690(*v8, *&v8[8]);
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

Swift::Int sub_100089924()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 5);
  v4 = v0[9];
  Hasher.init(_seed:)();
  v9[0] = v1;
  *&v9[1] = __PAIR64__(v3, v2);
  v9[9] = v4;
  v5 = sub_100062690(*v9, *&v9[8]);
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ADC2ProcessingUnitDescriptorPart2(unsigned __int8 *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 5);
  v6 = a2[9];
  *&v10[1] = *(a1 + 1);
  v10[9] = a1[9];
  v7 = *v10;
  v8 = *&v10[8];
  LOBYTE(v11) = v3;
  *(&v11 + 1) = __PAIR64__(v5, v4);
  BYTE9(v11) = v6;
  return sub_10006C100(v7, v8, v11, WORD4(v11));
}

uint64_t sub_100089A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 2) << 32) | (*(v4 + 6) << 48));
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

Swift::Int sub_100089B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 6);
  v8 = *v4;
  Hasher.init(_seed:)();
  v9 = a4(v8 | (v6 << 32) | (v7 << 48));
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2ExtensionUnitDescriptorPart2()
{
  v1 = sub_1000634FC(*v0);
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

Swift::Int sub_100089CFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = sub_1000634FC(v1);
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

Swift::Int sub_100089DAC(uint64_t a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_100089E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

Swift::Int sub_100089F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

Swift::Int sub_100089FE4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFLL);
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

uint64_t sub_10008A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v5 = a4(*v4 | (*(v4 + 1) << 8));
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

Swift::Int sub_10008A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 1);
  Hasher.init(_seed:)();
  v8 = a4(v6 | (v7 << 8));
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

Swift::Int sub_10008A25C(uint64_t a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_10008A314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

Swift::Int sub_10008A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

Swift::Int sub_10008A4B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1 & 0xFFFFFFFFFFFFFFLL);
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

uint64_t protocol witness for Hashable.hash(into:) in conformance ADC2ClockMultiplierDescriptor()
{
  v1 = sub_1000649E4(*v0 | (*(v0 + 2) << 16) | (*(v0 + 3) << 24));
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

Swift::Int sub_10008A61C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *v0;
  Hasher.init(_seed:)();
  v4 = sub_1000649E4(v3 | (v1 << 16) | (v2 << 24));
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

uint64_t sub_10008A6E0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177040, type metadata accessor for ADC2InputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A780(uint64_t a1)
{
  result = sub_10008B220(&qword_100177050, type metadata accessor for ADC2OutputTerminalDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A820(uint64_t a1)
{
  result = sub_10008B220(&qword_100177060, type metadata accessor for ADC2MixerUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A8C0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177070, type metadata accessor for ADC2MixerUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A960(uint64_t a1)
{
  result = sub_10008B220(&qword_100177080, type metadata accessor for ADC2MixerUnitDescriptorPart3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AA00(uint64_t a1)
{
  result = sub_10008B220(&qword_100177090, type metadata accessor for ADC2SelectorUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AAA0(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770A0, type metadata accessor for ADC2SelectorUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AB40(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770B0, type metadata accessor for ADC2FeatureUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008ABE0(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770C0, type metadata accessor for ADC2SRConverterUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AC80(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770D0, type metadata accessor for ADC2EffectUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AD20(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770E0, type metadata accessor for ADC2ProcessingUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008ADC0(uint64_t a1)
{
  result = sub_10008B220(&qword_1001770F0, type metadata accessor for ADC2ProcessingUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AE60(uint64_t a1)
{
  result = sub_10008B220(&qword_100177100, type metadata accessor for ADC2ExtensionUnitDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AF00(uint64_t a1)
{
  result = sub_10008B220(&qword_100177110, type metadata accessor for ADC2ExtensionUnitDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008AFA0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177120, type metadata accessor for ADC2ClockSourceDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B040(uint64_t a1)
{
  result = sub_10008B220(&qword_100177130, type metadata accessor for ADC2ClockSelectorDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B0E0(uint64_t a1)
{
  result = sub_10008B220(&qword_100177140, type metadata accessor for ADC2ClockSelectorDescriptorPart2);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B180(uint64_t a1)
{
  result = sub_10008B220(&qword_100177150, type metadata accessor for ADC2ClockMultiplierDescriptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008B220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008B268@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_1000D5D10(a1, a2, 17);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 17);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        *(&v23 + 6) = 0;
        *&v23 = 0;
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
        *&v23 = v7;
        WORD4(v23) = v8;
        BYTE10(v23) = BYTE2(v8);
        BYTE11(v23) = BYTE3(v8);
        BYTE12(v23) = BYTE4(v8);
        BYTE13(v23) = BYTE5(v8);
LABEL_18:
        v21 = &v23;
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
          v22 = sub_10010AA24(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23 = *(v22 + 2);
            v24 = *(v22 + 48);

            *a3 = v23;
            *(a3 + 16) = v24;
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

uint64_t sub_10008B4C8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v47 = type metadata accessor for Mirror();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = &_swiftEmptySetSingleton;
  v6 = sub_100091188();
  v7 = *(v6 + 16);
  v44 = v1;
  if (v7)
  {
    LODWORD(v50) = *(v1 + 14);
    v45 = (v2 + 8);
    v42 = v6;
    v8 = (v6 + 39);
    v9 = _swiftEmptyArrayStorage;
    v46 = v5;
    while (1)
    {
      v10 = (*(v8 - 5) & v50);
      if ((*(v8 - 7) & v50) == 0)
      {
        if ((*(v8 - 5) & v50) != 0)
        {
          sub_10009B498(&v58, 13);
        }

        goto LABEL_4;
      }

      v83 = v7;
      v11 = *(v8 - 3) | (*(v8 - 1) << 16);
      if (v10)
      {
        v12 = *(v8 - 3) | (*(v8 - 1) << 16);
      }

      else
      {
        v12 = *v8 | (*(v8 + 2) << 16);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100024518(0, *(v9 + 2) + 1, 1, v9);
      }

      v14 = *(v9 + 2);
      v13 = *(v9 + 3);
      if (v14 >= v13 >> 1)
      {
        v9 = sub_100024518((v13 > 1), v14 + 1, 1, v9);
      }

      *(v9 + 2) = v14 + 1;
      v15 = &v9[3 * v14];
      v15[34] = BYTE2(v12);
      *(v15 + 16) = v12;
      if (v10)
      {
        v48 = v9;
        v61 = &type metadata for USBDescriptorControl;
        LOWORD(v58) = v11;
        BYTE2(v58) = BYTE2(v11);
        Mirror.init(reflecting:)();
        v16 = Mirror.children.getter();
        v17 = v16[2];
        v18 = v16[3];
        v19 = v16[4];
        v20 = v16[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v49 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v49 != result)
        {
          __break(1u);
          return result;
        }

        v22 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v22)
        {

          v23 = *v45;
          v9 = v48;
LABEL_23:
          v7 = v83;
          v23(v46, v47);

LABEL_24:
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v26 & 1) == 0)
          {
            sub_10009B498(&v58, 12);
          }

          goto LABEL_4;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v25 = v58;
        v24 = v59;
        sub_10000CE78(&v60);
        v23 = *v45;
        v9 = v48;
        if (!v24)
        {
          goto LABEL_23;
        }

        v23(v46, v47);
        v7 = v83;
        if (v25 != 0x746F725079706F63 || v24 != 0xEB00000000746365)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v7 = v83;
      }

LABEL_4:
      v8 += 5;
      if (!--v7)
      {

        v27 = v80;
        goto LABEL_28;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v27 = &_swiftEmptySetSingleton;
LABEL_28:
  v83 = *(v44 + 3);
  v28 = *(v44 + 4);
  v29 = *(v44 + 6);
  v50 = *(v44 + 7);
  v30 = *(v44 + 13);
  v31 = *(v44 + 16);
  v32 = *(v44 + 8) | (*(v44 + 9) << 32);
  sub_100001AB4(&qword_100175F98, &qword_100121748);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10011DE90;
  *(v33 + 32) = v32;
  *(v33 + 40) = v30;
  *(v33 + 41) = 1;
  v34 = v27[2];
  if (!v34)
  {
    goto LABEL_31;
  }

  v35 = sub_1001193F0(v27[2], 0);
  v36 = sub_10011B610(&v58, v35 + 32, v34, v27);
  sub_100022644();
  if (v36 != v34)
  {
    __break(1u);
LABEL_31:

    v35 = _swiftEmptyArrayStorage;
  }

  v81 = *(v44 + 24);
  v82 = *(v44 + 32);
  if (!*(v9 + 2))
  {

    v9 = 0;
  }

  if (!v35[2])
  {

    v35 = 0;
  }

  if (v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = -65536;
  }

  *&v52 = v28;
  *(&v52 + 1) = v29;
  LOBYTE(v53) = 0;
  *(&v53 + 1) = *v79;
  DWORD1(v53) = *&v79[3];
  *(&v53 + 1) = v50;
  LOWORD(v54) = v37;
  *(&v54 + 3) = v77;
  BYTE7(v54) = v78;
  *(&v54 + 1) = v83;
  *&v55 = v81;
  WORD4(v55) = v82;
  *(&v55 + 10) = v75;
  HIWORD(v55) = v76;
  BYTE2(v54) = BYTE2(v37);
  *(v56 + 8) = xmmword_100122890;
  *&v56[0] = v33;
  *(&v56[1] + 1) = v9;
  v57 = v35;
  v58 = v28;
  v59 = v29;
  LOBYTE(v60) = 0;
  *(&v60 + 1) = *v79;
  HIDWORD(v60) = *&v79[3];
  v61 = v50;
  v63 = BYTE2(v37);
  v62 = v37;
  v65 = v78;
  v64 = v77;
  v68 = v82;
  v66 = v83;
  v67 = v81;
  v70 = v76;
  v69 = v75;
  v72 = xmmword_100122890;
  v71 = v33;
  v73 = v9;
  v74 = v35;
  sub_1000767C0(&v52, &v51);
  result = sub_10007681C(&v58);
  v38 = v56[1];
  v39 = v43;
  *(v43 + 64) = v56[0];
  *(v39 + 80) = v38;
  *(v39 + 96) = v57;
  v40 = v53;
  *v39 = v52;
  *(v39 + 16) = v40;
  v41 = v55;
  *(v39 + 32) = v54;
  *(v39 + 48) = v41;
  return result;
}

uint64_t sub_10008BAE0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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

  result = sub_1000D5D10(a1, a2, 12);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 12);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v23, 0, 14);
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
        v23[0] = v7;
        LOWORD(v23[1]) = v8;
        BYTE2(v23[1]) = BYTE2(v8);
        BYTE3(v23[1]) = BYTE3(v8);
        BYTE4(v23[1]) = BYTE4(v8);
        BYTE5(v23[1]) = BYTE5(v8);
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
          v22 = sub_10010AB1C(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23[0] = v22[4];
            LODWORD(v23[1]) = *(v22 + 10);

            *a3 = v23[0];
            *(a3 + 8) = v23[1];
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

uint64_t sub_10008BD40@<X0>(unint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v45 = a5;
  v44 = a4;
  v43 = a3;
  v41 = a1;
  v42 = a2;
  v5 = (a2 >> 8);
  v47 = type metadata accessor for Mirror();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v47);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_100177160, &qword_100123330);
  inited = swift_initStackObject();
  v10 = 0;
  *(inited + 16) = xmmword_100120CD0;
  *(inited + 32) = 131073;
  *(inited + 38) = 0;
  *(inited + 36) = 257;
  *(inited + 41) = 0;
  *(inited + 39) = 256;
  *(inited + 42) = 524292;
  *(inited + 48) = 6;
  *(inited + 46) = 577;
  *(inited + 51) = 6;
  *(inited + 49) = 576;
  *(inited + 52) = 2097168;
  *(inited + 58) = 0;
  *(inited + 56) = 897;
  *(inited + 61) = 0;
  *(inited + 59) = 896;
  *(inited + 62) = 8388672;
  *(inited + 68) = 16;
  *(inited + 66) = 1281;
  *(inited + 71) = 16;
  *(inited + 69) = 1280;
  *(inited + 72) = 33554688;
  *(inited + 78) = 16;
  *(inited + 76) = 1601;
  *(inited + 81) = 16;
  v85 = inited;
  *(inited + 79) = 1600;
  v84 = &_swiftEmptySetSingleton;
  v46 = (v6 + 8);
  v11 = _swiftEmptyArrayStorage;
  v48 = v5;
  do
  {
    v12 = v85 + v10;
    v13 = (*(v85 + v10 + 34) & v5);
    if ((*(v85 + v10 + 32) & v5) != 0)
    {
      v14 = *(v12 + 36) | (*(v12 + 38) << 16);
      v15 = *(v12 + 39) | (*(v12 + 41) << 16);
      if ((*(v85 + v10 + 34) & v5) != 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100024518(0, *(v11 + 2) + 1, 1, v11);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_100024518((v17 > 1), v18 + 1, 1, v11);
      }

      *(v11 + 2) = v18 + 1;
      v19 = &v11[3 * v18];
      v19[34] = BYTE2(v16);
      *(v19 + 16) = v16;
      if (v13)
      {
        v49 = v11;
        v62 = &type metadata for USBDescriptorControl;
        LOWORD(v59) = v14;
        BYTE2(v59) = BYTE2(v14);
        Mirror.init(reflecting:)();
        v20 = Mirror.children.getter();
        v21 = v20[2];
        v22 = v20[3];
        v23 = v20[4];
        v24 = v20[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v50 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v50 != result)
        {
          __break(1u);
          return result;
        }

        v26 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v26)
        {

          v11 = v49;
          LOWORD(v5) = v48;
          (*v46)(v51, v47);
          goto LABEL_23;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v28 = v59;
        v27 = v60;
        sub_10000CE78(&v61);
        v29 = *v46;
        v11 = v49;
        LOWORD(v5) = v48;
        if (v27)
        {
          v29(v51, v47);
          if (v28 == 0x746F725079706F63 && v27 == 0xEB00000000746365)
          {

            goto LABEL_3;
          }
        }

        else
        {
          v29(v51, v47);
LABEL_23:
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          sub_10009B498(&v59, 12);
        }
      }
    }

    else if ((*(v85 + v10 + 34) & v5) != 0)
    {
      sub_10009B498(&v59, 13);
    }

LABEL_3:
    v10 += 10;
  }

  while (v10 != 50);

  v31 = v84;
  v32 = v84[2];
  if (!v32)
  {
    goto LABEL_29;
  }

  v33 = sub_1001193F0(v84[2], 0);
  v34 = sub_10011B610(&v59, v33 + 32, v32, v31);
  sub_100022644();
  if (v34 != v32)
  {
    __break(1u);
LABEL_29:

    v33 = _swiftEmptyArrayStorage;
  }

  v80 = 0;
  if (!*(v11 + 2))
  {

    v11 = 0;
    if (v33[2])
    {
      goto LABEL_32;
    }

LABEL_37:

    v33 = 0;
    goto LABEL_32;
  }

  if (!v33[2])
  {
    goto LABEL_37;
  }

LABEL_32:
  *&v53 = WORD2(v41);
  *(&v53 + 1) = BYTE6(v41);
  LOBYTE(v54) = 0;
  *(&v54 + 1) = *v83;
  if (HIBYTE(v42))
  {
    v35 = HIBYTE(v42);
  }

  else
  {
    v35 = -65536;
  }

  DWORD1(v54) = *&v83[3];
  *(&v54 + 1) = v42;
  LOWORD(v55) = v35;
  BYTE2(v55) = BYTE2(v35);
  *(&v55 + 3) = v81;
  BYTE7(v55) = v82;
  *(&v55 + 1) = HIBYTE(v41);
  LOBYTE(v56) = v80;
  DWORD1(v56) = *&v79[3];
  *(&v56 + 1) = *v79;
  *(&v56 + 1) = BYTE3(v41);
  *&v57 = v11;
  *(&v57 + 1) = v43;
  LOWORD(v58) = v44;
  WORD3(v58) = v78;
  *(&v58 + 2) = v77;
  *(&v58 + 1) = v33;
  v59 = WORD2(v41);
  v60 = BYTE6(v41);
  LOBYTE(v61) = 0;
  HIDWORD(v61) = *&v83[3];
  *(&v61 + 1) = *v83;
  v62 = v42;
  v64 = BYTE2(v35);
  v63 = v35;
  v66 = v82;
  v65 = v81;
  v67 = HIBYTE(v41);
  v68 = v80;
  *&v69[3] = *&v79[3];
  *v69 = *v79;
  v70 = BYTE3(v41);
  v71 = v11;
  v72 = v43;
  v73 = v44;
  v75 = v78;
  v74 = v77;
  v76 = v33;
  sub_1000766B0(&v53, &v52);
  result = sub_100076AD0(&v59);
  v36 = v56;
  v37 = v45;
  v45[2] = v55;
  v37[3] = v36;
  v38 = v58;
  v37[4] = v57;
  v37[5] = v38;
  v39 = v54;
  *v37 = v53;
  v37[1] = v39;
  return result;
}

uint64_t sub_10008C400@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_74;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v113, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
LABEL_113:
      __DataStorage._length.getter();
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_95;
    }

    v21 = (v17 - v20 + v19);
    __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_114;
    }

LABEL_15:
    v25 = v21;
    goto LABEL_18;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v22 = __DataStorage._bytes.getter();
    if (!v22)
    {
LABEL_115:
      __DataStorage._length.getter();
      __break(1u);
      goto LABEL_116;
    }

    v23 = v22;
    v24 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v24))
    {
      goto LABEL_96;
    }

    v21 = (v14 - v24 + v23);
    __DataStorage._length.getter();
    if (!v21)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    goto LABEL_15;
  }

  v113[0] = v12;
  LOWORD(v113[1]) = v13;
  BYTE2(v113[1]) = BYTE2(v13);
  BYTE3(v113[1]) = BYTE3(v13);
  BYTE4(v113[1]) = BYTE4(v13);
  BYTE5(v113[1]) = BYTE5(v13);
LABEL_17:
  v25 = v113;
LABEL_18:
  v26 = sub_10010AD40(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_94;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v27);
    v29 = v28;
    v111 = v30;
    v31 = sub_1001128D0(v10, v27);
    v33 = v31;
    v34 = v32;
    v35 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v35 != 2)
      {
        memset(v113, 0, 14);
        goto LABEL_34;
      }

      v36 = *(v31 + 16);
      v37 = __DataStorage._bytes.getter();
      if (!v37)
      {
LABEL_117:
        __DataStorage._length.getter();
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (!__OFSUB__(v36, v39))
      {
        v40 = (v36 - v39 + v38);
        __DataStorage._length.getter();
        if (!v40)
        {
          goto LABEL_118;
        }

        goto LABEL_32;
      }

      goto LABEL_98;
    }

    if (!v35)
    {
      v113[0] = v31;
      LOWORD(v113[1]) = v32;
      BYTE2(v113[1]) = BYTE2(v32);
      BYTE3(v113[1]) = BYTE3(v32);
      BYTE4(v113[1]) = BYTE4(v32);
      BYTE5(v113[1]) = BYTE5(v32);
LABEL_34:
      v44 = v113;
LABEL_35:
      v45 = sub_10010AC70(v44, v27);
      sub_10007676C(v33, v34);
      if (!v29)
      {
        goto LABEL_73;
      }

      sub_1000D5D10(v29, v111, 6);
      v47 = v46;
      v109 = v48;
      v49 = sub_1001128D0(v29, 6);
      v51 = v49;
      v52 = v50;
      v53 = v50 >> 62;
      if ((v50 >> 62) > 1)
      {
        if (v53 != 2)
        {
          memset(v113, 0, 14);
          goto LABEL_50;
        }

        v106 = v45;
        v54 = *(v49 + 16);
        v55 = __DataStorage._bytes.getter();
        if (!v55)
        {
LABEL_121:
          __DataStorage._length.getter();
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v56 = v55;
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v57))
        {
          goto LABEL_104;
        }

        v58 = (v54 - v57 + v56);
        __DataStorage._length.getter();
        v45 = v106;
        if (!v58)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (!v53)
        {
          v113[0] = v49;
          LOWORD(v113[1]) = v50;
          BYTE2(v113[1]) = BYTE2(v50);
          BYTE3(v113[1]) = BYTE3(v50);
          BYTE4(v113[1]) = BYTE4(v50);
          BYTE5(v113[1]) = BYTE5(v50);
LABEL_50:
          v62 = v113;
LABEL_51:
          v63 = sub_10010AC44(v62, 1);
          sub_10007676C(v51, v52);
          if (v63[2])
          {
            v112 = vmovl_u8(v4).u64[0];
            v64 = *(v63 + 32);
            v65 = *(v63 + 33);
            v105 = *(v63 + 37);

            v66 = v112.u16[0] - 13;
            if ((v66 & 0xFFFFFF00) == 0)
            {
              if ((((v112.i8[0] - 13) - v27) & 0xFFFFFF00) == 0)
              {
                if (v47)
                {
                  sub_1000D5D10(v47, v109, (v66 - v27));
                  v68 = v67;
                  v110 = v65;
                  v103 = v64;
                  v104 = v69;
                  v70 = sub_1001128D0(v47, (v112.i8[0] - 13 - v27));
                  v72 = v70;
                  v73 = v71;
                  v74 = v71 >> 62;
                  if ((v71 >> 62) > 1)
                  {
                    if (v74 != 2)
                    {
                      memset(v113, 0, 14);
                      goto LABEL_69;
                    }

                    v102 = v68;
                    v107 = v45;
                    v75 = *(v70 + 16);
                    v76 = __DataStorage._bytes.getter();
                    if (!v76)
                    {
LABEL_125:
                      __DataStorage._length.getter();
LABEL_126:
                      __break(1u);
                      goto LABEL_127;
                    }

                    v77 = v76;
                    v78 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v75, v78))
                    {
                      v79 = (v75 - v78 + v77);
                      __DataStorage._length.getter();
                      v45 = v107;
                      if (!v79)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    if (!v74)
                    {
                      v113[0] = v70;
                      LOWORD(v113[1]) = v71;
                      BYTE2(v113[1]) = BYTE2(v71);
                      BYTE3(v113[1]) = BYTE3(v71);
                      BYTE4(v113[1]) = BYTE4(v71);
                      BYTE5(v113[1]) = BYTE5(v71);
LABEL_69:
                      v83 = sub_10010AC70(v113, (v112.i8[0] - 13 - v27));
                      sub_10007676C(v72, v73);
                      goto LABEL_70;
                    }

                    v102 = v68;
                    if (v70 <= v70 >> 32)
                    {
                      v80 = __DataStorage._bytes.getter();
                      if (!v80)
                      {
LABEL_127:
                        __DataStorage._length.getter();
                        __break(1u);
                        goto LABEL_128;
                      }

                      v81 = v80;
                      v82 = __DataStorage._offset.getter();
                      if (!__OFSUB__(v72, v82))
                      {
                        v79 = (v72 - v82 + v81);
                        __DataStorage._length.getter();
                        if (!v79)
                        {
LABEL_128:
                          __break(1u);
                          goto LABEL_129;
                        }

LABEL_67:
                        v83 = sub_10010AC70(v79, (v112.i8[0] - 13 - v27));
                        sub_10007676C(v72, v73);
                        v68 = v102;
LABEL_70:
                        v84 = v110;
                        if (v68)
                        {
                          sub_1000D5D10(v68, v104, 2);
                          v86 = sub_1001128D0(v68, 2);
                          v88 = v86;
                          v89 = v87;
                          v90 = v87 >> 62;
                          if ((v87 >> 62) > 1)
                          {
                            if (v90 != 2)
                            {
                              memset(v113, 0, 14);
                              goto LABEL_90;
                            }

                            v108 = v45;
                            v91 = *(v86 + 16);
                            v92 = __DataStorage._bytes.getter();
                            if (!v92)
                            {
LABEL_129:
                              __DataStorage._length.getter();
LABEL_130:
                              __break(1u);
                              goto LABEL_131;
                            }

                            v93 = v92;
                            v94 = __DataStorage._offset.getter();
                            if (__OFSUB__(v91, v94))
                            {
                              goto LABEL_111;
                            }

                            v95 = (v91 - v94 + v93);
                            __DataStorage._length.getter();
                            v45 = v108;
                            if (!v95)
                            {
                              goto LABEL_130;
                            }
                          }

                          else
                          {
                            if (!v90)
                            {
                              v113[0] = v86;
                              LOWORD(v113[1]) = v87;
                              BYTE2(v113[1]) = BYTE2(v87);
                              BYTE3(v113[1]) = BYTE3(v87);
                              BYTE4(v113[1]) = BYTE4(v87);
                              BYTE5(v113[1]) = BYTE5(v87);
LABEL_90:
                              v99 = sub_10010AC18(v113, 1);
                              sub_10007676C(v88, v89);
LABEL_91:
                              if (v99[2])
                              {
                                v100 = v45;
                                v101 = *(v99 + 16);

                                *a3 = vuzp1_s8(v112, v112).u32[0];
                                *(a3 + 4) = v27;
                                *(a3 + 8) = v100;
                                *(a3 + 16) = v103;
                                *(a3 + 17) = v84;
                                *(a3 + 21) = v105;
                                *(a3 + 24) = v83;
                                *(a3 + 32) = v101;
                                return result;
                              }

                              goto LABEL_109;
                            }

                            if (v86 > v86 >> 32)
                            {
LABEL_110:
                              __break(1u);
LABEL_111:
                              __break(1u);
LABEL_112:
                              __break(1u);
                              goto LABEL_113;
                            }

                            v96 = __DataStorage._bytes.getter();
                            if (!v96)
                            {
LABEL_131:
                              result = __DataStorage._length.getter();
                              __break(1u);
                              goto LABEL_132;
                            }

                            v97 = v96;
                            v98 = __DataStorage._offset.getter();
                            if (__OFSUB__(v88, v98))
                            {
                              goto LABEL_112;
                            }

                            v95 = (v88 - v98 + v97);
                            result = __DataStorage._length.getter();
                            if (!v95)
                            {
LABEL_132:
                              __break(1u);
                              return result;
                            }
                          }

                          v99 = sub_10010AC18(v95, 1);
                          sub_10007676C(v88, v89);
                          v84 = v110;
                          goto LABEL_91;
                        }

                        goto LABEL_73;
                      }

LABEL_108:
                      __break(1u);
LABEL_109:
                      __break(1u);
                      goto LABEL_110;
                    }

                    __break(1u);
                  }

                  __break(1u);
                  goto LABEL_108;
                }

LABEL_73:

                goto LABEL_74;
              }

              goto LABEL_102;
            }

LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v49 > v49 >> 32)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v59 = __DataStorage._bytes.getter();
        if (!v59)
        {
LABEL_123:
          __DataStorage._length.getter();
          __break(1u);
          goto LABEL_124;
        }

        v60 = v59;
        v61 = __DataStorage._offset.getter();
        if (__OFSUB__(v51, v61))
        {
LABEL_105:
          __break(1u);
        }

        v58 = (v51 - v61 + v60);
        __DataStorage._length.getter();
        if (!v58)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }
      }

      v62 = v58;
      goto LABEL_51;
    }

    if (v31 <= v31 >> 32)
    {
      v41 = __DataStorage._bytes.getter();
      if (!v41)
      {
LABEL_119:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_120;
      }

      v42 = v41;
      v43 = __DataStorage._offset.getter();
      if (!__OFSUB__(v33, v43))
      {
        v40 = (v33 - v43 + v42);
        __DataStorage._length.getter();
        if (!v40)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_32:
        v44 = v40;
        goto LABEL_35;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

LABEL_74:
  sub_10000CA2C();
  swift_allocError();
  *v85 = 57;
  *(v85 + 8) = 0;
  *(v85 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10008CDF0@<X0>(uint64_t a1@<X8>)
{
  sub_100001AB4(&qword_100177168, &qword_100123338);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_1001228A0;
  *(inited + 32) = 513;
  *(inited + 36) = 6;
  *(inited + 34) = 705;
  *(inited + 39) = 6;
  *(inited + 37) = 704;
  *(inited + 40) = 2052;
  *(inited + 44) = 16;
  *(inited + 42) = 769;
  *(inited + 47) = 16;
  *(inited + 45) = 768;
  *(inited + 48) = 8208;
  *(inited + 52) = 16;
  *(inited + 50) = 1089;
  *(inited + 55) = 16;
  *(inited + 53) = 1088;
  v56 = &_swiftEmptySetSingleton;
  v4 = *(v1 + 11);
  v61 = v1;
  v32 = *(v1 + 12);
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = inited + v3;
    v7 = (*(inited + v3 + 33) & v4);
    if ((*(inited + v3 + 32) & v4) != 0)
    {
      v8 = (v6 + 37);
      v9 = (v6 + 34);
      if ((*(inited + v3 + 33) & v4) == 0)
      {
        v9 = v8;
      }

      v10 = *(v9 + 2);
      v11 = *v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100024518(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_100024518((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[3 * v13];
      v14[34] = (v11 | (v10 << 16)) >> 16;
      *(v14 + 16) = v11;
      if (v7)
      {
        v15 = 12;
LABEL_2:
        sub_10009B498(&v39, v15);
      }
    }

    else if ((*(inited + v3 + 33) & v4) != 0)
    {
      v15 = 13;
      goto LABEL_2;
    }

    v3 += 8;
  }

  while (v3 != 24);

  v16 = *(v61 + 5);
  v31 = *(v61 + 6);
  v17 = *(v61 + 10);
  v18 = *(v61 + 32);
  v59 = *(v61 + 40);
  v60[0] = v18;
  v19 = v56;
  v20 = v56[2];
  if (!v20)
  {
    sub_10000D0B8(v60, &v39, &qword_100176868, &unk_100122140);
    sub_10000D0B8(&v59, &v39, &qword_100175CA8, &unk_100124860);

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v21 = sub_1001193F0(v20, 0);
  v30 = sub_10011B610(&v39, v21 + 32, v20, v19);
  sub_10000D0B8(v60, &v35, &qword_100176868, &unk_100122140);
  sub_10000D0B8(&v59, &v35, &qword_100175CA8, &unk_100124860);
  result = sub_100022644();
  if (v30 == v20)
  {
LABEL_19:
    v23 = *(v61 + 3);
    v57 = *(v61 + 16);
    v58 = *(v61 + 24);
    v25 = v59;
    v24 = v60[0];
    if (!*(v5 + 2))
    {

      v5 = 0;
    }

    *(v53 + 5) = v57;
    *(&v53[1] + 5) = v58;
    if (!v21[2])
    {

      v21 = 0;
    }

    v55 = 1;
    *&v35 = 0;
    if (v32)
    {
      v26 = v32;
    }

    else
    {
      v26 = -65536;
    }

    BYTE8(v35) = 1;
    *(&v35 + 9) = *v54;
    HIDWORD(v35) = *&v54[3];
    *v36 = v23;
    *&v36[8] = v26;
    *&v36[11] = v53[0];
    *&v36[18] = *(v53 + 7);
    *v41 = *v54;
    *&v41[3] = *&v54[3];
    v36[10] = BYTE2(v26);
    *&v36[28] = v16 | (v31 << 32);
    v36[36] = v17;
    v36[37] = 1;
    *&v36[40] = v24;
    *&v37 = v25;
    *(&v37 + 1) = v5;
    v38 = v21;
    v39 = 0;
    v40 = 1;
    v42 = v23;
    v44 = BYTE2(v26);
    v43 = v26;
    *v45 = v53[0];
    *&v45[7] = *(v53 + 7);
    v46 = *&v36[28];
    v47 = v17;
    v48 = 1;
    v49 = v24;
    v50 = v25;
    v51 = v5;
    v52 = v21;
    sub_10002317C(&v35, v34);
    result = sub_100076A7C(&v39);
    v27 = *&v36[32];
    v28 = v37;
    *(a1 + 32) = *&v36[16];
    *(a1 + 48) = v27;
    *(a1 + 64) = v28;
    *(a1 + 80) = v38;
    v29 = *v36;
    *a1 = v35;
    *(a1 + 16) = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10008D24C(uint64_t a1)
{
  v3 = sub_100068F50(*v1 | (*(v1 + 1) << 8));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v20);
      AnyHashable.hash(into:)();
      sub_10001E070(v20);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_100065E90(v1[5] | (*(v1 + 6) << 8) | (v1[10] << 40));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v20);
      AnyHashable.hash(into:)();
      sub_10001E070(v20);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v9 = sub_100065E78(*(v1 + 11));
  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = (v9 + 32);
    do
    {
      sub_10001EDEC(v11, v20);
      AnyHashable.hash(into:)();
      sub_10001E070(v20);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v12 = *(v1 + 4);
  v13 = *(v12 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      Hasher._combine(_:)(v15);
      --v13;
    }

    while (v13);
  }

  v16 = *(v1 + 5);
  v17 = *(v16 + 16);
  Hasher._combine(_:)(v17);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      Hasher._combine(_:)(v19);
      --v17;
    }

    while (v17);
  }
}

Swift::Int sub_10008D3F4()
{
  Hasher.init(_seed:)();
  sub_10008D24C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008D438()
{
  Hasher.init(_seed:)();
  sub_10008D24C(v1);
  return Hasher._finalize()();
}

uint64_t sub_10008D474(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1000910B4(v7, v8) & 1;
}

uint64_t sub_10008D4BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = &_swiftEmptySetSingleton;
  v7 = HIDWORD(a1);
  if (((a1 >> 40) & 1) == 0)
  {
    sub_10009B498(&v29, 14);
    v8 = v7;
    LOWORD(v7) = 1;
    if (v8 != 1)
    {
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_7:
    sub_10009B498(&v29, 16);
    goto LABEL_8;
  }

  if (!BYTE4(a1))
  {
LABEL_17:

    sub_10000CA2C();
    swift_allocError();
    *v20 = 17;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  LODWORD(v7) = (BYTE5(a1) >> 1) & 1;
  if (BYTE4(a1) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v9 = BYTE6(v5);
  if ((v5 & 0xFF000000000000) == 0)
  {
    v9 = -65536;
  }

  v22 = v9;
  sub_100001AB4(&qword_1001753C8, &unk_100123340);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10011DE90;
  *(v10 + 34) = 80;
  *(v10 + 32) = v7 | 0x140;
  v11 = v45;
  v12 = v45[2];
  if (v12)
  {
    v13 = sub_1001193F0(v12, 0);
    v21 = sub_10011B610(&v29, v13 + 32, v12, v11);
    sub_1000917E8(&v41, &v24);
    result = sub_100022644();
    if (v21 != v12)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1000917E8(&v41, &v29);

    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v44;
  v16 = v42;
  LOBYTE(v5) = v43;
  v17 = HIBYTE(v43);
  if (!v13[2])
  {

    v13 = 0;
  }

  v40 = 1;
  *&v24 = 0;
  BYTE8(v24) = 1;
  *&v25 = BYTE3(v5);
  BYTE10(v25) = BYTE2(v22);
  WORD4(v25) = v22;
  *&v26 = v16;
  BYTE8(v26) = v5;
  BYTE9(v26) = v17;
  *&v27 = v15;
  *(&v27 + 1) = v10;
  v28 = v13;
  v29 = 0;
  LOBYTE(v30) = 1;
  v31 = BYTE3(v5);
  v32 = v22;
  v33 = BYTE2(v22);
  v34 = v16;
  v35 = v5;
  v36 = v17;
  v37 = v15;
  v38 = v10;
  v39 = v13;
  sub_1000267DC(&v24, v23);
  result = sub_100076980(&v29);
  v18 = v27;
  *(a5 + 32) = v26;
  *(a5 + 48) = v18;
  *(a5 + 64) = v28;
  v19 = v25;
  *a5 = v24;
  *(a5 + 16) = v19;
  return result;
}

uint64_t sub_10008D824@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 5);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v68[0] = v12;
  LOWORD(v68[1]) = v13;
  BYTE2(v68[1]) = BYTE2(v13);
  BYTE3(v68[1]) = BYTE3(v13);
  BYTE4(v68[1]) = BYTE4(v13);
  BYTE5(v68[1]) = BYTE5(v13);
LABEL_17:
  v25 = v68;
LABEL_18:
  v26 = sub_10010AE94(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 36);

  if (v10)
  {
    v67 = vmovl_u8(v4).u64[0];
    v28 = v67.u16[0] - 6 + (((v67.u16[0] - 6) & 0xC000u) >> 14);
    sub_1000D5D10(v10, v11, 4 * (v28 >> 2));
    v30 = v29;
    v66 = v31;
    v32 = v28 >> 2;
    v33 = sub_1001128D0(v10, 4 * (v28 >> 2));
    v35 = v33;
    v36 = v34;
    v37 = v34 >> 62;
    if ((v34 >> 62) <= 1)
    {
      if (!v37)
      {
        v68[0] = v33;
        LOWORD(v68[1]) = v34;
        BYTE2(v68[1]) = BYTE2(v34);
        BYTE3(v68[1]) = BYTE3(v34);
        BYTE4(v68[1]) = BYTE4(v34);
        BYTE5(v68[1]) = BYTE5(v34);
LABEL_34:
        v46 = v68;
        goto LABEL_35;
      }

      if (v33 <= v33 >> 32)
      {
        v43 = __DataStorage._bytes.getter();
        if (v43)
        {
          v44 = v43;
          v45 = __DataStorage._offset.getter();
          if (!__OFSUB__(v35, v45))
          {
            v42 = (v35 - v45 + v44);
            __DataStorage._length.getter();
            if (v42)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v37 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_34;
    }

    v65 = v27;
    v38 = *(v33 + 16);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = v39;
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v41))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = (v38 - v41 + v40);
      __DataStorage._length.getter();
      v27 = v65;
      if (v42)
      {
LABEL_32:
        v46 = v42;
LABEL_35:
        v47 = sub_10010ADC4(v46, v32);
        sub_10007676C(v35, v36);
        if (v30)
        {
          sub_1000D5D10(v30, v66, 1);
          v49 = sub_1001128D0(v30, 1);
          v51 = v49;
          v52 = v50;
          v53 = v50 >> 62;
          if ((v50 >> 62) <= 1)
          {
            if (!v53)
            {
              v68[0] = v49;
              LOWORD(v68[1]) = v50;
              BYTE2(v68[1]) = BYTE2(v50);
              BYTE3(v68[1]) = BYTE3(v50);
              BYTE4(v68[1]) = BYTE4(v50);
              BYTE5(v68[1]) = BYTE5(v50);
LABEL_54:
              v62 = v68;
LABEL_55:
              v63 = sub_10010AC70(v62, 1);
              sub_10007676C(v51, v52);
              if (*(v63 + 2))
              {
                v64 = v63[32];

                *a3 = vuzp1_s8(v67, v67).u32[0];
                *(a3 + 4) = v27;
                *(a3 + 8) = v47;
                *(a3 + 16) = v64;
                return result;
              }

              goto LABEL_64;
            }

            if (v49 > v49 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v59 = __DataStorage._bytes.getter();
            if (v59)
            {
              v60 = v59;
              v61 = __DataStorage._offset.getter();
              if (__OFSUB__(v51, v61))
              {
                goto LABEL_67;
              }

              v58 = (v51 - v61 + v60);
              result = __DataStorage._length.getter();
              if (v58)
              {
LABEL_52:
                v62 = v58;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v53 != 2)
          {
            memset(v68, 0, 14);
            goto LABEL_54;
          }

          v54 = *(v49 + 16);
          v55 = __DataStorage._bytes.getter();
          if (v55)
          {
            v56 = v55;
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v54, v57))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v58 = (v54 - v57 + v56);
            __DataStorage._length.getter();
            if (v58)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v48 = 57;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10008DE14@<X0>(uint64_t a1@<X8>)
{
  v34 = &_swiftEmptySetSingleton;
  v4 = sub_100091894();
  v5 = sub_100090E98(*(v1 + 24), v4);
  v35 = v2;

  v6 = *(v1 + 32);
  v7 = *(&_swiftEmptySetSingleton + 2);
  if (v7)
  {
    v16 = *(v1 + 32);
    v8 = sub_1001193F0(v7, 0);
    v17 = sub_10011B610(&v23, v8 + 32, v7, &_swiftEmptySetSingleton);

    result = sub_100022644();
    if (v17 != v7)
    {
      __break(1u);
      return result;
    }

    v6 = v16;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  *(v32 + 5) = *(v1 + 8);
  *(&v32[1] + 5) = *(v1 + 16);
  if (!v8[2])
  {
    v12 = v6;

    v6 = v12;
    v8 = 0;
  }

  v33 = 0;
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = -65536;
  }

  *&v19 = v11;
  BYTE8(v19) = 0;
  *&v20[0] = v10;
  WORD4(v20[0]) = v13;
  *(v20 + 11) = v32[0];
  *(&v20[1] + 2) = *(v32 + 7);
  BYTE10(v20[0]) = BYTE2(v13);
  v21 = v5;
  v22 = v8;
  v23 = v11;
  LOBYTE(v24) = 0;
  v25 = v10;
  v26 = v13;
  v27 = BYTE2(v13);
  *&v28[7] = *(v32 + 7);
  *v28 = v32[0];
  v29 = v5;
  v30 = 0;
  v31 = v8;
  sub_100076614(&v19, v18);
  sub_100091CF0(&v23);

  v14 = v21;
  *(a1 + 32) = v20[1];
  *(a1 + 48) = v14;
  *(a1 + 64) = v22;
  v15 = v20[0];
  *a1 = v19;
  *(a1 + 16) = v15;
  return result;
}

void sub_10008E010(uint64_t a1)
{
  v3 = sub_100068330(*v1 | (*(v1 + 1) << 8));
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

  USBDescriptor.hash(into:)(a1, *(v1 + 1), *(v1 + 8));
  v6 = *(v1 + 3);
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

  Hasher._combine(_:)(v1[32]);
}

Swift::Int sub_10008E0EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  v4 = sub_100068330(v2 | (v3 << 8));
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v12);
      AnyHashable.hash(into:)();
      sub_10001E070(v12);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v7 = *(v1 + 3);
  USBDescriptor.hash(into:)(v13, *(v1 + 1), *(v1 + 8));
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

  Hasher._combine(_:)(v1[32]);
  return Hasher._finalize()();
}

Swift::Int sub_10008E1E0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = v0[17];
  v6 = *(v0 + 3);
  v7 = v0[32];
  Hasher.init(_seed:)();
  v8 = sub_100068330(v1 | (v2 << 8));
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

  USBDescriptor.hash(into:)(v16, v3, v4 | (v5 << 8));
  Hasher._combine(_:)(*(v6 + 16));
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = (v6 + 32);
    do
    {
      v13 = *v12++;
      Hasher._combine(_:)(v13);
      --v11;
    }

    while (v11);
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_10008E2E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = a1[16];
  v4 = a1[17];
  v5 = *(a1 + 3);
  v6 = a1[32];
  v7 = *(a2 + 1);
  v8 = a2[16];
  v9 = a2[17];
  v10 = *(a2 + 3);
  v11 = a2[32];
  if ((sub_10006EBF4(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) != 0 && _s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v2, v3 | (v4 << 8), v7, v8 | (v9 << 8)))
  {
    return sub_1000E4948(v5, v10) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008E3A8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 7);
  if (v3)
  {
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_1001128D0(a1, 7);
  v14 = v12;
  v15 = v13;
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_17;
    }

    v17 = *(v12 + 16);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = v18;
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v21 = (v17 - v20 + v19);
      __DataStorage._length.getter();
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v16)
  {
    if (v12 > v12 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = __DataStorage._bytes.getter();
    if (v22)
    {
      v23 = v22;
      v24 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v24))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = (v14 - v24 + v23);
      __DataStorage._length.getter();
      if (v21)
      {
LABEL_15:
        v25 = v21;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v70[0] = v12;
  LOWORD(v70[1]) = v13;
  BYTE2(v70[1]) = BYTE2(v13);
  BYTE3(v70[1]) = BYTE3(v13);
  BYTE4(v70[1]) = BYTE4(v13);
  BYTE5(v70[1]) = BYTE5(v13);
LABEL_17:
  v25 = v70;
LABEL_18:
  v26 = sub_10010AFDC(v25, 1);
  sub_10007676C(v14, v15);
  if (!v26[2])
  {
    __break(1u);
    goto LABEL_58;
  }

  v4.i32[0] = *(v26 + 8);
  v27 = *(v26 + 18);
  v28 = *(v26 + 38);

  if (v10)
  {
    sub_1000D5D10(v10, v11, v28);
    v30 = v29;
    v67 = v27;
    v68 = v31;
    v32 = sub_1001128D0(v10, v28);
    v34 = v32;
    v35 = v33;
    v36 = v33 >> 62;
    if ((v33 >> 62) <= 1)
    {
      if (!v36)
      {
        v70[0] = v32;
        LOWORD(v70[1]) = v33;
        BYTE2(v70[1]) = BYTE2(v33);
        BYTE3(v70[1]) = BYTE3(v33);
        BYTE4(v70[1]) = BYTE4(v33);
        BYTE5(v70[1]) = BYTE5(v33);
LABEL_34:
        v45 = v70;
        goto LABEL_35;
      }

      if (v32 <= v32 >> 32)
      {
        v42 = __DataStorage._bytes.getter();
        if (v42)
        {
          v43 = v42;
          v44 = __DataStorage._offset.getter();
          if (!__OFSUB__(v34, v44))
          {
            v41 = (v34 - v44 + v43);
            __DataStorage._length.getter();
            if (v41)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v36 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_34;
    }

    v37 = *(v32 + 16);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v41 = (v37 - v40 + v39);
      __DataStorage._length.getter();
      if (v41)
      {
LABEL_32:
        v45 = v41;
LABEL_35:
        v46 = sub_10010AC70(v45, v28);
        sub_10007676C(v34, v35);
        if (v30)
        {
          sub_1000D5D10(v30, v68, 8);
          v48 = sub_1001128D0(v30, 8);
          v50 = v48;
          v51 = v49;
          v52 = v49 >> 62;
          if ((v49 >> 62) <= 1)
          {
            if (!v52)
            {
              v70[0] = v48;
              LOWORD(v70[1]) = v49;
              BYTE2(v70[1]) = BYTE2(v49);
              BYTE3(v70[1]) = BYTE3(v49);
              BYTE4(v70[1]) = BYTE4(v49);
              BYTE5(v70[1]) = BYTE5(v49);
LABEL_54:
              v61 = v70;
LABEL_55:
              v62 = sub_10010AEC0(v61, 1);
              sub_10007676C(v50, v51);
              if (v62[2])
              {
                v69 = vmovl_u8(v4).u64[0];
                v63 = *(v62 + 32);
                v64 = *(v62 + 33);
                v65 = *(v62 + 37);
                v66 = *(v62 + 39);

                *a3 = vuzp1_s8(v69, v69).u32[0];
                *(a3 + 4) = v67;
                *(a3 + 6) = v28;
                *(a3 + 8) = v46;
                *(a3 + 16) = v63;
                *(a3 + 17) = v64;
                *(a3 + 21) = v65;
                *(a3 + 23) = v66;
                return result;
              }

              goto LABEL_64;
            }

            if (v48 > v48 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v58 = __DataStorage._bytes.getter();
            if (v58)
            {
              v59 = v58;
              v60 = __DataStorage._offset.getter();
              if (__OFSUB__(v50, v60))
              {
                goto LABEL_67;
              }

              v57 = (v50 - v60 + v59);
              result = __DataStorage._length.getter();
              if (v57)
              {
LABEL_52:
                v61 = v57;
                goto LABEL_55;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v52 != 2)
          {
            memset(v70, 0, 14);
            goto LABEL_54;
          }

          v53 = *(v48 + 16);
          v54 = __DataStorage._bytes.getter();
          if (v54)
          {
            v55 = v54;
            v56 = __DataStorage._offset.getter();
            if (__OFSUB__(v53, v56))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v57 = (v53 - v56 + v55);
            __DataStorage._length.getter();
            if (v57)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v47 = 57;
  *(v47 + 8) = 0;
  *(v47 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_10008E994@<X0>(_OWORD *a1@<X8>)
{
  v41 = a1;
  v45 = type metadata accessor for Mirror();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v45);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001AB4(&qword_100177170, &qword_100123350);
  inited = swift_initStackObject();
  v7 = 0;
  *(inited + 16) = xmmword_100120A30;
  *(inited + 32) = 513;
  *(inited + 36) = 80;
  *(inited + 34) = 385;
  *(inited + 39) = 80;
  *(inited + 37) = 384;
  *(inited + 40) = 2052;
  *(inited + 44) = 6;
  *(inited + 42) = 705;
  *(inited + 47) = 6;
  *(inited + 45) = 704;
  *(inited + 48) = 8208;
  *(inited + 52) = 16;
  *(inited + 50) = 769;
  *(inited + 55) = 16;
  *(inited + 53) = 768;
  *(inited + 56) = -32704;
  *(inited + 60) = 16;
  *(inited + 58) = 1089;
  *(inited + 63) = 16;
  v77 = inited;
  *(inited + 61) = 1088;
  v74 = &_swiftEmptySetSingleton;
  v48 = *(v1 + 13);
  v42 = v1;
  v43 = (v2 + 8);
  HIDWORD(v40) = *(v1 + 14);
  v8 = _swiftEmptyArrayStorage;
  v44 = v5;
  do
  {
    v9 = v77 + v7;
    v10 = (*(v77 + v7 + 33) & v48);
    if ((*(v77 + v7 + 32) & v48) != 0)
    {
      v11 = *(v9 + 34) | (*(v9 + 36) << 16);
      v12 = *(v9 + 37) | (*(v9 + 39) << 16);
      if ((*(v77 + v7 + 33) & v48) != 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100024518(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_100024518((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v16 = &v8[3 * v15];
      v16[34] = BYTE2(v13);
      *(v16 + 16) = v13;
      if (v10)
      {
        v47 = v8;
        *v58 = &type metadata for USBDescriptorControl;
        LOWORD(v55) = v11;
        BYTE2(v55) = BYTE2(v11);
        Mirror.init(reflecting:)();
        v17 = Mirror.children.getter();
        v18 = v17[2];
        v19 = v17[3];
        v20 = v17[4];
        v21 = v17[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v46 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v46 != result)
        {
          __break(1u);
          goto LABEL_39;
        }

        v23 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v23)
        {

          v8 = v47;
          (*v43)(v44, v45);
          goto LABEL_23;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v25 = v55;
        v24 = v56;
        sub_10000CE78(&v57);
        v26 = *v43;
        v8 = v47;
        if (v24)
        {
          v26(v44, v45);
          if (v25 == 0x656C62616E65 && v24 == 0xE600000000000000)
          {

            goto LABEL_3;
          }
        }

        else
        {
          v26(v44, v45);
LABEL_23:
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          sub_10009B498(&v55, 12);
        }
      }
    }

    else if ((*(v77 + v7 + 33) & v48) != 0)
    {
      sub_10009B498(&v55, 13);
    }

LABEL_3:
    v7 += 8;
  }

  while (v7 != 32);

  v28 = v74;
  v29 = v74[2];
  if (v29)
  {
    v47 = v8;
    v30 = sub_1001193F0(v29, 0);
    v31 = sub_10011B610(&v55, v30 + 32, v29, v28);
    sub_100091D44(v42, &v50);
    result = sub_100022644();
    if (v31 != v29)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    v8 = v47;
    v32 = v42;
  }

  else
  {
    v32 = v42;
    sub_100091D44(v42, &v55);

    v30 = _swiftEmptyArrayStorage;
  }

  v33 = *(v32 + 3);
  v34 = *(v32 + 32);
  v75 = *(v32 + 16);
  v76 = *(v32 + 24);
  if (!*(v8 + 2))
  {

    v8 = 0;
  }

  *(v71 + 5) = v75;
  *(&v71[1] + 5) = v76;
  if (!v30[2])
  {

    v30 = 0;
  }

  v73 = 0;
  if (HIDWORD(v40))
  {
    v35 = HIDWORD(v40);
  }

  else
  {
    v35 = -65536;
  }

  *&v50 = 0;
  BYTE8(v50) = 0;
  *(&v50 + 9) = *v72;
  HIDWORD(v50) = *&v72[3];
  *&v51[0] = v33;
  WORD4(v51[0]) = v35;
  *(v51 + 11) = v71[0];
  *(&v51[1] + 2) = *(v71 + 7);
  HIWORD(v51[1]) = v70;
  *(&v51[1] + 10) = v69;
  HIDWORD(v53) = *&v68[3];
  *(&v53 + 9) = *v68;
  *(&v56 + 1) = *v72;
  HIDWORD(v56) = *&v72[3];
  BYTE10(v51[0]) = BYTE2(v35);
  *&v53 = 0;
  v52 = v34;
  BYTE8(v53) = 0;
  *&v54 = v8;
  *(&v54 + 1) = v30;
  v55 = 0;
  LOBYTE(v56) = 0;
  v57 = v33;
  v58[2] = BYTE2(v35);
  *v58 = v35;
  *&v58[3] = v71[0];
  *&v58[10] = *(v71 + 7);
  v59 = v69;
  v60 = v70;
  v61 = v34;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  *v65 = *v68;
  *&v65[3] = *&v68[3];
  v66 = v8;
  v67 = v30;
  sub_10007651C(&v50, &v49);
  result = sub_100076A28(&v55);
  v36 = v52;
  v37 = v41;
  v41[2] = v51[1];
  v37[3] = v36;
  v38 = v54;
  v37[4] = v53;
  v37[5] = v38;
  v39 = v51[0];
  *v37 = v50;
  v37[1] = v39;
  return result;
}

void sub_10008F008(uint64_t a1)
{
  v3 = sub_1000673AC(*v1 | (*(v1 + 2) << 32) | (*(v1 + 6) << 48));
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      sub_10001EDEC(v5, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  v6 = sub_1000634FC(*(v1 + 7));
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      sub_10001EDEC(v8, v13);
      AnyHashable.hash(into:)();
      sub_10001E070(v13);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  USBDescriptor.hash(into:)(a1, *(v1 + 2), *(v1 + 12));
  v9 = *(v1 + 4);
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

Swift::Int sub_10008F12C()
{
  v1 = v0;
  v2 = *(v0 + 2);
  v3 = *(v1 + 6);
  v4 = *v1;
  Hasher.init(_seed:)();
  v5 = sub_1000673AC(v4 | (v2 << 32) | (v3 << 48));
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      sub_10001EDEC(v7, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v8 = sub_1000634FC(*(v1 + 7));
  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = (v8 + 32);
    do
    {
      sub_10001EDEC(v10, v16);
      AnyHashable.hash(into:)();
      sub_10001E070(v16);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  v11 = *(v1 + 4);
  USBDescriptor.hash(into:)(v17, *(v1 + 2), *(v1 + 12));
  v12 = *(v11 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10008F268()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = v0[2];
  v5 = *(v0 + 12);
  v6 = *(v0 + 13);
  v7 = *(v0 + 14);
  v22 = *(v0 + 2);
  v20 = *(v0 + 25);
  v21 = *(v0 + 24);
  v8 = *(v0 + 4);
  v9 = *v0;
  Hasher.init(_seed:)();
  v10 = sub_1000673AC(v9 | (v1 << 32) | (v2 << 48));
  v11 = *(v10 + 2);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      sub_10001EDEC(v12, v23);
      AnyHashable.hash(into:)();
      sub_10001E070(v23);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  v13 = sub_1000634FC(v3 | (v4 << 8) | (v5 << 40) | (v6 << 48) | (v7 << 56));
  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      sub_10001EDEC(v15, v23);
      AnyHashable.hash(into:)();
      sub_10001E070(v23);
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  USBDescriptor.hash(into:)(v24, v22, v21 | (v20 << 8));
  Hasher._combine(_:)(*(v8 + 16));
  v16 = *(v8 + 16);
  if (v16)
  {
    v17 = (v8 + 32);
    do
    {
      v18 = *v17++;
      Hasher._combine(_:)(v18);
      --v16;
    }

    while (v16);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008F3DC(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a1 + 7);
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v20 = *(a1 + 2);
  v18 = *(a1 + 25);
  v19 = *(a1 + 24);
  v14 = *(a1 + 4);
  v7 = *(a2 + 7);
  v8 = a2[2];
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  v11 = *(a2 + 14);
  v17 = *(a2 + 2);
  v15 = *(a2 + 25);
  v16 = *(a2 + 24);
  v13 = *(a2 + 4);
  if ((sub_10006DFC0(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48), *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48)) & 1) == 0 || (sub_10006C628(v2 | (v3 << 8) | (v4 << 40) | (v5 << 48) | (v6 << 56), v7 | (v8 << 8) | (v9 << 40) | (v10 << 48) | (v11 << 56)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v20, v19 | (v18 << 8), v17, v16 | (v15 << 8)))
  {
    return 0;
  }

  return sub_1000E48EC(v14, v13);
}

uint64_t sub_10008F534@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

  result = sub_1000D5D10(a1, a2, 8);
  if (!v3)
  {
    v7 = sub_1001128D0(a1, 8);
    v9 = v7;
    v10 = v8;
    v11 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v24, 0, 14);
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
        v24[0] = v7;
        LOWORD(v24[1]) = v8;
        BYTE2(v24[1]) = BYTE2(v8);
        BYTE3(v24[1]) = BYTE3(v8);
        BYTE4(v24[1]) = BYTE4(v8);
        BYTE5(v24[1]) = BYTE5(v8);
LABEL_18:
        v21 = v24;
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
          v22 = sub_10010B008(v21, 1);
          sub_10007676C(v9, v10);
          if (v22[2])
          {
            v23 = v22[4];

            *a3 = v23;
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

uint64_t sub_10008F77C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>)
{
  v67 = a4;
  v66 = a3;
  v64 = a1;
  v65 = a2;
  v4 = BYTE5(a1);
  v73 = type metadata accessor for Mirror();
  v5 = *(v73 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v73);
  v71 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v62[-v9];
  sub_100001AB4(&qword_100177178, &qword_100123358);
  inited = swift_initStackObject();
  v12 = 0;
  v13 = 0;
  *(inited + 16) = xmmword_100121960;
  *(inited + 32) = 513;
  v74 = inited + 32;
  *(inited + 36) = 98;
  *(inited + 34) = 257;
  v63 = 98;
  *(inited + 39) = 98;
  *(inited + 37) = 256;
  *(inited + 40) = 2052;
  *(inited + 44) = 96;
  *(inited + 42) = 577;
  *(inited + 47) = 96;
  v68 = inited;
  *(inited + 45) = 576;
  v97 = &_swiftEmptySetSingleton;
  v72 = (v5 + 8);
  v14 = _swiftEmptyArrayStorage;
  v69 = v10;
  v70 = v4;
  while (1)
  {
    v15 = v12;
    v16 = v74 + 8 * v13;
    v17 = (*(v16 + 1) & v4);
    if ((*v16 & v4) != 0)
    {
      break;
    }

    if ((*(v16 + 1) & v4) != 0)
    {
      v32 = 13;
      goto LABEL_26;
    }

LABEL_3:
    v12 = 1;
    v13 = 1;
    if (v15)
    {

      v70 = v14[2];
      if (!v70)
      {
LABEL_40:
        sub_10009B498(&v81, 15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_41;
      }

      v36 = 0;
      v37 = 32;
      v75 = v14;
      while (1)
      {
        if (v36 >= v14[2])
        {
          goto LABEL_56;
        }

        v98 = v36;
        v74 = v37;
        v38 = *(v14 + v37);
        v39 = *(v14 + v37 + 2);
        v84 = &type metadata for USBDescriptorControl;
        BYTE2(v81) = v39;
        LOWORD(v81) = v38;
        Mirror.init(reflecting:)();
        v40 = Mirror.children.getter();
        v41 = v40[2];
        v14 = v40[3];
        v43 = v40[4];
        v42 = v40[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v44 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        if (v44 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_57;
        }

        v45 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v45)
        {
          break;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v48 = v81;
        v47 = v82;
        sub_10000CE78(&v83);
        v46 = *v72;
        if (!v47)
        {
          goto LABEL_37;
        }

        v46(v71, v73);
        v14 = v75;
        if (v48 == 0x636E657571657266 && v47 == 0xE900000000000079)
        {

          goto LABEL_44;
        }

LABEL_38:
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v49)
        {
          goto LABEL_44;
        }

        v36 = v98 + 1;
        v37 = v74 + 3;
        if (v70 == v98 + 1)
        {
          goto LABEL_40;
        }
      }

      v46 = *v72;
LABEL_37:
      v14 = v75;
      v46(v71, v73);

      goto LABEL_38;
    }
  }

  LODWORD(v98) = v15;
  v18 = *(v16 + 2) | (*(v16 + 4) << 16);
  v19 = *(v16 + 5) | (*(v16 + 7) << 16);
  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_100024518(0, v14[2] + 1, 1, v14);
  }

  v22 = v14[2];
  v21 = v14[3];
  if (v22 >= v21 >> 1)
  {
    v14 = sub_100024518((v21 > 1), v22 + 1, 1, v14);
  }

  v14[2] = v22 + 1;
  v23 = v14 + 3 * v22;
  v23[34] = BYTE2(v20);
  *(v23 + 16) = v20;
  if (!v17)
  {
    LOBYTE(v15) = v98;
    goto LABEL_3;
  }

  v75 = v14;
  v84 = &type metadata for USBDescriptorControl;
  LOWORD(v81) = v18;
  BYTE2(v81) = BYTE2(v18);
  Mirror.init(reflecting:)();
  v14 = Mirror.children.getter();
  v25 = v14[2];
  v24 = v14[3];
  v27 = v14[4];
  v26 = v14[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  if (v28 == dispatch thunk of _AnyIndexBox._typeID.getter())
  {
    v29 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v29)
    {

      v30 = *v72;
      v14 = v75;
      v31 = v69;
      LOBYTE(v4) = v70;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v34 = v81;
      v33 = v82;
      sub_10000CE78(&v83);
      v30 = *v72;
      v31 = v69;
      LOBYTE(v4) = v70;
      if (v33)
      {
        v30(v69, v73);
        v14 = v75;
        LOBYTE(v15) = v98;
        if (v34 == 0x79746964696C6176 && v33 == 0xE800000000000000)
        {

LABEL_25:
          v32 = 12;
LABEL_26:
          sub_10009B498(&v81, v32);
          goto LABEL_3;
        }

        goto LABEL_24;
      }

      v14 = v75;
    }

    LOBYTE(v15) = v98;
    v30(v31, v73);

LABEL_24:
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_25;
    }

    goto LABEL_3;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  v14 = sub_100024518(0, v14[2] + 1, 1, v14);
LABEL_41:
  v51 = v14[2];
  v50 = v14[3];
  if (v51 >= v50 >> 1)
  {
    v14 = sub_100024518((v50 > 1), v51 + 1, 1, v14);
  }

  v14[2] = v51 + 1;
  v52 = v14 + 3 * v51;
  v52[34] = v63;
  *(v52 + 16) = 256;
LABEL_44:
  v53 = v97;
  v54 = v97[2];
  if (v54)
  {
    v55 = sub_1001193F0(v97[2], 0);
    v56 = sub_10011B610(&v81, v55 + 32, v54, v53);
    result = sub_100022644();
    if (v56 == v54)
    {
      if (v14[2])
      {
        goto LABEL_47;
      }

LABEL_53:

      v14 = 0;
      if (!v55[2])
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {

    v55 = _swiftEmptyArrayStorage;
    if (!v14[2])
    {
      goto LABEL_53;
    }

LABEL_47:
    if (!v55[2])
    {
LABEL_54:

      v55 = 0;
    }

LABEL_48:
    if (HIBYTE(v64))
    {
      v58 = HIBYTE(v64);
    }

    else
    {
      v58 = -65536;
    }

    LOWORD(v77) = v58;
    *(&v77 + 3) = v95;
    BYTE7(v77) = v96;
    *(&v78 + 10) = v93;
    HIWORD(v78) = v94;
    *(&v80 + 2) = v91;
    WORD3(v80) = v92;
    BYTE2(v77) = BYTE2(v58);
    *(&v77 + 1) = BYTE3(v64);
    *&v78 = v65;
    WORD4(v78) = v66;
    *&v79 = v55;
    *(&v79 + 1) = v14;
    LOBYTE(v80) = (v64 & 0x300000000) != 0;
    BYTE1(v80) = (v64 & 0x400000000) != 0;
    *(&v80 + 1) = BYTE6(v64);
    BYTE2(v81) = BYTE2(v58);
    LOWORD(v81) = v58;
    *(&v81 + 3) = v95;
    HIBYTE(v81) = v96;
    v82 = BYTE3(v64);
    v83 = v65;
    LOWORD(v84) = v66;
    HIWORD(v84) = v94;
    *(&v84 + 2) = v93;
    v85 = v55;
    v86 = v14;
    v87 = v80;
    v89 = v92;
    v88 = v91;
    v90 = BYTE6(v64);
    sub_10002C080(&v77, &v76);
    result = sub_1000383FC(&v81);
    v59 = v78;
    v60 = v67;
    *v67 = v77;
    v60[1] = v59;
    v61 = v80;
    v60[2] = v79;
    v60[3] = v61;
  }

  return result;
}

uint64_t sub_100090040@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t (*a4)(void *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_38;
  }

  result = sub_1000D5D10(a1, a2, 5);
  if (v5)
  {
    return result;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_1001128D0(a1, 5);
  v16 = v14;
  v17 = v15;
  v18 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v18 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_17;
    }

    v19 = *(v14 + 16);
    v20 = __DataStorage._bytes.getter();
    if (v20)
    {
      v21 = v20;
      v22 = __DataStorage._offset.getter();
      if (__OFSUB__(v19, v22))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v23 = (v19 - v22 + v21);
      __DataStorage._length.getter();
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_70;
  }

  if (v18)
  {
    if (v14 > v14 >> 32)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v24 = __DataStorage._bytes.getter();
    if (v24)
    {
      v25 = v24;
      v26 = __DataStorage._offset.getter();
      if (__OFSUB__(v16, v26))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v23 = (v16 - v26 + v25);
      __DataStorage._length.getter();
      if (v23)
      {
LABEL_15:
        v27 = v23;
        goto LABEL_18;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_70:
    __DataStorage._length.getter();
    __break(1u);
    goto LABEL_71;
  }

  v70[0] = v14;
  LOWORD(v70[1]) = v15;
  BYTE2(v70[1]) = BYTE2(v15);
  BYTE3(v70[1]) = BYTE3(v15);
  BYTE4(v70[1]) = BYTE4(v15);
  BYTE5(v70[1]) = BYTE5(v15);
LABEL_17:
  v27 = v70;
LABEL_18:
  v28 = a3(v27, 1);
  sub_10007676C(v16, v17);
  if (!*(v28 + 16))
  {
    __break(1u);
    goto LABEL_58;
  }

  v6.i32[0] = *(v28 + 32);
  v29 = *(v28 + 36);

  if (v12)
  {
    sub_1000D5D10(v12, v13, v29);
    v31 = v30;
    v33 = v32;
    v34 = sub_1001128D0(v12, v29);
    v36 = v34;
    v37 = v35;
    v38 = v35 >> 62;
    if ((v35 >> 62) <= 1)
    {
      if (!v38)
      {
        v70[0] = v34;
        LOWORD(v70[1]) = v35;
        BYTE2(v70[1]) = BYTE2(v35);
        BYTE3(v70[1]) = BYTE3(v35);
        BYTE4(v70[1]) = BYTE4(v35);
        BYTE5(v70[1]) = BYTE5(v35);
LABEL_34:
        v47 = v70;
        goto LABEL_35;
      }

      if (v34 <= v34 >> 32)
      {
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v45 = v44;
          v46 = __DataStorage._offset.getter();
          if (!__OFSUB__(v36, v46))
          {
            v43 = (v36 - v46 + v45);
            __DataStorage._length.getter();
            if (v43)
            {
              goto LABEL_32;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_74:
        __DataStorage._length.getter();
        __break(1u);
        goto LABEL_75;
      }

      goto LABEL_61;
    }

    if (v38 != 2)
    {
      memset(v70, 0, 14);
      goto LABEL_34;
    }

    v39 = *(v34 + 16);
    v40 = __DataStorage._bytes.getter();
    if (v40)
    {
      v41 = v40;
      v42 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v42))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v43 = (v39 - v42 + v41);
      __DataStorage._length.getter();
      if (v43)
      {
LABEL_32:
        v47 = v43;
LABEL_35:
        v48 = sub_10010AC70(v47, v29);
        sub_10007676C(v36, v37);
        if (v31)
        {
          sub_1000D5D10(v31, v33, 2);
          v50 = sub_1001128D0(v31, 2);
          v52 = v50;
          v53 = v51;
          v54 = v51 >> 62;
          if ((v51 >> 62) <= 1)
          {
            v55 = a4;
            if (!v54)
            {
              v70[0] = v50;
              LOWORD(v70[1]) = v51;
              BYTE2(v70[1]) = BYTE2(v51);
              BYTE3(v70[1]) = BYTE3(v51);
              BYTE4(v70[1]) = BYTE4(v51);
              BYTE5(v70[1]) = BYTE5(v51);
              v56 = v70;
              goto LABEL_55;
            }

            if (v50 > v50 >> 32)
            {
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v62 = __DataStorage._bytes.getter();
            if (v62)
            {
              v63 = v62;
              v64 = __DataStorage._offset.getter();
              if (__OFSUB__(v52, v64))
              {
                goto LABEL_67;
              }

              v61 = (v52 - v64 + v63);
              result = __DataStorage._length.getter();
              if (v61)
              {
LABEL_52:
                v56 = v61;
LABEL_54:
                v55 = a4;
LABEL_55:
                v65 = v55(v56, 1);
                sub_10007676C(v52, v53);
                if (*(v65 + 16))
                {
                  v69 = vmovl_u8(v6).u64[0];
                  v66 = *(v65 + 32);

                  *a5 = vuzp1_s8(v69, v69).u32[0];
                  *(a5 + 4) = v29;
                  *(a5 + 8) = v48;
                  *(a5 + 16) = v66;
                  return result;
                }

                goto LABEL_64;
              }

              goto LABEL_79;
            }

LABEL_78:
            result = __DataStorage._length.getter();
            __break(1u);
LABEL_79:
            __break(1u);
            return result;
          }

          if (v54 != 2)
          {
            memset(v70, 0, 14);
            v56 = v70;
            goto LABEL_54;
          }

          v57 = *(v50 + 16);
          v58 = __DataStorage._bytes.getter();
          if (v58)
          {
            v59 = v58;
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v57, v60))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v61 = (v57 - v60 + v59);
            __DataStorage._length.getter();
            if (v61)
            {
              goto LABEL_52;
            }

            goto LABEL_77;
          }

LABEL_76:
          __DataStorage._length.getter();
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_72:
    __DataStorage._length.getter();
    goto LABEL_73;
  }

LABEL_38:
  sub_10000CA2C();
  swift_allocError();
  *v49 = 57;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_100090628@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v30 = &_swiftEmptySetSingleton;
  v8 = BYTE4(a1);
  if (((a1 >> 40) & 1) == 0)
  {
    sub_10009B498(&v25, 14);
    if (v8)
    {
      LOWORD(v9) = 1;
      v10 = *(a4 + 16);
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1000920FC(&v26, &v25);
      goto LABEL_11;
    }

LABEL_21:

    sub_10000CA2C();
    swift_allocError();
    *v24 = 17;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (!BYTE4(a1))
  {
    goto LABEL_21;
  }

  v9 = (BYTE5(a1) >> 1) & 1;
  v10 = *(a4 + 16);
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_4:
  v11 = (a4 + 32);
  sub_1000920FC(&v26, &v25);
  do
  {
    if (!*v11++)
    {
      sub_10009B498(&v25, 50);
    }

    --v10;
  }

  while (v10);
LABEL_11:
  if ((a1 & 0xFF000000000000) != 0)
  {
    v13 = BYTE6(a1);
  }

  else
  {
    v13 = -65536;
  }

  sub_100001AB4(&qword_1001753C8, &unk_100123340);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10011DE90;
  *(v14 + 34) = 80;
  *(v14 + 32) = v9 | 0x140;
  v15 = v30;
  v16 = v30[2];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = sub_1001193F0(v30[2], 0);
  v18 = sub_10011B610(&v25, v17 + 32, v16, v15);
  result = sub_100022644();
  if (v18 != v16)
  {
    __break(1u);
LABEL_17:

    v17 = _swiftEmptyArrayStorage;
  }

  v20 = BYTE3(a1);
  v21 = v27;
  v22 = v28;
  v23 = HIBYTE(v28);
  if (!v17[2])
  {

    v17 = 0;
  }

  *a5 = v13;
  *(a5 + 2) = BYTE2(v13);
  *(a5 + 8) = v20;
  *(a5 + 16) = v21;
  *(a5 + 24) = v22;
  *(a5 + 25) = v23;
  *(a5 + 32) = v17;
  *(a5 + 40) = a4;
  *(a5 + 48) = v14;
  return result;
}

void sub_10009086C(uint64_t a1, unint64_t a2, Swift::UInt a3, __int16 a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(unint64_t))
{
  v13 = a6(a2 & 0xFFFFFFFFFFLL);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 32;
    do
    {
      sub_10001EDEC(v15, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  v16 = a7(a2 >> 40);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + 32;
    do
    {
      sub_10001EDEC(v18, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v18 += 40;
      --v17;
    }

    while (v17);
  }

  USBDescriptor.hash(into:)(a1, a3, a4);
  v19 = *(a5 + 16);
  Hasher._combine(_:)(v19);
  if (v19)
  {
    v20 = (a5 + 32);
    do
    {
      v21 = *v20++;
      Hasher._combine(_:)(v21);
      --v19;
    }

    while (v19);
  }
}

Swift::Int sub_1000909A4(unint64_t a1, Swift::UInt a2, __int16 a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(unint64_t))
{
  Hasher.init(_seed:)();
  v12 = a5(a1 & 0xFFFFFFFFFFLL);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    do
    {
      sub_10001EDEC(v14, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v14 += 40;
      --v13;
    }

    while (v13);
  }

  v15 = a6(a1 >> 40);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_10001EDEC(v17, v22);
      AnyHashable.hash(into:)();
      sub_10001E070(v22);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  USBDescriptor.hash(into:)(v23, a2, a3);
  v18 = *(a4 + 16);
  Hasher._combine(_:)(v18);
  if (v18)
  {
    v19 = (a4 + 32);
    do
    {
      v20 = *v19++;
      Hasher._combine(_:)(v20);
      --v18;
    }

    while (v18);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100090C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = v5[5];
  v11 = v5[6];
  v25 = *(v5 + 1);
  v12 = v5[16];
  v13 = v5[17];
  v14 = *(v5 + 3);
  Hasher.init(_seed:)();
  v15 = a4(v8 | (v9 << 8));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_10001EDEC(v17, v26);
      AnyHashable.hash(into:)();
      sub_10001E070(v26);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v18 = a5(v10 | (v11 << 8));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    do
    {
      sub_10001EDEC(v20, v26);
      AnyHashable.hash(into:)();
      sub_10001E070(v26);
      v20 += 40;
      --v19;
    }

    while (v19);
  }

  USBDescriptor.hash(into:)(v27, v25, v12 | (v13 << 8));
  Hasher._combine(_:)(*(v14 + 16));
  v21 = *(v14 + 16);
  if (v21)
  {
    v22 = (v14 + 32);
    do
    {
      v23 = *v22++;
      Hasher._combine(_:)(v23);
      --v21;
    }

    while (v21);
  }

  return Hasher._finalize()();
}

uint64_t sub_100090D8C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t), uint64_t (*a6)(void, void))
{
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[16];
  v10 = a1[17];
  v18 = *(a1 + 3);
  v19 = *(a1 + 1);
  v11 = a2[5];
  v12 = a2[6];
  v13 = *(a2 + 1);
  v14 = a2[16];
  v15 = a2[17];
  v17 = *(a2 + 3);
  if ((a5(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) == 0 || (a6(v7 | (v8 << 8), v11 | (v12 << 8)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v19, v9 | (v10 << 8), v13, v14 | (v15 << 8)))
  {
    return 0;
  }

  return sub_1000E48EC(v18, v17);
}

void *sub_100090E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = _swiftEmptyArrayStorage;
    sub_100047060(0, v2, 0);
    v5 = 0;
    result = _swiftEmptyArrayStorage;
    v7 = *(a2 + 16);
    v24 = (a2 + 43);
    v25 = a1 + 32;
    v26 = v7;
    v27 = v2;
    while (1)
    {
      v28 = result;
      v29 = v5;
      if (v7)
      {
        break;
      }

      v9 = _swiftEmptyArrayStorage;
LABEL_27:
      result = v28;
      v33 = v28;
      v23 = v28[2];
      v22 = v28[3];
      if (v23 >= v22 >> 1)
      {
        sub_100047060((v22 > 1), v23 + 1, 1);
        result = v33;
      }

      v5 = v29 + 1;
      result[2] = v23 + 1;
      result[v23 + 4] = v9;
      v7 = v26;
      if (v29 + 1 == v27)
      {
        return result;
      }
    }

    v8 = v24;
    v30 = *(v25 + 4 * v5);
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = *(v8 - 7);
      v13 = v12 & v30;
      if ((*(v8 - 11) & v30) != 0)
      {
        v14 = (v8 - 3);
        if (!v13)
        {
          v14 = v8;
        }

        v15 = *(v14 + 2);
        v16 = *v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100024518(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_100024518((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v19 = &v9[3 * v18];
        v19[34] = (v16 | (v15 << 16)) >> 16;
        *(v19 + 16) = v16;
        v21 = v12 == 0x8000000 && v13 != 0;
        if (v12 != 0x20000000 && !v21)
        {
          goto LABEL_7;
        }

        v10 = &v32;
        v11 = 12;
      }

      else
      {
        if (!v13)
        {
          goto LABEL_7;
        }

        v10 = &v31;
        v11 = 13;
      }

      sub_10009B498(v10, v11);
LABEL_7:
      v8 += 8;
      if (!--v7)
      {
        goto LABEL_27;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000910B4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_10006F590(*a1 | (*(a1 + 1) << 8), *a2 | (*(a2 + 1) << 8)) & 1) == 0 || (sub_10006D618(a1[5] | (*(a1 + 6) << 8) | (a1[10] << 40), a2[5] | (*(a2 + 6) << 8) | (a2[10] << 40)) & 1) == 0 || (sub_10006D600(*(a1 + 11), *(a2 + 11)) & 1) == 0 || !_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*(a1 + 2), *(a1 + 12), *(a2 + 2), *(a2 + 12)) || (sub_1000E48EC(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);

  return sub_1000EFF58(v4, v5);
}

uint64_t sub_100091188()
{
  sub_100001AB4(&qword_100175498, &unk_100123320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001215B0;
  *(v0 + 32) = 131073;
  *(v0 + 38) = 0;
  *(v0 + 36) = 257;
  *(v0 + 41) = 0;
  *(v0 + 39) = 256;
  *(v0 + 42) = 524292;
  *(v0 + 48) = 6;
  *(v0 + 46) = 577;
  *(v0 + 51) = 6;
  *(v0 + 49) = 576;
  *(v0 + 52) = 2097168;
  *(v0 + 58) = 0;
  *(v0 + 56) = 897;
  *(v0 + 61) = 0;
  *(v0 + 59) = 896;
  *(v0 + 62) = 8388672;
  *(v0 + 68) = 6;
  *(v0 + 66) = 1217;
  *(v0 + 71) = 6;
  *(v0 + 69) = 1216;
  *(v0 + 72) = 33554688;
  *(v0 + 78) = 16;
  *(v0 + 76) = 1281;
  *(v0 + 81) = 16;
  *(v0 + 79) = 1280;
  *(v0 + 82) = 134218752;
  *(v0 + 88) = 16;
  *(v0 + 86) = 1601;
  *(v0 + 91) = 16;
  *(v0 + 89) = 1600;
  v15 = v0;
  if (qword_100173CF8 != -1)
  {
    v13 = v0;
    swift_once();
    v0 = v13;
  }

  v1 = qword_100179640;
  v2 = *(qword_100179640 + 16);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v0;
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {

    memset(v14, 0, sizeof(v14));
    sub_100022ADC(v14);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100022ADC(v14);
  v7 = *(v1 + 16);
  if (!v7)
  {
    return v3;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  result = v3;
  if (v10)
  {
LABEL_9:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 536875008;
    *(inited + 36) = 2177;
    *(inited + 38) = 16;
    *(inited + 39) = 2176;
    *(inited + 41) = 16;
    sub_10007E094(inited);
    return v15;
  }

  return result;
}

uint64_t sub_100091464@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
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
      v48[0] = v7;
      LOWORD(v48[1]) = v8;
      BYTE2(v48[1]) = BYTE2(v8);
      BYTE3(v48[1]) = BYTE3(v8);
      BYTE4(v48[1]) = BYTE4(v8);
      BYTE5(v48[1]) = BYTE5(v8);
      v12 = v48 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v46 = v5;
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
    memset(v48, 0, 14);
    v12 = v48;
LABEL_26:
    sub_10008C400(v48, v12, &v49);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v46 = v5;
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

  sub_10008C400(v15, v25, &v49);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v46;
LABEL_27:
  v27.i32[0] = v49;
  v42 = vmovl_u8(v27).u64[0];
  v28 = BYTE4(v49);
  v29 = v50;
  v44 = v52;
  v45 = v51;
  v43 = v53;
  v30 = v54;
  v40 = v56;
  v41 = v55;
  v31 = *(v50 + 16);
  if (v31)
  {
    v37 = BYTE4(v49);
    v38 = v54;
    v47 = v5;
    v39 = v4;
    v49 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v49;
    v33 = v49[2];
    v34 = 32;
    do
    {
      v35 = *(v29 + v34);
      v49 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v49;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v4 = v39;
    v5 = v47;
    v30 = v38;
    v28 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v42, v42).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 5) = v45;
  *(a3 + 6) = v44;
  *(a3 + 10) = v43;
  *(a3 + 11) = v41;
  *(a3 + 12) = v40;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  *(a3 + 40) = v30;
  return result;
}

uint64_t sub_100091894()
{
  sub_100001AB4(&qword_1001754A0, &qword_100120F40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001228B0;
  *(v0 + 32) = 0x200000001;
  *(v0 + 42) = 16;
  *(v0 + 40) = 449;
  *(v0 + 45) = 16;
  *(v0 + 43) = 448;
  *(v0 + 48) = 0x800000004;
  *(v0 + 58) = 33;
  *(v0 + 56) = 513;
  *(v0 + 61) = 33;
  *(v0 + 59) = 512;
  *(v0 + 64) = 0x2000000010;
  *(v0 + 74) = 32;
  *(v0 + 72) = 833;
  *(v0 + 77) = 32;
  *(v0 + 75) = 832;
  *(v0 + 80) = 0x8000000040;
  *(v0 + 90) = 32;
  *(v0 + 88) = 1153;
  *(v0 + 93) = 32;
  *(v0 + 91) = 1152;
  *(v0 + 96) = 0x20000000100;
  *(v0 + 106) = 32;
  *(v0 + 104) = 1473;
  *(v0 + 109) = 32;
  *(v0 + 107) = 1472;
  *(v0 + 112) = 0x80000000400;
  *(v0 + 122) = 48;
  *(v0 + 120) = 1537;
  *(v0 + 125) = 48;
  *(v0 + 123) = 1536;
  *(v0 + 128) = 0x200000001000;
  *(v0 + 138) = 48;
  *(v0 + 136) = 1857;
  *(v0 + 141) = 48;
  *(v0 + 139) = 1856;
  *(v0 + 144) = 0x800000004000;
  *(v0 + 154) = 50;
  *(v0 + 152) = 2177;
  *(v0 + 157) = 50;
  *(v0 + 155) = 2176;
  *(v0 + 160) = 0x2000000010000;
  *(v0 + 170) = 48;
  *(v0 + 168) = 2497;
  *(v0 + 173) = 48;
  *(v0 + 171) = 2496;
  *(v0 + 176) = 0x8000000040000;
  *(v0 + 186) = 64;
  *(v0 + 184) = 2561;
  *(v0 + 189) = 64;
  *(v0 + 187) = 2560;
  *(v0 + 192) = 0x20000000100000;
  *(v0 + 202) = 65;
  *(v0 + 200) = 2881;
  *(v0 + 205) = 65;
  *(v0 + 203) = 2880;
  *(v0 + 208) = 0x80000000400000;
  *(v0 + 218) = 65;
  *(v0 + 216) = 3201;
  *(v0 + 221) = 65;
  *(v0 + 219) = 3200;
  *(v0 + 224) = 0x200000001000000;
  *(v0 + 234) = 64;
  *(v0 + 232) = 3521;
  *(v0 + 237) = 64;
  *(v0 + 235) = 3520;
  *(v0 + 240) = 0x800000004000000;
  *(v0 + 250) = 16;
  *(v0 + 248) = 3585;
  *(v0 + 253) = 16;
  *(v0 + 251) = 3584;
  *(v0 + 256) = 0x2000000010000000;
  *(v0 + 266) = 16;
  *(v0 + 264) = 3905;
  *(v0 + 269) = 16;
  *(v0 + 267) = 3904;
  v15 = v0;
  if (qword_100173CF8 != -1)
  {
    v13 = v0;
    swift_once();
    v0 = v13;
  }

  v1 = qword_100179640;
  v2 = *(qword_100179640 + 16);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v0;
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {

    memset(v14, 0, sizeof(v14));
    sub_100022ADC(v14);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100022ADC(v14);
  v7 = *(v1 + 16);
  if (!v7)
  {
    return v3;
  }

  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  result = v3;
  if (v10)
  {
LABEL_9:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    *(inited + 32) = 0x8000000040000000;
    *(inited + 42) = 80;
    *(inited + 40) = 4353;
    *(inited + 45) = 80;
    *(inited + 43) = 4352;
    sub_10007E188(inited);
    return v15;
  }

  return result;
}

uint64_t sub_100091D7C@<X0>(_BYTE *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
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
      v48[0] = v7;
      LOWORD(v48[1]) = v8;
      BYTE2(v48[1]) = BYTE2(v8);
      BYTE3(v48[1]) = BYTE3(v8);
      BYTE4(v48[1]) = BYTE4(v8);
      BYTE5(v48[1]) = BYTE5(v8);
      v12 = v48 + BYTE6(v8);
      goto LABEL_26;
    }

    v21 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v46 = v5;
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
    memset(v48, 0, 14);
    v12 = v48;
LABEL_26:
    sub_10008E3A8(v48, v12, &v49);
    result = sub_100076B24(v9, v10);
    if (v3)
    {
      return result;
    }

    goto LABEL_27;
  }

  v46 = v5;
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

  sub_10008E3A8(v15, v25, &v49);
  result = sub_100076B24(v9, v10);
  if (v3)
  {
    return result;
  }

  v5 = v46;
LABEL_27:
  v27.i32[0] = v49;
  v40 = vmovl_u8(v27).u64[0];
  v28 = WORD2(v49);
  v29 = BYTE6(v49);
  v30 = v50;
  v44 = v52;
  v45 = v51;
  v42 = v54;
  v43 = v53;
  v41 = v55;
  v31 = *(v50 + 16);
  if (v31)
  {
    v37 = BYTE6(v49);
    v38 = WORD2(v49);
    v47 = v5;
    v39 = v4;
    v49 = _swiftEmptyArrayStorage;
    sub_100047030(0, v31, 0);
    v32 = v49;
    v33 = v49[2];
    v34 = 32;
    do
    {
      v35 = *(v30 + v34);
      v49 = v32;
      v36 = v32[3];
      if (v33 >= v36 >> 1)
      {
        sub_100047030((v36 > 1), v33 + 1, 1);
        v32 = v49;
      }

      v32[2] = v33 + 1;
      v32[v33 + 4] = v35;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);

    v28 = v38;
    v4 = v39;
    v5 = v47;
    v29 = v37;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  *a3 = vuzp1_s8(v40, v40).u32[0];
  *(a3 + 4) = v28;
  *(a3 + 6) = v29;
  *(a3 + 7) = v45;
  *(a3 + 8) = v44;
  *(a3 + 12) = v43;
  *(a3 + 13) = v42;
  *(a3 + 14) = v41;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *(a3 + 32) = v32;
  return result;
}

uint64_t sub_1000921A8(_BYTE *a1, __int16 a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(void *, uint64_t))
{
  v7 = sub_1000A60F8(a1, a2);
  if (v8 >> 60 == 15)
  {
LABEL_45:
    __break(1u);
  }

  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v11)
    {
      v45[0] = v7;
      LOWORD(v45[1]) = v8;
      BYTE2(v45[1]) = BYTE2(v8);
      BYTE3(v45[1]) = BYTE3(v8);
      BYTE4(v45[1]) = BYTE4(v8);
      BYTE5(v45[1]) = BYTE5(v8);
      v12 = v45 + BYTE6(v8);
      goto LABEL_31;
    }

    v24 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v25 = __DataStorage._bytes.getter();
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = __DataStorage._offset.getter();
      if (!__OFSUB__(v9, v26))
      {
        v25 += v9 - v26;
LABEL_22:
        v27 = __DataStorage._length.getter();
        if (v27 >= v24)
        {
          v28 = (v9 >> 32) - v9;
        }

        else
        {
          v28 = v27;
        }

        v29 = &v25[v28];
        if (v25)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        sub_100090040(v25, v30, a3, a4, &v46);
        result = sub_100076B24(v9, v10);
        if (v4)
        {
          return result;
        }

        goto LABEL_33;
      }

      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v11 == 2)
  {
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    v15 = __DataStorage._bytes.getter();
    if (v15)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v13, v16))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      v19 = __DataStorage._length.getter();
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      v21 = &v15[v20];
      if (v15)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      sub_100090040(v15, v22, a3, a4, &v46);
      result = sub_100076B24(v9, v10);
      if (v4)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  memset(v45, 0, 14);
  v12 = v45;
LABEL_31:
  sub_100090040(v45, v12, a3, a4, &v46);
  result = sub_100076B24(v9, v10);
  if (v4)
  {
    return result;
  }

LABEL_33:
  v31 = v46;
  v32 = BYTE4(v46);
  v33 = v47;
  v34 = v48;
  v44 = v49;
  v35 = *(v47 + 16);
  if (v35)
  {
    v41 = v48;
    v42 = BYTE4(v46);
    v43 = v46;
    v46 = _swiftEmptyArrayStorage;
    sub_100047030(0, v35, 0);
    v36 = v46;
    v37 = v46[2];
    v38 = 32;
    do
    {
      v39 = *(v33 + v38);
      v46 = v36;
      v40 = v36[3];
      if (v37 >= v40 >> 1)
      {
        sub_100047030((v40 > 1), v37 + 1, 1);
        v36 = v46;
      }

      v36[2] = v37 + 1;
      v36[v37 + 4] = v39;
      ++v38;
      ++v37;
      --v35;
    }

    while (v35);

    v32 = v42;
    v31 = v43;
    v34 = v41;
  }

  else
  {
  }

  return v31 | (v32 << 32) | (v34 << 40) | (v44 << 48);
}

__n128 sub_100092540(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100092560(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000925AC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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