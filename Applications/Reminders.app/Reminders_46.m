uint64_t assignWithCopy for TTRIBoardColumnSelectionRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnSelectionRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnSelectionRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnSelectionRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100506F2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_100506FC4(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 1) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t sub_100507094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

uint64_t sub_1005070FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *(*(v5 + 40) + a1) = *(*(v5 + 40) + a2);
  return a1;
}

uint64_t sub_100507164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t sub_1005071CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *(*(v5 + 24) + a1) = *(*(v5 + 24) + a2);
  return a1;
}

uint64_t sub_100507234(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1005073A8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

Class sub_1005075EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100003540(0, &qword_10076C550);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

NSString sub_100507684()
{
  result = String._bridgeToObjectiveC()();
  qword_10078A110 = result;
  return result;
}

NSString sub_1005076BC()
{
  result = String._bridgeToObjectiveC()();
  qword_10078A118 = result;
  return result;
}

NSString sub_1005076F4()
{
  result = String._bridgeToObjectiveC()();
  qword_10078A120 = result;
  return result;
}

NSString sub_10050772C()
{
  result = String._bridgeToObjectiveC()();
  qword_10078A128 = result;
  return result;
}

NSString sub_100507764()
{
  result = String._bridgeToObjectiveC()();
  qword_10078A130 = result;
  return result;
}

NSString sub_10050779C()
{
  result = String._bridgeToObjectiveC()();
  qword_10078A138 = result;
  return result;
}

void *sub_1005077D4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      for (i = v4; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v2 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(a1 + 8 * i + 32);
        }

        v7 = v6;
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          break;
        }

        v9 = v8;
        v10 = v7;
        [v9 action];
        v11 = static Selector.== infix(_:_:)();

        if ((v11 & 1) == 0)
        {
          v12 = v10;
          [v9 action];
          v13 = static Selector.== infix(_:_:)();

          if (v13)
          {
            v14._countAndFlagsBits = 0xD000000000000040;
            v14._object = 0x800000010068B720;
            v15._countAndFlagsBits = 0x6574656C6544;
            v15._object = 0xE600000000000000;
            TTRLocalizedString(_:comment:)(v15, v14);
            sub_100003540(0, &unk_10076BAB0);
            v16 = String._bridgeToObjectiveC()();
            v17 = [objc_opt_self() _systemImageNamed:v16];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v18._object = 0x800000010068B770;
            v19._countAndFlagsBits = 0x6574656C6544;
            v19._object = 0xE600000000000000;
            v18._countAndFlagsBits = 0xD000000000000038;
            TTRLocalizedString(_:comment:)(v19, v18);
            UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
          }

          break;
        }

        if (v4 == v3)
        {
          return _swiftEmptyArrayStorage;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v4 != v3);
  }

  return _swiftEmptyArrayStorage;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100507AD4()
{

  v0._countAndFlagsBits = 0xD00000000000003FLL;
  v0._object = 0x800000010068B6C0;
  v1._countAndFlagsBits = 0x6445207472617453;
  v1._object = 0xED0000676E697469;
  TTRLocalizedString(_:comment:)(v1, v0);
  sub_100003540(0, &unk_10076BAB0);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  static UIKeyCommand.inputReturn.getter();
  v4._countAndFlagsBits = 0xD000000000000037;
  v4._object = 0x8000000100683A80;
  v5._countAndFlagsBits = 0x6445207472617453;
  v5._object = 0xED0000676E697469;
  TTRLocalizedString(_:comment:)(v5, v4);
  v6 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  *(inited + 32) = v6;
  sub_1000815D0(inited);
}

Class sub_100507C90()
{
  sub_100003540(0, &unk_10076BD00);
  v0._countAndFlagsBits = 0xD000000000000042;
  v0._object = 0x800000010068B3B0;
  v1._countAndFlagsBits = 1701736270;
  v1._object = 0xE400000000000000;
  TTRLocalizedString(_:comment:)(v1, v0);
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 _systemImageNamed:v2];

  v5._countAndFlagsBits = 0xD00000000000003ALL;
  v5._object = 0x800000010068B400;
  v6._countAndFlagsBits = 1701736270;
  v6._object = 0xE400000000000000;
  v7 = TTRLocalizedString(_:comment:)(v6, v5);
  v78 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076BAB0);
  v8._countAndFlagsBits = 0x7961646F54;
  v9._countAndFlagsBits = 0xD000000000000046;
  v9._object = 0x800000010068B440;
  v8._object = 0xE500000000000000;
  TTRLocalizedString(_:comment:)(v8, v9);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v3 _systemImageNamed:{v10, _swiftEmptyArrayStorage, v7._countAndFlagsBits, v7._object, 0, 0}];

  v12._countAndFlagsBits = 0x65754420656B614DLL;
  v12._object = 0xEE007961646F5420;
  v13._countAndFlagsBits = 0xD00000000000003ELL;
  v13._object = 0x8000000100677B40;
  v14 = TTRLocalizedString(_:comment:)(v12, v13);
  v76 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v15._countAndFlagsBits = 0x776F72726F6D6F54;
  v16._countAndFlagsBits = 0xD000000000000049;
  v16._object = 0x800000010068B490;
  v15._object = 0xE800000000000000;
  TTRLocalizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v3 _systemImageNamed:{v17, _swiftEmptyArrayStorage, v14._countAndFlagsBits, v14._object, 0, 0}];

  v19._countAndFlagsBits = 0xD000000000000011;
  v19._object = 0x8000000100677AD0;
  v20._countAndFlagsBits = 0xD000000000000041;
  v20._object = 0x8000000100677AF0;
  v21 = TTRLocalizedString(_:comment:)(v19, v20);
  v74 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v22._countAndFlagsBits = 0x646E656B656557;
  v23._countAndFlagsBits = 0xD00000000000004DLL;
  v23._object = 0x800000010068B4E0;
  v22._object = 0xE700000000000000;
  TTRLocalizedString(_:comment:)(v22, v23);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v3 _systemImageNamed:{v24, _swiftEmptyArrayStorage, v21._countAndFlagsBits, v21._object, 0, 0}];

  v26._countAndFlagsBits = 0xD000000000000015;
  v26._object = 0x8000000100677A60;
  v27._countAndFlagsBits = 0xD000000000000045;
  v27._object = 0x8000000100677A80;
  v28 = TTRLocalizedString(_:comment:)(v26, v27);
  v72 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v29._countAndFlagsBits = 0x656557207478654ELL;
  v30._countAndFlagsBits = 0xD00000000000004DLL;
  v30._object = 0x800000010068B4E0;
  v29._object = 0xE90000000000006BLL;
  TTRLocalizedString(_:comment:)(v29, v30);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v3 _systemImageNamed:{v31, _swiftEmptyArrayStorage, v28._countAndFlagsBits, v28._object, 0, 0}];

  v33._countAndFlagsBits = 0xD000000000000012;
  v33._object = 0x8000000100677980;
  v34._countAndFlagsBits = 0xD000000000000042;
  v34._object = 0x80000001006779A0;
  v35 = TTRLocalizedString(_:comment:)(v33, v34);
  v36 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v37._countAndFlagsBits = 0xD000000000000019;
  v37._object = 0x800000010068B530;
  v38._countAndFlagsBits = 0xD0000000000000A4;
  v38._object = 0x800000010068B550;
  TTRLocalizedString(_:comment:)(v37, v38);
  v39 = String._bridgeToObjectiveC()();
  v40 = [v3 _systemImageNamed:{v39, _swiftEmptyArrayStorage, v35._countAndFlagsBits, v35._object, 0, 0}];

  v41._countAndFlagsBits = 0xD000000000000019;
  v41._object = 0x800000010068B530;
  v42._countAndFlagsBits = 0xD000000000000058;
  v42._object = 0x800000010068B620;
  childrena = TTRLocalizedString(_:comment:)(v41, v42)._countAndFlagsBits;
  v43 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D450;
  *(preferredElementSize + 32) = v76;
  *(preferredElementSize + 40) = v74;
  *(preferredElementSize + 48) = v72;
  *(preferredElementSize + 56) = v36;
  v77 = v76;
  v75 = v74;
  v73 = v72;
  v71 = v36;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v80.value.super.isa = 0;
  v80.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v80, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, childrena).super.super.isa;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1006322B0;
  *(v47 + 32) = v78;
  *(v47 + 40) = isa;
  *(v47 + 48) = v43;
  v69 = v78;
  v79 = isa;
  v70 = v43;
  v48._object = 0x800000010068B680;
  v49._countAndFlagsBits = 0xD00000000000001FLL;
  v49._object = 0x800000010068B6A0;
  v48._countAndFlagsBits = 0xD000000000000010;
  v50 = TTRLocalizedString(_:comment:)(v48, v49);
  v51 = String._bridgeToObjectiveC()();
  v52 = [v3 _systemImageNamed:v51];

  v81.value.super.isa = v52;
  v81.is_nil = 0;
  v53.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v50, 0, v81, 0, 0xFFFFFFFFFFFFFFFFLL, v47, childrenb).super.super.isa;
  v54._countAndFlagsBits = 0xD000000000000011;
  v54._object = 0x8000000100678450;
  v55._countAndFlagsBits = 0xD000000000000032;
  v55._object = 0x8000000100683920;
  countAndFlagsBits = TTRLocalizedString(_:comment:)(v54, v55)._countAndFlagsBits;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v3 _systemImageNamed:v57];

  children._rawValue = countAndFlagsBits;
  v59 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1007673F8 != -1)
  {
    swift_once();
  }

  v60 = qword_10078A110;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10062D410;
  *(v61 + 32) = v53;
  *(v61 + 40) = v59;
  v62 = v60;
  v63._countAndFlagsBits = 0;
  v63._object = 0xE000000000000000;
  v82.value.super.isa = 0;
  v82.is_nil = v60;
  v64 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v63, 0, v82, 1, 0xFFFFFFFFFFFFFFFFLL, v61, children).super.super.isa;

  return v64;
}

Class sub_1005085C8()
{
  v0._countAndFlagsBits = 0xD000000000000025;
  v0._object = 0x80000001006837A0;
  v1._countAndFlagsBits = 1734437958;
  v1._object = 0xE400000000000000;
  TTRLocalizedString(_:comment:)(v1, v0);
  sub_100003540(0, &unk_10076BAB0);
  v2 = String._bridgeToObjectiveC()();
  v35 = objc_opt_self();
  v3 = [v35 _systemImageNamed:v2];

  v36 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  REMReminderPriorityLevel.localizedString.getter();
  sub_100003540(0, &unk_10076BD00);
  REMReminderPriorityLevel.image.getter();
  v34 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v4 = static REMReminderPriorityLevel.allCases.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v10 = *v6++;
      v9 = v10;
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1004A24D0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v8 = _swiftEmptyArrayStorage[2];
        v7 = _swiftEmptyArrayStorage[3];
        if (v8 >= v7 >> 1)
        {
          sub_1004A24D0((v7 > 1), v8 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v8 + 1;
        _swiftEmptyArrayStorage[v8 + 4] = v9;
      }

      --v5;
    }

    while (v5);
  }

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = 32;
    do
    {
      REMReminderPriorityLevel.localizedString.getter();
      REMReminderPriorityLevel.image.getter();
      UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 8;
      --v11;
    }

    while (v11);

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100003540(0, &qword_10076C550);
      preferredElementSize = _swiftEmptyArrayStorage;
      goto LABEL_15;
    }
  }

  sub_100003540(0, &qword_10076C550);

  preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_15:

  sub_100003540(0, &unk_10076B890);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v37, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  sub_100058000(&qword_10076B780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10062D410;
  *(v16 + 32) = v34;
  *(v16 + 40) = isa;
  v17 = v34;
  v18 = isa;
  v19._countAndFlagsBits = 0x797469726F697250;
  v20._countAndFlagsBits = 0xD000000000000029;
  v20._object = 0x800000010068B300;
  v19._object = 0xE800000000000000;
  v21 = TTRLocalizedString(_:comment:)(v19, v20);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v35 _systemImageNamed:v22];

  v38.value.super.isa = v23;
  v38.is_nil = 0;
  v24.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v38, 0, 0xFFFFFFFFFFFFFFFFLL, v16, childrena).super.super.isa;
  if (qword_100767408 != -1)
  {
    swift_once();
  }

  v25 = qword_10078A120;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D410;
  *(v26 + 32) = v36;
  *(v26 + 40) = v24;
  v27 = v25;
  v28 = v36;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v39.value.super.isa = 0;
  v39.is_nil = v25;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v39, 1, 0xFFFFFFFFFFFFFFFFLL, v26, children.super.super.isa).super.super.isa;

  return v30;
}

id sub_100508B90(void *a1)
{
  v3 = UIMenuStandardEdit;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1005077D4;
  *(v4 + 24) = 0;
  v69 = sub_100509590;
  v70 = v4;
  p_aBlock = &aBlock;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_1005075EC;
  *(&v68 + 1) = &unk_10072CE28;
  v6 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100507AD4;
    *(v7 + 24) = 0;
    v69 = sub_1005095C0;
    v70 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v68 = sub_1005075EC;
    *(&v68 + 1) = &unk_10072CE78;
    v8 = _Block_copy(&aBlock);

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v8];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      v9 = sub_100507C90();
      p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
      [a1 insertSiblingMenu:v9 afterMenuForIdentifier:UIMenuStandardEdit];

      v10._countAndFlagsBits = 0x5220746E65646E49;
      v10._object = 0xEF7265646E696D65;
      v11._countAndFlagsBits = 0xD00000000000002DLL;
      v11._object = 0x800000010068B150;
      TTRLocalizedString(_:comment:)(v10, v11);
      sub_100003540(0, &unk_10076BAB0);
      static TTRCommonAsset.Image.indentReminder.getter();
      aBlock = 0u;
      v68 = 0u;

      p_aBlock = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v12._countAndFlagsBits = 0xD000000000000010;
      v12._object = 0x8000000100683800;
      v13._countAndFlagsBits = 0xD00000000000002FLL;
      v13._object = 0x800000010068B180;
      countAndFlagsBits = TTRLocalizedString(_:comment:)(v12, v13)._countAndFlagsBits;
      static TTRCommonAsset.Image.outdentReminder.getter();
      aBlock = 0u;
      v68 = 0u;

      children._rawValue = countAndFlagsBits;
      v3 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      sub_100003540(0, &unk_10076B890);
      if (qword_100767400 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v15 = qword_10078A118;
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D410;
  *(preferredElementSize + 32) = p_aBlock;
  *(preferredElementSize + 40) = v3;
  v17 = v15;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v71.value.super.isa = 0;
  v71.is_nil = v15;
  v19.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v71, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  if (qword_1007673F8 != -1)
  {
    swift_once();
  }

  [a1 p:v19.super.super.isa ivar:qword_10078A110lyt[477]];

  v20 = sub_1005085C8();
  [a1 p:v20 ivar:v17lyt[477]];

  v21._object = 0x800000010068B1B0;
  v22._countAndFlagsBits = 1953720652;
  v22._object = 0xE400000000000000;
  v21._countAndFlagsBits = 0xD000000000000025;
  v23 = TTRLocalizedString(_:comment:)(v22, v21);
  v24 = static UIDeferredMenuElementIdentifier.moveToListIdentifier.getter();
  v25 = String._bridgeToObjectiveC()();
  v26 = objc_opt_self();
  v27 = [v26 _systemImageNamed:v25];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D420;
  v29 = objc_opt_self();
  *(v28 + 32) = [v29 elementUsingFocusWithIdentifier:v24 shouldCacheItems:0];
  v72.value.super.isa = v27;
  v72.is_nil = 0;
  v30.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v72, 0, 0xFFFFFFFFFFFFFFFFLL, v28, childrena).super.super.isa;
  if (qword_100767410 != -1)
  {
    swift_once();
  }

  v31 = qword_10078A128;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10062D420;
  *(v32 + 32) = v30;
  v66 = v31;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v73.value.super.isa = 0;
  v73.is_nil = v31;
  v34.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, 0, v73, 1, 0xFFFFFFFFFFFFFFFFLL, v32, childrenb).super.super.isa;

  if (qword_100767408 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v34.super.super.isa afterMenuForIdentifier:qword_10078A120];

  v35._object = 0x800000010068B1E0;
  v36._countAndFlagsBits = 1936154964;
  v36._object = 0xE400000000000000;
  v35._countAndFlagsBits = 0xD000000000000025;
  v37 = TTRLocalizedString(_:comment:)(v36, v35);
  v38 = static UIDeferredMenuElementIdentifier.tagsIdentifier.getter();
  v39 = String._bridgeToObjectiveC()();
  v40 = [v26 _systemImageNamed:v39];

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10062D420;
  *(v41 + 32) = [v29 elementUsingFocusWithIdentifier:v38 shouldCacheItems:0];
  v74.value.super.isa = v40;
  v74.is_nil = 0;
  v42.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v74, 0, 0xFFFFFFFFFFFFFFFFLL, v41, childrenc).super.super.isa;
  if (qword_100767418 != -1)
  {
    swift_once();
  }

  v43 = qword_10078A130;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10062D420;
  *(v44 + 32) = v42;
  v45 = v43;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v75.value.super.isa = 0;
  v75.is_nil = v43;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v75, 1, 0xFFFFFFFFFFFFFFFFLL, v44, childrend).super.super.isa;

  [a1 insertSiblingMenu:isa afterMenuForIdentifier:v66];
  v48._countAndFlagsBits = 0xD000000000000024;
  v48._object = 0x800000010068B210;
  v49._countAndFlagsBits = 1684957510;
  v49._object = 0xE400000000000000;
  v50 = TTRLocalizedString(_:comment:)(v49, v48)._countAndFlagsBits;
  v51 = String._bridgeToObjectiveC()();
  v52 = [v26 _systemImageNamed:v51];

  aBlock = 0u;
  v68 = 0u;

  childrene._rawValue = v50;
  v53 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_100767420 != -1)
  {
    swift_once();
  }

  v54 = qword_10078A138;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10062D420;
  *(v55 + 32) = v53;
  v56 = v54;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v76.value.super.isa = 0;
  v76.is_nil = v54;
  v58 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v57, 0, v76, 1, 0xFFFFFFFFFFFFFFFFLL, v55, childrene).super.super.isa;
  [a1 insertSiblingMenu:v58 afterMenuForIdentifier:v45];

  return [a1 removeMenuForIdentifier:UIMenuFind];
}

uint64_t sub_1005095C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void, void, void, void, void, void, void, void))
{
  v44 = a4;
  v45 = a7;
  v43 = a6;
  v40 = a5;
  v41 = a2;
  LODWORD(v9) = a3;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100766F98 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_1007700D0);
  v17 = *(v13 + 16);
  v42 = a1;
  v17(v15, a1, v12);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v9;
    v9 = v20;
    v21 = swift_slowAlloc();
    v39 = a8;
    v46 = v21;
    *v9 = 136315650;
    TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:)(ObjectType);
    v22 = _typeName(_:qualified:)();
    v24 = sub_100004060(v22, v23, &v46);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100004060(0xD000000000000039, 0x800000010068B8C0, &v46);
    *(v9 + 22) = 2080;
    sub_100522EA4(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v13 + 8))(v15, v12);
    v28 = sub_100004060(v25, v27, &v46);

    *(v9 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: %s {itemID: %s}", v9, 0x20u);
    swift_arrayDestroy();
    a8 = v39;

    LOBYTE(v9) = v38;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v29 = v9 & 1;
  if (v9)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v33 = v41;
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = a8(v42, v43, v32, v45, v34, v29, v44, v30, 1);

  return v35;
}

uint64_t sub_10050999C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t (*a3)(uint64_t, unint64_t), void (*a4)(char *, char *, unint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v109 = a8;
  v101 = a7;
  LODWORD(v111) = a6;
  v100 = a5;
  v99 = a4;
  v113 = a3;
  v114 = a2;
  v120 = a1;
  v105 = a9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v112 = *(v11 - 8);
  v12 = *(v112 + 64);
  __chkstk_darwin(v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v119 = &v96 - v15;
  v16 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v96 - v17);
  v19 = sub_100058000(&qword_10078A300);
  v116 = *(v19 - 8);
  v117 = v19;
  __chkstk_darwin(v19);
  v21 = &v96 - v20;
  v98 = sub_100058000(&qword_10078A308);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v110 = &v96 - v22;
  v23 = *(v9 + 24);
  v103 = v12;
  if (!v23 || *(v23 + 24) != 1)
  {
    goto LABEL_11;
  }

  v24 = qword_100767380;

  if (v24 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_1007865F0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "scrollWithCompensationTo: cancel existing treeViewDidEndScrollingAnimationCancellable", v28, 2u);
    }

    if (*(v23 + 24) == 1)
    {
      *(v23 + 24) = 0;
      if (*(v23 + 16))
      {

        AnyCancellable.cancel()();
      }

      v29 = type metadata accessor for PromiseError();
      sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, enum case for PromiseError.cancelled(_:), v29);
      DeferredPromise.reject(_:)();
    }

    v12 = v103;
LABEL_11:
    v102 = v13;
    v121 = v11;
    type metadata accessor for ScrollWithCompensationSession();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    sub_100058000(&unk_10078A310);
    swift_allocObject();
    v32 = DeferredPromise.init()();
    v118 = v31;
    *(v31 + 32) = v32;
    *(v10 + 24) = v31;

    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v107 = (v33 + 16);
    v34 = swift_allocObject();
    v115 = v34;
    *(v34 + 16) = 0;
    v104 = (v34 + 16);
    v124 = *(v10 + 16);

    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701C0, &unk_1007701B0);
    v106 = v33;
    Publisher.drop(while:)();

    v35 = [objc_opt_self() mainRunLoop];
    v124 = v35;
    v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
    sub_100003540(0, &qword_10076DFB0);
    sub_10000E188(&unk_10078A320, &qword_10078A300);
    sub_100139DF0();
    v37 = v117;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v18, &qword_1007701A0);

    (*(v116 + 8))(v21, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v112;
    v116 = *(v112 + 16);
    v117 = v112 + 16;
    (v116)(v119, v120, v11);
    v40 = (*(v39 + 80) + 64) & ~*(v39 + 80);
    v108 = *(v39 + 80);
    v96 = (v40 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + v12 + 23) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = v118;
    *(v43 + 2) = v118;
    *(v43 + 3) = v38;
    v45 = v109;
    *(v43 + 4) = v115;
    *(v43 + 5) = v45;
    v46 = v100;
    *(v43 + 6) = v99;
    *(v43 + 7) = v46;
    v47 = *(v39 + 32);
    v109 = v39 + 32;
    v99 = v47;
    v47(&v43[v40], v119, v121);
    v48 = &v43[v96];
    *v48 = v106;
    v48[8] = v111 & 1;
    *&v43[v41] = v105;
    v49 = &v43[v42];
    v50 = v113;
    *v49 = v114;
    v49[1] = v50;
    *&v43[(v42 + 23) & 0xFFFFFFFFFFFFFFF8] = v10;
    sub_10000E188(&unk_10078A330, &qword_10078A308);

    v96 = v10;

    v51 = v98;
    v52 = v110;
    v53 = Publisher<>.sink(receiveValue:)();

    (*(v97 + 8))(v52, v51);
    *(v44 + 16) = v53;
    v100 = v53;

    v54 = v119;
    v55 = v120;
    v56 = v116;
    (v116)(v119, v120, v121);
    v57 = v108;
    v110 = ((v57 + 16) & ~v57);
    v58 = &v110[v103 + 7] & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v54;
    v61 = v99;
    v99((v59 + ((v57 + 16) & ~v57)), v60, v121);
    *(v59 + v58) = v44;

    v62 = zalgo.getter();
    v103 = dispatch thunk of Promise.then<A>(on:closure:)();

    v63 = v119;
    v56(v119, v55, v121);
    v64 = swift_allocObject();
    v65 = v110;
    v61(&v110[v64], v63, v121);
    v66 = v61;
    *(v64 + v58) = v44;

    v67 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();

    (v116)(v63, v120, v121);
    v68 = swift_allocObject();
    v69 = v121;
    v66(&v65[v68], v63, v121);
    *(v68 + v58) = v44;

    v70 = zalgo.getter();
    v21 = dispatch thunk of Promise.cancelled(on:closure:)();

    v71 = v107;
    swift_beginAccess();
    v23 = 0;
    *v71 = 1;
    if (v111)
    {
      v72 = v104;
      swift_beginAccess();
      v23 = *v72 < v105;
    }

    v13 = v102;
    if (qword_100767380 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    v10 = sub_100003E30(v73, qword_1007865F0);
    v74 = v116;
    (v116)(v13, v120, v69);
    v11 = v115;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    v111 = v75;
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v110 = v21;
      v78 = v77;
      v79 = v13;
      v109 = swift_slowAlloc();
      v123 = v109;
      *v78 = 136315906;
      *(v78 + 4) = sub_100004060(0x206C616974696E69, 0xEE006C6C6F726373, &v123);
      *(v78 + 12) = 1024;
      *(v78 + 14) = v23;
      *(v78 + 18) = 2048;
      v13 = v23;
      v18 = v104;
      swift_beginAccess();
      *(v78 + 20) = *(v11 + 16);

      *(v78 + 28) = 2080;
      v74(v119, v79, v69);
      v80 = String.init<A>(describing:)();
      v81 = v76;
      v83 = v82;
      (*(v112 + 8))(v79, v69);
      v11 = sub_100004060(v80, v83, &v123);

      *(v78 + 30) = v11;
      v84 = v111;
      _os_log_impl(&_mh_execute_header, v111, v81, "scrollWithCompensationTo: Performing scroll {reason: %s, animated: %{BOOL}d, scrollCountAttempted: %ld, item: %s}", v78, 0x26u);
      swift_arrayDestroy();

      v21 = v110;
    }

    else
    {

      (*(v112 + 8))(v13, v69);
      v18 = v104;
    }

    v85 = v114(v120, v23);
    swift_beginAccess();
    if (!__OFADD__(*v18, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  ++*v18;
  *v107 = 0;
  if ((v85 & 1) == 0)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "scrollWithCompensationTo: no animation after scroll", v88, 2u);
    }

    PassthroughSubject.send(_:)();
  }

  sub_100058000(&qword_10076B780);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_10062D410;
  *(v89 + 32) = v21;

  result = DeferredPromise.promise.getter();
  if (result)
  {
    v91 = result;
    sub_100058000(&qword_10078A340);
    *(v89 + 40) = v91;
    v122 = v89;
    sub_100058000(&qword_10078A348);
    sub_10000E188(&unk_10078A350, &qword_10078A348);
    static Promise.all<A>(_:)();

    v92 = zalgo.getter();
    sub_100058000(&unk_1007817F0);
    dispatch thunk of Promise.then<A>(on:closure:)();

    v93 = zalgo.getter();
    v94 = dispatch thunk of Promise.always(on:closure:)();

    result = DeferredPromise.promise.getter();
    if (result)
    {
      v95 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();

      return v94;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10050AACC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t (*a3)(uint64_t, unint64_t), void (*a4)(char *, char *, unint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v109 = a8;
  v101 = a7;
  LODWORD(v111) = a6;
  v100 = a5;
  v99 = a4;
  v113 = a3;
  v114 = a2;
  v120 = a1;
  v105 = a9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v112 = *(v11 - 8);
  v12 = *(v112 + 64);
  __chkstk_darwin(v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v119 = &v96 - v15;
  v16 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v96 - v17);
  v19 = sub_100058000(&qword_10078A300);
  v116 = *(v19 - 8);
  v117 = v19;
  __chkstk_darwin(v19);
  v21 = &v96 - v20;
  v98 = sub_100058000(&qword_10078A308);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v110 = &v96 - v22;
  v23 = *(v9 + 24);
  v103 = v12;
  if (!v23 || *(v23 + 24) != 1)
  {
    goto LABEL_11;
  }

  v24 = qword_100767380;

  if (v24 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_1007865F0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "scrollWithCompensationTo: cancel existing treeViewDidEndScrollingAnimationCancellable", v28, 2u);
    }

    if (*(v23 + 24) == 1)
    {
      *(v23 + 24) = 0;
      if (*(v23 + 16))
      {

        AnyCancellable.cancel()();
      }

      v29 = type metadata accessor for PromiseError();
      sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, enum case for PromiseError.cancelled(_:), v29);
      DeferredPromise.reject(_:)();
    }

    v12 = v103;
LABEL_11:
    v102 = v13;
    v121 = v11;
    type metadata accessor for ScrollWithCompensationSession();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    sub_100058000(&unk_10078A310);
    swift_allocObject();
    v32 = DeferredPromise.init()();
    v118 = v31;
    *(v31 + 32) = v32;
    *(v10 + 24) = v31;

    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v107 = (v33 + 16);
    v34 = swift_allocObject();
    v115 = v34;
    *(v34 + 16) = 0;
    v104 = (v34 + 16);
    v124 = *(v10 + 16);

    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701C0, &unk_1007701B0);
    v106 = v33;
    Publisher.drop(while:)();

    v35 = [objc_opt_self() mainRunLoop];
    v124 = v35;
    v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
    sub_100003540(0, &qword_10076DFB0);
    sub_10000E188(&unk_10078A320, &qword_10078A300);
    sub_100139DF0();
    v37 = v117;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v18, &qword_1007701A0);

    (*(v116 + 8))(v21, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v112;
    v116 = *(v112 + 16);
    v117 = v112 + 16;
    (v116)(v119, v120, v11);
    v40 = (*(v39 + 80) + 64) & ~*(v39 + 80);
    v108 = *(v39 + 80);
    v96 = (v40 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + v12 + 23) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = v118;
    *(v43 + 2) = v118;
    *(v43 + 3) = v38;
    v45 = v109;
    *(v43 + 4) = v115;
    *(v43 + 5) = v45;
    v46 = v100;
    *(v43 + 6) = v99;
    *(v43 + 7) = v46;
    v47 = *(v39 + 32);
    v109 = v39 + 32;
    v99 = v47;
    v47(&v43[v40], v119, v121);
    v48 = &v43[v96];
    *v48 = v106;
    v48[8] = v111 & 1;
    *&v43[v41] = v105;
    v49 = &v43[v42];
    v50 = v113;
    *v49 = v114;
    v49[1] = v50;
    *&v43[(v42 + 23) & 0xFFFFFFFFFFFFFFF8] = v10;
    sub_10000E188(&unk_10078A330, &qword_10078A308);

    v96 = v10;

    v51 = v98;
    v52 = v110;
    v53 = Publisher<>.sink(receiveValue:)();

    (*(v97 + 8))(v52, v51);
    *(v44 + 16) = v53;
    v100 = v53;

    v54 = v119;
    v55 = v120;
    v56 = v116;
    (v116)(v119, v120, v121);
    v57 = v108;
    v110 = ((v57 + 16) & ~v57);
    v58 = &v110[v103 + 7] & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v54;
    v61 = v99;
    v99((v59 + ((v57 + 16) & ~v57)), v60, v121);
    *(v59 + v58) = v44;

    v62 = zalgo.getter();
    v103 = dispatch thunk of Promise.then<A>(on:closure:)();

    v63 = v119;
    v56(v119, v55, v121);
    v64 = swift_allocObject();
    v65 = v110;
    v61(&v110[v64], v63, v121);
    v66 = v61;
    *(v64 + v58) = v44;

    v67 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();

    (v116)(v63, v120, v121);
    v68 = swift_allocObject();
    v69 = v121;
    v66(&v65[v68], v63, v121);
    *(v68 + v58) = v44;

    v70 = zalgo.getter();
    v21 = dispatch thunk of Promise.cancelled(on:closure:)();

    v71 = v107;
    swift_beginAccess();
    v23 = 0;
    *v71 = 1;
    if (v111)
    {
      v72 = v104;
      swift_beginAccess();
      v23 = *v72 < v105;
    }

    v13 = v102;
    if (qword_100767380 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    v10 = sub_100003E30(v73, qword_1007865F0);
    v74 = v116;
    (v116)(v13, v120, v69);
    v11 = v115;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    v111 = v75;
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v110 = v21;
      v78 = v77;
      v79 = v13;
      v109 = swift_slowAlloc();
      v123 = v109;
      *v78 = 136315906;
      *(v78 + 4) = sub_100004060(0x206C616974696E69, 0xEE006C6C6F726373, &v123);
      *(v78 + 12) = 1024;
      *(v78 + 14) = v23;
      *(v78 + 18) = 2048;
      v13 = v23;
      v18 = v104;
      swift_beginAccess();
      *(v78 + 20) = *(v11 + 16);

      *(v78 + 28) = 2080;
      v74(v119, v79, v69);
      v80 = String.init<A>(describing:)();
      v81 = v76;
      v83 = v82;
      (*(v112 + 8))(v79, v69);
      v11 = sub_100004060(v80, v83, &v123);

      *(v78 + 30) = v11;
      v84 = v111;
      _os_log_impl(&_mh_execute_header, v111, v81, "scrollWithCompensationTo: Performing scroll {reason: %s, animated: %{BOOL}d, scrollCountAttempted: %ld, item: %s}", v78, 0x26u);
      swift_arrayDestroy();

      v21 = v110;
    }

    else
    {

      (*(v112 + 8))(v13, v69);
      v18 = v104;
    }

    v85 = v114(v120, v23);
    swift_beginAccess();
    if (!__OFADD__(*v18, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  ++*v18;
  *v107 = 0;
  if ((v85 & 1) == 0)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "scrollWithCompensationTo: no animation after scroll", v88, 2u);
    }

    PassthroughSubject.send(_:)();
  }

  sub_100058000(&qword_10076B780);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_10062D410;
  *(v89 + 32) = v21;

  result = DeferredPromise.promise.getter();
  if (result)
  {
    v91 = result;
    sub_100058000(&qword_10078A340);
    *(v89 + 40) = v91;
    v122 = v89;
    sub_100058000(&qword_10078A348);
    sub_10000E188(&unk_10078A350, &qword_10078A348);
    static Promise.all<A>(_:)();

    v92 = zalgo.getter();
    sub_100058000(&unk_1007817F0);
    dispatch thunk of Promise.then<A>(on:closure:)();

    v93 = zalgo.getter();
    v94 = dispatch thunk of Promise.always(on:closure:)();

    result = DeferredPromise.promise.getter();
    if (result)
    {
      v95 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();

      return v94;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10050BBFC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(char *, char *, uint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v122 = a8;
  v114 = a7;
  LODWORD(v124) = a6;
  v113 = a5;
  v112 = a4;
  v126 = a3;
  v127 = a2;
  v133 = a1;
  v117 = a9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v125 = *(v10 - 8);
  v11 = *(v125 + 64);
  __chkstk_darwin(v10);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v107 - v14;
  v15 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v15 - 8);
  v17 = &v107 - v16;
  v18 = sub_100058000(&qword_10078A300);
  v131 = *(v18 - 8);
  v132 = v18;
  __chkstk_darwin(v18);
  v20 = &v107 - v19;
  v111 = sub_100058000(&qword_10078A308);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v123 = &v107 - v21;
  v128 = v9;
  v22 = *(v9 + 24);
  if (!v22 || *(v22 + 24) != 1)
  {
    goto LABEL_11;
  }

  v23 = v10;
  v24 = qword_100767380;

  if (v24 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_1007865F0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "scrollWithCompensationTo: cancel existing treeViewDidEndScrollingAnimationCancellable", v28, 2u);
    }

    v10 = v23;
    if (*(v22 + 24) == 1)
    {
      *(v22 + 24) = 0;
      if (*(v22 + 16))
      {

        AnyCancellable.cancel()();
      }

      v29 = type metadata accessor for PromiseError();
      sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, enum case for PromiseError.cancelled(_:), v29);
      DeferredPromise.reject(_:)();
    }

LABEL_11:
    v109 = v11;
    v115 = v12;
    type metadata accessor for ScrollWithCompensationSession();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    sub_100058000(&unk_10078A310);
    swift_allocObject();
    v32 = DeferredPromise.init()();
    v134 = v31;
    *(v31 + 32) = v32;
    v33 = v128;
    *(v128 + 24) = v31;

    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v119 = (v34 + 16);
    v35 = swift_allocObject();
    v130 = v35;
    *(v35 + 16) = 0;
    v116 = (v35 + 16);
    v137 = *(v33 + 16);

    v118 = v34;

    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701C0, &unk_1007701B0);
    Publisher.drop(while:)();

    v36 = [objc_opt_self() mainRunLoop];
    v137 = v36;
    v37 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
    sub_100003540(0, &qword_10076DFB0);
    sub_10000E188(&unk_10078A320, &qword_10078A300);
    sub_100139DF0();
    v38 = v132;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v17, &qword_1007701A0);

    v131[1](v20, v38);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = v125;
    v131 = *(v125 + 16);
    v132 = v125 + 16;
    v41 = v129;
    (v131)(v129, v133, v10);
    v42 = *(v40 + 80);
    v43 = v10;
    v120 = v10;
    v44 = (v42 + 64) & ~v42;
    v121 = v42;
    v108 = (v44 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v47[2] = v134;
    v47[3] = v39;
    v48 = v122;
    v47[4] = v130;
    v47[5] = v48;
    v49 = v113;
    v47[6] = v112;
    v47[7] = v49;
    v50 = *(v40 + 32);
    v122 = v40 + 32;
    v112 = v50;
    v50(v47 + v44, v41, v43);
    v51 = v47 + v108;
    *v51 = v118;
    v51[8] = v124 & 1;
    *(v47 + v45) = v117;
    v52 = (v47 + v46);
    v53 = v128;
    v54 = v126;
    *v52 = v127;
    v52[1] = v54;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_10000E188(&unk_10078A330, &qword_10078A308);
    v55 = v134;

    v56 = v111;
    v57 = v123;
    v58 = Publisher<>.sink(receiveValue:)();

    (*(v110 + 8))(v57, v56);
    *(v55 + 16) = v58;
    v113 = v58;

    v59 = v41;
    v60 = v41;
    v61 = v133;
    v62 = v120;
    v63 = v131;
    (v131)(v60, v133, v120);
    v64 = (v121 + 16) & ~v121;
    v123 = v64;
    v65 = (v109 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = swift_allocObject();
    v67 = v62;
    v68 = v112;
    v112((v66 + v64), v59, v67);
    *(v66 + v65) = v134;

    v69 = zalgo.getter();
    v114 = dispatch thunk of Promise.then<A>(on:closure:)();

    v70 = v129;
    v71 = v61;
    v72 = v120;
    (v63)(v129, v71, v120);
    v73 = swift_allocObject();
    v74 = v123;
    v75 = v68;
    v68(&v123[v73], v70, v72);
    v76 = v134;
    *(v73 + v65) = v134;

    v77 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();

    (v131)(v70, v133, v72);
    v78 = swift_allocObject();
    v79 = v72;
    v75(&v74[v78], v70, v72);
    *(v78 + v65) = v76;

    v80 = zalgo.getter();
    v20 = dispatch thunk of Promise.cancelled(on:closure:)();

    v81 = v119;
    swift_beginAccess();
    v22 = 0;
    *v81 = 1;
    if (v124)
    {
      v82 = v116;
      swift_beginAccess();
      v22 = *v82 < v117;
    }

    v83 = v115;
    if (qword_100767380 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    v17 = sub_100003E30(v84, qword_1007865F0);
    v85 = v79;
    v86 = v79;
    v12 = v131;
    (v131)(v83, v133, v86);
    v11 = v130;

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v124 = v20;
      v90 = v89;
      v91 = swift_slowAlloc();
      LODWORD(v122) = v88;
      v123 = v91;
      v136 = v91;
      *v90 = 136315906;
      *(v90 + 4) = sub_100004060(0x206C616974696E69, 0xEE006C6C6F726373, &v136);
      *(v90 + 12) = 1024;
      *(v90 + 14) = v22;
      *(v90 + 18) = 2048;
      v23 = v116;
      swift_beginAccess();
      *(v90 + 20) = *(v11 + 16);

      *(v90 + 28) = 2080;
      (v12)(v129, v83, v85);
      v92 = String.init<A>(describing:)();
      v94 = v93;
      (*(v125 + 8))(v83, v85);
      v95 = sub_100004060(v92, v94, &v136);
      v11 = v130;

      *(v90 + 30) = v95;
      _os_log_impl(&_mh_execute_header, v87, v122, "scrollWithCompensationTo: Performing scroll {reason: %s, animated: %{BOOL}d, scrollCountAttempted: %ld, item: %s}", v90, 0x26u);
      v12 = v123;
      swift_arrayDestroy();

      v20 = v124;
    }

    else
    {

      (*(v125 + 8))(v83, v85);
      v23 = v116;
    }

    v96 = v127(v133, v22);
    swift_beginAccess();
    if (!__OFADD__(*v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  ++*v23;
  *v119 = 0;
  if ((v96 & 1) == 0)
  {
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "scrollWithCompensationTo: no animation after scroll", v99, 2u);
    }

    PassthroughSubject.send(_:)();
  }

  sub_100058000(&qword_10076B780);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_10062D410;
  *(v100 + 32) = v20;

  result = DeferredPromise.promise.getter();
  if (result)
  {
    v102 = result;
    sub_100058000(&qword_10078A340);
    *(v100 + 40) = v102;
    v135 = v100;
    sub_100058000(&qword_10078A348);
    sub_10000E188(&unk_10078A350, &qword_10078A348);
    static Promise.all<A>(_:)();

    v103 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    v104 = zalgo.getter();
    v105 = dispatch thunk of Promise.always(on:closure:)();

    result = DeferredPromise.promise.getter();
    if (result)
    {
      v106 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();

      return v105;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10050CD3C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t (*a3)(uint64_t, unint64_t), void (*a4)(char *, char *, unint64_t), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v109 = a8;
  v101 = a7;
  LODWORD(v111) = a6;
  v100 = a5;
  v99 = a4;
  v113 = a3;
  v114 = a2;
  v120 = a1;
  v105 = a9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v112 = *(v11 - 8);
  v12 = *(v112 + 64);
  __chkstk_darwin(v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v119 = &v96 - v15;
  v16 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v96 - v17);
  v19 = sub_100058000(&qword_10078A300);
  v116 = *(v19 - 8);
  v117 = v19;
  __chkstk_darwin(v19);
  v21 = &v96 - v20;
  v98 = sub_100058000(&qword_10078A308);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v110 = &v96 - v22;
  v23 = *(v9 + 24);
  v103 = v12;
  if (!v23 || *(v23 + 24) != 1)
  {
    goto LABEL_11;
  }

  v24 = qword_100767380;

  if (v24 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_1007865F0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "scrollWithCompensationTo: cancel existing treeViewDidEndScrollingAnimationCancellable", v28, 2u);
    }

    if (*(v23 + 24) == 1)
    {
      *(v23 + 24) = 0;
      if (*(v23 + 16))
      {

        AnyCancellable.cancel()();
      }

      v29 = type metadata accessor for PromiseError();
      sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, enum case for PromiseError.cancelled(_:), v29);
      DeferredPromise.reject(_:)();
    }

    v12 = v103;
LABEL_11:
    v102 = v13;
    v121 = v11;
    type metadata accessor for ScrollWithCompensationSession();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    sub_100058000(&unk_10078A310);
    swift_allocObject();
    v32 = DeferredPromise.init()();
    v118 = v31;
    *(v31 + 32) = v32;
    *(v10 + 24) = v31;

    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v107 = (v33 + 16);
    v34 = swift_allocObject();
    v115 = v34;
    *(v34 + 16) = 0;
    v104 = (v34 + 16);
    v124 = *(v10 + 16);

    sub_100058000(&unk_1007701B0);
    sub_10000E188(&unk_1007701C0, &unk_1007701B0);
    v106 = v33;
    Publisher.drop(while:)();

    v35 = [objc_opt_self() mainRunLoop];
    v124 = v35;
    v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
    sub_100003540(0, &qword_10076DFB0);
    sub_10000E188(&unk_10078A320, &qword_10078A300);
    sub_100139DF0();
    v37 = v117;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v18, &qword_1007701A0);

    (*(v116 + 8))(v21, v37);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = v112;
    v116 = *(v112 + 16);
    v117 = v112 + 16;
    (v116)(v119, v120, v11);
    v40 = (*(v39 + 80) + 64) & ~*(v39 + 80);
    v108 = *(v39 + 80);
    v96 = (v40 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + v12 + 23) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = v118;
    *(v43 + 2) = v118;
    *(v43 + 3) = v38;
    v45 = v109;
    *(v43 + 4) = v115;
    *(v43 + 5) = v45;
    v46 = v100;
    *(v43 + 6) = v99;
    *(v43 + 7) = v46;
    v47 = *(v39 + 32);
    v109 = v39 + 32;
    v99 = v47;
    v47(&v43[v40], v119, v121);
    v48 = &v43[v96];
    *v48 = v106;
    v48[8] = v111 & 1;
    *&v43[v41] = v105;
    v49 = &v43[v42];
    v50 = v113;
    *v49 = v114;
    v49[1] = v50;
    *&v43[(v42 + 23) & 0xFFFFFFFFFFFFFFF8] = v10;
    sub_10000E188(&unk_10078A330, &qword_10078A308);

    v96 = v10;

    v51 = v98;
    v52 = v110;
    v53 = Publisher<>.sink(receiveValue:)();

    (*(v97 + 8))(v52, v51);
    *(v44 + 16) = v53;
    v100 = v53;

    v54 = v119;
    v55 = v120;
    v56 = v116;
    (v116)(v119, v120, v121);
    v57 = v108;
    v110 = ((v57 + 16) & ~v57);
    v58 = &v110[v103 + 7] & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v54;
    v61 = v99;
    v99((v59 + ((v57 + 16) & ~v57)), v60, v121);
    *(v59 + v58) = v44;

    v62 = zalgo.getter();
    v103 = dispatch thunk of Promise.then<A>(on:closure:)();

    v63 = v119;
    v56(v119, v55, v121);
    v64 = swift_allocObject();
    v65 = v110;
    v61(&v110[v64], v63, v121);
    v66 = v61;
    *(v64 + v58) = v44;

    v67 = zalgo.getter();
    dispatch thunk of Promise.error(on:closure:)();

    (v116)(v63, v120, v121);
    v68 = swift_allocObject();
    v69 = v121;
    v66(&v65[v68], v63, v121);
    *(v68 + v58) = v44;

    v70 = zalgo.getter();
    v21 = dispatch thunk of Promise.cancelled(on:closure:)();

    v71 = v107;
    swift_beginAccess();
    v23 = 0;
    *v71 = 1;
    if (v111)
    {
      v72 = v104;
      swift_beginAccess();
      v23 = *v72 < v105;
    }

    v13 = v102;
    if (qword_100767380 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    v10 = sub_100003E30(v73, qword_1007865F0);
    v74 = v116;
    (v116)(v13, v120, v69);
    v11 = v115;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    v111 = v75;
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v110 = v21;
      v78 = v77;
      v79 = v13;
      v109 = swift_slowAlloc();
      v123 = v109;
      *v78 = 136315906;
      *(v78 + 4) = sub_100004060(0x206C616974696E69, 0xEE006C6C6F726373, &v123);
      *(v78 + 12) = 1024;
      *(v78 + 14) = v23;
      *(v78 + 18) = 2048;
      v13 = v23;
      v18 = v104;
      swift_beginAccess();
      *(v78 + 20) = *(v11 + 16);

      *(v78 + 28) = 2080;
      v74(v119, v79, v69);
      v80 = String.init<A>(describing:)();
      v81 = v76;
      v83 = v82;
      (*(v112 + 8))(v79, v69);
      v11 = sub_100004060(v80, v83, &v123);

      *(v78 + 30) = v11;
      v84 = v111;
      _os_log_impl(&_mh_execute_header, v111, v81, "scrollWithCompensationTo: Performing scroll {reason: %s, animated: %{BOOL}d, scrollCountAttempted: %ld, item: %s}", v78, 0x26u);
      swift_arrayDestroy();

      v21 = v110;
    }

    else
    {

      (*(v112 + 8))(v13, v69);
      v18 = v104;
    }

    v85 = v114(v120, v23);
    swift_beginAccess();
    if (!__OFADD__(*v18, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  ++*v18;
  *v107 = 0;
  if ((v85 & 1) == 0)
  {
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "scrollWithCompensationTo: no animation after scroll", v88, 2u);
    }

    PassthroughSubject.send(_:)();
  }

  sub_100058000(&qword_10076B780);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_10062D410;
  *(v89 + 32) = v21;

  result = DeferredPromise.promise.getter();
  if (result)
  {
    v91 = result;
    sub_100058000(&qword_10078A340);
    *(v89 + 40) = v91;
    v122 = v89;
    sub_100058000(&qword_10078A348);
    sub_10000E188(&unk_10078A350, &qword_10078A348);
    static Promise.all<A>(_:)();

    v92 = zalgo.getter();
    type metadata accessor for TTRRemindersListViewModel.Item();
    dispatch thunk of Promise.then<A>(on:closure:)();

    v93 = zalgo.getter();
    v94 = dispatch thunk of Promise.always(on:closure:)();

    result = DeferredPromise.promise.getter();
    if (result)
    {
      v95 = zalgo.getter();
      dispatch thunk of Promise.then<A>(on:closure:)();

      return v94;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10050DE60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100522EA4(&qword_100777EF8, type metadata accessor for ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__sectionID;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a2, &qword_10076B070);
}

uint64_t sub_10050DF38(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000794C(a1, &v6 - v3, &qword_10076B070);
  return sub_1002A07A4(v4);
}

uint64_t sub_10050DFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v26 = a4;
  v27 = a2;
  v28 = a1;
  v6 = a5(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  if (qword_100767380 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007865F0);
  v14 = *(v7 + 16);
  v14(v12, a3, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29[0] = v25;
    *v17 = 136315138;
    v14(v9, v12, v6);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v7 + 8))(v12, v6);
    v21 = sub_100004060(v18, v20, v29);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "scrollWithCompensationTo: cellReadyTracker finishes {item: %s}", v17, 0xCu);
    sub_100004758(v25);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  if (*(v26 + 24) == 1 && (*(v26 + 25) & 1) == 0)
  {
    *(v26 + 25) = 1;
  }

  v29[3] = sub_100058000(&unk_1007817F0);
  v22 = v28;
  v29[0] = v28;
  v29[1] = v27;
  sub_100058000(&qword_10078A340);
  swift_allocObject();
  v23 = v22;
  return Promise.init(value:)();
}

uint64_t sub_10050E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (qword_100767380 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_1007865F0);
  v13 = *(v6 + 16);
  v13(v11, a2, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v27 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v26 = a1;
    v18 = v17;
    v25 = swift_slowAlloc();
    v29[0] = v25;
    *v18 = 136315138;
    v13(v8, v11, v5);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v6 + 8))(v11, v5);
    v22 = sub_100004060(v19, v21, v29);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "scrollWithCompensationTo: cellReadyTracker finishes {item: %s}", v18, 0xCu);
    sub_100004758(v25);

    a1 = v26;
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  if (*(v28 + 24) == 1 && (*(v28 + 25) & 1) == 0)
  {
    *(v28 + 25) = 1;
  }

  v29[3] = v5;
  v23 = sub_1000317B8(v29);
  v27(v23, a1, v5);
  sub_100058000(&qword_10078A340);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t sub_10050E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v28 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v25 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  if (qword_100767380 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_1007865F0);
  v12 = *(v6 + 16);
  v12(v10, a2, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24[1] = v3;
    v16 = v15;
    v24[0] = swift_slowAlloc();
    v27[0] = v24[0];
    *v16 = 136315138;
    v12(v25, v10, v5);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v6 + 8))(v10, v5);
    v20 = sub_100004060(v17, v19, v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "scrollWithCompensationTo: cellReadyTracker finishes {item: %s}", v16, 0xCu);
    sub_100004758(v24[0]);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  if (*(v26 + 24) == 1 && (*(v26 + 25) & 1) == 0)
  {
    *(v26 + 25) = 1;
  }

  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v27[3] = v21;
  v22 = sub_1000317B8(v27);
  (*(*(v21 - 8) + 16))(v22, v28, v21);
  sub_100058000(&qword_10078A340);
  swift_allocObject();
  return Promise.init(value:)();
}

void sub_10050E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  if (qword_100767380 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007865F0);
  v14 = *(v7 + 16);
  v14(v12, a2, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v14(v9, v12, v6);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_100004060(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "scrollWithCompensationTo: cellReadyTracker error {item: %s}", v18, 0xCu);
    sub_100004758(v19);

    a3 = v26;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  if (*(a3 + 24) == 1)
  {
    *(a3 + 24) = 0;
    if (*(a3 + 16))
    {

      AnyCancellable.cancel()();
    }

    v24 = type metadata accessor for PromiseError();
    sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for PromiseError.cancelled(_:), v24);
    DeferredPromise.reject(_:)();
  }
}

void sub_10050EC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (qword_100767380 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_1007865F0);
  v13 = *(v6 + 16);
  v13(v11, a1, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v13(v8, v11, v5);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v6 + 8))(v11, v5);
    v22 = sub_100004060(v19, v21, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "scrollWithCompensationTo: cellReadyTracker is cancelled {item: %s}", v17, 0xCu);
    sub_100004758(v18);

    a2 = v25;
  }

  else
  {

    (*(v6 + 8))(v11, v5);
  }

  if (*(a2 + 24) == 1)
  {
    *(a2 + 24) = 0;
    if (*(a2 + 16))
    {

      AnyCancellable.cancel()();
    }

    v23 = type metadata accessor for PromiseError();
    sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for PromiseError.cancelled(_:), v23);
    DeferredPromise.reject(_:)();
  }
}

uint64_t sub_10050EFA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000046FC(a1 + 32, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100058000(&qword_10076AE40);
  sub_100058000(&unk_1007817F0);
  if (swift_dynamicCast() && v4)
  {
    v5[0] = v4;
    sub_100058000(&unk_10078A360);
    swift_allocObject();
    return Promise.init(value:)();
  }

  else
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    [v2 internalErrorWithDebugDescription:v3];

    return swift_willThrow();
  }
}

void *sub_10050F0D8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v17 - v10;
  if (*(a1 + 16))
  {
    sub_1000046FC(a1 + 32, v17);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_100058000(&qword_10076AE40);
  v12 = swift_dynamicCast();
  v13 = *(v6 + 56);
  if (v12)
  {
    v13(v4, 0, 1, v5);
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    v14 = Promise.init(value:)();
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v13(v4, 1, 1, v5);
    sub_1000079B4(v4, &qword_100772140);
    v15 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v15 internalErrorWithDebugDescription:v14];

    swift_willThrow();
  }

  return v14;
}

uint64_t sub_10050F398()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078A140);
  v1 = sub_100003E30(v0, qword_10078A140);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10050F488()
{
  v1 = &v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView];
  if (v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView + 32])
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v1[2];
    v10 = v1[3];
    v4 = *v1;
    v6 = v1[1];
  }

  v11 = [objc_allocWithZone(UIView) initWithFrame:{v4, v6, v8, v10}];
  [v0 setView:v11];
}

void sub_10050F5BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v84.receiver = v0;
  v84.super_class = ObjectType;
  objc_msgSendSuper2(&v84, "viewDidLoad");
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_100510204();
  v14 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListCollectionView()) initWithFrame:v13 collectionViewLayout:{v6, v8, v10, v12}];

  v15 = v14;
  [v15 setAutoresizingMask:18];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v15 setPreservesSuperviewLayoutMargins:1];

  v16 = v15;
  [v16 setAllowsFocus:0];
  v17 = v16;
  static TTRAccesibility.RemindersList.ID.RemindersTable.getter();
  v18 = String._bridgeToObjectiveC()();

  [v17 setAccessibilityIdentifier:v18];

  v19 = v17;
  [v19 setKeyboardDismissMode:4];
  [v19 setAlwaysBounceVertical:1];
  [v19 setDragInteractionEnabled:1];
  [v19 setAllowsSelection:1];
  [v19 setAllowsSelectionDuringEditing:1];
  [v19 setAllowsMultipleSelection:0];
  [v19 setAllowsMultipleSelectionDuringEditing:1];
  [v19 setSelfSizingInvalidation:1];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = &v19[OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514];
  v22 = *&v19[OBJC_IVAR____TtC9Reminders31TTRIRemindersListCollectionView_ownerViewControllerFor52010514];
  *v21 = sub_1003DE468;
  v21[1] = v20;

  sub_1000301AC(v22);

  [v19 setDelegate:v1];
  [v19 setPrefetchDataSource:v1];
  v23 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v23[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = &off_10072CEF0;
  swift_unknownObjectWeakAssign();
  [v19 setBackgroundView:v23];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  [v24 addSubview:v19];

  v26 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView] = v19;
  v27 = v19;

  type metadata accessor for TTRIRemindersListInteractivePopPreventingGestureRecognizer();
  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakAssign();
  v29 = [v1 view];
  if (!v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v30 = v29;
  [v29 addGestureRecognizer:v28];

  sub_10051055C();
  sub_10051145C();
  v31 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource;
  v32 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
  if (!v32)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100058000(&qword_10078A408);
  swift_allocObject();
  v33 = v32;
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability] = TTRICollectionViewPresentationTreeManagementViewCapability.init(diffableDataSource:)();

  sub_100522EA4(&qword_10078A410, type metadata accessor for TTRIRemindersListContentViewController_collectionView);
  swift_unknownObjectRetain();
  TTRICollectionViewPresentationTreeManagementViewCapability.delegate.setter();

  if (![v1 view])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_100058000(&qword_10078A418);
  swift_allocObject();
  v34 = TTRICollectionViewDragAndDropCoordinator.init(rootView:)();
  sub_100522EA4(&qword_10078A420, type metadata accessor for TTRIRemindersListContentViewController_collectionView);
  swift_unknownObjectRetain();
  TTRICollectionViewDragAndDropCoordinator.delegate.setter();
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropCoordinator] = v34;

  v35 = *&v1[v31];
  if (!v35)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v76 = v28;
  v77 = v23;
  v79 = ObjectType;
  sub_100522EA4(&qword_10078A428, type metadata accessor for TTRIRemindersListDiffableDataSource);
  sub_10000E188(&qword_10078A430, &qword_10078A418);
  v36 = objc_allocWithZone(sub_100058000(&unk_10078A438));
  v37 = v27;

  v38 = v35;
  v75[1] = v34;
  v39 = TTRICollectionViewDragAndDropController.init(collectionView:diffableDataSource:coordinator:)();
  v40 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController;
  v41 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController];
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController] = v39;
  v42 = v39;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRICollectionViewDragAndDropController.dragPreviewParametersProvider.setter();

  [v37 setDragDelegate:*&v1[v40]];
  [v37 setDropDelegate:*&v1[v40]];
  v43 = *&v1[v31];
  v78 = v31;
  if (!v43)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75[0] = type metadata accessor for TTRIRemindersListScrollingController_collectionView();
  v45 = objc_allocWithZone(v75[0]);
  swift_unknownObjectWeakInit();
  v46 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_didScroll;
  sub_100058000(&unk_1007701B0);
  swift_allocObject();
  v47 = v37;

  v48 = v43;
  *&v45[v46] = PassthroughSubject.init()();
  v49 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController;
  type metadata accessor for TTRIRemindersListScrollSessionController();
  v50 = swift_allocObject();
  swift_allocObject();
  *(v50 + 16) = PassthroughSubject.init()();
  *(v50 + 24) = 0;
  *&v45[v49] = v50;
  v51 = v47;
  v52 = OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_pendingStartEditingItem;
  v53 = sub_100058000(&unk_100770170);
  (*(*(v53 - 8) + 56))(&v45[v52], 1, 1, v53);
  v45[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_contentScrollViewNeedsAdjustmentAfterScrollingAnimation] = 0;
  *&v45[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_didStopScrollingCancellable] = 0;
  swift_unknownObjectWeakAssign();
  *&v45[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_collectionView] = v47;
  *&v45[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_diffableDataSource] = v48;
  v54 = &v45[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates];
  *v54 = sub_100528A14;
  v54[1] = v44;
  v83.receiver = v45;
  v83.super_class = v75[0];
  v55 = objc_msgSendSuper2(&v83, "init");

  v56 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController];
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController] = v55;
  v57 = v55;

  sub_10016B2EC();
  type metadata accessor for TTRIChromelessToolbarUpdater();
  swift_allocObject();
  v58 = TTRIChromelessToolbarUpdater.init(scrollView:)();
  sub_100522EA4(&unk_10078A448, type metadata accessor for TTRIRemindersListContentViewController_collectionView);
  swift_unknownObjectRetain();
  TTRIChromelessToolbarUpdater.delegate.setter();
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_chromelessToolbarUpdater] = v58;

  v59 = [objc_allocWithZone(PKHoverInteraction) initWithDelegate:v1];
  [v51 addInteraction:v59];
  v60 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24];
  v61 = sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], v60);
  v62 = swift_allocObject();
  v63 = swift_unknownObjectWeakInit();
  v64 = __chkstk_darwin(v63);
  v66 = (v75 - v65);
  (*(v67 + 16))(v75 - v65, v61, v60, v64);
  v68 = *v66;
  v81 = type metadata accessor for TTRIRemindersListPresenter_collectionView();
  v82 = &off_10071FBE8;
  *&v80 = v68;
  type metadata accessor for TTRIRemindersListAutomaticSubtaskSelectionController();
  v69 = swift_allocObject();
  v70 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
  v71 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
  (*(*(v71 - 8) + 56))(v69 + v70, 1, 1, v71);
  sub_100005FD0(&v80, v69 + 16);
  *(v69 + 56) = sub_100528A1C;
  *(v69 + 64) = v62;
  *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController] = v69;

  sub_100058000(&unk_10076BD70);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10062D400;
  *(v72 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v72 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v73 = *&v1[v78];
  if (v73)
  {
    sub_100058000(&qword_10078A458);
    swift_allocObject();
    v74 = v73;
    *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_accessibilityController] = TTRICollectionViewAccessibilityController.init(collectionView:diffableDataSource:)();

    sub_100522EA4(&qword_10078A460, type metadata accessor for TTRIRemindersListContentViewController_collectionView);
    swift_unknownObjectRetain();
    TTRICollectionViewAccessibilityController.delegate.setter();

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_100510204()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICollectionLayoutListConfiguration();
  v8 = swift_allocBox();
  (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v4);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v0);
  UICollectionLayoutListConfiguration.footerMode.setter();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  v9 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_100528F78;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F170;
  aBlock[3] = &unk_10072D648;
  v13 = _Block_copy(aBlock);

  v14 = [v12 initWithSectionProvider:v13];
  _Block_release(v13);

  return v14;
}

void sub_10051055C()
{
  v1 = v0;
  v88 = sub_100058000(&unk_10078A468);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v2;
  __chkstk_darwin(v3);
  v114 = &v74 - v4;
  v105 = sub_100058000(&qword_10077FBE0);
  v86 = *(v105 - 8);
  __chkstk_darwin(v105);
  v83 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v5;
  __chkstk_darwin(v6);
  v113 = &v74 - v7;
  v8 = sub_100058000(&qword_10078A478);
  v111 = *(v8 - 8);
  v112 = v8;
  __chkstk_darwin(v8);
  v95 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v9;
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  v110 = sub_100058000(&qword_10078A480);
  v103 = *(v110 - 8);
  __chkstk_darwin(v110);
  v94 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v74 - v15;
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v77 = v19;
  __chkstk_darwin(v20);
  v22 = &v74 - v21;
  v23 = sub_100058000(&qword_10078A488);
  v108 = *(v23 - 8);
  v109 = v23;
  __chkstk_darwin(v23);
  v92 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v24;
  __chkstk_darwin(v25);
  v27 = &v74 - v26;
  v107 = sub_100058000(&qword_10078A490);
  v99 = *(v107 - 8);
  __chkstk_darwin(v107);
  v91 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v28;
  __chkstk_darwin(v29);
  v31 = &v74 - v30;
  v106 = sub_100058000(&unk_10078A498);
  v97 = *(v106 - 8);
  __chkstk_darwin(v106);
  v90 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v32;
  __chkstk_darwin(v33);
  v35 = &v74 - v34;
  v89 = sub_100003540(0, &qword_10077FBF0);
  type metadata accessor for TTRRemindersListViewModel.Item();
  v96 = v35;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIRemindersListReminderCell_collectionView();
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  v98 = v31;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIRemindersListEditableSectionCell_collectionView(0);
  v100 = v27;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIRemindersListContentConfigurationCell();
  v101 = v22;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = v18;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView(0);
  v104 = v12;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRIRemindersListSectionHeader_collectionView();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v76 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (v76)
  {
    v89 = swift_allocObject();
    v75 = v1;
    swift_unknownObjectWeakInit();
    v36 = v97;
    (*(v97 + 16))(v90, v96, v106);
    v37 = v99;
    (*(v99 + 16))(v91, v98, v107);
    v38 = v103;
    v39 = *(v103 + 16);
    v40 = v110;
    v39(v93, v101, v110);
    v39(v94, v102, v40);
    v41 = v108;
    (*(v108 + 16))(v92, v100, v109);
    v42 = v111;
    (*(v111 + 16))(v95, v104, v112);
    v43 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v44 = (v78 + *(v37 + 80) + v43) & ~*(v37 + 80);
    v45 = *(v38 + 80);
    v46 = (v79 + v45 + v44) & ~v45;
    v47 = (v77 + v45 + v46) & ~v45;
    v48 = (v77 + *(v41 + 80) + v47) & ~*(v41 + 80);
    v49 = (v80 + *(v42 + 80) + v48) & ~*(v42 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v89;
    (*(v36 + 32))(v50 + v43, v90, v106);
    (*(v37 + 32))(v50 + v44, v91, v107);
    v51 = *(v38 + 32);
    v52 = v50 + v46;
    v53 = v110;
    v51(v52, v93, v110);
    v51(v50 + v47, v94, v53);
    (*(v108 + 32))(v50 + v48, v92, v109);
    (*(v111 + 32))(v50 + v49, v95, v112);
    v54 = objc_allocWithZone(type metadata accessor for TTRIRemindersListDiffableDataSource());
    v55 = v76;

    v56 = TTRICollectionViewTreeBackedDiffableDataSource.init(collectionView:cellProvider:)();
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.isBatchedIncrementalUpdatesDisabled_workaroundRdar145323570.setter();

    v57 = v86;
    v58 = v83;
    v59 = v105;
    (*(v86 + 16))(v83, v113, v105);
    v60 = v87;
    v61 = v85;
    v62 = v88;
    (*(v87 + 16))(v85, v114, v88);
    v63 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v64 = (v82 + *(v60 + 80) + v63) & ~*(v60 + 80);
    v65 = swift_allocObject();
    (*(v57 + 32))(v65 + v63, v58, v59);
    (*(v60 + 32))(v65 + v64, v61, v62);
    v66 = v56;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    swift_allocObject();
    v67 = v75;
    swift_unknownObjectWeakInit();
    v68 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    sub_100058000(&qword_10078A4A8);
    UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willExpandItem.setter();
    v68(v115, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    UICollectionViewDiffableDataSource.SectionSnapshotHandlers.willCollapseItem.setter();
    v69(v115, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v70 = UICollectionViewDiffableDataSource.sectionSnapshotHandlers.modify();
    UICollectionViewDiffableDataSource.SectionSnapshotHandlers.shouldCollapseItem.setter();
    v70(v115, 0);

    (*(v60 + 8))(v114, v62);
    (*(v57 + 8))(v113, v105);
    (*(v111 + 8))(v104, v112);
    v71 = *(v103 + 8);
    v72 = v110;
    v71(v102, v110);
    v71(v101, v72);
    (*(v108 + 8))(v100, v109);
    (*(v99 + 8))(v98, v107);
    (*(v97 + 8))(v96, v106);
    v73 = *(v67 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    *(v67 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource) = v66;
  }

  else
  {
    __break(1u);
  }
}

void sub_10051145C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    v11 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_listInfo;
    swift_beginAccess();
    if (!(*(v7 + 48))(&v1[v11], 1, v6))
    {
      (*(v7 + 16))(v10, &v1[v11], v6);
      TTRRemindersListViewModel.ListInfo.iOS.getter();
      (*(v7 + 8))(v10, v6);
      TTRRemindersListViewModel.ListInfo.IOS.usesFlatDiffableSnapshot_workaroundRdar135908527.getter();
      (*(v3 + 8))(v5, v2);
    }

    v12 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
    if (v12)
    {
      v13 = v12;
      dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.usesFlatDiffableSnapshot_workaroundRdar135908527.setter();
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_100511678(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v4 = [a1 cellForItemAtIndexPath:isa];

    if (v4)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v5 = v4;
        v6 = TTRICollectionViewDragPreviewParametersProvidingCell.dragPreviewParameters.getter();

        return v6;
      }
    }

    return 0;
  }

  return result;
}

void sub_100511764()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability);
    v2 = Strong;

    if (v1)
    {
      TTRICollectionViewPresentationTreeManagementViewCapability.processPendingReminderViewModelUpdates()();
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1005117DC(uint64_t a1, int a2)
{
  v22 = a2;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v11 = *&result[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
    if (!v11)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v12 = v11;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v13 = TTRICollectionViewTreeBackedDiffableDataSource.indexPaths(forItemID:includingChildren:)();

    result = (*(v7 + 8))(v9, v6);
    v24 = v13;
    v21 = *(v13 + 16);
    if (v21)
    {
      v14 = 0;
      v15 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
      v16 = v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      while (v14 < *(v24 + 16))
      {
        result = (*(v3 + 16))(v5, v16 + *(v3 + 72) * v14, v2);
        v17 = *&v23[v15];
        if (v22)
        {
          if (!v17)
          {
            goto LABEL_15;
          }

          v18 = v17;
          v19.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v18 selectItemAtIndexPath:v19.super.isa animated:1 scrollPosition:0];
        }

        else
        {
          if (!v17)
          {
            goto LABEL_16;
          }

          v18 = v17;
          v19.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v18 deselectItemAtIndexPath:v19.super.isa animated:1];
        }

        ++v14;

        result = (*(v3 + 8))(v5, v2);
        if (v21 == v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_12:
  }

  return result;
}

id sub_100511B14(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  result = [v3 isEditing];
  if (result != v6)
  {
    v12.receiver = v3;
    v12.super_class = ObjectType;
    result = objc_msgSendSuper2(&v12, "setEditing:animated:", v6, a2 & 1);
    v9 = *&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
    if (v9)
    {
      v10 = v9;
      UICollectionView.ttr_setEditing(_:animated:)(a1 & 1, a2 & 1);

      if (a1)
      {
        sub_10000C36C(&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], *&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24]);

        sub_100058000(&qword_10077C860);
        sub_10000E188(&unk_10078A2E0, &qword_10077C860);
        v11 = dispatch thunk of TTRICollectionViewItemCollapsedStates.beginOverridingItemCollapsedStates(shouldExpand:)();
      }

      else
      {
        v11 = 0;
      }

      *&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemCollapsedStatesOverrideCancellable] = v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100511CE4()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore;
  swift_beginAccess();
  sub_10000794C(v0 + v11, v6, &qword_100772140);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_100772140);
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_10000D184(v3, v0 + v11, &qword_100772140);
  swift_endAccess();
  sub_100511F28();
  return (*(v8 + 8))(v10, v7);
}

void sub_100511F28()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isViewLoaded])
  {
    v14 = *&v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
    if (v14)
    {
      v15 = v14;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      (*(v3 + 8))(v5, v2);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1000079B4(v8, &unk_100771B10);
        return;
      }

      (*(v10 + 32))(v13, v8, v9);
      v16 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
      v17 = *&v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
      if (v17)
      {
        [v17 layoutBelowIfNeeded];
        v18 = *&v0[v16];
        if (v18)
        {
          v19 = v18;
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v19 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];

          v21 = *&v1[v16];
          if (v21)
          {
            v22 = v21;
            UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v22, 0, 1);

            (*(v10 + 8))(v13, v9);
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_100512260(char a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  result = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
  if (!result)
  {
    goto LABEL_6;
  }

  result = [result isEditing];
  if (result)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1005289E4;
    *(v6 + 24) = v5;
    v10[4] = sub_100026410;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100026440;
    v10[3] = &unk_10072D558;
    v7 = _Block_copy(v10);
    v8 = v1;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_6:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1005124F8()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-1] - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v14 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v13 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C(v12, v14);
  (*(*(v13 + 8) + 296))(v19, v14);
  sub_10000C36C(v19, v19[3]);
  TTRRemindersListEditingState.editingItem.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772140);
    sub_100004758(v19);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_100004758(v19);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1005127AC();
    v16 = v15;
    (*(v2 + 8))(v4, v1);
    (*(v9 + 8))(v11, v8);
    result = v16;
    if (v16)
    {
      return result;
    }
  }

  return 0;
}

void sub_1005127AC()
{
  v1 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B10);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = UICollectionView.visibleCellForItem(at:)();

  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    type metadata accessor for TTRIRemindersListReminderCell_collectionView();
    if (!swift_dynamicCastClass())
    {
    }
  }
}

uint64_t sub_1005129AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_listInfo;
  swift_beginAccess();
  sub_1005243C0(a1, &v2[v12]);
  swift_endAccess();
  if (![v2 isViewLoaded])
  {
    return sub_1000079B4(a1, &unk_10078A380);
  }

  result = (*(v9 + 48))(&v2[v12], 1, v8);
  if (!result)
  {
    (*(v9 + 16))(v11, &v2[v12], v8);
    TTRRemindersListViewModel.ListInfo.iOS.getter();
    (*(v9 + 8))(v11, v8);
    TTRRemindersListViewModel.ListInfo.IOS.usesFlatDiffableSnapshot_workaroundRdar135908527.getter();
    result = (*(v5 + 8))(v7, v4);
  }

  v14 = *&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
  if (v14)
  {
    v15 = v14;
    dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.usesFlatDiffableSnapshot_workaroundRdar135908527.setter();

    return sub_1000079B4(a1, &unk_10078A380);
  }

  __break(1u);
  return result;
}

void sub_100512C00(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v67 = a1;
  v4 = type metadata accessor for TTREditingStateOption.InputType();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v56[1] = v5;
  v57 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v65 = v56 - v7;
  v69 = type metadata accessor for IndexPath();
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v61 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v56[0] = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = v56 - v12;
  v13 = type metadata accessor for TTRIRemindersListPresentationTree();
  __chkstk_darwin(v13 - 8);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListHighlightTarget();
  v66 = v16;
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v21 - 8) + 16))(v19, a1, v21);
  (*(v17 + 104))(v19, enum case for TTRRemindersListHighlightTarget.item(_:), v16);
  v22 = *v20;
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.presentationTree.getter();
  v23 = sub_100131854(v19, sub_100528FD0, v22);
  sub_100528984(v15, type metadata accessor for TTRIRemindersListPresentationTree);
  v71 = v23;
  sub_100058000(&qword_10077C860);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  sub_100058000(&unk_1007821D0);
  v24 = v70;
  sub_10000E188(&unk_100784540, &unk_1007821D0);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();

  v25 = v68;
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.performPendingUpdatesImmediately()();
  (*(v17 + 8))(v19, v66);
  v26 = v67;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v27 = *(v24 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v27)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  v29 = v65;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  v30 = v64;
  v31 = v69;
  if ((*(v64 + 48))(v29, 1, v69) == 1)
  {
    sub_1000079B4(v29, &unk_100771B10);
    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 internalErrorWithDebugDescription:v33];

    sub_100058000(&unk_10078A360);
    swift_allocObject();
    Promise.init(error:)();
LABEL_8:
    (*(v62 + 8))(v25, v63);
    return;
  }

  v35 = v61;
  (*(v30 + 32))(v61, v29, v31);
  v36 = *(v24 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = UICollectionView.visibleCellForItem(at:)();

  if (v38)
  {
    swift_getObjectType();
    v39 = swift_conformsToProtocol2();
    if (v39)
    {
      v40 = v39;
      dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
      v71 = v38;
      v72 = v40;
      sub_100058000(&unk_10078A360);
      swift_allocObject();
      Promise.init(value:)();
      (*(v30 + 8))(v35, v31);
      goto LABEL_8;
    }
  }

  v41 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController;
  v42 = *(v24 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (!v42)
  {
    goto LABEL_15;
  }

  v43 = v42;
  sub_10016B750(v26);

  v45 = v57;
  v44 = v58;
  v46 = v59;
  (*(v58 + 16))(v57, v60, v59);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = swift_allocObject();
  (*(v44 + 32))(v48 + v47, v45, v46);
  v49 = zalgo.getter();
  sub_100058000(&unk_1007817F0);
  v50 = dispatch thunk of Promise.then<A>(on:closure:)();

  v51 = *(v70 + v41);
  if (v51)
  {
    v52 = v51;
    v53 = v56[0];
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1005095C4(v53, 0, 1, v50, &unk_10072D2E8, sub_100528F84, sub_100528FD4, sub_10050AACC);

    v54 = v63;
    v55 = *(v62 + 8);
    v55(v53, v63);
    (*(v30 + 8))(v61, v69);
    v55(v25, v54);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_10051348C(void **a1)
{
  v1 = *a1;
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078A140);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Begin editing title of cell of item-to-edit.", v5, 2u);
  }

  swift_getObjectType();
  dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
  sub_100058000(&unk_10078A360);
  swift_allocObject();
  v6 = v1;
  return Promise.init(value:)();
}

void sub_1005135DC(uint64_t a1, uint64_t a2, int a3)
{
  v66 = a3;
  v67 = a2;
  v3 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v64 = *(v12 - 8);
  v65 = v12;
  __chkstk_darwin(v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v68 = v20;
  v69 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  TTRRemindersListHighlightTarget.firstItem.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000079B4(v17, &qword_100772140);
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 internalErrorWithDebugDescription:v25];

    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    Promise.init(error:)();
    return;
  }

  v59 = v19;
  v27 = v19 + 32;
  v28 = *(v19 + 32);
  v29 = v18;
  v57 = v28;
  v58 = v27;
  v28(v23, v17, v18);
  v63 = v23;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v30 = v70;
  v31 = *(v70 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v31)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v14;
  v33 = v31;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &unk_100771B10);
    v72 = _swiftEmptyArrayStorage;
    v34 = v59;
    goto LABEL_12;
  }

  (*(v9 + 32))(v11, v7, v8);
  v35 = *(v30 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (v35)
  {
    v36 = v35;
    v37 = UICollectionView.visibleCellForItem(at:)();

    (*(v9 + 8))(v11, v8);
    v72 = _swiftEmptyArrayStorage;
    v34 = v59;
    if (v37)
    {
      type metadata accessor for TTRIRemindersListReminderCell_collectionView();
      v38 = swift_dynamicCastClass();
      v56 = v37;
      if (v38)
      {
        v39 = v37;
        if ((TTRIRemindersListReminderCell_collectionView.isViewModelValid.getter() & 1) == 0)
        {
          v55 = v39;
          v52 = v60;
          v53 = v61;
          v54 = v62;
          (*(v61 + 104))(v60, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v62);
          TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
          (*(v53 + 8))(v52, v54);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          goto LABEL_15;
        }
      }

      v40 = _swiftEmptyArrayStorage;
      goto LABEL_16;
    }

LABEL_12:
    v42 = v60;
    v41 = v61;
    v43 = v62;
    (*(v61 + 104))(v60, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v62);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v41 + 8))(v42, v43);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v56 = 0;
LABEL_15:
    v40 = v72;
LABEL_16:
    sub_100058000(&qword_1007845B0);
    v71 = v40;
    sub_100058000(&qword_100781840);
    sub_10000E188(&qword_100781848, &qword_100781840);
    static Promise.all<A>(_:)();
    v44 = v69;
    v45 = v63;
    (*(v34 + 16))(v69, v63, v29);
    v46 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v47 = swift_allocObject();
    v57(v47 + v46, v44, v29);
    v48 = zalgo.getter();
    v49 = dispatch thunk of Promise.then<A>(on:closure:)();

    v50 = *(v30 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
    if (v50)
    {
      v51 = v50;

      sub_1005095C4(v32, v67, v66 & 1, v49, &unk_10072D180, sub_100523074, sub_10052307C, sub_10050CD3C);

      (*(v64 + 8))(v32, v65);
      (*(v34 + 8))(v45, v29);
      return;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100513E9C(uint64_t a1)
{
  v25 = a1;
  v1 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v1 - 8);
  v22 = &v21 - v2;
  v3 = sub_100058000(&unk_10078A4D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v21 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.valueCell()();
  TTRRemindersListViewModel.Item.debugDescription.getter();
  UIListContentConfiguration.text.setter();
  IndexPath.description.getter();
  UIListContentConfiguration.secondaryText.setter();
  v26[3] = v13;
  v26[4] = &protocol witness table for UIListContentConfiguration;
  v17 = sub_1000317B8(v26);
  (*(v14 + 16))(v17, v16, v13);
  UICollectionViewCell.contentConfiguration.setter();
  sub_100058000(&unk_10077C050);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_10062D400;
  (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
  v18 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v19 - 8) + 56))(v22, 1, 1, v19);
  UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
  (*(v23 + 8))(v8, v24);
  (*(v10 + 8))(v12, v21);
  UICollectionViewListCell.accessories.setter();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100514310()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability))
    {

      v2 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v2)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        static REMFeatureFlags.isSolariumEnabled.getter();
        v3 = TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.modify();
        TTRIRemindersListReminderCell_collectionView.TTRIReminderCellOverrideConfiguration.alwaysHidesBottomSeparator.setter();
        v3(v5, 0);
        sub_100522EA4(&unk_10078A4C0, type metadata accessor for TTRIRemindersListContentViewController_collectionView);
        v4 = v1;
        TTRIRemindersListReminderCell_collectionView.delegate.setter();
        result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
        if (result)
        {
          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100514480(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = (a1 + qword_100775FF0);
    v6 = *(a1 + qword_100775FF0);
    *v5 = sub_100528E78;
    v5[1] = v4;

    sub_1000301AC(v6);

    if (*&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability])
    {

      v7 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v7)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
        if (result)
        {
          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

double sub_1005145C8@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100514648(a1);
  }

  else
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_100514648@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v71 = type metadata accessor for TTRRemindersListTip();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for UIListContentConfiguration();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v64 - v4;
  v73 = type metadata accessor for TTRTemplatePublicLinkData();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v17 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  result = (*(v18 + 88))(v20, v17);
  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
  {
    goto LABEL_12;
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
  {
    (*(v18 + 96))(v20, v17);
    (*(v11 + 32))(v16, v20, v10);
    (*(v11 + 16))(v13, v16, v10);
    sub_1004D2BE8(v13, &v88);
    v22 = v91;
    v23 = v90;
    v82 = v88;
    v83 = v89;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000301AC(v23);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000301AC(v22);
    v84 = v88;
    *&v85 = v89;
    *(&v85 + 1) = sub_100528EFC;
    *&v86 = v24;
    *(&v86 + 1) = sub_100528F04;
    v87 = v25;
    v26 = v75;
    *(v75 + 24) = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
    *(v26 + 32) = sub_1003DE974();
    v27 = swift_allocObject();
    *v26 = v27;
    v28 = v85;
    *(v27 + 16) = v84;
    *(v27 + 32) = v28;
    *(v27 + 48) = v86;
    *(v27 + 64) = v87;
    sub_10008E15C(&v84, &v76);
    LOBYTE(v23) = static REMFeatureFlags.isSolariumEnabled.getter();
    (*(v11 + 8))(v16, v10);
    if (v23)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    *(v26 + 40) = v29;
    v76 = v82;
    v77 = v83;
    v78 = sub_100528EFC;
    v79 = v24;
    v80 = sub_100528F04;
    v81 = v25;
    return sub_10008E220(&v76);
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
  {
LABEL_12:
    result = (*(v18 + 8))(v20, v17);
LABEL_13:
    v30 = v75;
    *(v75 + 25) = 0u;
    *v30 = 0u;
    v30[1] = 0u;
    return result;
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:))
  {
    (*(v18 + 96))(v20, v17);
    v31 = v72;
    v32 = v73;
    (*(v72 + 32))(v9, v20, v73);
    (*(v31 + 16))(v6, v9, v32);
    sub_100534068(v6, &v88);
    v33 = v88;
    v34 = v89;
    v35 = v90;
    sub_100528E80(v88, *(&v88 + 1), v89);
    sub_1000301AC(v35);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = v75;
    *(v75 + 24) = &type metadata for TTRIRemindersListTemplateStatusCellContentConfiguration;
    *(v37 + 32) = sub_100528E98();
    v38 = swift_allocObject();
    *v37 = v38;
    *(v38 + 16) = v33;
    *(v38 + 32) = v34;
    *(v38 + 40) = sub_100528E90;
    *(v38 + 48) = v36;

    v39 = static REMFeatureFlags.isSolariumEnabled.getter();
    sub_100528EEC(v33, *(&v33 + 1), v34);

    result = (*(v31 + 8))(v9, v32);
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    *(v37 + 40) = v40;
  }

  else
  {
    if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
    {
      (*(v18 + 96))(v20, v17);
      v41 = v70;
      v42 = v69;
      v43 = v71;
      (*(v70 + 32))(v69, v20, v71);
      v44 = *(v74 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v45 = *(v74 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v74 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v44);
      (*(*(v45 + 8) + 1104))(&v88, v42, v44);
      (*(v41 + 8))(v42, v43);
      v46 = v75;
      result = sub_100005FD0(&v88, v75);
      *(v46 + 40) = 0;
      return result;
    }

    if (result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:))
    {
      if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:))
      {
        v57 = v65;
        static UIListContentConfiguration.cell()();
        static TTRLocalizableStrings.RecentlyDeletedList.disclaimerString.getter();
        UIListContentConfiguration.text.setter();
        sub_100003540(0, &qword_100771DF0);
        static UIFont.roundedBodyFont.getter();
        v58 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.font.setter();
        v58(&v88, 0);
        v59 = [objc_opt_self() secondaryLabelColor];
        v60 = UIListContentConfiguration.textProperties.modify();
        UIListContentConfiguration.TextProperties.color.setter();
        v60(&v88, 0);
        v61 = v75;
        v62 = v68;
        *(v75 + 24) = v68;
        *(v61 + 32) = &protocol witness table for UIListContentConfiguration;
        v63 = sub_1000317B8(v61);
        result = (*(v67 + 32))(v63, v57, v62);
        *(v61 + 40) = 0;
        return result;
      }

      if (result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

    v47 = v66;
    static UIListContentConfiguration.cell()();
    static TTRLocalizableStrings.Templates.templatePreview.getter();
    UIListContentConfiguration.text.setter();
    sub_100003540(0, &qword_100771DF0);
    static UIFont.roundedBodyFont.getter();
    v48 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v48(&v88, 0);
    v49 = [objc_opt_self() secondaryLabelColor];
    v50 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v50(&v88, 0);
    v51 = v75;
    v52 = v68;
    *(v75 + 24) = v68;
    *(v51 + 32) = &protocol witness table for UIListContentConfiguration;
    v53 = sub_1000317B8(v51);
    v54 = v67;
    (*(v67 + 16))(v53, v47, v52);
    v55 = static REMFeatureFlags.isSolariumEnabled.getter();
    result = (*(v54 + 8))(v47, v52);
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 1;
    }

    *(v51 + 40) = v56;
  }

  return result;
}

uint64_t sub_100515158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability))
    {

      v11 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

      if (v11)
      {
        TTRObservableViewModelCollection.observableViewModel(forItemID:)();

        *(a1 + *a5 + 8) = a6;
        swift_unknownObjectWeakAssign();
        result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
        if (result)
        {
          TTRViewModelObserver.subscribeIfNeeded(to:)();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10051525C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v2 - 8);
  v4 = v25 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionViewListCell.defaultContentConfiguration()();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_6;
  }

  v14 = result;
  v25[0] = v8;
  v25[1] = a1;
  v15 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v15)
  {
    v16 = v6;
    v17 = v15;
    IndexPath.section.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

    v18 = v16;
    if ((*(v16 + 48))(v4, 1, v5) == 1)
    {

      sub_1000079B4(v4, &unk_10076BB50);
    }

    else
    {
      v19 = *(v16 + 32);
      v20 = v25[0];
      v19(v25[0], v4, v5);
      v26[0] = 0x20726564616548;
      v26[1] = 0xE700000000000000;
      sub_100522EA4(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 2108704;
      v22._object = 0xE300000000000000;
      String.append(_:)(v22);
      type metadata accessor for IndexPath();
      sub_100522EA4(&qword_1007720C0, &type metadata accessor for IndexPath);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      UIListContentConfiguration.text.setter();

      (*(v18 + 8))(v20, v5);
    }

LABEL_6:
    v26[3] = v9;
    v26[4] = &protocol witness table for UIListContentConfiguration;
    v24 = sub_1000317B8(v26);
    (*(v10 + 16))(v24, v12, v9);
    UICollectionViewCell.contentConfiguration.setter();
    return (*(v10 + 8))(v12, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_100515620(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (v11)
    {
      v12 = v11;
      IndexPath.section.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        return sub_1000079B4(v4, &unk_10076BB50);
      }

      result = (*(v6 + 32))(v8, v4, v5);
      if (*&v10[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability])
      {

        v13 = TTRICollectionViewPresentationTreeManagementViewCapability.observableCellViewModels.getter();

        if (v13)
        {
          TTRObservableViewModelCollection.observableViewModel(forItemID:)();

          *(a1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_delegate + 8) = &off_10072CEC0;
          result = swift_unknownObjectWeakAssign();
          if (*(a1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModelObserver))
          {

            TTRViewModelObserver.subscribeIfNeeded(to:)();

            return (*(v6 + 8))(v8, v5);
          }

LABEL_13:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1005158AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51[1] = a8;
  v51[2] = a7;
  v52 = a6;
  v54 = a2;
  v55 = a1;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = v51 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v18 - 8);
  v20 = v51 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v53 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v25 = Strong;
  v26 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v26)
  {
    __break(1u);
    goto LABEL_37;
  }

  v27 = v26;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

  v28 = v53;
  if ((*(v53 + 48))(v20, 1, v21) != 1)
  {
    (*(v28 + 32))(v23, v20, v21);
    TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
    v34 = (*(v15 + 88))(v17, v14);
    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      (*(v15 + 8))(v17, v14);
      v37 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v38 = *(v37 - 8);
      (*(v38 + 16))(v13, a3, v37);
      (*(v38 + 56))(v13, 0, 1, v37);
      type metadata accessor for TTRIRemindersListEditableSectionCell_collectionView(0);
      goto LABEL_20;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
    {
      (*(v15 + 8))(v17, v14);
      v39 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v40 = *(v39 - 8);
      (*(v40 + 16))(v13, a3, v39);
      (*(v40 + 56))(v13, 0, 1, v39);
      type metadata accessor for TTRIRemindersListReminderCell_collectionView();
      goto LABEL_20;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
    {
      goto LABEL_16;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
    {
      v52 = a10;
      v42 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v43 = *(v42 - 8);
      (*(v43 + 16))(v13, a3, v42);
      (*(v43 + 56))(v13, 0, 1, v42);
      type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView(0);
LABEL_24:
      v44 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      sub_1000079B4(v13, &unk_10076BB50);
      (*(v53 + 8))(v23, v21);
      (*(v15 + 8))(v17, v14);
      return v44;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:))
    {
LABEL_16:
      (*(v15 + 8))(v17, v14);
LABEL_17:
      v35 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v36 = *(v35 - 8);
      (*(v36 + 16))(v13, a3, v35);
      (*(v36 + 56))(v13, 0, 1, v35);
      type metadata accessor for TTRIRemindersListContentConfigurationCell();
LABEL_20:
      v41 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      sub_1000079B4(v13, &unk_10076BB50);
LABEL_21:
      (*(v53 + 8))(v23, v21);
      return v41;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
    {
      v45 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v46 = *(v45 - 8);
      (*(v46 + 16))(v13, a3, v45);
      (*(v46 + 56))(v13, 0, 1, v45);
      type metadata accessor for TTRIRemindersListContentConfigurationCell();
      goto LABEL_24;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_17;
    }

    if (v34 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
    {
      if (qword_100767428 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100003E30(v47, qword_10078A140);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "TTRIRemindersListContentViewController_collectionView: cell provider: unknown item type", v50, 2u);
      }

      v41 = UICollectionView.dequeueBlankListCell(for:)();
      goto LABEL_21;
    }

LABEL_37:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  sub_1000079B4(v20, &qword_100772140);
LABEL_5:
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100003E30(v29, qword_10078A140);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "TTRIRemindersListContentViewController_collectionView: cell provider: unable to look up item", v32, 2u);
  }

  return UICollectionView.dequeueBlankListCell(for:)();
}

uint64_t sub_1005161FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v10 = objc_opt_self();
  v11 = [v10 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v12 = *(v7 + 8);
  v20 = v6;
  v12(v9, v6);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v13 == a3)
  {

    goto LABEL_8;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_8:
    type metadata accessor for TTRIRemindersListSectionHeader_collectionView();
    v16 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  static os_signpost_type_t.end.getter();
  v17 = [v10 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v12(v9, v20);
  return v16;
}

uint64_t sub_100516434(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v9);

    sub_10000C36C(v9, v9[3]);

    v7 = sub_100058000(&qword_10077C860);
    v8 = sub_10000E188(&unk_10078A2E0, &qword_10077C860);
    a3(a1, v7, v8);

    return sub_100004758(v9);
  }

  return result;
}

uint64_t sub_10051653C()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v8 = result;
  v9 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v6, v2, v3);
      sub_10000C36C(&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], *&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24]);
      v11 = sub_100308F4C();
      (*(v4 + 8))(v6, v3);

      return v11 & 1;
    }

    sub_1000079B4(v2, &qword_100772140);
LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100516748()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        sub_1000079B4(v2, &qword_100772140);
        return 0;
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10000C36C(&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], *&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24]);
        v11 = sub_100309860(v6);
        (*(v4 + 8))(v6, v3);

        return v11;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100516954()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (v9)
    {
      v10 = v9;
      TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        sub_1000079B4(v2, &qword_100772140);
        return 0;
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10000C36C(&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], *&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24]);
        type metadata accessor for TTRIRemindersListPresenter_collectionView();
        v11 = sub_10030A044(v6);

        (*(v4 + 8))(v6, v3);
        return v11;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100516B88(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v27 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  swift_beginAccess();
  v16 = *(v12 + 16);
  v28 = v11;
  v16(v14, v15, v11);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v18 = result;
  v19 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    v21 = sub_100471278();

    if (v21)
    {
      (*(v5 + 104))(v10, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v4);
LABEL_7:
      (*(v5 + 16))(v7, v10, v4);
      UICollectionLayoutListConfiguration.headerMode.setter();
      sub_100003540(0, &qword_10078A4E0);
      v23 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      [v23 setContentInsetsReference:2];
      [v23 setSupplementaryContentInsetsReference:2];
      (*(v5 + 8))(v10, v4);
      (*(v12 + 8))(v14, v28);
      return v23;
    }

LABEL_5:
    (*(v5 + 104))(v10, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v4);
    if (!a1)
    {
      (*(v25 + 104))(v26, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v27);
      v22 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
      UIListSeparatorConfiguration.topSeparatorVisibility.setter();
      v22(v30, 0);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100516F64()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v4);

    v2 = v4[4];
    sub_10000C36C(v4, v4[3]);
    v3 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
    (*(*(v2 + 8) + 968))(v3);

    return sub_100004758(v4);
  }

  return result;
}

uint64_t sub_100517018()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v6);

  v2 = v7;
  v3 = v8;
  sub_10000C36C(v6, v7);
  v4 = (*(*(v3 + 8) + 216))(v2);
  sub_100004758(v6);
  return v4;
}

uint64_t sub_1005170C4()
{
  v0 = type metadata accessor for TTRTemplateSharingAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v9);

    v7 = v10;
    v6 = v11;
    sub_10000C36C(v9, v10);
    (*(*(v6 + 8) + 864))(v12, v7);
    if (v13)
    {
      sub_10000C36C(v12, v13);
      (*(v1 + 104))(v3, enum case for TTRTemplateSharingAction.createLink(_:), v0);
      sub_1001E26D0(v3);
      (*(v1 + 8))(v3, v0);
      sub_100004758(v12);
      return sub_100004758(v9);
    }

    else
    {
      sub_100004758(v9);
      return sub_1000079B4(v12, &unk_100781810);
    }
  }

  return result;
}

uint64_t *sub_100517274(uint64_t *result, void (*a2)(uint64_t))
{
  v3 = *result;
  v4 = *(v2 + *result);
  if (v4)
  {
    v5 = *(v2 + *result);
LABEL_5:
    v11 = v4;
    return v5;
  }

  if (*(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_accessibilityController))
  {

    a2(v7);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v2;
    v9 = TTRICollectionViewAccessibilityController.ttriAXRotor(named:criteria:)();

    v10 = *(v8 + v3);
    *(v8 + v3) = v9;
    v5 = v9;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10051736C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005173D8();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1005173D8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderCellStyle();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v17)
  {
    v18 = v17;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000079B4(v12, &qword_100772140);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = (v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
      v20 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v21 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C(v19, v20);
      (*(*(v21 + 8) + 512))(v16, v20);
      v22 = v28;
      if ((*(v28 + 48))(v6, 1, v7) == 1)
      {
        (*(v14 + 8))(v16, v13);
        sub_1000079B4(v6, &qword_100772738);
      }

      else
      {
        (*(v22 + 32))(v9, v6, v7);
        v23 = v25;
        TTRRemindersListViewModel.Reminder.style.getter();
        v24 = TTRReminderCellStyle.hasCompletedState.getter();
        (*(v26 + 8))(v23, v27);
        if (v24)
        {
          TTRRemindersListViewModel.Reminder.isCompleted.getter();
        }

        (*(v22 + 8))(v9, v7);
        (*(v14 + 8))(v16, v13);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100517824()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005173D8();
    v3 = v2;
    v4 = v2;

    v5 = v3 ^ 1;
    if (v4 == 2)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1005178A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100517914();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_100517914()
{
  v1 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v14)
  {
    v15 = v14;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v16 = &qword_100772140;
      v17 = v9;
LABEL_6:
      sub_1000079B4(v17, v16);
      return;
    }

    (*(v11 + 32))(v13, v9, v10);
    v18 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v19 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v18);
    (*(*(v19 + 8) + 512))(v13, v18);
    v20 = v22;
    if ((*(v22 + 48))(v3, 1, v4) == 1)
    {
      (*(v11 + 8))(v13, v10);
      v16 = &qword_100772738;
      v17 = v3;
      goto LABEL_6;
    }

    (*(v20 + 32))(v6, v3, v4);
    TTRRemindersListViewModel.Reminder.showsAsOverdue.getter();
    (*(v20 + 8))(v6, v4);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for TTRIRemindersListContentViewController_collectionView()
{
  result = qword_10078A250;
  if (!qword_10078A250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100517EF4()
{
  sub_100518050(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v0 <= 0x3F)
  {
    sub_100518050(319, &qword_100784500, &type metadata accessor for TTRRemindersListViewModel.ListInfo);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100518050(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_1005180A4()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ([result hasActiveDrag])
  {
    return 0;
  }

  result = *(v0 + v1);
  if (!result)
  {
    goto LABEL_9;
  }

  if ([result hasActiveDrop])
  {
    return 0;
  }

  result = *(v0 + v1);
  if (result)
  {
    return ([result isEditing] ^ 1);
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_100518124()
{
  v1 = v0;
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078A140);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListContentViewController_collectionView: perform initial reload", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability))
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100518234()
{
  v1 = v0;
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078A140);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Cancel any hover detection once the cell starts being edited", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction);
  if (*(v6 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v6 + 56) = 0;
}

void sub_100518358(char a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3;
  v6 = [v4 indexPathsForSelectedItems];
  if (v6)
  {
    v7 = v6;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((a1 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    if ((a1 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1003B2E80(v8);
  }

  v9 = v8[2];
  v12[0] = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12[1] = v9;
  sub_1000EC324(v12);
LABEL_9:
  v10 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v10)
  {
    v12[0] = v8;
    v11 = v10;
    sub_100058000(&unk_10078A370);
    sub_10000E188(&unk_100771B00, &unk_10078A370);
    TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1005184E4(uint64_t a1, void (*a2)(void **, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v28 = a2;
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = v8;
    v27 = v2;
    v35 = _swiftEmptyArrayStorage;
    sub_1004A2324(0, v9, 0);
    v10 = v35;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v30 = *(v12 + 56);
    v31 = v13;
    v15 = (v12 - 8);
    v29 = v6 + 32;
    do
    {
      v16 = v32;
      v17 = v34;
      v18 = v12;
      v31(v32, v14, v34);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v15)(v16, v17);
      v35 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_1004A2324(v19 > 1, v20 + 1, 1);
        v10 = v35;
      }

      v10[2] = v20 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v11, v33);
      v14 += v30;
      --v9;
      v12 = v18;
    }

    while (v9);
    v2 = v27;
  }

  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  v35 = v10;

  v21 = sub_100058000(&qword_10077C860);
  v22 = sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  v23 = sub_100058000(&unk_1007821D0);
  v24 = sub_10000E188(&unk_100784540, &unk_1007821D0);
  v28(&v35, v23, v24, v21, v22);
}

__n128 sub_100518838(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

void *sub_1005188A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell);
  v2 = v1;
  return v1;
}

uint64_t sub_100518920(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return sub_1005129AC(v4);
}

double sub_100518A1C(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (v2)
  {
    [v2 frame];

    return CGRectGetHeight(*&v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100518A68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v4)
  {
    v8 = v4;
    sub_10016BFAC(a1, a2, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_100518AE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (v1)
  {
    v2 = v1;
    UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100518B40(uint64_t result, char a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (v5)
  {
    v9 = result;
    v10 = v5;
    sub_10028FAC0();
    sub_1005F55D8(v9 & 1, a2 & 1, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100518BD0()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_chromelessToolbarUpdater))
  {

    TTRIChromelessToolbarUpdater.updateForToolbarVisibilityChange()();
  }

  return result;
}

BOOL sub_100518C28()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  sub_100058000(&qword_10077C860);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  v5 = dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)();

  (*(v2 + 8))(v4, v1);
  return (v5 & 1) == 0;
}

uint64_t sub_100518DEC()
{
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));

  sub_100058000(&qword_10077C860);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.collapsedStatesPersistence.setter();
}

uint64_t sub_100518EB4@<X0>(uint64_t a1@<X8>)
{
  sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForReloadingView()();
  v3 = sub_100058000(&qword_10077C868);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

void sub_100518F50(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v4)
  {
    v6 = v4;
    sub_1004710BC(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100518FCC()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropCoordinator))
  {

    TTRICollectionViewDragAndDropCoordinator.resetAfterDataSourceReload()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10051901C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&unk_100781850);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTREditingStateOption.InputType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ([result isEditing])
  {
    if ([v2 isEditing])
    {
      if (qword_100767428 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_10078A140);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowRemindersViewController: trying to start editing a reminder while in edit mode", v18, 2u);
      }

      goto LABEL_11;
    }

    result = *&v2[v13];
    if (result)
    {
      [result setEditing:0];
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_11:
  sub_10000794C(a2, v7, &unk_100781850);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    (*(v9 + 104))(v12, enum case for TTREditingStateOption.InputType.unspecified(_:), v8);
    if (v19(v7, 1, v8) != 1)
    {
      sub_1000079B4(v7, &unk_100781850);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  sub_100512C00(a1, v12);

  return (*(v9 + 8))(v12, v8);
}

void sub_100519328()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  sub_1005127AC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    TTRIRemindersListReminderCell_collectionView.createAndStartEditingNewHashtag()();
  }

  else
  {
    if (qword_100767428 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_10078A140);
    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v7, "Tried createAndStartEditingNewHashtag but there is no cell containing the Reminder Item specified", v8, 2u);
    }
  }
}

void sub_1005194C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for IndexPath();
  v48 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v49 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 viewIfLoaded];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = UIView.firstResponderDescendant.getter();

  v34 = v18;
  if (!v18)
  {
    return;
  }

  v19 = *(a1 + 16);
  if (!v19)
  {
LABEL_15:

    return;
  }

  v21 = *(v13 + 16);
  v20 = v13 + 16;
  v46 = v21;
  v47 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource;
  v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v38 = (v48 + 32);
  v39 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  v35 = (v48 + 8);
  v36 = v12;
  v41 = *(v20 + 56);
  v42 = v7;
  ++v44;
  v45 = (v48 + 48);
  v48 = v20;
  v43 = (v20 - 8);
  v37 = v6;
  v21(v49, v22, v12);
  while (1)
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v23 = *&v2[v47];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*v45)(v6, 1, v7) == 1)
    {
      (*v44)(v11, v9);
      sub_1000079B4(v6, &unk_100771B10);
LABEL_6:
      (*v43)(v49, v12);
      goto LABEL_7;
    }

    v25 = v9;
    v26 = v40;
    (*v38)(v40, v6, v7);
    v27 = *&v2[v39];
    if (!v27)
    {
      goto LABEL_18;
    }

    v28 = v2;
    v29 = v7;
    v30 = v27;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v32 = [v30 cellForItemAtIndexPath:isa];

    (*v35)(v26, v29);
    v9 = v25;
    (*v44)(v11, v25);
    v2 = v28;
    v12 = v36;
    v6 = v37;
    if (!v32)
    {
      goto LABEL_6;
    }

    v33 = [v34 isDescendantOfView:v32];

    (*v43)(v49, v12);
    if (v33)
    {
      [v34 resignFirstResponder];
      goto LABEL_15;
    }

LABEL_7:
    v7 = v42;
    v22 += v41;
    if (!--v19)
    {
      goto LABEL_15;
    }

    v46(v49, v22, v12);
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_100519960(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), int a3)
{
  v4 = v3;
  LODWORD(v66) = a3;
  v67 = a2;
  v6 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v63 = *(v6 - 1);
  v64 = v6;
  __chkstk_darwin(v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TTRRemindersListViewModel.Item();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v59 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v68 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v22)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22;
  v69 = a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  (*(v13 + 8))(v15, v12);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000079B4(v18, &unk_100771B10);
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 internalErrorWithDebugDescription:v25];

    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    Promise.init(error:)();
    return;
  }

  v27 = v68;
  (*(v20 + 32))(v68, v18, v19);
  v28 = UICollectionViewScrollPosition.init(tableViewScrollPosition:)(v67);
  v29 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  v30 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = v28;
  v32 = v30;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v32 scrollToItemAtIndexPath:isa atScrollPosition:v31 animated:v66 & 1];

  v34 = *(v4 + v29);
  if (!v34)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = UICollectionView.visibleCellForItem(at:)();

  v37 = v65;
  if (!v36)
  {
LABEL_14:
    v58 = v63;
    v57 = v64;
    (*(v63 + 104))(v8, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v64);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v58 + 8))(v8, v57);
    (*(v20 + 8))(v27, v19);
    return;
  }

  type metadata accessor for TTRIRemindersListReminderCell_collectionView();
  v38 = swift_dynamicCastClass();
  if (!v38 || (v39 = v38, (TTRIRemindersListReminderCell_collectionView.isViewModelValid.getter() & 1) == 0))
  {

    goto LABEL_14;
  }

  v66 = v19;
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100003E30(v40, qword_10078A140);
  v41 = v60;
  v42 = v62;
  v67 = *(v60 + 16);
  v67(v37, v69, v62);
  v43 = v36;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v64 = v43;

  v46 = os_log_type_enabled(v44, v45);
  v47 = v61;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v63 = v20;
    v49 = v48;
    v50 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v70 = v59;
    *v49 = 136315394;
    v67(v47, v37, v42);
    v51 = String.init<A>(describing:)();
    v53 = v52;
    (*(v41 + 8))(v37, v62);
    v54 = sub_100004060(v51, v53, &v70);

    *(v49 + 4) = v54;
    v47 = v61;
    v42 = v62;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v39;
    *v50 = v39;
    v55 = v64;
    v56 = v64;
    _os_log_impl(&_mh_execute_header, v44, v45, "Target scroll item cell already loaded {item: %s, cell: %@}", v49, 0x16u);
    sub_1000079B4(v50, &unk_10076DF80);

    sub_100004758(v59);

    v27 = v68;
    v20 = v63;
  }

  else
  {

    (*(v41 + 8))(v37, v42);
    v55 = v64;
  }

  v67(v47, v69, v42);
  sub_100058000(&qword_1007845B0);
  swift_allocObject();
  Promise.init(value:)();

  (*(v20 + 8))(v27, v66);
}

uint64_t sub_10051A0F4(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v55 = type metadata accessor for TTRRemindersListHighlightTarget();
  v58 = *(v55 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v55);
  v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersListPresentationTree();
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = TTRRemindersListHighlightTarget.targetItems.getter();
  v17 = v16;
  if (*(v16 + 16))
  {
    v53 = *(v10 + 80);
    v47 = v5;
    v18 = *(v10 + 16);
    v51 = v10 + 16;
    v52 = v18;
    (v18)(v15, v16 + ((v53 + 32) & ~v53), v9);
    v19 = sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
    v59 = v3;
    v60 = v15;
    v20 = *v19;
    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.presentationTree.getter();
    v21 = sub_100131854(a1, sub_100522F34, v20);
    v50 = v9;
    v22 = v21;
    sub_100528984(v8, type metadata accessor for TTRIRemindersListPresentationTree);
    v61 = v22;
    sub_100058000(&qword_10077C860);
    v49 = v10;
    sub_10000E188(&unk_10078A2E0, &qword_10077C860);
    sub_100058000(&unk_1007821D0);
    v48 = v12;
    sub_10000E188(&unk_100784540, &unk_1007821D0);
    dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.performPendingUpdatesImmediately()();
    if (TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter())
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    v24 = v54 & 1;
    v54 = v24;
    sub_1005135DC(a1, v23, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v57;
    v27 = v58;
    v28 = v55;
    (*(v58 + 16))(v57, a1, v55);
    v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v30 = (v47 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    (*(v27 + 32))(v31 + v29, v26, v28);
    v32 = v31 + v30;
    *v32 = v17;
    *(v32 + 8) = v24;
    v33 = zalgo.getter();
    v34 = dispatch thunk of Promise.then<A>(on:closure:)();

    sub_100003540(0, &qword_100777780);
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = v48;
    v38 = v60;
    v39 = v50;
    v52(v48);
    v40 = (v53 + 24) & ~v53;
    v41 = v40 + v56;
    v42 = swift_allocObject();
    *(v42 + 16) = v36;
    v43 = v49;
    (*(v49 + 32))(v42 + v40, v37, v39);
    *(v42 + v41) = v54;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100522FF0;
    *(v44 + 24) = v42;
    dispatch thunk of Promise.then<A>(on:additionalDelay:closure:)();

    (*(v43 + 8))(v38, v39);
    return v34;
  }

  else
  {

    sub_100058000(&unk_10078A2F0);
    swift_allocObject();
    return Promise.init(value:)();
  }
}

void sub_10051A6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v54 = a5;
  v48 = a3;
  v56 = type metadata accessor for IndexPath();
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TTRRemindersListViewModel.Item();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  isa = v13[-1].isa;
  __chkstk_darwin(v13);
  v55 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListHighlightTarget();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100767428 != -1)
    {
LABEL_37:
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_10078A140);
    (*(v16 + 16))(v18, v48, v15);
    v20 = Logger.logObject.getter();
    LODWORD(v48) = static os_log_type_t.info.getter();
    v21 = os_log_type_enabled(v20, v48);
    v42 = v6;
    v49 = v9;
    v45 = v10;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v60 = v47;
      *v22 = 136315138;
      sub_100522EA4(&qword_100781838, &type metadata accessor for TTRRemindersListHighlightTarget);
      v9 = v20;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = a4;
      v26 = v25;
      (*(v16 + 8))(v18, v15);
      v27 = sub_100004060(v23, v26, &v60);
      a4 = v24;

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v9, v48, "TTRIRemindersListContentViewController: highlight item briefly {target: %s}", v22, 0xCu);
      sub_100004758(v47);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    v10 = *(a4 + 16);
    v16 = v55;
    v6 = v56;
    if (v10)
    {
      v47 = *(isa + 2);
      v48 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource;
      v15 = a4 + ((*(isa + 80) + 32) & ~*(isa + 80));
      v28 = *(isa + 9);
      ++v45;
      ++v46;
      isa = (isa + 16);
      v43 = v28;
      v44 = (isa - 8);
      v18 = _swiftEmptyArrayStorage;
      v47(v55, v15, v13);
      while (1)
      {
        v29 = *&Strong[v48];
        if (!v29)
        {
          goto LABEL_39;
        }

        v9 = v13;
        v30 = v29;
        v31 = v50;
        TTRRemindersListHighlightTarget.TargetItem.item.getter();
        v32 = v52;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        (*v46)(v31, v51);
        TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
        v33 = TTRICollectionViewTreeBackedDiffableDataSource.indexPaths(forItemID:includingChildren:)();

        (*v45)(v32, v53);
        v34 = v16;
        v16 = v9;
        (*v44)(v34, v9);
        a4 = *(v33 + 16);
        v6 = v18[2];
        v13 = (v6 + a4);
        if (__OFADD__(v6, a4))
        {
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

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v13 > v18[3] >> 1)
        {
          if (v6 <= v13)
          {
            v36 = v6 + a4;
          }

          else
          {
            v36 = v6;
          }

          v18 = sub_100546DB0(isUniquelyReferenced_nonNull_native, v36, 1, v18);
        }

        v13 = v9;
        v16 = v55;
        v6 = v56;
        if (*(v33 + 16))
        {
          if ((v18[3] >> 1) - v18[2] < a4)
          {
            goto LABEL_35;
          }

          swift_arrayInitWithCopy();

          if (a4)
          {
            v37 = v18[2];
            v38 = __OFADD__(v37, a4);
            v39 = v37 + a4;
            if (v38)
            {
              goto LABEL_36;
            }

            v18[2] = v39;
          }
        }

        else
        {

          if (a4)
          {
            goto LABEL_34;
          }
        }

        v15 += v43;
        v10 = (v10 - 1);
        if (!v10)
        {
          goto LABEL_25;
        }

        v47(v16, v15, v9);
      }
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_25:
    isa = v18[2];
    if (isa)
    {
      v15 = 0;
      v16 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
      v10 = (v58 + 16);
      a4 = v58 + 8;
      while (1)
      {
        if (v15 >= v18[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        v40 = v49;
        (*(v58 + 16))(v49, v18 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v15, v6);
        v41 = *&Strong[v16];
        if (!v41)
        {
          break;
        }

        ++v15;
        v13 = v41;
        v9 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v13 _highlightItemAtIndexPath:v9 animated:v54 & 1 scrollPosition:0];

        (*a4)(v40, v6);
        if (isa == v15)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

LABEL_30:
  }
}

void sub_10051AEA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    TTRRemindersListHighlightTarget.TargetItem.item.getter();
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 8))(v11, v8);
    sub_1005127AC();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    if (v15)
    {
      if (TTRIRemindersListReminderCell_collectionView.isViewModelValid.getter())
      {
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v15);
      }
    }

    v16 = *&v13[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
    if (v16)
    {
      [v16 _highlightItemAtIndexPath:0 animated:a3 & 1 scrollPosition:0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10051B0AC(uint64_t a1@<X1>, uint64_t (*a2)(char *)@<X2>, char *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v13)
  {
    v14 = v13;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000079B4(v8, &qword_100772140);
    }

    else
    {
      v15 = *(v10 + 32);
      v15(v12, v8, v9);
      if (a2(v12))
      {
        v15(a3, v12, v9);
        v16 = 0;
LABEL_8:
        (*(v10 + 56))(a3, v16, 1, v9);
        return;
      }

      (*(v10 + 8))(v12, v9);
    }

    v16 = 1;
    goto LABEL_8;
  }

  __break(1u);
}

id sub_10051B2C8()
{
  result = [v0 isViewLoaded];
  if (result)
  {
    if (*&v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability])
    {

      TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10051B348()
{
  v1 = v0;
  result = TTRListContentsPrefetchExtender.extendFetchIndexPaths(_:sectionCountProvider:rowCountProvider:)();
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v3)
  {
    v4 = v3;
    sub_100058000(&unk_10078A370);
    sub_10000E188(&unk_100771B00, &unk_10078A370);
    v5 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

    v6 = (v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
    v7 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v8 = v6[4];
    sub_10000C36C(v6, v7);
    (*(*(v8 + 8) + 520))(v5, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10051B7DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v1)
  {
    sub_100003540(0, &qword_100775690);
    v2 = v1;
    if (static NSObject.== infix(_:_:)())
    {

      PassthroughSubject.send(_:)();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10051BA3C(uint64_t (**a1)(char *, uint64_t), uint64_t a2)
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-1] - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v12)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772140);
    (*(v9 + 56))(a1, 1, 1, v8);
    v14 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    v15 = type metadata accessor for TTRICollectionViewCellSelectionOption();
    (*(*(v15 - 8) + 104))(a2, v14, v15);
    return;
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v19);
  sub_10000C36C(v19, v19[3]);
  v17 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v17)
  {
    goto LABEL_8;
  }

  sub_100309194(v11, [v17 isEditing], a2);
  sub_100004758(v19);
  v16(a1, v11, v8);
  (*(v9 + 56))(a1, 0, 1, v8);
}

uint64_t sub_10051BF60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v21 = a5;
  v6 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = (&v20 - v11);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a1;
  sub_10051BA3C(v12, v9);
  v18 = sub_1000079B4(v12, &qword_100772140);
  LOBYTE(a1) = v21(v18);

  (*(v7 + 8))(v9, v6);
  (*(v14 + 8))(v16, v13);
  return a1 & 1;
}

id sub_10051C198(void *a1)
{
  v3 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isEditing];
  if (!result)
  {
    return result;
  }

  v15 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = v15;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &qword_100772140);
  }

  result = (*(v10 + 32))(v13, v8, v9);
  if (!*&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController])
  {
    goto LABEL_13;
  }

  (*(v10 + 16))(v5, v13, v9);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v5);

  sub_100528984(v5, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v17 = [v1 parentViewController];
  if (v17)
  {
    v18 = v17;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10051C48C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  sub_10051C198(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10051C598(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for TTREditingStateOption.InputType();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v14 - 8);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v46 = a2;
  sub_10051BA3C((&v41 - v20), v13);
  v22 = v21;
  v23 = v49;
  sub_10000794C(v21, v18, &qword_100772140);
  if ((*(v23 + 48))(v18, 1, v5) == 1)
  {
    (*(v8 + 8))(v13, v7);
    sub_1000079B4(v21, &qword_100772140);
    v22 = v18;
    return sub_1000079B4(v22, &qword_100772140);
  }

  v24 = v48;
  (*(v23 + 32))(v48, v18, v5);
  (*(v8 + 16))(v10, v13, v7);
  v25 = (*(v8 + 88))(v10, v7);
  if (v25 == enum case for TTRICollectionViewCellSelectionOption.disallowed(_:) || v25 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
  {
LABEL_13:
    (*(v23 + 8))(v24, v5);
    (*(v8 + 8))(v13, v7);
    return sub_1000079B4(v22, &qword_100772140);
  }

  if (v25 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
  {
    v46 = v22;
    v26 = UICollectionView.visibleCellForItem(at:)();
    v22 = v46;
    if (v26)
    {
      v27 = v26;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v47 = v5;
        v41 = v7;
        v28 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell);
        if (v27 == v28)
        {
          v29 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
          v30 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
          sub_10000C36C((v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v29);
          v31 = *(v30 + 8);
          v50 = v31 + 400;
          v45 = *(v31 + 400);
          v32 = v28;
          v33 = v42;
          v34 = v48;
          v45(v48, v29, v31);

          sub_1000079B4(v33, &qword_100772140);
          (*(v23 + 8))(v34, v47);
        }

        else
        {
          v39 = v43;
          v38 = v44;
          v40 = v45;
          (*(v44 + 104))(v43, enum case for TTREditingStateOption.InputType.unspecified(_:), v45);
          dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

          (*(v38 + 8))(v39, v40);
          (*(v23 + 8))(v48, v47);
        }

        (*(v8 + 8))(v13, v41);
        v22 = v46;
        return sub_1000079B4(v22, &qword_100772140);
      }
    }

    goto LABEL_13;
  }

  if (v25 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
  {
    v35 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v36 = *(v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v50 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v35);
    (*(*(v36 + 8) + 784))(v24, v35);
    (*(v23 + 8))(v24, v5);
    (*(v8 + 8))(v13, v7);
    return sub_1000079B4(v22, &qword_100772140);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10051CF40(void *a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v14)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = v14;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
    v16 = (*(v4 + 88))(v6, v3);
    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      goto LABEL_6;
    }

    if (v16 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) && v16 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) && v16 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
    {
      if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
      {
LABEL_6:
        (*(v11 + 8))(v13, v10);
        (*(v4 + 8))(v6, v3);
        return 0;
      }

      if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        (*(v11 + 8))(v13, v10);
        return 0;
      }

LABEL_28:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v4 + 8))(v6, v3);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [a1 cellForItemAtIndexPath:isa];

    if (v19)
    {
      type metadata accessor for TTRIRemindersListReminderCell_collectionView();
      if (swift_dynamicCastClass())
      {
        v20 = v19;
        v21 = UIView.firstResponderDescendant.getter();

        (*(v11 + 8))(v13, v10);
        if (v21)
        {

          return 0;
        }

        return 1;
      }
    }

    (*(v11 + 8))(v13, v10);
    return 1;
  }

  sub_1000079B4(v9, &qword_100772140);
  return 0;
}

void sub_10051D568(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = [a1 indexPathForItemAtPoint:{a3, a4}];
  if (!v22)
  {
    return;
  }

  v51 = a2;
  v23 = v22;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v16 + 32))(v21, v18, v15);
  v24 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource;
  v52 = v4;
  v25 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v25)
  {
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

  v27 = v53;
  if ((*(v53 + 48))(v11, 1, v12) == 1)
  {
    (*(v16 + 8))(v21, v15);
    sub_1000079B4(v11, &qword_100772140);
    return;
  }

  (*(v27 + 32))(v14, v11, v12);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v29 = [a1 cellForItemAtIndexPath:isa];

  if (!v29)
  {
    (*(v27 + 8))(v14, v12);
LABEL_13:
    (*(v16 + 8))(v21, v15);
    return;
  }

  v50 = v29;
  v30 = *(v52 + v24);
  if (!v30)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v54 = v51;
  v31 = v30;
  sub_100058000(&unk_10078A370);
  sub_10000E188(&unk_100771B00, &unk_10078A370);
  v51 = TTRICollectionViewTreeBackedDiffableDataSource.items<A>(for:)();

  v32 = v50;
  [a1 convertPoint:v50 toCoordinateSpace:{a3, a4}];
  v34 = v33;
  v36 = v35;
  v37 = *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v38 = *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v37);
  v39 = [a1 isEditing];
  v40 = *(v38 + 8);
  v41 = v51;
  v42 = (*(v40 + 840))(v14, v32, v51, v39, v37, v34, v36);
  if (!v42)
  {

    (*(v53 + 8))(v14, v12);
    goto LABEL_13;
  }

  if (v44)
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
    v48 = v42;
    sub_100528930(v46, 1);

    sub_1003DE74C(v46, 1);
    sub_10052893C(v45, v46, v47);

    (*(v53 + 8))(v14, v12);
    (*(v16 + 8))(v21, v15);
    *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1003DE74C(v43, 0);

    (*(v53 + 8))(v14, v12);
    (*(v16 + 8))(v21, v15);
    *(v52 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu) = v41;
  }
}

uint64_t sub_10051DD54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for TTRIRemindersListReminderCell_collectionView();
    v9 = swift_dynamicCastClass();
    v10 = *&v8[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker];
    if (v9)
    {
      v11 = v6;

      sub_1003258FC(a3, a4);

      TTRIRemindersListReminderCell_collectionView.inputViewForPencilInput.getter();
      sub_100058000(&unk_10078A390);
      swift_allocObject();
      v12 = Promise.init(value:)();
    }

    else
    {
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      swift_unknownObjectRelease();
      v16 = type metadata accessor for PromiseError();
      sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, enum case for PromiseError.cancelled(_:), v16);
      sub_100058000(&unk_10078A390);
      swift_allocObject();
      v12 = Promise.init(error:)();
    }

    return v12;
  }

  else
  {
    v13 = type metadata accessor for PromiseError();
    sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for PromiseError.cancelled(_:), v13);
    sub_100058000(&unk_10078A390);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10051DFFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker);
    v2 = result;

    *(v1 + 16) = 0;
    *(v1 + 24) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10051E078()
{
  v1 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 88);
  v4 = sub_10000C36C((*v1 + 48), v2);
  v7[3] = v2;
  v7[4] = v3;
  v5 = sub_1000317B8(v7);
  (*(*(v2 - 8) + 16))(v5, v4, v2);
  (*(v3 + 384))(1, 0, 0, v2, v3);
  return sub_100004758(v7);
}

void sub_10051E1E8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v3 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v5 - 8);
  v36 = &v33 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v18)
  {
    v19 = v18;
    TTRIRemindersListItemIntermediateViewModel.itemID.getter();
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    (*(v8 + 8))(v10, v7);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1000079B4(v13, &qword_100772140);
      v20 = type metadata accessor for TTRRemindersListViewModel.Reminder();
      (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v21 = (v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
      v22 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v23 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v22);
      if ((*(*(v23 + 8) + 1040))(v17, v22))
      {
        v24 = v21[3];
        v25 = v21[4];
        sub_10000C36C(v21, v24);
        (*(*(v25 + 8) + 904))(v17, v24);
      }

      v26 = v21[3];
      v27 = v21[4];
      sub_10000C36C(v21, v26);
      v28 = v36;
      (*(*(v27 + 8) + 512))(v17, v26);
      v29 = type metadata accessor for TTRRemindersListViewModel.Reminder();
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) != 1)
      {
        v31 = v33;
        v30 = v34;
        v32 = v35;
        (*(v34 + 104))(v33, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v35);
        TTRRemindersListItemStateTracker.fullfil(_:of:)();
        (*(v30 + 8))(v31, v32);
      }

      (*(v15 + 8))(v17, v14);
      sub_100016588(v28, v38, &qword_100772738);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10051E6BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 32);
LABEL_6:
  (*(*(v6 + 8) + 320))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_10078A3B0);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_10051E80C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 24);
LABEL_6:
  (*(*(v6 + 8) + 328))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_100778EA0);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_10051E95C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 16);
LABEL_6:
  (*(*(v6 + 8) + 336))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&unk_10078A3A0);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_10051EAAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v23)
  {
    sub_1000079B4(v22, &qword_100780978);
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_1000079B4(v7, &qword_100772140);
  }

  sub_10000C36C(v22, v23);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100004758(v22);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000079B4(v7, &qword_100772140);
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = *&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24];
  v13 = *&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32];
  sub_10000C36C(&v2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], v12);
  (*(*(v13 + 8) + 48))(a2 & 1, v11, v12);
  v14 = [v2 parentViewController];
  if (v14)
  {
    v15 = v14;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v16 = *&v15[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  [v16 impactOccurred];

  v18 = [v3 parentViewController];
  if (v18)
  {
    v19 = v18;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v20 = *&v19[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];

      [v20 prepare];
      v19 = v20;
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10051EE04(uint64_t a1, char a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 96))(a2 & 1, v10, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140);
}

uint64_t sub_10051F06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 104))(a2, v10, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140);
}

uint64_t sub_10051F2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 160))(v10, a2, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140);
}

uint64_t sub_10051F554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 168))(v10, a2, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140);
}

uint64_t sub_10051F7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v17)
  {
    sub_10000C36C(v16, v17);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v16);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      v13 = (*(*(v12 + 8) + 176))(v10, a2, v11);
      (*(v8 + 8))(v10, v7);
      return v13;
    }
  }

  else
  {
    sub_1000079B4(v16, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_1000079B4(v6, &qword_100772140);
  return 0;
}

uint64_t sub_10051FA48()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v14)
  {
    sub_10000C36C(v13, v14);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v13);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      v10 = (*(*(v9 + 8) + 184))(v7, v8);
      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  else
  {
    sub_1000079B4(v13, &qword_100780978);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1000079B4(v3, &qword_100772140);
  return 0;
}

uint64_t sub_10051FCAC()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v14)
  {
    sub_10000C36C(v13, v14);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v13);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      v10 = (*(*(v9 + 8) + 192))(v7, v8);
      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  else
  {
    sub_1000079B4(v13, &qword_100780978);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1000079B4(v3, &qword_100772140);
  return 0;
}

uint64_t sub_10051FF10(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for TTRReminderCellStyle.SuggestedReminderType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v22)
  {
    sub_1000079B4(v21, &qword_100780978);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_1000079B4(v9, &qword_100772140);
  }

  v19 = v2;
  sub_10000C36C(v21, v22);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_100004758(v21);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_100772140);
  }

  (*(v11 + 32))(v13, v9, v10);
  (*(v4 + 16))(v6, v20, v3);
  v14 = (*(v4 + 88))(v6, v3);
  if (v14 == enum case for TTRReminderCellStyle.SuggestedReminderType.siriFoundInApps(_:))
  {
    v15 = *(v19 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v16 = *(v19 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v19 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v15);
    (*(*(v16 + 8) + 56))(v13, v15);
  }

  else if (v14 != enum case for TTRReminderCellStyle.SuggestedReminderType.unspecified(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100520268(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v16)
  {
    sub_10000C36C(v15, v16);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100004758(v15);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v6, v7);
      v11 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v11);
      (*(*(v12 + 8) + 120))(v10, a2, v11);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_1000079B4(v6, &qword_100772140);
}

uint64_t sub_1005204D0()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      (*(*(v9 + 8) + 144))(v7, v8);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_1000079B4(v3, &qword_100772140);
}

uint64_t sub_100520728(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v22)
  {
    sub_1000079B4(v21, &qword_100780978);
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_1000079B4(v6, &qword_100772140);
  }

  sub_10000C36C(v21, v22);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100004758(v21);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_100772140);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v21);
  v11 = v22;
  v12 = v23;
  sub_10000C36C(v21, v22);
  v13 = TTRIRemindersListReminderCell_collectionView.attributedTitle.getter();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 string];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  (*(*(v12 + 8) + 152))(v10, v16, v18, a2, v11);

  (*(v8 + 8))(v10, v7);
  return sub_100004758(v21);
}

uint64_t sub_100520A08()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      (*(*(v9 + 8) + 200))(v7, v8);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_1000079B4(v3, &qword_100772140);
}

uint64_t sub_100520C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v13)
  {
    return sub_1000079B4(v12, &qword_100780978);
  }

  sub_10000C36C(v12, v13);
  v8 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
  result = sub_100004758(v12);
  if (v8)
  {
    v10 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v11 = *(v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v4 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v10);
    (*(*(v11 + 8) + 208))(v8, a2, a3, a4, v10);
  }

  return result;
}

uint64_t sub_100520D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v18)
  {
    sub_10000C36C(v17, v18);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100004758(v17);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v13 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v14 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v13);
      (*(*(v14 + 8) + 1048))(v12, a2, a3, v13);
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_1000079B4(v17, &qword_100780978);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  return sub_1000079B4(v8, &qword_100772140);
}

uint64_t sub_100520FCC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v17)
  {
    sub_10000C36C(v16, v17);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    sub_100522EA4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = TTRTreeStorageItem.treeItemDescription.getter();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    sub_100004758(v16);
  }

  else
  {
    sub_1000079B4(v16, &qword_100780978);
    v8 = 0xEC0000006C6C6563;
    v6 = 0x206E776F6E6B6E75;
  }

  sub_10032573C(v6, v8);

  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10078A140);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TTRIRemindersListViewController: Cancel any hover detection once scribbling begins, before the cells is actually edited", v12, 2u);
  }

  v13 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction);
  if (*(v13 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v13 + 56) = 0;
}

uint64_t sub_100521270()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v10)
  {
    sub_10000C36C(v9, v10);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    sub_100522EA4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v4 = TTRTreeStorageItem.treeItemDescription.getter();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    sub_100004758(v9);
  }

  else
  {
    sub_1000079B4(v9, &qword_100780978);
    v6 = 0xEC0000006C6C6563;
    v4 = 0x206E776F6E6B6E75;
  }

  sub_100326040(v4, v6);
}

uint64_t sub_100521424()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v13)
  {
    sub_10000C36C(v12, v13);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      (*(*(v9 + 8) + 88))(v7, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v8);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    sub_1000079B4(v12, &qword_100780978);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_1000079B4(v3, &qword_100772140);
}

uint64_t sub_100521694()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (v14)
  {
    sub_10000C36C(v13, v14);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100004758(v13);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v8);
      v10 = (*(*(v9 + 8) + 1112))(v7, v8);
      (*(v5 + 8))(v7, v4);
      return v10;
    }
  }

  else
  {
    sub_1000079B4(v13, &qword_100780978);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1000079B4(v3, &qword_100772140);
  return 0;
}

uint64_t sub_100521904(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = v12 - v4;
  sub_10000B0D8(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v14);
  v6 = v15;
  v7 = v16;
  sub_10000C36C(v14, v15);
  if (!a1)
  {
    goto LABEL_5;
  }

  TTRIRemindersListReminderCell_collectionView.viewModel.getter();
  if (!v13)
  {
    sub_1000079B4(v12, &qword_100780978);
LABEL_5:
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    goto LABEL_6;
  }

  sub_10000C36C(v12, v13);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_100004758(v12);
LABEL_6:
  v10 = (*(*(v7 + 8) + 1120))(v5, v6);
  sub_1000079B4(v5, &qword_100772140);
  sub_100004758(v14);
  return v10 & 1;
}

uint64_t sub_100521AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v7 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v6);
  return (*(*(v7 + 8) + 312))(a2, a3, v6) & 1;
}

uint64_t sub_100521BE4()
{
  sub_100058000(&qword_10076B780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006322B0;
  *(v0 + 32) = sub_100517274(&OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___completedTasksRotor, &static TTRAccesibility.RemindersList.Rotor.CompletedTasks.getter);
  *(v0 + 40) = sub_100517274(&OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___incompleteTasksRotor, &static TTRAccesibility.RemindersList.Rotor.IncompleteTasks.getter);
  *(v0 + 48) = sub_100517274(&OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___overdueTasksRotor, &static TTRAccesibility.RemindersList.Rotor.OverdueTasks.getter);
  return v0;
}

uint64_t sub_100521CE0()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C(v1, v2);
  return (*(*(v3 + 8) + 376))(v2);
}

id sub_100521D38()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result isEditing];
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = *(v0 + v1);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result setEditing:0];
  return v3;
}

id sub_100521DAC()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (result)
  {
    return [result hasActiveDrag];
  }

  __break(1u);
  return result;
}

uint64_t sub_100521DE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListSectionHeader_collectionView_viewModel);
  swift_getKeyPath();
  v20[1] = v11;
  sub_100522EA4(&qword_100777EF8, type metadata accessor for ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC9RemindersP33_A68543A94231911C541FE49BEA5FB1909ViewModel__sectionID;
  swift_beginAccess();
  sub_10000794C(v11 + v12, v6, &qword_10076B070);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &qword_10076B070);
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  v15 = *(*v14 + 72);
  v16 = *(*v14 + 80);
  sub_10000C36C((*v14 + 48), v15);
  (*(v16 + 16))(v15, v16);
  v18 = v17;
  ObjectType = swift_getObjectType();
  (*(v18 + 632))(v10, ObjectType, v18);
  swift_unknownObjectRelease();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100522098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 8);
LABEL_6:
  (*(*(v6 + 8) + 344))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_100781830);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_100522200(uint64_t a1, int a2, void (*a3)(uint64_t))
{
  v6 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000079B4(v8, &unk_10076BB50);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  sub_100058000(&qword_100772760);
  v15 = *(v10 + 80);
  v18[1] = a2;
  v16 = (v15 + 32) & ~v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10062D400;
  (*(v10 + 16))(v17 + v16, v13, v9);
  v19 = v17;

  sub_100058000(&qword_10077C860);
  sub_100058000(&unk_1007821D0);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  sub_10000E188(&unk_100784540, &unk_1007821D0);
  TTRICollectionViewItemCollapsedStates.setCollapsed<A>(_:for:)();

  return (*(v10 + 8))(v13, v9);
}

void sub_100522544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005225C8()
{
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));

  sub_100058000(&qword_10077C860);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  sub_100058000(&unk_10076BBD0);
  sub_10000E188(&unk_100772700, &unk_10076BBD0);
  dispatch thunk of TTRICollectionViewItemCollapsedStates.expand<A>(_:)();
}

uint64_t sub_1005226DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v6 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v5);
  return (*(*(v6 + 8) + 560))(a3, v5) & 1;
}

void sub_100522744()
{
  v0 = sub_1005124F8();
  if (v0)
  {
    v1 = v0;
    [v0 endEditing:1];
  }
}

void sub_10052279C(char *a1@<X8>)
{
  sub_100058000(&unk_10078A3D8);
  TTRICollectionViewDragItemSources.itemsFromThisCollectionView.getter();
  sub_100058000(&qword_10078A3E8);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&qword_10078A3F0, &qword_10078A3E8);
  sub_100522EA4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v3 = Sequence.mapToSet<A>(_:)();

  v4 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v4)
  {
    v5 = v4;
    sub_100471774(v3, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100522918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return TTRICollectionViewDragAndDropCoordinatorDelegate.dragAndDropCoordinator(_:dropSessionDidEnd:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10052298C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
  if (swift_dynamicCastClass())
  {
    v8 = a1;
    v9 = TTRIRemindersListReminderCellAccessibilityElement.cell.getter();
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      dispatch thunk of TTRIRemindersListReminderCellAccessibilityElementContaining.viewModel.getter();
      if (v18)
      {
        sub_10000C36C(v17, v18);
        dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();

        (*(v5 + 8))(v7, v4);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
        return sub_100004758(v17);
      }

      else
      {

        sub_1000079B4(v17, &qword_100780978);
        v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
      }
    }
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, 1, 1, v13);
}

void sub_100522C10()
{
  v1 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B10);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = UICollectionView.visibleCellForItem(at:)();

  (*(v5 + 8))(v7, v4);
  if (v12)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      dispatch thunk of TTRIRemindersListReminderCellAccessibilityElementContaining.customAccessibilityElement.getter();
    }

    else
    {
    }
  }
}

uint64_t sub_100522EA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100522F3C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListHighlightTarget() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_10051A6E4(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8));
}

void sub_100522FF0()
{
  v1 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_10051AEA0(v2, v3, v4);
}

uint64_t sub_1005230D4(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability))
  {

    TTRICollectionViewPresentationTreeManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100523124()
{
  v1 = v0;
  if (qword_100767428 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078A140);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Pencil hover interaction ended -- removing uncommitted reminder if it has not input", v5, 2u);
  }

  v6 = (v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v8 = v6[4];
  sub_10000C36C(v6, v7);
  return (*(*(v8 + 8) + 408))(v7);
}

uint64_t sub_100523238()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
  v7 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C(v5, v7);
  (*(*(v6 + 8) + 864))(v10, v7);
  if (!v11)
  {
    return sub_1000079B4(v10, &unk_100781810);
  }

  sub_10000C36C(v10, v11);
  (*(v2 + 104))(v4, enum case for TTRTemplateSharingAction.createLink(_:), v1);
  sub_1001E26D0(v4);
  (*(v2 + 8))(v4, v1);
  return sub_100004758(v10);
}

void sub_1005233A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t (*a14)(void))
{
  v61 = a8;
  v62 = a7;
  v18 = a14(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  if (*(a1 + 24) != 1)
  {
    return;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    if (*(a3 + 16) >= a4)
    {
      if (*(a1 + 25) == 1)
      {
        if (qword_100767380 == -1)
        {
LABEL_12:
          v29 = type metadata accessor for Logger();
          sub_100003E30(v29, qword_1007865F0);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v30, v31))
          {
            goto LABEL_32;
          }

          v32 = swift_slowAlloc();
          *v32 = 0;
          v33 = "scrollWithCompensationTo: finishing scroll session because cell is ready.";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

LABEL_32:

          if (*(a1 + 24) == 1)
          {
            *(a1 + 24) = 0;
            if (*(a1 + 16))
            {

              AnyCancellable.cancel()();
            }

            v64 = &type metadata for () + 8;
            DeferredPromise.resolve(_:)();
            sub_100004758(v63);
          }

          return;
        }

LABEL_39:
        swift_once();
        goto LABEL_12;
      }

      if (a5(v62))
      {
        if (qword_100767380 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100003E30(v52, qword_1007865F0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_32;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "scrollWithCompensationTo: target item has become visible upon end of scrolling animation.";
        goto LABEL_31;
      }

      v25 = "ellReadyTracker's result";
      v56 = 0xD00000000000003ELL;
    }

    else
    {
      v56 = 0xD000000000000029;
      v25 = "pon end of scrolling animation";
    }

    v26 = v61;
    swift_beginAccess();
    *(v26 + 16) = 1;
    if (a9)
    {
      swift_beginAccess();
      a1 = *(a3 + 16) < a10;
    }

    else
    {
      a1 = 0;
    }

    v60 = a12;
    v59 = a11;
    if (qword_100767380 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    v35 = sub_100003E30(v34, qword_1007865F0);
    v54 = *(v19 + 16);
    v54(v24, v62, v18);

    v53[1] = v35;
    v36 = Logger.logObject.getter();
    LODWORD(v35) = static os_log_type_t.default.getter();

    v55 = v35;
    v37 = os_log_type_enabled(v36, v35);
    v58 = v25;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v57 = a1;
      v39 = v38;
      v65[0] = swift_slowAlloc();
      *v39 = 136315906;
      *(v39 + 4) = sub_100004060(v56, v25 | 0x8000000000000000, v65);
      *(v39 + 12) = 1024;
      *(v39 + 14) = v57;
      *(v39 + 18) = 2048;
      swift_beginAccess();
      *(v39 + 20) = *(a3 + 16);

      *(v39 + 28) = 2080;
      v54(v21, v24, v18);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      (*(v19 + 8))(v24, v18);
      v43 = sub_100004060(v40, v42, v65);

      *(v39 + 30) = v43;
      _os_log_impl(&_mh_execute_header, v36, v55, "scrollWithCompensationTo: Performing scroll {reason: %s, animated: %{BOOL}d, scrollCountAttempted: %ld, item: %s}", v39, 0x26u);
      swift_arrayDestroy();

      a1 = v57;
    }

    else
    {

      (*(v19 + 8))(v24, v18);
    }

    v44 = v59(v62, a1);
    swift_beginAccess();
    v45 = *(a3 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      *(a3 + 16) = v47;
      v48 = v61;
      swift_beginAccess();
      *(v48 + 16) = 0;
      if (v44)
      {
      }

      else
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "scrollWithCompensationTo: no animation after scroll", v51, 2u);
        }

        PassthroughSubject.send(_:)();
      }

      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {

    AnyCancellable.cancel()();
  }

  v27 = type metadata accessor for PromiseError();
  sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, enum case for PromiseError.cancelled(_:), v27);
  DeferredPromise.reject(_:)();
}

uint64_t sub_100523BB4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_100523CDC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1005233A0(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), v3 + v6, *(v3 + v8), *(v3 + v8 + 8), *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), a3);
}

void sub_100523E2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  sub_10050E900(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

void sub_100523EFC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  sub_10050EC54(v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_100524000(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return sub_10050DFE4(*a1, a1[1], v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t sub_100524104(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = (((((v5 + *(v3 + 64) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_100524270(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  return a3(a1, v3 + v7, *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10052431C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_1005243C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10078A380);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100524430()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate) = 0;
  v3 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_preferredChromelessBarStates;
  sub_100058000(&unk_100781980);
  swift_allocObject();
  *(v0 + v3) = TTRObservableViewModel.init(value:)();
  *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController) = 0;
  v4 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *(v0 + v4) = TTRRemindersListItemStateTracker.init()();
  v5 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v1 + v5) = v6;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_chromelessToolbarUpdater) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropCoordinator) = 0;
  v7 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_prefetchExtender;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *(v1 + v7) = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_accessibilityController) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController) = 0;
  v8 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_contextMenuOriginatorItem;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v10(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemCollapsedStatesOverrideCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell) = 0;
  v11 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_listInfo;
  v12 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___completedTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___incompleteTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___overdueTasksRotor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005246F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v1)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController) + 24);
    if (v2)
    {
      return (*(v2 + 24) ^ 1) & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100524734(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v2)
  {
    if ((a1 & 1) == 0)
    {
      v3 = *(*&v2[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController] + 24);
      if (!v3 || (*(v3 + 24) & 1) == 0)
      {
        v4 = *&v2[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates];
        v5 = v2;
        v4();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005247D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController);
  if (v1)
  {
    v2 = *(*&v1[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_scrollSessionController] + 24);
    if (!v2 || (*(v2 + 24) & 1) == 0)
    {
      v3 = *&v1[OBJC_IVAR____TtC9Reminders51TTRIRemindersListScrollingController_collectionView_processPendingReminderViewModelUpdates];
      v4 = v1;
      v3();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100524868()
{
  v1 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v12)
  {
    v13 = v12;
    TTRICollectionViewTreeBackedDiffableDataSource.item(for:)();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000079B4(v7, &qword_100772140);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      (*(v2 + 104))(v4, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v1);
      TTRRemindersListItemStateTracker.fullfil(_:of:)();
      (*(v2 + 8))(v4, v1);
      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100524AF0()
{
  v1 = sub_100058000(qword_100784690);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  UIViewController.endFirstResponderEditing()();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController);
  if (v4)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v5 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    swift_beginAccess();

    sub_10000D184(v3, v4 + v6, qword_100784690);
    swift_endAccess();

    v7 = (v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C(v7, v8);
    (*(*(v9 + 8) + 352))(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100524C60()
{
  if (*&v0[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController])
  {

    sub_100069648();

    v1 = [v0 parentViewController];
    if (v1)
    {
      v2 = v1;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10037DD70(1, 0);
        sub_10037FFC0();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100524D2C()
{
  TTRObservableViewModel.value.getter();
  sub_10016A680();
  return TTRObservableViewModel<A>.update(with:forcePublish:)();
}

uint64_t sub_100524D98()
{
  v1 = v0;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775698);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_100058000(&unk_1007817C0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEditing])
  {
    goto LABEL_4;
  }

  v37 = v3;
  v38 = v13;
  v18 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32];
  sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter], v18);
  (*(*(v17 + 8) + 392))(v18);
  v19 = sub_100058000(&qword_100775A58);
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    sub_1000079B4(v8, &qword_100775698);
LABEL_4:
    v20 = type metadata accessor for PromiseError();
    sub_100522EA4(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PromiseError.cancelled(_:), v20);
    sub_100058000(&unk_10078A390);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v23 = *(v19 + 48);
  v24 = *(v9 + 48);
  v25 = v12;
  v26 = *(v38 + 32);
  v35 = *&v8[v23];
  v27 = v8;
  v28 = v25;
  v36 = v25;
  v26(v11, v27, v25);
  *&v11[v24] = v35;
  v35 = *&v11[*(v9 + 48)];
  v26(v16, v11, v28);
  v29 = v37;
  (*(v37 + 104))(v5, enum case for TTREditingStateOption.InputType.pencil(_:), v2);
  sub_100512C00(v16, v5);
  (*(v29 + 8))(v5, v2);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v35;
  swift_unknownObjectRetain();
  v32 = zalgo.getter();
  sub_100058000(&qword_1007817E0);
  dispatch thunk of Promise.then<A>(on:closure:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = zalgo.getter();
  v34 = dispatch thunk of Promise.error(on:closure:)();
  swift_unknownObjectRelease();

  (*(v38 + 8))(v16, v36);

  return v34;
}

void sub_100525328(void *a1, double a2, double a3)
{
  sub_100117CEC();
  PassthroughSubject.send(_:)();
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 hitTest:0 withEvent:{a2, a3}];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for TTRIRemindersListBackgroundView();
      if (swift_dynamicCastClass())
      {
        v10 = v9;
        sub_100524D98();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void *sub_100525428()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (result)
  {
    if ([result hasActiveDrag])
    {
      return 0;
    }

    result = *(v0 + v1);
    if (result)
    {
      return ([result hasActiveDrop] ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10052548C()
{
  v0 = type metadata accessor for AppEntityID();
  v16 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v17[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMFeatureFlags();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for REMFeatureFlags.viewAnnotation(_:), v7, v9);
  v12 = REMFeatureFlags.isEnabled.getter();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    TTRIRemindersListReminderCell_collectionView.viewModel.getter();
    if (v18)
    {
      sub_10000C36C(v17, v18);
      dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
      v14 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      (*(v4 + 8))(v6, v3);
      result = sub_100004758(v17);
      if (v14)
      {
        type metadata accessor for ReminderEntity();
        v15 = v14;
        AppEntityID.init(objectID:)();
        sub_100522EA4(&qword_10076DF78, &type metadata accessor for ReminderEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        return (*(v16 + 8))(v2, v0);
      }
    }

    else
    {
      return sub_1000079B4(v17, &qword_100780978);
    }
  }

  return result;
}

id sub_100525794()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 canOpenURL:v3];

  if (v5)
  {
    v6 = [v0 sharedApplication];
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    sub_10046187C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100522EA4(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  return v5;
}